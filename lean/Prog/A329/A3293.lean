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
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A329301: a(0) = a(1) = a(2) = 1; thereafter a(n) = a(n-1) - (-1)^n*a(n-2) + 2*a(n-3).

The programs for A329301, the canonical program `A329301.P3742274354775224660` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329301 has offset 0).

The definition of A329301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329301.P3742274354775224660

`a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329301

/-- `a(n-3)+2*a(n-4)` -/
def P3742274354775224660.Spec : Prop :=
  ∀ n, (P3742274354775224660.a n : ℤ) = A329301 n

theorem P3742274354775224660.correct : P3742274354775224660.Spec := by
  intro n
  simp only [A329301]

end A329301

/-! ## A329301.P15407272871050299175

`a(n-3)+a(n-4)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A329301.P15407272871050299175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a (n - 3) + (a (n - 4) + a (n - 4))

end

end A329301.P15407272871050299175

namespace A329301

/-- `a(n-3)+a(n-4)+a(n-4)` -/
def P15407272871050299175.Spec : Prop :=
  ∀ n, (P15407272871050299175.a n : ℤ) = A329301 n

theorem P15407272871050299175.correct : P15407272871050299175.Spec := by
  intro n
  simp only [A329301, Nat.add_sub_cancel, A329301.P15407272871050299175.a, A329301.P3742274354775224660.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A329301

/-! ## A329301.P3942955502145133807

`2*a(n-3)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A329301.P3942955502145133807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * a (n - 3) - (a (n - 2) - a (n - 1))

end

end A329301.P3942955502145133807

namespace A329301

/-- `2*a(n-3)-(a(n-2)-a(n-1))` -/
def P3942955502145133807.Spec : Prop :=
  ∀ n, P3942955502145133807.a n = A329301 n

end A329301

/-! ## A329301.P16690692298401292181

`a(n-1)-(a(n-2)-a(n-3)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A329301.P16690692298401292181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 3) - a (n - 3))

end

end A329301.P16690692298401292181

namespace A329301

/-- `a(n-1)-(a(n-2)-a(n-3)-a(n-3))` -/
def P16690692298401292181.Spec : Prop :=
  ∀ n, P16690692298401292181.a n = A329301 n

end A329301

/-! ## A329301.P10999869463885093202

`ogf((1+x^2)/(1-x+x^2-2x^3))`
-/

namespace A329301.P10999869463885093202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -1, 1, -2] n

end

end A329301.P10999869463885093202

namespace A329301

/-- `ogf((1+x^2)/(1-x+x^2-2x^3))` -/
def P10999869463885093202.Spec : Prop :=
  ∀ n, P10999869463885093202.a n = A329301 n

end A329301

/-! ## A329301.P5123998412616238345

`A331394(n+2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A329301.P5123998412616238345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A331394 (n + 2) - a (n - 1)

end

end A329301.P5123998412616238345

namespace A329301

/-- `A331394(n+2)-a(n-1)` -/
def P5123998412616238345.Spec : Prop :=
  ∀ n, P5123998412616238345.a n = A329301 n

end A329301

/-!
# A329304: Numerators of convergents to A309930, the constant whose continued fraction representation consists of the cubes, [0; 1, 8, 27, 64, ...].

The programs for A329304, the canonical program `A329304.P16735015738133955968` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329304 has offset 0).

The definition of A329304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329304.P16735015738133955968

`n^3*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329304

/-- `n^3*a(n-1)+a(n-2)` -/
def P16735015738133955968.Spec : Prop :=
  ∀ n, (P16735015738133955968.a n : ℤ) = A329304 n

theorem P16735015738133955968.correct : P16735015738133955968.Spec := by
  intro n
  simp only [A329304]

end A329304

/-! ## A329304.P13217831004010350046

`a(n-2)+a(n-1)/n^(-3)` with `a(0)=0, a(1)=1`
-/

namespace A329304.P13217831004010350046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) / (n : ℚ) ^ (-3 : ℤ)

end

end A329304.P13217831004010350046

namespace A329304

/-- `a(n-2)+a(n-1)/n^(-3)` -/
def P13217831004010350046.Spec : Prop :=
  ∀ n, P13217831004010350046.a n = (A329304 n : ℚ)

end A329304

/-! ## A329304.P3135559990465115224

`a(n-2)+n*a(n-1)*n²` with `a(0)=0, a(1)=1`
-/

namespace A329304.P3135559990465115224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + n * a (n - 1) * n ^ 2

end

end A329304.P3135559990465115224

namespace A329304

/-- `a(n-2)+n*a(n-1)*n²` -/
def P3135559990465115224.Spec : Prop :=
  ∀ n, (P3135559990465115224.a n : ℤ) = A329304 n

end A329304

/-! ## A329304.P3546462458258649313

`a(n-2)+n*n*n*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A329304.P3546462458258649313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + n * (n * (n * a (n - 1)))

end

end A329304.P3546462458258649313

namespace A329304

/-- `a(n-2)+n*n*n*a(n-1)` -/
def P3546462458258649313.Spec : Prop :=
  ∀ n, (P3546462458258649313.a n : ℤ) = A329304 n

end A329304

/-! ## A329304.P16146014448717283851

`a(n-2)+a(n-1)*A000578(n)` with `a(0)=0, a(1)=1`
-/

namespace A329304.P16146014448717283851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) * A000578 n

end

end A329304.P16146014448717283851

namespace A329304

/-- `a(n-2)+a(n-1)*A000578(n)` -/
def P16146014448717283851.Spec : Prop :=
  ∀ n, P16146014448717283851.a n = A329304 n

end A329304

/-!
# A329305: Denominators of convergents to A309930, the constant whose continued fraction representation consists of the cubes, [0; 1, 8, 27, 64, ...].

The programs for A329305, the canonical program `A329305.P15657033746216345998` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329305 has offset 0).

The definition of A329305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329305.P15657033746216345998

`n^3*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329305

/-- `n^3*a(n-1)+a(n-2)` -/
def P15657033746216345998.Spec : Prop :=
  ∀ n, (P15657033746216345998.a n : ℤ) = A329305 n

theorem P15657033746216345998.correct : P15657033746216345998.Spec := by
  intro n
  simp only [A329305]

end A329305

/-! ## A329305.P5454859281633871053

`a(n-2)+a(n-1)/n^(-3)` with `a(0)=1, a(1)=1`
-/

namespace A329305.P5454859281633871053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) / (n : ℚ) ^ (-3 : ℤ)

end

end A329305.P5454859281633871053

namespace A329305

/-- `a(n-2)+a(n-1)/n^(-3)` -/
def P5454859281633871053.Spec : Prop :=
  ∀ n, P5454859281633871053.a n = (A329305 n : ℚ)

end A329305

/-! ## A329305.P14308469457905927125

`a(n-2)+n*a(n-1)*n²` with `a(0)=1, a(1)=1`
-/

namespace A329305.P14308469457905927125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + n * a (n - 1) * n ^ 2

end

end A329305.P14308469457905927125

namespace A329305

/-- `a(n-2)+n*a(n-1)*n²` -/
def P14308469457905927125.Spec : Prop :=
  ∀ n, (P14308469457905927125.a n : ℤ) = A329305 n

end A329305

/-! ## A329305.P12389955672747321958

`a(n-2)+n*n*n*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A329305.P12389955672747321958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + n * (n * (n * a (n - 1)))

end

end A329305.P12389955672747321958

namespace A329305

/-- `a(n-2)+n*n*n*a(n-1)` -/
def P12389955672747321958.Spec : Prop :=
  ∀ n, (P12389955672747321958.a n : ℤ) = A329305 n

end A329305

/-! ## A329305.P11462340120053218874

`a(n-2)+a(n-1)*A000578(n)` with `a(0)=1, a(1)=1`
-/

namespace A329305.P11462340120053218874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A000578 n

end

end A329305.P11462340120053218874

namespace A329305

/-- `a(n-2)+a(n-1)*A000578(n)` -/
def P11462340120053218874.Spec : Prop :=
  ∀ n, P11462340120053218874.a n = A329305 n

end A329305

/-!
# A329306: Define b(D) = -Sum_{i=1..D} Kronecker(-D,i)*i for D == 0 or 3 (mod 4); sequence gives D such that b(D) = 0.

The programs for A329306, there is no canonical definition to state claims against.
-/

/-! ## A329306.P12298400507551844910

`A014601(eq[0, A329648(n+1)]+1)`
-/

namespace A329306.P12298400507551844910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A329306.P12298400507551844910

/-!
# A329308: a(n) is the number of k with 1 < k < sqrt(n) such that n mod k^2 is prime.

The programs for A329308, there is no canonical definition to state claims against.
-/

/-! ## A329308.P16192669121142657413

`A124760(A000031(n)-A013632(n+4))`
-/

namespace A329308.P16192669121142657413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A000031 n - A013632 (n + 4)).toNat

end

end A329308.P16192669121142657413

/-! ## A329308.P10628050385515352332

`A124760(A000031(n)-A051119(n+5))`
-/

namespace A329308.P10628050385515352332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A000031 n - A051119 (n + 5)).toNat

end

end A329308.P10628050385515352332

/-! ## A329308.P14866992180764384020

`A057444(2*(n+1))%A000016(A056239(n+1))`
-/

namespace A329308.P14866992180764384020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057444 (2 * (n + 1))) (A000016 (A056239 (n + 1)).toNat)

end

end A329308.P14866992180764384020

/-! ## A329308.P13544956640017990917

`A153246(A002088(n))%A010883(3*n+4)`
-/

namespace A329308.P13544956640017990917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153246 (A002088 n).toNat) (A010883 (3 * n + 4))

end

end A329308.P13544956640017990917

/-! ## A329308.P14015715735649519412

`A118082(A000700(A000700(A118083(A259884(n)))))`
-/

namespace A329308.P14015715735649519412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118082 (A000700 (A000700 (A118083 (A259884 n).toNat).toNat).toNat).toNat

end

end A329308.P14015715735649519412

/-!
# A329309: a(n) is the first prime p such that A329308(p) = n.

The programs for A329309, there is no canonical definition to state claims against.
-/

/-! ## A329309.P8224680615480098696

`A173135(A066733(n+1))`
-/

namespace A329309.P8224680615480098696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173135 (A066733 (n + 1)).toNat

end

end A329309.P8224680615480098696

/-!
# A329312: Length of the co-Lyndon factorization of the binary expansion of n.

The programs for A329312, there is no canonical definition to state claims against.
-/

/-! ## A329312.P9819201489539303934

`A211097(n+1+A035327(n+1)+A035327(n+1))`
-/

namespace A329312.P9819201489539303934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 ((n + 1 : ℤ) + (A035327 (n + 1) + A035327 (n + 1))).toNat

end

end A329312.P9819201489539303934

/-! ## A329312.P2721266819784007323

`A334297(A059893(n+1))`
-/

namespace A329312.P2721266819784007323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (A059893 (n + 1)).toNat

end

end A329312.P2721266819784007323

/-! ## A329312.P3514016372608639367

`A334297(A145342(n+2)-1)`
-/

namespace A329312.P3514016372608639367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (A145342 (n + 2) - 1).toNat

end

end A329312.P3514016372608639367

/-! ## A329312.P18111075469608149732

`A334297((A145341(n+2)-1)/2)`
-/

namespace A329312.P18111075469608149732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (SequenceMachineLib.roundAway ((A145341 (n + 2) - 1 : ℚ) / 2)).toNat

end

end A329312.P18111075469608149732

/-! ## A329312.P9601240073410457581

`A334297((A030101(n+1)+A003817(n+1))/2)`
-/

namespace A329312.P9601240073410457581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (SequenceMachineLib.roundAway ((A030101 (n + 1) + A003817 (n + 1) : ℚ) / 2)).toNat

end

end A329312.P9601240073410457581

/-!
# A329313: Length of the Lyndon factorization of the reversed binary expansion of n.

The programs for A329313, there is no canonical definition to state claims against.
-/

/-! ## A329313.P16545210772729156849

`∑{e}[A348268(n), #]`
-/

namespace A329313.P16545210772729156849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348268 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A329313.P16545210772729156849

/-! ## A329313.P16991689725510619102

`A001222(A348268(n))`
-/

namespace A329313.P16991689725510619102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A348268 n).toNat

end

end A329313.P16991689725510619102

/-! ## A329313.P1713008305412996854

`A211100(A145341(n+1))-1`
-/

namespace A329313.P1713008305412996854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A145341 (n + 1)).toNat - 1

end

end A329313.P1713008305412996854

/-! ## A329313.P6631296521028389806

`A211100(A030101(2*n+1))-1`
-/

namespace A329313.P6631296521028389806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A030101 (2 * n + 1)).toNat - 1

end

end A329313.P6631296521028389806

/-! ## A329313.P3823722930104485060

`A211100(A057889(2*n+1))-1`
-/

namespace A329313.P3823722930104485060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A057889 (2 * n + 1)).toNat - 1

end

end A329313.P3823722930104485060

/-!
# A329314: Irregular triangle read by rows where row n gives the lengths of the components in the Lyndon factorization of the binary expansion of n.

The programs for A329314, there is no canonical definition to state claims against.
-/

/-! ## A329314.P16696135578491617857

`A275216(A132575(2*(n+1))%A213631(n+1))`
-/

namespace A329314.P16696135578491617857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275216 (Int.tmod (A132575 (2 * (n + 1))) (A213631 (n + 1))).toNat

end

end A329314.P16696135578491617857

/-! ## A329314.P147270045008408869

`A275216(A132575(2*(n+1)))%A359544(2*n+3)`
-/

namespace A329314.P147270045008408869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275216 (A132575 (2 * (n + 1))).toNat) (A359544 (2 * n + 3))

end

end A329314.P147270045008408869

/-! ## A329314.P5341514685256081714

`A158565(A381476(n+1))`
-/

namespace A329314.P5341514685256081714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158565 (A381476 (n + 1)).toNat

end

end A329314.P5341514685256081714

/-! ## A329314.P15001642485995076953

`A004736(gcd(A071561(n+2), A325885(n+2)))`
-/

namespace A329314.P15001642485995076953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Int.gcd (A071561 (n + 2)) (A325885 (n + 2)))

end

end A329314.P15001642485995076953

/-! ## A329314.P1419773914155732325

`A305936((2^n)%A014612(n+1))`
-/

namespace A329314.P1419773914155732325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305936 (Int.tmod (2 ^ n : ℤ) (A014612 (n + 1))).toNat

end

end A329314.P1419773914155732325

/-!
# A329316: Irregular triangle read by rows where row n gives the sequence of lengths of components of the Lyndon factorization of the reversed first n terms of A000002.

The programs for A329316, there is no canonical definition to state claims against.
-/

/-! ## A329316.P17961151232895743249

`gcd(A143999(A002729(n)), A251751(n))`
-/

namespace A329316.P17961151232895743249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143999 (A002729 n).toNat) (A251751 n)

end

end A329316.P17961151232895743249

/-! ## A329316.P3880381493509943424

`gcd(A008611(A335308(n)), A099246(n))`
-/

namespace A329316.P3880381493509943424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008611 (A335308 n).toNat) (A099246 n)

end

end A329316.P3880381493509943424

/-! ## A329316.P11672479610736226508

`A080508(gcd(A042983(n+1), A042984(n)))`
-/

namespace A329316.P11672479610736226508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080508 (Int.gcd (A042983 (n + 1)) (A042984 n))

end

end A329316.P11672479610736226508

/-! ## A329316.P17095525926392854951

`gcd(A025660(A102831(n+1)), A302291(n))`
-/

namespace A329316.P17095525926392854951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025660 (A102831 (n + 1)).toNat) (A302291 n)

end

end A329316.P17095525926392854951

/-! ## A329316.P12239996777990330099

`A358134(C(A387178(n), A257992(n+1)))`
-/

namespace A329316.P12239996777990330099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358134 (Nat.choose (A387178 n).toNat (A257992 (n + 1)).toNat)

end

end A329316.P12239996777990330099

/-!
# A329317: Length of the Lyndon factorization of the reversed first n terms of A000002.

The programs for A329317, there is no canonical definition to state claims against.
-/

/-! ## A329317.P12801780387103480494

`A211100(∑[ceil(2^(n-1))*A000002(n+1)])`
-/

namespace A329317.P12801780387103480494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329317.P12801780387103480494

/-! ## A329317.P429845556653426417

`A374741(A374741(3*(n+1))+A111175(3*n+2))`
-/

namespace A329317.P429845556653426417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 (A374741 (3 * (n + 1)) + A111175 (3 * n + 2)).toNat

end

end A329317.P429845556653426417

/-!
# A329318: List of co-Lyndon words on {1,2} sorted first by length and then lexicographically.

The programs for A329318, there is no canonical definition to state claims against.
-/

/-! ## A329318.P9278424273375095177

`A007931(A329401(n+1)-1)`
-/

namespace A329318.P9278424273375095177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A329401 (n + 1) - 1).toNat

end

end A329318.P9278424273375095177

/-! ## A329318.P7845268667913841117

`A007931(eq[1, A329400(n+1)])`
-/

namespace A329318.P7845268667913841117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A329318.P7845268667913841117

/-! ## A329318.P8066048589027415719

`A007931(record[(n+2)/A329400(n+2)]-1)`
-/

namespace A329318.P8066048589027415719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A329400 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1)).toNat

end

end A329318.P8066048589027415719

/-! ## A329318.P11541917980828269040

`A004086(A102659(n+1)^((n+1)/dr(n+1)))`
-/

namespace A329318.P11541917980828269040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A102659 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ))).toNat

end

end A329318.P11541917980828269040

/-! ## A329318.P7170882785479234855

`A004086(A102659(n+1)%A052349(n+4))`
-/

namespace A329318.P7170882785479234855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A102659 (n + 1)) (A052349 (n + 4))).toNat

end

end A329318.P7170882785479234855

/-!
# A329319: Number of (directed) Hamiltonian paths in K_{n} X K_{3}.

The programs for A329319, there is no canonical definition to state claims against.
-/

/-! ## A329319.P5525681578439910832

`A269565(A167614(n+1))`
-/

