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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A135400: a(n) = (4*n^4 - 4*n^3 - n^2 + 3*n)/2.

The programs for A135400, the canonical program `A135400.P13657254254726031012` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135400 has offset 1).

The definition of A135400 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*(n+1)^4-4*(n+1)^3-(n+1)²+3*(n+1))/2` (program `A135400.P3594193527890346219`, by `A135400.P3594193527890346219.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135400.P8728929655423906344

`(n+1)*(4*(n+1)^3-4*(n+1)²-(n+1)+3)/2`
-/

namespace A135400.P8728929655423906344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((4 * (n + 1) ^ 3 : ℤ) - (4 * (n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 3) : ℚ) / 2

end

end A135400.P8728929655423906344

namespace A135400

/-- `(n+1)*(4*(n+1)^3-4*(n+1)²-(n+1)+3)/2` -/
def P8728929655423906344.Spec : Prop :=
  ∀ n, P8728929655423906344.a n = (A135400 (n + 1) : ℚ)

theorem P8728929655423906344.correct : P8728929655423906344.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A135400, Nat.add_sub_cancel, A135400.P8728929655423906344.a, A135400.P13657254254726031012.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A135400, Nat.add_sub_cancel, A135400.P8728929655423906344.a, A135400.P13657254254726031012.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135400

/-! ## A135400.P3594193527890346219

`(4*(n+1)^4-4*(n+1)^3-(n+1)²+3*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135400.P3594193527890346219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) ^ 4 : ℤ) - (4 * (n + 1) ^ 3 : ℤ) - ((n + 1) ^ 2 : ℤ) + (3 * (n + 1) : ℤ) : ℚ) / 2

end

end A135400.P3594193527890346219

namespace A135400

/-- `(4*(n+1)^4-4*(n+1)^3-(n+1)²+3*(n+1))/2` -/
def P3594193527890346219.Spec : Prop :=
  ∀ n, P3594193527890346219.a n = (A135400 (n + 1) : ℚ)

theorem P3594193527890346219.correct : P3594193527890346219.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A135400, Nat.add_sub_cancel, A135400.P3594193527890346219.a, A135400.P13657254254726031012.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A135400, Nat.add_sub_cancel, A135400.P3594193527890346219.a, A135400.P13657254254726031012.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135400

/-! ## A135400.P13657254254726031012

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=17, a(2)=108, a(3)=382, a(4)=995`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135400

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13657254254726031012.Spec : Prop :=
  ∀ n, P13657254254726031012.a n = A135400 (n + 1)

theorem P13657254254726031012.correct : P13657254254726031012.Spec := by
  intro n
  simp only [A135400, Nat.add_sub_cancel]

end A135400

/-! ## A135400.P5550478595412792937

`∑[Δ[C(C(2*n, 2), 2)]+1]`
-/

namespace A135400.P5550478595412792937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (2 * n) 2) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135400.P5550478595412792937

namespace A135400

/-- `∑[Δ[C(C(2*n, 2), 2)]+1]` -/
def P5550478595412792937.Spec : Prop :=
  ∀ n, P5550478595412792937.a n = A135400 (n + 1)

end A135400

/-! ## A135400.P8174680362965166173

`C(∑[4*n+1], 2)+n+1`
-/

namespace A135400.P8174680362965166173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + (n + 1)

end

end A135400.P8174680362965166173

namespace A135400

/-- `C(∑[4*n+1], 2)+n+1` -/
def P8174680362965166173.Spec : Prop :=
  ∀ n, (P8174680362965166173.a n : ℤ) = A135400 (n + 1)

end A135400

/-! ## A135400.P8316262668496800893

`C(C(2*(n+1), 2), 2)+1+n`
-/

namespace A135400.P8316262668496800893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (2 * (n + 1)) 2) 2 + 1 + n

end

end A135400.P8316262668496800893

namespace A135400

/-- `C(C(2*(n+1), 2), 2)+1+n` -/
def P8316262668496800893.Spec : Prop :=
  ∀ n, (P8316262668496800893.a n : ℤ) = A135400 (n + 1)

end A135400

/-! ## A135400.P6830739846138458061

`∑[lcm(2*n+1, (2*n)²+n)+1]`
-/

namespace A135400.P6830739846138458061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) ((2 * n) ^ 2 + n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135400.P6830739846138458061

namespace A135400

/-- `∑[lcm(2*n+1, (2*n)²+n)+1]` -/
def P6830739846138458061.Spec : Prop :=
  ∀ n, (P6830739846138458061.a n : ℤ) = A135400 (n + 1)

end A135400

/-! ## A135400.P3283807450415209494

`∑[(n*record[xor(3, n)]+1)*2*n+1-n]`
-/

namespace A135400.P3283807450415209494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1) * (2 * n) + 1 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135400.P3283807450415209494

namespace A135400

/-- `∑[(n*record[xor(3, n)]+1)*2*n+1-n]` -/
def P3283807450415209494.Spec : Prop :=
  ∀ n, P3283807450415209494.a n = A135400 (n + 1)

end A135400

/-! ## A135400.P7636324559356214086

`∑[A316224(n)+1]`
-/

namespace A135400.P7636324559356214086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316224 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135400.P7636324559356214086

namespace A135400

/-- `∑[A316224(n)+1]` -/
def P7636324559356214086.Spec : Prop :=
  ∀ n, P7636324559356214086.a n = A135400 (n + 1)

end A135400

/-! ## A135400.P1777681133614701980

`∑[n*A014634(n)+1]`
-/

namespace A135400.P1777681133614701980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014634 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135400.P1777681133614701980

namespace A135400

/-- `∑[n*A014634(n)+1]` -/
def P1777681133614701980.Spec : Prop :=
  ∀ n, P1777681133614701980.a n = A135400 (n + 1)

end A135400

/-! ## A135400.P12274228309475075114

`∑[(2*n+1)*A007742(n)+1]`
-/

namespace A135400.P12274228309475075114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A007742 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135400.P12274228309475075114

namespace A135400

/-- `∑[(2*n+1)*A007742(n)+1]` -/
def P12274228309475075114.Spec : Prop :=
  ∀ n, P12274228309475075114.a n = A135400 (n + 1)

end A135400

/-! ## A135400.P3495390557475981916

`A294433(n)+A007588(n)`
-/

namespace A135400.P3495390557475981916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294433 n + A007588 n

end

end A135400.P3495390557475981916

namespace A135400

/-- `A294433(n)+A007588(n)` -/
def P3495390557475981916.Spec : Prop :=
  ∀ n, P3495390557475981916.a n = A135400 (n + 1)

end A135400

/-! ## A135400.P18043417507903298699

`A357042(n+1)-A045943(n)`
-/

namespace A135400.P18043417507903298699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357042 (n + 1) - A045943 n

end

end A135400.P18043417507903298699

namespace A135400

/-- `A357042(n+1)-A045943(n)` -/
def P18043417507903298699.Spec : Prop :=
  ∀ n, P18043417507903298699.a n = A135400 (n + 1)

end A135400

/-! ## A135400.P14191798944312469018

`∑[A059270(2*n)+1]`
-/

namespace A135400.P14191798944312469018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135400.P14191798944312469018

namespace A135400

/-- `∑[A059270(2*n)+1]` -/
def P14191798944312469018.Spec : Prop :=
  ∀ n, P14191798944312469018.a n = A135400 (n + 1)

end A135400

/-! ## A135400.P14173595933899540045

`∑[A081435(2*n)-2*n]`
-/

namespace A135400.P14173595933899540045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081435 (2 * n) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135400.P14173595933899540045

namespace A135400

/-- `∑[A081435(2*n)-2*n]` -/
def P14173595933899540045.Spec : Prop :=
  ∀ n, P14173595933899540045.a n = A135400 (n + 1)

end A135400

/-! ## A135400.P18294891028629678025

`A050534(2*(n+1))+n+1`
-/

namespace A135400.P18294891028629678025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A135400.P18294891028629678025

namespace A135400

/-- `A050534(2*(n+1))+n+1` -/
def P18294891028629678025.Spec : Prop :=
  ∀ n, P18294891028629678025.a n = A135400 (n + 1)

end A135400

/-! ## A135400.P5518822728205854349

`A131478(2*n+1)-A173704(2*n)`
-/

namespace A135400.P5518822728205854349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131478 (2 * n + 1) - A173704 (2 * n)

end

end A135400.P5518822728205854349

namespace A135400

/-- `A131478(2*n+1)-A173704(2*n)` -/
def P5518822728205854349.Spec : Prop :=
  ∀ n, P5518822728205854349.a n = A135400 (n + 1)

end A135400

/-! ## A135400.P12387385061731382112

`∑[A034828(4*n+1)+1]`
-/

namespace A135400.P12387385061731382112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (4 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135400.P12387385061731382112

namespace A135400

/-- `∑[A034828(4*n+1)+1]` -/
def P12387385061731382112.Spec : Prop :=
  ∀ n, P12387385061731382112.a n = A135400 (n + 1)

end A135400

/-! ## A135400.P18184299594767319949

`A000217(A014106(n))+n+1`
-/

namespace A135400.P18184299594767319949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A014106 n).toNat + (n + 1 : ℤ)

end

end A135400.P18184299594767319949

namespace A135400

/-- `A000217(A014106(n))+n+1` -/
def P18184299594767319949.Spec : Prop :=
  ∀ n, P18184299594767319949.a n = A135400 (n + 1)

end A135400

/-! ## A135400.P9077742921740462969

`A000217(A125577(2*n+1))+n+1`
-/

namespace A135400.P9077742921740462969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A125577 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A135400.P9077742921740462969

namespace A135400

/-- `A000217(A125577(2*n+1))+n+1` -/
def P9077742921740462969.Spec : Prop :=
  ∀ n, P9077742921740462969.a n = A135400 (n + 1)

end A135400

/-!
# A135401: a(n) = number of permutations (p(1),p(2),p(3),...,p(n)) of (1,2,3,...n) each of which is its own inverse and is such that p(k) = n + 1 - p(n+1-k) for all k in the range 1 <= k <= n.

The programs for A135401, the canonical program `A135401.P14093664586731084065` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135401 has offset 0).

The definition of A135401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135401.P14093664586731084065

`A000898(floor(n/2))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135401

/-- `A000898(floor(n/2))` -/
def P14093664586731084065.Spec : Prop :=
  ∀ n, P14093664586731084065.a n = A135401 n

theorem P14093664586731084065.correct : P14093664586731084065.Spec := by
  intro n
  simp only [A135401]

end A135401

/-! ## A135401.P6269971453921346147

`A294042(A055998(A008619(n)))`
-/

namespace A135401.P6269971453921346147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (A055998 (A008619 n).toNat).toNat

end

end A135401.P6269971453921346147

namespace A135401

/-- `A294042(A055998(A008619(n)))` -/
def P6269971453921346147.Spec : Prop :=
  ∀ n, P6269971453921346147.a n = A135401 n

end A135401

/-! ## A135401.P7591314831887341088

`A000085(n)-2*A000900(n)`
-/

namespace A135401.P7591314831887341088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - 2 * A000900 n

end

end A135401.P7591314831887341088

namespace A135401

/-- `A000085(n)-2*A000900(n)` -/
def P7591314831887341088.Spec : Prop :=
  ∀ n, P7591314831887341088.a n = A135401 n

end A135401

/-! ## A135401.P2394959702722565724

`2*A000085(n)-A297708(n)`
-/

namespace A135401.P2394959702722565724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000085 n - A297708 n

end

end A135401.P2394959702722565724

namespace A135401

/-- `2*A000085(n)-A297708(n)` -/
def P2394959702722565724.Spec : Prop :=
  ∀ n, P2394959702722565724.a n = A135401 n

end A135401

/-! ## A135401.P634472893963328114

`A297708(n)-4*A000900(n)`
-/

namespace A135401.P634472893963328114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297708 n - 4 * A000900 n

end

end A135401.P634472893963328114

namespace A135401

/-- `A297708(n)-4*A000900(n)` -/
def P634472893963328114.Spec : Prop :=
  ∀ n, P634472893963328114.a n = A135401 n

end A135401

/-! ## A135401.P11458015898171606242

`A099020(∑[n])+A000085(n)-A297708(n)`
-/

namespace A135401.P11458015898171606242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j) + (A000085 n - A297708 n)

end

end A135401.P11458015898171606242

namespace A135401

/-- `A099020(∑[n])+A000085(n)-A297708(n)` -/
def P11458015898171606242.Spec : Prop :=
  ∀ n, P11458015898171606242.a n = A135401 n

end A135401

/-! ## A135401.P8607633788939090509

`A123071(n-1)/a(n-1)` with `a(0)=1`
-/

namespace A135401.P8607633788939090509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A123071 (n - 1) : ℚ) / a (n - 1)

end

end A135401.P8607633788939090509

namespace A135401

/-- `A123071(n-1)/a(n-1)` -/
def P8607633788939090509.Spec : Prop :=
  ∀ n, P8607633788939090509.a n = (A135401 n : ℚ)

end A135401

/-!
# A135402: Not the sum of three squares or cubes greater than 1.

The programs for A135402, there is no canonical definition to state claims against.
-/

/-! ## A135402.P9445201540245933304

`record[A135393(n+1)%A023981(n+1)]`
-/

namespace A135402.P9445201540245933304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135393 (n + 1)) (A023981 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135402.P9445201540245933304

/-!
# A135404: Gessel sequence: the number of paths of length 2m in the plane, starting and ending at (0,1), with unit steps in the four directions (north, east, south, west) and staying in the region y > 0, x > -y.

The programs for A135404, there is no canonical definition to state claims against.
-/

/-! ## A135404.P17513849649896379986

`A140878((n+1)²)`
-/

namespace A135404.P17513849649896379986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140878 ((n + 1) ^ 2)

end

end A135404.P17513849649896379986

/-! ## A135404.P9024126023034724887

`record[A140878(ceil(C(or(1, n), n)/2)²)]`
-/

namespace A135404.P9024126023034724887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140878 (⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉ ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135404.P9024126023034724887

/-! ## A135404.P4446043386169255334

`record[A140878(A020986(n)²)]`
-/

namespace A135404.P4446043386169255334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140878 (A020986 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135404.P4446043386169255334

/-!
# A135405: Sequence where the sum of each pair of consecutive elements is a square.

The programs for A135405, the canonical program `A135405.P9933599291599412137` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135405 has offset 0).

The definition of A135405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135405.P9933599291599412137

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=8, a(4)=17`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135405

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P9933599291599412137.Spec : Prop :=
  ∀ n, P9933599291599412137.a n = A135405 n

theorem P9933599291599412137.correct : P9933599291599412137.Spec := by
  intro n
  simp only [A135405]

end A135405

/-! ## A135405.P11952873425624910551

`∑[a(n-2)+2]` with `a(0)=0, a(1)=1, a(2)=7, a(3)=0`
-/

namespace A135405.P11952873425624910551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 7, 0] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135405.P11952873425624910551

namespace A135405

/-- `∑[a(n-2)+2]` -/
def P11952873425624910551.Spec : Prop :=
  ∀ n, (P11952873425624910551.a n : ℤ) = A135405 n

end A135405

/-! ## A135405.P6895774966232064206

`(n+1)²-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A135405.P6895774966232064206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n + 1) ^ 2 : ℤ) - a (n - 1)

end

end A135405.P6895774966232064206

namespace A135405

/-- `(n+1)²-a(n-1)` -/
def P6895774966232064206.Spec : Prop :=
  ∀ n, P6895774966232064206.a n = A135405 n

end A135405

/-! ## A135405.P6359571714385496612

`a(n-2)+2*n+1` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A135405.P6359571714385496612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 8] fun n a =>
  a (n - 2) + (2 * n + 1)

end

end A135405.P6359571714385496612

namespace A135405

/-- `a(n-2)+2*n+1` -/
def P6359571714385496612.Spec : Prop :=
  ∀ n, (P6359571714385496612.a n : ℤ) = A135405 n

end A135405

/-! ## A135405.P2148786349597764197

`n+1+a(n-2)+n` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A135405.P2148786349597764197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 8] fun n a =>
  n + 1 + (a (n - 2) + n)

end

end A135405.P2148786349597764197

namespace A135405

/-- `n+1+a(n-2)+n` -/
def P2148786349597764197.Spec : Prop :=
  ∀ n, (P2148786349597764197.a n : ℤ) = A135405 n

end A135405

/-! ## A135405.P4597803084101356867

`Δ[n²-floor(-a(n-2))]` with `a(0)=0, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A135405.P4597803084101356867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  (n ^ 2 : ℤ) - (-f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135405.P4597803084101356867

namespace A135405

/-- `Δ[n²-floor(-a(n-2))]` -/
def P4597803084101356867.Spec : Prop :=
  ∀ n, P4597803084101356867.a n = A135405 n

end A135405

/-! ## A135405.P2233185911211096849

`Δ[n²-ceil(-a(n-2))]` with `a(0)=0, a(1)=0, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A135405.P2233185911211096849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  (n ^ 2 : ℤ) - (-f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135405.P2233185911211096849

namespace A135405

/-- `Δ[n²-ceil(-a(n-2))]` -/
def P2233185911211096849.Spec : Prop :=
  ∀ n, P2233185911211096849.a n = A135405 n

end A135405

/-! ## A135405.P12911178899257686369

`floor((2*n-(n-1))²-a(n-1))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A135405.P12911178899257686369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((2 * n : ℤ) - ((n : ℤ) - 1)) ^ 2 - a (n - 1)

end

end A135405.P12911178899257686369

namespace A135405

/-- `floor((2*n-(n-1))²-a(n-1))` -/
def P12911178899257686369.Spec : Prop :=
  ∀ n, P12911178899257686369.a n = A135405 n

end A135405

/-! ## A135405.P9218879693135326531

`round((n-1-2*n)²-a(n-1))` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A135405.P9218879693135326531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - 1 - (2 * n : ℤ)) ^ 2 - a (n - 1)

end

end A135405.P9218879693135326531

namespace A135405

/-- `round((n-1-2*n)²-a(n-1))` -/
def P9218879693135326531.Spec : Prop :=
  ∀ n, P9218879693135326531.a n = A135405 n

end A135405

/-! ## A135405.P5818341332056991757

`∑[n+2]-A065164(n+1)`
-/

namespace A135405.P5818341332056991757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A065164 (n + 1)

end

end A135405.P5818341332056991757

namespace A135405

/-- `∑[n+2]-A065164(n+1)` -/
def P5818341332056991757.Spec : Prop :=
  ∀ n, P5818341332056991757.a n = A135405 n

end A135405

/-! ## A135405.P15409638662697115241

`A055998(n)+2-A065164(n+1)`
-/

namespace A135405.P15409638662697115241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + (2 - A065164 (n + 1))

end

end A135405.P15409638662697115241

namespace A135405

/-- `A055998(n)+2-A065164(n+1)` -/
def P15409638662697115241.Spec : Prop :=
  ∀ n, P15409638662697115241.a n = A135405 n

end A135405

/-! ## A135405.P13787116092482822116

`Δ[∑[n²]-a(n-1)]` with `a(0)=2, a(1)=2`
-/

namespace A135405.P13787116092482822116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135405.P13787116092482822116

namespace A135405

/-- `Δ[∑[n²]-a(n-1)]` -/
def P13787116092482822116.Spec : Prop :=
  ∀ n, P13787116092482822116.a n = A135405 n

end A135405

/-!
# A135406: Sum of squares of gaps between consecutive semiprimes.

The programs for A135406, the canonical program `A135406.P2152404203542869918` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135406 has offset 1).

The definition of A135406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135406.P2152404203542869918

