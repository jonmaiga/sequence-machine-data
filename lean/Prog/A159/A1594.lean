import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C035
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
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
import Seq.Opaque.C007
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A159455: These are the number of pentagons related to Eberhard's theorem.

The programs for A159455, there is no canonical definition to state claims against.
-/

/-! ## A159455.P11900691532342989870

`abs(n-1-a(and(9, A096125(n+1)-1)))` with `a(0)=2, a(1)=3`
-/

namespace A159455.P11900691532342989870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  |(n : ℤ) - 1 - a (Int.land 9 (A096125 (n + 1) - 1)).toNat|

end

end A159455.P11900691532342989870

/-! ## A159455.P15723309083894899259

`A125999(n)+A049581(∑[n]+2)`
-/

namespace A159455.P15723309083894899259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125999 n + A049581 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A159455.P15723309083894899259

/-!
# A159456: Discriminant of the 47 imaginary, bicyclic, biquadratic fields with class number 1.

The programs for A159456, there is no canonical definition to state claims against.
-/

/-! ## A159456.P6819028089806624071

`A005245(A052955(n+4)²)²`
-/

namespace A159456.P6819028089806624071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (A052955 (n + 4) ^ 2).toNat ^ 2

end

end A159456.P6819028089806624071

/-! ## A159456.P16256911768413446721

`(A050275(n+2)%A050279(2*n+1))²`
-/

namespace A159456.P16256911768413446721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050275 (n + 2)) (A050279 (2 * n + 1)) ^ 2

end

end A159456.P16256911768413446721

/-!
# A159458: Numbers m such that m^2 divides A159068(m), where A159068(m) = Sum_{k=1..m} binomial(m,k) * gcd(m,k).

The programs for A159458, there is no canonical definition to state claims against.
-/

/-! ## A159458.P10295869642589176723

`A280969(A026094(n+1))`
-/

namespace A159458.P10295869642589176723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280969 (A026094 (n + 1)).toNat

end

end A159458.P10295869642589176723

/-! ## A159458.P4257031791514042399

`∩[A191893(n+1), A280969(n+1)]`
-/

namespace A159458.P4257031791514042399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159458.P4257031791514042399

/-!
# A159459: Rectangular array read by antidiagonals: a(n,m) = number of divisors of m that don't divide n.

The programs for A159459, the canonical program `A159459.P6853671538407110740` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159459 has offset 1).

The definition of A159459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159459.P6853671538407110740

`A000005(col(n)+1)-A000005(gcd(row(n)-col(n)+1, col(n)+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A159459

/-- `A000005(col(n)+1)-A000005(gcd(row(n)-col(n)+1, col(n)+1))` -/
def P6853671538407110740.Spec : Prop :=
  ∀ n, P6853671538407110740.a n = A159459 (n + 1)

theorem P6853671538407110740.correct : P6853671538407110740.Spec := by
  intro n
  simp only [A159459, Nat.add_sub_cancel]

end A159459

/-! ## A159459.P8256841740485809122

`A000005(A002260(n+1))-A077478(n+1)`
-/

namespace A159459.P8256841740485809122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (n + 1)).toNat - A077478 (n + 1)

end

end A159459.P8256841740485809122

namespace A159459

/-- `A000005(A002260(n+1))-A077478(n+1)` -/
def P8256841740485809122.Spec : Prop :=
  ∀ n, P8256841740485809122.a n = A159459 (n + 1)

end A159459

/-! ## A159459.P14902478505765914336

`A000005(A002262(n)+1)-A077478(n+1)`
-/

namespace A159459.P14902478505765914336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002262 n + 1).toNat - A077478 (n + 1)

end

end A159459.P14902478505765914336

namespace A159459

/-- `A000005(A002262(n)+1)-A077478(n+1)` -/
def P14902478505765914336.Spec : Prop :=
  ∀ n, P14902478505765914336.a n = A159459 (n + 1)

end A159459

/-! ## A159459.P5854610086291319799

`A000005(abs(A140756(n+1)))-A077478(n+1)`
-/

namespace A159459.P5854610086291319799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |A140756 (n + 1)|.toNat - A077478 (n + 1)

end

end A159459.P5854610086291319799

namespace A159459

/-- `A000005(abs(A140756(n+1)))-A077478(n+1)` -/
def P5854610086291319799.Spec : Prop :=
  ∀ n, P5854610086291319799.a n = A159459 (n + 1)

end A159459

/-! ## A159459.P18382421686368282023

`A000005(sqrt(A143844(n))+1)-A077478(n+1)`
-/

namespace A159459.P18382421686368282023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ) + 1)).toNat - A077478 (n + 1)

end

end A159459.P18382421686368282023

namespace A159459

/-- `A000005(sqrt(A143844(n))+1)-A077478(n+1)` -/
def P18382421686368282023.Spec : Prop :=
  ∀ n, P18382421686368282023.a n = A159459 (n + 1)

end A159459

/-! ## A159459.P13398196797726692132

`A000005(1-A057944(n)+n)-A077478(n+1)`
-/

namespace A159459.P13398196797726692132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (1 - A057944 n + (n : ℤ)).toNat - A077478 (n + 1)

end

end A159459.P13398196797726692132

namespace A159459

/-- `A000005(1-A057944(n)+n)-A077478(n+1)` -/
def P13398196797726692132.Spec : Prop :=
  ∀ n, P13398196797726692132.a n = A159459 (n + 1)

end A159459

/-! ## A159459.P2210903783742590994

`A000005(A132118(n+1)-n)-A077478(n+1)`
-/

namespace A159459.P2210903783742590994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A132118 (n + 1) - (n : ℤ)).toNat - A077478 (n + 1)

end

end A159459.P2210903783742590994

namespace A159459

/-- `A000005(A132118(n+1)-n)-A077478(n+1)` -/
def P2210903783742590994.Spec : Prop :=
  ∀ n, P2210903783742590994.a n = A159459 (n + 1)

end A159459

/-! ## A159459.P3486100989394903056

`A000005(∑[2-A130296(n+1)])-A077478(n+1)`
-/

namespace A159459.P3486100989394903056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A077478 (n + 1)

end

end A159459.P3486100989394903056

namespace A159459

/-- `A000005(∑[2-A130296(n+1)])-A077478(n+1)` -/
def P3486100989394903056.Spec : Prop :=
  ∀ n, P3486100989394903056.a n = A159459 (n + 1)

end A159459

/-! ## A159459.P13754133818799314253

`A000005(A000005(A059268(n)))-A077478(n+1)`
-/

namespace A159459.P13754133818799314253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A059268 n).toNat).toNat - A077478 (n + 1)

end

end A159459.P13754133818799314253

namespace A159459

/-- `A000005(A000005(A059268(n)))-A077478(n+1)` -/
def P13754133818799314253.Spec : Prop :=
  ∀ n, P13754133818799314253.a n = A159459 (n + 1)

end A159459

/-! ## A159459.P10795144816430176683

`A000005(A002260(n+1))-A000005(A003989(n+1))`
-/

namespace A159459.P10795144816430176683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (n + 1)).toNat - A000005 (A003989 (n + 1)).toNat

end

end A159459.P10795144816430176683

namespace A159459

/-- `A000005(A002260(n+1))-A000005(A003989(n+1))` -/
def P10795144816430176683.Spec : Prop :=
  ∀ n, P10795144816430176683.a n = A159459 (n + 1)

end A159459

/-! ## A159459.P10469706919301373824

`A000005(A103406(n)/A007318(n))-A077478(n+1)`
-/

namespace A159459.P10469706919301373824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A103406 n : ℚ) / (A007318 n : ℚ))).toNat - A077478 (n + 1)

end

end A159459.P10469706919301373824

namespace A159459

/-- `A000005(A103406(n)/A007318(n))-A077478(n+1)` -/
def P10469706919301373824.Spec : Prop :=
  ∀ n, P10469706919301373824.a n = A159459 (n + 1)

end A159459

/-! ## A159459.P4173909350081167226

`A000005(A128710(n)/A007318(n)-1)-A077478(n+1)`
-/

namespace A159459.P4173909350081167226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A128710 n : ℚ) / (A007318 n : ℚ) - 1)).toNat - A077478 (n + 1)

end

end A159459.P4173909350081167226

namespace A159459

/-- `A000005(A128710(n)/A007318(n)-1)-A077478(n+1)` -/
def P4173909350081167226.Spec : Prop :=
  ∀ n, P4173909350081167226.a n = A159459 (n + 1)

end A159459

/-! ## A159459.P325578330821802964

`A277013(A228035(n))+A000038(A341073(2*n+1))`
-/

namespace A159459.P325578330821802964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (A228035 n).toNat + A000038 (A341073 (2 * n + 1 + 11)).toNat

end

end A159459.P325578330821802964

namespace A159459

/-- `A277013(A228035(n))+A000038(A341073(2*n+1))` -/
def P325578330821802964.Spec : Prop :=
  ∀ n, P325578330821802964.a n = A159459 (n + 1)

end A159459

/-! ## A159459.P9927188035171056243

`A277013(A228035(n))+A000038(A051022(n+1))`
-/

namespace A159459.P9927188035171056243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (A228035 n).toNat + A000038 (A051022 (n + 1)).toNat

end

end A159459.P9927188035171056243

namespace A159459

/-- `A277013(A228035(n))+A000038(A051022(n+1))` -/
def P9927188035171056243.Spec : Prop :=
  ∀ n, P9927188035171056243.a n = A159459 (n + 1)

end A159459

/-!
# A159461: Numbers of previous and following composites of n-th prime.

The programs for A159461, the canonical program `A159461.P8896828948141385793` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159461 has offset 1).

The definition of A159461 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A159461.P6373088971559025394

`A008578(n+3)-A008578(n+1)-2`
-/

namespace A159461.P6373088971559025394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 3) - A008578 (n + 1) - 2

end

end A159461.P6373088971559025394

namespace A159461

/-- `A008578(n+3)-A008578(n+1)-2` -/
def P6373088971559025394.Spec : Prop :=
  ∀ n, P6373088971559025394.a n = A159461 (n + 1)

theorem P6373088971559025394.correct : P6373088971559025394.Spec := by
  intro n
  simp only [A159461, Nat.add_sub_cancel, A159461.P6373088971559025394.a, A159461.P8896828948141385793.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159461

/-! ## A159461.P8896828948141385793

`A158611(n+4)-A158611(n+2)-2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A159461