namespace A329319.P5525681578439910832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269565 (A167614 (n + 1)).toNat

end

end A329319.P5525681578439910832

/-! ## A329319.P1323322235381489294

`A269565(A167499(n)+n)`
-/

namespace A329319.P1323322235381489294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269565 (A167499 n + (n : ℤ)).toNat

end

end A329319.P1323322235381489294

/-! ## A329319.P17589170179434575825

`A269565(A000217(n+2)+3)`
-/

namespace A329319.P17589170179434575825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269565 (A000217 (n + 2) + 3).toNat

end

end A329319.P17589170179434575825

/-! ## A329319.P5051783392450278450

`A269565(A373663(n+1))`
-/

namespace A329319.P5051783392450278450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269565 (A373663 (n + 1)).toNat

end

end A329319.P5051783392450278450

/-! ## A329319.P13316733528213405587

`A269565(A034856(n+2))`
-/

namespace A329319.P13316733528213405587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269565 (A034856 (n + 2)).toNat

end

end A329319.P13316733528213405587

/-!
# A329320: a(n) = Sum_{k=0..floor(log_2(n))} 1 - A035263(1 + floor(n/2^k)).

The programs for A329320, the canonical program `A329320.P5103174178356464829` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329320 has offset 0).

The definition of A329320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329320.P5103174178356464829

`a(floor(n/2))+val(n+1, 2)%2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329320

/-- `a(floor(n/2))+val(n+1, 2)%2` -/
def P5103174178356464829.Spec : Prop :=
  ∀ n, (P5103174178356464829.a n : ℤ) = A329320 n

theorem P5103174178356464829.correct : P5103174178356464829.Spec := by
  intro n
  simp only [A329320]

end A329320

/-! ## A329320.P11450818099119964151

`a(floor(n/2))+1-A035263(n+1)` with `a(0)=0`
-/

namespace A329320.P11450818099119964151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + 1 - A035263 (n + 1)

end

end A329320.P11450818099119964151

namespace A329320

/-- `a(floor(n/2))+1-A035263(n+1)` -/
def P11450818099119964151.Spec : Prop :=
  ∀ n, P11450818099119964151.a n = A329320 n

end A329320

/-! ## A329320.P8606268776525099409

`n-A239907(n)`
-/

namespace A329320.P8606268776525099409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A239907 n

end

end A329320.P8606268776525099409

namespace A329320

/-- `n-A239907(n)` -/
def P8606268776525099409.Spec : Prop :=
  ∀ n, P8606268776525099409.a n = A329320 n

end A329320

/-! ## A329320.P8880171421213059795

`A000120(A072650(n))`
-/

namespace A329320.P8880171421213059795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A072650 n).toNat

end

end A329320.P8880171421213059795

namespace A329320

/-- `A000120(A072650(n))` -/
def P8880171421213059795.Spec : Prop :=
  ∀ n, P8880171421213059795.a n = A329320 n

end A329320

/-! ## A329320.P12189472581257543370

`A000120(A374356(n))`
-/

namespace A329320.P12189472581257543370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A374356 n).toNat

end

end A329320.P12189472581257543370

namespace A329320

/-- `A000120(A374356(n))` -/
def P12189472581257543370.Spec : Prop :=
  ∀ n, P12189472581257543370.a n = A329320 n

end A329320

/-! ## A329320.P7927472775745667682

`A007302(xor(3*A065620(n), A065620(n)))`
-/

namespace A329320.P7927472775745667682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (Int.xor (3 * A065620 n) (A065620 n)).toNat

end

end A329320.P7927472775745667682

namespace A329320

/-- `A007302(xor(3*A065620(n), A065620(n)))` -/
def P7927472775745667682.Spec : Prop :=
  ∀ n, P7927472775745667682.a n = A329320 n

end A329320

/-! ## A329320.P15522127926682022155

`A280737(A268716(n)+1)`
-/

namespace A329320.P15522127926682022155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (A268716 n + 1).toNat

end

end A329320.P15522127926682022155

namespace A329320

/-- `A280737(A268716(n)+1)` -/
def P15522127926682022155.Spec : Prop :=
  ∀ n, P15522127926682022155.a n = A329320 n

end A329320

/-! ## A329320.P6471895548802046194

`A037800(A374356(2*n+2*n+1))`
-/

namespace A329320.P6471895548802046194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A374356 (2 * n + (2 * n + 1))).toNat

end

end A329320.P6471895548802046194

namespace A329320

/-- `A037800(A374356(2*n+2*n+1))` -/
def P6471895548802046194.Spec : Prop :=
  ∀ n, P6471895548802046194.a n = A329320 n

end A329320

/-! ## A329320.P15063745547924829743

`A001222(A097246(A278222(n)))`
-/

namespace A329320.P15063745547924829743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A097246 (A278222 n).toNat).toNat

end

end A329320.P15063745547924829743

namespace A329320

/-- `A001222(A097246(A278222(n)))` -/
def P15063745547924829743.Spec : Prop :=
  ∀ n, P15063745547924829743.a n = A329320 n

end A329320

/-! ## A329320.P8295118746683840667

`A134024(A371276(n))`
-/

namespace A329320.P8295118746683840667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 (A371276 n).toNat

end

end A329320.P8295118746683840667

namespace A329320

/-- `A134024(A371276(n))` -/
def P8295118746683840667.Spec : Prop :=
  ∀ n, P8295118746683840667.a n = A329320 n

end A329320

/-! ## A329320.P11135251869092995780

`A081603(A043589(n+1))`
-/

namespace A329320.P11135251869092995780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A043589 (n + 1)).toNat

end

end A329320.P11135251869092995780

namespace A329320

/-- `A081603(A043589(n+1))` -/
def P11135251869092995780.Spec : Prop :=
  ∀ n, P11135251869092995780.a n = A329320 n

end A329320

/-! ## A329320.P9961992069089094649

`val(A224529(n), 2)`
-/

namespace A329320.P9961992069089094649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A224529 n).toNat 2

end

end A329320.P9961992069089094649

namespace A329320

/-- `val(A224529(n), 2)` -/
def P9961992069089094649.Spec : Prop :=
  ∀ n, (P9961992069089094649.a n : ℤ) = A329320 n

end A329320

/-!
# A329321: a(n) is the total number of odd parts in all partitions of n into consecutive parts.

The programs for A329321, there is no canonical definition to state claims against.
-/

/-! ## A329321.P570923025916907617

`A204217(n+1)-A329322(n+1)`
-/

namespace A329321.P570923025916907617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (n + 1) - A329322 (n + 1)

end

end A329321.P570923025916907617

/-! ## A329321.P3837751870715156260

`A338616(n+1)/2-A329322(n+1)`
-/

namespace A329321.P3837751870715156260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338616 (n + 1) : ℚ) / 2 - (A329322 (n + 1) : ℚ)

end

end A329321.P3837751870715156260

/-! ## A329321.P7031871281774567025

`A001281(A338616(n+1))-A329322(n+1)`
-/

namespace A329321.P7031871281774567025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A338616 (n + 1)).toNat - A329322 (n + 1)

end

end A329321.P7031871281774567025

/-! ## A329321.P3103476494879541363

`A101279(A338616(n+1)+1)-A329322(n+1)`
-/

namespace A329321.P3103476494879541363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A338616 (n + 1) + 1).toNat - A329322 (n + 1)

end

end A329321.P3103476494879541363

/-! ## A329321.P6545583437494749559

`A130722(A338616(n+1)+1)-A329322(n+1)`
-/

namespace A329321.P6545583437494749559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130722 (A338616 (n + 1) + 1).toNat - A329322 (n + 1)

end

end A329321.P6545583437494749559

/-! ## A329321.P8404981172081686690

`A002265(2*A338616(n+1))-A329322(n+1)`
-/

namespace A329321.P8404981172081686690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A338616 (n + 1)).toNat - A329322 (n + 1)

end

end A329321.P8404981172081686690

/-! ## A329321.P6673645006150364867

`A319895(n+1)-(A329322(n+1)+A001227(n+1))`
-/

namespace A329321.P6673645006150364867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319895 (n + 1) - (A329322 (n + 1) + A001227 (n + 1))

end

end A329321.P6673645006150364867

/-! ## A329321.P3982782173692193011

`A054785(n+1)-(A353149(n+1)+A329322(n+1))`
-/

namespace A329321.P3982782173692193011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - (A353149 (n + 1) + A329322 (n + 1))

end

end A329321.P3982782173692193011

/-! ## A329321.P15337721610097232638

`A230877(A347266(n+1))-A329322(n+1)`
-/

namespace A329321.P15337721610097232638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 (A347266 (n + 1)).toNat - A329322 (n + 1)

end

end A329321.P15337721610097232638

/-! ## A329321.P10216850072385643371

`A341309(n+1)+A352446(n+1)-A329322(n+1)`
-/

namespace A329321.P10216850072385643371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341309 (n + 1) + (A352446 (n + 1) - A329322 (n + 1))

end

end A329321.P10216850072385643371

/-!
# A329322: a(n) is the total number of even parts in all partitions of n into consecutive parts.

The programs for A329322, there is no canonical definition to state claims against.
-/

/-! ## A329322.P8778543427131556003

`A204217(n+1)-A329321(n+1)`
-/

namespace A329322.P8778543427131556003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (n + 1) - A329321 (n + 1)

end

end A329322.P8778543427131556003

/-! ## A329322.P2518665233540837888

`A338616(n+1)/2-A329321(n+1)`
-/

namespace A329322.P2518665233540837888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338616 (n + 1) : ℚ) / 2 - (A329321 (n + 1) : ℚ)

end

end A329322.P2518665233540837888

/-! ## A329322.P13256879512320871420

`A001281(A338616(n+1))-A329321(n+1)`
-/

namespace A329322.P13256879512320871420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A338616 (n + 1)).toNat - A329321 (n + 1)

end

end A329322.P13256879512320871420

/-! ## A329322.P4791937328318111002

`A004526(A338616(n+1)+1)-A329321(n+1)`
-/

namespace A329322.P4791937328318111002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338616 (n + 1) + 1).toNat - A329321 (n + 1)

end

end A329322.P4791937328318111002

/-! ## A329322.P5835842036561305386

`A101279(A338616(n+1)+1)-A329321(n+1)`
-/

namespace A329322.P5835842036561305386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A338616 (n + 1) + 1).toNat - A329321 (n + 1)

end

end A329322.P5835842036561305386

/-! ## A329322.P6947066930524380792

`A319895(n+1)-(A329321(n+1)+A001227(n+1))`
-/

namespace A329322.P6947066930524380792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319895 (n + 1) - (A329321 (n + 1) + A001227 (n + 1))

end

end A329322.P6947066930524380792

/-! ## A329322.P3699559389311947416

`A054785(n+1)-(A353149(n+1)+A329321(n+1))`
-/

namespace A329322.P3699559389311947416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - (A353149 (n + 1) + A329321 (n + 1))

end

end A329322.P3699559389311947416

/-! ## A329322.P1586759878448836845

`A230877(A347266(n+1))-A329321(n+1)`
-/

namespace A329322.P1586759878448836845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 (A347266 (n + 1)).toNat - A329321 (n + 1)

end

end A329322.P1586759878448836845

/-!
# A329323: Triangle read by rows: T(n,k) is the sum of the parts congruent to 0 mod k in the partitions of n into equal parts, 1 <= k <= n.

The programs for A329323, there is no canonical definition to state claims against.
-/

/-! ## A329323.P15504069367496330429

`∑[char[∑[n]]]*A127170(n+1)`
-/

namespace A329323.P15504069367496330429
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A127170 (n + 1)

end

end A329323.P15504069367496330429

/-! ## A329323.P7538915068285646402

`A002260(n+1)*A127168(n)`
-/

namespace A329323.P7538915068285646402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127168 n

end

end A329323.P7538915068285646402

/-! ## A329323.P5407637716376980781

`A050873(n+1)*A127168(n)`
-/

namespace A329323.P5407637716376980781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A127168 n

end

end A329323.P5407637716376980781

/-! ## A329323.P3974875125266761170

`A112544(n+1)*A127168(n)`
-/

namespace A329323.P3974875125266761170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) * A127168 n

end

end A329323.P3974875125266761170

/-! ## A329323.P16851878801331442469

`A123275(n+1)*A127168(n)`
-/

namespace A329323.P16851878801331442469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) * A127168 n

end

end A329323.P16851878801331442469

/-! ## A329323.P11738391536949381785

`A127093(n+1)*A127168(n)`
-/

namespace A329323.P11738391536949381785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A127168 n

end

end A329323.P11738391536949381785

/-! ## A329323.P10347777303915357327

`A127168(n)*A307662(n+1)`
-/

namespace A329323.P10347777303915357327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127168 n * A307662 (n + 1)

end

end A329323.P10347777303915357327

/-! ## A329323.P7562322598811586218

`A127168(n)*A327856(n+1)`
-/

namespace A329323.P7562322598811586218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127168 n * A327856 (n + 1)

end

end A329323.P7562322598811586218

/-! ## A329323.P7895461233309961840

`A127168(n)*A334230(n+1)`
-/

namespace A329323.P7895461233309961840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127168 n * A334230 (n + 1)

end

end A329323.P7895461233309961840

/-! ## A329323.P6058276895932279290

`A127168(n)*A357554(n+1)`
-/

namespace A329323.P6058276895932279290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127168 n * A357554 (n + 1)

end

end A329323.P6058276895932279290

/-!
# A329324: Number of Lyndon compositions of n whose reverse is not a co-Lyndon composition.

The programs for A329324, there is no canonical definition to state claims against.
-/

/-! ## A329324.P11757894782941391234

`A059966(n+1)-A334269(n+1)`
-/

namespace A329324.P11757894782941391234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - A334269 (n + 1)

end

end A329324.P11757894782941391234

/-! ## A329324.P3253149235957666652

`∑{d}[n+1, A318731(#)]-A334269(n+1)`
-/

namespace A329324.P3253149235957666652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318731 d - A334269 (n + 1)

end

end A329324.P3253149235957666652

/-! ## A329324.P6075569617262490352

`and(A060477(n+1)-A334269(n+1), A260196(n))`
-/

namespace A329324.P6075569617262490352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060477 (n + 1) - A334269 (n + 1)) (A260196 n)

end

end A329324.P6075569617262490352

/-! ## A329324.P11101584173579864162

`A001037(n+1)-A036987(2*n)-A334269(n+1)`
-/

namespace A329324.P11101584173579864162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - A036987 (2 * n) - A334269 (n + 1)

end

end A329324.P11101584173579864162

/-! ## A329324.P10803110464415075947

`gcd(A033322(n+1), A060477(n+1))-A334269(n+1)`
-/

namespace A329324.P10803110464415075947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A033322 (n + 1)) (A060477 (n + 1)) : ℤ) - A334269 (n + 1)

end

end A329324.P10803110464415075947

/-!
# A329325: Irregular triangle read by rows where row n gives the lengths of the components in the Lyndon factorization of the binary expansion of n with first digit removed.

The programs for A329325, there is no canonical definition to state claims against.
-/

/-! ## A329325.P3084596821395398645

`A329314(comp[∑[A211100(n)]-1])`
-/

namespace A329325.P3084596821395398645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329314 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A329325.P3084596821395398645

/-! ## A329325.P8895824308447117371

`A072411(gcd(A055037(n+5), A210643(2*n+3)))`
-/

namespace A329325.P8895824308447117371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (Int.gcd (A055037 (n + 5)) (A210643 (2 * n + 3)))

end

end A329325.P8895824308447117371

/-! ## A329325.P17777418560801933693

`gcd(A139457(A022415(n)), A139460(n+1))`
-/

namespace A329325.P17777418560801933693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139457 (A022415 n).toNat) (A139460 (n + 1))

end

end A329325.P17777418560801933693

/-! ## A329325.P14854491347910160838

`gcd(A191380(A191375(n+2)), A191392(n+1))`
-/

namespace A329325.P14854491347910160838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A191380 (A191375 (n + 2)).toNat) (A191392 (n + 1))

end

end A329325.P14854491347910160838

/-! ## A329325.P12737459206842935901

`A329314(A175526(n+1)-A329314(3*n+1))`
-/

namespace A329325.P12737459206842935901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329314 (A175526 (n + 1) - A329314 (3 * n + 1)).toNat

end

end A329325.P12737459206842935901

/-!
# A329326: Length of the co-Lyndon factorization of the reversed binary expansion of n.

The programs for A329326, there is no canonical definition to state claims against.
-/

/-! ## A329326.P14595599400837698716

`A211100(A059894(n+1))`
-/

namespace A329326.P14595599400837698716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A059894 (n + 1)).toNat

end

end A329326.P14595599400837698716

/-! ## A329326.P2625625395633132446

`dr(A211100(A059894(Δ[n²]-n)))`
-/

namespace A329326.P2625625395633132446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A211100 (A059894 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat)

end

end A329326.P2625625395633132446

/-! ## A329326.P15948339123274128764

`A211100(A036044(2*(n+1)))-1`
-/

namespace A329326.P15948339123274128764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A036044 (2 * (n + 1))).toNat - 1

end

end A329326.P15948339123274128764

/-! ## A329326.P136945204293663102

`A211100(A059894(comp[n*n%2]))-1`
-/

namespace A329326.P136945204293663102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A059894 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat - 1

end

end A329326.P136945204293663102

/-! ## A329326.P8495818941415658383

`A211100(A059894(comp[n*and(1, n)]))-1`
-/

namespace A329326.P8495818941415658383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A059894 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat - 1

end

end A329326.P8495818941415658383

/-! ## A329326.P13898176267316446924

`A211097(2*(A059894(n+1)-1)+1)`
-/

namespace A329326.P13898176267316446924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (2 * (A059894 (n + 1) - 1) + 1).toNat

end

end A329326.P13898176267316446924

/-! ## A329326.P15204084427880658423

`A211100(A059894(3*n-(n-2)))-1`
-/

namespace A329326.P15204084427880658423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A059894 ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat).toNat - 1

end

end A329326.P15204084427880658423

/-! ## A329326.P15381136701629347727

