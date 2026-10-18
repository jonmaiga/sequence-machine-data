import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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

/-!
# A351300: a(n) = n^5 * Product_{p|n, p prime} (1 + 1/p^5).

The programs for A351300, the canonical program `A351300.P11599062728590218467` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351300 has offset 1).

The definition of A351300 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059378, A069095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351300.P11599062728590218467

`A069095(n+1)/A059378(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A351300

/-- `A069095(n+1)/A059378(n+1)` -/
def P11599062728590218467.Spec : Prop :=
  ∀ n, P11599062728590218467.a n = (A351300 (n + 1) : ℚ)

end A351300

/-! ## A351300.P12968243703606470849

`A160957(n+1)/A160893(n+1)`
-/

namespace A351300.P12968243703606470849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160957 (n + 1) : ℚ) / (A160893 (n + 1) : ℚ)

end

end A351300.P12968243703606470849

namespace A351300

/-- `A160957(n+1)/A160893(n+1)` -/
def P12968243703606470849.Spec : Prop :=
  ∀ n, P12968243703606470849.a n = (A351300 (n + 1) : ℚ)

end A351300

/-! ## A351300.P1014914671997620159

`∑{d}[n+1, A034444(#)*A059378((n+1)/#)]`
-/

namespace A351300.P1014914671997620159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A059378 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351300.P1014914671997620159

namespace A351300

/-- `∑{d}[n+1, A034444(#)*A059378((n+1)/#)]` -/
def P1014914671997620159.Spec : Prop :=
  ∀ n, P1014914671997620159.a n = A351300 (n + 1)

end A351300

/-! ## A351300.P2059169127653754940

`∑{d}[n+1, A065958(#)*A115224((n+1)/#)]`
-/

namespace A351300.P2059169127653754940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065958 d * A115224 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351300.P2059169127653754940

namespace A351300

/-- `∑{d}[n+1, A065958(#)*A115224((n+1)/#)]` -/
def P2059169127653754940.Spec : Prop :=
  ∀ n, P2059169127653754940.a n = A351300 (n + 1)

end A351300

/-! ## A351300.P16244191527179411577

`∑{d}[n+1, A001160(#)*A271102((n+1)/#)]`
-/

namespace A351300.P16244191527179411577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351300.P16244191527179411577

namespace A351300

/-- `∑{d}[n+1, A001160(#)*A271102((n+1)/#)]` -/
def P16244191527179411577.Spec : Prop :=
  ∀ n, P16244191527179411577.a n = A351300 (n + 1)

end A351300

/-! ## A351300.P7053360914400920255

`∑{d}[n+1, A065960(#)*A238533((n+1)/#)]`
-/

namespace A351300.P7053360914400920255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065960 d * A238533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351300.P7053360914400920255

namespace A351300

/-- `∑{d}[n+1, A065960(#)*A238533((n+1)/#)]` -/
def P7053360914400920255.Spec : Prop :=
  ∀ n, P7053360914400920255.a n = A351300 (n + 1)

end A351300

/-! ## A351300.P5778244313269728594

`∑{d}[n+1, A063659(#)*A372961((n+1)/#)]`
-/

namespace A351300.P5778244313269728594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A372961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351300.P5778244313269728594

namespace A351300

/-- `∑{d}[n+1, A063659(#)*A372961((n+1)/#)]` -/
def P5778244313269728594.Spec : Prop :=
  ∀ n, P5778244313269728594.a n = A351300 (n + 1)

end A351300

/-!
# A351301: a(n) = n^6 * Product_{p|n, p prime} (1 + 1/p^6).

The programs for A351301, the canonical program `A351301.P9303873280763895543` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351301 has offset 1).

The definition of A351301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351301.P2546035793965398335

`A160972(n+1)/A160895(n+1)`
-/

namespace A351301.P2546035793965398335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160972 (n + 1) : ℚ) / (A160895 (n + 1) : ℚ)

end

end A351301.P2546035793965398335

namespace A351301

/-- `A160972(n+1)/A160895(n+1)` -/
def P2546035793965398335.Spec : Prop :=
  ∀ n, P2546035793965398335.a n = (A351301 (n + 1) : ℚ)

end A351301

/-! ## A351301.P11369433321128999902

`∑{d}[n+1, A034444(#)*A069091((n+1)/#)]`
-/

namespace A351301.P11369433321128999902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A069091 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351301.P11369433321128999902

namespace A351301

/-- `∑{d}[n+1, A034444(#)*A069091((n+1)/#)]` -/
def P11369433321128999902.Spec : Prop :=
  ∀ n, P11369433321128999902.a n = A351301 (n + 1)

end A351301

/-! ## A351301.P9303873280763895543

`∑{d}[n+1, A013954(#)*A271102((n+1)/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A351301

/-- `∑{d}[n+1, A013954(#)*A271102((n+1)/#)]` -/
def P9303873280763895543.Spec : Prop :=
  ∀ n, P9303873280763895543.a n = A351301 (n + 1)

theorem P9303873280763895543.correct : P9303873280763895543.Spec := by
  intro n
  simp only [A351301, Nat.add_sub_cancel]

end A351301

/-! ## A351301.P18165495288136621860

`∑{d}[n+1, A063659(#)*A371878((n+1)/#)]`
-/

namespace A351301.P18165495288136621860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A371878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351301.P18165495288136621860

namespace A351301

/-- `∑{d}[n+1, A063659(#)*A371878((n+1)/#)]` -/
def P18165495288136621860.Spec : Prop :=
  ∀ n, P18165495288136621860.a n = A351301 (n + 1)

end A351301

/-! ## A351301.P17089255033277387125

`∑{d}[n+1, A306411(#)*A351300((n+1)/#)]`
-/

namespace A351301.P17089255033277387125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306411 d * A351300 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351301.P17089255033277387125

namespace A351301

/-- `∑{d}[n+1, A306411(#)*A351300((n+1)/#)]` -/
def P17089255033277387125.Spec : Prop :=
  ∀ n, P17089255033277387125.a n = A351301 (n + 1)

end A351301

/-! ## A351301.P7202194751543262624

`A001014(A003557(n+1))*A351269(n+1)`
-/

namespace A351301.P7202194751543262624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A003557 (n + 1)).toNat * A351269 (n + 1)

end

end A351301.P7202194751543262624

namespace A351301

/-- `A001014(A003557(n+1))*A351269(n+1)` -/
def P7202194751543262624.Spec : Prop :=
  ∀ n, P7202194751543262624.a n = A351301 (n + 1)

end A351301

/-! ## A351301.P6679711519662247864

`A160972(n+1)/gcd(A160898(n+1), A160972(n+1))`
-/

namespace A351301.P6679711519662247864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160972 (n + 1) : ℚ) / (Int.gcd (A160898 (n + 1)) (A160972 (n + 1)) : ℚ)

end

end A351301.P6679711519662247864

namespace A351301

/-- `A160972(n+1)/gcd(A160898(n+1), A160972(n+1))` -/
def P6679711519662247864.Spec : Prop :=
  ∀ n, P6679711519662247864.a n = (A351301 (n + 1) : ℚ)

end A351301

/-!
# A351302: a(n) = n^7 * Product_{p|n, p prime} (1 + 1/p^7).

The programs for A351302, the canonical program `A351302.P18255514828067393302` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351302 has offset 1).

The definition of A351302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351302.P17149391580967986334

`A161025(n+1)/A160897(n+1)`
-/

namespace A351302.P17149391580967986334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161025 (n + 1) : ℚ) / (A160897 (n + 1) : ℚ)

end

end A351302.P17149391580967986334

namespace A351302

/-- `A161025(n+1)/A160897(n+1)` -/
def P17149391580967986334.Spec : Prop :=
  ∀ n, P17149391580967986334.a n = (A351302 (n + 1) : ℚ)

end A351302

/-! ## A351302.P13160629079557698860

`∑{d}[n+1, A034444(#)*A069092((n+1)/#)]`
-/

namespace A351302.P13160629079557698860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A069092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351302.P13160629079557698860

namespace A351302

/-- `∑{d}[n+1, A034444(#)*A069092((n+1)/#)]` -/
def P13160629079557698860.Spec : Prop :=
  ∀ n, P13160629079557698860.a n = A351302 (n + 1)

end A351302

/-! ## A351302.P18255514828067393302

`∑{d}[n+1, A013955(#)*A271102((n+1)/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A351302

/-- `∑{d}[n+1, A013955(#)*A271102((n+1)/#)]` -/
def P18255514828067393302.Spec : Prop :=
  ∀ n, P18255514828067393302.a n = A351302 (n + 1)

theorem P18255514828067393302.correct : P18255514828067393302.Spec := by
  intro n
  simp only [A351302, Nat.add_sub_cancel]

end A351302

/-! ## A351302.P14384626031945704284

`∑{d}[n+1, A239442(#)*A351301((n+1)/#)]`
-/

namespace A351302.P14384626031945704284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239442 d * A351301 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351302.P14384626031945704284

namespace A351302

/-- `∑{d}[n+1, A239442(#)*A351301((n+1)/#)]` -/
def P14384626031945704284.Spec : Prop :=
  ∀ n, P14384626031945704284.a n = A351302 (n + 1)

end A351302

/-! ## A351302.P3155013937481953027

`A001015(A003557(n+1))*A351270(n+1)`
-/

namespace A351302.P3155013937481953027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A003557 (n + 1)).toNat * A351270 (n + 1)

end

end A351302.P3155013937481953027

namespace A351302

/-- `A001015(A003557(n+1))*A351270(n+1)` -/
def P3155013937481953027.Spec : Prop :=
  ∀ n, P3155013937481953027.a n = A351302 (n + 1)

end A351302

/-!
# A351303: a(n) = n^8 * Product_{p|n, p prime} (1 + 1/p^8).

The programs for A351303, the canonical program `A351303.P2033963506772646915` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351303 has offset 1).

The definition of A351303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351303.P11396092323485150881

`∑{d}[A007947(n+1), ((n+1)/#)^8]`
-/

namespace A351303.P11396092323485150881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ 8

end

end A351303.P11396092323485150881

namespace A351303

/-- `∑{d}[A007947(n+1), ((n+1)/#)^8]` -/
def P11396092323485150881.Spec : Prop :=
  ∀ n, P11396092323485150881.a n = (A351303 (n + 1) : ℚ)

end A351303

/-! ## A351303.P17303367145415404217

`∑{d}[n+1, A034444(#)*A069093((n+1)/#)]`
-/

namespace A351303.P17303367145415404217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A069093 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351303.P17303367145415404217

namespace A351303

/-- `∑{d}[n+1, A034444(#)*A069093((n+1)/#)]` -/
def P17303367145415404217.Spec : Prop :=
  ∀ n, P17303367145415404217.a n = A351303 (n + 1)

end A351303

/-! ## A351303.P2033963506772646915

`∑{d}[n+1, A013956(#)*A271102((n+1)/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A351303

/-- `∑{d}[n+1, A013956(#)*A271102((n+1)/#)]` -/
def P2033963506772646915.Spec : Prop :=
  ∀ n, P2033963506772646915.a n = A351303 (n + 1)

theorem P2033963506772646915.correct : P2033963506772646915.Spec := by
  intro n
  simp only [A351303, Nat.add_sub_cancel]

end A351303

/-! ## A351303.P115199266738997447

`∑{d}[n+1, A306412(#)*A351302((n+1)/#)]`
-/

namespace A351303.P115199266738997447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306412 d * A351302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351303.P115199266738997447

namespace A351303

/-- `∑{d}[n+1, A306412(#)*A351302((n+1)/#)]` -/
def P115199266738997447.Spec : Prop :=
  ∀ n, P115199266738997447.a n = A351303 (n + 1)

end A351303

/-! ## A351303.P14388829818833280372

`∑{d}[∏{p}[n+1, #], A000583((n+1)/#)²]`
-/

namespace A351303.P14388829818833280372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000583 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2

end

end A351303.P14388829818833280372

namespace A351303

/-- `∑{d}[∏{p}[n+1, #], A000583((n+1)/#)²]` -/
def P14388829818833280372.Spec : Prop :=
  ∀ n, P14388829818833280372.a n = A351303 (n + 1)

end A351303

/-!
# A351304: a(n) = n^9 * Product_{p|n, p prime} (1 + 1/p^9).

The programs for A351304, the canonical program `A351304.P9525013816830147739` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351304 has offset 1).

The definition of A351304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351304.P11995866621313058022

`∑{d}[∏{p}[n+1, #], ((n+1)/#)^9]`
-/

namespace A351304.P11995866621313058022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ 9

end

end A351304.P11995866621313058022

namespace A351304

/-- `∑{d}[∏{p}[n+1, #], ((n+1)/#)^9]` -/
def P11995866621313058022.Spec : Prop :=
  ∀ n, P11995866621313058022.a n = (A351304 (n + 1) : ℚ)

end A351304

/-! ## A351304.P15407859750241734026

`∑{d}[n+1, A034444(#)*A069094((n+1)/#)]`
-/

namespace A351304.P15407859750241734026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A069094 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351304.P15407859750241734026

namespace A351304

/-- `∑{d}[n+1, A034444(#)*A069094((n+1)/#)]` -/
def P15407859750241734026.Spec : Prop :=
  ∀ n, P15407859750241734026.a n = A351304 (n + 1)

end A351304

/-! ## A351304.P9525013816830147739

`∑{d}[n+1, A013957(#)*A271102((n+1)/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A351304

/-- `∑{d}[n+1, A013957(#)*A271102((n+1)/#)]` -/
def P9525013816830147739.Spec : Prop :=
  ∀ n, P9525013816830147739.a n = A351304 (n + 1)

theorem P9525013816830147739.correct : P9525013816830147739.Spec := by
  intro n
  simp only [A351304, Nat.add_sub_cancel]

end A351304

/-! ## A351304.P14606412000637588947

`∑{d}[n+1, A239443(#)*A351303((n+1)/#)]`
-/

namespace A351304.P14606412000637588947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239443 d * A351303 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351304.P14606412000637588947

namespace A351304

/-- `∑{d}[n+1, A239443(#)*A351303((n+1)/#)]` -/
def P14606412000637588947.Spec : Prop :=
  ∀ n, P14606412000637588947.a n = A351304 (n + 1)

end A351304

/-! ## A351304.P15023457907756869168

`A001017(A003557(n+1))*A351272(n+1)`
-/

namespace A351304.P15023457907756869168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A003557 (n + 1)).toNat * A351272 (n + 1)

end

end A351304.P15023457907756869168

namespace A351304

/-- `A001017(A003557(n+1))*A351272(n+1)` -/
def P15023457907756869168.Spec : Prop :=
  ∀ n, P15023457907756869168.a n = A351304 (n + 1)

end A351304

/-!
# A351305: a(n) = n^10 * Product_{p|n, p prime} (1 + 1/p^10).

The programs for A351305, the canonical program `A351305.P16853981285898326094` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351305 has offset 1).

The definition of A351305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351305.P10363704027918102588

`∑{d}[A007947(n+1), ((n+1)/#)^10]`
-/

namespace A351305.P10363704027918102588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ 10

end

end A351305.P10363704027918102588

namespace A351305

/-- `∑{d}[A007947(n+1), ((n+1)/#)^10]` -/
def P10363704027918102588.Spec : Prop :=
  ∀ n, P10363704027918102588.a n = (A351305 (n + 1) : ℚ)

end A351305

/-! ## A351305.P406388751861577388

`A003557(n+1)^10*A351273(n+1)`
-/

namespace A351305.P406388751861577388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) ^ 10 * A351273 (n + 1)

end

end A351305.P406388751861577388

namespace A351305

/-- `A003557(n+1)^10*A351273(n+1)` -/
def P406388751861577388.Spec : Prop :=
  ∀ n, P406388751861577388.a n = A351305 (n + 1)

end A351305

/-! ## A351305.P2719716754864203975

`∑{d}[n+1, A034444(#)*A069095((n+1)/#)]`
-/

namespace A351305.P2719716754864203975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A069095 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351305.P2719716754864203975

namespace A351305

/-- `∑{d}[n+1, A034444(#)*A069095((n+1)/#)]` -/
def P2719716754864203975.Spec : Prop :=
  ∀ n, P2719716754864203975.a n = A351305 (n + 1)

end A351305

/-! ## A351305.P16853981285898326094

`∑{d}[n+1, A013958(#)*A271102((n+1)/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A351305

/-- `∑{d}[n+1, A013958(#)*A271102((n+1)/#)]` -/
def P16853981285898326094.Spec : Prop :=
  ∀ n, P16853981285898326094.a n = A351305 (n + 1)

theorem P16853981285898326094.correct : P16853981285898326094.Spec := by
  intro n
  simp only [A351305, Nat.add_sub_cancel]

end A351305

/-!
# A351307: Sum of the squares of the square divisors of n.

The programs for A351307, the canonical program `A351307.P18414374849791957633` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351307 has offset 1).

The definition of A351307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351307.P17588792194760481443

`∑{d}[A000188(n+1), #²²]`
-/

namespace A351307.P17588792194760481443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d ^ 2) ^ 2

end

end A351307.P17588792194760481443

namespace A351307

/-- `∑{d}[A000188(n+1), #²²]` -/
def P17588792194760481443.Spec : Prop :=
  ∀ n, (P17588792194760481443.a n : ℤ) = A351307 (n + 1)

end A351307

/-! ## A351307.P11213800922887346472

`∑{d}[sqrt(A008833(n+1)), #²²]`
-/

namespace A351307.P11213800922887346472
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, (d ^ 2) ^ 2

end

end A351307.P11213800922887346472

namespace A351307

/-- `∑{d}[sqrt(A008833(n+1)), #²²]` -/
def P11213800922887346472.Spec : Prop :=
  ∀ n, (P11213800922887346472.a n : ℤ) = A351307 (n + 1)

end A351307

/-! ## A351307.P12455672816642841479

`∑{d}[A337101(2*(n+1)), #²²]`
-/

namespace A351307.P12455672816642841479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d ^ 2) ^ 2

end

end A351307.P12455672816642841479

namespace A351307

/-- `∑{d}[A337101(2*(n+1)), #²²]` -/
def P12455672816642841479.Spec : Prop :=
  ∀ n, (P12455672816642841479.a n : ℤ) = A351307 (n + 1)

end A351307

/-! ## A351307.P3480688429425173480

`A001159(A000188(n+1))`
-/

namespace A351307.P3480688429425173480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (A000188 (n + 1)).toNat

end

end A351307.P3480688429425173480

namespace A351307

/-- `A001159(A000188(n+1))` -/
def P3480688429425173480.Spec : Prop :=
  ∀ n, P3480688429425173480.a n = A351307 (n + 1)

end A351307

/-! ## A351307.P2811740757518936388

`A328271(A008833(n+1))`
-/

namespace A351307.P2811740757518936388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328271 (A008833 (n + 1)).toNat

end

end A351307.P2811740757518936388

namespace A351307

/-- `A328271(A008833(n+1))` -/
def P2811740757518936388.Spec : Prop :=
  ∀ n, P2811740757518936388.a n = A351307 (n + 1)

end A351307

/-! ## A351307.P16043547709719768034

`A328271((n+1)/A007913(n+1))`
-/

namespace A351307.P16043547709719768034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328271 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A351307.P16043547709719768034

namespace A351307

/-- `A328271((n+1)/A007913(n+1))` -/
def P16043547709719768034.Spec : Prop :=
  ∀ n, P16043547709719768034.a n = A351307 (n + 1)

end A351307

/-! ## A351307.P1874965277213760813

`A328271(n+1)/A055491(n+1)`
-/

namespace A351307.P1874965277213760813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328271 (n + 1) : ℚ) / (A055491 (n + 1) : ℚ)

end

end A351307.P1874965277213760813

namespace A351307

/-- `A328271(n+1)/A055491(n+1)` -/
def P1874965277213760813.Spec : Prop :=
  ∀ n, P1874965277213760813.a n = (A351307 (n + 1) : ℚ)

end A351307

/-! ## A351307.P12926030268492190940

`∑{d}[A019554(A003557(n+1)), #²²]`
-/

namespace A351307.P12926030268492190940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A003557 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d ^ 2) ^ 2

end

end A351307.P12926030268492190940

namespace A351307

/-- `∑{d}[A019554(A003557(n+1)), #²²]` -/
def P12926030268492190940.Spec : Prop :=
  ∀ n, (P12926030268492190940.a n : ℤ) = A351307 (n + 1)

end A351307

/-! ## A351307.P18414374849791957633

