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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B005.C001
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
# A056100: a(n) = sigma(n)*phi(n) + 1 (mod n).

The programs for A056100, the canonical program `A056100.P1773914350508452077` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056100 has offset 1).

The definition of A056100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056100.P1773914350508452077

`(A007517(n+1)+1)%(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A056100

/-- `(A007517(n+1)+1)%(n+1)` -/
def P1773914350508452077.Spec : Prop :=
  ∀ n, P1773914350508452077.a n = A056100 (n + 1)

theorem P1773914350508452077.correct : P1773914350508452077.Spec := by
  intro n
  simp only [A056100, Nat.add_sub_cancel]

end A056100

/-! ## A056100.P12452913233551495350

`(A062354(n+1)+1)%(n+1)`
-/

namespace A056100.P12452913233551495350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062354 (n + 1) + 1) (n + 1 : ℤ)

end

end A056100.P12452913233551495350

namespace A056100

/-- `(A062354(n+1)+1)%(n+1)` -/
def P12452913233551495350.Spec : Prop :=
  ∀ n, P12452913233551495350.a n = A056100 (n + 1)

end A056100

/-! ## A056100.P10381319474243777394

`(n²-A069249(n+1))%(n+1)`
-/

namespace A056100.P10381319474243777394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - A069249 (n + 1)) (n + 1 : ℤ)

end

end A056100.P10381319474243777394

namespace A056100

/-- `(n²-A069249(n+1))%(n+1)` -/
def P10381319474243777394.Spec : Prop :=
  ∀ n, P10381319474243777394.a n = A056100 (n + 1)

end A056100

/-! ## A056100.P857994016145056278

`(A000010(n+1)*A000203(n+1)+1)%(n+1)`
-/

namespace A056100.P857994016145056278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1) * A000203 (n + 1) + 1) (n + 1 : ℤ)

end

end A056100.P857994016145056278

namespace A056100

/-- `(A000010(n+1)*A000203(n+1)+1)%(n+1)` -/
def P857994016145056278.Spec : Prop :=
  ∀ n, P857994016145056278.a n = A056100 (n + 1)

end A056100

/-! ## A056100.P2131943373660585437

`(A000010(n+1)*A001065(n+1)+1)%(n+1)`
-/

namespace A056100.P2131943373660585437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1) * A001065 (n + 1) + 1) (n + 1 : ℤ)

end

end A056100.P2131943373660585437

namespace A056100

/-- `(A000010(n+1)*A001065(n+1)+1)%(n+1)` -/
def P2131943373660585437.Spec : Prop :=
  ∀ n, P2131943373660585437.a n = A056100 (n + 1)

end A056100

/-! ## A056100.P11897743872127799884

`((A109606(n+1)+1)*A000203(n+1)+1)%(n+1)`
-/

namespace A056100.P11897743872127799884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A109606 (n + 1) + 1) * A000203 (n + 1) + 1) (n + 1 : ℤ)

end

end A056100.P11897743872127799884

namespace A056100

/-- `((A109606(n+1)+1)*A000203(n+1)+1)%(n+1)` -/
def P11897743872127799884.Spec : Prop :=
  ∀ n, P11897743872127799884.a n = A056100 (n + 1)

end A056100

/-! ## A056100.P7645608269316262830

`((A039649(n+1)-1)*A000203(n+1)+1)%(n+1)`
-/

namespace A056100.P7645608269316262830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A039649 (n + 1) - 1) * A000203 (n + 1) + 1) (n + 1 : ℤ)

end

end A056100.P7645608269316262830

namespace A056100

/-- `((A039649(n+1)-1)*A000203(n+1)+1)%(n+1)` -/
def P7645608269316262830.Spec : Prop :=
  ∀ n, P7645608269316262830.a n = A056100 (n + 1)

end A056100

/-! ## A056100.P11062258232664888975

`((A051612(n+1)+A000010(n+1))*A000010(n+1)+1)%(n+1)`
-/

namespace A056100.P11062258232664888975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A051612 (n + 1) + A000010 (n + 1)) * A000010 (n + 1) + 1) (n + 1 : ℤ)

end

end A056100.P11062258232664888975

namespace A056100

/-- `((A051612(n+1)+A000010(n+1))*A000010(n+1)+1)%(n+1)` -/
def P11062258232664888975.Spec : Prop :=
  ∀ n, P11062258232664888975.a n = A056100 (n + 1)

end A056100

/-! ## A056100.P17152655126310302487

`((A065387(n+1)-A000010(n+1))*A000010(n+1)+1)%(n+1)`
-/

namespace A056100.P17152655126310302487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A065387 (n + 1) - A000010 (n + 1)) * A000010 (n + 1) + 1) (n + 1 : ℤ)

end

end A056100.P17152655126310302487

namespace A056100

/-- `((A065387(n+1)-A000010(n+1))*A000010(n+1)+1)%(n+1)` -/
def P17152655126310302487.Spec : Prop :=
  ∀ n, P17152655126310302487.a n = A056100 (n + 1)

end A056100

/-! ## A056100.P8876459728578934058

`A141310(A007517(n+1))%(n+1)`
-/

namespace A056100.P8876459728578934058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141310 (A007517 (n + 1)).toNat) (n + 1 : ℤ)

end

end A056100.P8876459728578934058

namespace A056100

/-- `A141310(A007517(n+1))%(n+1)` -/
def P8876459728578934058.Spec : Prop :=
  ∀ n, P8876459728578934058.a n = A056100 (n + 1)

end A056100

/-! ## A056100.P2064701742773312316

`A141310(A062354(n+1))%(n+1)`
-/

namespace A056100.P2064701742773312316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141310 (A062354 (n + 1)).toNat) (n + 1 : ℤ)

end

end A056100.P2064701742773312316

namespace A056100

/-- `A141310(A062354(n+1))%(n+1)` -/
def P2064701742773312316.Spec : Prop :=
  ∀ n, P2064701742773312316.a n = A056100 (n + 1)

end A056100

/-! ## A056100.P7378937575596750593

`(A152958((n+1)*(n+1))+1)%(n+1)`
-/

namespace A056100.P7378937575596750593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152958 ((n + 1) * (n + 1)) + 1) (n + 1 : ℤ)

end

end A056100.P7378937575596750593

namespace A056100

/-- `(A152958((n+1)*(n+1))+1)%(n+1)` -/
def P7378937575596750593.Spec : Prop :=
  ∀ n, P7378937575596750593.a n = A056100 (n + 1)

end A056100

/-!
# A056105: First spoke of a hexagonal spiral.

The programs for A056105, the canonical program `A056105.P6848475420530033714` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056105 has offset 0).

The definition of A056105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056105.P6848475420530033714

`3*n²-2*n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056105

/-- `3*n²-2*n+1` -/
def P6848475420530033714.Spec : Prop :=
  ∀ n, P6848475420530033714.a n = A056105 n

theorem P6848475420530033714.correct : P6848475420530033714.Spec := by
  intro n
  simp only [A056105]

end A056105

/-! ## A056105.P14692437742105831986

`∑[a(n-1)+6]` with `a(0)=1, a(1)=1`
-/

namespace A056105.P14692437742105831986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056105.P14692437742105831986

namespace A056105

/-- `∑[a(n-1)+6]` -/
def P14692437742105831986.Spec : Prop :=
  ∀ n, (P14692437742105831986.a n : ℤ) = A056105 n

end A056105

/-! ## A056105.P17480642431014982569

`∑[ogf((1-x+6x^2)/(1-2x+x^2))]`
-/

namespace A056105.P17480642431014982569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056105.P17480642431014982569

namespace A056105

/-- `∑[ogf((1-x+6x^2)/(1-2x+x^2))]` -/
def P17480642431014982569.Spec : Prop :=
  ∀ n, P17480642431014982569.a n = A056105 n

end A056105

/-! ## A056105.P11450056760705511704

`ogf((1-x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A056105.P11450056760705511704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 6] [1, -3, 3, -1] n

end

end A056105.P11450056760705511704

namespace A056105

/-- `ogf((1-x+6x^2)/(1-3x+3x^2-x^3))` -/
def P11450056760705511704.Spec : Prop :=
  ∀ n, P11450056760705511704.a n = A056105 n

end A056105

/-! ## A056105.P18436930487979799946

`floor(6*n+a(n-1)-5)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A056105.P18436930487979799946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (6 * n : ℤ) + (a (n - 1) - 5)

end

end A056105.P18436930487979799946

namespace A056105

/-- `floor(6*n+a(n-1)-5)` -/
def P18436930487979799946.Spec : Prop :=
  ∀ n, P18436930487979799946.a n = A056105 n

theorem P18436930487979799946.correct : P18436930487979799946.Spec := by
  intro n
  induction n with
  | zero => simp [A056105, A056105.P18436930487979799946.a, A056105.P6848475420530033714.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A056105, Nat.add_sub_cancel, A056105.P18436930487979799946.a, A056105.P6848475420530033714.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A056105

/-! ## A056105.P11071628775607452399

`floor(6*n-(5-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A056105.P11071628775607452399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (6 * n : ℤ) - (5 - a (n - 1))

end

end A056105.P11071628775607452399

namespace A056105

/-- `floor(6*n-(5-a(n-1)))` -/
def P11071628775607452399.Spec : Prop :=
  ∀ n, P11071628775607452399.a n = A056105 n

theorem P11071628775607452399.correct : P11071628775607452399.Spec := by
  intro n
  induction n with
  | zero => simp [A056105, A056105.P11071628775607452399.a, A056105.P6848475420530033714.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A056105, Nat.add_sub_cancel, A056105.P11071628775607452399.a, A056105.P6848475420530033714.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A056105

/-! ## A056105.P12871553791375959049

`Δ[(2*n+1)*(C(n, 2)-(n-2))]`
-/

namespace A056105.P12871553791375959049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((Nat.choose n 2 : ℤ) - ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056105.P12871553791375959049

namespace A056105

/-- `Δ[(2*n+1)*(C(n, 2)-(n-2))]` -/
def P12871553791375959049.Spec : Prop :=
  ∀ n, P12871553791375959049.a n = A056105 n

end A056105

/-! ## A056105.P13919288437219910186

`abs(n-1-lcm(n, 2*n+n-1))`
-/

namespace A056105.P13919288437219910186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 1 - (Int.lcm (n : ℤ) ((2 * n : ℤ) + ((n : ℤ) - 1)) : ℤ)|

end

end A056105.P13919288437219910186

namespace A056105

/-- `abs(n-1-lcm(n, 2*n+n-1))` -/
def P13919288437219910186.Spec : Prop :=
  ∀ n, P13919288437219910186.a n = A056105 n

end A056105

/-! ## A056105.P14005009289065473566

`∑[2*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A056105.P14005009289065473566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056105.P14005009289065473566

namespace A056105

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P14005009289065473566.Spec : Prop :=
  ∀ n, P14005009289065473566.a n = A056105 n

end A056105

/-! ## A056105.P2550378658876386233

`2*(a(n-1)+3-a(n-2)/2)` with `a(0)=1, a(1)=2`
-/

namespace A056105.P2550378658876386233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) + (3 - a (n - 2) / 2))

end

end A056105.P2550378658876386233

namespace A056105

/-- `2*(a(n-1)+3-a(n-2)/2)` -/
def P2550378658876386233.Spec : Prop :=
  ∀ n, P2550378658876386233.a n = (A056105 n : ℚ)

theorem P2550378658876386233.correct : P2550378658876386233.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A056105, Nat.add_sub_cancel, A056105.P2550378658876386233.a, A056105.P6848475420530033714.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A056105, Nat.add_sub_cancel, A056105.P2550378658876386233.a, A056105.P6848475420530033714.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A056105

/-! ## A056105.P8614097483070370900

`2*(3-(a(n-2)/2-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A056105.P8614097483070370900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (3 - (a (n - 2) / 2 - a (n - 1)))

end

end A056105.P8614097483070370900

namespace A056105

/-- `2*(3-(a(n-2)/2-a(n-1)))` -/
def P8614097483070370900.Spec : Prop :=
  ∀ n, P8614097483070370900.a n = (A056105 n : ℚ)

theorem P8614097483070370900.correct : P8614097483070370900.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A056105, Nat.add_sub_cancel, A056105.P8614097483070370900.a, A056105.P6848475420530033714.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A056105, Nat.add_sub_cancel, A056105.P8614097483070370900.a, A056105.P6848475420530033714.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A056105

/-! ## A056105.P8311189391158310014

`(A185212(n)+3)/4`
-/

namespace A056105.P8311189391158310014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185212 n + 3 : ℚ) / 4

end

end A056105.P8311189391158310014

namespace A056105

/-- `(A185212(n)+3)/4` -/
def P8311189391158310014.Spec : Prop :=
  ∀ n, P8311189391158310014.a n = (A056105 n : ℚ)

end A056105

/-! ## A056105.P7616269077536797667

`ceil((A033568(n)+n)/2)`
-/

namespace A056105.P7616269077536797667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033568 n + (n : ℤ) : ℚ) / 2⌉

end

end A056105.P7616269077536797667

namespace A056105

/-- `ceil((A033568(n)+n)/2)` -/
def P7616269077536797667.Spec : Prop :=
  ∀ n, P7616269077536797667.a n = A056105 n

end A056105

/-! ## A056105.P7147965331615645328

`(A051866(n)+2+n)/2`
-/

namespace A056105.P7147965331615645328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051866 n + 2 + (n : ℤ) : ℚ) / 2

end

end A056105.P7147965331615645328

namespace A056105

/-- `(A051866(n)+2+n)/2` -/
def P7147965331615645328.Spec : Prop :=
  ∀ n, P7147965331615645328.a n = (A056105 n : ℚ)

end A056105

/-! ## A056105.P9073000785764367822

`A057721(n)%A084380(n)`
-/

namespace A056105.P9073000785764367822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057721 n) (A084380 n)

end

end A056105.P9073000785764367822

namespace A056105

/-- `A057721(n)%A084380(n)` -/
def P9073000785764367822.Spec : Prop :=
  ∀ n, P9073000785764367822.a n = A056105 n

end A056105

/-! ## A056105.P16428840628324636789

`xor(A000567(n), A010684(n))`
-/

namespace A056105.P16428840628324636789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000567 n) (A010684 n)

end

end A056105.P16428840628324636789

namespace A056105

/-- `xor(A000567(n), A010684(n))` -/
def P16428840628324636789.Spec : Prop :=
  ∀ n, P16428840628324636789.a n = A056105 n

end A056105

/-! ## A056105.P13538365150198395859

`xor(A010726(n), A191413(n))`
-/

namespace A056105.P13538365150198395859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010726 n) (A191413 n)

end

end A056105.P13538365150198395859

namespace A056105

/-- `xor(A010726(n), A191413(n))` -/
def P13538365150198395859.Spec : Prop :=
  ∀ n, P13538365150198395859.a n = A056105 n

end A056105

/-! ## A056105.P4757615145722665898

`xor(A176040(n), A271740(n))`
-/

namespace A056105.P4757615145722665898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A176040 n) (A271740 n)

end

end A056105.P4757615145722665898

namespace A056105

/-- `xor(A176040(n), A271740(n))` -/
def P4757615145722665898.Spec : Prop :=
  ∀ n, P4757615145722665898.a n = A056105 n

end A056105

/-! ## A056105.P2352457223265703173

`A005892(n)%A059193(n+1)`
-/

namespace A056105.P2352457223265703173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005892 n) (A059193 (n + 1))

end

end A056105.P2352457223265703173

namespace A056105

/-- `A005892(n)%A059193(n+1)` -/
def P2352457223265703173.Spec : Prop :=
  ∀ n, P2352457223265703173.a n = A056105 n

end A056105

/-!
# A056106: Second spoke of a hexagonal spiral.

The programs for A056106, the canonical program `A056106.P14646240334205012070` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056106 has offset 0).

The definition of A056106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056106.P14646240334205012070

`3*n²-n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056106

/-- `3*n²-n+1` -/
def P14646240334205012070.Spec : Prop :=
  ∀ n, P14646240334205012070.a n = A056106 n

theorem P14646240334205012070.correct : P14646240334205012070.Spec := by
  intro n
  simp only [A056106]

end A056106

/-! ## A056106.P2290246894928921537

`or(1, 3*n²-n)`
-/

namespace A056106.P2290246894928921537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((3 * n ^ 2 : ℤ) - (n : ℤ))

end

end A056106.P2290246894928921537

namespace A056106

/-- `or(1, 3*n²-n)` -/
def P2290246894928921537.Spec : Prop :=
  ∀ n, P2290246894928921537.a n = A056106 n

end A056106

/-! ## A056106.P13679879201074846511

`xor(1, 3*n²-n)`
-/

namespace A056106.P13679879201074846511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((3 * n ^ 2 : ℤ) - (n : ℤ))

end

end A056106.P13679879201074846511

namespace A056106

/-- `xor(1, 3*n²-n)` -/
def P13679879201074846511.Spec : Prop :=
  ∀ n, P13679879201074846511.a n = A056106 n

end A056106

/-! ## A056106.P8388714719271524196

`floor(3/acot(n)²-n)`
-/

namespace A056106.P8388714719271524196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ) ^ 2 - (n : ℝ)⌋

end

end A056106.P8388714719271524196

namespace A056106

/-- `floor(3/acot(n)²-n)` -/
def P8388714719271524196.Spec : Prop :=
  ∀ n, P8388714719271524196.a n = A056106 n

end A056106

/-! ## A056106.P8626250559541777941

`∑[a(n-1)+6]` with `a(0)=1, a(1)=2`
-/

namespace A056106.P8626250559541777941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056106.P8626250559541777941

namespace A056106

/-- `∑[a(n-1)+6]` -/
def P8626250559541777941.Spec : Prop :=
  ∀ n, (P8626250559541777941.a n : ℤ) = A056106 n

end A056106

/-! ## A056106.P11687264212050653148

`Δ[lcm(n, (1-n)²)+n]`
-/

namespace A056106.P11687264212050653148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 2) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A056106.P11687264212050653148

namespace A056106

/-- `Δ[lcm(n, (1-n)²)+n]` -/
def P11687264212050653148.Spec : Prop :=
  ∀ n, P11687264212050653148.a n = A056106 n

end A056106

/-! ## A056106.P14338809845695166820

`∑[ogf((1+5x^2)/(1-2x+x^2))]`
-/

namespace A056106.P14338809845695166820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056106.P14338809845695166820

namespace A056106

/-- `∑[ogf((1+5x^2)/(1-2x+x^2))]` -/
def P14338809845695166820.Spec : Prop :=
  ∀ n, P14338809845695166820.a n = A056106 n

end A056106

/-! ## A056106.P17945762601367620703

`ogf((1+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A056106.P17945762601367620703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 5] [1, -3, 3, -1] n

end

end A056106.P17945762601367620703

namespace A056106

/-- `ogf((1+5x^2)/(1-3x+3x^2-x^3))` -/
def P17945762601367620703.Spec : Prop :=
  ∀ n, P17945762601367620703.a n = A056106 n

end A056106

/-! ## A056106.P15535788356700897795

`ceil(3/acot(n)²-(n+1))`
-/

namespace A056106.P15535788356700897795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / SequenceMachineLib.acot (n : ℝ) ^ 2 - (n + 1 : ℝ)⌉

end

end A056106.P15535788356700897795

namespace A056106

/-- `ceil(3/acot(n)²-(n+1))` -/
def P15535788356700897795.Spec : Prop :=
  ∀ n, P15535788356700897795.a n = A056106 n

end A056106

/-! ## A056106.P3509121559661526394

`(2*C(3*n, 2)+3)/3`
-/

namespace A056106.P3509121559661526394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (3 * n) 2 + 3 : ℚ) / 3

end

end A056106.P3509121559661526394

namespace A056106

/-- `(2*C(3*n, 2)+3)/3` -/
def P3509121559661526394.Spec : Prop :=
  ∀ n, P3509121559661526394.a n = (A056106 n : ℚ)

end A056106

/-! ## A056106.P18046118339179673199

`Δ[n²+3*2*C(n, 3)]`
-/

namespace A056106.P18046118339179673199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3 * (2 * Nat.choose n 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A056106.P18046118339179673199

namespace A056106

/-- `Δ[n²+3*2*C(n, 3)]` -/
def P18046118339179673199.Spec : Prop :=
  ∀ n, P18046118339179673199.a n = A056106 n

end A056106

/-! ## A056106.P14909809288443648222

`∑[record[(2*n)^((n%3)%2)]]`
-/

namespace A056106.P14909809288443648222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ (n % 3 % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056106.P14909809288443648222

namespace A056106

/-- `∑[record[(2*n)^((n%3)%2)]]` -/
def P14909809288443648222.Spec : Prop :=
  ∀ n, (P14909809288443648222.a n : ℤ) = A056106 n

end A056106

/-! ## A056106.P17208112971481821182

`floor(C(2*n, 2)+n²+ϕ)`
-/

namespace A056106.P17208112971481821182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n) 2 : ℝ) + ((n ^ 2 : ℝ) + Real.goldenRatio)⌋

end

end A056106.P17208112971481821182

namespace A056106

/-- `floor(C(2*n, 2)+n²+ϕ)` -/
def P17208112971481821182.Spec : Prop :=
  ∀ n, P17208112971481821182.a n = A056106 n

end A056106

/-! ## A056106.P9332268037836502293

`floor(6*n-(4-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A056106.P9332268037836502293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (6 * n : ℤ) - (4 - a (n - 1))

end

end A056106.P9332268037836502293

namespace A056106

/-- `floor(6*n-(4-a(n-1)))` -/
def P9332268037836502293.Spec : Prop :=
  ∀ n, P9332268037836502293.a n = A056106 n

theorem P9332268037836502293.correct : P9332268037836502293.Spec := by
  intro n
  induction n with
  | zero => simp [A056106, A056106.P9332268037836502293.a, A056106.P14646240334205012070.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A056106, Nat.add_sub_cancel, A056106.P9332268037836502293.a, A056106.P14646240334205012070.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A056106

/-! ## A056106.P9060196794620948877

`record[3*(1-n)²-abs(2-n)]`
-/

namespace A056106.P9060196794620948877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 - (n : ℤ)) ^ 2 - |2 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056106.P9060196794620948877

namespace A056106

/-- `record[3*(1-n)²-abs(2-n)]` -/
def P9060196794620948877.Spec : Prop :=
  ∀ n, P9060196794620948877.a n = A056106 n

end A056106

/-! ## A056106.P347140454013854497

`Δ[(n-1)*or(1, n*(n-1))]`
-/

namespace A056106.P347140454013854497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.lor 1 ((n : ℤ) * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056106.P347140454013854497

namespace A056106

/-- `Δ[(n-1)*or(1, n*(n-1))]` -/
def P347140454013854497.Spec : Prop :=
  ∀ n, P347140454013854497.a n = A056106 n

end A056106

/-! ## A056106.P1954266985828524125

`Δ[(n-1)*xor(1, n*(n-1))]`
-/

namespace A056106.P1954266985828524125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.xor 1 ((n : ℤ) * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056106.P1954266985828524125

namespace A056106

/-- `Δ[(n-1)*xor(1, n*(n-1))]` -/
def P1954266985828524125.Spec : Prop :=
  ∀ n, P1954266985828524125.a n = A056106 n

end A056106

/-! ## A056106.P5754250951776169856

`Δ[2*n*C(n, 2)-(1-n)²]`
-/

namespace A056106.P5754250951776169856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * Nat.choose n 2 : ℤ) - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056106.P5754250951776169856

namespace A056106

/-- `Δ[2*n*C(n, 2)-(1-n)²]` -/
def P5754250951776169856.Spec : Prop :=
  ∀ n, P5754250951776169856.a n = A056106 n

end A056106

/-!
# A056107: Third spoke of a hexagonal spiral.

The programs for A056107, the canonical program `A056107.P16256314836093114361` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056107 has offset 0).

The definition of A056107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056107.P16256314836093114361

`3*n²+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056107

/-- `3*n²+1` -/
def P16256314836093114361.Spec : Prop :=
  ∀ n, (P16256314836093114361.a n : ℤ) = A056107 n

theorem P16256314836093114361.correct : P16256314836093114361.Spec := by
  intro n
  simp only [A056107]

end A056107

/-! ## A056107.P1843168559750092748

`floor(3/acot(n)²)`
-/

namespace A056107.P1843168559750092748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A056107.P1843168559750092748

namespace A056107

/-- `floor(3/acot(n)²)` -/
def P1843168559750092748.Spec : Prop :=
  ∀ n, P1843168559750092748.a n = A056107 n

end A056107

/-! ## A056107.P3777910193200729452

`abs(xor(3*n², -1))`
-/

namespace A056107.P3777910193200729452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (3 * n ^ 2 : ℤ) (-1)|

end

end A056107.P3777910193200729452

namespace A056107

/-- `abs(xor(3*n², -1))` -/
def P3777910193200729452.Spec : Prop :=
  ∀ n, P3777910193200729452.a n = A056107 n

end A056107

/-! ## A056107.P14683373087262313740

`-xor(3*n², -1)`
-/

namespace A056107.P14683373087262313740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (3 * n ^ 2 : ℤ) (-1)

end

end A056107.P14683373087262313740

namespace A056107

/-- `-xor(3*n², -1)` -/
def P14683373087262313740.Spec : Prop :=
  ∀ n, P14683373087262313740.a n = A056107 n

end A056107

/-! ## A056107.P14884958977724870997

`xor(2, lcm(3, n²+1))`
-/

namespace A056107.P14884958977724870997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lcm 3 (n ^ 2 + 1))

end

end A056107.P14884958977724870997

namespace A056107

/-- `xor(2, lcm(3, n²+1))` -/
def P14884958977724870997.Spec : Prop :=
  ∀ n, (P14884958977724870997.a n : ℤ) = A056107 n

end A056107

/-! ## A056107.P4290837863214711833

`floor(3*(n²-cos(2)))`
-/

namespace A056107.P4290837863214711833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n ^ 2 : ℝ) - Real.cos (2 : ℝ))⌋

end

end A056107.P4290837863214711833

namespace A056107

/-- `floor(3*(n²-cos(2)))` -/
def P4290837863214711833.Spec : Prop :=
  ∀ n, P4290837863214711833.a n = A056107 n

end A056107

/-! ## A056107.P2122384942299745050

`round(3*(n²-cos(2)))`
-/

namespace A056107.P2122384942299745050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((n ^ 2 : ℝ) - Real.cos (2 : ℝ)))

end

end A056107.P2122384942299745050

namespace A056107

/-- `round(3*(n²-cos(2)))` -/
def P2122384942299745050.Spec : Prop :=
  ∀ n, P2122384942299745050.a n = A056107 n

end A056107

/-! ## A056107.P691150513098778069

`ceil(3*(n²-tan(3)))`
-/

namespace A056107.P691150513098778069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n ^ 2 : ℝ) - Real.tan (3 : ℝ))⌉

end

end A056107.P691150513098778069

namespace A056107

/-- `ceil(3*(n²-tan(3)))` -/
def P691150513098778069.Spec : Prop :=
  ∀ n, P691150513098778069.a n = A056107 n

end A056107

/-! ## A056107.P16227939668045905567

`floor(3*(n²-cot(2)))`
-/

namespace A056107.P16227939668045905567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n ^ 2 : ℝ) - Real.cot (2 : ℝ))⌋

end

end A056107.P16227939668045905567

namespace A056107

/-- `floor(3*(n²-cot(2)))` -/
def P16227939668045905567.Spec : Prop :=
  ∀ n, P16227939668045905567.a n = A056107 n

end A056107

/-! ## A056107.P3922952411140839224

`round(3*(n²-cot(2)))`
-/

namespace A056107.P3922952411140839224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((n ^ 2 : ℝ) - Real.cot (2 : ℝ)))

end

end A056107.P3922952411140839224

namespace A056107

/-- `round(3*(n²-cot(2)))` -/
def P3922952411140839224.Spec : Prop :=
  ∀ n, P3922952411140839224.a n = A056107 n

end A056107

/-! ## A056107.P12334870133240876401

`ceil(1/acot(3*n²))`
-/

namespace A056107.P12334870133240876401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot (3 * n ^ 2 : ℝ)⌉

end

end A056107.P12334870133240876401

namespace A056107

/-- `ceil(1/acot(3*n²))` -/
def P12334870133240876401.Spec : Prop :=
  ∀ n, P12334870133240876401.a n = A056107 n

end A056107

/-! ## A056107.P3155984517903959944

`floor(3/acot(n/acot(n)))`
-/

namespace A056107.P3155984517903959944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot ((n : ℝ) / SequenceMachineLib.acot (n : ℝ))⌋

end

end A056107.P3155984517903959944

namespace A056107

/-- `floor(3/acot(n/acot(n)))` -/
def P3155984517903959944.Spec : Prop :=
  ∀ n, P3155984517903959944.a n = A056107 n

end A056107

/-! ## A056107.P15755813046501741809

`∑[a(n-1)+6]` with `a(0)=1, a(1)=3`
-/

namespace A056107.P15755813046501741809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056107.P15755813046501741809

namespace A056107

/-- `∑[a(n-1)+6]` -/
def P15755813046501741809.Spec : Prop :=
  ∀ n, (P15755813046501741809.a n : ℤ) = A056107 n

end A056107

/-! ## A056107.P1337060829392935385

`xor(2, n*3*n+3)`
-/

namespace A056107.P1337060829392935385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n * (3 * n) + 3)

end

end A056107.P1337060829392935385

namespace A056107

/-- `xor(2, n*3*n+3)` -/
def P1337060829392935385.Spec : Prop :=
  ∀ n, (P1337060829392935385.a n : ℤ) = A056107 n

end A056107

/-!
# A056108: Fourth spoke of a hexagonal spiral.

The programs for A056108, the canonical program `A056108.P17425937018567532737` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056108 has offset 0).

The definition of A056108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056108.P17425937018567532737

`3*n²+n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056108

/-- `3*n²+n+1` -/
def P17425937018567532737.Spec : Prop :=
  ∀ n, (P17425937018567532737.a n : ℤ) = A056108 n

theorem P17425937018567532737.correct : P17425937018567532737.Spec := by
  intro n
  simp only [A056108]

end A056108

/-! ## A056108.P16601671324217590985

`A096777(3*n+1)`
-/

namespace A056108.P16601671324217590985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096777 (3 * n + 1)

end

end A056108.P16601671324217590985

namespace A056108

/-- `A096777(3*n+1)` -/
def P16601671324217590985.Spec : Prop :=
  ∀ n, P16601671324217590985.a n = A056108 n

end A056108

/-! ## A056108.P14067669660922210317

`floor(3/acot(n)²+n)`
-/

namespace A056108.P14067669660922210317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ) ^ 2 + (n : ℝ)⌋

end

end A056108.P14067669660922210317

namespace A056108

/-- `floor(3/acot(n)²+n)` -/
def P14067669660922210317.Spec : Prop :=
  ∀ n, P14067669660922210317.a n = A056108 n

end A056108

/-! ## A056108.P15558603095618719693

`∑[a(n-1)+6]` with `a(0)=1, a(1)=4`
-/

namespace A056108.P15558603095618719693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056108.P15558603095618719693

namespace A056108

/-- `∑[a(n-1)+6]` -/
def P15558603095618719693.Spec : Prop :=
  ∀ n, (P15558603095618719693.a n : ℤ) = A056108 n

end A056108

/-! ## A056108.P18247817116411134161

`round((3*n+1)/acot(n))`
-/

namespace A056108.P18247817116411134161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 * n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ))

end

end A056108.P18247817116411134161

namespace A056108

/-- `round((3*n+1)/acot(n))` -/
def P18247817116411134161.Spec : Prop :=
  ∀ n, P18247817116411134161.a n = A056108 n

end A056108

/-! ## A056108.P8210561791255164949

`Δ[lcm(1-n, n²)+n]`
-/

namespace A056108.P8210561791255164949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (n ^ 2 : ℤ) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A056108.P8210561791255164949

namespace A056108

/-- `Δ[lcm(1-n, n²)+n]` -/
def P8210561791255164949.Spec : Prop :=
  ∀ n, P8210561791255164949.a n = A056108 n

end A056108

/-! ## A056108.P14139472018367902200

`Δ[lcm(n, 1-(n-n²))]`
-/

namespace A056108.P14139472018367902200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - ((n : ℤ) - (n ^ 2 : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A056108.P14139472018367902200

namespace A056108

/-- `Δ[lcm(n, 1-(n-n²))]` -/
def P14139472018367902200.Spec : Prop :=
  ∀ n, P14139472018367902200.a n = A056108 n

end A056108

/-! ## A056108.P3991314967534268459

`Δ[n*or(1, n²-n)]`
-/

namespace A056108.P3991314967534268459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor 1 ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056108.P3991314967534268459

namespace A056108

/-- `Δ[n*or(1, n²-n)]` -/
def P3991314967534268459.Spec : Prop :=
  ∀ n, P3991314967534268459.a n = A056108 n

end A056108

/-! ## A056108.P8571151086435092047

`Δ[n*xor(1, n²-n)]`
-/

namespace A056108.P8571151086435092047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor 1 ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056108.P8571151086435092047

namespace A056108

/-- `Δ[n*xor(1, n²-n)]` -/
def P8571151086435092047.Spec : Prop :=
  ∀ n, P8571151086435092047.a n = A056108 n

end A056108

/-! ## A056108.P14142874122261498773

`∑[ogf((1+2x+3x^2)/(1-2x+x^2))]`
-/

namespace A056108.P14142874122261498773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056108.P14142874122261498773

namespace A056108

/-- `∑[ogf((1+2x+3x^2)/(1-2x+x^2))]` -/
def P14142874122261498773.Spec : Prop :=
  ∀ n, P14142874122261498773.a n = A056108 n

end A056108

/-! ## A056108.P16501967046819714036

`ogf((1+2x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A056108.P16501967046819714036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, -3, 3, -1] n

end

end A056108.P16501967046819714036

namespace A056108

/-- `ogf((1+2x+3x^2)/(1-3x+3x^2-x^3))` -/
def P16501967046819714036.Spec : Prop :=
  ∀ n, P16501967046819714036.a n = A056108 n

end A056108

/-! ## A056108.P15751710584150742315

`Δ[2*n*C(n, 2)+n]`
-/

namespace A056108.P15751710584150742315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose n 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A056108.P15751710584150742315

namespace A056108

/-- `Δ[2*n*C(n, 2)+n]` -/
def P15751710584150742315.Spec : Prop :=
  ∀ n, P15751710584150742315.a n = A056108 n

end A056108

/-!
# A056109: Fifth spoke of a hexagonal spiral.

The programs for A056109, the canonical program `A056109.P1021656474208167212` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056109 has offset 0).

The definition of A056109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056109.P1021656474208167212

`3*n²+2*n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056109

/-- `3*n²+2*n+1` -/
def P1021656474208167212.Spec : Prop :=
  ∀ n, (P1021656474208167212.a n : ℤ) = A056109 n

theorem P1021656474208167212.correct : P1021656474208167212.Spec := by
  intro n
  simp only [A056109]

end A056109

/-! ## A056109.P6601203176439115603

`A008810(3*n+1)`
-/

namespace A056109.P6601203176439115603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (3 * n + 1)

end

end A056109.P6601203176439115603

namespace A056109

/-- `A008810(3*n+1)` -/
def P6601203176439115603.Spec : Prop :=
  ∀ n, P6601203176439115603.a n = A056109 n

end A056109

/-! ## A056109.P14435517368732779921

`∑[a(n-1)+6]` with `a(0)=1, a(1)=5`
-/

namespace A056109.P14435517368732779921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056109.P14435517368732779921

namespace A056109

/-- `∑[a(n-1)+6]` -/
def P14435517368732779921.Spec : Prop :=
  ∀ n, (P14435517368732779921.a n : ℤ) = A056109 n

end A056109

/-! ## A056109.P17187678007995430952

`∑[or(1, abs(1-6*n))]`
-/

namespace A056109.P17187678007995430952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 |1 - (6 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056109.P17187678007995430952

namespace A056109

/-- `∑[or(1, abs(1-6*n))]` -/
def P17187678007995430952.Spec : Prop :=
  ∀ n, P17187678007995430952.a n = A056109 n

end A056109

/-! ## A056109.P12845762824660834064

`abs(xor(1, ∑[6*n])-n)`
-/

namespace A056109.P12845762824660834064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n : ℤ)|

end

end A056109.P12845762824660834064

namespace A056109

/-- `abs(xor(1, ∑[6*n])-n)` -/
def P12845762824660834064.Spec : Prop :=
  ∀ n, P12845762824660834064.a n = A056109 n

end A056109

/-! ## A056109.P6709234001348030127

`floor((3*n+2)/acot(n))`
-/

namespace A056109.P6709234001348030127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋

end

end A056109.P6709234001348030127

namespace A056109

/-- `floor((3*n+2)/acot(n))` -/
def P6709234001348030127.Spec : Prop :=
  ∀ n, P6709234001348030127.a n = A056109 n

end A056109

/-! ## A056109.P18419743291701382399

`round((3*n+2)/acot(n))`
-/

namespace A056109.P18419743291701382399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 * n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ))

end

end A056109.P18419743291701382399

namespace A056109

/-- `round((3*n+2)/acot(n))` -/
def P18419743291701382399.Spec : Prop :=
  ∀ n, P18419743291701382399.a n = A056109 n

end A056109

/-! ## A056109.P2165255113065111548

`Δ[n*n²-C(n, 2)]`
-/

namespace A056109.P2165255113065111548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056109.P2165255113065111548

namespace A056109

/-- `Δ[n*n²-C(n, 2)]` -/
def P2165255113065111548.Spec : Prop :=
  ∀ n, P2165255113065111548.a n = A056109 n

end A056109

/-! ## A056109.P12351498732120175574

`∑[ogf((1+3x+2x^2)/(1-2x+x^2))]`
-/

namespace A056109.P12351498732120175574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056109.P12351498732120175574

namespace A056109

/-- `∑[ogf((1+3x+2x^2)/(1-2x+x^2))]` -/
def P12351498732120175574.Spec : Prop :=
  ∀ n, P12351498732120175574.a n = A056109 n

end A056109

/-! ## A056109.P10640318545284805182

`ogf((1+3x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A056109.P10640318545284805182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -3, 3, -1] n

end

end A056109.P10640318545284805182

namespace A056109

/-- `ogf((1+3x+2x^2)/(1-3x+3x^2-x^3))` -/
def P10640318545284805182.Spec : Prop :=
  ∀ n, P10640318545284805182.a n = A056109 n

end A056109

/-! ## A056109.P16115612365696677402

`∑[record[(3*n+2)/gcd(2, n)]]`
-/

namespace A056109.P16115612365696677402
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℚ) / (Nat.gcd 2 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056109.P16115612365696677402

namespace A056109

/-- `∑[record[(3*n+2)/gcd(2, n)]]` -/
def P16115612365696677402.Spec : Prop :=
  ∀ n, P16115612365696677402.a n = (A056109 n : ℚ)

end A056109

/-!
# A056110: Highest proper factor of n!-1, or a(n)=1 if n!-1 is not composite.

The programs for A056110, there is no canonical definition to state claims against.
-/

/-! ## A056110.P1728161885181444227

`A033312(n+2)/A054415(n+2)`
-/

namespace A056110.P1728161885181444227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033312 (n + 2) : ℚ) / (A054415 (n + 2) : ℚ)

end

end A056110.P1728161885181444227

/-! ## A056110.P6641353365618814791

`record[A105060(n+1)]/A054415(n+2)`
-/

namespace A056110.P6641353365618814791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105060 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A054415 (n + 2) : ℚ)

end

end A056110.P6641353365618814791

/-! ## A056110.P4284322910790130897

`A030494(2*n+1)/A054415(n+2)`
-/

namespace A056110.P4284322910790130897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030494 (2 * n + 1) : ℚ) / (A054415 (n + 2) : ℚ)

end

end A056110.P4284322910790130897

/-!
# A056111: Highest proper factor of n!+1.

The programs for A056111, there is no canonical definition to state claims against.
-/

/-! ## A056111.P17039976290386765400

`A038507(n)/A051301(n)`
-/

namespace A056111.P17039976290386765400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038507 n : ℚ) / (A051301 n : ℚ)

end

end A056111.P17039976290386765400

/-! ## A056111.P3241143614916606921

`ceil(A000142(n)/A051301(n))`
-/

namespace A056111.P3241143614916606921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000142 n : ℚ) / (A051301 n : ℚ)⌉

end

end A056111.P3241143614916606921

/-! ## A056111.P3243877015145996317

`A155162(∑[n])/A051301(n)`
-/

namespace A056111.P3243877015145996317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155162 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A051301 n : ℚ)

end

end A056111.P3243877015145996317

/-! ## A056111.P12321011122463741567

`A185387(n+1)/A051301(n)`
-/

namespace A056111.P12321011122463741567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185387 (n + 1) : ℚ) / (A051301 n : ℚ)

end

end A056111.P12321011122463741567

/-! ## A056111.P613494481382173608

`(A033312(n)+2)/A051301(n)`
-/

namespace A056111.P613494481382173608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033312 n + 2 : ℚ) / (A051301 n : ℚ)

end

end A056111.P613494481382173608

/-! ## A056111.P17373509412816897859

`(Δ[A003422(n)]+1)/A051301(n)`
-/

namespace A056111.P17373509412816897859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / (A051301 n : ℚ)

end

end A056111.P17373509412816897859

/-! ## A056111.P2818118733753187139

`ceil(∏[A004277(n)-n]/A051301(n))`
-/

namespace A056111.P2818118733753187139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A051301 n : ℚ)⌉

end

end A056111.P2818118733753187139

/-! ## A056111.P11029322507335526845

`ceil(∏[n+3-A157532(n+1)]/A051301(n))`
-/

namespace A056111.P11029322507335526845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A157532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A051301 n : ℚ)⌉

end

end A056111.P11029322507335526845

/-! ## A056111.P5430792360438351080

`(A052898(n)-A000142(n))/A051301(n)`
-/

namespace A056111.P5430792360438351080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052898 n - A000142 n : ℚ) / (A051301 n : ℚ)

end

end A056111.P5430792360438351080

/-!
# A056112: a(1) = 1; a(m+1) = sum_{k=1 to m} [max(m, a(k))].

The programs for A056112, there is no canonical definition to state claims against.
-/

/-! ## A056112.P13504537560275886235

`A226896(∑{d}[ceil(2^(n-1)), #])`
-/

namespace A056112.P13504537560275886235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226896 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A056112.P13504537560275886235

/-! ## A056112.P10931853633475069522

`A248635(a(n-1)+n+1)` with `a(0)=1, a(1)=1`
-/

namespace A056112.P10931853633475069522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A248635 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A056112.P10931853633475069522

/-! ## A056112.P7779591124083110344

`A226896(A255047(n))`
-/

namespace A056112.P7779591124083110344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226896 (A255047 n).toNat

end

end A056112.P7779591124083110344

/-! ## A056112.P1839249773290492211

`A226896(A193903(∑[n]))`
-/

namespace A056112.P1839249773290492211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226896 (A193903 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A056112.P1839249773290492211

/-! ## A056112.P883867117647825405

`A226896(or(1, A000225(n)))`
-/

namespace A056112.P883867117647825405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226896 (Int.lor 1 (A000225 n)).toNat

end

end A056112.P883867117647825405

/-!
# A056114: Expansion of (1+9*x)/(1-x)^11.

The programs for A056114, the canonical program `A056114.P5010012959701436438` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056114 has offset 0).

The definition of A056114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056114.P5010012959701436438

`(n+1)*C(n+9, 9)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056114

/-- `(n+1)*C(n+9, 9)` -/
def P5010012959701436438.Spec : Prop :=
  ∀ n, (P5010012959701436438.a n : ℤ) = A056114 n

theorem P5010012959701436438.correct : P5010012959701436438.Spec := by
  intro n
  simp only [A056114]

end A056114

/-! ## A056114.P10908104358298692932

`(n+1)*∑[∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]]`
-/

namespace A056114.P10908104358298692932
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056114.P10908104358298692932

namespace A056114

/-- `(n+1)*∑[∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]]` -/
def P10908104358298692932.Spec : Prop :=
  ∀ n, (P10908104358298692932.a n : ℤ) = A056114 n

end A056114

/-! ## A056114.P1661702298753144353

`∑[A093646(n)]`
-/

namespace A056114.P1661702298753144353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056114.P1661702298753144353

namespace A056114

/-- `∑[A093646(n)]` -/
def P1661702298753144353.Spec : Prop :=
  ∀ n, P1661702298753144353.a n = A056114 n

end A056114

/-! ## A056114.P15519996570663309465

`∑[∑[A056125(n)]]`
-/

namespace A056114.P15519996570663309465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056125 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056114.P15519996570663309465

namespace A056114

/-- `∑[∑[A056125(n)]]` -/
def P15519996570663309465.Spec : Prop :=
  ∀ n, P15519996570663309465.a n = A056114 n

end A056114

/-! ## A056114.P15407174071965936236

`∑[∑[∑[A052254(n)]]]`
-/

namespace A056114.P15407174071965936236
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056114.P15407174071965936236

namespace A056114

/-- `∑[∑[∑[A052254(n)]]]` -/
def P15407174071965936236.Spec : Prop :=
  ∀ n, P15407174071965936236.a n = A056114 n

end A056114

/-! ## A056114.P12226109980425065599

`(n+1)*A115205(n+9)-(n+1)`
-/

namespace A056114.P12226109980425065599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A115205 (n + 9) - (n + 1 : ℤ)

end

end A056114.P12226109980425065599

namespace A056114

/-- `(n+1)*A115205(n+9)-(n+1)` -/
def P12226109980425065599.Spec : Prop :=
  ∀ n, P12226109980425065599.a n = A056114 n

end A056114

/-!
# A056115: a(n) = n*(n+11)/2.

The programs for A056115, the canonical program `A056115.P5397656818703738625` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056115 has offset 0).

The definition of A056115 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+11)/2` (program `A056115.P5001273323121293425`, by `A056115.P5001273323121293425.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056115.P5001273323121293425

`n*(n+11)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056115.P5001273323121293425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 11) : ℚ) / 2

end

end A056115.P5001273323121293425

namespace A056115

/-- `n*(n+11)/2` -/
def P5001273323121293425.Spec : Prop :=
  ∀ n, P5001273323121293425.a n = (A056115 n : ℚ)

theorem P5001273323121293425.correct : P5001273323121293425.Spec := by
  intro n
  induction n with
  | zero => simp [A056115, A056115.P5001273323121293425.a, A056115.P5397656818703738625.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A056115, Nat.add_sub_cancel, A056115.P5001273323121293425.a, A056115.P5397656818703738625.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A056115

/-! ## A056115.P5397656818703738625

`a(n-1)+n+5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056115

/-- `a(n-1)+n+5` -/
def P5397656818703738625.Spec : Prop :=
  ∀ n, (P5397656818703738625.a n : ℤ) = A056115 n

theorem P5397656818703738625.correct : P5397656818703738625.Spec := by
  intro n
  simp only [A056115]

end A056115

/-! ## A056115.P17187546889303652500

`A056000(n)+n`
-/

namespace A056115.P17187546889303652500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + (n : ℤ)

end

end A056115.P17187546889303652500

namespace A056115

/-- `A056000(n)+n` -/
def P17187546889303652500.Spec : Prop :=
  ∀ n, P17187546889303652500.a n = A056115 n

end A056115

/-! ## A056115.P1935722308573746523

`A056119(n)-n`
-/

namespace A056115.P1935722308573746523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n - (n : ℤ)

end

end A056115.P1935722308573746523

namespace A056115

/-- `A056119(n)-n` -/
def P1935722308573746523.Spec : Prop :=
  ∀ n, P1935722308573746523.a n = A056115 n

end A056115

/-! ## A056115.P10134865482194188159

`A000096(n)+4*n`
-/

namespace A056115.P10134865482194188159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (4 * n : ℤ)

end

end A056115.P10134865482194188159

namespace A056115

/-- `A000096(n)+4*n` -/
def P10134865482194188159.Spec : Prop :=
  ∀ n, P10134865482194188159.a n = A056115 n

end A056115

/-! ## A056115.P16873653133470907126

`C(n, 2)+6*n`
-/

namespace A056115.P16873653133470907126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 6 * n

end

end A056115.P16873653133470907126

namespace A056115

/-- `C(n, 2)+6*n` -/
def P16873653133470907126.Spec : Prop :=
  ∀ n, (P16873653133470907126.a n : ℤ) = A056115 n

end A056115

/-! ## A056115.P11632710804592205120

`record[(n-11)*n/2]`
-/

namespace A056115.P11632710804592205120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 11 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056115.P11632710804592205120

namespace A056115

/-- `record[(n-11)*n/2]` -/
def P11632710804592205120.Spec : Prop :=
  ∀ n, P11632710804592205120.a n = (A056115 n : ℚ)

end A056115

/-! ## A056115.P10889654590792568923

`∑[ogf((6x-5x^2)/(1-2x+x^2))]`
-/

namespace A056115.P10889654590792568923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056115.P10889654590792568923

namespace A056115

/-- `∑[ogf((6x-5x^2)/(1-2x+x^2))]` -/
def P10889654590792568923.Spec : Prop :=
  ∀ n, P10889654590792568923.a n = A056115 n

end A056115

/-! ## A056115.P16776700178351420046

`ogf((6x-5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A056115.P16776700178351420046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -5] [1, -3, 3, -1] n

end

end A056115.P16776700178351420046

namespace A056115

/-- `ogf((6x-5x^2)/(1-3x+3x^2-x^3))` -/
def P16776700178351420046.Spec : Prop :=
  ∀ n, P16776700178351420046.a n = A056115 n

end A056115

/-! ## A056115.P16885601382163445757

`∑[5*n²%(n+1)+n]`
-/

namespace A056115.P16885601382163445757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n ^ 2 % (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056115.P16885601382163445757

namespace A056115

/-- `∑[5*n²%(n+1)+n]` -/
def P16885601382163445757.Spec : Prop :=
  ∀ n, (P16885601382163445757.a n : ℤ) = A056115 n

end A056115

/-! ## A056115.P15515794446972720912

`∑[6-(5-a(n-1))%n]` with `a(0)=0`
-/

namespace A056115.P15515794446972720912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  6 - Int.tmod (5 - f1 (n - 1)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056115.P15515794446972720912

namespace A056115

/-- `∑[6-(5-a(n-1))%n]` -/
def P15515794446972720912.Spec : Prop :=
  ∀ n, P15515794446972720912.a n = A056115 n

end A056115

/-! ## A056115.P6644577531512865186

`∑[(n+5)*(n+2)%(n+1)]`
-/

namespace A056115.P6644577531512865186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 5) * ((n + 2) % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056115.P6644577531512865186

namespace A056115

/-- `∑[(n+5)*(n+2)%(n+1)]` -/
def P6644577531512865186.Spec : Prop :=
  ∀ n, (P6644577531512865186.a n : ℤ) = A056115 n

end A056115

/-! ## A056115.P110812797222035832

`floor(5*n-∑[a(n-1)-1])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A056115.P110812797222035832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056115.P110812797222035832

namespace A056115

/-- `floor(5*n-∑[a(n-1)-1])` -/
def P110812797222035832.Spec : Prop :=
  ∀ n, P110812797222035832.a n = A056115 n

end A056115

/-! ## A056115.P16591005410533181672

`∑[2*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=6, a(2)=7`
-/

namespace A056115.P16591005410533181672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 7] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056115.P16591005410533181672

namespace A056115

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P16591005410533181672.Spec : Prop :=
  ∀ n, P16591005410533181672.a n = A056115 n

end A056115

/-! ## A056115.P6737587433178147325

`∑[floor(a(n-1)²/a(n-2))]` with `a(0)=0, a(1)=6, a(2)=7`
-/

namespace A056115.P6737587433178147325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 7] fun n f1 =>
  ⌊(f1 (n - 1) ^ 2 : ℚ) / (f1 (n - 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056115.P6737587433178147325

namespace A056115

/-- `∑[floor(a(n-1)²/a(n-2))]` -/
def P6737587433178147325.Spec : Prop :=
  ∀ n, P6737587433178147325.a n = A056115 n

end A056115

/-! ## A056115.P6181424559620838009

`∑[5-(a(n-1)-floor(a(n-1))-n)]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A056115.P6181424559620838009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  5 - (f1 (n - 1) - f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056115.P6181424559620838009

namespace A056115

/-- `∑[5-(a(n-1)-floor(a(n-1))-n)]` -/
def P6181424559620838009.Spec : Prop :=
  ∀ n, P6181424559620838009.a n = A056115 n

end A056115

/-! ## A056115.P15028925119075920874

`∑[a(n-1)-(a(n-2)-a(n-1))]` with `a(0)=0, a(1)=6, a(2)=7`
-/

namespace A056115.P15028925119075920874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 7] fun n f1 =>
  f1 (n - 1) - (f1 (n - 2) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056115.P15028925119075920874

namespace A056115

/-- `∑[a(n-1)-(a(n-2)-a(n-1))]` -/
def P15028925119075920874.Spec : Prop :=
  ∀ n, P15028925119075920874.a n = A056115 n

end A056115

/-! ## A056115.P18331883647814365082

`3*n+A055998(n)`
-/

namespace A056115.P18331883647814365082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A055998 n

end

end A056115.P18331883647814365082

namespace A056115

/-- `3*n+A055998(n)` -/
def P18331883647814365082.Spec : Prop :=
  ∀ n, P18331883647814365082.a n = A056115 n

end A056115

/-! ## A056115.P12735034161631517055

`5*n+A000217(n)`
-/

namespace A056115.P12735034161631517055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) + A000217 n

end

end A056115.P12735034161631517055

namespace A056115

/-- `5*n+A000217(n)` -/
def P12735034161631517055.Spec : Prop :=
  ∀ n, P12735034161631517055.a n = A056115 n

end A056115

/-!
# A056116: a(n) = 121*12^(n-2), a(0)=1, a(1)=10.

The programs for A056116, the canonical program `A056116.P6050196838616885994` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056116 has offset 0).

The definition of A056116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056116.P6050196838616885994

`12*a(n-1)` with `a(0)=1, a(1)=10, a(2)=121`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056116

/-- `12*a(n-1)` -/
def P6050196838616885994.Spec : Prop :=
  ∀ n, (P6050196838616885994.a n : ℤ) = A056116 n

theorem P6050196838616885994.correct : P6050196838616885994.Spec := by
  intro n
  simp only [A056116]

end A056116

/-! ## A056116.P12796944248764054703

`Δ[Δ[round(12^(n-2))]]`
-/

namespace A056116.P12796944248764054703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((12 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056116.P12796944248764054703

namespace A056116

/-- `Δ[Δ[round(12^(n-2))]]` -/
def P12796944248764054703.Spec : Prop :=
  ∀ n, P12796944248764054703.a n = A056116 n

end A056116

/-! ## A056116.P737329396400785533

`round(Δ[A196731(n)/12])`
-/

namespace A056116.P737329396400785533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196731 n : ℚ) / 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A056116.P737329396400785533

namespace A056116

/-- `round(Δ[A196731(n)/12])` -/
def P737329396400785533.Spec : Prop :=
  ∀ n, P737329396400785533.a n = A056116 n

end A056116

/-!
# A056117: Expansion of (1+8*x)/(1-x)^9.

The programs for A056117, the canonical program `A056117.P12826868979111182447` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056117 has offset 0).

The definition of A056117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056117.P4772920075202707553

`(9*n+8)*C(n+7, 7)/8`
-/

namespace A056117.P4772920075202707553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * n + 8) * Nat.choose (n + 7) 7 : ℚ) / 8

end

end A056117.P4772920075202707553

namespace A056117

/-- `(9*n+8)*C(n+7, 7)/8` -/
def P4772920075202707553.Spec : Prop :=
  ∀ n, P4772920075202707553.a n = (A056117 n : ℚ)

end A056117

/-! ## A056117.P12826868979111182447

`9*C(n+8, 8)-8*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056117

/-- `9*C(n+8, 8)-8*C(n+7, 7)` -/
def P12826868979111182447.Spec : Prop :=
  ∀ n, P12826868979111182447.a n = A056117 n

theorem P12826868979111182447.correct : P12826868979111182447.Spec := by
  intro n
  simp only [A056117]

end A056117

/-! ## A056117.P719940650826637239

`Δ[n*C(n+7, 8)]`
-/

namespace A056117.P719940650826637239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 7) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A056117.P719940650826637239

namespace A056117

/-- `Δ[n*C(n+7, 8)]` -/
def P719940650826637239.Spec : Prop :=
  ∀ n, P719940650826637239.a n = A056117 n

end A056117

/-! ## A056117.P584397561982447006

`∑[∑[∑[∑[∑[(3*n+1)*∑[n+1]]]]]]`
-/

namespace A056117.P584397561982447006
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) * (∑ j ∈ Finset.range (n + 1), f6 j)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056117.P584397561982447006

namespace A056117

/-- `∑[∑[∑[∑[∑[(3*n+1)*∑[n+1]]]]]]` -/
def P584397561982447006.Spec : Prop :=
  ∀ n, (P584397561982447006.a n : ℤ) = A056117 n

end A056117

/-! ## A056117.P14586208578978938894

`2*∑[A052206(n)/2]`
-/

namespace A056117.P14586208578978938894
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052206 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056117.P14586208578978938894

namespace A056117

/-- `2*∑[A052206(n)/2]` -/
def P14586208578978938894.Spec : Prop :=
  ∀ n, P14586208578978938894.a n = (A056117 n : ℚ)

end A056117

/-! ## A056117.P15515074832050510694

`A000581(n+8)+n*A000580(n+7)`
-/

namespace A056117.P15515074832050510694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) + (n : ℤ) * A000580 (n + 7)

end

end A056117.P15515074832050510694

namespace A056117

/-- `A000581(n+8)+n*A000580(n+7)` -/
def P15515074832050510694.Spec : Prop :=
  ∀ n, P15515074832050510694.a n = A056117 n

end A056117

/-! ## A056117.P7550618816013708470

`A056001(n)+A056001(n)-A034266(n+1)`
-/

namespace A056117.P7550618816013708470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056001 n + (A056001 n - A034266 (n + 1))

end

end A056117.P7550618816013708470

namespace A056117

/-- `A056001(n)+A056001(n)-A034266(n+1)` -/
def P7550618816013708470.Spec : Prop :=
  ∀ n, P7550618816013708470.a n = A056117 n

end A056117

/-! ## A056117.P11035405491257368191

`A056003(n+1)-(A056003(n)+A052206(n+1))`
-/

namespace A056117.P11035405491257368191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056003 (n + 1) - (A056003 n + A052206 (n + 1))

end

end A056117.P11035405491257368191

namespace A056117

/-- `A056003(n+1)-(A056003(n)+A052206(n+1))` -/
def P11035405491257368191.Spec : Prop :=
  ∀ n, P11035405491257368191.a n = A056117 n

end A056117

/-! ## A056117.P3462844756174116040

`Δ[n*Δ[A115205(n+7)]]`
-/

namespace A056117.P3462844756174116040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115205 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056117.P3462844756174116040

namespace A056117

/-- `Δ[n*Δ[A115205(n+7)]]` -/
def P3462844756174116040.Spec : Prop :=
  ∀ n, P3462844756174116040.a n = A056117 n

end A056117

/-!
# A056118: a(n) = (11*n+5)*(n+4)*(n+3)*(n+2)*(n+1)/120.

The programs for A056118, the canonical program `A056118.P6591570600101730027` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056118 has offset 0).

The definition of A056118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056118.P3200626141935394957

`(11*n+5)*C(n+4, 4)/5`
-/

namespace A056118.P3200626141935394957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * n + 5) * Nat.choose (n + 4) 4 : ℚ) / 5

end

end A056118.P3200626141935394957

namespace A056118

/-- `(11*n+5)*C(n+4, 4)/5` -/
def P3200626141935394957.Spec : Prop :=
  ∀ n, P3200626141935394957.a n = (A056118 n : ℚ)

end A056118

/-! ## A056118.P6591570600101730027

`11*C(n+5, 5)-10*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056118

/-- `11*C(n+5, 5)-10*C(n+4, 4)` -/
def P6591570600101730027.Spec : Prop :=
  ∀ n, P6591570600101730027.a n = A056118 n

theorem P6591570600101730027.correct : P6591570600101730027.Spec := by
  intro n
  simp only [A056118]

end A056118

/-! ## A056118.P16761145089469366608

`(11*n+5)*(n+4)*(n+3)*(n+2)*(n+1)/120`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056118.P16761145089469366608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * n + 5) * (n + 4) * (n + 3) * (n + 2) * (n + 1) : ℚ) / 120

end

end A056118.P16761145089469366608

namespace A056118

/-- `(11*n+5)*(n+4)*(n+3)*(n+2)*(n+1)/120` -/
def P16761145089469366608.Spec : Prop :=
  ∀ n, P16761145089469366608.a n = (A056118 n : ℚ)

end A056118

/-! ## A056118.P5688689291194723617

`∑[A055268(n)]`
-/

namespace A056118.P5688689291194723617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056118.P5688689291194723617

namespace A056118

/-- `∑[A055268(n)]` -/
def P5688689291194723617.Spec : Prop :=
  ∀ n, P5688689291194723617.a n = A056118 n

end A056118

/-! ## A056118.P17824873187475605899

`A114241(n)+A033488(n)`
-/

namespace A056118.P17824873187475605899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114241 n + A033488 n

end

end A056118.P17824873187475605899

namespace A056118

/-- `A114241(n)+A033488(n)` -/
def P17824873187475605899.Spec : Prop :=
  ∀ n, P17824873187475605899.a n = A056118 n

end A056118

/-! ## A056118.P4248074521459817556

`A086755(n)-A027660(n)`
-/

namespace A056118.P4248074521459817556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086755 n - A027660 n

end

end A056118.P4248074521459817556

namespace A056118

/-- `A086755(n)-A027660(n)` -/
def P4248074521459817556.Spec : Prop :=
  ∀ n, P4248074521459817556.a n = A056118 n

end A056118

/-! ## A056118.P3919391917778149012

`A277935(n+1)+A051879(n)`
-/

namespace A056118.P3919391917778149012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1) + A051879 n

end

end A056118.P3919391917778149012

namespace A056118

/-- `A277935(n+1)+A051879(n)` -/
def P3919391917778149012.Spec : Prop :=
  ∀ n, P3919391917778149012.a n = A056118 n

end A056118

/-! ## A056118.P10096074082458829434

`2*A051878(n)-A027800(n)`
-/

namespace A056118.P10096074082458829434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051878 n - A027800 n

end

end A056118.P10096074082458829434

namespace A056118

/-- `2*A051878(n)-A027800(n)` -/
def P10096074082458829434.Spec : Prop :=
  ∀ n, P10096074082458829434.a n = A056118 n

end A056118

/-! ## A056118.P8797931342024828876

`2*A051879(n)-A051877(n)`
-/

namespace A056118.P8797931342024828876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051879 n - A051877 n

end

end A056118.P8797931342024828876

namespace A056118

/-- `2*A051879(n)-A051877(n)` -/
def P8797931342024828876.Spec : Prop :=
  ∀ n, P8797931342024828876.a n = A056118 n

end A056118

/-! ## A056118.P7149902619676528416

`2*A051880(n)-A051879(n)`
-/

namespace A056118.P7149902619676528416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051880 n - A051879 n

end

end A056118.P7149902619676528416

namespace A056118

/-- `2*A051880(n)-A051879(n)` -/
def P7149902619676528416.Spec : Prop :=
  ∀ n, P7149902619676528416.a n = A056118 n

end A056118

/-! ## A056118.P14617611013776640446

`A051877(n)+2*A277935(n+1)`
-/

namespace A056118.P14617611013776640446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051877 n + 2 * A277935 (n + 1)

end

end A056118.P14617611013776640446

namespace A056118

/-- `A051877(n)+2*A277935(n+1)` -/
def P14617611013776640446.Spec : Prop :=
  ∀ n, P14617611013776640446.a n = A056118 n

end A056118

/-! ## A056118.P2976056625200929627

`A051880(n)+A277935(n+1)/2`
-/

namespace A056118.P2976056625200929627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051880 n : ℚ) + (A277935 (n + 1) : ℚ) / 2

end

end A056118.P2976056625200929627

namespace A056118

/-- `A051880(n)+A277935(n+1)/2` -/
def P2976056625200929627.Spec : Prop :=
  ∀ n, P2976056625200929627.a n = (A056118 n : ℚ)

end A056118

/-! ## A056118.P3879518637812406203

`A271567(n)-A277935(n+1)/2`
-/

namespace A056118.P3879518637812406203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271567 n : ℚ) - (A277935 (n + 1) : ℚ) / 2

end

end A056118.P3879518637812406203

namespace A056118

/-- `A271567(n)-A277935(n+1)/2` -/
def P3879518637812406203.Spec : Prop :=
  ∀ n, P3879518637812406203.a n = (A056118 n : ℚ)

end A056118

/-! ## A056118.P11424603277500059923

`A114241(n)+n*A000292(n+1)`
-/

namespace A056118.P11424603277500059923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114241 n + (n : ℤ) * A000292 (n + 1)

end

end A056118.P11424603277500059923

namespace A056118

/-- `A114241(n)+n*A000292(n+1)` -/
def P11424603277500059923.Spec : Prop :=
  ∀ n, P11424603277500059923.a n = A056118 n

end A056118

/-! ## A056118.P3847966661450548140

`A266732(n)+∑[∑[A000292(n+1)]]`
-/

namespace A056118.P3847966661450548140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266732 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056118.P3847966661450548140

namespace A056118

/-- `A266732(n)+∑[∑[A000292(n+1)]]` -/
def P3847966661450548140.Spec : Prop :=
  ∀ n, P3847966661450548140.a n = A056118 n

end A056118

/-! ## A056118.P5737745663461680524

`A027800(n)+A051880(n)-A034263(n)`
-/

namespace A056118.P5737745663461680524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n + (A051880 n - A034263 n)

end

end A056118.P5737745663461680524

namespace A056118

/-- `A027800(n)+A051880(n)-A034263(n)` -/
def P5737745663461680524.Spec : Prop :=
  ∀ n, P5737745663461680524.a n = A056118 n

end A056118

/-! ## A056118.P6428189386223459470

`A034263(n)+A271567(n)-A027800(n)`
-/

namespace A056118.P6428189386223459470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + (A271567 n - A027800 n)

end

end A056118.P6428189386223459470

namespace A056118

/-- `A034263(n)+A271567(n)-A027800(n)` -/
def P6428189386223459470.Spec : Prop :=
  ∀ n, P6428189386223459470.a n = A056118 n

end A056118

/-! ## A056118.P15410485850904159707

`A027800(n)+A051878(n)-A005585(n+1)`
-/

namespace A056118.P15410485850904159707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n + (A051878 n - A005585 (n + 1))

end

end A056118.P15410485850904159707

namespace A056118

/-- `A027800(n)+A051878(n)-A005585(n+1)` -/
def P15410485850904159707.Spec : Prop :=
  ∀ n, P15410485850904159707.a n = A056118 n

end A056118

/-! ## A056118.P8266667797226652429

`A051843(n+1)+A051880(n)-A027800(n)`
-/

namespace A056118.P8266667797226652429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051843 (n + 1) + (A051880 n - A027800 n)

end

end A056118.P8266667797226652429

namespace A056118

/-- `A051843(n+1)+A051880(n)-A027800(n)` -/
def P8266667797226652429.Spec : Prop :=
  ∀ n, P8266667797226652429.a n = A056118 n

end A056118

/-!
# A056119: a(n) = n*(n+13)/2.

The programs for A056119, the canonical program `A056119.P5102318218274202597` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056119 has offset 0).

The definition of A056119 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+13)/2` (program `A056119.P3169539443542260797`, by `A056119.P3169539443542260797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056119.P3169539443542260797

`n*(n+13)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056119.P3169539443542260797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 13) : ℚ) / 2

end

end A056119.P3169539443542260797

namespace A056119

/-- `n*(n+13)/2` -/
def P3169539443542260797.Spec : Prop :=
  ∀ n, P3169539443542260797.a n = (A056119 n : ℚ)

theorem P3169539443542260797.correct : P3169539443542260797.Spec := by
  intro n
  induction n with
  | zero => simp [A056119, A056119.P3169539443542260797.a, A056119.P5102318218274202597.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A056119, Nat.add_sub_cancel, A056119.P3169539443542260797.a, A056119.P5102318218274202597.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A056119

/-! ## A056119.P5102318218274202597

`n+a(n-1)+6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056119

/-- `n+a(n-1)+6` -/
def P5102318218274202597.Spec : Prop :=
  ∀ n, (P5102318218274202597.a n : ℤ) = A056119 n

theorem P5102318218274202597.correct : P5102318218274202597.Spec := by
  intro n
  simp only [A056119]

end A056119

/-! ## A056119.P17358647181536835824

`A056115(n)+n`
-/

namespace A056119.P17358647181536835824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + (n : ℤ)

end

end A056119.P17358647181536835824

namespace A056119

/-- `A056115(n)+n` -/
def P17358647181536835824.Spec : Prop :=
  ∀ n, P17358647181536835824.a n = A056119 n

end A056119

/-! ## A056119.P10541541204297172181

`A056121(n)-n`
-/

namespace A056119.P10541541204297172181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056121 n - (n : ℤ)

end

end A056119.P10541541204297172181

namespace A056119

/-- `A056121(n)-n` -/
def P10541541204297172181.Spec : Prop :=
  ∀ n, P10541541204297172181.a n = A056119 n

end A056119

/-! ## A056119.P4336613242454093407

`A000096(n)+5*n`
-/

namespace A056119.P4336613242454093407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (5 * n : ℤ)

end

end A056119.P4336613242454093407

namespace A056119

/-- `A000096(n)+5*n` -/
def P4336613242454093407.Spec : Prop :=
  ∀ n, P4336613242454093407.a n = A056119 n

end A056119

/-! ## A056119.P5915905421292027526

`C(n, 2)+7*n`
-/

namespace A056119.P5915905421292027526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 7 * n

end

end A056119.P5915905421292027526

namespace A056119

/-- `C(n, 2)+7*n` -/
def P5915905421292027526.Spec : Prop :=
  ∀ n, (P5915905421292027526.a n : ℤ) = A056119 n

end A056119

/-! ## A056119.P5512045932315259115

`record[C(n, 2)-6*n]`
-/

namespace A056119.P5512045932315259115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (6 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056119.P5512045932315259115

namespace A056119

/-- `record[C(n, 2)-6*n]` -/
def P5512045932315259115.Spec : Prop :=
  ∀ n, P5512045932315259115.a n = A056119 n

end A056119

/-! ## A056119.P6476514962866019777

`∑[ogf((7x-6x^2)/(1-2x+x^2))]`
-/

namespace A056119.P6476514962866019777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056119.P6476514962866019777

namespace A056119

/-- `∑[ogf((7x-6x^2)/(1-2x+x^2))]` -/
def P6476514962866019777.Spec : Prop :=
  ∀ n, P6476514962866019777.a n = A056119 n

end A056119

/-! ## A056119.P12382662555477920117

`ogf((7x-6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A056119.P12382662555477920117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -6] [1, -3, 3, -1] n

end

end A056119.P12382662555477920117

namespace A056119

/-- `ogf((7x-6x^2)/(1-3x+3x^2-x^3))` -/
def P12382662555477920117.Spec : Prop :=
  ∀ n, P12382662555477920117.a n = A056119 n

end A056119

/-! ## A056119.P3551997008622620547

`record[a(n-1)-(7-n)]` with `a(0)=0`
-/

namespace A056119.P3551997008622620547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (7 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056119.P3551997008622620547

namespace A056119

/-- `record[a(n-1)-(7-n)]` -/
def P3551997008622620547.Spec : Prop :=
  ∀ n, P3551997008622620547.a n = A056119 n

end A056119

/-! ## A056119.P13552122994243002314

`∑[(n+6)*n²%(n+1)]`
-/

namespace A056119.P13552122994243002314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 6) * (n ^ 2 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056119.P13552122994243002314

namespace A056119

/-- `∑[(n+6)*n²%(n+1)]` -/
def P13552122994243002314.Spec : Prop :=
  ∀ n, (P13552122994243002314.a n : ℤ) = A056119 n

end A056119

/-! ## A056119.P3953885081292260956

`∑[7-(6-a(n-1))%n]` with `a(0)=0`
-/

namespace A056119.P3953885081292260956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  7 - Int.tmod (6 - f1 (n - 1)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056119.P3953885081292260956

namespace A056119

/-- `∑[7-(6-a(n-1))%n]` -/
def P3953885081292260956.Spec : Prop :=
  ∀ n, P3953885081292260956.a n = A056119 n

end A056119

/-! ## A056119.P13174860500560282584

`∑[2*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=7, a(2)=8`
-/

namespace A056119.P13174860500560282584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 8] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056119.P13174860500560282584

namespace A056119

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P13174860500560282584.Spec : Prop :=
  ∀ n, P13174860500560282584.a n = A056119 n

end A056119

/-! ## A056119.P16402945204830970637

`∑[floor(a(n-1)²/a(n-2))]` with `a(0)=0, a(1)=7, a(2)=8`
-/

namespace A056119.P16402945204830970637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 8] fun n f1 =>
  ⌊(f1 (n - 1) ^ 2 : ℚ) / (f1 (n - 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056119.P16402945204830970637

namespace A056119

/-- `∑[floor(a(n-1)²/a(n-2))]` -/
def P16402945204830970637.Spec : Prop :=
  ∀ n, P16402945204830970637.a n = A056119 n

end A056119

/-! ## A056119.P8637549376974480320

`∑[a(n-1)-(a(n-2)-a(n-1))]` with `a(0)=0, a(1)=7, a(2)=8`
-/

namespace A056119.P8637549376974480320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 8] fun n f1 =>
  f1 (n - 1) - (f1 (n - 2) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056119.P8637549376974480320

namespace A056119

/-- `∑[a(n-1)-(a(n-2)-a(n-1))]` -/
def P8637549376974480320.Spec : Prop :=
  ∀ n, P8637549376974480320.a n = A056119 n

end A056119

/-! ## A056119.P13215590156170242906

`A302537(n)-1`
-/

namespace A056119.P13215590156170242906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302537 n - 1

end

end A056119.P13215590156170242906

namespace A056119

/-- `A302537(n)-1` -/
def P13215590156170242906.Spec : Prop :=
  ∀ n, P13215590156170242906.a n = A056119 n

end A056119

/-! ## A056119.P2733602753830341492

`A056000(n)+2*n`
-/

namespace A056119.P2733602753830341492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + (2 * n : ℤ)

end

end A056119.P2733602753830341492

namespace A056119

/-- `A056000(n)+2*n` -/
def P2733602753830341492.Spec : Prop :=
  ∀ n, P2733602753830341492.a n = A056119 n

end A056119

/-! ## A056119.P1246600303111866639

`A055999(n)+3*n`
-/

namespace A056119.P1246600303111866639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n + (3 * n : ℤ)

end

end A056119.P1246600303111866639

namespace A056119

/-- `A055999(n)+3*n` -/
def P1246600303111866639.Spec : Prop :=
  ∀ n, P1246600303111866639.a n = A056119 n

end A056119

/-! ## A056119.P18072061800551926959

`6*n+A000217(n)`
-/

namespace A056119.P18072061800551926959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + A000217 n

end

end A056119.P18072061800551926959

namespace A056119

/-- `6*n+A000217(n)` -/
def P18072061800551926959.Spec : Prop :=
  ∀ n, P18072061800551926959.a n = A056119 n

end A056119

/-!
# A056120: a(n) = (3^3)*4^(n-3) with a(0)=1, a(1)=1 and a(2)=7.

The programs for A056120, the canonical program `A056120.P13204565458633931208` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056120 has offset 0).

The definition of A056120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056120.P13204565458633931208

`4*a(n-1)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=27`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056120

/-- `4*a(n-1)` -/
def P13204565458633931208.Spec : Prop :=
  ∀ n, (P13204565458633931208.a n : ℤ) = A056120 n

theorem P13204565458633931208.correct : P13204565458633931208.Spec := by
  intro n
  simp only [A056120]

end A056120

/-! ## A056120.P18414966169579383972

`ogf((1-3x+3x^2-x^3)/(1-4x))`
-/

namespace A056120.P18414966169579383972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -1] [1, -4] n

end

end A056120.P18414966169579383972

namespace A056120

/-- `ogf((1-3x+3x^2-x^3)/(1-4x))` -/
def P18414966169579383972.Spec : Prop :=
  ∀ n, P18414966169579383972.a n = A056120 n

end A056120

/-! ## A056120.P4424123733997909768

`Δ[round(9*4^(n-3))]`
-/

namespace A056120.P4424123733997909768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (9 * (4 : ℚ) ^ ((n : ℤ) - 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056120.P4424123733997909768

namespace A056120

/-- `Δ[round(9*4^(n-3))]` -/
def P4424123733997909768.Spec : Prop :=
  ∀ n, P4424123733997909768.a n = A056120 n

end A056120

/-! ## A056120.P9891527647193443738

`∑[A118265(n)]`
-/

namespace A056120.P9891527647193443738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056120.P9891527647193443738

namespace A056120

/-- `∑[A118265(n)]` -/
def P9891527647193443738.Spec : Prop :=
  ∀ n, P9891527647193443738.a n = A056120 n

end A056120

/-! ## A056120.P11698245761669430103

`A208428(A028310(n))/2`
-/

namespace A056120.P11698245761669430103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208428 (A028310 n).toNat : ℚ) / 2

end

end A056120.P11698245761669430103

namespace A056120

/-- `A208428(A028310(n))/2` -/
def P11698245761669430103.Spec : Prop :=
  ∀ n, P11698245761669430103.a n = (A056120 n : ℚ)

end A056120

/-! ## A056120.P4114722229584979099

`A208428(A065033(2*n))/2`
-/

namespace A056120.P4114722229584979099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208428 (A065033 (2 * n)).toNat : ℚ) / 2

end

end A056120.P4114722229584979099

namespace A056120

/-- `A208428(A065033(2*n))/2` -/
def P4114722229584979099.Spec : Prop :=
  ∀ n, P4114722229584979099.a n = (A056120 n : ℚ)

end A056120

/-!
# A056121: a(n) = n*(n + 15)/2.

The programs for A056121, the canonical program `A056121.P17969616283392132768` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056121 has offset 0).

The definition of A056121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+15)/2` (program `A056121.P7507514123246565072`, by `A056121.P7507514123246565072.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056121.P7507514123246565072

`n*(n+15)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056121.P7507514123246565072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 15) : ℚ) / 2

end

end A056121.P7507514123246565072

namespace A056121

/-- `n*(n+15)/2` -/
def P7507514123246565072.Spec : Prop :=
  ∀ n, P7507514123246565072.a n = (A056121 n : ℚ)

theorem P7507514123246565072.correct : P7507514123246565072.Spec := by
  intro n
  induction n with
  | zero => simp [A056121, A056121.P7507514123246565072.a, A056121.P17969616283392132768.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A056121, Nat.add_sub_cancel, A056121.P7507514123246565072.a, A056121.P17969616283392132768.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A056121

/-! ## A056121.P17969616283392132768

`a(n-1)+n+7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056121

/-- `a(n-1)+n+7` -/
def P17969616283392132768.Spec : Prop :=
  ∀ n, (P17969616283392132768.a n : ℤ) = A056121 n

theorem P17969616283392132768.correct : P17969616283392132768.Spec := by
  intro n
  simp only [A056121]

end A056121

/-! ## A056121.P13416556606832188684

`A056119(n)+n`
-/

namespace A056121.P13416556606832188684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n + (n : ℤ)

end

end A056121.P13416556606832188684

namespace A056121

/-- `A056119(n)+n` -/
def P13416556606832188684.Spec : Prop :=
  ∀ n, P13416556606832188684.a n = A056121 n

end A056121

/-! ## A056121.P8866243966069624117

`A056126(n)-n`
-/

namespace A056121.P8866243966069624117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056126 n - (n : ℤ)

end

end A056121.P8866243966069624117

namespace A056121

/-- `A056126(n)-n` -/
def P8866243966069624117.Spec : Prop :=
  ∀ n, P8866243966069624117.a n = A056121 n

end A056121

/-! ## A056121.P14140798924218609104

`A000096(n)+6*n`
-/

namespace A056121.P14140798924218609104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (6 * n : ℤ)

end

end A056121.P14140798924218609104

namespace A056121

/-- `A000096(n)+6*n` -/
def P14140798924218609104.Spec : Prop :=
  ∀ n, P14140798924218609104.a n = A056121 n

end A056121

/-! ## A056121.P7307247969525015341

`C(n, 2)+8*n`
-/

namespace A056121.P7307247969525015341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 8 * n

end

end A056121.P7307247969525015341

namespace A056121

/-- `C(n, 2)+8*n` -/
def P7307247969525015341.Spec : Prop :=
  ∀ n, (P7307247969525015341.a n : ℤ) = A056121 n

end A056121

/-! ## A056121.P16963342304742405545

`record[C(n, 2)-7*n]`
-/

namespace A056121.P16963342304742405545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (7 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056121.P16963342304742405545

namespace A056121

/-- `record[C(n, 2)-7*n]` -/
def P16963342304742405545.Spec : Prop :=
  ∀ n, P16963342304742405545.a n = A056121 n

end A056121

/-! ## A056121.P10106333471046881932

`∑[ogf((8x-7x^2)/(1-2x+x^2))]`
-/

namespace A056121.P10106333471046881932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056121.P10106333471046881932

namespace A056121

/-- `∑[ogf((8x-7x^2)/(1-2x+x^2))]` -/
def P10106333471046881932.Spec : Prop :=
  ∀ n, P10106333471046881932.a n = A056121 n

end A056121

/-! ## A056121.P12648083168881380879

`ogf((8x-7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A056121.P12648083168881380879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -7] [1, -3, 3, -1] n

end

end A056121.P12648083168881380879

namespace A056121

/-- `ogf((8x-7x^2)/(1-3x+3x^2-x^3))` -/
def P12648083168881380879.Spec : Prop :=
  ∀ n, P12648083168881380879.a n = A056121 n

end A056121

/-! ## A056121.P2724920966067896535

`record[a(n-1)-(8-n)]` with `a(0)=0`
-/

namespace A056121.P2724920966067896535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (8 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056121.P2724920966067896535

namespace A056121

/-- `record[a(n-1)-(8-n)]` -/
def P2724920966067896535.Spec : Prop :=
  ∀ n, P2724920966067896535.a n = A056121 n

end A056121

/-! ## A056121.P9537186756767109452

`∑[(n+7)*n²%(n+1)]`
-/

namespace A056121.P9537186756767109452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 7) * (n ^ 2 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056121.P9537186756767109452

namespace A056121

/-- `∑[(n+7)*n²%(n+1)]` -/
def P9537186756767109452.Spec : Prop :=
  ∀ n, (P9537186756767109452.a n : ℤ) = A056121 n

end A056121

/-! ## A056121.P1766426280166615111

`∑[8-(7-a(n-1))%n]` with `a(0)=0`
-/

namespace A056121.P1766426280166615111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  8 - Int.tmod (7 - f1 (n - 1)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056121.P1766426280166615111

namespace A056121

/-- `∑[8-(7-a(n-1))%n]` -/
def P1766426280166615111.Spec : Prop :=
  ∀ n, P1766426280166615111.a n = A056121 n

end A056121

/-! ## A056121.P17875046328009359656

`n-(1-A302537(n))`
-/

namespace A056121.P17875046328009359656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - A302537 n)

end

end A056121.P17875046328009359656

namespace A056121

/-- `n-(1-A302537(n))` -/
def P17875046328009359656.Spec : Prop :=
  ∀ n, P17875046328009359656.a n = A056121 n

end A056121

/-! ## A056121.P15638060965566168765

`A056115(n)+2*n`
-/

namespace A056121.P15638060965566168765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + (2 * n : ℤ)

end

end A056121.P15638060965566168765

namespace A056121

/-- `A056115(n)+2*n` -/
def P15638060965566168765.Spec : Prop :=
  ∀ n, P15638060965566168765.a n = A056121 n

end A056121

/-! ## A056121.P9018618008756857069

`A056000(n)+3*n`
-/

namespace A056121.P9018618008756857069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + (3 * n : ℤ)

end

end A056121.P9018618008756857069

namespace A056121

/-- `A056000(n)+3*n` -/
def P9018618008756857069.Spec : Prop :=
  ∀ n, P9018618008756857069.a n = A056121 n

end A056121

/-! ## A056121.P7818765722345835391

`A132759(n)/2+n`
-/

namespace A056121.P7818765722345835391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132759 n : ℚ) / 2 + (n : ℚ)

end

end A056121.P7818765722345835391

namespace A056121

/-- `A132759(n)/2+n` -/
def P7818765722345835391.Spec : Prop :=
  ∀ n, P7818765722345835391.a n = (A056121 n : ℚ)

end A056121

/-! ## A056121.P4576734119086136946

`A055999(n)+4*n`
-/

namespace A056121.P4576734119086136946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n + (4 * n : ℤ)

end

end A056121.P4576734119086136946

namespace A056121

/-- `A055999(n)+4*n` -/
def P4576734119086136946.Spec : Prop :=
  ∀ n, P4576734119086136946.a n = A056121 n

end A056121

/-! ## A056121.P8891978345179919147

`7*n+A000217(n)`
-/

namespace A056121.P8891978345179919147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) + A000217 n

end

end A056121.P8891978345179919147

namespace A056121

/-- `7*n+A000217(n)` -/
def P8891978345179919147.Spec : Prop :=
  ∀ n, P8891978345179919147.a n = A056121 n

end A056121

/-!
# A056122: a(n) = (8*n+9)*C(n+8,8)/9.

The programs for A056122, the canonical program `A056122.P7683231518731794384` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056122 has offset 0).

The definition of A056122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056122.P7683231518731794384

`(8*n+9)*C(n+8, 8)/9`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056122

/-- `(8*n+9)*C(n+8, 8)/9` -/
def P7683231518731794384.Spec : Prop :=
  ∀ n, P7683231518731794384.a n = (A056122 n : ℚ)

end A056122

/-! ## A056122.P1856366376176986013

`∑[(n+1)*C(n+7, 7)]`
-/

namespace A056122.P1856366376176986013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 7) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056122.P1856366376176986013

namespace A056122

/-- `∑[(n+1)*C(n+7, 7)]` -/
def P1856366376176986013.Spec : Prop :=
  ∀ n, (P1856366376176986013.a n : ℤ) = A056122 n

end A056122

/-! ## A056122.P10950171498284540397

`∑[(n+1)*∑[∑[∑[∑[∑[∑[n+1]]]]]]]`
-/

namespace A056122.P10950171498284540397
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056122.P10950171498284540397

namespace A056122

/-- `∑[(n+1)*∑[∑[∑[∑[∑[∑[n+1]]]]]]]` -/
def P10950171498284540397.Spec : Prop :=
  ∀ n, (P10950171498284540397.a n : ℤ) = A056122 n

end A056122

/-! ## A056122.P7659916714612287858

`a(n-1)+(n+1)*C(n+7, 7)` with `a(0)=1`
-/

namespace A056122.P7659916714612287858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) * Nat.choose (n + 7) 7

end

end A056122.P7659916714612287858

namespace A056122

/-- `a(n-1)+(n+1)*C(n+7, 7)` -/
def P7659916714612287858.Spec : Prop :=
  ∀ n, (P7659916714612287858.a n : ℤ) = A056122 n

end A056122

/-! ## A056122.P2481864811504810782

`A056001(n)+a(n-1)` with `a(0)=1`
-/

namespace A056122.P2481864811504810782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056001 n + a (n - 1)

end

end A056122.P2481864811504810782

namespace A056122

/-- `A056001(n)+a(n-1)` -/
def P2481864811504810782.Spec : Prop :=
  ∀ n, P2481864811504810782.a n = A056122 n

end A056122

/-! ## A056122.P8866655891405782322

`a(n-1)+(n+1)*A000580(n+7)` with `a(0)=1`
-/

namespace A056122.P8866655891405782322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A000580 (n + 7)

end

end A056122.P8866655891405782322

namespace A056122

/-- `a(n-1)+(n+1)*A000580(n+7)` -/
def P8866655891405782322.Spec : Prop :=
  ∀ n, P8866655891405782322.a n = A056122 n

end A056122

/-! ## A056122.P18117458628167802427

`gcd(∑[A056001(n)], A000038(n))`
-/

namespace A056122.P18117458628167802427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A056122.P18117458628167802427

namespace A056122

/-- `gcd(∑[A056001(n)], A000038(n))` -/
def P18117458628167802427.Spec : Prop :=
  ∀ n, (P18117458628167802427.a n : ℤ) = A056122 n

end A056122

/-! ## A056122.P1902070607148869670

`or(∑[A056001(n)], A000007(n))`
-/

namespace A056122.P1902070607148869670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A056122.P1902070607148869670

namespace A056122

/-- `or(∑[A056001(n)], A000007(n))` -/
def P1902070607148869670.Spec : Prop :=
  ∀ n, P1902070607148869670.a n = A056122 n

end A056122

/-! ## A056122.P4289508488103781473

`2*A055848(n)-A055843(n)`
-/

namespace A056122.P4289508488103781473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055848 n - A055843 n

end

end A056122.P4289508488103781473

namespace A056122

/-- `2*A055848(n)-A055843(n)` -/
def P4289508488103781473.Spec : Prop :=
  ∀ n, P4289508488103781473.a n = A056122 n

end A056122

/-! ## A056122.P4836337306219613076

`(A056003(n)+A055994(n))/2`
-/

namespace A056122.P4836337306219613076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056003 n + A055994 n : ℚ) / 2

end

end A056122.P4836337306219613076

namespace A056122

/-- `(A056003(n)+A055994(n))/2` -/
def P4836337306219613076.Spec : Prop :=
  ∀ n, P4836337306219613076.a n = (A056122 n : ℚ)

end A056122

/-! ## A056122.P4005611684221566950

`-∑[A000580(n+7)*A001478(n+1)]`
-/

namespace A056122.P4005611684221566950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A001478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056122.P4005611684221566950

namespace A056122

/-- `-∑[A000580(n+7)*A001478(n+1)]` -/
def P4005611684221566950.Spec : Prop :=
  ∀ n, P4005611684221566950.a n = A056122 n

end A056122

/-! ## A056122.P8318687934585500703

`(n+2)*A000581(n+8)-A000582(n+9)`
-/

namespace A056122.P8318687934585500703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000581 (n + 8) - A000582 (n + 9)

end

end A056122.P8318687934585500703

namespace A056122

/-- `(n+2)*A000581(n+8)-A000582(n+9)` -/
def P8318687934585500703.Spec : Prop :=
  ∀ n, P8318687934585500703.a n = A056122 n

end A056122

/-! ## A056122.P14482210535001635783

`∑[A056001(n)]*A057427(n+1)`
-/

namespace A056122.P14482210535001635783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 (n + 1)

end

end A056122.P14482210535001635783

namespace A056122

/-- `∑[A056001(n)]*A057427(n+1)` -/
def P14482210535001635783.Spec : Prop :=
  ∀ n, P14482210535001635783.a n = A056122 n

end A056122

/-! ## A056122.P18395278388921006189

`∑[A056001(n)]*A000034(2*n)`
-/

namespace A056122.P18395278388921006189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000034 (2 * n)

end

end A056122.P18395278388921006189

namespace A056122

/-- `∑[A056001(n)]*A000034(2*n)` -/
def P18395278388921006189.Spec : Prop :=
  ∀ n, P18395278388921006189.a n = A056122 n

end A056122

/-! ## A056122.P2360103669365116953

`A187036(A016969(n))+∑[A056001(n)]`
-/

namespace A056122.P2360103669365116953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187036 (A016969 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056122.P2360103669365116953

namespace A056122

/-- `A187036(A016969(n))+∑[A056001(n)]` -/
def P2360103669365116953.Spec : Prop :=
  ∀ n, P2360103669365116953.a n = A056122 n

end A056122

/-! ## A056122.P14019882836956875950

`A093565(A161680(n+11)-(n+1))`
-/

namespace A056122.P14019882836956875950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093565 (A161680 (n + 11) - (n + 1 : ℤ)).toNat

end

end A056122.P14019882836956875950

namespace A056122

/-- `A093565(A161680(n+11)-(n+1))` -/
def P14019882836956875950.Spec : Prop :=
  ∀ n, P14019882836956875950.a n = A056122 n

end A056122

/-!
# A056123: a(n) = 3*a(n-1) - a(n-2) with a(0)=1, a(1)=11.

The programs for A056123, the canonical program `A056123.P331084418412359786` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056123 has offset 0).

The definition of A056123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)` (program `A056123.P331084418412359786`, by `A056123.P331084418412359786.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056123.P331084418412359786

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056123

/-- `3*a(n-1)-a(n-2)` -/
def P331084418412359786.Spec : Prop :=
  ∀ n, P331084418412359786.a n = A056123 n

theorem P331084418412359786.correct : P331084418412359786.Spec := by
  intro n
  simp only [A056123]

end A056123

/-! ## A056123.P959110438001410567

`A001906(n+1)+8*A001906(n)`
-/

namespace A056123.P959110438001410567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) + 8 * A001906 n

end

end A056123.P959110438001410567

namespace A056123

/-- `A001906(n+1)+8*A001906(n)` -/
def P959110438001410567.Spec : Prop :=
  ∀ n, P959110438001410567.a n = A056123 n

end A056123

/-! ## A056123.P9753389620735494111

`ogf((1+8x)/(1-3x+x^2))`
-/

namespace A056123.P9753389620735494111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8] [1, -3, 1] n

end

end A056123.P9753389620735494111

namespace A056123

/-- `ogf((1+8x)/(1-3x+x^2))` -/
def P9753389620735494111.Spec : Prop :=
  ∀ n, P9753389620735494111.a n = A056123 n

end A056123

/-! ## A056123.P5687903655591388378

`lcm(3, a(n-1))-a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A056123.P5687903655591388378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - a (n - 2)

end

end A056123.P5687903655591388378

namespace A056123

/-- `lcm(3, a(n-1))-a(n-2)` -/
def P5687903655591388378.Spec : Prop :=
  ∀ n, P5687903655591388378.a n = A056123 n

end A056123

/-! ## A056123.P7844230019962609549

`A022100(2*n)`
-/

namespace A056123.P7844230019962609549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 (2 * n)

end

end A056123.P7844230019962609549

namespace A056123

/-- `A022100(2*n)` -/
def P7844230019962609549.Spec : Prop :=
  ∀ n, P7844230019962609549.a n = A056123 n

end A056123

/-! ## A056123.P439443679912828421

`A172173(Δ[n²])`
-/

namespace A056123.P439443679912828421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172173 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A056123.P439443679912828421

namespace A056123

/-- `A172173(Δ[n²])` -/
def P439443679912828421.Spec : Prop :=
  ∀ n, P439443679912828421.a n = A056123 n

end A056123

/-! ## A056123.P13610220574717447698

`Δ[A172173(2*n)]`
-/

namespace A056123.P13610220574717447698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172173 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056123.P13610220574717447698

namespace A056123

/-- `Δ[A172173(2*n)]` -/
def P13610220574717447698.Spec : Prop :=
  ∀ n, P13610220574717447698.a n = A056123 n

end A056123

/-! ## A056123.P15808438218056063070

`A022314(2*n)+1`
-/

namespace A056123.P15808438218056063070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022314 (2 * n) + 1

end

end A056123.P15808438218056063070

namespace A056123

/-- `A022314(2*n)+1` -/
def P15808438218056063070.Spec : Prop :=
  ∀ n, P15808438218056063070.a n = A056123 n

end A056123

/-! ## A056123.P12104649517878687928

`A055850(n)+A001906(n)`
-/

namespace A056123.P12104649517878687928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055850 n + A001906 n

end

end A056123.P12104649517878687928

namespace A056123

/-- `A055850(n)+A001906(n)` -/
def P12104649517878687928.Spec : Prop :=
  ∀ n, P12104649517878687928.a n = A056123 n

end A056123

/-! ## A056123.P12353652460489886554

`A201157(n+1)+A054492(n)`
-/

namespace A056123.P12353652460489886554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1) + A054492 n

end

end A056123.P12353652460489886554

namespace A056123

/-- `A201157(n+1)+A054492(n)` -/
def P12353652460489886554.Spec : Prop :=
  ∀ n, P12353652460489886554.a n = A056123 n

end A056123

/-! ## A056123.P10731727171074011030

`A055850(n)+A000045(2*n)`
-/

namespace A056123.P10731727171074011030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055850 n + A000045 (2 * n)

end

end A056123.P10731727171074011030

namespace A056123

/-- `A055850(n)+A000045(2*n)` -/
def P10731727171074011030.Spec : Prop :=
  ∀ n, P10731727171074011030.a n = A056123 n

end A056123

/-! ## A056123.P11399186321369649836

`A055849(n)+2*A001906(n)`
-/

namespace A056123.P11399186321369649836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055849 n + 2 * A001906 n

end

end A056123.P11399186321369649836

namespace A056123

/-- `A055849(n)+2*A001906(n)` -/
def P11399186321369649836.Spec : Prop :=
  ∀ n, P11399186321369649836.a n = A056123 n

end A056123

/-! ## A056123.P3921915104614418221

`A055273(n)+A022086(2*n)`
-/

namespace A056123.P3921915104614418221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055273 n + A022086 (2 * n)

end

end A056123.P3921915104614418221

namespace A056123

/-- `A055273(n)+A022086(2*n)` -/
def P3921915104614418221.Spec : Prop :=
  ∀ n, P3921915104614418221.a n = A056123 n

end A056123

/-! ## A056123.P14513706723111711712

`A097136(n)+A022311(2*n)`
-/

namespace A056123.P14513706723111711712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097136 n + A022311 (2 * n)

end

end A056123.P14513706723111711712

namespace A056123

/-- `A097136(n)+A022311(2*n)` -/
def P14513706723111711712.Spec : Prop :=
  ∀ n, P14513706723111711712.a n = A056123 n

end A056123

/-! ## A056123.P13040260065719352809

`A153382(2*n)+A001519(n)`
-/

namespace A056123.P13040260065719352809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153382 (2 * n) + A001519 n

end

end A056123.P13040260065719352809

namespace A056123

/-- `A153382(2*n)+A001519(n)` -/
def P13040260065719352809.Spec : Prop :=
  ∀ n, P13040260065719352809.a n = A056123 n

end A056123

/-! ## A056123.P1457082900516231325

`2*A054492(n)-A001519(n)`
-/

namespace A056123.P1457082900516231325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054492 n - A001519 n

end

end A056123.P1457082900516231325

namespace A056123

/-- `2*A054492(n)-A001519(n)` -/
def P1457082900516231325.Spec : Prop :=
  ∀ n, P1457082900516231325.a n = A056123 n

end A056123

/-! ## A056123.P5373589830043263614

`A122012(2*n+1)+A055273(n)`
-/

namespace A056123.P5373589830043263614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122012 (2 * n + 1) + A055273 n

end

end A056123.P5373589830043263614

namespace A056123

/-- `A122012(2*n+1)+A055273(n)` -/
def P5373589830043263614.Spec : Prop :=
  ∀ n, P5373589830043263614.a n = A056123 n

end A056123

/-! ## A056123.P5840868216959076

`A001519(n)+2*A201157(n+1)`
-/

namespace A056123.P5840868216959076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + 2 * A201157 (n + 1)

end

end A056123.P5840868216959076

namespace A056123

/-- `A001519(n)+2*A201157(n+1)` -/
def P5840868216959076.Spec : Prop :=
  ∀ n, P5840868216959076.a n = A056123 n

end A056123

/-! ## A056123.P6429761230954315707

`A192908(n+1)+A022312(2*n)`
-/

namespace A056123.P6429761230954315707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192908 (n + 1) + A022312 (2 * n)

end

end A056123.P6429761230954315707

namespace A056123

/-- `A192908(n+1)+A022312(2*n)` -/
def P6429761230954315707.Spec : Prop :=
  ∀ n, P6429761230954315707.a n = A056123 n

end A056123

/-! ## A056123.P2800669494570464587

`A022099(2*n)+A000045(2*n)`
-/

namespace A056123.P2800669494570464587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 (2 * n) + A000045 (2 * n)

end

end A056123.P2800669494570464587

namespace A056123

/-- `A022099(2*n)+A000045(2*n)` -/
def P2800669494570464587.Spec : Prop :=
  ∀ n, P2800669494570464587.a n = A056123 n

end A056123

/-!
# A056124: a(n) = 3*a(n-1) - a(n-2) + 8 with a(0)=1, a(1)=11.

The programs for A056124, the canonical program `A056124.P1563632603468098815` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056124 has offset 0).

The definition of A056124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)+8` (program `A056124.P1563632603468098815`, by `A056124.P1563632603468098815.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056124.P1563632603468098815

`3*a(n-1)-a(n-2)+8` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056124

/-- `3*a(n-1)-a(n-2)+8` -/
def P1563632603468098815.Spec : Prop :=
  ∀ n, P1563632603468098815.a n = A056124 n

theorem P1563632603468098815.correct : P1563632603468098815.Spec := by
  intro n
  simp only [A056124]

end A056124

/-! ## A056124.P11203611678600186827

`∑[ogf((1+7x)/(1-3x+x^2))]`
-/

namespace A056124.P11203611678600186827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056124.P11203611678600186827

namespace A056124

/-- `∑[ogf((1+7x)/(1-3x+x^2))]` -/
def P11203611678600186827.Spec : Prop :=
  ∀ n, P11203611678600186827.a n = A056124 n

end A056124

/-! ## A056124.P14920148379385943214

`ogf((1+7x)/(1-4x+4x^2-x^3))`
-/

namespace A056124.P14920148379385943214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -4, 4, -1] n

end

end A056124.P14920148379385943214

namespace A056124

/-- `ogf((1+7x)/(1-4x+4x^2-x^3))` -/
def P14920148379385943214.Spec : Prop :=
  ∀ n, P14920148379385943214.a n = A056124 n

end A056124

/-! ## A056124.P9418150372581864097

`∑[3*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=10`
-/

namespace A056124.P9418150372581864097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056124.P9418150372581864097

namespace A056124

/-- `∑[3*a(n-1)-a(n-2)]` -/
def P9418150372581864097.Spec : Prop :=
  ∀ n, P9418150372581864097.a n = A056124 n

end A056124

/-! ## A056124.P16300000522587927575

`∑[lcm(3, a(n-1))-a(n-2)]` with `a(0)=1, a(1)=10`
-/

namespace A056124.P16300000522587927575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  (Int.lcm 3 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056124.P16300000522587927575

namespace A056124

/-- `∑[lcm(3, a(n-1))-a(n-2)]` -/
def P16300000522587927575.Spec : Prop :=
  ∀ n, P16300000522587927575.a n = A056124 n

end A056124

/-! ## A056124.P12606806358650638092

`∑[A055850(n)]`
-/

namespace A056124.P12606806358650638092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056124.P12606806358650638092

namespace A056124

/-- `∑[A055850(n)]` -/
def P12606806358650638092.Spec : Prop :=
  ∀ n, P12606806358650638092.a n = A056124 n

end A056124

/-! ## A056124.P12998681969113539223

`∑[A022099(2*n)]`
-/

namespace A056124.P12998681969113539223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056124.P12998681969113539223

namespace A056124

/-- `∑[A022099(2*n)]` -/
def P12998681969113539223.Spec : Prop :=
  ∀ n, P12998681969113539223.a n = A056124 n

end A056124

/-! ## A056124.P8462710459520361545

`A172172(2*n)+1`
-/

namespace A056124.P8462710459520361545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172172 (2 * n) + 1

end

end A056124.P8462710459520361545

namespace A056124

/-- `A172172(2*n)+1` -/
def P8462710459520361545.Spec : Prop :=
  ∀ n, P8462710459520361545.a n = A056124 n

end A056124

/-! ## A056124.P14392216627242202078

`∑[A022313(2*n)+1]`
-/

namespace A056124.P14392216627242202078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056124.P14392216627242202078

namespace A056124

/-- `∑[A022313(2*n)+1]` -/
def P14392216627242202078.Spec : Prop :=
  ∀ n, P14392216627242202078.a n = A056124 n

end A056124

/-! ## A056124.P16743068393524381823

`∑[A022371(2*n)/2]`
-/

namespace A056124.P16743068393524381823
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022371 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056124.P16743068393524381823

namespace A056124

/-- `∑[A022371(2*n)/2]` -/
def P16743068393524381823.Spec : Prop :=
  ∀ n, P16743068393524381823.a n = (A056124 n : ℚ)

end A056124

/-! ## A056124.P15611905264740912034

`A022313(2*n+1)-7`
-/

namespace A056124.P15611905264740912034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 (2 * n + 1) - 7

end

end A056124.P15611905264740912034

namespace A056124

/-- `A022313(2*n+1)-7` -/
def P15611905264740912034.Spec : Prop :=
  ∀ n, P15611905264740912034.a n = A056124 n

end A056124

/-! ## A056124.P3077372544337571977

`A022099(2*n+1)-8`
-/

namespace A056124.P3077372544337571977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 (2 * n + 1) - 8

end

end A056124.P3077372544337571977

namespace A056124

/-- `A022099(2*n+1)-8` -/
def P3077372544337571977.Spec : Prop :=
  ∀ n, P3077372544337571977.a n = A056124 n

end A056124

/-! ## A056124.P5905712085385761606

`A232584(n+1)-A001519(n)`
-/

namespace A056124.P5905712085385761606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232584 (n + 1) - A001519 n

end

end A056124.P5905712085385761606

namespace A056124

/-- `A232584(n+1)-A001519(n)` -/
def P5905712085385761606.Spec : Prop :=
  ∀ n, P5905712085385761606.a n = A056124 n

end A056124

/-! ## A056124.P4728554791553856397

`2*A122678(n+1)-A001519(n)`
-/

namespace A056124.P4728554791553856397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122678 (n + 1) - A001519 n

end

end A056124.P4728554791553856397

namespace A056124

/-- `2*A122678(n+1)-A001519(n)` -/
def P4728554791553856397.Spec : Prop :=
  ∀ n, P4728554791553856397.a n = A056124 n

end A056124

/-! ## A056124.P3141364559758410746

`∑[A022089(2*n)+A000032(2*n+1)]`
-/

namespace A056124.P3141364559758410746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 (2 * n) + A000032 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056124.P3141364559758410746

namespace A056124

/-- `∑[A022089(2*n)+A000032(2*n+1)]` -/
def P3141364559758410746.Spec : Prop :=
  ∀ n, P3141364559758410746.a n = A056124 n

end A056124

/-! ## A056124.P3082244511837550690

`A180671(2*n)+1-A187890(2*n+1)`
-/

namespace A056124.P3082244511837550690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180671 (2 * n) + (1 - A187890 (2 * n + 1))

end

end A056124.P3082244511837550690

namespace A056124

/-- `A180671(2*n)+1-A187890(2*n+1)` -/
def P3082244511837550690.Spec : Prop :=
  ∀ n, P3082244511837550690.a n = A056124 n

end A056124

/-! ## A056124.P13212157946563945732

`A111733(2*n)+A019274(2*(n+1))/2`
-/

namespace A056124.P13212157946563945732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111733 (2 * n) : ℚ) + (A019274 (2 * (n + 1)) : ℚ) / 2

end

end A056124.P13212157946563945732

namespace A056124

/-- `A111733(2*n)+A019274(2*(n+1))/2` -/
def P13212157946563945732.Spec : Prop :=
  ∀ n, P13212157946563945732.a n = (A056124 n : ℚ)

end A056124

/-! ## A056124.P2123323664421874710

`Δ[3*a(n-1)-a(n-2)]-8` with `a(0)=1, a(1)=10`
-/

namespace A056124.P2123323664421874710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 8

end

end A056124.P2123323664421874710

namespace A056124

/-- `Δ[3*a(n-1)-a(n-2)]-8` -/
def P2123323664421874710.Spec : Prop :=
  ∀ n, P2123323664421874710.a n = A056124 n

end A056124

/-! ## A056124.P2688618720051570474

`Δ[A055850(n)-A017077(n)]`
-/

namespace A056124.P2688618720051570474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055850 n - A017077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056124.P2688618720051570474

namespace A056124

/-- `Δ[A055850(n)-A017077(n)]` -/
def P2688618720051570474.Spec : Prop :=
  ∀ n, P2688618720051570474.a n = A056124 n

end A056124

/-! ## A056124.P987387311541344408

`A055850(n+1)-(A055850(n)+8)`
-/

namespace A056124.P987387311541344408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055850 (n + 1) - (A055850 n + 8)

end

end A056124.P987387311541344408

namespace A056124

/-- `A055850(n+1)-(A055850(n)+8)` -/
def P987387311541344408.Spec : Prop :=
  ∀ n, P987387311541344408.a n = A056124 n

end A056124

/-!
# A056125: a(n) = (5*n + 4)*binomial(n+7,7)/4.

The programs for A056125, the canonical program `A056125.P11139965058198095510` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056125 has offset 0).

The definition of A056125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056125.P3111144882504651346

`(5*n+4)*C(n+7, 7)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056125.P3111144882504651346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n + 4) * Nat.choose (n + 7) 7 : ℚ) / 4

end

end A056125.P3111144882504651346

namespace A056125

/-- `(5*n+4)*C(n+7, 7)/4` -/
def P3111144882504651346.Spec : Prop :=
  ∀ n, P3111144882504651346.a n = (A056125 n : ℚ)

end A056125

/-! ## A056125.P11139965058198095510

`10*C(n+8, 8)-9*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056125

/-- `10*C(n+8, 8)-9*C(n+7, 7)` -/
def P11139965058198095510.Spec : Prop :=
  ∀ n, P11139965058198095510.a n = A056125 n

theorem P11139965058198095510.correct : P11139965058198095510.Spec := by
  intro n
  simp only [A056125]

end A056125

/-! ## A056125.P12373965078520217537

`∑[∑[∑[(2*n+1)*C(n+4, 4)]]]`
-/

namespace A056125.P12373965078520217537
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.choose (n + 4) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056125.P12373965078520217537

namespace A056125

/-- `∑[∑[∑[(2*n+1)*C(n+4, 4)]]]` -/
def P12373965078520217537.Spec : Prop :=
  ∀ n, (P12373965078520217537.a n : ℤ) = A056125 n

end A056125

/-! ## A056125.P16319934868959356942

`∑[∑[∑[(2*n+1)*∑[∑[∑[n+1]]]]]]`
-/

namespace A056125.P16319934868959356942
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f4 j)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056125.P16319934868959356942

namespace A056125

/-- `∑[∑[∑[(2*n+1)*∑[∑[∑[n+1]]]]]]` -/
def P16319934868959356942.Spec : Prop :=
  ∀ n, (P16319934868959356942.a n : ℤ) = A056125 n

end A056125

/-! ## A056125.P12520206860143404691

`A052254(n)+a(n-1)` with `a(0)=1`
-/

namespace A056125.P12520206860143404691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052254 n + a (n - 1)

end

end A056125.P12520206860143404691

namespace A056125

/-- `A052254(n)+a(n-1)` -/
def P12520206860143404691.Spec : Prop :=
  ∀ n, P12520206860143404691.a n = A056125 n

end A056125

/-! ## A056125.P14353653617751794475

`lcm(∑[A052254(n)], A033999(n))`
-/

namespace A056125.P14353653617751794475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A056125.P14353653617751794475

namespace A056125

/-- `lcm(∑[A052254(n)], A033999(n))` -/
def P14353653617751794475.Spec : Prop :=
  ∀ n, (P14353653617751794475.a n : ℤ) = A056125 n

end A056125

/-! ## A056125.P14448172994542178148

`A000007(n+1)+∑[A052254(n)]`
-/

namespace A056125.P14448172994542178148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056125.P14448172994542178148

namespace A056125

/-- `A000007(n+1)+∑[A052254(n)]` -/
def P14448172994542178148.Spec : Prop :=
  ∀ n, P14448172994542178148.a n = A056125 n

end A056125

/-! ## A056125.P3737748590193169032

`A093646(n+1)-(A093646(n)+A052254(n+1))`
-/

namespace A056125.P3737748590193169032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093646 (n + 1) - (A093646 n + A052254 (n + 1))

end

end A056125.P3737748590193169032

namespace A056125

/-- `A093646(n+1)-(A093646(n)+A052254(n+1))` -/
def P3737748590193169032.Spec : Prop :=
  ∀ n, P3737748590193169032.a n = A056125 n

end A056125

/-! ## A056125.P12320025067902826453

`∑[A052254(n)]^A001221(A000961(n+1))`
-/

namespace A056125.P12320025067902826453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052254 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A056125.P12320025067902826453

namespace A056125

/-- `∑[A052254(n)]^A001221(A000961(n+1))` -/
def P12320025067902826453.Spec : Prop :=
  ∀ n, P12320025067902826453.a n = (A056125 n : ℚ)

end A056125

/-! ## A056125.P9319912487411263157

`A000035(2*(n+1))+∑[A052254(n)]`
-/

namespace A056125.P9319912487411263157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056125.P9319912487411263157

namespace A056125

/-- `A000035(2*(n+1))+∑[A052254(n)]` -/
def P9319912487411263157.Spec : Prop :=
  ∀ n, P9319912487411263157.a n = A056125 n

end A056125

/-! ## A056125.P18292377088579686291

`∑[A052254(n)]%A052268(n+1)`
-/

namespace A056125.P18292377088579686291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A052268 (n + 1))

end

end A056125.P18292377088579686291

namespace A056125

/-- `∑[A052254(n)]%A052268(n+1)` -/
def P18292377088579686291.Spec : Prop :=
  ∀ n, P18292377088579686291.a n = A056125 n

end A056125

/-!
# A056126: a(n) = n*(n + 17)/2.

The programs for A056126, the canonical program `A056126.P6783758923766370774` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056126 has offset 0).

The definition of A056126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+17)/2` (program `A056126.P17648803989955325074`, by `A056126.P17648803989955325074.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056126.P17648803989955325074

`n*(n+17)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056126.P17648803989955325074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 17) : ℚ) / 2

end

end A056126.P17648803989955325074

namespace A056126

/-- `n*(n+17)/2` -/
def P17648803989955325074.Spec : Prop :=
  ∀ n, P17648803989955325074.a n = (A056126 n : ℚ)

theorem P17648803989955325074.correct : P17648803989955325074.Spec := by
  intro n
  induction n with
  | zero => simp [A056126, A056126.P17648803989955325074.a, A056126.P6783758923766370774.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A056126, Nat.add_sub_cancel, A056126.P17648803989955325074.a, A056126.P6783758923766370774.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A056126

/-! ## A056126.P6783758923766370774

`a(n-1)+n+8` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056126

/-- `a(n-1)+n+8` -/
def P6783758923766370774.Spec : Prop :=
  ∀ n, (P6783758923766370774.a n : ℤ) = A056126 n

theorem P6783758923766370774.correct : P6783758923766370774.Spec := by
  intro n
  simp only [A056126]

end A056126

/-! ## A056126.P16897118528549827602

`C(n, 2)+9*n`
-/

namespace A056126.P16897118528549827602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 9 * n

end

end A056126.P16897118528549827602

namespace A056126

/-- `C(n, 2)+9*n` -/
def P16897118528549827602.Spec : Prop :=
  ∀ n, (P16897118528549827602.a n : ℤ) = A056126 n

end A056126

/-! ## A056126.P13687549082681920817

`record[C(n, 2)-8*n]`
-/

namespace A056126.P13687549082681920817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (8 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056126.P13687549082681920817

namespace A056126

/-- `record[C(n, 2)-8*n]` -/
def P13687549082681920817.Spec : Prop :=
  ∀ n, P13687549082681920817.a n = A056126 n

end A056126

/-! ## A056126.P17811398879108980468

`∑[ogf((9x-8x^2)/(1-2x+x^2))]`
-/

namespace A056126.P17811398879108980468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, -8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056126.P17811398879108980468

namespace A056126

/-- `∑[ogf((9x-8x^2)/(1-2x+x^2))]` -/
def P17811398879108980468.Spec : Prop :=
  ∀ n, P17811398879108980468.a n = A056126 n

end A056126

/-! ## A056126.P4430056827373148446

`ogf((9x-8x^2)/(1-3x+3x^2-x^3))`
-/

namespace A056126.P4430056827373148446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, -8] [1, -3, 3, -1] n

end

end A056126.P4430056827373148446

namespace A056126

/-- `ogf((9x-8x^2)/(1-3x+3x^2-x^3))` -/
def P4430056827373148446.Spec : Prop :=
  ∀ n, P4430056827373148446.a n = A056126 n

end A056126

/-! ## A056126.P3434307454995489435

`record[a(n-1)-(9-n)]` with `a(0)=0`
-/

namespace A056126.P3434307454995489435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (9 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056126.P3434307454995489435

namespace A056126

/-- `record[a(n-1)-(9-n)]` -/
def P3434307454995489435.Spec : Prop :=
  ∀ n, P3434307454995489435.a n = A056126 n

end A056126

/-! ## A056126.P3023582734350211551

`∑[(n+8)*n²%(n+1)]`
-/

namespace A056126.P3023582734350211551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 8) * (n ^ 2 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056126.P3023582734350211551

namespace A056126

/-- `∑[(n+8)*n²%(n+1)]` -/
def P3023582734350211551.Spec : Prop :=
  ∀ n, (P3023582734350211551.a n : ℤ) = A056126 n

end A056126

/-! ## A056126.P251452421347688272

`record[((n-1)/4-4)*2*n]`
-/

namespace A056126.P251452421347688272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) / 4 - 4) * (2 * n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056126.P251452421347688272

namespace A056126

/-- `record[((n-1)/4-4)*2*n]` -/
def P251452421347688272.Spec : Prop :=
  ∀ n, P251452421347688272.a n = (A056126 n : ℚ)

end A056126

/-! ## A056126.P6622295055140228143

`A056121(n)+n`
-/

namespace A056126.P6622295055140228143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056121 n + (n : ℤ)

end

end A056126.P6622295055140228143

namespace A056126

/-- `A056121(n)+n` -/
def P6622295055140228143.Spec : Prop :=
  ∀ n, P6622295055140228143.a n = A056126 n

end A056126

/-! ## A056126.P10655283501620425822

`A056119(n)+2*n`
-/

namespace A056126.P10655283501620425822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n + (2 * n : ℤ)

end

end A056126.P10655283501620425822

namespace A056126

/-- `A056119(n)+2*n` -/
def P10655283501620425822.Spec : Prop :=
  ∀ n, P10655283501620425822.a n = A056126 n

end A056126

/-! ## A056126.P15375069721171503247

`A056115(n)+3*n`
-/

namespace A056126.P15375069721171503247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + (3 * n : ℤ)

end

end A056126.P15375069721171503247

namespace A056126

/-- `A056115(n)+3*n` -/
def P15375069721171503247.Spec : Prop :=
  ∀ n, P15375069721171503247.a n = A056126 n

end A056126

/-! ## A056126.P1447591041370673598

`A132760(n)/2+n`
-/

namespace A056126.P1447591041370673598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132760 n : ℚ) / 2 + (n : ℚ)

end

end A056126.P1447591041370673598

namespace A056126

/-- `A132760(n)/2+n` -/
def P1447591041370673598.Spec : Prop :=
  ∀ n, P1447591041370673598.a n = (A056126 n : ℚ)

end A056126

/-! ## A056126.P6382776269370020038

`A056000(n)+4*n`
-/

namespace A056126.P6382776269370020038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + (4 * n : ℤ)

end

end A056126.P6382776269370020038

namespace A056126

/-- `A056000(n)+4*n` -/
def P6382776269370020038.Spec : Prop :=
  ∀ n, P6382776269370020038.a n = A056126 n

end A056126

/-! ## A056126.P84724076372888673

`A132754(n)-3*n`
-/

namespace A056126.P84724076372888673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132754 n - (3 * n : ℤ)

end

end A056126.P84724076372888673

namespace A056126

/-- `A132754(n)-3*n` -/
def P84724076372888673.Spec : Prop :=
  ∀ n, P84724076372888673.a n = A056126 n

end A056126

/-! ## A056126.P11258485546141067689

`A132762(n)/2-n`
-/

namespace A056126.P11258485546141067689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132762 n : ℚ) / 2 - (n : ℚ)

end

end A056126.P11258485546141067689

namespace A056126

/-- `A132762(n)/2-n` -/
def P11258485546141067689.Spec : Prop :=
  ∀ n, P11258485546141067689.a n = (A056126 n : ℚ)

end A056126

/-! ## A056126.P8040069843030298103

`A055999(n)+5*n`
-/

namespace A056126.P8040069843030298103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n + (5 * n : ℤ)

end

end A056126.P8040069843030298103

namespace A056126

/-- `A055999(n)+5*n` -/
def P8040069843030298103.Spec : Prop :=
  ∀ n, P8040069843030298103.a n = A056126 n

end A056126

/-! ## A056126.P4263351557005128423

`8*n+A000217(n)`
-/

namespace A056126.P4263351557005128423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) + A000217 n

end

end A056126.P4263351557005128423

namespace A056126

/-- `8*n+A000217(n)` -/
def P4263351557005128423.Spec : Prop :=
  ∀ n, P4263351557005128423.a n = A056126 n

end A056126

/-!
# A056127: Minimum m where product_{k=1 to m}[p_k] > (p_{m+1})^n, where p_k is k-th prime.

The programs for A056127, there is no canonical definition to state claims against.
-/

/-! ## A056127.P8512538639778788565

`n+1-(A067022(a(n-1)+1)-a(n-1))` with `a(0)=1`
-/

namespace A056127.P8512538639778788565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - (A067022 (a (n - 1) + 1).toNat - a (n - 1))

end

end A056127.P8512538639778788565

/-! ## A056127.P5930426765105522225

`eq[char[A127621(n+1)], A000007(n)]`
-/

namespace A056127.P5930426765105522225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127621 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A056127.P5930426765105522225

/-! ## A056127.P4767934940098986852

`eq[char[A127621(n+1)], A000038(n)]`
-/

namespace A056127.P4767934940098986852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127621 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A056127.P4767934940098986852

/-! ## A056127.P16240234173929498992

`eq[char[A127621(n+1)], A020761(n)]`
-/

namespace A056127.P16240234173929498992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127621 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A056127.P16240234173929498992

/-! ## A056127.P16120445848511325299

`eq[char[A127621(n+1)], A019590(n+2)]`
-/

namespace A056127.P16120445848511325299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127621 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A056127.P16120445848511325299

/-! ## A056127.P6842310441644640879

`eq[char[A127621(n+1)], A151933(n)]`
-/

namespace A056127.P6842310441644640879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127621 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A056127.P6842310441644640879

/-!
# A056128: a(n) = (9*n + 11)*binomial(n+10, 10)/11.

The programs for A056128, the canonical program `A056128.P11310958498517767299` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056128 has offset 0).

The definition of A056128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056128.P4268578939194193448

`(9*n+11)*C(n+10, 10)/11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056128.P4268578939194193448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * n + 11) * Nat.choose (n + 10) 10 : ℚ) / 11

end

end A056128.P4268578939194193448

namespace A056128

/-- `(9*n+11)*C(n+10, 10)/11` -/
def P4268578939194193448.Spec : Prop :=
  ∀ n, P4268578939194193448.a n = (A056128 n : ℚ)

end A056128

/-! ## A056128.P11310958498517767299

`9*C(n+11, 11)-8*C(n+10, 10)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056128

/-- `9*C(n+11, 11)-8*C(n+10, 10)` -/
def P11310958498517767299.Spec : Prop :=
  ∀ n, P11310958498517767299.a n = A056128 n

theorem P11310958498517767299.correct : P11310958498517767299.Spec := by
  intro n
  simp only [A056128]

end A056128

/-! ## A056128.P8416993661952966481

`∑[∑[(n+1)*C(n+8, 8)]]`
-/

namespace A056128.P8416993661952966481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 8) 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056128.P8416993661952966481

namespace A056128

/-- `∑[∑[(n+1)*C(n+8, 8)]]` -/
def P8416993661952966481.Spec : Prop :=
  ∀ n, (P8416993661952966481.a n : ℤ) = A056128 n

end A056128

/-! ## A056128.P14562397884865329623

`∑[∑[(n+1)*∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]]]`
-/

namespace A056128.P14562397884865329623
noncomputable section

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056128.P14562397884865329623

namespace A056128

/-- `∑[∑[(n+1)*∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]]]` -/
def P14562397884865329623.Spec : Prop :=
  ∀ n, (P14562397884865329623.a n : ℤ) = A056128 n

end A056128

/-! ## A056128.P5939948780755731833

`2*∑[A254142(n)/2]`
-/

namespace A056128.P5939948780755731833
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254142 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056128.P5939948780755731833

namespace A056128

/-- `2*∑[A254142(n)/2]` -/
def P5939948780755731833.Spec : Prop :=
  ∀ n, P5939948780755731833.a n = (A056128 n : ℚ)

end A056128

/-! ## A056128.P17291069019383609116

`or(∑[A254142(n)], A000007(n))`
-/

namespace A056128.P17291069019383609116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A056128.P17291069019383609116

namespace A056128

/-- `or(∑[A254142(n)], A000007(n))` -/
def P17291069019383609116.Spec : Prop :=
  ∀ n, P17291069019383609116.a n = A056128 n

end A056128

/-! ## A056128.P1863034566406076898

`A254142(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A056128.P1863034566406076898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254142 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A056128.P1863034566406076898

namespace A056128

/-- `A254142(A000007(n)+n)+a(n-1)` -/
def P1863034566406076898.Spec : Prop :=
  ∀ n, P1863034566406076898.a n = A056128 n

end A056128

/-! ## A056128.P9924317380140198349

`∑[A254142(n)]*A193636(A000096(n))`
-/

namespace A056128.P9924317380140198349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A193636 (A000096 n).toNat

end

end A056128.P9924317380140198349

namespace A056128

/-- `∑[A254142(n)]*A193636(A000096(n))` -/
def P9924317380140198349.Spec : Prop :=
  ∀ n, P9924317380140198349.a n = A056128 n

end A056128

/-!
# A056129: Final nonzero digit of n-th primorial.

The programs for A056129, the canonical program `A056129.P7754831365557891358` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056129 has offset 0).

The definition of A056129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056129.P7754831365557891358

`A065881(a(n-1)*record[∑{p}[n, #]])` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056129

/-- `A065881(a(n-1)*record[∑{p}[n, #]])` -/
def P7754831365557891358.Spec : Prop :=
  ∀ n, P7754831365557891358.a n = A056129 n

theorem P7754831365557891358.correct : P7754831365557891358.Spec := by
  intro n
  simp only [A056129]

end A056129

/-! ## A056129.P15909171390171441846

`A065881(a(n-1)*A008578(n+1))` with `a(0)=1`
-/

namespace A056129.P15909171390171441846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065881 (a (n - 1) * A008578 (n + 1)).toNat

end

end A056129.P15909171390171441846

namespace A056129

/-- `A065881(a(n-1)*A008578(n+1))` -/
def P15909171390171441846.Spec : Prop :=
  ∀ n, P15909171390171441846.a n = A056129 n

end A056129

/-! ## A056129.P17854109475061619051

`A065881(a(n-1)*comp[A018252(n+1)])` with `a(0)=1`
-/

namespace A056129.P17854109475061619051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065881 (a (n - 1) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A056129.P17854109475061619051

namespace A056129

/-- `A065881(a(n-1)*comp[A018252(n+1)])` -/
def P17854109475061619051.Spec : Prop :=
  ∀ n, P17854109475061619051.a n = A056129 n

end A056129

/-!
# A056130: Palindromic primes in bases 2 and 4.

The programs for A056130, there is no canonical definition to state claims against.
-/

/-! ## A056130.P6519922104752110516

`∩[A097856(n+1), A255161(n+1)]`
-/

namespace A056130.P6519922104752110516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056130.P6519922104752110516

/-! ## A056130.P9603988093694485424

`∩[A016041(n+1), A029972(n+1)]`
-/

namespace A056130.P9603988093694485424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056130.P9603988093694485424

/-! ## A056130.P214628402571137590

`∩[A016041(n+1), A097856(n+1)]`
-/

namespace A056130.P214628402571137590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056130.P214628402571137590

/-! ## A056130.P8764562352106140111

`∩[A029972(n+1), A097856(n+1)]`
-/

namespace A056130.P8764562352106140111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056130.P8764562352106140111

/-! ## A056130.P1861519999710639230

`∩[A029972(n+1), A163410(n+1)]`
-/

namespace A056130.P1861519999710639230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056130.P1861519999710639230

/-! ## A056130.P14615181025596940504

`∩[A029972(n+1), A329419(n+1)]`
-/

namespace A056130.P14615181025596940504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056130.P14615181025596940504

/-!
# A056131: Sequence A001033 gives the numbers n such that the sum of the squares of n consecutive odd numbers x^2 + (x+2)^2 + ... +(x+2n-2)^2 = k^2 for some integer k. For each n, this sequence gives the least value of x.

The programs for A056131, there is no canonical definition to state claims against.
-/

/-! ## A056131.P9183463109051388517

`A185487(n+1)-A353467(A086927(n))`
-/

namespace A056131.P9183463109051388517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (n + 1) - A353467 (A086927 n).toNat

end

end A056131.P9183463109051388517

/-!
# A056133: a(1) = 1, a(m+1) = sum_{k=1 to m}[min(m, a(k))].

The programs for A056133, there is no canonical definition to state claims against.
-/

/-! ## A056133.P17490762291441995442

`A093848(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A056133.P17490762291441995442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A093848 (n - 1) + a (n - 1)

end

end A056133.P17490762291441995442

/-! ## A056133.P7503265332923808726

`A318274(A375002(n+2)+A358378(n+1))`
-/

namespace A056133.P7503265332923808726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 (A375002 (n + 2) + A358378 (n + 1)).toNat

end

end A056133.P7503265332923808726

/-! ## A056133.P9106399200732753191

`A318274(A375002(n+2)+A358522(n+1))`
-/

namespace A056133.P9106399200732753191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 (A375002 (n + 2) + A358522 (n + 1)).toNat

end

end A056133.P9106399200732753191

/-! ## A056133.P10741523677010108417

`A318274(A383250(n+1)+A375002(n+2))`
-/

namespace A056133.P10741523677010108417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 (A383250 (n + 1) + A375002 (n + 2)).toNat

end

end A056133.P10741523677010108417

/-! ## A056133.P11774383819826563908

`∑[A261794(A049955(n+1))+a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A056133.P11774383819826563908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A261794 (A049955 (n + 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056133.P11774383819826563908

/-!
# A056134: Smallest positive integer which is the geometric mean of n and an integer other than n.

The programs for A056134, the canonical program `A056134.P1490690283177267514` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056134 has offset 1).

The definition of A056134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056134.P4860079449160825570

`sqrt((n+1)*A056135(n+1))`
-/

namespace A056134.P4860079449160825570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A056135 (n + 1) : ℝ)

end

end A056134.P4860079449160825570

namespace A056134

/-- `sqrt((n+1)*A056135(n+1))` -/
def P4860079449160825570.Spec : Prop :=
  ∀ n, P4860079449160825570.a n = (A056134 (n + 1) : ℝ)

end A056134

/-! ## A056134.P14755510078536114999

`A254732(n+1)-A105570(n+1)`
-/

namespace A056134.P14755510078536114999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254732 (n + 1) - A105570 (n + 1)

end

end A056134.P14755510078536114999

namespace A056134

/-- `A254732(n+1)-A105570(n+1)` -/
def P14755510078536114999.Spec : Prop :=
  ∀ n, P14755510078536114999.a n = A056134 (n + 1)

end A056134

/-! ## A056134.P9469223799299517789

`gcd(A061669(n+1), A254732(n+1))`
-/

namespace A056134.P9469223799299517789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061669 (n + 1)) (A254732 (n + 1))

end

end A056134.P9469223799299517789

namespace A056134

/-- `gcd(A061669(n+1), A254732(n+1))` -/
def P9469223799299517789.Spec : Prop :=
  ∀ n, (P9469223799299517789.a n : ℤ) = A056134 (n + 1)

end A056134

/-! ## A056134.P1490690283177267514

`A019554(n+1)+abs(A055615(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056134

/-- `A019554(n+1)+abs(A055615(n+1))` -/
def P1490690283177267514.Spec : Prop :=
  ∀ n, P1490690283177267514.a n = A056134 (n + 1)

theorem P1490690283177267514.correct : P1490690283177267514.Spec := by
  intro n
  simp only [A056134, Nat.add_sub_cancel]

end A056134

/-! ## A056134.P5695376786405992697

`(A008966(n+1)+1)*A019554(n+1)`
-/

namespace A056134.P5695376786405992697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008966 (n + 1) + 1) * A019554 (n + 1)

end

end A056134.P5695376786405992697

namespace A056134

/-- `(A008966(n+1)+1)*A019554(n+1)` -/
def P5695376786405992697.Spec : Prop :=
  ∀ n, P5695376786405992697.a n = A056134 (n + 1)

end A056134

/-! ## A056134.P15103567005363842616

`(3-A007424(n+1))*A019554(n+1)`
-/

namespace A056134.P15103567005363842616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A007424 (n + 1)) * A019554 (n + 1)

end

end A056134.P15103567005363842616

namespace A056134

/-- `(3-A007424(n+1))*A019554(n+1)` -/
def P15103567005363842616.Spec : Prop :=
  ∀ n, P15103567005363842616.a n = A056134 (n + 1)

end A056134

/-! ## A056134.P2326380623847724408

`A019554(n+1)+C(A336965(n+1), n)`
-/

namespace A056134.P2326380623847724408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) + (Nat.choose (A336965 (n + 1)).toNat n : ℤ)

end

end A056134.P2326380623847724408

namespace A056134

/-- `A019554(n+1)+C(A336965(n+1), n)` -/
def P2326380623847724408.Spec : Prop :=
  ∀ n, P2326380623847724408.a n = A056134 (n + 1)

end A056134

/-! ## A056134.P13154083711499160980

`(A008683(n+1)²+1)*A019554(n+1)`
-/

namespace A056134.P13154083711499160980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) ^ 2 + 1) * A019554 (n + 1)

end

end A056134.P13154083711499160980

namespace A056134

/-- `(A008683(n+1)²+1)*A019554(n+1)` -/
def P13154083711499160980.Spec : Prop :=
  ∀ n, P13154083711499160980.a n = A056134 (n + 1)

end A056134

/-! ## A056134.P14786874553620944945

`A007423(A008833(n+1))*A019554(n+1)`
-/

namespace A056134.P14786874553620944945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A008833 (n + 1)).toNat * A019554 (n + 1)

end

end A056134.P14786874553620944945

namespace A056134

/-- `A007423(A008833(n+1))*A019554(n+1)` -/
def P14786874553620944945.Spec : Prop :=
  ∀ n, P14786874553620944945.a n = A056134 (n + 1)

end A056134

/-! ## A056134.P13610469420060629830

`A005843(A019554(n+1))/A007424(n+1)`
-/

namespace A056134.P13610469420060629830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A019554 (n + 1)).toNat : ℚ) / (A007424 (n + 1) : ℚ)

end

end A056134.P13610469420060629830

namespace A056134

/-- `A005843(A019554(n+1))/A007424(n+1)` -/
def P13610469420060629830.Spec : Prop :=
  ∀ n, P13610469420060629830.a n = (A056134 (n + 1) : ℚ)

end A056134

/-! ## A056134.P4481626848873229822

`(A008966(n+1)+A000188(n+1))*A007913(n+1)`
-/

namespace A056134.P4481626848873229822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008966 (n + 1) + A000188 (n + 1)) * A007913 (n + 1)

end

end A056134.P4481626848873229822

namespace A056134

/-- `(A008966(n+1)+A000188(n+1))*A007913(n+1)` -/
def P4481626848873229822.Spec : Prop :=
  ∀ n, P4481626848873229822.a n = A056134 (n + 1)

end A056134

/-! ## A056134.P136846265192393422

`A000034(A002033(n))*A019554(n+1)`
-/

namespace A056134.P136846265192393422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002033 n).toNat * A019554 (n + 1)

end

end A056134.P136846265192393422

namespace A056134

/-- `A000034(A002033(n))*A019554(n+1)` -/
def P136846265192393422.Spec : Prop :=
  ∀ n, P136846265192393422.a n = A056134 (n + 1)

end A056134

/-! ## A056134.P15995064773902384888

`A254732(n+1)%A124260(n+1)`
-/

namespace A056134.P15995064773902384888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254732 (n + 1)) (A124260 (n + 1))

end

end A056134.P15995064773902384888

namespace A056134

/-- `A254732(n+1)%A124260(n+1)` -/
def P15995064773902384888.Spec : Prop :=
  ∀ n, P15995064773902384888.a n = A056134 (n + 1)

end A056134

/-! ## A056134.P6407087866013289383

`A002110(A008683(n+1)^A226951(n+6))*A019554(n+1)`
-/

namespace A056134.P6407087866013289383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.roundAway ((A008683 (n + 1) : ℚ) ^ (A226951 (n + 6) : ℤ))).toNat * A019554 (n + 1)

end

end A056134.P6407087866013289383

namespace A056134

/-- `A002110(A008683(n+1)^A226951(n+6))*A019554(n+1)` -/
def P6407087866013289383.Spec : Prop :=
  ∀ n, P6407087866013289383.a n = A056134 (n + 1)

end A056134

/-! ## A056134.P12015018789845352450

`A046692((n+1)²)+A019554(n+1)`
-/

namespace A056134.P12015018789845352450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 ((n + 1) ^ 2) + A019554 (n + 1)

end

end A056134.P12015018789845352450

namespace A056134

/-- `A046692((n+1)²)+A019554(n+1)` -/
def P12015018789845352450.Spec : Prop :=
  ∀ n, P12015018789845352450.a n = A056134 (n + 1)

end A056134

/-!
# A056135: Smallest positive integer other than n where geometric mean of n and a(n) is an integer.

The programs for A056135, the canonical program `A056135.P11892783401694523385` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056135 has offset 1).

The definition of A056135 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056134, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056135.P11892783401694523385

`A056134(n+1)²/(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056135

/-- `A056134(n+1)²/(n+1)` -/
def P11892783401694523385.Spec : Prop :=
  ∀ n, P11892783401694523385.a n = (A056135 (n + 1) : ℚ)

end A056135

/-! ## A056135.P7844015081897421637

`gcd(A072905(n+1), A105570(n+1))`
-/

namespace A056135.P7844015081897421637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072905 (n + 1)) (A105570 (n + 1))

end

end A056135.P7844015081897421637

namespace A056135

/-- `gcd(A072905(n+1), A105570(n+1))` -/
def P7844015081897421637.Spec : Prop :=
  ∀ n, (P7844015081897421637.a n : ℤ) = A056135 (n + 1)

end A056135

/-! ## A056135.P12959323583391419454

`(A008966(n+1)+1)²*A007913(n+1)`
-/

namespace A056135.P12959323583391419454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008966 (n + 1) + 1) ^ 2 * A007913 (n + 1)

end

end A056135.P12959323583391419454

namespace A056135

/-- `(A008966(n+1)+1)²*A007913(n+1)` -/
def P12959323583391419454.Spec : Prop :=
  ∀ n, P12959323583391419454.a n = A056135 (n + 1)

end A056135

/-! ## A056135.P3135040500211274046

`A000290(A056134(n+1))/A000027(n+1)`
-/

namespace A056135.P3135040500211274046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A056134 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ)

end

end A056135.P3135040500211274046

namespace A056135

/-- `A000290(A056134(n+1))/A000027(n+1)` -/
def P3135040500211274046.Spec : Prop :=
  ∀ n, P3135040500211274046.a n = (A056135 (n + 1) : ℚ)

end A056135

/-! ## A056135.P8434142694896005030

`A007913(n+1)*A010685(A002033(n))`
-/

namespace A056135.P8434142694896005030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A010685 (A002033 n).toNat

end

end A056135.P8434142694896005030

namespace A056135

/-- `A007913(n+1)*A010685(A002033(n))` -/
def P8434142694896005030.Spec : Prop :=
  ∀ n, P8434142694896005030.a n = A056135 (n + 1)

end A056135

/-! ## A056135.P8628071310495956489

`A007913(n+1)*A124259(A008477(n+1))`
-/

namespace A056135.P8628071310495956489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A124259 (A008477 (n + 1)).toNat

end

end A056135.P8628071310495956489

namespace A056135

/-- `A007913(n+1)*A124259(A008477(n+1))` -/
def P8628071310495956489.Spec : Prop :=
  ∀ n, P8628071310495956489.a n = A056135 (n + 1)

end A056135

/-! ## A056135.P14774463593511557689

`A010685(A002033(n))*A056554((n+1)²)`
-/

namespace A056135.P14774463593511557689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A002033 n).toNat * A056554 ((n + 1) ^ 2)

end

end A056135.P14774463593511557689

namespace A056135

/-- `A010685(A002033(n))*A056554((n+1)²)` -/
def P14774463593511557689.Spec : Prop :=
  ∀ n, P14774463593511557689.a n = A056135 (n + 1)

end A056135

/-! ## A056135.P16267561661274676265

`gcd(A159586(n+1), A348030(n+1))`
-/

namespace A056135.P16267561661274676265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159586 (n + 1)) (A348030 (n + 1))

end

end A056135.P16267561661274676265

namespace A056135

/-- `gcd(A159586(n+1), A348030(n+1))` -/
def P16267561661274676265.Spec : Prop :=
  ∀ n, (P16267561661274676265.a n : ℤ) = A056135 (n + 1)

end A056135

/-!
# A056136: Largest positive integer whose harmonic mean with another positive integer is n.

The programs for A056136, the canonical program `A056136.P13584570366778439263` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056136 has offset 1).

The definition of A056136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056136.P13584570366778439263

`(n+1)*A008619(n+1)/(2*A008619(n+1)-(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056136

/-- `(n+1)*A008619(n+1)/(2*A008619(n+1)-(n+1))` -/
def P13584570366778439263.Spec : Prop :=
  ∀ n, P13584570366778439263.a n = (A056136 (n + 1) : ℚ)

end A056136

/-! ## A056136.P16107657660136939983

`(n+1)/2*A029578(n+3)`
-/

namespace A056136.P16107657660136939983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A029578 (n + 3) : ℚ)

end

end A056136.P16107657660136939983

namespace A056136

/-- `(n+1)/2*A029578(n+3)` -/
def P16107657660136939983.Spec : Prop :=
  ∀ n, P16107657660136939983.a n = (A056136 (n + 1) : ℚ)

end A056136

/-! ## A056136.P14759698200279851771

`∑[ceil(Δ[lcm(2, n²)/4])]`
-/

namespace A056136.P14759698200279851771
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n ^ 2) : ℚ) / 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056136.P14759698200279851771

namespace A056136

/-- `∑[ceil(Δ[lcm(2, n²)/4])]` -/
def P14759698200279851771.Spec : Prop :=
  ∀ n, P14759698200279851771.a n = A056136 (n + 1)

end A056136

/-! ## A056136.P15305748337311562271

`lcm(n+1, and(n+3, -2))/2`
-/

namespace A056136.P15305748337311562271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (Int.land (n + 3 : ℤ) (-2)) : ℚ) / 2

end

end A056136.P15305748337311562271

namespace A056136

/-- `lcm(n+1, and(n+3, -2))/2` -/
def P15305748337311562271.Spec : Prop :=
  ∀ n, P15305748337311562271.a n = (A056136 (n + 1) : ℚ)

end A056136

/-! ## A056136.P12801798658231465165

`∑[n+1]-(∑[n]%(n+1))²`
-/

namespace A056136.P12801798658231465165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)) ^ 2 : ℕ) : ℤ)

end

end A056136.P12801798658231465165

namespace A056136

/-- `∑[n+1]-(∑[n]%(n+1))²` -/
def P12801798658231465165.Spec : Prop :=
  ∀ n, P12801798658231465165.a n = A056136 (n + 1)

end A056136

/-! ## A056136.P14980132889261581814

`(ceil(n/2)+1)*gcd(n+1, ∑[n])`
-/

namespace A056136.P14980132889261581814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ + 1) * (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A056136.P14980132889261581814

namespace A056136

/-- `(ceil(n/2)+1)*gcd(n+1, ∑[n])` -/
def P14980132889261581814.Spec : Prop :=
  ∀ n, P14980132889261581814.a n = A056136 (n + 1)

end A056136

/-! ## A056136.P6434587559264622732

`∑[n+1]-∑[∑[n*(-1)^n]]²`
-/

namespace A056136.P6434587559264622732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A056136.P6434587559264622732

namespace A056136

/-- `∑[n+1]-∑[∑[n*(-1)^n]]²` -/
def P6434587559264622732.Spec : Prop :=
  ∀ n, P6434587559264622732.a n = A056136 (n + 1)

end A056136

/-! ## A056136.P3451780138956768470

`∑[n+1-a(n-1)]/a(n-1)*∑[n]` with `a(0)=1`
-/

namespace A056136.P3451780138956768470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A056136.P3451780138956768470

namespace A056136

/-- `∑[n+1-a(n-1)]/a(n-1)*∑[n]` -/
def P3451780138956768470.Spec : Prop :=
  ∀ n, P3451780138956768470.a n = (A056136 (n + 1) : ℚ)

end A056136

/-! ## A056136.P16908025077565083471

`2*gcd(2, n)*A265225(n)/4`
-/

namespace A056136.P16908025077565083471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.gcd 2 n : ℤ) * A265225 n : ℚ) / 4

end

end A056136.P16908025077565083471

namespace A056136

/-- `2*gcd(2, n)*A265225(n)/4` -/
def P16908025077565083471.Spec : Prop :=
  ∀ n, P16908025077565083471.a n = (A056136 (n + 1) : ℚ)

end A056136

/-! ## A056136.P11855365546425937023

`A265225(n)/A000034(n)`
-/

namespace A056136.P11855365546425937023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265225 n : ℚ) / (A000034 n : ℚ)

end

end A056136.P11855365546425937023

namespace A056136

/-- `A265225(n)/A000034(n)` -/
def P11855365546425937023.Spec : Prop :=
  ∀ n, P11855365546425937023.a n = (A056136 (n + 1) : ℚ)

end A056136

/-! ## A056136.P15231723821476180067

`gcd(A033487(n), A265225(n))`
-/

namespace A056136.P15231723821476180067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033487 n) (A265225 n)

end

end A056136.P15231723821476180067

namespace A056136

/-- `gcd(A033487(n), A265225(n))` -/
def P15231723821476180067.Spec : Prop :=
  ∀ n, (P15231723821476180067.a n : ℤ) = A056136 (n + 1)

end A056136

/-! ## A056136.P5966216320506253932

`lcm(A030640(n), A080513(n))`
-/

namespace A056136.P5966216320506253932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A030640 n) (A080513 n)

end

end A056136.P5966216320506253932

namespace A056136

/-- `lcm(A030640(n), A080513(n))` -/
def P5966216320506253932.Spec : Prop :=
  ∀ n, (P5966216320506253932.a n : ℤ) = A056136 (n + 1)

end A056136

/-! ## A056136.P11426432819715781755

`A026741(n+1)*A080513(n)`
-/

namespace A056136.P11426432819715781755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A080513 n

end

end A056136.P11426432819715781755

namespace A056136

/-- `A026741(n+1)*A080513(n)` -/
def P11426432819715781755.Spec : Prop :=
  ∀ n, P11426432819715781755.a n = A056136 (n + 1)

end A056136

/-! ## A056136.P5738037118502260318

`A013654(n+1)/A010694(n)`
-/

namespace A056136.P5738037118502260318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013654 (n + 1) : ℚ) / (A010694 n : ℚ)

end

end A056136.P5738037118502260318

namespace A056136

/-- `A013654(n+1)/A010694(n)` -/
def P5738037118502260318.Spec : Prop :=
  ∀ n, P5738037118502260318.a n = (A056136 (n + 1) : ℚ)

end A056136

/-! ## A056136.P10193156386981977547

`A265225(n)/(2-A059841(n))`
-/

namespace A056136.P10193156386981977547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265225 n : ℚ) / (2 - A059841 n : ℚ)

end

end A056136.P10193156386981977547

namespace A056136

/-- `A265225(n)/(2-A059841(n))` -/
def P10193156386981977547.Spec : Prop :=
  ∀ n, P10193156386981977547.a n = (A056136 (n + 1) : ℚ)

end A056136

/-! ## A056136.P2387068709090192955

`(∑[A097140(n)]+1)*A008619(n)`
-/

namespace A056136.P2387068709090192955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A008619 n

end

end A056136.P2387068709090192955

namespace A056136

/-- `(∑[A097140(n)]+1)*A008619(n)` -/
def P2387068709090192955.Spec : Prop :=
  ∀ n, P2387068709090192955.a n = A056136 (n + 1)

end A056136

/-! ## A056136.P12304090352582862299

`A008619(n+1)*A026741(n+1)`
-/

namespace A056136.P12304090352582862299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) * A026741 (n + 1)

end

end A056136.P12304090352582862299

namespace A056136

/-- `A008619(n+1)*A026741(n+1)` -/
def P12304090352582862299.Spec : Prop :=
  ∀ n, P12304090352582862299.a n = A056136 (n + 1)

end A056136

/-! ## A056136.P3599100674304353491

`A070260(n+1)%A373662(n+1)`
-/

namespace A056136.P3599100674304353491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070260 (n + 1)) (A373662 (n + 1))

end

end A056136.P3599100674304353491

namespace A056136

/-- `A070260(n+1)%A373662(n+1)` -/
def P3599100674304353491.Spec : Prop :=
  ∀ n, P3599100674304353491.a n = A056136 (n + 1)

end A056136

/-! ## A056136.P17879366367965093734

`A000034(n)*A000217(A026741(n+1))`
-/

namespace A056136.P17879366367965093734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A000217 (A026741 (n + 1)).toNat

end

end A056136.P17879366367965093734

namespace A056136

/-- `A000034(n)*A000217(A026741(n+1))` -/
def P17879366367965093734.Spec : Prop :=
  ∀ n, P17879366367965093734.a n = A056136 (n + 1)

end A056136

/-! ## A056136.P15472188170179930762

`(A080512(n+1)-A026741(n))*A026741(n+1)`
-/

namespace A056136.P15472188170179930762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080512 (n + 1) - A026741 n) * A026741 (n + 1)

end

end A056136.P15472188170179930762

namespace A056136

/-- `(A080512(n+1)-A026741(n))*A026741(n+1)` -/
def P15472188170179930762.Spec : Prop :=
  ∀ n, P15472188170179930762.a n = A056136 (n + 1)

end A056136

/-!
# A056137: Number of ways in which n can be the longer leg (middle side) of an integer-sided right triangle.

The programs for A056137, there is no canonical definition to state claims against.
-/

/-! ## A056137.P11737177521966949261

`A046079(n+1)-A056138(n+1)`
-/

namespace A056137.P11737177521966949261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) - A056138 (n + 1)

end

end A056137.P11737177521966949261

/-! ## A056137.P15186147811059603790

`A046081(n+1)-A046080(n+1)-A056138(n+1)`
-/

namespace A056137.P15186147811059603790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) - A046080 (n + 1) - A056138 (n + 1)

end

end A056137.P15186147811059603790

/-! ## A056137.P9979595795296822827

`∑{d}[n+1, A024360(#)]`
-/

namespace A056137.P9979595795296822827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024360 d

end

end A056137.P9979595795296822827

/-! ## A056137.P12843871260568972987

`A227481(n+1)-1`
-/

namespace A056137.P12843871260568972987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (n + 1) - 1

end

end A056137.P12843871260568972987

/-! ## A056137.P15064831240267951144

`Δ[∑[A227481(n)]-n]`
-/

namespace A056137.P15064831240267951144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056137.P15064831240267951144

/-!
# A056138: Number of ways in which n can be the shorter leg (shortest side) of an integer-sided right triangle.

The programs for A056138, there is no canonical definition to state claims against.
-/

/-! ## A056138.P14167498341214936205

`A046079(n+1)-A056137(n+1)`
-/

namespace A056138.P14167498341214936205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) - A056137 (n + 1)

end

end A056138.P14167498341214936205

/-! ## A056138.P10123526413461483698

`A046081(n+1)-A046080(n+1)-A056137(n+1)`
-/

namespace A056138.P10123526413461483698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) - A046080 (n + 1) - A056137 (n + 1)

end

end A056138.P10123526413461483698

/-! ## A056138.P12178467418255431979

`∑{d}[n+1, A024359(#)]`
-/

namespace A056138.P12178467418255431979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024359 d

end

end A056138.P12178467418255431979

/-! ## A056138.P3795789152198641532

`floor(sqrt(A221838(n+1))-A056137(n+1))`
-/

namespace A056138.P3795789152198641532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A221838 (n + 1) : ℝ) - (A056137 (n + 1) : ℝ)⌋

end

end A056138.P3795789152198641532

/-! ## A056138.P6069483386964433406

`A115878(2*(n+1))-A056137(n+1)`
-/

namespace A056138.P6069483386964433406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (2 * (n + 1)) - A056137 (n + 1)

end

end A056138.P6069483386964433406

/-! ## A056138.P14948400415288588445

`A000194(A221837(n+1))-A056137(n+1)`
-/

namespace A056138.P14948400415288588445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A221837 (n + 1)).toNat - A056137 (n + 1)

end

end A056138.P14948400415288588445

/-! ## A056138.P1971141019774062412

`A000194(A221838(n+1))-A056137(n+1)`
-/

namespace A056138.P1971141019774062412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A221838 (n + 1)).toNat - A056137 (n + 1)

end

end A056138.P1971141019774062412

/-!
# A056139: a(n) = n^2 - primefloor(n)*primeceiling(n).

The programs for A056139, the canonical program `A056139.P2026426973506976792` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056139 has offset 2).

The definition of A056139 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030664, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056139.P15310848942032961509

`(n+2)²-A007917(n+2)*A007918(n+2)`
-/

namespace A056139.P15310848942032961509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A007917 (n + 2) * A007918 (n + 2)

end

end A056139.P15310848942032961509

namespace A056139

/-- `(n+2)²-A007917(n+2)*A007918(n+2)` -/
def P15310848942032961509.Spec : Prop :=
  ∀ n, P15310848942032961509.a n = A056139 (n + 2)

end A056139

/-! ## A056139.P2026426973506976792

`(n+2)²-A030664(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056139

/-- `(n+2)²-A030664(n+2)` -/
def P2026426973506976792.Spec : Prop :=
  ∀ n, P2026426973506976792.a n = A056139 (n + 2)

theorem P2026426973506976792.correct : P2026426973506976792.Spec := by
  intro n
  simp only [A056139, Nat.add_sub_cancel]

end A056139

/-! ## A056139.P18275947872030264311

`A000217(n+1)+A000217(n+2)-A030664(n+2)`
-/

namespace A056139.P18275947872030264311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 (n + 2) - A030664 (n + 2))

end

end A056139.P18275947872030264311

namespace A056139

/-- `A000217(n+1)+A000217(n+2)-A030664(n+2)` -/
def P18275947872030264311.Spec : Prop :=
  ∀ n, P18275947872030264311.a n = A056139 (n + 2)

end A056139

/-!
# A056140: a(n) = n^2 - previousprime(n)*nextprime(n), for n>2.

The programs for A056140, the canonical program `A056140.P5331885712081055835` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056140 has offset 3).

The definition of A056140 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013638, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056140.P5331885712081055835

`A000290(n+3)-A013638(n+3)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056140

/-- `A000290(n+3)-A013638(n+3)` -/
def P5331885712081055835.Spec : Prop :=
  ∀ n, P5331885712081055835.a n = A056140 (n + 3)

theorem P5331885712081055835.correct : P5331885712081055835.Spec := by
  intro n
  simp only [A056140, Nat.add_sub_cancel]

end A056140

/-! ## A056140.P15233863894318485663

`(n+3)²-A007917(n+2)*A007918(n+4)`
-/

namespace A056140.P15233863894318485663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - A007917 (n + 2) * A007918 (n + 4)

end

end A056140.P15233863894318485663

namespace A056140

/-- `(n+3)²-A007917(n+2)*A007918(n+4)` -/
def P15233863894318485663.Spec : Prop :=
  ∀ n, P15233863894318485663.a n = A056140 (n + 3)

end A056140

/-! ## A056140.P16730030185418859041

`A056141(n+3)+A056139(n+3)`
-/

namespace A056140.P16730030185418859041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056141 (n + 3) + A056139 (n + 3)

end

end A056140.P16730030185418859041

namespace A056140

/-- `A056141(n+3)+A056139(n+3)` -/
def P16730030185418859041.Spec : Prop :=
  ∀ n, P16730030185418859041.a n = A056140 (n + 3)

end A056140

/-! ## A056140.P5716413509108484863

`(n+3)²-A007917(n+2)*A151800(n+3)`
-/

namespace A056140.P5716413509108484863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - A007917 (n + 2) * A151800 (n + 3)

end

end A056140.P5716413509108484863

namespace A056140

/-- `(n+3)²-A007917(n+2)*A151800(n+3)` -/
def P5716413509108484863.Spec : Prop :=
  ∀ n, P5716413509108484863.a n = A056140 (n + 3)

end A056140

/-! ## A056140.P12301346149088818458

`A000217(n+2)+A000217(n+3)-A013638(n+3)`
-/

namespace A056140.P12301346149088818458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) + (A000217 (n + 3) - A013638 (n + 3))

end

end A056140.P12301346149088818458

namespace A056140

/-- `A000217(n+2)+A000217(n+3)-A013638(n+3)` -/
def P12301346149088818458.Spec : Prop :=
  ∀ n, P12301346149088818458.a n = A056140 (n + 3)

end A056140

/-! ## A056140.P2538140367978887929

`A055999(n+2)+A000217(n)-A013638(n+3)`
-/

namespace A056140.P2538140367978887929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (n + 2) + (A000217 n - A013638 (n + 3))

end

end A056140.P2538140367978887929

namespace A056140

/-- `A055999(n+2)+A000217(n)-A013638(n+3)` -/
def P2538140367978887929.Spec : Prop :=
  ∀ n, P2538140367978887929.a n = A056140 (n + 3)

end A056140

/-! ## A056140.P9705372999470186903

`(n+3)²-(A030664(n+3)-A056141(n+3))`
-/

namespace A056140.P9705372999470186903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - (A030664 (n + 3) - A056141 (n + 3))

end

end A056140.P9705372999470186903

namespace A056140

/-- `(n+3)²-(A030664(n+3)-A056141(n+3))` -/
def P9705372999470186903.Spec : Prop :=
  ∀ n, P9705372999470186903.a n = A056140 (n + 3)

end A056140

/-!
# A056141: a(n) = primefloor(n)*primeceiling(n) - previousprime(n)*nextprime(n).

The programs for A056141, the canonical program `A056141.P7848227700936811261` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056141 has offset 3).

The definition of A056141 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056139, A056140, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056141.P7848227700936811261

`A056140(n+3)-A056139(n+3)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A056141

/-- `A056140(n+3)-A056139(n+3)` -/
def P7848227700936811261.Spec : Prop :=
  ∀ n, P7848227700936811261.a n = A056141 (n + 3)

theorem P7848227700936811261.correct : P7848227700936811261.Spec := by
  intro n
  simp only [A056141, Nat.add_sub_cancel]

end A056141

/-! ## A056141.P17821044207526463619

`A030664(n+3)-A013638(n+3)`
-/

namespace A056141.P17821044207526463619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030664 (n + 3) - A013638 (n + 3)

end

end A056141.P17821044207526463619

namespace A056141

/-- `A030664(n+3)-A013638(n+3)` -/
def P17821044207526463619.Spec : Prop :=
  ∀ n, P17821044207526463619.a n = A056141 (n + 3)

end A056141

/-! ## A056141.P287849608705099288

`A007917(n+3)*A007918(n+3)-A007917(n+2)*A007918(n+4)`
-/

namespace A056141.P287849608705099288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 3) * A007918 (n + 3) - A007917 (n + 2) * A007918 (n + 4)

end

end A056141.P287849608705099288

namespace A056141

/-- `A007917(n+3)*A007918(n+3)-A007917(n+2)*A007918(n+4)` -/
def P287849608705099288.Spec : Prop :=
  ∀ n, P287849608705099288.a n = A056141 (n + 3)

end A056141

/-! ## A056141.P13632191315535561784

`A010051(n+3)*A056140(n+3)`
-/

namespace A056141.P13632191315535561784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 3) * A056140 (n + 3)

end

end A056141.P13632191315535561784

namespace A056141

/-- `A010051(n+3)*A056140(n+3)` -/
def P13632191315535561784.Spec : Prop :=
  ∀ n, P13632191315535561784.a n = A056141 (n + 3)

end A056141

/-! ## A056141.P1898228045399316805

`Δ[A000720(n+2)]*A056140(n+3)`
-/

namespace A056141.P1898228045399316805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A056140 (n + 3)

end

end A056141.P1898228045399316805

namespace A056141

/-- `Δ[A000720(n+2)]*A056140(n+3)` -/
def P1898228045399316805.Spec : Prop :=
  ∀ n, P1898228045399316805.a n = A056141 (n + 3)

end A056141

/-! ## A056141.P17849413547354715381

`A056140(n+3)*A080339(n+3)`
-/

namespace A056141.P17849413547354715381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056140 (n + 3) * A080339 (n + 3)

end

end A056141.P17849413547354715381

namespace A056141

/-- `A056140(n+3)*A080339(n+3)` -/
def P17849413547354715381.Spec : Prop :=
  ∀ n, P17849413547354715381.a n = A056141 (n + 3)

end A056141

/-! ## A056141.P4097674140918006334

`A007917(n+3)*A007918(n+3)-A013638(n+3)`
-/

namespace A056141.P4097674140918006334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 3) * A007918 (n + 3) - A013638 (n + 3)

end

end A056141.P4097674140918006334

namespace A056141

/-- `A007917(n+3)*A007918(n+3)-A013638(n+3)` -/
def P4097674140918006334.Spec : Prop :=
  ∀ n, P4097674140918006334.a n = A056141 (n + 3)

end A056141

/-! ## A056141.P12694854852204077267

`Δ[A230980(n+2)]*A056140(n+3)`
-/

namespace A056141.P12694854852204077267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A056140 (n + 3)

end

end A056141.P12694854852204077267

namespace A056141

/-- `Δ[A230980(n+2)]*A056140(n+3)` -/
def P12694854852204077267.Spec : Prop :=
  ∀ n, P12694854852204077267.a n = A056141 (n + 3)

end A056141

/-!
# A056142: Concatenate n, floor[n/10], floor[n/100] ... (but do not continue if floor[.]=0).

The programs for A056142, the canonical program `A056142.P638140004868031470` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056142 has offset 0).

The definition of A056142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056142.P638140004868031470

`A059995(A275238(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056142

/-- `A059995(A275238(n))` -/
def P638140004868031470.Spec : Prop :=
  ∀ n, P638140004868031470.a n = A056142 n

theorem P638140004868031470.correct : P638140004868031470.Spec := by
  intro n
  simp only [A056142]

end A056142

/-! ## A056142.P12031424994775136807

`A345110(A056143(n))`
-/

namespace A056142.P12031424994775136807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345110 (A056143 n).toNat

end

end A056142.P12031424994775136807

namespace A056142

/-- `A345110(A056143(n))` -/
def P12031424994775136807.Spec : Prop :=
  ∀ n, P12031424994775136807.a n = A056142 n

end A056142

/-! ## A056142.P9562182103020318917

`A262037(A240237(n))`
-/

namespace A056142.P9562182103020318917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262037 (A240237 n).toNat

end

end A056142.P9562182103020318917

namespace A056142

/-- `A262037(A240237(n))` -/
def P9562182103020318917.Spec : Prop :=
  ∀ n, P9562182103020318917.a n = A056142 n

end A056142

/-! ## A056142.P11238414971577499605

`record[A047813(A001633(n+1))]`
-/

namespace A056142.P11238414971577499605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A001633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056142.P11238414971577499605

namespace A056142

/-- `record[A047813(A001633(n+1))]` -/
def P11238414971577499605.Spec : Prop :=
  ∀ n, P11238414971577499605.a n = A056142 n

end A056142

/-! ## A056142.P17992839048086399453

`record[A047813(A201982(n+1))]`
-/

namespace A056142.P17992839048086399453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A201982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056142.P17992839048086399453

namespace A056142

/-- `record[A047813(A201982(n+1))]` -/
def P17992839048086399453.Spec : Prop :=
  ∀ n, P17992839048086399453.a n = A056142 n

end A056142

/-! ## A056142.P14539959062786814226

`record[A082216(A321537(11*n))]`
-/

namespace A056142.P14539959062786814226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A321537 (11 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056142.P14539959062786814226

namespace A056142

/-- `record[A082216(A321537(11*n))]` -/
def P14539959062786814226.Spec : Prop :=
  ∀ n, P14539959062786814226.a n = A056142 n

end A056142

/-! ## A056142.P9663816107458894053

`record[A047813(gcd(n, A110725(n)))]`
-/

namespace A056142.P9663816107458894053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (Int.gcd (n : ℤ) (A110725 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056142.P9663816107458894053

namespace A056142

/-- `record[A047813(gcd(n, A110725(n)))]` -/
def P9663816107458894053.Spec : Prop :=
  ∀ n, P9663816107458894053.a n = A056142 n

end A056142

/-! ## A056142.P7431714114305691211

`filter[A201982(n+1), A136522(#)]`
-/

namespace A056142.P7431714114305691211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A056142.P7431714114305691211

namespace A056142

/-- `filter[A201982(n+1), A136522(#)]` -/
def P7431714114305691211.Spec : Prop :=
  ∀ n, P7431714114305691211.a n = A056142 n

end A056142

/-! ## A056142.P4057518792923367729

`floor(A004442(n*(A061601(n)+2+n))/10)`
-/

namespace A056142.P4057518792923367729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004442 ((n : ℤ) * (A061601 n + 2 + (n : ℤ))).toNat : ℚ) / 10⌋

end

end A056142.P4057518792923367729

namespace A056142

/-- `floor(A004442(n*(A061601(n)+2+n))/10)` -/
def P4057518792923367729.Spec : Prop :=
  ∀ n, P4057518792923367729.a n = A056142 n

end A056142

/-! ## A056142.P8761773689113880979

`A169932(A051022(n))+A004086(n)`
-/

namespace A056142.P8761773689113880979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169932 (A051022 n).toNat + A004086 n

end

end A056142.P8761773689113880979

namespace A056142

/-- `A169932(A051022(n))+A004086(n)` -/
def P8761773689113880979.Spec : Prop :=
  ∀ n, P8761773689113880979.a n = A056142 n

end A056142

/-! ## A056142.P12868907028320911347

`A004086(A056143(n)-A056965(n))`
-/

namespace A056142.P12868907028320911347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A056143 n - A056965 n).toNat

end

end A056142.P12868907028320911347

namespace A056142

/-- `A004086(A056143(n)-A056965(n))` -/
def P12868907028320911347.Spec : Prop :=
  ∀ n, P12868907028320911347.a n = A056142 n

end A056142

/-! ## A056142.P478590327169898167

`A020485(A056143(n)-A056965(n))`
-/

namespace A056142.P478590327169898167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A056143 n - A056965 n).toNat

end

end A056142.P478590327169898167

namespace A056142

/-- `A020485(A056143(n)-A056965(n))` -/
def P478590327169898167.Spec : Prop :=
  ∀ n, P478590327169898167.a n = A056142 n

end A056142

/-! ## A056142.P6170398963055298366

`A056525(A028310(n))%A008574(n²)`
-/

namespace A056142.P6170398963055298366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056525 (A028310 n).toNat) (A008574 (n ^ 2))

end

end A056142.P6170398963055298366

namespace A056142

/-- `A056525(A028310(n))%A008574(n²)` -/
def P6170398963055298366.Spec : Prop :=
  ∀ n, P6170398963055298366.a n = A056142 n

end A056142

/-! ## A056142.P5107126148337974774

`eq[2*A064834(n), A004248(A138902(n))]`
-/

namespace A056142.P5107126148337974774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064834 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A138902 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056142.P5107126148337974774

namespace A056142

/-- `eq[2*A064834(n), A004248(A138902(n))]` -/
def P5107126148337974774.Spec : Prop :=
  ∀ n, (P5107126148337974774.a n : ℤ) = A056142 n

end A056142

/-! ## A056142.P8109853766817423858

`A004086(A004086(n)-(n-A056143(n)))`
-/

namespace A056142.P8109853766817423858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 n - ((n : ℤ) - A056143 n)).toNat

end

end A056142.P8109853766817423858

namespace A056142

/-- `A004086(A004086(n)-(n-A056143(n)))` -/
def P8109853766817423858.Spec : Prop :=
  ∀ n, P8109853766817423858.a n = A056142 n

end A056142

/-! ## A056142.P14437802017389110953

`record[n*A000035(A332550(n))-A256756(n)]`
-/

namespace A056142.P14437802017389110953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 (A332550 n).toNat - A256756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056142.P14437802017389110953

namespace A056142

/-- `record[n*A000035(A332550(n))-A256756(n)]` -/
def P14437802017389110953.Spec : Prop :=
  ∀ n, P14437802017389110953.a n = A056142 n

end A056142

/-! ## A056142.P10504662348785686242

`A056525(A123108(2*n))%A072857(n+1)`
-/

namespace A056142.P10504662348785686242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056525 (A123108 (2 * n)).toNat) (A072857 (n + 1))

end

end A056142.P10504662348785686242

namespace A056142

/-- `A056525(A123108(2*n))%A072857(n+1)` -/
def P10504662348785686242.Spec : Prop :=
  ∀ n, P10504662348785686242.a n = A056142 n

end A056142

/-! ## A056142.P14205600344637163370

`A056525(A132350((n+1)²)+n)*A057427(n)`
-/

namespace A056142.P14205600344637163370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A132350 ((n + 1) ^ 2) + (n : ℤ)).toNat * A057427 n

end

end A056142.P14205600344637163370

namespace A056142

/-- `A056525(A132350((n+1)²)+n)*A057427(n)` -/
def P14205600344637163370.Spec : Prop :=
  ∀ n, P14205600344637163370.a n = A056142 n

end A056142

/-! ## A056142.P3263568372114672076

`A056525(1-A057427(n)+n)%A082260(n+1)`
-/

namespace A056142.P3263568372114672076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056525 (1 - A057427 n + (n : ℤ)).toNat) (A082260 (n + 1))

end

end A056142.P3263568372114672076

namespace A056142

/-- `A056525(1-A057427(n)+n)%A082260(n+1)` -/
def P3263568372114672076.Spec : Prop :=
  ∀ n, P3263568372114672076.a n = A056142 n

end A056142

/-! ## A056142.P4304985604408216794

`A056525(A132350((n+1)²)+n)%A036469(2*n)`
-/

namespace A056142.P4304985604408216794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056525 (A132350 ((n + 1) ^ 2) + (n : ℤ)).toNat) (A036469 (2 * n))

end

end A056142.P4304985604408216794

namespace A056142

/-- `A056525(A132350((n+1)²)+n)%A036469(2*n)` -/
def P4304985604408216794.Spec : Prop :=
  ∀ n, P4304985604408216794.a n = A056142 n

end A056142

/-!
# A056143: Concatenate ... floor[n/100], floor[n/10], n.

The programs for A056143, the canonical program `A056143.P7499423160448057377` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056143 has offset 0).

The definition of A056143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056143.P11788406084322423272

`A059995(A338754(n))`
-/

namespace A056143.P11788406084322423272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A338754 n).toNat

end

end A056143.P11788406084322423272

namespace A056143

/-- `A059995(A338754(n))` -/
def P11788406084322423272.Spec : Prop :=
  ∀ n, P11788406084322423272.a n = A056143 n

end A056143

/-! ## A056143.P10641563434852746125

`A057367(3*A051022(n))`
-/

namespace A056143.P10641563434852746125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (3 * A051022 n).toNat

end

end A056143.P10641563434852746125

namespace A056143

/-- `A057367(3*A051022(n))` -/
def P10641563434852746125.Spec : Prop :=
  ∀ n, P10641563434852746125.a n = A056143 n

end A056143

/-! ## A056143.P5602776188131164302

`A059995(11*A051022(n))`
-/

namespace A056143.P5602776188131164302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (11 * A051022 n).toNat

end

end A056143.P5602776188131164302

namespace A056143

/-- `A059995(11*A051022(n))` -/
def P5602776188131164302.Spec : Prop :=
  ∀ n, P5602776188131164302.a n = A056143 n

end A056143

/-! ## A056143.P7499423160448057377

`eq[0, A076313(A059995(n))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056143

/-- `eq[0, A076313(A059995(n))]` -/
def P7499423160448057377.Spec : Prop :=
  ∀ n, (P7499423160448057377.a n : ℤ) = A056143 n

theorem P7499423160448057377.correct : P7499423160448057377.Spec := by
  intro n
  simp only [A056143]

end A056143

/-! ## A056143.P5546871560566776722

`eq[n, A039723(A028904(n))]`
-/

namespace A056143.P5546871560566776722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 (A028904 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056143.P5546871560566776722

namespace A056143

/-- `eq[n, A039723(A028904(n))]` -/
def P5546871560566776722.Spec : Prop :=
  ∀ n, (P5546871560566776722.a n : ℤ) = A056143 n

end A056143

/-! ## A056143.P2227192837822097572

`eq[A028904(n), A073835(n)]`
-/

namespace A056143.P2227192837822097572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056143.P2227192837822097572

namespace A056143

/-- `eq[A028904(n), A073835(n)]` -/
def P2227192837822097572.Spec : Prop :=
  ∀ n, (P2227192837822097572.a n : ℤ) = A056143 n

end A056143

/-! ## A056143.P17133221086635388763

`eq[A073835(n), A324161(n)]`
-/

namespace A056143.P17133221086635388763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056143.P17133221086635388763

namespace A056143

/-- `eq[A073835(n), A324161(n)]` -/
def P17133221086635388763.Spec : Prop :=
  ∀ n, (P17133221086635388763.a n : ℤ) = A056143 n

end A056143

/-! ## A056143.P1203891931637782192

`A160542(A051022(n)+1)-1`
-/

namespace A056143.P1203891931637782192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (A051022 n + 1).toNat - 1

end

end A056143.P1203891931637782192

namespace A056143

/-- `A160542(A051022(n)+1)-1` -/
def P1203891931637782192.Spec : Prop :=
  ∀ n, P1203891931637782192.a n = A056143 n

end A056143

/-! ## A056143.P4812748156219690460

`A056965(n)+A004086(A056142(n))`
-/

namespace A056143.P4812748156219690460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n + A004086 (A056142 n).toNat

end

end A056143.P4812748156219690460

namespace A056143

/-- `A056965(n)+A004086(A056142(n))` -/
def P4812748156219690460.Spec : Prop :=
  ∀ n, P4812748156219690460.a n = A056143 n

end A056143

/-! ## A056143.P7650180930672655308

`A076312(A338754(n)-A010879(n))`
-/

namespace A056143.P7650180930672655308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 (A338754 n - A010879 n).toNat

end

end A056143.P7650180930672655308

namespace A056143

/-- `A076312(A338754(n)-A010879(n))` -/
def P7650180930672655308.Spec : Prop :=
  ∀ n, P7650180930672655308.a n = A056143 n

end A056143

/-!
# A056145: Palindromic primes in bases 2 and 8.

The programs for A056145, there is no canonical definition to state claims against.
-/

/-! ## A056145.P8971039581956249043

`∩[A016041(n+1), A029976(n+1)]`
-/

namespace A056145.P8971039581956249043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056145.P8971039581956249043

/-! ## A056145.P13017854973459321164

`∩[A029976(n+1), A163410(n+1)]`
-/

namespace A056145.P13017854973459321164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056145.P13017854973459321164

/-! ## A056145.P13521115826684927618

`∩[A016041(n+1), A259380(n+1)]`
-/

namespace A056145.P13521115826684927618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056145.P13521115826684927618

/-! ## A056145.P6927522582914950249

`∩[A029976(n+1), A259380(n+1)]`
-/

namespace A056145.P6927522582914950249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056145.P6927522582914950249

/-! ## A056145.P2296855868349324760

`∩[A029976(n+1), A329419(n+1)]`
-/

namespace A056145.P2296855868349324760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056145.P2296855868349324760

/-!
# A056146: Palindromic primes in bases 4 and 8.

The programs for A056146, there is no canonical definition to state claims against.
-/

/-! ## A056146.P2835793673632561836

`∩[A029972(n+1), A029976(n+1)]`
-/

namespace A056146.P2835793673632561836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056146.P2835793673632561836

/-! ## A056146.P8076116284045199417

`∩[A029972(n+1), A259382(n+1)]`
-/

namespace A056146.P8076116284045199417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056146.P8076116284045199417

/-! ## A056146.P3812314626189390148

`∩[A029976(n+1), A259382(n+1)]`
-/

namespace A056146.P3812314626189390148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056146.P3812314626189390148

/-! ## A056146.P13870604657449073570

`∩[A255161(n+1), A259382(n+1)]`
-/

namespace A056146.P13870604657449073570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056146.P13870604657449073570

/-! ## A056146.P12002834158699084125

`∩[A014192(n+1), A029976(n+1)]`
-/

namespace A056146.P12002834158699084125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056146.P12002834158699084125

/-!
# A056147: a(1) = 1, a(m+1) = Sum_{k=1..m} lcm(m, a(k)).

The programs for A056147, there is no canonical definition to state claims against.
-/

/-! ## A056147.P4058028154819882383

`A000005(A258659(n))*A304620(n)`
-/

namespace A056147.P4058028154819882383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A258659 n).toNat * A304620 n

end

end A056147.P4058028154819882383

/-! ## A056147.P3761201324298961543

`A119948(A037444(n))`
-/

namespace A056147.P3761201324298961543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119948 (A037444 n).toNat

end

end A056147.P3761201324298961543

/-!
# A056148: a(0) = 1, a(n) = number of a(k), for 0 <= k <= n-1, that divide n.

The programs for A056148, there is no canonical definition to state claims against.
-/

/-! ## A056148.P12176883049741715457

`A070939(A371737(3*n+2)+A000120(n))`
-/

namespace A056148.P12176883049741715457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A371737 (3 * n + 2) + A000120 n).toNat

end

end A056148.P12176883049741715457

/-! ## A056148.P14247918436675657976

`A070939(A371737(3*n+2)+A001222(n+1))`
-/

namespace A056148.P14247918436675657976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A371737 (3 * n + 2) + A001222 (n + 1)).toNat

end

end A056148.P14247918436675657976

/-! ## A056148.P16255803480514326921

`A000194(A146993(n+1)+A008620(n))`
-/

namespace A056148.P16255803480514326921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A146993 (n + 1) + A008620 n).toNat

end

end A056148.P16255803480514326921

/-! ## A056148.P8314223426323588586

`A158416(n)+val(A168263(n+1), 3)`
-/

namespace A056148.P8314223426323588586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n + (SequenceMachineLib.valuation (A168263 (n + 1)).toNat 3 : ℤ)

end

end A056148.P8314223426323588586

/-! ## A056148.P4573792719281223305

`A167966(A189441(n+1))+A142150(n)`
-/

namespace A056148.P4573792719281223305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167966 (A189441 (n + 1)).toNat + A142150 n

end

end A056148.P4573792719281223305

/-!
# A056149: a(0) = 1, a(m) = number of a(k), 0 <= k <= m-1, where gcd(m, a(k)) = 1.

The programs for A056149, there is no canonical definition to state claims against.
-/

/-! ## A056149.P2119381389976394071

`A123175(A130490(n)+n)`
-/

namespace A056149.P2119381389976394071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123175 (A130490 n + (n : ℤ)).toNat

end

end A056149.P2119381389976394071

/-! ## A056149.P3166241823844892670

`A123175(∑[n])`
-/

namespace A056149.P3166241823844892670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123175 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056149.P3166241823844892670

/-! ## A056149.P11418320991643253439

`A123175(A000217(n))%12`
-/

namespace A056149.P11418320991643253439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123175 (A000217 n).toNat) 12

end

end A056149.P11418320991643253439

/-! ## A056149.P6496144373437391264

`A123175(A000217(n))*A262681(n)`
-/

namespace A056149.P6496144373437391264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123175 (A000217 n).toNat * A262681 n

end

end A056149.P6496144373437391264

/-! ## A056149.P10071211838446685894

`∑{d}[A123175(A000217(n)), A000010(#)]`
-/

namespace A056149.P10071211838446685894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123175 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A056149.P10071211838446685894

/-!
# A056150: Number of combinations for each possible sum when throwing 3 (normal) dice.

The programs for A056150, there is no canonical definition to state claims against.
-/

/-! ## A056150.P11749032444952783103

`A063260(n+18)`
-/

namespace A056150.P11749032444952783103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063260 (n + 18)

end

end A056150.P11749032444952783103

/-! ## A056150.P8007709732885963041

`A109439(n+36)`
-/

namespace A056150.P8007709732885963041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109439 (n + 36)

end

end A056150.P8007709732885963041

/-! ## A056150.P12619348550867441112

`A061676(∑[n+2]+4)`
-/

namespace A056150.P12619348550867441112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061676 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A056150.P12619348550867441112

/-! ## A056150.P18119278274144542789

`∑[∑[A022597(floor(n/6))]]`
-/

namespace A056150.P18119278274144542789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022597 ⌊(n : ℚ) / 6⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056150.P18119278274144542789

/-! ## A056150.P3188418236956955814

`∑[∑[A049444(floor(n/6))]]`
-/

namespace A056150.P3188418236956955814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049444 ⌊(n : ℚ) / 6⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056150.P3188418236956955814

/-!
# A056151: Distribution of maximum inversion table entry.

The programs for A056151, the canonical program `A056151.P15025192425503325916` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056151 has offset 1).

The definition of A056151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2536 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056151.P13671459170366976923

`A233543(n)*A343237(n)`
-/

namespace A056151.P13671459170366976923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A343237 n

end

end A056151.P13671459170366976923

namespace A056151

/-- `A233543(n)*A343237(n)` -/
def P13671459170366976923.Spec : Prop :=
  ∀ n, P13671459170366976923.a n = A056151 (n + 1)

end A056151

/-! ## A056151.P1796376329445131927

`A002262(n)!*A343237(n)`
-/

namespace A056151.P1796376329445131927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A343237 n

end

end A056151.P1796376329445131927

namespace A056151

/-- `A002262(n)!*A343237(n)` -/
def P1796376329445131927.Spec : Prop :=
  ∀ n, P1796376329445131927.a n = A056151 (n + 1)

end A056151

/-! ## A056151.P13407265340194387363

`A144328(n+1)!*A343237(n)`
-/

namespace A056151.P13407265340194387363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A343237 n

end

end A056151.P13407265340194387363

namespace A056151

/-- `A144328(n+1)!*A343237(n)` -/
def P13407265340194387363.Spec : Prop :=
  ∀ n, P13407265340194387363.a n = A056151 (n + 1)

end A056151

/-! ## A056151.P15025192425503325916

`A047969(A061579(n))*A233543(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A056151

/-- `A047969(A061579(n))*A233543(n)` -/
def P15025192425503325916.Spec : Prop :=
  ∀ n, P15025192425503325916.a n = A056151 (n + 1)

theorem P15025192425503325916.correct : P15025192425503325916.Spec := by
  intro n
  simp only [A056151, Nat.add_sub_cancel]

end A056151

/-! ## A056151.P3916418607857450504

`A119502(A061579(n))*A343237(n)`
-/

namespace A056151.P3916418607857450504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A061579 n).toNat * A343237 n

end

end A056151.P3916418607857450504

namespace A056151

/-- `A119502(A061579(n))*A343237(n)` -/
def P3916418607857450504.Spec : Prop :=
  ∀ n, P3916418607857450504.a n = A056151 (n + 1)

end A056151

/-! ## A056151.P14307058899022370770

`A265312(A245300(n))*A343237(n)`
-/

namespace A056151.P14307058899022370770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265312 (A245300 n).toNat * A343237 n

end

end A056151.P14307058899022370770

namespace A056151

/-- `A265312(A245300(n))*A343237(n)` -/
def P14307058899022370770.Spec : Prop :=
  ∀ n, P14307058899022370770.a n = A056151 (n + 1)

end A056151

/-! ## A056151.P4898903638722217867

`A136494(A059268(n))*A343237(n)`
-/

namespace A056151.P4898903638722217867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136494 (A059268 n).toNat * A343237 n

end

end A056151.P4898903638722217867

namespace A056151

/-- `A136494(A059268(n))*A343237(n)` -/
def P4898903638722217867.Spec : Prop :=
  ∀ n, P4898903638722217867.a n = A056151 (n + 1)

end A056151

/-! ## A056151.P13862829174357130205

`A047969(A061579(n))*A112624(A059268(n))`
-/

namespace A056151.P13862829174357130205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 (A061579 n).toNat * A112624 (A059268 n).toNat

end

end A056151.P13862829174357130205

namespace A056151

/-- `A047969(A061579(n))*A112624(A059268(n))` -/
def P13862829174357130205.Spec : Prop :=
  ∀ n, P13862829174357130205.a n = A056151 (n + 1)

end A056151

/-!
# A056152: Triangular array giving number of bipartite graphs with n vertices, no isolated vertices and a distinguished bipartite block with k=1..n-1 vertices, up to isomorphism.

The programs for A056152, there is no canonical definition to state claims against.
-/

/-! ## A056152.P3610078348466409610

`A122083(eq[0, A103451(n)])`
-/

namespace A056152.P3610078348466409610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056152.P3610078348466409610

/-! ## A056152.P1338613464940045805

`A122083(eq[0, A103452(n)])`
-/

namespace A056152.P1338613464940045805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056152.P1338613464940045805

/-! ## A056152.P15502340571554547576

`A122083(eq[0, A145677(n)])`
-/

namespace A056152.P15502340571554547576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056152.P15502340571554547576

/-! ## A056152.P880120360835078097

`A122083(lt[1, A008459(n)])`
-/

namespace A056152.P880120360835078097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A056152.P880120360835078097

/-! ## A056152.P18205398055416784539

`A122083(lt[1, A028657(n)])`
-/

namespace A056152.P18205398055416784539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A056152.P18205398055416784539

/-! ## A056152.P7102992523828786913

`A122083(record[n%A008459(n)])`
-/

namespace A056152.P7102992523828786913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A008459 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122083 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056152.P7102992523828786913

/-! ## A056152.P10120662806142192556

`A122083(lt[0, n*A122083(n)])`
-/

namespace A056152.P10120662806142192556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A122083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A056152.P10120662806142192556

/-! ## A056152.P13107190951844981111

`A122083(A003057(n+2)²-n)`
-/

namespace A056152.P13107190951844981111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122083 (A003057 (n + 2) ^ 2 - (n : ℤ)).toNat

end

end A056152.P13107190951844981111

/-! ## A056152.P7308365955075970361

`A122083(lt[log(2)^n, A122083(n)])`
-/

namespace A056152.P7308365955075970361
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (2 : ℝ) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122083 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)

end

end A056152.P7308365955075970361

/-! ## A056152.P15973707039285229814

`A122083(2*A003057(n+2)+n)`
-/

namespace A056152.P15973707039285229814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122083 (2 * A003057 (n + 2) + (n : ℤ)).toNat

end

end A056152.P15973707039285229814

/-! ## A056152.P5985055938125918055

`A122083(2*A014132(n+1)-n)`
-/

namespace A056152.P5985055938125918055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122083 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A056152.P5985055938125918055

/-! ## A056152.P8015935032109951371

`A122083(comp[n-A007318(n)²]+1)`
-/

namespace A056152.P8015935032109951371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007318 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122083 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A056152.P8015935032109951371

/-! ## A056152.P11169945009471514556

`A122083(A014132(A014132(n+1)))`
-/

namespace A056152.P11169945009471514556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122083 (A014132 (A014132 (n + 1)).toNat).toNat

end

end A056152.P11169945009471514556

/-! ## A056152.P9054911157042288850

`A122083(A007401(A007401(n+1)+2))`
-/

namespace A056152.P9054911157042288850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122083 (A007401 (A007401 (n + 1) + 2).toNat).toNat

end

end A056152.P9054911157042288850

/-!
# A056153: Leading least prime signatures: a(n) is in A025487 but a(n)/2 is not.

The programs for A056153, there is no canonical definition to state claims against.
-/

/-! ## A056153.P15770961870626470463

`A025487(A329897(n+1))`
-/

namespace A056153.P15770961870626470463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A329897 (n + 1)).toNat

end

end A056153.P15770961870626470463

/-! ## A056153.P10204410391345097582

`A025487(record[(n+1)*A330682(n+1)])`
-/

namespace A056153.P10204410391345097582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A330682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056153.P10204410391345097582

/-! ## A056153.P10129086738384888828

`A025487(eq[A051282(n+1), A060826(n+1)]+1)`
-/

namespace A056153.P10129086738384888828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A056153.P10129086738384888828

/-! ## A056153.P18244374982968769843

`record[record[A329899(n+1)]*A330682(n+1)]`
-/

namespace A056153.P18244374982968769843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A330682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056153.P18244374982968769843

/-! ## A056153.P10278330439124943676

`record[record[A051466(n+2)]*A330682(n+1)]`
-/

namespace A056153.P10278330439124943676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A330682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056153.P10278330439124943676

/-! ## A056153.P11258572561817092012

`A329899(A329898(A329897(A329904(A329898(n+1)))))`
-/

namespace A056153.P11258572561817092012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (A329898 (A329897 (A329904 (A329898 (n + 1)).toNat).toNat).toNat).toNat

end

end A056153.P11258572561817092012

/-! ## A056153.P8379710248153050292

`A055932(record[A330682(n+1)*A331119(n+1)])`
-/

namespace A056153.P8379710248153050292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330682 (n + 1) * A331119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056153.P8379710248153050292

/-!
# A056154: Numbers n such that the number of times each digit occurs in 2^n, represented in base 3, is the same as 2^(n+1), also represented in base 3. Or in other words, when represented in base 3, the digits in 2^n can be rearranged to form 2^(n+1).

The programs for A056154, there is no canonical definition to state claims against.
-/

/-! ## A056154.P16701121154813417737

`∩[A056734(n+1), A056735(n+1)]`
-/

namespace A056154.P16701121154813417737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056154.P16701121154813417737

/-! ## A056154.P17323822909580934019

`∩[A056734(n+1), A056736(n+1)]`
-/

namespace A056154.P17323822909580934019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056154.P17323822909580934019

/-! ## A056154.P13542398811838575309

`∩[A056735(n+1), A056736(n+1)]`
-/

namespace A056154.P13542398811838575309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056154.P13542398811838575309

/-!
# A056155: Positive integer k, 1 <= k <= n, which maximizes k^(n+1-k).

The programs for A056155, there is no canonical definition to state claims against.
-/

/-! ## A056155.P7586268729265687456

`A065475(n+1)-A125229(n+2)`
-/

namespace A056155.P7586268729265687456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) - A125229 (n + 2)

end

end A056155.P7586268729265687456

/-! ## A056155.P4936764760589225792

`n+2-(A125229(n+2)+A000007(n))`
-/

namespace A056155.P4936764760589225792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (A125229 (n + 2) + A000007 n)

end

end A056155.P4936764760589225792

/-! ## A056155.P15654400643450960237

`n+3-(A125229(n+2)+A014963(4*n+2))`
-/

namespace A056155.P15654400643450960237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (A125229 (n + 2) + A014963 (4 * n + 2))

end

end A056155.P15654400643450960237

/-! ## A056155.P11280847050458356599

`A028310(n+2)-A028310(A125229(n+2))`
-/

namespace A056155.P11280847050458356599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 2) - A028310 (A125229 (n + 2)).toNat

end

end A056155.P11280847050458356599

/-! ## A056155.P8107959441087048512

`A127321(A292564(n)+A001304(n))`
-/

namespace A056155.P8107959441087048512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A292564 n + A001304 n).toNat

end

end A056155.P8107959441087048512

/-!
# A056156: Number of connected bipartite graphs with n edges, no isolated vertices and a distinguished bipartite block, up to isomorphism.

The programs for A056156, there is no canonical definition to state claims against.
-/

/-! ## A056156.P440123685945709387

`A049311(n+1)+A319791(n+1)-A319748(n+1)`
-/

namespace A056156.P440123685945709387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049311 (n + 1) + (A319791 (n + 1) - A319748 (n + 1))

end

end A056156.P440123685945709387

/-! ## A056156.P2286254261222868717

`round(A227007(2*(n+1))/(n+3))`
-/

namespace A056156.P2286254261222868717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A227007 (2 * (n + 1)) : ℚ) / (n + 3 : ℚ))

end

end A056156.P2286254261222868717

/-!
# A056157: Primes p whose period of reciprocal equals (p-1)/4.

The programs for A056157, there is no canonical definition to state claims against.
-/

/-! ## A056157.P3749978903041327299

`A000040(eq[4, A006556(n+3)]+3)`
-/

namespace A056157.P3749978903041327299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006556 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A056157.P3749978903041327299

/-! ## A056157.P15083363780602587006

`A001748(eq[4, A006556(n+3)]+3)/3`
-/

namespace A056157.P15083363780602587006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006556 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3) : ℚ) / 3

end

end A056157.P15083363780602587006

/-!
# A056158: Equivalent of the Kurepa hypothesis for left factorial.

The programs for A056158, there is no canonical definition to state claims against.
-/

/-! ## A056158.P5820177085190214973

`-(2*A179508(n+1))`
-/

namespace A056158.P5820177085190214973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * A179508 (n + 1))

end

end A056158.P5820177085190214973

/-! ## A056158.P953123026092033519

`-(2*(A182386(n)+1))`
-/

namespace A056158.P953123026092033519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * (A182386 n + 1))

end

end A056158.P953123026092033519

/-! ## A056158.P4163952753577768316

`2*n-4*A009281(n)`
-/

namespace A056158.P4163952753577768316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 4 * A009281 n

end

end A056158.P4163952753577768316

/-! ## A056158.P2527905609782226327

`2*(A054516(n+3)-(n+2))`
-/

namespace A056158.P2527905609782226327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054516 (n + 3) - (n + 2 : ℤ))

end

end A056158.P2527905609782226327

/-! ## A056158.P13911621881961421944

`A051398(n+3)-2*(n+3)`
-/

namespace A056158.P13911621881961421944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051398 (n + 3) - (2 * (n + 3) : ℤ)

end

end A056158.P13911621881961421944

/-! ## A056158.P5793213153351570317

`(2*A179508(n+1)+2)/A134824(n+2)+2`
-/

namespace A056158.P5793213153351570317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A179508 (n + 1) + 2 : ℚ) / (A134824 (n + 2) : ℚ) + 2

end

end A056158.P5793213153351570317

/-! ## A056158.P9394576905117191001

`A051037(A159288(C(3, n))+1)%2-2*A179508(n+1)`
-/

namespace A056158.P9394576905117191001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051037 (A159288 (Nat.choose 3 n) + 1).toNat) 2 - 2 * A179508 (n + 1)

end

end A056158.P9394576905117191001

/-! ## A056158.P17582752626313787616

`2*(A309973(A179865(n+1))-A179508(n+1))`
-/

namespace A056158.P17582752626313787616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A309973 (A179865 (n + 1)).toNat - A179508 (n + 1))

end

end A056158.P17582752626313787616

/-! ## A056158.P15844146374642601404

`A179508(n+1)*A280560(A063394(n))`
-/

namespace A056158.P15844146374642601404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179508 (n + 1) * A280560 (A063394 n).toNat

end

end A056158.P15844146374642601404

/-!
# A056159: a(n) = floor(10^(n-1)/n).

The programs for A056159, the canonical program `A056159.P5586754651532778801` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056159 has offset 1).

The definition of A056159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(10^n/(n+1))` (program `A056159.P5586754651532778801`, by `A056159.P5586754651532778801.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056159.P5586754651532778801

`floor(10^n/(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056159

/-- `floor(10^n/(n+1))` -/
def P5586754651532778801.Spec : Prop :=
  ∀ n, P5586754651532778801.a n = A056159 (n + 1)

theorem P5586754651532778801.correct : P5586754651532778801.Spec := by
  intro n
  simp only [A056159, Nat.add_sub_cancel]

end A056159

/-! ## A056159.P5334246417748932126

`A066559(n+1)+A057428(A051626(n+1))`
-/

namespace A056159.P5334246417748932126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066559 (n + 1) + A057428 (A051626 (n + 1)).toNat

end

end A056159.P5334246417748932126

namespace A056159

/-- `A066559(n+1)+A057428(A051626(n+1))` -/
def P5334246417748932126.Spec : Prop :=
  ∀ n, P5334246417748932126.a n = A056159 (n + 1)

end A056159

/-! ## A056159.P16054475665198790947

`A066559(n+1)+A057428(A066209(n+1))`
-/

namespace A056159.P16054475665198790947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066559 (n + 1) + A057428 (A066209 (n + 1)).toNat

end

end A056159.P16054475665198790947

namespace A056159

/-- `A066559(n+1)+A057428(A066209(n+1))` -/
def P16054475665198790947.Spec : Prop :=
  ∀ n, P16054475665198790947.a n = A056159 (n + 1)

end A056159

/-! ## A056159.P11954255420602032587

`A066559(n+1)-A178334(A056968(n+1))`
-/

namespace A056159.P11954255420602032587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066559 (n + 1) - A178334 (A056968 (n + 1)).toNat

end

end A056159.P11954255420602032587

namespace A056159

/-- `A066559(n+1)-A178334(A056968(n+1))` -/
def P11954255420602032587.Spec : Prop :=
  ∀ n, P11954255420602032587.a n = A056159 (n + 1)

end A056159

/-! ## A056159.P2018175675764117554

`A066559(n+1)-A178334(A056969(n+1))`
-/

namespace A056159.P2018175675764117554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066559 (n + 1) - A178334 (A056969 (n + 1)).toNat

end

end A056159.P2018175675764117554

namespace A056159

/-- `A066559(n+1)-A178334(A056969(n+1))` -/
def P2018175675764117554.Spec : Prop :=
  ∀ n, P2018175675764117554.a n = A056159 (n + 1)

end A056159

/-! ## A056159.P4115852705529929267

`ceil(A024115(n)/(n+1))`
-/

namespace A056159.P4115852705529929267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024115 n : ℚ) / (n + 1 : ℚ)⌉

end

end A056159.P4115852705529929267

namespace A056159

/-- `ceil(A024115(n)/(n+1))` -/
def P4115852705529929267.Spec : Prop :=
  ∀ n, P4115852705529929267.a n = A056159 (n + 1)

end A056159

/-!
# A056160: Sum of A054988 and A054989.

The programs for A056160, there is no canonical definition to state claims against.
-/

/-! ## A056160.P185896798912536957

`A054989(n+1)+A054988(n+1)`
-/

namespace A056160.P185896798912536957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054989 (n + 1) + A054988 (n + 1)

end

end A056160.P185896798912536957

/-! ## A056160.P3347026889388027160

`A054988(n+1)+A048675(A366808(n+1))`
-/

namespace A056160.P3347026889388027160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054988 (n + 1) + A048675 (A366808 (n + 1)).toNat

end

end A056160.P3347026889388027160

/-! ## A056160.P16204357245551071876

`A080791(2*A366808(n+1)+1)+A054988(n+1)`
-/

namespace A056160.P16204357245551071876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * A366808 (n + 1) + 1).toNat + A054988 (n + 1)

end

end A056160.P16204357245551071876

/-! ## A056160.P12709393639321056888

`A080791(2*A366808(n+1)+1)+A000005(A366811(n+1)/2)`
-/

namespace A056160.P12709393639321056888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * A366808 (n + 1) + 1).toNat + A000005 (SequenceMachineLib.roundAway ((A366811 (n + 1) : ℚ) / 2)).toNat

end

end A056160.P12709393639321056888

/-! ## A056160.P17441362386039563374

`A080791(2*A366808(n+1)+1)+A001511(A366811(n+1)/2)`
-/

namespace A056160.P17441362386039563374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * A366808 (n + 1) + 1).toNat + A001511 (SequenceMachineLib.roundAway ((A366811 (n + 1) : ℚ) / 2)).toNat

end

end A056160.P17441362386039563374

/-!
# A056161: Solutions (value of x) of Diophantine equation 2*x^2 + 3*x + 2 = r^2.

The programs for A056161, the canonical program `A056161.P228021813458941099` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056161 has offset 0).

The definition of A056161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056161.P228021813458941099

`floor(A055979(n)/sqrt(2))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056161

/-- `floor(A055979(n)/sqrt(2))` -/
def P228021813458941099.Spec : Prop :=
  ∀ n, P228021813458941099.a n = A056161 n

theorem P228021813458941099.correct : P228021813458941099.Spec := by
  intro n
  simp only [A056161]

end A056161

/-! ## A056161.P4461290546859205650

`∑[∑[A077444(char[2*n]+n)]]+n`
-/

namespace A056161.P4461290546859205650
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077444 ((if ∃ j, f3 j = n then 1 else 0) + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A056161.P4461290546859205650

namespace A056161

/-- `∑[∑[A077444(char[2*n]+n)]]+n` -/
def P4461290546859205650.Spec : Prop :=
  ∀ n, P4461290546859205650.a n = A056161 n

end A056161

/-! ## A056161.P1976420871907859066

`Δ[A011900(n)]-A000129(n)*A077985(n+1)`
-/

namespace A056161.P1976420871907859066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000129 n * A077985 (n + 1)

end

end A056161.P1976420871907859066

namespace A056161

/-- `Δ[A011900(n)]-A000129(n)*A077985(n+1)` -/
def P1976420871907859066.Spec : Prop :=
  ∀ n, P1976420871907859066.a n = A056161 n

end A056161

/-! ## A056161.P8435332939047753127

`A001542(n+1)-A000129(n)*A077985(n+1)`
-/

namespace A056161.P8435332939047753127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 (n + 1) - A000129 n * A077985 (n + 1)

end

end A056161.P8435332939047753127

namespace A056161

/-- `A001542(n+1)-A000129(n)*A077985(n+1)` -/
def P8435332939047753127.Spec : Prop :=
  ∀ n, P8435332939047753127.a n = A056161 n

end A056161

/-!
# A056162: a(n) = Sum_{k=0..n} (k!)^(n-k).

The programs for A056162, there is no canonical definition to state claims against.
-/

/-! ## A056162.P12101212012313589450

`A290387(A267278(n+1)+A131577(n))`
-/

namespace A056162.P12101212012313589450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290387 (A267278 (n + 1) + A131577 n).toNat

end

end A056162.P12101212012313589450

/-!
# A056163: Number of ordered antichains on an unlabeled n-set; labeled T_1-hypergraphs with n hyperedges.

The programs for A056163, there is no canonical definition to state claims against.
-/

/-! ## A056163.P5837044243657060543

`A056164(n)+a(n-1)` with `a(0)=2`
-/

namespace A056163.P5837044243657060543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A056164 n + a (n - 1)

end

end A056163.P5837044243657060543

/-!
# A056164: Number of ordered antichain covers of an unlabeled n-set; labeled T_1-hypergraphs (without empty hyperedges) with n hyperedges.

The programs for A056164, there is no canonical definition to state claims against.
-/

/-! ## A056164.P16090976678481611640

`Δ[A056163(n)]`
-/

namespace A056164.P16090976678481611640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056164.P16090976678481611640

/-!
# A056166: Numbers which are the product of distinct primes raised to prime powers.

The programs for A056166, the canonical program `A056166.P4154456828195991417` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056166 has offset 1).

The definition of A056166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056166.P4154456828195991417

`record[(n+1)*A293449(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056166

/-- `record[(n+1)*A293449(n+1)]` -/
def P4154456828195991417.Spec : Prop :=
  ∀ n, P4154456828195991417.a n = A056166 (n + 1)

theorem P4154456828195991417.correct : P4154456828195991417.Spec := by
  intro n
  simp only [A056166, Nat.add_sub_cancel]

end A056166

/-! ## A056166.P15035673124813163276

`filter[A001694(n+1), A293449(#)]`
-/

namespace A056166.P15035673124813163276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P15035673124813163276

namespace A056166

/-- `filter[A001694(n+1), A293449(#)]` -/
def P15035673124813163276.Spec : Prop :=
  ∀ n, P15035673124813163276.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P5054069004015445666

`filter[A317102(n+1), A293449(#)]`
-/

namespace A056166.P5054069004015445666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P5054069004015445666

namespace A056166

/-- `filter[A317102(n+1), A293449(#)]` -/
def P5054069004015445666.Spec : Prop :=
  ∀ n, P5054069004015445666.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P1054577434383727953

`filter[A325661(n+1), A293449(#)]`
-/

namespace A056166.P1054577434383727953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P1054577434383727953

namespace A056166

/-- `filter[A325661(n+1), A293449(#)]` -/
def P1054577434383727953.Spec : Prop :=
  ∀ n, P1054577434383727953.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P11050358226320473684

`filter[A335851(n+1), A293449(#)]`
-/

namespace A056166.P11050358226320473684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P11050358226320473684

namespace A056166

/-- `filter[A335851(n+1), A293449(#)]` -/
def P11050358226320473684.Spec : Prop :=
  ∀ n, P11050358226320473684.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P6246192305023387014

`filter[A339497(n+1), A293449(#)]`
-/

namespace A056166.P6246192305023387014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P6246192305023387014

namespace A056166

/-- `filter[A339497(n+1), A293449(#)]` -/
def P6246192305023387014.Spec : Prop :=
  ∀ n, P6246192305023387014.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P13085609759587828218

`filter[A341645(n+1), A293449(#)]`
-/

namespace A056166.P13085609759587828218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P13085609759587828218

namespace A056166

/-- `filter[A341645(n+1), A293449(#)]` -/
def P13085609759587828218.Spec : Prop :=
  ∀ n, P13085609759587828218.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P10137307667781501867

`filter[A361204(n+1), A293449(#)]`
-/

namespace A056166.P10137307667781501867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P10137307667781501867

namespace A056166

/-- `filter[A361204(n+1), A293449(#)]` -/
def P10137307667781501867.Spec : Prop :=
  ∀ n, P10137307667781501867.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P1833980779193189744

`filter[A378766(n+1), A293449(#)]`
-/

namespace A056166.P1833980779193189744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P1833980779193189744

namespace A056166

/-- `filter[A378766(n+1), A293449(#)]` -/
def P1833980779193189744.Spec : Prop :=
  ∀ n, P1833980779193189744.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P8456158610445584526

`filter[A384418(n+1), A293449(#)]`
-/

namespace A056166.P8456158610445584526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P8456158610445584526

namespace A056166

/-- `filter[A384418(n+1), A293449(#)]` -/
def P8456158610445584526.Spec : Prop :=
  ∀ n, P8456158610445584526.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P13618776326331826697

`eq[1, A293449(n+1)]+1`
-/

namespace A056166.P13618776326331826697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056166.P13618776326331826697

namespace A056166

/-- `eq[1, A293449(n+1)]+1` -/
def P13618776326331826697.Spec : Prop :=
  ∀ n, (P13618776326331826697.a n : ℤ) = A056166 (n + 1)

end A056166

/-! ## A056166.P4069748543254955076

`filter[A388985(n+1), A293449(#)]`
-/

namespace A056166.P4069748543254955076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P4069748543254955076

namespace A056166

/-- `filter[A388985(n+1), A293449(#)]` -/
def P4069748543254955076.Spec : Prop :=
  ∀ n, P4069748543254955076.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P8255959840251259870

`filter[A048098(n+1), A293449(#)]`
-/

namespace A056166.P8255959840251259870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P8255959840251259870

namespace A056166

/-- `filter[A048098(n+1), A293449(#)]` -/
def P8255959840251259870.Spec : Prop :=
  ∀ n, P8255959840251259870.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P6191573031195013924

`filter[A387941(n+1), A293449(#)]`
-/

namespace A056166.P6191573031195013924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P6191573031195013924

namespace A056166

/-- `filter[A387941(n+1), A293449(#)]` -/
def P6191573031195013924.Spec : Prop :=
  ∀ n, P6191573031195013924.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P559582999406242952

`filter[A162966(n+1), A293449(#)]`
-/

namespace A056166.P559582999406242952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P559582999406242952

namespace A056166

/-- `filter[A162966(n+1), A293449(#)]` -/
def P559582999406242952.Spec : Prop :=
  ∀ n, P559582999406242952.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P6376578662294749656

`filter[A354360(n+1), A293449(#)]`
-/

namespace A056166.P6376578662294749656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P6376578662294749656

namespace A056166

/-- `filter[A354360(n+1), A293449(#)]` -/
def P6376578662294749656.Spec : Prop :=
  ∀ n, P6376578662294749656.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P15204168842600227342

`filter[A328957(n+1), A293449(#)]`
-/

namespace A056166.P15204168842600227342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P15204168842600227342

namespace A056166

/-- `filter[A328957(n+1), A293449(#)]` -/
def P15204168842600227342.Spec : Prop :=
  ∀ n, P15204168842600227342.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P12260759871002613523

`filter[A326692(n+1), A293449(#)]`
-/

namespace A056166.P12260759871002613523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P12260759871002613523

namespace A056166

/-- `filter[A326692(n+1), A293449(#)]` -/
def P12260759871002613523.Spec : Prop :=
  ∀ n, P12260759871002613523.a n = A056166 (n + 1)

end A056166

/-! ## A056166.P10045705879005577560

`filter[A289553(n+1), A293449(#)]`
-/

namespace A056166.P10045705879005577560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A056166.P10045705879005577560

namespace A056166

/-- `filter[A289553(n+1), A293449(#)]` -/
def P10045705879005577560.Spec : Prop :=
  ∀ n, P10045705879005577560.a n = A056166 (n + 1)

end A056166

/-!
# A056167: Numbers k such that k! is not divisible by the square of (f+1)!, where f = floor(k/2).

The programs for A056167, the canonical program `A056167.P7985296362378324712` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056167 has offset 1).

The definition of A056167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9017 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056167.P7985296362378324712

`lt[0, A053214(A008619(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056167

/-- `lt[0, A053214(A008619(n))]` -/
def P7985296362378324712.Spec : Prop :=
  ∀ n, (P7985296362378324712.a n : ℤ) = A056167 (n + 1)

theorem P7985296362378324712.correct : P7985296362378324712.Spec := by
  intro n
  simp only [A056167, Nat.add_sub_cancel]

end A056167

/-! ## A056167.P11752276665341684777

`eq[char[A056067(n+1)], A000007(n)]`
-/

namespace A056167.P11752276665341684777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056067 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A056167.P11752276665341684777

namespace A056167

/-- `eq[char[A056067(n+1)], A000007(n)]` -/
def P11752276665341684777.Spec : Prop :=
  ∀ n, (P11752276665341684777.a n : ℤ) = A056167 (n + 1)

end A056167

/-! ## A056167.P10287381577837033436

`eq[char[A056067(n+1)], A000038(n)]`
-/

namespace A056167.P10287381577837033436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056067 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A056167.P10287381577837033436

namespace A056167

/-- `eq[char[A056067(n+1)], A000038(n)]` -/
def P10287381577837033436.Spec : Prop :=
  ∀ n, (P10287381577837033436.a n : ℤ) = A056167 (n + 1)

end A056167

/-! ## A056167.P14937452187483529565

`eq[char[A056067(n+1)], A154955(n+1)]`
-/

namespace A056167.P14937452187483529565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056067 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A056167.P14937452187483529565

namespace A056167

/-- `eq[char[A056067(n+1)], A154955(n+1)]` -/
def P14937452187483529565.Spec : Prop :=
  ∀ n, (P14937452187483529565.a n : ℤ) = A056167 (n + 1)

end A056167

/-! ## A056167.P569530935537596519

`eq[A056040(n), A056042(A233583(n+1))]`
-/

namespace A056167.P569530935537596519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056042 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056167.P569530935537596519

namespace A056167

/-- `eq[A056040(n), A056042(A233583(n+1))]` -/
def P569530935537596519.Spec : Prop :=
  ∀ n, (P569530935537596519.a n : ℤ) = A056167 (n + 1)

end A056167

/-! ## A056167.P17957159004718830691

`A006530(∏[A327537(n+1)])+n+1`
-/

namespace A056167.P17957159004718830691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + (n + 1 : ℤ)

end

end A056167.P17957159004718830691

namespace A056167

/-- `A006530(∏[A327537(n+1)])+n+1` -/
def P17957159004718830691.Spec : Prop :=
  ∀ n, P17957159004718830691.a n = A056167 (n + 1)

end A056167

/-!
# A056169: Number of unitary prime divisors of n.

The programs for A056169, the canonical program `A056169.P17430176249366647977` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056169 has offset 1).

The definition of A056169 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A055231, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056169.P17430176249366647977

`A001221(A055231(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056169

/-- `A001221(A055231(n+1))` -/
def P17430176249366647977.Spec : Prop :=
  ∀ n, P17430176249366647977.a n = A056169 (n + 1)

theorem P17430176249366647977.correct : P17430176249366647977.Spec := by
  intro n
  simp only [A056169, Nat.add_sub_cancel]

end A056169

/-! ## A056169.P4092855120050886048

`A001221(n+1)-A056170(n+1)`
-/

namespace A056169.P4092855120050886048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A056170 (n + 1)

end

end A056169.P4092855120050886048

namespace A056169

/-- `A001221(n+1)-A056170(n+1)` -/
def P4092855120050886048.Spec : Prop :=
  ∀ n, P4092855120050886048.a n = A056169 (n + 1)

end A056169

/-! ## A056169.P9533860656060877077

`A001222(n+1)-A275812(n+1)`
-/

namespace A056169.P9533860656060877077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A275812 (n + 1)

end

end A056169.P9533860656060877077

namespace A056169

/-- `A001222(n+1)-A275812(n+1)` -/
def P9533860656060877077.Spec : Prop :=
  ∀ n, P9533860656060877077.a n = A056169 (n + 1)

end A056169

/-! ## A056169.P9101847419407147251

`A162642(n+1)-A295662(n+1)`
-/

namespace A056169.P9101847419407147251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1) - A295662 (n + 1)

end

end A056169.P9101847419407147251

namespace A056169

/-- `A162642(n+1)-A295662(n+1)` -/
def P9101847419407147251.Spec : Prop :=
  ∀ n, P9101847419407147251.a n = A056169 (n + 1)

end A056169

/-! ## A056169.P17094236554504313067

`A001221(n+1)-A001221(A000188(n+1))`
-/

namespace A056169.P17094236554504313067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A000188 (n + 1)).toNat

end

end A056169.P17094236554504313067

namespace A056169

/-- `A001221(n+1)-A001221(A000188(n+1))` -/
def P17094236554504313067.Spec : Prop :=
  ∀ n, P17094236554504313067.a n = A056169 (n + 1)

end A056169

/-! ## A056169.P14607130696977932101

`A063524(A067029(n+1))+a(A028234(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A056169.P14607130696977932101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A063524 (A067029 (n + 1)).toNat + a (A028234 (n + 1) - 1).toNat

end

end A056169.P14607130696977932101

namespace A056169

/-- `A063524(A067029(n+1))+a(A028234(n+1)-1)` -/
def P14607130696977932101.Spec : Prop :=
  ∀ n, P14607130696977932101.a n = A056169 (n + 1)

end A056169

/-! ## A056169.P10142508541740348583

`∑{e}[n+1, round(acot(#))]`
-/

namespace A056169.P10142508541740348583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ))

end

end A056169.P10142508541740348583

namespace A056169

/-- `∑{e}[n+1, round(acot(#))]` -/
def P10142508541740348583.Spec : Prop :=
  ∀ n, P10142508541740348583.a n = A056169 (n + 1)

end A056169

/-! ## A056169.P9534322874879140466

`∑{e}[n+1, floor(1/#)]`
-/

namespace A056169.P9534322874879140466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋

end

end A056169.P9534322874879140466

namespace A056169

/-- `∑{e}[n+1, floor(1/#)]` -/
def P9534322874879140466.Spec : Prop :=
  ∀ n, P9534322874879140466.a n = A056169 (n + 1)

end A056169

/-! ## A056169.P12400993614728687618

`floor(∑{e}[n+1, #^-2])`
-/

namespace A056169.P12400993614728687618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) ^ (-2 : ℤ)⌋

end

end A056169.P12400993614728687618

namespace A056169

/-- `floor(∑{e}[n+1, #^-2])` -/
def P12400993614728687618.Spec : Prop :=
  ∀ n, P12400993614728687618.a n = A056169 (n + 1)

end A056169

/-! ## A056169.P388865007057262550

`round(∑{e}[n+1, #^-3])`
-/

namespace A056169.P388865007057262550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) ^ (-3 : ℤ))

end

end A056169.P388865007057262550

namespace A056169

/-- `round(∑{e}[n+1, #^-3])` -/
def P388865007057262550.Spec : Prop :=
  ∀ n, P388865007057262550.a n = A056169 (n + 1)

end A056169

/-! ## A056169.P3024211078965051102

`dr(∑{e}[n+1, #!%2])`
-/

namespace A056169.P3024211078965051102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) % 2 : ℕ) : ℤ)

end

end A056169.P3024211078965051102

namespace A056169

/-- `dr(∑{e}[n+1, #!%2])` -/
def P3024211078965051102.Spec : Prop :=
  ∀ n, (P3024211078965051102.a n : ℤ) = A056169 (n + 1)

end A056169

/-! ## A056169.P5175732395354958294

`log2(A056671(n+1))`
-/

namespace A056169.P5175732395354958294
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A056671 (n + 1) : ℝ)

end

end A056169.P5175732395354958294

namespace A056169

/-- `log2(A056671(n+1))` -/
def P5175732395354958294.Spec : Prop :=
  ∀ n, P5175732395354958294.a n = (A056169 (n + 1) : ℝ)

end A056169

/-! ## A056169.P6709207620108188929

`val(A073184(n+1), 2)`
-/

namespace A056169.P6709207620108188929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A073184 (n + 1)).toNat 2

end

end A056169.P6709207620108188929

namespace A056169

/-- `val(A073184(n+1), 2)` -/
def P6709207620108188929.Spec : Prop :=
  ∀ n, (P6709207620108188929.a n : ℤ) = A056169 (n + 1)

end A056169

/-! ## A056169.P10750849127365593577

`val(A181819(n+1), 2)`
-/

namespace A056169.P10750849127365593577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181819 (n + 1)).toNat 2

end

end A056169.P10750849127365593577

namespace A056169

/-- `val(A181819(n+1), 2)` -/
def P10750849127365593577.Spec : Prop :=
  ∀ n, (P10750849127365593577.a n : ℤ) = A056169 (n + 1)

end A056169

/-! ## A056169.P4995867083569104418

`val(A295878(n+1), 2)`
-/

namespace A056169.P4995867083569104418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A295878 (n + 1)).toNat 2

end

end A056169.P4995867083569104418

namespace A056169

/-- `val(A295878(n+1), 2)` -/
def P4995867083569104418.Spec : Prop :=
  ∀ n, (P4995867083569104418.a n : ℤ) = A056169 (n + 1)

end A056169

/-! ## A056169.P16962573264457016999

`val(A363825(n+1), 2)`
-/

namespace A056169.P16962573264457016999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A363825 (n + 1)).toNat 2

end

end A056169.P16962573264457016999

namespace A056169

/-- `val(A363825(n+1), 2)` -/
def P16962573264457016999.Spec : Prop :=
  ∀ n, (P16962573264457016999.a n : ℤ) = A056169 (n + 1)

end A056169

/-! ## A056169.P16166949879536354464

`val(A366147(n+1), 2)`
-/

namespace A056169.P16166949879536354464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A366147 (n + 1)).toNat 2

end

end A056169.P16166949879536354464

namespace A056169

/-- `val(A366147(n+1), 2)` -/
def P16166949879536354464.Spec : Prop :=
  ∀ n, (P16166949879536354464.a n : ℤ) = A056169 (n + 1)

end A056169

/-! ## A056169.P14485598137808290735

`val(A367170(n+1), 2)`
-/

namespace A056169.P14485598137808290735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A367170 (n + 1)).toNat 2

end

end A056169.P14485598137808290735

namespace A056169

/-- `val(A367170(n+1), 2)` -/
def P14485598137808290735.Spec : Prop :=
  ∀ n, (P14485598137808290735.a n : ℤ) = A056169 (n + 1)

end A056169

/-! ## A056169.P10686455060725209848

`val(A369015(n+1), 2)`
-/

namespace A056169.P10686455060725209848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A369015 (n + 1)).toNat 2

end

end A056169.P10686455060725209848

namespace A056169

/-- `val(A369015(n+1), 2)` -/
def P10686455060725209848.Spec : Prop :=
  ∀ n, (P10686455060725209848.a n : ℤ) = A056169 (n + 1)

end A056169

/-! ## A056169.P7078989929698989459

`val(A369760(n+1), 2)`
-/

namespace A056169.P7078989929698989459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A369760 (n + 1)).toNat 2

end

end A056169.P7078989929698989459

namespace A056169

/-- `val(A369760(n+1), 2)` -/
def P7078989929698989459.Spec : Prop :=
  ∀ n, (P7078989929698989459.a n : ℤ) = A056169 (n + 1)

end A056169

/-!
# A056170: Number of non-unitary prime divisors of n.

The programs for A056170, the canonical program `A056170.P910878729848546389` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056170 has offset 1).

The definition of A056170 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056169, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056170.P9280466600267892505

`log2(A000005(A071773(n+1)))`
-/

namespace A056170.P9280466600267892505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000005 (A071773 (n + 1)).toNat : ℝ)

end

end A056170.P9280466600267892505

namespace A056170

/-- `log2(A000005(A071773(n+1)))` -/
def P9280466600267892505.Spec : Prop :=
  ∀ n, P9280466600267892505.a n = (A056170 (n + 1) : ℝ)

end A056170

/-! ## A056170.P910878729848546389

`A001221(n+1)-A056169(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A056170

/-- `A001221(n+1)-A056169(n+1)` -/
def P910878729848546389.Spec : Prop :=
  ∀ n, P910878729848546389.a n = A056170 (n + 1)

theorem P910878729848546389.correct : P910878729848546389.Spec := by
  intro n
  simp only [A056170, Nat.add_sub_cancel]

end A056170

/-! ## A056170.P1327690803541945574

`A275812(n+1)-A046660(n+1)`
-/

namespace A056170.P1327690803541945574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (n + 1) - A046660 (n + 1)

end

end A056170.P1327690803541945574

namespace A056170

/-- `A275812(n+1)-A046660(n+1)` -/
def P1327690803541945574.Spec : Prop :=
  ∀ n, P1327690803541945574.a n = A056170 (n + 1)

end A056170

/-! ## A056170.P11608687251432706158

`∑{e}[n+1, floor(atan(#))]`
-/

namespace A056170.P11608687251432706158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊Real.arctan (Nat.factorization (f1 n) p : ℝ)⌋

end

end A056170.P11608687251432706158

namespace A056170

/-- `∑{e}[n+1, floor(atan(#))]` -/
def P11608687251432706158.Spec : Prop :=
  ∀ n, P11608687251432706158.a n = A056170 (n + 1)

end A056170

/-! ## A056170.P16431765894162775381

`log2(∏{e}[n+1, ceil(atan(#))])`
-/

namespace A056170.P16431765894162775381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (Nat.factorization (f1 n) p : ℝ)⌉ : ℤ) : ℝ)

end

end A056170.P16431765894162775381

namespace A056170

/-- `log2(∏{e}[n+1, ceil(atan(#))])` -/
def P16431765894162775381.Spec : Prop :=
  ∀ n, P16431765894162775381.a n = (A056170 (n + 1) : ℝ)

end A056170

/-! ## A056170.P5317673948815202844

`∑{e}[n+1, (#+1)%#]`
-/

namespace A056170.P5317673948815202844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) % Nat.factorization (f1 n) p

end

end A056170.P5317673948815202844

namespace A056170

/-- `∑{e}[n+1, (#+1)%#]` -/
def P5317673948815202844.Spec : Prop :=
  ∀ n, (P5317673948815202844.a n : ℤ) = A056170 (n + 1)

end A056170

/-! ## A056170.P4307384723118840184

`∑{e}[n+1, 1-floor(1/#)]`
-/

namespace A056170.P4307384723118840184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (1 - ⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)

end

end A056170.P4307384723118840184

namespace A056170

/-- `∑{e}[n+1, 1-floor(1/#)]` -/
def P4307384723118840184.Spec : Prop :=
  ∀ n, P4307384723118840184.a n = A056170 (n + 1)

end A056170

/-! ## A056170.P3524289769789912797

`∑{p}[n+1, val(((n+1)/#)², n+1)]`
-/

namespace A056170.P3524289769789912797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (p : ℚ)) ^ 2)).toNat (n + 1)

end

end A056170.P3524289769789912797

namespace A056170

/-- `∑{p}[n+1, val(((n+1)/#)², n+1)]` -/
def P3524289769789912797.Spec : Prop :=
  ∀ n, (P3524289769789912797.a n : ℤ) = A056170 (n + 1)

end A056170

/-! ## A056170.P2393009022623681598

`log2(A323308(n+1))`
-/

namespace A056170.P2393009022623681598
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A323308 (n + 1) : ℝ)

end

end A056170.P2393009022623681598

namespace A056170

/-- `log2(A323308(n+1))` -/
def P2393009022623681598.Spec : Prop :=
  ∀ n, P2393009022623681598.a n = (A056170 (n + 1) : ℝ)

end A056170

/-! ## A056170.P9492831028834691666

`val(A073184(n+1), 3)`
-/

namespace A056170.P9492831028834691666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A073184 (n + 1)).toNat 3

end

end A056170.P9492831028834691666

namespace A056170

/-- `val(A073184(n+1), 3)` -/
def P9492831028834691666.Spec : Prop :=
  ∀ n, (P9492831028834691666.a n : ℤ) = A056170 (n + 1)

end A056170

/-! ## A056170.P6864188255677366907

`val(A124859(n+1), 3)`
-/

namespace A056170.P6864188255677366907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124859 (n + 1)).toNat 3

end

end A056170.P6864188255677366907

namespace A056170

/-- `val(A124859(n+1), 3)` -/
def P6864188255677366907.Spec : Prop :=
  ∀ n, (P6864188255677366907.a n : ℤ) = A056170 (n + 1)

end A056170

/-! ## A056170.P18302108976201362742

`log2(abs(A390490(n+1)))`
-/

namespace A056170.P18302108976201362742
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (|A390490 (n + 1)| : ℝ)

end

end A056170.P18302108976201362742

namespace A056170

/-- `log2(abs(A390490(n+1)))` -/
def P18302108976201362742.Spec : Prop :=
  ∀ n, P18302108976201362742.a n = (A056170 (n + 1) : ℝ)

end A056170

/-! ## A056170.P10680703352569854439

`∑{d}[n+1, A302048(#)]`
-/

namespace A056170.P10680703352569854439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A302048 d

end

end A056170.P10680703352569854439

namespace A056170

/-- `∑{d}[n+1, A302048(#)]` -/
def P10680703352569854439.Spec : Prop :=
  ∀ n, P10680703352569854439.a n = A056170 (n + 1)

end A056170

/-! ## A056170.P2866594520193560463

`∑{p}[A085731(n+1), gcd(n, #)]`
-/

namespace A056170.P2866594520193560463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.gcd n p

end

end A056170.P2866594520193560463

namespace A056170

/-- `∑{p}[A085731(n+1), gcd(n, #)]` -/
def P2866594520193560463.Spec : Prop :=
  ∀ n, (P2866594520193560463.a n : ℤ) = A056170 (n + 1)

end A056170

/-! ## A056170.P99466650654646623

`A001221((n+1)/∏{p}[n+1, #])`
-/

namespace A056170.P99466650654646623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A056170.P99466650654646623

namespace A056170

/-- `A001221((n+1)/∏{p}[n+1, #])` -/
def P99466650654646623.Spec : Prop :=
  ∀ n, P99466650654646623.a n = A056170 (n + 1)

end A056170

/-! ## A056170.P16584904872348212208

`A001222(∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A056170.P16584904872348212208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A056170.P16584904872348212208

namespace A056170

/-- `A001222(∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P16584904872348212208.Spec : Prop :=
  ∀ n, P16584904872348212208.a n = A056170 (n + 1)

end A056170

/-! ## A056170.P5329260995945913152

`A001221(A000188(n+1))`
-/

namespace A056170.P5329260995945913152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000188 (n + 1)).toNat

end

end A056170.P5329260995945913152

namespace A056170

/-- `A001221(A000188(n+1))` -/
def P5329260995945913152.Spec : Prop :=
  ∀ n, P5329260995945913152.a n = A056170 (n + 1)

end A056170

/-! ## A056170.P1764711658767465158

`A001221(A000189(n+1))`
-/

namespace A056170.P1764711658767465158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000189 (n + 1)).toNat

end

end A056170.P1764711658767465158

namespace A056170

/-- `A001221(A000189(n+1))` -/
def P1764711658767465158.Spec : Prop :=
  ∀ n, P1764711658767465158.a n = A056170 (n + 1)

end A056170

/-! ## A056170.P14761863390354215954

`A001221(A000190(n+1))`
-/

namespace A056170.P14761863390354215954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000190 (n + 1)).toNat

end

end A056170.P14761863390354215954

namespace A056170

/-- `A001221(A000190(n+1))` -/
def P14761863390354215954.Spec : Prop :=
  ∀ n, P14761863390354215954.a n = A056170 (n + 1)

end A056170

/-! ## A056170.P7058848907365670987

`A001221(A003557(n+1))`
-/

namespace A056170.P7058848907365670987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003557 (n + 1)).toNat

end

end A056170.P7058848907365670987

namespace A056170

/-- `A001221(A003557(n+1))` -/
def P7058848907365670987.Spec : Prop :=
  ∀ n, P7058848907365670987.a n = A056170 (n + 1)

end A056170

/-!
# A056171: a(n) = pi(n) - pi(floor(n/2)), where pi is A000720.

The programs for A056171, the canonical program `A056171.P2104246229896061761` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056171 has offset 1).

The definition of A056171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056171.P7133119913812121571

`A000720(n+1)-A056172(n+1)`
-/

namespace A056171.P7133119913812121571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A056172 (n + 1)

end

end A056171.P7133119913812121571

namespace A056171

/-- `A000720(n+1)-A056172(n+1)` -/
def P7133119913812121571.Spec : Prop :=
  ∀ n, P7133119913812121571.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P9805495319292954437

`A338363(n+1)-(n+1)`
-/

namespace A056171.P9805495319292954437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338363 (n + 1) - (n + 1 : ℤ)

end

end A056171.P9805495319292954437

namespace A056171

/-- `A338363(n+1)-(n+1)` -/
def P9805495319292954437.Spec : Prop :=
  ∀ n, P9805495319292954437.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P9609072992688854959

`A297616(n+1)-A329683(n)`
-/

namespace A056171.P9609072992688854959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297616 (n + 1) - A329683 n

end

end A056171.P9609072992688854959

namespace A056171

/-- `A297616(n+1)-A329683(n)` -/
def P9609072992688854959.Spec : Prop :=
  ∀ n, P9609072992688854959.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P11835630049535057420

`A294602(n+1)+A010051(n+1)`
-/

namespace A056171.P11835630049535057420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (n + 1) + A010051 (n + 1)

end

end A056171.P11835630049535057420

namespace A056171

/-- `A294602(n+1)+A010051(n+1)` -/
def P11835630049535057420.Spec : Prop :=
  ∀ n, P11835630049535057420.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P1980842334684264134

`A338363(n+1)%A000027(n+1)`
-/

namespace A056171.P1980842334684264134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338363 (n + 1)) (A000027 (n + 1))

end

end A056171.P1980842334684264134

namespace A056171

/-- `A338363(n+1)%A000027(n+1)` -/
def P1980842334684264134.Spec : Prop :=
  ∀ n, P1980842334684264134.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P15820531086068258960

`∑[A010051(n+1)]-A056172(n+1)`
-/

namespace A056171.P15820531086068258960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056172 (n + 1)

end

end A056171.P15820531086068258960

namespace A056171

/-- `∑[A010051(n+1)]-A056172(n+1)` -/
def P15820531086068258960.Spec : Prop :=
  ∀ n, P15820531086068258960.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P2901311002812590488

`A036234(n+1)-(A056172(n+1)+1)`
-/

namespace A056171.P2901311002812590488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - (A056172 (n + 1) + 1)

end

end A056171.P2901311002812590488

namespace A056171

/-- `A036234(n+1)-(A056172(n+1)+1)` -/
def P2901311002812590488.Spec : Prop :=
  ∀ n, P2901311002812590488.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P2327371809797390434

`∑[char[A020639(n+2)-1]]-A056172(n+1)`
-/

namespace A056171.P2327371809797390434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A056172 (n + 1)

end

end A056171.P2327371809797390434

namespace A056171

/-- `∑[char[A020639(n+2)-1]]-A056172(n+1)` -/
def P2327371809797390434.Spec : Prop :=
  ∀ n, P2327371809797390434.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P2104246229896061761

`A000720(n+1)-A000720(A065033(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056171

/-- `A000720(n+1)-A000720(A065033(n))` -/
def P2104246229896061761.Spec : Prop :=
  ∀ n, P2104246229896061761.a n = A056171 (n + 1)

theorem P2104246229896061761.correct : P2104246229896061761.Spec := by
  intro n
  simp only [A056171, Nat.add_sub_cancel]

end A056171

/-! ## A056171.P15588915905242678471

`A036234(n+1)-A036234(A065033(n))`
-/

namespace A056171.P15588915905242678471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A036234 (A065033 n).toNat

end

end A056171.P15588915905242678471

namespace A056171

/-- `A036234(n+1)-A036234(A065033(n))` -/
def P15588915905242678471.Spec : Prop :=
  ∀ n, P15588915905242678471.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P6960600876830843790

`A000720(n+1)-A000720(A056039(n+1))`
-/

namespace A056171.P6960600876830843790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (A056039 (n + 1)).toNat

end

end A056171.P6960600876830843790

namespace A056171

/-- `A000720(n+1)-A000720(A056039(n+1))` -/
def P6960600876830843790.Spec : Prop :=
  ∀ n, P6960600876830843790.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P5283285980763771628

`A000720(n+1)-A230980(A007494(n)-n)`
-/

namespace A056171.P5283285980763771628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A230980 (A007494 n - (n : ℤ)).toNat

end

end A056171.P5283285980763771628

namespace A056171

/-- `A000720(n+1)-A230980(A007494(n)-n)` -/
def P5283285980763771628.Spec : Prop :=
  ∀ n, P5283285980763771628.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P1862650264033206148

`∑[A010051(n+1)-A010051(A251561(n+1))]`
-/

namespace A056171.P1862650264033206148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) - A010051 (A251561 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056171.P1862650264033206148

namespace A056171

/-- `∑[A010051(n+1)-A010051(A251561(n+1))]` -/
def P1862650264033206148.Spec : Prop :=
  ∀ n, P1862650264033206148.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P800455717153230087

`A000720(n+1)-A000720(A294732(n+2)-n)`
-/

namespace A056171.P800455717153230087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (A294732 (n + 2) - (n : ℤ)).toNat

end

end A056171.P800455717153230087

namespace A056171

/-- `A000720(n+1)-A000720(A294732(n+2)-n)` -/
def P800455717153230087.Spec : Prop :=
  ∀ n, P800455717153230087.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P4502586720193349481

`A230980(n+1)-A056172(n+1)`
-/

namespace A056171.P4502586720193349481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A056172 (n + 1)

end

end A056171.P4502586720193349481

namespace A056171

/-- `A230980(n+1)-A056172(n+1)` -/
def P4502586720193349481.Spec : Prop :=
  ∀ n, P4502586720193349481.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P6924615008842612767

`A294111(n+2)-A368058(n+1)`
-/

namespace A056171.P6924615008842612767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294111 (n + 2) - A368058 (n + 1)

end

end A056171.P6924615008842612767

namespace A056171

/-- `A294111(n+2)-A368058(n+1)` -/
def P6924615008842612767.Spec : Prop :=
  ∀ n, P6924615008842612767.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P11793945531188292392

`A230980(n+1)-A230980(floor((n+1)/2))`
-/

namespace A056171.P11793945531188292392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A230980 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A056171.P11793945531188292392

namespace A056171

/-- `A230980(n+1)-A230980(floor((n+1)/2))` -/
def P11793945531188292392.Spec : Prop :=
  ∀ n, P11793945531188292392.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P778791720348561270

`A000720(n+1)+A294023(n+1)-A294023(n+2)`
-/

namespace A056171.P778791720348561270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A294023 (n + 1) - A294023 (n + 2))

end

end A056171.P778791720348561270

namespace A056171

/-- `A000720(n+1)+A294023(n+1)-A294023(n+2)` -/
def P778791720348561270.Spec : Prop :=
  ∀ n, P778791720348561270.a n = A056171 (n + 1)

end A056171

/-! ## A056171.P135246031887955775

`log2(A056672(n+1))`
-/

namespace A056171.P135246031887955775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A056672 (n + 1) : ℝ)

end

end A056171.P135246031887955775

namespace A056171

/-- `log2(A056672(n+1))` -/
def P135246031887955775.Spec : Prop :=
  ∀ n, P135246031887955775.a n = (A056171 (n + 1) : ℝ)

end A056171

/-! ## A056171.P4084293707999706680

`∑[char[A014963(n+2)-1]]-1-A056172(n+1)`
-/

namespace A056171.P4084293707999706680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - A056172 (n + 1)

end

end A056171.P4084293707999706680

namespace A056171

/-- `∑[char[A014963(n+2)-1]]-1-A056172(n+1)` -/
def P4084293707999706680.Spec : Prop :=
  ∀ n, P4084293707999706680.a n = A056171 (n + 1)

end A056171

/-!
# A056172: Number of non-unitary prime divisors of n!.

The programs for A056172, the canonical program `A056172.P4823837235628316593` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056172 has offset 1).

The definition of A056172 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A056171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056172.P4823837235628316593

`A000720(n+1)-A056171(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056172

/-- `A000720(n+1)-A056171(n+1)` -/
def P4823837235628316593.Spec : Prop :=
  ∀ n, P4823837235628316593.a n = A056172 (n + 1)

theorem P4823837235628316593.correct : P4823837235628316593.Spec := by
  intro n
  simp only [A056172, Nat.add_sub_cancel]

end A056172

/-! ## A056172.P6382110024284941551

`A230980(ceil(n/2))`
-/

namespace A056172.P6382110024284941551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ⌈(n : ℚ) / 2⌉.toNat

end

end A056172.P6382110024284941551

namespace A056172

/-- `A230980(ceil(n/2))` -/
def P6382110024284941551.Spec : Prop :=
  ∀ n, P6382110024284941551.a n = A056172 (n + 1)

end A056172

/-! ## A056172.P8939232340745402128

`∑[A353478(n+1)]`
-/

namespace A056172.P8939232340745402128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056172.P8939232340745402128

namespace A056172

/-- `∑[A353478(n+1)]` -/
def P8939232340745402128.Spec : Prop :=
  ∀ n, P8939232340745402128.a n = A056172 (n + 1)

end A056172

/-! ## A056172.P10694118503464358629

`∑[char[A076274(n+2)]]`
-/

namespace A056172.P10694118503464358629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056172.P10694118503464358629

namespace A056172

/-- `∑[char[A076274(n+2)]]` -/
def P10694118503464358629.Spec : Prop :=
  ∀ n, (P10694118503464358629.a n : ℤ) = A056172 (n + 1)

end A056172

/-! ## A056172.P16810082282535059342

`∑[A073610(n+1)%2]`
-/

namespace A056172.P16810082282535059342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073610 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056172.P16810082282535059342

namespace A056172

/-- `∑[A073610(n+1)%2]` -/
def P16810082282535059342.Spec : Prop :=
  ∀ n, P16810082282535059342.a n = A056172 (n + 1)

end A056172

/-! ## A056172.P15275132181744961595

`∑[and(1, A002126(n+1))]`
-/

namespace A056172.P15275132181744961595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002126 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056172.P15275132181744961595

namespace A056172

/-- `∑[and(1, A002126(n+1))]` -/
def P15275132181744961595.Spec : Prop :=
  ∀ n, P15275132181744961595.a n = A056172 (n + 1)

end A056172

/-! ## A056172.P6395441210740179439

`∑[and(n, A064911(n+1))]`
-/

namespace A056172.P6395441210740179439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A064911 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056172.P6395441210740179439

namespace A056172

/-- `∑[and(n, A064911(n+1))]` -/
def P6395441210740179439.Spec : Prop :=
  ∀ n, P6395441210740179439.a n = A056172 (n + 1)

end A056172

/-! ## A056172.P7066270101195257941

`1-A282029(n+1)+n`
-/

namespace A056172.P7066270101195257941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A282029 (n + 1) + (n : ℤ)

end

end A056172.P7066270101195257941

namespace A056172

/-- `1-A282029(n+1)+n` -/
def P7066270101195257941.Spec : Prop :=
  ∀ n, P7066270101195257941.a n = A056172 (n + 1)

end A056172

/-! ## A056172.P9194066516810873923

`∑[char[A100484(n+1)-1]]`
-/

namespace A056172.P9194066516810873923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056172.P9194066516810873923

namespace A056172

/-- `∑[char[A100484(n+1)-1]]` -/
def P9194066516810873923.Spec : Prop :=
  ∀ n, (P9194066516810873923.a n : ℤ) = A056172 (n + 1)

end A056172

/-! ## A056172.P16199175395799051388

`∑[char[A072055(n+1)-2]]`
-/

namespace A056172.P16199175395799051388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056172.P16199175395799051388

namespace A056172

/-- `∑[char[A072055(n+1)-2]]` -/
def P16199175395799051388.Spec : Prop :=
  ∀ n, (P16199175395799051388.a n : ℤ) = A056172 (n + 1)

end A056172

/-! ## A056172.P9861547296419809233

`∑[and(2, A105661(n+1))/2]`
-/

namespace A056172.P9861547296419809233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A105661 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056172.P9861547296419809233

namespace A056172

/-- `∑[and(2, A105661(n+1))/2]` -/
def P9861547296419809233.Spec : Prop :=
  ∀ n, P9861547296419809233.a n = (A056172 (n + 1) : ℚ)

end A056172

/-! ## A056172.P568064171702978464

`∑[char[2*A000040(n+1)-1]]`
-/

namespace A056172.P568064171702978464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056172.P568064171702978464

namespace A056172

/-- `∑[char[2*A000040(n+1)-1]]` -/
def P568064171702978464.Spec : Prop :=
  ∀ n, (P568064171702978464.a n : ℤ) = A056172 (n + 1)

end A056172

/-! ## A056172.P9359200425983515629

`∑[char[2*A008578(n+2)-1]]`
-/

namespace A056172.P9359200425983515629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056172.P9359200425983515629

namespace A056172

/-- `∑[char[2*A008578(n+2)-1]]` -/
def P9359200425983515629.Spec : Prop :=
  ∀ n, (P9359200425983515629.a n : ℤ) = A056172 (n + 1)

end A056172

/-! ## A056172.P14063823624672647080

`∑[char[2*record[A014963(n+2)]-1]]`
-/

namespace A056172.P14063823624672647080
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056172.P14063823624672647080

namespace A056172

/-- `∑[char[2*record[A014963(n+2)]-1]]` -/
def P14063823624672647080.Spec : Prop :=
  ∀ n, (P14063823624672647080.a n : ℤ) = A056172 (n + 1)

end A056172

/-! ## A056172.P14146126102115620812

`A000720(A065033(n))`
-/

namespace A056172.P14146126102115620812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A065033 n).toNat

end

end A056172.P14146126102115620812

namespace A056172

/-- `A000720(A065033(n))` -/
def P14146126102115620812.Spec : Prop :=
  ∀ n, P14146126102115620812.a n = A056172 (n + 1)

end A056172

/-! ## A056172.P8144770260883212179

`A000720(A056039(n+1))`
-/

namespace A056172.P8144770260883212179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A056039 (n + 1)).toNat

end

end A056172.P8144770260883212179

namespace A056172

/-- `A000720(A056039(n+1))` -/
def P8144770260883212179.Spec : Prop :=
  ∀ n, P8144770260883212179.a n = A056172 (n + 1)

end A056172

/-! ## A056172.P4772539370848350805

`∑[A000035(A002126(n+1))]`
-/

namespace A056172.P4772539370848350805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056172.P4772539370848350805

namespace A056172

/-- `∑[A000035(A002126(n+1))]` -/
def P4772539370848350805.Spec : Prop :=
  ∀ n, P4772539370848350805.a n = A056172 (n + 1)

end A056172

/-! ## A056172.P6171675405123325753

`∑[A010051(A251561(n+1))]`
-/

namespace A056172.P6171675405123325753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A251561 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056172.P6171675405123325753

namespace A056172

/-- `∑[A010051(A251561(n+1))]` -/
def P6171675405123325753.Spec : Prop :=
  ∀ n, P6171675405123325753.a n = A056172 (n + 1)

end A056172

/-! ## A056172.P9085068925314827214

`A230980(n)-A294602(n+1)`
-/

namespace A056172.P9085068925314827214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A294602 (n + 1)

end

end A056172.P9085068925314827214

namespace A056172

/-- `A230980(n)-A294602(n+1)` -/
def P9085068925314827214.Spec : Prop :=
  ∀ n, P9085068925314827214.a n = A056172 (n + 1)

end A056172

/-! ## A056172.P13662556119650517634

`∑[n%2*char[eq[2, ∑{e}[n+1, #]]]]`
-/

namespace A056172.P13662556119650517634
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056172.P13662556119650517634

namespace A056172

/-- `∑[n%2*char[eq[2, ∑{e}[n+1, #]]]]` -/
def P13662556119650517634.Spec : Prop :=
  ∀ n, (P13662556119650517634.a n : ℤ) = A056172 (n + 1)

end A056172

/-!
# A056173: Number of unitary prime divisors of central binomial coefficient C(n, floor(n/2)) (A001405).

The programs for A056173, the canonical program `A056173.P15098762460861555107` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056173 has offset 1).

The definition of A056173 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056173.P15098762460861555107

`A056169(A001405(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A056173

/-- `A056169(A001405(n+1))` -/
def P15098762460861555107.Spec : Prop :=
  ∀ n, P15098762460861555107.a n = A056173 (n + 1)

theorem P15098762460861555107.correct : P15098762460861555107.Spec := by
  intro n
  simp only [A056173, Nat.add_sub_cancel]

end A056173

/-! ## A056173.P12027891174214390649

`A034973(n+1)-A056175(n+1)`
-/

namespace A056173.P12027891174214390649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (n + 1) - A056175 (n + 1)

end

end A056173.P12027891174214390649

namespace A056173

/-- `A034973(n+1)-A056175(n+1)` -/
def P12027891174214390649.Spec : Prop :=
  ∀ n, P12027891174214390649.a n = A056173 (n + 1)

end A056173

/-! ## A056173.P8093851051660391803

`log2(A056673(n+1))`
-/

namespace A056173.P8093851051660391803
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A056673 (n + 1) : ℝ)

end

end A056173.P8093851051660391803

namespace A056173

/-- `log2(A056673(n+1))` -/
def P8093851051660391803.Spec : Prop :=
  ∀ n, P8093851051660391803.a n = (A056173 (n + 1) : ℝ)

end A056173

/-! ## A056173.P5886394542786785229

`log2(A039593(n+1))-A056175(n+1)`
-/

namespace A056173.P5886394542786785229
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A039593 (n + 1) : ℝ) - (A056175 (n + 1) : ℝ)

end

end A056173.P5886394542786785229

namespace A056173

/-- `log2(A039593(n+1))-A056175(n+1)` -/
def P5886394542786785229.Spec : Prop :=
  ∀ n, P5886394542786785229.a n = (A056173 (n + 1) : ℝ)

end A056173

/-! ## A056173.P14967408892217928521

`val(A001359(n+1)*A056673(n+1), 2)`
-/

namespace A056173.P14967408892217928521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001359 (n + 1) * A056673 (n + 1)).toNat 2

end

end A056173.P14967408892217928521

namespace A056173

/-- `val(A001359(n+1)*A056673(n+1), 2)` -/
def P14967408892217928521.Spec : Prop :=
  ∀ n, (P14967408892217928521.a n : ℤ) = A056173 (n + 1)

end A056173

/-! ## A056173.P1851517759188303188

`val(A056673(n+1), A000005(A049592(n+1)))`
-/

namespace A056173.P1851517759188303188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A056673 (n + 1)).toNat (A000005 (A049592 (n + 1)).toNat).toNat

end

end A056173.P1851517759188303188

namespace A056173

/-- `val(A056673(n+1), A000005(A049592(n+1)))` -/
def P1851517759188303188.Spec : Prop :=
  ∀ n, (P1851517759188303188.a n : ℤ) = A056173 (n + 1)

end A056173

/-! ## A056173.P803658458662049816

`val(A056673(n+1), A046523(A045344(n+1)))`
-/

namespace A056173.P803658458662049816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A056673 (n + 1)).toNat (A046523 (A045344 (n + 1)).toNat).toNat

end

end A056173.P803658458662049816

namespace A056173

/-- `val(A056673(n+1), A046523(A045344(n+1)))` -/
def P803658458662049816.Spec : Prop :=
  ∀ n, (P803658458662049816.a n : ℤ) = A056173 (n + 1)

end A056173

/-! ## A056173.P12662177513303195270

`val(A056673(n+1), A000005(A001359(n+1)))`
-/

namespace A056173.P12662177513303195270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A056673 (n + 1)).toNat (A000005 (A001359 (n + 1)).toNat).toNat

end

end A056173.P12662177513303195270

namespace A056173

/-- `val(A056673(n+1), A000005(A001359(n+1)))` -/
def P12662177513303195270.Spec : Prop :=
  ∀ n, (P12662177513303195270.a n : ℤ) = A056173 (n + 1)

end A056173

/-! ## A056173.P6713429177839020741

`∏{e}[A056673(n+1), #]%A000203(n+1)`
-/

namespace A056173.P6713429177839020741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) (A000203 (n + 1))

end

end A056173.P6713429177839020741

namespace A056173

/-- `∏{e}[A056673(n+1), #]%A000203(n+1)` -/
def P6713429177839020741.Spec : Prop :=
  ∀ n, P6713429177839020741.a n = A056173 (n + 1)

end A056173

/-! ## A056173.P11244605146190124942

`A034973(n+1)-A001221(A056057(n+1))`
-/

namespace A056173.P11244605146190124942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (n + 1) - A001221 (A056057 (n + 1)).toNat

end

end A056173.P11244605146190124942

namespace A056173

/-- `A034973(n+1)-A001221(A056057(n+1))` -/
def P11244605146190124942.Spec : Prop :=
  ∀ n, P11244605146190124942.a n = A056173 (n + 1)

end A056173

/-! ## A056173.P16342785692120734143

`A001222(2^A001222(A056673(n+1)))`
-/

namespace A056173.P16342785692120734143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001222 (A056673 (n + 1)).toNat : ℤ))).toNat

end

end A056173.P16342785692120734143

namespace A056173

/-- `A001222(2^A001222(A056673(n+1)))` -/
def P16342785692120734143.Spec : Prop :=
  ∀ n, P16342785692120734143.a n = A056173 (n + 1)

end A056173

/-!
# A056174: Number of non-monotone maps from 1,...,n to 1,...,n.

The programs for A056174, the canonical program `A056174.P3001330646264561605` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056174 has offset 0).

The definition of A056174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056174.P6607658051548513682

`n^n-C(2*n, n)+n`
-/

namespace A056174.P6607658051548513682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - (Nat.choose (2 * n) n : ℤ) + (n : ℤ)

end

end A056174.P6607658051548513682

namespace A056174

/-- `n^n-C(2*n, n)+n` -/
def P6607658051548513682.Spec : Prop :=
  ∀ n, P6607658051548513682.a n = A056174 n

end A056174

/-! ## A056174.P3001330646264561605

`A000312(n)-A045992(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056174

/-- `A000312(n)-A045992(n)` -/
def P3001330646264561605.Spec : Prop :=
  ∀ n, P3001330646264561605.a n = A056174 n

theorem P3001330646264561605.correct : P3001330646264561605.Spec := by
  intro n
  simp only [A056174]

end A056174

/-! ## A056174.P3005737423769371179

`n-(C(2*n, n)-n^n)`
-/

namespace A056174.P3005737423769371179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.choose (2 * n) n : ℤ) - (n ^ n : ℤ))

end

end A056174.P3005737423769371179

namespace A056174

/-- `n-(C(2*n, n)-n^n)` -/
def P3005737423769371179.Spec : Prop :=
  ∀ n, P3005737423769371179.a n = A056174 n

end A056174

/-! ## A056174.P14301710282568756920

`n^n+n-A000984(n)`
-/

namespace A056174.P14301710282568756920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) + ((n : ℤ) - A000984 n)

end

end A056174.P14301710282568756920

namespace A056174

/-- `n^n+n-A000984(n)` -/
def P14301710282568756920.Spec : Prop :=
  ∀ n, P14301710282568756920.a n = A056174 n

end A056174

/-! ## A056174.P14505874653555381815

`n^n-A001405(2*n)+n`
-/

namespace A056174.P14505874653555381815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - A001405 (2 * n) + (n : ℤ)

end

end A056174.P14505874653555381815

namespace A056174

/-- `n^n-A001405(2*n)+n` -/
def P14505874653555381815.Spec : Prop :=
  ∀ n, P14505874653555381815.a n = A056174 n

end A056174

/-! ## A056174.P17530029164255304390

`abs(A007318(∑[4*n])-n^n-n)`
-/

namespace A056174.P17530029164255304390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - (n ^ n : ℤ) - (n : ℤ)|

end

end A056174.P17530029164255304390

namespace A056174

/-- `abs(A007318(∑[4*n])-n^n-n)` -/
def P17530029164255304390.Spec : Prop :=
  ∀ n, P17530029164255304390.a n = A056174 n

end A056174

/-! ## A056174.P16112874039364158040

`abs((n+1)*A000108(n)-n-n^n)`
-/

namespace A056174.P16112874039364158040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A000108 n - (n : ℤ) - (n ^ n : ℤ)|

end

end A056174.P16112874039364158040

namespace A056174

/-- `abs((n+1)*A000108(n)-n-n^n)` -/
def P16112874039364158040.Spec : Prop :=
  ∀ n, P16112874039364158040.a n = A056174 n

end A056174

/-! ## A056174.P120236336675684826

`A000312(n)+n-A000984(n)`
-/

namespace A056174.P120236336675684826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n + (n : ℤ) - A000984 n

end

end A056174.P120236336675684826

namespace A056174

/-- `A000312(n)+n-A000984(n)` -/
def P120236336675684826.Spec : Prop :=
  ∀ n, P120236336675684826.a n = A056174 n

end A056174

/-!
# A056175: Number of nonunitary prime divisors of the central binomial coefficient C(n, floor(n/2)) (A001405).

The programs for A056175, the canonical program `A056175.P9200230780470454519` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056175 has offset 1).

The definition of A056175 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056057, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056175.P9200230780470454519

`A001221(A056057(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056175

/-- `A001221(A056057(n+1))` -/
def P9200230780470454519.Spec : Prop :=
  ∀ n, P9200230780470454519.a n = A056175 (n + 1)

theorem P9200230780470454519.correct : P9200230780470454519.Spec := by
  intro n
  simp only [A056175, Nat.add_sub_cancel]

end A056175

/-! ## A056175.P7945284488019532899

`A034973(n+1)-A056173(n+1)`
-/

namespace A056175.P7945284488019532899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (n + 1) - A056173 (n + 1)

end

end A056175.P7945284488019532899

namespace A056175

/-- `A034973(n+1)-A056173(n+1)` -/
def P7945284488019532899.Spec : Prop :=
  ∀ n, P7945284488019532899.a n = A056175 (n + 1)

end A056175

/-! ## A056175.P16895858132711446220

`∑{e}[A056056(n+1), A056056(#)]`
-/

namespace A056175.P16895858132711446220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A056056 (Nat.factorization (f1 n).natAbs p)

end

end A056175.P16895858132711446220

namespace A056175

/-- `∑{e}[A056056(n+1), A056056(#)]` -/
def P16895858132711446220.Spec : Prop :=
  ∀ n, P16895858132711446220.a n = A056175 (n + 1)

end A056175

/-! ## A056175.P17593823309679694755

`A087436(∏{p}[A056056(n+1), A257990(#)+2])`
-/

namespace A056175.P17593823309679694755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A257990 p + 2)).toNat

end

end A056175.P17593823309679694755

namespace A056175

/-- `A087436(∏{p}[A056056(n+1), A257990(#)+2])` -/
def P17593823309679694755.Spec : Prop :=
  ∀ n, P17593823309679694755.a n = A056175 (n + 1)

end A056175

/-! ## A056175.P4179342600686502909

`A087436(∏{p}[A056056(n+1), 3*A056056(#)])`
-/

namespace A056175.P4179342600686502909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, 3 * A056056 p).toNat

end

end A056175.P4179342600686502909

namespace A056175

/-- `A087436(∏{p}[A056056(n+1), 3*A056056(#)])` -/
def P4179342600686502909.Spec : Prop :=
  ∀ n, P4179342600686502909.a n = A056175 (n + 1)

end A056175

/-! ## A056175.P4471790743749629647

`A001221(A056056(n+1))`
-/

namespace A056175.P4471790743749629647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056056 (n + 1)).toNat

end

end A056175.P4471790743749629647

namespace A056175

/-- `A001221(A056056(n+1))` -/
def P4471790743749629647.Spec : Prop :=
  ∀ n, P4471790743749629647.a n = A056175 (n + 1)

end A056175

/-! ## A056175.P1329850153476383147

`∑{d}[A056056(n+1), A061397(#)/#]`
-/

namespace A056175.P1329850153476383147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A061397 d : ℚ) / (d : ℚ)

end

end A056175.P1329850153476383147

namespace A056175

/-- `∑{d}[A056056(n+1), A061397(#)/#]` -/
def P1329850153476383147.Spec : Prop :=
  ∀ n, P1329850153476383147.a n = (A056175 (n + 1) : ℚ)

end A056175

/-! ## A056175.P10571936986120667031

`∑{p}[A056057(n+1), A056056(#)]`
-/

namespace A056175.P10571936986120667031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A056056 p

end

end A056175.P10571936986120667031

namespace A056175

/-- `∑{p}[A056057(n+1), A056056(#)]` -/
def P10571936986120667031.Spec : Prop :=
  ∀ n, P10571936986120667031.a n = A056175 (n + 1)

end A056175

/-! ## A056175.P8867340726291334011

`∑{p}[A056057(n+1), A056057(#)]`
-/

namespace A056175.P8867340726291334011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A056057 p

end

end A056175.P8867340726291334011

namespace A056175

/-- `∑{p}[A056057(n+1), A056057(#)]` -/
def P8867340726291334011.Spec : Prop :=
  ∀ n, P8867340726291334011.a n = A056175 (n + 1)

end A056175

/-! ## A056175.P13388893939660378692

`A087436(∏{p}[A056056(n+1), A000040(#)])`
-/

namespace A056175.P13388893939660378692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p).toNat

end

end A056175.P13388893939660378692

namespace A056175

/-- `A087436(∏{p}[A056056(n+1), A000040(#)])` -/
def P13388893939660378692.Spec : Prop :=
  ∀ n, P13388893939660378692.a n = A056175 (n + 1)

end A056175

/-! ## A056175.P2353261693897049236

`A001222(A000005(A056056(n+1)²))`
-/

namespace A056175.P2353261693897049236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (A056056 (n + 1) ^ 2).toNat).toNat

end

end A056175.P2353261693897049236

namespace A056175

/-- `A001222(A000005(A056056(n+1)²))` -/
def P2353261693897049236.Spec : Prop :=
  ∀ n, P2353261693897049236.a n = A056175 (n + 1)

end A056175

/-!
# A056176: Sum of a(n) terms of 1/k^(1/4) first exceeds n.

The programs for A056176, there is no canonical definition to state claims against.
-/

/-! ## A056176.P14136218414089476391

`round(log2(A082279(n+2)))`
-/

namespace A056176.P14136218414089476391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A082279 (n + 2) : ℝ))

end

end A056176.P14136218414089476391

/-! ## A056176.P3142606426402644710

`floor((n+2)^sqrt(2)/2)%A127489(n+1)`
-/

namespace A056176.P3142606426402644710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 2 : ℝ) ^ (Real.sqrt (2 : ℝ)) / 2⌋ (A127489 (n + 1))

end

end A056176.P3142606426402644710

/-! ## A056176.P8278666866639187245

`A008620(A003056(∑[A161188(n+1)²]))`
-/

namespace A056176.P8278666866639187245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161188 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A056176.P8278666866639187245

/-! ## A056176.P8715130788192640698

`lt[A225084(A225086(2*n+1)), A225087(n+1)]`
-/

namespace A056176.P8715130788192640698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225084 (A225086 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056176.P8715130788192640698

/-! ## A056176.P6060313436314717850

`A373811(A025713(n))`
-/

namespace A056176.P6060313436314717850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A025713 n).toNat

end

end A056176.P6060313436314717850

/-!
# A056177: Sum of a(n) terms of 1/k^(1/5) first exceeds n.

The programs for A056177, there is no canonical definition to state claims against.
-/

/-! ## A056177.P4832702951017561799

`A075465(n+1)-A324917(A060837(n+1))`
-/

namespace A056177.P4832702951017561799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075465 (n + 1) - A324917 (A060837 (n + 1)).toNat

end

end A056177.P4832702951017561799

/-! ## A056177.P2173659721236795511

`ceil(A229169(3*n+4)/13)`
-/

namespace A056177.P2173659721236795511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A229169 (3 * n + 4) : ℚ) / 13⌉

end

end A056177.P2173659721236795511

/-! ## A056177.P2812611914310126908

`A111660(A127037(3*n+2)+3)`
-/

namespace A056177.P2812611914310126908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A127037 (3 * n + 2) + 3).toNat

end

end A056177.P2812611914310126908

/-! ## A056177.P2255979104903829157

`ceil(∑[log(A338720(4*n+5))])`
-/

namespace A056177.P2255979104903829157
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A338720 (4 * n + 5) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A056177.P2255979104903829157

/-! ## A056177.P2352823539156104272

`∑[A143792(A076232(n+1))!]`
-/

namespace A056177.P2352823539156104272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A143792 (A076232 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056177.P2352823539156104272

/-!
# A056178: Sum of a(n) terms of 1/k^(2/3) first exceeds n.

The programs for A056178, there is no canonical definition to state claims against.
-/

/-! ## A056178.P17457111526398001004

`A008618(∑[record[A198459(n+1)]])`
-/

namespace A056178.P17457111526398001004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198459 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056178.P17457111526398001004

/-! ## A056178.P13048129626087616335

`A000196(A158825(2*(n+1))+A145128(n))`
-/

namespace A056178.P13048129626087616335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A158825 (2 * (n + 1)) + A145128 n).toNat

end

end A056178.P13048129626087616335

/-! ## A056178.P14803755550446377872

`A096862(A115720(n)!)+A006918(n)`
-/

namespace A056178.P14803755550446377872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096862 (Nat.factorial (A115720 n).toNat) + A006918 n

end

end A056178.P14803755550446377872

/-! ## A056178.P14521915788562271266

`A140200(A002621(n))`
-/

namespace A056178.P14521915788562271266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140200 (A002621 n).toNat

end

end A056178.P14521915788562271266

/-! ## A056178.P3654819426190296946

`A329548(A065962(n+1))`
-/

namespace A056178.P3654819426190296946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329548 (A065962 (n + 1)).toNat

end

end A056178.P3654819426190296946

/-!
# A056179: Sum of a(n) terms of 1/k^(3/4) first exceeds n.

The programs for A056179, there is no canonical definition to state claims against.
-/

/-! ## A056179.P8363487761514567251

`∑[∑[A002117(A091587(n))]]`
-/

namespace A056179.P8363487761514567251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (A091587 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056179.P8363487761514567251

/-! ## A056179.P17562424292325816030

`∑[A084824(∑[A097793(n)])]`
-/

namespace A056179.P17562424292325816030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097793 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084824 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056179.P17562424292325816030

/-! ## A056179.P16272189911014216041

`∑[A084824(∑[A259201(n)])]`
-/

namespace A056179.P16272189911014216041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259201 (n + 20)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084824 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056179.P16272189911014216041

/-! ## A056179.P16839584116664613846

`∑[A084824(∑[A053261(3*n+2)])]`
-/

namespace A056179.P16839584116664613846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053261 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084824 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056179.P16839584116664613846

/-! ## A056179.P437574730804586978

`A085141(A145130(n))`
-/

namespace A056179.P437574730804586978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A145130 n).toNat

end

end A056179.P437574730804586978

/-!
# A056180: Sum of a(n) terms of 1/k^(4/5) first exceeds n.

The programs for A056180, there is no canonical definition to state claims against.
-/

/-! ## A056180.P11245713942276770015

`A003056(A337462(2*(n+1))-A001107(n))`
-/

namespace A056180.P11245713942276770015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A337462 (2 * (n + 1)) - A001107 n).toNat

end

end A056180.P11245713942276770015

/-! ## A056180.P3948628457872482628

`A225687(∑[A277241(n)-n])`
-/

namespace A056180.P3948628457872482628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277241 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056180.P3948628457872482628

/-! ## A056180.P6408265094203863700

`A137734(∑[A025425(n*(9*n-7))])`
-/

namespace A056180.P6408265094203863700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025425 ((n : ℤ) * ((9 * n : ℤ) - 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056180.P6408265094203863700

/-! ## A056180.P2173091511015134884

`A085089(A006134(n))-A004526(n)`
-/

namespace A056180.P2173091511015134884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A006134 n).toNat - A004526 n

end

end A056180.P2173091511015134884

/-! ## A056180.P3409444845761440686

`A015128(n)-A025460(A332538(n))`
-/

namespace A056180.P3409444845761440686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - A025460 (A332538 n).toNat

end

end A056180.P3409444845761440686

/-!
# A056181: Sum of a(n) terms of 1/k^(5/6) first exceeds n.

The programs for A056181, there is no canonical definition to state claims against.
-/

/-! ## A056181.P7604232780984802114

`∑[A353838(∑[A340659(n)])]`
-/

namespace A056181.P7604232780984802114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340659 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353838 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056181.P7604232780984802114

/-! ## A056181.P7553391720565997868

`∑[A261221(∑[A288583(n+1)])]`
-/

namespace A056181.P7553391720565997868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288583 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056181.P7553391720565997868

/-! ## A056181.P6617351306373146416

`floor(A056183(A056143(n+1))/2)`
-/

namespace A056181.P6617351306373146416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056183 (A056143 (n + 1)).toNat : ℚ) / 2⌋

end

end A056181.P6617351306373146416

/-! ## A056181.P5929439559372128307

`A352514(A006720(n))+A000009(3*n)`
-/

namespace A056181.P5929439559372128307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 (A006720 n).toNat + A000009 (3 * n)

end

end A056181.P5929439559372128307

/-! ## A056181.P14973447103167702719

`A328787(n+2)+A004524(A342213(n+2))`
-/

namespace A056181.P14973447103167702719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328787 (n + 2) + A004524 (A342213 (n + 2)).toNat

end

end A056181.P14973447103167702719

/-!
# A056182: First differences of A003063.

The programs for A056182, the canonical program `A056182.P12278696812602532658` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056182 has offset 0).

The definition of A056182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056182.P12278696812602532658

`2*(3^n-2^n)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056182

/-- `2*(3^n-2^n)` -/
def P12278696812602532658.Spec : Prop :=
  ∀ n, P12278696812602532658.a n = A056182 n

theorem P12278696812602532658.correct : P12278696812602532658.Spec := by
  intro n
  simp only [A056182]

end A056182

/-! ## A056182.P4415072390105714585

`5*a(n-1)-6*a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A056182.P4415072390105714585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  5 * a (n - 1) - 6 * a (n - 2)

end

end A056182.P4415072390105714585

namespace A056182

/-- `5*a(n-1)-6*a(n-2)` -/
def P4415072390105714585.Spec : Prop :=
  ∀ n, P4415072390105714585.a n = A056182 n

theorem P4415072390105714585.correct : P4415072390105714585.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A056182, Nat.add_sub_cancel, A056182.P4415072390105714585.a, A056182.P12278696812602532658.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A056182, Nat.add_sub_cancel, A056182.P4415072390105714585.a, A056182.P12278696812602532658.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A056182

/-! ## A056182.P94539842069070362

`ogf(2x/(1-5x+6x^2))`
-/

namespace A056182.P94539842069070362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -5, 6] n

end

end A056182.P94539842069070362

namespace A056182

/-- `ogf(2x/(1-5x+6x^2))` -/
def P94539842069070362.Spec : Prop :=
  ∀ n, P94539842069070362.a n = A056182 n

end A056182

/-! ## A056182.P9620091499894968173

`lcm(2, 2^n-3^n)`
-/

namespace A056182.P9620091499894968173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((2 ^ n : ℤ) - (3 ^ n : ℤ))

end

end A056182.P9620091499894968173

namespace A056182

/-- `lcm(2, 2^n-3^n)` -/
def P9620091499894968173.Spec : Prop :=
  ∀ n, (P9620091499894968173.a n : ℤ) = A056182 n

end A056182

/-! ## A056182.P5813982153050279642

`xor(1, Δ[3^n]-∑[2^n])`
-/

namespace A056182.P5813982153050279642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A056182.P5813982153050279642

namespace A056182

/-- `xor(1, Δ[3^n]-∑[2^n])` -/
def P5813982153050279642.Spec : Prop :=
  ∀ n, P5813982153050279642.a n = A056182 n

end A056182

/-! ## A056182.P17313203613827449121

`and(Δ[3^n]-∑[2^n], -2)`
-/

namespace A056182.P17313203613827449121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) (-2)

end

end A056182.P17313203613827449121

namespace A056182

/-- `and(Δ[3^n]-∑[2^n], -2)` -/
def P17313203613827449121.Spec : Prop :=
  ∀ n, P17313203613827449121.a n = A056182 n

end A056182

/-! ## A056182.P12811084843675854922

`Δ[or(1, 3^n-2^(n+1))]`
-/

namespace A056182.P12811084843675854922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((3 ^ n : ℤ) - (2 ^ (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056182.P12811084843675854922

namespace A056182

/-- `Δ[or(1, 3^n-2^(n+1))]` -/
def P12811084843675854922.Spec : Prop :=
  ∀ n, P12811084843675854922.a n = A056182 n

end A056182

/-! ## A056182.P18356313139250464671

`Δ[3^n]-abs(∏[-a(n-1)])` with `a(0)=2`
-/

namespace A056182.P18356313139250464671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  -f2 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - |∏ j ∈ Finset.range (n + 1), f2 j|

end

end A056182.P18356313139250464671

namespace A056182

/-- `Δ[3^n]-abs(∏[-a(n-1)])` -/
def P18356313139250464671.Spec : Prop :=
  ∀ n, P18356313139250464671.a n = A056182 n

end A056182

/-! ## A056182.P13524767801432790923

`2^n+a(n-1)/sqrt(1/9)` with `a(0)=0`
-/

namespace A056182.P13524767801432790923
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (2 ^ n : ℝ) + a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A056182.P13524767801432790923

namespace A056182

/-- `2^n+a(n-1)/sqrt(1/9)` -/
def P13524767801432790923.Spec : Prop :=
  ∀ n, P13524767801432790923.a n = (A056182 n : ℝ)

theorem P13524767801432790923.correct : P13524767801432790923.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A056182, Nat.add_sub_cancel, A056182.P13524767801432790923.a, A056182.P12278696812602532658.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A056182, Nat.add_sub_cancel, A056182.P13524767801432790923.a, A056182.P12278696812602532658.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A056182

/-! ## A056182.P11545235946969854690

`a(n-1)+a(n-1)+a(n-1)+2^n` with `a(0)=0`
-/

namespace A056182.P11545235946969854690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 2 ^ n))

end

end A056182.P11545235946969854690

namespace A056182

/-- `a(n-1)+a(n-1)+a(n-1)+2^n` -/
def P11545235946969854690.Spec : Prop :=
  ∀ n, (P11545235946969854690.a n : ℤ) = A056182 n

theorem P11545235946969854690.correct : P11545235946969854690.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A056182, Nat.add_sub_cancel, A056182.P11545235946969854690.a, A056182.P12278696812602532658.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A056182, Nat.add_sub_cancel, A056182.P11545235946969854690.a, A056182.P12278696812602532658.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A056182

/-! ## A056182.P9282362142107020125

`Δ[A101052(n)]`
-/

namespace A056182.P9282362142107020125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056182.P9282362142107020125

namespace A056182

/-- `Δ[A101052(n)]` -/
def P9282362142107020125.Spec : Prop :=
  ∀ n, P9282362142107020125.a n = A056182 n

end A056182

/-! ## A056182.P8704683940639665997

`A002783(n)-1`
-/

namespace A056182.P8704683940639665997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002783 n - 1

end

end A056182.P8704683940639665997

namespace A056182

/-- `A002783(n)-1` -/
def P8704683940639665997.Spec : Prop :=
  ∀ n, P8704683940639665997.a n = A056182 n

end A056182

/-! ## A056182.P8000744730458974103

`A145563(n)/2`
-/

namespace A056182.P8000744730458974103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145563 n : ℚ) / 2

end

end A056182.P8000744730458974103

namespace A056182

/-- `A145563(n)/2` -/
def P8000744730458974103.Spec : Prop :=
  ∀ n, P8000744730458974103.a n = (A056182 n : ℚ)

end A056182

/-! ## A056182.P7969782663892162073

`Δ[A003063(n+1)]`
-/

namespace A056182.P7969782663892162073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056182.P7969782663892162073

namespace A056182

/-- `Δ[A003063(n+1)]` -/
def P7969782663892162073.Spec : Prop :=
  ∀ n, P7969782663892162073.a n = A056182 n

end A056182

/-! ## A056182.P1792549725553692389

`Δ[A028243(n+1)]`
-/

namespace A056182.P1792549725553692389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056182.P1792549725553692389

namespace A056182

/-- `Δ[A028243(n+1)]` -/
def P1792549725553692389.Spec : Prop :=
  ∀ n, P1792549725553692389.a n = A056182 n

end A056182

/-! ## A056182.P15063862500667720138

`Δ[2*A134063(n)]`
-/

namespace A056182.P15063862500667720138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056182.P15063862500667720138

namespace A056182

/-- `Δ[2*A134063(n)]` -/
def P15063862500667720138.Spec : Prop :=
  ∀ n, P15063862500667720138.a n = A056182 n

end A056182

/-! ## A056182.P362899072379960277

`A304973(2*(n+1))`
-/

namespace A056182.P362899072379960277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 (2 * (n + 1))

end

end A056182.P362899072379960277

namespace A056182

/-- `A304973(2*(n+1))` -/
def P362899072379960277.Spec : Prop :=
  ∀ n, P362899072379960277.a n = A056182 n

end A056182

/-! ## A056182.P8789845411270643360

`A245804(n)+2^n`
-/

namespace A056182.P8789845411270643360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245804 n + (2 ^ n : ℤ)

end

end A056182.P8789845411270643360

namespace A056182

/-- `A245804(n)+2^n` -/
def P8789845411270643360.Spec : Prop :=
  ∀ n, P8789845411270643360.a n = A056182 n

end A056182

/-! ## A056182.P13193632086996915694

`A027649(n)-2^n`
-/

namespace A056182.P13193632086996915694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n - (2 ^ n : ℤ)

end

end A056182.P13193632086996915694

namespace A056182

/-- `A027649(n)-2^n` -/
def P13193632086996915694.Spec : Prop :=
  ∀ n, P13193632086996915694.a n = A056182 n

end A056182

/-! ## A056182.P7981096491773083711

`A003063(n+2)-A003063(n+1)`
-/

namespace A056182.P7981096491773083711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003063 (n + 2) - A003063 (n + 1)

end

end A056182.P7981096491773083711

namespace A056182

/-- `A003063(n+2)-A003063(n+1)` -/
def P7981096491773083711.Spec : Prop :=
  ∀ n, P7981096491773083711.a n = A056182 n

end A056182

/-!
# A056183: Sum of a(n) terms of 1/k^(6/7) first exceeds n.

The programs for A056183, there is no canonical definition to state claims against.
-/

/-! ## A056183.P5448404099636757978

`A117487(n+1)-A001222(n!)`
-/

namespace A056183.P5448404099636757978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117487 (n + 1) - A001222 (Nat.factorial n)

end

end A056183.P5448404099636757978

/-! ## A056183.P16280564271662260754

`∑[A135662(∑[A231429(3*n+1)+3])]`
-/

namespace A056183.P16280564271662260754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231429 (3 * n + 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056183.P16280564271662260754

/-! ## A056183.P15839096652887936998

`A117487(n+1)-A001222(A000142(n))`
-/

namespace A056183.P15839096652887936998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117487 (n + 1) - A001222 (A000142 n).toNat

end

end A056183.P15839096652887936998

/-! ## A056183.P889499652486540824

`A000127(n+1)-A151843(A000167(n))`
-/

namespace A056183.P889499652486540824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) - A151843 (A000167 n).toNat

end

end A056183.P889499652486540824

/-! ## A056183.P15156133776823895491

`A281873(A001521(n+1))+A034357(n+1)`
-/

namespace A056183.P15156133776823895491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281873 (A001521 (n + 1)).toNat + A034357 (n + 1)

end

end A056183.P15156133776823895491

/-!
# A056184: Sum of a(n) terms of 1/k^(7/8) first exceeds n.

The programs for A056184, there is no canonical definition to state claims against.
-/

/-! ## A056184.P16672402679137425394

`∑[A085501(A001764(n)+1)]`
-/

namespace A056184.P16672402679137425394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085501 (A001764 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056184.P16672402679137425394

/-! ## A056184.P16200069540229450729

`A325534(2*n+1)-A332899(n!)`
-/

namespace A056184.P16200069540229450729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (2 * n + 1) - A332899 (Nat.factorial n)

end

end A056184.P16200069540229450729

/-! ## A056184.P6593651136527822767

`A192952(n)+A014963(-∏[n-C(2, n+2)])`
-/

namespace A056184.P6593651136527822767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192952 n + A014963 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A056184.P6593651136527822767

/-! ## A056184.P11186460377482360339

`A034074(n)-A000120(A047849(n))`
-/

namespace A056184.P11186460377482360339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034074 n - A000120 (A047849 n).toNat

end

end A056184.P11186460377482360339

/-!
# A056185: Sum of a(n) terms of 1/k^(8/9) first exceeds n.

The programs for A056185, there is no canonical definition to state claims against.
-/

/-! ## A056185.P12538154557078716417

`A182616(n)+A049107(A102468(n))`
-/

namespace A056185.P12538154557078716417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 n + A049107 (A102468 n).toNat

end

end A056185.P12538154557078716417

/-! ## A056185.P4495423201587097087

`A339006(n+1)-A268238(A337898(n+1))`
-/

namespace A056185.P4495423201587097087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339006 (n + 1) - A268238 (A337898 (n + 1)).toNat

end

end A056185.P4495423201587097087

/-! ## A056185.P3540499863271515836

`A339737(A104070(n+1))+A000225(n)`
-/

namespace A056185.P3540499863271515836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339737 (A104070 (n + 1)).toNat + A000225 n

end

end A056185.P3540499863271515836

/-! ## A056185.P9423906589988463212

`A000041(2*n)-A379306(A000142(n))`
-/

namespace A056185.P9423906589988463212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A379306 (A000142 n).toNat

end

end A056185.P9423906589988463212

/-!
# A056186: Sum of a(n) terms of 1/k^(9/10) first exceeds n.

The programs for A056186, there is no canonical definition to state claims against.
-/

/-! ## A056186.P10648593417411764607

`A187214(ceil(2^(n-2)+n))+or(1, 2^n-1)`
-/

namespace A056186.P10648593417411764607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187214 ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (n : ℚ)⌉.toNat + Int.lor 1 ((2 ^ n : ℤ) - 1)

end

end A056186.P10648593417411764607

/-! ## A056186.P2791719580133680170

`∑[A000196(A099752(n))]`
-/

namespace A056186.P2791719580133680170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A099752 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056186.P2791719580133680170

/-! ## A056186.P5089984034970043736

`A377028(A221455(n+2))`
-/

namespace A056186.P5089984034970043736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377028 (A221455 (n + 2)).toNat

end

end A056186.P5089984034970043736

/-! ## A056186.P13702430169980208604

`A262689(A278472(n)+A073280(n))`
-/

namespace A056186.P13702430169980208604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A278472 n + A073280 n).toNat

end

end A056186.P13702430169980208604

/-!
# A056188: a(1) = 1; for n>1, sum of binomial(n,k) as k runs over RRS(n), the reduced residue system of n.

The programs for A056188, there is no canonical definition to state claims against.
-/

/-! ## A056188.P15033067425232391589

`(n+1)*A098792(n+1)`
-/

namespace A056188.P15033067425232391589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A098792 (n + 1)

end

end A056188.P15033067425232391589

/-! ## A056188.P785461160411174727

`2^(n+1)-A056189(n+1)`
-/

namespace A056188.P785461160411174727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A056189 (n + 1)

end

end A056188.P785461160411174727

/-! ## A056188.P14115247839648967909

`and(-A056189(n+1), A095121(n))`
-/

namespace A056188.P14115247839648967909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A056189 (n + 1)) (A095121 n)

end

end A056188.P14115247839648967909

/-! ## A056188.P1248504921312550705

`and(-A056189(n+1), A126646(n))`
-/

namespace A056188.P1248504921312550705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A056189 (n + 1)) (A126646 n)

end

end A056188.P1248504921312550705

/-! ## A056188.P510769991913577331

`A048578(n)-(A056189(n+1)+1)`
-/

namespace A056188.P510769991913577331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - (A056189 (n + 1) + 1)

end

end A056188.P510769991913577331

/-! ## A056188.P14226802275046437887

`A000079(n)+A000079(n)-A056189(n+1)`
-/

namespace A056188.P14226802275046437887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A000079 n - A056189 (n + 1))

end

end A056188.P14226802275046437887

/-! ## A056188.P3957304726778650899

`A056045(n+1)+A056200(n+1)-A056189(n+1)`
-/

namespace A056188.P3957304726778650899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056045 (n + 1) + (A056200 (n + 1) - A056189 (n + 1))

end

end A056188.P3957304726778650899

/-! ## A056188.P17979847573941210430

`A060546(2*(n+1))-A056189(n+1)%A060546(2*(n+1))`
-/

namespace A056188.P17979847573941210430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * (n + 1)) - Int.tmod (A056189 (n + 1)) (A060546 (2 * (n + 1)))

end

end A056188.P17979847573941210430

/-!
# A056189: a(n) = 2^n - A056188(n).

The programs for A056189, there is no canonical definition to state claims against.
-/

/-! ## A056189.P10449391161057851901

`2^(n+1)-A056188(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056189.P10449391161057851901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A056188 (n + 1)

end

end A056189.P10449391161057851901

/-! ## A056189.P11557021920578874093

`and(-A056188(n+1), A095121(n))`
-/

namespace A056189.P11557021920578874093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A056188 (n + 1)) (A095121 n)

end

end A056189.P11557021920578874093

/-! ## A056189.P4795985416819318047

`and(-A056188(n+1), A126646(n))`
-/

namespace A056189.P4795985416819318047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A056188 (n + 1)) (A126646 n)

end

end A056189.P4795985416819318047

/-! ## A056189.P5089885090676486100

`abs(A000079(n+1)-A056188(n+1))`
-/

namespace A056189.P5089885090676486100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 1) - A056188 (n + 1)|

end

end A056189.P5089885090676486100

/-! ## A056189.P1793848957352491192

`A056045(n+1)+A056200(n+1)-A056188(n+1)`
-/

namespace A056189.P1793848957352491192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056045 (n + 1) + (A056200 (n + 1) - A056188 (n + 1))

end

end A056189.P1793848957352491192

/-! ## A056189.P12893804064744886932

`A082906(n+1)+A271834(n+1)-A056188(n+1)`
-/

namespace A056189.P12893804064744886932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082906 (n + 1) + (A271834 (n + 1) - A056188 (n + 1))

end

end A056189.P12893804064744886932

/-!
# A056191: Characteristic cube divisor of n: cube of g = gcd(K,F), where K is the largest square root divisor of n (A000188) and F = n/(K*K) = A007913(n) is its squarefree part; g^2 divides K^2 = A008833(n) = g^2*L^2 and g divides F = gf.

The programs for A056191, the canonical program `A056191.P12587118165966918180` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056191 has offset 1).

The definition of A056191 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055229, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056191.P12587118165966918180

`A055229(n+1)^3`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056191

/-- `A055229(n+1)^3` -/
def P12587118165966918180.Spec : Prop :=
  ∀ n, P12587118165966918180.a n = A056191 (n + 1)

theorem P12587118165966918180.correct : P12587118165966918180.Spec := by
  intro n
  simp only [A056191, Nat.add_sub_cancel]

end A056191

/-! ## A056191.P1536418307281212615

`(n+1)/A056192(n+1)`
-/

namespace A056191.P1536418307281212615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A056192 (n + 1) : ℚ)

end

end A056191.P1536418307281212615

namespace A056191

/-- `(n+1)/A056192(n+1)` -/
def P1536418307281212615.Spec : Prop :=
  ∀ n, P1536418307281212615.a n = (A056191 (n + 1) : ℚ)

end A056191

/-! ## A056191.P3820631371531830848

`A007913(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))^3`
-/

namespace A056191.P3820631371531830848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) ^ 3

end

end A056191.P3820631371531830848

namespace A056191

/-- `A007913(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))^3` -/
def P3820631371531830848.Spec : Prop :=
  ∀ n, P3820631371531830848.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P1435632497651944397

`A000578(A055229(n+1))`
-/

namespace A056191.P1435632497651944397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A055229 (n + 1)).toNat

end

end A056191.P1435632497651944397

namespace A056191

/-- `A000578(A055229(n+1))` -/
def P1435632497651944397.Spec : Prop :=
  ∀ n, P1435632497651944397.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P17927572218445123072

`A011264(A055229(n+1)²)`
-/

namespace A056191.P17927572218445123072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011264 (A055229 (n + 1) ^ 2).toNat

end

end A056191.P17927572218445123072

namespace A056191

/-- `A011264(A055229(n+1)²)` -/
def P17927572218445123072.Spec : Prop :=
  ∀ n, P17927572218445123072.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P1635743505673080342

`A102631(A055229(n+1)²)`
-/

namespace A056191.P1635743505673080342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (A055229 (n + 1) ^ 2).toNat

end

end A056191.P1635743505673080342

namespace A056191

/-- `A102631(A055229(n+1)²)` -/
def P1635743505673080342.Spec : Prop :=
  ∀ n, P1635743505673080342.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P4772507469119594755

`A268385(A055229(n+1)²)`
-/

namespace A056191.P4772507469119594755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A055229 (n + 1) ^ 2).toNat

end

end A056191.P4772507469119594755

namespace A056191

/-- `A268385(A055229(n+1)²)` -/
def P4772507469119594755.Spec : Prop :=
  ∀ n, P4772507469119594755.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P15664190682897328104

`A356191(A055229(n+1)²)`
-/

namespace A056191.P15664190682897328104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (A055229 (n + 1) ^ 2).toNat

end

end A056191.P15664190682897328104

namespace A056191

/-- `A356191(A055229(n+1)²)` -/
def P15664190682897328104.Spec : Prop :=
  ∀ n, P15664190682897328104.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P7497278340567784858

`A007913(A057521(n+1))^3`
-/

namespace A056191.P7497278340567784858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A057521 (n + 1)).toNat ^ 3

end

end A056191.P7497278340567784858

namespace A056191

/-- `A007913(A057521(n+1))^3` -/
def P7497278340567784858.Spec : Prop :=
  ∀ n, P7497278340567784858.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P14741962497720066126

`A007913(A062378(n+1))^3`
-/

namespace A056191.P14741962497720066126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A062378 (n + 1)).toNat ^ 3

end

end A056191.P14741962497720066126

namespace A056191

/-- `A007913(A062378(n+1))^3` -/
def P14741962497720066126.Spec : Prop :=
  ∀ n, P14741962497720066126.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P9826758382950230744

`A057521((n+1)/A056623(n+1))`
-/

namespace A056191.P9826758382950230744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A056623 (n + 1) : ℚ))).toNat

end

end A056191.P9826758382950230744

namespace A056191

/-- `A057521((n+1)/A056623(n+1))` -/
def P9826758382950230744.Spec : Prop :=
  ∀ n, P9826758382950230744.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P8128803218627251400

`A203025((n+1)/A056623(n+1))`
-/

namespace A056191.P8128803218627251400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203025 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A056623 (n + 1) : ℚ))).toNat

end

end A056191.P8128803218627251400

namespace A056191

/-- `A203025((n+1)/A056623(n+1))` -/
def P8128803218627251400.Spec : Prop :=
  ∀ n, P8128803218627251400.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P13230094351073464571

`A053149(A007913(A062378(n+1)))`
-/

namespace A056191.P13230094351073464571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053149 (A007913 (A062378 (n + 1)).toNat).toNat

end

end A056191.P13230094351073464571

namespace A056191

/-- `A053149(A007913(A062378(n+1)))` -/
def P13230094351073464571.Spec : Prop :=
  ∀ n, P13230094351073464571.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P8091841722520278710

`A056551(A007913(A062378(n+1))²)`
-/

namespace A056191.P8091841722520278710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056551 (A007913 (A062378 (n + 1)).toNat ^ 2).toNat

end

end A056191.P8091841722520278710

namespace A056191

/-- `A056551(A007913(A062378(n+1))²)` -/
def P8091841722520278710.Spec : Prop :=
  ∀ n, P8091841722520278710.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P15396049990117898845

`A000578(A007913((n+1)/A055231(n+1)))`
-/

namespace A056191.P15396049990117898845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat).toNat

end

end A056191.P15396049990117898845

namespace A056191

/-- `A000578(A007913((n+1)/A055231(n+1)))` -/
def P15396049990117898845.Spec : Prop :=
  ∀ n, P15396049990117898845.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P3847795506746695557

`A000578(gcd(A000188(n+1), A007913(n+1)))`
-/

namespace A056191.P3847795506746695557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (Int.gcd (A000188 (n + 1)) (A007913 (n + 1)))

end

end A056191.P3847795506746695557

namespace A056191

/-- `A000578(gcd(A000188(n+1), A007913(n+1)))` -/
def P3847795506746695557.Spec : Prop :=
  ∀ n, P3847795506746695557.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P3998949296877237421

`A000578(gcd(A008834(n+1), A072905(n+1)))`
-/

namespace A056191.P3998949296877237421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (Int.gcd (A008834 (n + 1)) (A072905 (n + 1)))

end

end A056191.P3998949296877237421

namespace A056191

/-- `A000578(gcd(A008834(n+1), A072905(n+1)))` -/
def P3998949296877237421.Spec : Prop :=
  ∀ n, P3998949296877237421.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P11883745493392060274

`A055229(A000027(n+1))²*A055229(n+1)`
-/

namespace A056191.P11883745493392060274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A000027 (n + 1)).toNat ^ 2 * A055229 (n + 1)

end

end A056191.P11883745493392060274

namespace A056191

/-- `A055229(A000027(n+1))²*A055229(n+1)` -/
def P11883745493392060274.Spec : Prop :=
  ∀ n, P11883745493392060274.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P14654598081629120671

`A007948(A055229(n+1)²)*A055229(n+1)`
-/

namespace A056191.P14654598081629120671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A055229 (n + 1) ^ 2).toNat * A055229 (n + 1)

end

end A056191.P14654598081629120671

namespace A056191

/-- `A007948(A055229(n+1)²)*A055229(n+1)` -/
def P14654598081629120671.Spec : Prop :=
  ∀ n, P14654598081629120671.a n = A056191 (n + 1)

end A056191

/-! ## A056191.P1462233924545109592

`A008833(A055229(n+1)²)*A055229(n+1)`
-/

namespace A056191.P1462233924545109592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A055229 (n + 1) ^ 2).toNat * A055229 (n + 1)

end

end A056191.P1462233924545109592

namespace A056191

/-- `A008833(A055229(n+1)²)*A055229(n+1)` -/
def P1462233924545109592.Spec : Prop :=
  ∀ n, P1462233924545109592.a n = A056191 (n + 1)

end A056191

/-!
# A056192: a(n) = n divided by its characteristic cube divisor A056191.

The programs for A056192, the canonical program `A056192.P7016180020851153746` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056192 has offset 1).

The definition of A056192 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055229, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056192.P7016180020851153746

`(n+1)/A055229(n+1)^3`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056192

/-- `(n+1)/A055229(n+1)^3` -/
def P7016180020851153746.Spec : Prop :=
  ∀ n, P7016180020851153746.a n = (A056192 (n + 1) : ℚ)

end A056192

/-! ## A056192.P9281341979712344168

`(n+1)/A056191(n+1)`
-/

namespace A056192.P9281341979712344168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A056191 (n + 1) : ℚ)

end

end A056192.P9281341979712344168

namespace A056192

/-- `(n+1)/A056191(n+1)` -/
def P9281341979712344168.Spec : Prop :=
  ∀ n, P9281341979712344168.a n = (A056192 (n + 1) : ℚ)

end A056192

/-! ## A056192.P11063428717050582605

`A055231(n+1)*A056623(n+1)`
-/

namespace A056192.P11063428717050582605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A056623 (n + 1)

end

end A056192.P11063428717050582605

namespace A056192

/-- `A055231(n+1)*A056623(n+1)` -/
def P11063428717050582605.Spec : Prop :=
  ∀ n, P11063428717050582605.a n = A056192 (n + 1)

end A056192

/-! ## A056192.P17951527694814758995

`(n+1)/A000578(A055229(n+1))`
-/

namespace A056192.P17951527694814758995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000578 (A055229 (n + 1)).toNat : ℚ)

end

end A056192.P17951527694814758995

namespace A056192

/-- `(n+1)/A000578(A055229(n+1))` -/
def P17951527694814758995.Spec : Prop :=
  ∀ n, P17951527694814758995.a n = (A056192 (n + 1) : ℚ)

end A056192

/-! ## A056192.P12689872307930188182

`lcm(A050985(n+1), A056623(n+1))`
-/

namespace A056192.P12689872307930188182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050985 (n + 1)) (A056623 (n + 1))

end

end A056192.P12689872307930188182

namespace A056192

/-- `lcm(A050985(n+1), A056623(n+1))` -/
def P12689872307930188182.Spec : Prop :=
  ∀ n, (P12689872307930188182.a n : ℤ) = A056192 (n + 1)

end A056192

/-! ## A056192.P11063810036010203966

`A056622(n+1)²*A055231(n+1)`
-/

namespace A056192.P11063810036010203966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (n + 1) ^ 2 * A055231 (n + 1)

end

end A056192.P11063810036010203966

namespace A056192

/-- `A056622(n+1)²*A055231(n+1)` -/
def P11063810036010203966.Spec : Prop :=
  ∀ n, P11063810036010203966.a n = A056192 (n + 1)

end A056192

/-! ## A056192.P11288670862307273815

`(n+1)/A268385(A055229(n+1)²)`
-/

namespace A056192.P11288670862307273815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A268385 (A055229 (n + 1) ^ 2).toNat : ℚ)

end

end A056192.P11288670862307273815

namespace A056192

/-- `(n+1)/A268385(A055229(n+1)²)` -/
def P11288670862307273815.Spec : Prop :=
  ∀ n, P11288670862307273815.a n = (A056192 (n + 1) : ℚ)

end A056192

/-! ## A056192.P13599839419559130519

`(n+1)/A053149(A007913(A062378(n+1)))`
-/

namespace A056192.P13599839419559130519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053149 (A007913 (A062378 (n + 1)).toNat).toNat : ℚ)

end

end A056192.P13599839419559130519

namespace A056192

/-- `(n+1)/A053149(A007913(A062378(n+1)))` -/
def P13599839419559130519.Spec : Prop :=
  ∀ n, P13599839419559130519.a n = (A056192 (n + 1) : ℚ)

end A056192

/-! ## A056192.P3461059116052108563

`(n+1)/A000578(gcd(A000188(n+1), A007913(n+1)))`
-/

namespace A056192.P3461059116052108563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000578 (Int.gcd (A000188 (n + 1)) (A007913 (n + 1))) : ℚ)

end

end A056192.P3461059116052108563

namespace A056192

/-- `(n+1)/A000578(gcd(A000188(n+1), A007913(n+1)))` -/
def P3461059116052108563.Spec : Prop :=
  ∀ n, P3461059116052108563.a n = (A056192 (n + 1) : ℚ)

end A056192

/-! ## A056192.P15812662950265933849

`(A000188(n+1)/A055229(n+1))²*A055231(n+1)`
-/

namespace A056192.P15812662950265933849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000188 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ)) ^ 2 * (A055231 (n + 1) : ℚ)

end

end A056192.P15812662950265933849

namespace A056192

/-- `(A000188(n+1)/A055229(n+1))²*A055231(n+1)` -/
def P15812662950265933849.Spec : Prop :=
  ∀ n, P15812662950265933849.a n = (A056192 (n + 1) : ℚ)

end A056192

/-! ## A056192.P14016112807700338595

`A008833(n+1)/A055229(n+1)²*A055231(n+1)`
-/

namespace A056192.P14016112807700338595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 (n + 1) : ℚ) / (A055229 (n + 1) ^ 2 : ℚ) * (A055231 (n + 1) : ℚ)

end

end A056192.P14016112807700338595

namespace A056192

/-- `A008833(n+1)/A055229(n+1)²*A055231(n+1)` -/
def P14016112807700338595.Spec : Prop :=
  ∀ n, P14016112807700338595.a n = (A056192 (n + 1) : ℚ)

end A056192

/-! ## A056192.P11922680961185889880

`A007947(n+1)/A007947(A003557(n+1))*A056623(n+1)`
-/

namespace A056192.P11922680961185889880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A007947 (A003557 (n + 1)).toNat : ℚ) * (A056623 (n + 1) : ℚ)

end

end A056192.P11922680961185889880

namespace A056192

/-- `A007947(n+1)/A007947(A003557(n+1))*A056623(n+1)` -/
def P11922680961185889880.Spec : Prop :=
  ∀ n, P11922680961185889880.a n = (A056192 (n + 1) : ℚ)

end A056192

/-! ## A056192.P15582055973926187244

`A008833(A008833(n+1)/A055229(n+1))*A055231(n+1)`
-/

namespace A056192.P15582055973926187244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (SequenceMachineLib.roundAway ((A008833 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ))).toNat * A055231 (n + 1)

end

end A056192.P15582055973926187244

namespace A056192

/-- `A008833(A008833(n+1)/A055229(n+1))*A055231(n+1)` -/
def P15582055973926187244.Spec : Prop :=
  ∀ n, P15582055973926187244.a n = A056192 (n + 1)

end A056192

/-! ## A056192.P2437846306772206708

`A056622(n+1)²*A056622(A360541(n+1))`
-/

namespace A056192.P2437846306772206708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (n + 1) ^ 2 * A056622 (A360541 (n + 1)).toNat

end

end A056192.P2437846306772206708

namespace A056192

/-- `A056622(n+1)²*A056622(A360541(n+1))` -/
def P2437846306772206708.Spec : Prop :=
  ∀ n, P2437846306772206708.a n = A056192 (n + 1)

end A056192

/-! ## A056192.P8692516663014515027

`A071975(A011262(n+1))²*A071975(A071975(n+1))`
-/

namespace A056192.P8692516663014515027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A011262 (n + 1)).toNat ^ 2 * A071975 (A071975 (n + 1)).toNat

end

end A056192.P8692516663014515027

namespace A056192

/-- `A071975(A011262(n+1))²*A071975(A071975(n+1))` -/
def P8692516663014515027.Spec : Prop :=
  ∀ n, P8692516663014515027.a n = A056192 (n + 1)

end A056192

/-!
# A056193: Goodstein sequence starting with 4: to calculate a(n+1), write a(n) in the hereditary representation in base n+2, then bump the base to n+3, then subtract 1.

The programs for A056193, there is no canonical definition to state claims against.
-/

/-! ## A056193.P4667660705381313009

`A271989(n)/ceil(acot(n))`
-/

namespace A056193.P4667660705381313009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271989 n : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A056193.P4667660705381313009

/-! ## A056193.P18134972534167840262

`A271989(n)/A054977(n)`
-/

namespace A056193.P18134972534167840262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271989 n : ℚ) / (A054977 n : ℚ)

end

end A056193.P18134972534167840262

/-! ## A056193.P6234302925775382325

`A271989(n)-A000038(n)²`
-/

namespace A056193.P6234302925775382325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271989 n - A000038 n ^ 2

end

end A056193.P6234302925775382325

/-! ## A056193.P4171278287557816500

`A271989(n)/(A000007(n)+1)`
-/

namespace A056193.P4171278287557816500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271989 n : ℚ) / (A000007 n + 1 : ℚ)

end

end A056193.P4171278287557816500

/-! ## A056193.P6389470666050605489

`A271989(n)/gcd(2, A000040(n+1))`
-/

namespace A056193.P6389470666050605489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271989 n : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A056193.P6389470666050605489

/-! ## A056193.P2510205998261375207

`A271989(n)/A000041(C(2, n+1))`
-/

namespace A056193.P2510205998261375207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271989 n : ℚ) / (A000041 (Nat.choose 2 (n + 1)) : ℚ)

end

end A056193.P2510205998261375207

/-! ## A056193.P12071761938470543981

`A271989(n)/A000108(C(2, n+1))`
-/

namespace A056193.P12071761938470543981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271989 n : ℚ) / (A000108 (Nat.choose 2 (n + 1)) : ℚ)

end

end A056193.P12071761938470543981

/-! ## A056193.P16477852746836867215

`A271989(n)/A000010(ceil(root(3, n+1)))`
-/

namespace A056193.P16477852746836867215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271989 n : ℚ) / (A000010 ⌈(3 : ℝ) ^ (1 / (n + 1 : ℝ))⌉.toNat : ℚ)

end

end A056193.P16477852746836867215

/-! ## A056193.P15849664719284241334

`A271989(n)/A014963(4*n+2)`
-/

namespace A056193.P15849664719284241334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271989 n : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A056193.P15849664719284241334

/-! ## A056193.P15015608520819634012

`A099135(A271989(n))`
-/

namespace A056193.P15015608520819634012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099135 (A271989 n).toNat

end

end A056193.P15015608520819634012

/-!
# A056194: Characteristic cube divisor of n!: a(n) = A056191(n!).

The programs for A056194, the canonical program `A056194.P9218421642361807381` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056194 has offset 1).

The definition of A056194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 395 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056194.P9218421642361807381

`A055230(n+1)^3`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A056194

/-- `A055230(n+1)^3` -/
def P9218421642361807381.Spec : Prop :=
  ∀ n, P9218421642361807381.a n = A056194 (n + 1)

theorem P9218421642361807381.correct : P9218421642361807381.Spec := by
  intro n
  simp only [A056194, Nat.add_sub_cancel]

end A056194

/-! ## A056194.P54334919835074181

`A055230(char[1]+1+n)²*A055230(char[1]+1+n)`
-/

namespace A056194.P54334919835074181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055230 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) ^ 2 * A055230 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n)

end

end A056194.P54334919835074181

namespace A056194

/-- `A055230(char[1]+1+n)²*A055230(char[1]+1+n)` -/
def P54334919835074181.Spec : Prop :=
  ∀ n, P54334919835074181.a n = A056194 (n + 1)

end A056194

/-! ## A056194.P12427861687206305622

`A055204(n+1)/A055773(n+1)*A055230(n+1)²`
-/

namespace A056194.P12427861687206305622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055204 (n + 1) : ℚ) / (A055773 (n + 1) : ℚ) * (A055230 (n + 1) ^ 2 : ℚ)

end

end A056194.P12427861687206305622

namespace A056194

/-- `A055204(n+1)/A055773(n+1)*A055230(n+1)²` -/
def P12427861687206305622.Spec : Prop :=
  ∀ n, P12427861687206305622.a n = (A056194 (n + 1) : ℚ)

end A056194

/-! ## A056194.P2239371268172749583

`A055230(n+1)²/A056627(n+1)*A055772(n+1)`
-/

namespace A056194.P2239371268172749583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055230 (n + 1) ^ 2 : ℚ) / (A056627 (n + 1) : ℚ) * (A055772 (n + 1) : ℚ)

end

end A056194.P2239371268172749583

namespace A056194

/-- `A055230(n+1)²/A056627(n+1)*A055772(n+1)` -/
def P2239371268172749583.Spec : Prop :=
  ∀ n, P2239371268172749583.a n = (A056194 (n + 1) : ℚ)

end A056194

/-! ## A056194.P15362280360342673691

`A055204(n+1)/A055773(n+1)*(A055772(n+1)/A056627(n+1))²`
-/

namespace A056194.P15362280360342673691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055204 (n + 1) : ℚ) / (A055773 (n + 1) : ℚ) * ((A055772 (n + 1) : ℚ) / (A056627 (n + 1) : ℚ)) ^ 2

end

end A056194.P15362280360342673691

namespace A056194

/-- `A055204(n+1)/A055773(n+1)*(A055772(n+1)/A056627(n+1))²` -/
def P15362280360342673691.Spec : Prop :=
  ∀ n, P15362280360342673691.a n = (A056194 (n + 1) : ℚ)

end A056194

/-! ## A056194.P14277434868622528053

`∏{p}[A055230(n+1), A000578(#)]`
-/

namespace A056194.P14277434868622528053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000578 p

end

end A056194.P14277434868622528053

namespace A056194

/-- `∏{p}[A055230(n+1), A000578(#)]` -/
def P14277434868622528053.Spec : Prop :=
  ∀ n, P14277434868622528053.a n = A056194 (n + 1)

end A056194

/-! ## A056194.P4510512138776263372

`∏{p}[A055230(n+1), A053149(#)]`
-/

namespace A056194.P4510512138776263372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A053149 p

end

end A056194.P4510512138776263372

namespace A056194

/-- `∏{p}[A055230(n+1), A053149(#)]` -/
def P4510512138776263372.Spec : Prop :=
  ∀ n, P4510512138776263372.a n = A056194 (n + 1)

end A056194

/-! ## A056194.P18213446061061923052

`∏{p}[A055204(n+1)/A055773(n+1), A053149(#)]`
-/

namespace A056194.P18213446061061923052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055204 (n + 1) : ℚ) / (A055773 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A053149 p

end

end A056194.P18213446061061923052

namespace A056194

/-- `∏{p}[A055204(n+1)/A055773(n+1), A053149(#)]` -/
def P18213446061061923052.Spec : Prop :=
  ∀ n, P18213446061061923052.a n = A056194 (n + 1)

end A056194

/-! ## A056194.P15401713300212560876

`A055071(n+1)/A056628(n+1)*A055230(n+1)`
-/

namespace A056194.P15401713300212560876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055071 (n + 1) : ℚ) / (A056628 (n + 1) : ℚ) * (A055230 (n + 1) : ℚ)

end

end A056194.P15401713300212560876

namespace A056194

/-- `A055071(n+1)/A056628(n+1)*A055230(n+1)` -/
def P15401713300212560876.Spec : Prop :=
  ∀ n, P15401713300212560876.a n = (A056194 (n + 1) : ℚ)

end A056194

/-! ## A056194.P13415715356471982104

`A055773(n+1)/A056195(n+1)*A182922(n+1)`
-/

namespace A056194.P13415715356471982104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055773 (n + 1) : ℚ) / (A056195 (n + 1) : ℚ) * (A182922 (n + 1) : ℚ)

end

end A056194.P13415715356471982104

namespace A056194

/-- `A055773(n+1)/A056195(n+1)*A182922(n+1)` -/
def P13415715356471982104.Spec : Prop :=
  ∀ n, P13415715356471982104.a n = (A056194 (n + 1) : ℚ)

end A056194

/-!
# A056195: a(n) = n! divided by its characteristic cube divisor A056194.

The programs for A056195, there is no canonical definition to state claims against.
-/

/-! ## A056195.P9225628308276181249

`A055773(n+1)*A056628(n+1)`
-/

namespace A056195.P9225628308276181249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (n + 1) * A056628 (n + 1)

end

end A056195.P9225628308276181249

/-! ## A056195.P3063098104874395600

`A055773(n+1)*A056627(n+1)*A056627(n+1)`
-/

namespace A056195.P3063098104874395600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (n + 1) * A056627 (n + 1) * A056627 (n + 1)

end

end A056195.P3063098104874395600

/-! ## A056195.P5385388202754978583

`A055071(n+1)/A056194(n+1)*A055204(n+1)`
-/

namespace A056195.P5385388202754978583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055071 (n + 1) : ℚ) / (A056194 (n + 1) : ℚ) * (A055204 (n + 1) : ℚ)

end

end A056195.P5385388202754978583

/-! ## A056195.P3354757060646271429

`A055772(n+1)/A056194(n+1)*A065887(n+1)`
-/

namespace A056195.P3354757060646271429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (A056194 (n + 1) : ℚ) * (A065887 (n + 1) : ℚ)

end

end A056195.P3354757060646271429

/-! ## A056195.P13359531798994449750

`(n+1)!/A056194(n+1)`
-/

namespace A056195.P13359531798994449750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A056194 (n + 1) : ℚ)

end

end A056195.P13359531798994449750

/-! ## A056195.P832172299737043928

`record[A098361(n)]/A056194(n+1)`
-/

namespace A056195.P832172299737043928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A056194 (n + 1) : ℚ)

end

end A056195.P832172299737043928

/-! ## A056195.P9917308130648394296

`A000142(n+1)/A056194(n+1)`
-/

namespace A056195.P9917308130648394296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A056194 (n + 1) : ℚ)

end

end A056195.P9917308130648394296

/-! ## A056195.P11831912418595472158

`∏[A000027(n+1)]/A056194(n+1)`
-/

namespace A056195.P11831912418595472158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A056194 (n + 1) : ℚ)

end

end A056195.P11831912418595472158

/-! ## A056195.P9746584452521358906

`A065886(n+1)/(A055204(n+1)*A056194(n+1))`
-/

namespace A056195.P9746584452521358906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065886 (n + 1) : ℚ) / (A055204 (n + 1) * A056194 (n + 1) : ℚ)

end

end A056195.P9746584452521358906

/-!
# A056196: Numbers n such that A055229(n) = 2.

The programs for A056196, the canonical program `A056196.P11886638519316626035` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056196 has offset 1).

The definition of A056196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056196.P11886638519316626035

`A008590(record[A056192(A003159(n+1))])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A056196

/-- `A008590(record[A056192(A003159(n+1))])` -/
def P11886638519316626035.Spec : Prop :=
  ∀ n, P11886638519316626035.a n = A056196 (n + 1)

theorem P11886638519316626035.correct : P11886638519316626035.Spec := by
  intro n
  simp only [A056196, Nat.add_sub_cancel]

end A056196

/-! ## A056196.P16622262042820784146

`record[A007913(n+2)*A056623(2*(n+2))]`
-/

namespace A056196.P16622262042820784146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2) * A056623 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056196.P16622262042820784146

namespace A056196

/-- `record[A007913(n+2)*A056623(2*(n+2))]` -/
def P16622262042820784146.Spec : Prop :=
  ∀ n, P16622262042820784146.a n = A056196 (n + 1)

end A056196

/-! ## A056196.P12767312361822665006

`record[2*A056192(4*(n+1))]`
-/

namespace A056196.P12767312361822665006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056192 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056196.P12767312361822665006

namespace A056196

/-- `record[2*A056192(4*(n+1))]` -/
def P12767312361822665006.Spec : Prop :=
  ∀ n, P12767312361822665006.a n = A056196 (n + 1)

end A056196

/-! ## A056196.P10901384831402960056

`A103517(eq[A056192(n+1), A201629(n)])`
-/

namespace A056196.P10901384831402960056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A056196.P10901384831402960056

namespace A056196

/-- `A103517(eq[A056192(n+1), A201629(n)])` -/
def P10901384831402960056.Spec : Prop :=
  ∀ n, P10901384831402960056.a n = A056196 (n + 1)

end A056196

/-! ## A056196.P17234896968828482960

`2*A201629(eq[A056192(n+1), A201629(n)])`
-/

namespace A056196.P17234896968828482960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201629 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A056196.P17234896968828482960

namespace A056196

/-- `2*A201629(eq[A056192(n+1), A201629(n)])` -/
def P17234896968828482960.Spec : Prop :=
  ∀ n, P17234896968828482960.a n = A056196 (n + 1)

end A056196

/-! ## A056196.P13256548363640275583

`eq[2, A055229(n+1)]+1`
-/

namespace A056196.P13256548363640275583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056196.P13256548363640275583

namespace A056196

/-- `eq[2, A055229(n+1)]+1` -/
def P13256548363640275583.Spec : Prop :=
  ∀ n, (P13256548363640275583.a n : ℤ) = A056196 (n + 1)

end A056196

/-! ## A056196.P6621185576608513000

`A008574(eq[2, A055229(A008574(n))])`
-/

namespace A056196.P6621185576608513000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056196.P6621185576608513000

namespace A056196

/-- `A008574(eq[2, A055229(A008574(n))])` -/
def P6621185576608513000.Spec : Prop :=
  ∀ n, P6621185576608513000.a n = A056196 (n + 1)

end A056196

/-! ## A056196.P4819577063215680000

`A022144(eq[2, A055229(A022144(n))])`
-/

namespace A056196.P4819577063215680000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A022144 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056196.P4819577063215680000

namespace A056196

/-- `A022144(eq[2, A055229(A022144(n))])` -/
def P4819577063215680000.Spec : Prop :=
  ∀ n, P4819577063215680000.a n = A056196 (n + 1)

end A056196

/-!
# A056197: Diagonal of A056151.

The programs for A056197, the canonical program `A056197.P2191105219382446446` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056197 has offset 0).

The definition of A056197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056197.P2191105219382446446

`(3*n*(n+1)+1)*n!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056197

/-- `(3*n*(n+1)+1)*n!` -/
def P2191105219382446446.Spec : Prop :=
  ∀ n, (P2191105219382446446.a n : ℤ) = A056197 n

theorem P2191105219382446446.correct : P2191105219382446446.Spec := by
  intro n
  simp only [A056197]

end A056197

/-! ## A056197.P12714253916806048429

`n!*A003215(n)`
-/

namespace A056197.P12714253916806048429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A003215 n

end

end A056197.P12714253916806048429

namespace A056197

/-- `n!*A003215(n)` -/
def P12714253916806048429.Spec : Prop :=
  ∀ n, P12714253916806048429.a n = A056197 n

end A056197

/-! ## A056197.P16317557818883160570

`n!*Δ[n^3]`
-/

namespace A056197.P16317557818883160570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A056197.P16317557818883160570

namespace A056197

/-- `n!*Δ[n^3]` -/
def P16317557818883160570.Spec : Prop :=
  ∀ n, P16317557818883160570.a n = A056197 n

theorem P16317557818883160570.correct : P16317557818883160570.Spec := by
  intro n
  simp only [A056197, Nat.add_sub_cancel, A056197.P16317557818883160570.f1, A056197.P16317557818883160570.a, A056197.P2191105219382446446.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A056197

/-! ## A056197.P17320397527705635193

`Δ[n^3]*∏[round(1/acot(n))]`
-/

namespace A056197.P17320397527705635193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A056197.P17320397527705635193

namespace A056197

/-- `Δ[n^3]*∏[round(1/acot(n))]` -/
def P17320397527705635193.Spec : Prop :=
  ∀ n, P17320397527705635193.a n = A056197 n

end A056197

/-! ## A056197.P6986551742933172336

`Δ[n^3]*∏[round(sqrt(n²+1))]`
-/

namespace A056197.P6986551742933172336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A056197.P6986551742933172336

namespace A056197

/-- `Δ[n^3]*∏[round(sqrt(n²+1))]` -/
def P6986551742933172336.Spec : Prop :=
  ∀ n, P6986551742933172336.a n = A056197 n

end A056197

/-! ## A056197.P9325856746677484625

`A056151(∑[n+3]+1)`
-/

namespace A056197.P9325856746677484625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056151 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A056197.P9325856746677484625

namespace A056197

/-- `A056151(∑[n+3]+1)` -/
def P9325856746677484625.Spec : Prop :=
  ∀ n, P9325856746677484625.a n = A056197 n

end A056197

/-! ## A056197.P18098730456546421284

`A007680(n)+n*A082033(n)`
-/

namespace A056197.P18098730456546421284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007680 n + (n : ℤ) * A082033 n

end

end A056197.P18098730456546421284

namespace A056197

/-- `A007680(n)+n*A082033(n)` -/
def P18098730456546421284.Spec : Prop :=
  ∀ n, P18098730456546421284.a n = A056197 n

end A056197

/-! ## A056197.P10630731728353740010

`A000142(n)+A000142(n+1)*A008585(n)`
-/

namespace A056197.P10630731728353740010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + A000142 (n + 1) * A008585 n

end

end A056197.P10630731728353740010

namespace A056197

/-- `A000142(n)+A000142(n+1)*A008585(n)` -/
def P10630731728353740010.Spec : Prop :=
  ∀ n, P10630731728353740010.a n = A056197 n

end A056197

/-! ## A056197.P5050476124308153372

`A000142(n)*A242658(n+1)-A000142(n)`
-/

namespace A056197.P5050476124308153372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A242658 (n + 1) - A000142 n

end

end A056197.P5050476124308153372

namespace A056197

/-- `A000142(n)*A242658(n+1)-A000142(n)` -/
def P5050476124308153372.Spec : Prop :=
  ∀ n, P5050476124308153372.a n = A056197 n

end A056197

/-! ## A056197.P10813368994135671056

`A002775(n+1)-A091363(n)`
-/

namespace A056197.P10813368994135671056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002775 (n + 1) - A091363 n

end

end A056197.P10813368994135671056

namespace A056197

/-- `A002775(n+1)-A091363(n)` -/
def P10813368994135671056.Spec : Prop :=
  ∀ n, P10813368994135671056.a n = A056197 n

end A056197

/-!
# A056198: Defined by Product 1/(1-x^k)^a_k, k=1..infinity = 1+x+2*Sum(a_k*x^k, k=2..infinity).

The programs for A056198, there is no canonical definition to state claims against.
-/

/-! ## A056198.P282044795797489667

`A008615(A113040(n+3)+A076078(3*n+1))`
-/

namespace A056198.P282044795797489667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A113040 (n + 3) + A076078 (3 * n + 1)).toNat

end

end A056198.P282044795797489667

/-! ## A056198.P12482449421900683114

`A340764(A146559(n)+A051043(n))`
-/

namespace A056198.P12482449421900683114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A146559 n + A051043 n).toNat

end

end A056198.P12482449421900683114

/-! ## A056198.P5554507295845896521

`A278496(A351200(n)+A005206(n))`
-/

namespace A056198.P5554507295845896521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278496 (A351200 n + A005206 n).toNat

end

end A056198.P5554507295845896521

/-!
# A056199: a(n) = n * a(n-1) - Sum_{k=1..n-2} a(k) with a(1) = 0 and a(2) = 1.

The programs for A056199, the canonical program `A056199.P13263136861181657220` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056199 has offset 1).

The definition of A056199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056199.P13263136861181657220

`(n+2)*a(n-1)-(n+1)*a(n-2)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056199

/-- `(n+2)*a(n-1)-(n+1)*a(n-2)` -/
def P13263136861181657220.Spec : Prop :=
  ∀ n, P13263136861181657220.a n = A056199 (n + 1)

theorem P13263136861181657220.correct : P13263136861181657220.Spec := by
  intro n
  simp only [A056199, Nat.add_sub_cancel]

end A056199

/-! ## A056199.P7833140867319136617

`floor(∑[(n+1)/3*n!])`
-/

namespace A056199.P7833140867319136617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A056199.P7833140867319136617

namespace A056199

/-- `floor(∑[(n+1)/3*n!])` -/
def P7833140867319136617.Spec : Prop :=
  ∀ n, P7833140867319136617.a n = A056199 (n + 1)

end A056199

/-! ## A056199.P16944792362867108460

`∑[round((n+1)/3*n!)]`
-/

namespace A056199.P16944792362867108460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / 3 * (Nat.factorial n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056199.P16944792362867108460

namespace A056199

/-- `∑[round((n+1)/3*n!)]` -/
def P16944792362867108460.Spec : Prop :=
  ∀ n, P16944792362867108460.a n = A056199 (n + 1)

end A056199

/-! ## A056199.P1630611632568219075

`∑[(n+1)*a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A056199.P1630611632568219075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  (n + 1) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056199.P1630611632568219075

namespace A056199

/-- `∑[(n+1)*a(n-1)]` -/
def P1630611632568219075.Spec : Prop :=
  ∀ n, (P1630611632568219075.a n : ℤ) = A056199 (n + 1)

end A056199

/-! ## A056199.P7468523519137534712

`∑[a(n-1)/(n+1)^(-1)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A056199.P7468523519137534712
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 1) / (n + 1 : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056199.P7468523519137534712

namespace A056199

/-- `∑[a(n-1)/(n+1)^(-1)]` -/
def P7468523519137534712.Spec : Prop :=
  ∀ n, P7468523519137534712.a n = (A056199 (n + 1) : ℚ)

end A056199

/-! ## A056199.P3565317311410811291

`Δ[(n+1)*(a(n-1)-a(n-2))]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A056199.P3565317311410811291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  (n + 1 : ℤ) * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056199.P3565317311410811291

namespace A056199

/-- `Δ[(n+1)*(a(n-1)-a(n-2))]` -/
def P3565317311410811291.Spec : Prop :=
  ∀ n, P3565317311410811291.a n = A056199 (n + 1)

end A056199

/-! ## A056199.P14041310495753979706

`floor(∑[(n+1)!/3])`
-/

namespace A056199.P14041310495753979706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A056199.P14041310495753979706

namespace A056199

/-- `floor(∑[(n+1)!/3])` -/
def P14041310495753979706.Spec : Prop :=
  ∀ n, P14041310495753979706.a n = A056199 (n + 1)

end A056199

/-! ## A056199.P4130361166449141288

`∑[round((n+1)!/3)]`
-/

namespace A056199.P4130361166449141288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056199.P4130361166449141288

namespace A056199

/-- `∑[round((n+1)!/3)]` -/
def P4130361166449141288.Spec : Prop :=
  ∀ n, P4130361166449141288.a n = A056199 (n + 1)

end A056199

/-! ## A056199.P12218927597634716544

`floor(∑[∏[n+1]/3])`
-/

namespace A056199.P12218927597634716544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A056199.P12218927597634716544

namespace A056199

/-- `floor(∑[∏[n+1]/3])` -/
def P12218927597634716544.Spec : Prop :=
  ∀ n, P12218927597634716544.a n = A056199 (n + 1)

end A056199

/-! ## A056199.P15524385245166262405

`∑[ceil(((n+1)!-1)/3)]`
-/

namespace A056199.P15524385245166262405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.factorial (n + 1) : ℤ) - 1 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056199.P15524385245166262405

namespace A056199

/-- `∑[ceil(((n+1)!-1)/3)]` -/
def P15524385245166262405.Spec : Prop :=
  ∀ n, P15524385245166262405.a n = A056199 (n + 1)

end A056199