`∑[Δ[lt[(2-∑{e}[n, #])², 1]]²]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135406

/-- `∑[Δ[lt[(2-∑{e}[n, #])², 1]]²]` -/
def P2152404203542869918.Spec : Prop :=
  ∀ n, P2152404203542869918.a n = A135406 (n + 1)

theorem P2152404203542869918.correct : P2152404203542869918.Spec := by
  intro n
  simp only [A135406, Nat.add_sub_cancel]

end A135406

/-! ## A135406.P11540099428068116890

`∑[A065516(n+1)²]`
-/

namespace A135406.P11540099428068116890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135406.P11540099428068116890

namespace A135406

/-- `∑[A065516(n+1)²]` -/
def P11540099428068116890.Spec : Prop :=
  ∀ n, P11540099428068116890.a n = A135406 (n + 1)

end A135406

/-! ## A135406.P1929256171131846400

`∑[Δ[A001358(n+1)]²]`
-/

namespace A135406.P1929256171131846400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135406.P1929256171131846400

namespace A135406

/-- `∑[Δ[A001358(n+1)]²]` -/
def P1929256171131846400.Spec : Prop :=
  ∀ n, P1929256171131846400.a n = A135406 (n + 1)

end A135406

/-! ## A135406.P6638577766606156816

`∑[Δ[A088707(n+1)]²]`
-/

namespace A135406.P6638577766606156816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135406.P6638577766606156816

namespace A135406

/-- `∑[Δ[A088707(n+1)]²]` -/
def P6638577766606156816.Spec : Prop :=
  ∀ n, P6638577766606156816.a n = A135406 (n + 1)

end A135406

/-! ## A135406.P7909820495914621644

`∑[Δ[A186621(n+1)]²]`
-/

namespace A135406.P7909820495914621644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135406.P7909820495914621644

namespace A135406

/-- `∑[Δ[A186621(n+1)]²]` -/
def P7909820495914621644.Spec : Prop :=
  ∀ n, P7909820495914621644.a n = A135406 (n + 1)

end A135406

/-! ## A135406.P13687183191738662842

`∑[Δ[eq[2, A226378(n)]]²]`
-/

namespace A135406.P13687183191738662842
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135406.P13687183191738662842

namespace A135406

/-- `∑[Δ[eq[2, A226378(n)]]²]` -/
def P13687183191738662842.Spec : Prop :=
  ∀ n, P13687183191738662842.a n = A135406 (n + 1)

end A135406

/-! ## A135406.P2936736476620249527

`∑[Δ[eq[2, A284289(n)]]²]`
-/

namespace A135406.P2936736476620249527
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135406.P2936736476620249527

namespace A135406

/-- `∑[Δ[eq[2, A284289(n)]]²]` -/
def P2936736476620249527.Spec : Prop :=
  ∀ n, P2936736476620249527.a n = A135406 (n + 1)

end A135406

/-! ## A135406.P5516049493759606836

`∑[Δ[sqrt(A074985(n+1))]²]`
-/

namespace A135406.P5516049493759606836
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135406.P5516049493759606836

namespace A135406

/-- `∑[Δ[sqrt(A074985(n+1))]²]` -/
def P5516049493759606836.Spec : Prop :=
  ∀ n, P5516049493759606836.a n = (A135406 (n + 1) : ℝ)

end A135406

/-! ## A135406.P13075819013630643533

`∑[Δ[A075818(n+1)/2]²]`
-/

namespace A135406.P13075819013630643533
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135406.P13075819013630643533

namespace A135406

/-- `∑[Δ[A075818(n+1)/2]²]` -/
def P13075819013630643533.Spec : Prop :=
  ∀ n, P13075819013630643533.a n = (A135406 (n + 1) : ℚ)

end A135406

/-! ## A135406.P7513412738769910960

`∑[Δ[eq[2, A001222(n+1)]]²]`
-/

namespace A135406.P7513412738769910960
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135406.P7513412738769910960

namespace A135406

/-- `∑[Δ[eq[2, A001222(n+1)]]²]` -/
def P7513412738769910960.Spec : Prop :=
  ∀ n, P7513412738769910960.a n = A135406 (n + 1)

end A135406

/-! ## A135406.P8543116737245560932

`∑[(A118717(n+1)%A001358(n+1))²]`
-/

namespace A135406.P8543116737245560932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118717 (n + 1)) (A001358 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135406.P8543116737245560932

namespace A135406

/-- `∑[(A118717(n+1)%A001358(n+1))²]` -/
def P8543116737245560932.Spec : Prop :=
  ∀ n, P8543116737245560932.a n = A135406 (n + 1)

end A135406

/-! ## A135406.P2530035941709753761

`∑[(A088707(n+2)%A088707(n+1))²]`
-/

namespace A135406.P2530035941709753761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088707 (n + 2)) (A088707 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135406.P2530035941709753761

namespace A135406

/-- `∑[(A088707(n+2)%A088707(n+1))²]` -/
def P2530035941709753761.Spec : Prop :=
  ∀ n, P2530035941709753761.a n = A135406 (n + 1)

end A135406

/-! ## A135406.P706861994798277102

`∑[Δ[A001358(n+1)]*A065516(n+1)]`
-/

namespace A135406.P706861994798277102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A065516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135406.P706861994798277102

namespace A135406

/-- `∑[Δ[A001358(n+1)]*A065516(n+1)]` -/
def P706861994798277102.Spec : Prop :=
  ∀ n, P706861994798277102.a n = A135406 (n + 1)

end A135406

/-! ## A135406.P15675457260266842732

`∑[(A001358(n+2)-A001358(n+1))*A065516(n+1)]`
-/

namespace A135406.P15675457260266842732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 2) - A001358 (n + 1)) * A065516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135406.P15675457260266842732

namespace A135406

/-- `∑[(A001358(n+2)-A001358(n+1))*A065516(n+1)]` -/
def P15675457260266842732.Spec : Prop :=
  ∀ n, P15675457260266842732.a n = A135406 (n + 1)

end A135406

/-! ## A135406.P8698790298297606283

`∑[A131749(∑[n+2])²]`
-/

namespace A135406.P8698790298297606283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131749 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135406.P8698790298297606283

namespace A135406

/-- `∑[A131749(∑[n+2])²]` -/
def P8698790298297606283.Spec : Prop :=
  ∀ n, P8698790298297606283.a n = A135406 (n + 1)

end A135406

/-!
# A135407: Partial products of A000032 (Lucas numbers beginning at 2).

The programs for A135407, there is no canonical definition to state claims against.
-/

/-! ## A135407.P6211988297904298387

`2*A070825(n)`
-/

namespace A135407.P6211988297904298387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070825 n

end

end A135407.P6211988297904298387

/-! ## A135407.P13727833794750088064

`∏[round(ϕ^n)]+floor(acot(n))`
-/

namespace A135407.P13727833794750088064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A135407.P13727833794750088064

/-! ## A135407.P9023012658130817519

`round(ϕ^n)*a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A135407.P9023012658130817519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n) * a (n - 1)

end

end A135407.P9023012658130817519

/-! ## A135407.P1364539290683536751

`∏[a(n-1)+a(n-2)]` with `a(0)=2, a(1)=1`
-/

namespace A135407.P1364539290683536751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135407.P1364539290683536751

/-! ## A135407.P16310910037855977822

`∏[A000032(n)]`
-/

namespace A135407.P16310910037855977822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135407.P16310910037855977822

/-!
# A135410: Number of permutations of {1,2,3,...,n} each with the same up-down signature as its inverse permutation.

The programs for A135410, there is no canonical definition to state claims against.
-/

/-! ## A135410.P5454939940736237872

`A185283(A303033(n))`
-/

namespace A135410.P5454939940736237872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A303033 n).toNat

end

end A135410.P5454939940736237872

/-!
# A135412: Integers that equal three times the Heronian mean of two positive integers.

The programs for A135412, there is no canonical definition to state claims against.
-/

/-! ## A135412.P16651584313309731929

`lt[1, A109607(n)%3]`
-/

namespace A135412.P16651584313309731929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109607 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A135412.P16651584313309731929

/-! ## A135412.P7047048464257979448

`lt[1, ∑{d}[n, A000086(#)]]`
-/

namespace A135412.P7047048464257979448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), A000086 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A135412.P7047048464257979448

/-! ## A135412.P1324207540973878381

`comp[C(A343430(n+1), n)]`
-/

namespace A135412.P1324207540973878381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A343430 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A135412.P1324207540973878381

/-! ## A135412.P9314181520775325702

`comp[A004612(n+1)-1]+1`
-/

namespace A135412.P9314181520775325702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A135412.P9314181520775325702

/-! ## A135412.P9442823539494764494

`comp[A343430(n+3)-1]+1`
-/

namespace A135412.P9442823539494764494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (n + 3) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A135412.P9442823539494764494

/-! ## A135412.P9018561188885406179

`comp[A343430(n+2)%(n+1)]`
-/

namespace A135412.P9018561188885406179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343430 (n + 2)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A135412.P9018561188885406179

/-! ## A135412.P9213890273599777541

`lt[2, A343783(3*(n+1))]+1`
-/

namespace A135412.P9213890273599777541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343783 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A135412.P9213890273599777541

/-! ## A135412.P5207952013018980819

`lt[A000010(n^ceil(atan(n)))%6, 1]`
-/

namespace A135412.P5207952013018980819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat) 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A135412.P5207952013018980819

/-! ## A135412.P10668005088667801999

`eq[0, A000010((n+1)²)%3]+1`
-/

namespace A135412.P10668005088667801999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 ((n + 1) ^ 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A135412.P10668005088667801999

/-! ## A135412.P181278857156292243

`lt[A000010((n+2)²)%3, 1]+2`
-/

namespace A135412.P181278857156292243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 ((n + 2) ^ 2)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A135412.P181278857156292243

/-!
# A135413: Number of at most 4-way branching ordered (i.e., plane) trees.

The programs for A135413, there is no canonical definition to state claims against.
-/

/-! ## A135413.P8146434072516956661

`(n+1)*A036766(n)`
-/

namespace A135413.P8146434072516956661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A036766 n

end

end A135413.P8146434072516956661

/-! ## A135413.P9293100010899376266

`A213743(∑[n+2]-1)`
-/

namespace A135413.P9293100010899376266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213743 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A135413.P9293100010899376266

/-! ## A135413.P15376955863313866702

`record[A213743(gcd(n, A104579(n)))]`
-/

namespace A135413.P15376955863313866702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213743 (Int.gcd (n : ℤ) (A104579 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135413.P15376955863313866702

/-! ## A135413.P2420167743223258469

`(n+1)*A288942(A052905(n+2))`
-/

namespace A135413.P2420167743223258469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A288942 (A052905 (n + 2)).toNat

end

end A135413.P2420167743223258469

/-! ## A135413.P14083824946998819009

`(n+1)*A288942(eq[4, A025581(n)])`
-/

namespace A135413.P14083824946998819009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A288942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135413.P14083824946998819009

/-! ## A135413.P9050677566979252510

`A035343((n+1)²+(n+2)²)`
-/

namespace A135413.P9050677566979252510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035343 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A135413.P9050677566979252510

/-!
# A135414: a(1)=a(2)=1 and for n>=3, a(n) = n - a(a(n-2)).

The programs for A135414, the canonical program `A135414.P15222695087474158496` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135414 has offset 1).

The definition of A135414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(a(n-2)-1)` (program `A135414.P15222695087474158496`, by `A135414.P15222695087474158496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135414.P15222695087474158496

`n+1-a(a(n-2)-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135414

/-- `n+1-a(a(n-2)-1)` -/
def P15222695087474158496.Spec : Prop :=
  ∀ n, P15222695087474158496.a n = A135414 (n + 1)

theorem P15222695087474158496.correct : P15222695087474158496.Spec := by
  intro n
  simp only [A135414, Nat.add_sub_cancel]

end A135414

/-! ## A135414.P17709055144850454824

`1-a(a(n-2)-1)+n` with `a(0)=1, a(1)=1`
-/

namespace A135414.P17709055144850454824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (a (n - 2) - 1).toNat + (n : ℤ)

end

end A135414.P17709055144850454824

namespace A135414

/-- `1-a(a(n-2)-1)+n` -/
def P17709055144850454824.Spec : Prop :=
  ∀ n, P17709055144850454824.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P11177007391564189007

`1-(a(a(n-2)-1)-n)` with `a(0)=1, a(1)=1`
-/

namespace A135414.P11177007391564189007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (a (a (n - 2) - 1).toNat - (n : ℤ))

end

end A135414.P11177007391564189007

namespace A135414

/-- `1-(a(a(n-2)-1)-n)` -/
def P11177007391564189007.Spec : Prop :=
  ∀ n, P11177007391564189007.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P9013520096394746720

`∑[A005614(A004956(n)-n)]`
-/

namespace A135414.P9013520096394746720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A004956 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135414.P9013520096394746720

namespace A135414

/-- `∑[A005614(A004956(n)-n)]` -/
def P9013520096394746720.Spec : Prop :=
  ∀ n, P9013520096394746720.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P8563185498605337272

`A005713(n+1)+A005206(n)`
-/

namespace A135414.P8563185498605337272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (n + 1) + A005206 n

end

end A135414.P8563185498605337272

namespace A135414

/-- `A005713(n+1)+A005206(n)` -/
def P8563185498605337272.Spec : Prop :=
  ∀ n, P8563185498605337272.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P297334740687107477

`∑[A005614(∑[A189479(n+1)])]`
-/

namespace A135414.P297334740687107477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135414.P297334740687107477

namespace A135414

/-- `∑[A005614(∑[A189479(n+1)])]` -/
def P297334740687107477.Spec : Prop :=
  ∀ n, P297334740687107477.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P10349252484666848187

`A005713(n+1)+∑[A096270(n)]`
-/

namespace A135414.P10349252484666848187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135414.P10349252484666848187

namespace A135414

/-- `A005713(n+1)+∑[A096270(n)]` -/
def P10349252484666848187.Spec : Prop :=
  ∀ n, P10349252484666848187.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P16773496898945524730

`A060143(n+1)+A005713(n+1)`
-/

namespace A135414.P16773496898945524730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (n + 1) + A005713 (n + 1)

end

end A135414.P16773496898945524730

namespace A135414

/-- `A060143(n+1)+A005713(n+1)` -/
def P16773496898945524730.Spec : Prop :=
  ∀ n, P16773496898945524730.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P14653514128576528817

`A005206(2-A187944(n+1)+n)`
-/

namespace A135414.P14653514128576528817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 - A187944 (n + 1) + (n : ℤ)).toNat

end

end A135414.P14653514128576528817

namespace A135414

/-- `A005206(2-A187944(n+1)+n)` -/
def P14653514128576528817.Spec : Prop :=
  ∀ n, P14653514128576528817.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P2706500240130672766

`A005206(A014675(A005206(n))+n)`
-/

namespace A135414.P2706500240130672766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A014675 (A005206 n).toNat + (n : ℤ)).toNat

end

end A135414.P2706500240130672766

namespace A135414

/-- `A005206(A014675(A005206(n))+n)` -/
def P2706500240130672766.Spec : Prop :=
  ∀ n, P2706500240130672766.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P10984621019897418631

`A019446(A005614(A005206(n))+n)`
-/

namespace A135414.P10984621019897418631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A005614 (A005206 n).toNat + (n : ℤ)).toNat

end

end A135414.P10984621019897418631

namespace A135414

/-- `A019446(A005614(A005206(n))+n)` -/
def P10984621019897418631.Spec : Prop :=
  ∀ n, P10984621019897418631.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P12717659676568913680

`A005206(A005614(A005206(n))+1+n)`
-/

namespace A135414.P12717659676568913680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005614 (A005206 n).toNat + 1 + (n : ℤ)).toNat

end

end A135414.P12717659676568913680

namespace A135414

/-- `A005206(A005614(A005206(n))+1+n)` -/
def P12717659676568913680.Spec : Prop :=
  ∀ n, P12717659676568913680.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P13271517729354593679

`A005206(A001468(A019446(n+1))+n)`
-/

namespace A135414.P13271517729354593679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A001468 (A019446 (n + 1)).toNat + (n : ℤ)).toNat

end

end A135414.P13271517729354593679

namespace A135414

/-- `A005206(A001468(A019446(n+1))+n)` -/
def P13271517729354593679.Spec : Prop :=
  ∀ n, P13271517729354593679.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P4569141291838017575

`A019446(1-A003849(A005206(n))+n)`
-/

namespace A135414.P4569141291838017575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (1 - A003849 (A005206 n).toNat + (n : ℤ)).toNat

end

end A135414.P4569141291838017575

namespace A135414

/-- `A019446(1-A003849(A005206(n))+n)` -/
def P4569141291838017575.Spec : Prop :=
  ∀ n, P4569141291838017575.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P11459054727339921072

`A019446(n+1-A003849(A101803(n)))`
-/

namespace A135414.P11459054727339921072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 ((n + 1 : ℤ) - A003849 (A101803 n).toNat).toNat

end

end A135414.P11459054727339921072

namespace A135414

/-- `A019446(n+1-A003849(A101803(n)))` -/
def P11459054727339921072.Spec : Prop :=
  ∀ n, P11459054727339921072.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P6876975303522499821

`A114986(A005206(n+2))+A005206(n)`
-/

namespace A135414.P6876975303522499821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A005206 (n + 2)).toNat + A005206 n

end

end A135414.P6876975303522499821

namespace A135414

/-- `A114986(A005206(n+2))+A005206(n)` -/
def P6876975303522499821.Spec : Prop :=
  ∀ n, P6876975303522499821.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P260694845548720316

`A005206(n+2-A003849(A005206(n)))`
-/

namespace A135414.P260694845548720316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 ((n + 2 : ℤ) - A003849 (A005206 n).toNat).toNat

end

end A135414.P260694845548720316

namespace A135414

/-- `A005206(n+2-A003849(A005206(n)))` -/
def P260694845548720316.Spec : Prop :=
  ∀ n, P260694845548720316.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P4291070534117243184

`A060143(n+3-A005713(A060143(n)))`
-/

namespace A135414.P4291070534117243184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 ((n + 3 : ℤ) - A005713 (A060143 n).toNat).toNat

end

end A135414.P4291070534117243184

namespace A135414

/-- `A060143(n+3-A005713(A060143(n)))` -/
def P4291070534117243184.Spec : Prop :=
  ∀ n, P4291070534117243184.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P2866228112886525253

`A101803(A005614(A101803(n))+n+1)`
-/

namespace A135414.P2866228112886525253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 (A005614 (A101803 n).toNat + (n + 1 : ℤ)).toNat

end

end A135414.P2866228112886525253

namespace A135414

/-- `A101803(A005614(A101803(n))+n+1)` -/
def P2866228112886525253.Spec : Prop :=
  ∀ n, P2866228112886525253.a n = A135414 (n + 1)

end A135414

/-! ## A135414.P1954069363276115010

`A060143(n+3-A005614(A060144(n)))`
-/

namespace A135414.P1954069363276115010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 ((n + 3 : ℤ) - A005614 (A060144 n).toNat).toNat

end

end A135414.P1954069363276115010

namespace A135414

/-- `A060143(n+3-A005614(A060144(n)))` -/
def P1954069363276115010.Spec : Prop :=
  ∀ n, P1954069363276115010.a n = A135414 (n + 1)

end A135414

/-!
# A135416: a(n) = A036987(n)*(n+1)/2.

The programs for A135416, the canonical program `A135416.P5967622263498430513` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135416 has offset 1).

The definition of A135416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135416.P5967622263498430513

`A036987(n+1)*(n+2)/2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135416

/-- `A036987(n+1)*(n+2)/2` -/
def P5967622263498430513.Spec : Prop :=
  ∀ n, P5967622263498430513.a n = (A135416 (n + 1) : ℚ)

end A135416

/-! ## A135416.P4066451749357386810

`A048298(n+2)/2`
-/

namespace A135416.P4066451749357386810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048298 (n + 2) : ℚ) / 2

end

end A135416.P4066451749357386810

namespace A135416

/-- `A048298(n+2)/2` -/
def P4066451749357386810.Spec : Prop :=
  ∀ n, P4066451749357386810.a n = (A135416 (n + 1) : ℚ)

end A135416

/-! ## A135416.P5236068863072463321

`Δ[2^floor(log2(n+1))]`
-/

namespace A135416.P5236068863072463321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A135416.P5236068863072463321

namespace A135416

/-- `Δ[2^floor(log2(n+1))]` -/
def P5236068863072463321.Spec : Prop :=
  ∀ n, P5236068863072463321.a n = A135416 (n + 1)

end A135416

/-! ## A135416.P4536113225239022431

`2*a((n-2)/gcd(2, n))` with `a(0)=1, a(1)=0`
-/

namespace A135416.P4536113225239022431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * a (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A135416.P4536113225239022431

namespace A135416

/-- `2*a((n-2)/gcd(2, n))` -/
def P4536113225239022431.Spec : Prop :=
  ∀ n, (P4536113225239022431.a n : ℤ) = A135416 (n + 1)

end A135416

/-! ## A135416.P17259885464285724946

`2*a(gcd(n-2, ∑[n-1]))` with `a(0)=1, a(1)=0`
-/

namespace A135416.P17259885464285724946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * a (Int.gcd ((n : ℤ) - 2) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A135416.P17259885464285724946

namespace A135416

/-- `2*a(gcd(n-2, ∑[n-1]))` -/
def P17259885464285724946.Spec : Prop :=
  ∀ n, (P17259885464285724946.a n : ℤ) = A135416 (n + 1)

end A135416

/-! ## A135416.P264816702577575149

`1-Δ[and(n+1, a(n-1)+1)]` with `a(0)=0`
-/

namespace A135416.P264816702577575149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.land (n + 1) (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A135416.P264816702577575149

namespace A135416

/-- `1-Δ[and(n+1, a(n-1)+1)]` -/
def P264816702577575149.Spec : Prop :=
  ∀ n, P264816702577575149.a n = A135416 (n + 1)

end A135416

/-! ## A135416.P16531224765017753066

`C(and(n+2, -(n+2)), n+1)/2`
-/

namespace A135416.P16531224765017753066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Int.land (n + 2 : ℤ) (-(n + 2 : ℤ))).toNat (n + 1) : ℚ) / 2

end

end A135416.P16531224765017753066

namespace A135416

/-- `C(and(n+2, -(n+2)), n+1)/2` -/
def P16531224765017753066.Spec : Prop :=
  ∀ n, P16531224765017753066.a n = (A135416 (n + 1) : ℚ)

end A135416

/-! ## A135416.P17366505312777440013

`C(and(2*n+1, n+2), n)%(n+2)`
-/

namespace A135416.P17366505312777440013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land (2 * n + 1) (n + 2)) n % (n + 2)

end

end A135416.P17366505312777440013

namespace A135416

/-- `C(and(2*n+1, n+2), n)%(n+2)` -/
def P17366505312777440013.Spec : Prop :=
  ∀ n, (P17366505312777440013.a n : ℤ) = A135416 (n + 1)

end A135416

/-! ## A135416.P14339547415729645956

`floor((n+2)/(and(n+1, n+2)²+2))`
-/

namespace A135416.P14339547415729645956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (Nat.land (n + 1) (n + 2) ^ 2 + 2 : ℚ)⌋

end

end A135416.P14339547415729645956

namespace A135416

/-- `floor((n+2)/(and(n+1, n+2)²+2))` -/
def P14339547415729645956.Spec : Prop :=
  ∀ n, P14339547415729645956.a n = A135416 (n + 1)

end A135416

/-! ## A135416.P1185053932629181285

`and(n+1, C(and(n+2, 2*(n+1)), n))`
-/

namespace A135416.P1185053932629181285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (Nat.choose (Nat.land (n + 2) (2 * (n + 1))) n)

end

end A135416.P1185053932629181285

namespace A135416

/-- `and(n+1, C(and(n+2, 2*(n+1)), n))` -/
def P1185053932629181285.Spec : Prop :=
  ∀ n, (P1185053932629181285.a n : ℤ) = A135416 (n + 1)

end A135416

/-! ## A135416.P16389195885578447740

`C(n+2, and(n+1, n+2)+n+1)/2`
-/

namespace A135416.P16389195885578447740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) (Nat.land (n + 1) (n + 2) + (n + 1)) : ℚ) / 2

end

end A135416.P16389195885578447740

namespace A135416

/-- `C(n+2, and(n+1, n+2)+n+1)/2` -/
def P16389195885578447740.Spec : Prop :=
  ∀ n, P16389195885578447740.a n = (A135416 (n + 1) : ℚ)

end A135416

/-! ## A135416.P1339226526670123134

`and(n+1, C(n+2, and(n+1, n+2)+n))`
-/

namespace A135416.P1339226526670123134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (Nat.choose (n + 2) (Nat.land (n + 1) (n + 2) + n))

end

end A135416.P1339226526670123134

namespace A135416

/-- `and(n+1, C(n+2, and(n+1, n+2)+n))` -/
def P1339226526670123134.Spec : Prop :=
  ∀ n, (P1339226526670123134.a n : ℤ) = A135416 (n + 1)

end A135416

/-! ## A135416.P12130747754128522153

`and(n+1, A135517(n+1))`
-/

namespace A135416.P12130747754128522153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A135517 (n + 1))

end

end A135416.P12130747754128522153

namespace A135416

/-- `and(n+1, A135517(n+1))` -/
def P12130747754128522153.Spec : Prop :=
  ∀ n, P12130747754128522153.a n = A135416 (n + 1)

end A135416

/-! ## A135416.P9084013143841968176

`2*a(n-A004001(n+1))` with `a(0)=1, a(1)=0`
-/

namespace A135416.P9084013143841968176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * a ((n : ℤ) - A004001 (n + 1)).toNat

end

end A135416.P9084013143841968176

namespace A135416

/-- `2*a(n-A004001(n+1))` -/
def P9084013143841968176.Spec : Prop :=
  ∀ n, (P9084013143841968176.a n : ℤ) = A135416 (n + 1)

end A135416

/-! ## A135416.P8161331266119653440

`floor(C(A000010(2*(n+2)), n+1)/2)`
-/

namespace A135416.P8161331266119653440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (A000010 (2 * (n + 2))).toNat (n + 1) : ℚ) / 2⌋

end

end A135416.P8161331266119653440

namespace A135416

/-- `floor(C(A000010(2*(n+2)), n+1)/2)` -/
def P8161331266119653440.Spec : Prop :=
  ∀ n, P8161331266119653440.a n = A135416 (n + 1)

end A135416

/-! ## A135416.P1573360808368340985

`A048298(A027656(n))`
-/

namespace A135416.P1573360808368340985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A027656 n).toNat

end

end A135416.P1573360808368340985

namespace A135416

/-- `A048298(A027656(n))` -/
def P1573360808368340985.Spec : Prop :=
  ∀ n, P1573360808368340985.a n = A135416 (n + 1)

end A135416

/-! ## A135416.P7714522290491245494

`A067770(n)*A204418(n)`
-/

namespace A135416.P7714522290491245494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 n * A204418 n

end

end A135416.P7714522290491245494

namespace A135416

/-- `A067770(n)*A204418(n)` -/
def P7714522290491245494.Spec : Prop :=
  ∀ n, P7714522290491245494.a n = A135416 (n + 1)

end A135416

/-! ## A135416.P9288646818782818422

`A067770(n)%A145064(n)`
-/

namespace A135416.P9288646818782818422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067770 n) (A145064 n)

end

end A135416.P9288646818782818422

namespace A135416

/-- `A067770(n)%A145064(n)` -/
def P9288646818782818422.Spec : Prop :=
  ∀ n, P9288646818782818422.a n = A135416 (n + 1)

end A135416

/-! ## A135416.P8140419123175036081

`lcm(A014021(n), A067770(n))`
-/

namespace A135416.P8140419123175036081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014021 n) (A067770 n)

end

end A135416.P8140419123175036081

namespace A135416

/-- `lcm(A014021(n), A067770(n))` -/
def P8140419123175036081.Spec : Prop :=
  ∀ n, (P8140419123175036081.a n : ℤ) = A135416 (n + 1)

end A135416

/-! ## A135416.P7584271995594203972

`and(A027656(n), A082908(n))`
-/

namespace A135416.P7584271995594203972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027656 n) (A082908 n)

end

end A135416.P7584271995594203972

namespace A135416

/-- `and(A027656(n), A082908(n))` -/
def P7584271995594203972.Spec : Prop :=
  ∀ n, P7584271995594203972.a n = A135416 (n + 1)