`∑{d}[n+1, A189922(#)*A351602((n+1)/#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A351307

/-- `∑{d}[n+1, A189922(#)*A351602((n+1)/#)]` -/
def P18414374849791957633.Spec : Prop :=
  ∀ n, P18414374849791957633.a n = A351307 (n + 1)

theorem P18414374849791957633.correct : P18414374849791957633.Spec := by
  intro n
  simp only [A351307, Nat.add_sub_cancel]

end A351307

/-! ## A351307.P7350096653283899231

`A300909(A103390(n+2))`
-/

namespace A351307.P7350096653283899231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300909 (A103390 (n + 2)).toNat

end

end A351307.P7350096653283899231

namespace A351307

/-- `A300909(A103390(n+2))` -/
def P7350096653283899231.Spec : Prop :=
  ∀ n, P7350096653283899231.a n = A351307 (n + 1)

end A351307

/-! ## A351307.P5377692811250326692

`A300909((n+1)²)`
-/

namespace A351307.P5377692811250326692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300909 ((n + 1) ^ 2)

end

end A351307.P5377692811250326692

namespace A351307

/-- `A300909((n+1)²)` -/
def P5377692811250326692.Spec : Prop :=
  ∀ n, P5377692811250326692.a n = A351307 (n + 1)

end A351307

/-! ## A351307.P12218382717672157787

`A007913(2*2*A328271(n+1))`
-/

namespace A351307.P12218382717672157787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * (2 * A328271 (n + 1))).toNat

end

end A351307.P12218382717672157787

namespace A351307

/-- `A007913(2*2*A328271(n+1))` -/
def P12218382717672157787.Spec : Prop :=
  ∀ n, P12218382717672157787.a n = A351307 (n + 1)

end A351307

/-! ## A351307.P3278656240329790404

`A327626(A327626(A300909((n+1)*(n+1))))`
-/

namespace A351307.P3278656240329790404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327626 (A327626 (A300909 ((n + 1) * (n + 1))).toNat).toNat

end

end A351307.P3278656240329790404

namespace A351307

/-- `A327626(A327626(A300909((n+1)*(n+1))))` -/
def P3278656240329790404.Spec : Prop :=
  ∀ n, P3278656240329790404.a n = A351307 (n + 1)

end A351307

/-!
# A351308: Sum of the cubes of the square divisors of n.

The programs for A351308, the canonical program `A351308.P2387538369820116881` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351308 has offset 1).

The definition of A351308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351308.P420634992602082673

`A013954(A000188(n+1))`
-/

namespace A351308.P420634992602082673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013954 (A000188 (n + 1)).toNat

end

end A351308.P420634992602082673

namespace A351308

/-- `A013954(A000188(n+1))` -/
def P420634992602082673.Spec : Prop :=
  ∀ n, P420634992602082673.a n = A351308 (n + 1)

end A351308

/-! ## A351308.P12704448209817212561

`A013954(sqrt(A008833(n+1)))`
-/

namespace A351308.P12704448209817212561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013954 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A351308.P12704448209817212561

namespace A351308

/-- `A013954(sqrt(A008833(n+1)))` -/
def P12704448209817212561.Spec : Prop :=
  ∀ n, P12704448209817212561.a n = A351308 (n + 1)

end A351308

/-! ## A351308.P12820474246321960086

`A013954(A057918(n+1)+1)`
-/

namespace A351308.P12820474246321960086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013954 (A057918 (n + 1) + 1).toNat

end

end A351308.P12820474246321960086

namespace A351308

/-- `A013954(A057918(n+1)+1)` -/
def P12820474246321960086.Spec : Prop :=
  ∀ n, P12820474246321960086.a n = A351308 (n + 1)

end A351308

/-! ## A351308.P14218123622424644403

`∑{d}[A000188(n+1), A001014(#)]`
-/

namespace A351308.P14218123622424644403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001014 d

end

end A351308.P14218123622424644403

namespace A351308

/-- `∑{d}[A000188(n+1), A001014(#)]` -/
def P14218123622424644403.Spec : Prop :=
  ∀ n, P14218123622424644403.a n = A351308 (n + 1)

end A351308

/-! ## A351308.P18158053167721170872

`∑{d}[A000188(n+1), A000578(#²)]`
-/

namespace A351308.P18158053167721170872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000578 (d ^ 2)

end

end A351308.P18158053167721170872

namespace A351308

/-- `∑{d}[A000188(n+1), A000578(#²)]` -/
def P18158053167721170872.Spec : Prop :=
  ∀ n, P18158053167721170872.a n = A351308 (n + 1)

end A351308

/-! ## A351308.P1797789449305130887

`∑{d}[A000188(n+1), A059479(#²)]`
-/

namespace A351308.P1797789449305130887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059479 (d ^ 2)

end

end A351308.P1797789449305130887

namespace A351308

/-- `∑{d}[A000188(n+1), A059479(#²)]` -/
def P1797789449305130887.Spec : Prop :=
  ∀ n, P1797789449305130887.a n = A351308 (n + 1)

end A351308

/-! ## A351308.P10478038488503470076

`∑{d}[sqrt(A008833(n+1)), A001014(#)]`
-/

namespace A351308.P10478038488503470076
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001014 d

end

end A351308.P10478038488503470076

namespace A351308

/-- `∑{d}[sqrt(A008833(n+1)), A001014(#)]` -/
def P10478038488503470076.Spec : Prop :=
  ∀ n, P10478038488503470076.a n = A351308 (n + 1)

end A351308

/-! ## A351308.P6519316047146189210

`A013954((n+1)/A019554(n+1))`
-/

namespace A351308.P6519316047146189210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013954 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A351308.P6519316047146189210

namespace A351308

/-- `A013954((n+1)/A019554(n+1))` -/
def P6519316047146189210.Spec : Prop :=
  ∀ n, P6519316047146189210.a n = A351308 (n + 1)

end A351308

/-! ## A351308.P12066380754958447750

`∑{d}[A000188(n+1), #*A000584(#)]`
-/

namespace A351308.P12066380754958447750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A000584 d

end

end A351308.P12066380754958447750

namespace A351308

/-- `∑{d}[A000188(n+1), #*A000584(#)]` -/
def P12066380754958447750.Spec : Prop :=
  ∀ n, P12066380754958447750.a n = A351308 (n + 1)

end A351308

/-! ## A351308.P2485898426661375960

`∑{d}[A000188(n+1), A001015(#)/#]`
-/

namespace A351308.P2485898426661375960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A001015 d : ℚ) / (d : ℚ)

end

end A351308.P2485898426661375960

namespace A351308

/-- `∑{d}[A000188(n+1), A001015(#)/#]` -/
def P2485898426661375960.Spec : Prop :=
  ∀ n, P2485898426661375960.a n = (A351308 (n + 1) : ℚ)

end A351308

/-! ## A351308.P18303157463228453403

`∑{d}[sqrt(A008833(n+1)), A000578(#²)]`
-/

namespace A351308.P18303157463228453403
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000578 (d ^ 2)

end

end A351308.P18303157463228453403

namespace A351308

/-- `∑{d}[sqrt(A008833(n+1)), A000578(#²)]` -/
def P18303157463228453403.Spec : Prop :=
  ∀ n, P18303157463228453403.a n = A351308 (n + 1)

end A351308

/-! ## A351308.P2387538369820116881

`∑{d}[n+1, A059479(#)*A076792((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A351308

/-- `∑{d}[n+1, A059479(#)*A076792((n+1)/#)]` -/
def P2387538369820116881.Spec : Prop :=
  ∀ n, P2387538369820116881.a n = A351308 (n + 1)

theorem P2387538369820116881.correct : P2387538369820116881.Spec := by
  intro n
  simp only [A351308, Nat.add_sub_cancel]

end A351308

/-! ## A351308.P6157297005492502017

`A013954(A055229(n+1)*A056622(n+1))`
-/

namespace A351308.P6157297005492502017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013954 (A055229 (n + 1) * A056622 (n + 1)).toNat

end

end A351308.P6157297005492502017

namespace A351308

/-- `A013954(A055229(n+1)*A056622(n+1))` -/
def P6157297005492502017.Spec : Prop :=
  ∀ n, P6157297005492502017.a n = A351308 (n + 1)

end A351308

/-!
# A351309: Sum of the 4th powers of the square divisors of n.

The programs for A351309, the canonical program `A351309.P8411118416950263227` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351309 has offset 1).

The definition of A351309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351309.P14255411890605222853

`∑{d}[A000188(n+1), #²²²]`
-/

namespace A351309.P14255411890605222853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d ^ 2) ^ 2) ^ 2

end

end A351309.P14255411890605222853

namespace A351309

/-- `∑{d}[A000188(n+1), #²²²]` -/
def P14255411890605222853.Spec : Prop :=
  ∀ n, (P14255411890605222853.a n : ℤ) = A351309 (n + 1)

end A351309

/-! ## A351309.P4954857429265509119

`A013956(A000188(n+1))`
-/

namespace A351309.P4954857429265509119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013956 (A000188 (n + 1)).toNat

end

end A351309.P4954857429265509119

namespace A351309

/-- `A013956(A000188(n+1))` -/
def P4954857429265509119.Spec : Prop :=
  ∀ n, P4954857429265509119.a n = A351309 (n + 1)

end A351309

/-! ## A351309.P6688338157009395953

`A013956(sqrt(A008833(n+1)))`
-/

namespace A351309.P6688338157009395953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013956 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A351309.P6688338157009395953

namespace A351309

/-- `A013956(sqrt(A008833(n+1)))` -/
def P6688338157009395953.Spec : Prop :=
  ∀ n, P6688338157009395953.a n = A351309 (n + 1)

end A351309

/-! ## A351309.P7112283561886335937

`A013956(A057918(n+1)+1)`
-/

namespace A351309.P7112283561886335937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013956 (A057918 (n + 1) + 1).toNat

end

end A351309.P7112283561886335937

namespace A351309

/-- `A013956(A057918(n+1)+1)` -/
def P7112283561886335937.Spec : Prop :=
  ∀ n, P7112283561886335937.a n = A351309 (n + 1)

end A351309

/-! ## A351309.P12745896580148668147

`A013956((n+1)/A019554(n+1))`
-/

namespace A351309.P12745896580148668147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013956 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A351309.P12745896580148668147

namespace A351309

/-- `A013956((n+1)/A019554(n+1))` -/
def P12745896580148668147.Spec : Prop :=
  ∀ n, P12745896580148668147.a n = A351309 (n + 1)

end A351309

/-! ## A351309.P5784451016480678544

`A013956(A055229(n+1)*A056622(n+1))`
-/

namespace A351309.P5784451016480678544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013956 (A055229 (n + 1) * A056622 (n + 1)).toNat

end

end A351309.P5784451016480678544

namespace A351309

/-- `A013956(A055229(n+1)*A056622(n+1))` -/
def P5784451016480678544.Spec : Prop :=
  ∀ n, P5784451016480678544.a n = A351309 (n + 1)

end A351309

/-! ## A351309.P8411118416950263227

`∑{d}[A337101(2*(n+1)), A000583(#²)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A351309

/-- `∑{d}[A337101(2*(n+1)), A000583(#²)]` -/
def P8411118416950263227.Spec : Prop :=
  ∀ n, P8411118416950263227.a n = A351309 (n + 1)

theorem P8411118416950263227.correct : P8411118416950263227.Spec := by
  intro n
  simp only [A351309, Nat.add_sub_cancel]

end A351309

/-!
# A351310: Sum of the 5th powers of the square divisors of n.

The programs for A351310, the canonical program `A351310.P1649813851265808387` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351310 has offset 1).

The definition of A351310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351310.P1504225818849668086

`A013958(A000188(n+1))`
-/

namespace A351310.P1504225818849668086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013958 (A000188 (n + 1)).toNat

end

end A351310.P1504225818849668086

namespace A351310

/-- `A013958(A000188(n+1))` -/
def P1504225818849668086.Spec : Prop :=
  ∀ n, P1504225818849668086.a n = A351310 (n + 1)

end A351310

/-! ## A351310.P6169432691113436267

`A013958(sqrt(A008833(n+1)))`
-/

namespace A351310.P6169432691113436267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013958 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A351310.P6169432691113436267

namespace A351310

/-- `A013958(sqrt(A008833(n+1)))` -/
def P6169432691113436267.Spec : Prop :=
  ∀ n, P6169432691113436267.a n = A351310 (n + 1)

end A351310

/-! ## A351310.P14168177726778242145

`A013958(root(A008833(n+1), 2))`
-/

namespace A351310.P14168177726778242145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013958 (SequenceMachineLib.roundAway ((A008833 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A351310.P14168177726778242145

namespace A351310

/-- `A013958(root(A008833(n+1), 2))` -/
def P14168177726778242145.Spec : Prop :=
  ∀ n, P14168177726778242145.a n = A351310 (n + 1)

end A351310

/-! ## A351310.P84798556560473706

`∑{d}[A000188(n+1), A008454(#)]`
-/

namespace A351310.P84798556560473706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008454 d

end

end A351310.P84798556560473706

namespace A351310

/-- `∑{d}[A000188(n+1), A008454(#)]` -/
def P84798556560473706.Spec : Prop :=
  ∀ n, P84798556560473706.a n = A351310 (n + 1)

end A351310

/-! ## A351310.P2511852909245920504

`∑{d}[A000188(n+1), A000584(#)²]`
-/

namespace A351310.P2511852909245920504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000584 d ^ 2

end

end A351310.P2511852909245920504

namespace A351310

/-- `∑{d}[A000188(n+1), A000584(#)²]` -/
def P2511852909245920504.Spec : Prop :=
  ∀ n, P2511852909245920504.a n = A351310 (n + 1)

end A351310

/-! ## A351310.P1649813851265808387

`A013958((n+1)/A019554(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A351310

/-- `A013958((n+1)/A019554(n+1))` -/
def P1649813851265808387.Spec : Prop :=
  ∀ n, P1649813851265808387.a n = A351310 (n + 1)

theorem P1649813851265808387.correct : P1649813851265808387.Spec := by
  intro n
  simp only [A351310, Nat.add_sub_cancel]

end A351310

/-! ## A351310.P3721901795974082993

`∑{d}[A000188(n+1), #*A001017(#)]`
-/

namespace A351310.P3721901795974082993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A001017 d

end

end A351310.P3721901795974082993

namespace A351310

/-- `∑{d}[A000188(n+1), #*A001017(#)]` -/
def P3721901795974082993.Spec : Prop :=
  ∀ n, P3721901795974082993.a n = A351310 (n + 1)

end A351310

/-!
# A351311: Sum of the 6th powers of the square divisors of n.

The programs for A351311, the canonical program `A351311.P6069674069945159635` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351311 has offset 1).

The definition of A351311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351311.P16755601342123202775

`A013960(A000188(n+1))`
-/

namespace A351311.P16755601342123202775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013960 (A000188 (n + 1)).toNat

end

end A351311.P16755601342123202775

namespace A351311

/-- `A013960(A000188(n+1))` -/
def P16755601342123202775.Spec : Prop :=
  ∀ n, P16755601342123202775.a n = A351311 (n + 1)

end A351311

/-! ## A351311.P10039057928547227623

`A013960(sqrt(A008833(n+1)))`
-/

namespace A351311.P10039057928547227623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013960 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A351311.P10039057928547227623

namespace A351311

/-- `A013960(sqrt(A008833(n+1)))` -/
def P10039057928547227623.Spec : Prop :=
  ∀ n, P10039057928547227623.a n = A351311 (n + 1)

end A351311

/-! ## A351311.P6069674069945159635

`A013960(A057918(n+1)+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A351311

/-- `A013960(A057918(n+1)+1)` -/
def P6069674069945159635.Spec : Prop :=
  ∀ n, P6069674069945159635.a n = A351311 (n + 1)

theorem P6069674069945159635.correct : P6069674069945159635.Spec := by
  intro n
  simp only [A351311, Nat.add_sub_cancel]

end A351311

/-! ## A351311.P13974293136942364725

`∑{d}[A000188(n+1), A001014(#)²]`
-/

namespace A351311.P13974293136942364725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001014 d ^ 2

end

end A351311.P13974293136942364725

namespace A351311

/-- `∑{d}[A000188(n+1), A001014(#)²]` -/
def P13974293136942364725.Spec : Prop :=
  ∀ n, P13974293136942364725.a n = A351311 (n + 1)

end A351311

/-! ## A351311.P3761183318548736481

`A013960((n+1)/A019554(n+1))`
-/

namespace A351311.P3761183318548736481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A351311.P3761183318548736481

namespace A351311

/-- `A013960((n+1)/A019554(n+1))` -/
def P3761183318548736481.Spec : Prop :=
  ∀ n, P3761183318548736481.a n = A351311 (n + 1)

end A351311

/-! ## A351311.P10795913210047543979

`∑{d}[A000188(n+1), A000578(#²)²]`
-/

namespace A351311.P10795913210047543979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000578 (d ^ 2) ^ 2

end

end A351311.P10795913210047543979

namespace A351311

/-- `∑{d}[A000188(n+1), A000578(#²)²]` -/
def P10795913210047543979.Spec : Prop :=
  ∀ n, P10795913210047543979.a n = A351311 (n + 1)

end A351311

/-! ## A351311.P8599633008078351339

`∑{d}[A000188(n+1), A059479(#²)²]`
-/

namespace A351311.P8599633008078351339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059479 (d ^ 2) ^ 2

end

end A351311.P8599633008078351339

namespace A351311

/-- `∑{d}[A000188(n+1), A059479(#²)²]` -/
def P8599633008078351339.Spec : Prop :=
  ∀ n, P8599633008078351339.a n = A351311 (n + 1)

end A351311

/-! ## A351311.P16006958072287946478

`∑{d}[sqrt(A008833(n+1)), A001014(#)²]`
-/

namespace A351311.P16006958072287946478
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001014 d ^ 2

end

end A351311.P16006958072287946478

namespace A351311

/-- `∑{d}[sqrt(A008833(n+1)), A001014(#)²]` -/
def P16006958072287946478.Spec : Prop :=
  ∀ n, P16006958072287946478.a n = A351311 (n + 1)

end A351311

/-! ## A351311.P643997297816819582

`A013960(A055229(n+1)*A056622(n+1))`
-/

namespace A351311.P643997297816819582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013960 (A055229 (n + 1) * A056622 (n + 1)).toNat

end

end A351311.P643997297816819582

namespace A351311

/-- `A013960(A055229(n+1)*A056622(n+1))` -/
def P643997297816819582.Spec : Prop :=
  ∀ n, P643997297816819582.a n = A351311 (n + 1)

end A351311

/-!
# A351313: Sum of the 7th powers of the square divisors of n.

The programs for A351313, the canonical program `A351313.P6473973491744442011` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351313 has offset 1).

The definition of A351313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351313.P6473973491744442011

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], #^14]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A351313

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], #^14]` -/
def P6473973491744442011.Spec : Prop :=
  ∀ n, (P6473973491744442011.a n : ℤ) = A351313 (n + 1)

theorem P6473973491744442011.correct : P6473973491744442011.Spec := by
  intro n
  simp only [A351313, Nat.add_sub_cancel]

end A351313

/-! ## A351313.P17624997023540503145

`∑{d}[A000188(n+1), #^14]`
-/

namespace A351313.P17624997023540503145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 14

end

end A351313.P17624997023540503145

namespace A351313

/-- `∑{d}[A000188(n+1), #^14]` -/
def P17624997023540503145.Spec : Prop :=
  ∀ n, (P17624997023540503145.a n : ℤ) = A351313 (n + 1)

end A351313

/-! ## A351313.P13856063136121855004

`∑{d}[A337101(2*(n+1)), #^14]`
-/

namespace A351313.P13856063136121855004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 14

end

end A351313.P13856063136121855004

namespace A351313

/-- `∑{d}[A337101(2*(n+1)), #^14]` -/
def P13856063136121855004.Spec : Prop :=
  ∀ n, (P13856063136121855004.a n : ℤ) = A351313 (n + 1)

end A351313

/-! ## A351313.P8793771030464492701

`A013962(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A351313.P8793771030464492701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013962 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A351313.P8793771030464492701

namespace A351313

/-- `A013962(∏{p}[n+1, #^val(n+1, #²)])` -/
def P8793771030464492701.Spec : Prop :=
  ∀ n, P8793771030464492701.a n = A351313 (n + 1)

end A351313

/-! ## A351313.P11312449137095014482

`∑{d}[sqrt(A008833(n+1)), A001015(#)²]`
-/

namespace A351313.P11312449137095014482
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001015 d ^ 2

end

end A351313.P11312449137095014482

namespace A351313

/-- `∑{d}[sqrt(A008833(n+1)), A001015(#)²]` -/
def P11312449137095014482.Spec : Prop :=
  ∀ n, P11312449137095014482.a n = A351313 (n + 1)

end A351313

/-! ## A351313.P5941094833390833012

`∑{d}[A197702(A008833(n+1)), A001015(#²)]`
-/

namespace A351313.P5941094833390833012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197702 (A008833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001015 (d ^ 2)

end

end A351313.P5941094833390833012

namespace A351313

/-- `∑{d}[A197702(A008833(n+1)), A001015(#²)]` -/
def P5941094833390833012.Spec : Prop :=
  ∀ n, P5941094833390833012.a n = A351313 (n + 1)

end A351313

/-!
# A351314: Sum of the 8th powers of the square divisors of n.

The programs for A351314, the canonical program `A351314.P2311720382662979141` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351314 has offset 1).

The definition of A351314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351314.P2311720382662979141

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], #^16]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A351314

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], #^16]` -/
def P2311720382662979141.Spec : Prop :=
  ∀ n, (P2311720382662979141.a n : ℤ) = A351314 (n + 1)

theorem P2311720382662979141.correct : P2311720382662979141.Spec := by
  intro n
  simp only [A351314, Nat.add_sub_cancel]

end A351314

/-! ## A351314.P14244644753759365500

`∑{d}[A000188(n+1), #^16]`
-/

namespace A351314.P14244644753759365500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 16

end

end A351314.P14244644753759365500

namespace A351314

/-- `∑{d}[A000188(n+1), #^16]` -/
def P14244644753759365500.Spec : Prop :=
  ∀ n, (P14244644753759365500.a n : ℤ) = A351314 (n + 1)

end A351314

/-! ## A351314.P15569559157492007389

`A013964(A000188(n+1))`
-/

namespace A351314.P15569559157492007389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013964 (A000188 (n + 1)).toNat

end

end A351314.P15569559157492007389

namespace A351314

/-- `A013964(A000188(n+1))` -/
def P15569559157492007389.Spec : Prop :=
  ∀ n, P15569559157492007389.a n = A351314 (n + 1)

end A351314

/-! ## A351314.P8676706749111274705

`A013964(sqrt(A008833(n+1)))`
-/

namespace A351314.P8676706749111274705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013964 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A351314.P8676706749111274705

namespace A351314

/-- `A013964(sqrt(A008833(n+1)))` -/
def P8676706749111274705.Spec : Prop :=
  ∀ n, P8676706749111274705.a n = A351314 (n + 1)

end A351314

/-! ## A351314.P8313113005143168926

`A013964((n+1)/A019554(n+1))`
-/

namespace A351314.P8313113005143168926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013964 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A351314.P8313113005143168926

namespace A351314

/-- `A013964((n+1)/A019554(n+1))` -/
def P8313113005143168926.Spec : Prop :=
  ∀ n, P8313113005143168926.a n = A351314 (n + 1)

end A351314

/-! ## A351314.P16395259369245108856

`A013964(A055229(n+1)*A056622(n+1))`
-/

namespace A351314.P16395259369245108856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013964 (A055229 (n + 1) * A056622 (n + 1)).toNat

end

end A351314.P16395259369245108856

namespace A351314

/-- `A013964(A055229(n+1)*A056622(n+1))` -/
def P16395259369245108856.Spec : Prop :=
  ∀ n, P16395259369245108856.a n = A351314 (n + 1)

end A351314

/-! ## A351314.P13822745034319722587

`∑{d}[A337101(2*(n+1)), A000583(A000583(#))]`
-/

namespace A351314.P13822745034319722587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000583 (A000583 d).toNat

end

end A351314.P13822745034319722587

namespace A351314

/-- `∑{d}[A337101(2*(n+1)), A000583(A000583(#))]` -/
def P13822745034319722587.Spec : Prop :=
  ∀ n, P13822745034319722587.a n = A351314 (n + 1)

end A351314

/-!
# A351315: Sum of the 9th powers of the square divisors of n.

The programs for A351315, the canonical program `A351315.P14474847983282266353` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351315 has offset 1).

The definition of A351315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351315.P17421054308407228789

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], #^18]`
-/

namespace A351315.P17421054308407228789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 18

end

end A351315.P17421054308407228789

namespace A351315

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], #^18]` -/
def P17421054308407228789.Spec : Prop :=
  ∀ n, (P17421054308407228789.a n : ℤ) = A351315 (n + 1)