/-- `A158611(n+4)-A158611(n+2)-2` -/
def P8896828948141385793.Spec : Prop :=
  ∀ n, P8896828948141385793.a n = A159461 (n + 1)

theorem P8896828948141385793.correct : P8896828948141385793.Spec := by
  intro n
  simp only [A159461, Nat.add_sub_cancel]

end A159461

/-! ## A159461.P11283599979479054948

`A075527(n)-2`
-/

namespace A159461.P11283599979479054948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n - 2

end

end A159461.P11283599979479054948

namespace A159461

/-- `A075527(n)-2` -/
def P11283599979479054948.Spec : Prop :=
  ∀ n, P11283599979479054948.a n = A159461 (n + 1)

theorem P11283599979479054948.correct : P11283599979479054948.Spec := by
  intro n
  simp only [A159461, Nat.add_sub_cancel, A159461.P11283599979479054948.a, A159461.P8896828948141385793.a, A075527, A075527.P10646359664599490544.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159461

/-! ## A159461.P2564443833436294913

`A046930(n+1)%∑[n+1]`
-/

namespace A159461.P2564443833436294913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046930 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A159461.P2564443833436294913

namespace A159461

/-- `A046930(n+1)%∑[n+1]` -/
def P2564443833436294913.Spec : Prop :=
  ∀ n, P2564443833436294913.a n = A159461 (n + 1)

end A159461

/-! ## A159461.P5991141630137969584

`A046930(floor(2/(a(n-1)+4)+n)+1)` with `a(0)=0, a(1)=1`
-/

namespace A159461.P5991141630137969584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A046930 (⌊2 / (a (n - 1) + 4 : ℚ) + (n : ℚ)⌋ + 1).toNat

end

end A159461.P5991141630137969584

namespace A159461

/-- `A046930(floor(2/(a(n-1)+4)+n)+1)` -/
def P5991141630137969584.Spec : Prop :=
  ∀ n, P5991141630137969584.a n = A159461 (n + 1)

end A159461

/-! ## A159461.P11270247455555893705

`A023444(A075527(n))`
-/

namespace A159461.P11270247455555893705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A075527 n).toNat

end

end A159461.P11270247455555893705

namespace A159461

/-- `A023444(A075527(n))` -/
def P11270247455555893705.Spec : Prop :=
  ∀ n, P11270247455555893705.a n = A159461 (n + 1)

end A159461

/-! ## A159461.P9589488883121505652

`A046930(n+1)-A000007(n)`
-/

namespace A159461.P9589488883121505652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1) - A000007 n

end

end A159461.P9589488883121505652

namespace A159461

/-- `A046930(n+1)-A000007(n)` -/
def P9589488883121505652.Spec : Prop :=
  ∀ n, P9589488883121505652.a n = A159461 (n + 1)

end A159461

/-! ## A159461.P14994033621697947973

`A046930(n+1)*A057427(n)`
-/

namespace A159461.P14994033621697947973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1) * A057427 n

end

end A159461.P14994033621697947973

namespace A159461

/-- `A046930(n+1)*A057427(n)` -/
def P14994033621697947973.Spec : Prop :=
  ∀ n, P14994033621697947973.a n = A159461 (n + 1)

end A159461

/-! ## A159461.P10568690647860029940

`and(A046930(n+1), A057428(n))`
-/

namespace A159461.P10568690647860029940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046930 (n + 1)) (A057428 n)

end

end A159461.P10568690647860029940

namespace A159461

/-- `and(A046930(n+1), A057428(n))` -/
def P10568690647860029940.Spec : Prop :=
  ∀ n, P10568690647860029940.a n = A159461 (n + 1)

end A159461

/-! ## A159461.P1304258616221229706

`and(A046930(n+1), A134824(n))`
-/

namespace A159461.P1304258616221229706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046930 (n + 1)) (A134824 n)

end

end A159461.P1304258616221229706

namespace A159461

/-- `and(A046930(n+1), A134824(n))` -/
def P1304258616221229706.Spec : Prop :=
  ∀ n, P1304258616221229706.a n = A159461 (n + 1)

end A159461

/-! ## A159461.P10347136766954189863

`A065091(n+1)-(A028815(n)+1)`
-/

namespace A159461.P10347136766954189863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - (A028815 n + 1)

end

end A159461.P10347136766954189863

namespace A159461

/-- `A065091(n+1)-(A028815(n)+1)` -/
def P10347136766954189863.Spec : Prop :=
  ∀ n, P10347136766954189863.a n = A159461 (n + 1)

end A159461

/-! ## A159461.P7943846769777175000

`A165972(n+1)-A299763(n+1)`
-/

namespace A159461.P7943846769777175000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1) - A299763 (n + 1)

end

end A159461.P7943846769777175000

namespace A159461

/-- `A165972(n+1)-A299763(n+1)` -/
def P7943846769777175000.Spec : Prop :=
  ∀ n, P7943846769777175000.a n = A159461 (n + 1)

end A159461

/-! ## A159461.P12507941273880664900

`A001223(n+1)+A075526(n)-2`
-/

namespace A159461.P12507941273880664900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A075526 n - 2)

end

end A159461.P12507941273880664900

namespace A159461

/-- `A001223(n+1)+A075526(n)-2` -/
def P12507941273880664900.Spec : Prop :=
  ∀ n, P12507941273880664900.a n = A159461 (n + 1)

end A159461

/-! ## A159461.P6458994325547649209

`A046930(n+1)+n-A028310(n)`
-/

namespace A159461.P6458994325547649209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1) + ((n : ℤ) - A028310 n)

end

end A159461.P6458994325547649209

namespace A159461

/-- `A046930(n+1)+n-A028310(n)` -/
def P6458994325547649209.Spec : Prop :=
  ∀ n, P6458994325547649209.a n = A159461 (n + 1)

end A159461

/-! ## A159461.P17523705259588884169

`A014690(n+1)-(A090178(n+1)+2)`
-/

namespace A159461.P17523705259588884169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014690 (n + 1) - (A090178 (n + 1) + 2)

end

end A159461.P17523705259588884169

namespace A159461

/-- `A014690(n+1)-(A090178(n+1)+2)` -/
def P17523705259588884169.Spec : Prop :=
  ∀ n, P17523705259588884169.a n = A159461 (n + 1)

end A159461

/-! ## A159461.P2153372250625009959

`A135731(n+1)-(A299763(n+1)+2)`
-/

namespace A159461.P2153372250625009959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1) - (A299763 (n + 1) + 2)

end

end A159461.P2153372250625009959

namespace A159461