end A135416

/-!
# A135417: Number of mountain numbers (see A134941) with n digits.

The programs for A135417, there is no canonical definition to state claims against.
-/

/-! ## A135417.P15658176855399567516

`A236386(2*(n+1))²%A236400(2*(n+1))`
-/

namespace A135417.P15658176855399567516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236386 (2 * (n + 1)) ^ 2) (A236400 (2 * (n + 1)))

end

end A135417.P15658176855399567516

/-!
# A135420: a(n) = 4^n * 5^(n^2).

The programs for A135420, the canonical program `A135420.P13664882729703104609` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135420 has offset 0).

The definition of A135420 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*5^n²` (program `A135420.P13664882729703104609`, by `A135420.P13664882729703104609.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135420.P13664882729703104609

`4^n*5^n²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135420

/-- `4^n*5^n²` -/
def P13664882729703104609.Spec : Prop :=
  ∀ n, (P13664882729703104609.a n : ℤ) = A135420 n

theorem P13664882729703104609.correct : P13664882729703104609.Spec := by
  intro n
  simp only [A135420]

end A135420

/-! ## A135420.P3522525696925726536

`lcm(4^n, 5^n²)`
-/

namespace A135420.P3522525696925726536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (4 ^ n) (5 ^ n ^ 2)

end

end A135420.P3522525696925726536

namespace A135420

/-- `lcm(4^n, 5^n²)` -/
def P3522525696925726536.Spec : Prop :=
  ∀ n, (P3522525696925726536.a n : ℤ) = A135420 n

end A135420

/-! ## A135420.P8425321129681450608

`round(abs(∏[-a(n-1)])^n)` with `a(0)=4, a(1)=5`

`round` is left out, it is the identity on integers.
-/

namespace A135420.P8425321129681450608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j| ^ n

end

end A135420.P8425321129681450608

namespace A135420

/-- `round(abs(∏[-a(n-1)])^n)` -/
def P8425321129681450608.Spec : Prop :=
  ∀ n, P8425321129681450608.a n = A135420 n

end A135420

/-! ## A135420.P7750751478075002375

`∏[A005054(2*n)]`
-/

namespace A135420.P7750751478075002375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135420.P7750751478075002375

namespace A135420

/-- `∏[A005054(2*n)]` -/
def P7750751478075002375.Spec : Prop :=
  ∀ n, P7750751478075002375.a n = A135420 n

end A135420

/-! ## A135420.P13909969639134245746

`Δ[A000351(n)]^n`
-/

namespace A135420.P13909969639134245746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A135420.P13909969639134245746

namespace A135420

/-- `Δ[A000351(n)]^n` -/
def P13909969639134245746.Spec : Prop :=
  ∀ n, P13909969639134245746.a n = A135420 n

end A135420

/-!
# A135421: a(n) = 5^n*6^(n^2).

The programs for A135421, the canonical program `A135421.P4986318248835405090` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135421 has offset 0).

The definition of A135421 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n*6^n²` (program `A135421.P4986318248835405090`, by `A135421.P4986318248835405090.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135421.P4986318248835405090

`5^n*6^n²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135421

/-- `5^n*6^n²` -/
def P4986318248835405090.Spec : Prop :=
  ∀ n, (P4986318248835405090.a n : ℤ) = A135421 n

theorem P4986318248835405090.correct : P4986318248835405090.Spec := by
  intro n
  simp only [A135421]

end A135421

/-! ## A135421.P1245268038218567639

`lcm(5^n, (6^n)^n)`
-/

namespace A135421.P1245268038218567639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (5 ^ n) ((6 ^ n) ^ n)

end

end A135421.P1245268038218567639

namespace A135421

/-- `lcm(5^n, (6^n)^n)` -/
def P1245268038218567639.Spec : Prop :=
  ∀ n, (P1245268038218567639.a n : ℤ) = A135421 n

end A135421

/-! ## A135421.P16808526657238640493

`∏[A052934(2*n)]`
-/

namespace A135421.P16808526657238640493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135421.P16808526657238640493

namespace A135421

/-- `∏[A052934(2*n)]` -/
def P16808526657238640493.Spec : Prop :=
  ∀ n, P16808526657238640493.a n = A135421 n

end A135421

/-!
# A135422: a(1) = 1, a(n) = Sum(k=1,n-1, a(k)^F(n-k)) where F(m) is the m-th Fibonacci number.

The programs for A135422, there is no canonical definition to state claims against.
-/

/-! ## A135422.P17512015839635972013

`A225530(A289774(n)-A001370(n))`
-/

namespace A135422.P17512015839635972013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (A289774 n - A001370 n).toNat

end

end A135422.P17512015839635972013

/-! ## A135422.P739133834615212049

`A024417(or(A006897(n), A007111(n)))`
-/

namespace A135422.P739133834615212049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.lor (A006897 n) (A007111 n)).toNat

end

end A135422.P739133834615212049

/-! ## A135422.P2096669680616786051

`A138471(A179264(n+1))+A028310(n)`
-/

namespace A135422.P2096669680616786051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 (A179264 (n + 1)).toNat + A028310 n

end

end A135422.P2096669680616786051

/-!
# A135423: a(n) = (5*9^n + 1)/2.

The programs for A135423, the canonical program `A135423.P2361747265217845887` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135423 has offset 0).

The definition of A135423 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*9^n+1)/2` (program `A135423.P12952811272855323171`, by `A135423.P12952811272855323171.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135423.P12952811272855323171

`(5*9^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135423.P12952811272855323171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 9 ^ n + 1 : ℚ) / 2

end

end A135423.P12952811272855323171

namespace A135423

/-- `(5*9^n+1)/2` -/
def P12952811272855323171.Spec : Prop :=
  ∀ n, P12952811272855323171.a n = (A135423 n : ℚ)

theorem P12952811272855323171.correct : P12952811272855323171.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A135423, Nat.add_sub_cancel, A135423.P12952811272855323171.a, A135423.P2361747265217845887.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A135423, Nat.add_sub_cancel, A135423.P12952811272855323171.a, A135423.P2361747265217845887.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135423

/-! ## A135423.P2361747265217845887

`9*a(n-1)-4` with `a(0)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135423

/-- `9*a(n-1)-4` -/
def P2361747265217845887.Spec : Prop :=
  ∀ n, P2361747265217845887.a n = A135423 n

theorem P2361747265217845887.correct : P2361747265217845887.Spec := by
  intro n
  simp only [A135423]

end A135423

/-! ## A135423.P11782751363433531094

`ogf((3-7x)/(1-10x+9x^2))`
-/

namespace A135423.P11782751363433531094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -7] [1, -10, 9] n

end

end A135423.P11782751363433531094

namespace A135423

/-- `ogf((3-7x)/(1-10x+9x^2))` -/
def P11782751363433531094.Spec : Prop :=
  ∀ n, P11782751363433531094.a n = A135423 n

end A135423

/-! ## A135423.P12162352470356578393

`round(lcm(5, 3^(2*n))/2)`
-/

namespace A135423.P12162352470356578393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 5 (3 ^ (2 * n)) : ℚ) / 2)

end

end A135423.P12162352470356578393

namespace A135423

/-- `round(lcm(5, 3^(2*n))/2)` -/
def P12162352470356578393.Spec : Prop :=
  ∀ n, P12162352470356578393.a n = A135423 n

end A135423

/-! ## A135423.P4886244065473640314

`or(1, floor(5/2*9^n))`
-/

namespace A135423.P4886244065473640314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(5 : ℚ) / 2 * (9 ^ n : ℚ)⌋

end

end A135423.P4886244065473640314

namespace A135423

/-- `or(1, floor(5/2*9^n))` -/
def P4886244065473640314.Spec : Prop :=
  ∀ n, P4886244065473640314.a n = A135423 n

end A135423

/-! ## A135423.P7238771820077796010

`xor(1, floor(5/2*9^n))`
-/

namespace A135423.P7238771820077796010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊(5 : ℚ) / 2 * (9 ^ n : ℚ)⌋

end

end A135423.P7238771820077796010

namespace A135423

/-- `xor(1, floor(5/2*9^n))` -/
def P7238771820077796010.Spec : Prop :=
  ∀ n, P7238771820077796010.a n = A135423 n

end A135423

/-! ## A135423.P2005522926277830909

`a(n-1)/(1/3)²-4` with `a(0)=3`
-/

namespace A135423.P2005522926277830909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - 4

end

end A135423.P2005522926277830909

namespace A135423

/-- `a(n-1)/(1/3)²-4` -/
def P2005522926277830909.Spec : Prop :=
  ∀ n, P2005522926277830909.a n = (A135423 n : ℚ)

end A135423

/-! ## A135423.P4501896339637923741

`A255043(n)+1`
-/

namespace A135423.P4501896339637923741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255043 n + 1

end

end A135423.P4501896339637923741

namespace A135423

/-- `A255043(n)+1` -/
def P4501896339637923741.Spec : Prop :=
  ∀ n, P4501896339637923741.a n = A135423 n

end A135423

/-! ## A135423.P6151986500802552401

`A096019(2*n)`
-/

namespace A135423.P6151986500802552401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096019 (2 * n)

end

end A135423.P6151986500802552401

namespace A135423

/-- `A096019(2*n)` -/
def P6151986500802552401.Spec : Prop :=
  ∀ n, P6151986500802552401.a n = A135423 n

end A135423

/-! ## A135423.P11900493908341108539

`A057198(Δ[n²])`
-/

namespace A135423.P11900493908341108539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057198 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A135423.P11900493908341108539

namespace A135423

/-- `A057198(Δ[n²])` -/
def P11900493908341108539.Spec : Prop :=
  ∀ n, P11900493908341108539.a n = A135423 n

end A135423

/-! ## A135423.P11070314279187403807

`2*A138894(n)+1`
-/

namespace A135423.P11070314279187403807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138894 n + 1

end

end A135423.P11070314279187403807

namespace A135423

/-- `2*A138894(n)+1` -/
def P11070314279187403807.Spec : Prop :=
  ∀ n, P11070314279187403807.a n = A135423 n

end A135423

/-! ## A135423.P15618009087510078265

`A134931(2*n)+2`
-/

namespace A135423.P15618009087510078265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134931 (2 * n) + 2

end

end A135423.P15618009087510078265

namespace A135423

/-- `A134931(2*n)+2` -/
def P15618009087510078265.Spec : Prop :=
  ∀ n, P15618009087510078265.a n = A135423 n

end A135423

/-! ## A135423.P12565991673996159207

`A137340(2*n)+2`
-/

namespace A135423.P12565991673996159207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137340 (2 * n) + 2

end

end A135423.P12565991673996159207

namespace A135423

/-- `A137340(2*n)+2` -/
def P12565991673996159207.Spec : Prop :=
  ∀ n, P12565991673996159207.a n = A135423 n

end A135423

/-! ## A135423.P13447153405022638443

`2*A137483(n)-1`
-/

namespace A135423.P13447153405022638443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137483 n - 1

end

end A135423.P13447153405022638443

namespace A135423

/-- `2*A137483(n)-1` -/
def P13447153405022638443.Spec : Prop :=
  ∀ n, P13447153405022638443.a n = A135423 n

end A135423

/-! ## A135423.P2712974141683543044

`A198962(n)/2+1`
-/

namespace A135423.P2712974141683543044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198962 n : ℚ) / 2 + 1

end

end A135423.P2712974141683543044

namespace A135423

/-- `A198962(n)/2+1` -/
def P2712974141683543044.Spec : Prop :=
  ∀ n, P2712974141683543044.a n = (A135423 n : ℚ)

end A135423

/-! ## A135423.P6453425697288519935

`4*A125962(n)+3`
-/

namespace A135423.P6453425697288519935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A125962 n + 3

end

end A135423.P6453425697288519935

namespace A135423

/-- `4*A125962(n)+3` -/
def P6453425697288519935.Spec : Prop :=
  ∀ n, P6453425697288519935.a n = A135423 n

end A135423

/-! ## A135423.P3740898849726436668

`5*A083884(n)-2`
-/

namespace A135423.P3740898849726436668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A083884 n - 2

end

end A135423.P3740898849726436668

namespace A135423

/-- `5*A083884(n)-2` -/
def P3740898849726436668.Spec : Prop :=
  ∀ n, P3740898849726436668.a n = A135423 n

end A135423

/-! ## A135423.P16940909866884347752

`5*A191681(n)+3`
-/

namespace A135423.P16940909866884347752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A191681 n + 3

end

end A135423.P16940909866884347752

namespace A135423

/-- `5*A191681(n)+3` -/
def P16940909866884347752.Spec : Prop :=
  ∀ n, P16940909866884347752.a n = A135423 n

end A135423

/-! ## A135423.P1404042935147744675

`A060816(Δ[n²])+1`
-/

namespace A135423.P1404042935147744675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060816 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A135423.P1404042935147744675

namespace A135423

/-- `A060816(Δ[n²])+1` -/
def P1404042935147744675.Spec : Prop :=
  ∀ n, P1404042935147744675.a n = A135423 n

end A135423

/-! ## A135423.P14941507521067417010

`A321573(Δ[n²])+1`
-/

namespace A135423.P14941507521067417010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A135423.P14941507521067417010

namespace A135423

/-- `A321573(Δ[n²])+1` -/
def P14941507521067417010.Spec : Prop :=
  ∀ n, P14941507521067417010.a n = A135423 n

end A135423

/-!
# A135424: a(n) = n!^number of decimal digits of n!.

The programs for A135424, there is no canonical definition to state claims against.
-/

/-! ## A135424.P12330042614697776166

`n!^∑{digits}[n!, (#%2)!]`
-/

namespace A135424.P12330042614697776166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum

end

end A135424.P12330042614697776166

/-! ## A135424.P7563991260048349693

`n!^A029064(n)`
-/

namespace A135424.P7563991260048349693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) ^ (A029064 n : ℤ)

end

end A135424.P7563991260048349693

/-! ## A135424.P6210821812254838816

`n!^A034886(n)`
-/

namespace A135424.P6210821812254838816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) ^ (A034886 n : ℤ)

end

end A135424.P6210821812254838816

/-! ## A135424.P18323273972157614211

`n!^A025797(2*n+1)`
-/

namespace A135424.P18323273972157614211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) ^ (A025797 (2 * n + 1) : ℤ)

end

end A135424.P18323273972157614211

/-! ## A135424.P5532311793401705638

`A000142(n)^A034886(n)`
-/

namespace A135424.P5532311793401705638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) ^ (A034886 n : ℤ)

end

end A135424.P5532311793401705638

/-!
# A135425: 

The programs for A135425, there is no canonical definition to state claims against.
-/

/-! ## A135425.P6153207722312375878

`Δ[7^n]^n`
-/

namespace A135425.P6153207722312375878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n

end

end A135425.P6153207722312375878

/-! ## A135425.P3935746170315843777

`lcm(6^n, (7^n)^n)`
-/

namespace A135425.P3935746170315843777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (6 ^ n) ((7 ^ n) ^ n)

end

end A135425.P3935746170315843777

/-! ## A135425.P306008668646676278

`(7^(n%16))^n*6^n`
-/

namespace A135425.P306008668646676278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 ^ (n % 16)) ^ n * 6 ^ n

end

end A135425.P306008668646676278

/-! ## A135425.P4116190466845755340

`2^n*A169634(n)^n`
-/

namespace A135425.P4116190466845755340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A169634 n ^ n

end

end A135425.P4116190466845755340

/-! ## A135425.P14847085577053663465

`A000400(n)*A000420(n²)`
-/

namespace A135425.P14847085577053663465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n * A000420 (n ^ 2)

end

end A135425.P14847085577053663465

/-!
# A135426: 

The programs for A135426, there is no canonical definition to state claims against.
-/

/-! ## A135426.P12615797047658076445

`Δ[8^n]^n`
-/

namespace A135426.P12615797047658076445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n

end

end A135426.P12615797047658076445

/-! ## A135426.P2103774715543480971

`lcm(7^n, 8^n²)`
-/

namespace A135426.P2103774715543480971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (7 ^ n) (8 ^ n ^ 2)

end

end A135426.P2103774715543480971

/-! ## A135426.P12619072789408976737

`∏[A055274(2*n)]`
-/

namespace A135426.P12619072789408976737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135426.P12619072789408976737

/-! ## A135426.P17447870983072663436

`∏[Δ[record[A328824(n)]]]`
-/

namespace A135426.P17447870983072663436
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135426.P17447870983072663436

/-! ## A135426.P7817032621588128683

`7^n*A060760(n)`
-/

namespace A135426.P7817032621588128683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A060760 n

end

end A135426.P7817032621588128683

/-!
# A135427: 

The programs for A135427, there is no canonical definition to state claims against.
-/

/-! ## A135427.P9391972977363412887

`Δ[9^n]^n`
-/

namespace A135427.P9391972977363412887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n

end

end A135427.P9391972977363412887

/-! ## A135427.P4798887532095533281

`lcm(8^n, 9^n²)`
-/

namespace A135427.P4798887532095533281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (8 ^ n) (9 ^ n ^ 2)

end

end A135427.P4798887532095533281

/-! ## A135427.P17068262860406228721

`∏[A055275(2*n)]`
-/

namespace A135427.P17068262860406228721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135427.P17068262860406228721

/-! ## A135427.P10114135827575864227

`∏[A080923(4*n)]`
-/

namespace A135427.P10114135827575864227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135427.P10114135827575864227

/-! ## A135427.P18249311162151991341

`record[(8*3^n)^A025480(n)]`
-/

namespace A135427.P18249311162151991341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * 3 ^ n : ℚ) ^ (A025480 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135427.P18249311162151991341

/-!
# A135428: 

The programs for A135428, there is no canonical definition to state claims against.
-/

/-! ## A135428.P17034435920169977576

`Δ[10^n]^n`
-/

namespace A135428.P17034435920169977576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n

end

end A135428.P17034435920169977576

/-! ## A135428.P17578051942657224098

`10^∑{digits}[n, #]²*9^n`
-/

namespace A135428.P17578051942657224098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 * 9 ^ n

end

end A135428.P17578051942657224098

/-! ## A135428.P14394258640257027233

`A011557(n)^n*9^n`
-/

namespace A135428.P14394258640257027233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n ^ n * (9 ^ n : ℤ)

end

end A135428.P14394258640257027233

/-! ## A135428.P5404438823391910523

`A137233(n+1)^n*2^n`
-/

namespace A135428.P5404438823391910523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137233 (n + 1) ^ n * (2 ^ n : ℤ)

end

end A135428.P5404438823391910523

/-! ## A135428.P4497249299497949390

`A017936(2*n+1)^n*9^n`
-/

namespace A135428.P4497249299497949390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (2 * n + 1) ^ n * (9 ^ n : ℤ)

end

end A135428.P4497249299497949390

/-!
# A135429: Number of transitive reflexive binary relations R on n labeled elements where |{y : xRy}| <= 3 for all x.

The programs for A135429, there is no canonical definition to state claims against.
-/

/-! ## A135429.P17350793022017988791

`A135458(n)+A135312(n)`
-/

namespace A135429.P17350793022017988791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135458 n + A135312 n

end

end A135429.P17350793022017988791

/-! ## A135429.P16034585088177135849

`A135458(n)+A135302(∑[n+2]+3)`
-/

namespace A135429.P16034585088177135849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135458 n + A135302 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A135429.P16034585088177135849

/-! ## A135429.P13734952397134693830

`A135458(n)+A135313(∑[char[1]+n]+1)+1`
-/

namespace A135429.P13734952397134693830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135458 n + (A135313 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1)

end

end A135429.P13734952397134693830

/-! ## A135429.P17930075361939811641

`A135313(A133263(n))+A135458(n)+1`
-/

namespace A135429.P17930075361939811641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A133263 n).toNat + (A135458 n + 1)

end

end A135429.P17930075361939811641

/-! ## A135429.P11593483758311606363

`A135458(n)+A135302(A340266(n+1))+A000038(n+1)`
-/

namespace A135429.P11593483758311606363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135458 n + (A135302 (A340266 (n + 1)).toNat + A000038 (n + 1))

end

end A135429.P11593483758311606363

/-! ## A135429.P3994049076734700278

`A135458(n)+A135302(A340266(n+1))%A198011(n+1)`
-/

namespace A135429.P3994049076734700278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135458 n + Int.tmod (A135302 (A340266 (n + 1)).toNat) (A198011 (n + 1))

end

end A135429.P3994049076734700278

/-!
# A135431: a(n) = a(n-1) + a(n-2) + a(n-3) - a(n-4) with a(0)=0, a(1)=1, a(2)=2 and a(3)=3.

The programs for A135431, the canonical program `A135431.P11228623882288088231` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135431 has offset 0).

The definition of A135431 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)-a(n-4)` (program `A135431.P11228623882288088231`, by `A135431.P11228623882288088231.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135431.P11228623882288088231

`a(n-1)+a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135431

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)` -/
def P11228623882288088231.Spec : Prop :=
  ∀ n, P11228623882288088231.a n = A135431 n

theorem P11228623882288088231.correct : P11228623882288088231.Spec := by
  intro n
  simp only [A135431]

end A135431

/-! ## A135431.P13036857671900452128

`A116732(n+1)+A116732(n+2)`
-/

namespace A135431.P13036857671900452128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (n + 1) + A116732 (n + 2)

end

end A135431.P13036857671900452128

namespace A135431

/-- `A116732(n+1)+A116732(n+2)` -/
def P13036857671900452128.Spec : Prop :=
  ∀ n, P13036857671900452128.a n = A135431 n

end A135431

/-! ## A135431.P6852544839102218220

`ogf((x+x^2)/(1-x-x^2-x^3+x^4))`
-/

namespace A135431.P6852544839102218220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -1, -1, -1, 1] n

end

end A135431.P6852544839102218220

namespace A135431

/-- `ogf((x+x^2)/(1-x-x^2-x^3+x^4))` -/
def P6852544839102218220.Spec : Prop :=
  ∀ n, P6852544839102218220.a n = A135431 n

end A135431

/-! ## A135431.P7620278347331823394

`∑[A116201(n)]`
-/

namespace A135431.P7620278347331823394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135431.P7620278347331823394

namespace A135431

/-- `∑[A116201(n)]` -/
def P7620278347331823394.Spec : Prop :=
  ∀ n, P7620278347331823394.a n = A135431 n

end A135431

/-! ## A135431.P4355795567648851722

`A116732(n)+A052527(n+1)`
-/

namespace A135431.P4355795567648851722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 n + A052527 (n + 1)

end

end A135431.P4355795567648851722

namespace A135431

/-- `A116732(n)+A052527(n+1)` -/
def P4355795567648851722.Spec : Prop :=
  ∀ n, P4355795567648851722.a n = A135431 n

end A135431

/-! ## A135431.P13786096584205683852

`∑[A239909(n+1)-A052527(n)]`
-/

namespace A135431.P13786096584205683852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 1) - A052527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135431.P13786096584205683852

namespace A135431

/-- `∑[A239909(n+1)-A052527(n)]` -/
def P13786096584205683852.Spec : Prop :=
  ∀ n, P13786096584205683852.a n = A135431 n

end A135431

/-! ## A135431.P7010229303777559154

`∑[A116732(n+2)-A116732(n)]`
-/

namespace A135431.P7010229303777559154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (n + 2) - A116732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135431.P7010229303777559154

namespace A135431

/-- `∑[A116732(n+2)-A116732(n)]` -/
def P7010229303777559154.Spec : Prop :=
  ∀ n, P7010229303777559154.a n = A135431 n

end A135431

/-! ## A135431.P12313354221167781679

`∑[A239909(n+2)-Δ[A239909(n+2)]]`
-/

namespace A135431.P12313354221167781679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135431.P12313354221167781679

namespace A135431

/-- `∑[A239909(n+2)-Δ[A239909(n+2)]]` -/
def P12313354221167781679.Spec : Prop :=
  ∀ n, P12313354221167781679.a n = A135431 n

end A135431

/-! ## A135431.P6710387376082264085

`A164408(n+4)-A164415(n+4)`
-/