end A351315

/-! ## A351315.P12791226714713038471

`A013966(A000188(n+1))`
-/

namespace A351315.P12791226714713038471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013966 (A000188 (n + 1)).toNat

end

end A351315.P12791226714713038471

namespace A351315

/-- `A013966(A000188(n+1))` -/
def P12791226714713038471.Spec : Prop :=
  ∀ n, P12791226714713038471.a n = A351315 (n + 1)

end A351315

/-! ## A351315.P17545038658222194025

`∑{d}[A000188(n+1), A010806(#)]`
-/

namespace A351315.P17545038658222194025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010806 d

end

end A351315.P17545038658222194025

namespace A351315

/-- `∑{d}[A000188(n+1), A010806(#)]` -/
def P17545038658222194025.Spec : Prop :=
  ∀ n, P17545038658222194025.a n = A351315 (n + 1)

end A351315

/-! ## A351315.P14474847983282266353

`∑{d}[n+1, A010806(A037213(#))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A351315

/-- `∑{d}[n+1, A010806(A037213(#))]` -/
def P14474847983282266353.Spec : Prop :=
  ∀ n, P14474847983282266353.a n = A351315 (n + 1)

theorem P14474847983282266353.correct : P14474847983282266353.Spec := by
  intro n
  simp only [A351315, Nat.add_sub_cancel]

end A351315

/-! ## A351315.P17700507036425577510

`∑{d}[A000188(n+1), A001017(#²)]`
-/

namespace A351315.P17700507036425577510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001017 (d ^ 2)

end

end A351315.P17700507036425577510

namespace A351315

/-- `∑{d}[A000188(n+1), A001017(#²)]` -/
def P17700507036425577510.Spec : Prop :=
  ∀ n, P17700507036425577510.a n = A351315 (n + 1)

end A351315

/-! ## A351315.P12672584915136674116

`∑{d}[sqrt(A008833(n+1)), A001017(#²)]`
-/

namespace A351315.P12672584915136674116
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001017 (d ^ 2)

end

end A351315.P12672584915136674116

namespace A351315

/-- `∑{d}[sqrt(A008833(n+1)), A001017(#²)]` -/
def P12672584915136674116.Spec : Prop :=
  ∀ n, P12672584915136674116.a n = A351315 (n + 1)

end A351315

/-! ## A351315.P8294391372456516410

`∑{d}[A000188(n+1), A000578(A000578(#))²]`
-/

namespace A351315.P8294391372456516410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000578 (A000578 d).toNat ^ 2

end

end A351315.P8294391372456516410

namespace A351315

/-- `∑{d}[A000188(n+1), A000578(A000578(#))²]` -/
def P8294391372456516410.Spec : Prop :=
  ∀ n, P8294391372456516410.a n = A351315 (n + 1)

end A351315

/-!
# A351316: Sum of the 10th powers of the square divisors of n.

The programs for A351316, the canonical program `A351316.P7050267471315010397` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351316 has offset 1).

The definition of A351316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351316.P7050267471315010397

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], #^20]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A351316

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], #^20]` -/
def P7050267471315010397.Spec : Prop :=
  ∀ n, (P7050267471315010397.a n : ℤ) = A351316 (n + 1)

theorem P7050267471315010397.correct : P7050267471315010397.Spec := by
  intro n
  simp only [A351316, Nat.add_sub_cancel]

end A351316

/-! ## A351316.P3644226734131363851

`∑{d}[A000188(n+1), #^20]`
-/

namespace A351316.P3644226734131363851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 20

end

end A351316.P3644226734131363851

namespace A351316

/-- `∑{d}[A000188(n+1), #^20]` -/
def P3644226734131363851.Spec : Prop :=
  ∀ n, (P3644226734131363851.a n : ℤ) = A351316 (n + 1)

end A351316

/-! ## A351316.P16800378830092868071

`A013968(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A351316.P16800378830092868071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013968 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A351316.P16800378830092868071

namespace A351316

/-- `A013968(∏{p}[n+1, #^val(n+1, #²)])` -/
def P16800378830092868071.Spec : Prop :=
  ∀ n, P16800378830092868071.a n = A351316 (n + 1)

end A351316

/-! ## A351316.P18341653060995333841

`A013968(A000188(n+1))`
-/

namespace A351316.P18341653060995333841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013968 (A000188 (n + 1)).toNat

end

end A351316.P18341653060995333841

namespace A351316

/-- `A013968(A000188(n+1))` -/
def P18341653060995333841.Spec : Prop :=
  ∀ n, P18341653060995333841.a n = A351316 (n + 1)

end A351316

/-! ## A351316.P12308954055707635889

`A013968(sqrt(A008833(n+1)))`
-/

namespace A351316.P12308954055707635889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013968 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A351316.P12308954055707635889

namespace A351316

/-- `A013968(sqrt(A008833(n+1)))` -/
def P12308954055707635889.Spec : Prop :=
  ∀ n, P12308954055707635889.a n = A351316 (n + 1)

end A351316

/-!
# A351319: a(n) = floor(n/k), where k is the nearest square to n.

The programs for A351319, there is no canonical definition to state claims against.
-/

/-! ## A351319.P11807474696085017837

`floor((n+1)/round(sqrt(n+1))²)`
-/

namespace A351319.P11807474696085017837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 : ℚ)⌋

end

end A351319.P11807474696085017837

/-! ## A351319.P15490598660183747454

`floor((n+1)/∑[char[∑[2*n]]]²)%7`
-/

namespace A351319.P15490598660183747454
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ)⌋ 7

end

end A351319.P15490598660183747454

/-! ## A351319.P12093450602503664729

`A267708(n+1)+char[1]`
-/

namespace A351319.P12093450602503664729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A351319.P12093450602503664729

/-! ## A351319.P12078525565199641409

`ceil(Δ[log2(A064788(n+1))])`
-/

namespace A351319.P12078525565199641409
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A064788 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A351319.P12078525565199641409

/-! ## A351319.P7786615410901673065

`A118175(comp[n²])+char[1]`
-/

namespace A351319.P7786615410901673065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A351319.P7786615410901673065

/-! ## A351319.P17754648094451018294

`ceil(ratio[A194280(n+1)])-1`
-/

namespace A351319.P17754648094451018294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ - 1

end

end A351319.P17754648094451018294

/-! ## A351319.P2457843433709540705

`A001221(ceil(ratio[A194280(n+1)])!)`
-/

namespace A351319.P2457843433709540705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat)

end

end A351319.P2457843433709540705

/-! ## A351319.P4514123910682479258

`A001222(ceil(ratio[A194280(n+1)])!)`
-/

namespace A351319.P4514123910682479258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat)

end

end A351319.P4514123910682479258

/-! ## A351319.P1136088232456435859

`A007318(C(2, n)²)*A267708(n+1)`
-/

namespace A351319.P1136088232456435859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n ^ 2) * A267708 (n + 1)

end

end A351319.P1136088232456435859

/-! ## A351319.P16805321775889897634

`A000010(C(2, n)+1)-A023969(n+1)`
-/

namespace A351319.P16805321775889897634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 2 n + 1) - A023969 (n + 1)

end

end A351319.P16805321775889897634

/-!
# A351322: Number T(n,k) of tilings of a 3k X n rectangle with right trominoes.

The programs for A351322, there is no canonical definition to state claims against.
-/

/-! ## A351322.P1456123632114845680

`A346773(A080510(n+1))%p?[A091186(n)]`
-/

namespace A351322.P1456123632114845680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346773 (A080510 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A351322.P1456123632114845680

/-! ## A351322.P14210917155944521146

`and(A039896(A347615(n)), A103462(n))`
-/

namespace A351322.P14210917155944521146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039896 (A347615 n).toNat) (A103462 n)

end

end A351322.P14210917155944521146

/-! ## A351322.P17576884362331670201

`A346773(A080510(n+1)^A055801(n))`
-/

namespace A351322.P17576884362331670201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346773 (SequenceMachineLib.roundAway ((A080510 (n + 1) : ℚ) ^ (A055801 n : ℤ))).toNat

end

end A351322.P17576884362331670201

/-! ## A351322.P15524900046290959838

`A346773(A080510(n+1)^A141169(n))`
-/

namespace A351322.P15524900046290959838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346773 (SequenceMachineLib.roundAway ((A080510 (n + 1) : ℚ) ^ (A141169 n : ℤ))).toNat

end

end A351322.P15524900046290959838

/-! ## A351322.P12722613913937740151

`A000120(A008300(n)*A333351(n))`
-/

namespace A351322.P12722613913937740151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008300 n * A333351 n).toNat

end

end A351322.P12722613913937740151

/-!
# A351323: Number of tilings of a 6 X n rectangle with right trominoes.

The programs for A351323, there is no canonical definition to state claims against.
-/

/-! ## A351323.P7549828151449489926

`A351322(∑[n+3])`
-/

namespace A351323.P7549828151449489926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351323.P7549828151449489926

/-! ## A351323.P11072853103837178334

`and(-1, A351322(A141214(n)))`
-/

namespace A351323.P11072853103837178334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A351322 (A141214 n).toNat)

end

end A351323.P11072853103837178334

/-! ## A351323.P8941092204441395765

`A351322(A141214(n))+A349399(n+5)`
-/

namespace A351323.P8941092204441395765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 (A141214 n).toNat + A349399 (n + 5)

end

end A351323.P8941092204441395765

/-! ## A351323.P365860340411490046

`A351322(A141214(n))%A001109(n+2)`
-/

namespace A351323.P365860340411490046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351322 (A141214 n).toNat) (A001109 (n + 2))

end

end A351323.P365860340411490046

/-! ## A351323.P585104368656780118

`A351322(A141214(n))+A077957(2*n+1)`
-/

namespace A351323.P585104368656780118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 (A141214 n).toNat + A077957 (2 * n + 1)

end

end A351323.P585104368656780118

/-!
# A351324: Number of tilings of a 7 X 3n rectangle with right trominoes.

The programs for A351324, there is no canonical definition to state claims against.
-/

/-! ## A351324.P18204928939296934301

`A351322(eq[7, A002262(n)])`
-/

namespace A351324.P18204928939296934301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351324.P18204928939296934301

/-! ## A351324.P13806013495141521734

`A351322(A000217(n+7)+7)`
-/

namespace A351324.P13806013495141521734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 (A000217 (n + 7) + 7).toNat

end

end A351324.P13806013495141521734

/-! ## A351324.P1601162067570115902

`A351322(eq[6, A002260(n+1)-2])`
-/

namespace A351324.P1601162067570115902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351324.P1601162067570115902

/-!
# A351328: a(n) is equal to the sum of the factorials of the digits of a(n-1), with a(1) = 0; each time a duplicated term appears, we replace it with the smallest integer not yet in the sequence and iterate.

The programs for A351328, there is no canonical definition to state claims against.
-/

/-! ## A351328.P2062509598079030804

`A061602(a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A351328.P2062509598079030804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  A061602 (a (n - 1)).toNat

end

end A351328.P2062509598079030804

/-! ## A351328.P10892888488994388316

`a(n-1)!` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A351328.P10892888488994388316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  Nat.factorial (a (n - 1))

end

end A351328.P10892888488994388316

/-!
# A351331: a(n) = (n+1)*(n^n) - n + 1.

The programs for A351331, there is no canonical definition to state claims against.
-/

/-! ## A351331.P9143331191394556264

`(n+2)*(n+1)^(n+1)-n`
-/

namespace A351331.P9143331191394556264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) ^ (n + 1) : ℤ) - (n : ℤ)

end

end A351331.P9143331191394556264

/-! ## A351331.P18180885127502074496

`abs(lcm(n+2, (n+1)^(n+1))-n)`
-/

namespace A351331.P18180885127502074496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm (n + 2) ((n + 1) ^ (n + 1)) : ℤ) - (n : ℤ)|

end

end A351331.P18180885127502074496

/-! ## A351331.P4019432157193304854

`abs(A055897(n+2)-n)`
-/

namespace A351331.P4019432157193304854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055897 (n + 2) - (n : ℤ)|

end

end A351331.P4019432157193304854

/-! ## A351331.P7170726004395016116

`record[Δ[A228154(n+1)]+1]`
-/

namespace A351331.P7170726004395016116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228154 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351331.P7170726004395016116

/-! ## A351331.P11519630708665766401

`Δ[A001923(n)+∑[A014293(n)]]`
-/

namespace A351331.P11519630708665766401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014293 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351331.P11519630708665766401

/-!
# A351336: Odd pseudoprimes to base 3; composite terms of A271116.

The programs for A351336, there is no canonical definition to state claims against.
-/

/-! ## A351336.P1963194000372120343

`∩[A005935(n+1), A271116(n+1)]`
-/

namespace A351336.P1963194000372120343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351336.P1963194000372120343

/-! ## A351336.P15333554705412423986

`∩[A020138(n+1), A271116(n+1)]`
-/

namespace A351336.P15333554705412423986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351336.P15333554705412423986

/-! ## A351336.P13075877241461358399

`∩[A263239(n+1), A271116(n+1)]`
-/

namespace A351336.P13075877241461358399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351336.P13075877241461358399

/-! ## A351336.P18442032469383076071

`filter[A005935(n+1), A187074(#)]`
-/

namespace A351336.P18442032469383076071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A351336.P18442032469383076071

/-! ## A351336.P10499739226696853691

`filter[A005935(n+1), A322980(#)]`
-/

namespace A351336.P10499739226696853691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A351336.P10499739226696853691

/-! ## A351336.P6474328233925137149

`filter[A005935(n+1), A355450(#)]`
-/

namespace A351336.P6474328233925137149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A351336.P6474328233925137149

/-! ## A351336.P6254948394600247117

`filter[A005935(n+1), A372573(#)]`
-/

namespace A351336.P6254948394600247117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A351336.P6254948394600247117

/-! ## A351336.P5204177624969840871

`filter[A005935(n+1), A372574(#)]`
-/

namespace A351336.P5204177624969840871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A351336.P5204177624969840871

/-! ## A351336.P252664051585583419

`filter[A005935(n+1), A373136(#)]`
-/

namespace A351336.P252664051585583419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A351336.P252664051585583419

/-! ## A351336.P7096790902276063272

`filter[A005935(n+1), A373155(#)]`
-/

namespace A351336.P7096790902276063272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A351336.P7096790902276063272

/-!
# A351339: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) is Sum_{j=0..n} k^j * j^(n-j).

The programs for A351339, there is no canonical definition to state claims against.
-/

/-! ## A351339.P2611488788198478878

`A089311(A094544(n))+A085388(n+1)`
-/

namespace A351339.P2611488788198478878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A094544 n).toNat + A085388 (n + 1)

end

end A351339.P2611488788198478878

/-! ## A351339.P9361619971737788080

`A151795(A060475(n))+A085388(n+1)`
-/

namespace A351339.P9361619971737788080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (A060475 n).toNat + A085388 (n + 1)

end

end A351339.P9361619971737788080

/-! ## A351339.P4645655495169611784

`A085388(n+1)+A025469(A256116(n))`
-/

namespace A351339.P4645655495169611784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085388 (n + 1) + A025469 (A256116 n).toNat

end

end A351339.P4645655495169611784

/-! ## A351339.P2369471033513547638

`A185284(A163238(n))+A085388(n+1)`
-/

namespace A351339.P2369471033513547638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A163238 n).toNat + A085388 (n + 1)

end

end A351339.P2369471033513547638

/-! ## A351339.P10813238417235327740

`A274719(A380860(n))+A085388(n+1)`
-/

namespace A351339.P10813238417235327740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (A380860 n).toNat + A085388 (n + 1)

end

end A351339.P10813238417235327740

/-!
# A351340: a(n) = Sum_{k=0..n} n^k * k^(n-k).

The programs for A351340, there is no canonical definition to state claims against.
-/

/-! ## A351340.P6903014269243312114

`A351339(∑[4*n])`
-/

namespace A351340.P6903014269243312114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351339 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351340.P6903014269243312114

/-! ## A351340.P15904210369509645616

`gcd(C(2, n+2), A351339(A046092(n)))`
-/

namespace A351340.P15904210369509645616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A351339 (A046092 n).toNat)

end

end A351340.P15904210369509645616

/-! ## A351340.P3959491202561561947

`A351339((n+1)*2*n)+A007814(2*n+5)`
-/

namespace A351340.P3959491202561561947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351339 ((n + 1) * (2 * n)) + A007814 (2 * n + 5)