`A334297(A025480(n))+val(n+1, 2)+1`
-/

namespace A329326.P15381136701629347727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (A025480 n).toNat + (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ)

end

end A329326.P15381136701629347727

/-! ## A329326.P9411199911360720216

`A334297(A025480(n))+Δ[A005187(n)]`
-/

namespace A329326.P9411199911360720216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (A025480 n).toNat + (f1 (n + 1) - f1 n)

end

end A329326.P9411199911360720216

/-! ## A329326.P889819667878540133

`A334297(A025480(n))+A001511(n+1)`
-/

namespace A329326.P889819667878540133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (A025480 n).toNat + A001511 (n + 1)

end

end A329326.P889819667878540133

/-!
# A329327: Numbers whose binary expansion has Lyndon factorization of length 2 (the minimum for n > 1).

The programs for A329327, there is no canonical definition to state claims against.
-/

/-! ## A329327.P7950258974300657340

`A339608(n+1)+1`
-/

namespace A329327.P7950258974300657340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339608 (n + 1) + 1

end

end A329327.P7950258974300657340

/-! ## A329327.P3767543695612571191

`eq[2, A211100(n)]`
-/

namespace A329327.P3767543695612571191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329327.P3767543695612571191

/-! ## A329327.P3988147727447115691

`eq[1, A211097(n+1)]+2`
-/

namespace A329327.P3988147727447115691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A329327.P3988147727447115691

/-! ## A329327.P10369790339044196062

`record[2*(n+1)/A211100(n+1)]`
-/

namespace A329327.P10369790339044196062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A211100 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329327.P10369790339044196062

/-! ## A329327.P4201755697215813558

`A004277(A326774(n))+1`
-/

namespace A329327.P4201755697215813558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A326774 n).toNat + 1

end

end A329327.P4201755697215813558

/-! ## A329327.P17758648399256416547

`A020725(A339608(n+1))`
-/

namespace A329327.P17758648399256416547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A339608 (n + 1)).toNat

end

end A329327.P17758648399256416547

/-! ## A329327.P2327271299549644561

`A004274(A326774(n)+2)`
-/

namespace A329327.P2327271299549644561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A326774 n + 2).toNat

end

end A329327.P2327271299549644561

/-! ## A329327.P10363577360414674115

`A004280(A326774(n)+2)`
-/

namespace A329327.P10363577360414674115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A326774 n + 2).toNat

end

end A329327.P10363577360414674115

/-! ## A329327.P3887534111768126066

`A028310(2*A326774(n))+1`
-/

namespace A329327.P3887534111768126066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A326774 n).toNat + 1

end

end A329327.P3887534111768126066

/-! ## A329327.P9147716052181300024

`eq[2, A211097(A004274(n+1))]`
-/

namespace A329327.P9147716052181300024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (A004274 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329327.P9147716052181300024

/-!
# A329328: The squares in A329472.

The programs for A329328, there is no canonical definition to state claims against.
-/

/-! ## A329328.P9090488790213145614

`∩[A013935(n+1), n²]`
-/

namespace A329328.P9090488790213145614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013935 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A329328.P9090488790213145614

/-! ## A329328.P10273980918597693563

`∩[A329472(n+1), n²]`
-/

namespace A329328.P10273980918597693563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329472 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A329328.P10273980918597693563

/-!
# A329329: Multiplicative operator of a ring over the positive integers that has A059897(.,.) as additive operator and is isomorphic to GF(2)[x,y] with A329050(i,j) the image of x^i * y^j.

The programs for A329329, there is no canonical definition to state claims against.
-/

/-! ## A329329.P590842539833868018

`A297845(n+1)%A270045(n)`
-/

namespace A329329.P590842539833868018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297845 (n + 1)) (A270045 (n + 10))

end

end A329329.P590842539833868018

/-! ## A329329.P858757002004201426

`A306697(n+1)²/A297845(n+1)`
-/

namespace A329329.P858757002004201426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306697 (n + 1) ^ 2 : ℚ) / (A297845 (n + 1) : ℚ)

end

end A329329.P858757002004201426

/-! ## A329329.P17772656731017090424

`A306697(n+1)/A053164(A004767(n))`
-/

namespace A329329.P17772656731017090424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306697 (n + 1) : ℚ) / (A053164 (A004767 n).toNat : ℚ)

end

end A329329.P17772656731017090424

/-! ## A329329.P8057484781410235847

`A306697(n+1)/A028234(A256554(n))`
-/

namespace A329329.P8057484781410235847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306697 (n + 1) : ℚ) / (A028234 (A256554 n).toNat : ℚ)

end

end A329329.P8057484781410235847

/-! ## A329329.P12784851408994505318

`A306697(n+1)/A287215(A004198(n))`
-/

namespace A329329.P12784851408994505318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306697 (n + 1) : ℚ) / (A287215 (A004198 n).toNat : ℚ)

end

end A329329.P12784851408994505318

/-! ## A329329.P6791532372289029298

`A306697(n+1)/A287215(A331902(n))`
-/

namespace A329329.P6791532372289029298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306697 (n + 1) : ℚ) / (A287215 (A331902 n).toNat : ℚ)

end

end A329329.P6791532372289029298

/-! ## A329329.P6932581470181451076

`A306697(n+1)/A287215(A341840(n))`
-/

namespace A329329.P6932581470181451076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306697 (n + 1) : ℚ) / (A287215 (A341840 n).toNat : ℚ)

end

end A329329.P6932581470181451076

/-! ## A329329.P798835961556232076

`A056622(A297845(n+1)*A306697(n+1))`
-/

namespace A329329.P798835961556232076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A297845 (n + 1) * A306697 (n + 1)).toNat

end

end A329329.P798835961556232076

/-! ## A329329.P8647787641550966809

`A306697(n+1)/A093803(A003989(n+1))`
-/

namespace A329329.P8647787641550966809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306697 (n + 1) : ℚ) / (A093803 (A003989 (n + 1)).toNat : ℚ)

end

end A329329.P8647787641550966809

/-! ## A329329.P12725664533376802711

`A306697(n+1)/A093803(A059895(n+1))`
-/

namespace A329329.P12725664533376802711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306697 (n + 1) : ℚ) / (A093803 (A059895 (n + 1)).toNat : ℚ)

end

end A329329.P12725664533376802711

/-!
# A329330: Multiplication operation of a ring over the positive integers that has A059897(.,.) as addition operation and is isomorphic to GF(2)[x] with polynomial x^i mapped to A050376(i+1). Square array read by descending antidiagonals: A(n,k), n >= 1, k >= 1.

The programs for A329330, there is no canonical definition to state claims against.
-/

/-! ## A329330.P7097267339513407947

`A110591(A146988(n))`
-/

namespace A329330.P7097267339513407947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A146988 n).toNat

end

end A329330.P7097267339513407947

/-! ## A329330.P16127425633606888

`A226029(A296827(n+1))`
-/

namespace A329330.P16127425633606888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (A296827 (n + 1)).toNat

end

end A329330.P16127425633606888

/-! ## A329330.P13281059951681488748

`A358372(A298070(n+1)+1)`
-/

namespace A329330.P13281059951681488748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (A298070 (n + 1) + 1).toNat

end

end A329330.P13281059951681488748

/-! ## A329330.P15892551182800360331

`A335885(A218695(n+1)+2)`
-/

namespace A329330.P15892551182800360331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A218695 (n + 1) + 2).toNat

end

end A329330.P15892551182800360331

/-! ## A329330.P13513158220897135438

`A062153(4*A299893(n+1))`
-/

namespace A329330.P13513158220897135438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (4 * A299893 (n + 1)).toNat

end

end A329330.P13513158220897135438

/-!
# A329331: Binary operation over the nonnegative integers, distributive over A003987(.,.), such that A(2^i, 2^j) = 2^A054237(i,j). Square array A(n,k), n >= 0, k >= 0, read by descending antidiagonals.

The programs for A329331, there is no canonical definition to state claims against.
-/

/-! ## A329331.P3369058058066661001

`A014473(n)+A007814(A045912(n))`
-/

namespace A329331.P3369058058066661001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A007814 (A045912 n).toNat

end

end A329331.P3369058058066661001

/-!
# A329332: Table of powers of squarefree numbers, powers of A019565(n) in increasing order in row n. Square array A(n,k) n >= 0, k >= 0 read by descending antidiagonals.

The programs for A329332, there is no canonical definition to state claims against.
-/

/-! ## A329332.P12980837756625655544

`A019565(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A329332.P12980837756625655544
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
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A329332.P12980837756625655544

/-! ## A329332.P6031759883721754957

`A019565(A002262(n))^A025581(n)`
-/

namespace A329332.P6031759883721754957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 (A002262 n).toNat : ℚ) ^ (A025581 n : ℤ)

end

end A329332.P6031759883721754957

/-! ## A329332.P2083493716292142491

`A097248(A059268(n))^A025581(n)`
-/

namespace A329332.P2083493716292142491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097248 (A059268 n).toNat : ℚ) ^ (A025581 n : ℤ)

end

end A329332.P2083493716292142491

/-! ## A329332.P10601261094200182545

`A019565(A002262(n))^log2(A130321(n))`
-/

namespace A329332.P10601261094200182545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A019565 (A002262 n).toNat : ℝ) ^ (Real.logb 2 (A130321 n : ℝ))

end

end A329332.P10601261094200182545

/-! ## A329332.P8696637283022891102

`A019565(A002262(n))^A025660(n+1)`
-/

namespace A329332.P8696637283022891102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 (A002262 n).toNat : ℚ) ^ (A025660 (n + 1) : ℤ)

end

end A329332.P8696637283022891102

/-! ## A329332.P6014901896125312901

`A019565(A002262(n))^A025669(n+1)`
-/

namespace A329332.P6014901896125312901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 (A002262 n).toNat : ℚ) ^ (A025669 (n + 1) : ℤ)

end

end A329332.P6014901896125312901

/-! ## A329332.P11389908552390516746

`A019565(A002262(n))^A025677(n+1)`
-/

namespace A329332.P11389908552390516746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 (A002262 n).toNat : ℚ) ^ (A025677 (n + 1) : ℤ)

end

end A329332.P11389908552390516746

/-! ## A329332.P6028811750612428742

`A019565(A025668(n+1))^A025581(n)`
-/

namespace A329332.P6028811750612428742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 (A025668 (n + 1)).toNat : ℚ) ^ (A025581 n : ℤ)

end

end A329332.P6028811750612428742

/-!
# A329335: Continued fraction of A328905 = 0.5638955242599..., solution to 1 + 2^x = 5^x.

The programs for A329335, there is no canonical definition to state claims against.
-/

/-! ## A329335.P14442211517753483127

`A036459(C(A048675(2*(n+2)), A036459(2*n+3)))`
-/

namespace A329335.P14442211517753483127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036459 (Nat.choose (A048675 (2 * (n + 2))).toNat (A036459 (2 * n + 3)).toNat)

end

end A329335.P14442211517753483127

/-!
# A329340: Size of the orbit of n under "ghost iterations" A329201 (rule B).

The programs for A329340, there is no canonical definition to state claims against.
-/

/-! ## A329340.P2450364354508367916

`A329198(A061601(n))%A357875(n+3)`
-/

namespace A329340.P2450364354508367916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329198 (A061601 n).toNat) (A357875 (n + 3))

end

end A329340.P2450364354508367916

/-! ## A329340.P14489137592405733522

`A329198(A061601(n)%A180230(n))`
-/

namespace A329340.P14489137592405733522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329198 (Int.tmod (A061601 n) (A180230 n)).toNat

end

end A329340.P14489137592405733522

/-! ## A329340.P1667841324236551638

`A043537(A283980(3*n+2)^((n-∑{digits}[n, #])/9))`
-/

namespace A329340.P1667841324236551638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (SequenceMachineLib.roundAway ((A283980 (3 * n + 2) : ℝ) ^ (((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9 : ℝ))).toNat

end

end A329340.P1667841324236551638

/-! ## A329340.P16167496646848788617

`A025790(A000005(record[A004248(n)]))`
-/

namespace A329340.P16167496646848788617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025790 (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A329340.P16167496646848788617

/-! ## A329340.P7060265769022618947

`A046072(ceil(A089849(n)/A070939(n)))`
-/

namespace A329340.P7060265769022618947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 ⌈(A089849 n : ℚ) / (A070939 n : ℚ)⌉.toNat

end

end A329340.P7060265769022618947

/-!
# A329343: Difference between the indices of the smallest and the largest primorial in the greedy sum of primorials adding to A108951(n).

The programs for A329343, there is no canonical definition to state claims against.
-/

/-! ## A329343.P5368370801477229253

`A243055(A346091(n+1))`
-/

namespace A329343.P5368370801477229253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A346091 (n + 1)).toNat

end

end A329343.P5368370801477229253

/-! ## A329343.P3005557944823899739

`A243055(gcd(A034386(n), A324886(n+1)))`
-/

namespace A329343.P3005557944823899739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (Int.gcd (A034386 n) (A324886 (n + 1)))

end

end A329343.P3005557944823899739

/-! ## A329343.P10706151707929737760

`A326844(A346091(n+1))%A327543(n+1)`
-/

namespace A329343.P10706151707929737760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326844 (A346091 (n + 1)).toNat) (A327543 (n + 1))

end

end A329343.P10706151707929737760

/-! ## A329343.P849427006421072991

`A342651(A346091(n+1))%A342944(n+1)`
-/

namespace A329343.P849427006421072991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342651 (A346091 (n + 1)).toNat) (A342944 (n + 1))

end

end A329343.P849427006421072991

/-! ## A329343.P13725165178241618636

`A193929(A331293(n+1)%A223227(3*n+4))`
-/

namespace A329343.P13725165178241618636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (Int.tmod (A331293 (n + 1)) (A223227 (3 * n + 4))).toNat

end

end A329343.P13725165178241618636

/-!
# A329344: Number of times most frequent primorial is present in the greedy sum of primorials adding to A108951(n).

The programs for A329344, there is no canonical definition to state claims against.
-/

/-! ## A329344.P1178476207404676338

`A329619(n+1)+A001222(n+1)`
-/

namespace A329344.P1178476207404676338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329619 (n + 1) + A001222 (n + 1)

end

end A329344.P1178476207404676338

/-! ## A329344.P17481470774740926794

`A329619(n+1)+A000720(A105560(n+1))`
-/

namespace A329344.P17481470774740926794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329619 (n + 1) + A000720 (A105560 (n + 1)).toNat

end

end A329344.P17481470774740926794

/-! ## A329344.P7497367860916266909

`A329619(n+1)+∑{e}[n+1, A297025(A011782(#))]`
-/

namespace A329344.P7497367860916266909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329619 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n), A297025 (A011782 (Nat.factorization (f1 n) p)).toNat

end

end A329344.P7497367860916266909

/-! ## A329344.P12308643443186670081

`A329619(n+1)+A056239(∏{e}[n+1, A000040(#)])`
-/

namespace A329344.P12308643443186670081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329619 (n + 1) + A056239 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A329344.P12308643443186670081

/-! ## A329344.P14674834321395504493

`A329348(n+1)+A329619(n+1)-A331289(n+1)`
-/

namespace A329344.P14674834321395504493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329348 (n + 1) + (A329619 (n + 1) - A331289 (n + 1))

end

end A329344.P14674834321395504493

/-!
# A329346: a(n) = A322356(A324886(n)).

The programs for A329346, there is no canonical definition to state claims against.
-/

/-! ## A329346.P3450147677106286573

`A322356(A346091(n+1))`
-/

namespace A329346.P3450147677106286573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322356 (A346091 (n + 1)).toNat

end

end A329346.P3450147677106286573

/-! ## A329346.P15570645512929672285

`A322356(A324886(n+1)%A181883(n+11))`
-/

namespace A329346.P15570645512929672285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322356 (Int.tmod (A324886 (n + 1)) (A181883 (n + 11))).toNat

end

end A329346.P15570645512929672285

/-! ## A329346.P1571143770610078310

`gcd(A160379(A351291(n+1)), A163987(n+3))`
-/

namespace A329346.P1571143770610078310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160379 (A351291 (n + 1)).toNat) (A163987 (n + 3))

end

end A329346.P1571143770610078310

/-!
# A329347: Dirichlet convolution of the identity function with bigomega.

The programs for A329347, the canonical program `A329347.P9900062964830492735` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329347 has offset 1).

The definition of A329347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329347.P9900062964830492735

`∑{d}[n+1, A095112(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A329347

/-- `∑{d}[n+1, A095112(#)]` -/
def P9900062964830492735.Spec : Prop :=
  ∀ n, P9900062964830492735.a n = A329347 (n + 1)

theorem P9900062964830492735.correct : P9900062964830492735.Spec := by
  intro n
  simp only [A329347, Nat.add_sub_cancel]

end A329347

/-! ## A329347.P15039154497299944948

`∑{d}[n+1, (n+1)/#*A001222(#)]`
-/

namespace A329347.P15039154497299944948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A001222 d : ℚ)

end

end A329347.P15039154497299944948

namespace A329347

/-- `∑{d}[n+1, (n+1)/#*A001222(#)]` -/
def P15039154497299944948.Spec : Prop :=
  ∀ n, P15039154497299944948.a n = (A329347 (n + 1) : ℚ)

end A329347

/-! ## A329347.P15427734143372600694

`∑{d}[n+1, #*(A001222(n+1)-A001222(#))]`
-/

namespace A329347.P15427734143372600694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A001222 (n + 1) - A001222 d)

end

end A329347.P15427734143372600694

namespace A329347

/-- `∑{d}[n+1, #*(A001222(n+1)-A001222(#))]` -/
def P15427734143372600694.Spec : Prop :=
  ∀ n, P15427734143372600694.a n = A329347 (n + 1)

end A329347

/-! ## A329347.P13605551693670826844

`∑{d}[n+1, A000010(#)*A069264((n+1)/#)]`
-/

namespace A329347.P13605551693670826844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A069264 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329347.P13605551693670826844

namespace A329347

/-- `∑{d}[n+1, A000010(#)*A069264((n+1)/#)]` -/
def P13605551693670826844.Spec : Prop :=
  ∀ n, P13605551693670826844.a n = A329347 (n + 1)

end A329347

/-! ## A329347.P6010465032587063645

`∑{d}[n+1, A000203(#)*A069513((n+1)/#)]`
-/

namespace A329347.P6010465032587063645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A069513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329347.P6010465032587063645

namespace A329347

/-- `∑{d}[n+1, A000203(#)*A069513((n+1)/#)]` -/
def P6010465032587063645.Spec : Prop :=
  ∀ n, P6010465032587063645.a n = A329347 (n + 1)

end A329347

/-! ## A329347.P5503366350809016769

`∑{d}[n+1, A000005(#)*A116512((n+1)/#)]`
-/

namespace A329347.P5503366350809016769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A116512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329347.P5503366350809016769

namespace A329347

/-- `∑{d}[n+1, A000005(#)*A116512((n+1)/#)]` -/
def P5503366350809016769.Spec : Prop :=
  ∀ n, P5503366350809016769.a n = A329347 (n + 1)

end A329347

/-! ## A329347.P5825029107117252431

`∑{d}[n+1, A063659(#)*A345344((n+1)/#)]`
-/

namespace A329347.P5825029107117252431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A345344 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329347.P5825029107117252431

namespace A329347

/-- `∑{d}[n+1, A063659(#)*A345344((n+1)/#)]` -/
def P5825029107117252431.Spec : Prop :=
  ∀ n, P5825029107117252431.a n = A329347 (n + 1)

end A329347

/-! ## A329347.P12289619663372540392

`∑{d}[n+1, A091512(#)*A317531((n+1)/#)]`
-/

namespace A329347.P12289619663372540392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A317531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329347.P12289619663372540392

namespace A329347

/-- `∑{d}[n+1, A091512(#)*A317531((n+1)/#)]` -/
def P12289619663372540392.Spec : Prop :=
  ∀ n, P12289619663372540392.a n = A329347 (n + 1)

end A329347

/-!
# A329348: The least significant nonzero digit in the primorial base expansion of primorial inflation of n, A108951(n).

The programs for A329348, the canonical program `A329348.P7234823264148255162` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329348 has offset 1).