namespace A135431.P6710387376082264085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164408 (n + 4) - A164415 (n + 4)

end

end A135431.P6710387376082264085

namespace A135431

/-- `A164408(n+4)-A164415(n+4)` -/
def P6710387376082264085.Spec : Prop :=
  ∀ n, P6710387376082264085.a n = A135431 n

end A135431

/-!
# A135432: a(n) = a(n-1) + a(n-2) + a(n-3) + a(n-4) - a(n-5) with a(0)=0, a(1)=1, a(2)=2, a(3)=3 and a(4)=4.

The programs for A135432, the canonical program `A135432.P1425195734990425825` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135432 has offset 0).

The definition of A135432 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)` (program `A135432.P1425195734990425825`, by `A135432.P1425195734990425825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135432.P1425195734990425825

`a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135432

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)` -/
def P1425195734990425825.Spec : Prop :=
  ∀ n, P1425195734990425825.a n = A135432 n

theorem P1425195734990425825.correct : P1425195734990425825.Spec := by
  intro n
  simp only [A135432]

end A135432

/-! ## A135432.P15985871576012522753

`A033305(n+1)+A367400(n)-A118870(n)`
-/

namespace A135432.P15985871576012522753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (n + 1) + (A367400 n - A118870 n)

end

end A135432.P15985871576012522753

namespace A135432

/-- `A033305(n+1)+A367400(n)-A118870(n)` -/
def P15985871576012522753.Spec : Prop :=
  ∀ n, P15985871576012522753.a n = A135432 n

end A135432

/-! ## A135432.P7706912188802466842

`A003056(A000011(2*n+1)-A155495(n))`
-/

namespace A135432.P7706912188802466842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000011 (2 * n + 1) - A155495 n).toNat

end

end A135432.P7706912188802466842

namespace A135432

/-- `A003056(A000011(2*n+1)-A155495(n))` -/
def P7706912188802466842.Spec : Prop :=
  ∀ n, P7706912188802466842.a n = A135432 n

end A135432

/-! ## A135432.P14029848435063988933

`A172152(A284437(n))`
-/

namespace A135432.P14029848435063988933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172152 (A284437 n).toNat

end

end A135432.P14029848435063988933

namespace A135432

/-- `A172152(A284437(n))` -/
def P14029848435063988933.Spec : Prop :=
  ∀ n, P14029848435063988933.a n = A135432 n

end A135432

/-!
# A135434: a(n) is the smallest odd number that makes a(n)*2^N(n)-1 prime, where N(n) is the n-th Mersenne number that makes 2^N(n)-1 prime.

The programs for A135434, there is no canonical definition to state claims against.
-/

/-! ## A135434.P3204969069257280637

`A247202(A000043(n+1))`
-/

namespace A135434.P3204969069257280637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (A000043 (n + 1)).toNat

end

end A135434.P3204969069257280637

/-! ## A135434.P16869781620285960273

`A247202(A190213(n+2))`
-/

namespace A135434.P16869781620285960273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (A190213 (n + 2)).toNat

end

end A135434.P16869781620285960273

/-! ## A135434.P6249438349108995492

`A247202(p?[A072226(n+1)])`
-/

namespace A135434.P6249438349108995492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135434.P6249438349108995492

/-! ## A135434.P17485523060367934347

`A247202(p?[A161508(n+1)])`
-/

namespace A135434.P17485523060367934347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135434.P17485523060367934347

/-! ## A135434.P10590941040771177143

`A247202(p?[A270427(n+1)])`
-/

namespace A135434.P10590941040771177143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135434.P10590941040771177143

/-!
# A135435: a(n) = a(n-4) + a(n-7) with a(0), ..., a(6) = [7,0,0,0,4,0,0].

The programs for A135435, the canonical program `A135435.P13074032533036431501` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135435 has offset 0).

The definition of A135435 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-4)+a(n-7)` (program `A135435.P13074032533036431501`, by `A135435.P13074032533036431501.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135435.P13074032533036431501

`a(n-4)+a(n-7)` with `a(0)=7, a(1)=0, a(2)=0, a(3)=0, a(4)=4, a(5)=0, a(6)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135435

/-- `a(n-4)+a(n-7)` -/
def P13074032533036431501.Spec : Prop :=
  ∀ n, (P13074032533036431501.a n : ℤ) = A135435 n

theorem P13074032533036431501.correct : P13074032533036431501.Spec := by
  intro n
  simp only [A135435]

end A135435

/-!
# A135436: a(n) is the least prime for which the n-th term of the sequence S(a(n)) belongs to A007500, where each term of S(p) is the least prime >= the reversal of the previous term.

The programs for A135436, there is no canonical definition to state claims against.
-/

/-! ## A135436.P11099009357431899117

`A181686(A058595(n+1))`
-/

namespace A135436.P11099009357431899117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181686 (A058595 (n + 1)).toNat

end

end A135436.P11099009357431899117

/-!
# A135437: Primes with a twin Carmichael number: primes p such that p-2 or p+2 are Carmichael numbers.

The programs for A135437, there is no canonical definition to state claims against.
-/

/-! ## A135437.P6277664369672733014

`or(A000038(A151933(3*(n+1))), A194231(n+1))`
-/

namespace A135437.P6277664369672733014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (A151933 (3 * (n + 1))).toNat) (A194231 (n + 1))

end

end A135437.P6277664369672733014

/-! ## A135437.P2918042539625244954

`or(A168361(A273037(3*n+4)), A194231(n+1))`
-/

namespace A135437.P2918042539625244954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A168361 (A273037 (3 * n + 4)).toNat) (A194231 (n + 1))

end

end A135437.P2918042539625244954

/-! ## A135437.P17535752992623670883

`or(A168361(A273026(3*(n+1))), A194231(n+1))`
-/

namespace A135437.P17535752992623670883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A168361 (A273026 (3 * (n + 1))).toNat) (A194231 (n + 1))

end

end A135437.P17535752992623670883

/-! ## A135437.P10342313000649171562

`p?[or(2, A194231(n+1))]`
-/

namespace A135437.P10342313000649171562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A194231 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135437.P10342313000649171562

/-! ## A135437.P2671415528215325182

`or(A181819(A217496(n+1)), A194231(n+1))`
-/

namespace A135437.P2671415528215325182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181819 (A217496 (n + 1)).toNat) (A194231 (n + 1))

end

end A135437.P2671415528215325182

/-!
# A135438: Denominators (numerators are all 1) of the series: 1/1^2, (1/1^2)*(1/(1^2+2^2)), (1/1^2)*(1/(1^2+2^2))*(1/(1^2+2^2+3^2)), ...

The programs for A135438, the canonical program `A135438.P2719935738349355018` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135438 has offset 0).

The definition of A135438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135438.P2719935738349355018

`(n+1)!*(2*n+1)!/12^n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135438

/-- `(n+1)!*(2*n+1)!/12^n` -/
def P2719935738349355018.Spec : Prop :=
  ∀ n, P2719935738349355018.a n = (A135438 n : ℚ)

end A135438

/-! ## A135438.P14385926219280002925

`∏[round(1/acot(∑[n²]))]`
-/

namespace A135438.P14385926219280002925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135438.P14385926219280002925

namespace A135438

/-- `∏[round(1/acot(∑[n²]))]` -/
def P14385926219280002925.Spec : Prop :=
  ∀ n, P14385926219280002925.a n = A135438 n

end A135438

/-! ## A135438.P4196427851340136809

`∏[∑[n²]+floor(acot(n))]`
-/

namespace A135438.P4196427851340136809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135438.P4196427851340136809

namespace A135438

/-- `∏[∑[n²]+floor(acot(n))]` -/
def P4196427851340136809.Spec : Prop :=
  ∀ n, P4196427851340136809.a n = A135438 n

end A135438

/-! ## A135438.P10494445111646384530

`a(n-1)*∑[n²]` with `a(0)=1`
-/

namespace A135438.P10494445111646384530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135438.P10494445111646384530

namespace A135438

/-- `a(n-1)*∑[n²]` -/
def P10494445111646384530.Spec : Prop :=
  ∀ n, (P10494445111646384530.a n : ℤ) = A135438 n

end A135438

/-! ## A135438.P13942156162350066461

`∏[round(sqrt(∑[n²]²+1))]`
-/

namespace A135438.P13942156162350066461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 + 1 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135438.P13942156162350066461

namespace A135438

/-- `∏[round(sqrt(∑[n²]²+1))]` -/
def P13942156162350066461.Spec : Prop :=
  ∀ n, P13942156162350066461.a n = A135438 n

end A135438

/-!
# A135439: Positions of A136048(n) in A136047.

The programs for A135439, there is no canonical definition to state claims against.
-/

/-! ## A135439.P17373795004258081716

`eq[2, ∑{e}[∑[n*A093178(n)], #]]`
-/

namespace A135439.P17373795004258081716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A093178 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135439.P17373795004258081716

/-! ## A135439.P147831824129532154

`eq[2, ∑{e}[∑[n^A040001(n+1)], #]]`
-/

namespace A135439.P147831824129532154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A040001 (n + 1) : ℤ)

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f3 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f3 n)).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135439.P147831824129532154

/-! ## A135439.P5558472670479457813

`eq[2, A001222(∑[(n+1)^gcd(2, n)])]+1`
-/

namespace A135439.P5558472670479457813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A135439.P5558472670479457813

/-! ## A135439.P12523313230989740099

`eq[2, A001222(∑[(n+1)^(2-n%2)])]+1`
-/

namespace A135439.P12523313230989740099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (2 - ((n % 2 : ℕ) : ℤ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f3 j)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A135439.P12523313230989740099

/-! ## A135439.P2347512535300823806

`eq[2, A001222(A136047(n+1))]+1`
-/

namespace A135439.P2347512535300823806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A136047 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A135439.P2347512535300823806

/-!
# A135440: a(n) = a(n-1) + 2a(n-2).

The programs for A135440, the canonical program `A135440.P5703744809184923653` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135440 has offset 0).

The definition of A135440 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)` (program `A135440.P5703744809184923653`, by `A135440.P5703744809184923653.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135440.P6228010441009717716

`2^n-2*(-1)^n`
-/

namespace A135440.P6228010441009717716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 2 * (-1) ^ n

end

end A135440.P6228010441009717716

namespace A135440

/-- `2^n-2*(-1)^n` -/
def P6228010441009717716.Spec : Prop :=
  ∀ n, P6228010441009717716.a n = A135440 n

theorem P6228010441009717716.correct : P6228010441009717716.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A135440, Nat.add_sub_cancel, A135440.P6228010441009717716.a, A135440.P5703744809184923653.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A135440, Nat.add_sub_cancel, A135440.P6228010441009717716.a, A135440.P5703744809184923653.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135440

/-! ## A135440.P5703744809184923653

`a(n-1)+2*a(n-2)` with `a(0)=-1, a(1)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135440

/-- `a(n-1)+2*a(n-2)` -/
def P5703744809184923653.Spec : Prop :=
  ∀ n, P5703744809184923653.a n = A135440 n

theorem P5703744809184923653.correct : P5703744809184923653.Spec := by
  intro n
  simp only [A135440]

end A135440

/-! ## A135440.P9958645610737331043

`ogf((1-5x)/(-1+x+2x^2))`
-/

namespace A135440.P9958645610737331043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 5] [1, -1, -2] n

end

end A135440.P9958645610737331043

namespace A135440

/-- `ogf((1-5x)/(-1+x+2x^2))` -/
def P9958645610737331043.Spec : Prop :=
  ∀ n, P9958645610737331043.a n = A135440 n

end A135440

/-! ## A135440.P9021114426710745282

`floor(a(n-2)+a(n-1)+a(n-2))` with `a(0)=-1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A135440.P9021114426710745282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 4] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A135440.P9021114426710745282

namespace A135440

/-- `floor(a(n-2)+a(n-1)+a(n-2))` -/
def P9021114426710745282.Spec : Prop :=
  ∀ n, P9021114426710745282.a n = A135440 n

end A135440

/-! ## A135440.P4885968164185975279

`(A122803(n)-2)*A033999(n)`
-/

namespace A135440.P4885968164185975279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122803 n - 2) * A033999 n

end

end A135440.P4885968164185975279

namespace A135440

/-- `(A122803(n)-2)*A033999(n)` -/
def P4885968164185975279.Spec : Prop :=
  ∀ n, P4885968164185975279.a n = A135440 n

end A135440

/-! ## A135440.P14351076963576819467

`Δ[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=2, a(1)=1`
-/

namespace A135440.P14351076963576819467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A135440.P14351076963576819467

namespace A135440

/-- `Δ[a(n-2)+a(n-1)+a(n-2)]` -/
def P14351076963576819467.Spec : Prop :=
  ∀ n, P14351076963576819467.a n = A135440 n

end A135440

/-! ## A135440.P10837934485672371591

`Δ[A014551(n)]`
-/

namespace A135440.P10837934485672371591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135440.P10837934485672371591

namespace A135440

/-- `Δ[A014551(n)]` -/
def P10837934485672371591.Spec : Prop :=
  ∀ n, P10837934485672371591.a n = A135440 n

end A135440

/-! ## A135440.P2985724506875731196

`Δ[A099430(n)]`
-/

namespace A135440.P2985724506875731196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135440.P2985724506875731196

namespace A135440

/-- `Δ[A099430(n)]` -/
def P2985724506875731196.Spec : Prop :=
  ∀ n, P2985724506875731196.a n = A135440 n

end A135440

/-! ## A135440.P11763863631330823035

`Δ[A166956(n)]`
-/

namespace A135440.P11763863631330823035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135440.P11763863631330823035

namespace A135440

/-- `Δ[A166956(n)]` -/
def P11763863631330823035.Spec : Prop :=
  ∀ n, P11763863631330823035.a n = A135440 n

end A135440

/-! ## A135440.P4599017255803084891

`Δ[A051049(n)-and(1, n)]`
-/

namespace A135440.P4599017255803084891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 n - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135440.P4599017255803084891

namespace A135440

/-- `Δ[A051049(n)-and(1, n)]` -/
def P4599017255803084891.Spec : Prop :=
  ∀ n, P4599017255803084891.a n = A135440 n

end A135440

/-! ## A135440.P4808420725677913005

`Δ[A000295(n)+xor(1, n)]`
-/

namespace A135440.P4808420725677913005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + (Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135440.P4808420725677913005

namespace A135440

/-- `Δ[A000295(n)+xor(1, n)]` -/
def P4808420725677913005.Spec : Prop :=
  ∀ n, P4808420725677913005.a n = A135440 n

end A135440

/-! ## A135440.P16635025831370032674

`Δ[abs(Δ[A084247(n)]+1)]`
-/

namespace A135440.P16635025831370032674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135440.P16635025831370032674

namespace A135440

/-- `Δ[abs(Δ[A084247(n)]+1)]` -/
def P16635025831370032674.Spec : Prop :=
  ∀ n, P16635025831370032674.a n = A135440 n

end A135440

/-! ## A135440.P15153344092817033312

`Δ[abs(1-Δ[A140966(n)])]`
-/

namespace A135440.P15153344092817033312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f2 (n + 1) - f2 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135440.P15153344092817033312

namespace A135440

/-- `Δ[abs(1-Δ[A140966(n)])]` -/
def P15153344092817033312.Spec : Prop :=
  ∀ n, P15153344092817033312.a n = A135440 n

end A135440

/-! ## A135440.P1198485970484268058

`Δ[A000079(n)+(-1)^n]`
-/

namespace A135440.P1198485970484268058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135440.P1198485970484268058

namespace A135440

/-- `Δ[A000079(n)+(-1)^n]` -/
def P1198485970484268058.Spec : Prop :=
  ∀ n, P1198485970484268058.a n = A135440 n

end A135440

/-! ## A135440.P15757078328327141079

`Δ[A000225(n)+(-1)^n]`
-/

namespace A135440.P15757078328327141079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135440.P15757078328327141079

namespace A135440

/-- `Δ[A000225(n)+(-1)^n]` -/
def P15757078328327141079.Spec : Prop :=
  ∀ n, P15757078328327141079.a n = A135440 n

end A135440

/-! ## A135440.P3678333605215584821

`Δ[A000918(n)+(-1)^n]`
-/

namespace A135440.P3678333605215584821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135440.P3678333605215584821

namespace A135440

/-- `Δ[A000918(n)+(-1)^n]` -/
def P3678333605215584821.Spec : Prop :=
  ∀ n, P3678333605215584821.a n = A135440 n

end A135440

/-! ## A135440.P18312554184284375072

`Δ[A033999(n)+A000225(n)]`
-/

namespace A135440.P18312554184284375072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135440.P18312554184284375072

namespace A135440

/-- `Δ[A033999(n)+A000225(n)]` -/
def P18312554184284375072.Spec : Prop :=
  ∀ n, P18312554184284375072.a n = A135440 n

end A135440

/-! ## A135440.P1460043697904685823

`Δ[A000051(n)-A010673(n)]`
-/

namespace A135440.P1460043697904685823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A010673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135440.P1460043697904685823

namespace A135440

/-- `Δ[A000051(n)-A010673(n)]` -/
def P1460043697904685823.Spec : Prop :=
  ∀ n, P1460043697904685823.a n = A135440 n

end A135440

/-! ## A135440.P11769937541848443987

`Δ[Δ[A049332(n)]]`
-/

namespace A135440.P11769937541848443987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135440.P11769937541848443987

namespace A135440

/-- `Δ[Δ[A049332(n)]]` -/
def P11769937541848443987.Spec : Prop :=
  ∀ n, P11769937541848443987.a n = A135440 n

end A135440

/-! ## A135440.P490761351931703254

`Δ[Δ[A140253(n)]]`
-/

namespace A135440.P490761351931703254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135440.P490761351931703254

namespace A135440

/-- `Δ[Δ[A140253(n)]]` -/
def P490761351931703254.Spec : Prop :=
  ∀ n, P490761351931703254.a n = A135440 n

end A135440

/-!
# A135443: Number of maximal directed trails in the labeled n-ladder graph P_2 X P_n.

The programs for A135443, there is no canonical definition to state claims against.
-/

/-! ## A135443.P15267447831855162300

`A083363(comp[2*n+3])+floor(n-atan(n))+1`
-/

namespace A135443.P15267447831855162300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083363 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 1)

end

end A135443.P15267447831855162300

/-! ## A135443.P7228775605800310852

`A007590(record[A266249(n+2)])`
-/

namespace A135443.P7228775605800310852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266249 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135443.P7228775605800310852

/-! ## A135443.P1968897582805778743

`A000007(n)+A026488(n+1)²-n²`
-/

namespace A135443.P1968897582805778743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A026488 (n + 1) ^ 2 - (n ^ 2 : ℤ)

end

end A135443.P1968897582805778743

/-! ## A135443.P1985949773695758349

`A300576(A004277(n)+A300576(n+1)²)`
-/

namespace A135443.P1985949773695758349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (A004277 n + A300576 (n + 1) ^ 2).toNat

end

end A135443.P1985949773695758349

/-! ## A135443.P18242717442549006976

`A004272(2*(n+1))*A185048(A004272(2*(n+1)))`
-/

namespace A135443.P18242717442549006976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (2 * (n + 1)) * A185048 (A004272 (2 * (n + 1))).toNat

end

end A135443.P18242717442549006976

/-!
# A135445: Number of connected graphs on n vertices such that any two distinct vertices that are connected by at least 2 distinct paths of length 2 are also connected by an edge.

The programs for A135445, there is no canonical definition to state claims against.
-/

/-! ## A135445.P13746492653071886946

`A048686(A363432(n+2))`
-/

namespace A135445.P13746492653071886946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048686 (A363432 (n + 2)).toNat

end

end A135445.P13746492653071886946

/-!
# A135446: a(n) = 3*a(n-1) - 3*a(n-2) + 2*a(n-3), with a(0) = a(1) = -1 and a(2) = 3.

The programs for A135446, the canonical program `A135446.P16126988604253035854` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135446 has offset 0).

The definition of A135446 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+2*a(n-3)` (program `A135446.P16126988604253035854`, by `A135446.P16126988604253035854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135446.P5248021534315539140

`2^n-2*cos(π*n/3)-4*sqrt(3)/3*sin(π*n/3)`
-/

namespace A135446.P5248021534315539140
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) - 2 * Real.cos (Real.pi * (n : ℝ) / 3) - 4 * Real.sqrt (3 : ℝ) / 3 * Real.sin (Real.pi * (n : ℝ) / 3)

end

end A135446.P5248021534315539140

namespace A135446

/-- `2^n-2*cos(π*n/3)-4*sqrt(3)/3*sin(π*n/3)` -/
def P5248021534315539140.Spec : Prop :=
  ∀ n, P5248021534315539140.a n = (A135446 n : ℝ)

end A135446

/-! ## A135446.P16126988604253035854

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=-1, a(1)=-1, a(2)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135446

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P16126988604253035854.Spec : Prop :=
  ∀ n, P16126988604253035854.a n = A135446 n

theorem P16126988604253035854.correct : P16126988604253035854.Spec := by
  intro n
  simp only [A135446]

end A135446

/-! ## A135446.P13232532112305188226

