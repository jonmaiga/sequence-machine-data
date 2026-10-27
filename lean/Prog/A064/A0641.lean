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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A064100: a(n) = n * (100^n - 1)/99.

The programs for A064100, the canonical program `A064100.P6200468658701185567` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064100 has offset 1).

The definition of A064100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064100.P6200468658701185567

`(n+1)*A094028(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064100

/-- `(n+1)*A094028(n)` -/
def P6200468658701185567.Spec : Prop :=
  ∀ n, P6200468658701185567.a n = A064100 (n + 1)

theorem P6200468658701185567.correct : P6200468658701185567.Spec := by
  intro n
  simp only [A064100, Nat.add_sub_cancel]

end A064100

/-! ## A064100.P10458393670782019967

`(n+1)*(100^(n+1)-1)/99`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064100.P10458393670782019967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((100 ^ (n + 1) : ℤ) - 1) : ℚ) / 99

end

end A064100.P10458393670782019967

namespace A064100

/-- `(n+1)*(100^(n+1)-1)/99` -/
def P10458393670782019967.Spec : Prop :=
  ∀ n, P10458393670782019967.a n = (A064100 (n + 1) : ℚ)

end A064100

/-! ## A064100.P7720059277568007770

`(n+1)*A266508(2*n)`
-/

namespace A064100.P7720059277568007770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A266508 (2 * n)

end

end A064100.P7720059277568007770

namespace A064100

/-- `(n+1)*A266508(2*n)` -/
def P7720059277568007770.Spec : Prop :=
  ∀ n, P7720059277568007770.a n = A064100 (n + 1)

end A064100

/-! ## A064100.P13035410475732305838

`(n+1)*A279028(2*n)`
-/

namespace A064100.P13035410475732305838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A279028 (2 * n)

end

end A064100.P13035410475732305838

namespace A064100

/-- `(n+1)*A279028(2*n)` -/
def P13035410475732305838.Spec : Prop :=
  ∀ n, P13035410475732305838.a n = A064100 (n + 1)

end A064100

/-! ## A064100.P2310940514927992969

`(n+1)*A279053(2*n)`
-/

namespace A064100.P2310940514927992969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A279053 (2 * n)

end

end A064100.P2310940514927992969

namespace A064100

/-- `(n+1)*A279053(2*n)` -/
def P2310940514927992969.Spec : Prop :=
  ∀ n, P2310940514927992969.a n = A064100 (n + 1)

end A064100

/-! ## A064100.P46134074779178293

`(n+1)*A283641(2*n)`
-/

namespace A064100.P46134074779178293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A283641 (2 * n)

end

end A064100.P46134074779178293

namespace A064100

/-- `(n+1)*A283641(2*n)` -/
def P46134074779178293.Spec : Prop :=
  ∀ n, P46134074779178293.a n = A064100 (n + 1)

end A064100

/-! ## A064100.P17850927688846923996

`(n+1)*A056830(2*n+1)`
-/

namespace A064100.P17850927688846923996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056830 (2 * n + 1)

end

end A064100.P17850927688846923996

namespace A064100

/-- `(n+1)*A056830(2*n+1)` -/
def P17850927688846923996.Spec : Prop :=
  ∀ n, P17850927688846923996.a n = A064100 (n + 1)

end A064100

/-! ## A064100.P9143466070780939720

`(n+1)*A094027(2*n+1)`
-/

namespace A064100.P9143466070780939720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A094027 (2 * n + 1)

end

end A064100.P9143466070780939720

namespace A064100

/-- `(n+1)*A094027(2*n+1)` -/
def P9143466070780939720.Spec : Prop :=
  ∀ n, P9143466070780939720.a n = A064100 (n + 1)

end A064100

/-! ## A064100.P5354699646126916868

`(n+1)*A147759(2*n+1)`
-/

namespace A064100.P5354699646126916868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A147759 (2 * n + 1)

end

end A064100.P5354699646126916868

namespace A064100

/-- `(n+1)*A147759(2*n+1)` -/
def P5354699646126916868.Spec : Prop :=
  ∀ n, P5354699646126916868.a n = A064100 (n + 1)

end A064100

/-! ## A064100.P10422038928315852128

`round((n+1)*A002275(2*(n+1))/11)`
-/

namespace A064100.P10422038928315852128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((A002275 (2 * (n + 1)) : ℚ) / 11))

end

end A064100.P10422038928315852128

namespace A064100

/-- `round((n+1)*A002275(2*(n+1))/11)` -/
def P10422038928315852128.Spec : Prop :=
  ∀ n, P10422038928315852128.a n = A064100 (n + 1)

end A064100

/-!
# A064101: Primes p = prime(k) such that prime(k) + prime(k+5) = prime(k+1) + prime(k+4) = prime(k+2) + prime(k+3).

The programs for A064101, there is no canonical definition to state claims against.
-/

/-! ## A064101.P5579122820600480342

`A008578(lt[1, A359440(n+1)])`
-/

namespace A064101.P5579122820600480342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A064101.P5579122820600480342

/-! ## A064101.P236775639415943304

`A175787(lt[1, A359440(n+1)])`
-/

namespace A064101.P236775639415943304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A064101.P236775639415943304

/-! ## A064101.P3698556844127200659

`A000040(lt[1, A359440(n+2)])`
-/

namespace A064101.P3698556844127200659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359440 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A064101.P3698556844127200659

/-! ## A064101.P8592153028076697723

`A348744(A133033(n+1)-A294932(n+1))`
-/

namespace A064101.P8592153028076697723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348744 (A133033 (n + 1) - A294932 (n + 1)).toNat

end

end A064101.P8592153028076697723

/-!
# A064105: 2nd column of 3rd-order Zeckendorf array A136189.

The programs for A064105, the canonical program `A064105.P10505817968738943948` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064105 has offset 1).

The definition of A064105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064105.P10505817968738943948

`A381841(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A064105

/-- `A381841(n+1)-1` -/
def P10505817968738943948.Spec : Prop :=
  ∀ n, P10505817968738943948.a n = A064105 (n + 1)

theorem P10505817968738943948.correct : P10505817968738943948.Spec := by
  intro n
  simp only [A064105, Nat.add_sub_cancel]

end A064105

/-! ## A064105.P17369513768568690665

`A020942(n+1)+A136495(n+1)`
-/

namespace A064105.P17369513768568690665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1) + A136495 (n + 1)

end

end A064105.P17369513768568690665

namespace A064105

/-- `A020942(n+1)+A136495(n+1)` -/
def P17369513768568690665.Spec : Prop :=
  ∀ n, P17369513768568690665.a n = A064105 (n + 1)

theorem P17369513768568690665.correct : P17369513768568690665.Spec := by
  intro n
  simp only [A064105, Nat.add_sub_cancel, A064105.P17369513768568690665.a, A064105.P10505817968738943948.a, A020942, A020942.P5836413996573018086.a, A136495, A136495.P596664169401550958.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136496, A136496.P805941965056846939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064105

/-! ## A064105.P4551057880677288379

`A020942(A136495(n+1))+1`
-/

namespace A064105.P4551057880677288379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (A136495 (n + 1)).toNat + 1

end

end A064105.P4551057880677288379

namespace A064105

/-- `A020942(A136495(n+1))+1` -/
def P4551057880677288379.Spec : Prop :=
  ∀ n, P4551057880677288379.a n = A064105 (n + 1)

end A064105

/-! ## A064105.P12022210475855096796

`A064106(n+1)-A202342(n+1)`
-/

namespace A064105.P12022210475855096796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064106 (n + 1) - A202342 (n + 1)

end

end A064105.P12022210475855096796

namespace A064105

/-- `A064106(n+1)-A202342(n+1)` -/
def P12022210475855096796.Spec : Prop :=
  ∀ n, P12022210475855096796.a n = A064105 (n + 1)

theorem P12022210475855096796.correct : P12022210475855096796.Spec := by
  intro n
  simp only [A064105, Nat.add_sub_cancel, A064105.P12022210475855096796.a, A064105.P10505817968738943948.a, A064106, A064106.P240912047226861259.a, A202342, A202342.P5796561117243952660.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, A136496, A136496.P805941965056846939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064105

/-! ## A064105.P8344070004036782020

`A372750(n+1)-A372749(n+1)`
-/

namespace A064105.P8344070004036782020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372750 (n + 1) - A372749 (n + 1)

end

end A064105.P8344070004036782020

namespace A064105

/-- `A372750(n+1)-A372749(n+1)` -/
def P8344070004036782020.Spec : Prop :=
  ∀ n, P8344070004036782020.a n = A064105 (n + 1)

theorem P8344070004036782020.correct : P8344070004036782020.Spec := by
  intro n
  simp only [A064105, Nat.add_sub_cancel, A064105.P8344070004036782020.a, A064105.P10505817968738943948.a, A372749, A372749.P13035462491583893748.a, A372750, A372750.P11021400097773802461.a, A381841, A381841.P11592063328882471830.a, A136495, A136495.P596664169401550958.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A005374, A005374.P13862197180797613727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064105

/-! ## A064105.P10820950339257758769

`A136495(n+1)+A202342(n+1)+n`
-/

namespace A064105.P10820950339257758769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + (A202342 (n + 1) + (n : ℤ))

end

end A064105.P10820950339257758769

namespace A064105

/-- `A136495(n+1)+A202342(n+1)+n` -/
def P10820950339257758769.Spec : Prop :=
  ∀ n, P10820950339257758769.a n = A064105 (n + 1)

end A064105

/-! ## A064105.P5477928633338583416

`A020942(n+1)+A372758(n+1)+n`
-/

namespace A064105.P5477928633338583416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1) + (A372758 (n + 1) + (n : ℤ))

end

end A064105.P5477928633338583416

namespace A064105

/-- `A020942(n+1)+A372758(n+1)+n` -/
def P5477928633338583416.Spec : Prop :=
  ∀ n, P5477928633338583416.a n = A064105 (n + 1)

theorem P5477928633338583416.correct : P5477928633338583416.Spec := by
  intro n
  simp only [A064105, Nat.add_sub_cancel, A064105.P5477928633338583416.a, A064105.P10505817968738943948.a, A020942, A020942.P5836413996573018086.a, A372758, A372758.P14293302057458379432.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, A136496, A136496.P805941965056846939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064105

/-! ## A064105.P7194561179637573909

`A064106(n+1)-A020942(n+1)+n`
-/

namespace A064105.P7194561179637573909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064106 (n + 1) - A020942 (n + 1) + (n : ℤ)

end

end A064105.P7194561179637573909

namespace A064105

/-- `A064106(n+1)-A020942(n+1)+n` -/
def P7194561179637573909.Spec : Prop :=
  ∀ n, P7194561179637573909.a n = A064105 (n + 1)

end A064105

/-! ## A064105.P4524587674778487452

`A136496(A136495(n+1))`
-/

namespace A064105.P4524587674778487452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A136495 (n + 1)).toNat

end

end A064105.P4524587674778487452

namespace A064105

/-- `A136496(A136495(n+1))` -/
def P4524587674778487452.Spec : Prop :=
  ∀ n, P4524587674778487452.a n = A064105 (n + 1)

end A064105

/-! ## A064105.P10315282695010843962

`A136496(A372758(n+1)+n)`
-/

namespace A064105.P10315282695010843962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A372758 (n + 1) + (n : ℤ)).toNat

end

end A064105.P10315282695010843962

namespace A064105

/-- `A136496(A372758(n+1)+n)` -/
def P10315282695010843962.Spec : Prop :=
  ∀ n, P10315282695010843962.a n = A064105 (n + 1)

end A064105

/-! ## A064105.P17914991579256440406

`A136496(A005374(A005374(n))+n+1)`
-/

namespace A064105.P17914991579256440406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A005374 (A005374 n).toNat + (n + 1 : ℤ)).toNat

end

end A064105.P17914991579256440406

namespace A064105

/-- `A136496(A005374(A005374(n))+n+1)` -/
def P17914991579256440406.Spec : Prop :=
  ∀ n, P17914991579256440406.a n = A064105 (n + 1)

end A064105

/-! ## A064105.P13526063312333128317

`A064106(n+1)-A136495(A136495(n+1))`
-/

namespace A064105.P13526063312333128317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064106 (n + 1) - A136495 (A136495 (n + 1)).toNat

end

end A064105.P13526063312333128317

namespace A064105

/-- `A064106(n+1)-A136495(A136495(n+1))` -/
def P13526063312333128317.Spec : Prop :=
  ∀ n, P13526063312333128317.a n = A064105 (n + 1)

end A064105

/-! ## A064105.P9518892380335626135

`A202342(A202342(n+1))+1`
-/

namespace A064105.P9518892380335626135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A202342 (n + 1)).toNat + 1

end

end A064105.P9518892380335626135

namespace A064105

/-- `A202342(A202342(n+1))+1` -/
def P9518892380335626135.Spec : Prop :=
  ∀ n, P9518892380335626135.a n = A064105 (n + 1)

end A064105

/-! ## A064105.P13725667076142942162

`A136496(A005374(A202342(n+1)))`
-/

namespace A064105.P13725667076142942162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A005374 (A202342 (n + 1)).toNat).toNat

end

end A064105.P13725667076142942162

namespace A064105

/-- `A136496(A005374(A202342(n+1)))` -/
def P13725667076142942162.Spec : Prop :=
  ∀ n, P13725667076142942162.a n = A064105 (n + 1)

end A064105

/-! ## A064105.P12022059718312184414

`A202341(A136495(n+1)+n+1)`
-/

namespace A064105.P12022059718312184414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202341 (A136495 (n + 1) + (n + 1 : ℤ)).toNat

end

end A064105.P12022059718312184414

namespace A064105

/-- `A202341(A136495(n+1)+n+1)` -/
def P12022059718312184414.Spec : Prop :=
  ∀ n, P12022059718312184414.a n = A064105 (n + 1)

end A064105

/-! ## A064105.P12436391199720473694

`A202341(A372758(n+1)+2*n+1)`
-/

namespace A064105.P12436391199720473694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202341 (A372758 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A064105.P12436391199720473694

namespace A064105

/-- `A202341(A372758(n+1)+2*n+1)` -/
def P12436391199720473694.Spec : Prop :=
  ∀ n, P12436391199720473694.a n = A064105 (n + 1)

end A064105

/-! ## A064105.P7912537553804272828

`∩[A202341(n+1)-1, A202341(n+1)]`
-/

namespace A064105.P7912537553804272828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202341 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064105.P7912537553804272828

namespace A064105

/-- `∩[A202341(n+1)-1, A202341(n+1)]` -/
def P7912537553804272828.Spec : Prop :=
  ∀ n, (P7912537553804272828.a n : ℤ) = A064105 (n + 1)

end A064105

/-! ## A064105.P16084475874943658960

`A136495(n+1)+eq[2, A105083(n)]`
-/

namespace A064105.P16084475874943658960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A064105.P16084475874943658960

namespace A064105

/-- `A136495(n+1)+eq[2, A105083(n)]` -/
def P16084475874943658960.Spec : Prop :=
  ∀ n, P16084475874943658960.a n = A064105 (n + 1)

end A064105

/-! ## A064105.P7495199644422941051

`lt[2, A105083(n)]`
-/

namespace A064105.P7495199644422941051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A064105.P7495199644422941051

namespace A064105

/-- `lt[2, A105083(n)]` -/
def P7495199644422941051.Spec : Prop :=
  ∀ n, (P7495199644422941051.a n : ℤ) = A064105 (n + 1)

end A064105

/-!
# A064106: 3rd column of 3rd-order Zeckendorf array A136189.

The programs for A064106, the canonical program `A064106.P240912047226861259` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064106 has offset 1).

The definition of A064106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064106.P240912047226861259

`A064105(n+1)+A202342(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064106

/-- `A064105(n+1)+A202342(n+1)` -/
def P240912047226861259.Spec : Prop :=
  ∀ n, P240912047226861259.a n = A064106 (n + 1)

theorem P240912047226861259.correct : P240912047226861259.Spec := by
  intro n
  simp only [A064106, Nat.add_sub_cancel]

end A064106

/-! ## A064106.P14434564550089271272

`(A372750(n+1)-n)/2`
-/

namespace A064106.P14434564550089271272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372750 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A064106.P14434564550089271272

namespace A064106

/-- `(A372750(n+1)-n)/2` -/
def P14434564550089271272.Spec : Prop :=
  ∀ n, P14434564550089271272.a n = (A064106 (n + 1) : ℚ)

end A064106

/-! ## A064106.P7624501497521320031

`(A372752(n+1)-n)/3`
-/

namespace A064106.P7624501497521320031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372752 (n + 1) - (n : ℤ) : ℚ) / 3

end

end A064106.P7624501497521320031

namespace A064106

/-- `(A372752(n+1)-n)/3` -/
def P7624501497521320031.Spec : Prop :=
  ∀ n, P7624501497521320031.a n = (A064106 (n + 1) : ℚ)

end A064106

/-! ## A064106.P11181436502093112954

`A064105(A136495(n+1))+1`
-/

namespace A064106.P11181436502093112954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (A136495 (n + 1)).toNat + 1

end

end A064106.P11181436502093112954

namespace A064106

/-- `A064105(A136495(n+1))+1` -/
def P11181436502093112954.Spec : Prop :=
  ∀ n, P11181436502093112954.a n = A064106 (n + 1)

end A064106

/-! ## A064106.P12631049155183570409

`A372749(n+1)-A020942(n+1)`
-/

namespace A064106.P12631049155183570409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372749 (n + 1) - A020942 (n + 1)

end

end A064106.P12631049155183570409

namespace A064106

/-- `A372749(n+1)-A020942(n+1)` -/
def P12631049155183570409.Spec : Prop :=
  ∀ n, P12631049155183570409.a n = A064106 (n + 1)

theorem P12631049155183570409.correct : P12631049155183570409.Spec := by
  intro n
  simp only [A064106, Nat.add_sub_cancel, A064106.P12631049155183570409.a, A064106.P240912047226861259.a, A020942, A020942.P5836413996573018086.a, A064105, A064105.P10505817968738943948.a, A202342, A202342.P5796561117243952660.a, A372749, A372749.P13035462491583893748.a, A005374, A005374.P13862197180797613727.a, A136496, A136496.P805941965056846939.a, A381841, A381841.P11592063328882471830.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064106

/-! ## A064106.P13693376179526241609

`A372752(n+1)-A372750(n+1)`
-/

namespace A064106.P13693376179526241609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372752 (n + 1) - A372750 (n + 1)

end

end A064106.P13693376179526241609

namespace A064106

/-- `A372752(n+1)-A372750(n+1)` -/
def P13693376179526241609.Spec : Prop :=
  ∀ n, P13693376179526241609.a n = A064106 (n + 1)

theorem P13693376179526241609.correct : P13693376179526241609.Spec := by
  intro n
  simp only [A064106, Nat.add_sub_cancel, A064106.P13693376179526241609.a, A064106.P240912047226861259.a, A064105, A064105.P10505817968738943948.a, A202342, A202342.P5796561117243952660.a, A372750, A372750.P11021400097773802461.a, A372752, A372752.P5687007721040332012.a, A005374, A005374.P13862197180797613727.a, A136496, A136496.P805941965056846939.a, A381841, A381841.P11592063328882471830.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064106

/-! ## A064106.P6301502210895108310

`A372758(n+1)+2*A020942(n+1)`
-/

namespace A064106.P6301502210895108310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (n + 1) + 2 * A020942 (n + 1)

end

end A064106.P6301502210895108310

namespace A064106

/-- `A372758(n+1)+2*A020942(n+1)` -/
def P6301502210895108310.Spec : Prop :=
  ∀ n, P6301502210895108310.a n = A064106 (n + 1)

end A064106

/-! ## A064106.P17639110140752962181

`A020942(n+1)+A064105(n+1)-n`
-/

namespace A064106.P17639110140752962181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1) + (A064105 (n + 1) - (n : ℤ))

end

end A064106.P17639110140752962181

namespace A064106

/-- `A020942(n+1)+A064105(n+1)-n` -/
def P17639110140752962181.Spec : Prop :=
  ∀ n, P17639110140752962181.a n = A064106 (n + 1)

end A064106

/-! ## A064106.P10528693766649009964

`A020942(A202342(n+1))+2`
-/

namespace A064106.P10528693766649009964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (A202342 (n + 1)).toNat + 2

end

end A064106.P10528693766649009964

namespace A064106

/-- `A020942(A202342(n+1))+2` -/
def P10528693766649009964.Spec : Prop :=
  ∀ n, P10528693766649009964.a n = A064106 (n + 1)

end A064106

/-! ## A064106.P10653712607923815816

`A381841(A136495(n+1))`
-/

namespace A064106.P10653712607923815816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A136495 (n + 1)).toNat

end

end A064106.P10653712607923815816

namespace A064106

/-- `A381841(A136495(n+1))` -/
def P10653712607923815816.Spec : Prop :=
  ∀ n, P10653712607923815816.a n = A064106 (n + 1)

end A064106

/-! ## A064106.P13203525108491383273

`A381841(A372758(n+1)+n)`
-/

namespace A064106.P13203525108491383273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A372758 (n + 1) + (n : ℤ)).toNat

end

end A064106.P13203525108491383273

namespace A064106

/-- `A381841(A372758(n+1)+n)` -/
def P13203525108491383273.Spec : Prop :=
  ∀ n, P13203525108491383273.a n = A064106 (n + 1)

end A064106

/-! ## A064106.P11671621620506013447

`A381841(A064105(n+1)-A020942(n+1))`
-/

namespace A064106.P11671621620506013447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A064105 (n + 1) - A020942 (n + 1)).toNat

end

end A064106.P11671621620506013447

namespace A064106

/-- `A381841(A064105(n+1)-A020942(n+1))` -/
def P11671621620506013447.Spec : Prop :=
  ∀ n, P11671621620506013447.a n = A064106 (n + 1)

end A064106

/-! ## A064106.P11463652232690910434

`A020942(A136496(n+1))-A136496(n+1)`
-/

namespace A064106.P11463652232690910434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (A136496 (n + 1)).toNat - A136496 (n + 1)

end

end A064106.P11463652232690910434

namespace A064106

/-- `A020942(A136496(n+1))-A136496(n+1)` -/
def P11463652232690910434.Spec : Prop :=
  ∀ n, P11463652232690910434.a n = A064106 (n + 1)

end A064106

/-! ## A064106.P5430258577579906588

`A381841(A005374(A202342(n+1)))`
-/

namespace A064106.P5430258577579906588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A005374 (A202342 (n + 1)).toNat).toNat

end

end A064106.P5430258577579906588

namespace A064106

/-- `A381841(A005374(A202342(n+1)))` -/
def P5430258577579906588.Spec : Prop :=
  ∀ n, P5430258577579906588.a n = A064106 (n + 1)

end A064106

/-! ## A064106.P9992320126675338384

`A202342(A202342(n+1)+n)+2`
-/

namespace A064106.P9992320126675338384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A202342 (n + 1) + (n : ℤ)).toNat + 2

end

end A064106.P9992320126675338384

namespace A064106

/-- `A202342(A202342(n+1)+n)+2` -/
def P9992320126675338384.Spec : Prop :=
  ∀ n, P9992320126675338384.a n = A064106 (n + 1)

end A064106

/-! ## A064106.P14200744628167031511

`A381841(A372758(A020942(n+1)))`
-/

namespace A064106.P14200744628167031511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A372758 (A020942 (n + 1)).toNat).toNat

end

end A064106.P14200744628167031511

namespace A064106

/-- `A381841(A372758(A020942(n+1)))` -/
def P14200744628167031511.Spec : Prop :=
  ∀ n, P14200744628167031511.a n = A064106 (n + 1)

end A064106

/-! ## A064106.P11761281494831547719

`A202341(A381841(n+1)-n)`
-/

namespace A064106.P11761281494831547719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202341 (A381841 (n + 1) - (n : ℤ)).toNat

end

end A064106.P11761281494831547719

namespace A064106

/-- `A202341(A381841(n+1)-n)` -/
def P11761281494831547719.Spec : Prop :=
  ∀ n, P11761281494831547719.a n = A064106 (n + 1)

end A064106

/-! ## A064106.P8956940551714400503

`A136495(A064105(n+1))`
-/

namespace A064106.P8956940551714400503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A064105 (n + 1)).toNat

end

end A064106.P8956940551714400503

namespace A064106

/-- `A136495(A064105(n+1))` -/
def P8956940551714400503.Spec : Prop :=
  ∀ n, P8956940551714400503.a n = A064106 (n + 1)

end A064106

/-! ## A064106.P6107390956685132409

`A136495(lt[2, A105083(n)])`
-/

namespace A064106.P6107390956685132409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A064106.P6107390956685132409

namespace A064106

/-- `A136495(lt[2, A105083(n)])` -/
def P6107390956685132409.Spec : Prop :=
  ∀ n, P6107390956685132409.a n = A064106 (n + 1)

end A064106

/-!
# A064107: Continued fraction quotients for e^e = 15.15426224... (A073226).

The programs for A064107, there is no canonical definition to state claims against.
-/

/-! ## A064107.P7344978108037164766

`A116907(n+1)`
-/

namespace A064107.P7344978108037164766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116907 (n + 1)

end

end A064107.P7344978108037164766

/-!
# A064108: a(n) = (20^n - 1)/19.

The programs for A064108, the canonical program `A064108.P1250208547377425864` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064108 has offset 0).

The definition of A064108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(20^n-1)/19` (program `A064108.P7902289262578448078`, by `A064108.P7902289262578448078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064108.P1250208547377425864

`20*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064108

/-- `20*a(n-1)+1` -/
def P1250208547377425864.Spec : Prop :=
  ∀ n, (P1250208547377425864.a n : ℤ) = A064108 n

theorem P1250208547377425864.correct : P1250208547377425864.Spec := by
  intro n
  simp only [A064108]

end A064108

/-! ## A064108.P941133671505970890

`floor(20^n/19)`
-/

namespace A064108.P941133671505970890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(20 ^ n : ℚ) / 19⌋

end

end A064108.P941133671505970890

namespace A064108

/-- `floor(20^n/19)` -/
def P941133671505970890.Spec : Prop :=
  ∀ n, P941133671505970890.a n = A064108 n

end A064108

/-! ## A064108.P7902289262578448078

`(20^n-1)/19`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064108.P7902289262578448078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((20 ^ n : ℤ) - 1 : ℚ) / 19

end

end A064108.P7902289262578448078

namespace A064108

/-- `(20^n-1)/19` -/
def P7902289262578448078.Spec : Prop :=
  ∀ n, P7902289262578448078.a n = (A064108 n : ℚ)

theorem P7902289262578448078.correct : P7902289262578448078.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A064108, Nat.add_sub_cancel, A064108.P7902289262578448078.a, A064108.P1250208547377425864.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A064108, Nat.add_sub_cancel, A064108.P7902289262578448078.a, A064108.P1250208547377425864.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A064108

/-! ## A064108.P8023380593558187795

`ogf(x/(1-21x+20x^2))`
-/

namespace A064108.P8023380593558187795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -21, 20] n