end

end A351340.P3959491202561561947

/-!
# A351342: G.f. A(x) satisfies: A(x) = 1 + x + x^2 + x^3 * A(x/(1 - 2*x)) / (1 - 2*x).

The programs for A351342, there is no canonical definition to state claims against.
-/

/-! ## A351342.P1322389042454915325

`or(1, Δ[A254011(A051354(n))])`
-/

namespace A351342.P1322389042454915325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (A051354 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A351342.P1322389042454915325

/-! ## A351342.P14255824363174350303

`or(1, A008617(A007718(n+1)))`
-/

namespace A351342.P14255824363174350303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008617 (A007718 (n + 1)).toNat)

end

end A351342.P14255824363174350303

/-! ## A351342.P18395392489451588414

`or(1, A008617(record[A321194(n+1)]))`
-/

namespace A351342.P18395392489451588414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008617 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A351342.P18395392489451588414

/-! ## A351342.P8471536302375350275

`A194640(A120588(n)-A025428(n))`
-/

namespace A351342.P8471536302375350275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A120588 n - A025428 n).toNat

end

end A351342.P8471536302375350275

/-! ## A351342.P9368768307641221059

`A194640(A120588(n)-A025460(n))`
-/

namespace A351342.P9368768307641221059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A120588 n - A025460 n).toNat

end

end A351342.P9368768307641221059

/-!
# A351343: G.f. A(x) satisfies: A(x) = 1 + x + x^2 + x^3 + x^4 * A(x/(1 - 2*x)) / (1 - 2*x).

The programs for A351343, there is no canonical definition to state claims against.
-/

/-! ## A351343.P7917176576193534168

`or(1, A105519(A092566(n)))`
-/

namespace A351343.P7917176576193534168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A105519 (A092566 n).toNat)

end

end A351343.P7917176576193534168

/-! ## A351343.P4668162231038420038

`A131507(A085372(n)-A279214(n))`
-/

namespace A351343.P4668162231038420038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A085372 n - A279214 n).toNat

end

end A351343.P4668162231038420038

/-! ## A351343.P5199426916798839697

`A131507(A085372(n)*A320278(n))`
-/

namespace A351343.P5199426916798839697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A085372 n * A320278 n).toNat

end

end A351343.P5199426916798839697

/-! ## A351343.P13396122971988489981

`A131507(A085372(n)%A000111(n))`
-/

namespace A351343.P13396122971988489981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (Int.tmod (A085372 n) (A000111 n)).toNat

end

end A351343.P13396122971988489981

/-! ## A351343.P15460931479106136143

`gcd(A085356(n), A131507(A085372(n)))`
-/

namespace A351343.P15460931479106136143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085356 n) (A131507 (A085372 n).toNat)

end

end A351343.P15460931479106136143

/-!
# A351344: G.f. A(x) satisfies: A(x) = 1 + x + x^2 + x^3 + x^4 + x^5 * A(x/(1 - 2*x)) / (1 - 2*x).

The programs for A351344, there is no canonical definition to state claims against.
-/

/-! ## A351344.P3343968476603236703

`or(A093411(A326339(n)), A194673(n))`
-/

namespace A351344.P3343968476603236703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A093411 (A326339 n).toNat) (A194673 n)

end

end A351344.P3343968476603236703

/-! ## A351344.P249006344042840349

`A028234(∏[round(sqrt(n+1))])`
-/

namespace A351344.P249006344042840349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A351344.P249006344042840349

/-! ## A351344.P13074035831003263204

`A038500(∏[round(sqrt(n+1))])`
-/

namespace A351344.P13074035831003263204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A351344.P13074035831003263204

/-! ## A351344.P17951062190833405393

`A252463(5^∑[floor(n/6)])`
-/

namespace A351344.P17951062190833405393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A351344.P17951062190833405393

/-! ## A351344.P9956575752743247670

`A000190(3^round((1-n)²/11))`
-/

namespace A351344.P9956575752743247670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (SequenceMachineLib.roundAway (((1 - (n : ℤ)) ^ 2 : ℚ) / 11) : ℤ))).toNat

end

end A351344.P9956575752743247670

/-!
# A351345: G.f. A(x) satisfies: A(x) = 1 + x + x^2 + x^3 + x^4 + x^5 + x^6 * A(x/(1 - 2*x)) / (1 - 2*x).

The programs for A351345, there is no canonical definition to state claims against.
-/

/-! ## A351345.P6681270075477582500

`3^A275024(∏[∑[char[7*n]]])`
-/

namespace A351345.P6681270075477582500
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A275024 (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A351345.P6681270075477582500

/-! ## A351345.P536211025329037660

`gcd(floor(3^(n-1)), ∏[A336290(n)])`
-/

namespace A351345.P536211025329037660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A351345.P536211025329037660

/-! ## A351345.P14564596042445772301

`∏[or(1, floor(n/π))]%A137390(n+1)`
-/

namespace A351345.P14564596042445772301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℝ) / Real.pi⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A137390 (n + 1))

end

end A351345.P14564596042445772301

/-! ## A351345.P15555741393372332487

`A294370(A023423(n))`
-/

namespace A351345.P15555741393372332487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294370 (A023423 n).toNat

end

end A351345.P15555741393372332487

/-! ## A351345.P14834810659406359523

`A294370(A275073(n))`
-/

namespace A351345.P14834810659406359523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294370 (A275073 n).toNat

end

end A351345.P14834810659406359523

/-!
# A351346: Dirichlet g.f.: Product_{p prime} 1 / (1 - 2*p^(-s) - p^(-2*s)).

The programs for A351346, the canonical program `A351346.P16581531357157592439` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351346 has offset 1).

The definition of A351346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351346.P16581531357157592439

`∏{e}[n+1, A135153(#+2+#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A351346

/-- `∏{e}[n+1, A135153(#+2+#)]` -/
def P16581531357157592439.Spec : Prop :=
  ∀ n, P16581531357157592439.a n = A351346 (n + 1)

theorem P16581531357157592439.correct : P16581531357157592439.Spec := by
  intro n
  simp only [A351346, Nat.add_sub_cancel]

end A351346

/-! ## A351346.P7661778229285089912

`∏{e}[n+1, A002965(A103517(#))]`
-/

namespace A351346.P7661778229285089912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A002965 (A103517 (Nat.factorization (f1 n) p)).toNat

end

end A351346.P7661778229285089912

namespace A351346

/-- `∏{e}[n+1, A002965(A103517(#))]` -/
def P7661778229285089912.Spec : Prop :=
  ∀ n, P7661778229285089912.a n = A351346 (n + 1)

end A351346

/-! ## A351346.P12178423375223404258

`∏{e}[n+1, A245565(A000225(#))]`
-/

namespace A351346.P12178423375223404258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A245565 (A000225 (Nat.factorization (f1 n) p)).toNat

end

end A351346.P12178423375223404258

namespace A351346

/-- `∏{e}[n+1, A245565(A000225(#))]` -/
def P12178423375223404258.Spec : Prop :=
  ∀ n, P12178423375223404258.a n = A351346 (n + 1)

end A351346

/-! ## A351346.P2234465085582654374

`∏{e}[A064549(n+1), A000129(#)]`
-/

namespace A351346.P2234465085582654374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000129 (Nat.factorization (f1 n).natAbs p)

end

end A351346.P2234465085582654374

namespace A351346

/-- `∏{e}[A064549(n+1), A000129(#)]` -/
def P2234465085582654374.Spec : Prop :=
  ∀ n, P2234465085582654374.a n = A351346 (n + 1)

end A351346

/-! ## A351346.P10690416924817948835

`∏{e}[A064549(n+1), A215928(#)]`
-/

namespace A351346.P10690416924817948835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A215928 (Nat.factorization (f1 n).natAbs p)

end

end A351346.P10690416924817948835

namespace A351346

/-- `∏{e}[A064549(n+1), A215928(#)]` -/
def P10690416924817948835.Spec : Prop :=
  ∀ n, P10690416924817948835.a n = A351346 (n + 1)

end A351346

/-! ## A351346.P3715327473338737384

`A245565(A322993(n+1))`
-/

namespace A351346.P3715327473338737384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245565 (A322993 (n + 1)).toNat

end

end A351346.P3715327473338737384

namespace A351346

/-- `A245565(A322993(n+1))` -/
def P3715327473338737384.Spec : Prop :=
  ∀ n, P3715327473338737384.a n = A351346 (n + 1)

end A351346

/-!
# A351347: Dirichlet g.f.: Product_{p prime} 1 / (1 - p^(-s) - 2*p^(-2*s)).

The programs for A351347, the canonical program `A351347.P9055905562085997896` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351347 has offset 1).

The definition of A351347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351347.P9055905562085997896

`∏{e}[n+1, A004396(A000079(#))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A351347

/-- `∏{e}[n+1, A004396(A000079(#))]` -/
def P9055905562085997896.Spec : Prop :=
  ∀ n, P9055905562085997896.a n = A351347 (n + 1)

theorem P9055905562085997896.correct : P9055905562085997896.Spec := by
  intro n
  simp only [A351347, Nat.add_sub_cancel]

end A351347

/-! ## A351347.P4044434030386183055

`∏{e}[n+1, A004396(A220051(#))]`
-/

namespace A351347.P4044434030386183055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A004396 (A220051 (Nat.factorization (f1 n) p)).toNat

end

end A351347.P4044434030386183055

namespace A351347

/-- `∏{e}[n+1, A004396(A220051(#))]` -/
def P4044434030386183055.Spec : Prop :=
  ∀ n, P4044434030386183055.a n = A351347 (n + 1)

end A351347

/-! ## A351347.P2419638587763159915

`abs(∑{d}[A046523(n+1), A165872(#)])`
-/

namespace A351347.P2419638587763159915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n).natAbs, A165872 d|

end

end A351347.P2419638587763159915

namespace A351347

/-- `abs(∑{d}[A046523(n+1), A165872(#)])` -/
def P2419638587763159915.Spec : Prop :=
  ∀ n, P2419638587763159915.a n = A351347 (n + 1)

end A351347

/-! ## A351347.P3277362923423978200

`∏{e}[A046523(n+1), abs(A077925(#))]`
-/

namespace A351347.P3277362923423978200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, |A077925 (Nat.factorization (f1 n).natAbs p)|

end

end A351347.P3277362923423978200

namespace A351347

/-- `∏{e}[A046523(n+1), abs(A077925(#))]` -/
def P3277362923423978200.Spec : Prop :=
  ∀ n, P3277362923423978200.a n = A351347 (n + 1)

end A351347

/-! ## A351347.P17242512507157451256

`∑{d}[n+1, A008836(#)*A061142((n+1)/#)]`
-/

namespace A351347.P17242512507157451256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A061142 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351347.P17242512507157451256

namespace A351347

/-- `∑{d}[n+1, A008836(#)*A061142((n+1)/#)]` -/
def P17242512507157451256.Spec : Prop :=
  ∀ n, P17242512507157451256.a n = A351347 (n + 1)

end A351347

/-! ## A351347.P6472403718905999

`∑{d}[n+1, A158522(#)*A182139((n+1)/#)]`
-/

namespace A351347.P6472403718905999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A182139 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351347.P6472403718905999

namespace A351347

/-- `∑{d}[n+1, A158522(#)*A182139((n+1)/#)]` -/
def P6472403718905999.Spec : Prop :=
  ∀ n, P6472403718905999.a n = A351347 (n + 1)

end A351347

/-! ## A351347.P5942159399308333571

`∏{e}[n+1, A008611(A198633(#))]`
-/

namespace A351347.P5942159399308333571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008611 (A198633 (Nat.factorization (f1 n) p)).toNat

end

end A351347.P5942159399308333571

namespace A351347

/-- `∏{e}[n+1, A008611(A198633(#))]` -/
def P5942159399308333571.Spec : Prop :=
  ∀ n, P5942159399308333571.a n = A351347 (n + 1)

end A351347

/-! ## A351347.P3185964936174121836

`A071053(A292380(n+1))`
-/

namespace A351347.P3185964936174121836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (A292380 (n + 1)).toNat

end

end A351347.P3185964936174121836

namespace A351347

/-- `A071053(A292380(n+1))` -/
def P3185964936174121836.Spec : Prop :=
  ∀ n, P3185964936174121836.a n = A351347 (n + 1)

end A351347

/-! ## A351347.P11724688792917973844

`∏{e}[A064549(n+1), A001045(#)]`
-/

namespace A351347.P11724688792917973844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001045 (Nat.factorization (f1 n).natAbs p)

end

end A351347.P11724688792917973844

namespace A351347

/-- `∏{e}[A064549(n+1), A001045(#)]` -/
def P11724688792917973844.Spec : Prop :=
  ∀ n, P11724688792917973844.a n = A351347 (n + 1)

end A351347

/-! ## A351347.P11598036779037534186

`∏{e}[∑[A005408(n)], A135318(#)]`
-/

namespace A351347.P11598036779037534186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A135318 (Nat.factorization (f1 n).natAbs p)

end

end A351347.P11598036779037534186

namespace A351347

/-- `∏{e}[∑[A005408(n)], A135318(#)]` -/
def P11598036779037534186.Spec : Prop :=
  ∀ n, P11598036779037534186.a n = A351347 (n + 1)

end A351347

/-!
# A351348: Dirichlet g.f.: Product_{p prime} (1 + 2*p^(-s)) / (1 - p^(-s) - p^(-2*s)).

The programs for A351348, the canonical program `A351348.P5609391454707143201` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351348 has offset 1).

The definition of A351348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351348.P5609391454707143201

`∏{e}[n+1, round(ϕ^(#+1))]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A351348

/-- `∏{e}[n+1, round(ϕ^(#+1))]` -/
def P5609391454707143201.Spec : Prop :=
  ∀ n, P5609391454707143201.a n = A351348 (n + 1)

theorem P5609391454707143201.correct : P5609391454707143201.Spec := by
  intro n
  simp only [A351348, Nat.add_sub_cancel]

end A351348

/-! ## A351348.P17533893248247396645

`∑{d}[n+1, A074823(#)*A351219((n+1)/#)]`
-/

namespace A351348.P17533893248247396645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074823 d * A351219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351348.P17533893248247396645

namespace A351348

/-- `∑{d}[n+1, A074823(#)*A351219((n+1)/#)]` -/
def P17533893248247396645.Spec : Prop :=
  ∀ n, P17533893248247396645.a n = A351348 (n + 1)

end A351348

/-! ## A351348.P2678661076253285812

`A246011(A322993(n+1))`
-/

namespace A351348.P2678661076253285812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246011 (A322993 (n + 1)).toNat

end

end A351348.P2678661076253285812

namespace A351348

/-- `A246011(A322993(n+1))` -/
def P2678661076253285812.Spec : Prop :=
  ∀ n, P2678661076253285812.a n = A351348 (n + 1)

end A351348

/-! ## A351348.P4395038813623680897

`A246011(A156552(n+1))`
-/

namespace A351348.P4395038813623680897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246011 (A156552 (n + 1)).toNat

end

end A351348.P4395038813623680897

namespace A351348

/-- `A246011(A156552(n+1))` -/
def P4395038813623680897.Spec : Prop :=
  ∀ n, P4395038813623680897.a n = A351348 (n + 1)

end A351348

/-! ## A351348.P16784240528149631793

`A246011(A332816(n+1))`
-/

namespace A351348.P16784240528149631793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246011 (A332816 (n + 1)).toNat

end

end A351348.P16784240528149631793

namespace A351348

/-- `A246011(A332816(n+1))` -/
def P16784240528149631793.Spec : Prop :=
  ∀ n, P16784240528149631793.a n = A351348 (n + 1)

end A351348

/-!
# A351351: Numerator of the square of the radius of the largest circle, centered at the origin, around which a Racetrack car (using von Neumann neighborhood) can run a full lap in n steps.

The programs for A351351, there is no canonical definition to state claims against.
-/

/-! ## A351351.P17313425966186596441

`filter[A358636(n+1), A354199(#)]`
-/

namespace A351351.P17313425966186596441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354199 (f1 j).toNat = 1) n)

end

end A351351.P17313425966186596441

/-! ## A351351.P2316053639759228307

`A222254(A171818(n)^A004525(n))`
-/

namespace A351351.P2316053639759228307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (SequenceMachineLib.roundAway ((A171818 n : ℚ) ^ (A004525 n : ℤ))).toNat

end

end A351351.P2316053639759228307

/-!
# A351353: Numbers k such that k^2 is a centered 40-gonal number.

The programs for A351353, the canonical program `A351353.P13445924526858251388` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351353 has offset 1).

The definition of A351353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351353.P13445924526858251388

`a(n-1)+18*a(n-2)-18*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=11, a(2)=29, a(3)=199, a(4)=521`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A351353

/-- `a(n-1)+18*a(n-2)-18*a(n-3)-a(n-4)+a(n-5)` -/
def P13445924526858251388.Spec : Prop :=
  ∀ n, P13445924526858251388.a n = A351353 (n + 1)

theorem P13445924526858251388.correct : P13445924526858251388.Spec := by
  intro n
  simp only [A351353, Nat.add_sub_cancel]

end A351353

/-! ## A351353.P5401603180098866059

`A000032(A007310(n+1))`
-/

namespace A351353.P5401603180098866059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A007310 (n + 1)).toNat

end

end A351353.P5401603180098866059

namespace A351353

/-- `A000032(A007310(n+1))` -/
def P5401603180098866059.Spec : Prop :=
  ∀ n, P5401603180098866059.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P12249688597278720750

`2*A077262(n)+1`
-/

namespace A351353.P12249688597278720750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077262 n + 1

end

end A351353.P12249688597278720750

namespace A351353

/-- `2*A077262(n)+1` -/
def P12249688597278720750.Spec : Prop :=
  ∀ n, P12249688597278720750.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P5305283993063646876

`A000032(or(1, 3*n+1))`
-/

namespace A351353.P5305283993063646876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.lor 1 (3 * n + 1))

end

end A351353.P5305283993063646876

namespace A351353

/-- `A000032(or(1, 3*n+1))` -/
def P5305283993063646876.Spec : Prop :=
  ∀ n, P5305283993063646876.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P10394239411710770157

`A000032(lt[3*n, lcm(6, n)])`
-/

namespace A351353.P10394239411710770157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A351353.P10394239411710770157

namespace A351353

/-- `A000032(lt[3*n, lcm(6, n)])` -/
def P10394239411710770157.Spec : Prop :=
  ∀ n, P10394239411710770157.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P5960330197688153411

`A000032(2-or(1, -3*n))`
-/

namespace A351353.P5960330197688153411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 - Int.lor 1 (-(3 * n : ℤ))).toNat

end

end A351353.P5960330197688153411

namespace A351353

/-- `A000032(2-or(1, -3*n))` -/
def P5960330197688153411.Spec : Prop :=
  ∀ n, P5960330197688153411.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P12203644003564241125

`A000032(gcd(2, n+1)+3*n)`
-/

namespace A351353.P12203644003564241125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.gcd 2 (n + 1) + 3 * n)

end

end A351353.P12203644003564241125

namespace A351353

/-- `A000032(gcd(2, n+1)+3*n)` -/
def P12203644003564241125.Spec : Prop :=
  ∀ n, P12203644003564241125.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P6009824200645375955

`A000032(or(1, n+1)+n+n)`
-/

namespace A351353.P6009824200645375955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.lor 1 (n + 1) + n + n)

end

end A351353.P6009824200645375955

namespace A351353

/-- `A000032(or(1, n+1)+n+n)` -/
def P6009824200645375955.Spec : Prop :=
  ∀ n, P6009824200645375955.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P7107926245252044590

`A000032(∑[2*and(1, n)+2]-1)`
-/

namespace A351353.P7107926245252044590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A351353.P7107926245252044590

namespace A351353

/-- `A000032(∑[2*and(1, n)+2]-1)` -/
def P7107926245252044590.Spec : Prop :=
  ∀ n, P7107926245252044590.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P9490907717093555889

`A000032(∑[(2*n+1)%4]+n)`
-/

namespace A351353.P9490907717093555889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A351353.P9490907717093555889

namespace A351353

/-- `A000032(∑[(2*n+1)%4]+n)` -/
def P9490907717093555889.Spec : Prop :=
  ∀ n, P9490907717093555889.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P6402673990551055958

`A000032(∑[3/a(n-1)]+n)` with `a(0)=1`
-/

namespace A351353.P6402673990551055958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ))).toNat

end

end A351353.P6402673990551055958

namespace A351353

/-- `A000032(∑[3/a(n-1)]+n)` -/
def P6402673990551055958.Spec : Prop :=
  ∀ n, P6402673990551055958.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P2326620460207861222