`ogf((-1+2x+3x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A135446.P13232532112305188226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 2, 3] [1, -3, 3, -2] n

end

end A135446.P13232532112305188226

namespace A135446

/-- `ogf((-1+2x+3x^2)/(1-3x+3x^2-2x^3))` -/
def P13232532112305188226.Spec : Prop :=
  ∀ n, P13232532112305188226.a n = A135446 n

end A135446

/-! ## A135446.P14585901942042253273

`A117373(n+1)+2^n`
-/

namespace A135446.P14585901942042253273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117373 (n + 1) + (2 ^ n : ℤ)

end

end A135446.P14585901942042253273

namespace A135446

/-- `A117373(n+1)+2^n` -/
def P14585901942042253273.Spec : Prop :=
  ∀ n, P14585901942042253273.a n = A135446 n

end A135446

/-! ## A135446.P4040991381945762481

`A281166(n)-A130772(n)`
-/

namespace A135446.P4040991381945762481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281166 n - A130772 n

end

end A135446.P4040991381945762481

namespace A135446

/-- `A281166(n)-A130772(n)` -/
def P4040991381945762481.Spec : Prop :=
  ∀ n, P4040991381945762481.a n = A135446 n

end A135446

/-! ## A135446.P9230320527074521779

`A141775(n)-2*A057079(n)`
-/

namespace A135446.P9230320527074521779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141775 n - 2 * A057079 n

end

end A135446.P9230320527074521779

namespace A135446

/-- `A141775(n)-2*A057079(n)` -/
def P9230320527074521779.Spec : Prop :=
  ∀ n, P9230320527074521779.a n = A135446 n

end A135446

/-! ## A135446.P9777129824210144309

`3*A024495(n)-A010892(n)`
-/

namespace A135446.P9777129824210144309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024495 n - A010892 n

end

end A135446.P9777129824210144309

namespace A135446

/-- `3*A024495(n)-A010892(n)` -/
def P9777129824210144309.Spec : Prop :=
  ∀ n, P9777129824210144309.a n = A135446 n

end A135446

/-! ## A135446.P16980333524760029142

`A117373(n+1)+A000225(n)+1`
-/

namespace A135446.P16980333524760029142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117373 (n + 1) + A000225 n + 1

end

end A135446.P16980333524760029142

namespace A135446

/-- `A117373(n+1)+A000225(n)+1` -/
def P16980333524760029142.Spec : Prop :=
  ∀ n, P16980333524760029142.a n = A135446 n

end A135446

/-! ## A135446.P1151532844156699554

`A024495(n+1)+A024495(n)-A057079(n)`
-/

namespace A135446.P1151532844156699554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (n + 1) + (A024495 n - A057079 n)

end

end A135446.P1151532844156699554

namespace A135446

/-- `A024495(n+1)+A024495(n)-A057079(n)` -/
def P1151532844156699554.Spec : Prop :=
  ∀ n, P1151532844156699554.a n = A135446 n

end A135446

/-! ## A135446.P9363319929846739414

`A000079(n)-(A128834(n+1)+A057079(n))`
-/

namespace A135446.P9363319929846739414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A128834 (n + 1) + A057079 n)

end

end A135446.P9363319929846739414

namespace A135446

/-- `A000079(n)-(A128834(n+1)+A057079(n))` -/
def P9363319929846739414.Spec : Prop :=
  ∀ n, P9363319929846739414.a n = A135446 n

end A135446

/-! ## A135446.P11808782981709353667

`A086953(n+1)+A131708(n)-A057079(n)`
-/

namespace A135446.P11808782981709353667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 (n + 1) + (A131708 n - A057079 n)

end

end A135446.P11808782981709353667

namespace A135446

/-- `A086953(n+1)+A131708(n)-A057079(n)` -/
def P11808782981709353667.Spec : Prop :=
  ∀ n, P11808782981709353667.a n = A135446 n

end A135446

/-! ## A135446.P15190171712956269361

`A113405(n+1)+A275788(n)-A057079(n)`
-/

namespace A135446.P15190171712956269361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 1) + (A275788 n - A057079 n)

end

end A135446.P15190171712956269361

namespace A135446

/-- `A113405(n+1)+A275788(n)-A057079(n)` -/
def P15190171712956269361.Spec : Prop :=
  ∀ n, P15190171712956269361.a n = A135446 n

end A135446

/-! ## A135446.P5252620168774410331

`A001045(n+1)+A117373(n+1)+A001045(n)`
-/

namespace A135446.P5252620168774410331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A117373 (n + 1) + A001045 n)

end

end A135446.P5252620168774410331

namespace A135446

/-- `A001045(n+1)+A117373(n+1)+A001045(n)` -/
def P5252620168774410331.Spec : Prop :=
  ∀ n, P5252620168774410331.a n = A135446 n

end A135446

/-! ## A135446.P4936251862086313051

`A086953(n+1)+A086953(n+1)-A024493(n)`
-/

namespace A135446.P4936251862086313051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 (n + 1) + (A086953 (n + 1) - A024493 n)

end

end A135446.P4936251862086313051

namespace A135446

/-- `A086953(n+1)+A086953(n+1)-A024493(n)` -/
def P4936251862086313051.Spec : Prop :=
  ∀ n, P4936251862086313051.a n = A135446 n

end A135446

/-! ## A135446.P18240865094275346414

`A086953(n+1)+A086953(n)-A057079(n+1)`
-/

namespace A135446.P18240865094275346414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 (n + 1) + (A086953 n - A057079 (n + 1))

end

end A135446.P18240865094275346414

namespace A135446

/-- `A086953(n+1)+A086953(n)-A057079(n+1)` -/
def P18240865094275346414.Spec : Prop :=
  ∀ n, P18240865094275346414.a n = A135446 n

end A135446

/-! ## A135446.P18229703839423226549

`A024495(n+1)+A131370(n+1)-A131370(n)`
-/

namespace A135446.P18229703839423226549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (n + 1) + (A131370 (n + 1) - A131370 n)

end

end A135446.P18229703839423226549

namespace A135446

/-- `A024495(n+1)+A131370(n+1)-A131370(n)` -/
def P18229703839423226549.Spec : Prop :=
  ∀ n, P18229703839423226549.a n = A135446 n

end A135446

/-! ## A135446.P7813019676264194318

`A281166(n)-(A128834(n+1)+A128834(n+1))`
-/

namespace A135446.P7813019676264194318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281166 n - (A128834 (n + 1) + A128834 (n + 1))

end

end A135446.P7813019676264194318

namespace A135446

/-- `A281166(n)-(A128834(n+1)+A128834(n+1))` -/
def P7813019676264194318.Spec : Prop :=
  ∀ n, P7813019676264194318.a n = A135446 n

end A135446

/-! ## A135446.P9035271140199030506

`A274817(n)+A049347(n+1)*A057079(n+1)`
-/

namespace A135446.P9035271140199030506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274817 n + A049347 (n + 1) * A057079 (n + 1)

end

end A135446.P9035271140199030506

namespace A135446

/-- `A274817(n)+A049347(n+1)*A057079(n+1)` -/
def P9035271140199030506.Spec : Prop :=
  ∀ n, P9035271140199030506.a n = A135446 n

end A135446

/-! ## A135446.P7391738744298652742

`A130624(n)-A130707(n)`
-/

namespace A135446.P7391738744298652742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130624 n - A130707 n

end

end A135446.P7391738744298652742

namespace A135446

/-- `A130624(n)-A130707(n)` -/
def P7391738744298652742.Spec : Prop :=
  ∀ n, P7391738744298652742.a n = A135446 n

end A135446

/-! ## A135446.P9894823012894988358

`A131370(n+2)-A024493(n)`
-/

namespace A135446.P9894823012894988358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131370 (n + 2) - A024493 n

end

end A135446.P9894823012894988358

namespace A135446

/-- `A131370(n+2)-A024493(n)` -/
def P9894823012894988358.Spec : Prop :=
  ∀ n, P9894823012894988358.a n = A135446 n

end A135446

/-!
# A135447: Period 10: repeat [1, 2, 4, 8, 5, -1, -2, -4, -8, -5].

The programs for A135447, the canonical program `A135447.P7666175994631057679` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135447 has offset 0).

The definition of A135447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135447.P7666175994631057679

`a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135447

/-- `a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P7666175994631057679.Spec : Prop :=
  ∀ n, P7666175994631057679.a n = A135447 n

theorem P7666175994631057679.correct : P7666175994631057679.Spec := by
  intro n
  simp only [A135447]

end A135447

/-!
# A135448: Period 5: repeat [1, 5, 3, 4, -2].

The programs for A135448, the canonical program `A135448.P13555360226038008842` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135448 has offset 0).

The definition of A135448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135448.P13555360226038008842

`a(n-5)` with `a(0)=1, a(1)=5, a(2)=3, a(3)=4, a(4)=-2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135448

/-- `a(n-5)` -/
def P13555360226038008842.Spec : Prop :=
  ∀ n, P13555360226038008842.a n = A135448 n

theorem P13555360226038008842.correct : P13555360226038008842.Spec := by
  intro n
  simp only [A135448]

end A135448

/-!
# A135449: Period 5: repeat [1, 9, -7, 3, 5].

The programs for A135449, the canonical program `A135449.P4904479779201498690` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135449 has offset 0).

The definition of A135449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135449.P4904479779201498690

`a(n-5)` with `a(0)=1, a(1)=9, a(2)=-7, a(3)=3, a(4)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135449

/-- `a(n-5)` -/
def P4904479779201498690.Spec : Prop :=
  ∀ n, P4904479779201498690.a n = A135449 n

theorem P4904479779201498690.correct : P4904479779201498690.Spec := by
  intro n
  simp only [A135449]

end A135449

/-!
# A135450: a(n) = 3*a(n-1) + 4*a(n-2) - a(n-3) + 3*a(n-4) + 4*a(n-5).

The programs for A135450, the canonical program `A135450.P17818030887862463264` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135450 has offset 0).

The definition of A135450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)-a(n-3)+3*a(n-4)+4*a(n-5)` (program `A135450.P17818030887862463264`, by `A135450.P17818030887862463264.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135450.P17818030887862463264

`3*a(n-1)+4*a(n-2)-a(n-3)+3*a(n-4)+4*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135450

/-- `3*a(n-1)+4*a(n-2)-a(n-3)+3*a(n-4)+4*a(n-5)` -/
def P17818030887862463264.Spec : Prop :=
  ∀ n, P17818030887862463264.a n = A135450 n

theorem P17818030887862463264.correct : P17818030887862463264.Spec := by
  intro n
  simp only [A135450]

end A135450

/-! ## A135450.P15578222486793064443

`ogf(x^3/(1-4x+x^3-4x^4))`
-/

namespace A135450.P15578222486793064443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -4, 0, 1, -4] n

end

end A135450.P15578222486793064443

namespace A135450

/-- `ogf(x^3/(1-4x+x^3-4x^4))` -/
def P15578222486793064443.Spec : Prop :=
  ∀ n, P15578222486793064443.a n = A135450 n

end A135450

/-! ## A135450.P4905435127092605017

`4^(n-3)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A135450.P4905435127092605017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - a (n - 3)

end

end A135450.P4905435127092605017

namespace A135450

/-- `4^(n-3)-a(n-3)` -/
def P4905435127092605017.Spec : Prop :=
  ∀ n, P4905435127092605017.a n = (A135450 n : ℚ)

end A135450

/-! ## A135450.P7825661027863006673

`4*a(n-1)-∑[A092220(n+1)]` with `a(0)=0`
-/

namespace A135450.P7825661027863006673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135450.P7825661027863006673

namespace A135450

/-- `4*a(n-1)-∑[A092220(n+1)]` -/
def P7825661027863006673.Spec : Prop :=
  ∀ n, P7825661027863006673.a n = A135450 n

end A135450

/-! ## A135450.P8402194316754339671

`round(A015521(n)/13)`
-/

namespace A135450.P8402194316754339671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A015521 n : ℚ) / 13)

end

end A135450.P8402194316754339671

namespace A135450

/-- `round(A015521(n)/13)` -/
def P8402194316754339671.Spec : Prop :=
  ∀ n, P8402194316754339671.a n = A135450 n

end A135450

/-! ## A135450.P16771118776691490099

`round(A109499(n)/13)`
-/

namespace A135450.P16771118776691490099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A109499 n : ℚ) / 13)

end

end A135450.P16771118776691490099

namespace A135450

/-- `round(A109499(n)/13)` -/
def P16771118776691490099.Spec : Prop :=
  ∀ n, P16771118776691490099.a n = A135450 n

end A135450

/-! ## A135450.P3079236905503245287

`round(4^n/65)`
-/

namespace A135450.P3079236905503245287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 65)

end

end A135450.P3079236905503245287

namespace A135450

/-- `round(4^n/65)` -/
def P3079236905503245287.Spec : Prop :=
  ∀ n, P3079236905503245287.a n = A135450 n

end A135450

/-! ## A135450.P8477697976273537393

`4*a(n-1)-A092220(n²+5)` with `a(0)=0`
-/

namespace A135450.P8477697976273537393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) - A092220 (n ^ 2 + 5)

end

end A135450.P8477697976273537393

namespace A135450

/-- `4*a(n-1)-A092220(n²+5)` -/
def P8477697976273537393.Spec : Prop :=
  ∀ n, P8477697976273537393.a n = A135450 n

end A135450

/-!
# A135451: Triangular function from the characteristic polynomials of the inverse Hilbert matrices.

The programs for A135451, there is no canonical definition to state claims against.
-/

/-! ## A135451.P8286783739406884240

`A076823(A061579(n)+A000038(n))`
-/

namespace A135451.P8286783739406884240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076823 (A061579 n + A000038 n).toNat

end

end A135451.P8286783739406884240

/-! ## A135451.P15531103460704523474

`A076823(or(A000038(n), A061579(n)))`
-/

namespace A135451.P15531103460704523474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076823 (Int.lor (A000038 n) (A061579 n)).toNat

end

end A135451.P15531103460704523474

/-! ## A135451.P16662178017231280886

`A076823(xor(A000038(n), A061579(n)))`
-/

namespace A135451.P16662178017231280886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076823 (Int.xor (A000038 n) (A061579 n)).toNat

end

end A135451.P16662178017231280886

/-! ## A135451.P15528135378949541187

`A076823(A038722(n+2))`
-/

namespace A135451.P15528135378949541187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076823 (A038722 (n + 2)).toNat

end

end A135451.P15528135378949541187

/-! ## A135451.P3971016432389201685

`A076823(A061579(n+1)+1)`
-/

namespace A135451.P3971016432389201685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076823 (A061579 (n + 1) + 1).toNat

end

end A135451.P3971016432389201685

/-!
# A135452: Number of different multisets of differences between ends of n non-intersecting chords joining 2n labeled points around a circle.

The programs for A135452, there is no canonical definition to state claims against.
-/

/-! ## A135452.P6325794736047113872

`A077027(A114799(n))`
-/

namespace A135452.P6325794736047113872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077027 (A114799 n).toNat

end

end A135452.P6325794736047113872

/-! ## A135452.P137773850677088618

`A367935(A030436(n))`
-/

namespace A135452.P137773850677088618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367935 (A030436 n).toNat

end

end A135452.P137773850677088618

/-! ## A135452.P13162372574774360336

`A328335(A191398(n))`
-/

namespace A135452.P13162372574774360336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (A191398 n).toNat

end

end A135452.P13162372574774360336

/-! ## A135452.P11148672197794592947

`A306202(A066313(n+2))`
-/

namespace A135452.P11148672197794592947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (A066313 (n + 2)).toNat

end

end A135452.P11148672197794592947

/-! ## A135452.P13071774814732773608

`A077027(n^A110656(n))`
-/

namespace A135452.P13071774814732773608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077027 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A110656 n : ℤ))).toNat

end

end A135452.P13071774814732773608

/-!
# A135453: a(n) = 12*n^2.

The programs for A135453, the canonical program `A135453.P11012822800042862878` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135453 has offset 0).

The definition of A135453 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n²` (program `A135453.P11012822800042862878`, by `A135453.P11012822800042862878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135453.P11012822800042862878

`12*n²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135453

/-- `12*n²` -/
def P11012822800042862878.Spec : Prop :=
  ∀ n, (P11012822800042862878.a n : ℤ) = A135453 n

theorem P11012822800042862878.correct : P11012822800042862878.Spec := by
  intro n
  simp only [A135453]

end A135453

/-!
# A135454: Number of sums payable using exactly n banknotes of denominations 1, 5, 10, 20, 50, 100.

The programs for A135454, there is no canonical definition to state claims against.
-/

/-! ## A135454.P6063265091662587560

`A316428(A299274(n))+n²`
-/

namespace A135454.P6063265091662587560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316428 (A299274 n).toNat + (n ^ 2 : ℤ)

end

end A135454.P6063265091662587560

/-! ## A135454.P1194062288721823758

`A161438(n)+A023416(A078009(n))`
-/

namespace A135454.P1194062288721823758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161438 n + A023416 (A078009 n).toNat

end

end A135454.P1194062288721823758

/-!
# A135455: Numbers n such that n*phi is within 0.1 of an integer, where phi is the golden ratio.

The programs for A135455, there is no canonical definition to state claims against.
-/

/-! ## A135455.P15330337029833650593

`lt[A245920(n), A245920(3*n)]+2`
-/

namespace A135455.P15330337029833650593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A135455.P15330337029833650593

/-! ## A135455.P16483961045158310282

`A009056(lt[A245920(n), A245920(3*n)])`
-/

namespace A135455.P16483961045158310282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135455.P16483961045158310282

/-! ## A135455.P3761497055352964155

`lt[A360139(A360106(n)), A360126(n+1)]`
-/

namespace A135455.P3761497055352964155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360139 (A360106 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135455.P3761497055352964155

/-! ## A135455.P3867590488979646712

`lt[A360139(A360106(n)), A360104(n+3)]`
-/

namespace A135455.P3867590488979646712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360139 (A360106 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360104 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135455.P3867590488979646712

/-! ## A135455.P16588925616531160804

`lt[A286327(n), A286275(A286305(n+4))]`
-/

namespace A135455.P16588925616531160804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286327 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286275 (A286305 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135455.P16588925616531160804

/-!
# A135456: Number of surjections from an n-element set onto a seven-element set.

The programs for A135456, there is no canonical definition to state claims against.
-/

/-! ## A135456.P3316949069150622932

`A019538(A167487(n+5))`
-/

namespace A135456.P3316949069150622932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (A167487 (n + 5)).toNat

end

end A135456.P3316949069150622932

/-! ## A135456.P6907894753196246187

`A019538(A056119(n)+28)`
-/

namespace A135456.P6907894753196246187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (A056119 n + 28).toNat

end

end A135456.P6907894753196246187

/-! ## A135456.P16435578425331806234

`A131689(eq[7, A002262(n)])`
-/

namespace A135456.P16435578425331806234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135456.P16435578425331806234

/-! ## A135456.P7962578128046224579

`A019538(A167499(n+5)+2)`
-/

namespace A135456.P7962578128046224579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (A167499 (n + 5) + 2).toNat

end

end A135456.P7962578128046224579

/-! ## A135456.P8079661605336213854

`A019538(A167614(n+5)+4)`
-/

namespace A135456.P8079661605336213854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (A167614 (n + 5) + 4).toNat

end

end A135456.P8079661605336213854

/-! ## A135456.P570988347625560364

`A131689(A000124(n+7)+6)`
-/

namespace A135456.P570988347625560364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A000124 (n + 7) + 6).toNat

end

end A135456.P570988347625560364

/-! ## A135456.P12071533407198928330

`A131689(eq[8, A002260(n+1)])`
-/

namespace A135456.P12071533407198928330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135456.P12071533407198928330

/-! ## A135456.P17119263095774135239

`A019538(Δ[A023551(n+1)]+13)`
-/

namespace A135456.P17119263095774135239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (f1 (n + 1) - f1 n + 13).toNat

end

end A135456.P17119263095774135239

/-!
# A135457: a(n) = (2n-1)!! * Sum_{k=0..n-2}(-1)^k/(2k+1).

The programs for A135457, the canonical program `A135457.P2333704604305967900` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135457 has offset 1).

The definition of A135457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135457.P2333704604305967900

`A167576(n+1)-A024199(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135457

/-- `A167576(n+1)-A024199(n+1)` -/
def P2333704604305967900.Spec : Prop :=
  ∀ n, P2333704604305967900.a n = A135457 (n + 1)

theorem P2333704604305967900.correct : P2333704604305967900.Spec := by
  intro n
  simp only [A135457, Nat.add_sub_cancel]

end A135457

/-! ## A135457.P14872249973255374722

`Δ[n²]*A024199(n)`
-/

namespace A135457.P14872249973255374722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A024199 n

end

end A135457.P14872249973255374722

namespace A135457

/-- `Δ[n²]*A024199(n)` -/
def P14872249973255374722.Spec : Prop :=
  ∀ n, P14872249973255374722.a n = A135457 (n + 1)

end A135457

/-! ## A135457.P10836982794389627181

`A024199(n)*A057174(2*n)`
-/

namespace A135457.P10836982794389627181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024199 n * A057174 (2 * n)

end

end A135457.P10836982794389627181

namespace A135457

/-- `A024199(n)*A057174(2*n)` -/
def P10836982794389627181.Spec : Prop :=
  ∀ n, P10836982794389627181.a n = A135457 (n + 1)

end A135457

/-! ## A135457.P9260055206575147178

`A024199(n)*A141310(2*n)`
-/

namespace A135457.P9260055206575147178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024199 n * A141310 (2 * n)

end

end A135457.P9260055206575147178

namespace A135457

/-- `A024199(n)*A141310(2*n)` -/
def P9260055206575147178.Spec : Prop :=
  ∀ n, P9260055206575147178.a n = A135457 (n + 1)

end A135457

/-! ## A135457.P15435232597221411263

`A024199(n)*A052938(4*n)`
-/

namespace A135457.P15435232597221411263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024199 n * A052938 (4 * n)

end

end A135457.P15435232597221411263

namespace A135457

/-- `A024199(n)*A052938(4*n)` -/
def P15435232597221411263.Spec : Prop :=
  ∀ n, P15435232597221411263.a n = A135457 (n + 1)

end A135457

/-! ## A135457.P16627221616978818129

`A024199(n)*A215456(2*n+1)`
-/

namespace A135457.P16627221616978818129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024199 n * A215456 (2 * n + 1)

end

end A135457.P16627221616978818129

namespace A135457

/-- `A024199(n)*A215456(2*n+1)` -/
def P16627221616978818129.Spec : Prop :=
  ∀ n, P16627221616978818129.a n = A135457 (n + 1)

end A135457

/-! ## A135457.P3684809930453059308

`A167576(n+1)-record[A167584(n+1)]`
-/

namespace A135457.P3684809930453059308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167576 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135457.P3684809930453059308

namespace A135457

/-- `A167576(n+1)-record[A167584(n+1)]` -/
def P3684809930453059308.Spec : Prop :=
  ∀ n, P3684809930453059308.a n = A135457 (n + 1)

end A135457

/-!
# A135458: Number of transitive reflexive binary relations R on n labeled elements where max_{x}(|{y : xRy}|)=3.

The programs for A135458, there is no canonical definition to state claims against.
-/

/-! ## A135458.P15417300006887028890

`A135429(n)-A135312(n)`
-/

namespace A135458.P15417300006887028890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135429 n - A135312 n

end

end A135458.P15417300006887028890

/-! ## A135458.P6850291913366808123

`A135429(n)-A135302(∑[n+2]+3)`
-/

namespace A135458.P6850291913366808123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135429 n - A135302 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A135458.P6850291913366808123

/-! ## A135458.P12448249726230203442

`A135429(n)-(A135313(∑[char[1]+n]+1)+1)`
-/

namespace A135458.P12448249726230203442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135429 n - (A135313 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1)

end

end A135458.P12448249726230203442

/-! ## A135458.P17652255922459132305

`A135429(n)-(A135313(A133263(n))+1-val((4*n)²+1, 2))`
-/

namespace A135458.P17652255922459132305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135429 n - (A135313 (A133263 n).toNat + 1 - (SequenceMachineLib.valuation ((4 * n) ^ 2 + 1) 2 : ℤ))

end

end A135458.P17652255922459132305

/-! ## A135458.P679303471938183345

`A135429(n)-(A135302(A340266(n+1))+A000038(n+1))`
-/

namespace A135458.P679303471938183345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135429 n - (A135302 (A340266 (n + 1)).toNat + A000038 (n + 1))

end

end A135458.P679303471938183345

/-! ## A135458.P5578857686255256313

`A135429(n)-A135302(A340266(n+1))%A198011(n+1)`
-/

namespace A135458.P5578857686255256313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135429 n - Int.tmod (A135302 (A340266 (n + 1)).toNat) (A198011 (n + 1))

end

end A135458.P5578857686255256313

/-!
# A135459: Numbers n such that the difference between sqrt(2)*n and the nearest integer is smaller than 1/10.

The programs for A135459, there is no canonical definition to state claims against.
-/

/-! ## A135459.P12404673542954411300

`lt[A128549(2*n+5), A127418(n+1)]`
-/

namespace A135459.P12404673542954411300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128549 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135459.P12404673542954411300

/-! ## A135459.P460512748935444044

`lt[A015945(n+1), A015950(A057049(n+1))]`
-/

namespace A135459.P460512748935444044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015950 (A057049 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135459.P460512748935444044

/-! ## A135459.P9000456943833139522

`lt[A057050(n+1), log(A057047(n))]`
-/

namespace A135459.P9000456943833139522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057050 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A057047 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A135459.P9000456943833139522

/-!
# A135461: a(n) = 1 if n is the norm of an Eisenstein prime (see A055664) otherwise 0.

The programs for A135461, there is no canonical definition to state claims against.
-/

/-! ## A135461.P2225660653442062723

`floor(sqrt(A055668(n)))`
-/

namespace A135461.P2225660653442062723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A055668 n)

end

end A135461.P2225660653442062723

/-! ## A135461.P16214628164975473307

`round(A055667(n)/9)`
-/

namespace A135461.P16214628164975473307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055667 n : ℚ) / 9)

end

end A135461.P16214628164975473307

/-! ## A135461.P10827170850188342877

`char[A055664(n+1)]`
-/

namespace A135461.P10827170850188342877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A135461.P10827170850188342877

/-! ## A135461.P9261709108053220847

`A001842(A055667(n))`
-/

namespace A135461.P9261709108053220847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A055667 n).toNat

end

end A135461.P9261709108053220847

/-! ## A135461.P251285851740303227

`A001222(A055667(n)+1)`
-/

namespace A135461.P251285851740303227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055667 n + 1).toNat

end

end A135461.P251285851740303227

/-! ## A135461.P8594280699650669708

`A003415(A055667(n)+1)`
-/

namespace A135461.P8594280699650669708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A055667 n + 1).toNat

end

end A135461.P8594280699650669708

/-! ## A135461.P3509447272075137011

`A071625(A055667(n)+1)`
-/

namespace A135461.P3509447272075137011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A055667 n + 1).toNat

end

end A135461.P3509447272075137011

/-! ## A135461.P1869063130562822902

`A307706(A055667(n)+1)`
-/

namespace A135461.P1869063130562822902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307706 (A055667 n + 1).toNat

end

end A135461.P1869063130562822902

/-! ## A135461.P10359799239278323177

`A353776(A055667(n)+1)`
-/

namespace A135461.P10359799239278323177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353776 (A055667 n + 1).toNat

end

end A135461.P10359799239278323177

/-! ## A135461.P4846555337648795736

`A345439(A055667(n)/2)`
-/

namespace A135461.P4846555337648795736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345439 (SequenceMachineLib.roundAway ((A055667 n : ℚ) / 2)).toNat

end

end A135461.P4846555337648795736

/-! ## A135461.P2476741204619544522

`A000045(A055667(n)/6)`
-/

namespace A135461.P2476741204619544522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A055667 n : ℚ) / 6)).toNat

end

end A135461.P2476741204619544522

/-! ## A135461.P11860964802925217804

`1-A000007(A055667(n)²)`
-/

namespace A135461.P11860964802925217804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A055667 n ^ 2).toNat

end

end A135461.P11860964802925217804

/-! ## A135461.P6730203395949513317

`A000122(A055667(n)²)-1`
-/

namespace A135461.P6730203395949513317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A055667 n ^ 2).toNat - 1

end

end A135461.P6730203395949513317

/-! ## A135461.P12950513089354917770

`1-A023918(A055667(n)²)`
-/

namespace A135461.P12950513089354917770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A023918 (A055667 n ^ 2).toNat

end

end A135461.P12950513089354917770

/-! ## A135461.P2069583938928155428

`A071625((1-A055667(n))²)`
-/

namespace A135461.P2069583938928155428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 ((1 - A055667 n) ^ 2).toNat

end

end A135461.P2069583938928155428

/-! ## A135461.P16377410417486777488

`A307706((1-A055667(n))²)`
-/

namespace A135461.P16377410417486777488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307706 ((1 - A055667 n) ^ 2).toNat

end

end A135461.P16377410417486777488

/-! ## A135461.P4681886131379921901

`A353776((1-A055667(n))²)`
-/

namespace A135461.P4681886131379921901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353776 ((1 - A055667 n) ^ 2).toNat

end

end A135461.P4681886131379921901

/-! ## A135461.P2204634482532041294

`1-A055672(A055667(n)+2)`
-/

namespace A135461.P2204634482532041294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055672 (A055667 n + 2).toNat

end

end A135461.P2204634482532041294

/-! ## A135461.P6147410384904005841

`1-A000007(2*A055667(n))`
-/

namespace A135461.P6147410384904005841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (2 * A055667 n).toNat

end

end A135461.P6147410384904005841

/-!
# A135462: a(n) = number of Eisenstein primes (see A055664) of norm <= n.

The programs for A135462, there is no canonical definition to state claims against.
-/

/-! ## A135462.P2434918502939899634

`a(n-1)+A055667(n)` with `a(0)=0`
-/

namespace A135462.P2434918502939899634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A055667 n

end

end A135462.P2434918502939899634

/-! ## A135462.P15919232300013299876

`∑[A055667(n)]`
-/

namespace A135462.P15919232300013299876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135462.P15919232300013299876

/-! ## A135462.P2448895779171879999

`∑[6*A055668(n)]`
-/

namespace A135462.P2448895779171879999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A055668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135462.P2448895779171879999

/-! ## A135462.P6616096406125529185

`A008588(∑[A055668(n)])`
-/

namespace A135462.P6616096406125529185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135462.P6616096406125529185

/-! ## A135462.P4094018299240953110

`A016921(∑[A055668(n)])-1`
-/

namespace A135462.P4094018299240953110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A135462.P4094018299240953110

/-! ## A135462.P7019348869636426842

`A008594(∑[A055668(n)])/2`
-/

namespace A135462.P7019348869636426842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055668 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008594 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A135462.P7019348869636426842

/-! ## A135462.P5931807851539546276

`∑[A004016(n)*A135461(n)]`
-/

namespace A135462.P5931807851539546276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A135461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135462.P5931807851539546276

/-! ## A135462.P375199260797983111

`∑[lcm(A004016(n), A055668(n))]`
-/

namespace A135462.P375199260797983111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004016 n) (A055668 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135462.P375199260797983111

/-! ## A135462.P7911559719939900124

`A008585(A005843(∑[A055668(n)]))`
-/

namespace A135462.P7911559719939900124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A135462.P7911559719939900124

/-! ## A135462.P7211212162879997159

`A004523(A008591(∑[A055668(n)]))`
-/

namespace A135462.P7211212162879997159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A008591 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A135462.P7211212162879997159

/-! ## A135462.P12244721053277562358

`A001281(A008594(∑[A055668(n)]))`
-/

namespace A135462.P12244721053277562358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A008594 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A135462.P12244721053277562358

/-!
# A135464: Numbers n with property that for each single digit d of the base 3 expansion of n, we can also see the base 3 expansion of d^2 as a substring. Also n may not contain any 0 digits.

The programs for A135464, there is no canonical definition to state claims against.
-/

/-! ## A135464.P4778057054819292640

`A007089(A135465(n+1))`
-/

namespace A135464.P4778057054819292640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A135465 (n + 1)).toNat

end

end A135464.P4778057054819292640

/-! ## A135464.P2693952323885437974

`A007932(or(char[2], A135465(n+1)))`
-/

namespace A135464.P2693952323885437974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A135465 (n + 1))).toNat

end

end A135464.P2693952323885437974

/-! ## A135464.P599781049304914947

`A007932(A135465(A000027(n+1)))`
-/

namespace A135464.P599781049304914947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (A135465 (A000027 (n + 1)).toNat).toNat

end

end A135464.P599781049304914947

/-! ## A135464.P17168923951694514100

`A007932(A135465(A008619(2*n)))`
-/

namespace A135464.P17168923951694514100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (A135465 (A008619 (2 * n)).toNat).toNat

end

end A135464.P17168923951694514100

/-! ## A135464.P15610459161601176069

`A007932(∑{d}[A135465(n+1), A000010(#)])`
-/

namespace A135464.P15610459161601176069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A135464.P15610459161601176069

/-! ## A135464.P16415223526047859604

`A007932(A135465(n+1)%A134439(n+1))`
-/

namespace A135464.P16415223526047859604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (Int.tmod (A135465 (n + 1)) (A134439 (n + 1))).toNat

end

end A135464.P16415223526047859604

/-!
# A135465: Decimal equivalents of A135464.

The programs for A135465, there is no canonical definition to state claims against.
-/

/-! ## A135465.P16555479439316436555

`A028898(A135464(n+1))`
-/

namespace A135465.P16555479439316436555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A135464 (n + 1)).toNat

end

end A135465.P16555479439316436555

/-!
# A135466: a(n) = (2*n-8)^2 * 2^(n-3).

The programs for A135466, the canonical program `A135466.P2287948943562978142` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135466 has offset 0).

The definition of A135466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135466.P16675563528151047599

`(n-4)²*2^(n-1)`
-/

namespace A135466.P16675563528151047599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 4) ^ 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A135466.P16675563528151047599

namespace A135466

/-- `(n-4)²*2^(n-1)` -/
def P16675563528151047599.Spec : Prop :=
  ∀ n, P16675563528151047599.a n = (A135466 n : ℚ)

end A135466

/-! ## A135466.P17460927897228223836

`(2*n-8)²*2^(n-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135466.P17460927897228223836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n : ℤ) - 8) ^ 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A135466.P17460927897228223836

namespace A135466

/-- `(2*n-8)²*2^(n-3)` -/
def P17460927897228223836.Spec : Prop :=
  ∀ n, P17460927897228223836.a n = (A135466 n : ℚ)

end A135466

/-! ## A135466.P2287948943562978142

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=8, a(1)=9, a(2)=8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135466

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P2287948943562978142.Spec : Prop :=
  ∀ n, P2287948943562978142.a n = A135466 n

theorem P2287948943562978142.correct : P2287948943562978142.Spec := by
  intro n
  simp only [A135466]

end A135466

/-! ## A135466.P4616626477413080417

`A243456(2*n)`
-/

namespace A135466.P4616626477413080417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243456 (2 * n)

end

end A135466.P4616626477413080417

namespace A135466

/-- `A243456(2*n)` -/
def P4616626477413080417.Spec : Prop :=
  ∀ n, P4616626477413080417.a n = A135466 n

end A135466

/-! ## A135466.P16679692166486777054

`A243456(n+1+n)+A243456(n+n)`
-/

namespace A135466.P16679692166486777054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243456 (n + 1 + n) + A243456 (n + n)

end

end A135466.P16679692166486777054

namespace A135466

/-- `A243456(n+1+n)+A243456(n+n)` -/
def P16679692166486777054.Spec : Prop :=
  ∀ n, P16679692166486777054.a n = A135466 n

end A135466

/-! ## A135466.P12685121329164915880

`lcm(A040001(n), A243456(A005843(n)))`
-/

namespace A135466.P12685121329164915880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A243456 (A005843 n).toNat)

end

end A135466.P12685121329164915880

namespace A135466

/-- `lcm(A040001(n), A243456(A005843(n)))` -/
def P12685121329164915880.Spec : Prop :=
  ∀ n, (P12685121329164915880.a n : ℤ) = A135466 n

end A135466

/-! ## A135466.P9516613592376541857

`A243456(A005843(n))%A198695(n)`
-/

namespace A135466.P9516613592376541857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243456 (A005843 n).toNat) (A198695 n)

end

end A135466.P9516613592376541857

namespace A135466

/-- `A243456(A005843(n))%A198695(n)` -/
def P9516613592376541857.Spec : Prop :=
  ∀ n, P9516613592376541857.a n = A135466 n

end A135466

/-!
# A135469: Denominators of expansion of eta(5t)^2*eta(10t)^(13/5)*eta(20t)^(-9/5)*eta(40t)^(6/5).

The programs for A135469, there is no canonical definition to state claims against.
-/

/-! ## A135469.P11940614358886743850

`gcd(A017536(n), A202272(n+1))`
-/

namespace A135469.P11940614358886743850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017536 n) (A202272 (n + 1))

end

end A135469.P11940614358886743850

/-! ## A135469.P261058794216957165

`gcd(A228220(n+1), A382328(n))`
-/

namespace A135469.P261058794216957165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A228220 (n + 1)) (A382328 n)

end

end A135469.P261058794216957165

/-! ## A135469.P8186393559006574339

`gcd(A051872((3*n+4)²), A328572(n))`
-/

namespace A135469.P8186393559006574339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051872 ((3 * n + 4) ^ 2)) (A328572 n)

end

end A135469.P8186393559006574339

/-! ## A135469.P4851531675613350225

`gcd(A245135(n+2), A245166(A245148(n+9)))`
-/

namespace A135469.P4851531675613350225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A245135 (n + 2)) (A245166 (A245148 (n + 9)).toNat)

end

end A135469.P4851531675613350225

/-! ## A135469.P12584432692307326285

`gcd(A042103(2*n)², A342016(n))`
-/

namespace A135469.P12584432692307326285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A042103 (2 * n) ^ 2) (A342016 n)

end

end A135469.P12584432692307326285

/-!
# A135471: a(n) = Sum{i=1..n} ( i*2^(i-1) ) - ( A002024(n)*(A002024(n)+1)/2 - n ) * 2^(A002024(n)-1).

The programs for A135471, there is no canonical definition to state claims against.
-/

/-! ## A135471.P451522580852651163

`A145819(A088083(n+1))-A033716(n+3)`
-/

namespace A135471.P451522580852651163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145819 (A088083 (n + 1)).toNat - A033716 (n + 3)

end

end A135471.P451522580852651163

/-!
# A135472: Shortest and lexicographically earliest string of decimal digits with property that when made into cycle every pair of digits from 0,0 to 9,9 can be seen exactly once.

The programs for A135472, there is no canonical definition to state claims against.
-/

/-! ## A135472.P2348536068932630988

`A248034(n+1)-1`
-/

namespace A135472.P2348536068932630988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248034 (n + 1) - 1

end

end A135472.P2348536068932630988

/-! ## A135472.P1086749876126620756

`A358967(n+1)-1`
-/

namespace A135472.P1086749876126620756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358967 (n + 1) - 1

end

end A135472.P1086749876126620756

/-! ## A135472.P16125725558114677100

`Δ[∑[A248034(n)]-n]`
-/

namespace A135472.P16125725558114677100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135472.P16125725558114677100

/-! ## A135472.P1356113934703087319

`dr(A356348(n+1)-1)`
-/

namespace A135472.P1356113934703087319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A356348 (n + 1) - 1)

end

end A135472.P1356113934703087319

/-! ## A135472.P13366188024276988474

`abs(1-A248034(Δ[n²]-n))`
-/

namespace A135472.P13366188024276988474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A248034 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A135472.P13366188024276988474

/-! ## A135472.P12182250608619346361

`∑{digits}[A248034(xor(1, 2*n)-n)-1, #]`
-/

namespace A135472.P12182250608619346361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248034 (Nat.xor 1 (2 * n) - n) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A135472.P12182250608619346361

/-! ## A135472.P14259263662425944607

`A000401(A248034(n+1))`
-/

namespace A135472.P14259263662425944607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A248034 (n + 1)).toNat

end

end A135472.P14259263662425944607

/-! ## A135472.P9573508847680617194

`A000401(A358967(n+1))`
-/

namespace A135472.P9573508847680617194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A358967 (n + 1)).toNat

end

end A135472.P9573508847680617194

/-! ## A135472.P7025487064745532650

`A062461(A248034(n+1)+1)`
-/

namespace A135472.P7025487064745532650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062461 (A248034 (n + 1) + 1).toNat

end

end A135472.P7025487064745532650

/-! ## A135472.P4404333259431413003

`A007953(A356348(n+1)-1)`
-/

namespace A135472.P4404333259431413003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A356348 (n + 1) - 1).toNat