The definition of A329348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329348.P14079874214005001726

`A067029(A324886(n+1))`
-/

namespace A329348.P14079874214005001726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A324886 (n + 1)).toNat

end

end A329348.P14079874214005001726

namespace A329348

/-- `A067029(A324886(n+1))` -/
def P14079874214005001726.Spec : Prop :=
  ∀ n, P14079874214005001726.a n = A329348 (n + 1)

end A329348

/-! ## A329348.P15605450702607091701

`A331289(n+1)+Δ[A022559(n)]`
-/

namespace A329348.P15605450702607091701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331289 (n + 1) + (f1 (n + 1) - f1 n)

end

end A329348.P15605450702607091701

namespace A329348

/-- `A331289(n+1)+Δ[A022559(n)]` -/
def P15605450702607091701.Spec : Prop :=
  ∀ n, P15605450702607091701.a n = A329348 (n + 1)

end A329348

/-! ## A329348.P15587958795517612146

`A331289(n+1)+A001222(n+1)`
-/

namespace A329348.P15587958795517612146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331289 (n + 1) + A001222 (n + 1)

end

end A329348.P15587958795517612146

namespace A329348

/-- `A331289(n+1)+A001222(n+1)` -/
def P15587958795517612146.Spec : Prop :=
  ∀ n, P15587958795517612146.a n = A329348 (n + 1)

end A329348

/-! ## A329348.P16693809527643667419

`A331291(n+1)/A086436(n+1)`
-/

namespace A329348.P16693809527643667419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331291 (n + 1) : ℚ) / (A086436 (n + 1) : ℚ)

end

end A329348.P16693809527643667419

namespace A329348

/-- `A331291(n+1)/A086436(n+1)` -/
def P16693809527643667419.Spec : Prop :=
  ∀ n, P16693809527643667419.a n = (A329348 (n + 1) : ℚ)

end A329348

/-! ## A329348.P7234823264148255162

`A331188(n+1)%A117366(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A329348

/-- `A331188(n+1)%A117366(n+1)` -/
def P7234823264148255162.Spec : Prop :=
  ∀ n, P7234823264148255162.a n = A329348 (n + 1)

theorem P7234823264148255162.correct : P7234823264148255162.Spec := by
  intro n
  simp only [A329348, Nat.add_sub_cancel]

end A329348

/-! ## A329348.P14252533463640622222

`A331291(n+1)/(A001222(A052126(n+1))+1)`
-/

namespace A329348.P14252533463640622222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331291 (n + 1) : ℚ) / (A001222 (A052126 (n + 1)).toNat + 1 : ℚ)

end

end A329348.P14252533463640622222

namespace A329348

/-- `A331291(n+1)/(A001222(A052126(n+1))+1)` -/
def P14252533463640622222.Spec : Prop :=
  ∀ n, P14252533463640622222.a n = (A329348 (n + 1) : ℚ)

end A329348

/-! ## A329348.P5119348505049623077

`A329344(n+1)+A331289(n+1)-A329619(n+1)`
-/

namespace A329348.P5119348505049623077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (n + 1) + (A331289 (n + 1) - A329619 (n + 1))

end

end A329348.P5119348505049623077

namespace A329348

/-- `A329344(n+1)+A331289(n+1)-A329619(n+1)` -/
def P5119348505049623077.Spec : Prop :=
  ∀ n, P5119348505049623077.a n = A329348 (n + 1)

end A329348

/-! ## A329348.P5654228719960988538

`A331188(n+1)-A117366(n+1)*A331293(n+1)`
-/

namespace A329348.P5654228719960988538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (n + 1) - A117366 (n + 1) * A331293 (n + 1)

end

end A329348.P5654228719960988538

namespace A329348

/-- `A331188(n+1)-A117366(n+1)*A331293(n+1)` -/
def P5654228719960988538.Spec : Prop :=
  ∀ n, P5654228719960988538.a n = A329348 (n + 1)

end A329348

/-! ## A329348.P9906726344015848042

`val(A324886(n+1), A117366(n+1))`
-/

namespace A329348.P9906726344015848042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324886 (n + 1)).toNat (A117366 (n + 1)).toNat

end

end A329348.P9906726344015848042

namespace A329348

/-- `val(A324886(n+1), A117366(n+1))` -/
def P9906726344015848042.Spec : Prop :=
  ∀ n, (P9906726344015848042.a n : ℤ) = A329348 (n + 1)

end A329348

/-! ## A329348.P5785028414563725978

`val(A324886(n+1), A324886(A006530(n+1)))`
-/

namespace A329348.P5785028414563725978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324886 (n + 1)).toNat (A324886 (A006530 (n + 1)).toNat).toNat

end

end A329348.P5785028414563725978

namespace A329348

/-- `val(A324886(n+1), A324886(A006530(n+1)))` -/
def P5785028414563725978.Spec : Prop :=
  ∀ n, (P5785028414563725978.a n : ℤ) = A329348 (n + 1)

end A329348

/-! ## A329348.P14093850215904924877

`val(A324887(n+1), A117366(n+1))`
-/

namespace A329348.P14093850215904924877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324887 (n + 1)).toNat (A117366 (n + 1)).toNat

end

end A329348.P14093850215904924877

namespace A329348

/-- `val(A324887(n+1), A117366(n+1))` -/
def P14093850215904924877.Spec : Prop :=
  ∀ n, (P14093850215904924877.a n : ℤ) = A329348 (n + 1)

end A329348

/-! ## A329348.P13243615268046097027

`val(A324887(n+1), A346091(A006530(n+1)))`
-/

namespace A329348.P13243615268046097027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324887 (n + 1)).toNat (A346091 (A006530 (n + 1)).toNat).toNat

end

end A329348.P13243615268046097027

namespace A329348

/-- `val(A324887(n+1), A346091(A006530(n+1)))` -/
def P13243615268046097027.Spec : Prop :=
  ∀ n, (P13243615268046097027.a n : ℤ) = A329348 (n + 1)

end A329348

/-!
# A329349: Number of occurrences of the largest primorial present in the greedy sum of primorials adding to A108951(n).

The programs for A329349, there is no canonical definition to state claims against.
-/

/-! ## A329349.P5766390953483331271

`val(A324886(n+1), A006530(A346091(n+1)))`
-/

namespace A329349.P5766390953483331271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324886 (n + 1)).toNat (A006530 (A346091 (n + 1)).toNat).toNat

end

end A329349.P5766390953483331271

/-! ## A329349.P244848826711679822

`val(A324887(n+1), A006530(A346091(n+1)))`
-/

namespace A329349.P244848826711679822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324887 (n + 1)).toNat (A006530 (A346091 (n + 1)).toNat).toNat

end

end A329349.P244848826711679822

/-! ## A329349.P950438242918784703

`val(A346096(n+1), A006530(A346091(n+1)))`
-/

namespace A329349.P950438242918784703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A346096 (n + 1)).toNat (A006530 (A346091 (n + 1)).toNat).toNat

end

end A329349.P950438242918784703

/-! ## A329349.P15017506969098636560

`gcd(A329344(n+1), A369016(n))`
-/

namespace A329349.P15017506969098636560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A329344 (n + 1)) (A369016 n)

end

end A329349.P15017506969098636560

/-! ## A329349.P1187108206303362618

`A276094(A329348(n+1)^A276094(n+2))`
-/

namespace A329349.P1187108206303362618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276094 (SequenceMachineLib.roundAway ((A329348 (n + 1) : ℚ) ^ (A276094 (n + 2) : ℤ))).toNat

end

end A329349.P1187108206303362618

/-!
# A329350: a(n) = Product_{d|n} A276086(d)^A010051(n/d).

The programs for A329350, there is no canonical definition to state claims against.
-/

/-! ## A329350.P14461312632907590218

`∏{p}[n+1, A276086((n+1)/#)]`
-/

namespace A329350.P14461312632907590218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A276086 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A329350.P14461312632907590218

/-! ## A329350.P6221597288443329505

`A038754(∑{p}[n+1, ceil(n/#)]%A246501(n+1))`
-/

namespace A329350.P6221597288443329505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (Int.tmod (∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉) (A246501 (n + 1))).toNat

end

end A329350.P6221597288443329505

/-! ## A329350.P11028397037937443848

`A038754(A069359(n+1)%A162102(n+1))`
-/

namespace A329350.P11028397037937443848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (Int.tmod (A069359 (n + 1)) (A162102 (n + 1))).toNat

end

end A329350.P11028397037937443848

/-! ## A329350.P11256835045722172214

`A038754(A318320(n+1)%A162102(n+1))`
-/

namespace A329350.P11256835045722172214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (Int.tmod (A318320 (n + 1)) (A162102 (n + 1))).toNat

end

end A329350.P11256835045722172214

/-!
# A329351: Lexicographically earliest infinite sequence such that a(i) = a(j) => A329350(i) = A329350(j) for all i, j.

The programs for A329351, there is no canonical definition to state claims against.
-/

/-! ## A329351.P10464179158550913872

`A007966(A293215(n+1)*A293217(n+1))`
-/

namespace A329351.P10464179158550913872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A293215 (n + 1) * A293217 (n + 1)).toNat

end

end A329351.P10464179158550913872

/-! ## A329351.P16897525290691048671

`A007966((A066246(n+1)+2)*A293217(n+1))`
-/

namespace A329351.P16897525290691048671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 ((A066246 (n + 1) + 2) * A293217 (n + 1)).toNat

end

end A329351.P16897525290691048671

/-!
# A329352: a(n) = Product_{d|n} A019565(d)^A010051(n/d).

The programs for A329352, there is no canonical definition to state claims against.
-/

/-! ## A329352.P8846121287585679845

`∏{p}[n+1, A019565((n+1)/#)]`
-/

namespace A329352.P8846121287585679845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A019565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A329352.P8846121287585679845

/-! ## A329352.P2672532088686049011

`A300832(n+1)/A318809(A062513(n+1))`
-/

namespace A329352.P2672532088686049011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300832 (n + 1) : ℚ) / (A318809 (A062513 (n + 1)).toNat : ℚ)

end

end A329352.P2672532088686049011

/-! ## A329352.P17331358460332384990

`A300832(n+1)/A008480(A335450(n+1))`
-/

namespace A329352.P17331358460332384990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300832 (n + 1) : ℚ) / (A008480 (A335450 (n + 1)).toNat : ℚ)

end

end A329352.P17331358460332384990

/-! ## A329352.P16320260742323994747

`A300832(n+1)/A318809(A304481(n+1))`
-/

namespace A329352.P16320260742323994747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300832 (n + 1) : ℚ) / (A318809 (A304481 (n + 1)).toNat : ℚ)

end

end A329352.P16320260742323994747

/-! ## A329352.P5202027294400977770

`A300832(n+1)/A318809(A107067(n+1))`
-/

namespace A329352.P5202027294400977770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300832 (n + 1) : ℚ) / (A318809 (A107067 (n + 1)).toNat : ℚ)

end

end A329352.P5202027294400977770

/-!
# A329354: a(n) = Sum_{d|n} d*omega(d).

The programs for A329354, the canonical program `A329354.P424931253356111511` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329354 has offset 1).

The definition of A329354 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180253, A323599, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329354.P9054708301868892076

`A328260(n+1)+A329375(n+1)`
-/

namespace A329354.P9054708301868892076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328260 (n + 1) + A329375 (n + 1)

end

end A329354.P9054708301868892076

namespace A329354

/-- `A328260(n+1)+A329375(n+1)` -/
def P9054708301868892076.Spec : Prop :=
  ∀ n, P9054708301868892076.a n = A329354 (n + 1)

end A329354

/-! ## A329354.P424931253356111511