`A000032(and(1, n)+2*n+1+n)`
-/

namespace A351353.P2326620460207861222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.land 1 n + (2 * n + 1 + n))

end

end A351353.P2326620460207861222

namespace A351353

/-- `A000032(and(1, n)+2*n+1+n)` -/
def P2326620460207861222.Spec : Prop :=
  ∀ n, P2326620460207861222.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P4995043991353906150

`A000032(∑[2*gcd(n-1, 2*n)]-1)`
-/

namespace A351353.P4995043991353906150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd ((n : ℤ) - 1) (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A351353.P4995043991353906150

namespace A351353

/-- `A000032(∑[2*gcd(n-1, 2*n)]-1)` -/
def P4995043991353906150.Spec : Prop :=
  ∀ n, P4995043991353906150.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P16201104950045399156

`A000032(Δ[floor(n²/2)]+2*n+1)`
-/

namespace A351353.P16201104950045399156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n + (2 * n + 1 : ℤ)).toNat

end

end A351353.P16201104950045399156

namespace A351353

/-- `A000032(Δ[floor(n²/2)]+2*n+1)` -/
def P16201104950045399156.Spec : Prop :=
  ∀ n, P16201104950045399156.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P13209583391763908214

`A002878(A007494(n))`
-/

namespace A351353.P13209583391763908214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (A007494 n).toNat

end

end A351353.P13209583391763908214

namespace A351353

/-- `A002878(A007494(n))` -/
def P13209583391763908214.Spec : Prop :=
  ∀ n, P13209583391763908214.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P15051560243633176331

`A014447(A014601(n))`
-/

namespace A351353.P15051560243633176331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014447 (A014601 n).toNat

end

end A351353.P15051560243633176331

namespace A351353

/-- `A014447(A014601(n))` -/
def P15051560243633176331.Spec : Prop :=
  ∀ n, P15051560243633176331.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P12841849461486720721

`A142718(A114119(n))`
-/

namespace A351353.P12841849461486720721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142718 (A114119 n).toNat

end

end A351353.P12841849461486720721

namespace A351353

/-- `A142718(A114119(n))` -/
def P12841849461486720721.Spec : Prop :=
  ∀ n, P12841849461486720721.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P12236652099572722153

`A075193(A047233(n+1))`
-/

namespace A351353.P12236652099572722153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 (A047233 (n + 1)).toNat

end

end A351353.P12236652099572722153

namespace A351353

/-- `A075193(A047233(n+1))` -/
def P12236652099572722153.Spec : Prop :=
  ∀ n, P12236652099572722153.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P3233802699606885715

`A142718(A007494(n+1))`
-/

namespace A351353.P3233802699606885715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142718 (A007494 (n + 1)).toNat

end

end A351353.P3233802699606885715

namespace A351353

/-- `A142718(A007494(n+1))` -/
def P3233802699606885715.Spec : Prop :=
  ∀ n, P3233802699606885715.a n = A351353 (n + 1)

end A351353

/-! ## A351353.P5980743031068591615

`A115339(A091999(n+1))`
-/

namespace A351353.P5980743031068591615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A091999 (n + 1)).toNat

end

end A351353.P5980743031068591615

namespace A351353

/-- `A115339(A091999(n+1))` -/
def P5980743031068591615.Spec : Prop :=
  ∀ n, P5980743031068591615.a n = A351353 (n + 1)

end A351353

/-!
# A351354: Numbers k such that the k-th centered 40-gonal numbers (A195317) is a square.

The programs for A351354, the canonical program `A351354.P2002835541238274344` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351354 has offset 1).

The definition of A351354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351354.P379856868839144048

`A077259(n)+1`
-/

namespace A351354.P379856868839144048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077259 n + 1

end

end A351354.P379856868839144048

namespace A351354

/-- `A077259(n)+1` -/
def P379856868839144048.Spec : Prop :=
  ∀ n, P379856868839144048.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P2002835541238274344

`a(n-1)+18*a(n-2)-18*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=45, a(4)=117`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A351354

/-- `a(n-1)+18*a(n-2)-18*a(n-3)-a(n-4)+a(n-5)` -/
def P2002835541238274344.Spec : Prop :=
  ∀ n, P2002835541238274344.a n = A351354 (n + 1)

theorem P2002835541238274344.correct : P2002835541238274344.Spec := by
  intro n
  simp only [A351354, Nat.add_sub_cancel]

end A351354

/-! ## A351354.P16385090752563642181

`A087953(A007494(n))`
-/

namespace A351354.P16385090752563642181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087953 (A007494 n).toNat

end

end A351354.P16385090752563642181

namespace A351354

/-- `A087953(A007494(n))` -/
def P16385090752563642181.Spec : Prop :=
  ∀ n, P16385090752563642181.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P4354188367982552686

`A107857(A042948(n+1))`
-/

namespace A351354.P4354188367982552686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107857 (A042948 (n + 1)).toNat

end

end A351354.P4354188367982552686

namespace A351354

/-- `A107857(A042948(n+1))` -/
def P4354188367982552686.Spec : Prop :=
  ∀ n, P4354188367982552686.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P6352501041432079956

`A147997(A007310(n+1))`
-/

namespace A351354.P6352501041432079956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (A007310 (n + 1)).toNat

end

end A351354.P6352501041432079956

namespace A351354

/-- `A147997(A007310(n+1))` -/
def P6352501041432079956.Spec : Prop :=
  ∀ n, P6352501041432079956.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P12580320127715759286

`A087953(A267528(n+1))`
-/

namespace A351354.P12580320127715759286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087953 (A267528 (n + 1)).toNat

end

end A351354.P12580320127715759286

namespace A351354

/-- `A087953(A267528(n+1))` -/
def P12580320127715759286.Spec : Prop :=
  ∀ n, P12580320127715759286.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P2639646288849988359

`A107857(A338062(n+1))`
-/

namespace A351354.P2639646288849988359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107857 (A338062 (n + 1)).toNat

end

end A351354.P2639646288849988359

namespace A351354

/-- `A107857(A338062(n+1))` -/
def P2639646288849988359.Spec : Prop :=
  ∀ n, P2639646288849988359.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P16260259756542848335

`A173173(A038179(n+2))`
-/

namespace A351354.P16260259756542848335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (A038179 (n + 2)).toNat

end

end A351354.P16260259756542848335

namespace A351354

/-- `A173173(A038179(n+2))` -/
def P16260259756542848335.Spec : Prop :=
  ∀ n, P16260259756542848335.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P14977820247084332364

`A087953(A294732(n+2))`
-/

namespace A351354.P14977820247084332364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087953 (A294732 (n + 2)).toNat

end

end A351354.P14977820247084332364

namespace A351354

/-- `A087953(A294732(n+2))` -/
def P14977820247084332364.Spec : Prop :=
  ∀ n, P14977820247084332364.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P12895646626260556820

`∑[A059973(A014601(n))]+1`
-/

namespace A351354.P12895646626260556820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059973 (A014601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A351354.P12895646626260556820

namespace A351354

/-- `∑[A059973(A014601(n))]+1` -/
def P12895646626260556820.Spec : Prop :=
  ∀ n, P12895646626260556820.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P14191870916886056327

`record[A004695(A051724(n))+1]`
-/

namespace A351354.P14191870916886056327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (A051724 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351354.P14191870916886056327

namespace A351354

/-- `record[A004695(A051724(n))+1]` -/
def P14191870916886056327.Spec : Prop :=
  ∀ n, P14191870916886056327.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P3775987238522950627

`A173673(A091999(n+1)+1)`
-/

namespace A351354.P3775987238522950627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A091999 (n + 1) + 1).toNat

end

end A351354.P3775987238522950627

namespace A351354

/-- `A173673(A091999(n+1)+1)` -/
def P3775987238522950627.Spec : Prop :=
  ∀ n, P3775987238522950627.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P4489092712299054356

`A293014(A047241(n+2))+1`
-/

namespace A351354.P4489092712299054356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (A047241 (n + 2)).toNat + 1

end

end A351354.P4489092712299054356

namespace A351354

/-- `A293014(A047241(n+2))+1` -/
def P4489092712299054356.Spec : Prop :=
  ∀ n, P4489092712299054356.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P7109034193546373533

`A107857(A042964(n+2)-2)`
-/

namespace A351354.P7109034193546373533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107857 (A042964 (n + 2) - 2).toNat

end

end A351354.P7109034193546373533

namespace A351354

/-- `A107857(A042964(n+2)-2)` -/
def P7109034193546373533.Spec : Prop :=
  ∀ n, P7109034193546373533.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P302514245810977040

`A173433(A047241(n+2)-2)`
-/

namespace A351354.P302514245810977040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173433 (A047241 (n + 2) - 2).toNat

end

end A351354.P302514245810977040

namespace A351354

/-- `A173433(A047241(n+2)-2)` -/
def P302514245810977040.Spec : Prop :=
  ∀ n, P302514245810977040.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P12801106634849034913

`A004695(or(1, A016777(n)))+1`
-/

namespace A351354.P12801106634849034913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (Int.lor 1 (A016777 n)).toNat + 1

end

end A351354.P12801106634849034913

namespace A351354

/-- `A004695(or(1, A016777(n)))+1` -/
def P12801106634849034913.Spec : Prop :=
  ∀ n, P12801106634849034913.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P169608396671455793

`A004695(or(1, A180713(n)))+1`
-/

namespace A351354.P169608396671455793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (Int.lor 1 (A180713 n)).toNat + 1

end

end A351354.P169608396671455793

namespace A351354

/-- `A004695(or(1, A180713(n)))+1` -/
def P169608396671455793.Spec : Prop :=
  ∀ n, P169608396671455793.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P7906452222890818376

`A201864(or(1, A016777(n)))+1`
-/

namespace A351354.P7906452222890818376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (Int.lor 1 (A016777 n)).toNat + 1

end

end A351354.P7906452222890818376

namespace A351354

/-- `A201864(or(1, A016777(n)))+1` -/
def P7906452222890818376.Spec : Prop :=
  ∀ n, P7906452222890818376.a n = A351354 (n + 1)

end A351354

/-! ## A351354.P16865245199784543358

`A107857(A000035(n)+2*n+1)`
-/

namespace A351354.P16865245199784543358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107857 (A000035 n + (2 * n + 1 : ℤ)).toNat

end

end A351354.P16865245199784543358

namespace A351354

/-- `A107857(A000035(n)+2*n+1)` -/
def P16865245199784543358.Spec : Prop :=
  ∀ n, P16865245199784543358.a n = A351354 (n + 1)

end A351354

/-!
# A351355: Number of ways the numbers from 1..n do not divide numbers from n+1..2n.

The programs for A351355, the canonical program `A351355.P11606374728532719925` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351355 has offset 1).

The definition of A351355 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351355.P11606374728532719925

`(n+1)*(n+2)+A006218(n+1)-A006218(2*(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A351355

/-- `(n+1)*(n+2)+A006218(n+1)-A006218(2*(n+1))` -/
def P11606374728532719925.Spec : Prop :=
  ∀ n, P11606374728532719925.a n = A351355 (n + 1)

theorem P11606374728532719925.correct : P11606374728532719925.Spec := by
  intro n
  simp only [A351355, Nat.add_sub_cancel]

end A351355

/-! ## A351355.P10140951478365002404

`(n+1)²-A077024(n+1)`
-/

namespace A351355.P10140951478365002404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A077024 (n + 1)

end

end A351355.P10140951478365002404

namespace A351355

/-- `(n+1)²-A077024(n+1)` -/
def P10140951478365002404.Spec : Prop :=
  ∀ n, P10140951478365002404.a n = A351355 (n + 1)

end A351355

/-! ## A351355.P5746437969731199242

`∑[2*n]-A077025(n+1)`
-/

namespace A351355.P5746437969731199242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A077025 (n + 1)

end

end A351355.P5746437969731199242

namespace A351355

/-- `∑[2*n]-A077025(n+1)` -/
def P5746437969731199242.Spec : Prop :=
  ∀ n, P5746437969731199242.a n = A351355 (n + 1)

end A351355

/-! ## A351355.P15949146377985969395

`A351362(n+1)-A069283(n+1)`
-/

namespace A351355.P15949146377985969395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351362 (n + 1) - A069283 (n + 1)

end

end A351355.P15949146377985969395

namespace A351355

/-- `A351362(n+1)-A069283(n+1)` -/
def P15949146377985969395.Spec : Prop :=
  ∀ n, P15949146377985969395.a n = A351355 (n + 1)

end A351355

/-! ## A351355.P11804692697350506018

`(n+1)²-(A069283(n+1)+A006591(n+1))`
-/

namespace A351355.P11804692697350506018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (A069283 (n + 1) + A006591 (n + 1))

end

end A351355.P11804692697350506018

namespace A351355

/-- `(n+1)²-(A069283(n+1)+A006591(n+1))` -/
def P11804692697350506018.Spec : Prop :=
  ∀ n, P11804692697350506018.a n = A351355 (n + 1)

end A351355

/-! ## A351355.P556561570019433757

`∑[2*(n+1)]-A056549(n+1)`
-/

namespace A351355.P556561570019433757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A056549 (n + 1)

end

end A351355.P556561570019433757

namespace A351355

/-- `∑[2*(n+1)]-A056549(n+1)` -/
def P556561570019433757.Spec : Prop :=
  ∀ n, P556561570019433757.a n = A351355 (n + 1)

end A351355

/-! ## A351355.P17932533684400550750

`∑[2*n-Δ[A248517(2*n)]]`
-/

namespace A351355.P17932533684400550750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351355.P17932533684400550750

namespace A351355

/-- `∑[2*n-Δ[A248517(2*n)]]` -/
def P17932533684400550750.Spec : Prop :=
  ∀ n, P17932533684400550750.a n = A351355 (n + 1)

end A351355

/-! ## A351355.P9937550927034245966

`∑[2*n]-A248517(2*(n+1))`
-/

namespace A351355.P9937550927034245966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A248517 (2 * (n + 1))

end

end A351355.P9937550927034245966

namespace A351355

/-- `∑[2*n]-A248517(2*(n+1))` -/
def P9937550927034245966.Spec : Prop :=
  ∀ n, P9937550927034245966.a n = A351355 (n + 1)

end A351355

/-! ## A351355.P9189906698736831078

`∑[2*(n+1)-A129574(2*(n+1))]`
-/

namespace A351355.P9189906698736831078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A129574 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351355.P9189906698736831078

namespace A351355

/-- `∑[2*(n+1)-A129574(2*(n+1))]` -/
def P9189906698736831078.Spec : Prop :=
  ∀ n, P9189906698736831078.a n = A351355 (n + 1)

end A351355

/-! ## A351355.P15316154128329693166

`record[A129889(n)-A248517(n+1)]`
-/

namespace A351355.P15316154128329693166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129889 n - A248517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351355.P15316154128329693166

namespace A351355

/-- `record[A129889(n)-A248517(n+1)]` -/
def P15316154128329693166.Spec : Prop :=
  ∀ n, P15316154128329693166.a n = A351355 (n + 1)

end A351355

/-! ## A351355.P12489216029830709123

`∑[2*(n+1)-Δ[A060831(2*n)]]`
-/

namespace A351355.P12489216029830709123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351355.P12489216029830709123

namespace A351355

/-- `∑[2*(n+1)-Δ[A060831(2*n)]]` -/
def P12489216029830709123.Spec : Prop :=
  ∀ n, P12489216029830709123.a n = A351355 (n + 1)

end A351355

/-! ## A351355.P7798296699412330690

`∑[2*(n+1)]-A060831(2*(n+1))`
-/

namespace A351355.P7798296699412330690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A060831 (2 * (n + 1))

end

end A351355.P7798296699412330690

namespace A351355

/-- `∑[2*(n+1)]-A060831(2*(n+1))` -/
def P7798296699412330690.Spec : Prop :=
  ∀ n, P7798296699412330690.a n = A351355 (n + 1)

end A351355

/-! ## A351355.P1902965429630075486

`record[A083392(n)-A060831(n)]`
-/

namespace A351355.P1902965429630075486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n - A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351355.P1902965429630075486

namespace A351355

/-- `record[A083392(n)-A060831(n)]` -/
def P1902965429630075486.Spec : Prop :=
  ∀ n, P1902965429630075486.a n = A351355 (n + 1)

end A351355

/-!
# A351356: Triangle read by rows T(n,k): number of binary necklaces with n beads, k of them black, and at least two consecutive black beads.

The programs for A351356, there is no canonical definition to state claims against.
-/

/-! ## A351356.P11553333262213852190

`A033264(A289537(n))`
-/

namespace A351356.P11553333262213852190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A289537 n).toNat

end

end A351356.P11553333262213852190

/-! ## A351356.P18117009017453353751

`A333381(and(3*floor(2^n/3), A228275(n)))`
-/

namespace A351356.P18117009017453353751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (Int.land (3 * ⌊(2 ^ n : ℚ) / 3⌋) (A228275 n)).toNat

end

end A351356.P18117009017453353751

/-! ## A351356.P7720170846703710499

`A351357(A253723(n+1)+1)`
-/

namespace A351356.P7720170846703710499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351357 (A253723 (n + 1) + 1).toNat

end

end A351356.P7720170846703710499

/-! ## A351356.P4220166920259471834

`A322488(A108947(n))%A048570(n)`
-/

namespace A351356.P4220166920259471834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322488 (A108947 n).toNat) (A048570 n)

end

end A351356.P4220166920259471834

/-! ## A351356.P10285869028508797362

`A333381(A138121(2*n+1)*A228275(n))`
-/

namespace A351356.P10285869028508797362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A138121 (2 * n + 1) * A228275 n).toNat

end

end A351356.P10285869028508797362

/-!
# A351357: Irregular triangle read by rows T(n,k): number of binary necklaces with n beads, k of them black, and at least three consecutive black beads.

The programs for A351357, there is no canonical definition to state claims against.
-/

/-! ## A351357.P7607260582626306297

`A351358(lt[A351358(n+1), A350227(n)]+2)`
-/

namespace A351357.P7607260582626306297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A351357.P7607260582626306297

/-! ## A351357.P7568547726798328665

`A351358(lt[1, A350227(n)]+1)`
-/

namespace A351357.P7568547726798328665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A351357.P7568547726798328665

/-! ## A351357.P2160705927356022216

`A351358(lt[2, A350227(n)])`
-/

namespace A351357.P2160705927356022216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A351357.P2160705927356022216

/-! ## A351357.P8046787162039883846

`A290106(A256384(n))%A256384(n)`
-/

namespace A351357.P8046787162039883846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290106 (A256384 n).toNat) (A256384 n)

end

end A351357.P8046787162039883846

/-! ## A351357.P8573676155970949280

`A124766(A258997(n))`
-/

namespace A351357.P8573676155970949280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A258997 n).toNat

end

end A351357.P8573676155970949280

/-!
# A351358: Irregular triangle read by rows T(n,k): number of binary necklaces with n beads, k of them black, and at least four consecutive black beads.

The programs for A351358, there is no canonical definition to state claims against.
-/

/-! ## A351358.P10922368556888651229

`A146773(A209434(n+1))%A214268(n)`
-/

namespace A351358.P10922368556888651229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146773 (A209434 (n + 1)).toNat) (A214268 n)

end

end A351358.P10922368556888651229

/-! ## A351358.P18158098471079216418

`A140993(A137940(n+1))%A027926(A140993(n+1))`
-/

namespace A351358.P18158098471079216418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140993 (A137940 (n + 1)).toNat) (A027926 (A140993 (n + 1)).toNat)

end

end A351358.P18158098471079216418

/-! ## A351358.P17372808876103188383

`A225654(A118404(n)²)`
-/

namespace A351358.P17372808876103188383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 (A118404 n ^ 2).toNat

end

end A351358.P17372808876103188383

/-! ## A351358.P10900595551472776093

`A005087(A275784(n)+1)`
-/

namespace A351358.P10900595551472776093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A275784 n + 1).toNat

end

end A351358.P10900595551472776093

/-! ## A351358.P5693615761786486378

`A055739(n)%A055801(n)`
-/

namespace A351358.P5693615761786486378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055739 n) (A055801 n)

end

end A351358.P5693615761786486378

/-!
# A351359: Number of binary necklaces with n beads and at least two consecutive black beads.

The programs for A351359, there is no canonical definition to state claims against.
-/

/-! ## A351359.P4441644840037724625

`A000031(A087156(n+1))-A000358(n+1)`
-/

namespace A351359.P4441644840037724625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A087156 (n + 1)).toNat - A000358 (n + 1)

end

end A351359.P4441644840037724625

/-! ## A351359.P2301868971868708912

`A008965(n+1)-(A032190(n+1)+A000007(n))`
-/

namespace A351359.P2301868971868708912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) - (A032190 (n + 1) + A000007 n)

end

end A351359.P2301868971868708912

/-! ## A351359.P15854357548180846661

`A000031(A087156(n+1))-∑{d}[n+1, A006206(#)]`
-/

namespace A351359.P15854357548180846661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A087156 (n + 1)).toNat - ∑ d ∈ Nat.divisors (f1 n), A006206 d

end

end A351359.P15854357548180846661

/-! ## A351359.P7035530148532472466

`A000031(A087156(n+1))-(A032189(n+1)+A000035(n))`
-/

namespace A351359.P7035530148532472466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A087156 (n + 1)).toNat - (A032189 (n + 1) + A000035 n)