end

end A135472.P4404333259431413003

/-! ## A135472.P17386574818232431004

`A010888(A356348(n+1)-1)`
-/

namespace A135472.P17386574818232431004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A356348 (n + 1) - 1).toNat

end

end A135472.P17386574818232431004

/-! ## A135472.P2643498406829118703

`∑[Δ[A248034(n)]%A000041(n)]`
-/

namespace A135472.P2643498406829118703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135472.P2643498406829118703

/-!
# A135473: a(n) = number of strings of length n that can be obtained by starting with abc and repeatedly doubling any substring in place.

The programs for A135473, there is no canonical definition to state claims against.
-/

/-! ## A135473.P17903619830358367508

`A095861(n+1)+A090620(A277237(n))`
-/

namespace A135473.P17903619830358367508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (n + 1) + A090620 (A277237 n).toNat

end

end A135473.P17903619830358367508

/-! ## A135473.P474681797192764867

`A090620(A277237(n)+A138933(n+1))`
-/

namespace A135473.P474681797192764867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A277237 n + A138933 (n + 1)).toNat

end

end A135473.P474681797192764867

/-! ## A135473.P4310385104558836601

`A350459(n+1)+A090620(A277237(n))`
-/

namespace A135473.P4310385104558836601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350459 (n + 1) + A090620 (A277237 n).toNat

end

end A135473.P4310385104558836601

/-! ## A135473.P10777400656963736490

`A090620(A277237(n)+A064802(n+2))`
-/

namespace A135473.P10777400656963736490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A277237 n + A064802 (n + 2)).toNat

end

end A135473.P10777400656963736490

/-! ## A135473.P11589895772689168786

`A253014(n+2)-A347643(A144958(n))`
-/

namespace A135473.P11589895772689168786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253014 (n + 2) - A347643 (A144958 n).toNat

end

end A135473.P11589895772689168786

/-!
# A135474: A071605(n)/(n-1)!.

The programs for A135474, there is no canonical definition to state claims against.
-/

/-! ## A135474.P13928202526268047774

`A071605(n+1)/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135474.P13928202526268047774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071605 (n + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A135474.P13928202526268047774

/-! ## A135474.P15396962325637946564

`A071605(n+1)/A000142(n)`
-/

namespace A135474.P15396962325637946564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071605 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A135474.P15396962325637946564

/-! ## A135474.P8923718581612264878

`A071605(n+1)/Δ[A003422(n)]`
-/

namespace A135474.P8923718581612264878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071605 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A135474.P8923718581612264878

/-! ## A135474.P10373666572796719779

`A071605(n+1)/∏[A028310(n)]`
-/

namespace A135474.P10373666572796719779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071605 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A135474.P10373666572796719779

/-! ## A135474.P17837967218129310025

`3*A071605(n+1)/A052560(n)`
-/

namespace A135474.P17837967218129310025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A071605 (n + 1) : ℚ) / (A052560 n : ℚ))

end

end A135474.P17837967218129310025

/-!
# A135475: Sorted list of strings that can be obtained by starting with 123 and repeatedly doubling any substring in place.

The programs for A135475, there is no canonical definition to state claims against.
-/

/-! ## A135475.P4517109638455369203

`A096299(A014311(n+1)^A096300(n+1))`
-/

namespace A135475.P4517109638455369203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096299 (SequenceMachineLib.roundAway ((A014311 (n + 1) : ℚ) ^ (A096300 (n + 1) : ℤ))).toNat

end

end A135475.P4517109638455369203

/-! ## A135475.P8330185064102269586

`A096299(C(A014311(n+1), A096300(n+1)))`
-/

namespace A135475.P8330185064102269586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096299 (Nat.choose (A014311 (n + 1)).toNat (A096300 (n + 1)).toNat)

end

end A135475.P8330185064102269586

/-! ## A135475.P12296970750527537516

`A096299(record[A014311(n+1)/A096300(n+1)])`
-/

namespace A135475.P12296970750527537516
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014311 (n + 1) : ℚ) / (A096300 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096299 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A135475.P12296970750527537516

/-!
# A135477: Positive numbers of the form x^2-6^y with repetition.

The programs for A135477, there is no canonical definition to state claims against.
-/

/-! ## A135477.P8517216245218516005

`A051208(A072189(n)+1+n)`
-/

namespace A135477.P8517216245218516005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051208 (A072189 n + 1 + (n : ℤ)).toNat

end

end A135477.P8517216245218516005

/-! ## A135477.P10863043835291671764

`A200520(A072189(n))+eq[0, A200516(n)]`
-/

namespace A135477.P10863043835291671764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200520 (A072189 n).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A135477.P10863043835291671764

/-! ## A135477.P496916226496450689

`A051208(n+1)+A034188(A062889(2*n+3))`
-/

namespace A135477.P496916226496450689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051208 (n + 1) + A034188 (A062889 (2 * n + 3)).toNat

end

end A135477.P496916226496450689

/-! ## A135477.P14287494372788360702

`A051208(A324183(ceil(2^(n-1))))`
-/

namespace A135477.P14287494372788360702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051208 (A324183 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A135477.P14287494372788360702

/-! ## A135477.P12017119860904871029

`A051208(n+1)+A051161(A051218(3*n+4))`
-/

namespace A135477.P12017119860904871029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051208 (n + 1) + A051161 (A051218 (3 * n + 4)).toNat

end

end A135477.P12017119860904871029

/-!
# A135478: Given n, find the smallest prime p such that n(n+1)+p = q is a prime; then a(n) = q.

The programs for A135478, there is no canonical definition to state claims against.
-/

/-! ## A135478.P4993939755268389146

`A020484(∑[n])`
-/

namespace A135478.P4993939755268389146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135478.P4993939755268389146

/-! ## A135478.P4441533432585470948

`A087711(∑[n])+∑[n]`
-/

namespace A135478.P4441533432585470948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A135478.P4441533432585470948

/-! ## A135478.P4309968419173370364

`A020483(∑[n])+∑[2*n]`
-/

namespace A135478.P4309968419173370364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A135478.P4309968419173370364

/-! ## A135478.P16351768174342696864

`p?[A020484((n+1)*n/2)]`
-/

namespace A135478.P16351768174342696864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n : ℚ) / 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135478.P16351768174342696864

/-! ## A135478.P16573873494413823419

`∑{p}[A020484(n*(n+1)/2), #]`
-/

namespace A135478.P16573873494413823419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A135478.P16573873494413823419

/-! ## A135478.P4076425001011827953

`∏{d}[A020484(A000217(n)), #]`
-/

namespace A135478.P4076425001011827953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A135478.P4076425001011827953

/-! ## A135478.P2295978312195999393

`A006530(A020484(C(n+1, 2)))`
-/

namespace A135478.P2295978312195999393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020484 (Nat.choose (n + 1) 2)).toNat

end

end A135478.P2295978312195999393

/-! ## A135478.P14976501969854103665

`A006530(A020484(n²-C(n, 2)))`
-/

namespace A135478.P14976501969854103665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020484 (n ^ 2 - Nat.choose n 2)).toNat

end

end A135478.P14976501969854103665

/-! ## A135478.P2739183926380065295

`or(char[A000041(n)], A020484((n²+n)/2))`
-/

namespace A135478.P2739183926380065295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A020484 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A135478.P2739183926380065295

/-! ## A135478.P547111962936246881

`record[A020484(A000217(A009947(n)))]`
-/

namespace A135478.P547111962936246881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A000217 (A009947 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135478.P547111962936246881

/-! ## A135478.P15809725382769624414

`record[A020484(A001971(A026741(n)))]`
-/

namespace A135478.P15809725382769624414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A001971 (A026741 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135478.P15809725382769624414

/-! ## A135478.P4661877529370860003

`record[A020484(A000217(A126760(n)))]`
-/

namespace A135478.P4661877529370860003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A000217 (A126760 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135478.P4661877529370860003

/-! ## A135478.P9552383151614362222

`A000027(p?[A020484(A000217(n))])`
-/

namespace A135478.P9552383151614362222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135478.P9552383151614362222

/-! ## A135478.P13319524106741091416

`A001414(p?[A020484(A000217(n))])`
-/

namespace A135478.P13319524106741091416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135478.P13319524106741091416

/-! ## A135478.P60815333080254456

`A006530(2*A020484(A000217(n)))`
-/

namespace A135478.P60815333080254456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A020484 (A000217 n).toNat).toNat

end

end A135478.P60815333080254456

/-! ## A135478.P16707387374315903683

`A020639(A020484(A002378(n)/2))`
-/

namespace A135478.P16707387374315903683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020484 (SequenceMachineLib.roundAway ((A002378 n : ℚ) / 2)).toNat).toNat

end

end A135478.P16707387374315903683

/-! ## A135478.P17813441919752490432

`A014963(A020484((n²+n)/2))`
-/

namespace A135478.P17813441919752490432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A020484 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat).toNat

end

end A135478.P17813441919752490432

/-! ## A135478.P14019400489237939180

`A014963(A020483(∑[n])+n²+n)`
-/

namespace A135478.P14019400489237939180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A020483 (∑ j ∈ Finset.range (n + 1), f1 j) + (n ^ 2 + n : ℤ)).toNat

end

end A135478.P14019400489237939180

/-!
# A135481: a(n) = 2^A007814(n+1) - 1.

The programs for A135481, the canonical program `A135481.P9711204985532032738` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135481 has offset 0).

The definition of A135481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135481.P15663456420371727979

`2^val(n+1, 2)-1`
-/

namespace A135481.P15663456420371727979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) - 1

end

end A135481.P15663456420371727979

namespace A135481

/-- `2^val(n+1, 2)-1` -/
def P15663456420371727979.Spec : Prop :=
  ∀ n, P15663456420371727979.a n = A135481 n

end A135481

/-! ## A135481.P9711204985532032738

`A006519(n+1)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135481

/-- `A006519(n+1)-1` -/
def P9711204985532032738.Spec : Prop :=
  ∀ n, P9711204985532032738.a n = A135481 n

theorem P9711204985532032738.correct : P9711204985532032738.Spec := by
  intro n
  simp only [A135481]

end A135481

/-! ## A135481.P16709624487943681434

`2^A007814(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135481.P16709624487943681434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) - 1