/-- `A135731(n+1)-(A299763(n+1)+2)` -/
def P2153372250625009959.Spec : Prop :=
  ∀ n, P2153372250625009959.a n = A159461 (n + 1)

end A159461

/-! ## A159461.P2624270886183314837

`A006093(n+2)-A028815(n)`
-/

namespace A159461.P2624270886183314837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) - A028815 n

end

end A159461.P2624270886183314837

namespace A159461

/-- `A006093(n+2)-A028815(n)` -/
def P2624270886183314837.Spec : Prop :=
  ∀ n, P2624270886183314837.a n = A159461 (n + 1)

end A159461

/-! ## A159461.P8888821272128306159

`A040976(n+2)-A008578(n+1)`
-/

namespace A159461.P8888821272128306159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 2) - A008578 (n + 1)

end

end A159461.P8888821272128306159

namespace A159461

/-- `A040976(n+2)-A008578(n+1)` -/
def P8888821272128306159.Spec : Prop :=
  ∀ n, P8888821272128306159.a n = A159461 (n + 1)

end A159461

/-! ## A159461.P5823811748760387041

`A065890(n+2)-A162177(n+1)`
-/

namespace A159461.P5823811748760387041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 2) - A162177 (n + 1)

end

end A159461.P5823811748760387041

namespace A159461

/-- `A065890(n+2)-A162177(n+1)` -/
def P5823811748760387041.Spec : Prop :=
  ∀ n, P5823811748760387041.a n = A159461 (n + 1)

end A159461

/-!
# A159465: Sums of odd numbers, omitting squares.

The programs for A159465, the canonical program `A159465.P6855828733929986843` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159465 has offset 1).

The definition of A159465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159465.P6855828733929986843

`∑[or(1, comp[∑[n]]+n)]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A159465

/-- `∑[or(1, comp[∑[n]]+n)]` -/
def P6855828733929986843.Spec : Prop :=
  ∀ n, (P6855828733929986843.a n : ℤ) = A159465 (n + 1)

theorem P6855828733929986843.correct : P6855828733929986843.Spec := by
  intro n
  simp only [A159465, Nat.add_sub_cancel]

end A159465

/-! ## A159465.P13286667950873307229

`∑[comp[∪[2*n, n²]]]`
-/

namespace A159465.P13286667950873307229
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159465.P13286667950873307229

namespace A159465

/-- `∑[comp[∪[2*n, n²]]]` -/
def P13286667950873307229.Spec : Prop :=
  ∀ n, (P13286667950873307229.a n : ℤ) = A159465 (n + 1)

end A159465

/-! ## A159465.P1125771114679421646

`∑[comp[n^(n%2+1)]]`
-/

namespace A159465.P1125771114679421646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2 + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159465.P1125771114679421646

namespace A159465

/-- `∑[comp[n^(n%2+1)]]` -/
def P1125771114679421646.Spec : Prop :=
  ∀ n, (P1125771114679421646.a n : ℤ) = A159465 (n + 1)

end A159465

/-! ## A159465.P14677944606249145201

`∑[comp[n^gcd(2, n+1)]]`
-/

namespace A159465.P14677944606249145201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 2 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159465.P14677944606249145201

namespace A159465

/-- `∑[comp[n^gcd(2, n+1)]]` -/
def P14677944606249145201.Spec : Prop :=
  ∀ n, (P14677944606249145201.a n : ℤ) = A159465 (n + 1)

end A159465

/-! ## A159465.P4805012261390513624

`∑[2*comp[∑[4*n]]+1]`
-/

namespace A159465.P4805012261390513624
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159465.P4805012261390513624

namespace A159465

/-- `∑[2*comp[∑[4*n]]+1]` -/
def P4805012261390513624.Spec : Prop :=
  ∀ n, (P4805012261390513624.a n : ℤ) = A159465 (n + 1)

end A159465

/-! ## A159465.P5440227362126151498

`2*∑[A088828(n+1)/2]`
-/

namespace A159465.P5440227362126151498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088828 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159465.P5440227362126151498

namespace A159465

/-- `2*∑[A088828(n+1)/2]` -/
def P5440227362126151498.Spec : Prop :=
  ∀ n, P5440227362126151498.a n = (A159465 (n + 1) : ℚ)

end A159465

/-! ## A159465.P6135309988939166295

`∑[A004277(comp[A046092(n)])]+n+1`
-/

namespace A159465.P6135309988939166295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A159465.P6135309988939166295

namespace A159465

/-- `∑[A004277(comp[A046092(n)])]+n+1` -/
def P6135309988939166295.Spec : Prop :=
  ∀ n, P6135309988939166295.a n = A159465 (n + 1)

end A159465

/-! ## A159465.P8638335933703577934

`∑[lt[A046544(n+1), A046546(2*n+1)]]+n+1`
-/

namespace A159465.P8638335933703577934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046544 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n + 1

end

end A159465.P8638335933703577934

namespace A159465

/-- `∑[lt[A046544(n+1), A046546(2*n+1)]]+n+1` -/
def P8638335933703577934.Spec : Prop :=
  ∀ n, (P8638335933703577934.a n : ℤ) = A159465 (n + 1)

end A159465

/-! ## A159465.P7121343014558481732

`A004277(∑[comp[A046092(n)]])+n+1`
-/

namespace A159465.P7121343014558481732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A159465.P7121343014558481732

namespace A159465

/-- `A004277(∑[comp[A046092(n)]])+n+1` -/
def P7121343014558481732.Spec : Prop :=
  ∀ n, P7121343014558481732.a n = A159465 (n + 1)

end A159465

/-!
# A159466: Positive numbers y such that y^2 is of the form x^2 + (x+127)^2 with integer x.

The programs for A159466, the canonical program `A159466.P6634973664422477564` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159466 has offset 1).

The definition of A159466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159466.P6634973664422477564

`6*a(n-3)-a(n-6)` with `a(0)=113, a(1)=127, a(2)=145, a(3)=533, a(4)=635, a(5)=757`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A159466

/-- `6*a(n-3)-a(n-6)` -/
def P6634973664422477564.Spec : Prop :=
  ∀ n, P6634973664422477564.a n = A159466 (n + 1)

theorem P6634973664422477564.correct : P6634973664422477564.Spec := by
  intro n
  simp only [A159466, Nat.add_sub_cancel]

end A159466

/-! ## A159466.P16687145309183569710

`2*6^a(n-1)` with `a(0)=113, a(1)=127, a(2)=145, a(3)=533, a(4)=635, a(5)=757`
-/

namespace A159466.P16687145309183569710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [113, 127, 145, 533, 635, 757] fun n a =>
  2 * 6 ^ a (n - 1)

end

end A159466.P16687145309183569710

namespace A159466

/-- `2*6^a(n-1)` -/
def P16687145309183569710.Spec : Prop :=
  ∀ n, (P16687145309183569710.a n : ℤ) = A159466 (n + 1)

end A159466

/-!
# A159469: Maximum remainder when (k + 1)^n + (k - 1)^n is divided by k^2 for variable n and k > 2.

The programs for A159469, the canonical program `A159469.P13189640171723573862` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159469 has offset 3).

The definition of A159469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159469.P18216470343826622697

`ogf((6+2x)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A159469.P18216470343826622697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 2] [1, -1, -2, 2, 1, -1] n

end

end A159469.P18216470343826622697

namespace A159469

/-- `ogf((6+2x)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P18216470343826622697.Spec : Prop :=
  ∀ n, P18216470343826622697.a n = A159469 (n + 3)

end A159469

/-! ## A159469.P4450081262622964546

`(n+3)²-(n+3)*(3+(-1)^(n+3))/2`
-/

namespace A159469.P4450081262622964546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℚ) - ((n + 3 : ℤ) * (3 + (-1) ^ (n + 3)) : ℚ) / 2

end

end A159469.P4450081262622964546

namespace A159469

/-- `(n+3)²-(n+3)*(3+(-1)^(n+3))/2` -/
def P4450081262622964546.Spec : Prop :=
  ∀ n, P4450081262622964546.a n = (A159469 (n + 3) : ℚ)

end A159469

/-! ## A159469.P13950631702387789346

`(4*A152749(n+1)+A091574(n+2)-A010719(n+2))/3`
-/

namespace A159469.P13950631702387789346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A152749 (n + 1) + A091574 (n + 2) - A010719 (n + 2) : ℚ) / 3

end

end A159469.P13950631702387789346

namespace A159469

/-- `(4*A152749(n+1)+A091574(n+2)-A010719(n+2))/3` -/
def P13950631702387789346.Spec : Prop :=
  ∀ n, P13950631702387789346.a n = (A159469 (n + 3) : ℚ)

end A159469

/-! ## A159469.P13189640171723573862

`2*A050187(n+3)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A159469