end

end A351359.P7035530148532472466

/-! ## A351359.P272060203581027360

`(A000031(n+1)-A000358(n+1))%A000302(n)`
-/

namespace A351359.P272060203581027360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000031 (n + 1) - A000358 (n + 1)) (A000302 n)

end

end A351359.P272060203581027360

/-! ## A351359.P7718307519911168402

`A000031(A087156(n+1))-A322057(∑[n+2])`
-/

namespace A351359.P7718307519911168402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A087156 (n + 1)).toNat - A322057 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351359.P7718307519911168402

/-!
# A351360: Number of binary necklaces with n beads and at least three consecutive black beads.

The programs for A351360, there is no canonical definition to state claims against.
-/

/-! ## A351360.P1365618910975902660

`ceil((∑[∑[A293606(n)]]-3)/10)`
-/

namespace A351360.P1365618910975902660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293606 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j - 3 : ℤ) : ℚ) / 10⌉

end

end A351360.P1365618910975902660

/-! ## A351360.P2928766061424605983

`A085141(A086808(n+1))`
-/

namespace A351360.P2928766061424605983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A086808 (n + 1)).toNat

end

end A351360.P2928766061424605983

/-! ## A351360.P8224299853984459074

`A095861(A130582(n+1))`
-/

namespace A351360.P8224299853984459074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A130582 (n + 1)).toNat

end

end A351360.P8224299853984459074

/-! ## A351360.P6073425042451169827

`A259361(A271788(n+1))`
-/

namespace A351360.P6073425042451169827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A271788 (n + 1)).toNat

end

end A351360.P6073425042451169827

/-! ## A351360.P9828697808642938738

`A024327(A148296(n)+4)`
-/

namespace A351360.P9828697808642938738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A148296 n + 4).toNat

end

end A351360.P9828697808642938738

/-!
# A351361: Number of binary necklaces with n beads and at least four consecutive black beads.

The programs for A351361, there is no canonical definition to state claims against.
-/

/-! ## A351361.P12000593541335657137

`A135665(A045628(n)+2*n)`
-/

namespace A351361.P12000593541335657137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A045628 n + (2 * n : ℤ)).toNat

end

end A351361.P12000593541335657137

/-! ## A351361.P15413852014865228426

`A324767(n+1)%A121142(n)`
-/

namespace A351361.P15413852014865228426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324767 (n + 1)) (A121142 n)

end

end A351361.P15413852014865228426

/-! ## A351361.P1478974697187000591

`A135665(A045628(n)+n+n)`
-/

namespace A351361.P1478974697187000591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A045628 n + (n : ℤ) + (n : ℤ)).toNat

end

end A351361.P1478974697187000591

/-! ## A351361.P12767310462166923208

`Δ[A227310(3*n+2)]%A089412(n)`
-/

namespace A351361.P12767310462166923208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227310 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A089412 n)

end

end A351361.P12767310462166923208

/-! ## A351361.P1501411681958119918

`Δ[A227310(3*n+2)%A220913(n)]`
-/

namespace A351361.P1501411681958119918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227310 (3 * n + 2)) (A220913 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351361.P1501411681958119918

/-!
# A351362: Number of ways the numbers from 1..n do not divide the numbers from n..2n-1.

The programs for A351362, the canonical program `A351362.P11704435323759019704` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351362 has offset 1).

The definition of A351362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351362.P7240279474675489361

`(n+1)²-A006591(n+1)`
-/

namespace A351362.P7240279474675489361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A006591 (n + 1)

end

end A351362.P7240279474675489361

namespace A351362

/-- `(n+1)²-A006591(n+1)` -/
def P7240279474675489361.Spec : Prop :=
  ∀ n, P7240279474675489361.a n = A351362 (n + 1)

end A351362

/-! ## A351362.P12793646682434798830

`A351355(n+1)+Δ[A248517(n)]`
-/

namespace A351362.P12793646682434798830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351355 (n + 1) + (f1 (n + 1) - f1 n)

end

end A351362.P12793646682434798830

namespace A351362

/-- `A351355(n+1)+Δ[A248517(n)]` -/
def P12793646682434798830.Spec : Prop :=
  ∀ n, P12793646682434798830.a n = A351362 (n + 1)

end A351362

/-! ## A351362.P11704435323759019704

`A351355(n+1)+A069283(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A351362

/-- `A351355(n+1)+A069283(n+1)` -/
def P11704435323759019704.Spec : Prop :=
  ∀ n, P11704435323759019704.a n = A351362 (n + 1)

theorem P11704435323759019704.correct : P11704435323759019704.Spec := by
  intro n
  simp only [A351362, Nat.add_sub_cancel]

end A351362

/-! ## A351362.P9662722395033557222

`(n+1)²+A069283(n+1)-A077024(n+1)`
-/

namespace A351362.P9662722395033557222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A069283 (n + 1) - A077024 (n + 1))

end

end A351362.P9662722395033557222

namespace A351362

/-- `(n+1)²+A069283(n+1)-A077024(n+1)` -/
def P9662722395033557222.Spec : Prop :=
  ∀ n, P9662722395033557222.a n = A351362 (n + 1)

end A351362

/-! ## A351362.P8392127150853170571

`(n+1)²-A056548(n+1)+n`
-/

namespace A351362.P8392127150853170571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A056548 (n + 1) + (n : ℤ)

end

end A351362.P8392127150853170571

namespace A351362

/-- `(n+1)²-A056548(n+1)+n` -/
def P8392127150853170571.Spec : Prop :=
  ∀ n, P8392127150853170571.a n = A351362 (n + 1)

end A351362

/-! ## A351362.P8196140112739419235

`A028387(n)-A056548(n+1)`
-/

namespace A351362.P8196140112739419235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - A056548 (n + 1)

end

end A351362.P8196140112739419235

namespace A351362

/-- `A028387(n)-A056548(n+1)` -/
def P8196140112739419235.Spec : Prop :=
  ∀ n, P8196140112739419235.a n = A351362 (n + 1)

end A351362

/-! ## A351362.P8652722591171096451

`∑[2*n]-A248517(Δ[n²])`
-/

namespace A351362.P8652722591171096451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A248517 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A351362.P8652722591171096451

namespace A351362

/-- `∑[2*n]-A248517(Δ[n²])` -/
def P8652722591171096451.Spec : Prop :=
  ∀ n, P8652722591171096451.a n = A351362 (n + 1)

end A351362

/-! ## A351362.P4677487561932907069

`(n+1)²-(A060831(Δ[n²])-n)`
-/

namespace A351362.P4677487561932907069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (A060831 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ))

end

end A351362.P4677487561932907069

namespace A351362

/-- `(n+1)²-(A060831(Δ[n²])-n)` -/
def P4677487561932907069.Spec : Prop :=
  ∀ n, P4677487561932907069.a n = A351362 (n + 1)

end A351362

/-! ## A351362.P1259727794444493521

`∑[A049820(2*n+1)-∑{d}[n, (#%#²)%2]]`
-/

namespace A351362.P1259727794444493521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (2 * n + 1) - ((∑ d ∈ Nat.divisors (f2 n), d % d ^ 2 % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351362.P1259727794444493521

namespace A351362

/-- `∑[A049820(2*n+1)-∑{d}[n, (#%#²)%2]]` -/
def P1259727794444493521.Spec : Prop :=
  ∀ n, P1259727794444493521.a n = A351362 (n + 1)

end A351362

/-! ## A351362.P10743671029781613222

`record[A129889(n)-A248517(n)]`
-/

namespace A351362.P10743671029781613222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129889 n - A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351362.P10743671029781613222

namespace A351362

/-- `record[A129889(n)-A248517(n)]` -/
def P10743671029781613222.Spec : Prop :=
  ∀ n, P10743671029781613222.a n = A351362 (n + 1)

end A351362

/-! ## A351362.P9700115803676299262

`∑[A103517(n)-A129574(2*n+1)]`
-/

namespace A351362.P9700115803676299262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - A129574 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351362.P9700115803676299262

namespace A351362

/-- `∑[A103517(n)-A129574(2*n+1)]` -/
def P9700115803676299262.Spec : Prop :=
  ∀ n, P9700115803676299262.a n = A351362 (n + 1)

end A351362

/-! ## A351362.P11302161418529353849

`A023443(A351355(n+1)+∑{d}[n+1, #%2])`
-/

namespace A351362.P11302161418529353849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A351355 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)).toNat

end

end A351362.P11302161418529353849

namespace A351362

/-- `A023443(A351355(n+1)+∑{d}[n+1, #%2])` -/
def P11302161418529353849.Spec : Prop :=
  ∀ n, P11302161418529353849.a n = A351362 (n + 1)

end A351362

/-!
# A351363: Number of necklaces with n black and n white beads with at least four consecutive black beads.

The programs for A351363, there is no canonical definition to state claims against.
-/

/-! ## A351363.P8371701987225748378

`A003239(n+1)-A351364(n+1)`
-/

namespace A351363.P8371701987225748378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 (n + 1) - A351364 (n + 1)

end

end A351363.P8371701987225748378

/-! ## A351363.P14224733897388504636

`A064458(A150062(n))`
-/

namespace A351363.P14224733897388504636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A150062 n).toNat

end

end A351363.P14224733897388504636

/-! ## A351363.P4981967625134499352

`A059995(Δ[A277221(n)])`
-/

namespace A351363.P4981967625134499352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (f1 (n + 1) - f1 n).toNat

end

end A351363.P4981967625134499352

/-! ## A351363.P9782495807032720247

`A064458(A148467(n+1))`
-/

namespace A351363.P9782495807032720247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A148467 (n + 1)).toNat

end

end A351363.P9782495807032720247

/-!
# A351364: Number of necklaces with n black and n white beads that avoid the pattern BBBB.

The programs for A351364, there is no canonical definition to state claims against.
-/

/-! ## A351364.P778955787544720639

`A003239(n+1)-A351363(n+1)`
-/

namespace A351364.P778955787544720639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 (n + 1) - A351363 (n + 1)

end

end A351364.P778955787544720639

/-! ## A351364.P15977154963592787305

`A289435(A123611(n+1))-A351363(n+1)`
-/

namespace A351364.P15977154963592787305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A123611 (n + 1)).toNat - A351363 (n + 1)

end

end A351364.P15977154963592787305

/-! ## A351364.P8791488243775533803

`A003239(n+1)-A064458(A150062(n))`
-/

namespace A351364.P8791488243775533803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 (n + 1) - A064458 (A150062 n).toNat

end

end A351364.P8791488243775533803

/-!
# A351365: a(n) = Sum_{p|n, p prime} n^p.

The programs for A351365, there is no canonical definition to state claims against.
-/

/-! ## A351365.P18359495282702697889

`∑{p}[n+1, (n+1)^#]`
-/

namespace A351365.P18359495282702697889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (n + 1) ^ p

end

end A351365.P18359495282702697889

/-! ## A351365.P13912965105503341910

`A122411(((n+1)/10^val(n+1, 10))^A006530(n+1))`
-/

namespace A351365.P13912965105503341910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122411 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)) ^ (A006530 (n + 1) : ℤ))).toNat

end

end A351365.P13912965105503341910

/-!
# A351366: a(n) = Sum_{p|n, p prime} p^p.

The programs for A351366, there is no canonical definition to state claims against.
-/

/-! ## A351366.P15414952528197239588

`∑{p}[n+1, #^#]`
-/

namespace A351366.P15414952528197239588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p ^ p

end

end A351366.P15414952528197239588

/-! ## A351366.P14609996476609475651

`A345310((n+1)²)`
-/

namespace A351366.P14609996476609475651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345310 ((n + 1) ^ 2)

end

end A351366.P14609996476609475651

/-! ## A351366.P7801844903885221855

`A351749(n+1)-A001221(n+1)`
-/

namespace A351366.P7801844903885221855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351749 (n + 1) - A001221 (n + 1)

end

end A351366.P7801844903885221855

/-! ## A351366.P3710436933811256716

`A351749(n+1)-log2(A034444(n+1))`
-/

namespace A351366.P3710436933811256716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A351749 (n + 1) : ℝ) - Real.logb 2 (A034444 (n + 1) : ℝ)

end

end A351366.P3710436933811256716

/-! ## A351366.P9146708274251721518

`A351749(n+1)-A001222(∏{p}[n+1, #])`
-/

namespace A351366.P9146708274251721518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351749 (n + 1) - A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351366.P9146708274251721518

/-!
# A351367: a(n) = Sum_{p|n, p prime} p^nextprime(p), where nextprime(n) is the smallest prime > n.

The programs for A351367, there is no canonical definition to state claims against.
-/

/-! ## A351367.P12635155117166017034

`∑{p}[n+1, #^A250469(#)]`
-/

namespace A351367.P12635155117166017034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A250469 p : ℤ)

end

end A351367.P12635155117166017034

/-! ## A351367.P6191438772493628459

`∑{p}[n+1, A053089(A230980(#))]`
-/

namespace A351367.P6191438772493628459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A053089 (A230980 p).toNat

end

end A351367.P6191438772493628459

/-!
# A351368: a(n) = Sum_{p|n, p prime} prime(p).

The programs for A351368, the canonical program `A351368.P4651679990209319746` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351368 has offset 1).

The definition of A351368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351368.P4651679990209319746

`∑{p}[n+1, A000040(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A351368

/-- `∑{p}[n+1, A000040(#)]` -/
def P4651679990209319746.Spec : Prop :=
  ∀ n, P4651679990209319746.a n = A351368 (n + 1)

theorem P4651679990209319746.correct : P4651679990209319746.Spec := by
  intro n
  simp only [A351368, Nat.add_sub_cancel]

end A351368

/-! ## A351368.P17849771486681331423

`∑{p}[n+1, A006005(#)]`
-/

namespace A351368.P17849771486681331423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A006005 p

end

end A351368.P17849771486681331423

namespace A351368

/-- `∑{p}[n+1, A006005(#)]` -/
def P17849771486681331423.Spec : Prop :=
  ∀ n, P17849771486681331423.a n = A351368 (n + 1)

end A351368

/-! ## A351368.P17808718149647552672

`∑{p}[n+1, A064988(#)]`
-/

namespace A351368.P17808718149647552672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A064988 p

end

end A351368.P17808718149647552672

namespace A351368

/-- `∑{p}[n+1, A064988(#)]` -/
def P17808718149647552672.Spec : Prop :=
  ∀ n, P17808718149647552672.a n = A351368 (n + 1)

end A351368

/-! ## A351368.P7532765747387107431

`∑{p}[n+1, A105562(#)]`
-/

namespace A351368.P7532765747387107431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A105562 p

end

end A351368.P7532765747387107431

namespace A351368

/-- `∑{p}[n+1, A105562(#)]` -/
def P7532765747387107431.Spec : Prop :=
  ∀ n, P7532765747387107431.a n = A351368 (n + 1)

end A351368

/-! ## A351368.P46558522149163107

`∑{p}[n+1, A105574(#)]`
-/

namespace A351368.P46558522149163107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A105574 p

end

end A351368.P46558522149163107

namespace A351368

/-- `∑{p}[n+1, A105574(#)]` -/
def P46558522149163107.Spec : Prop :=
  ∀ n, P46558522149163107.a n = A351368 (n + 1)

end A351368

/-! ## A351368.P11106964719371348805

`∑{p}[n+1, A120426(#)]`
-/

namespace A351368.P11106964719371348805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A120426 p

end

end A351368.P11106964719371348805

namespace A351368

/-- `∑{p}[n+1, A120426(#)]` -/
def P11106964719371348805.Spec : Prop :=
  ∀ n, P11106964719371348805.a n = A351368 (n + 1)

end A351368

/-! ## A351368.P44281768185506118

`∑{p}[n+1, A137458(#)]`
-/

namespace A351368.P44281768185506118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A137458 p

end

end A351368.P44281768185506118

namespace A351368

/-- `∑{p}[n+1, A137458(#)]` -/
def P44281768185506118.Spec : Prop :=
  ∀ n, P44281768185506118.a n = A351368 (n + 1)

end A351368

/-! ## A351368.P17666882660655974127

`∑{p}[A328878(n+1), #]`
-/

namespace A351368.P17666882660655974127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328878 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A351368.P17666882660655974127

namespace A351368

/-- `∑{p}[A328878(n+1), #]` -/
def P17666882660655974127.Spec : Prop :=
  ∀ n, (P17666882660655974127.a n : ℤ) = A351368 (n + 1)

end A351368

/-! ## A351368.P8062376060897800263

`A304251(A007947(n+1))`
-/

namespace A351368.P8062376060897800263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304251 (A007947 (n + 1)).toNat

end

end A351368.P8062376060897800263

namespace A351368

/-- `A304251(A007947(n+1))` -/
def P8062376060897800263.Spec : Prop :=
  ∀ n, P8062376060897800263.a n = A351368 (n + 1)

end A351368

/-! ## A351368.P7578732225341778277

`∑{p}[n+1, A063884(#)]`
-/

namespace A351368.P7578732225341778277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A063884 p

end

end A351368.P7578732225341778277

namespace A351368

/-- `∑{p}[n+1, A063884(#)]` -/
def P7578732225341778277.Spec : Prop :=
  ∀ n, P7578732225341778277.a n = A351368 (n + 1)

end A351368

/-! ## A351368.P6375397877613564430

`A001414(A328878(n+1))`
-/

namespace A351368.P6375397877613564430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A328878 (n + 1)).toNat

end

end A351368.P6375397877613564430

namespace A351368

/-- `A001414(A328878(n+1))` -/
def P6375397877613564430.Spec : Prop :=
  ∀ n, P6375397877613564430.a n = A351368 (n + 1)

end A351368

/-! ## A351368.P7341469177836644679

`A345280(A290641(n+1))`
-/

namespace A351368.P7341469177836644679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345280 (A290641 (n + 1)).toNat

end

end A351368.P7341469177836644679

namespace A351368

/-- `A345280(A290641(n+1))` -/
def P7341469177836644679.Spec : Prop :=
  ∀ n, P7341469177836644679.a n = A351368 (n + 1)

end A351368

/-! ## A351368.P10163334868695431382

`A005069(A064988(n+1))`
-/

namespace A351368.P10163334868695431382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A064988 (n + 1)).toNat

end

end A351368.P10163334868695431382

namespace A351368

/-- `A005069(A064988(n+1))` -/
def P10163334868695431382.Spec : Prop :=
  ∀ n, P10163334868695431382.a n = A351368 (n + 1)

end A351368

/-!
# A351369: a(n) = Sum_{p|n, p prime} p * prime(p).

The programs for A351369, the canonical program `A351369.P13114883691127630999` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351369 has offset 1).

The definition of A351369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351369.P13114883691127630999