end

end A064108.P8023380593558187795

namespace A064108

/-- `ogf(x/(1-21x+20x^2))` -/
def P8023380593558187795.Spec : Prop :=
  ∀ n, P8023380593558187795.a n = A064108 n

end A064108

/-! ## A064108.P3497804048941630293

`lcm(20, a(n-1))+1` with `a(0)=0`
-/

namespace A064108.P3497804048941630293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 20 (a (n - 1)) + 1

end

end A064108.P3497804048941630293

namespace A064108

/-- `lcm(20, a(n-1))+1` -/
def P3497804048941630293.Spec : Prop :=
  ∀ n, (P3497804048941630293.a n : ℤ) = A064108 n

end A064108

/-! ## A064108.P16104198847068789700

`or(1, 20*a(n-1))` with `a(0)=0`
-/

namespace A064108.P16104198847068789700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (20 * a (n - 1))

end

end A064108.P16104198847068789700

namespace A064108

/-- `or(1, 20*a(n-1))` -/
def P16104198847068789700.Spec : Prop :=
  ∀ n, (P16104198847068789700.a n : ℤ) = A064108 n

end A064108

/-! ## A064108.P15590536854007627116

`xor(1, 20*a(n-1))` with `a(0)=0`
-/

namespace A064108.P15590536854007627116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (20 * a (n - 1))

end

end A064108.P15590536854007627116

namespace A064108

/-- `xor(1, 20*a(n-1))` -/
def P15590536854007627116.Spec : Prop :=
  ∀ n, (P15590536854007627116.a n : ℤ) = A064108 n

end A064108

/-! ## A064108.P86348388543674118

`∑[20*a(n-1)]-1` with `a(0)=1, a(1)=1`
-/

namespace A064108.P86348388543674118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  20 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A064108.P86348388543674118

namespace A064108

/-- `∑[20*a(n-1)]-1` -/
def P86348388543674118.Spec : Prop :=
  ∀ n, P86348388543674118.a n = A064108 n

end A064108

/-! ## A064108.P8450663444711905568

`5-4*(1-5*a(n-1))` with `a(0)=0`
-/

namespace A064108.P8450663444711905568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 - 4 * (1 - 5 * a (n - 1))

end

end A064108.P8450663444711905568

namespace A064108

/-- `5-4*(1-5*a(n-1))` -/
def P8450663444711905568.Spec : Prop :=
  ∀ n, P8450663444711905568.a n = A064108 n

end A064108

/-! ## A064108.P13479873142932405591

`∑[A017964(2*n)]-A017964(2*n)`
-/

namespace A064108.P13479873142932405591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017964 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A017964 (2 * n)

end

end A064108.P13479873142932405591

namespace A064108

/-- `∑[A017964(2*n)]-A017964(2*n)` -/
def P13479873142932405591.Spec : Prop :=
  ∀ n, P13479873142932405591.a n = A064108 n

end A064108

/-!
# A064109: (Product_{k=1..n} prime(k)) - prime(4n).

The programs for A064109, there is no canonical definition to state claims against.
-/

/-! ## A064109.P12118220768011154645

`A002110(n+1)-A031337(n+1)`
-/

namespace A064109.P12118220768011154645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A031337 (n + 1)

end

end A064109.P12118220768011154645

/-! ## A064109.P18440031378938574924

`∏[A000040(n+1)]-A000040(4*(n+1))`
-/

namespace A064109.P18440031378938574924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000040 (4 * (n + 1))

end

end A064109.P18440031378938574924

/-! ## A064109.P16277444649559607324

`∏[A008578(n+2)]-A008578(4*n+5)`
-/

namespace A064109.P16277444649559607324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A008578 (4 * n + 5)

end

end A064109.P16277444649559607324

/-! ## A064109.P9264599216823936766

`∏[A219606(2*(n+1))]-A065091(4*n+3)`
-/

namespace A064109.P9264599216823936766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A065091 (4 * n + 3)

end

end A064109.P9264599216823936766

/-! ## A064109.P2856112987382890415

`A002110(n+1)-A000040(A008574(n+1))`
-/

namespace A064109.P2856112987382890415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A000040 (A008574 (n + 1)).toNat

end

end A064109.P2856112987382890415

/-! ## A064109.P4957326743609186534

`A034386(A000040(n+1))-A031337(n+1)`
-/

namespace A064109.P4957326743609186534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A000040 (n + 1)).toNat - A031337 (n + 1)

end

end A064109.P4957326743609186534

/-! ## A064109.P9116546151481720845

`∏[A008578(n+2)]-A000040(A008574(n+1))`
-/

namespace A064109.P9116546151481720845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000040 (A008574 (n + 1)).toNat

end

end A064109.P9116546151481720845

/-! ## A064109.P18228408155703451520

`A319865(A330737(n+1))-A000040(A008574(n+1))`
-/

namespace A064109.P18228408155703451520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319865 (A330737 (n + 1)).toNat - A000040 (A008574 (n + 1)).toNat

end

end A064109.P18228408155703451520

/-!
# A064110: Let s(n) = n-th single prime (cf. A007510). Sequence is defined by recurrence a(n+1) = s(a(n)), n = 0,1,2,..., a(0)=1.

The programs for A064110, there is no canonical definition to state claims against.
-/

/-! ## A064110.P13661613817288994199

`A007510(a(n-1))` with `a(0)=1`
-/

namespace A064110.P13661613817288994199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007510 (a (n - 1)).toNat

end

end A064110.P13661613817288994199

/-! ## A064110.P11306690803237613351

`A167277(a(n-1))+1` with `a(0)=1`
-/

namespace A064110.P11306690803237613351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167277 (a (n - 1)).toNat + 1

end

end A064110.P11306690803237613351

/-!
# A064111: Numbers k such that sopf(k) + 1 = sopf(k+1), where sopf(k) = A008472(k).

The programs for A064111, there is no canonical definition to state claims against.
-/

/-! ## A064111.P16464202730524304165

`eq[A008472(n+1), A074372(A028310(n))]`
-/

namespace A064111.P16464202730524304165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064111.P16464202730524304165

/-! ## A064111.P16610346557526429502

`eq[A074372(A028310(n))², A235323(n+1)]`
-/

namespace A064111.P16610346557526429502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (A028310 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064111.P16610346557526429502

/-! ## A064111.P9205153265320174260

`eq[A074372(n+1)-1, A074372(A028310(n))]`
-/

namespace A064111.P9205153265320174260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064111.P9205153265320174260

/-! ## A064111.P15192801603800578196

`eq[A055631(n+1)+A001221(n+1), A074372(A028310(n))]`
-/

namespace A064111.P15192801603800578196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (n + 1) + A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064111.P15192801603800578196

/-! ## A064111.P8241960347153275765

`eq[A008472(n+1), A074372(A257088(n))]`
-/

namespace A064111.P8241960347153275765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064111.P8241960347153275765

/-!
# A064113: Indices k such that (1/3)*(prime(k)+prime(k+1)+prime(k+2)) is a prime.

The programs for A064113, there is no canonical definition to state claims against.
-/

/-! ## A064113.P11575580086630992351

`A000720(A006562(n+1))-1`
-/

namespace A064113.P11575580086630992351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006562 (n + 1)).toNat - 1

end

end A064113.P11575580086630992351

/-! ## A064113.P2407668744761385421

`∑[A333216(n+1)]`
-/

namespace A064113.P2407668744761385421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064113.P2407668744761385421

/-! ## A064113.P6223393565264527578

`A066875(n+1)-1`
-/

namespace A064113.P6223393565264527578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066875 (n + 1) - 1

end

end A064113.P6223393565264527578

/-! ## A064113.P8870477198455655819

`A356347(n+1)-2`
-/

namespace A064113.P8870477198455655819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356347 (n + 1) - 2

end

end A064113.P8870477198455655819

/-! ## A064113.P5718978424774765475

`A173390(n+1)+A333216(n+1)-1`
-/

namespace A064113.P5718978424774765475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173390 (n + 1) + (A333216 (n + 1) - 1)

end

end A064113.P5718978424774765475

/-! ## A064113.P5603368613118402332

`A173390(n+2)-1`
-/

namespace A064113.P5603368613118402332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173390 (n + 2) - 1

end

end A064113.P5603368613118402332

/-! ## A064113.P3683942059960231695

`A066491(Δ[n²])`
-/

namespace A064113.P3683942059960231695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066491 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A064113.P3683942059960231695

/-! ## A064113.P10841327599518729701

`A066491(2*(n+1))-1`
-/

namespace A064113.P10841327599518729701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066491 (2 * (n + 1)) - 1

end

end A064113.P10841327599518729701

/-! ## A064113.P1495605435533939823

`lt[A036263(n+1)², 1]+1`
-/

namespace A064113.P1495605435533939823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064113.P1495605435533939823

/-! ## A064113.P12467751354182503591

`∑[A145024(n+1)]-1`
-/

namespace A064113.P12467751354182503591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A064113.P12467751354182503591

/-! ## A064113.P8753620382853394580

`lt[A079054(n+2)², 1]+1`
-/

namespace A064113.P8753620382853394580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064113.P8753620382853394580

/-! ## A064113.P3553367299369391188

`∩[A333230(n+1), A333231(n+1)]`
-/

namespace A064113.P3553367299369391188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064113.P3553367299369391188

/-! ## A064113.P82598276032974829

`eq[1, A179835(n+1)]`
-/

namespace A064113.P82598276032974829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064113.P82598276032974829

/-! ## A064113.P8965263876587763416

`eq[1, A053597(n+1)]+1`
-/

namespace A064113.P8965263876587763416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064113.P8965263876587763416

/-! ## A064113.P12489593232445902722

`eq[1, A073272(n+1)]+1`
-/

namespace A064113.P12489593232445902722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064113.P12489593232445902722

/-! ## A064113.P9885753200205043016

`eq[1, A073274(n+1)]+1`
-/

namespace A064113.P9885753200205043016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064113.P9885753200205043016

/-! ## A064113.P16334263770837969599

`eq[1, A083552(n+1)]+1`
-/

namespace A064113.P16334263770837969599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083552 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064113.P16334263770837969599

/-! ## A064113.P4831844611186569480

`lt[2, A031217(n+1)]+1`
-/

namespace A064113.P4831844611186569480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A064113.P4831844611186569480

/-! ## A064113.P6712998797059164859

`eq[2, A108415(n+2)]+1`
-/

namespace A064113.P6712998797059164859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064113.P6712998797059164859

/-!
# A064114: Unitary weird numbers: unitary abundant (A034683) but not unitary pseudoperfect (A293188).

The programs for A064114, there is no canonical definition to state claims against.
-/

/-! ## A064114.P7326772952175966359

`∪[A328562(n+1), A348631(n+1)]`
-/

namespace A064114.P7326772952175966359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A064114.P7326772952175966359

/-! ## A064114.P14292990469295905690

`record[A009531(A292986(n+1))]`
-/

namespace A064114.P14292990469295905690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A292986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064114.P14292990469295905690

/-! ## A064114.P6108462712284672358

`record[A009531(A306984(n+1))]`
-/

namespace A064114.P6108462712284672358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A306984 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064114.P6108462712284672358

/-! ## A064114.P856722845181654963

`filter[A292986(n+1), A168181(#)]`
-/

namespace A064114.P856722845181654963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A064114.P856722845181654963

/-! ## A064114.P9653764328014811255

`filter[A306984(n+1), A168181(#)]`
-/

namespace A064114.P9653764328014811255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A064114.P9653764328014811255

/-!
# A064116: Composite numbers whose sum of aliquot divisors as well as product of aliquot divisors is a perfect square.

The programs for A064116, there is no canonical definition to state claims against.
-/

/-! ## A064116.P9413594423241076360

`A064121(n+2)`
-/

namespace A064116.P9413594423241076360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064121 (n + 2)

end

end A064116.P9413594423241076360

/-! ## A064116.P13743284180997705109

`record[A064121(A008619(A133265(n)))]`
-/

namespace A064116.P13743284180997705109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064121 (A008619 (A133265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064116.P13743284180997705109

/-! ## A064116.P927372469056723672

`record[A064121(A080513(A116966(n)))]`
-/

namespace A064116.P927372469056723672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064121 (A080513 (A116966 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064116.P927372469056723672

/-! ## A064116.P8538659441255991344

`record[A064121(A133310(A133310(n)))]`
-/

namespace A064116.P8538659441255991344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064121 (A133310 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064116.P8538659441255991344

/-! ## A064116.P16871944459543073466

`record[A064121(A080513(A028242(n)))]`
-/

namespace A064116.P16871944459543073466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064121 (A080513 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064116.P16871944459543073466

/-! ## A064116.P13233810223826802338

`record[A064121(A109785(A109613(n)))]`
-/

namespace A064116.P13233810223826802338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064121 (A109785 (A109613 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064116.P13233810223826802338

/-! ## A064116.P3529152395916119097

`∩[A048699(n+1), A064499(n+1)]`
-/

namespace A064116.P3529152395916119097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064116.P3529152395916119097

/-! ## A064116.P9190221063808926541

`record[A064121(A000267(A008680(n)))]`
-/

namespace A064116.P9190221063808926541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064121 (A000267 (A008680 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064116.P9190221063808926541

/-! ## A064116.P14256667696564444918

`∩[A064499(n+1), A073040(n+1)]`
-/

namespace A064116.P14256667696564444918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064116.P14256667696564444918

/-! ## A064116.P11772200449477090596

`filter[A048699(n+2), A369253(#)]`
-/

namespace A064116.P11772200449477090596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048699 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A064116.P11772200449477090596

/-!
# A064118: Numbers k such that the first k digits of e form a prime.

The programs for A064118, there is no canonical definition to state claims against.
-/

/-! ## A064118.P8442781414846150992

`A323694(n)+A001222(A041147(n))`
-/

namespace A064118.P8442781414846150992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323694 n + A001222 (A041147 n).toNat

end

end A064118.P8442781414846150992

/-!
# A064120: A036981(n)/n!^2.

The programs for A064120, there is no canonical definition to state claims against.
-/

/-! ## A064120.P6153685097166212396

`A036981(n)/n!²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064120.P6153685097166212396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036981 n : ℚ) / (Nat.factorial n ^ 2 : ℚ)

end

end A064120.P6153685097166212396

/-!
# A064121: Nonprime numbers n such that the sum of aliquot divisors of n (A001065) and product of aliquot divisors of n (A048741) are both perfect squares.

The programs for A064121, there is no canonical definition to state claims against.
-/

/-! ## A064121.P12122440656197454731

`∪[A051470(n+1), A064116(n+1)]`
-/

namespace A064121.P12122440656197454731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A064121.P12122440656197454731

/-! ## A064121.P3008419167393464235

`A064116(A028310(n%(2*a(n-1))))` with `a(0)=1`
-/

namespace A064121.P3008419167393464235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064116 (A028310 (Int.tmod (n : ℤ) (2 * a (n - 1))).toNat).toNat

end

end A064121.P3008419167393464235

/-! ## A064121.P5447921711238586946

`A064116(A028310(n))^(1-A000007(n))`
-/

namespace A064121.P5447921711238586946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064116 (A028310 n).toNat : ℚ) ^ (1 - A000007 n : ℤ)

end

end A064121.P5447921711238586946

/-! ## A064121.P16980912266663535230

`∩[∪[2^n, A064116(n+1)], A048699(n+1)]`
-/

namespace A064121.P16980912266663535230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064116 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A064121.P16980912266663535230

/-! ## A064121.P5781737030427739194

`filter[A048699(n+1), A369253(#)]`
-/

namespace A064121.P5781737030427739194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A064121.P5781737030427739194

/-! ## A064121.P8213207005778959612

`∩[A048699(n+1), A369254(n+1)]`
-/

namespace A064121.P8213207005778959612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064121.P8213207005778959612

/-!
# A064125: Numbers k such that k and k+1 have the same sum of unitary divisors (A034448).

The programs for A064125, there is no canonical definition to state claims against.
-/

/-! ## A064125.P5089712619565279141

`eq[0, A064992(A028310(n))]`
-/

namespace A064125.P5089712619565279141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064992 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064125.P5089712619565279141

/-!
# A064126: Number of divisors of 10^n - 1 that are relatively prime to 10^m - 1 for all 0 < m < n.

The programs for A064126, there is no canonical definition to state claims against.
-/

/-! ## A064126.P12658156396377489674

`(ceil(acot(n))+1)^A112505(n+1)`
-/

namespace A064126.P12658156396377489674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈SequenceMachineLib.acot (n : ℝ)⌉ + 1 : ℚ) ^ (A112505 (n + 1) : ℤ)

end

end A064126.P12658156396377489674

/-! ## A064126.P16242180730572174434

`p?[A316826(n)]^A112505(n+1)`
-/

namespace A064126.P16242180730572174434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A112505 (n + 1) : ℤ)

end

end A064126.P16242180730572174434

/-! ## A064126.P12608496007883310996

`A000007(n)+2^A112505(n+1)`
-/

namespace A064126.P12608496007883310996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (2 : ℚ) ^ (A112505 (n + 1) : ℤ)

end

end A064126.P12608496007883310996

/-! ## A064126.P16521703391464509480

`or(2, A000122(n))^A112505(n+1)`
-/

namespace A064126.P16521703391464509480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 (A000122 n) : ℚ) ^ (A112505 (n + 1) : ℤ)

end

end A064126.P16521703391464509480

/-! ## A064126.P4952912628634008391

`A006530(a(n-1))^A112505(n+1)` with `a(0)=3, a(1)=2`
-/

namespace A064126.P4952912628634008391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n a =>
  (A006530 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) ^ (A112505 (n + 1) : ℤ)

end

end A064126.P4952912628634008391

/-! ## A064126.P9164309043477433492

`A020639(a(n-1))^A112505(n+1)` with `a(0)=3, a(1)=2`
-/

namespace A064126.P9164309043477433492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n a =>
  (A020639 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) ^ (A112505 (n + 1) : ℤ)

end

end A064126.P9164309043477433492

/-! ## A064126.P11784000961550901836

`A020639(A000040(n+1)+1)^A112505(n+1)`
-/

namespace A064126.P11784000961550901836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A000040 (n + 1) + 1).toNat : ℚ) ^ (A112505 (n + 1) : ℤ)

end

end A064126.P11784000961550901836

/-! ## A064126.P14476248401143564747

`A020639(A000032(C(2, n+2))+2)^A112505(n+1)`
-/

namespace A064126.P14476248401143564747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A000032 (Nat.choose 2 (n + 2)) + 2).toNat : ℚ) ^ (A112505 (n + 1) : ℤ)

end

end A064126.P14476248401143564747

/-!
# A064127: Number of divisors of 11^n - 1 that are relatively prime to 11^m - 1 for all 0 < m < n.

The programs for A064127, there is no canonical definition to state claims against.
-/

/-! ## A064127.P6776319700983452550

`A074803(or(2^(∑[n+1]%(n+2))-1, (n+1)*(n+3)²))`
-/

namespace A064127.P6776319700983452550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074803 (Int.lor ((2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2)) : ℤ) - 1) ((n + 1) * (n + 3) ^ 2 : ℤ)).toNat

end

end A064127.P6776319700983452550

/-! ## A064127.P9505921569144739178

`2*A014709(A024597(n+1))`
-/

namespace A064127.P9505921569144739178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014709 (A024597 (n + 1)).toNat

end

end A064127.P9505921569144739178

/-! ## A064127.P18107583883258389399

`A074803(A009766(n)*A017569(n))`
-/

namespace A064127.P18107583883258389399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074803 (A009766 n * A017569 n).toNat

end

end A064127.P18107583883258389399

/-! ## A064127.P9371792453976603222

`gcd(A086909(n+5), A086909(A180000(n)))`
-/

namespace A064127.P9371792453976603222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086909 (n + 5)) (A086909 (A180000 n).toNat)

end

end A064127.P9371792453976603222

/-! ## A064127.P6866358645187725565

`A071928(A008284(2*(n+1))+A000032(n))`
-/

namespace A064127.P6866358645187725565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071928 (A008284 (2 * (n + 1)) + A000032 n).toNat

end

end A064127.P6866358645187725565

/-!
# A064129: Number of divisors of 12^n - 1 that are relatively prime to 12^m - 1 for all 0 < m < n.

The programs for A064129, there is no canonical definition to state claims against.
-/

/-! ## A064129.P3604515012497592541

`A034444(or(A240219(3*(n+1)), A325280(n)))`
-/

namespace A064129.P3604515012497592541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (Int.lor (A240219 (3 * (n + 1))) (A325280 n)).toNat

end

end A064129.P3604515012497592541

/-! ## A064129.P7113074360969044540

`A001227(A121326(n+1)+A001971(n))`
-/

namespace A064129.P7113074360969044540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A121326 (n + 1) + A001971 n).toNat

end

end A064129.P7113074360969044540

/-! ## A064129.P3118522734389386987

`A318307(A244169(n+6)+A209224(n+1))`
-/

namespace A064129.P3118522734389386987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318307 (A244169 (n + 6) + A209224 (n + 1)).toNat

end

end A064129.P3118522734389386987

/-! ## A064129.P1048524878795945572

`A034444(A294157(n)-A002262(n))`
-/

namespace A064129.P1048524878795945572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A294157 n - A002262 n).toNat

end

end A064129.P1048524878795945572

/-! ## A064129.P14587974313450713925

`A034444(A037079(n)+A000040(n+1))`
-/

namespace A064129.P14587974313450713925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A037079 n + A000040 (n + 1)).toNat

end

end A064129.P14587974313450713925

/-!
# A064130: Number of divisors of 2^n + 1 that are relatively prime to 2^m + 1 for all 0 < m < n.

The programs for A064130, there is no canonical definition to state claims against.
-/

/-! ## A064130.P9538348204988657860

`A063982(n*a(and(1, n+1)))` with `a(0)=2`
-/

namespace A064130.P9538348204988657860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A063982 ((n : ℤ) * a (Nat.land 1 (n + 1))).toNat

end

end A064130.P9538348204988657860

/-! ## A064130.P6978532140470513051

`A063982(2*(n+1)-2%(n+1))`
-/

namespace A064130.P6978532140470513051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (2 * (n + 1) - 2 % (n + 1))

end

end A064130.P6978532140470513051

/-! ## A064130.P4480255614680666165

`A063982(A004278(n+2))`
-/

namespace A064130.P4480255614680666165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (A004278 (n + 2)).toNat

end

end A064130.P4480255614680666165

/-! ## A064130.P15651529111068606019

`A063982(A300576(n+2))`
-/

namespace A064130.P15651529111068606019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (A300576 (n + 2)).toNat

end

end A064130.P15651529111068606019

/-! ## A064130.P12342064410781053989

`A063982(2*A028310(n))`
-/

namespace A064130.P12342064410781053989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (2 * A028310 n).toNat

end

end A064130.P12342064410781053989

/-! ## A064130.P10236880835973595614

`A063982(2*A233583(n+1))`
-/

namespace A064130.P10236880835973595614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (2 * A233583 (n + 1)).toNat

end

end A064130.P10236880835973595614

/-! ## A064130.P14426722953022638756

`A063982(A233583(n+1+n))`
-/

namespace A064130.P14426722953022638756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (A233583 (n + 1 + n)).toNat

end

end A064130.P14426722953022638756

/-! ## A064130.P3682281164523940126

`A063982(A256415(2*(n+1))-2)`
-/

namespace A064130.P3682281164523940126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (A256415 (2 * (n + 1)) - 2).toNat

end

end A064130.P3682281164523940126

/-! ## A064130.P18335641285803096637

`A063982(eq[1, gcd(n, A063982(n+2))]+1)`
-/

namespace A064130.P18335641285803096637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A063982 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A064130.P18335641285803096637

/-! ## A064130.P17185137600538803029

`A063982(2*(n+1-char[A027750(n+1)]))`
-/

namespace A064130.P17185137600538803029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (2 * ((n + 1 : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))).toNat