/-- `2*A050187(n+3)` -/
def P13189640171723573862.Spec : Prop :=
  ∀ n, P13189640171723573862.a n = A159469 (n + 3)

theorem P13189640171723573862.correct : P13189640171723573862.Spec := by
  intro n
  simp only [A159469, Nat.add_sub_cancel]

end A159469

/-! ## A159469.P13593934703483931709

`(or(1, n)+1)*(n+3)`
-/

namespace A159469.P13593934703483931709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n + 1) * (n + 3)

end

end A159469.P13593934703483931709

namespace A159469

/-- `(or(1, n)+1)*(n+3)` -/
def P13593934703483931709.Spec : Prop :=
  ∀ n, (P13593934703483931709.a n : ℤ) = A159469 (n + 3)

end A159469

/-! ## A159469.P7120028007400145946

`(gcd(2, n)+n)*(n+3)`
-/

namespace A159469.P7120028007400145946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + n) * (n + 3)

end

end A159469.P7120028007400145946

namespace A159469

/-- `(gcd(2, n)+n)*(n+3)` -/
def P7120028007400145946.Spec : Prop :=
  ∀ n, (P7120028007400145946.a n : ℤ) = A159469 (n + 3)

end A159469

/-! ## A159469.P13317228314248530510

`(n+3)*and(n+2, -2)`
-/

namespace A159469.P13317228314248530510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * Int.land (n + 2 : ℤ) (-2)

end

end A159469.P13317228314248530510

namespace A159469

/-- `(n+3)*and(n+2, -2)` -/
def P13317228314248530510.Spec : Prop :=
  ∀ n, P13317228314248530510.a n = A159469 (n + 3)

end A159469

/-! ## A159469.P6039502139169767732

`(n+3)*(record[xor(2, n)]-n)`
-/

namespace A159469.P6039502139169767732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ))

end

end A159469.P6039502139169767732

namespace A159469

/-- `(n+3)*(record[xor(2, n)]-n)` -/
def P6039502139169767732.Spec : Prop :=
  ∀ n, P6039502139169767732.a n = A159469 (n + 3)

end A159469

/-! ## A159469.P888157606549150882

`∑[∑[∑[ogf((6+2x)/(1+2x+x^2))]]]`
-/

namespace A159469.P888157606549150882
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 2] [1, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159469.P888157606549150882

namespace A159469

/-- `∑[∑[∑[ogf((6+2x)/(1+2x+x^2))]]]` -/
def P888157606549150882.Spec : Prop :=
  ∀ n, P888157606549150882.a n = A159469 (n + 3)

end A159469

/-! ## A159469.P2388179402815377793

`lcm(lcm(2, n)+2, 2*(n+3))`
-/

namespace A159469.P2388179402815377793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.lcm 2 n + 2) (2 * (n + 3))

end

end A159469.P2388179402815377793

namespace A159469

/-- `lcm(lcm(2, n)+2, 2*(n+3))` -/
def P2388179402815377793.Spec : Prop :=
  ∀ n, (P2388179402815377793.a n : ℤ) = A159469 (n + 3)

end A159469

/-! ## A159469.P13389446121405753447

`(2-n%2+n)*(n+3)`
-/

namespace A159469.P13389446121405753447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((n % 2 : ℕ) : ℤ) + (n : ℤ)) * (n + 3 : ℤ)

end

end A159469.P13389446121405753447

namespace A159469

/-- `(2-n%2+n)*(n+3)` -/
def P13389446121405753447.Spec : Prop :=
  ∀ n, P13389446121405753447.a n = A159469 (n + 3)

end A159469

/-! ## A159469.P2789553068254496460

`(n+3)*∑[2-a(n-1)]` with `a(0)=2`
-/

namespace A159469.P2789553068254496460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159469.P2789553068254496460

namespace A159469

/-- `(n+3)*∑[2-a(n-1)]` -/
def P2789553068254496460.Spec : Prop :=
  ∀ n, P2789553068254496460.a n = A159469 (n + 3)

end A159469

/-! ## A159469.P12809500599707280301

`(n+1+(n+1)%2)*(n+3)`
-/

namespace A159469.P12809500599707280301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1 + (n + 1) % 2) * (n + 3)

end

end A159469.P12809500599707280301

namespace A159469

/-- `(n+1+(n+1)%2)*(n+3)` -/
def P12809500599707280301.Spec : Prop :=
  ∀ n, (P12809500599707280301.a n : ℤ) = A159469 (n + 3)

end A159469

/-! ## A159469.P8267780766796076493

`∑[a(n-2)+8]-a(n-1)` with `a(0)=6, a(1)=8`
-/

namespace A159469.P8267780766796076493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 8] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 8] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A159469.P8267780766796076493

namespace A159469

/-- `∑[a(n-2)+8]-a(n-1)` -/
def P8267780766796076493.Spec : Prop :=
  ∀ n, P8267780766796076493.a n = A159469 (n + 3)

end A159469

/-! ## A159469.P11742796735832163420

`∑[∑[8-a(n-1)]-a(n-1)]` with `a(0)=6`
-/

namespace A159469.P11742796735832163420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159469.P11742796735832163420

namespace A159469

/-- `∑[∑[8-a(n-1)]-a(n-1)]` -/
def P11742796735832163420.Spec : Prop :=
  ∀ n, P11742796735832163420.a n = A159469 (n + 3)

end A159469

/-! ## A159469.P4075396874361183051

`(n+3)*Δ[a(n-2)+2*n]` with `a(0)=0, a(1)=2`
-/

namespace A159469.P4075396874361183051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A159469.P4075396874361183051

namespace A159469

/-- `(n+3)*Δ[a(n-2)+2*n]` -/
def P4075396874361183051.Spec : Prop :=
  ∀ n, P4075396874361183051.a n = A159469 (n + 3)

end A159469

/-! ## A159469.P17128612714946336931

`lcm(n+2, n+3)-lcm(n+3, and(1, n))`
-/

namespace A159469.P17128612714946336931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (n + 3) : ℤ) - (Nat.lcm (n + 3) (Nat.land 1 n) : ℤ)

end

end A159469.P17128612714946336931

namespace A159469

/-- `lcm(n+2, n+3)-lcm(n+3, and(1, n))` -/
def P17128612714946336931.Spec : Prop :=
  ∀ n, P17128612714946336931.a n = A159469 (n + 3)

end A159469

/-! ## A159469.P17839253491739999682

`2*(A359329(n+3)+n+3)`
-/

namespace A159469.P17839253491739999682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A359329 (n + 3) + (n + 3 : ℤ))

end

end A159469.P17839253491739999682

namespace A159469

/-- `2*(A359329(n+3)+n+3)` -/
def P17839253491739999682.Spec : Prop :=
  ∀ n, P17839253491739999682.a n = A159469 (n + 3)

end A159469

/-! ## A159469.P6048399379360890346

`A008619(n)*A020739(n)`
-/

namespace A159469.P6048399379360890346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A020739 n

end

end A159469.P6048399379360890346

namespace A159469

/-- `A008619(n)*A020739(n)` -/
def P6048399379360890346.Spec : Prop :=
  ∀ n, P6048399379360890346.a n = A159469 (n + 3)

end A159469

/-! ## A159469.P13176810757776725458

`(n+3)*A131055(n+2)`
-/

namespace A159469.P13176810757776725458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A131055 (n + 2)

end

end A159469.P13176810757776725458

namespace A159469

/-- `(n+3)*A131055(n+2)` -/
def P13176810757776725458.Spec : Prop :=
  ∀ n, P13176810757776725458.a n = A159469 (n + 3)

end A159469

/-!
# A159471: Palindromic primes using only odd digits (1, 3, 5, 7 or 9).

The programs for A159471, there is no canonical definition to state claims against.
-/

/-! ## A159471.P5927714820356579501

`∩[A002385(n+1), A372149(n+1)]`
-/

namespace A159471.P5927714820356579501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159471.P5927714820356579501

/-! ## A159471.P12478567717000550226

`∩[A072299(n+1), A372149(n+1)]`
-/

namespace A159471.P12478567717000550226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159471.P12478567717000550226

/-! ## A159471.P10861539518665206103

`∩[A232183(n+1), A372149(n+1)]`
-/