`A180253(n+1)-A323599(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A329354

/-- `A180253(n+1)-A323599(n+1)` -/
def P424931253356111511.Spec : Prop :=
  ∀ n, P424931253356111511.a n = A329354 (n + 1)

theorem P424931253356111511.correct : P424931253356111511.Spec := by
  intro n
  simp only [A329354, Nat.add_sub_cancel]

end A329354

/-! ## A329354.P18405620233976365946

`∑{d}[n+1, A328260(#)]`
-/

namespace A329354.P18405620233976365946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328260 d

end

end A329354.P18405620233976365946

namespace A329354

/-- `∑{d}[n+1, A328260(#)]` -/
def P18405620233976365946.Spec : Prop :=
  ∀ n, P18405620233976365946.a n = A329354 (n + 1)

end A329354

/-! ## A329354.P6412011971303091251

`∑{d}[n+1, #*A001221(#)]`
-/

namespace A329354.P6412011971303091251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001221 d

end

end A329354.P6412011971303091251

namespace A329354

/-- `∑{d}[n+1, #*A001221(#)]` -/
def P6412011971303091251.Spec : Prop :=
  ∀ n, P6412011971303091251.a n = A329354 (n + 1)

end A329354

/-! ## A329354.P10581491002716449291

`∑{d}[n+1, #*A008472((n+1)/#)]`
-/

namespace A329354.P10581491002716449291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329354.P10581491002716449291

namespace A329354

/-- `∑{d}[n+1, #*A008472((n+1)/#)]` -/
def P10581491002716449291.Spec : Prop :=
  ∀ n, P10581491002716449291.a n = A329354 (n + 1)

end A329354

/-! ## A329354.P18212944855913846878

`∑{p}[n+1, #*A000203((n+1)/#)]`
-/

namespace A329354.P18212944855913846878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A329354.P18212944855913846878

namespace A329354

/-- `∑{p}[n+1, #*A000203((n+1)/#)]` -/
def P18212944855913846878.Spec : Prop :=
  ∀ n, P18212944855913846878.a n = A329354 (n + 1)

end A329354

/-! ## A329354.P17379906050122047880

`∑{d}[n+1, A000203(#)*A061397((n+1)/#)]`
-/

namespace A329354.P17379906050122047880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329354.P17379906050122047880

namespace A329354

/-- `∑{d}[n+1, A000203(#)*A061397((n+1)/#)]` -/
def P17379906050122047880.Spec : Prop :=
  ∀ n, P17379906050122047880.a n = A329354 (n + 1)

end A329354

/-! ## A329354.P12007365079372297115

`∑{d}[n+1, A007429(#)*A137851((n+1)/#)]`
-/

namespace A329354.P12007365079372297115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A137851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329354.P12007365079372297115

namespace A329354

/-- `∑{d}[n+1, A007429(#)*A137851((n+1)/#)]` -/
def P12007365079372297115.Spec : Prop :=
  ∀ n, P12007365079372297115.a n = A329354 (n + 1)

end A329354

/-! ## A329354.P11823468046350418045

`∑{d}[n+1, A000010(#)*A319131((n+1)/#)]`
-/

namespace A329354.P11823468046350418045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A319131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329354.P11823468046350418045

namespace A329354

/-- `∑{d}[n+1, A000010(#)*A319131((n+1)/#)]` -/
def P11823468046350418045.Spec : Prop :=
  ∀ n, P11823468046350418045.a n = A329354 (n + 1)

end A329354

/-! ## A329354.P1985690934973751418

`∑{d}[n+1, A000005(#)*A347104((n+1)/#)]`
-/

namespace A329354.P1985690934973751418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A347104 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329354.P1985690934973751418

namespace A329354

/-- `∑{d}[n+1, A000005(#)*A347104((n+1)/#)]` -/
def P1985690934973751418.Spec : Prop :=
  ∀ n, P1985690934973751418.a n = A329354 (n + 1)

end A329354

/-! ## A329354.P14388715992233941293

`∑{d}[n+1, A091512(#)*A300852((n+1)/#)]`
-/

namespace A329354.P14388715992233941293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A300852 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329354.P14388715992233941293

namespace A329354

/-- `∑{d}[n+1, A091512(#)*A300852((n+1)/#)]` -/
def P14388715992233941293.Spec : Prop :=
  ∀ n, P14388715992233941293.a n = A329354 (n + 1)

end A329354

/-!
# A329355: The binary expansion of a(n) is the second through n-th terms of A000002 - 1.

The programs for A329355, the canonical program `A329355.P12529553447571034160` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329355 has offset 1).

The definition of A329355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329355.P12529553447571034160

`A157686(n)+2*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A329355

/-- `A157686(n)+2*a(n-1)` -/
def P12529553447571034160.Spec : Prop :=
  ∀ n, P12529553447571034160.a n = A329355 (n + 1)

theorem P12529553447571034160.correct : P12529553447571034160.Spec := by
  intro n
  simp only [A329355, Nat.add_sub_cancel]

end A329355

/-! ## A329355.P7725057487817816160

`log2(A078880(n))+2*a(n-1)` with `a(0)=0`
-/

namespace A329355.P7725057487817816160
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  Real.logb 2 (A078880 n : ℝ) + 2 * a (n - 1)

end

end A329355.P7725057487817816160

namespace A329355

/-- `log2(A078880(n))+2*a(n-1)` -/
def P7725057487817816160.Spec : Prop :=
  ∀ n, P7725057487817816160.a n = (A329355 (n + 1) : ℝ)

end A329355

/-! ## A329355.P3155767641551517867

`A123594(n+3)+2*a(n-1)` with `a(0)=0`
-/

namespace A329355.P3155767641551517867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A123594 (n + 3) + 2 * a (n - 1)

end

end A329355.P3155767641551517867

namespace A329355

/-- `A123594(n+3)+2*a(n-1)` -/
def P3155767641551517867.Spec : Prop :=
  ∀ n, P3155767641551517867.a n = A329355 (n + 1)

end A329355

/-! ## A329355.P3559100067256193591

`∑[2^n]-A329356(n+1)`
-/

namespace A329355.P3559100067256193591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A329356 (n + 1)

end

end A329355.P3559100067256193591

namespace A329355

/-- `∑[2^n]-A329356(n+1)` -/
def P3559100067256193591.Spec : Prop :=
  ∀ n, P3559100067256193591.a n = A329355 (n + 1)

end A329355

/-! ## A329355.P9372926391046336127

`xor(∑[2^n], A329356(Δ[n²]-n))`
-/

namespace A329355.P9372926391046336127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A329356 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

end

end A329355.P9372926391046336127

namespace A329355

/-- `xor(∑[2^n], A329356(Δ[n²]-n))` -/
def P9372926391046336127.Spec : Prop :=
  ∀ n, P9372926391046336127.a n = A329355 (n + 1)

end A329355

/-!
# A329356: The binary expansion of a(n) is the first n terms of 2 - A000002.

The programs for A329356, the canonical program `A329356.P5614816182224858814` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329356 has offset 0).

The definition of A329356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329356.P13372502544155004325

`A000002(n)%2+2*a(n-1)` with `a(0)=0`
-/

namespace A329356.P13372502544155004325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A000002 n) 2 + 2 * a (n - 1)

end

end A329356.P13372502544155004325

namespace A329356

/-- `A000002(n)%2+2*a(n-1)` -/
def P13372502544155004325.Spec : Prop :=
  ∀ n, P13372502544155004325.a n = A329356 n

end A329356

/-! ## A329356.P5614816182224858814

`A156253(n)%2+2*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A329356

/-- `A156253(n)%2+2*a(n-1)` -/
def P5614816182224858814.Spec : Prop :=
  ∀ n, P5614816182224858814.a n = A329356 n

theorem P5614816182224858814.correct : P5614816182224858814.Spec := by
  intro n
  simp only [A329356]

end A329356

/-! ## A329356.P13265898150856215544

`xor(2*a(n-1), char[A013947(n+1)])` with `a(0)=0`
-/

namespace A329356.P13265898150856215544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (2 * a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A329356.P13265898150856215544

namespace A329356

/-- `xor(2*a(n-1), char[A013947(n+1)])` -/
def P13265898150856215544.Spec : Prop :=
  ∀ n, (P13265898150856215544.a n : ℤ) = A329356 n

end A329356

/-! ## A329356.P7629881414734922539

`2^n-1-A329355(round(sqrt(n²+1)))`
-/

namespace A329356.P7629881414734922539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1 - A329355 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A329356.P7629881414734922539

namespace A329356

/-- `2^n-1-A329355(round(sqrt(n²+1)))` -/
def P7629881414734922539.Spec : Prop :=
  ∀ n, P7629881414734922539.a n = A329356 n

end A329356

/-! ## A329356.P2800762615272474729

`a(n-1)+A078650(n)+a(n-1)` with `a(0)=0`
-/

namespace A329356.P2800762615272474729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A078650 n + a (n - 1))

end

end A329356.P2800762615272474729

namespace A329356

/-- `a(n-1)+A078650(n)+a(n-1)` -/
def P2800762615272474729.Spec : Prop :=
  ∀ n, P2800762615272474729.a n = A329356 n

end A329356

/-!
# A329357: Numbers whose reversed binary expansion has co-Lyndon factorization of length 2.

The programs for A329357, there is no canonical definition to state claims against.
-/

/-! ## A329357.P8217235215206713686

`ceil(2/acot(A334265(n+1)))`
-/

namespace A329357.P8217235215206713686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (A334265 (n + 1) : ℝ)⌉

end

end A329357.P8217235215206713686

/-! ## A329357.P8752871970373891771

`floor(2/acot(A334265(C(n+1, n))))+1`
-/

namespace A329357.P8752871970373891771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (A334265 (Nat.choose (n + 1) n) : ℝ)⌋ + 1

end

end A329357.P8752871970373891771

/-! ## A329357.P2591930601330896337

`A004277(A334265(n+1))+1`
-/

namespace A329357.P2591930601330896337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A334265 (n + 1)).toNat + 1

end

end A329357.P2591930601330896337

/-! ## A329357.P2907497417884462671

`A004274(A334265(n+1)+2)`
-/

namespace A329357.P2907497417884462671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A334265 (n + 1) + 2).toNat

end

end A329357.P2907497417884462671

/-! ## A329357.P10246202041346114836

`A004280(A334265(n+1)+2)`
-/

namespace A329357.P10246202041346114836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A334265 (n + 1) + 2).toNat

end

end A329357.P10246202041346114836

/-! ## A329357.P17257432396217409747

`A054977(n)+2*A334265(n+1)`
-/

namespace A329357.P17257432396217409747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + 2 * A334265 (n + 1)

end

end A329357.P17257432396217409747

/-! ## A329357.P14723870712624803191

`floor(A020639(2*(n+1))/acot(A334265(n+1)))+1`
-/

namespace A329357.P14723870712624803191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020639 (2 * (n + 1)) : ℝ) / SequenceMachineLib.acot (A334265 (n + 1) : ℝ)⌋ + 1

end

end A329357.P14723870712624803191

/-! ## A329357.P16035595726209638500

`floor(A014963(12*n+6)+2/acot(A334265(n+1)))`
-/

namespace A329357.P16035595726209638500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (12 * n + 6) : ℝ) + 2 / SequenceMachineLib.acot (A334265 (n + 1) : ℝ)⌋

end

end A329357.P16035595726209638500

/-! ## A329357.P16486853952568062440

`A005408(A334265(n+1))+A000007(n)`
-/

namespace A329357.P16486853952568062440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A334265 (n + 1)).toNat + A000007 n

end

end A329357.P16486853952568062440

/-! ## A329357.P468244866815734374

`A005408(A334265(n+1))-A008683(2*(n+1)²)`
-/

namespace A329357.P468244866815734374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A334265 (n + 1)).toNat - A008683 (2 * (n + 1) ^ 2)

end

end A329357.P468244866815734374

/-!
# A329358: Numbers whose binary expansion has Lyndon and co-Lyndon factorizations of equal lengths.

The programs for A329358, there is no canonical definition to state claims against.
-/

/-! ## A329358.P12762382816952143640

`eq[A211100(n), A329313(n)]`
-/

namespace A329358.P12762382816952143640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329358.P12762382816952143640

/-! ## A329358.P891477004826648225

`eq[A211097(abs(1-2*n)), A329313(n)]`
-/

namespace A329358.P891477004826648225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 |1 - (2 * n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329358.P891477004826648225

/-! ## A329358.P10922381172395716224

`eq[A211100(n+1), A329312(n+1)]+1`
-/

namespace A329358.P10922381172395716224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A329358.P10922381172395716224

/-! ## A329358.P14909856401840793384

`eq[A211097(2*n+1), A329313(n+1)]+1`
-/

namespace A329358.P14909856401840793384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A329358.P14909856401840793384

/-! ## A329358.P17105430146214824825

`∑[gcd(A110847(n), A164126(n+1))]`
-/

namespace A329358.P17105430146214824825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110847 n) (A164126 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329358.P17105430146214824825

/-!
# A329359: Irregular triangle read by rows where row n gives the lengths of the factors in the co-Lyndon factorization of the binary expansion of n.

The programs for A329359, there is no canonical definition to state claims against.
-/

/-! ## A329359.P985355748159077362

`A374683(n)+A325801(A374747(n))`
-/

namespace A329359.P985355748159077362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374683 n + A325801 (A374747 n).toNat

end

end A329359.P985355748159077362

/-! ## A329359.P15605891783357424256

`A390568(A066099(3*n+1))+A374515(2*A270653(2*n+1))`
-/

namespace A329359.P15605891783357424256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390568 (A066099 (3 * n + 1)).toNat + A374515 (2 * A270653 (2 * n + 1)).toNat

end

end A329359.P15605891783357424256

/-! ## A329359.P5393109511996038870

`A374683(n)+A128616(A034083(n+2))`
-/

namespace A329359.P5393109511996038870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374683 n + A128616 (A034083 (n + 2)).toNat

end

end A329359.P5393109511996038870

/-! ## A329359.P10554323211644722863

`A350470(A350450(n+2))*A374683(n)`
-/

namespace A329359.P10554323211644722863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350470 (A350450 (n + 2)).toNat * A374683 n

end

end A329359.P10554323211644722863

/-! ## A329359.P11838707885160591481

`A374683(n)+A373954(A374698(2*(n+1)))`
-/

namespace A329359.P11838707885160591481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374683 n + A373954 (A374698 (2 * (n + 1))).toNat

end

end A329359.P11838707885160591481

/-!
# A329360: The decimal expansion of a(n) is the first n terms of A000002.

The programs for A329360, the canonical program `A329360.P251865556073859854` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329360 has offset 0).

The definition of A329360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329360.P9591025072011949923

`A000002(n)+10*a(n-1)` with `a(0)=0`
-/

namespace A329360.P9591025072011949923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000002 n + 10 * a (n - 1)

end

end A329360.P9591025072011949923

namespace A329360

/-- `A000002(n)+10*a(n-1)` -/
def P9591025072011949923.Spec : Prop :=
  ∀ n, P9591025072011949923.a n = A329360 n

end A329360

/-! ## A329360.P251865556073859854

`gcd(2, A156253(n))+10*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A329360

/-- `gcd(2, A156253(n))+10*a(n-1)` -/
def P251865556073859854.Spec : Prop :=
  ∀ n, (P251865556073859854.a n : ℤ) = A329360 n

theorem P251865556073859854.correct : P251865556073859854.Spec := by
  intro n
  simp only [A329360]

end A329360

/-! ## A329360.P17996622745687870288

`A007089(A248875(n))`
-/

namespace A329360.P17996622745687870288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A248875 n).toNat

end

end A329360.P17996622745687870288

namespace A329360

/-- `A007089(A248875(n))` -/
def P17996622745687870288.Spec : Prop :=
  ∀ n, P17996622745687870288.a n = A329360 n

end A329360

/-!
# A329361: a(n) = Sum_{i = 1..n} 2^(n - i) * A000002(i).

The programs for A329361, there is no canonical definition to state claims against.
-/

/-! ## A329361.P13421408545457997486

`∑[2^n]-(A329356(n)+1)`
-/

namespace A329361.P13421408545457997486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A329356 n + 1)

end

end A329361.P13421408545457997486

/-! ## A329361.P3256519209294827114

`A000002(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A329361.P3256519209294827114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000002 n + 2 * a (n - 1)

end

end A329361.P3256519209294827114

/-! ## A329361.P16663565571782324144

`gcd(2, A156253(n))+2*a(n-1)` with `a(0)=0`
-/

namespace A329361.P16663565571782324144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd 2 (A156253 n) + 2 * a (n - 1)

end

end A329361.P16663565571782324144

/-! ## A329361.P5680053983237135819

`A078880(n-1)+2*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A329361.P5680053983237135819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A078880 (n - 1) + 2 * a (n - 1)

end

end A329361.P5680053983237135819

/-! ## A329361.P10135903289889767025

`A329355(round(sqrt(n²+1)))+2^n-1`
-/

namespace A329361.P10135903289889767025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329355 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((2 ^ n : ℤ) - 1)

end

end A329361.P10135903289889767025

/-!
# A329362: Length of the co-Lyndon factorization of the first n terms of A000002.

The programs for A329362, there is no canonical definition to state claims against.
-/

/-! ## A329362.P12645871498038732116

`A004396(A117535(3*(n+1)))%A151536(n+1)`
-/

namespace A329362.P12645871498038732116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004396 (A117535 (3 * (n + 1))).toNat) (A151536 (n + 1))

end

end A329362.P12645871498038732116

/-! ## A329362.P11156644211011353511

`∑[A057078(A059966(n+1)-n)]`
-/

namespace A329362.P11156644211011353511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A059966 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329362.P11156644211011353511

/-! ## A329362.P1277445374351296509

`∑[A010892(A113165(n+1)*A350058(n+1))]`
-/

namespace A329362.P1277445374351296509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A113165 (n + 1) * A350058 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329362.P1277445374351296509

/-!
# A329364: Numbers k such that k, k+2, k+4 are prime powers.

The programs for A329364, there is no canonical definition to state claims against.
-/

/-! ## A329364.P6273874447707775052

`A264734(n+1)-2`
-/

namespace A329364.P6273874447707775052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264734 (n + 1) - 2

end

end A329364.P6273874447707775052

/-! ## A329364.P1156340607243788989

`A033999(2*n+1)+xor(1, A264734(n+1))`
-/

namespace A329364.P1156340607243788989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + Int.xor 1 (A264734 (n + 1))

end

end A329364.P1156340607243788989

/-! ## A329364.P16464169248582248110

`A320098(A274196(n))+A264734(n+1)`
-/

namespace A329364.P16464169248582248110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320098 (A274196 n).toNat + A264734 (n + 1)

end

end A329364.P16464169248582248110

/-! ## A329364.P12416667906811634378

`∩[A120431(n+1), A164572(n+1)]`
-/

namespace A329364.P12416667906811634378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329364.P12416667906811634378

/-! ## A329364.P11197209762636643678

`∩[A000961(n+1), A120431(n+1)-2]`
-/

namespace A329364.P11197209762636643678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329364.P11197209762636643678

/-!
# A329366: Numbers whose distinct prime indices are pairwise indivisible (stable) and pairwise non-relatively prime (intersecting).

The programs for A329366, there is no canonical definition to state claims against.
-/

/-! ## A329366.P13537094839823593091

`record[n+2-A133910(n+1)]`
-/

namespace A329366.P13537094839823593091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A133910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329366.P13537094839823593091

/-! ## A329366.P13310838835853340133

`record[2-A166142(n+1)+n]`
-/

namespace A329366.P13310838835853340133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A166142 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329366.P13310838835853340133

/-! ## A329366.P10033352540746342885

`record[2-A290479(n+1)+n]`
-/

namespace A329366.P10033352540746342885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A290479 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329366.P10033352540746342885

/-! ## A329366.P14861555938270659155

`record[2-A340679(n+1)+n]`
-/

namespace A329366.P14861555938270659155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A340679 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329366.P14861555938270659155

/-! ## A329366.P1513493591775192403

`record[A064446(n+1)%(n+2)]`
-/

namespace A329366.P1513493591775192403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064446 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329366.P1513493591775192403

/-! ## A329366.P15885403540960579303

`∪[A000961(n+1), Δ[n^3]]`
-/

namespace A329366.P15885403540960579303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329366.P15885403540960579303

/-! ## A329366.P9978063834393734869

`∪[30*n, lt[A001221(n+1), 2]]+1`
-/

namespace A329366.P9978063834393734869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n + 1

end

end A329366.P9978063834393734869

/-! ## A329366.P3749304071990448526

`∪[A036116(n+1), A001779(n)]`
-/

namespace A329366.P3749304071990448526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329366.P3749304071990448526

/-! ## A329366.P7990142906616505138

`∪[A036116(n+1), A003215(n)]`
-/

namespace A329366.P7990142906616505138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329366.P7990142906616505138

/-! ## A329366.P15881993225209726534

`∪[A036116(n+1), A008394(n)]`
-/

namespace A329366.P15881993225209726534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008394 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329366.P15881993225209726534

/-!
# A329367: Numbers whose binary expansion, without the most significant digit, is not a necklace.

The programs for A329367, there is no canonical definition to state claims against.
-/

/-! ## A329367.P15307825841912147084

`comp[A328668(n)]`
-/

namespace A329367.P15307825841912147084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328668 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329367.P15307825841912147084

/-! ## A329367.P6589351163702991001

`comp[A003817(n)-A257697(n)]`
-/

namespace A329367.P6589351163702991001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A257697 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329367.P6589351163702991001

/-! ## A329367.P13839075109030340117

`eq[1, char[A054429(A257739(n+1))]]`
-/

namespace A329367.P13839075109030340117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A257739 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329367.P13839075109030340117

/-! ## A329367.P8567417808114932059

`comp[A053644(2*n+1)-A257697(n)-1]`
-/

namespace A329367.P8567417808114932059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n + 1) - A257697 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329367.P8567417808114932059

/-! ## A329367.P9177280908605119905

`lt[A331856(A030101(n)), A246591(2*n)]`
-/

namespace A329367.P9177280908605119905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (A030101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246591 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329367.P9177280908605119905

/-!
# A329369: Number of permutations of {1,2,...,m} with excedance set constructed by taking m-i (0 < i < m) if b(i-1) = 1 where b(k)b(k-1)...b(1)b(0) (0 <= k < m-1) is the binary expansion of n.

The programs for A329369, there is no canonical definition to state claims against.
-/

/-! ## A329369.P5000684376236971908

`A360288(A010078(n+1))`
-/

namespace A329369.P5000684376236971908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (A010078 (n + 1)).toNat

end

end A329369.P5000684376236971908

/-! ## A329369.P15802098810428528013

`A360288(A145341(n+1))`
-/

namespace A329369.P15802098810428528013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (A145341 (n + 1)).toNat

end

end A329369.P15802098810428528013

/-! ## A329369.P14362332385164975138

`A360288(A261693(n)+n)`
-/

namespace A329369.P14362332385164975138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (A261693 n + (n : ℤ)).toNat

end

end A329369.P14362332385164975138

/-! ## A329369.P7788964197514856747

`A360288(A003817(2*n)-n)`
-/

namespace A329369.P7788964197514856747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (A003817 (2 * n) - (n : ℤ)).toNat

end

end A329369.P7788964197514856747

/-! ## A329369.P11028173777689271895

`A360288(A062383(2*n)-(n+1))`
-/

namespace A329369.P11028173777689271895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (A062383 (2 * n) - (n + 1 : ℤ)).toNat

end

end A329369.P11028173777689271895

/-! ## A329369.P6609808171316647000

`A360288(A080079(2*n+3)+n+2)`
-/

namespace A329369.P6609808171316647000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (A080079 (2 * n + 3) + (n + 2 : ℤ)).toNat

end

end A329369.P6609808171316647000

/-!
# A329370: Number of semi-magic (only long lines are magic) knight's tours on a 4 X 2n board.

The programs for A329370, there is no canonical definition to state claims against.
-/

/-! ## A329370.P12052565832972188087

`A066272(n+1)*A186237(A158837(n))`
-/

namespace A329370.P12052565832972188087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) * A186237 (A158837 n).toNat

end

end A329370.P12052565832972188087

/-!
# A329371: Dirichlet convolution of the identity function with A246277.

The programs for A329371, the canonical program `A329371.P9455100730504659270` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329371 has offset 1).

The definition of A329371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329371.P9455100730504659270

`∑{d}[n+1, #*A246277((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A329371

/-- `∑{d}[n+1, #*A246277((n+1)/#)]` -/
def P9455100730504659270.Spec : Prop :=
  ∀ n, P9455100730504659270.a n = A329371 (n + 1)

theorem P9455100730504659270.correct : P9455100730504659270.Spec := by
  intro n
  simp only [A329371, Nat.add_sub_cancel]

end A329371

/-! ## A329371.P1239594336471879657

`A211779(n+1)+A104637(A245356(n+3))`
-/

namespace A329371.P1239594336471879657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1) + A104637 (A245356 (n + 3)).toNat

end

end A329371.P1239594336471879657

namespace A329371

/-- `A211779(n+1)+A104637(A245356(n+3))` -/
def P1239594336471879657.Spec : Prop :=
  ∀ n, P1239594336471879657.a n = A329371 (n + 1)

end A329371

/-!
# A329372: Dirichlet convolution of the identity function with A156552.

The programs for A329372, the canonical program `A329372.P15808577502467683112` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329372 has offset 1).