end

end A135481.P16709624487943681434

namespace A135481

/-- `2^A007814(n+1)-1` -/
def P16709624487943681434.Spec : Prop :=
  ∀ n, P16709624487943681434.a n = (A135481 n : ℚ)

end A135481

/-! ## A135481.P13225338091340224100

`and(n, -(n+2))`
-/

namespace A135481.P13225338091340224100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ))

end

end A135481.P13225338091340224100

namespace A135481

/-- `and(n, -(n+2))` -/
def P13225338091340224100.Spec : Prop :=
  ∀ n, P13225338091340224100.a n = A135481 n

end A135481

/-! ## A135481.P15404031968251945079

`n-and(n, n+1)`
-/

namespace A135481.P15404031968251945079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (n + 1) : ℤ)

end

end A135481.P15404031968251945079

namespace A135481

/-- `n-and(n, n+1)` -/
def P15404031968251945079.Spec : Prop :=
  ∀ n, P15404031968251945079.a n = A135481 n

end A135481

/-! ## A135481.P114311829948546696

`xor(n, and(n, n+1))`
-/

namespace A135481.P114311829948546696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land n (n + 1))

end

end A135481.P114311829948546696

namespace A135481

/-- `xor(n, and(n, n+1))` -/
def P114311829948546696.Spec : Prop :=
  ∀ n, (P114311829948546696.a n : ℤ) = A135481 n

end A135481

/-! ## A135481.P10250324671846913026

`floor(xor(n, n+1)/2)`
-/

namespace A135481.P10250324671846913026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor n (n + 1) : ℚ) / 2⌋

end

end A135481.P10250324671846913026

namespace A135481

/-- `floor(xor(n, n+1)/2)` -/
def P10250324671846913026.Spec : Prop :=
  ∀ n, P10250324671846913026.a n = A135481 n

end A135481

/-! ## A135481.P1728424280804291846

`n%xor(n, -(n+2))`
-/

namespace A135481.P1728424280804291846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (Int.xor (n : ℤ) (-(n + 2 : ℤ)))

end

end A135481.P1728424280804291846

namespace A135481

/-- `n%xor(n, -(n+2))` -/
def P1728424280804291846.Spec : Prop :=
  ∀ n, P1728424280804291846.a n = A135481 n

end A135481

/-! ## A135481.P2646503902518423536

`floor(sinh(log(xor(n, n+1))))`
-/

namespace A135481.P2646503902518423536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (Nat.xor n (n + 1) : ℝ))⌋

end

end A135481.P2646503902518423536

namespace A135481

/-- `floor(sinh(log(xor(n, n+1))))` -/
def P2646503902518423536.Spec : Prop :=
  ∀ n, P2646503902518423536.a n = A135481 n

end A135481

/-! ## A135481.P16193699219005955794

`round(sinh(log(xor(n, n+1))))`
-/

namespace A135481.P16193699219005955794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (Nat.xor n (n + 1) : ℝ)))

end

end A135481.P16193699219005955794

namespace A135481

/-- `round(sinh(log(xor(n, n+1))))` -/
def P16193699219005955794.Spec : Prop :=
  ∀ n, P16193699219005955794.a n = A135481 n

end A135481

/-! ## A135481.P6163217293591536650

`(xor(n, n+1)-1)/2`
-/

namespace A135481.P6163217293591536650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor n (n + 1) : ℤ) - 1 : ℚ) / 2

end

end A135481.P6163217293591536650

namespace A135481

/-- `(xor(n, n+1)-1)/2` -/
def P6163217293591536650.Spec : Prop :=
  ∀ n, P6163217293591536650.a n = (A135481 n : ℚ)

end A135481

/-! ## A135481.P11682202998158438195

`xor(1, xor(n, n+1))/2`
-/

namespace A135481.P11682202998158438195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (Nat.xor n (n + 1)) : ℚ) / 2

end

end A135481.P11682202998158438195

namespace A135481

/-- `xor(1, xor(n, n+1))/2` -/
def P11682202998158438195.Spec : Prop :=
  ∀ n, P11682202998158438195.a n = (A135481 n : ℚ)

end A135481

/-! ## A135481.P10595804185670282750

`or(n, n+1)-(n+1)`
-/

namespace A135481.P10595804185670282750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n + 1 : ℤ)

end

end A135481.P10595804185670282750

namespace A135481

/-- `or(n, n+1)-(n+1)` -/
def P10595804185670282750.Spec : Prop :=
  ∀ n, P10595804185670282750.a n = A135481 n

end A135481

/-! ## A135481.P12337420548760949337

`or(n, n+1)%(n+1)`
-/

namespace A135481.P12337420548760949337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) % (n + 1)

end

end A135481.P12337420548760949337

namespace A135481

/-- `or(n, n+1)%(n+1)` -/
def P12337420548760949337.Spec : Prop :=
  ∀ n, (P12337420548760949337.a n : ℤ) = A135481 n

end A135481

/-! ## A135481.P15902154973598435169

`abs(or(n, -(n+2))+2)`
-/

namespace A135481.P15902154973598435169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (-(n + 2 : ℤ)) + 2|

end

end A135481.P15902154973598435169

namespace A135481

/-- `abs(or(n, -(n+2))+2)` -/
def P15902154973598435169.Spec : Prop :=
  ∀ n, P15902154973598435169.a n = A135481 n

end A135481

/-! ## A135481.P6627015017207805300

`-(or(n, -(n+2))+2)`
-/

namespace A135481.P6627015017207805300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.lor (n : ℤ) (-(n + 2 : ℤ)) + 2)

end

end A135481.P6627015017207805300

namespace A135481

/-- `-(or(n, -(n+2))+2)` -/
def P6627015017207805300.Spec : Prop :=
  ∀ n, P6627015017207805300.a n = A135481 n

end A135481

/-! ## A135481.P12010858151466259106

`xor(n+1, or(n, n+1))`
-/

namespace A135481.P12010858151466259106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.lor n (n + 1))

end

end A135481.P12010858151466259106

namespace A135481

/-- `xor(n+1, or(n, n+1))` -/
def P12010858151466259106.Spec : Prop :=
  ∀ n, (P12010858151466259106.a n : ℤ) = A135481 n

end A135481

/-! ## A135481.P13032770207458292068

`gcd(n+1, (3-n)^10)-1`
-/

namespace A135481.P13032770207458292068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) ((3 - (n : ℤ)) ^ 10) : ℤ) - 1

end

end A135481.P13032770207458292068

namespace A135481

/-- `gcd(n+1, (3-n)^10)-1` -/
def P13032770207458292068.Spec : Prop :=
  ∀ n, P13032770207458292068.a n = A135481 n

end A135481

/-! ## A135481.P16239081991195816364

`abs(or(n, n-2-2*n))-2`
-/

namespace A135481.P16239081991195816364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) ((n : ℤ) - 2 - (2 * n : ℤ))| - 2

end

end A135481.P16239081991195816364

namespace A135481

/-- `abs(or(n, n-2-2*n))-2` -/
def P16239081991195816364.Spec : Prop :=
  ∀ n, P16239081991195816364.a n = A135481 n

end A135481

/-! ## A135481.P4296415147526122786

`(2*n+1)%(2^val(n+1, 2))`
-/

namespace A135481.P4296415147526122786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % 2 ^ SequenceMachineLib.valuation (n + 1) 2

end

end A135481.P4296415147526122786

namespace A135481

/-- `(2*n+1)%(2^val(n+1, 2))` -/
def P4296415147526122786.Spec : Prop :=
  ∀ n, (P4296415147526122786.a n : ℤ) = A135481 n

end A135481

/-!
# A135482: a(n) = (1/4)*Sum_{j=1..n} 2^prime(j).

The programs for A135482, there is no canonical definition to state claims against.
-/

/-! ## A135482.P9781212755023838495

`A076793(n)/4`
-/

namespace A135482.P9781212755023838495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076793 n : ℚ) / 4

end

end A135482.P9781212755023838495

/-! ## A135482.P11702625131170056426

`(A320877(n)-1)/4`
-/

namespace A135482.P11702625131170056426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320877 n - 1 : ℚ) / 4

end

end A135482.P11702625131170056426

/-! ## A135482.P10917142367618348206

`floor(A080355(n+1)/2)`
-/

namespace A135482.P10917142367618348206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080355 (n + 1) : ℚ) / 2⌋

end

end A135482.P10917142367618348206

/-! ## A135482.P2915793687744596351

`a(n-1)+A135630(n)+1` with `a(0)=0`
-/

namespace A135482.P2915793687744596351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A135630 n + 1)

end

end A135482.P2915793687744596351

/-! ## A135482.P10199779099709271481

`(∑[2^comp[A018252(n+1)]]-1)/4`
-/

namespace A135482.P10199779099709271481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / 4

end

end A135482.P10199779099709271481

/-! ## A135482.P10330548686299209723

`∑[floor(2^(lt[A000005(n+1), 3]-1))]`
-/

namespace A135482.P10330548686299209723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135482.P10330548686299209723

/-! ## A135482.P2890848994992650847

`∑[floor(2^(lt[n, A020639(n+1)]-1))]`
-/

namespace A135482.P2890848994992650847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135482.P2890848994992650847

/-! ## A135482.P15407117377399385480

`(∑[2^lt[n, A014963(n+1)]]-1)/2`
-/

namespace A135482.P15407117377399385480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / 2

end

end A135482.P15407117377399385480

/-! ## A135482.P11629306844555400375

`∑[floor(2^(lt[n, A006530(2*(n+1))]-1))]`
-/

namespace A135482.P11629306844555400375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135482.P11629306844555400375

/-! ## A135482.P10338019669159440257

`∑[A034008(record[A006530(n+1)])]`
-/

namespace A135482.P10338019669159440257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135482.P10338019669159440257

/-!
# A135483: a(n) = Sum_{j=1..n} prime(j)*2^(j-2).

The programs for A135483, the canonical program `A135483.P6807936109355004994` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135483 has offset 1).

The definition of A135483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135483.P9347507093901930207

`∑[A239885(n+1)]`
-/

namespace A135483.P9347507093901930207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135483.P9347507093901930207

namespace A135483

/-- `∑[A239885(n+1)]` -/
def P9347507093901930207.Spec : Prop :=
  ∀ n, P9347507093901930207.a n = A135483 (n + 1)

end A135483

/-! ## A135483.P8975749235754355099

`∑[A110295(n+1)/2]`
-/

namespace A135483.P8975749235754355099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110295 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135483.P8975749235754355099

namespace A135483

/-- `∑[A110295(n+1)/2]` -/
def P8975749235754355099.Spec : Prop :=
  ∀ n, P8975749235754355099.a n = (A135483 (n + 1) : ℚ)

end A135483

/-! ## A135483.P6804712009727868069

`∑[2^(n-1)*A000040(n+1)]`
-/

namespace A135483.P6804712009727868069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000040 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135483.P6804712009727868069

namespace A135483

/-- `∑[2^(n-1)*A000040(n+1)]` -/
def P6804712009727868069.Spec : Prop :=
  ∀ n, P6804712009727868069.a n = (A135483 (n + 1) : ℚ)

end A135483

/-! ## A135483.P17843463174477050850

`∑[2^(n-1)*record[A006530(n+2)]]`
-/

namespace A135483.P17843463174477050850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135483.P17843463174477050850

namespace A135483

/-- `∑[2^(n-1)*record[A006530(n+2)]]` -/
def P17843463174477050850.Spec : Prop :=
  ∀ n, P17843463174477050850.a n = (A135483 (n + 1) : ℚ)

end A135483

/-! ## A135483.P3741044871063131350

`∑[2^(n-1)*record[A014963(n+2)]]`
-/

namespace A135483.P3741044871063131350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135483.P3741044871063131350

namespace A135483

/-- `∑[2^(n-1)*record[A014963(n+2)]]` -/
def P3741044871063131350.Spec : Prop :=
  ∀ n, P3741044871063131350.a n = (A135483 (n + 1) : ℚ)

end A135483

/-! ## A135483.P3852606929017892264

`∑[(A008864(n+1)-1)*2^(n-1)]`
-/

namespace A135483.P3852606929017892264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135483.P3852606929017892264

namespace A135483

/-- `∑[(A008864(n+1)-1)*2^(n-1)]` -/
def P3852606929017892264.Spec : Prop :=
  ∀ n, P3852606929017892264.a n = (A135483 (n + 1) : ℚ)

end A135483

/-! ## A135483.P6807936109355004994

`∑[A000040(n+1)*A131577(n)]+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135483

/-- `∑[A000040(n+1)*A131577(n)]+1` -/
def P6807936109355004994.Spec : Prop :=
  ∀ n, P6807936109355004994.a n = A135483 (n + 1)

theorem P6807936109355004994.correct : P6807936109355004994.Spec := by
  intro n
  simp only [A135483, Nat.add_sub_cancel]

end A135483

/-! ## A135483.P9060868033582820063

`∑[A000040(n+1)*A011782(n)]-1`
-/

namespace A135483.P9060868033582820063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A135483.P9060868033582820063

namespace A135483

/-- `∑[A000040(n+1)*A011782(n)]-1` -/
def P9060868033582820063.Spec : Prop :=
  ∀ n, P9060868033582820063.a n = A135483 (n + 1)

end A135483

/-! ## A135483.P428762544409026426

`∑[A000040(n+1)/2*A000079(n)]`
-/

namespace A135483.P428762544409026426
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / 2 * (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135483.P428762544409026426

namespace A135483

/-- `∑[A000040(n+1)/2*A000079(n)]` -/
def P428762544409026426.Spec : Prop :=
  ∀ n, P428762544409026426.a n = (A135483 (n + 1) : ℚ)

end A135483

/-! ## A135483.P11041151884985522797

`∑[A030078(n+1)/A079704(n+1)*A000079(n)]`
-/

namespace A135483.P11041151884985522797
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) : ℚ) / (A079704 (n + 1) : ℚ) * (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135483.P11041151884985522797

namespace A135483

/-- `∑[A030078(n+1)/A079704(n+1)*A000079(n)]` -/
def P11041151884985522797.Spec : Prop :=
  ∀ n, P11041151884985522797.a n = (A135483 (n + 1) : ℚ)

end A135483

/-! ## A135483.P11496725408290864717

`∑[A265127(n+1)/4]`
-/

namespace A135483.P11496725408290864717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265127 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135483.P11496725408290864717

namespace A135483

/-- `∑[A265127(n+1)/4]` -/
def P11496725408290864717.Spec : Prop :=
  ∀ n, P11496725408290864717.a n = (A135483 (n + 1) : ℚ)

end A135483

/-! ## A135483.P2824767808997177541

`∑[2^n*record[A093074(n+1)]]/2`
-/

namespace A135483.P2824767808997177541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A135483.P2824767808997177541

namespace A135483

/-- `∑[2^n*record[A093074(n+1)]]/2` -/
def P2824767808997177541.Spec : Prop :=
  ∀ n, P2824767808997177541.a n = (A135483 (n + 1) : ℚ)

end A135483

/-! ## A135483.P15522231951640789747

`∑[2^n*record[A112823(n+2)]]/2`
-/

namespace A135483.P15522231951640789747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112823 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A135483.P15522231951640789747

namespace A135483

/-- `∑[2^n*record[A112823(n+2)]]/2` -/
def P15522231951640789747.Spec : Prop :=
  ∀ n, P15522231951640789747.a n = (A135483 (n + 1) : ℚ)

end A135483

/-!
# A135484: a(n) = Sum_{i=1..n} i^prime(i), where prime(i) denotes i-th prime number.

The programs for A135484, there is no canonical definition to state claims against.
-/

/-! ## A135484.P11358884921804654017

`∑[(n+1)^p?[comp[n²]]]`
-/

namespace A135484.P11358884921804654017
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135484.P11358884921804654017

/-! ## A135484.P13389706502830198291

`∑[(n+1)^eq[1, ∑{e}[n, #]]]`
-/

namespace A135484.P13389706502830198291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135484.P13389706502830198291

/-! ## A135484.P11370175341750444428

`∑[(n+1)^eq[n+1, ∑{d}[n, #]]]`
-/

namespace A135484.P11370175341750444428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135484.P11370175341750444428

/-! ## A135484.P15754419183306293441

`∑[A062481(n+1)]`
-/

namespace A135484.P15754419183306293441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135484.P15754419183306293441

/-! ## A135484.P10837206507430393306

`∑[(n+1)^A000040(n+1)]`
-/

namespace A135484.P10837206507430393306
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000040 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135484.P10837206507430393306

/-!
# A135485: a(n) = Sum_{i=1..n} prime(i)^(i-1), where prime(i) denotes i-th prime number.

The programs for A135485, there is no canonical definition to state claims against.
-/

/-! ## A135485.P7773301059637896499

`∑[p?[comp[n²]]^n]`
-/

namespace A135485.P7773301059637896499
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135485.P7773301059637896499

/-! ## A135485.P6872196739210645396

`∑[eq[1, ∑{e}[n, #]]^n]`
-/

namespace A135485.P6872196739210645396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135485.P6872196739210645396

/-! ## A135485.P17242515480047055104

`∑[eq[n+1, ∑{d}[n, #]]^n]`
-/

namespace A135485.P17242515480047055104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135485.P17242515480047055104

/-! ## A135485.P16994781523044508798

`∑[A093360(n+1)]`
-/

namespace A135485.P16994781523044508798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135485.P16994781523044508798

/-! ## A135485.P7361434182769222583

`∑[record[A332411(n+2)]]`
-/

namespace A135485.P7361434182769222583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332411 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135485.P7361434182769222583

/-!
# A135486: Triangle read by rows: T(n,k) = number of partitions of n having k-fold symmetry, cf. A085436.

The programs for A135486, there is no canonical definition to state claims against.
-/

/-! ## A135486.P18379138493178199952

`A060419(A060428(2*n+1))%A060439(n+2)`
-/

namespace A135486.P18379138493178199952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060419 (A060428 (2 * n + 1)).toNat) (A060439 (n + 2))

end

end A135486.P18379138493178199952

/-! ## A135486.P4137818374987703449

`A228731(n+1)%A248130(A250006(n+1))`
-/

namespace A135486.P4137818374987703449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228731 (n + 1)) (A248130 (A250006 (n + 1)).toNat)

end

end A135486.P4137818374987703449

/-! ## A135486.P1570696585664767340

`and(A064989(n+1), A250470(A240513(n+1)))`
-/

namespace A135486.P1570696585664767340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064989 (n + 1)) (A250470 (A240513 (n + 1)).toNat)

end

end A135486.P1570696585664767340

/-! ## A135486.P6694461964911043585

`and(A250470(A240513(n+1)), A250470(n+1))`
-/

namespace A135486.P6694461964911043585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A250470 (A240513 (n + 1)).toNat) (A250470 (n + 1))

end

end A135486.P6694461964911043585

/-! ## A135486.P13839913159492462081

`A336033(A000040(n+1)^A239264(n))`
-/

namespace A135486.P13839913159492462081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336033 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) ^ (A239264 n : ℤ))).toNat

end

end A135486.P13839913159492462081

/-!
# A135487: a(n) = (n^2+5*n+5)*(2*n+2)!/(n+4)!.

The programs for A135487, the canonical program `A135487.P3593567982238175270` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135487 has offset 2).

The definition of A135487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135487.P3593567982238175270

`((n+2)²+5*(n+2)+5)*(2*(n+2)+2)!/(n+6)!`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135487

/-- `((n+2)²+5*(n+2)+5)*(2*(n+2)+2)!/(n+6)!` -/
def P3593567982238175270.Spec : Prop :=
  ∀ n, P3593567982238175270.a n = (A135487 (n + 2) : ℚ)

end A135487

/-! ## A135487.P15220234666697277138

`A338817(A046092(n+3)+1)`
-/

namespace A135487.P15220234666697277138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338817 (A046092 (n + 3) + 1).toNat

end

end A135487.P15220234666697277138

namespace A135487

/-- `A338817(A046092(n+3)+1)` -/
def P15220234666697277138.Spec : Prop :=
  ∀ n, P15220234666697277138.a n = A135487 (n + 2)

end A135487

/-!
# A135489: Number of tieless basketball games from the years 1896-1967 with n scoring events.

The programs for A135489, there is no canonical definition to state claims against.
-/

/-! ## A135489.P10926766788832931166

`A026255(A003500(n))+A002088(n)`
-/

namespace A135489.P10926766788832931166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (A003500 n).toNat + A002088 n

end

end A135489.P10926766788832931166

/-! ## A135489.P12835000847664415373

`A008615(A215494(n+1)+n)`
-/

namespace A135489.P12835000847664415373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A215494 (n + 1) + (n : ℤ)).toNat

end

end A135489.P12835000847664415373

/-!
# A135491: Number of ways to toss a coin n times and not get a run of four.

The programs for A135491, the canonical program `A135491.P731866473722496995` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135491 has offset 0).

The definition of A135491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135491.P731866473722496995

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135491

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P731866473722496995.Spec : Prop :=
  ∀ n, (P731866473722496995.a n : ℤ) = A135491 n

theorem P731866473722496995.correct : P731866473722496995.Spec := by
  intro n
  simp only [A135491]

end A135491

/-! ## A135491.P7490802322680428365

`ogf((1+x+x^2+x^3)/(1-x-x^2-x^3))`
-/

namespace A135491.P7490802322680428365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1] [1, -1, -1, -1] n

end

end A135491.P7490802322680428365

namespace A135491

/-- `ogf((1+x+x^2+x^3)/(1-x-x^2-x^3))` -/
def P7490802322680428365.Spec : Prop :=
  ∀ n, P7490802322680428365.a n = A135491 n

end A135491

/-! ## A135491.P1007228275484588657

`A196700(n)+a(n-1)` with `a(0)=1`
-/

namespace A135491.P1007228275484588657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A196700 n + a (n - 1)

end

end A135491.P1007228275484588657

namespace A135491

/-- `A196700(n)+a(n-1)` -/
def P1007228275484588657.Spec : Prop :=
  ∀ n, P1007228275484588657.a n = A135491 n

end A135491

/-! ## A135491.P10104610747299532991

`A288599(n)-A036453(n+1)`
-/

namespace A135491.P10104610747299532991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288599 n - A036453 (n + 1)

end

end A135491.P10104610747299532991

namespace A135491

/-- `A288599(n)-A036453(n+1)` -/
def P10104610747299532991.Spec : Prop :=
  ∀ n, P10104610747299532991.a n = A135491 n

end A135491

/-! ## A135491.P14998550720215859164

`A288599(n)-(A057427(n)+1)`
-/

namespace A135491.P14998550720215859164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288599 n - (A057427 n + 1)

end

end A135491.P14998550720215859164

namespace A135491

/-- `A288599(n)-(A057427(n)+1)` -/
def P14998550720215859164.Spec : Prop :=
  ∀ n, P14998550720215859164.a n = A135491 n

end A135491

/-! ## A135491.P9781384563964068902

`A000007(n)+A288599(n)-2`
-/

namespace A135491.P9781384563964068902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A288599 n - 2)

end

end A135491.P9781384563964068902

namespace A135491

/-- `A000007(n)+A288599(n)-2` -/
def P9781384563964068902.Spec : Prop :=
  ∀ n, P9781384563964068902.a n = A135491 n

end A135491

/-! ## A135491.P18216104245217463446

`A288599(n)+1-A157532(n+1)`
-/

namespace A135491.P18216104245217463446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288599 n + (1 - A157532 (n + 1))

end

end A135491.P18216104245217463446

namespace A135491

/-- `A288599(n)+1-A157532(n+1)` -/
def P18216104245217463446.Spec : Prop :=
  ∀ n, P18216104245217463446.a n = A135491 n

end A135491

/-! ## A135491.P7364743692779784665

`(A057427(n)+1)*A000073(n+2)`
-/

namespace A135491.P7364743692779784665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A000073 (n + 2)

end

end A135491.P7364743692779784665

namespace A135491