namespace A159471.P10861539518665206103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159471.P10861539518665206103

/-! ## A159471.P4074028083356866664

`∩[A002113(n+1), A030096(n+1)]`
-/

namespace A159471.P4074028083356866664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159471.P4074028083356866664

/-! ## A159471.P7201082024427078667

`∩[A002385(n+1), A030096(n+1)]`
-/

namespace A159471.P7201082024427078667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159471.P7201082024427078667

/-! ## A159471.P9473930354697123661

`∩[A029950(n+1), A030096(n+1)]`
-/

namespace A159471.P9473930354697123661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159471.P9473930354697123661

/-! ## A159471.P15975134440809551622

`∩[A030096(n+1), A062687(n+1)]`
-/

namespace A159471.P15975134440809551622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159471.P15975134440809551622

/-! ## A159471.P9167299608247418749

`∩[A030096(n+1), A069217(n+1)]`
-/

namespace A159471.P9167299608247418749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159471.P9167299608247418749

/-! ## A159471.P15599201465252439772

`∩[A030096(n+1), A071251(n+1)]`
-/

namespace A159471.P15599201465252439772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159471.P15599201465252439772

/-! ## A159471.P1179111929328503303

`∩[A030096(n+1), A072299(n+1)]`
-/

namespace A159471.P1179111929328503303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159471.P1179111929328503303

/-!
# A159475: a(1) = 1; for n >= 1, a(n) is the smallest number m > n such that gcd(n,m) > 1.

The programs for A159475, the canonical program `A159475.P4349187910405186052` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159475 has offset 1).

The definition of A159475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159475.P18011779469249285188

`∑{d}[A020639(n+1), #]+n`
-/

namespace A159475.P18011779469249285188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + n

end

end A159475.P18011779469249285188

namespace A159475

/-- `∑{d}[A020639(n+1), #]+n` -/
def P18011779469249285188.Spec : Prop :=
  ∀ n, (P18011779469249285188.a n : ℤ) = A159475 (n + 1)

end A159475

/-! ## A159475.P15615236210408765287

`∏{p}[A020639(∏{p}[n+1, #]), n+1+#]`
-/

namespace A159475.P15615236210408765287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (n + 1 + p)

end

end A159475.P15615236210408765287

namespace A159475

/-- `∏{p}[A020639(∏{p}[n+1, #]), n+1+#]` -/
def P15615236210408765287.Spec : Prop :=
  ∀ n, (P15615236210408765287.a n : ℤ) = A159475 (n + 1)

end A159475

/-! ## A159475.P16229392215136991272

`A000113(A020639(n+1))+n`
-/

namespace A159475.P16229392215136991272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000113 (A020639 (n + 1)).toNat + (n : ℤ)

end

end A159475.P16229392215136991272

namespace A159475

/-- `A000113(A020639(n+1))+n` -/
def P16229392215136991272.Spec : Prop :=
  ∀ n, P16229392215136991272.a n = A159475 (n + 1)

end A159475

/-! ## A159475.P5697461464706673391

`A048250(A028233(n+1))+n`
-/

namespace A159475.P5697461464706673391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A028233 (n + 1)).toNat + (n : ℤ)

end

end A159475.P5697461464706673391

namespace A159475

/-- `A048250(A028233(n+1))+n` -/
def P5697461464706673391.Spec : Prop :=
  ∀ n, P5697461464706673391.a n = A159475 (n + 1)

end A159475

/-! ## A159475.P4349187910405186052

`A061228(n+1)-A000007(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A159475

/-- `A061228(n+1)-A000007(n)` -/
def P4349187910405186052.Spec : Prop :=
  ∀ n, P4349187910405186052.a n = A159475 (n + 1)

theorem P4349187910405186052.correct : P4349187910405186052.Spec := by
  intro n
  simp only [A159475, Nat.add_sub_cancel]

end A159475

/-! ## A159475.P1698917856482862867

`A061228(n+1)/A054977(n)`
-/

namespace A159475.P1698917856482862867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061228 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A159475.P1698917856482862867

namespace A159475

/-- `A061228(n+1)/A054977(n)` -/
def P1698917856482862867.Spec : Prop :=
  ∀ n, P1698917856482862867.a n = (A159475 (n + 1) : ℚ)

end A159475

/-! ## A159475.P15102688545613235728

`A080368(A007947(n+1))+1+n`
-/

namespace A159475.P15102688545613235728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080368 (A007947 (n + 1)).toNat + 1 + (n : ℤ)

end

end A159475.P15102688545613235728

namespace A159475

/-- `A080368(A007947(n+1))+1+n` -/
def P15102688545613235728.Spec : Prop :=
  ∀ n, P15102688545613235728.a n = A159475 (n + 1)

end A159475

/-! ## A159475.P1819247307857971820

`A087156(n+1)+A020639(n+1)`
-/

namespace A159475.P1819247307857971820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A020639 (n + 1)

end

end A159475.P1819247307857971820

namespace A159475

/-- `A087156(n+1)+A020639(n+1)` -/
def P1819247307857971820.Spec : Prop :=
  ∀ n, P1819247307857971820.a n = A159475 (n + 1)

end A159475

/-! ## A159475.P18294990109219619870

`A114637(n+1)+A057237(n+1)`
-/

namespace A159475.P18294990109219619870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (n + 1) + A057237 (n + 1)

end

end A159475.P18294990109219619870

namespace A159475

/-- `A114637(n+1)+A057237(n+1)` -/
def P18294990109219619870.Spec : Prop :=
  ∀ n, P18294990109219619870.a n = A159475 (n + 1)

end A159475

/-! ## A159475.P4354320225634681152

`A020639(n+1)+A057427(n)+n`
-/

namespace A159475.P4354320225634681152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (A057427 n + (n : ℤ))

end

end A159475.P4354320225634681152

namespace A159475

/-- `A020639(n+1)+A057427(n)+n` -/
def P4354320225634681152.Spec : Prop :=
  ∀ n, P4354320225634681152.a n = A159475 (n + 1)

end A159475

/-! ## A159475.P4199714389563146225

`A020639(n+1)+n-A057428(n)`
-/

namespace A159475.P4199714389563146225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + ((n : ℤ) - A057428 n)

end

end A159475.P4199714389563146225

namespace A159475

/-- `A020639(n+1)+n-A057428(n)` -/
def P4199714389563146225.Spec : Prop :=
  ∀ n, P4199714389563146225.a n = A159475 (n + 1)

end A159475

/-! ## A159475.P13827216904128232191

`∏{d}[A020639(n+1), A000203(#)]+n`
-/

namespace A159475.P13827216904128232191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000203 d + (n : ℤ)

end

end A159475.P13827216904128232191

namespace A159475

/-- `∏{d}[A020639(n+1), A000203(#)]+n` -/
def P13827216904128232191.Spec : Prop :=
  ∀ n, P13827216904128232191.a n = A159475 (n + 1)

end A159475

/-! ## A159475.P12856808949112181394

`A000203(root(A020639(n+1)^10, 10))+n`
-/

namespace A159475.P12856808949112181394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A020639 (n + 1) ^ 10 : ℝ) ^ (1 / (10 : ℝ)))).toNat + (n : ℤ)

end

end A159475.P12856808949112181394

namespace A159475

/-- `A000203(root(A020639(n+1)^10, 10))+n` -/
def P12856808949112181394.Spec : Prop :=
  ∀ n, P12856808949112181394.a n = A159475 (n + 1)

end A159475

/-! ## A159475.P2706664037422056348

`A000203(A020639(n+1)%(n+2))+n`
-/

namespace A159475.P2706664037422056348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.tmod (A020639 (n + 1)) (n + 2 : ℤ)).toNat + (n : ℤ)

end

end A159475.P2706664037422056348

namespace A159475

/-- `A000203(A020639(n+1)%(n+2))+n` -/
def P2706664037422056348.Spec : Prop :=
  ∀ n, P2706664037422056348.a n = A159475 (n + 1)

end A159475

/-! ## A159475.P13298453946472875331

`∑{p}[A020639(n+1), A020639(#)]+n+1`
-/

namespace A159475.P13298453946472875331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p + (n + 1 : ℤ)

end

end A159475.P13298453946472875331

namespace A159475

/-- `∑{p}[A020639(n+1), A020639(#)]+n+1` -/
def P13298453946472875331.Spec : Prop :=
  ∀ n, P13298453946472875331.a n = A159475 (n + 1)

end A159475

/-! ## A159475.P8030192487495397958