The definition of A329372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329372.P10301469924657519164

`∑{d}[n+1, (n+1)/#*A156552(#)]`
-/

namespace A329372.P10301469924657519164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A156552 d : ℚ)

end

end A329372.P10301469924657519164

namespace A329372

/-- `∑{d}[n+1, (n+1)/#*A156552(#)]` -/
def P10301469924657519164.Spec : Prop :=
  ∀ n, P10301469924657519164.a n = (A329372 (n + 1) : ℚ)

end A329372

/-! ## A329372.P15808577502467683112

`∑{d}[n+1, A000203(#)*A297112((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A329372

/-- `∑{d}[n+1, A000203(#)*A297112((n+1)/#)]` -/
def P15808577502467683112.Spec : Prop :=
  ∀ n, P15808577502467683112.a n = A329372 (n + 1)

theorem P15808577502467683112.correct : P15808577502467683112.Spec := by
  intro n
  simp only [A329372, Nat.add_sub_cancel]

end A329372

/-!
# A329373: Dirichlet convolution of the identity function with A322993.

The programs for A329373, the canonical program `A329373.P7926473213146169930` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329373 has offset 1).

The definition of A329373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329373.P13708915401429153687

`∑{d}[n+1, (n+1)/#*A322993(#)]`
-/

namespace A329373.P13708915401429153687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A322993 d : ℚ)

end

end A329373.P13708915401429153687

namespace A329373

/-- `∑{d}[n+1, (n+1)/#*A322993(#)]` -/
def P13708915401429153687.Spec : Prop :=
  ∀ n, P13708915401429153687.a n = (A329373 (n + 1) : ℚ)

end A329373

/-! ## A329373.P7926473213146169930

`∑{d}[n+1, A000203(#)*A322994((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A329373

/-- `∑{d}[n+1, A000203(#)*A322994((n+1)/#)]` -/
def P7926473213146169930.Spec : Prop :=
  ∀ n, P7926473213146169930.a n = A329373 (n + 1)

theorem P7926473213146169930.correct : P7926473213146169930.Spec := by
  intro n
  simp only [A329373, Nat.add_sub_cancel]

end A329373

/-!
# A329374: a(1) = 0; for n > 1, a(n) = A000265(A329372(n)), where A329372 is Dirichlet convolution of the identity function with A156552.

The programs for A329374, the canonical program `A329374.P2117830195495817558` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329374 has offset 1).

The definition of A329374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329374.P2117830195495817558

`A329372(n+1)/gcd(A000079(n), A329372(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A329374

/-- `A329372(n+1)/gcd(A000079(n), A329372(n+1))` -/
def P2117830195495817558.Spec : Prop :=
  ∀ n, P2117830195495817558.a n = (A329374 (n + 1) : ℚ)

end A329374

/-! ## A329374.P5407737544431239459

`lcm(A000079(n), A329372(n+1))/A000079(n)`
-/

namespace A329374.P5407737544431239459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A329372 (n + 1)) : ℚ) / (A000079 n : ℚ)

end

end A329374.P5407737544431239459

namespace A329374

/-- `lcm(A000079(n), A329372(n+1))/A000079(n)` -/
def P5407737544431239459.Spec : Prop :=
  ∀ n, P5407737544431239459.a n = (A329374 (n + 1) : ℚ)

end A329374

/-! ## A329374.P7750104678286432229

`A327189(A226044(n)*A329372(n+1))`
-/

namespace A329374.P7750104678286432229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327189 (A226044 n * A329372 (n + 1)).toNat

end

end A329374.P7750104678286432229

namespace A329374

/-- `A327189(A226044(n)*A329372(n+1))` -/
def P7750104678286432229.Spec : Prop :=
  ∀ n, P7750104678286432229.a n = A329374 (n + 1)

end A329374

/-! ## A329374.P11875182613363847086

`A327539(A329372(n+1))^A007318(3^A001222(n+1))`
-/

namespace A329374.P11875182613363847086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327539 (A329372 (n + 1)).toNat : ℚ) ^ (A007318 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat : ℤ)

end

end A329374.P11875182613363847086

namespace A329374

/-- `A327539(A329372(n+1))^A007318(3^A001222(n+1))` -/
def P11875182613363847086.Spec : Prop :=
  ∀ n, P11875182613363847086.a n = (A329374 (n + 1) : ℚ)

end A329374

/-!
# A329375: a(n) = Sum_{d|n, d

The programs for A329375, the canonical program `A329375.P559970247339746563` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329375 has offset 1).

The definition of A329375 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328260, A329354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329375.P559970247339746563

`A329354(n+1)-A328260(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A329375

/-- `A329354(n+1)-A328260(n+1)` -/
def P559970247339746563.Spec : Prop :=
  ∀ n, P559970247339746563.a n = A329375 (n + 1)

theorem P559970247339746563.correct : P559970247339746563.Spec := by
  intro n
  simp only [A329375, Nat.add_sub_cancel]

end A329375

/-! ## A329375.P10106871933400707097

`∑{d}[n+1, #*A105221((n+1)/#)]`
-/

namespace A329375.P10106871933400707097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A105221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329375.P10106871933400707097

namespace A329375

/-- `∑{d}[n+1, #*A105221((n+1)/#)]` -/
def P10106871933400707097.Spec : Prop :=
  ∀ n, P10106871933400707097.a n = A329375 (n + 1)

end A329375

/-! ## A329375.P404018906212562919

`∑{d}[n+1, #%(n+1)*A001221(#)]`
-/

namespace A329375.P404018906212562919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d % (n + 1) : ℕ) : ℤ) * A001221 d

end

end A329375.P404018906212562919

namespace A329375

/-- `∑{d}[n+1, #%(n+1)*A001221(#)]` -/
def P404018906212562919.Spec : Prop :=
  ∀ n, P404018906212562919.a n = A329375 (n + 1)

end A329375

/-! ## A329375.P13549364532167025879

`∑{d}[n+1, A008472(#)*A051953((n+1)/#)]`
-/

namespace A329375.P13549364532167025879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008472 d * A051953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329375.P13549364532167025879

namespace A329375

/-- `∑{d}[n+1, A008472(#)*A051953((n+1)/#)]` -/
def P13549364532167025879.Spec : Prop :=
  ∀ n, P13549364532167025879.a n = A329375 (n + 1)

end A329375

/-! ## A329375.P9880317045031740969

`∑{d}[n+1, A001065(#)*A061397((n+1)/#)]`
-/

namespace A329375.P9880317045031740969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329375.P9880317045031740969

namespace A329375

/-- `∑{d}[n+1, A001065(#)*A061397((n+1)/#)]` -/
def P9880317045031740969.Spec : Prop :=
  ∀ n, P9880317045031740969.a n = A329375 (n + 1)

end A329375

/-! ## A329375.P9075639031061462345

`∑{d}[n+1, A137851(#)*A211779((n+1)/#)]`
-/

namespace A329375.P9075639031061462345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A137851 d * A211779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329375.P9075639031061462345

namespace A329375

/-- `∑{d}[n+1, A137851(#)*A211779((n+1)/#)]` -/
def P9075639031061462345.Spec : Prop :=
  ∀ n, P9075639031061462345.a n = A329375 (n + 1)

end A329375

/-! ## A329375.P12185253253028130220

`∑{d}[n+1, A032741(#)*A347104((n+1)/#)]`
-/

namespace A329375.P12185253253028130220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 d * A347104 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329375.P12185253253028130220

namespace A329375

/-- `∑{d}[n+1, A032741(#)*A347104((n+1)/#)]` -/
def P12185253253028130220.Spec : Prop :=
  ∀ n, P12185253253028130220.a n = A329375 (n + 1)

end A329375

/-! ## A329375.P4673606043798576228

`∑{d}[n+1, A062790(#)*A319131((n+1)/#)]`
-/

namespace A329375.P4673606043798576228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062790 d * A319131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329375.P4673606043798576228

namespace A329375

/-- `∑{d}[n+1, A062790(#)*A319131((n+1)/#)]` -/
def P4673606043798576228.Spec : Prop :=
  ∀ n, P4673606043798576228.a n = A329375 (n + 1)

end A329375

/-! ## A329375.P13671956769921009991

`∑{d}[n+1, A033879(#)*A374941((n+1)/#)]`
-/

namespace A329375.P13671956769921009991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A374941 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329375.P13671956769921009991

namespace A329375

/-- `∑{d}[n+1, A033879(#)*A374941((n+1)/#)]` -/
def P13671956769921009991.Spec : Prop :=
  ∀ n, P13671956769921009991.a n = A329375 (n + 1)

end A329375

/-! ## A329375.P4815887746383231569

`∑{d}[n+1, A157658(#)*A329354((n+1)/#)]`
-/

namespace A329375.P4815887746383231569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A329354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329375.P4815887746383231569

namespace A329375

/-- `∑{d}[n+1, A157658(#)*A329354((n+1)/#)]` -/
def P4815887746383231569.Spec : Prop :=
  ∀ n, P4815887746383231569.a n = A329375 (n + 1)

end A329375

/-! ## A329375.P2745497255159900288

`A180253(n+1)-(A328260(n+1)+A323599(n+1))`
-/

namespace A329375.P2745497255159900288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180253 (n + 1) - (A328260 (n + 1) + A323599 (n + 1))

end

end A329375.P2745497255159900288

namespace A329375

/-- `A180253(n+1)-(A328260(n+1)+A323599(n+1))` -/
def P2745497255159900288.Spec : Prop :=
  ∀ n, P2745497255159900288.a n = A329375 (n + 1)

end A329375

/-!
# A329376: Multiplicative with a(p^e) = p when e = 2, otherwise a(p^e) = 1.

The programs for A329376, the canonical program `A329376.P15315639946828072060` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329376 has offset 1).

The definition of A329376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329376.P13758866559572705049

`sqrt(A368884(n+1))`
-/

namespace A329376.P13758866559572705049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A368884 (n + 1) : ℝ)

end

end A329376.P13758866559572705049

namespace A329376

/-- `sqrt(A368884(n+1))` -/
def P13758866559572705049.Spec : Prop :=
  ∀ n, P13758866559572705049.a n = (A329376 (n + 1) : ℝ)

end A329376

/-! ## A329376.P8752090393211330808

`(n+1)/A366765(n+1)`
-/

namespace A329376.P8752090393211330808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A366765 (n + 1) : ℚ)

end

end A329376.P8752090393211330808

namespace A329376

/-- `(n+1)/A366765(n+1)` -/
def P8752090393211330808.Spec : Prop :=
  ∀ n, P8752090393211330808.a n = (A329376 (n + 1) : ℚ)

end A329376

/-! ## A329376.P18258907746093583708

`sqrt((n+1)/A368886(n+1))`
-/

namespace A329376.P18258907746093583708
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℚ) / (A368886 (n + 1) : ℚ) : ℝ)

end

end A329376.P18258907746093583708

namespace A329376

/-- `sqrt((n+1)/A368886(n+1))` -/
def P18258907746093583708.Spec : Prop :=
  ∀ n, P18258907746093583708.a n = (A329376 (n + 1) : ℝ)

end A329376

/-! ## A329376.P17880265782361495293

`A055231(A000189(n+1))`
-/

namespace A329376.P17880265782361495293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A000189 (n + 1)).toNat

end

end A329376.P17880265782361495293

namespace A329376

/-- `A055231(A000189(n+1))` -/
def P17880265782361495293.Spec : Prop :=
  ∀ n, P17880265782361495293.a n = A329376 (n + 1)

end A329376

/-! ## A329376.P421076393377725861

`A055231(A000190(n+1))`
-/

namespace A329376.P421076393377725861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A000190 (n + 1)).toNat

end

end A329376.P421076393377725861

namespace A329376

/-- `A055231(A000190(n+1))` -/
def P421076393377725861.Spec : Prop :=
  ∀ n, P421076393377725861.a n = A329376 (n + 1)

end A329376

/-! ## A329376.P4395016726891213764

`A055231(A003557(n+1))`
-/

namespace A329376.P4395016726891213764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A003557 (n + 1)).toNat

end

end A329376.P4395016726891213764

namespace A329376

/-- `A055231(A003557(n+1))` -/
def P4395016726891213764.Spec : Prop :=
  ∀ n, P4395016726891213764.a n = A329376 (n + 1)

end A329376

/-! ## A329376.P6445857759239074354

`A056622(A058035(n+1))`
-/

namespace A329376.P6445857759239074354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A058035 (n + 1)).toNat

end

end A329376.P6445857759239074354

namespace A329376

/-- `A056622(A058035(n+1))` -/
def P6445857759239074354.Spec : Prop :=
  ∀ n, P6445857759239074354.a n = A329376 (n + 1)

end A329376

/-! ## A329376.P12417410353535310333

`A000188(A360539(n+1))`
-/

namespace A329376.P12417410353535310333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A360539 (n + 1)).toNat

end

end A329376.P12417410353535310333

namespace A329376

/-- `A000188(A360539(n+1))` -/
def P12417410353535310333.Spec : Prop :=
  ∀ n, P12417410353535310333.a n = A329376 (n + 1)

end A329376

/-! ## A329376.P9125516967236575213

`A000188(A368171(n+1))`
-/

namespace A329376.P9125516967236575213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A368171 (n + 1)).toNat

end

end A329376.P9125516967236575213

namespace A329376

/-- `A000188(A368171(n+1))` -/
def P9125516967236575213.Spec : Prop :=
  ∀ n, P9125516967236575213.a n = A329376 (n + 1)

end A329376

/-! ## A329376.P1382980439269300496

`A071974(A366994(n+1))`
-/

namespace A329376.P1382980439269300496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A366994 (n + 1)).toNat

end

end A329376.P1382980439269300496

namespace A329376

/-- `A071974(A366994(n+1))` -/
def P1382980439269300496.Spec : Prop :=
  ∀ n, P1382980439269300496.a n = A329376 (n + 1)

end A329376

/-! ## A329376.P13162946577245600497

`A055231(A336551(n+1)+1)`
-/

namespace A329376.P13162946577245600497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A336551 (n + 1) + 1).toNat

end

end A329376.P13162946577245600497

namespace A329376

/-- `A055231(A336551(n+1)+1)` -/
def P13162946577245600497.Spec : Prop :=
  ∀ n, P13162946577245600497.a n = A329376 (n + 1)

end A329376

/-! ## A329376.P16330039112328636662

`A055231(n+1-A010848(n+1))`
-/

namespace A329376.P16330039112328636662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 ((n + 1 : ℤ) - A010848 (n + 1)).toNat

end

end A329376.P16330039112328636662

namespace A329376

/-- `A055231(n+1-A010848(n+1))` -/
def P16330039112328636662.Spec : Prop :=
  ∀ n, P16330039112328636662.a n = A329376 (n + 1)

end A329376

/-! ## A329376.P17064075984749258487

`A055231((n+1)/A007947(n+1))`
-/

namespace A329376.P17064075984749258487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A329376.P17064075984749258487

namespace A329376

/-- `A055231((n+1)/A007947(n+1))` -/
def P17064075984749258487.Spec : Prop :=
  ∀ n, P17064075984749258487.a n = A329376 (n + 1)