`∑{p}[n+1, A033286(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A351369

/-- `∑{p}[n+1, A033286(#)]` -/
def P13114883691127630999.Spec : Prop :=
  ∀ n, P13114883691127630999.a n = A351369 (n + 1)

theorem P13114883691127630999.correct : P13114883691127630999.Spec := by
  intro n
  simp only [A351369, Nat.add_sub_cancel]

end A351369

/-! ## A351369.P5005417698840531423

`∑{p}[n+1, #*A000040(#)]`
-/

namespace A351369.P5005417698840531423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A000040 p

end

end A351369.P5005417698840531423

namespace A351369

/-- `∑{p}[n+1, #*A000040(#)]` -/
def P5005417698840531423.Spec : Prop :=
  ∀ n, P5005417698840531423.a n = A351369 (n + 1)

end A351369

/-! ## A351369.P4134880149168493379

`∑{p}[n+1, #*A006005(#)]`
-/

namespace A351369.P4134880149168493379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A006005 p

end

end A351369.P4134880149168493379

namespace A351369

/-- `∑{p}[n+1, #*A006005(#)]` -/
def P4134880149168493379.Spec : Prop :=
  ∀ n, P4134880149168493379.a n = A351369 (n + 1)

end A351369

/-! ## A351369.P49554439667769497

`∑{p}[n+1, #*A064988(#)]`
-/

namespace A351369.P49554439667769497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A064988 p

end

end A351369.P49554439667769497

namespace A351369

/-- `∑{p}[n+1, #*A064988(#)]` -/
def P49554439667769497.Spec : Prop :=
  ∀ n, P49554439667769497.a n = A351369 (n + 1)

end A351369

/-! ## A351369.P6765438058691702536

`∑{p}[n+1, lcm(#, A000040(A050369(#)))]`
-/

namespace A351369.P6765438058691702536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.lcm (p : ℤ) (A000040 (A050369 p).toNat)

end

end A351369.P6765438058691702536

namespace A351369

/-- `∑{p}[n+1, lcm(#, A000040(A050369(#)))]` -/
def P6765438058691702536.Spec : Prop :=
  ∀ n, (P6765438058691702536.a n : ℤ) = A351369 (n + 1)

end A351369

/-! ## A351369.P3861896060088089963

`A372620(A328878(n+1))`
-/

namespace A351369.P3861896060088089963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372620 (A328878 (n + 1)).toNat

end

end A351369.P3861896060088089963

namespace A351369

/-- `A372620(A328878(n+1))` -/
def P3861896060088089963.Spec : Prop :=
  ∀ n, P3861896060088089963.a n = A351369 (n + 1)

end A351369

/-! ## A351369.P4165767591497709240

`A372620(A064988(n+1))`
-/

namespace A351369.P4165767591497709240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372620 (A064988 (n + 1)).toNat

end

end A351369.P4165767591497709240

namespace A351369

/-- `A372620(A064988(n+1))` -/
def P4165767591497709240.Spec : Prop :=
  ∀ n, P4165767591497709240.a n = A351369 (n + 1)

end A351369

/-! ## A351369.P12034259349388984110

`∑{d}[A064988(n+1), #*A049084(#)]`
-/

namespace A351369.P12034259349388984110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A049084 d

end

end A351369.P12034259349388984110

namespace A351369

/-- `∑{d}[A064988(n+1), #*A049084(#)]` -/
def P12034259349388984110.Spec : Prop :=
  ∀ n, P12034259349388984110.a n = A351369 (n + 1)

end A351369

/-! ## A351369.P4381520423363551009

`∑{p}[A129196(n), A188385(A033286(#))]`
-/

namespace A351369.P4381520423363551009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A188385 (A033286 p).toNat

end

end A351369.P4381520423363551009

namespace A351369

/-- `∑{p}[A129196(n), A188385(A033286(#))]` -/
def P4381520423363551009.Spec : Prop :=
  ∀ n, P4381520423363551009.a n = A351369 (n + 1)

end A351369

/-! ## A351369.P6805194233586566439

`∑{p}[A131738(n), A188385(A033286(#))]`
-/

namespace A351369.P6805194233586566439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A188385 (A033286 p).toNat

end

end A351369.P6805194233586566439

namespace A351369

/-- `∑{p}[A131738(n), A188385(A033286(#))]` -/
def P6805194233586566439.Spec : Prop :=
  ∀ n, P6805194233586566439.a n = A351369 (n + 1)

end A351369

/-!
# A351370: a(n) = Sum_{p|n, p prime} p^prime(p).

The programs for A351370, there is no canonical definition to state claims against.
-/

/-! ## A351370.P10495267924469517608

`∑{p}[n+1, A062481(#)]`
-/

namespace A351370.P10495267924469517608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A062481 p

end

end A351370.P10495267924469517608

/-! ## A351370.P2590223094183188867

`∑{p}[n+1, #^A000040(#)]`
-/

namespace A351370.P2590223094183188867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A000040 p : ℤ)

end

end A351370.P2590223094183188867

/-!
# A351371: a(n) = Sum_{p|n, p prime} (p + n/p).

The programs for A351371, the canonical program `A351371.P9505138592318086530` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351371 has offset 1).

The definition of A351371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351371.P9505138592318086530

`∑{p}[n+1, ceil(n/#+#)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A351371

/-- `∑{p}[n+1, ceil(n/#+#)]` -/
def P9505138592318086530.Spec : Prop :=
  ∀ n, P9505138592318086530.a n = A351371 (n + 1)

theorem P9505138592318086530.correct : P9505138592318086530.Spec := by
  intro n
  simp only [A351371, Nat.add_sub_cancel]

end A351371

/-! ## A351371.P8392485950799246243

`floor(∑{p}[n+1, (n+1)/#+#])`
-/

namespace A351371.P8392485950799246243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ) + (p : ℚ))⌋

end

end A351371.P8392485950799246243

namespace A351371

/-- `floor(∑{p}[n+1, (n+1)/#+#])` -/
def P8392485950799246243.Spec : Prop :=
  ∀ n, P8392485950799246243.a n = A351371 (n + 1)

end A351371

/-! ## A351371.P13896337987173646552

`round(∑{p}[n+1, (n+1)/#+#])`
-/

namespace A351371.P13896337987173646552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ) + (p : ℚ)))

end

end A351371.P13896337987173646552

namespace A351371

/-- `round(∑{p}[n+1, (n+1)/#+#])` -/
def P13896337987173646552.Spec : Prop :=
  ∀ n, P13896337987173646552.a n = A351371 (n + 1)

end A351371

/-! ## A351371.P15824394925623668007

`∑{p}[n+1, (n+1)/#]+∑{p}[n+1, #]`
-/

namespace A351371.P15824394925623668007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ) + ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A351371.P15824394925623668007

namespace A351371

/-- `∑{p}[n+1, (n+1)/#]+∑{p}[n+1, #]` -/
def P15824394925623668007.Spec : Prop :=
  ∀ n, P15824394925623668007.a n = (A351371 (n + 1) : ℚ)

end A351371

/-! ## A351371.P4434019066735072667

`A069359(n+1)+∑{p}[n+1, #]`
-/

namespace A351371.P4434019066735072667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A351371.P4434019066735072667

namespace A351371

/-- `A069359(n+1)+∑{p}[n+1, #]` -/
def P4434019066735072667.Spec : Prop :=
  ∀ n, P4434019066735072667.a n = A351371 (n + 1)

end A351371

/-! ## A351371.P16404751038824699009

`∑{p}[n+1, #]+∑{d}[n+1, A117494(#)]`
-/

namespace A351371.P16404751038824699009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + ∑ d ∈ Nat.divisors (f2 n), A117494 d

end

end A351371.P16404751038824699009

namespace A351371

/-- `∑{p}[n+1, #]+∑{d}[n+1, A117494(#)]` -/
def P16404751038824699009.Spec : Prop :=
  ∀ n, P16404751038824699009.a n = A351371 (n + 1)

end A351371

/-! ## A351371.P3084003267180178792

`A008472(n+1)+∑{p}[n+1, (n+1)/#]`
-/

namespace A351371.P3084003267180178792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) + ∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)

end

end A351371.P3084003267180178792

namespace A351371

/-- `A008472(n+1)+∑{p}[n+1, (n+1)/#]` -/
def P3084003267180178792.Spec : Prop :=
  ∀ n, P3084003267180178792.a n = (A351371 (n + 1) : ℚ)

end A351371

/-! ## A351371.P14584639835830928026

`A069359(n+1)+A008472(n+1)`
-/

namespace A351371.P14584639835830928026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1) + A008472 (n + 1)

end

end A351371.P14584639835830928026

namespace A351371

/-- `A069359(n+1)+A008472(n+1)` -/
def P14584639835830928026.Spec : Prop :=
  ∀ n, P14584639835830928026.a n = A351371 (n + 1)

end A351371

/-! ## A351371.P18192107715506981785

`A230593(n+1)-A076694(n+1)`
-/

namespace A351371.P18192107715506981785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230593 (n + 1) - A076694 (n + 1)

end

end A351371.P18192107715506981785

namespace A351371

/-- `A230593(n+1)-A076694(n+1)` -/
def P18192107715506981785.Spec : Prop :=
  ∀ n, P18192107715506981785.a n = A351371 (n + 1)

end A351371

/-! ## A351371.P534412224546266786

`A065967(n+1)-A334341(n+1)`
-/

namespace A351371.P534412224546266786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065967 (n + 1) - A334341 (n + 1)

end

end A351371.P534412224546266786

namespace A351371

/-- `A065967(n+1)-A334341(n+1)` -/
def P534412224546266786.Spec : Prop :=
  ∀ n, P534412224546266786.a n = A351371 (n + 1)

end A351371

/-! ## A351371.P6569932995936377473

`∑{p}[n+1, #]+Δ[A322068(n)]`
-/

namespace A351371.P6569932995936377473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A351371.P6569932995936377473

namespace A351371

/-- `∑{p}[n+1, #]+Δ[A322068(n)]` -/
def P6569932995936377473.Spec : Prop :=
  ∀ n, P6569932995936377473.a n = A351371 (n + 1)

end A351371

/-!
# A351372: Array of triples (x,y,z) satisfy the Diophantine equation (x+y)^2 + (y+z)^2 + (z+x)^2 = 12*x*y*z, 1 <= x <= y <= z. (sorted by z).

The programs for A351372, there is no canonical definition to state claims against.
-/

/-! ## A351372.P13729488450132895651

`or(A102014(A291694(n+1)), A291694(n+1))`
-/

namespace A351372.P13729488450132895651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102014 (A291694 (n + 1)).toNat) (A291694 (n + 1))

end

end A351372.P13729488450132895651

/-! ## A351372.P6428498662775293866

`A246689(A087509(n))%A246718(n+1)`
-/

namespace A351372.P6428498662775293866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246689 (A087509 n).toNat) (A246718 (n + 1))

end

end A351372.P6428498662775293866

/-! ## A351372.P10583919827483043575

`A099608(∑[A045912(n)]-A318024(n+1))`
-/

namespace A351372.P10583919827483043575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099608 (∑ j ∈ Finset.range (n + 1), f1 j - A318024 (n + 1)).toNat

end

end A351372.P10583919827483043575

/-! ## A351372.P5692782477264897794

`A099608(∑[A045912(n)]-A320409(n+1))`
-/

namespace A351372.P5692782477264897794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099608 (∑ j ∈ Finset.range (n + 1), f1 j - A320409 (n + 1)).toNat

end

end A351372.P5692782477264897794

/-!
# A351373: a(n) is the least prime that begins a sequence of 2*n consecutive primes whose sum is 6 times a prime.

The programs for A351373, there is no canonical definition to state claims against.
-/

/-! ## A351373.P14081233844707802457

`A238048(xor(1, A374673(n+1)))`
-/

namespace A351373.P14081233844707802457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238048 (Int.xor 1 (A374673 (n + 1))).toNat

end

end A351373.P14081233844707802457

/-!
# A351380: Table read by rows: T(n,k) is the number of integers in the interval [2^(n-1), 2^n - 1] that have the k-th least prime signature.

The programs for A351380, there is no canonical definition to state claims against.
-/

/-! ## A351380.P15743917326262793958

`A252736(A247355(n)+10)`
-/

namespace A351380.P15743917326262793958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A247355 n + 10).toNat

end

end A351380.P15743917326262793958

/-! ## A351380.P15107962993890774629

`A277937(A077168(n)+n)`
-/

namespace A351380.P15107962993890774629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A077168 n + (n : ℤ)).toNat

end

end A351380.P15107962993890774629

/-! ## A351380.P14856514156727423528

`A277937(2*A077168(n)-1)`
-/

namespace A351380.P14856514156727423528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (2 * A077168 n - 1).toNat

end

end A351380.P14856514156727423528

/-! ## A351380.P7977500264350553112

`A277937(A077168(n)²-n²)`
-/

namespace A351380.P7977500264350553112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A077168 n ^ 2 - (n ^ 2 : ℤ)).toNat

end

end A351380.P7977500264350553112

/-! ## A351380.P14228567895886967340

`and(2*n-1, A230642(A002445(n+1)))`
-/

namespace A351380.P14228567895886967340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * n : ℤ) - 1) (A230642 (A002445 (n + 1)).toNat)

end

end A351380.P14228567895886967340

/-!
# A351381: Table read by downward antidiagonals: T(n,k) = n*(k+1)^2.

The programs for A351381, there is no canonical definition to state claims against.
-/

/-! ## A351381.P11831180453107480105

`(1-C(∑[char[∑[n]]], 2)+n)*(A025581(n)+2)²`
-/

namespace A351381.P11831180453107480105
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * (A025581 n + 2) ^ 2

end

end A351381.P11831180453107480105

/-! ## A351381.P15982827618659053178

`(C(comp[∑[n]]-n, 2)-n+1)²*A002260(n+1)`
-/

namespace A351381.P15982827618659053178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 1) ^ 2 * A002260 (n + 1)

end

end A351381.P15982827618659053178

/-! ## A351381.P16025296358525908969

`A104633(n+1)+A104633(comp[∑[n]])`
-/

namespace A351381.P16025296358525908969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) + A104633 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A351381.P16025296358525908969

/-! ## A351381.P6943558048996198772

`A002260(n+1)*A055461(comp[∑[n]])`
-/

namespace A351381.P6943558048996198772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A055461 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A351381.P6943558048996198772

/-! ## A351381.P15292323138654980128

`(A002262(n)+1)*A055461(comp[∑[n]])`
-/

namespace A351381.P15292323138654980128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A055461 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A351381.P15292323138654980128

/-! ## A351381.P1223766805412395575

`(A002262(n)+1)*(A025581(n)+2)²`
-/

namespace A351381.P1223766805412395575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * (A025581 n + 2) ^ 2

end

end A351381.P1223766805412395575

/-! ## A351381.P5030506646921198711

`(A025581(n)+2)²*A002260(n+1)`
-/

namespace A351381.P5030506646921198711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 2) ^ 2 * A002260 (n + 1)

end

end A351381.P5030506646921198711

/-! ## A351381.P17834740324744449149

`A004736(comp[∑[n]])²*A002260(n+1)`
-/

namespace A351381.P17834740324744449149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2 * A002260 (n + 1)

end

end A351381.P17834740324744449149

/-! ## A351381.P13021581998964802394

`A020725(A004736(n+1))²*A002260(n+1)`
-/

namespace A351381.P13021581998964802394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A004736 (n + 1)).toNat ^ 2 * A002260 (n + 1)

end

end A351381.P13021581998964802394

/-! ## A351381.P15244180495369224007

`(A004736(n+1)+1)²*A000005(A059268(n))`
-/

namespace A351381.P15244180495369224007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + 1) ^ 2 * A000005 (A059268 n).toNat

end

end A351381.P15244180495369224007

/-!
# A351386: Sequence of balanced, multiplicative binary words, starting with a(1)=1, a(2)=10; for j > 2, if j is a prime, then a(j) is obtained by appending 0 at the end of a(j-1); otherwise, a(j) is obtained by appending a single digit at the end of a(j-1) such that the new word is multiplicative, but if the obtained a(j) is not balanced, then we change the digit at the rightmost possible prime position (and, eventually, some digits at following nonprime positions to maintain multiplicativity) so that a(j) becomes balanced.

The programs for A351386, there is no canonical definition to state claims against.
-/

/-! ## A351386.P16436770007792959613

`A266071(n)+A185274(A088874(n))`
-/

namespace A351386.P16436770007792959613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266071 n + A185274 (A088874 n).toNat

end

end A351386.P16436770007792959613

/-! ## A351386.P12406712621255425823

`A102397(n)-A010059(A006385(n))`
-/

namespace A351386.P12406712621255425823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102397 n - A010059 (A006385 n).toNat

end

end A351386.P12406712621255425823

/-! ## A351386.P8889842442845945759

`A102397(n)-A072401(A041038(n))`
-/

namespace A351386.P8889842442845945759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102397 n - A072401 (A041038 n).toNat

end

end A351386.P8889842442845945759

/-! ## A351386.P16290337531264126178

`A102397(n)-A010060(A115043(n))`
-/

namespace A351386.P16290337531264126178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102397 n - A010060 (A115043 n).toNat

end

end A351386.P16290337531264126178

/-!
# A351387: Primes p such that if q is the next prime, (p+q)/5+5 is prime.

The programs for A351387, there is no canonical definition to state claims against.
-/

/-! ## A351387.P17991129998685228105

`∩[A253970(n+1), A244644(n)]`
-/

namespace A351387.P17991129998685228105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351387.P17991129998685228105

/-! ## A351387.P11759438868979117297

`A253970(A048103(n+1)^A094850(n+1)+1)`
-/

namespace A351387.P11759438868979117297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (SequenceMachineLib.roundAway ((A048103 (n + 1) : ℚ) ^ (A094850 (n + 1) : ℤ) + 1)).toNat

end

end A351387.P11759438868979117297

/-!
# A351388: Maximum k for which the grid graph P_2 X P_k is a subgraph of the n X n knight graph.

The programs for A351388, there is no canonical definition to state claims against.
-/

/-! ## A351388.P497720442543958881

`round(∑[ratio[A286072(n)]])`
-/

namespace A351388.P497720442543958881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286072 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351388.P497720442543958881

/-! ## A351388.P3025828628349166909

`∑[A205510(3*n+5)+n-1]`
-/

namespace A351388.P3025828628349166909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205510 (3 * n + 5) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351388.P3025828628349166909

/-! ## A351388.P2158406750020547416

`∑[char[2]+n+1]-A189673(n+1)`
-/

namespace A351388.P2158406750020547416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A189673 (n + 1)

end

end A351388.P2158406750020547416

/-! ## A351388.P8321809440714690519

`xor(∑[n%3+n]+1, char[A093142(n)])`
-/

namespace A351388.P8321809440714690519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (∑ j ∈ Finset.range (n + 1), f1 j + 1) (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A351388.P8321809440714690519

/-! ## A351388.P17068021549393587366

`∑[(A069771(3*(n+1))+2)%4+n]`
-/

namespace A351388.P17068021549393587366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069771 (3 * (n + 1)) + 2) 4 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351388.P17068021549393587366

/-!
# A351389: Maximum k for which the grid graph P_3 X P_k is a subgraph of the n X n knight graph.

The programs for A351389, there is no canonical definition to state claims against.
-/

/-! ## A351389.P12365092247413615804

`A061070(A027336(n)+n²)`
-/

namespace A351389.P12365092247413615804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061070 (A027336 n + (n ^ 2 : ℤ)).toNat

end

end A351389.P12365092247413615804

/-! ## A351389.P9644500719004869114

`A049981(n+1)-A132312(n)`
-/

namespace A351389.P9644500719004869114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049981 (n + 1) - A132312 n

end

end A351389.P9644500719004869114

/-! ## A351389.P10914171908141065572

`A049981(n+1)-A257680(n)`
-/

namespace A351389.P10914171908141065572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049981 (n + 1) - A257680 n

end

end A351389.P10914171908141065572

/-! ## A351389.P16605540308470985315

`A049981(n+1)-char[A256450(n)]`
-/

namespace A351389.P16605540308470985315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049981 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A351389.P16605540308470985315

/-! ## A351389.P1885502452040887317

`A087483(n)-A286852(2*n+1)`
-/

namespace A351389.P1885502452040887317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 n - A286852 (2 * n + 1)

end

end A351389.P1885502452040887317

/-!
# A351393: Maximum k for which the grid graph P_4 X P_k is an induced subgraph of the n X n knight graph.

The programs for A351393, there is no canonical definition to state claims against.
-/

/-! ## A351393.P16503233365671870057

`n+1-A343640(A225508(n+1))`
-/

namespace A351393.P16503233365671870057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A343640 (A225508 (n + 1)).toNat

end

end A351393.P16503233365671870057

/-! ## A351393.P13124126576536307738

`A073491(n+1)-A267272(A217733(n))`
-/

namespace A351393.P13124126576536307738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1) - A267272 (A217733 n).toNat

end

end A351393.P13124126576536307738

/-! ## A351393.P976211924445986892

`A059620(A014597(n+1))+A009994(n+1)`
-/

namespace A351393.P976211924445986892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059620 (A014597 (n + 1)).toNat + A009994 (n + 1)

end

end A351393.P976211924445986892

/-!
# A351394: Number of divisors of n that are either squarefree, prime powers, or both.

The programs for A351394, the canonical program `A351394.P16861572729339474372` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351394 has offset 1).

The definition of A351394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351394.P16861572729339474372