/-- `(A057427(n)+1)*A000073(n+2)` -/
def P7364743692779784665.Spec : Prop :=
  ∀ n, P7364743692779784665.a n = A135491 n

end A135491

/-! ## A135491.P17241490038071399814

`A000073(n+2)*A043529(2*n)`
-/

namespace A135491.P17241490038071399814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) * A043529 (2 * n)

end

end A135491.P17241490038071399814

namespace A135491

/-- `A000073(n+2)*A043529(2*n)` -/
def P17241490038071399814.Spec : Prop :=
  ∀ n, P17241490038071399814.a n = A135491 n

end A135491

/-! ## A135491.P3787582951342888190

`A000073(n+2)*A104435(2*n+1)`
-/

namespace A135491.P3787582951342888190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) * A104435 (2 * n + 1)

end

end A135491.P3787582951342888190

namespace A135491

/-- `A000073(n+2)*A104435(2*n+1)` -/
def P3787582951342888190.Spec : Prop :=
  ∀ n, P3787582951342888190.a n = A135491 n

end A135491

/-! ## A135491.P3642565068105360273

`2*A213816(2*n+1)-A000007(n)`
-/

namespace A135491.P3642565068105360273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213816 (2 * n + 1) - A000007 n

end

end A135491.P3642565068105360273

namespace A135491

/-- `2*A213816(2*n+1)-A000007(n)` -/
def P3642565068105360273.Spec : Prop :=
  ∀ n, P3642565068105360273.a n = A135491 n

end A135491

/-! ## A135491.P3984273922965490564

`A288599(n)-A020639(A004277(n))`
-/

namespace A135491.P3984273922965490564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288599 n - A020639 (A004277 n).toNat

end

end A135491.P3984273922965490564

namespace A135491

/-- `A288599(n)-A020639(A004277(n))` -/
def P3984273922965490564.Spec : Prop :=
  ∀ n, P3984273922965490564.a n = A135491 n

end A135491

/-! ## A135491.P14599713142015049399

`A288599(n)-A020639(A006093(n+1))`
-/

namespace A135491.P14599713142015049399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288599 n - A020639 (A006093 (n + 1)).toNat

end

end A135491.P14599713142015049399

namespace A135491

/-- `A288599(n)-A020639(A006093(n+1))` -/
def P14599713142015049399.Spec : Prop :=
  ∀ n, P14599713142015049399.a n = A135491 n

end A135491

/-! ## A135491.P4553110556560168158

`A000073(n+2)*A106524(A038573(n))`
-/

namespace A135491.P4553110556560168158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) * A106524 (A038573 n).toNat

end

end A135491.P4553110556560168158

namespace A135491

/-- `A000073(n+2)*A106524(A038573(n))` -/
def P4553110556560168158.Spec : Prop :=
  ∀ n, P4553110556560168158.a n = A135491 n

end A135491

/-! ## A135491.P17639021928099897287

`Δ[A054668(n+1)]`
-/

namespace A135491.P17639021928099897287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135491.P17639021928099897287

namespace A135491

/-- `Δ[A054668(n+1)]` -/
def P17639021928099897287.Spec : Prop :=
  ∀ n, P17639021928099897287.a n = A135491 n

end A135491

/-!
# A135492: Number of ways to toss a coin n times and not get a run of five.

The programs for A135492, the canonical program `A135492.P1248585203058143556` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135492 has offset 0).

The definition of A135492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135492.P1248585203058143556

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135492

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P1248585203058143556.Spec : Prop :=
  ∀ n, (P1248585203058143556.a n : ℤ) = A135492 n

theorem P1248585203058143556.correct : P1248585203058143556.Spec := by
  intro n
  simp only [A135492]

end A135492

/-! ## A135492.P11574732058790183030

`A000078(n+3)*A020639(A001316(n))`
-/

namespace A135492.P11574732058790183030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) * A020639 (A001316 n).toNat

end

end A135492.P11574732058790183030

namespace A135492

/-- `A000078(n+3)*A020639(A001316(n))` -/
def P11574732058790183030.Spec : Prop :=
  ∀ n, P11574732058790183030.a n = A135492 n

end A135492

/-! ## A135492.P4038199015073454130

`A000078(n+3)*A020639(A234275(n))`
-/

namespace A135492.P4038199015073454130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) * A020639 (A234275 n).toNat

end

end A135492.P4038199015073454130

namespace A135492

/-- `A000078(n+3)*A020639(A234275(n))` -/
def P4038199015073454130.Spec : Prop :=
  ∀ n, P4038199015073454130.a n = A135492 n

end A135492

/-! ## A135492.P96703448825179353

`A000078(n+3)*A001227(A000040(n+1))`
-/

namespace A135492.P96703448825179353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) * A001227 (A000040 (n + 1)).toNat

end

end A135492.P96703448825179353

namespace A135492

/-- `A000078(n+3)*A001227(A000040(n+1))` -/
def P96703448825179353.Spec : Prop :=
  ∀ n, P96703448825179353.a n = A135492 n

end A135492

/-! ## A135492.P6291541799097345970

`A000078(n+3)*A020639(A006093(n+1))`
-/

namespace A135492.P6291541799097345970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) * A020639 (A006093 (n + 1)).toNat

end

end A135492.P6291541799097345970

namespace A135492

/-- `A000078(n+3)*A020639(A006093(n+1))` -/
def P6291541799097345970.Spec : Prop :=
  ∀ n, P6291541799097345970.a n = A135492 n

end A135492

/-! ## A135492.P13913691571717999280

`A000078(n+3)*A020639(A072978(n+1))`
-/

namespace A135492.P13913691571717999280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) * A020639 (A072978 (n + 1)).toNat

end

end A135492.P13913691571717999280

namespace A135492

/-- `A000078(n+3)*A020639(A072978(n+1))` -/
def P13913691571717999280.Spec : Prop :=
  ∀ n, P13913691571717999280.a n = A135492 n

end A135492

/-! ## A135492.P11400596321398500199

`A000078(n+3)*A348717(A020639(n+1))`
-/

namespace A135492.P11400596321398500199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) * A348717 (A020639 (n + 1)).toNat

end

end A135492.P11400596321398500199

namespace A135492

/-- `A000078(n+3)*A348717(A020639(n+1))` -/
def P11400596321398500199.Spec : Prop :=
  ∀ n, P11400596321398500199.a n = A135492 n

end A135492

/-!
# A135493: Number of ways to toss a coin n times and not get a run of six.

The programs for A135493, the canonical program `A135493.P54940314983461200` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135493 has offset 0).

The definition of A135493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135493.P54940314983461200

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135493

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P54940314983461200.Spec : Prop :=
  ∀ n, (P54940314983461200.a n : ℤ) = A135493 n

theorem P54940314983461200.correct : P54940314983461200.Spec := by
  intro n
  simp only [A135493]

end A135493

/-! ## A135493.P6721482297822670815

`A001591(n+4)*A043529(2*n)`
-/

namespace A135493.P6721482297822670815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 4) * A043529 (2 * n)

end

end A135493.P6721482297822670815

namespace A135493

/-- `A001591(n+4)*A043529(2*n)` -/
def P6721482297822670815.Spec : Prop :=
  ∀ n, P6721482297822670815.a n = A135493 n

end A135493

/-! ## A135493.P69261016993916494

`A001591(n+4)*A130130(comp[∑[n-1]])`
-/

namespace A135493.P69261016993916494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 4) * A130130 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A135493.P69261016993916494

namespace A135493

/-- `A001591(n+4)*A130130(comp[∑[n-1]])` -/
def P69261016993916494.Spec : Prop :=
  ∀ n, P69261016993916494.a n = A135493 n

end A135493

/-! ## A135493.P11710651381403248521

`A001222(A001747(n+1))*A001591(n+4)`
-/

namespace A135493.P11710651381403248521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001747 (n + 1)).toNat * A001591 (n + 4)

end

end A135493.P11710651381403248521

namespace A135493

/-- `A001222(A001747(n+1))*A001591(n+4)` -/
def P11710651381403248521.Spec : Prop :=
  ∀ n, P11710651381403248521.a n = A135493 n

end A135493

/-! ## A135493.P11707957301448611819

`A001227(A111239(n+1))*A001591(n+4)`
-/

namespace A135493.P11707957301448611819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A111239 (n + 1)).toNat * A001591 (n + 4)

end

end A135493.P11707957301448611819

namespace A135493

/-- `A001227(A111239(n+1))*A001591(n+4)` -/
def P11707957301448611819.Spec : Prop :=
  ∀ n, P11707957301448611819.a n = A135493 n

end A135493

/-!
# A135497: a(n) = n^5 - n^2.

The programs for A135497, the canonical program `A135497.P15522374803762714202` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135497 has offset 0).

The definition of A135497 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-n²` (program `A135497.P15522374803762714202`, by `A135497.P15522374803762714202.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135497.P15522374803762714202

`n^5-n²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135497

/-- `n^5-n²` -/
def P15522374803762714202.Spec : Prop :=
  ∀ n, P15522374803762714202.a n = A135497 n

theorem P15522374803762714202.correct : P15522374803762714202.Spec := by
  intro n
  simp only [A135497]

end A135497

/-! ## A135497.P17876385421375783001

`lcm(n-n²², n²)`
-/

namespace A135497.P17876385421375783001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - ((n ^ 2) ^ 2 : ℤ)) (n ^ 2 : ℤ)

end

end A135497.P17876385421375783001

namespace A135497

/-- `lcm(n-n²², n²)` -/
def P17876385421375783001.Spec : Prop :=
  ∀ n, (P17876385421375783001.a n : ℤ) = A135497 n

end A135497

/-! ## A135497.P6408684915528881621

`(Δ[C(n, 2)²]-1)*n²`
-/

namespace A135497.P6408684915528881621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1) * (n ^ 2 : ℤ)

end

end A135497.P6408684915528881621

namespace A135497

/-- `(Δ[C(n, 2)²]-1)*n²` -/
def P6408684915528881621.Spec : Prop :=
  ∀ n, P6408684915528881621.a n = A135497 n

end A135497

/-! ## A135497.P64382631051334782

`(n^4-n)*n%(n+1)`
-/

namespace A135497.P64382631051334782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 4 : ℤ) - (n : ℤ)) * ((n % (n + 1) : ℕ) : ℤ)

end

end A135497.P64382631051334782

namespace A135497

/-- `(n^4-n)*n%(n+1)` -/
def P64382631051334782.Spec : Prop :=
  ∀ n, P64382631051334782.a n = A135497 n

theorem P64382631051334782.correct : P64382631051334782.Spec := by
  intro n
  simp only [A135497, Nat.add_sub_cancel, A135497.P64382631051334782.a, A135497.P15522374803762714202.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A135497

/-! ## A135497.P5182223288820797921

`n*(gcd(n, 2*n)²²-n)`
-/

namespace A135497.P5182223288820797921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((Nat.gcd n (2 * n) ^ 2) ^ 2 : ℤ) - (n : ℤ))

end

end A135497.P5182223288820797921

namespace A135497

/-- `n*(gcd(n, 2*n)²²-n)` -/
def P5182223288820797921.Spec : Prop :=
  ∀ n, P5182223288820797921.a n = A135497 n

theorem P5182223288820797921.correct : P5182223288820797921.Spec := by
  intro n
  simp only [A135497, Nat.add_sub_cancel, A135497.P5182223288820797921.a, A135497.P15522374803762714202.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A135497

/-! ## A135497.P984189792484878757

`2*n*(∑[2*n]+1)*C(n, 2)`
-/

namespace A135497.P984189792484878757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * ((∑ j ∈ Finset.range (n + 1), f1 j + 1) * Nat.choose n 2)

end

end A135497.P984189792484878757

namespace A135497

/-- `2*n*(∑[2*n]+1)*C(n, 2)` -/
def P984189792484878757.Spec : Prop :=
  ∀ n, (P984189792484878757.a n : ℤ) = A135497 n

end A135497

/-! ## A135497.P5025147509802506404

`n*A058895(n)`
-/

namespace A135497.P5025147509802506404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A058895 n

end

end A135497.P5025147509802506404

namespace A135497

/-- `n*A058895(n)` -/
def P5025147509802506404.Spec : Prop :=
  ∀ n, P5025147509802506404.a n = A135497 n

end A135497

/-! ## A135497.P11335673919122020224

`(n-1)*A100019(n)`
-/

namespace A135497.P11335673919122020224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A100019 n

end

end A135497.P11335673919122020224

namespace A135497

/-- `(n-1)*A100019(n)` -/
def P11335673919122020224.Spec : Prop :=
  ∀ n, P11335673919122020224.a n = A135497 n

end A135497

/-! ## A135497.P16879948876250585205

`n*(A000583(n)-n)`
-/

namespace A135497.P16879948876250585205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000583 n - (n : ℤ))

end

end A135497.P16879948876250585205

namespace A135497

/-- `n*(A000583(n)-n)` -/
def P16879948876250585205.Spec : Prop :=
  ∀ n, P16879948876250585205.a n = A135497 n

end A135497

/-! ## A135497.P15776465835249049904

`(A000578(n)-1)*n²`
-/

namespace A135497.P15776465835249049904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n - 1) * (n ^ 2 : ℤ)

end

end A135497.P15776465835249049904

namespace A135497

/-- `(A000578(n)-1)*n²` -/
def P15776465835249049904.Spec : Prop :=
  ∀ n, P15776465835249049904.a n = A135497 n

end A135497

/-! ## A135497.P16840480786414774984

`2*(A101378(n)-n²)`
-/

namespace A135497.P16840480786414774984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A101378 n - (n ^ 2 : ℤ))

end

end A135497.P16840480786414774984

namespace A135497

/-- `2*(A101378(n)-n²)` -/
def P16840480786414774984.Spec : Prop :=
  ∀ n, P16840480786414774984.a n = A135497 n

end A135497

/-! ## A135497.P14068136614346947897

`n*(A000290(n)²-n)`
-/

namespace A135497.P14068136614346947897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000290 n ^ 2 - (n : ℤ))

end

end A135497.P14068136614346947897

namespace A135497

/-- `n*(A000290(n)²-n)` -/
def P14068136614346947897.Spec : Prop :=
  ∀ n, P14068136614346947897.a n = A135497 n

end A135497

/-! ## A135497.P16520251674041059491

`(n²-n)*A027444(n)`
-/

namespace A135497.P16520251674041059491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * A027444 n

end

end A135497.P16520251674041059491

namespace A135497

/-- `(n²-n)*A027444(n)` -/
def P16520251674041059491.Spec : Prop :=
  ∀ n, P16520251674041059491.a n = A135497 n

end A135497

/-! ## A135497.P9620255573145490251

`n*(A253909(n)²-n)`
-/

namespace A135497.P9620255573145490251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A253909 n ^ 2 - (n : ℤ))

end

end A135497.P9620255573145490251

namespace A135497

/-- `n*(A253909(n)²-n)` -/
def P9620255573145490251.Spec : Prop :=
  ∀ n, P9620255573145490251.a n = A135497 n

end A135497

/-! ## A135497.P606094793379307810

`n*(sqrt(A001016(n))-n)`
-/

namespace A135497.P606094793379307810
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (Real.sqrt (A001016 n : ℝ) - (n : ℝ))

end

end A135497.P606094793379307810

namespace A135497

/-- `n*(sqrt(A001016(n))-n)` -/
def P606094793379307810.Spec : Prop :=
  ∀ n, P606094793379307810.a n = (A135497 n : ℝ)

end A135497

/-! ## A135497.P13530929151539612876

`n*(A246767(n+1)+n)`
-/

namespace A135497.P13530929151539612876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A246767 (n + 1) + (n : ℤ))

end

end A135497.P13530929151539612876

namespace A135497

/-- `n*(A246767(n+1)+n)` -/
def P13530929151539612876.Spec : Prop :=
  ∀ n, P13530929151539612876.a n = A135497 n

end A135497

/-! ## A135497.P10143818201506646881

`n*(A002523(n)-(n+1))`
-/

namespace A135497.P10143818201506646881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002523 n - (n + 1 : ℤ))

end

end A135497.P10143818201506646881

namespace A135497

/-- `n*(A002523(n)-(n+1))` -/
def P10143818201506646881.Spec : Prop :=
  ∀ n, P10143818201506646881.a n = A135497 n

end A135497

/-! ## A135497.P12593135500841825007

`(n-1)*(A027445(n)-n)`
-/

namespace A135497.P12593135500841825007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (A027445 n - (n : ℤ))

end

end A135497.P12593135500841825007

namespace A135497

/-- `(n-1)*(A027445(n)-n)` -/
def P12593135500841825007.Spec : Prop :=
  ∀ n, P12593135500841825007.a n = A135497 n

end A135497

/-! ## A135497.P18069573269027646046

`(n-1)*(A053699(n)-(n+1))`
-/

namespace A135497.P18069573269027646046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (A053699 n - (n + 1 : ℤ))

end

end A135497.P18069573269027646046

namespace A135497

/-- `(n-1)*(A053699(n)-(n+1))` -/
def P18069573269027646046.Spec : Prop :=
  ∀ n, P18069573269027646046.a n = A135497 n

end A135497

/-! ## A135497.P11443452635438164120

`A001016(n)%A060891(n)`
-/

namespace A135497.P11443452635438164120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001016 n) (A060891 n)

end

end A135497.P11443452635438164120

namespace A135497

/-- `A001016(n)%A060891(n)` -/
def P11443452635438164120.Spec : Prop :=
  ∀ n, P11443452635438164120.a n = A135497 n

end A135497

/-!
# A135499: Numbers for which Sum_digits(odd positions) = Sum_digits(even positions).

The programs for A135499, the canonical program `A135499.P1507345973480139614` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135499 has offset 1).

The definition of A135499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135499.P1507345973480139614

`lt[lcm(n, A055017(n)), n]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135499

/-- `lt[lcm(n, A055017(n)), n]` -/
def P1507345973480139614.Spec : Prop :=
  ∀ n, (P1507345973480139614.a n : ℤ) = A135499 (n + 1)

theorem P1507345973480139614.correct : P1507345973480139614.Spec := by
  intro n
  simp only [A135499, Nat.add_sub_cancel]

end A135499

/-! ## A135499.P11714518577021101206

`lt[(n*A225693(n))², n]`
-/

namespace A135499.P11714518577021101206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A225693 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A135499.P11714518577021101206

namespace A135499

/-- `lt[(n*A225693(n))², n]` -/
def P11714518577021101206.Spec : Prop :=
  ∀ n, (P11714518577021101206.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P1078938894605331430

`eq[A000007(n), A055017(n)]`
-/

namespace A135499.P1078938894605331430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P1078938894605331430

namespace A135499

/-- `eq[A000007(n), A055017(n)]` -/
def P1078938894605331430.Spec : Prop :=
  ∀ n, (P1078938894605331430.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P10636754349547777574

`eq[A000038(n), A055017(n)]`
-/

namespace A135499.P10636754349547777574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P10636754349547777574

namespace A135499

/-- `eq[A000038(n), A055017(n)]` -/
def P10636754349547777574.Spec : Prop :=
  ∀ n, (P10636754349547777574.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P10684104718975953465

`eq[A045534(n), A055017(n)]`
-/

namespace A135499.P10684104718975953465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P10684104718975953465

namespace A135499

/-- `eq[A045534(n), A055017(n)]` -/
def P10684104718975953465.Spec : Prop :=
  ∀ n, (P10684104718975953465.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P14726812372944223930

`eq[A055017(n), A066156(n)]`
-/

namespace A135499.P14726812372944223930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P14726812372944223930

namespace A135499

/-- `eq[A055017(n), A066156(n)]` -/
def P14726812372944223930.Spec : Prop :=
  ∀ n, (P14726812372944223930.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P7269405263129940876

`eq[A055017(n), A130706(n)]`
-/

namespace A135499.P7269405263129940876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P7269405263129940876

namespace A135499

/-- `eq[A055017(n), A130706(n)]` -/
def P7269405263129940876.Spec : Prop :=
  ∀ n, (P7269405263129940876.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P17069394735851202215

`eq[A055017(n), A130713(n)]`
-/

namespace A135499.P17069394735851202215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P17069394735851202215

namespace A135499

/-- `eq[A055017(n), A130713(n)]` -/
def P17069394735851202215.Spec : Prop :=
  ∀ n, (P17069394735851202215.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P14614453405278338499

`eq[A055017(n), A143645(n)]`
-/

namespace A135499.P14614453405278338499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P14614453405278338499

namespace A135499

/-- `eq[A055017(n), A143645(n)]` -/
def P14614453405278338499.Spec : Prop :=
  ∀ n, (P14614453405278338499.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P13822828153517583115

`eq[A055017(n), A143721(n)]`
-/

namespace A135499.P13822828153517583115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P13822828153517583115

namespace A135499

/-- `eq[A055017(n), A143721(n)]` -/
def P13822828153517583115.Spec : Prop :=
  ∀ n, (P13822828153517583115.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P3083833740869489375

`eq[A055017(n), A143722(n)]`
-/

namespace A135499.P3083833740869489375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P3083833740869489375

namespace A135499

/-- `eq[A055017(n), A143722(n)]` -/
def P3083833740869489375.Spec : Prop :=
  ∀ n, (P3083833740869489375.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P7688429136955021820

`eq[A055017(n), A143723(n)]`
-/

namespace A135499.P7688429136955021820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P7688429136955021820

namespace A135499

/-- `eq[A055017(n), A143723(n)]` -/
def P7688429136955021820.Spec : Prop :=
  ∀ n, (P7688429136955021820.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P4036041544826970716

`eq[A055017(n), A143737(n)]`
-/

namespace A135499.P4036041544826970716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P4036041544826970716

namespace A135499

/-- `eq[A055017(n), A143737(n)]` -/
def P4036041544826970716.Spec : Prop :=
  ∀ n, (P4036041544826970716.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P16544521098090761280

`eq[A055017(n), A143741(n)]`
-/

namespace A135499.P16544521098090761280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P16544521098090761280

namespace A135499

/-- `eq[A055017(n), A143741(n)]` -/
def P16544521098090761280.Spec : Prop :=
  ∀ n, (P16544521098090761280.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P6556175890782374100

`eq[A000007(n), A225693(n)]`
-/

namespace A135499.P6556175890782374100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P6556175890782374100

namespace A135499

/-- `eq[A000007(n), A225693(n)]` -/
def P6556175890782374100.Spec : Prop :=
  ∀ n, (P6556175890782374100.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P16334440905683875888

`eq[A000038(n), A225693(n)]`
-/

namespace A135499.P16334440905683875888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P16334440905683875888

namespace A135499

/-- `eq[A000038(n), A225693(n)]` -/
def P16334440905683875888.Spec : Prop :=
  ∀ n, (P16334440905683875888.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P17732851204037970091

`eq[A055017(n), A173245(n)]`
-/

namespace A135499.P17732851204037970091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P17732851204037970091

namespace A135499

/-- `eq[A055017(n), A173245(n)]` -/
def P17732851204037970091.Spec : Prop :=
  ∀ n, (P17732851204037970091.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P4523299661483734990

`eq[A033324(n+1), A055017(n)]`
-/

namespace A135499.P4523299661483734990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P4523299661483734990

namespace A135499

/-- `eq[A033324(n+1), A055017(n)]` -/
def P4523299661483734990.Spec : Prop :=
  ∀ n, (P4523299661483734990.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P7071503901148180967

`eq[A033325(n+1), A055017(n)]`
-/

namespace A135499.P7071503901148180967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P7071503901148180967

namespace A135499

/-- `eq[A033325(n+1), A055017(n)]` -/
def P7071503901148180967.Spec : Prop :=
  ∀ n, (P7071503901148180967.a n : ℤ) = A135499 (n + 1)

end A135499

/-! ## A135499.P4699257760559954204

`eq[A033329(n+1), A055017(n)]`
-/

namespace A135499.P4699257760559954204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135499.P4699257760559954204

namespace A135499

/-- `eq[A033329(n+1), A055017(n)]` -/
def P4699257760559954204.Spec : Prop :=
  ∀ n, (P4699257760559954204.a n : ℤ) = A135499 (n + 1)

end A135499