end

end A064130.P17185137600538803029

/-! ## A064130.P2985244189164452526

`A063982(A271942(∑[n]+3)+1)`
-/

namespace A064130.P2985244189164452526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (A271942 (∑ j ∈ Finset.range (n + 1), f1 j + 3) + 1).toNat

end

end A064130.P2985244189164452526

/-! ## A064130.P17425140780123550822

`2^A086257(A007318(∑[n]+1))`
-/

namespace A064130.P17425140780123550822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A086257 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat : ℤ)

end

end A064130.P17425140780123550822

/-! ## A064130.P4108562169403526352

`2^A086257(n/A007318(∑[n]))`
-/

namespace A064130.P4108562169403526352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A086257 (SequenceMachineLib.roundAway ((n : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))).toNat : ℤ)

end

end A064130.P4108562169403526352

/-!
# A064131: Number of divisors of 3^n + 1 that are relatively prime to 3^m + 1 for all 0 < m < n.

The programs for A064131, there is no canonical definition to state claims against.
-/

/-! ## A064131.P5606735518587424123

`A064122(A004271(n)+4)`
-/

namespace A064131.P5606735518587424123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064122 (A004271 n + 4).toNat

end

end A064131.P5606735518587424123

/-! ## A064131.P8854849376997150760

`A064122(round(log2(A062709(n)²)))`
-/

namespace A064131.P8854849376997150760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064122 (SequenceMachineLib.roundAway (Real.logb 2 (A062709 n ^ 2 : ℝ))).toNat

end

end A064131.P8854849376997150760

/-! ## A064131.P11809073392510487291

`A064122(A169585(n)+2*n)`
-/

namespace A064131.P11809073392510487291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064122 (A169585 n + (2 * n : ℤ)).toNat

end

end A064131.P11809073392510487291

/-! ## A064131.P14437051220944335951

`A064122(round(2*log2(A062709(n))))`
-/

namespace A064131.P14437051220944335951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064122 (SequenceMachineLib.roundAway (2 * Real.logb 2 (A062709 n : ℝ))).toNat

end

end A064131.P14437051220944335951

/-! ## A064131.P16725201522592061533

`A064122(A169585(n)+n+n)`
-/

namespace A064131.P16725201522592061533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064122 (A169585 n + (n : ℤ) + (n : ℤ)).toNat

end

end A064131.P16725201522592061533

/-!
# A064132: Number of divisors of 5^n + 1 that are relatively prime to 5^m + 1 for all 0 < m < n.

The programs for A064132, there is no canonical definition to state claims against.
-/

/-! ## A064132.P7684627938589054292

`A064123(A004271(n)+4)`
-/

namespace A064132.P7684627938589054292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064123 (A004271 n + 4).toNat

end

end A064132.P7684627938589054292

/-! ## A064132.P10147341456267076763

`A064123(round(log2(A062709(n)²)))`
-/

namespace A064132.P10147341456267076763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064123 (SequenceMachineLib.roundAway (Real.logb 2 (A062709 n ^ 2 : ℝ))).toNat

end

end A064132.P10147341456267076763

/-! ## A064132.P2988241170113794247

`A064123(round(2*log2(A062709(n))))`
-/

namespace A064132.P2988241170113794247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064123 (SequenceMachineLib.roundAway (2 * Real.logb 2 (A062709 n : ℝ))).toNat

end

end A064132.P2988241170113794247

/-! ## A064132.P9164885647460158411

`A064123(A169585(n)+A004277(n))`
-/

namespace A064132.P9164885647460158411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064123 (A169585 n + A004277 n).toNat

end

end A064132.P9164885647460158411

/-! ## A064132.P14299500346884788926

`A064123(A169585(n)+A004275(n+1))`
-/

namespace A064132.P14299500346884788926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064123 (A169585 n + A004275 (n + 1)).toNat

end

end A064132.P14299500346884788926

/-! ## A064132.P9756809043685983617

`A064123(A316571(n+1)+A169585(n))`
-/

namespace A064132.P9756809043685983617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064123 (A316571 (n + 1) + A169585 n).toNat

end

end A064132.P9756809043685983617

/-! ## A064132.P2189853612899724692

`A064123(A169585(n)+A153151(2*n+1))`
-/

namespace A064132.P2189853612899724692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064123 (A169585 n + A153151 (2 * n + 1)).toNat

end

end A064132.P2189853612899724692

/-!
# A064133: Number of divisors of 6^n + 1 that are relatively prime to 6^m + 1 for all 0 < m < n.

The programs for A064133, there is no canonical definition to state claims against.
-/

/-! ## A064133.P16767815505696427412

`A064128(gcd(n, C(2, n))+n)`
-/

namespace A064133.P16767815505696427412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064128 (Nat.gcd n (Nat.choose 2 n) + n)

end

end A064133.P16767815505696427412

/-! ## A064133.P4279678183936353923

`A064128(floor(acot(n))+2*n)`
-/

namespace A064133.P4279678183936353923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064128 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)).toNat

end

end A064133.P4279678183936353923

/-! ## A064133.P7806259160058640232

`A064128(round(1/acot(n))+n)`
-/

namespace A064133.P7806259160058640232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064128 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A064133.P7806259160058640232

/-! ## A064133.P336410199736886579

`A064128(2*round(acot(n)+n))`
-/

namespace A064133.P336410199736886579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064128 (2 * SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A064133.P336410199736886579

/-! ## A064133.P16537286109578414590

`A064128(floor(3/acot(n))-n)`
-/

namespace A064133.P16537286109578414590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064128 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

end

end A064133.P16537286109578414590

/-!
# A064135: Number of divisors of 10^n + 1 that are relatively prime to 10^m + 1 for all 0 < m < n.

The programs for A064135, there is no canonical definition to state claims against.
-/

/-! ## A064135.P16621426226953613714

`2^A112505(gcd(n, C(2, n))+n)`
-/

namespace A064135.P16621426226953613714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A112505 (Nat.gcd n (Nat.choose 2 n) + n) : ℤ)

end

end A064135.P16621426226953613714

/-! ## A064135.P16362472499153967150

`2^A112505(A004277(n))`
-/

namespace A064135.P16362472499153967150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A112505 (A004277 n).toNat : ℤ)

end

end A064135.P16362472499153967150

/-! ## A064135.P3319933357729388112

`2^A112505(A004275(n+1))`
-/

namespace A064135.P3319933357729388112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A112505 (A004275 (n + 1)).toNat : ℤ)

end

end A064135.P3319933357729388112

/-! ## A064135.P14370796770370623709

`2^A112505(A316571(n+1))`
-/

namespace A064135.P14370796770370623709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A112505 (A316571 (n + 1)).toNat : ℤ)

end

end A064135.P14370796770370623709

/-! ## A064135.P1074171388663543441

`2^A112505(A028310(2*n))`
-/

namespace A064135.P1074171388663543441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A112505 (A028310 (2 * n)).toNat : ℤ)

end

end A064135.P1074171388663543441

/-! ## A064135.P441402778864244269

`2^A112505(A153151(2*n+1))`
-/

namespace A064135.P441402778864244269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A112505 (A153151 (2 * n + 1)).toNat : ℤ)

end

end A064135.P441402778864244269

/-! ## A064135.P17621649798208403412

`A020639(a(n-1))^A112505(2*n)` with `a(0)=2`
-/

namespace A064135.P17621649798208403412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A020639 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) ^ (A112505 (2 * n) : ℤ)

end

end A064135.P17621649798208403412

/-!
# A064137: Number of divisors of 12^n + 1 that are relatively prime to 12^m + 1 for all 0 < m < n.

The programs for A064137, there is no canonical definition to state claims against.
-/

/-! ## A064137.P17223948604754779259

`A064129(round(1/acot(n))+n)`
-/

namespace A064137.P17223948604754779259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064129 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A064137.P17223948604754779259

/-! ## A064137.P10094922418070982587

`A064129(round(acot(n)+n)+n)`
-/

namespace A064137.P10094922418070982587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064129 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + (n : ℤ)).toNat

end

end A064137.P10094922418070982587

/-! ## A064137.P8305643649922417612

`A064129(abs(1-2*n)+1)`
-/

namespace A064137.P8305643649922417612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064129 (|1 - (2 * n : ℤ)| + 1).toNat

end

end A064137.P8305643649922417612

/-! ## A064137.P15113825301266430962

`A001221(a(n-1))*A064129(2*n)` with `a(0)=2`
-/

namespace A064137.P15113825301266430962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001221 (a (n - 1)).toNat * A064129 (2 * n)

end

end A064137.P15113825301266430962

/-!
# A064138: Sum of non-unitary divisors of n!.

The programs for A064138, the canonical program `A064138.P12736720339364131366` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064138 has offset 1).

The definition of A064138 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064138.P12736720339364131366

`A062569(n+1)-A034448((n+1)!)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A064138

/-- `A062569(n+1)-A034448((n+1)!)` -/
def P12736720339364131366.Spec : Prop :=
  ∀ n, P12736720339364131366.a n = A064138 (n + 1)

theorem P12736720339364131366.correct : P12736720339364131366.Spec := by
  intro n
  simp only [A064138, Nat.add_sub_cancel]

end A064138

/-! ## A064138.P9850854894415105593

`A000203((n+1)!)-A034448((n+1)!)`
-/

namespace A064138.P9850854894415105593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.factorial (n + 1)) - A034448 (Nat.factorial (n + 1))

end

end A064138.P9850854894415105593

namespace A064138

/-- `A000203((n+1)!)-A034448((n+1)!)` -/
def P9850854894415105593.Spec : Prop :=
  ∀ n, P9850854894415105593.a n = A064138 (n + 1)

end A064138

/-! ## A064138.P5993364070209792993

`A062569(n+1)-A064028(n+1)`
-/

namespace A064138.P5993364070209792993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062569 (n + 1) - A064028 (n + 1)

end

end A064138.P5993364070209792993

namespace A064138

/-- `A062569(n+1)-A064028(n+1)` -/
def P5993364070209792993.Spec : Prop :=
  ∀ n, P5993364070209792993.a n = A064138 (n + 1)

end A064138

/-! ## A064138.P9182822004627628742

`A048146((n+1)!)`
-/

namespace A064138.P9182822004627628742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (Nat.factorial (n + 1))

end

end A064138.P9182822004627628742

namespace A064138

/-- `A048146((n+1)!)` -/
def P9182822004627628742.Spec : Prop :=
  ∀ n, P9182822004627628742.a n = A064138 (n + 1)

end A064138

/-!
# A064139: Sum of divisors of central binomial coefficient binomial(n, floor(n/2)).

The programs for A064139, the canonical program `A064139.P11382071768367375373` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064139 has offset 1).

The definition of A064139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064139.P11382071768367375373

`A000203(A001405(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064139

/-- `A000203(A001405(n+1))` -/
def P11382071768367375373.Spec : Prop :=
  ∀ n, P11382071768367375373.a n = A064139 (n + 1)

theorem P11382071768367375373.correct : P11382071768367375373.Spec := by
  intro n
  simp only [A064139, Nat.add_sub_cancel]

end A064139

/-! ## A064139.P3618904671914397400

`A064141(n+1)+A064140(n+1)`
-/

namespace A064139.P3618904671914397400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064141 (n + 1) + A064140 (n + 1)

end

end A064139.P3618904671914397400

namespace A064139

/-- `A064141(n+1)+A064140(n+1)` -/
def P3618904671914397400.Spec : Prop :=
  ∀ n, P3618904671914397400.a n = A064139 (n + 1)

end A064139

/-! ## A064139.P14239972903230565047

`A102716(∑[n%2+1+n])`
-/

namespace A064139.P14239972903230565047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102716 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064139.P14239972903230565047

namespace A064139

/-- `A102716(∑[n%2+1+n])` -/
def P14239972903230565047.Spec : Prop :=
  ∀ n, P14239972903230565047.a n = A064139 (n + 1)

end A064139

/-! ## A064139.P8851841250696675679

`A102716(∑[A098181(n)])`
-/

namespace A064139.P8851841250696675679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102716 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064139.P8851841250696675679

namespace A064139

/-- `A102716(∑[A098181(n)])` -/
def P8851841250696675679.Spec : Prop :=
  ∀ n, P8851841250696675679.a n = A064139 (n + 1)

end A064139

/-! ## A064139.P12929664635572820137

`A102716(A074148(n+1))`
-/

namespace A064139.P12929664635572820137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102716 (A074148 (n + 1)).toNat

end

end A064139.P12929664635572820137

namespace A064139

/-- `A102716(A074148(n+1))` -/
def P12929664635572820137.Spec : Prop :=
  ∀ n, P12929664635572820137.a n = A064139 (n + 1)

end A064139

/-! ## A064139.P12942942193057489595

`A102716(A194274(n+1))`
-/

namespace A064139.P12942942193057489595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102716 (A194274 (n + 1)).toNat

end

end A064139.P12942942193057489595

namespace A064139

/-- `A102716(A194274(n+1))` -/
def P12942942193057489595.Spec : Prop :=
  ∀ n, P12942942193057489595.a n = A064139 (n + 1)

end A064139

/-! ## A064139.P10182827759197986263

`A102716(A080476(n+2))`
-/

namespace A064139.P10182827759197986263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102716 (A080476 (n + 2)).toNat

end

end A064139.P10182827759197986263

namespace A064139

/-- `A102716(A080476(n+2))` -/
def P10182827759197986263.Spec : Prop :=
  ∀ n, P10182827759197986263.a n = A064139 (n + 1)

end A064139

/-! ## A064139.P3944619185870706958

`A102716(∑[2*A008619(n)])`
-/

namespace A064139.P3944619185870706958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102716 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064139.P3944619185870706958

namespace A064139

/-- `A102716(∑[2*A008619(n)])` -/
def P3944619185870706958.Spec : Prop :=
  ∀ n, P3944619185870706958.a n = A064139 (n + 1)

end A064139

/-! ## A064139.P6293693830378490926

`A102716(∑[A000034(n)+n])`
-/

namespace A064139.P6293693830378490926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102716 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064139.P6293693830378490926

namespace A064139

/-- `A102716(∑[A000034(n)+n])` -/
def P6293693830378490926.Spec : Prop :=
  ∀ n, P6293693830378490926.a n = A064139 (n + 1)

end A064139

/-! ## A064139.P7133255931788086304

`A102716(A004277(∑[A008619(n)]))`
-/

namespace A064139.P7133255931788086304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102716 (A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A064139.P7133255931788086304

namespace A064139

/-- `A102716(A004277(∑[A008619(n)]))` -/
def P7133255931788086304.Spec : Prop :=
  ∀ n, P7133255931788086304.a n = A064139 (n + 1)

end A064139

/-! ## A064139.P9611511385402867851

`A102716(A005843(∑[A008619(n)]))`
-/

namespace A064139.P9611511385402867851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102716 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A064139.P9611511385402867851

namespace A064139

/-- `A102716(A005843(∑[A008619(n)]))` -/
def P9611511385402867851.Spec : Prop :=
  ∀ n, P9611511385402867851.a n = A064139 (n + 1)

end A064139

/-!
# A064140: Sum of unitary divisors of central binomial coefficient C(n, floor(n/2)).

The programs for A064140, the canonical program `A064140.P1423845177142153834` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064140 has offset 1).

The definition of A064140 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064140.P1423845177142153834

`A034448(A001405(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A064140

/-- `A034448(A001405(n+1))` -/
def P1423845177142153834.Spec : Prop :=
  ∀ n, P1423845177142153834.a n = A064140 (n + 1)

theorem P1423845177142153834.correct : P1423845177142153834.Spec := by
  intro n
  simp only [A064140, Nat.add_sub_cancel]

end A064140

/-! ## A064140.P7515984308134403406

`A064139(n+1)-A064141(n+1)`
-/

namespace A064140.P7515984308134403406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064139 (n + 1) - A064141 (n + 1)

end

end A064140.P7515984308134403406

namespace A064140

/-- `A064139(n+1)-A064141(n+1)` -/
def P7515984308134403406.Spec : Prop :=
  ∀ n, P7515984308134403406.a n = A064140 (n + 1)

end A064140

/-! ## A064140.P1737507521650660291

`A102716(A074148(n+1))-A064141(n+1)`
-/

namespace A064140.P1737507521650660291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102716 (A074148 (n + 1)).toNat - A064141 (n + 1)

end

end A064140.P1737507521650660291

namespace A064140

/-- `A102716(A074148(n+1))-A064141(n+1)` -/
def P1737507521650660291.Spec : Prop :=
  ∀ n, P1737507521650660291.a n = A064140 (n + 1)

end A064140

/-! ## A064140.P15149864145755348113

`A064139(n+1)-A048146(record[A034869(n)])`
-/

namespace A064140.P15149864145755348113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064139 (n + 1) - A048146 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064140.P15149864145755348113

namespace A064140

/-- `A064139(n+1)-A048146(record[A034869(n)])` -/
def P15149864145755348113.Spec : Prop :=
  ∀ n, P15149864145755348113.a n = A064140 (n + 1)

end A064140

/-! ## A064140.P14294441382581161521

`A064139(n+1)-A048146(A001405(n+1))`
-/

namespace A064140.P14294441382581161521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064139 (n + 1) - A048146 (A001405 (n + 1)).toNat

end

end A064140.P14294441382581161521

namespace A064140

/-- `A064139(n+1)-A048146(A001405(n+1))` -/
def P14294441382581161521.Spec : Prop :=
  ∀ n, P14294441382581161521.a n = A064140 (n + 1)

end A064140

/-!
# A064141: Sum of non-unitary divisors of central binomial coefficient C(n, floor(n/2)).

The programs for A064141, the canonical program `A064141.P4142753168141543112` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064141 has offset 1).

The definition of A064141 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064141.P4142753168141543112

`A048146(A001405(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A064141

/-- `A048146(A001405(n+1))` -/
def P4142753168141543112.Spec : Prop :=
  ∀ n, P4142753168141543112.a n = A064141 (n + 1)

theorem P4142753168141543112.correct : P4142753168141543112.Spec := by
  intro n
  simp only [A064141, Nat.add_sub_cancel]

end A064141

/-! ## A064141.P16387141240158143087

`A064139(n+1)-A064140(n+1)`
-/

namespace A064141.P16387141240158143087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064139 (n + 1) - A064140 (n + 1)

end

end A064141.P16387141240158143087

namespace A064141

/-- `A064139(n+1)-A064140(n+1)` -/
def P16387141240158143087.Spec : Prop :=
  ∀ n, P16387141240158143087.a n = A064141 (n + 1)

end A064141

/-! ## A064141.P5633672593814874758

`A102716(A074148(n+1))-A064140(n+1)`
-/

namespace A064141.P5633672593814874758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102716 (A074148 (n + 1)).toNat - A064140 (n + 1)

end

end A064141.P5633672593814874758

namespace A064141

/-- `A102716(A074148(n+1))-A064140(n+1)` -/
def P5633672593814874758.Spec : Prop :=
  ∀ n, P5633672593814874758.a n = A064141 (n + 1)

end A064141

/-! ## A064141.P14132547968239731531

`A102716(A194274(n+1))-A064140(n+1)`
-/

namespace A064141.P14132547968239731531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102716 (A194274 (n + 1)).toNat - A064140 (n + 1)

end

end A064141.P14132547968239731531

namespace A064141

/-- `A102716(A194274(n+1))-A064140(n+1)` -/
def P14132547968239731531.Spec : Prop :=
  ∀ n, P14132547968239731531.a n = A064141 (n + 1)

end A064141

/-! ## A064141.P12903423788954350916

`A102716(∑[A000034(n)+n])-A064140(n+1)`
-/

namespace A064141.P12903423788954350916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102716 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A064140 (n + 1)

end

end A064141.P12903423788954350916

namespace A064141

/-- `A102716(∑[A000034(n)+n])-A064140(n+1)` -/
def P12903423788954350916.Spec : Prop :=
  ∀ n, P12903423788954350916.a n = A064141 (n + 1)

end A064141

/-!
# A064142: Sum of all distinct primes dividing central binomial coefficient C(n, floor(n/2)).

The programs for A064142, the canonical program `A064142.P8838239209337402348` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064142 has offset 1).

The definition of A064142 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064142.P8838239209337402348

`A008472(A001405(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064142

/-- `A008472(A001405(n+1))` -/
def P8838239209337402348.Spec : Prop :=
  ∀ n, P8838239209337402348.a n = A064142 (n + 1)

theorem P8838239209337402348.correct : P8838239209337402348.Spec := by
  intro n
  simp only [A064142, Nat.add_sub_cancel]

end A064142

/-! ## A064142.P5555593419189394246

`A064146(n+1)+A064143(n+1)`
-/

namespace A064142.P5555593419189394246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064146 (n + 1) + A064143 (n + 1)

end

end A064142.P5555593419189394246

namespace A064142

/-- `A064146(n+1)+A064143(n+1)` -/
def P5555593419189394246.Spec : Prop :=
  ∀ n, P5555593419189394246.a n = A064142 (n + 1)

end A064142

/-! ## A064142.P4741730033778843445

`A064143(n+1)+A008472(A056056(n+1))`
-/

namespace A064142.P4741730033778843445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064143 (n + 1) + A008472 (A056056 (n + 1)).toNat

end

end A064142.P4741730033778843445

namespace A064142

/-- `A064143(n+1)+A008472(A056056(n+1))` -/
def P4741730033778843445.Spec : Prop :=
  ∀ n, P4741730033778843445.a n = A064142 (n + 1)

end A064142

/-! ## A064142.P7936192833345041348

`A064143(n+1)+∑{d}[A056056(n+1), A061397(#)]`
-/

namespace A064142.P7936192833345041348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064143 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, A061397 d

end

end A064142.P7936192833345041348

namespace A064142

/-- `A064143(n+1)+∑{d}[A056056(n+1), A061397(#)]` -/
def P7936192833345041348.Spec : Prop :=
  ∀ n, P7936192833345041348.a n = A064142 (n + 1)

end A064142

/-! ## A064142.P10453372769543187709

`A064143(n+1)+A008472(A056057(n+1))`
-/

namespace A064142.P10453372769543187709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064143 (n + 1) + A008472 (A056057 (n + 1)).toNat

end

end A064142.P10453372769543187709

namespace A064142

/-- `A064143(n+1)+A008472(A056057(n+1))` -/
def P10453372769543187709.Spec : Prop :=
  ∀ n, P10453372769543187709.a n = A064142 (n + 1)

end A064142

/-!
# A064143: Sum of unitary prime divisors of binomial(n, floor(n/2)).

The programs for A064143, the canonical program `A064143.P2336907219430728719` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064143 has offset 1).

The definition of A064143 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063956, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064143.P2336907219430728719

`A063956(A001405(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A064143

/-- `A063956(A001405(n+1))` -/
def P2336907219430728719.Spec : Prop :=
  ∀ n, P2336907219430728719.a n = A064143 (n + 1)

theorem P2336907219430728719.correct : P2336907219430728719.Spec := by
  intro n
  simp only [A064143, Nat.add_sub_cancel]

end A064143

/-! ## A064143.P6595353959283906346

`A064142(n+1)-A064146(n+1)`
-/

namespace A064143.P6595353959283906346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064142 (n + 1) - A064146 (n + 1)

end

end A064143.P6595353959283906346

namespace A064143

/-- `A064142(n+1)-A064146(n+1)` -/
def P6595353959283906346.Spec : Prop :=
  ∀ n, P6595353959283906346.a n = A064143 (n + 1)

end A064143

/-! ## A064143.P15632950366115057096

`A064142(n+1)-∑{p}[sqrt(A056057(n+1)), #]`
-/

namespace A064143.P15632950366115057096
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056057 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064142 (n + 1) - ((∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p : ℕ) : ℤ)

end

end A064143.P15632950366115057096

namespace A064143

/-- `A064142(n+1)-∑{p}[sqrt(A056057(n+1)), #]` -/
def P15632950366115057096.Spec : Prop :=
  ∀ n, P15632950366115057096.a n = A064143 (n + 1)

end A064143

/-! ## A064143.P463052696790226474

`A064142(n+1)-A008472(A056056(n+1))`
-/

namespace A064143.P463052696790226474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064142 (n + 1) - A008472 (A056056 (n + 1)).toNat

end

end A064143.P463052696790226474

namespace A064143

/-- `A064142(n+1)-A008472(A056056(n+1))` -/
def P463052696790226474.Spec : Prop :=
  ∀ n, P463052696790226474.a n = A064143 (n + 1)

end A064143

/-! ## A064143.P12152642152557151747

`A064142(n+1)-∑{p}[A056057(n+1), #]`
-/

namespace A064143.P12152642152557151747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064142 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A064143.P12152642152557151747

namespace A064143

/-- `A064142(n+1)-∑{p}[A056057(n+1), #]` -/
def P12152642152557151747.Spec : Prop :=
  ∀ n, P12152642152557151747.a n = A064143 (n + 1)

end A064143

/-! ## A064143.P4511499159160958572

`A064142(n+1)-A008472(A056057(n+1))`
-/

namespace A064143.P4511499159160958572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064142 (n + 1) - A008472 (A056057 (n + 1)).toNat

end

end A064143.P4511499159160958572

namespace A064143

/-- `A064142(n+1)-A008472(A056057(n+1))` -/
def P4511499159160958572.Spec : Prop :=
  ∀ n, P4511499159160958572.a n = A064143 (n + 1)

end A064143

/-!
# A064144: a(n) is the number of divisors of n!+1.

The programs for A064144, there is no canonical definition to state claims against.
-/

/-! ## A064144.P14329851174210399043

`A007814(A354540(n+2))+A000005(n+1)`
-/

namespace A064144.P14329851174210399043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A354540 (n + 2)).toNat + A000005 (n + 1)

end

end A064144.P14329851174210399043

/-!
# A064145: a(n) = tau(n!-1) or number of divisors of n!-1.

The programs for A064145, there is no canonical definition to state claims against.
-/

/-! ## A064145.P12635206541452084754

`A000005(A041975(n)+and(1, n))`
-/

namespace A064145.P12635206541452084754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A041975 n + (Nat.land 1 n : ℤ)).toNat

end

end A064145.P12635206541452084754

/-! ## A064145.P11034727440098516895

`A000005(A041975(n)+A000035(n))`
-/

namespace A064145.P11034727440098516895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A041975 n + A000035 n).toNat

end

end A064145.P11034727440098516895

/-! ## A064145.P14411003203039564268

`A000005(xor(A085449(n), A265509(n)))`
-/

namespace A064145.P14411003203039564268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.xor (A085449 n) (A265509 n)).toNat

end

end A064145.P14411003203039564268

/-! ## A064145.P15597621652934213632

`A000005(A115121(n+1)+A000085(n))`
-/

namespace A064145.P15597621652934213632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A115121 (n + 1) + A000085 n).toNat