`A034444(n+1)+∑{e}[n+1, #-1]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A351394

/-- `A034444(n+1)+∑{e}[n+1, #-1]` -/
def P16861572729339474372.Spec : Prop :=
  ∀ n, P16861572729339474372.a n = A351394 (n + 1)

theorem P16861572729339474372.correct : P16861572729339474372.Spec := by
  intro n
  simp only [A351394, Nat.add_sub_cancel]

end A351394

/-! ## A351394.P11145629257283002289

`A000005(∏{p}[n+1, #])+∑{e}[n+1, #-1]`
-/

namespace A351394.P11145629257283002289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) + ∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1)

end

end A351394.P11145629257283002289

namespace A351394

/-- `A000005(∏{p}[n+1, #])+∑{e}[n+1, #-1]` -/
def P11145629257283002289.Spec : Prop :=
  ∀ n, P11145629257283002289.a n = A351394 (n + 1)

end A351394

/-! ## A351394.P5517024677319426026

`A046660(n+1)+A034444(n+1)`
-/

namespace A351394.P5517024677319426026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) + A034444 (n + 1)

end

end A351394.P5517024677319426026

namespace A351394

/-- `A046660(n+1)+A034444(n+1)` -/
def P5517024677319426026.Spec : Prop :=
  ∀ n, P5517024677319426026.a n = A351394 (n + 1)

end A351394

/-! ## A351394.P17938289147220207927

`A351418(n+1)+A001221(n+1)`
-/

namespace A351394.P17938289147220207927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351418 (n + 1) + A001221 (n + 1)

end

end A351394.P17938289147220207927

namespace A351394

/-- `A351418(n+1)+A001221(n+1)` -/
def P17938289147220207927.Spec : Prop :=
  ∀ n, P17938289147220207927.a n = A351394 (n + 1)

end A351394

/-! ## A351394.P12228748677485030523

`A376504(n+1)+A073093(n+1)`
-/

namespace A351394.P12228748677485030523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376504 (n + 1) + A073093 (n + 1)

end

end A351394.P12228748677485030523

namespace A351394

/-- `A376504(n+1)+A073093(n+1)` -/
def P12228748677485030523.Spec : Prop :=
  ∀ n, P12228748677485030523.a n = A351394 (n + 1)

end A351394

/-! ## A351394.P4162806891321562069

`A000005(n+1)-A376514(n+1)`
-/

namespace A351394.P4162806891321562069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A376514 (n + 1)

end

end A351394.P4162806891321562069

namespace A351394

/-- `A000005(n+1)-A376514(n+1)` -/
def P4162806891321562069.Spec : Prop :=
  ∀ n, P4162806891321562069.a n = A351394 (n + 1)

end A351394

/-! ## A351394.P208098590057888758

`A163523(n+1)-A351414(n+1)`
-/

namespace A351394.P208098590057888758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163523 (n + 1) - A351414 (n + 1)

end

end A351394.P208098590057888758

namespace A351394

/-- `A163523(n+1)-A351414(n+1)` -/
def P208098590057888758.Spec : Prop :=
  ∀ n, P208098590057888758.a n = A351394 (n + 1)

end A351394

/-! ## A351394.P4765555323872645193

`A001222(n+1)+A376504(n+1)+1`
-/

namespace A351394.P4765555323872645193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A376504 (n + 1) + 1)

end

end A351394.P4765555323872645193

namespace A351394

/-- `A001222(n+1)+A376504(n+1)+1` -/
def P4765555323872645193.Spec : Prop :=
  ∀ n, P4765555323872645193.a n = A351394 (n + 1)

end A351394

/-! ## A351394.P524951811687490443

`A034444(n+1)+A001222(A162510(n+1))`
-/

namespace A351394.P524951811687490443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + A001222 (A162510 (n + 1)).toNat

end

end A351394.P524951811687490443

namespace A351394

/-- `A034444(n+1)+A001222(A162510(n+1))` -/
def P524951811687490443.Spec : Prop :=
  ∀ n, P524951811687490443.a n = A351394 (n + 1)

end A351394

/-! ## A351394.P3927527141882163364

`A034444(n+1)+A001222(A292589(n+1))`
-/

namespace A351394.P3927527141882163364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + A001222 (A292589 (n + 1)).toNat

end

end A351394.P3927527141882163364

namespace A351394

/-- `A034444(n+1)+A001222(A292589(n+1))` -/
def P3927527141882163364.Spec : Prop :=
  ∀ n, P3927527141882163364.a n = A351394 (n + 1)

end A351394

/-! ## A351394.P2613540391538919322

`A351418(n+1)+A001222(A034444(n+1))`
-/

namespace A351394.P2613540391538919322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351418 (n + 1) + A001222 (A034444 (n + 1)).toNat

end

end A351394.P2613540391538919322

namespace A351394

/-- `A351418(n+1)+A001222(A034444(n+1))` -/
def P2613540391538919322.Spec : Prop :=
  ∀ n, P2613540391538919322.a n = A351394 (n + 1)

end A351394

/-! ## A351394.P10477856599765515953

`A001222(n+1)+A034444(n+1)-A001221(n+1)`
-/

namespace A351394.P10477856599765515953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A034444 (n + 1) - A001221 (n + 1))

end

end A351394.P10477856599765515953

namespace A351394

/-- `A001222(n+1)+A034444(n+1)-A001221(n+1)` -/
def P10477856599765515953.Spec : Prop :=
  ∀ n, P10477856599765515953.a n = A351394 (n + 1)

end A351394

/-! ## A351394.P18355754662152008286

`A046660(n+1)+A327527(n+1)-A368251(n+1)`
-/

namespace A351394.P18355754662152008286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) + (A327527 (n + 1) - A368251 (n + 1))

end

end A351394.P18355754662152008286

namespace A351394

/-- `A046660(n+1)+A327527(n+1)-A368251(n+1)` -/
def P18355754662152008286.Spec : Prop :=
  ∀ n, P18355754662152008286.a n = A351394 (n + 1)

end A351394

/-! ## A351394.P14169397938890661428

`A327527(n+1)+A391074(n+1)-A376514(n+1)`
-/

namespace A351394.P14169397938890661428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (n + 1) + (A391074 (n + 1) - A376514 (n + 1))

end

end A351394.P14169397938890661428

namespace A351394

/-- `A327527(n+1)+A391074(n+1)-A376514(n+1)` -/
def P14169397938890661428.Spec : Prop :=
  ∀ n, P14169397938890661428.a n = A351394 (n + 1)

end A351394

/-! ## A351394.P3612618195741027724

`A046660(n+1)+A101113(n+1)/A000688(n+1)`
-/

namespace A351394.P3612618195741027724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046660 (n + 1) : ℚ) + (A101113 (n + 1) : ℚ) / (A000688 (n + 1) : ℚ)

end

end A351394.P3612618195741027724

namespace A351394

/-- `A046660(n+1)+A101113(n+1)/A000688(n+1)` -/
def P3612618195741027724.Spec : Prop :=
  ∀ n, P3612618195741027724.a n = (A351394 (n + 1) : ℚ)

end A351394

/-! ## A351394.P17461512326383340111

`A046660(n+1)+A061142(n+1)/A162510(n+1)`
-/

namespace A351394.P17461512326383340111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046660 (n + 1) : ℚ) + (A061142 (n + 1) : ℚ) / (A162510 (n + 1) : ℚ)

end

end A351394.P17461512326383340111

namespace A351394

/-- `A046660(n+1)+A061142(n+1)/A162510(n+1)` -/
def P17461512326383340111.Spec : Prop :=
  ∀ n, P17461512326383340111.a n = (A351394 (n + 1) : ℚ)

end A351394

/-! ## A351394.P15513120606793079811

`A351418(A064549(n+1))`
-/

namespace A351394.P15513120606793079811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351418 (A064549 (n + 1)).toNat

end

end A351394.P15513120606793079811

namespace A351394

/-- `A351418(A064549(n+1))` -/
def P15513120606793079811.Spec : Prop :=
  ∀ n, P15513120606793079811.a n = A351394 (n + 1)

end A351394

/-!
# A351395: Sum of the divisors of n that are either squarefree, prime powers, or both.

The programs for A351395, the canonical program `A351395.P1260847415174010690` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351395 has offset 1).

The definition of A351395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351395.P10502836905382726304

`A284118(n+1)+A023889(n+1)`
-/

namespace A351395.P10502836905382726304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284118 (n + 1) + A023889 (n + 1)

end

end A351395.P10502836905382726304

namespace A351395

/-- `A284118(n+1)+A023889(n+1)` -/
def P10502836905382726304.Spec : Prop :=
  ∀ n, P10502836905382726304.a n = A351395 (n + 1)

end A351395

/-! ## A351395.P1260847415174010690

`A284117(n+1)+A048250(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A351395

/-- `A284117(n+1)+A048250(n+1)` -/
def P1260847415174010690.Spec : Prop :=
  ∀ n, P1260847415174010690.a n = A351395 (n + 1)

theorem P1260847415174010690.correct : P1260847415174010690.Spec := by
  intro n
  simp only [A351395, Nat.add_sub_cancel]

end A351395

/-! ## A351395.P5008233396016423155

`A284117(n+1)+abs(A323363(n+1))`
-/

namespace A351395.P5008233396016423155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284117 (n + 1) + |A323363 (n + 1)|

end

end A351395.P5008233396016423155

namespace A351395

/-- `A284117(n+1)+abs(A323363(n+1))` -/
def P5008233396016423155.Spec : Prop :=
  ∀ n, P5008233396016423155.a n = A351395 (n + 1)

end A351395

/-! ## A351395.P12304540087555854218

`A023890(A007947(n+1))+A023889(n+1)`
-/

namespace A351395.P12304540087555854218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (A007947 (n + 1)).toNat + A023889 (n + 1)

end

end A351395.P12304540087555854218

namespace A351395

/-- `A023890(A007947(n+1))+A023889(n+1)` -/
def P12304540087555854218.Spec : Prop :=
  ∀ n, P12304540087555854218.a n = A351395 (n + 1)

end A351395

/-! ## A351395.P16396224788813089133

`A284117(n+1)+A000203(A007947(n+1))`
-/

namespace A351395.P16396224788813089133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284117 (n + 1) + A000203 (A007947 (n + 1)).toNat

end

end A351395.P16396224788813089133

namespace A351395

/-- `A284117(n+1)+A000203(A007947(n+1))` -/
def P16396224788813089133.Spec : Prop :=
  ∀ n, P16396224788813089133.a n = A351395 (n + 1)

end A351395

/-! ## A351395.P8736039160103248871

`A023889(n+1)+A048250(n+1)-A008472(n+1)`
-/

namespace A351395.P8736039160103248871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) + (A048250 (n + 1) - A008472 (n + 1))

end

end A351395.P8736039160103248871

namespace A351395

/-- `A023889(n+1)+A048250(n+1)-A008472(n+1)` -/
def P8736039160103248871.Spec : Prop :=
  ∀ n, P8736039160103248871.a n = A351395 (n + 1)

end A351395

/-!
# A351396: Composite numbers d such that the period k of the decimal expansion of 1/d is > 1 and divides d-1.

The programs for A351396, there is no canonical definition to state claims against.
-/

/-! ## A351396.P1164783105307525957

`A350598(n+1)%A350574(A000837(n))`
-/

namespace A351396.P1164783105307525957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350598 (n + 1)) (A350574 (A000837 n).toNat)

end

end A351396.P1164783105307525957

/-! ## A351396.P12193985544753412192

`A350598(n+1)/A051953(A068652(n+1))`
-/

namespace A351396.P12193985544753412192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350598 (n + 1) : ℚ) / (A051953 (A068652 (n + 1)).toNat : ℚ)

end

end A351396.P12193985544753412192

/-! ## A351396.P8122013634510741834

`A350598(n+1)^A267115(A177433(n+4))`
-/

namespace A351396.P8122013634510741834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350598 (n + 1) : ℚ) ^ (A267115 (A177433 (n + 4)).toNat : ℤ)

end

end A351396.P8122013634510741834

/-! ## A351396.P2289127282404889128

`C(A350598(n+1), A364255(A230223(3*n+1)))`
-/

namespace A351396.P2289127282404889128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A350598 (n + 1)).toNat (A364255 (A230223 (3 * n + 1)).toNat).toNat

end

end A351396.P2289127282404889128

/-! ## A351396.P14910863438453948731

`∩[A280199(n+1), A350598(n+1)]`
-/

namespace A351396.P14910863438453948731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351396.P14910863438453948731

/-!
# A351397: Sum of the exponents in the prime factorizations of the prime power divisors of n.

The programs for A351397, the canonical program `A351397.P706894705419063544` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351397 has offset 1).

The definition of A351397 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A090885, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351397.P706894705419063544

`(A001222(n+1)+A090885(n+1))/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A351397

/-- `(A001222(n+1)+A090885(n+1))/2` -/
def P706894705419063544.Spec : Prop :=
  ∀ n, P706894705419063544.a n = (A351397 (n + 1) : ℚ)

end A351397

/-! ## A351397.P8598555534445711427

`∑{e}[n+1, C(#+1, 2)]`
-/

namespace A351397.P8598555534445711427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 1) 2

end

end A351397.P8598555534445711427

namespace A351397

/-- `∑{e}[n+1, C(#+1, 2)]` -/
def P8598555534445711427.Spec : Prop :=
  ∀ n, (P8598555534445711427.a n : ℤ) = A351397 (n + 1)

end A351397

/-! ## A351397.P11001066725349441392

`∑{e}[n+1, (#²+#)/2]`
-/

namespace A351397.P11001066725349441392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p ^ 2 + Nat.factorization (f1 n) p : ℚ) / 2

end

end A351397.P11001066725349441392

namespace A351397

/-- `∑{e}[n+1, (#²+#)/2]` -/
def P11001066725349441392.Spec : Prop :=
  ∀ n, P11001066725349441392.a n = (A351397 (n + 1) : ℚ)

end A351397

/-! ## A351397.P1315866195613031245

`∑{d}[n+1, A100995(#)]`
-/

namespace A351397.P1315866195613031245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100995 d

end

end A351397.P1315866195613031245

namespace A351397

/-- `∑{d}[n+1, A100995(#)]` -/
def P1315866195613031245.Spec : Prop :=
  ∀ n, P1315866195613031245.a n = A351397 (n + 1)

end A351397

/-! ## A351397.P1373853630380481786

`∑{p}[n+1, A000217(val(n+1, #))]`
-/

namespace A351397.P1373853630380481786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000217 (SequenceMachineLib.valuation (n + 1) p)

end

end A351397.P1373853630380481786

namespace A351397

/-- `∑{p}[n+1, A000217(val(n+1, #))]` -/
def P1373853630380481786.Spec : Prop :=
  ∀ n, P1373853630380481786.a n = A351397 (n + 1)

end A351397

/-! ## A351397.P8723858942446758167

`∑{d}[n+1, A122410(#)*A130054((n+1)/#)]`
-/

namespace A351397.P8723858942446758167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A122410 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351397.P8723858942446758167

namespace A351397

/-- `∑{d}[n+1, A122410(#)*A130054((n+1)/#)]` -/
def P8723858942446758167.Spec : Prop :=
  ∀ n, P8723858942446758167.a n = A351397 (n + 1)

end A351397

/-! ## A351397.P5666837799141572252

`A318283(A238745(n+1))`
-/

namespace A351397.P5666837799141572252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (A238745 (n + 1)).toNat

end

end A351397.P5666837799141572252

namespace A351397

/-- `A318283(A238745(n+1))` -/
def P5666837799141572252.Spec : Prop :=
  ∀ n, P5666837799141572252.a n = A351397 (n + 1)

end A351397

/-! ## A351397.P127466439366332621

`A356159(A384564(n+1))`
-/

namespace A351397.P127466439366332621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356159 (A384564 (n + 1)).toNat

end

end A351397.P127466439366332621

namespace A351397

/-- `A356159(A384564(n+1))` -/
def P127466439366332621.Spec : Prop :=
  ∀ n, P127466439366332621.a n = A351397 (n + 1)

end A351397

/-! ## A351397.P12193952490445450762

`A056239(A124859(n+1))`
-/

namespace A351397.P12193952490445450762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A124859 (n + 1)).toNat

end

end A351397.P12193952490445450762

namespace A351397

/-- `A056239(A124859(n+1))` -/
def P12193952490445450762.Spec : Prop :=
  ∀ n, P12193952490445450762.a n = A351397 (n + 1)

end A351397

/-! ## A351397.P16872355649972722408

`A001222(A183091(n+1))`
-/

namespace A351397.P16872355649972722408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A183091 (n + 1)).toNat

end

end A351397.P16872355649972722408

namespace A351397

/-- `A001222(A183091(n+1))` -/
def P16872355649972722408.Spec : Prop :=
  ∀ n, P16872355649972722408.a n = A351397 (n + 1)

end A351397

/-!
# A351398: Numbers k >= 3 such that the arithmetic mean of the divisors of k AND the arithmetic mean of the nondivisors of k are integers.

The programs for A351398, the canonical program `A351398.P4856848397706998263` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351398 has offset 1).

The definition of A351398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351398.P4856848397706998263

`filter[A140826(n+1), A245656(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A351398

/-- `filter[A140826(n+1), A245656(#)]` -/
def P4856848397706998263.Spec : Prop :=
  ∀ n, P4856848397706998263.a n = A351398 (n + 1)

theorem P4856848397706998263.correct : P4856848397706998263.Spec := by
  intro n
  simp only [A351398, Nat.add_sub_cancel]

end A351398

/-! ## A351398.P2611489702355296681

`∩[A003601(n+1), A140826(n+1)]`
-/

namespace A351398.P2611489702355296681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351398.P2611489702355296681

namespace A351398

/-- `∩[A003601(n+1), A140826(n+1)]` -/
def P2611489702355296681.Spec : Prop :=
  ∀ n, (P2611489702355296681.a n : ℤ) = A351398 (n + 1)

end A351398

/-! ## A351398.P16837578035709003246

`∩[A046839(n+1), A140826(n+1)]`
-/

namespace A351398.P16837578035709003246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351398.P16837578035709003246

namespace A351398

/-- `∩[A046839(n+1), A140826(n+1)]` -/
def P16837578035709003246.Spec : Prop :=
  ∀ n, (P16837578035709003246.a n : ℤ) = A351398 (n + 1)

end A351398

/-! ## A351398.P3062857795459025909

`eq[A040855(n)², A115118(n)²]`
-/

namespace A351398.P3062857795459025909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040855 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115118 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351398.P3062857795459025909

namespace A351398

/-- `eq[A040855(n)², A115118(n)²]` -/
def P3062857795459025909.Spec : Prop :=
  ∀ n, (P3062857795459025909.a n : ℤ) = A351398 (n + 1)

end A351398

/-! ## A351398.P13088738249986419983

`eq[A040860(n)², A115118(n)²]`
-/

namespace A351398.P13088738249986419983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040860 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115118 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351398.P13088738249986419983

namespace A351398

/-- `eq[A040860(n)², A115118(n)²]` -/
def P13088738249986419983.Spec : Prop :=
  ∀ n, (P13088738249986419983.a n : ℤ) = A351398 (n + 1)

end A351398

/-! ## A351398.P16759016205541613590

`eq[A304442(n), A353852(A187038(3*n+2))]`
-/

namespace A351398.P16759016205541613590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353852 (A187038 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351398.P16759016205541613590

namespace A351398

/-- `eq[A304442(n), A353852(A187038(3*n+2))]` -/
def P16759016205541613590.Spec : Prop :=
  ∀ n, (P16759016205541613590.a n : ℤ) = A351398 (n + 1)

end A351398

/-! ## A351398.P2066625493059475618

`filter[A384354(n+3), A359158(#)]`
-/

namespace A351398.P2066625493059475618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384354 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A351398.P2066625493059475618

namespace A351398

/-- `filter[A384354(n+3), A359158(#)]` -/
def P2066625493059475618.Spec : Prop :=
  ∀ n, P2066625493059475618.a n = A351398 (n + 1)

end A351398

/-!
# A351399: Sum of the exponents in the prime factorizations of the divisors of A100716(n) of the form p^p, p prime.

The programs for A351399, there is no canonical definition to state claims against.
-/

/-! ## A351399.P16645516937719983368

`A240755(gcd(A003415(3*n+4), A119464(3*(n+1))))`
-/

namespace A351399.P16645516937719983368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (Int.gcd (A003415 (3 * n + 4)) (A119464 (3 * (n + 1))))

end

end A351399.P16645516937719983368

/-! ## A351399.P4370302467072072339

`A060324(gcd(A218879(n+5), A377383(n+1)))`
-/

namespace A351399.P4370302467072072339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (Int.gcd (A218879 (n + 5)) (A377383 (n + 1)))

end

end A351399.P4370302467072072339