end A329376

/-! ## A329376.P9026075233119204963

`A055231((n+1)/A019555(n+1))`
-/

namespace A329376.P9026075233119204963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019555 (n + 1) : ℚ))).toNat

end

end A329376.P9026075233119204963

namespace A329376

/-- `A055231((n+1)/A019555(n+1))` -/
def P9026075233119204963.Spec : Prop :=
  ∀ n, P9026075233119204963.a n = A329376 (n + 1)

end A329376

/-! ## A329376.P10388067901688892373

`A055231((n+1)/A053166(n+1))`
-/

namespace A329376.P10388067901688892373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A053166 (n + 1) : ℚ))).toNat

end

end A329376.P10388067901688892373

namespace A329376

/-- `A055231((n+1)/A053166(n+1))` -/
def P10388067901688892373.Spec : Prop :=
  ∀ n, P10388067901688892373.a n = A329376 (n + 1)

end A329376

/-! ## A329376.P4512207994912432711

`A055231((n+1)/A056552(n+1))`
-/

namespace A329376.P4512207994912432711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A056552 (n + 1) : ℚ))).toNat

end

end A329376.P4512207994912432711

namespace A329376

/-- `A055231((n+1)/A056552(n+1))` -/
def P4512207994912432711.Spec : Prop :=
  ∀ n, P4512207994912432711.a n = A329376 (n + 1)

end A329376

/-! ## A329376.P6697040112176812394

`A055231(gcd(n+1, A069359(n+1)))`
-/

namespace A329376.P6697040112176812394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (Int.gcd (n + 1 : ℤ) (A069359 (n + 1)))

end

end A329376.P6697040112176812394

namespace A329376

/-- `A055231(gcd(n+1, A069359(n+1)))` -/
def P6697040112176812394.Spec : Prop :=
  ∀ n, P6697040112176812394.a n = A329376 (n + 1)

end A329376

/-! ## A329376.P14885393827533909692

`gcd(A008833(n+1), A360541(n+1))`
-/

namespace A329376.P14885393827533909692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008833 (n + 1)) (A360541 (n + 1))

end

end A329376.P14885393827533909692

namespace A329376

/-- `gcd(A008833(n+1), A360541(n+1))` -/
def P14885393827533909692.Spec : Prop :=
  ∀ n, (P14885393827533909692.a n : ℤ) = A329376 (n + 1)

end A329376

/-! ## A329376.P15315639946828072060

`gcd(A010848(n+1), A360539(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A329376

/-- `gcd(A010848(n+1), A360539(n+1))` -/
def P15315639946828072060.Spec : Prop :=
  ∀ n, (P15315639946828072060.a n : ℤ) = A329376 (n + 1)

theorem P15315639946828072060.correct : P15315639946828072060.Spec := by
  intro n
  simp only [A329376, Nat.add_sub_cancel]

end A329376

/-! ## A329376.P13982861285187936958

`A055231(gcd(∑{p}[n+1, (n+1)/#], A085731(n+1)))`
-/

namespace A329376.P13982861285187936958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (Int.gcd (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) (A085731 (n + 1)))

end

end A329376.P13982861285187936958

namespace A329376

/-- `A055231(gcd(∑{p}[n+1, (n+1)/#], A085731(n+1)))` -/
def P13982861285187936958.Spec : Prop :=
  ∀ n, P13982861285187936958.a n = A329376 (n + 1)

end A329376

/-!
# A329377: Number of iterations done when n is divided by its divisors starting from the smallest one in increasing order until one no longer gets an integer, or until divisors are exhausted.

The programs for A329377, there is no canonical definition to state claims against.
-/

/-! ## A329377.P946895895861783621

`A323302(A321724(2*(n+1)))+∑{e}[n+1, #-val(#!, 2)]`
-/

namespace A329377.P946895895861783621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323302 (A321724 (2 * (n + 1))).toNat + ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))

end

end A329377.P946895895861783621

/-! ## A329377.P3588223256453662299

`A000267(gcd(A056924(n+1), A345648(n)))`
-/

namespace A329377.P3588223256453662299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (Int.gcd (A056924 (n + 1)) (A345648 n))

end

end A329377.P3588223256453662299

/-! ## A329377.P63216461994732188

`A070939(gcd(A000005(n+1), A051223(n+1)))`
-/

namespace A329377.P63216461994732188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.gcd (A000005 (n + 1)) (A051223 (n + 1)))

end

end A329377.P63216461994732188

/-! ## A329377.P188867897415874698

`∑{e}[A078854(n+5)*A373188(n+1), A000196(#)]`
-/

namespace A329377.P188867897415874698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078854 (n + 5) * A373188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000196 (Nat.factorization (f1 n).natAbs p)

end

end A329377.P188867897415874698

/-! ## A329377.P9931258783237847733

`A204259(A278240(n+1))`
-/

namespace A329377.P9931258783237847733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204259 (A278240 (n + 1)).toNat

end

end A329377.P9931258783237847733

/-!
# A329378: Least common multiple of exponents of prime factors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

The programs for A329378, there is no canonical definition to state claims against.
-/

/-! ## A329378.P18226799587835022428

`A072411(A329600(n+1))`
-/

namespace A329378.P18226799587835022428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A329600 (n + 1)).toNat

end

end A329378.P18226799587835022428

/-! ## A329378.P10020323348672722876

`A290103(A329607(n+1))`
-/

namespace A329378.P10020323348672722876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A329607 (n + 1)).toNat

end

end A329378.P10020323348672722876

/-! ## A329378.P12530637914291516072

`A316431(2*A329607(n+1))`
-/

namespace A329378.P12530637914291516072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A329607 (n + 1)).toNat

end

end A329378.P12530637914291516072

/-! ## A329378.P9994421414579754366

`A316431(2*A322865(n+1))`
-/

namespace A329378.P9994421414579754366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A322865 (n + 1)).toNat

end

end A329378.P9994421414579754366

/-! ## A329378.P15295061276768406905

`A316431(lcm(2, A322865(n+1)))`
-/

namespace A329378.P15295061276768406905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (Int.lcm 2 (A322865 (n + 1)))

end

end A329378.P15295061276768406905

/-! ## A329378.P1736813840151442062

`A290103(A322865(n+1))`
-/

namespace A329378.P1736813840151442062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A322865 (n + 1)).toNat

end

end A329378.P1736813840151442062

/-! ## A329378.P16767507192584997329

`A116417(A334032(n+1))`
-/

namespace A329378.P16767507192584997329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A334032 (n + 1)).toNat

end

end A329378.P16767507192584997329

/-! ## A329378.P17635364321903680455

`A290103(∏{p}[A122111(n+1), #])`
-/

namespace A329378.P17635364321903680455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A329378.P17635364321903680455

/-!
# A329379: a(n) = n/A093411(n), where A093411(n) is obtained by repeatedly dividing n by the largest factorial that divides it until an odd number is reached.

The programs for A329379, there is no canonical definition to state claims against.
-/

/-! ## A329379.P2148498691513428294

`(n+1)/A093411(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329379.P2148498691513428294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A093411 (n + 1) : ℚ)

end

end A329379.P2148498691513428294

/-! ## A329379.P18040557735286948951

`A065190(ceil(ratio[A093411(n+1)]))`
-/

namespace A329379.P18040557735286948951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A329379.P18040557735286948951

/-! ## A329379.P209961254332907766

`ceil(ratio[A093411(n+1)])-A000035(n)`
-/

namespace A329379.P209961254332907766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ - A000035 n

end

end A329379.P209961254332907766

/-! ## A329379.P632069130932556582

`gcd(A002817(A028616(n)), A340346(n+1))`
-/

namespace A329379.P632069130932556582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002817 (A028616 n).toNat) (A340346 (n + 1))

end

end A329379.P632069130932556582

/-! ## A329379.P3700983285303707177

`gcd(A213384(n²+n), A328479(n+1))`
-/

namespace A329379.P3700983285303707177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213384 (n ^ 2 + n)) (A328479 (n + 1))

end

end A329379.P3700983285303707177

/-! ## A329379.P17626347257153400781

`gcd(record[A028640(n)], A328479(n+1))`
-/

namespace A329379.P17626347257153400781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A328479 (n + 1))

end

end A329379.P17626347257153400781

/-! ## A329379.P10048096350616010969

`gcd(n+1, A166515(A174354(n)))`
-/

namespace A329379.P10048096350616010969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A166515 (A174354 n).toNat)

end

end A329379.P10048096350616010969

/-! ## A329379.P17072378372525845255

`and(A126420(A001844(n)), A328479(n+1))`
-/

namespace A329379.P17072378372525845255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126420 (A001844 n).toNat) (A328479 (n + 1))

end

end A329379.P17072378372525845255

/-! ## A329379.P14631559064035586361

`∏{p}[n+1, #^val(n+1, #!)]`
-/

namespace A329379.P14631559064035586361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (Nat.factorial p)

end

end A329379.P14631559064035586361

/-!
# A329380: a(n) = Product_{d|n} A276086(d)^A001221(n/d).

The programs for A329380, there is no canonical definition to state claims against.
-/

/-! ## A329380.P6580408181292269747

`∏{d}[n+1, A329350(#)]`
-/

namespace A329380.P6580408181292269747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A329350 d

end

end A329380.P6580408181292269747

/-!
# A329382: Product of exponents of prime factors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

The programs for A329382, the canonical program `A329382.P4316959803292528237` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329382 has offset 1).

The definition of A329382 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A108951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329382.P846917175883813515

`A329605(A052126(n+1))`
-/

namespace A329382.P846917175883813515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329605 (A052126 (n + 1)).toNat

end

end A329382.P846917175883813515

namespace A329382

/-- `A329605(A052126(n+1))` -/
def P846917175883813515.Spec : Prop :=
  ∀ n, P846917175883813515.a n = A329382 (n + 1)

end A329382

/-! ## A329382.P11707037497449157711

`A000005(A331188(n+1))`
-/

namespace A329382.P11707037497449157711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A331188 (n + 1)).toNat

end

end A329382.P11707037497449157711

namespace A329382

/-- `A000005(A331188(n+1))` -/
def P11707037497449157711.Spec : Prop :=
  ∀ n, P11707037497449157711.a n = A329382 (n + 1)

end A329382

/-! ## A329382.P16761108598808449154

`A003963(A122111(n+1))`
-/

namespace A329382.P16761108598808449154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A122111 (n + 1)).toNat

end

end A329382.P16761108598808449154

namespace A329382

/-- `A003963(A122111(n+1))` -/
def P16761108598808449154.Spec : Prop :=
  ∀ n, P16761108598808449154.a n = A329382 (n + 1)

end A329382

/-! ## A329382.P4316959803292528237

`A005361(A108951(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A329382

/-- `A005361(A108951(n+1))` -/
def P4316959803292528237.Spec : Prop :=
  ∀ n, P4316959803292528237.a n = A329382 (n + 1)

theorem P4316959803292528237.correct : P4316959803292528237.Spec := by
  intro n
  simp only [A329382, Nat.add_sub_cancel]

end A329382

/-! ## A329382.P14339615236905745554

`A001222(n+1)*a(A064989(n+1)-1)` with `a(0)=1`
-/

namespace A329382.P14339615236905745554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001222 (n + 1) * a (A064989 (n + 1) - 1).toNat

end

end A329382.P14339615236905745554

namespace A329382

/-- `A001222(n+1)*a(A064989(n+1)-1)` -/
def P14339615236905745554.Spec : Prop :=
  ∀ n, P14339615236905745554.a n = A329382 (n + 1)

end A329382

/-! ## A329382.P9205545844894456586

`A329605((n+1)/A006530(n+1))`
-/

namespace A329382.P9205545844894456586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329605 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A329382.P9205545844894456586

namespace A329382

/-- `A329605((n+1)/A006530(n+1))` -/
def P9205545844894456586.Spec : Prop :=
  ∀ n, P9205545844894456586.a n = A329382 (n + 1)

end A329382

/-! ## A329382.P14891074011141082321

`A003963(A322865(n+1))`
-/

namespace A329382.P14891074011141082321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A322865 (n + 1)).toNat

end

end A329382.P14891074011141082321

namespace A329382

/-- `A003963(A322865(n+1))` -/
def P14891074011141082321.Spec : Prop :=
  ∀ n, P14891074011141082321.a n = A329382 (n + 1)

end A329382

/-! ## A329382.P13474718553956986594

`A000005(A329602(A342768(n+1)))`
-/

namespace A329382.P13474718553956986594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A329602 (A342768 (n + 1)).toNat).toNat

end

end A329382.P13474718553956986594

namespace A329382

/-- `A000005(A329602(A342768(n+1)))` -/
def P13474718553956986594.Spec : Prop :=
  ∀ n, P13474718553956986594.a n = A329382 (n + 1)

end A329382

/-! ## A329382.P16542497314551681683

`∑{d}[A331188(n+1), A000034(2*#)]`
-/

namespace A329382.P16542497314551681683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000034 (2 * d)

end

end A329382.P16542497314551681683

namespace A329382

/-- `∑{d}[A331188(n+1), A000034(2*#)]` -/
def P16542497314551681683.Spec : Prop :=
  ∀ n, P16542497314551681683.a n = A329382 (n + 1)

end A329382

/-! ## A329382.P6906998117069508857

`A243504(A241916(n+1))`
-/

namespace A329382.P6906998117069508857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243504 (A241916 (n + 1)).toNat

end

end A329382.P6906998117069508857

namespace A329382

/-- `A243504(A241916(n+1))` -/
def P6906998117069508857.Spec : Prop :=
  ∀ n, P6906998117069508857.a n = A329382 (n + 1)

end A329382

/-!
# A329383: Positive integers that have more Brazilian representations than any smaller positive integer.

The programs for A329383, there is no canonical definition to state claims against.
-/

/-! ## A329383.P16035224599500011634

`A066044(ceil(n/sin(8))+1)`
-/

namespace A329383.P16035224599500011634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066044 (⌈(n : ℝ) / Real.sin (8 : ℝ)⌉ + 1).toNat

end

end A329383.P16035224599500011634

/-! ## A329383.P18328456773365868988

`gcd(floor(acot(n)), A066044(n+2))`
-/

namespace A329383.P18328456773365868988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A066044 (n + 2))

end

end A329383.P18328456773365868988

/-! ## A329383.P3056127229523512564

`A066044(ceil(sqrt(∑[2*n]))+1)`
-/

namespace A329383.P3056127229523512564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066044 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 1).toNat

end

end A329383.P3056127229523512564

/-! ## A329383.P7766403028530472193

`record[A066044(A052938(n))]`
-/

namespace A329383.P7766403028530472193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066044 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329383.P7766403028530472193

/-! ## A329383.P2427346966870449494

`A066044(n+2)%A002182(3*n+2)`
-/

namespace A329383.P2427346966870449494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066044 (n + 2)) (A002182 (3 * n + 2))

end

end A329383.P2427346966870449494

/-! ## A329383.P11285486223422134313

`A066044(n+2)+A284758(n)-A066460(n+1)`
-/

namespace A329383.P11285486223422134313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066044 (n + 2) + (A284758 n - A066460 (n + 1))

end

end A329383.P11285486223422134313

/-! ## A329383.P5854002671980072684

`A066044(n+2)/(A023631(2*(n+1))-A023631(2*n+1))`
-/

namespace A329383.P5854002671980072684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066044 (n + 2) : ℚ) / (A023631 (2 * (n + 1)) - A023631 (2 * n + 1) : ℚ)

end

end A329383.P5854002671980072684

/-!
# A329384: G.f.: (1 + x) * (1 + x^2) * (1 + x^3) * Product_{k>=1} (1 + x^k).

The programs for A329384, there is no canonical definition to state claims against.
-/

/-! ## A329384.P16637857406030131582

`A003056(A249624(n+1)+A000837(2*(n+1)))`
-/

namespace A329384.P16637857406030131582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A249624 (n + 1) + A000837 (2 * (n + 1))).toNat

end

end A329384.P16637857406030131582

/-! ## A329384.P3593899708237830634

`A003003(A000041(n+3))-2`
-/

namespace A329384.P3593899708237830634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A000041 (n + 3)).toNat - 2

end

end A329384.P3593899708237830634

/-! ## A329384.P15618657141881353914

`A277576(n+1)+A085982(A051797(n))`
-/

namespace A329384.P15618657141881353914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277576 (n + 1) + A085982 (A051797 n).toNat

end

end A329384.P15618657141881353914

/-!
# A329385: Dirichlet g.f.: 1 / (2 - Product_{k>=1} zeta(k*s)).

The programs for A329385, there is no canonical definition to state claims against.
-/

/-! ## A329385.P8774902002098274710

`A240020(A050340(n+1))`
-/

namespace A329385.P8774902002098274710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240020 (A050340 (n + 1)).toNat

end

end A329385.P8774902002098274710

/-! ## A329385.P15096957578708428043

`A213718(A050363(n+1)²)`
-/

namespace A329385.P15096957578708428043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213718 (A050363 (n + 1) ^ 2).toNat

end

end A329385.P15096957578708428043

/-! ## A329385.P6837628891388710629

`A213718(A308063(n+1)²)`
-/

namespace A329385.P6837628891388710629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213718 (A308063 (n + 1) ^ 2).toNat

end

end A329385.P6837628891388710629

/-! ## A329385.P12473904237019719427

`A062575(A005232(A066637(n+1)))`
-/

namespace A329385.P12473904237019719427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062575 (A005232 (A066637 (n + 1)).toNat).toNat

end

end A329385.P12473904237019719427

/-! ## A329385.P6310225744827964097

`A000194(A155171(A050338(n+1)))`
-/

namespace A329385.P6310225744827964097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A155171 (A050338 (n + 1)).toNat).toNat

end

end A329385.P6310225744827964097

/-!
# A329387: Solution sequence (a(n)) of the complementary equation a(n) = 4 b(n+1) - b(n), with b(0) = 1.

The programs for A329387, there is no canonical definition to state claims against.
-/

/-! ## A329387.P5119398196357780449

`A117743(n+1)-A275849(A185542(n+1))`
-/