end

end A064145.P15597621652934213632

/-! ## A064145.P7458151526989072616

`A000005(A116512(n+1)+A000085(n))`
-/

namespace A064145.P7458151526989072616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A116512 (n + 1) + A000085 n).toNat

end

end A064145.P7458151526989072616

/-!
# A064146: Sum of non-unitary prime divisors of binomial(n,floor(n/2)).

The programs for A064146, the canonical program `A064146.P8659284940769746330` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064146 has offset 1).

The definition of A064146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064146.P8659284940769746330

`A064142(n+1)-A064143(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A064146

/-- `A064142(n+1)-A064143(n+1)` -/
def P8659284940769746330.Spec : Prop :=
  ∀ n, P8659284940769746330.a n = A064146 (n + 1)

theorem P8659284940769746330.correct : P8659284940769746330.Spec := by
  intro n
  simp only [A064146, Nat.add_sub_cancel]

end A064146

/-! ## A064146.P17164863685501115761

`∑{p}[A056056(n+1), #]`
-/

namespace A064146.P17164863685501115761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A064146.P17164863685501115761

namespace A064146

/-- `∑{p}[A056056(n+1), #]` -/
def P17164863685501115761.Spec : Prop :=
  ∀ n, (P17164863685501115761.a n : ℤ) = A064146 (n + 1)

end A064146

/-! ## A064146.P16044966179274794289

`∑{p}[sqrt(A056057(n+1)), #]`
-/

namespace A064146.P16044966179274794289
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056057 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A064146.P16044966179274794289

namespace A064146

/-- `∑{p}[sqrt(A056057(n+1)), #]` -/
def P16044966179274794289.Spec : Prop :=
  ∀ n, (P16044966179274794289.a n : ℤ) = A064146 (n + 1)

end A064146

/-! ## A064146.P13112461415835703321

`A008472(A056056(n+1))`
-/

namespace A064146.P13112461415835703321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A056056 (n + 1)).toNat

end

end A064146.P13112461415835703321

namespace A064146

/-- `A008472(A056056(n+1))` -/
def P13112461415835703321.Spec : Prop :=
  ∀ n, P13112461415835703321.a n = A064146 (n + 1)

end A064146

/-! ## A064146.P8266492335309958537

`A008472(sqrt(A056057(n+1)))`
-/

namespace A064146.P8266492335309958537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway (Real.sqrt (A056057 (n + 1) : ℝ))).toNat

end

end A064146.P8266492335309958537

namespace A064146

/-- `A008472(sqrt(A056057(n+1)))` -/
def P8266492335309958537.Spec : Prop :=
  ∀ n, P8266492335309958537.a n = A064146 (n + 1)

end A064146

/-! ## A064146.P6302560630271562846

`∑{d}[A056056(n+1), A061397(#)]`
-/

namespace A064146.P6302560630271562846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061397 d

end

end A064146.P6302560630271562846

namespace A064146

/-- `∑{d}[A056056(n+1), A061397(#)]` -/
def P6302560630271562846.Spec : Prop :=
  ∀ n, P6302560630271562846.a n = A064146 (n + 1)

end A064146

/-! ## A064146.P13327971414389902020

`∑{p}[A056057(n+1), #*A056057(#)]`
-/

namespace A064146.P13327971414389902020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A056057 p

end

end A064146.P13327971414389902020

namespace A064146

/-- `∑{p}[A056057(n+1), #*A056057(#)]` -/
def P13327971414389902020.Spec : Prop :=
  ∀ n, P13327971414389902020.a n = A064146 (n + 1)

end A064146

/-! ## A064146.P600551547394279647

`A008472(A056057(n+1))`
-/

namespace A064146.P600551547394279647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A056057 (n + 1)).toNat

end

end A064146.P600551547394279647

namespace A064146

/-- `A008472(A056057(n+1))` -/
def P600551547394279647.Spec : Prop :=
  ∀ n, P600551547394279647.a n = A064146 (n + 1)

end A064146

/-!
# A064147: Numbers k such that k! - 1 and k! + 1 have the same number of divisors, i.e., tau(k! - 1) = tau(k! + 1).

The programs for A064147, there is no canonical definition to state claims against.
-/

/-! ## A064147.P11161253011489099454

`A064186(A130130(n)+1+n)`
-/

namespace A064147.P11161253011489099454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064186 (A130130 n + 1 + (n : ℤ)).toNat

end

end A064147.P11161253011489099454

/-! ## A064147.P6038875057189701132

`record[A064186(n+1)%A189234(n)]`
-/

namespace A064147.P6038875057189701132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064186 (n + 1)) (A189234 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064147.P6038875057189701132

/-! ## A064147.P8267832136575535670

`∩[A064186(n+1), A385704(n+1)]`
-/

namespace A064147.P8267832136575535670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064147.P8267832136575535670

/-! ## A064147.P12565460382492682702

`record[and(A064186(n+1), A164291(n+2))]`
-/

namespace A064147.P12565460382492682702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064186 (n + 1)) (A164291 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064147.P12565460382492682702

/-! ## A064147.P7119493245246764819

`A064186(A005408(n)-A289207(n))`
-/

namespace A064147.P7119493245246764819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064186 (A005408 n - A289207 n).toNat

end

end A064147.P7119493245246764819

/-!
# A064148: Numbers k such that mu(k) = mu(k+1), where mu is the Möbius function (A008683).

The programs for A064148, the canonical program `A064148.P16794264450961538406` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064148 has offset 1).

The definition of A064148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5384 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064148.P9348322060778130264

`eq[A008683(n+1), A008683(n+2)]+1`
-/

namespace A064148.P9348322060778130264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064148.P9348322060778130264

namespace A064148

/-- `eq[A008683(n+1), A008683(n+2)]+1` -/
def P9348322060778130264.Spec : Prop :=
  ∀ n, (P9348322060778130264.a n : ℤ) = A064148 (n + 1)

end A064148

/-! ## A064148.P16794264450961538406

`eq[1, A127440(n+1)+1]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064148

/-- `eq[1, A127440(n+1)+1]+1` -/
def P16794264450961538406.Spec : Prop :=
  ∀ n, (P16794264450961538406.a n : ℤ) = A064148 (n + 1)

theorem P16794264450961538406.correct : P16794264450961538406.Spec := by
  intro n
  simp only [A064148, Nat.add_sub_cancel]

end A064148

/-! ## A064148.P3808962185958347424

`eq[1, A093316(n+1)]+1`
-/

namespace A064148.P3808962185958347424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064148.P3808962185958347424

namespace A064148

/-- `eq[1, A093316(n+1)]+1` -/
def P3808962185958347424.Spec : Prop :=
  ∀ n, (P3808962185958347424.a n : ℤ) = A064148 (n + 1)

end A064148

/-! ## A064148.P14484195856042226287

`lt[A261869(n+1)², 2]+1`
-/

namespace A064148.P14484195856042226287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261869 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064148.P14484195856042226287

namespace A064148

/-- `lt[A261869(n+1)², 2]+1` -/
def P14484195856042226287.Spec : Prop :=
  ∀ n, (P14484195856042226287.a n : ℤ) = A064148 (n + 1)

end A064148

/-! ## A064148.P3696557954516465751

`eq[0, Δ[A008683(n+1)]]+1`
-/

namespace A064148.P3696557954516465751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064148.P3696557954516465751

namespace A064148

/-- `eq[0, Δ[A008683(n+1)]]+1` -/
def P3696557954516465751.Spec : Prop :=
  ∀ n, (P3696557954516465751.a n : ℤ) = A064148 (n + 1)

end A064148

/-! ## A064148.P17513634044791163103

`record[gcd(n+2, Δ[A008683(n+2)])]`
-/

namespace A064148.P17513634044791163103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064148.P17513634044791163103

namespace A064148

/-- `record[gcd(n+2, Δ[A008683(n+2)])]` -/
def P17513634044791163103.Spec : Prop :=
  ∀ n, (P17513634044791163103.a n : ℤ) = A064148 (n + 1)

end A064148

/-! ## A064148.P17202468880898202364

`eq[A007423(n+1), A007423(n+2)]+1`
-/

namespace A064148.P17202468880898202364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064148.P17202468880898202364

namespace A064148

/-- `eq[A007423(n+1), A007423(n+2)]+1` -/
def P17202468880898202364.Spec : Prop :=
  ∀ n, (P17202468880898202364.a n : ℤ) = A064148 (n + 1)

end A064148

/-! ## A064148.P10169455786295103775

`lt[A025579(Δ[A008683(n+1)]²+1)², 2]+1`
-/

namespace A064148.P10169455786295103775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 ((f2 (n + 1) - f2 n) ^ 2 + 1).toNat ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A064148.P10169455786295103775

namespace A064148

/-- `lt[A025579(Δ[A008683(n+1)]²+1)², 2]+1` -/
def P10169455786295103775.Spec : Prop :=
  ∀ n, (P10169455786295103775.a n : ℤ) = A064148 (n + 1)

end A064148

/-! ## A064148.P14748614725654603766

`lt[A093316(n+1), A007906(A093316(n+1)+1)]+1`
-/

namespace A064148.P14748614725654603766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (A093316 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A064148.P14748614725654603766

namespace A064148

/-- `lt[A093316(n+1), A007906(A093316(n+1)+1)]+1` -/
def P14748614725654603766.Spec : Prop :=
  ∀ n, (P14748614725654603766.a n : ℤ) = A064148 (n + 1)

end A064148

/-!
# A064149: Indices of zeros of third differences of primes: Numbers k such that A036264(k) = 0.

The programs for A064149, the canonical program `A064149.P17735911331487124559` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064149 has offset 1).

The definition of A064149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3071 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064149.P17735911331487124559

`eq[A036263(n+2), A036263(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A064149

/-- `eq[A036263(n+2), A036263(n+1)]+1` -/
def P17735911331487124559.Spec : Prop :=
  ∀ n, (P17735911331487124559.a n : ℤ) = A064149 (n + 1)

theorem P17735911331487124559.correct : P17735911331487124559.Spec := by
  intro n
  simp only [A064149, Nat.add_sub_cancel]

end A064149

/-! ## A064149.P15940577799292546491

`eq[1, A036264(n+1)+1]+1`
-/

namespace A064149.P15940577799292546491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036264 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064149.P15940577799292546491

namespace A064149

/-- `eq[1, A036264(n+1)+1]+1` -/
def P15940577799292546491.Spec : Prop :=
  ∀ n, (P15940577799292546491.a n : ℤ) = A064149 (n + 1)

end A064149

/-! ## A064149.P12675972528886161933

`eq[A073274(n+2), A073274(n+1)]+1`
-/

namespace A064149.P12675972528886161933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064149.P12675972528886161933

namespace A064149

/-- `eq[A073274(n+2), A073274(n+1)]+1` -/
def P12675972528886161933.Spec : Prop :=
  ∀ n, (P12675972528886161933.a n : ℤ) = A064149 (n + 1)

end A064149

/-! ## A064149.P924295805033821384

`A000720(A258029(n+1))`
-/

namespace A064149.P924295805033821384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A258029 (n + 1)).toNat

end

end A064149.P924295805033821384

namespace A064149

/-- `A000720(A258029(n+1))` -/
def P924295805033821384.Spec : Prop :=
  ∀ n, P924295805033821384.a n = A064149 (n + 1)

end A064149

/-! ## A064149.P5244068528549429706

`A061395(2*A258029(n+1))`
-/

namespace A064149.P5244068528549429706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A258029 (n + 1)).toNat

end

end A064149.P5244068528549429706

namespace A064149

/-- `A061395(2*A258029(n+1))` -/
def P5244068528549429706.Spec : Prop :=
  ∀ n, P5244068528549429706.a n = A064149 (n + 1)

end A064149

/-! ## A064149.P6325901077085929877

`A033270(A139313(n+1))`
-/

namespace A064149.P6325901077085929877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A139313 (n + 1)).toNat

end

end A064149.P6325901077085929877

namespace A064149

/-- `A033270(A139313(n+1))` -/
def P6325901077085929877.Spec : Prop :=
  ∀ n, P6325901077085929877.a n = A064149 (n + 1)

end A064149

/-! ## A064149.P7699262036215897932

`A055396(or(1, A258029(n+1)))`
-/

namespace A064149.P7699262036215897932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lor 1 (A258029 (n + 1))).toNat

end

end A064149.P7699262036215897932

namespace A064149

/-- `A055396(or(1, A258029(n+1)))` -/
def P7699262036215897932.Spec : Prop :=
  ∀ n, P7699262036215897932.a n = A064149 (n + 1)

end A064149

/-! ## A064149.P17465955884990444175

`∑{d}[A258029(n+1), A056239(#)]`
-/

namespace A064149.P17465955884990444175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A064149.P17465955884990444175

namespace A064149

/-- `∑{d}[A258029(n+1), A056239(#)]` -/
def P17465955884990444175.Spec : Prop :=
  ∀ n, P17465955884990444175.a n = A064149 (n + 1)

end A064149

/-! ## A064149.P12760333002851849190

`A055396(2*A258029(n+1)-A258029(n+1))`
-/

namespace A064149.P12760333002851849190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A258029 (n + 1) - A258029 (n + 1)).toNat

end

end A064149.P12760333002851849190

namespace A064149

/-- `A055396(2*A258029(n+1)-A258029(n+1))` -/
def P12760333002851849190.Spec : Prop :=
  ∀ n, P12760333002851849190.a n = A064149 (n + 1)

end A064149

/-! ## A064149.P9992997985812198516

`A323902(2*A258029(n+1))-1`
-/

namespace A064149.P9992997985812198516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323902 (2 * A258029 (n + 1)).toNat - 1

end

end A064149.P9992997985812198516

namespace A064149

/-- `A323902(2*A258029(n+1))-1` -/
def P9992997985812198516.Spec : Prop :=
  ∀ n, P9992997985812198516.a n = A064149 (n + 1)

end A064149

/-!
# A064150: Numbers divisible by the sum of their ternary digits.

The programs for A064150, the canonical program `A064150.P222219124651733771` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064150 has offset 1).

The definition of A064150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064150.P222219124651733771

`eq[0, (n+1)%A053735(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064150

/-- `eq[0, (n+1)%A053735(n+1)]+1` -/
def P222219124651733771.Spec : Prop :=
  ∀ n, (P222219124651733771.a n : ℤ) = A064150 (n + 1)

theorem P222219124651733771.correct : P222219124651733771.Spec := by
  intro n
  simp only [A064150, Nat.add_sub_cancel]

end A064150

/-! ## A064150.P17493659433263822905

`eq[lcm(n, A053735(n)), A028310(n)]`
-/

namespace A064150.P17493659433263822905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A053735 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064150.P17493659433263822905

namespace A064150

/-- `eq[lcm(n, A053735(n)), A028310(n)]` -/
def P17493659433263822905.Spec : Prop :=
  ∀ n, (P17493659433263822905.a n : ℤ) = A064150 (n + 1)

end A064150

/-! ## A064150.P12701464524680791074

`A325309(∑[n+1]+3)`
-/

namespace A064150.P12701464524680791074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325309 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A064150.P12701464524680791074

namespace A064150

/-- `A325309(∑[n+1]+3)` -/
def P12701464524680791074.Spec : Prop :=
  ∀ n, P12701464524680791074.a n = A064150 (n + 1)

end A064150

/-! ## A064150.P1079861684192169510

`record[gcd(n, A236021(n+1)²)]`
-/

namespace A064150.P1079861684192169510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A236021 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064150.P1079861684192169510

namespace A064150

/-- `record[gcd(n, A236021(n+1)²)]` -/
def P1079861684192169510.Spec : Prop :=
  ∀ n, (P1079861684192169510.a n : ℤ) = A064150 (n + 1)

end A064150

/-! ## A064150.P8140988855206266746

`record[gcd(A067003(n+1), A291834(n+1))]`
-/

namespace A064150.P8140988855206266746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067003 (n + 1)) (A291834 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064150.P8140988855206266746

namespace A064150

/-- `record[gcd(A067003(n+1), A291834(n+1))]` -/
def P8140988855206266746.Spec : Prop :=
  ∀ n, (P8140988855206266746.a n : ℤ) = A064150 (n + 1)

end A064150

/-!
# A064151: Number of primes < n^n.

The programs for A064151, the canonical program `A064151.P3799538803326659639` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064151 has offset 1).

The definition of A064151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064151.P3799538803326659639

`A000720((n+1)^(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064151

/-- `A000720((n+1)^(n+1))` -/
def P3799538803326659639.Spec : Prop :=
  ∀ n, P3799538803326659639.a n = A064151 (n + 1)

theorem P3799538803326659639.correct : P3799538803326659639.Spec := by
  intro n
  simp only [A064151, Nat.add_sub_cancel]

end A064151

/-! ## A064151.P4701373101992141288

`A066612(n)+a(n-1)` with `a(0)=0`
-/

namespace A064151.P4701373101992141288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A066612 n + a (n - 1)

end

end A064151.P4701373101992141288

namespace A064151

/-- `A066612(n)+a(n-1)` -/
def P4701373101992141288.Spec : Prop :=
  ∀ n, P4701373101992141288.a n = A064151 (n + 1)

end A064151

/-! ## A064151.P2122496911736375143

`(n+1)^(n+1)-1-A065895(n+1)`
-/

namespace A064151.P2122496911736375143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - 1 - A065895 (n + 1)

end

end A064151.P2122496911736375143

namespace A064151

/-- `(n+1)^(n+1)-1-A065895(n+1)` -/
def P2122496911736375143.Spec : Prop :=
  ∀ n, P2122496911736375143.a n = A064151 (n + 1)

theorem P2122496911736375143.correct : P2122496911736375143.Spec := by
  intro n
  simp only [A064151, Nat.add_sub_cancel, A064151.P2122496911736375143.a, A064151.P3799538803326659639.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065895, A065895.P12859102474593536539.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064151

/-! ## A064151.P7868755875176683566

`∑[A066612(n+1)]-A066612(n+1)`
-/

namespace A064151.P7868755875176683566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A066612 (n + 1)

end

end A064151.P7868755875176683566

namespace A064151

/-- `∑[A066612(n+1)]-A066612(n+1)` -/
def P7868755875176683566.Spec : Prop :=
  ∀ n, P7868755875176683566.a n = A064151 (n + 1)

end A064151

/-! ## A064151.P411978076571633895

`∑[A066612(n+1)]%A066612(A291769(n))`
-/

namespace A064151.P411978076571633895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A066612 (A291769 n).toNat)

end

end A064151.P411978076571633895

namespace A064151

/-- `∑[A066612(n+1)]%A066612(A291769(n))` -/
def P411978076571633895.Spec : Prop :=
  ∀ n, P411978076571633895.a n = A064151 (n + 1)

end A064151

/-!
# A064152: Erdős primes: primes p such that all p-k! for 1 <= k! < p are nonprime.

The programs for A064152, there is no canonical definition to state claims against.
-/

/-! ## A064152.P7819472694838661289

`p?[A239321(n+1)]`
-/

namespace A064152.P7819472694838661289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064152.P7819472694838661289

/-! ## A064152.P4660632433806425404

`record[p?[A239321(A324343(n))]]`
-/

namespace A064152.P4660632433806425404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239321 (A324343 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064152.P4660632433806425404

/-! ## A064152.P4111309217118121607

`record[p?[A239321(A328399(n))]]`
-/

namespace A064152.P4111309217118121607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239321 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064152.P4111309217118121607

/-! ## A064152.P8865539318562933258

`∩[A000040(n+1), A239321(n+1)]`
-/

namespace A064152.P8865539318562933258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064152.P8865539318562933258

/-! ## A064152.P4581677165129694017

`∩[A000430(n+1), A239321(n+1)]`
-/

namespace A064152.P4581677165129694017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064152.P4581677165129694017

/-! ## A064152.P7465121950104451661

`∩[A025584(n+1), A239321(n+1)]`
-/

namespace A064152.P7465121950104451661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064152.P7465121950104451661

/-! ## A064152.P3472617373815846111

`∩[A045319(n+1), A239321(n+1)]`
-/

namespace A064152.P3472617373815846111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064152.P3472617373815846111

/-! ## A064152.P1357068256525398701

`∩[A045344(n+1), A239321(n+1)]`
-/

namespace A064152.P1357068256525398701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064152.P1357068256525398701

/-! ## A064152.P11143111187836426758

`∩[A070957(n+1), A239321(n+1)]`
-/

namespace A064152.P11143111187836426758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064152.P11143111187836426758

/-! ## A064152.P11218919745436132366

`∩[A093515(n+1), A239321(n+1)]`
-/

namespace A064152.P11218919745436132366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064152.P11218919745436132366

/-! ## A064152.P9940462740718948664

`∩[A163578(n+1), A239321(n+1)]`
-/

namespace A064152.P9940462740718948664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064152.P9940462740718948664

/-!
# A064153: Values of n that are not solution of pr(x)=n where pr(x) is the prime partition function of x.

The programs for A064153, there is no canonical definition to state claims against.
-/

/-! ## A064153.P1181889059177278214

`comp[A000607(n)]`
-/

namespace A064153.P1181889059177278214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A064153.P1181889059177278214

/-! ## A064153.P15010990684435193749

`comp[Δ[A034891(n)]]`
-/

namespace A064153.P15010990684435193749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A064153.P15010990684435193749

/-! ## A064153.P6436557816662744669

`comp[record[A333365(n)]]`
-/

namespace A064153.P6436557816662744669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333365 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A064153.P6436557816662744669

/-! ## A064153.P12680042151588673307

`comp[A331849(n)+A000586(n)]`
-/

namespace A064153.P12680042151588673307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331849 n + A000586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A064153.P12680042151588673307

/-! ## A064153.P17848156584879605336

`comp[A046676(n)-A192541(n)]`
-/

namespace A064153.P17848156584879605336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - A192541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A064153.P17848156584879605336

/-! ## A064153.P14691182480305128520

`comp[Δ[A339381(n)+A339380(n)]]`
-/

namespace A064153.P14691182480305128520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339381 n + A339380 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A064153.P14691182480305128520

/-! ## A064153.P4061332043693128209

`comp[A034891(n+1)-A034891(n)]`
-/

namespace A064153.P4061332043693128209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 (n + 1) - A034891 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A064153.P4061332043693128209

/-!
# A064154: Numbers whose product of digits equals the number of digits times the sum of digits.

The programs for A064154, there is no canonical definition to state claims against.
-/

/-! ## A064154.P3207772043687936914

`eq[-A062329(n), A307629(n)]`
-/

namespace A064154.P3207772043687936914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A062329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307629 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064154.P3207772043687936914

/-! ## A064154.P13615661131583973182

`eq[A307629(n)+A007953(n), A007954(n)]`
-/

namespace A064154.P13615661131583973182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307629 n + A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064154.P13615661131583973182

/-! ## A064154.P4221055586322662586

`eq[A007953(n)*A055640(n), A007954(n)]`
-/

namespace A064154.P4221055586322662586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n * A055640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064154.P4221055586322662586

/-! ## A064154.P2107679368934525715

`eq[A007953(n)*A055642(n), A007954(n)]`
-/

namespace A064154.P2107679368934525715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n * A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064154.P2107679368934525715

/-! ## A064154.P15828068850701156470

`eq[A307629(10*n), A007954(n)]`
-/

namespace A064154.P15828068850701156470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307629 (10 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064154.P15828068850701156470

/-!
# A064155: Primes whose product of digits equals the number of digits times the sum of digits.

The programs for A064155, there is no canonical definition to state claims against.
-/

/-! ## A064155.P1954615313401328373

`∩[A038617(n+1), A064154(n+1)]`
-/

namespace A064155.P1954615313401328373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064155.P1954615313401328373

/-! ## A064155.P12030660632878793570

`p?[A064154(n+1)]`
-/

namespace A064155.P12030660632878793570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064155.P12030660632878793570

/-! ## A064155.P17661404148222456003

`p?[record[A064154(A052938(n))]]`
-/

namespace A064155.P17661404148222456003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064154 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064155.P17661404148222456003

/-! ## A064155.P8816514879149568536

`p?[record[A064154(A133310(n))]]`
-/

namespace A064155.P8816514879149568536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064154 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064155.P8816514879149568536

/-! ## A064155.P16919061608335024230

`p?[record[A064154(A152271(n))]]`
-/

namespace A064155.P16919061608335024230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064154 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064155.P16919061608335024230

/-!
# A064157: Primes p such that (x1*x2*...*xk)^(x1+x2+...+xk) = (x1+x2+...+xk)^(x1*x2*...*xk) where x1x2...xk are the digits of p in base 10.

The programs for A064157, there is no canonical definition to state claims against.
-/

/-! ## A064157.P1251492736166529938

`∩[A038617(n+1), A064158(n+1)]`
-/

namespace A064157.P1251492736166529938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064157.P1251492736166529938

/-! ## A064157.P11505189037560183980

`p?[A064158(n+1)]`
-/

namespace A064157.P11505189037560183980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064157.P11505189037560183980

/-! ## A064157.P1872883940708103396

`p?[record[A064158(A193592(n))]]`
-/

namespace A064157.P1872883940708103396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064158 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064157.P1872883940708103396

/-! ## A064157.P4216691600084264199

`p?[record[A064158(A242112(n))]]`
-/

namespace A064157.P4216691600084264199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064158 (A242112 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064157.P4216691600084264199

/-! ## A064157.P14312405338186387269

`p?[record[A064158(A257213(n))]]`
-/

namespace A064157.P14312405338186387269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064158 (A257213 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064157.P14312405338186387269

/-!
# A064158: Integers m such that (x1*x2*..xk)^(x1+x2+..xk) = (x1+x2+..xk)^(x1*x2*..xk) where x1x2..xk are the digits of m in base 10.

The programs for A064158, there is no canonical definition to state claims against.
-/

/-! ## A064158.P7493063186471134246

`A044821(∑[A309863(n)])`
-/

namespace A064158.P7493063186471134246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044821 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064158.P7493063186471134246

/-! ## A064158.P2735547597552164353

`A353398(A120037(n))+n`
-/

namespace A064158.P2735547597552164353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353398 (A120037 n).toNat + (n : ℤ)

end

end A064158.P2735547597552164353

/-! ## A064158.P13255794288448300398

`∩[A055931(n+1), A349898(n+1)]`
-/

namespace A064158.P13255794288448300398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064158.P13255794288448300398

/-! ## A064158.P13238344680845863928

`A044821(A048307(A084050(A084050(A084050(n+1)))))`
-/

namespace A064158.P13238344680845863928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044821 (A048307 (A084050 (A084050 (A084050 (n + 1)).toNat).toNat).toNat).toNat

end

end A064158.P13238344680845863928

/-!
# A064159: Numbers n such that g(n) + sopfr(n) = n, where g(n)= number of nonprimes <=n (A062298) and sopfr(n) = sum of primes dividing n with repetition (A001414).

The programs for A064159, there is no canonical definition to state claims against.
-/

/-! ## A064159.P9114054699356665995

`eq[A000720(n+1), A001414(n+1)]+1`
-/

namespace A064159.P9114054699356665995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064159.P9114054699356665995

/-! ## A064159.P13275837075301221880

`eq[A075254(n+1)-(n+1), A063084(n+1)]+1`
-/

namespace A064159.P13275837075301221880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064159.P13275837075301221880

/-! ## A064159.P9716971042788442497

`eq[A063655(n+1)-A092510(n+1), A000720(n+1)]+1`
-/

namespace A064159.P9716971042788442497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - A092510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064159.P9716971042788442497

/-! ## A064159.P5640804439446683606

`eq[A063655(n+1)-A092510(n+1), A063084(n+1)]+1`
-/

namespace A064159.P5640804439446683606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - A092510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064159.P5640804439446683606

/-! ## A064159.P9885911966606688174

`eq[A082299(n+1)*A082343(n+1), A000720(n+1)]+1`
-/

namespace A064159.P9885911966606688174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1) * A082343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064159.P9885911966606688174

/-!
# A064160: Numbers k such that the digits of k joined to the digits of 2k contain each of the digits from 1 to 9 once.

The programs for A064160, there is no canonical definition to state claims against.
-/

/-! ## A064160.P11944907475341370651

`floor(A115925(n+1)/2)`
-/

namespace A064160.P11944907475341370651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115925 (n + 1) : ℚ) / 2⌋

end

end A064160.P11944907475341370651

/-! ## A064160.P532424762621074065

`A014682(A115925(n+1))`
-/

namespace A064160.P532424762621074065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A115925 (n + 1)).toNat

end

end A064160.P532424762621074065

/-! ## A064160.P16201905146304318261

`A115925(A043317(n+1))/2`
-/

namespace A064160.P16201905146304318261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115925 (A043317 (n + 1)).toNat : ℚ) / 2

end

end A064160.P16201905146304318261

/-! ## A064160.P2393147603382001750

`ceil(A115925(A000027(n+1))/2)`
-/

namespace A064160.P2393147603382001750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A115925 (A000027 (n + 1)).toNat : ℚ) / 2⌉

end

end A064160.P2393147603382001750

/-! ## A064160.P2066475667538452097

`ceil(A115925(n+1)/A046698(n+4))`
-/

namespace A064160.P2066475667538452097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A115925 (n + 1) : ℚ) / (A046698 (n + 4) : ℚ)⌉