`A048250(A020639(A007947(n+1)))+n`
-/

namespace A159475.P8030192487495397958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A020639 (A007947 (n + 1)).toNat).toNat + (n : ℤ)

end

end A159475.P8030192487495397958

namespace A159475

/-- `A048250(A020639(A007947(n+1)))+n` -/
def P8030192487495397958.Spec : Prop :=
  ∀ n, P8030192487495397958.a n = A159475 (n + 1)

end A159475

/-! ## A159475.P1042152780066033162

`A008475(A020639(A323130(n+1)))+n+1`
-/

namespace A159475.P1042152780066033162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A020639 (A323130 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A159475.P1042152780066033162

namespace A159475

/-- `A008475(A020639(A323130(n+1)))+n+1` -/
def P1042152780066033162.Spec : Prop :=
  ∀ n, P1042152780066033162.a n = A159475 (n + 1)

end A159475

/-! ## A159475.P12372845528080371634

`A081810(A006530(A304181(n+1)))+n+1`
-/

namespace A159475.P12372845528080371634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081810 (A006530 (A304181 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A159475.P12372845528080371634

namespace A159475

/-- `A081810(A006530(A304181(n+1)))+n+1` -/
def P12372845528080371634.Spec : Prop :=
  ∀ n, P12372845528080371634.a n = A159475 (n + 1)

end A159475

/-! ## A159475.P1318741029083843846

`A020639(n+1)+n+1-A070536(A006530(n+1))`
-/

namespace A159475.P1318741029083843846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (n + 1 : ℤ) - A070536 (A006530 (n + 1)).toNat

end

end A159475.P1318741029083843846

namespace A159475

/-- `A020639(n+1)+n+1-A070536(A006530(n+1))` -/
def P1318741029083843846.Spec : Prop :=
  ∀ n, P1318741029083843846.a n = A159475 (n + 1)

end A159475

/-!
# A159476: Expansion of e.g.f.: A(x) = exp( Sum_{n>=1} (n-1)!*x^n/n ).

The programs for A159476, there is no canonical definition to state claims against.
-/

/-! ## A159476.P4039344070280012901

`A067003(A005329(n))`
-/

namespace A159476.P4039344070280012901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067003 (A005329 n).toNat

end

end A159476.P4039344070280012901

/-! ## A159476.P5704738924724208808

`A384885(A301746(n))`
-/

namespace A159476.P5704738924724208808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384885 (A301746 n).toNat

end

end A159476.P5704738924724208808

/-!
# A159477: a(n) = smallest prime >= n, if 1 is counted as a prime.

The programs for A159477, the canonical program `A159477.P17083165607606757020` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159477 has offset 1).

The definition of A159477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159477.P17083165607606757020

`A308052(a(n-1)+n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A159477

/-- `A308052(a(n-1)+n+1)` -/
def P17083165607606757020.Spec : Prop :=
  ∀ n, P17083165607606757020.a n = A159477 (n + 1)

theorem P17083165607606757020.correct : P17083165607606757020.Spec := by
  intro n
  simp only [A159477, Nat.add_sub_cancel]

end A159477

/-! ## A159477.P11675975358612971601

`A006530(A139693(n))`
-/

namespace A159477.P11675975358612971601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139693 n).toNat

end

end A159477.P11675975358612971601

namespace A159477

/-- `A006530(A139693(n))` -/
def P11675975358612971601.Spec : Prop :=
  ∀ n, P11675975358612971601.a n = A159477 (n + 1)

end A159477

/-! ## A159477.P8560117691814689962

`A076272(A013634(n)-1)`
-/

namespace A159477.P8560117691814689962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A013634 n - 1).toNat

end

end A159477.P8560117691814689962

namespace A159477

/-- `A076272(A013634(n)-1)` -/
def P8560117691814689962.Spec : Prop :=
  ∀ n, P8560117691814689962.a n = A159477 (n + 1)

end A159477

/-! ## A159477.P17484042019732948054

`A013632(A028310(n))+n`
-/

namespace A159477.P17484042019732948054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A028310 n).toNat + (n : ℤ)

end

end A159477.P17484042019732948054

namespace A159477

/-- `A013632(A028310(n))+n` -/
def P17484042019732948054.Spec : Prop :=
  ∀ n, P17484042019732948054.a n = A159477 (n + 1)

end A159477

/-! ## A159477.P15526832557214990903

`A013634(n)-A028310(n)`
-/

namespace A159477.P15526832557214990903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 n - A028310 n

end

end A159477.P15526832557214990903

namespace A159477

/-- `A013634(n)-A028310(n)` -/
def P15526832557214990903.Spec : Prop :=
  ∀ n, P15526832557214990903.a n = A159477 (n + 1)

end A159477

/-! ## A159477.P16008977013710122095

`A151800(n)-A000007(n)`
-/

namespace A159477.P16008977013710122095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - A000007 n

end

end A159477.P16008977013710122095

namespace A159477

/-- `A151800(n)-A000007(n)` -/
def P16008977013710122095.Spec : Prop :=
  ∀ n, P16008977013710122095.a n = A159477 (n + 1)

end A159477

/-! ## A159477.P17861093953930698838

`A151800(n)/A054977(n)`
-/

namespace A159477.P17861093953930698838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 n : ℚ) / (A054977 n : ℚ)

end

end A159477.P17861093953930698838

namespace A159477

/-- `A151800(n)/A054977(n)` -/
def P17861093953930698838.Spec : Prop :=
  ∀ n, P17861093953930698838.a n = (A159477 (n + 1) : ℚ)

end A159477

/-! ## A159477.P13028733113913510741

`gcd(A013636(n), A139693(n))`
-/

namespace A159477.P13028733113913510741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013636 n) (A139693 n)

end

end A159477.P13028733113913510741

namespace A159477

/-- `gcd(A013636(n), A139693(n))` -/
def P13028733113913510741.Spec : Prop :=
  ∀ n, (P13028733113913510741.a n : ℤ) = A159477 (n + 1)

end A159477

/-! ## A159477.P3738525502622327146

`A013632(A233583(n+1))+n`
-/

namespace A159477.P3738525502622327146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A233583 (n + 1)).toNat + (n : ℤ)

end

end A159477.P3738525502622327146

namespace A159477

/-- `A013632(A233583(n+1))+n` -/
def P3738525502622327146.Spec : Prop :=
  ∀ n, P3738525502622327146.a n = A159477 (n + 1)

end A159477

/-! ## A159477.P423796939659449986

`A175851(A119257(n+1))+n`
-/

namespace A159477.P423796939659449986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A119257 (n + 1)).toNat + (n : ℤ)

end

end A159477.P423796939659449986

namespace A159477

/-- `A175851(A119257(n+1))+n` -/
def P423796939659449986.Spec : Prop :=
  ∀ n, P423796939659449986.a n = A159477 (n + 1)

end A159477

/-! ## A159477.P2163715998665051380

`A007918(n+1)-A000007(n)`
-/

namespace A159477.P2163715998665051380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 1) - A000007 n

end

end A159477.P2163715998665051380

namespace A159477

/-- `A007918(n+1)-A000007(n)` -/
def P2163715998665051380.Spec : Prop :=
  ∀ n, P2163715998665051380.a n = A159477 (n + 1)

end A159477

/-! ## A159477.P17462265864812376940

`A057427(n)+A151800(n)-1`
-/

namespace A159477.P17462265864812376940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A151800 n - 1)

end

end A159477.P17462265864812376940

namespace A159477

/-- `A057427(n)+A151800(n)-1` -/
def P17462265864812376940.Spec : Prop :=
  ∀ n, P17462265864812376940.a n = A159477 (n + 1)

end A159477

/-! ## A159477.P15618327213503873238

`A151800(n)-(A057428(n)+1)`
-/

namespace A159477.P15618327213503873238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - (A057428 n + 1)

end

end A159477.P15618327213503873238

namespace A159477

/-- `A151800(n)-(A057428(n)+1)` -/
def P15618327213503873238.Spec : Prop :=
  ∀ n, P15618327213503873238.a n = A159477 (n + 1)

end A159477

/-! ## A159477.P5954879660246316335

`A175851(A210882(n+2))+n`
-/

namespace A159477.P5954879660246316335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A210882 (n + 2)).toNat + (n : ℤ)

end

end A159477.P5954879660246316335

namespace A159477

/-- `A175851(A210882(n+2))+n` -/
def P5954879660246316335.Spec : Prop :=
  ∀ n, P5954879660246316335.a n = A159477 (n + 1)

end A159477

/-! ## A159477.P6244611499956592034

`A007918(n+1)/A054977(n)`
-/

namespace A159477.P6244611499956592034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007918 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A159477.P6244611499956592034

namespace A159477

/-- `A007918(n+1)/A054977(n)` -/
def P6244611499956592034.Spec : Prop :=
  ∀ n, P6244611499956592034.a n = (A159477 (n + 1) : ℚ)

end A159477

/-! ## A159477.P4544901592959090155

`A034699(A139693(2*n-n))`
-/

namespace A159477.P4544901592959090155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A139693 (2 * n - n)).toNat

end

end A159477.P4544901592959090155

namespace A159477

/-- `A034699(A139693(2*n-n))` -/
def P4544901592959090155.Spec : Prop :=
  ∀ n, P4544901592959090155.a n = A159477 (n + 1)

end A159477

/-! ## A159477.P18353203192918555533

`A151800(n)-A000038(n)/2`
-/

namespace A159477.P18353203192918555533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 n : ℚ) - (A000038 n : ℚ) / 2

end

end A159477.P18353203192918555533

namespace A159477

/-- `A151800(n)-A000038(n)/2` -/
def P18353203192918555533.Spec : Prop :=
  ∀ n, P18353203192918555533.a n = (A159477 (n + 1) : ℚ)

end A159477

/-! ## A159477.P16520112728482876479

`A151800(n)+n-A028310(n)`
-/

namespace A159477.P16520112728482876479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n + ((n : ℤ) - A028310 n)

end

end A159477.P16520112728482876479

namespace A159477

/-- `A151800(n)+n-A028310(n)` -/
def P16520112728482876479.Spec : Prop :=
  ∀ n, P16520112728482876479.a n = A159477 (n + 1)

end A159477

/-! ## A159477.P6488511815667822443

`A151800(n)/gcd(n, A051698(n))`
-/

namespace A159477.P6488511815667822443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 n : ℚ) / (Int.gcd (n : ℤ) (A051698 n) : ℚ)

end

end A159477.P6488511815667822443

namespace A159477

/-- `A151800(n)/gcd(n, A051698(n))` -/
def P6488511815667822443.Spec : Prop :=
  ∀ n, P6488511815667822443.a n = (A159477 (n + 1) : ℚ)

end A159477

/-! ## A159477.P4119029948374193989

`A151800(n)-C(n, A006002(n))`
-/

namespace A159477.P4119029948374193989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - (Nat.choose n (A006002 n).toNat : ℤ)

end

end A159477.P4119029948374193989

namespace A159477

/-- `A151800(n)-C(n, A006002(n))` -/
def P4119029948374193989.Spec : Prop :=
  ∀ n, P4119029948374193989.a n = A159477 (n + 1)

end A159477

/-!
# A159478: a(n) = 2^(n^2+n) * C(1/2^n, n).

The programs for A159478, there is no canonical definition to state claims against.
-/

/-! ## A159478.P12956239521428160650

`A001316(n)*A134098(n)`
-/

namespace A159478.P12956239521428160650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A134098 n

end

end A159478.P12956239521428160650

/-! ## A159478.P3641845713691656717

`Δ[A006046(n)]*A134098(n)`
-/

namespace A159478.P3641845713691656717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A134098 n

end

end A159478.P3641845713691656717

/-! ## A159478.P14557257249610417761

`(A038573(n)+1)*A134098(n)`
-/

namespace A159478.P14557257249610417761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 n + 1) * A134098 n

end

end A159478.P14557257249610417761

/-! ## A159478.P13862911968091704952

`2^A000120(n)*A134098(n)`
-/

namespace A159478.P13862911968091704952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n : ℤ) * (A134098 n : ℚ)

end

end A159478.P13862911968091704952

/-! ## A159478.P15205048876836177162

`gcd(64, A000108(2*n))*A134098(n)`
-/

namespace A159478.P15205048876836177162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 64 (A000108 (2 * n)) : ℤ) * A134098 n

end

end A159478.P15205048876836177162

/-!
# A159481: Number of evil numbers <= n, see A001969.

The programs for A159481, the canonical program `A159481.P7251533249853496071` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159481 has offset 0).

The definition of A159481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159481.P7251533249853496071

`n+1-A115384(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A159481

/-- `n+1-A115384(n)` -/
def P7251533249853496071.Spec : Prop :=
  ∀ n, P7251533249853496071.a n = A159481 n

theorem P7251533249853496071.correct : P7251533249853496071.Spec := by
  intro n
  simp only [A159481]

end A159481

/-! ## A159481.P9840146056799807128

`floor(n/2)-(1+(-1)^n)*(1-(-1)^A000120(n))/4+1`
-/

namespace A159481.P9840146056799807128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ : ℚ) - (1 + (-1) ^ n : ℚ) * (1 - (-1 : ℚ) ^ (A000120 n : ℤ)) / 4 + 1

end

end A159481.P9840146056799807128

namespace A159481

/-- `floor(n/2)-(1+(-1)^n)*(1-(-1)^A000120(n))/4+1` -/
def P9840146056799807128.Spec : Prop :=
  ∀ n, P9840146056799807128.a n = (A159481 n : ℚ)

end A159481

/-! ## A159481.P15526612051475507191

`∑[char[xor(n, 2*n)]]`
-/

namespace A159481.P15526612051475507191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159481.P15526612051475507191

namespace A159481

/-- `∑[char[xor(n, 2*n)]]` -/
def P15526612051475507191.Spec : Prop :=
  ∀ n, (P15526612051475507191.a n : ℤ) = A159481 n

end A159481

/-! ## A159481.P13175287653760802667

`ceil(comp[xor(n, 2*n)]/4)`
-/

namespace A159481.P13175287653760802667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 4⌉

end

end A159481.P13175287653760802667

namespace A159481

/-- `ceil(comp[xor(n, 2*n)]/4)` -/
def P13175287653760802667.Spec : Prop :=
  ∀ n, P13175287653760802667.a n = A159481 n

end A159481

/-! ## A159481.P12738982136592006139

`∑[comp[xor(n, 2*n)]%2]`
-/

namespace A159481.P12738982136592006139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159481.P12738982136592006139

namespace A159481

/-- `∑[comp[xor(n, 2*n)]%2]` -/
def P12738982136592006139.Spec : Prop :=
  ∀ n, (P12738982136592006139.a n : ℤ) = A159481 n

end A159481

/-! ## A159481.P3895463829746985474

`∑[and(1, comp[xor(n, 2*n)])]`
-/

namespace A159481.P3895463829746985474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159481.P3895463829746985474

namespace A159481

/-- `∑[and(1, comp[xor(n, 2*n)])]` -/
def P3895463829746985474.Spec : Prop :=
  ∀ n, (P3895463829746985474.a n : ℤ) = A159481 n

end A159481

/-! ## A159481.P5831996813588797687

`∑[1-a(and(n, n-1))]` with `a(0)=1`
-/

namespace A159481.P5831996813588797687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159481.P5831996813588797687

namespace A159481

/-- `∑[1-a(and(n, n-1))]` -/
def P5831996813588797687.Spec : Prop :=
  ∀ n, P5831996813588797687.a n = A159481 n

end A159481

/-! ## A159481.P13407388639864100287

`char[xor(n, 2*n)]+a(n-1)` with `a(0)=1`
-/

namespace A159481.P13407388639864100287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A159481.P13407388639864100287

namespace A159481

/-- `char[xor(n, 2*n)]+a(n-1)` -/
def P13407388639864100287.Spec : Prop :=
  ∀ n, (P13407388639864100287.a n : ℤ) = A159481 n

end A159481

/-! ## A159481.P13651330233983621898

`∑[and(1, a(floor(n/2))+n%2)]` with `a(0)=1`
-/

namespace A159481.P13651330233983621898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.land 1 (f1 ⌊(n : ℚ) / 2⌋.toNat + n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159481.P13651330233983621898

namespace A159481

/-- `∑[and(1, a(floor(n/2))+n%2)]` -/
def P13651330233983621898.Spec : Prop :=
  ∀ n, (P13651330233983621898.a n : ℤ) = A159481 n

end A159481

/-! ## A159481.P6383252698801382123

`∑[A010059(n)]`
-/

namespace A159481.P6383252698801382123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159481.P6383252698801382123

namespace A159481

/-- `∑[A010059(n)]` -/
def P6383252698801382123.Spec : Prop :=
  ∀ n, P6383252698801382123.a n = A159481 n

end A159481

/-! ## A159481.P9377406801516908302

`A245710(n)+1`
-/

namespace A159481.P9377406801516908302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245710 n + 1

end

end A159481.P9377406801516908302

namespace A159481

/-- `A245710(n)+1` -/
def P9377406801516908302.Spec : Prop :=
  ∀ n, P9377406801516908302.a n = A159481 n

end A159481

/-! ## A159481.P7008678255538525668

`∑[1-A010060(n)]`
-/

namespace A159481.P7008678255538525668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159481.P7008678255538525668

namespace A159481

/-- `∑[1-A010060(n)]` -/
def P7008678255538525668.Spec : Prop :=
  ∀ n, P7008678255538525668.a n = A159481 n

end A159481

/-! ## A159481.P770528809753315316

`∑[2-A001285(n)]`
-/

namespace A159481.P770528809753315316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159481.P770528809753315316

namespace A159481

/-- `∑[2-A001285(n)]` -/
def P770528809753315316.Spec : Prop :=
  ∀ n, P770528809753315316.a n = A159481 n

end A159481

/-! ## A159481.P5622616560157648553

`∑[A254651(2*n)]`
-/

namespace A159481.P5622616560157648553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159481.P5622616560157648553

namespace A159481

/-- `∑[A254651(2*n)]` -/
def P5622616560157648553.Spec : Prop :=
  ∀ n, P5622616560157648553.a n = A159481 n

end A159481

/-! ## A159481.P2103113157673640313

`∑[and(1, A101925(n))]`
-/

namespace A159481.P2103113157673640313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A101925 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159481.P2103113157673640313

namespace A159481

/-- `∑[and(1, A101925(n))]` -/
def P2103113157673640313.Spec : Prop :=
  ∀ n, P2103113157673640313.a n = A159481 n

end A159481

/-! ## A159481.P2561862363501046936

`∑[char[A001969(n+1)]]`
-/

namespace A159481.P2561862363501046936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159481.P2561862363501046936

namespace A159481

/-- `∑[char[A001969(n+1)]]` -/
def P2561862363501046936.Spec : Prop :=
  ∀ n, (P2561862363501046936.a n : ℤ) = A159481 n

end A159481

/-! ## A159481.P618930129281246039

`∑[char[A003188(2*n)]]`
-/

namespace A159481.P618930129281246039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159481.P618930129281246039

namespace A159481

/-- `∑[char[A003188(2*n)]]` -/
def P618930129281246039.Spec : Prop :=
  ∀ n, (P618930129281246039.a n : ℤ) = A159481 n

end A159481

/-! ## A159481.P18437881559426182568

`∑[char[A160017(2*n)]]`
-/

namespace A159481.P18437881559426182568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159481.P18437881559426182568

namespace A159481

/-- `∑[char[A160017(2*n)]]` -/
def P18437881559426182568.Spec : Prop :=
  ∀ n, (P18437881559426182568.a n : ℤ) = A159481 n

end A159481

/-! ## A159481.P4242146320033253616

`∑[A228495(2*n+1)]`
-/

namespace A159481.P4242146320033253616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159481.P4242146320033253616

namespace A159481

/-- `∑[A228495(2*n+1)]` -/
def P4242146320033253616.Spec : Prop :=
  ∀ n, P4242146320033253616.a n = A159481 n

end A159481

/-!
# A159482: Greatest odd prime q < 2*n such that p < q and p prime and p = 2*n - q or 0 if no such prime exists.

The programs for A159482, there is no canonical definition to state claims against.
-/

/-! ## A159482.P18031907444302536914

`A020482(A054977(n)+n)%A002061(n)`
-/

namespace A159482.P18031907444302536914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020482 (A054977 n + (n : ℤ)).toNat) (A002061 n)

end

end A159482.P18031907444302536914

/-! ## A159482.P7401525225479597977

`A020482(A123108(2*n)+1)%A002061(n)`
-/

namespace A159482.P7401525225479597977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020482 (A123108 (2 * n) + 1).toNat) (A002061 n)

end

end A159482.P7401525225479597977

/-! ## A159482.P8563393830673785539

`A020482(A233583(n+2))%A316571(n+1)`
-/

namespace A159482.P8563393830673785539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020482 (A233583 (n + 2)).toNat) (A316571 (n + 1))