namespace A329387.P5119398196357780449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117743 (n + 1) - A275849 (A185542 (n + 1)).toNat

end

end A329387.P5119398196357780449

/-! ## A329387.P10033706148081171602

`A097338(2*(n+1))-A323439(A011971(2*n+1))`
-/

namespace A329387.P10033706148081171602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (2 * (n + 1)) - A323439 (A011971 (2 * n + 1)).toNat

end

end A329387.P10033706148081171602

/-! ## A329387.P7881061676529291711

`A008521(3*n+4)-A014577(A306486(2*n+3))`
-/

namespace A329387.P7881061676529291711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008521 (3 * n + 4) - A014577 (A306486 (2 * n + 3)).toNat

end

end A329387.P7881061676529291711

/-!
# A329388: Solution sequence (a(n)) of the complementary equation a(n) = 5 b(n+1) - b(n), with b(0) = 1.

The programs for A329388, there is no canonical definition to state claims against.
-/

/-! ## A329388.P3455954318795426838

`A360013(n+3)+A288638(A046263(n))`
-/

namespace A329388.P3455954318795426838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360013 (n + 3) + A288638 (A046263 n).toNat

end

end A329388.P3455954318795426838

/-! ## A329388.P8092118304289851143

`A356657(2*n+1)+A000001(A127864(n))`
-/

namespace A329388.P8092118304289851143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356657 (2 * n + 1) + A000001 (A127864 n).toNat

end

end A329388.P8092118304289851143

/-! ## A329388.P12724010496202904327

`A356657(2*n+1)+A305936(A292037(n))`
-/

namespace A329388.P12724010496202904327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356657 (2 * n + 1) + A305936 (A292037 n).toNat

end

end A329388.P12724010496202904327

/-!
# A329389: Solution sequence (a(n)) of the complementary equation a(n) = 6 b(n+1) - b(n), with b(0) = 1.

The programs for A329389, there is no canonical definition to state claims against.
-/

/-! ## A329389.P1000285643799520579

`∑[gcd(7, A121098(n))+4]`
-/

namespace A329389.P1000285643799520579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A121098 n) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329389.P1000285643799520579

/-! ## A329389.P4532345300386971777

`record[A208644(6*n+11)]-n`
-/

namespace A329389.P4532345300386971777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208644 (6 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A329389.P4532345300386971777

/-! ## A329389.P3633998978980683640

`∑[A108294(A327510(n))]`
-/

namespace A329389.P3633998978980683640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108294 (A327510 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329389.P3633998978980683640

/-! ## A329389.P1138153518964996004

`∑[A108294(A145459(n)²)]`
-/

namespace A329389.P1138153518964996004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108294 (A145459 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329389.P1138153518964996004

/-! ## A329389.P4724862482332070163

`∑[A287996(A324435(n)+2)]`
-/

namespace A329389.P4724862482332070163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287996 (A324435 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329389.P4724862482332070163

/-!
# A329390: Solution sequence (a(n)) of the complementary equation a(n) = 6 b(n+1) - 2 b(n), with b(0) = 1.

The programs for A329390, there is no canonical definition to state claims against.
-/

/-! ## A329390.P6067999079341597267

`2*A329391(n)`
-/

namespace A329390.P6067999079341597267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329391 n

end

end A329390.P6067999079341597267

/-! ## A329390.P3718844888854905607

`A004277(A329391(n))`
-/

namespace A329390.P3718844888854905607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A329391 n).toNat

end

end A329390.P3718844888854905607

/-! ## A329390.P5622981822253599575

`A004275(A329391(n)+1)`
-/

namespace A329390.P5622981822253599575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A329391 n + 1).toNat

end

end A329390.P5622981822253599575

/-! ## A329390.P769086508432112526

`A051755(A329391(n)+1)`
-/

namespace A329390.P769086508432112526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A329391 n + 1).toNat

end

end A329390.P769086508432112526

/-! ## A329390.P3365454611120726308

`A103517(A329391(n)-1)`
-/

namespace A329390.P3365454611120726308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A329391 n - 1).toNat

end

end A329390.P3365454611120726308

/-! ## A329390.P1983036762725631019

`A005408(A329391(n)-1)+1`
-/

namespace A329390.P1983036762725631019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A329391 n - 1).toNat + 1

end

end A329390.P1983036762725631019

/-! ## A329390.P2782545995378614688

`A004278(A329391(n)+2)`
-/

namespace A329390.P2782545995378614688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A329391 n + 2).toNat

end

end A329390.P2782545995378614688

/-! ## A329390.P12283627682544462652

`A329391(A003056(∑[n]))+A329391(n)`
-/

namespace A329390.P12283627682544462652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329391 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A329391 n

end

end A329390.P12283627682544462652

/-!
# A329391: a(n) = (1/2)*A329390(n).

The programs for A329391, there is no canonical definition to state claims against.
-/

/-! ## A329391.P568197798911158188

`1/2*A329390(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329391.P568197798911158188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A329390 n : ℚ)

end

end A329391.P568197798911158188

/-! ## A329391.P4901860013805993369

`A329390(n)/2`
-/

namespace A329391.P4901860013805993369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329390 n : ℚ) / 2

end

end A329391.P4901860013805993369

/-! ## A329391.P13640928774562935683

`A032742(A329390(n))`
-/

namespace A329391.P13640928774562935683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A329390 n).toNat

end

end A329391.P13640928774562935683

/-! ## A329391.P12014611219621911640

`A000463(A329390(n)-1)`
-/

namespace A329391.P12014611219621911640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A329390 n - 1).toNat

end

end A329391.P12014611219621911640

/-! ## A329391.P7453630743778077320

`A001057(A329390(n)-1)`
-/

namespace A329391.P7453630743778077320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A329390 n - 1).toNat

end

end A329391.P7453630743778077320

/-! ## A329391.P4111773069399227700

`A028242(A329390(n)-2)`
-/

namespace A329391.P4111773069399227700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A329390 n - 2).toNat

end

end A329391.P4111773069399227700

/-! ## A329391.P11463814490959169560

`A004524(A329390(n)+1)`
-/

namespace A329391.P11463814490959169560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A329390 n + 1).toNat

end

end A329391.P11463814490959169560

/-! ## A329391.P16542733776226882211

`A004526(A329390(n)+1)`
-/

namespace A329391.P16542733776226882211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A329390 n + 1).toNat

end

end A329391.P16542733776226882211

/-! ## A329391.P4100805652073749735

`A057979(A329390(n)+1)`
-/

namespace A329391.P4100805652073749735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A329390 n + 1).toNat

end

end A329391.P4100805652073749735

/-! ## A329391.P8139215093039093115

`A002265(2*A329390(n))`
-/

namespace A329391.P8139215093039093115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A329390 n).toNat

end

end A329391.P8139215093039093115

/-!
# A329393: Number of odd divisors minus number of even divisors of the n-th composite.

The programs for A329393, the canonical program `A329393.P14477851111522146474` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329393 has offset 1).

The definition of A329393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329393.P14477851111522146474

`∑{d}[A002808(n+1), -(-1)^#]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A329393

/-- `∑{d}[A002808(n+1), -(-1)^#]` -/
def P14477851111522146474.Spec : Prop :=
  ∀ n, P14477851111522146474.a n = A329393 (n + 1)

theorem P14477851111522146474.correct : P14477851111522146474.Spec := by
  intro n
  simp only [A329393, Nat.add_sub_cancel]

end A329393

/-! ## A329393.P17666991340828808105

`∑{d}[A018252(n+2), -(-1)^#]`
-/

namespace A329393.P17666991340828808105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (-((-1) ^ d))

end

end A329393.P17666991340828808105

namespace A329393

/-- `∑{d}[A018252(n+2), -(-1)^#]` -/
def P17666991340828808105.Spec : Prop :=
  ∀ n, P17666991340828808105.a n = A329393 (n + 1)

end A329393

/-! ## A329393.P7512111873432353872

`∑{d}[lt[2, A304442(n)], #-xor(1, #)]`
-/

namespace A329393.P7512111873432353872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - (Nat.xor 1 d : ℤ))

end

end A329393.P7512111873432353872

namespace A329393

/-- `∑{d}[lt[2, A304442(n)], #-xor(1, #)]` -/
def P7512111873432353872.Spec : Prop :=
  ∀ n, P7512111873432353872.a n = A329393 (n + 1)

end A329393

/-! ## A329393.P10149790759420491698

`∑{d}[lt[1, A001055(n+1)]+1, -(-1)^#]`
-/

namespace A329393.P10149790759420491698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-((-1) ^ d))

end

end A329393.P10149790759420491698

namespace A329393

/-- `∑{d}[lt[1, A001055(n+1)]+1, -(-1)^#]` -/
def P10149790759420491698.Spec : Prop :=
  ∀ n, P10149790759420491698.a n = A329393 (n + 1)

end A329393

/-! ## A329393.P1378796351179661323

`∑{d}[lt[1, A001222(n+2)]+2, -(-1)^#]`
-/

namespace A329393.P1378796351179661323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-((-1) ^ d))

end

end A329393.P1378796351179661323

namespace A329393

/-- `∑{d}[lt[1, A001222(n+2)]+2, -(-1)^#]` -/
def P1378796351179661323.Spec : Prop :=
  ∀ n, P1378796351179661323.a n = A329393 (n + 1)

end A329393

/-! ## A329393.P5797609862454751353

`∑{d}[lt[A000010(n+1), n]+1, -(-1)^#]`
-/

namespace A329393.P5797609862454751353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-((-1) ^ d))

end

end A329393.P5797609862454751353

namespace A329393

/-- `∑{d}[lt[A000010(n+1), n]+1, -(-1)^#]` -/
def P5797609862454751353.Spec : Prop :=
  ∀ n, P5797609862454751353.a n = A329393 (n + 1)

end A329393

/-! ## A329393.P16785273363743536373

`A048272(Δ[A053767(n)])`
-/

namespace A329393.P16785273363743536373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (f1 (n + 1) - f1 n).toNat

end

end A329393.P16785273363743536373

namespace A329393

/-- `A048272(Δ[A053767(n)])` -/
def P16785273363743536373.Spec : Prop :=
  ∀ n, P16785273363743536373.a n = A329393 (n + 1)

end A329393

/-! ## A329393.P17584543042724750120

`A048272(A002808(n+1))`
-/

namespace A329393.P17584543042724750120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A002808 (n + 1)).toNat

end

end A329393.P17584543042724750120

namespace A329393

/-- `A048272(A002808(n+1))` -/
def P17584543042724750120.Spec : Prop :=
  ∀ n, P17584543042724750120.a n = A329393 (n + 1)

end A329393

/-! ## A329393.P17753392579600882761

`A048272(A018252(n+2))`
-/

namespace A329393.P17753392579600882761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A018252 (n + 2)).toNat

end

end A329393.P17753392579600882761

namespace A329393

/-- `A048272(A018252(n+2))` -/
def P17753392579600882761.Spec : Prop :=
  ∀ n, P17753392579600882761.a n = A329393 (n + 1)

end A329393

/-! ## A329393.P16558013995361031692

`A048272(comp[A020513(n)])`
-/

namespace A329393.P16558013995361031692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A329393.P16558013995361031692

namespace A329393

/-- `A048272(comp[A020513(n)])` -/
def P16558013995361031692.Spec : Prop :=
  ∀ n, P16558013995361031692.a n = A329393 (n + 1)

end A329393

/-! ## A329393.P16530423440267169244

`A128257(A161777(n+2))`
-/

namespace A329393.P16530423440267169244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128257 (A161777 (n + 2)).toNat

end

end A329393.P16530423440267169244

namespace A329393

/-- `A128257(A161777(n+2))` -/
def P16530423440267169244.Spec : Prop :=
  ∀ n, P16530423440267169244.a n = A329393 (n + 1)

end A329393

/-!
# A329394: Number of compositions of n whose Lyndon and co-Lyndon factorizations both have the same length.

The programs for A329394, there is no canonical definition to state claims against.
-/

/-! ## A329394.P15789144404816070009

`A057784(n+1)-A107846(A041981(n))`
-/

namespace A329394.P15789144404816070009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057784 (n + 1) - A107846 (A041981 n).toNat

end

end A329394.P15789144404816070009

/-! ## A329394.P3887320572325225988

`A057784(n+1)-A107846(A110391(n))`
-/

namespace A329394.P3887320572325225988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057784 (n + 1) - A107846 (A110391 n).toNat

end

end A329394.P3887320572325225988

/-! ## A329394.P7955525575328638967

`xor(A057784(n+1), A328712(A116410(n)))`
-/

namespace A329394.P7955525575328638967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057784 (n + 1)) (A328712 (A116410 n).toNat)

end

end A329394.P7955525575328638967

/-! ## A329394.P15947124452968443794

`A057784(n+1)-A295875(A239465(n+2))`
-/

namespace A329394.P15947124452968443794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057784 (n + 1) - A295875 (A239465 (n + 2)).toNat

end

end A329394.P15947124452968443794

/-! ## A329394.P676357588682606760

`A089657(A383800(n+1))`
-/

namespace A329394.P676357588682606760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089657 (A383800 (n + 1)).toNat

end

end A329394.P676357588682606760

/-!
# A329395: Numbers whose binary expansion without the most significant (first) digit has Lyndon and co-Lyndon factorizations of equal lengths.

The programs for A329395, there is no canonical definition to state claims against.
-/

/-! ## A329395.P16646662731305025614

`val(A000079(A006995(n+3)), 4)`
-/

namespace A329395.P16646662731305025614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (A006995 (n + 3)).toNat).toNat 4

end

end A329395.P16646662731305025614

/-! ## A329395.P12999395127625153447

`A044051(n+2)-A043545(A298911(n+1))`
-/

namespace A329395.P12999395127625153447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044051 (n + 2) - A043545 (A298911 (n + 1)).toNat

end

end A329395.P12999395127625153447

/-! ## A329395.P4510000459427729735

`A044051(n+2)-A178225(A141708(n+2))`
-/

namespace A329395.P4510000459427729735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044051 (n + 2) - A178225 (A141708 (n + 2)).toNat

end

end A329395.P4510000459427729735

/-! ## A329395.P6987911966372792959

`A044051(n+2)-A000035(A165243(n+3))`
-/

namespace A329395.P6987911966372792959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044051 (n + 2) - A000035 (A165243 (n + 3)).toNat

end

end A329395.P6987911966372792959

/-! ## A329395.P17457504687257823214

`A004524(A006995(n+3))%A088173(n+1)`
-/

namespace A329395.P17457504687257823214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004524 (A006995 (n + 3)).toNat) (A088173 (n + 1))

end

end A329395.P17457504687257823214

/-!
# A329396: Numbers k such that the co-Lyndon factorization of the binary expansion of k is uniform.

The programs for A329396, there is no canonical definition to state claims against.
-/

/-! ## A329396.P2019367294804894651

`A329399(∑[A181340(n+2)!])`
-/

namespace A329396.P2019367294804894651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A181340 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329399 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329396.P2019367294804894651

/-! ## A329396.P11599173308907683497

`A329399(A352745(Δ[n²]))`
-/

namespace A329396.P11599173308907683497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329399 (A352745 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A329396.P11599173308907683497

/-! ## A329396.P7153888269484765131

`A329399(n+1)%A112846(n+1)`
-/

namespace A329396.P7153888269484765131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329399 (n + 1)) (A112846 (n + 1))

end

end A329396.P7153888269484765131

/-! ## A329396.P12753136906548137901

`A329399((n+1)^A228570(∏{e}[n+1, #+1]))`
-/

namespace A329396.P12753136906548137901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329399 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A228570 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℤ))).toNat

end

end A329396.P12753136906548137901

/-! ## A329396.P3711696929739155009

`A329399(n+1)+A006983(A374985(n))`
-/

namespace A329396.P3711696929739155009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329399 (n + 1) + A006983 (A374985 n).toNat

end

end A329396.P3711696929739155009

/-!
# A329397: Number of compositions of n whose Lyndon factorization is uniform.

The programs for A329397, there is no canonical definition to state claims against.
-/

/-! ## A329397.P16023958559552471935

`∑[A261104(A329672(n))]`
-/

namespace A329397.P16023958559552471935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A329672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329397.P16023958559552471935

/-! ## A329397.P19709244451209467

`∑[A002024(A079225(n))]`
-/

namespace A329397.P19709244451209467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A079225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329397.P19709244451209467

/-! ## A329397.P12141145262189823009

`∑[A329698(A062399(n))]`
-/

namespace A329397.P12141145262189823009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329698 (A062399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329397.P12141145262189823009

/-! ## A329397.P8320905127556120279

`∑[A329698(A120126(n))]`
-/

namespace A329397.P8320905127556120279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329698 (A120126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329397.P8320905127556120279

/-! ## A329397.P14918635392935849967

`∑[A056622(A329698(n)²)]`
-/

namespace A329397.P14918635392935849967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A329698 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329397.P14918635392935849967

/-!
# A329398: Number of compositions of n with uniform Lyndon factorization and uniform co-Lyndon factorization.

The programs for A329398, there is no canonical definition to state claims against.
-/

/-! ## A329398.P15457445119536934952

`2^n-A332834(n+1)`
-/

namespace A329398.P15457445119536934952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A332834 (n + 1)

end

end A329398.P15457445119536934952

/-! ## A329398.P9309840510801610450

`Δ[2^n-∑[A332834(n)]]`
-/

namespace A329398.P9309840510801610450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332834 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329398.P9309840510801610450

/-! ## A329398.P5680992376790714148

`A139582(n+1)-∏{e}[n+1, #+1]`
-/

namespace A329398.P5680992376790714148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A329398.P5680992376790714148

/-! ## A329398.P16949607223726215435

`∏{e}[n+1, #+1]+2*A144300(n+1)`
-/

namespace A329398.P16949607223726215435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + 2 * A144300 (n + 1)

end

end A329398.P16949607223726215435

/-! ## A329398.P1351269440802985151

`2*A000041(n+1)-∏{e}[n+1, #+1]`
-/

namespace A329398.P1351269440802985151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000041 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A329398.P1351269440802985151