end

end A064160.P2066475667538452097

/-!
# A064161: Least abundant number divisible by the n-th prime number.

The programs for A064161, there is no canonical definition to state claims against.
-/

/-! ## A064161.P12257888380924258128

`A064162(p?[xor(1, n)])`
-/

namespace A064161.P12257888380924258128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A064161.P12257888380924258128

/-! ## A064161.P7102575347900622461

`A064162(p?[comp[n²]])`
-/

namespace A064161.P7102575347900622461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A064161.P7102575347900622461

/-! ## A064161.P8300859229572182458

`A064162(Δ[A007504(n)])`
-/

namespace A064161.P8300859229572182458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (f1 (n + 1) - f1 n).toNat

end

end A064161.P8300859229572182458

/-! ## A064161.P7759659145703158593

`A064162(A000040(n+1))`
-/

namespace A064161.P7759659145703158593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (A000040 (n + 1)).toNat

end

end A064161.P7759659145703158593

/-! ## A064161.P11961180804633872478

`A064162(A006005(n+1))`
-/

namespace A064161.P11961180804633872478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (A006005 (n + 1)).toNat

end

end A064161.P11961180804633872478

/-! ## A064161.P17757678146101061252

`A064162(A008578(n+2))`
-/

namespace A064161.P17757678146101061252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (A008578 (n + 2)).toNat

end

end A064161.P17757678146101061252

/-! ## A064161.P12082136185560870914

`A064162(A075643(n+2))`
-/

namespace A064161.P12082136185560870914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (A075643 (n + 2)).toNat

end

end A064161.P12082136185560870914

/-! ## A064161.P7699601245743035925

`A064162(A171525(n+2))`
-/

namespace A064161.P7699601245743035925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (A171525 (n + 2)).toNat

end

end A064161.P7699601245743035925

/-! ## A064161.P14726629675489812382

`A064162(A175787(n+2))`
-/

namespace A064161.P14726629675489812382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (A175787 (n + 2)).toNat

end

end A064161.P14726629675489812382

/-! ## A064161.P6693153096896754208

`A064162(A182986(n+2))`
-/

namespace A064161.P6693153096896754208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (A182986 (n + 2)).toNat

end

end A064161.P6693153096896754208

/-! ## A064161.P14545846377914711543

`A064162(A100484(n+1)/2)`
-/

namespace A064161.P14545846377914711543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A064161.P14545846377914711543

/-! ## A064161.P5985139606478895192

`A064162(A001747(n+2)/2)`
-/

namespace A064161.P5985139606478895192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A064161.P5985139606478895192

/-! ## A064161.P9429851359143388302

`A064162(A077017(n+2)/2)`
-/

namespace A064161.P9429851359143388302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (SequenceMachineLib.roundAway ((A077017 (n + 2) : ℚ) / 2)).toNat

end

end A064161.P9429851359143388302

/-! ## A064161.P3233876359648287376

`A064162(A100484(n+1))`
-/

namespace A064161.P3233876359648287376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (A100484 (n + 1)).toNat

end

end A064161.P3233876359648287376

/-! ## A064161.P951279368669401588

`A064162(A001747(n+2))`
-/

namespace A064161.P951279368669401588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (A001747 (n + 2)).toNat

end

end A064161.P951279368669401588

/-! ## A064161.P9675142402932965067

`A064162(A077017(n+2))`
-/

namespace A064161.P9675142402932965067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (A077017 (n + 2)).toNat

end

end A064161.P9675142402932965067

/-!
# A064164: EHS numbers: k such that there is a prime p satisfying k! + 1 == 0 (mod p) and p !== 1 (mod k).

The programs for A064164, there is no canonical definition to state claims against.
-/

/-! ## A064164.P15188438161220827956

`comp[A064295(n+1)-1]+1`
-/

namespace A064164.P15188438161220827956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064295 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064164.P15188438161220827956

/-! ## A064164.P10706575853711171121

`comp[∪[A002981(n+1), A064295(n+1)]]`
-/

namespace A064164.P10706575853711171121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002981 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064295 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A064164.P10706575853711171121

/-! ## A064164.P13055374525463126032

`eq[char[A064295(n+1)], A151933(n)]`
-/

namespace A064164.P13055374525463126032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064295 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A064164.P13055374525463126032

/-! ## A064164.P2078166865049764653

`lt[A342457(n), A141157(A000041(n))]`
-/

namespace A064164.P2078166865049764653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342457 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141157 (A000041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064164.P2078166865049764653

/-!
# A064167: Product of numerator and denominator of the n-th harmonic number, 1 + 1/2 + 1/3 +...+ 1/n.

The programs for A064167, the canonical program `A064167.P14975930253514547645` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064167 has offset 1).

The definition of A064167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064167.P14975930253514547645

`A001008(n+1)*A002805(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064167

/-- `A001008(n+1)*A002805(n+1)` -/
def P14975930253514547645.Spec : Prop :=
  ∀ n, P14975930253514547645.a n = A064167 (n + 1)

theorem P14975930253514547645.correct : P14975930253514547645.Spec := by
  intro n
  simp only [A064167, Nat.add_sub_cancel]

end A064167

/-! ## A064167.P3908058841442461544

`A001008(n+1)*A213999(∑[n+2]-1)`
-/

namespace A064167.P3908058841442461544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) * A213999 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A064167.P3908058841442461544

namespace A064167

/-- `A001008(n+1)*A213999(∑[n+2]-1)` -/
def P3908058841442461544.Spec : Prop :=
  ∀ n, P3908058841442461544.a n = A064167 (n + 1)

end A064167

/-! ## A064167.P9695269649512138311

`A002805(n+1)*A213998(∑[n+2]-1)`
-/

namespace A064167.P9695269649512138311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) * A213998 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A064167.P9695269649512138311

namespace A064167

/-- `A002805(n+1)*A213998(∑[n+2]-1)` -/
def P9695269649512138311.Spec : Prop :=
  ∀ n, P9695269649512138311.a n = A064167 (n + 1)

end A064167

/-! ## A064167.P2157670338283975929

`A213998(∑[n+2]-1)*A213999(∑[n+2]-1)`
-/

namespace A064167.P2157670338283975929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (∑ j ∈ Finset.range (n + 1), f1 j - 1) * A213999 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

end

end A064167.P2157670338283975929

namespace A064167

/-- `A213998(∑[n+2]-1)*A213999(∑[n+2]-1)` -/
def P2157670338283975929.Spec : Prop :=
  ∀ n, P2157670338283975929.a n = A064167 (n + 1)

end A064167

/-! ## A064167.P12103550281634657280

`∑[1/(n+1)]*A002805(n+1)*A213999(∑[n+2]-1)`
-/

namespace A064167.P12103550281634657280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A002805 (n + 1) : ℚ) * (A213999 (∑ j ∈ Finset.range (n + 1), f2 j - 1) : ℚ)

end

end A064167.P12103550281634657280

namespace A064167

/-- `∑[1/(n+1)]*A002805(n+1)*A213999(∑[n+2]-1)` -/
def P12103550281634657280.Spec : Prop :=
  ∀ n, P12103550281634657280.a n = (A064167 (n + 1) : ℚ)

end A064167

/-! ## A064167.P7894116074068790242

`A001008(n+1)/A110566(n+1)*Δ[A173185(n)]`
-/

namespace A064167.P7894116074068790242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A064167.P7894116074068790242

namespace A064167

/-- `A001008(n+1)/A110566(n+1)*Δ[A173185(n)]` -/
def P7894116074068790242.Spec : Prop :=
  ∀ n, P7894116074068790242.a n = (A064167 (n + 1) : ℚ)

end A064167

/-! ## A064167.P13683724451483237064

`A001008(n+1)/A110566(n+1)*Δ[A236856(n)]`
-/

namespace A064167.P13683724451483237064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A064167.P13683724451483237064

namespace A064167

/-- `A001008(n+1)/A110566(n+1)*Δ[A236856(n)]` -/
def P13683724451483237064.Spec : Prop :=
  ∀ n, P13683724451483237064.a n = (A064167 (n + 1) : ℚ)

end A064167

/-! ## A064167.P2365564992520971728

`(A064169(n+1)+A002805(n+1))*A002805(n+1)`
-/

namespace A064167.P2365564992520971728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064169 (n + 1) + A002805 (n + 1)) * A002805 (n + 1)

end

end A064167.P2365564992520971728

namespace A064167

/-- `(A064169(n+1)+A002805(n+1))*A002805(n+1)` -/
def P2365564992520971728.Spec : Prop :=
  ∀ n, P2365564992520971728.a n = A064167 (n + 1)

theorem P2365564992520971728.correct : P2365564992520971728.Spec := by
  intro n
  simp only [A064167, Nat.add_sub_cancel, A064167.P2365564992520971728.a, A064167.P14975930253514547645.a, A001008, A001008.P14452720140578332173.a, A002805, A002805.P15380155363923936140.a, A064169, A064169.P16990074960060079416.a, A000254, A000254.P9428527937712228311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064167

/-! ## A064167.P15595517811635359778

`(A001008(n+1)-A064169(n+1))*A001008(n+1)`
-/

namespace A064167.P15595517811635359778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) - A064169 (n + 1)) * A001008 (n + 1)

end

end A064167.P15595517811635359778

namespace A064167

/-- `(A001008(n+1)-A064169(n+1))*A001008(n+1)` -/
def P15595517811635359778.Spec : Prop :=
  ∀ n, P15595517811635359778.a n = A064167 (n + 1)

theorem P15595517811635359778.correct : P15595517811635359778.Spec := by
  intro n
  simp only [A064167, Nat.add_sub_cancel, A064167.P15595517811635359778.a, A064167.P14975930253514547645.a, A001008, A001008.P14452720140578332173.a, A002805, A002805.P15380155363923936140.a, A064169, A064169.P16990074960060079416.a, A000254, A000254.P9428527937712228311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064167

/-! ## A064167.P12420302609481283084

`(A064168(n+1)-A001008(n+1))*A001008(n+1)`
-/

namespace A064167.P12420302609481283084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064168 (n + 1) - A001008 (n + 1)) * A001008 (n + 1)

end

end A064167.P12420302609481283084

namespace A064167

/-- `(A064168(n+1)-A001008(n+1))*A001008(n+1)` -/
def P12420302609481283084.Spec : Prop :=
  ∀ n, P12420302609481283084.a n = A064167 (n + 1)

theorem P12420302609481283084.correct : P12420302609481283084.Spec := by
  intro n
  simp only [A064167, Nat.add_sub_cancel, A064167.P12420302609481283084.a, A064167.P14975930253514547645.a, A001008, A001008.P14452720140578332173.a, A002805, A002805.P15380155363923936140.a, A064168, A064168.P14856509466120462602.a, A000254, A000254.P9428527937712228311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064167

/-! ## A064167.P6252088298320001175

`(A064168(n+1)-A002805(n+1))*A002805(n+1)`
-/

namespace A064167.P6252088298320001175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064168 (n + 1) - A002805 (n + 1)) * A002805 (n + 1)

end

end A064167.P6252088298320001175

namespace A064167

/-- `(A064168(n+1)-A002805(n+1))*A002805(n+1)` -/
def P6252088298320001175.Spec : Prop :=
  ∀ n, P6252088298320001175.a n = A064167 (n + 1)

theorem P6252088298320001175.correct : P6252088298320001175.Spec := by
  intro n
  simp only [A064167, Nat.add_sub_cancel, A064167.P6252088298320001175.a, A064167.P14975930253514547645.a, A001008, A001008.P14452720140578332173.a, A002805, A002805.P15380155363923936140.a, A064168, A064168.P14856509466120462602.a, A000254, A000254.P9428527937712228311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064167

/-! ## A064167.P7046716957281999873

`A002805(n+1)*A060746(n+1)*A093818(n+1)`
-/

namespace A064167.P7046716957281999873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) * A060746 (n + 1) * A093818 (n + 1)

end

end A064167.P7046716957281999873

namespace A064167

/-- `A002805(n+1)*A060746(n+1)*A093818(n+1)` -/
def P7046716957281999873.Spec : Prop :=
  ∀ n, P7046716957281999873.a n = A064167 (n + 1)

end A064167

/-! ## A064167.P17262177022561761151

`A002805(n+1)/A110566(n+1)*A025529(n+1)`
-/

namespace A064167.P17262177022561761151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ) * (A025529 (n + 1) : ℚ)

end

end A064167.P17262177022561761151

namespace A064167

/-- `A002805(n+1)/A110566(n+1)*A025529(n+1)` -/
def P17262177022561761151.Spec : Prop :=
  ∀ n, P17262177022561761151.a n = (A064167 (n + 1) : ℚ)

end A064167

/-! ## A064167.P14944479245423414402

`A002805(n+1)*A096617(n+1)/A120263(n+1)`
-/

namespace A064167.P14944479245423414402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) * A096617 (n + 1) : ℚ) / (A120263 (n + 1) : ℚ)

end

end A064167.P14944479245423414402

namespace A064167

/-- `A002805(n+1)*A096617(n+1)/A120263(n+1)` -/
def P14944479245423414402.Spec : Prop :=
  ∀ n, P14944479245423414402.a n = (A064167 (n + 1) : ℚ)

end A064167

/-! ## A064167.P12334573735339154178

`A002805(n+1)*A035048(2*(n+1))`
-/

namespace A064167.P12334573735339154178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) * A035048 (2 * (n + 1))

end

end A064167.P12334573735339154178

namespace A064167

/-- `A002805(n+1)*A035048(2*(n+1))` -/
def P12334573735339154178.Spec : Prop :=
  ∀ n, P12334573735339154178.a n = A064167 (n + 1)

end A064167

/-! ## A064167.P7673960781970001566

`A175455(n+1)/A110566(n+1)²`
-/

namespace A064167.P7673960781970001566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175455 (n + 1) : ℚ) / (A110566 (n + 1) ^ 2 : ℚ)

end

end A064167.P7673960781970001566

namespace A064167

/-- `A175455(n+1)/A110566(n+1)²` -/
def P7673960781970001566.Spec : Prop :=
  ∀ n, P7673960781970001566.a n = (A064167 (n + 1) : ℚ)

end A064167

/-! ## A064167.P6667052058847108686

`A001008(n+1)*A003418(n+1)/A110566(n+1)`
-/

namespace A064167.P6667052058847108686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) * A003418 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)

end

end A064167.P6667052058847108686

namespace A064167

/-- `A001008(n+1)*A003418(n+1)/A110566(n+1)` -/
def P6667052058847108686.Spec : Prop :=
  ∀ n, P6667052058847108686.a n = (A064167 (n + 1) : ℚ)

end A064167

/-!
# A064168: Sum of numerator and denominator in n-th harmonic number, 1 + 1/2 + 1/3 +...+ 1/n.

The programs for A064168, the canonical program `A064168.P14856509466120462602` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064168 has offset 1).

The definition of A064168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064168.P14856509466120462602

`A002805(n+1)+A001008(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064168

/-- `A002805(n+1)+A001008(n+1)` -/
def P14856509466120462602.Spec : Prop :=
  ∀ n, P14856509466120462602.a n = A064168 (n + 1)

theorem P14856509466120462602.correct : P14856509466120462602.Spec := by
  intro n
  simp only [A064168, Nat.add_sub_cancel]

end A064168

/-! ## A064168.P5656179730660181501

`A064169(n+1)+2*A002805(n+1)`
-/

namespace A064168.P5656179730660181501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064169 (n + 1) + 2 * A002805 (n + 1)

end

end A064168.P5656179730660181501

namespace A064168

/-- `A064169(n+1)+2*A002805(n+1)` -/
def P5656179730660181501.Spec : Prop :=
  ∀ n, P5656179730660181501.a n = A064168 (n + 1)

theorem P5656179730660181501.correct : P5656179730660181501.Spec := by
  intro n
  simp only [A064168, Nat.add_sub_cancel, A064168.P5656179730660181501.a, A064168.P14856509466120462602.a, A001008, A001008.P14452720140578332173.a, A002805, A002805.P15380155363923936140.a, A064169, A064169.P16990074960060079416.a, A000254, A000254.P9428527937712228311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064168

/-! ## A064168.P4832281175731830786

`2*A001008(n+1)-A064169(n+1)`
-/

namespace A064168.P4832281175731830786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001008 (n + 1) - A064169 (n + 1)

end

end A064168.P4832281175731830786

namespace A064168

/-- `2*A001008(n+1)-A064169(n+1)` -/
def P4832281175731830786.Spec : Prop :=
  ∀ n, P4832281175731830786.a n = A064168 (n + 1)

theorem P4832281175731830786.correct : P4832281175731830786.Spec := by
  intro n
  simp only [A064168, Nat.add_sub_cancel, A064168.P4832281175731830786.a, A064168.P14856509466120462602.a, A001008, A001008.P14452720140578332173.a, A002805, A002805.P15380155363923936140.a, A064169, A064169.P16990074960060079416.a, A000254, A000254.P9428527937712228311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064168

/-! ## A064168.P15679044588475188873

`A002805(n+1)+A060746(n+1)*A093818(n+1)`
-/

namespace A064168.P15679044588475188873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) + A060746 (n + 1) * A093818 (n + 1)

end

end A064168.P15679044588475188873

namespace A064168

/-- `A002805(n+1)+A060746(n+1)*A093818(n+1)` -/
def P15679044588475188873.Spec : Prop :=
  ∀ n, P15679044588475188873.a n = A064168 (n + 1)

end A064168

/-! ## A064168.P15893032719985267167

`A001008(n+1)+A003418(n+1)/A110566(n+1)`
-/

namespace A064168.P15893032719985267167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) + (A003418 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)

end

end A064168.P15893032719985267167

namespace A064168

/-- `A001008(n+1)+A003418(n+1)/A110566(n+1)` -/
def P15893032719985267167.Spec : Prop :=
  ∀ n, P15893032719985267167.a n = (A064168 (n + 1) : ℚ)

end A064168

/-! ## A064168.P9716201709406189817

`A002805(n+1)+A025529(n+1)/A110566(n+1)`
-/

namespace A064168.P9716201709406189817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) + (A025529 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)

end

end A064168.P9716201709406189817

namespace A064168

/-- `A002805(n+1)+A025529(n+1)/A110566(n+1)` -/
def P9716201709406189817.Spec : Prop :=
  ∀ n, P9716201709406189817.a n = (A064168 (n + 1) : ℚ)

end A064168

/-! ## A064168.P9728797294991128039

`(A025529(n+1)+A003418(n+1))/A110566(n+1)`
-/

namespace A064168.P9728797294991128039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) + A003418 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)

end

end A064168.P9728797294991128039

namespace A064168

/-- `(A025529(n+1)+A003418(n+1))/A110566(n+1)` -/
def P9728797294991128039.Spec : Prop :=
  ∀ n, P9728797294991128039.a n = (A064168 (n + 1) : ℚ)

end A064168

/-! ## A064168.P16110475741362653050

`A002805(n+1)+A096617(n+1)/A120263(n+1)`
-/

namespace A064168.P16110475741362653050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) + (A096617 (n + 1) : ℚ) / (A120263 (n + 1) : ℚ)

end

end A064168.P16110475741362653050

namespace A064168

/-- `A002805(n+1)+A096617(n+1)/A120263(n+1)` -/
def P16110475741362653050.Spec : Prop :=
  ∀ n, P16110475741362653050.a n = (A064168 (n + 1) : ℚ)

end A064168

/-! ## A064168.P13585219636391414313

`A213998(A034856(n+1))+A002805(n+1)`
-/

namespace A064168.P13585219636391414313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (A034856 (n + 1)).toNat + A002805 (n + 1)

end

end A064168.P13585219636391414313

namespace A064168

/-- `A213998(A034856(n+1))+A002805(n+1)` -/
def P13585219636391414313.Spec : Prop :=
  ∀ n, P13585219636391414313.a n = A064168 (n + 1)

end A064168

/-! ## A064168.P3580843159586053521

`A001008(n+1)+A064167(n+1)/A001008(n+1)`
-/

namespace A064168.P3580843159586053521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) + (A064167 (n + 1) : ℚ) / (A001008 (n + 1) : ℚ)

end

end A064168.P3580843159586053521

namespace A064168

/-- `A001008(n+1)+A064167(n+1)/A001008(n+1)` -/
def P3580843159586053521.Spec : Prop :=
  ∀ n, P3580843159586053521.a n = (A064168 (n + 1) : ℚ)