end

end A159482.P8563393830673785539

/-! ## A159482.P12109348883700967738

`A020482(A233583(n+2))*A057427(A004524(n))`
-/

namespace A159482.P12109348883700967738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A233583 (n + 2)).toNat * A057427 (A004524 n).toNat

end

end A159482.P12109348883700967738

/-! ## A159482.P6278205842808711753

`A020482(A233583(n+2))%A007481(n)`
-/

namespace A159482.P6278205842808711753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020482 (A233583 (n + 2)).toNat) (A007481 n)

end

end A159482.P6278205842808711753

/-! ## A159482.P17482405736037619444

`A101778(A084849(n))%A002061(n)`
-/

namespace A159482.P17482405736037619444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101778 (A084849 n).toNat) (A002061 n)

end

end A159482.P17482405736037619444

/-! ## A159482.P13724523654624344717

`A000384(n)%(A000384(n)-A101778(A084849(n)))`
-/

namespace A159482.P13724523654624344717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000384 n) (A000384 n - A101778 (A084849 n).toNat)

end

end A159482.P13724523654624344717

/-!
# A159483: Number of tolerance simple lattices of order n.

The programs for A159483, there is no canonical definition to state claims against.
-/

/-! ## A159483.P7400517876432433209

`A017852(C(A024653(n), 2))`
-/