end A064168

/-! ## A064168.P12736440266280037176

`A002805(n+1)+A064167(n+1)/A002805(n+1)`
-/

namespace A064168.P12736440266280037176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) + (A064167 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A064168.P12736440266280037176

namespace A064168

/-- `A002805(n+1)+A064167(n+1)/A002805(n+1)` -/
def P12736440266280037176.Spec : Prop :=
  ∀ n, P12736440266280037176.a n = (A064168 (n + 1) : ℚ)

end A064168

/-! ## A064168.P15668567666708049114

`A035048(2*(n+1))+A002805(n+1)`
-/

namespace A064168.P15668567666708049114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035048 (2 * (n + 1)) + A002805 (n + 1)

end

end A064168.P15668567666708049114

namespace A064168

/-- `A035048(2*(n+1))+A002805(n+1)` -/
def P15668567666708049114.Spec : Prop :=
  ∀ n, P15668567666708049114.a n = A064168 (n + 1)

end A064168

/-! ## A064168.P18342821667890372392

`A064169(n+1)+A035047(2*(n+1))`
-/

namespace A064168.P18342821667890372392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064169 (n + 1) + A035047 (2 * (n + 1))

end

end A064168.P18342821667890372392

namespace A064168

/-- `A064169(n+1)+A035047(2*(n+1))` -/
def P18342821667890372392.Spec : Prop :=
  ∀ n, P18342821667890372392.a n = A064168 (n + 1)

end A064168

/-!
# A064169: Numerator - denominator in n-th harmonic number, 1 + 1/2 + 1/3 + ... + 1/n.

The programs for A064169, the canonical program `A064169.P16990074960060079416` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064169 has offset 1).

The definition of A064169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064169.P16990074960060079416

`A001008(n+1)-A002805(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064169

/-- `A001008(n+1)-A002805(n+1)` -/
def P16990074960060079416.Spec : Prop :=
  ∀ n, P16990074960060079416.a n = A064169 (n + 1)

theorem P16990074960060079416.correct : P16990074960060079416.Spec := by
  intro n
  simp only [A064169, Nat.add_sub_cancel]

end A064169

/-! ## A064169.P3042132566245079500

`A027457(n+1)/A110566(n+1)`
-/

namespace A064169.P3042132566245079500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027457 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)

end

end A064169.P3042132566245079500

namespace A064169

/-- `A027457(n+1)/A110566(n+1)` -/
def P3042132566245079500.Spec : Prop :=
  ∀ n, P3042132566245079500.a n = (A064169 (n + 1) : ℚ)

end A064169

/-! ## A064169.P10675685533979265912

`2*A001008(n+1)-A064168(n+1)`
-/

namespace A064169.P10675685533979265912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001008 (n + 1) - A064168 (n + 1)

end

end A064169.P10675685533979265912

namespace A064169

/-- `2*A001008(n+1)-A064168(n+1)` -/
def P10675685533979265912.Spec : Prop :=
  ∀ n, P10675685533979265912.a n = A064169 (n + 1)

theorem P10675685533979265912.correct : P10675685533979265912.Spec := by
  intro n
  simp only [A064169, Nat.add_sub_cancel, A064169.P10675685533979265912.a, A064169.P16990074960060079416.a, A001008, A001008.P14452720140578332173.a, A002805, A002805.P15380155363923936140.a, A064168, A064168.P14856509466120462602.a, A000254, A000254.P9428527937712228311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064169

/-! ## A064169.P2020358289346780002

`A064168(n+1)-2*A002805(n+1)`
-/

namespace A064169.P2020358289346780002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064168 (n + 1) - 2 * A002805 (n + 1)

end

end A064169.P2020358289346780002

namespace A064169

/-- `A064168(n+1)-2*A002805(n+1)` -/
def P2020358289346780002.Spec : Prop :=
  ∀ n, P2020358289346780002.a n = A064169 (n + 1)

theorem P2020358289346780002.correct : P2020358289346780002.Spec := by
  intro n
  simp only [A064169, Nat.add_sub_cancel, A064169.P2020358289346780002.a, A064169.P16990074960060079416.a, A001008, A001008.P14452720140578332173.a, A002805, A002805.P15380155363923936140.a, A064168, A064168.P14856509466120462602.a, A000254, A000254.P9428527937712228311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064169

/-! ## A064169.P9687932946205584776

`A027457(n+1)/gcd(A025552(n), A027457(n+1))`
-/

namespace A064169.P9687932946205584776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027457 (n + 1) : ℚ) / (Int.gcd (A025552 n) (A027457 (n + 1)) : ℚ)

end

end A064169.P9687932946205584776

namespace A064169

/-- `A027457(n+1)/gcd(A025552(n), A027457(n+1))` -/
def P9687932946205584776.Spec : Prop :=
  ∀ n, P9687932946205584776.a n = (A064169 (n + 1) : ℚ)

end A064169

/-! ## A064169.P829994830220644362

`A001008(n+1)-Δ[A173185(n)]/A110566(n+1)`
-/

namespace A064169.P829994830220644362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) - (f1 (n + 1) - f1 n : ℚ) / (A110566 (n + 1) : ℚ)

end

end A064169.P829994830220644362

namespace A064169

/-- `A001008(n+1)-Δ[A173185(n)]/A110566(n+1)` -/
def P829994830220644362.Spec : Prop :=
  ∀ n, P829994830220644362.a n = (A064169 (n + 1) : ℚ)

end A064169

/-! ## A064169.P5592938961129605741

`A001008(n+1)-Δ[A236856(n)]/A110566(n+1)`
-/

namespace A064169.P5592938961129605741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) - (f1 (n + 1) - f1 n : ℚ) / (A110566 (n + 1) : ℚ)

end

end A064169.P5592938961129605741

namespace A064169

/-- `A001008(n+1)-Δ[A236856(n)]/A110566(n+1)` -/
def P5592938961129605741.Spec : Prop :=
  ∀ n, P5592938961129605741.a n = (A064169 (n + 1) : ℚ)

end A064169

/-! ## A064169.P18221965720796680944

`A060746(n+1)*A093818(n+1)-A002805(n+1)`
-/

namespace A064169.P18221965720796680944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060746 (n + 1) * A093818 (n + 1) - A002805 (n + 1)

end

end A064169.P18221965720796680944

namespace A064169

/-- `A060746(n+1)*A093818(n+1)-A002805(n+1)` -/
def P18221965720796680944.Spec : Prop :=
  ∀ n, P18221965720796680944.a n = A064169 (n + 1)

end A064169

/-! ## A064169.P16491363587312765980

`A001008(n+1)-A003418(n+1)/A110566(n+1)`
-/

namespace A064169.P16491363587312765980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) - (A003418 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)

end

end A064169.P16491363587312765980

namespace A064169

/-- `A001008(n+1)-A003418(n+1)/A110566(n+1)` -/
def P16491363587312765980.Spec : Prop :=
  ∀ n, P16491363587312765980.a n = (A064169 (n + 1) : ℚ)

end A064169

/-! ## A064169.P11842639109922254991

`A025529(n+1)/A110566(n+1)-A002805(n+1)`
-/

namespace A064169.P11842639109922254991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ) - (A002805 (n + 1) : ℚ)

end

end A064169.P11842639109922254991

namespace A064169

/-- `A025529(n+1)/A110566(n+1)-A002805(n+1)` -/
def P11842639109922254991.Spec : Prop :=
  ∀ n, P11842639109922254991.a n = (A064169 (n + 1) : ℚ)

end A064169

/-! ## A064169.P12894209192650101569

`(A025529(n+1)-A003418(n+1))/A110566(n+1)`
-/

namespace A064169.P12894209192650101569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) - A003418 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)

end

end A064169.P12894209192650101569

namespace A064169

/-- `(A025529(n+1)-A003418(n+1))/A110566(n+1)` -/
def P12894209192650101569.Spec : Prop :=
  ∀ n, P12894209192650101569.a n = (A064169 (n + 1) : ℚ)

end A064169

/-! ## A064169.P7702836932162993863

`A096617(n+1)/A120263(n+1)-A002805(n+1)`
-/

namespace A064169.P7702836932162993863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096617 (n + 1) : ℚ) / (A120263 (n + 1) : ℚ) - (A002805 (n + 1) : ℚ)

end

end A064169.P7702836932162993863

namespace A064169

/-- `A096617(n+1)/A120263(n+1)-A002805(n+1)` -/
def P7702836932162993863.Spec : Prop :=
  ∀ n, P7702836932162993863.a n = (A064169 (n + 1) : ℚ)

end A064169

/-! ## A064169.P8012845080870325272

`A002805(n+1)/A003418(n+1)*A027457(n+1)`
-/

namespace A064169.P8012845080870325272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) / (A003418 (n + 1) : ℚ) * (A027457 (n + 1) : ℚ)

end

end A064169.P8012845080870325272

namespace A064169

/-- `A002805(n+1)/A003418(n+1)*A027457(n+1)` -/
def P8012845080870325272.Spec : Prop :=
  ∀ n, P8012845080870325272.a n = (A064169 (n + 1) : ℚ)

end A064169

/-! ## A064169.P17702257002764475359

`n*A002805(n+1)-A187487(n+1)`
-/

namespace A064169.P17702257002764475359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002805 (n + 1) - A187487 (n + 1)

end

end A064169.P17702257002764475359

namespace A064169

/-- `n*A002805(n+1)-A187487(n+1)` -/
def P17702257002764475359.Spec : Prop :=
  ∀ n, P17702257002764475359.a n = A064169 (n + 1)

theorem P17702257002764475359.correct : P17702257002764475359.Spec := by
  intro n
  simp only [A064169, Nat.add_sub_cancel, A064169.P17702257002764475359.a, A064169.P16990074960060079416.a, A001008, A001008.P14452720140578332173.a, A002805, A002805.P15380155363923936140.a, A187487, A187487.P4860417623296774577.a, A000254, A000254.P9428527937712228311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064169

/-! ## A064169.P13176651524099249575

`A213998(A034856(n+1))-A002805(n+1)`
-/

namespace A064169.P13176651524099249575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (A034856 (n + 1)).toNat - A002805 (n + 1)

end

end A064169.P13176651524099249575

namespace A064169

/-- `A213998(A034856(n+1))-A002805(n+1)` -/
def P13176651524099249575.Spec : Prop :=
  ∀ n, P13176651524099249575.a n = A064169 (n + 1)

end A064169

/-! ## A064169.P15992655362383713689

`A001008(n+1)-A213999(A000096(n+1)-1)`
-/

namespace A064169.P15992655362383713689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) - A213999 (A000096 (n + 1) - 1).toNat

end

end A064169.P15992655362383713689

namespace A064169

/-- `A001008(n+1)-A213999(A000096(n+1)-1)` -/
def P15992655362383713689.Spec : Prop :=
  ∀ n, P15992655362383713689.a n = A064169 (n + 1)

end A064169

/-! ## A064169.P17534564067435866439

`A001008(n+1)-A213999(A132128(∑[n+1]))`
-/

namespace A064169.P17534564067435866439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) - A213999 (A132128 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A064169.P17534564067435866439

namespace A064169

/-- `A001008(n+1)-A213999(A132128(∑[n+1]))` -/
def P17534564067435866439.Spec : Prop :=
  ∀ n, P17534564067435866439.a n = A064169 (n + 1)

end A064169

/-! ## A064169.P16688110138654756266

`A001008(n+1)-A064167(n+1)/A001008(n+1)`
-/

namespace A064169.P16688110138654756266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) - (A064167 (n + 1) : ℚ) / (A001008 (n + 1) : ℚ)

end

end A064169.P16688110138654756266

namespace A064169

/-- `A001008(n+1)-A064167(n+1)/A001008(n+1)` -/
def P16688110138654756266.Spec : Prop :=
  ∀ n, P16688110138654756266.a n = (A064169 (n + 1) : ℚ)

end A064169

/-! ## A064169.P3021121498060192056

`A064167(n+1)/A002805(n+1)-A002805(n+1)`
-/

namespace A064169.P3021121498060192056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064167 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ) - (A002805 (n + 1) : ℚ)

end

end A064169.P3021121498060192056

namespace A064169

/-- `A064167(n+1)/A002805(n+1)-A002805(n+1)` -/
def P3021121498060192056.Spec : Prop :=
  ∀ n, P3021121498060192056.a n = (A064169 (n + 1) : ℚ)

end A064169

/-! ## A064169.P525519517262115458

`A035048(2*(n+1))-A002805(n+1)`
-/

namespace A064169.P525519517262115458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035048 (2 * (n + 1)) - A002805 (n + 1)

end

end A064169.P525519517262115458

namespace A064169

/-- `A035048(2*(n+1))-A002805(n+1)` -/
def P525519517262115458.Spec : Prop :=
  ∀ n, P525519517262115458.a n = A064169 (n + 1)

end A064169

/-!
# A064170: a(1) = 1; a(n+1) = product of numerator and denominator in Sum_{k=1..n} 1/a(k).

The programs for A064170, the canonical program `A064170.P16752448467765158732` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064170 has offset 1).

The definition of A064170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064170.P11260709764605209341

`∑[floor(ϕ²*a(n-1))]²+1` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A064170.P11260709764605209341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1

end

end A064170.P11260709764605209341

namespace A064170

/-- `∑[floor(ϕ²*a(n-1))]²+1` -/
def P11260709764605209341.Spec : Prop :=
  ∀ n, P11260709764605209341.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P9758122053571450363

`(a(n-1)+3)*a(n-1)/a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A064170.P9758122053571450363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (a (n - 1) + 3) * (a (n - 1) / a (n - 2))

end

end A064170.P9758122053571450363

namespace A064170

/-- `(a(n-1)+3)*a(n-1)/a(n-2)` -/
def P9758122053571450363.Spec : Prop :=
  ∀ n, P9758122053571450363.a n = (A064170 (n + 1) : ℚ)

end A064170

/-! ## A064170.P16752448467765158732

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=10`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064170

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P16752448467765158732.Spec : Prop :=
  ∀ n, P16752448467765158732.a n = A064170 (n + 1)

theorem P16752448467765158732.correct : P16752448467765158732.Spec := by
  intro n
  simp only [A064170, Nat.add_sub_cancel]

end A064170

/-! ## A064170.P10991304778518759080

`Δ[A293064(n)]²+1`
-/

namespace A064170.P10991304778518759080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A064170.P10991304778518759080

namespace A064170

/-- `Δ[A293064(n)]²+1` -/
def P10991304778518759080.Spec : Prop :=
  ∀ n, P10991304778518759080.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P4053202029580847985

`A212804(abs(1-2*n))²+1`
-/

namespace A064170.P4053202029580847985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 |1 - (2 * n : ℤ)|.toNat ^ 2 + 1

end

end A064170.P4053202029580847985

namespace A064170

/-- `A212804(abs(1-2*n))²+1` -/
def P4053202029580847985.Spec : Prop :=
  ∀ n, P4053202029580847985.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P20572747073713011

`floor((A000045(2*n)/ϕ²)²)+1`
-/

namespace A064170.P20572747073713011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000045 (2 * n) : ℝ) / Real.goldenRatio ^ 2) ^ 2⌋ + 1

end

end A064170.P20572747073713011

namespace A064170

/-- `floor((A000045(2*n)/ϕ²)²)+1` -/
def P20572747073713011.Spec : Prop :=
  ∀ n, P20572747073713011.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P1948803571855309992

`A000045(abs(1-2*n)-1)²+1`
-/

namespace A064170.P1948803571855309992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (|1 - (2 * n : ℤ)| - 1).toNat ^ 2 + 1

end

end A064170.P1948803571855309992

namespace A064170

/-- `A000045(abs(1-2*n)-1)²+1` -/
def P1948803571855309992.Spec : Prop :=
  ∀ n, P1948803571855309992.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P13062939900186599681

`ceil((A000045(2*n+1)/ϕ^3)²)`
-/

namespace A064170.P13062939900186599681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A000045 (2 * n + 1) : ℝ) / Real.goldenRatio ^ 3) ^ 2⌉

end

end A064170.P13062939900186599681

namespace A064170

/-- `ceil((A000045(2*n+1)/ϕ^3)²)` -/
def P13062939900186599681.Spec : Prop :=
  ∀ n, P13062939900186599681.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P61738567497026190

`A166516(A004275(n))`
-/

namespace A064170.P61738567497026190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (A004275 n).toNat

end

end A064170.P61738567497026190

namespace A064170

/-- `A166516(A004275(n))` -/
def P61738567497026190.Spec : Prop :=
  ∀ n, P61738567497026190.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P10027235267378217894

`A166516(record[A029578(n)])`
-/

namespace A064170.P10027235267378217894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064170.P10027235267378217894

namespace A064170

/-- `A166516(record[A029578(n)])` -/
def P10027235267378217894.Spec : Prop :=
  ∀ n, P10027235267378217894.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P11876497980372055828

`A166516(xor(1, A004273(n)))`
-/

namespace A064170.P11876497980372055828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (Int.xor 1 (A004273 n)).toNat

end

end A064170.P11876497980372055828

namespace A064170

/-- `A166516(xor(1, A004273(n)))` -/
def P11876497980372055828.Spec : Prop :=
  ∀ n, P11876497980372055828.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P17629966447996760373

`∑[A212804(record[A266724(n)])]`
-/

namespace A064170.P17629966447996760373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064170.P17629966447996760373

namespace A064170

/-- `∑[A212804(record[A266724(n)])]` -/
def P17629966447996760373.Spec : Prop :=
  ∀ n, P17629966447996760373.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P3330416163175631962

`(A293064(n)+1)*A001519(n)`
-/

namespace A064170.P3330416163175631962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A293064 n + 1) * A001519 n

end

end A064170.P3330416163175631962

namespace A064170

/-- `(A293064(n)+1)*A001519(n)` -/
def P3330416163175631962.Spec : Prop :=
  ∀ n, P3330416163175631962.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P3575661917452066954

`A166516(2*(A004273(n)-n))`
-/

namespace A064170.P3575661917452066954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (2 * (A004273 n - (n : ℤ))).toNat

end

end A064170.P3575661917452066954

namespace A064170

/-- `A166516(2*(A004273(n)-n))` -/
def P3575661917452066954.Spec : Prop :=
  ∀ n, P3575661917452066954.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P12927538257593827086

`(A001519(n)-A088305(n))²+1`
-/

namespace A064170.P12927538257593827086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001519 n - A088305 n) ^ 2 + 1

end

end A064170.P12927538257593827086

namespace A064170

/-- `(A001519(n)-A088305(n))²+1` -/
def P12927538257593827086.Spec : Prop :=
  ∀ n, P12927538257593827086.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P2063071983541240061

`(A055819(n)-A122367(n))²+1`
-/

namespace A064170.P2063071983541240061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055819 n - A122367 n) ^ 2 + 1

end

end A064170.P2063071983541240061

namespace A064170

/-- `(A055819(n)-A122367(n))²+1` -/
def P2063071983541240061.Spec : Prop :=
  ∀ n, P2063071983541240061.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P12093210809492231964

`A001519(n)*A147703(∑[n]-n)`
-/

namespace A064170.P12093210809492231964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n * A147703 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A064170.P12093210809492231964

namespace A064170

/-- `A001519(n)*A147703(∑[n]-n)` -/
def P12093210809492231964.Spec : Prop :=
  ∀ n, P12093210809492231964.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P17704466112442687020

`A166516(A233583(2*n+1)-2)`
-/

namespace A064170.P17704466112442687020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (A233583 (2 * n + 1) - 2).toNat

end

end A064170.P17704466112442687020

namespace A064170

/-- `A166516(A233583(2*n+1)-2)` -/
def P17704466112442687020.Spec : Prop :=
  ∀ n, P17704466112442687020.a n = A064170 (n + 1)

end A064170

/-! ## A064170.P8399348340709011872

`A245306(A233583(2*n+1)-2)`
-/

namespace A064170.P8399348340709011872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 (A233583 (2 * n + 1) - 2).toNat

end

end A064170.P8399348340709011872

namespace A064170

/-- `A245306(A233583(2*n+1)-2)` -/
def P8399348340709011872.Spec : Prop :=
  ∀ n, P8399348340709011872.a n = A064170 (n + 1)

end A064170

/-!
# A064171: a(1) = 1; a(n+1) = product of numerator and denominator of the continued fraction, [a(1); a(2), a(3),..., a(n)].

The programs for A064171, there is no canonical definition to state claims against.
-/

/-! ## A064171.P1181676787008211226

`A003242(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=15`
-/

namespace A064171.P1181676787008211226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 15] fun n a =>
  A003242 (a (n - 1) + 1).toNat

end

end A064171.P1181676787008211226

/-!
# A064172: Koechel numbers of Mozart's piano concerti, from the original Koechel catalog.

The programs for A064172, there is no canonical definition to state claims against.
-/

/-! ## A064172.P10545768393713798365

`eq[A003057(n+2), A359897(A046109(n))]`
-/

namespace A064172.P10545768393713798365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359897 (A046109 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064172.P10545768393713798365

/-!
# A064173: Number of partitions of n with positive rank.

The programs for A064173, there is no canonical definition to state claims against.
-/

/-! ## A064173.P2232925289426367654

`(A000041(n+1)-A047993(n+1))/2`
-/

namespace A064173.P2232925289426367654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) - A047993 (n + 1) : ℚ) / 2

end

end A064173.P2232925289426367654

/-! ## A064173.P16465475775740203099

`A123975(n+1)+A101198(n+1)`
-/

namespace A064173.P16465475775740203099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123975 (n + 1) + A101198 (n + 1)

end

end A064173.P16465475775740203099

/-! ## A064173.P17432348451994123480

`A325341(n+1)+A003106(n+1)`
-/

namespace A064173.P17432348451994123480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325341 (n + 1) + A003106 (n + 1)

end

end A064173.P17432348451994123480

/-! ## A064173.P5529492869700420375

`A000701(n+1)-A067772(n+1)`
-/

namespace A064173.P5529492869700420375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (n + 1) - A067772 (n + 1)

end

end A064173.P5529492869700420375

/-! ## A064173.P14975781563107541864

`A064174(n+1)-A047993(n+1)`
-/

namespace A064173.P14975781563107541864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1) - A047993 (n + 1)

end

end A064173.P14975781563107541864

/-! ## A064173.P7785176790600895780

`A101198(n+1)+A363230(n+1)+A101199(n+1)`
-/

namespace A064173.P7785176790600895780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101198 (n + 1) + (A363230 (n + 1) + A101199 (n + 1))

end

end A064173.P7785176790600895780

/-! ## A064173.P10735131689453595827

`A064174(n+1)+A325341(n+1)-A325343(n+1)`
-/

namespace A064173.P10735131689453595827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1) + (A325341 (n + 1) - A325343 (n + 1))

end

end A064173.P10735131689453595827

/-! ## A064173.P6920515404036703445

`A363230(n+1)+A064174(n+2)-A064174(n+1)`
-/

namespace A064173.P6920515404036703445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363230 (n + 1) + (A064174 (n + 2) - A064174 (n + 1))

end

end A064173.P6920515404036703445

/-! ## A064173.P17231077038676345479

`A000041(n+1)-A064174(n+1)`
-/

namespace A064173.P17231077038676345479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A064174 (n + 1)

end

end A064173.P17231077038676345479

/-! ## A064173.P3517031753769138651

`A003106(n+1)+A039900(n+1)-A064174(n+1)`
-/

namespace A064173.P3517031753769138651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (n + 1) + (A039900 (n + 1) - A064174 (n + 1))

end

end A064173.P3517031753769138651

/-! ## A064173.P13476296221403154647

`A000041(n+1)-(A325342(n+1)+A003114(n+1))`
-/

namespace A064173.P13476296221403154647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A325342 (n + 1) + A003114 (n + 1))

end

end A064173.P13476296221403154647

/-! ## A064173.P18279365247796003047

`A000041(n+1)-(A325343(n+1)+A003106(n+1))`
-/

namespace A064173.P18279365247796003047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A325343 (n + 1) + A003106 (n + 1))

end

end A064173.P18279365247796003047

/-! ## A064173.P11871616845204422244

`(A003106(n+1)+A039900(n+1)-A047993(n+1))/2`
-/

namespace A064173.P11871616845204422244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003106 (n + 1) + (A039900 (n + 1) - A047993 (n + 1)) : ℚ) / 2

end

end A064173.P11871616845204422244

/-! ## A064173.P13392235539713893205

`Δ[A000070(n)]-A064174(n+1)`
-/

namespace A064173.P13392235539713893205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A064174 (n + 1)

end

end A064173.P13392235539713893205

/-! ## A064173.P1503227853978796068

`(Δ[A000070(n)]-A047993(n+1))/2`
-/

namespace A064173.P1503227853978796068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A047993 (n + 1) : ℚ) / 2

end

end A064173.P1503227853978796068

/-! ## A064173.P10175121896931360488

`(record[A035363(n)]-A047993(n+1))/2`
-/

namespace A064173.P10175121896931360488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A047993 (n + 1) : ℚ) / 2

end

end A064173.P10175121896931360488

/-! ## A064173.P1868142666937024654

`(record[A035444(n)]-A047993(n+1))/2`
-/

namespace A064173.P1868142666937024654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A047993 (n + 1) : ℚ) / 2

end

end A064173.P1868142666937024654

/-! ## A064173.P12728374810878874720

`record[A114099(n)]-A064174(n+1)`
-/

namespace A064173.P12728374810878874720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A064174 (n + 1)

end

end A064173.P12728374810878874720

/-! ## A064173.P3978069608826459203

`A003114(n+1)+A039899(n+1)-A064174(n+1)`
-/

namespace A064173.P3978069608826459203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (n + 1) + (A039899 (n + 1) - A064174 (n + 1))

end

end A064173.P3978069608826459203

/-! ## A064173.P15928179589700665007

`A000041(n+1)-(A101709(n+1)+A101707(n+1))`
-/

namespace A064173.P15928179589700665007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A101709 (n + 1) + A101707 (n + 1))

end

end A064173.P15928179589700665007

/-!
# A064174: Number of partitions of n with nonnegative rank.

The programs for A064174, there is no canonical definition to state claims against.
-/

/-! ## A064174.P4249879553442829566

`(A000041(n+1)+A047993(n+1))/2`
-/

namespace A064174.P4249879553442829566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) + A047993 (n + 1) : ℚ) / 2

end

end A064174.P4249879553442829566

/-! ## A064174.P14191682925999999055

`A064173(n+1)+A047993(n+1)`
-/

namespace A064174.P14191682925999999055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) + A047993 (n + 1)

end

end A064174.P14191682925999999055

/-! ## A064174.P1020337015207396019

`A325343(n+1)+A003106(n+1)`
-/

namespace A064174.P1020337015207396019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325343 (n + 1) + A003106 (n + 1)

end

end A064174.P1020337015207396019

/-! ## A064174.P7047581931326682133

`A325342(n+1)+A003114(n+1)`
-/

namespace A064174.P7047581931326682133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325342 (n + 1) + A003114 (n + 1)

end

end A064174.P7047581931326682133

/-! ## A064174.P17393378461844067080

`A000700(n+1)+A067772(n+1)+A000701(n+1)`
-/

namespace A064174.P17393378461844067080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 1) + (A067772 (n + 1) + A000701 (n + 1))

end

end A064174.P17393378461844067080

/-! ## A064174.P3269669628744749148

`A000701(n+1)+A047993(n+1)-A067772(n+1)`
-/

namespace A064174.P3269669628744749148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (n + 1) + (A047993 (n + 1) - A067772 (n + 1))

end

end A064174.P3269669628744749148

/-! ## A064174.P2878596444064048650

`A027187(n+1)+A027193(n+1)-A064173(n+1)`
-/

namespace A064174.P2878596444064048650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (n + 1) + (A027193 (n + 1) - A064173 (n + 1))

end

end A064174.P2878596444064048650

/-! ## A064174.P4509358425588587560

`A064173(n+1)+A325343(n+1)-A325341(n+1)`
-/

namespace A064174.P4509358425588587560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) + (A325343 (n + 1) - A325341 (n + 1))

end

end A064174.P4509358425588587560

/-! ## A064174.P7149960732076799550

`A000041(n+1)-A064173(n+1)`
-/

namespace A064174.P7149960732076799550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A064173 (n + 1)

end

end A064174.P7149960732076799550

/-! ## A064174.P12976517062673856060

`A000041(n+1)+A067772(n+1)-A000701(n+1)`
-/

namespace A064174.P12976517062673856060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A067772 (n + 1) - A000701 (n + 1))

end

end A064174.P12976517062673856060

/-! ## A064174.P1739924677221684657

`A000041(n+1)-(A325341(n+1)+A003106(n+1))`
-/

namespace A064174.P1739924677221684657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A325341 (n + 1) + A003106 (n + 1))

end

end A064174.P1739924677221684657

/-! ## A064174.P793365042511908839

`Δ[A000070(n)]-A064173(n+1)`
-/

namespace A064174.P793365042511908839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A064173 (n + 1)

end

end A064174.P793365042511908839

/-! ## A064174.P2658824104842449422

`(A047993(n+1)+Δ[A000070(n)])/2`
-/

namespace A064174.P2658824104842449422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047993 (n + 1) + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A064174.P2658824104842449422

/-! ## A064174.P2014879980634496025

`A000070(n+1)-(A064173(n+1)+A000070(n))`
-/

namespace A064174.P2014879980634496025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A064173 (n + 1) + A000070 n)

end

end A064174.P2014879980634496025

/-! ## A064174.P16402184027072303450

`record[A035363(n)]-A064173(n+1)`
-/

namespace A064174.P16402184027072303450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A064173 (n + 1)

end

end A064174.P16402184027072303450

/-! ## A064174.P15062893868097057678

`(A047993(n+1)+record[A035363(n)])/2`
-/

namespace A064174.P15062893868097057678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047993 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A064174.P15062893868097057678

/-! ## A064174.P2320904125046815728

`(A047993(n+1)+record[A035444(n)])/2`
-/

namespace A064174.P2320904125046815728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047993 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A064174.P2320904125046815728

/-! ## A064174.P359486050892713757

`A003114(n+1)+A039899(n+1)-A064173(n+1)`
-/

namespace A064174.P359486050892713757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (n + 1) + (A039899 (n + 1) - A064173 (n + 1))

end

end A064174.P359486050892713757

/-! ## A064174.P2516942548388076138

`A006141(n+1)+A240057(n+1)-A064173(n+1)`
-/

namespace A064174.P2516942548388076138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006141 (n + 1) + (A240057 (n + 1) - A064173 (n + 1))

end

end A064174.P2516942548388076138

/-! ## A064174.P5536052355038573201

`A237751(n+1)+A237755(n+1)-A064173(n+1)`
-/

namespace A064174.P5536052355038573201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237751 (n + 1) + (A237755 (n + 1) - A064173 (n + 1))

end

end A064174.P5536052355038573201

/-!
# A064179: Infinitary version of Moebius function: infinitary MoebiusMu of n, equal to mu(n) iff mu(n) differs from zero, else 1 or -1 depending on whether the sum of the binary digits of the exponents in the prime decomposition of n is even or odd.

The programs for A064179, the canonical program `A064179.P15914318572528280562` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064179 has offset 1).

The definition of A064179 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064179.P15914318572528280562

`(-1)^A064547(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064179

/-- `(-1)^A064547(n+1)` -/
def P15914318572528280562.Spec : Prop :=
  ∀ n, P15914318572528280562.a n = (A064179 (n + 1) : ℚ)

end A064179

/-! ## A064179.P7785793559196021717

`(-1)^A001221(A007913(n+1))*a(A000188(n+1)-1)` with `a(0)=1`
-/

namespace A064179.P7785793559196021717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (-1 : ℚ) ^ (A001221 (A007913 (n + 1)).toNat : ℤ) * a (A000188 (n + 1) - 1).toNat

end

end A064179.P7785793559196021717

namespace A064179

/-- `(-1)^A001221(A007913(n+1))*a(A000188(n+1)-1)` -/
def P7785793559196021717.Spec : Prop :=
  ∀ n, P7785793559196021717.a n = (A064179 (n + 1) : ℚ)

end A064179

/-! ## A064179.P3640262954106554126

`∏{e}[n+1, A106400(#)]`
-/

namespace A064179.P3640262954106554126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A106400 (Nat.factorization (f1 n) p)

end

end A064179.P3640262954106554126

namespace A064179

/-- `∏{e}[n+1, A106400(#)]` -/
def P3640262954106554126.Spec : Prop :=
  ∀ n, P3640262954106554126.a n = A064179 (n + 1)

end A064179

/-! ## A064179.P13530454188919508808

`(-1)^A046645(n+1)`
-/

namespace A064179.P13530454188919508808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A046645 (n + 1) : ℤ)

end

end A064179.P13530454188919508808

namespace A064179

/-- `(-1)^A046645(n+1)` -/
def P13530454188919508808.Spec : Prop :=
  ∀ n, P13530454188919508808.a n = (A064179 (n + 1) : ℚ)

end A064179

/-! ## A064179.P16340219678405545421

`(-1)^A318656(n+1)`
-/

namespace A064179.P16340219678405545421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A318656 (n + 1) : ℤ)

end

end A064179.P16340219678405545421

namespace A064179

/-- `(-1)^A318656(n+1)` -/
def P16340219678405545421.Spec : Prop :=
  ∀ n, P16340219678405545421.a n = (A064179 (n + 1) : ℚ)

end A064179

/-! ## A064179.P2625999439220709580

`(-1)^A268386(n+1)`
-/

namespace A064179.P2625999439220709580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A268386 (n + 1) : ℤ)

end

end A064179.P2625999439220709580

namespace A064179

/-- `(-1)^A268386(n+1)` -/
def P2625999439220709580.Spec : Prop :=
  ∀ n, P2625999439220709580.a n = (A064179 (n + 1) : ℚ)

end A064179

/-! ## A064179.P17749742314603443979

`(-1)^A293439(n+1)`
-/

namespace A064179.P17749742314603443979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A293439 (n + 1) : ℤ)

end

end A064179.P17749742314603443979

namespace A064179

/-- `(-1)^A293439(n+1)` -/
def P17749742314603443979.Spec : Prop :=
  ∀ n, P17749742314603443979.a n = (A064179 (n + 1) : ℚ)

end A064179

/-! ## A064179.P11650925142131198217

`(-1)^log2(A037445(n+1))`
-/

namespace A064179.P11650925142131198217
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-1 : ℝ) ^ (Real.logb 2 (A037445 (n + 1) : ℝ))

end

end A064179.P11650925142131198217

namespace A064179

/-- `(-1)^log2(A037445(n+1))` -/
def P11650925142131198217.Spec : Prop :=
  ∀ n, P11650925142131198217.a n = (A064179 (n + 1) : ℝ)

end A064179

/-! ## A064179.P15114584582043884706

`2*A359464(n+1)-1`
-/

namespace A064179.P15114584582043884706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359464 (n + 1) - 1

end

end A064179.P15114584582043884706

namespace A064179

/-- `2*A359464(n+1)-1` -/
def P15114584582043884706.Spec : Prop :=
  ∀ n, P15114584582043884706.a n = A064179 (n + 1)

end A064179

/-! ## A064179.P15913369641870625346

`∏{e}[A160102(n+1), #-2]`
-/

namespace A064179.P15913369641870625346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 2)

end

end A064179.P15913369641870625346

namespace A064179

/-- `∏{e}[A160102(n+1), #-2]` -/
def P15913369641870625346.Spec : Prop :=
  ∀ n, P15913369641870625346.a n = A064179 (n + 1)

end A064179

/-! ## A064179.P8505176106513675835

`(A046644(n+1)+1)%3-1`
-/

namespace A064179.P8505176106513675835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046644 (n + 1) + 1) 3 - 1

end

end A064179.P8505176106513675835

namespace A064179

/-- `(A046644(n+1)+1)%3-1` -/
def P8505176106513675835.Spec : Prop :=
  ∀ n, P8505176106513675835.a n = A064179 (n + 1)

end A064179

/-! ## A064179.P8237999436106703679

`A004718(A037445(n+1))`
-/

namespace A064179.P8237999436106703679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A037445 (n + 1)).toNat

end

end A064179.P8237999436106703679

namespace A064179

/-- `A004718(A037445(n+1))` -/
def P8237999436106703679.Spec : Prop :=
  ∀ n, P8237999436106703679.a n = A064179 (n + 1)

end A064179

/-! ## A064179.P10211481581736783765

`A008836(A074848(n+1))`
-/

namespace A064179.P10211481581736783765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A074848 (n + 1)).toNat

end

end A064179.P10211481581736783765

namespace A064179

/-- `A008836(A074848(n+1))` -/
def P10211481581736783765.Spec : Prop :=
  ∀ n, P10211481581736783765.a n = A064179 (n + 1)

end A064179

/-! ## A064179.P16573334321731123713

`A008683(A160102(n+1))`
-/

namespace A064179.P16573334321731123713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A160102 (n + 1)).toNat

end

end A064179.P16573334321731123713

namespace A064179

/-- `A008683(A160102(n+1))` -/
def P16573334321731123713.Spec : Prop :=
  ∀ n, P16573334321731123713.a n = A064179 (n + 1)

end A064179

/-! ## A064179.P17321932171839843237

`A008836(A293442(n+1))`
-/

namespace A064179.P17321932171839843237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A293442 (n + 1)).toNat

end

end A064179.P17321932171839843237

namespace A064179

/-- `A008836(A293442(n+1))` -/
def P17321932171839843237.Spec : Prop :=
  ∀ n, P17321932171839843237.a n = A064179 (n + 1)

end A064179

/-! ## A064179.P16828037024092635827

`A008836(A375230(n+1))`
-/

namespace A064179.P16828037024092635827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A375230 (n + 1)).toNat

end

end A064179.P16828037024092635827

namespace A064179

/-- `A008836(A375230(n+1))` -/
def P16828037024092635827.Spec : Prop :=
  ∀ n, P16828037024092635827.a n = A064179 (n + 1)

end A064179

/-! ## A064179.P18070406403700121647

`A056594(2*A046645(n+1))`
-/

namespace A064179.P18070406403700121647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * A046645 (n + 1)).toNat

end

end A064179.P18070406403700121647

namespace A064179

/-- `A056594(2*A046645(n+1))` -/
def P18070406403700121647.Spec : Prop :=
  ∀ n, P18070406403700121647.a n = A064179 (n + 1)

end A064179

/-! ## A064179.P2332406178838749130

`A162511(2*A037445(n+1))`
-/

namespace A064179.P2332406178838749130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (2 * A037445 (n + 1)).toNat

end

end A064179.P2332406178838749130

namespace A064179

/-- `A162511(2*A037445(n+1))` -/
def P2332406178838749130.Spec : Prop :=
  ∀ n, P2332406178838749130.a n = A064179 (n + 1)

end A064179

/-! ## A064179.P9350870787132539133

`A057077(log2(A037445(n+1)²))`
-/

namespace A064179.P9350870787132539133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (SequenceMachineLib.roundAway (Real.logb 2 (A037445 (n + 1) ^ 2 : ℝ))).toNat

end

end A064179.P9350870787132539133

namespace A064179

/-- `A057077(log2(A037445(n+1)²))` -/
def P9350870787132539133.Spec : Prop :=
  ∀ n, P9350870787132539133.a n = A064179 (n + 1)

end A064179

/-! ## A064179.P17462759849437275761

`A057077(log2(A046644(n+1)²))`
-/

namespace A064179.P17462759849437275761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (SequenceMachineLib.roundAway (Real.logb 2 (A046644 (n + 1) ^ 2 : ℝ))).toNat

end

end A064179.P17462759849437275761

namespace A064179

/-- `A057077(log2(A046644(n+1)²))` -/
def P17462759849437275761.Spec : Prop :=
  ∀ n, P17462759849437275761.a n = A064179 (n + 1)

end A064179

/-!
# A064180: Composite numbers k such that the sum of the proper divisors of k not including 1, (Chowla's function, A048050) and their product (A007956) are both perfect squares.

The programs for A064180, there is no canonical definition to state claims against.
-/

/-! ## A064180.P683188350674842513

`∩[A064499(n+1), A187086(n+1)]`
-/

namespace A064180.P683188350674842513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064180.P683188350674842513

/-! ## A064180.P18271670665020510554

`∩[A187086(n+1), A228056(n+1)]`
-/

namespace A064180.P18271670665020510554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064180.P18271670665020510554

/-! ## A064180.P18014926368108692019

`∩[A187086(n+1), A388983(n+1)]`
-/

namespace A064180.P18014926368108692019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064180.P18014926368108692019

/-! ## A064180.P16310192818734760443

`∩[A187086(n+1), A376715(n+1)]`
-/

namespace A064180.P16310192818734760443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064180.P16310192818734760443

/-! ## A064180.P6506255170123361190

`filter[A187086(n+1), A358769(#)]`
-/

namespace A064180.P6506255170123361190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A064180.P6506255170123361190

/-! ## A064180.P17297370825914391038

`filter[A187086(n+1), A369253(#)]`
-/

namespace A064180.P17297370825914391038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A064180.P17297370825914391038

/-! ## A064180.P17700027965882195125

`∩[A182358(n+1), A187086(n+1)]`
-/

namespace A064180.P17700027965882195125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064180.P17700027965882195125

/-! ## A064180.P15589380085699345893

`∩[A187086(n+1), A229125(n+1)]`
-/

namespace A064180.P15589380085699345893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064180.P15589380085699345893

/-! ## A064180.P9190136205588743049

`∩[A187086(n+1), A258456(n+1)]`
-/

namespace A064180.P9190136205588743049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064180.P9190136205588743049

/-! ## A064180.P8123114230469311507

`∩[A187086(n+1), A265640(n+1)]`
-/

namespace A064180.P8123114230469311507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064180.P8123114230469311507

/-!
# A064182: Sum_{k <= 10^n} number of distinct primes dividing k (A001221).

The programs for A064182, there is no canonical definition to state claims against.
-/

/-! ## A064182.P8136110749501602017

`A013939(10^n)`
-/

namespace A064182.P8136110749501602017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (10 ^ n)

end

end A064182.P8136110749501602017

/-!
# A064183: Define a pair of sequences by p(0) = 0, q(0) = p(1) = q(1) = 1, q(n+1) = p(n)*q(n-1), p(n+1) = q(n+1) + q(n) for n > 0; then a(n) = q(n) and A064526(n) = p(n).

The programs for A064183, the canonical program `A064183.P4595388989862845162` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064183 has offset 0).

The definition of A064183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064183.P4595388989862845162

`(a(n-1)+a(n-2))*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064183

/-- `(a(n-1)+a(n-2))*a(n-2)` -/
def P4595388989862845162.Spec : Prop :=
  ∀ n, (P4595388989862845162.a n : ℤ) = A064183 n

theorem P4595388989862845162.correct : P4595388989862845162.Spec := by
  intro n
  simp only [A064183]

end A064183

/-! ## A064183.P13863213920911785343

`lcm(a(n-1)+a(n-2), a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A064183.P13863213920911785343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Nat.lcm (a (n - 1) + a (n - 2)) (a (n - 2))

end

end A064183.P13863213920911785343

namespace A064183

/-- `lcm(a(n-1)+a(n-2), a(n-2))` -/
def P13863213920911785343.Spec : Prop :=
  ∀ n, (P13863213920911785343.a n : ℤ) = A064183 n

end A064183

/-! ## A064183.P10775428671484860745

`(a(n-1)-ceil(-a(n-2)))*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A064183.P10775428671484860745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * a (n - 2)

end

end A064183.P10775428671484860745

namespace A064183

/-- `(a(n-1)-ceil(-a(n-2)))*a(n-2)` -/
def P10775428671484860745.Spec : Prop :=
  ∀ n, P10775428671484860745.a n = A064183 n

end A064183

/-! ## A064183.P10643771764445965993

`(a(n-1)-round(-a(n-2)))*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A064183.P10643771764445965993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * a (n - 2)

end

end A064183.P10643771764445965993

namespace A064183

/-- `(a(n-1)-round(-a(n-2)))*a(n-2)` -/
def P10643771764445965993.Spec : Prop :=
  ∀ n, P10643771764445965993.a n = A064183 n

end A064183

/-! ## A064183.P2993644061483066917

`(a(n-1)+a(n-2))/a(n-2)^(-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A064183.P2993644061483066917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) + a (n - 2)) / a (n - 2) ^ (-1 : ℤ)

end

end A064183.P2993644061483066917

namespace A064183

/-- `(a(n-1)+a(n-2))/a(n-2)^(-1)` -/
def P2993644061483066917.Spec : Prop :=
  ∀ n, P2993644061483066917.a n = (A064183 n : ℚ)

end A064183

/-!
# A064184: Denominator of sequence defined by recursion c(n)=1+c(n-2)/c(n-1), c(0)=0, c(1)=1.

The programs for A064184, the canonical program `A064184.P11937219479907591628` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064184 has offset 0).

The definition of A064184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064184.P11937219479907591628

`(a(n-1)*a(n-4)+a(n-2)²)*a(n-2)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064184

/-- `(a(n-1)*a(n-4)+a(n-2)²)*a(n-2)/a(n-4)` -/
def P11937219479907591628.Spec : Prop :=
  ∀ n, P11937219479907591628.a n = (A064184 n : ℚ)

end A064184

/-! ## A064184.P4060709730770906835

`A066356(n-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A064184.P4060709730770906835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A066356 (n - 1) * a (n - 2)

end

end A064184.P4060709730770906835

namespace A064184

/-- `A066356(n-1)*a(n-2)` -/
def P4060709730770906835.Spec : Prop :=
  ∀ n, P4060709730770906835.a n = A064184 n

end A064184

/-!
# A064185: a(n) = (b(n+3) * b(n-1) * a(n-1)^2 - 1) / b(n+2) where b(n) = A006720(n).

The programs for A064185, there is no canonical definition to state claims against.
-/

/-! ## A064185.P9002184915821726129

`A216999(3*a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A064185.P9002184915821726129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A216999 (3 * a (n - 2)).toNat

end

end A064185.P9002184915821726129

/-! ## A064185.P6843150025063417472

`A138999(((n+1)*a(n-1))²-∑[n+1]+2)` with `a(0)=1`
-/

namespace A064185.P6843150025063417472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138999 (((n + 1 : ℤ) * a (n - 1)) ^ 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2).toNat

end

end A064185.P6843150025063417472

/-!
# A064186: Numbers n such that n!+1 and n!-1 have the same number of prime divisors (with repetition).

The programs for A064186, there is no canonical definition to state claims against.
-/

/-! ## A064186.P10881411754875526534

`∪[A064147(n+1), A262484(n+1)]`
-/

namespace A064186.P10881411754875526534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A064186.P10881411754875526534

/-! ## A064186.P1239523867205325448

`eq[A054990(n+1), A054991(n+1)]+1`
-/

namespace A064186.P1239523867205325448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064186.P1239523867205325448

/-! ## A064186.P4064593026401586035

`A020725(eq[A054990(n+1), A054991(n+1)])`
-/

namespace A064186.P4064593026401586035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A064186.P4064593026401586035

/-! ## A064186.P4802236037380827514

`A065475(eq[A054990(n+1), A054991(n+1)])`
-/

namespace A064186.P4802236037380827514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A064186.P4802236037380827514

/-! ## A064186.P13971923269454285354

`A114637(eq[A054990(n+1), A054991(n+1)])`
-/

namespace A064186.P13971923269454285354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A064186.P13971923269454285354

/-!
# A064187: First of n^2 consecutive odd primes whose sum (=S) is divisible by n and S/n == n (mod 2).

The programs for A064187, there is no canonical definition to state claims against.
-/

/-! ## A064187.P7313221124112720549

`A096015(A342386(n+1)²)`
-/

namespace A064187.P7313221124112720549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096015 (A342386 (n + 1) ^ 2).toNat

end

end A064187.P7313221124112720549

/-! ## A064187.P7686719036124440664

`or(1, A015052(A342386(n+1)²))`
-/

namespace A064187.P7686719036124440664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A015052 (A342386 (n + 1) ^ 2).toNat)

end

end A064187.P7686719036124440664

/-! ## A064187.P16456403414810722665

`or(A086626(∑[n]), A342386(n+1))`
-/

namespace A064187.P16456403414810722665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086626 (∑ j ∈ Finset.range (n + 1), f1 j)) (A342386 (n + 1))

end

end A064187.P16456403414810722665

/-! ## A064187.P2933214935338205661

`A342386(n+1)+A000035(A007283(n))`
-/

namespace A064187.P2933214935338205661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342386 (n + 1) + A000035 (A007283 n).toNat

end

end A064187.P2933214935338205661

/-! ## A064187.P9285126472865147734

`A342386(n+1)+A010054(A238874(3*n+2))`
-/

namespace A064187.P9285126472865147734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342386 (n + 1) + A010054 (A238874 (3 * n + 2)).toNat

end

end A064187.P9285126472865147734

/-!
# A064188: a(n) = Sum_{k=0..floor(n/2)} binomial(n - k*(k-1)/2, k).

The programs for A064188, there is no canonical definition to state claims against.
-/

/-! ## A064188.P12716834032687226206

`A063978(n)-A010054(A107390(n+1))`
-/

namespace A064188.P12716834032687226206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063978 n - A010054 (A107390 (n + 1)).toNat

end

end A064188.P12716834032687226206

/-! ## A064188.P13011153544914648785

`A063978(n)-A279024(A081457(n+1))`
-/

namespace A064188.P13011153544914648785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063978 n - A279024 (A081457 (n + 1)).toNat

end

end A064188.P13011153544914648785

/-! ## A064188.P5121310944646110926

`A366066(A374688(3*n+1)+A078008(n))`
-/

namespace A064188.P5121310944646110926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366066 (A374688 (3 * n + 1) + A078008 n).toNat

end

end A064188.P5121310944646110926

/-! ## A064188.P13498686798161798191

`A360010(A129550(n))`
-/

namespace A064188.P13498686798161798191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (A129550 n).toNat

end

end A064188.P13498686798161798191

/-! ## A064188.P10315786845591072454

`A003002(A298344(n+1))`
-/

namespace A064188.P10315786845591072454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A298344 (n + 1)).toNat

end

end A064188.P10315786845591072454

/-!
# A064189: Triangle T(n,k), 0 <= k <= n, read by rows, defined by: T(0,0)=1, T(n,k)=0 if n < k, T(n,k) = T(n-1,k-1) + T(n-1,k) + T(n-1,k+1).

The programs for A064189, the canonical program `A064189.P9259342349472348932` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064189 has offset 0).

The definition of A064189 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k-1)+T(n-1,k)+T(n-1,k+1)` (program `A064189.P9259342349472348932`, by `A064189.P9259342349472348932.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064189.P9259342349472348932