namespace A159483.P7400517876432433209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017852 (Nat.choose (A024653 n).toNat 2)

end

end A159483.P7400517876432433209

/-! ## A159483.P14503197601281386603

`A347610(∑[A318052(n+1)])`
-/

namespace A159483.P14503197601281386603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347610 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A159483.P14503197601281386603

/-! ## A159483.P15492326626747147194

`A168201(2*A036657(n+1)²)`
-/

namespace A159483.P15492326626747147194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (2 * A036657 (n + 1) ^ 2).toNat

end

end A159483.P15492326626747147194

/-! ## A159483.P16364661252107892786

`A352131(A344741(n)+A240310(n))`
-/

namespace A159483.P16364661252107892786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (A344741 n + A240310 n).toNat

end

end A159483.P16364661252107892786

/-! ## A159483.P14361683599139795739

`A222176(A000602(n))-A000073(n)`
-/

namespace A159483.P14361683599139795739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222176 (A000602 n).toNat - A000073 n

end

end A159483.P14361683599139795739

/-!
# A159490: Denominator of Bernoulli(n, 1/12).

The programs for A159490, there is no canonical definition to state claims against.
-/

/-! ## A159490.P5854469344350482115

`lcm(4^n, A158207(n))`
-/

namespace A159490.P5854469344350482115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 ^ n : ℤ) (A158207 n)

end

end A159490.P5854469344350482115

/-! ## A159490.P13859928301941325374

`lcm(12^n, A141056(n))`
-/

namespace A159490.P13859928301941325374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (12 ^ n : ℤ) (A141056 n)

end

end A159490.P13859928301941325374

/-! ## A159490.P7071006434731854100

`lcm((2^n)², A158301(n))`
-/

namespace A159490.P7071006434731854100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 ^ n) ^ 2 : ℤ) (A158301 n)

end

end A159490.P7071006434731854100

/-! ## A159490.P2735447529265910906

`lcm(A001021(n), A027642(n))`
-/

namespace A159490.P2735447529265910906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001021 n) (A027642 n)

end

end A159490.P2735447529265910906

/-! ## A159490.P8501849074384024380

`lcm(A000302(n), A157800(n))`
-/

namespace A159490.P8501849074384024380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000302 n) (A157800 n)

end

end A159490.P8501849074384024380

/-! ## A159490.P3097508019677423168

`lcm(A000079(n)², A158077(n))`
-/

namespace A159490.P3097508019677423168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n ^ 2) (A158077 n)

end

end A159490.P3097508019677423168

/-! ## A159490.P9024064512751236427

`lcm(A017940(2*n), A141459(n))`
-/

namespace A159490.P9024064512751236427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A017940 (2 * n)) (A141459 n)

end

end A159490.P9024064512751236427

/-! ## A159490.P16118998797311576534

`lcm(A038327((n²+n)/2), A249306(n))`
-/

namespace A159490.P16118998797311576534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038327 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat) (A249306 n)

end

end A159490.P16118998797311576534