`T(n-1,k-1)+T(n-1,k)+T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064189

/-- `T(n-1,k-1)+T(n-1,k)+T(n-1,k+1)` -/
def P9259342349472348932.Spec : Prop :=
  ∀ n, (P9259342349472348932.a n : ℤ) = A064189 n

theorem P9259342349472348932.correct : P9259342349472348932.Spec := by
  intro n
  simp only [A064189]

end A064189

/-! ## A064189.P14076338310975715519

`A089942(n)+A089942(n+1)%A038622(n)`
-/

namespace A064189.P14076338310975715519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 n + Int.tmod (A089942 (n + 1)) (A038622 n)

end

end A064189.P14076338310975715519

namespace A064189

/-- `A089942(n)+A089942(n+1)%A038622(n)` -/
def P14076338310975715519.Spec : Prop :=
  ∀ n, P14076338310975715519.a n = A064189 n

end A064189

/-! ## A064189.P9606426360785836554

`A038622(n)-A038622(n+1)%A038622(n)`
-/

namespace A064189.P9606426360785836554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n - Int.tmod (A038622 (n + 1)) (A038622 n)

end

end A064189.P9606426360785836554

namespace A064189

/-- `A038622(n)-A038622(n+1)%A038622(n)` -/
def P9606426360785836554.Spec : Prop :=
  ∀ n, P9606426360785836554.a n = A064189 n

end A064189

/-! ## A064189.P8649656128304599959

`A026300(A061579(n))`
-/

namespace A064189.P8649656128304599959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A061579 n).toNat

end

end A064189.P8649656128304599959

namespace A064189

/-- `A026300(A061579(n))` -/
def P8649656128304599959.Spec : Prop :=
  ∀ n, P8649656128304599959.a n = A064189 n

end A064189

/-! ## A064189.P16562050985425450348

`A026300(A038722(n+1)-1)`
-/

namespace A064189.P16562050985425450348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A038722 (n + 1) - 1).toNat

end

end A064189.P16562050985425450348

namespace A064189

/-- `A026300(A038722(n+1)-1)` -/
def P16562050985425450348.Spec : Prop :=
  ∀ n, P16562050985425450348.a n = A064189 n

end A064189

/-! ## A064189.P15026636317759223224

`A026300(A038722(n+2))`
-/

namespace A064189.P15026636317759223224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A038722 (n + 2)).toNat

end

end A064189.P15026636317759223224

namespace A064189

/-- `A026300(A038722(n+2))` -/
def P15026636317759223224.Spec : Prop :=
  ∀ n, P15026636317759223224.a n = A064189 n

end A064189

/-! ## A064189.P13689167344190591071

`A122896(comp[∑[n]])`
-/

namespace A064189.P13689167344190591071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122896 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A064189.P13689167344190591071

namespace A064189

/-- `A122896(comp[∑[n]])` -/
def P13689167344190591071.Spec : Prop :=
  ∀ n, P13689167344190591071.a n = A064189 n

end A064189

/-! ## A064189.P10012238827486553355

`A201641(n)/A130321(n)`
-/

namespace A064189.P10012238827486553355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201641 n : ℚ) / (A130321 n : ℚ)

end

end A064189.P10012238827486553355

namespace A064189

/-- `A201641(n)/A130321(n)` -/
def P10012238827486553355.Spec : Prop :=
  ∀ n, P10012238827486553355.a n = (A064189 n : ℚ)

end A064189

/-!
# A064190: Triangle T(n,k) generalizing the tangent numbers.

The programs for A064190, there is no canonical definition to state claims against.
-/

/-! ## A064190.P9903840229507524327

`record[A059369(A059442(ceil(ϕ*n)))]`
-/

namespace A064190.P9903840229507524327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059369 (A059442 ⌈Real.goldenRatio * (n : ℝ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064190.P9903840229507524327

/-! ## A064190.P18217540093582113892

`A000005(A132848(n))*A319646(n)`
-/

namespace A064190.P18217540093582113892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A132848 n).toNat * A319646 n

end

end A064190.P18217540093582113892

/-! ## A064190.P3170294617673156924

`and(A235264(A000124(n)), A351984(n+1))`
-/

namespace A064190.P3170294617673156924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A235264 (A000124 n).toNat) (A351984 (n + 1))

end

end A064190.P3170294617673156924

/-!
# A064191: Triangle T(n,k) (n >= 0, 0 <= k <= n) generalizing Motzkin numbers.

The programs for A064191, there is no canonical definition to state claims against.
-/

/-! ## A064191.P8292864033059411239

`A296131(2^A131333(n+1))`
-/

namespace A064191.P8292864033059411239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296131 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A131333 (n + 1) : ℤ))).toNat

end

end A064191.P8292864033059411239

/-! ## A064191.P13029792025075029990

`dr(A100226(A131333(n+1)²))`
-/

namespace A064191.P13029792025075029990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A100226 (A131333 (n + 1) ^ 2).toNat)

end

end A064191.P13029792025075029990

/-! ## A064191.P12792571350072487099

`A069623(A118759(A135233(n)))`
-/

namespace A064191.P12792571350072487099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A118759 (A135233 n).toNat).toNat

end

end A064191.P12792571350072487099

/-! ## A064191.P10002612141607760632

`A069623(A003557(A135233(n)²))`
-/

namespace A064191.P10002612141607760632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A003557 (A135233 n ^ 2).toNat).toNat

end

end A064191.P10002612141607760632

/-! ## A064191.P703738657505942078

`A127420(n)-A341026(A130534(n))`
-/

namespace A064191.P703738657505942078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127420 n - A341026 ((A130534 n).toNat + 165)

end

end A064191.P703738657505942078

/-!
# A064192: Triangle in which rows are permutations of the rows of A008282.

The programs for A064192, there is no canonical definition to state claims against.
-/

/-! ## A064192.P4401371778021548080

`A010094(A057027(n+1))`
-/

namespace A064192.P4401371778021548080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (A057027 (n + 1)).toNat

end

end A064192.P4401371778021548080

/-! ## A064192.P9866190039538928108

`A008282(A059399(n+1))`
-/

namespace A064192.P9866190039538928108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A059399 (n + 1)).toNat

end

end A064192.P9866190039538928108

/-! ## A064192.P4460528994441729837

`A008282(A194988(n+1))*A057427(A097333(n))`
-/

namespace A064192.P4460528994441729837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A194988 (n + 1)).toNat * A057427 (A097333 n).toNat

end

end A064192.P4460528994441729837

/-! ## A064192.P8356295841532587375

`A008282(A194988(n+1))+A000007(A058711(n+1))`
-/

namespace A064192.P8356295841532587375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A194988 (n + 1)).toNat + A000007 (A058711 (n + 1)).toNat

end

end A064192.P8356295841532587375

/-!
# A064194: a(2n) = 3*a(n), a(2n+1) = 2*a(n+1)+a(n), with a(1) = 1.

The programs for A064194, the canonical program `A064194.P3427049653599210233` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064194 has offset 1).

The definition of A064194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064194.P3427049653599210233

`a(floor((n+1)/2)-1)+2*a(ceil((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064194

/-- `a(floor((n+1)/2)-1)+2*a(ceil((n+1)/2)-1)` -/
def P3427049653599210233.Spec : Prop :=
  ∀ n, (P3427049653599210233.a n : ℤ) = A064194 (n + 1)

theorem P3427049653599210233.correct : P3427049653599210233.Spec := by
  intro n
  simp only [A064194, Nat.add_sub_cancel]

end A064194

/-! ## A064194.P14213762343404642044

`2*A268514(n)+1`
-/

namespace A064194.P14213762343404642044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268514 n + 1

end

end A064194.P14213762343404642044

namespace A064194

/-- `2*A268514(n)+1` -/
def P14213762343404642044.Spec : Prop :=
  ∀ n, P14213762343404642044.a n = A064194 (n + 1)

end A064194

/-! ## A064194.P5911284391769716862

`∑[gcd(2, n)*a(floor(n/2))]` with `a(0)=1, a(1)=2`
-/

namespace A064194.P5911284391769716862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.gcd 2 n * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064194.P5911284391769716862

namespace A064194

/-- `∑[gcd(2, n)*a(floor(n/2))]` -/
def P5911284391769716862.Spec : Prop :=
  ∀ n, (P5911284391769716862.a n : ℤ) = A064194 (n + 1)

end A064194

/-! ## A064194.P6192364877971010548

`∑[A267584(n)]`
-/

namespace A064194.P6192364877971010548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064194.P6192364877971010548

namespace A064194

/-- `∑[A267584(n)]` -/
def P6192364877971010548.Spec : Prop :=
  ∀ n, P6192364877971010548.a n = A064194 (n + 1)

end A064194

/-! ## A064194.P15267020917690707007

`∑[2^A290251(n)]`
-/

namespace A064194.P15267020917690707007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A290251 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064194.P15267020917690707007

namespace A064194

/-- `∑[2^A290251(n)]` -/
def P15267020917690707007.Spec : Prop :=
  ∀ n, P15267020917690707007.a n = (A064194 (n + 1) : ℚ)

end A064194

/-! ## A064194.P4858565638659806105

`∑[2*a(A025480(n))]` with `a(0)=1`
-/

namespace A064194.P4858565638659806105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064194.P4858565638659806105

namespace A064194

/-- `∑[2*a(A025480(n))]` -/
def P4858565638659806105.Spec : Prop :=
  ∀ n, (P4858565638659806105.a n : ℤ) = A064194 (n + 1)

end A064194

/-! ## A064194.P3726798295456198367

`∑[2*a(A030109(n+1))]` with `a(0)=1`
-/

namespace A064194.P3726798295456198367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (A030109 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064194.P3726798295456198367

namespace A064194

/-- `∑[2*a(A030109(n+1))]` -/
def P3726798295456198367.Spec : Prop :=
  ∀ n, (P3726798295456198367.a n : ℤ) = A064194 (n + 1)

end A064194

/-! ## A064194.P7497833027071437008

`(n+1)²-A080572(n+1)`
-/

namespace A064194.P7497833027071437008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A080572 (n + 1)

end

end A064194.P7497833027071437008

namespace A064194

/-- `(n+1)²-A080572(n+1)` -/
def P7497833027071437008.Spec : Prop :=
  ∀ n, P7497833027071437008.a n = A064194 (n + 1)

end A064194

/-! ## A064194.P12120737397020277082

`∑[2*a(ceil(A000265(n+1)/2)-1)]` with `a(0)=1`
-/

namespace A064194.P12120737397020277082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (⌈(A000265 (n + 1) : ℚ) / 2⌉ - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064194.P12120737397020277082

namespace A064194

/-- `∑[2*a(ceil(A000265(n+1)/2)-1)]` -/
def P12120737397020277082.Spec : Prop :=
  ∀ n, (P12120737397020277082.a n : ℤ) = A064194 (n + 1)

end A064194

/-! ## A064194.P5971890495879901125

`∑[A278531(A073137(n))]`
-/

namespace A064194.P5971890495879901125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A073137 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064194.P5971890495879901125

namespace A064194

/-- `∑[A278531(A073137(n))]` -/
def P5971890495879901125.Spec : Prop :=
  ∀ n, P5971890495879901125.a n = A064194 (n + 1)

end A064194

/-! ## A064194.P17279866649355788751

`∑[A000203(A080100(n))]+n`
-/

namespace A064194.P17279866649355788751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A080100 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A064194.P17279866649355788751

namespace A064194

/-- `∑[A000203(A080100(n))]+n` -/
def P17279866649355788751.Spec : Prop :=
  ∀ n, P17279866649355788751.a n = A064194 (n + 1)

end A064194

/-! ## A064194.P5975178460626947466

`∑[A000079(A008687(n+1))]-1`
-/

namespace A064194.P5975178460626947466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A008687 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A064194.P5975178460626947466

namespace A064194

/-- `∑[A000079(A008687(n+1))]-1` -/
def P5975178460626947466.Spec : Prop :=
  ∀ n, P5975178460626947466.a n = A064194 (n + 1)

end A064194

/-! ## A064194.P16240753010106084677

`∑[A278533(A073138(n))]`
-/

namespace A064194.P16240753010106084677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278533 (A073138 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064194.P16240753010106084677

namespace A064194

/-- `∑[A278533(A073138(n))]` -/
def P16240753010106084677.Spec : Prop :=
  ∀ n, P16240753010106084677.a n = A064194 (n + 1)

end A064194

/-! ## A064194.P8191540352389167684

`∑[2^A080791(2*n)]`
-/

namespace A064194.P8191540352389167684
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A080791 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064194.P8191540352389167684

namespace A064194

/-- `∑[2^A080791(2*n)]` -/
def P8191540352389167684.Spec : Prop :=
  ∀ n, P8191540352389167684.a n = (A064194 (n + 1) : ℚ)

end A064194

/-! ## A064194.P17663074546708773429

`∑[A000079(A080791(2*n))]`
-/

namespace A064194.P17663074546708773429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A080791 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064194.P17663074546708773429

namespace A064194

/-- `∑[A000079(A080791(2*n))]` -/
def P17663074546708773429.Spec : Prop :=
  ∀ n, P17663074546708773429.a n = A064194 (n + 1)

end A064194

/-! ## A064194.P10863344121337911007

`∑[A131577(A080791(2*n)+1)]`
-/

namespace A064194.P10863344121337911007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A080791 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064194.P10863344121337911007

namespace A064194

/-- `∑[A131577(A080791(2*n)+1)]` -/
def P10863344121337911007.Spec : Prop :=
  ∀ n, P10863344121337911007.a n = A064194 (n + 1)

end A064194

/-! ## A064194.P5933493461594873208

`∑[A001316(A035327(2*n))]-1`
-/

namespace A064194.P5933493461594873208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A035327 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A064194.P5933493461594873208

namespace A064194

/-- `∑[A001316(A035327(2*n))]-1` -/
def P5933493461594873208.Spec : Prop :=
  ∀ n, P5933493461594873208.a n = A064194 (n + 1)

end A064194

/-! ## A064194.P3299547244100626802

`∑[A000225(A023416(2*n))]+n`
-/

namespace A064194.P3299547244100626802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A023416 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A064194.P3299547244100626802

namespace A064194

/-- `∑[A000225(A023416(2*n))]+n` -/
def P3299547244100626802.Spec : Prop :=
  ∀ n, P3299547244100626802.a n = A064194 (n + 1)

end A064194

/-! ## A064194.P7407789667153942857

`∑[A080100(2*n)]`
-/

namespace A064194.P7407789667153942857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064194.P7407789667153942857

namespace A064194

/-- `∑[A080100(2*n)]` -/
def P7407789667153942857.Spec : Prop :=
  ∀ n, P7407789667153942857.a n = A064194 (n + 1)

end A064194

/-! ## A064194.P17025192391486978155

`∑[sqrt(A309074(2*n))]`
-/

namespace A064194.P17025192391486978155
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A309074 (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064194.P17025192391486978155

namespace A064194

/-- `∑[sqrt(A309074(2*n))]` -/
def P17025192391486978155.Spec : Prop :=
  ∀ n, P17025192391486978155.a n = (A064194 (n + 1) : ℝ)

end A064194

/-!
# A064195: a(n) = 3*(n-2)*(n-3)*(3*n^2-9)*(3*n^2-9*n-5)/2.

The programs for A064195, the canonical program `A064195.P13824007065003240540` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064195 has offset 2).

The definition of A064195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064195.P13824007065003240540

`3*n*(n-1)*(3*(n+2)²-9)*(3*(n+2)²-9*(n+2)-5)/2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064195

/-- `3*n*(n-1)*(3*(n+2)²-9)*(3*(n+2)²-9*(n+2)-5)/2` -/
def P13824007065003240540.Spec : Prop :=
  ∀ n, P13824007065003240540.a n = (A064195 (n + 2) : ℚ)

end A064195

/-!
# A064197: a(n) = 27*(n-1)*(n-2)*(n-3)*(3*n-8)/2.

The programs for A064197, the canonical program `A064197.P5681134733550556333` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064197 has offset 2).

The definition of A064197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064197.P5681134733550556333

`27*(n+1)*n*(n-1)*(3*(n+2)-8)/2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064197

/-- `27*(n+1)*n*(n-1)*(3*(n+2)-8)/2` -/
def P5681134733550556333.Spec : Prop :=
  ∀ n, P5681134733550556333.a n = (A064197 (n + 2) : ℚ)

end A064197

/-! ## A064197.P2855028151270274816

`A060784(3*n)`
-/

namespace A064197.P2855028151270274816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060784 (3 * n)

end

end A064197.P2855028151270274816

namespace A064197

/-- `A060784(3*n)` -/
def P2855028151270274816.Spec : Prop :=
  ∀ n, P2855028151270274816.a n = A064197 (n + 2)

end A064197

/-! ## A064197.P15988985757001642164

`lcm(n, A060784(n+n+n))`
-/

namespace A064197.P15988985757001642164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A060784 (n + n + n))

end

end A064197.P15988985757001642164

namespace A064197

/-- `lcm(n, A060784(n+n+n))` -/
def P15988985757001642164.Spec : Prop :=
  ∀ n, (P15988985757001642164.a n : ℤ) = A064197 (n + 2)

end A064197

/-! ## A064197.P346183203336346604

`A060784(A008486(n))%A060784(A008574(n))`
-/

namespace A064197.P346183203336346604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060784 (A008486 n).toNat) (A060784 (A008574 n).toNat)

end

end A064197.P346183203336346604

namespace A064197

/-- `A060784(A008486(n))%A060784(A008574(n))` -/
def P346183203336346604.Spec : Prop :=
  ∀ n, P346183203336346604.a n = A064197 (n + 2)

end A064197

/-! ## A064197.P9401808383276666407

`A060784(n+n+n)+A008683(A000290(n+4))`
-/

namespace A064197.P9401808383276666407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060784 (n + n + n) + A008683 (A000290 (n + 4)).toNat

end

end A064197.P9401808383276666407

namespace A064197

/-- `A060784(n+n+n)+A008683(A000290(n+4))` -/
def P9401808383276666407.Spec : Prop :=
  ∀ n, P9401808383276666407.a n = A064197 (n + 2)

end A064197

/-!
# A064198: a(n) = 3*(n-2)*(n-3)*(3*n^2-3*n-8)/2.

The programs for A064198, the canonical program `A064198.P1160414185973349492` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064198 has offset 2).

The definition of A064198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064198.P1160414185973349492

`3*n*(n-1)*(3*(n+2)²-3*(n+2)-8)/2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064198

/-- `3*n*(n-1)*(3*(n+2)²-3*(n+2)-8)/2` -/
def P1160414185973349492.Spec : Prop :=
  ∀ n, P1160414185973349492.a n = (A064198 (n + 2) : ℚ)

end A064198

/-! ## A064198.P14089262363648603245

`A064199(n+2)-A062783(n)`
-/

namespace A064198.P14089262363648603245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064199 (n + 2) - A062783 n

end

end A064198.P14089262363648603245

namespace A064198

/-- `A064199(n+2)-A062783(n)` -/
def P14089262363648603245.Spec : Prop :=
  ∀ n, P14089262363648603245.a n = A064198 (n + 2)

end A064198

/-! ## A064198.P13124758956120286117

`12*A236770(n)-A153792(n)`
-/

namespace A064198.P13124758956120286117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A236770 n - A153792 n

end

end A064198.P13124758956120286117

namespace A064198

/-- `12*A236770(n)-A153792(n)` -/
def P13124758956120286117.Spec : Prop :=
  ∀ n, P13124758956120286117.a n = A064198 (n + 2)

end A064198

/-! ## A064198.P16637757269524051543

`A064199(n+2)-(A014642(n)+n)`
-/

namespace A064198.P16637757269524051543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064199 (n + 2) - (A014642 n + (n : ℤ))

end

end A064198.P16637757269524051543

namespace A064198

/-- `A064199(n+2)-(A014642(n)+n)` -/
def P16637757269524051543.Spec : Prop :=
  ∀ n, P16637757269524051543.a n = A064198 (n + 2)

end A064198

/-! ## A064198.P11800123930463619003

`A081589(∑[n])-A081589(n)`
-/

namespace A064198.P11800123930463619003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081589 (∑ j ∈ Finset.range (n + 1), f1 j) - A081589 n

end

end A064198.P11800123930463619003

namespace A064198

/-- `A081589(∑[n])-A081589(n)` -/
def P11800123930463619003.Spec : Prop :=
  ∀ n, P11800123930463619003.a n = A064198 (n + 2)

end A064198

/-! ## A064198.P4299244933290466031

`A153792(∑[n])-A153792(n)`
-/

namespace A064198.P4299244933290466031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153792 (∑ j ∈ Finset.range (n + 1), f1 j) - A153792 n

end

end A064198.P4299244933290466031

namespace A064198

/-- `A153792(∑[n])-A153792(n)` -/
def P4299244933290466031.Spec : Prop :=
  ∀ n, P4299244933290466031.a n = A064198 (n + 2)

end A064198

/-!
# A064199: a(n) = 9*(n-2)^2*(n^2-2*n-1)/2.

The programs for A064199, the canonical program `A064199.P3522908506873654562` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064199 has offset 2).

The definition of A064199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064199.P3522908506873654562

`9*n²*((n+2)²-2*(n+2)-1)/2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064199

/-- `9*n²*((n+2)²-2*(n+2)-1)/2` -/
def P3522908506873654562.Spec : Prop :=
  ∀ n, P3522908506873654562.a n = (A064199 (n + 2) : ℚ)

end A064199

/-! ## A064199.P8782231741207679917

`9*A255499(n)`
-/

namespace A064199.P8782231741207679917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A255499 n

end

end A064199.P8782231741207679917

namespace A064199

/-- `9*A255499(n)` -/
def P8782231741207679917.Spec : Prop :=
  ∀ n, P8782231741207679917.a n = A064199 (n + 2)

end A064199

/-! ## A064199.P16066460664068692982

`A064198(n+2)+A062783(n)`
-/

namespace A064199.P16066460664068692982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064198 (n + 2) + A062783 n

end

end A064199.P16066460664068692982

namespace A064199

/-- `A064198(n+2)+A062783(n)` -/
def P16066460664068692982.Spec : Prop :=
  ∀ n, P16066460664068692982.a n = A064199 (n + 2)

end A064199

/-! ## A064199.P9511552299921895678

`A079903(n+1)-A093485(n)`
-/

namespace A064199.P9511552299921895678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079903 (n + 1) - A093485 n

end

end A064199.P9511552299921895678

namespace A064199

/-- `A079903(n+1)-A093485(n)` -/
def P9511552299921895678.Spec : Prop :=
  ∀ n, P9511552299921895678.a n = A064199 (n + 2)

end A064199

/-! ## A064199.P14286798409493194332

`A028896(n)²/2-A016766(n)`
-/

namespace A064199.P14286798409493194332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028896 n ^ 2 : ℚ) / 2 - (A016766 n : ℚ)

end

end A064199.P14286798409493194332

namespace A064199

/-- `A028896(n)²/2-A016766(n)` -/
def P14286798409493194332.Spec : Prop :=
  ∀ n, P14286798409493194332.a n = (A064199 (n + 2) : ℚ)

end A064199

/-! ## A064199.P891354053818001829

`A129194(3*n)*A129194(n+1)-(3*n)²`
-/

namespace A064199.P891354053818001829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (3 * n) * A129194 (n + 1) - ((3 * n) ^ 2 : ℤ)

end

end A064199.P891354053818001829

namespace A064199

/-- `A129194(3*n)*A129194(n+1)-(3*n)²` -/
def P891354053818001829.Spec : Prop :=
  ∀ n, P891354053818001829.a n = A064199 (n + 2)

end A064199

/-! ## A064199.P12426596317925219773

`A195321(∑[n])-(3*n)²`
-/

namespace A064199.P12426596317925219773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195321 (∑ j ∈ Finset.range (n + 1), f1 j) - ((3 * n) ^ 2 : ℤ)

end

end A064199.P12426596317925219773

namespace A064199

/-- `A195321(∑[n])-(3*n)²` -/
def P12426596317925219773.Spec : Prop :=
  ∀ n, P12426596317925219773.a n = A064199 (n + 2)

end A064199

/-! ## A064199.P12374185504738928471

`2*A016766(A000217(n))-A016766(n)`
-/

namespace A064199.P12374185504738928471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016766 (A000217 n).toNat - A016766 n

end

end A064199.P12374185504738928471

namespace A064199

/-- `2*A016766(A000217(n))-A016766(n)` -/
def P12374185504738928471.Spec : Prop :=
  ∀ n, P12374185504738928471.a n = A064199 (n + 2)

end A064199

/-! ## A064199.P18132500920308464264

`A162940(A000217(n))-A027468(2*n)`
-/

namespace A064199.P18132500920308464264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162940 (A000217 n).toNat - A027468 (2 * n)

end

end A064199.P18132500920308464264

namespace A064199

/-- `A162940(A000217(n))-A027468(2*n)` -/
def P18132500920308464264.Spec : Prop :=
  ∀ n, P18132500920308464264.a n = A064199 (n + 2)

end A064199

/-! ## A064199.P6216255373623512114

`A000217(A003215(n))-A093485(n)`
-/

namespace A064199.P6216255373623512114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A003215 n).toNat - A093485 n

end

end A064199.P6216255373623512114

namespace A064199

/-- `A000217(A003215(n))-A093485(n)` -/
def P6216255373623512114.Spec : Prop :=
  ∀ n, P6216255373623512114.a n = A064199 (n + 2)

end A064199

