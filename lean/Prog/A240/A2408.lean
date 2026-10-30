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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
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
import Seq.B001.C014
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A240800: Total number of occurrences of the pattern 1<2<3 in all preferential arrangements (or ordered partitions) of n elements.

The programs for A240800, there is no canonical definition to state claims against.
-/

/-! ## A240800.P8742926987775318517

`xor(2, A198684(n!))`
-/

namespace A240800.P8742926987775318517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A198684 (Nat.factorial n))

end

end A240800.P8742926987775318517

/-!
# A240801: Triangle read by rows: T(n,k) (n>=2, 0 <= k <= n-2) = number of possible topologies with n given vertices and n-k-2 Steiner points.

The programs for A240801, there is no canonical definition to state claims against.
-/

/-! ## A240801.P15877570022506917010

`(2*row(n)-(col(n)+1))*T(n-1,k)+(3*row(n)+2-2*col(n))*T(n-1,k-1)` with `a(0)=1`
-/

namespace A240801.P15877570022506917010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ)) * SequenceMachineLib.triUp a n + ((3 * SequenceMachineLib.triRow n + 2 : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triUpLeft a n

end

end A240801.P15877570022506917010

/-! ## A240801.P11967635230480067142

`A193229(n)*A209518(n)`
-/

namespace A240801.P11967635230480067142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193229 n * A209518 n

end

end A240801.P11967635230480067142

/-! ## A240801.P16926430259419052873

`A001497(n)*A181511(A014132(n+1))`
-/

namespace A240801.P16926430259419052873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n * A181511 (A014132 (n + 1)).toNat

end

end A240801.P16926430259419052873

/-! ## A240801.P13104592294269272858

`A074909(A007401(n+1))*A193229(n)`
-/

namespace A240801.P13104592294269272858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A007401 (n + 1)).toNat * A193229 n

end

end A240801.P13104592294269272858

/-! ## A240801.P6175879237849686165

`A001498(A061579(n))*A181511(A014132(n+1))`
-/

namespace A240801.P6175879237849686165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A061579 n).toNat * A181511 (A014132 (n + 1)).toNat

end

end A240801.P6175879237849686165

/-!
# A240803: a(n) = 2 + product of first n odd primes.

The programs for A240803, there is no canonical definition to state claims against.
-/

/-! ## A240803.P13067588717971613723

`∏[p?[Δ[n²]]]+2`
-/

namespace A240803.P13067588717971613723
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A240803.P13067588717971613723

/-! ## A240803.P13324185543417219983

`A071554(2+n)+1`
-/

namespace A240803.P13324185543417219983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071554 (2 + n) + 1

end

end A240803.P13324185543417219983

/-! ## A240803.P14052276234435372326

`A135249(n+2)+1`
-/

namespace A240803.P14052276234435372326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135249 (n + 2) + 1

end

end A240803.P14052276234435372326

/-! ## A240803.P18095615291135731084

`A070826(n+2)+2`
-/

namespace A240803.P18095615291135731084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 2) + 2

end

end A240803.P18095615291135731084

/-! ## A240803.P5259695991149458498

`A240804(n+1)+4`
-/

namespace A240803.P5259695991149458498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240804 (n + 1) + 4

end

end A240803.P5259695991149458498

/-! ## A240803.P1204577964317353603

`A098012(∑[n+2])+2`
-/

namespace A240803.P1204577964317353603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098012 (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A240803.P1204577964317353603

/-! ## A240803.P15130298175582483712

`∏[A065091(n+1)]+2`
-/

namespace A240803.P15130298175582483712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A240803.P15130298175582483712

/-! ## A240803.P15948783632537346517

`∏[A000040(n+2)]+2`
-/

namespace A240803.P15948783632537346517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A240803.P15948783632537346517

/-! ## A240803.P12838270014014520968

`∏[A006005(n+2)]+2`
-/

namespace A240803.P12838270014014520968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A240803.P12838270014014520968

/-! ## A240803.P3334123883545130031

`∏[A095320(n+2)]+2`
-/

namespace A240803.P3334123883545130031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095320 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A240803.P3334123883545130031

/-!
# A240804: a(n) = -2 + product of first n odd primes.

The programs for A240804, the canonical program `A240804.P4925870377936776396` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240804 has offset 1).

The definition of A240804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240804.P4925870377936776396

`A070826(n+2)-2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A240804

/-- `A070826(n+2)-2` -/
def P4925870377936776396.Spec : Prop :=
  ∀ n, P4925870377936776396.a n = A240804 (n + 1)

theorem P4925870377936776396.correct : P4925870377936776396.Spec := by
  intro n
  simp only [A240804, Nat.add_sub_cancel]

end A240804

/-! ## A240804.P17137050810474194113

`∏[p?[2*n+1]]-2`
-/

namespace A240804.P17137050810474194113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A240804.P17137050810474194113

namespace A240804

/-- `∏[p?[2*n+1]]-2` -/
def P17137050810474194113.Spec : Prop :=
  ∀ n, P17137050810474194113.a n = A240804 (n + 1)

end A240804

/-! ## A240804.P32370049493040859

`A071554(n+2)-3`
-/

namespace A240804.P32370049493040859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071554 (n + 2) - 3

end

end A240804.P32370049493040859

namespace A240804

/-- `A071554(n+2)-3` -/
def P32370049493040859.Spec : Prop :=
  ∀ n, P32370049493040859.a n = A240804 (n + 1)

end A240804

/-! ## A240804.P422213162865068185

`A135249(n+2)-3`
-/

namespace A240804.P422213162865068185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135249 (n + 2) - 3

end

end A240804.P422213162865068185

namespace A240804

/-- `A135249(n+2)-3` -/
def P422213162865068185.Spec : Prop :=
  ∀ n, P422213162865068185.a n = A240804 (n + 1)

theorem P422213162865068185.correct : P422213162865068185.Spec := by
  intro n
  simp only [A240804, Nat.add_sub_cancel, A240804.P422213162865068185.a, A240804.P4925870377936776396.a, A070826, A070826.P17587218534478786378.a, A135249, A135249.P6172404458566147260.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240804

/-! ## A240804.P12108891283358668737

`A240803(n+1)-4`
-/

namespace A240804.P12108891283358668737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240803 (n + 1) - 4

end

end A240804.P12108891283358668737

namespace A240804

/-- `A240803(n+1)-4` -/
def P12108891283358668737.Spec : Prop :=
  ∀ n, P12108891283358668737.a n = A240804 (n + 1)

end A240804

/-! ## A240804.P5847001954111443495

`A098012(∑[n+2])-2`
-/

namespace A240804.P5847001954111443495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098012 (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A240804.P5847001954111443495

namespace A240804

/-- `A098012(∑[n+2])-2` -/
def P5847001954111443495.Spec : Prop :=
  ∀ n, P5847001954111443495.a n = A240804 (n + 1)

end A240804

/-! ## A240804.P7765582559525129407

`∏[A065091(n+1)]-2`
-/

namespace A240804.P7765582559525129407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 2

end

end A240804.P7765582559525129407

namespace A240804

/-- `∏[A065091(n+1)]-2` -/
def P7765582559525129407.Spec : Prop :=
  ∀ n, P7765582559525129407.a n = A240804 (n + 1)

end A240804

/-! ## A240804.P4329245249212483805

`∏[A000040(n+2)]-2`
-/

namespace A240804.P4329245249212483805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 2

end

end A240804.P4329245249212483805

namespace A240804

/-- `∏[A000040(n+2)]-2` -/
def P4329245249212483805.Spec : Prop :=
  ∀ n, P4329245249212483805.a n = A240804 (n + 1)

end A240804

/-! ## A240804.P10560090382190385497

`∏[A006005(n+2)]-2`
-/

namespace A240804.P10560090382190385497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 2

end

end A240804.P10560090382190385497

namespace A240804

/-- `∏[A006005(n+2)]-2` -/
def P10560090382190385497.Spec : Prop :=
  ∀ n, P10560090382190385497.a n = A240804 (n + 1)

end A240804

/-! ## A240804.P16156741405686514434

`A065917(A005521(n+1))-2`
-/

namespace A240804.P16156741405686514434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065917 (A005521 (n + 1)).toNat - 2

end

end A240804.P16156741405686514434

namespace A240804

/-- `A065917(A005521(n+1))-2` -/
def P16156741405686514434.Spec : Prop :=
  ∀ n, P16156741405686514434.a n = A240804 (n + 1)

end A240804

/-!
# A240805: Coefficients in expansion of graph zeta function for complete graph K_4.

The programs for A240805, the canonical program `A240805.P3633091182660678377` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240805 has offset 0).

The definition of A240805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240805.P3633091182660678377

`ogf(1/(1-8x^3-6x^4+16x^6+24x^7-3x^8-16x^9-24x^10+16x^12))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240805

/-- `ogf(1/(1-8x^3-6x^4+16x^6+24x^7-3x^8-16x^9-24x^10+16x^12))` -/
def P3633091182660678377.Spec : Prop :=
  ∀ n, P3633091182660678377.a n = A240805 n

theorem P3633091182660678377.correct : P3633091182660678377.Spec := by
  intro n
  simp only [A240805]

end A240805

/-!
# A240806: Coefficients in expansion of graph zeta function of graph obtained by adding 4 vertices to each edge of K_5.

The programs for A240806, the canonical program `A240806.P10006289672130988510` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240806 has offset 0).

The definition of A240806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240806.P10006289672130988510

`ogf(1/(1-3x-3x^2+6x^3+9x^4+15x^5-35x^6-60x^7+75x^8+75x^9-81x^10-42x^11+43x^12+9x^13-9x^14))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240806

/-- `ogf(1/(1-3x-3x^2+6x^3+9x^4+15x^5-35x^6-60x^7+75x^8+75x^9-81x^10-42x^11+43x^12+9x^13-9x^14))` -/
def P10006289672130988510.Spec : Prop :=
  ∀ n, P10006289672130988510.a n = A240806 n

theorem P10006289672130988510.correct : P10006289672130988510.Spec := by
  intro n
  simp only [A240806]

end A240806

/-! ## A240806.P6154445001654451704

`A321098(a(n-1))+3*a(n-1)` with `a(0)=1`
-/

namespace A240806.P6154445001654451704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A321098 (a (n - 1)).toNat + 3 * a (n - 1)

end

end A240806.P6154445001654451704

namespace A240806

/-- `A321098(a(n-1))+3*a(n-1)` -/
def P6154445001654451704.Spec : Prop :=
  ∀ n, P6154445001654451704.a n = A240806 n

end A240806

/-!
# A240807: a(0)=a(1)=-1, a(2)=2; thereafter a(n) = a(n-1-a(n-1))+a(n-2-a(n-2)) unless a(n-1) <= n-1 or a(n-2) <= n-2 in which case the sequence terminates.

The programs for A240807, the canonical program `A240807.P10307215821411149409` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240807 has offset 0).

The definition of A240807 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1-a(n-1))+a(n-2-a(n-2))` (program `A240807.P10307215821411149409`, by `A240807.P10307215821411149409.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240807.P10307215821411149409

`a(n-1-a(n-1))+a(n-2-a(n-2))` with `a(0)=-1, a(1)=-1, a(2)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240807

/-- `a(n-1-a(n-1))+a(n-2-a(n-2))` -/
def P10307215821411149409.Spec : Prop :=
  ∀ n, P10307215821411149409.a n = A240807 n

theorem P10307215821411149409.correct : P10307215821411149409.Spec := by
  intro n
  simp only [A240807]

end A240807

/-!
# A240808: a(0)=2, a(1)=1, a(2)=0; thereafter a(n) = a(n-1-a(n-1))+a(n-2-a(n-2)) unless a(n-1) <= n-1 or a(n-2) <= n-2 in which case the sequence terminates.

The programs for A240808, the canonical program `A240808.P15554247379694580151` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240808 has offset 0).

The definition of A240808 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1-a(n-1))+a(n-2-a(n-2))` (program `A240808.P15554247379694580151`, by `A240808.P15554247379694580151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240808.P15554247379694580151

`a(n-1-a(n-1))+a(n-2-a(n-2))` with `a(0)=2, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240808

/-- `a(n-1-a(n-1))+a(n-2-a(n-2))` -/
def P15554247379694580151.Spec : Prop :=
  ∀ n, (P15554247379694580151.a n : ℤ) = A240808 n

theorem P15554247379694580151.correct : P15554247379694580151.Spec := by
  intro n
  simp only [A240808]

end A240808

/-! ## A240808.P9995282414434167491

`∑[A061347(5*C(∑[n]+3, 2)/3-4)+1]`
-/

namespace A240808.P9995282414434167491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (SequenceMachineLib.roundAway (5 * ((Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 3) 2 : ℚ) / 3) - 4)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240808.P9995282414434167491

namespace A240808

/-- `∑[A061347(5*C(∑[n]+3, 2)/3-4)+1]` -/
def P9995282414434167491.Spec : Prop :=
  ∀ n, P9995282414434167491.a n = A240808 n

end A240808

/-! ## A240808.P17041358245135375702

`∑[A328049(A048288(A017053(n)))]`
-/

namespace A240808.P17041358245135375702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (A048288 (A017053 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240808.P17041358245135375702

namespace A240808

/-- `∑[A328049(A048288(A017053(n)))]` -/
def P17041358245135375702.Spec : Prop :=
  ∀ n, P17041358245135375702.a n = A240808 n

end A240808

/-! ## A240808.P6029332113126362650

`A027615(A055258(n))-A027615(n)`
-/

namespace A240808.P6029332113126362650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (A055258 n).toNat - A027615 n

end

end A240808.P6029332113126362650

namespace A240808

/-- `A027615(A055258(n))-A027615(n)` -/
def P6029332113126362650.Spec : Prop :=
  ∀ n, P6029332113126362650.a n = A240808 n

end A240808

/-!
# A240809: a(n) = n for 1 <= n <= 4; thereafter a(n) = a(n - a(n-2)) + a(n - a(n-4)).

The programs for A240809, the canonical program `A240809.P14894625225765804710` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240809 has offset 1).

The definition of A240809 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+a(n-a(n-4))` (program `A240809.P14894625225765804710`, by `A240809.P14894625225765804710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240809.P14894625225765804710

`a(n-a(n-2))+a(n-a(n-4))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240809

/-- `a(n-a(n-2))+a(n-a(n-4))` -/
def P14894625225765804710.Spec : Prop :=
  ∀ n, (P14894625225765804710.a n : ℤ) = A240809 (n + 1)

theorem P14894625225765804710.correct : P14894625225765804710.Spec := by
  intro n
  simp only [A240809, Nat.add_sub_cancel]

end A240809

/-!
# A240810: a(n) = index of first nonexisting term of the meta-Fibonacci sequence {f(1) = ... = f(n) = 1; f(k)=f(k-f(k-1))+f(k-f(k-n))} if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A240810, there is no canonical definition to state claims against.
-/

/-! ## A240810.P2142600595820010728

`A153152(A134680(n+1))`
-/

namespace A240810.P2142600595820010728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A134680 (n + 1)).toNat

end

end A240810.P2142600595820010728

/-! ## A240810.P4468609499747565654

`A326178(A240813(∑[n]+1))`
-/

namespace A240810.P4468609499747565654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A240813 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A240810.P4468609499747565654

/-! ## A240810.P17270079243050860840

`A028253(A134680(n+1)+1)`
-/

namespace A240810.P17270079243050860840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (A134680 (n + 1) + 1).toNat

end

end A240810.P17270079243050860840

/-! ## A240810.P12916428442398479213

`A087156(A134680(n+1)+1)`
-/

namespace A240810.P12916428442398479213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A134680 (n + 1) + 1).toNat

end

end A240810.P12916428442398479213

/-! ## A240810.P13217131497509923593

`A184985(A134680(n+1)+1)`
-/

namespace A240810.P13217131497509923593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A134680 (n + 1) + 1).toNat

end

end A240810.P13217131497509923593

/-!
# A240811: a(n) = length (or lifetime) of the meta-Fibonacci sequence f(1) = ... = f(n) = 1; f(k)=f(k-f(k-2))+f(k-f(k-n)) if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A240811, there is no canonical definition to state claims against.
-/

/-! ## A240811.P2575537902743635195

`A240813(∑[n+1]+2)`
-/

namespace A240811.P2575537902743635195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240813 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240811.P2575537902743635195

/-! ## A240811.P14152958990455264120

`char[2]+A240814(n+2)-1`
-/

namespace A240811.P14152958990455264120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A240814 (n + 2) - 1)

end

end A240811.P14152958990455264120

/-! ## A240811.P869085359128909900

`A143051(A240814(n+2))`
-/

namespace A240811.P869085359128909900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A240814 (n + 2)).toNat

end

end A240811.P869085359128909900

/-! ## A240811.P13992880125883567779

`A289207(A240814(n+2)+1)`
-/

namespace A240811.P13992880125883567779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A240814 (n + 2) + 1).toNat

end

end A240811.P13992880125883567779

/-! ## A240811.P1327644015271508786

`A240814(n+2)-A267936(n)`
-/

namespace A240811.P1327644015271508786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240814 (n + 2) - A267936 n

end

end A240811.P1327644015271508786

/-!
# A240812: a(n) = length (or lifetime) of the meta-Fibonacci sequence f(1) = ... = f(n) = 1; f(k)=f(k-f(k-3))+f(k-f(k-n)) if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A240812, there is no canonical definition to state claims against.
-/

/-! ## A240812.P3535811341876235452

`A240813(∑[n+2]+4)`
-/

namespace A240812.P3535811341876235452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240813 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240812.P3535811341876235452

/-! ## A240812.P3613459373552239001

`or(char[2], A240813(A167614(n+1)))`
-/

namespace A240812.P3613459373552239001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240813 (A167614 (n + 1)).toNat)

end

end A240812.P3613459373552239001

/-! ## A240812.P5952045571768874449

`or(char[2], A240813(A055998(n)+6))`
-/

namespace A240812.P5952045571768874449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240813 (A055998 n + 6).toNat)

end

end A240812.P5952045571768874449

/-! ## A240812.P9088973444783986998

`A240813(A167614(n+1))+A000007(n+1)`
-/

namespace A240812.P9088973444783986998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240813 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A240812.P9088973444783986998

/-! ## A240812.P15431087990092235716

`A240813(A167614(n+1))+A000035(2*n)`
-/

namespace A240812.P15431087990092235716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240813 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A240812.P15431087990092235716

/-! ## A240812.P5400031428657177683

`A000034(2*n)*A240813(A167614(n+1))`
-/

namespace A240812.P5400031428657177683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A240813 (A167614 (n + 1)).toNat

end

end A240812.P5400031428657177683

/-! ## A240812.P16318093434882997104

`A007318(C(2, n))*A240813(A167614(n+1))`
-/

namespace A240812.P16318093434882997104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A240813 (A167614 (n + 1)).toNat

end

end A240812.P16318093434882997104

/-! ## A240812.P14970224669504513745

`A014963(6*(n+1))*A240813(A167614(n+1))`
-/

namespace A240812.P14970224669504513745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A240813 (A167614 (n + 1)).toNat

end

end A240812.P14970224669504513745

/-! ## A240812.P5366620935245876742

`A240813(A167614(n+1))+val(A000040(n+1), 4)`
-/

namespace A240812.P5366620935245876742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240813 (A167614 (n + 1)).toNat + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 4 : ℤ)

end

end A240812.P5366620935245876742

/-! ## A240812.P2568394665651352875

`and(1, A000040(n+2))*A240813(A167614(n+1))`
-/

namespace A240812.P2568394665651352875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 2)) * A240813 (A167614 (n + 1)).toNat

end

end A240812.P2568394665651352875

/-! ## A240812.P13127615324013214017

`A240813(A167614(n+1))+A000122(p?[2*n+1])`
-/

namespace A240812.P13127615324013214017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240813 (A167614 (n + 1)).toNat + A000122 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A240812.P13127615324013214017

/-! ## A240812.P7365118848408156300

`n+1+A240813(A167614(n+1))+A001478(n+1)`
-/

namespace A240812.P7365118848408156300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A240813 (A167614 (n + 1)).toNat + A001478 (n + 1))

end

end A240812.P7365118848408156300

/-! ## A240812.P15881691832551006096

`A240813(A167614(n+1))+val(A000010(n+2), n+2)`
-/

namespace A240812.P15881691832551006096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240813 (A167614 (n + 1)).toNat + (SequenceMachineLib.valuation (A000010 (n + 2)).toNat (n + 2) : ℤ)

end

end A240812.P15881691832551006096

/-! ## A240812.P9279566383164516950

`A007318(A000217(n))*A240813(A167614(n+1))`
-/

namespace A240812.P9279566383164516950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A240813 (A167614 (n + 1)).toNat

end

end A240812.P9279566383164516950

/-! ## A240812.P18015958902544333185

`A001221(A020484(n))*A240813(A167614(n+1))`
-/

namespace A240812.P18015958902544333185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A020484 n).toNat * A240813 (A167614 (n + 1)).toNat

end

end A240812.P18015958902544333185

/-! ## A240812.P17658628103166447467

`A008683(A006881(n+1))*A240813(A167614(n+1))`
-/

namespace A240812.P17658628103166447467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006881 (n + 1)).toNat * A240813 (A167614 (n + 1)).toNat

end

end A240812.P17658628103166447467

/-!
# A240813: Triangle read by rows: T(n,k) (n >= 1, 1 <= k <= n) = length (or lifetime) of the meta-Fibonacci sequence f(1) = ... = f(n) = 1; f(i)=f(i-f(i-k))+f(i-f(i-n)) if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A240813, there is no canonical definition to state claims against.
-/

/-! ## A240813.P15659362681394227806

`round(sqrt(A240816(n+1)²+1))-1`
-/

namespace A240813.P15659362681394227806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A240816 (n + 1) ^ 2 + 1 : ℝ)) - 1

end

end A240813.P15659362681394227806

/-! ## A240813.P10322967905948241368

`A143051(A240816(n+1))`
-/

namespace A240813.P10322967905948241368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A240816 (n + 1)).toNat

end

end A240813.P10322967905948241368

/-! ## A240813.P11695390941506342078

`A289207(A240816(n+1)+1)`
-/

namespace A240813.P11695390941506342078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A240816 (n + 1) + 1).toNat

end

end A240813.P11695390941506342078

/-! ## A240813.P11843716639308928550

`A028253(abs(1-A240816(n+1)))`
-/

namespace A240813.P11843716639308928550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 |1 - A240816 (n + 1)|.toNat

end

end A240813.P11843716639308928550

/-! ## A240813.P4676343717306114145

`A087156(abs(1-A240816(n+1)))`
-/

namespace A240813.P4676343717306114145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 |1 - A240816 (n + 1)|.toNat

end

end A240813.P4676343717306114145

/-!
# A240814: a(n) = index of first nonexisting term of the meta-Fibonacci sequence {f(1) = ... = f(n) = 1; f(k)=f(k-f(k-2))+f(k-f(k-n))} if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A240814, there is no canonical definition to state claims against.
-/

/-! ## A240814.P10317325018146185265

`A240811(n+2)+1-char[2]`
-/

namespace A240814.P10317325018146185265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240811 (n + 2) + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A240814.P10317325018146185265

/-! ## A240814.P9071728835372020506

`A326178(A240811(n+2))`
-/

namespace A240814.P9071728835372020506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A240811 (n + 2)).toNat

end

end A240814.P9071728835372020506

/-! ## A240814.P5695725422339665672

`A028253(A240811(n+2)+1)`
-/

namespace A240814.P5695725422339665672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (A240811 (n + 2) + 1).toNat

end

end A240814.P5695725422339665672

/-! ## A240814.P1085961231461843156

`A087156(A240811(n+2)+1)`
-/

namespace A240814.P1085961231461843156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A240811 (n + 2) + 1).toNat

end

end A240814.P1085961231461843156

/-! ## A240814.P17438422614294480935

`A184985(A240811(n+2)+1)`
-/

namespace A240814.P17438422614294480935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A240811 (n + 2) + 1).toNat

end

end A240814.P17438422614294480935

/-!
# A240815: a(n) = index of first nonexisting term of the meta-Fibonacci sequence {f(1) = ... = f(n) = 1; f(k)=f(k-f(k-3))+f(k-f(k-n))} if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A240815, there is no canonical definition to state claims against.
-/

/-! ## A240815.P3014425660108676937

`A240812(n+3)+1`
-/

namespace A240815.P3014425660108676937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240812 (n + 3) + 1

end

end A240815.P3014425660108676937

/-! ## A240815.P13104608245243649664

`A240813(∑[n+2]+4)+1`
-/

namespace A240815.P13104608245243649664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240813 (∑ j ∈ Finset.range (n + 1), f1 j + 4) + 1

end

end A240815.P13104608245243649664

/-! ## A240815.P5604328919158256167

`A020725(A240812(n+3))`
-/

namespace A240815.P5604328919158256167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A240812 (n + 3)).toNat

end

end A240815.P5604328919158256167

/-! ## A240815.P773497248933219416

`A020725(A240813(∑[n+2]+4))`
-/

namespace A240815.P773497248933219416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A240813 (∑ j ∈ Finset.range (n + 1), f1 j + 4)).toNat

end

end A240815.P773497248933219416

/-! ## A240815.P13122509915059353137

`abs(1-A240813(A167614(n+1)))+2`
-/

namespace A240815.P13122509915059353137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A240813 (A167614 (n + 1)).toNat| + 2

end

end A240815.P13122509915059353137

/-!
# A240816: Triangle read by rows: T(n,k) (n >= 1, 1 <= k <= n) = index of first nonexisting term of the meta-Fibonacci sequence {f(1) = ... = f(n) = 1; f(i)=f(i-f(i-k))+f(i-f(i-n))} if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A240816, there is no canonical definition to state claims against.
-/

/-! ## A240816.P16809836044453172547

`A326178(A240813(n+1))`
-/

namespace A240816.P16809836044453172547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A240813 (n + 1)).toNat

end

end A240816.P16809836044453172547

/-! ## A240816.P13659416866037832961

`A028253(A240813(n+1)+1)`
-/

namespace A240816.P13659416866037832961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (A240813 (n + 1) + 1).toNat

end

end A240816.P13659416866037832961

/-! ## A240816.P15414107189491170580

`A087156(A240813(n+1)+1)`
-/

namespace A240816.P15414107189491170580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A240813 (n + 1) + 1).toNat

end

end A240816.P15414107189491170580

/-! ## A240816.P6058168414750070488

`A184985(A240813(n+1)+1)`
-/

namespace A240816.P6058168414750070488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A240813 (n + 1) + 1).toNat

end

end A240816.P6058168414750070488

/-! ## A240816.P17494530703961806618

`A199969(A240813(n+1)+2)`
-/

namespace A240816.P17494530703961806618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A240813 (n + 1) + 2).toNat

end

end A240816.P17494530703961806618

/-!
# A240818: a(n) = length (or lifetime) of the meta-Fibonacci sequence f(k) = k for k <= n; f(k)=f(k-f(k-1))+f(k-f(k-n)) if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A240818, there is no canonical definition to state claims against.
-/

/-! ## A240818.P14414821114657693621

`A240821(∑[n]+1)`
-/

namespace A240818.P14414821114657693621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240821 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240818.P14414821114657693621

/-! ## A240818.P13514392918177500407

`or(char[5], A240821(A000124(n)))`
-/

namespace A240818.P13514392918177500407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240821 (A000124 n).toNat)

end

end A240818.P13514392918177500407

/-! ## A240818.P11565584921951692621

`A240821(A000124(n))%A017224(n)`
-/

namespace A240818.P11565584921951692621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240821 (A000124 n).toNat) (A017224 n)

end

end A240818.P11565584921951692621

/-! ## A240818.P4667832142890866962

`A240821(A000124(n))+A000007(n+1)`
-/

namespace A240818.P4667832142890866962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240821 (A000124 n).toNat + A000007 (n + 1)

end

end A240818.P4667832142890866962

/-! ## A240818.P6198414242821140044

`A000034(2*n)*A240821(A000124(n))`
-/

namespace A240818.P6198414242821140044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A240821 (A000124 n).toNat

end

end A240818.P6198414242821140044

/-! ## A240818.P8724283902719850703

`A000041(C(2, n))*A240821(A000124(n))`
-/

namespace A240818.P8724283902719850703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A240821 (A000124 n).toNat

end

end A240818.P8724283902719850703

/-! ## A240818.P4954349865038698776

`A007318(C(2, n))*A240821(A000124(n))`
-/

namespace A240818.P4954349865038698776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A240821 (A000124 n).toNat

end

end A240818.P4954349865038698776

/-! ## A240818.P1960267267778927283

`gcd(73, A007318(n))*A240821(A000124(n))`
-/

namespace A240818.P1960267267778927283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 73 (A007318 n) : ℤ) * A240821 (A000124 n).toNat

end

end A240818.P1960267267778927283

/-! ## A240818.P2239572638683621603

`A014963(6*(n+1))*A240821(A000124(n))`
-/

namespace A240818.P2239572638683621603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A240821 (A000124 n).toNat

end

end A240818.P2239572638683621603

/-! ## A240818.P5212048785756127935

`A240821(A000124(n))+A008683(12*(n+1))`
-/

namespace A240818.P5212048785756127935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240821 (A000124 n).toNat + A008683 (12 * (n + 1))

end

end A240818.P5212048785756127935

/-! ## A240818.P2816855174724263337

`A000040(n+2)%2*A240821(A000124(n))`
-/

namespace A240818.P2816855174724263337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A240821 (A000124 n).toNat

end

end A240818.P2816855174724263337

/-! ## A240818.P5724961337458007511

`A240821(A000124(n))*A287091(A001222(n+1))`
-/

namespace A240818.P5724961337458007511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240821 (A000124 n).toNat * A287091 (A001222 (n + 1)).toNat

end

end A240818.P5724961337458007511

/-! ## A240818.P11545710910252011412

`A240821(A000124(n))/A014963(C(n+2, 2))`
-/

namespace A240818.P11545710910252011412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240821 (A000124 n).toNat : ℚ) / (A014963 (Nat.choose (n + 2) 2) : ℚ)

end

end A240818.P11545710910252011412

/-!
# A240819: a(n) = length (or lifetime) of the meta-Fibonacci sequence f(k) = k for k <= n; f(k)=f(k-f(k-2))+f(k-f(k-n)) if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A240819, there is no canonical definition to state claims against.
-/

/-! ## A240819.P17664607639133852612

`A240821(∑[n+1]+2)`
-/

namespace A240819.P17664607639133852612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240821 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240819.P17664607639133852612

/-! ## A240819.P10825778588773727613

`or(char[1], A240821(A133263(n+1)))`
-/

namespace A240819.P10825778588773727613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240821 (A133263 (n + 1)).toNat)

end

end A240819.P10825778588773727613

/-! ## A240819.P11018306578742241326

`or(char[1], A240821(A238531(n+2)))`
-/

namespace A240819.P11018306578742241326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240821 (A238531 (n + 2)).toNat)

end

end A240819.P11018306578742241326

/-! ## A240819.P7259737418417342030

`A240821(A133263(n+1))%A017441(n)`
-/

namespace A240819.P7259737418417342030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240821 (A133263 (n + 1)).toNat) (A017441 n)

end

end A240819.P7259737418417342030

/-! ## A240819.P17151937146058568304

`A240821(A238531(n+2))%A017224(n)`
-/

namespace A240819.P17151937146058568304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240821 (A238531 (n + 2)).toNat) (A017224 n)

end

end A240819.P17151937146058568304

/-! ## A240819.P15159868639234685103

`abs(A033999(n)*A240821(A133263(n+1)))`
-/

namespace A240819.P15159868639234685103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A240821 (A133263 (n + 1)).toNat|

end

end A240819.P15159868639234685103

/-! ## A240819.P9376436572842569896

`A240821(A133263(n+1))+A000035(2*n)`
-/

namespace A240819.P9376436572842569896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240821 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A240819.P9376436572842569896

/-! ## A240819.P2195493717954485597

`A007318(C(2, n))*A240821(A133263(n+1))`
-/

namespace A240819.P2195493717954485597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A240821 (A133263 (n + 1)).toNat

end

end A240819.P2195493717954485597

/-! ## A240819.P5414911121513266239

`A007318(C(2, n))*A240821(A238531(n+2))`
-/

namespace A240819.P5414911121513266239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A240821 (A238531 (n + 2)).toNat

end

end A240819.P5414911121513266239

/-! ## A240819.P15855545610129286235

`and(1, A000041(n))!*A240821(A133263(n+1))`
-/

namespace A240819.P15855545610129286235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000041 n)).toNat : ℤ) * A240821 (A133263 (n + 1)).toNat

end

end A240819.P15855545610129286235

/-! ## A240819.P10372196282281426987

`A240821(A133263(n+1))+char[A008918(n+1)]`
-/

namespace A240819.P10372196282281426987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240821 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A240819.P10372196282281426987

/-! ## A240819.P8583023912239083300

`A240821(A133263(n+1))+A008683(4*(n+1))`
-/

namespace A240819.P8583023912239083300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240821 (A133263 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A240819.P8583023912239083300

/-! ## A240819.P4986350872506093311

`A014963(10*(n+1))*A240821(A133263(n+1))`
-/

namespace A240819.P4986350872506093311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A240821 (A133263 (n + 1)).toNat

end

end A240819.P4986350872506093311

/-! ## A240819.P14727590119876783826

`A000041(C(2, n+2))*A240821(A133263(n+1))`
-/

namespace A240819.P14727590119876783826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A240821 (A133263 (n + 1)).toNat

end

end A240819.P14727590119876783826

/-! ## A240819.P17421755319642659019

`A240821(A238531(n+2))+val(A014963(n+2), 9)`
-/

namespace A240819.P17421755319642659019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240821 (A238531 (n + 2)).toNat + (SequenceMachineLib.valuation (A014963 (n + 2)).toNat 9 : ℤ)

end

end A240819.P17421755319642659019

/-! ## A240819.P16664442517231593599

`A001222(A065091(n+1))*A240821(A133263(n+1))`
-/

namespace A240819.P16664442517231593599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065091 (n + 1)).toNat * A240821 (A133263 (n + 1)).toNat

end

end A240819.P16664442517231593599

/-!
# A240820: a(n) = length (or lifetime) of the meta-Fibonacci sequence f(k) = k for k <= n; f(k) = f(k-f(k-3)) + f(k-f(k-n)) if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A240820, there is no canonical definition to state claims against.
-/

/-! ## A240820.P14653198677029663824

`A240821(∑[2+n]+4)`
-/

namespace A240820.P14653198677029663824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240821 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240820.P14653198677029663824

/-! ## A240820.P8984519807250116904

`or(char[1], A240821(A167614(n+1)))`
-/

namespace A240820.P8984519807250116904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240821 (A167614 (n + 1)).toNat)

end

end A240820.P8984519807250116904

/-! ## A240820.P14257779578228489451

`or(char[1], A240821(A167499(n)+n))`
-/

namespace A240820.P14257779578228489451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240821 (A167499 n + (n : ℤ)).toNat)

end

end A240820.P14257779578228489451

/-! ## A240820.P10598328355273574352

`A240821(A167614(n+1))%A017451(n)`
-/

namespace A240820.P10598328355273574352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240821 (A167614 (n + 1)).toNat) (A017451 n)

end

end A240820.P10598328355273574352

/-! ## A240820.P3182324805533370302

`A240821(A167499(n)+n)%A017451(n)`
-/

namespace A240820.P3182324805533370302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240821 (A167499 n + (n : ℤ)).toNat) (A017451 n)

end

end A240820.P3182324805533370302

/-! ## A240820.P17308197801282554510

`A240821(A167614(n+1))+A000007(n+1)`
-/

namespace A240820.P17308197801282554510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240821 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A240820.P17308197801282554510

/-! ## A240820.P11203858416790259604

`A240821(A167499(n)+n)+A000007(n+1)`
-/

namespace A240820.P11203858416790259604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240821 (A167499 n + (n : ℤ)).toNat + A000007 (n + 1)

end

end A240820.P11203858416790259604

/-! ## A240820.P5783406790569650377

`A240821(A167499(n)+n)+A000038(n+1)`
-/

namespace A240820.P5783406790569650377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240821 (A167499 n + (n : ℤ)).toNat + A000038 (n + 1)

end

end A240820.P5783406790569650377

/-! ## A240820.P1256580744823104302

`A240821(A167499(n)+n)+A000035(2*n)`
-/

namespace A240820.P1256580744823104302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240821 (A167499 n + (n : ℤ)).toNat + A000035 (2 * n)

end

end A240820.P1256580744823104302

/-! ## A240820.P11176696478042838980

`A014963(24*(n+1))*A240821(A167499(n)+n)`
-/

namespace A240820.P11176696478042838980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (24 * (n + 1)) * A240821 (A167499 n + (n : ℤ)).toNat

end

end A240820.P11176696478042838980

/-! ## A240820.P6490403630057213516

`A007318(A000096(n))*A240821(A167499(n)+n)`
-/

namespace A240820.P6490403630057213516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A240821 (A167499 n + (n : ℤ)).toNat

end

end A240820.P6490403630057213516

/-!
# A240821: Triangle read by rows: T(n,k) (n >= 1, 1 <= k <= n) = length (or lifetime) of the meta-Fibonacci sequence {f(i) = i for i <= n; f(i)=f(i-f(i-k))+f(i-f(i-n))} if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A240821, there is no canonical definition to state claims against.
-/

/-! ## A240821.P8830312602684619500

`floor(abs(2-A240825(n+1)-ϕ))`
-/

namespace A240821.P8830312602684619500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(2 - A240825 (n + 1) : ℝ) - Real.goldenRatio|⌋

end

end A240821.P8830312602684619500

/-! ## A240821.P15226040104036568312

`A143051(A240825(n+1))`
-/

namespace A240821.P15226040104036568312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A240825 (n + 1)).toNat

end

end A240821.P15226040104036568312

/-! ## A240821.P923864205737746131

`A289207(A240825(n+1)+1)`
-/

namespace A240821.P923864205737746131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A240825 (n + 1) + 1).toNat

end

end A240821.P923864205737746131

/-! ## A240821.P1405626932701929337

`A153881(3*n+2)+A028310(A240825(n+1))`
-/

namespace A240821.P1405626932701929337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (3 * n + 2) + A028310 (A240825 (n + 1)).toNat

end

end A240821.P1405626932701929337

/-! ## A240821.P12304817561704100535

`A004273(A240825(A000027(n+1)))-A240825(n+1)`
-/

namespace A240821.P12304817561704100535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A240825 (A000027 (n + 1)).toNat).toNat - A240825 (n + 1)

end

end A240821.P12304817561704100535

/-!
# A240822: a(n) = index of first nonexisting term of the meta-Fibonacci sequence {f(k) = k for k <= n; f(k)=f(k-f(k-1))+f(k-f(k-n))} if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A240822, there is no canonical definition to state claims against.
-/

/-! ## A240822.P16272278726150171114

`A153152(A240818(n+1))`
-/

namespace A240822.P16272278726150171114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A240818 (n + 1)).toNat

end

end A240822.P16272278726150171114

/-! ## A240822.P2343095595286734426

`A326178(A240821(∑[n]+1))`
-/

namespace A240822.P2343095595286734426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A240821 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A240822.P2343095595286734426

/-! ## A240822.P15947361313733519677

`A028253(A240818(n+1)+1)`
-/

namespace A240822.P15947361313733519677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (A240818 (n + 1) + 1).toNat

end

end A240822.P15947361313733519677

/-! ## A240822.P9900921442222204283

`A087156(A240818(n+1)+1)`
-/

namespace A240822.P9900921442222204283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A240818 (n + 1) + 1).toNat

end

end A240822.P9900921442222204283

/-! ## A240822.P16878404274330871094

`A267870(n)+A240818(n+1)`
-/

namespace A240822.P16878404274330871094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 n + A240818 (n + 1)

end

end A240822.P16878404274330871094

/-!
# A240823: a(n) = index of first nonexisting term of the meta-Fibonacci sequence {f(k) = k for k <= n; f(k)=f(k-f(k-2))+f(k-f(k-n))} if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A240823, there is no canonical definition to state claims against.
-/

/-! ## A240823.P9494820530862849948

`A153152(A240819(n+2))`
-/

namespace A240823.P9494820530862849948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A240819 (n + 2)).toNat

end

end A240823.P9494820530862849948

/-! ## A240823.P340909553186221593

`A028253(A240819(n+2)+1)`
-/

namespace A240823.P340909553186221593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (A240819 (n + 2) + 1).toNat

end

end A240823.P340909553186221593

/-! ## A240823.P11941059213922174861

`A087156(A240819(n+2)+1)`
-/

namespace A240823.P11941059213922174861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A240819 (n + 2) + 1).toNat

end

end A240823.P11941059213922174861

/-! ## A240823.P1879873511186891698

`A184985(A240819(n+2)+1)`
-/

namespace A240823.P1879873511186891698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A240819 (n + 2) + 1).toNat

end

end A240823.P1879873511186891698

/-! ## A240823.P15248203571749161767

`A199969(A240819(n+2)+2)`
-/

namespace A240823.P15248203571749161767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A240819 (n + 2) + 2).toNat

end

end A240823.P15248203571749161767

/-!
# A240824: a(n) = index of first nonexisting term of the meta-Fibonacci sequence {f(k) = k for k <= n; f(k)=f(k-f(k-3))+f(k-f(k-n))} if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A240824, there is no canonical definition to state claims against.
-/

/-! ## A240824.P12270283504406538244

`A153152(A240820(n+3))`
-/

namespace A240824.P12270283504406538244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A240820 (n + 3)).toNat

end

end A240824.P12270283504406538244

/-! ## A240824.P12277614757937751191

`A028253(A240820(n+3)+1)`
-/

namespace A240824.P12277614757937751191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (A240820 (n + 3) + 1).toNat

end

end A240824.P12277614757937751191

/-! ## A240824.P16461470639780148085

`A087156(A240820(n+3)+1)`
-/

namespace A240824.P16461470639780148085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A240820 (n + 3) + 1).toNat

end

end A240824.P16461470639780148085

/-! ## A240824.P15722071687478112397

`A184985(A240820(n+3)+1)`
-/

namespace A240824.P15722071687478112397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A240820 (n + 3) + 1).toNat

end

end A240824.P15722071687478112397

/-! ## A240824.P11055844916832617820

`A199969(A240820(n+3)+2)`
-/

namespace A240824.P11055844916832617820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A240820 (n + 3) + 2).toNat

end

end A240824.P11055844916832617820

/-!
# A240825: Triangle read by rows: T(n,k) (n >= 1, 1 <= k <= n) = index of first nonexisting term of the meta-Fibonacci sequence {f(i)=i for i <= n; thereafter f(i)=f(i-f(i-k))+f(i-f(i-n))} if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A240825, there is no canonical definition to state claims against.
-/

/-! ## A240825.P5135246857323940714

`A153152(A240821(n+1))`
-/

namespace A240825.P5135246857323940714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A240821 (n + 1)).toNat

end

end A240825.P5135246857323940714

/-! ## A240825.P4191738067350280361

`A028253(A240821(n+1)+1)`
-/

namespace A240825.P4191738067350280361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (A240821 (n + 1) + 1).toNat

end

end A240825.P4191738067350280361

/-! ## A240825.P9693120771450795938

`A087156(A240821(n+1)+1)`
-/

namespace A240825.P9693120771450795938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A240821 (n + 1) + 1).toNat

end

end A240825.P9693120771450795938

/-! ## A240825.P2780814918374768934

`A184985(A240821(n+1)+1)`
-/

namespace A240825.P2780814918374768934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A240821 (n + 1) + 1).toNat

end

end A240825.P2780814918374768934

/-! ## A240825.P12435763545350295412

`A199969(A240821(n+1)+2)`
-/

namespace A240825.P12435763545350295412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A240821 (n + 1) + 2).toNat

end

end A240825.P12435763545350295412

/-!
# A240826: Number of ways to choose three points on a centered hexagonal grid of size n.

The programs for A240826, the canonical program `A240826.P7839330394528426071` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240826 has offset 1).

The definition of A240826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240826.P7839330394528426071

`C(3*(n+1)²-3*(n+1)+1, 3)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240826

/-- `C(3*(n+1)²-3*(n+1)+1, 3)` -/
def P7839330394528426071.Spec : Prop :=
  ∀ n, (P7839330394528426071.a n : ℤ) = A240826 (n + 1)

theorem P7839330394528426071.correct : P7839330394528426071.Spec := by
  intro n
  simp only [A240826, Nat.add_sub_cancel]

end A240826

/-! ## A240826.P3954217422870208554

`1/2*(n+1)*n*(3*(n+1)²-3*(n+1)+1)*(3*(n+1)²-3*(n+1)-1)`
-/

namespace A240826.P3954217422870208554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (n + 1 : ℚ) * (n : ℚ) * ((3 * (n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 1 : ℚ) * ((3 * (n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) - 1 : ℚ)

end

end A240826.P3954217422870208554

namespace A240826

/-- `1/2*(n+1)*n*(3*(n+1)²-3*(n+1)+1)*(3*(n+1)²-3*(n+1)-1)` -/
def P3954217422870208554.Spec : Prop :=
  ∀ n, P3954217422870208554.a n = (A240826 (n + 1) : ℚ)

end A240826

/-! ## A240826.P13911053776879523931

`C(or(1, ∑[6*n]), 3)`
-/

namespace A240826.P13911053776879523931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)) 3

end

end A240826.P13911053776879523931

namespace A240826

/-- `C(or(1, ∑[6*n]), 3)` -/
def P13911053776879523931.Spec : Prop :=
  ∀ n, (P13911053776879523931.a n : ℤ) = A240826 (n + 1)

end A240826

/-! ## A240826.P10488183664040356173

`C(xor(1, ∑[6*n]), 3)`
-/

namespace A240826.P10488183664040356173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)) 3

end

end A240826.P10488183664040356173

namespace A240826

/-- `C(xor(1, ∑[6*n]), 3)` -/
def P10488183664040356173.Spec : Prop :=
  ∀ n, (P10488183664040356173.a n : ℤ) = A240826 (n + 1)

end A240826

/-! ## A240826.P13908831676181755322

`C(Δ[Δ[C(n, 2)²]], 3)`
-/

namespace A240826.P13908831676181755322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 3

end

end A240826.P13908831676181755322

namespace A240826

/-- `C(Δ[Δ[C(n, 2)²]], 3)` -/
def P13908831676181755322.Spec : Prop :=
  ∀ n, (P13908831676181755322.a n : ℤ) = A240826 (n + 1)

end A240826

/-! ## A240826.P17474790741644342179

`C(6*C(n+1, 2)+1, 3)`
-/

namespace A240826.P17474790741644342179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (6 * Nat.choose (n + 1) 2 + 1) 3

end

end A240826.P17474790741644342179

namespace A240826

/-- `C(6*C(n+1, 2)+1, 3)` -/
def P17474790741644342179.Spec : Prop :=
  ∀ n, (P17474790741644342179.a n : ℤ) = A240826 (n + 1)

end A240826

/-! ## A240826.P12942770636818445303

`lcm(C(A003215(n), 3), A003215(n))`
-/

namespace A240826.P12942770636818445303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.choose (A003215 n).toNat 3 : ℤ) (A003215 n)

end

end A240826.P12942770636818445303

namespace A240826

/-- `lcm(C(A003215(n), 3), A003215(n))` -/
def P12942770636818445303.Spec : Prop :=
  ∀ n, (P12942770636818445303.a n : ℤ) = A240826 (n + 1)

end A240826

/-! ## A240826.P17434872465343894344

`C(A003215(n), 3)+A005843(n)%2`
-/

namespace A240826.P17434872465343894344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003215 n).toNat 3 : ℤ) + Int.tmod (A005843 n) 2

end

end A240826.P17434872465343894344

namespace A240826

/-- `C(A003215(n), 3)+A005843(n)%2` -/
def P17434872465343894344.Spec : Prop :=
  ∀ n, P17434872465343894344.a n = A240826 (n + 1)

end A240826

/-! ## A240826.P10696471989133665477

`A000217(n)²*A162940(n)-A000217(n)`
-/

namespace A240826.P10696471989133665477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2 * A162940 n - A000217 n

end

end A240826.P10696471989133665477

namespace A240826

/-- `A000217(n)²*A162940(n)-A000217(n)` -/
def P10696471989133665477.Spec : Prop :=
  ∀ n, P10696471989133665477.a n = A240826 (n + 1)

end A240826

/-! ## A240826.P8628490915000902071

`(n+1)²*A016766(n)*A000217(n)-A000217(n)`
-/

namespace A240826.P8628490915000902071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A016766 n * A000217 n - A000217 n

end

end A240826.P8628490915000902071

namespace A240826

/-- `(n+1)²*A016766(n)*A000217(n)-A000217(n)` -/
def P8628490915000902071.Spec : Prop :=
  ∀ n, P8628490915000902071.a n = A240826 (n + 1)

end A240826

/-! ## A240826.P9550152532721245807

`A241223(n+1)+A241222(n+1)`
-/

namespace A240826.P9550152532721245807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241223 (n + 1) + A241222 (n + 1)

end

end A240826.P9550152532721245807

namespace A240826

/-- `A241223(n+1)+A241222(n+1)` -/
def P9550152532721245807.Spec : Prop :=
  ∀ n, P9550152532721245807.a n = A240826 (n + 1)

end A240826

/-! ## A240826.P13478656860099110285

`lcm(A003215(n), A049452(A000217(n)))`
-/

namespace A240826.P13478656860099110285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003215 n) (A049452 (A000217 n).toNat)

end

end A240826.P13478656860099110285

namespace A240826

/-- `lcm(A003215(n), A049452(A000217(n)))` -/
def P13478656860099110285.Spec : Prop :=
  ∀ n, (P13478656860099110285.a n : ℤ) = A240826 (n + 1)

end A240826

/-! ## A240826.P12412969267102510741

`lcm(A000217(n), A136017(A179865(n+1)))`
-/

namespace A240826.P12412969267102510741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000217 n) (A136017 (A179865 (n + 1)).toNat)

end

end A240826.P12412969267102510741

namespace A240826

/-- `lcm(A000217(n), A136017(A179865(n+1)))` -/
def P12412969267102510741.Spec : Prop :=
  ∀ n, (P12412969267102510741.a n : ℤ) = A240826 (n + 1)

end A240826

/-!
# A240827: a(n) = n for 1<=n<=6; thereafter a(n) = a(n-a(n-3))+a(n-a(n-6)).

The programs for A240827, the canonical program `A240827.P15384731204298315281` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240827 has offset 1).

The definition of A240827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-3))+a(n-a(n-6))` (program `A240827.P15384731204298315281`, by `A240827.P15384731204298315281.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240827.P15384731204298315281

`a(n-a(n-3))+a(n-a(n-6))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240827

/-- `a(n-a(n-3))+a(n-a(n-6))` -/
def P15384731204298315281.Spec : Prop :=
  ∀ n, (P15384731204298315281.a n : ℤ) = A240827 (n + 1)

theorem P15384731204298315281.correct : P15384731204298315281.Spec := by
  intro n
  simp only [A240827, Nat.add_sub_cancel]

end A240827

/-!
# A240828: a(1)=a(2)=0, a(3)=2; thereafter a(n) = Sum( a(n-i-s-a(n-i-1)), i=0..k-1 ), where s=0, k=3.

The programs for A240828, the canonical program `A240828.P3978424130517311883` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240828 has offset 1).

The definition of A240828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240828.P15150649905534835929

`ogf((2x^2+2x^3+2x^4)/(1-x^2-x^4+x^6))`
-/

namespace A240828.P15150649905534835929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 2, 2] [1, 0, -1, 0, -1, 0, 1] n

end

end A240828.P15150649905534835929

namespace A240828

/-- `ogf((2x^2+2x^3+2x^4)/(1-x^2-x^4+x^6))` -/
def P15150649905534835929.Spec : Prop :=
  ∀ n, P15150649905534835929.a n = A240828 (n + 1)

end A240828

/-! ## A240828.P3978424130517311883

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2, a(4)=4, a(5)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240828

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P3978424130517311883.Spec : Prop :=
  ∀ n, P3978424130517311883.a n = A240828 (n + 1)

theorem P3978424130517311883.correct : P3978424130517311883.Spec := by
  intro n
  simp only [A240828, Nat.add_sub_cancel]

end A240828

/-! ## A240828.P17560715970939247681

`n-((-1)^(n+1)+1)*(n+1-(-1)^floor((n+1)/2)-1)/4`
-/

namespace A240828.P17560715970939247681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - ((-1) ^ (n + 1) + 1 : ℚ) * ((n + 1 : ℚ) - (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) - 1) / 4

end

end A240828.P17560715970939247681

namespace A240828

/-- `n-((-1)^(n+1)+1)*(n+1-(-1)^floor((n+1)/2)-1)/4` -/
def P17560715970939247681.Spec : Prop :=
  ∀ n, P17560715970939247681.a n = (A240828 (n + 1) : ℚ)

end A240828

/-! ## A240828.P17154292307181114707

`and(lcm(2, n+1)/2, -2)`
-/

namespace A240828.P17154292307181114707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)) (-2)

end

end A240828.P17154292307181114707

namespace A240828

/-- `and(lcm(2, n+1)/2, -2)` -/
def P17154292307181114707.Spec : Prop :=
  ∀ n, P17154292307181114707.a n = A240828 (n + 1)

end A240828

/-! ## A240828.P1601556732437845539

`or(1, gcd(n+1, ∑[n]))-1`
-/

namespace A240828.P1601556732437845539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ) - 1

end

end A240828.P1601556732437845539

namespace A240828

/-- `or(1, gcd(n+1, ∑[n]))-1` -/
def P1601556732437845539.Spec : Prop :=
  ∀ n, P1601556732437845539.a n = A240828 (n + 1)

end A240828

/-! ## A240828.P6796015427245511946

`∑[∑[3-gcd(4, n)]]%(n+1)`
-/

namespace A240828.P6796015427245511946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.gcd 4 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A240828.P6796015427245511946

namespace A240828

/-- `∑[∑[3-gcd(4, n)]]%(n+1)` -/
def P6796015427245511946.Spec : Prop :=
  ∀ n, P6796015427245511946.a n = A240828 (n + 1)

end A240828

/-! ## A240828.P7481701944701170412

`n-(a(n-2)+1)%(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A240828.P7481701944701170412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℤ) - Int.tmod (a (n - 2) + 1) ((n : ℤ) - 1)

end

end A240828.P7481701944701170412

namespace A240828

/-- `n-(a(n-2)+1)%(n-1)` -/
def P7481701944701170412.Spec : Prop :=
  ∀ n, P7481701944701170412.a n = A240828 (n + 1)

end A240828

/-! ## A240828.P631103665164786532

`2*floor(3*n/4)-a(n-1)` with `a(0)=0`
-/

namespace A240828.P631103665164786532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ⌊(3 * n : ℚ) / 4⌋ - a (n - 1)

end

end A240828.P631103665164786532

namespace A240828

/-- `2*floor(3*n/4)-a(n-1)` -/
def P631103665164786532.Spec : Prop :=
  ∀ n, P631103665164786532.a n = A240828 (n + 1)

end A240828

/-! ## A240828.P12866962475087279497

`∑[(n+1)*(n^3)%4]%(n+1)`
-/

namespace A240828.P12866962475087279497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n ^ 3 % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A240828.P12866962475087279497

namespace A240828

/-- `∑[(n+1)*(n^3)%4]%(n+1)` -/
def P12866962475087279497.Spec : Prop :=
  ∀ n, (P12866962475087279497.a n : ℤ) = A240828 (n + 1)

end A240828

/-! ## A240828.P4879793561292542091

`and(-2, A029578(n+1))`
-/

namespace A240828.P4879793561292542091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A029578 (n + 1))

end

end A240828.P4879793561292542091

namespace A240828

/-- `and(-2, A029578(n+1))` -/
def P4879793561292542091.Spec : Prop :=
  ∀ n, P4879793561292542091.a n = A240828 (n + 1)

end A240828

/-! ## A240828.P9970204016023819267

`abs(2*(n-A006368(n)))`
-/

namespace A240828.P9970204016023819267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((n : ℤ) - A006368 n)|

end

end A240828.P9970204016023819267

namespace A240828

/-- `abs(2*(n-A006368(n)))` -/
def P9970204016023819267.Spec : Prop :=
  ∀ n, P9970204016023819267.a n = A240828 (n + 1)

end A240828

/-! ## A240828.P3712864285128682002

`∑[and(2, n)]/A000034(n)`
-/

namespace A240828.P3712864285128682002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A000034 n : ℚ)

end

end A240828.P3712864285128682002

namespace A240828

/-- `∑[and(2, n)]/A000034(n)` -/
def P3712864285128682002.Spec : Prop :=
  ∀ n, P3712864285128682002.a n = (A240828 (n + 1) : ℚ)

end A240828

/-! ## A240828.P10245837273326089169

`A052928(A026741(n+1))`
-/

namespace A240828.P10245837273326089169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A026741 (n + 1)).toNat

end

end A240828.P10245837273326089169

namespace A240828

/-- `A052928(A026741(n+1))` -/
def P10245837273326089169.Spec : Prop :=
  ∀ n, P10245837273326089169.a n = A240828 (n + 1)

end A240828

/-! ## A240828.P10723233589709212340

`A052928(A029578(n+1))`
-/

namespace A240828.P10723233589709212340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A029578 (n + 1)).toNat

end

end A240828.P10723233589709212340

namespace A240828

/-- `A052928(A029578(n+1))` -/
def P10723233589709212340.Spec : Prop :=
  ∀ n, P10723233589709212340.a n = A240828 (n + 1)

end A240828

/-! ## A240828.P16478425237750196407

`A052928(A185048(n+1))`
-/

namespace A240828.P16478425237750196407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A185048 (n + 1)).toNat

end

end A240828.P16478425237750196407

namespace A240828

/-- `A052928(A185048(n+1))` -/
def P16478425237750196407.Spec : Prop :=
  ∀ n, P16478425237750196407.a n = A240828 (n + 1)

end A240828

/-! ## A240828.P3190646534849798257

`A201629(n)/A000034(n)`
-/

namespace A240828.P3190646534849798257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201629 n : ℚ) / (A000034 n : ℚ)

end

end A240828.P3190646534849798257

namespace A240828

/-- `A201629(n)/A000034(n)` -/
def P3190646534849798257.Spec : Prop :=
  ∀ n, P3190646534849798257.a n = (A240828 (n + 1) : ℚ)

end A240828

/-! ## A240828.P13601382077387714575

`A201629(n)/A084642(n)`
-/

namespace A240828.P13601382077387714575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201629 n : ℚ) / (A084642 n : ℚ)

end

end A240828.P13601382077387714575

namespace A240828

/-- `A201629(n)/A084642(n)` -/
def P13601382077387714575.Spec : Prop :=
  ∀ n, P13601382077387714575.a n = (A240828 (n + 1) : ℚ)

end A240828

/-! ## A240828.P6654265203603358380

`A059029(n)%A293990(n)`
-/

namespace A240828.P6654265203603358380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059029 n) (A293990 n)

end

end A240828.P6654265203603358380

namespace A240828

/-- `A059029(n)%A293990(n)` -/
def P6654265203603358380.Spec : Prop :=
  ∀ n, P6654265203603358380.a n = A240828 (n + 1)

end A240828

/-! ## A240828.P14287320614227773091

`gcd(A122657(n), A201629(n))`
-/

namespace A240828.P14287320614227773091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122657 n) (A201629 n)

end

end A240828.P14287320614227773091

namespace A240828

/-- `gcd(A122657(n), A201629(n))` -/
def P14287320614227773091.Spec : Prop :=
  ∀ n, (P14287320614227773091.a n : ℤ) = A240828 (n + 1)

end A240828

/-! ## A240828.P537690898467629931

`xor(A135481(n), A186421(n))`
-/

namespace A240828.P537690898467629931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135481 n) (A186421 n)

end

end A240828.P537690898467629931

namespace A240828

/-- `xor(A135481(n), A186421(n))` -/
def P537690898467629931.Spec : Prop :=
  ∀ n, P537690898467629931.a n = A240828 (n + 1)

end A240828

/-!
# A240830: a(n)=1 for n <= s+k; thereafter a(n) = Sum(a(n-i-s-a(n-i-1)),i=0..k-1) where s=0, k=7.

The programs for A240830, there is no canonical definition to state claims against.
-/

/-! ## A240830.P5319174166512460994

`2-A240832(2+n)+n`
-/

namespace A240830.P5319174166512460994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A240832 (2 + n) + (n : ℤ)

end

end A240830.P5319174166512460994

/-! ## A240830.P16966882968458649992

`A000027(n+1)+A001489(A240832(n+2))+1`
-/

namespace A240830.P16966882968458649992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (A001489 (A240832 (n + 2)).toNat + 1)

end

end A240830.P16966882968458649992

/-! ## A240830.P5924177035180843076

`A001489(A240832(n+2))+A023443(n+1)+2`
-/

namespace A240830.P5924177035180843076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A240832 (n + 2)).toNat + (A023443 (n + 1) + 2)

end

end A240830.P5924177035180843076

/-! ## A240830.P3438006841152696317

`A006370(2*(n+2))+A001489(A240832(n+2))`
-/

namespace A240830.P3438006841152696317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * (n + 2)) + A001489 (A240832 (n + 2)).toNat

end

end A240830.P3438006841152696317

/-!
# A240831: Sequence U(n) arising from analysis of structure of A240830.

The programs for A240831, there is no canonical definition to state claims against.
-/

/-! ## A240831.P1662891968984407727

`A240830(n+2-A240830(n+1))`
-/

namespace A240831.P1662891968984407727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240830 ((n + 2 : ℤ) - A240830 (n + 1)).toNat

end

end A240831.P1662891968984407727

/-! ## A240831.P3630973755623435308

`A240830(A240832(n+2))`
-/

namespace A240831.P3630973755623435308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240830 (A240832 (n + 2)).toNat

end

end A240831.P3630973755623435308

/-! ## A240831.P15197232248087832875

`A240832(n+2)+1-A240832(A240832(n+2)+1)`
-/

namespace A240831.P15197232248087832875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240832 (n + 2) + (1 - A240832 (A240832 (n + 2) + 1).toNat)

end

end A240831.P15197232248087832875

/-! ## A240831.P11610509416081981455

`A176415(C(A185284(n), A035677(n+1)))`
-/

namespace A240831.P11610509416081981455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176415 (Nat.choose (A185284 n).toNat (A035677 (n + 1)).toNat)

end

end A240831.P11610509416081981455

/-! ## A240831.P13266884507999486321

`A309600(C(A185284(n), A035677(n+1)))`
-/

namespace A240831.P13266884507999486321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 (Nat.choose (A185284 n).toNat (A035677 (n + 1)).toNat)

end

end A240831.P13266884507999486321

/-!
# A240832: Sequence R(n) arising from analysis of structure of A240830.

The programs for A240832, there is no canonical definition to state claims against.
-/

/-! ## A240832.P7355614393977964466

`1-A240830(ceil(abs(γ-n)))+n`
-/

namespace A240832.P7355614393977964466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A240830 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat + (n : ℤ)

end

end A240832.P7355614393977964466

/-! ## A240832.P7109217699628735128

`n+1-A240830(round(sqrt(n²+1)))`
-/

namespace A240832.P7109217699628735128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A240830 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A240832.P7109217699628735128

/-! ## A240832.P1142604050883800805

`abs(n+1-A240830(A000007(n)+n))`
-/

namespace A240832.P1142604050883800805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A240830 (A000007 n + (n : ℤ)).toNat|

end

end A240832.P1142604050883800805

/-! ## A240832.P9496029815712731274

`(n+1-A240830(A000007(n)+n))%A000040(n+1)`
-/

namespace A240832.P9496029815712731274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - A240830 (A000007 n + (n : ℤ)).toNat) (A000040 (n + 1))

end

end A240832.P9496029815712731274

/-! ## A240832.P10396477506522533048

`(n+1-A240830(A000007(n)+n))%A248332(n)`
-/

namespace A240832.P10396477506522533048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - A240830 (A000007 n + (n : ℤ)).toNat) (A248332 n)

end

end A240832.P10396477506522533048

/-!
# A240833: Sequence U(n) arising from analysis of structure of A046702.

The programs for A240833, there is no canonical definition to state claims against.
-/

/-! ## A240833.P16444590859917310679

`A046702(2-A046702(n+1)+n)`
-/

namespace A240833.P16444590859917310679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046702 (2 - A046702 (n + 1) + (n : ℤ)).toNat

end

end A240833.P16444590859917310679

/-! ## A240833.P13109974835850079527

`A046702(A240834(2+n))`
-/

namespace A240833.P13109974835850079527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046702 (A240834 (2 + n)).toNat

end

end A240833.P13109974835850079527

/-! ## A240833.P11474505674001709058

`A240834(n+2)+1-A240834(A240834(n+2)+1)`
-/

namespace A240833.P11474505674001709058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240834 (n + 2) + (1 - A240834 (A240834 (n + 2) + 1).toNat)

end

end A240833.P11474505674001709058

/-! ## A240833.P4405180734877752613

`A157458(A131209(∑[A008624(n)]))`
-/

namespace A240833.P4405180734877752613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 (A131209 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A240833.P4405180734877752613

/-! ## A240833.P16509641021863732345

`∑{e}[A026424(A265075(n)), #]`
-/

namespace A240833.P16509641021863732345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (A265075 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A240833.P16509641021863732345

/-!
# A240834: Sequence R(n) arising from analysis of structure of A046702.

The programs for A240834, there is no canonical definition to state claims against.
-/

/-! ## A240834.P11112665679271471946

`1-A046702(abs(1-n)+1)+n`
-/

namespace A240834.P11112665679271471946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A046702 (|1 - (n : ℤ)| + 1).toNat + (n : ℤ)

end

end A240834.P11112665679271471946

/-! ## A240834.P6373667108694715402

`n+1-A046702(round(sqrt(n²+1)))`
-/

namespace A240834.P6373667108694715402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A046702 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A240834.P6373667108694715402

/-! ## A240834.P12634636216752248922

`A257564(xor(∏{p}[n+1, #], A065091(n+1)))`
-/

namespace A240834.P12634636216752248922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (Int.xor ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A065091 (n + 1))).toNat

end

end A240834.P12634636216752248922

/-! ## A240834.P13158546054960500477

`A006530(C(∑[gcd(2, n)], n+2))%(n+1)`
-/

namespace A240834.P13158546054960500477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2))) (n + 1 : ℤ)

end

end A240834.P13158546054960500477

/-! ## A240834.P9641671023830593087

`A006530(A127040(n))%(n+1)`
-/

namespace A240834.P9641671023830593087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A127040 n).toNat) (n + 1 : ℤ)

end

end A240834.P9641671023830593087

/-!
# A240836: Numbers n such that n^3 = x*y*z where 2 <= x <= y <= z , n^3+1 = (x-1)*(y+1)*(z+1).

The programs for A240836, the canonical program `A240836.P5427845226329489471` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240836 has offset 1).

The definition of A240836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240836.P13051367966910387723

`ogf((2-4x)/(1-8x+8x^2-x^3))`
-/

namespace A240836.P13051367966910387723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -8, 8, -1] n

end

end A240836.P13051367966910387723

namespace A240836

/-- `ogf((2-4x)/(1-8x+8x^2-x^3))` -/
def P13051367966910387723.Spec : Prop :=
  ∀ n, P13051367966910387723.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P5427845226329489471

`2*A081016(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A240836

/-- `2*A081016(n)` -/
def P5427845226329489471.Spec : Prop :=
  ∀ n, P5427845226329489471.a n = A240836 (n + 1)

theorem P5427845226329489471.correct : P5427845226329489471.Spec := by
  intro n
  simp only [A240836, Nat.add_sub_cancel]

end A240836

/-! ## A240836.P6318417601095708538

`2*A000045(2*(n+1))*A000045(2*(n+1)-1)`
-/

namespace A240836.P6318417601095708538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (2 * (n + 1)) * A000045 (2 * (n + 1) - 1)

end

end A240836.P6318417601095708538

namespace A240836

/-- `2*A000045(2*(n+1))*A000045(2*(n+1)-1)` -/
def P6318417601095708538.Spec : Prop :=
  ∀ n, P6318417601095708538.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P3384275954072397909

`∑[ogf((2-4x)/(1-7x+x^2))]`
-/

namespace A240836.P3384275954072397909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240836.P3384275954072397909

namespace A240836

/-- `∑[ogf((2-4x)/(1-7x+x^2))]` -/
def P3384275954072397909.Spec : Prop :=
  ∀ n, P3384275954072397909.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P15409021835964278911

`round(ϕ^4*a(n-1))-2` with `a(0)=2`
-/

namespace A240836.P15409021835964278911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 4 * (a (n - 1) : ℝ)) - 2

end

end A240836.P15409021835964278911

namespace A240836

/-- `round(ϕ^4*a(n-1))-2` -/
def P15409021835964278911.Spec : Prop :=
  ∀ n, P15409021835964278911.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P5654879224335886794

`record[2-ceil(a(n-1)/(2-ϕ))]` with `a(0)=2`
-/

namespace A240836.P5654879224335886794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - ⌈(f1 (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240836.P5654879224335886794

namespace A240836

/-- `record[2-ceil(a(n-1)/(2-ϕ))]` -/
def P5654879224335886794.Spec : Prop :=
  ∀ n, P5654879224335886794.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P570607694755708983

`∑[7*a(n-1)-a(n-2)]` with `a(0)=2, a(1)=10`
-/

namespace A240836.P570607694755708983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  7 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240836.P570607694755708983

namespace A240836

/-- `∑[7*a(n-1)-a(n-2)]` -/
def P570607694755708983.Spec : Prop :=
  ∀ n, P570607694755708983.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P6841727636672111577

`A110035(Δ[n²])`
-/

namespace A240836.P6841727636672111577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110035 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A240836.P6841727636672111577

namespace A240836

/-- `A110035(Δ[n²])` -/
def P6841727636672111577.Spec : Prop :=
  ∀ n, P6841727636672111577.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P10657361793411876503

`∑[2*A033889(n)]`
-/

namespace A240836.P10657361793411876503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240836.P10657361793411876503

namespace A240836

/-- `∑[2*A033889(n)]` -/
def P10657361793411876503.Spec : Prop :=
  ∀ n, P10657361793411876503.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P5682199494049633748

`∑[A052995(Δ[n²])]`
-/

namespace A240836.P5682199494049633748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052995 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240836.P5682199494049633748

namespace A240836

/-- `∑[A052995(Δ[n²])]` -/
def P5682199494049633748.Spec : Prop :=
  ∀ n, P5682199494049633748.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P6247061142091055506

`A337929(n+1)+1`
-/

namespace A240836.P6247061142091055506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337929 (n + 1) + 1

end

end A240836.P6247061142091055506

namespace A240836

/-- `A337929(n+1)+1` -/
def P6247061142091055506.Spec : Prop :=
  ∀ n, P6247061142091055506.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P13710174073041251231

`2*(A003482(n)+1)`
-/

namespace A240836.P13710174073041251231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003482 n + 1)

end

end A240836.P13710174073041251231

namespace A240836

/-- `2*(A003482(n)+1)` -/
def P13710174073041251231.Spec : Prop :=
  ∀ n, P13710174073041251231.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P5524621928995495550

`A079472(2*(n+1))`
-/

namespace A240836.P5524621928995495550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079472 (2 * (n + 1))

end

end A240836.P5524621928995495550

namespace A240836

/-- `A079472(2*(n+1))` -/
def P5524621928995495550.Spec : Prop :=
  ∀ n, P5524621928995495550.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P1407998071307809554

`A293411(4*n+1)`
-/

namespace A240836.P1407998071307809554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293411 (4 * n + 1)

end

end A240836.P1407998071307809554

namespace A240836

/-- `A293411(4*n+1)` -/
def P1407998071307809554.Spec : Prop :=
  ∀ n, P1407998071307809554.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P694120180427214341

`A295680(4*(n+1))`
-/

namespace A240836.P694120180427214341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 (4 * (n + 1))

end

end A240836.P694120180427214341

namespace A240836

/-- `A295680(4*(n+1))` -/
def P694120180427214341.Spec : Prop :=
  ∀ n, P694120180427214341.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P13476884681045306563

`2*A166536(2*n)`
-/

namespace A240836.P13476884681045306563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166536 (2 * n)

end

end A240836.P13476884681045306563

namespace A240836

/-- `2*A166536(2*n)` -/
def P13476884681045306563.Spec : Prop :=
  ∀ n, P13476884681045306563.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P12368007947204594840

`A236428(Δ[n²])+1`
-/

namespace A240836.P12368007947204594840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236428 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A240836.P12368007947204594840

namespace A240836

/-- `A236428(Δ[n²])+1` -/
def P12368007947204594840.Spec : Prop :=
  ∀ n, P12368007947204594840.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P17243845775945855642

`A121801(Δ[n²])+2`
-/

namespace A240836.P17243845775945855642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121801 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A240836.P17243845775945855642

namespace A240836

/-- `A121801(Δ[n²])+2` -/
def P17243845775945855642.Spec : Prop :=
  ∀ n, P17243845775945855642.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P11942793899339423208

`2*A001654(Δ[n²])`
-/

namespace A240836.P11942793899339423208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001654 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A240836.P11942793899339423208

namespace A240836

/-- `2*A001654(Δ[n²])` -/
def P11942793899339423208.Spec : Prop :=
  ∀ n, P11942793899339423208.a n = A240836 (n + 1)

end A240836

/-! ## A240836.P13868415808542400126

`∑[record[2*A099496(n)]]`
-/

namespace A240836.P13868415808542400126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240836.P13868415808542400126

namespace A240836

/-- `∑[record[2*A099496(n)]]` -/
def P13868415808542400126.Spec : Prop :=
  ∀ n, P13868415808542400126.a n = A240836 (n + 1)

end A240836

/-!
# A240838: Primes p such that prime(p) + 2*p^2 is prime.

The programs for A240838, there is no canonical definition to state claims against.
-/

/-! ## A240838.P9135600320290596535

`p?[∑[A187371(A001402(n))]]`
-/

namespace A240838.P9135600320290596535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187371 (A001402 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240838.P9135600320290596535

/-! ## A240838.P8994990145663787658

`p?[A248233(∑[A008459(n)])]`
-/

namespace A240838.P8994990145663787658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248233 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240838.P8994990145663787658

/-! ## A240838.P13640674271455522488

`A234695(lt[A196188(n+1), A325274(3*(n+1))])`
-/

namespace A240838.P13640674271455522488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325274 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234695 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240838.P13640674271455522488

/-!
# A240839: Both n and prime(n) are primes congruent to 3 (mod 10).

The programs for A240839, the canonical program `A240839.P18193742884803591972` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240839 has offset 1).

The definition of A240839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240839.P18193742884803591972

`∩[A030431(n+1), A271043(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A240839

/-- `∩[A030431(n+1), A271043(n+1)]` -/
def P18193742884803591972.Spec : Prop :=
  ∀ n, (P18193742884803591972.a n : ℤ) = A240839 (n + 1)

theorem P18193742884803591972.correct : P18193742884803591972.Spec := by
  intro n
  simp only [A240839, Nat.add_sub_cancel]

end A240839

/-! ## A240839.P7665936114876467986

`∩[A045414(n+1), A271043(n+1)]`
-/

namespace A240839.P7665936114876467986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P7665936114876467986

namespace A240839

/-- `∩[A045414(n+1), A271043(n+1)]` -/
def P7665936114876467986.Spec : Prop :=
  ∀ n, (P7665936114876467986.a n : ℤ) = A240839 (n + 1)

end A240839

/-! ## A240839.P691805235560329601

`∩[A004617(n+1), A271043(n+1)]`
-/

namespace A240839.P691805235560329601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P691805235560329601

namespace A240839

/-- `∩[A004617(n+1), A271043(n+1)]` -/
def P691805235560329601.Spec : Prop :=
  ∀ n, (P691805235560329601.a n : ℤ) = A240839 (n + 1)

end A240839

/-! ## A240839.P1239302502288629141

`∩[A271043(n+1), A017305(n)]`
-/

namespace A240839.P1239302502288629141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P1239302502288629141

namespace A240839

/-- `∩[A271043(n+1), A017305(n)]` -/
def P1239302502288629141.Spec : Prop :=
  ∀ n, (P1239302502288629141.a n : ℤ) = A240839 (n + 1)

end A240839

/-! ## A240839.P11394923489516822748

`∩[A030431(n+1), A067790(n+1)]`
-/

namespace A240839.P11394923489516822748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P11394923489516822748

namespace A240839

/-- `∩[A030431(n+1), A067790(n+1)]` -/
def P11394923489516822748.Spec : Prop :=
  ∀ n, (P11394923489516822748.a n : ℤ) = A240839 (n + 1)

end A240839

/-! ## A240839.P13094622898096078964

`∩[A045414(n+1), A067790(n+1)]`
-/

namespace A240839.P13094622898096078964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P13094622898096078964

namespace A240839

/-- `∩[A045414(n+1), A067790(n+1)]` -/
def P13094622898096078964.Spec : Prop :=
  ∀ n, (P13094622898096078964.a n : ℤ) = A240839 (n + 1)

end A240839

/-! ## A240839.P15985582787364399500

`∩[A271043(n+1), A277590(n+1)]`
-/

namespace A240839.P15985582787364399500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P15985582787364399500

namespace A240839

/-- `∩[A271043(n+1), A277590(n+1)]` -/
def P15985582787364399500.Spec : Prop :=
  ∀ n, (P15985582787364399500.a n : ℤ) = A240839 (n + 1)

end A240839

/-! ## A240839.P5969324331082859217

`filter[A067790(n+1), A185706(#)]`
-/

namespace A240839.P5969324331082859217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A240839.P5969324331082859217

namespace A240839

/-- `filter[A067790(n+1), A185706(#)]` -/
def P5969324331082859217.Spec : Prop :=
  ∀ n, P5969324331082859217.a n = A240839 (n + 1)

end A240839

/-! ## A240839.P2215656105466066561

`filter[A271043(n+1), A185706(#)]`
-/

namespace A240839.P2215656105466066561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A240839.P2215656105466066561

namespace A240839

/-- `filter[A271043(n+1), A185706(#)]` -/
def P2215656105466066561.Spec : Prop :=
  ∀ n, P2215656105466066561.a n = A240839 (n + 1)

end A240839

/-! ## A240839.P10434497365879997306

`∩[A271043(n+1), A016885(n)]`
-/

namespace A240839.P10434497365879997306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P10434497365879997306

namespace A240839

/-- `∩[A271043(n+1), A016885(n)]` -/
def P10434497365879997306.Spec : Prop :=
  ∀ n, (P10434497365879997306.a n : ℤ) = A240839 (n + 1)

end A240839

/-! ## A240839.P3949648986044773541

`∩[A109474(n+1), A271043(n+1)]`
-/

namespace A240839.P3949648986044773541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P3949648986044773541

namespace A240839

/-- `∩[A109474(n+1), A271043(n+1)]` -/
def P3949648986044773541.Spec : Prop :=
  ∀ n, (P3949648986044773541.a n : ℤ) = A240839 (n + 1)

end A240839

/-! ## A240839.P8185372025204676437

`∩[A235089(n+1), A271043(n+1)]`
-/

namespace A240839.P8185372025204676437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P8185372025204676437

namespace A240839

/-- `∩[A235089(n+1), A271043(n+1)]` -/
def P8185372025204676437.Spec : Prop :=
  ∀ n, (P8185372025204676437.a n : ℤ) = A240839 (n + 1)

end A240839

/-! ## A240839.P7070496470020962303

`∩[A271043(n+1), A277600(n+1)]`
-/

namespace A240839.P7070496470020962303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P7070496470020962303

namespace A240839

/-- `∩[A271043(n+1), A277600(n+1)]` -/
def P7070496470020962303.Spec : Prop :=
  ∀ n, (P7070496470020962303.a n : ℤ) = A240839 (n + 1)

end A240839

/-! ## A240839.P13103796293340520801

`filter[A049508(n+1), A185706(#)]`
-/

namespace A240839.P13103796293340520801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A240839.P13103796293340520801

namespace A240839

/-- `filter[A049508(n+1), A185706(#)]` -/
def P13103796293340520801.Spec : Prop :=
  ∀ n, P13103796293340520801.a n = A240839 (n + 1)

end A240839

/-! ## A240839.P8006996310098600041

`filter[A244739(n+3), A185706(#)]`
-/

namespace A240839.P8006996310098600041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244739 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A240839.P8006996310098600041

namespace A240839

/-- `filter[A244739(n+3), A185706(#)]` -/
def P8006996310098600041.Spec : Prop :=
  ∀ n, P8006996310098600041.a n = A240839 (n + 1)

end A240839

/-! ## A240839.P15892050907047887542

`∩[A030431(n+1), A049508(n+1)]`
-/

namespace A240839.P15892050907047887542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P15892050907047887542

namespace A240839

/-- `∩[A030431(n+1), A049508(n+1)]` -/
def P15892050907047887542.Spec : Prop :=
  ∀ n, (P15892050907047887542.a n : ℤ) = A240839 (n + 1)

end A240839

/-! ## A240839.P2960164342620175776

`∩[A045414(n+1), A049508(n+1)]`
-/

namespace A240839.P2960164342620175776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P2960164342620175776

namespace A240839

/-- `∩[A045414(n+1), A049508(n+1)]` -/
def P2960164342620175776.Spec : Prop :=
  ∀ n, (P2960164342620175776.a n : ℤ) = A240839 (n + 1)

end A240839

/-! ## A240839.P1256160926486477936

`∩[A049508(n+1), A271043(n+1)]`
-/

namespace A240839.P1256160926486477936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P1256160926486477936

namespace A240839

/-- `∩[A049508(n+1), A271043(n+1)]` -/
def P1256160926486477936.Spec : Prop :=
  ∀ n, (P1256160926486477936.a n : ℤ) = A240839 (n + 1)

end A240839

/-! ## A240839.P4329464690358551296

`∩[A244739(n+1), A271043(n+1)]`
-/

namespace A240839.P4329464690358551296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P4329464690358551296

namespace A240839

/-- `∩[A244739(n+1), A271043(n+1)]` -/
def P4329464690358551296.Spec : Prop :=
  ∀ n, (P4329464690358551296.a n : ℤ) = A240839 (n + 1)

end A240839

/-! ## A240839.P8958961879368243626

`∩[A271043(n+1), A277555(n+1)]`
-/

namespace A240839.P8958961879368243626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P8958961879368243626

namespace A240839

/-- `∩[A271043(n+1), A277555(n+1)]` -/
def P8958961879368243626.Spec : Prop :=
  ∀ n, (P8958961879368243626.a n : ℤ) = A240839 (n + 1)

end A240839

/-!
# A240840: Floor(6^n/(1+1/(2*cos(5*Pi/11)))^n).

The programs for A240840, the canonical program `A240840.P10066369579786689659` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240840 has offset 0).

The definition of A240840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(6^n/(1+1/(2*cos(5*π/11)))^n)` (program `A240840.P10066369579786689659`, by `A240840.P10066369579786689659.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240840.P10066369579786689659

`floor(6^n/(1+1/(2*cos(5*π/11)))^n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240840

/-- `floor(6^n/(1+1/(2*cos(5*π/11)))^n)` -/
def P10066369579786689659.Spec : Prop :=
  ∀ n, P10066369579786689659.a n = A240840 n

theorem P10066369579786689659.correct : P10066369579786689659.Spec := by
  intro n
  simp only [A240840]

end A240840

/-! ## A240840.P14031818384775420707

`floor(root(A137684(n), 8))`
-/

namespace A240840.P14031818384775420707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137684 n : ℝ) ^ (1 / (8 : ℝ))⌋

end

end A240840.P14031818384775420707

namespace A240840

/-- `floor(root(A137684(n), 8))` -/
def P14031818384775420707.Spec : Prop :=
  ∀ n, P14031818384775420707.a n = A240840 n

end A240840

/-! ## A240840.P14133261066606399235

`A172471(round(sqrt(A192906(n))))`
-/

namespace A240840.P14133261066606399235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (SequenceMachineLib.roundAway (Real.sqrt (A192906 n : ℝ))).toNat

end

end A240840.P14133261066606399235

namespace A240840

/-- `A172471(round(sqrt(A192906(n))))` -/
def P14133261066606399235.Spec : Prop :=
  ∀ n, P14133261066606399235.a n = A240840 n

end A240840

/-! ## A240840.P7283484176272051609

`A003056(abs(A056016(n))+1)`
-/

namespace A240840.P7283484176272051609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (|A056016 n| + 1).toNat

end

end A240840.P7283484176272051609

namespace A240840

/-- `A003056(abs(A056016(n))+1)` -/
def P7283484176272051609.Spec : Prop :=
  ∀ n, P7283484176272051609.a n = A240840 n

end A240840

/-! ## A240840.P14464156672803248218

`A088141(A093608(n))`
-/

namespace A240840.P14464156672803248218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A093608 n).toNat

end

end A240840.P14464156672803248218

namespace A240840

/-- `A088141(A093608(n))` -/
def P14464156672803248218.Spec : Prop :=
  ∀ n, P14464156672803248218.a n = A240840 n

end A240840

/-!
# A240841: a(n) = floor(8^n/(1+2*sin(6*Pi/13)/(2*sin(Pi/13)))^n).

The programs for A240841, the canonical program `A240841.P7146364695717081022` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240841 has offset 0).

The definition of A240841 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(8^n/(1+2*sin(6*π/13)/(2*sin(π/13)))^n)` (program `A240841.P7146364695717081022`, by `A240841.P7146364695717081022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240841.P7146364695717081022

`floor(8^n/(1+2*sin(6*π/13)/(2*sin(π/13)))^n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240841

/-- `floor(8^n/(1+2*sin(6*π/13)/(2*sin(π/13)))^n)` -/
def P7146364695717081022.Spec : Prop :=
  ∀ n, P7146364695717081022.a n = A240841 n

theorem P7146364695717081022.correct : P7146364695717081022.Spec := by
  intro n
  simp only [A240841]

end A240841

/-! ## A240841.P2420356764173775630

`A172471(A131721(n))`
-/

namespace A240841.P2420356764173775630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A131721 n).toNat

end

end A240841.P2420356764173775630

namespace A240841

/-- `A172471(A131721(n))` -/
def P2420356764173775630.Spec : Prop :=
  ∀ n, P2420356764173775630.a n = A240841 n

end A240841

/-! ## A240841.P16732452738026254716

`A172471(Δ[A131710(n)])`
-/

namespace A240841.P16732452738026254716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (f1 (n + 1) - f1 n).toNat

end

end A240841.P16732452738026254716

namespace A240841

/-- `A172471(Δ[A131710(n)])` -/
def P16732452738026254716.Spec : Prop :=
  ∀ n, P16732452738026254716.a n = A240841 n

end A240841

/-! ## A240841.P4423140627280000504

`A172471(or(∑[(-1)^(n%3)], A001333(n)))`
-/

namespace A240841.P4423140627280000504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A001333 n)).toNat

end

end A240841.P4423140627280000504

namespace A240841

/-- `A172471(or(∑[(-1)^(n%3)], A001333(n)))` -/
def P4423140627280000504.Spec : Prop :=
  ∀ n, P4423140627280000504.a n = A240841 n

end A240841

/-! ## A240841.P5834663487432118331

`A172471(A002266(n)+A001333(n))`
-/

namespace A240841.P5834663487432118331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A002266 n + A001333 n).toNat

end

end A240841.P5834663487432118331

namespace A240841

/-- `A172471(A002266(n)+A001333(n))` -/
def P5834663487432118331.Spec : Prop :=
  ∀ n, P5834663487432118331.a n = A240841 n

end A240841

/-!
# A240842: Numbers n such that n - 2*k^2 is a prime for all k > 0 with k^2 < n/2.

The programs for A240842, there is no canonical definition to state claims against.
-/

/-! ## A240842.P16475276438643945660

`∑[A326038(abs(A012960(n)))]`
-/

namespace A240842.P16475276438643945660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 |A012960 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240842.P16475276438643945660

/-! ## A240842.P15403129919744243438

`∑[dr(A246596(A073357(n)))]`
-/

namespace A240842.P15403129919744243438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A246596 (A073357 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240842.P15403129919744243438

/-! ## A240842.P18383034833775513787

`∑[A093819(record[A353315(n)])]`
-/

namespace A240842.P18383034833775513787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353315 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240842.P18383034833775513787

/-! ## A240842.P6798812330575002280

`∑[A106476(A167689(∑[n+2]+4))]`
-/

namespace A240842.P6798812330575002280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106476 (A167689 (∑ j ∈ Finset.range (n + 1), f2 j + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240842.P6798812330575002280

/-! ## A240842.P4697039426743156298

`∑[A257495(∑[A257500(3*(n+1))])]`
-/

namespace A240842.P4697039426743156298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257500 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257495 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240842.P4697039426743156298

/-!
# A240843: Primes p with property that appending or prepending any single decimal digit to p does not produce a prime.

The programs for A240843, there is no canonical definition to state claims against.
-/

/-! ## A240843.P18304224233531306080

`∩[A119289(n+1), A155762(n+1)]`
-/

namespace A240843.P18304224233531306080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240843.P18304224233531306080

/-!
# A240844: Number of partitions of n into tribonacci numbers (cf. A000073).

The programs for A240844, there is no canonical definition to state claims against.
-/

/-! ## A240844.P629829682920322577

`∑[A029303(A047229(n+1))%A129603(3*n+4)]`
-/

namespace A240844.P629829682920322577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029303 (A047229 (n + 1)).toNat) (A129603 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240844.P629829682920322577

/-! ## A240844.P1285103975761251745

`A277903(A114854(n+1)+A114851(n+2))`
-/

namespace A240844.P1285103975761251745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A114854 (n + 1) + A114851 (n + 2)).toNat

end

end A240844.P1285103975761251745

/-! ## A240844.P10844689118668130192

`∑[A003958(2^n)*A029303(A047229(n+1))]`
-/

namespace A240844.P10844689118668130192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (2 ^ n) * A029303 (A047229 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240844.P10844689118668130192

/-! ## A240844.P6252595405756355815

`A390813(A035554(n))`
-/

namespace A240844.P6252595405756355815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390813 (A035554 n).toNat

end

end A240844.P6252595405756355815

/-!
# A240845: Numbers m equal to the product of all of their integral proper roots (defined as numbers k in the range 1 < k < m such that k^j = m for some j).

The programs for A240845, there is no canonical definition to state claims against.
-/

/-! ## A240845.P17824477921188918792

`∪[A153160(n+1), A194936(n+1)]`
-/

namespace A240845.P17824477921188918792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A240845.P17824477921188918792

/-!
# A240846: a(0)=0, a(1)=1, a(n) = a(n-1)*12 + 13.

The programs for A240846, the canonical program `A240846.P2625446120212142214` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240846 has offset 0).

The definition of A240846 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*12+13` (program `A240846.P2625446120212142214`, by `A240846.P2625446120212142214.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240846.P87656885150271576

`ogf((x+12x^2)/(1-13x+12x^2))`
-/

namespace A240846.P87656885150271576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 12] [1, -13, 12] n

end

end A240846.P87656885150271576

namespace A240846

/-- `ogf((x+12x^2)/(1-13x+12x^2))` -/
def P87656885150271576.Spec : Prop :=
  ∀ n, P87656885150271576.a n = A240846 n

end A240846

/-! ## A240846.P2625446120212142214

`a(n-1)*12+13` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240846

/-- `a(n-1)*12+13` -/
def P2625446120212142214.Spec : Prop :=
  ∀ n, (P2625446120212142214.a n : ℤ) = A240846 n

theorem P2625446120212142214.correct : P2625446120212142214.Spec := by
  intro n
  simp only [A240846]

end A240846

/-! ## A240846.P5495244401770963408

`13*a(n-1)-12*a(n-2)` with `a(0)=0, a(1)=1, a(2)=25`
-/

namespace A240846.P5495244401770963408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 25] fun n a =>
  13 * a (n - 1) - 12 * a (n - 2)

end

end A240846.P5495244401770963408

namespace A240846

/-- `13*a(n-1)-12*a(n-2)` -/
def P5495244401770963408.Spec : Prop :=
  ∀ n, P5495244401770963408.a n = A240846 n

end A240846

/-! ## A240846.P9058878806086035668

`12*a(n-1)+13` with `a(0)=0, a(1)=1`
-/

namespace A240846.P9058878806086035668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  12 * a (n - 1) + 13

end

end A240846.P9058878806086035668

namespace A240846

/-- `12*a(n-1)+13` -/
def P9058878806086035668.Spec : Prop :=
  ∀ n, (P9058878806086035668.a n : ℤ) = A240846 n

theorem P9058878806086035668.correct : P9058878806086035668.Spec := by
  intro n
  simp only [A240846, Nat.add_sub_cancel, A240846.P9058878806086035668.a, A240846.P2625446120212142214.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A240846

/-! ## A240846.P11290182128190299837

`lcm(12, a(n-1))+13` with `a(0)=0, a(1)=1`
-/

namespace A240846.P11290182128190299837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lcm 12 (a (n - 1)) + 13

end

end A240846.P11290182128190299837

namespace A240846

/-- `lcm(12, a(n-1))+13` -/
def P11290182128190299837.Spec : Prop :=
  ∀ n, (P11290182128190299837.a n : ℤ) = A240846 n

end A240846

/-! ## A240846.P10069057016282052923

`xor(21, 12*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A240846.P10069057016282052923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor 21 (12 * a (n - 1))

end

end A240846.P10069057016282052923

namespace A240846

/-- `xor(21, 12*a(n-1))` -/
def P10069057016282052923.Spec : Prop :=
  ∀ n, (P10069057016282052923.a n : ℤ) = A240846 n

end A240846

/-! ## A240846.P2875755773922060066

`∑[12*a(n-1)]` with `a(0)=0, a(1)=1, a(2)=24`
-/

namespace A240846.P2875755773922060066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 24] fun n f1 =>
  12 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240846.P2875755773922060066

namespace A240846

/-- `∑[12*a(n-1)]` -/
def P2875755773922060066.Spec : Prop :=
  ∀ n, (P2875755773922060066.a n : ℤ) = A240846 n

end A240846

/-! ## A240846.P9092440722760579837

`a(n-1)+12^(n-1)+12^(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A240846.P9092440722760579837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + ((12 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (12 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A240846.P9092440722760579837

namespace A240846

/-- `a(n-1)+12^(n-1)+12^(n-1)` -/
def P9092440722760579837.Spec : Prop :=
  ∀ n, P9092440722760579837.a n = (A240846 n : ℚ)

end A240846

/-! ## A240846.P9672563657089877123

`A016125(n)%A173535(n)`
-/

namespace A240846.P9672563657089877123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016125 n) (A173535 n)

end

end A240846.P9672563657089877123

namespace A240846

/-- `A016125(n)%A173535(n)` -/
def P9672563657089877123.Spec : Prop :=
  ∀ n, P9672563657089877123.a n = A240846 n

end A240846

/-! ## A240846.P1248092592840417720

`∑[A001021(n)]%A173535(n)`
-/

namespace A240846.P1248092592840417720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A173535 n)

end

end A240846.P1248092592840417720

namespace A240846

/-- `∑[A001021(n)]%A173535(n)` -/
def P1248092592840417720.Spec : Prop :=
  ∀ n, P1248092592840417720.a n = A240846 n

end A240846

/-!
# A240847: a(n) = 2*a(n-1) + a(n-2) - 2*a(n-3) - a(n-4) for n>3, a(0)=a(1)=a(3)=0, a(2)=1.

The programs for A240847, the canonical program `A240847.P6276836629425897663` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240847 has offset 0).

The definition of A240847 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` (program `A240847.P6276836629425897663`, by `A240847.P6276836629425897663.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240847.P16256896997806966420

`ogf((x^2-2x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A240847.P16256896997806966420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -2] [1, -2, -1, 2, 1] n

end

end A240847.P16256896997806966420

namespace A240847

/-- `ogf((x^2-2x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P16256896997806966420.Spec : Prop :=
  ∀ n, P16256896997806966420.a n = A240847 n

end A240847

/-! ## A240847.P6276836629425897663

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240847

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P6276836629425897663.Spec : Prop :=
  ∀ n, P6276836629425897663.a n = A240847 n

theorem P6276836629425897663.correct : P6276836629425897663.Spec := by
  intro n
  simp only [A240847]

end A240847

/-! ## A240847.P5886718941231178466

`A000045(n+1)-A206268(n)`
-/

namespace A240847.P5886718941231178466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A206268 n

end

end A240847.P5886718941231178466

namespace A240847

/-- `A000045(n+1)-A206268(n)` -/
def P5886718941231178466.Spec : Prop :=
  ∀ n, P5886718941231178466.a n = A240847 n

end A240847

/-! ## A240847.P5960131858348921364

`A006355(n+1)-A191830(n+1)`
-/

namespace A240847.P5960131858348921364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) - A191830 (n + 1)

end

end A240847.P5960131858348921364

namespace A240847

/-- `A006355(n+1)-A191830(n+1)` -/
def P5960131858348921364.Spec : Prop :=
  ∀ n, P5960131858348921364.a n = A240847 n

end A240847

/-! ## A240847.P8018298412282611755

`A000045(n)+A000045(n)-A191830(n+1)`
-/

namespace A240847.P8018298412282611755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A000045 n - A191830 (n + 1))

end

end A240847.P8018298412282611755

namespace A240847

/-- `A000045(n)+A000045(n)-A191830(n+1)` -/
def P8018298412282611755.Spec : Prop :=
  ∀ n, P8018298412282611755.a n = A240847 n

end A240847

/-! ## A240847.P4903898040016716074

`A206268(n+1)-A208354(n)`
-/

namespace A240847.P4903898040016716074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206268 (n + 1) - A208354 n

end

end A240847.P4903898040016716074

namespace A240847

/-- `A206268(n+1)-A208354(n)` -/
def P4903898040016716074.Spec : Prop :=
  ∀ n, P4903898040016716074.a n = A240847 n

end A240847

/-! ## A240847.P16603942170913583107

`A010049(n)+n*A152163(n)`
-/

namespace A240847.P16603942170913583107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + (n : ℤ) * A152163 n

end

end A240847.P16603942170913583107

namespace A240847

/-- `A010049(n)+n*A152163(n)` -/
def P16603942170913583107.Spec : Prop :=
  ∀ n, P16603942170913583107.a n = A240847 n

end A240847

/-! ## A240847.P18293423623803652053

`A010049(n)-n*Δ[A212804(n)]`
-/

namespace A240847.P18293423623803652053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n - (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A240847.P18293423623803652053

namespace A240847

/-- `A010049(n)-n*Δ[A212804(n)]` -/
def P18293423623803652053.Spec : Prop :=
  ∀ n, P18293423623803652053.a n = A240847 n

end A240847

/-! ## A240847.P5619284317407098920

`A094588(n)-A001629(n+1)`
-/

namespace A240847.P5619284317407098920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 n - A001629 (n + 1)

end

end A240847.P5619284317407098920

namespace A240847

/-- `A094588(n)-A001629(n+1)` -/
def P5619284317407098920.Spec : Prop :=
  ∀ n, P5619284317407098920.a n = A240847 n

end A240847

/-! ## A240847.P3852745232737056336

`A136391(n+1)-A055244(n)`
-/

namespace A240847.P3852745232737056336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136391 (n + 1) - A055244 n

end

end A240847.P3852745232737056336

namespace A240847

/-- `A136391(n+1)-A055244(n)` -/
def P3852745232737056336.Spec : Prop :=
  ∀ n, P3852745232737056336.a n = A240847 n

end A240847

/-! ## A240847.P15694159367750549054

`A208354(n+1)-(A208354(n)+A010049(n))`
-/

namespace A240847.P15694159367750549054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 1) - (A208354 n + A010049 n)

end

end A240847.P15694159367750549054

namespace A240847

/-- `A208354(n+1)-(A208354(n)+A010049(n))` -/
def P15694159367750549054.Spec : Prop :=
  ∀ n, P15694159367750549054.a n = A240847 n

end A240847

/-! ## A240847.P12778798512029326872

`A206268(n+1)+A029907(n)-A029907(n+1)`
-/

namespace A240847.P12778798512029326872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206268 (n + 1) + (A029907 n - A029907 (n + 1))

end

end A240847.P12778798512029326872

namespace A240847

/-- `A206268(n+1)+A029907(n)-A029907(n+1)` -/
def P12778798512029326872.Spec : Prop :=
  ∀ n, P12778798512029326872.a n = A240847 n

end A240847

/-! ## A240847.P17981846671966228463

`2*A029907(n)-A099920(n)`
-/

namespace A240847.P17981846671966228463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029907 n - A099920 n

end

end A240847.P17981846671966228463

namespace A240847

/-- `2*A029907(n)-A099920(n)` -/
def P17981846671966228463.Spec : Prop :=
  ∀ n, P17981846671966228463.a n = A240847 n

end A240847

/-! ## A240847.P15603981363082774793

`Δ[Δ[A029907(n)]-A001629(n)]`
-/

namespace A240847.P15603981363082774793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240847.P15603981363082774793

namespace A240847

/-- `Δ[Δ[A029907(n)]-A001629(n)]` -/
def P15603981363082774793.Spec : Prop :=
  ∀ n, P15603981363082774793.a n = A240847 n

end A240847

/-! ## A240847.P6738388611148747599

`Δ[Δ[A029907(n)]]-A010049(n)`
-/

namespace A240847.P6738388611148747599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010049 n

end

end A240847.P6738388611148747599

namespace A240847

/-- `Δ[Δ[A029907(n)]]-A010049(n)` -/
def P6738388611148747599.Spec : Prop :=
  ∀ n, P6738388611148747599.a n = A240847 n

end A240847

/-! ## A240847.P17015776912404226411

`A006367(n+1)-Δ[n*A212804(n)]`
-/

namespace A240847.P17015776912404226411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (n + 1) - (f1 (n + 1) - f1 n)

end

end A240847.P17015776912404226411

namespace A240847

/-- `A006367(n+1)-Δ[n*A212804(n)]` -/
def P17015776912404226411.Spec : Prop :=
  ∀ n, P17015776912404226411.a n = A240847 n

end A240847

/-! ## A240847.P2670271268699510975

`Δ[A055244(n)-A001629(n)-A001629(n)]`
-/

namespace A240847.P2670271268699510975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n - A001629 n - A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240847.P2670271268699510975

namespace A240847

/-- `Δ[A055244(n)-A001629(n)-A001629(n)]` -/
def P2670271268699510975.Spec : Prop :=
  ∀ n, P2670271268699510975.a n = A240847 n

end A240847

/-! ## A240847.P10029909329091387439

`Δ[A055244(n)-2*A001629(n)]`
-/

namespace A240847.P10029909329091387439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n - 2 * A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240847.P10029909329091387439

namespace A240847

/-- `Δ[A055244(n)-2*A001629(n)]` -/
def P10029909329091387439.Spec : Prop :=
  ∀ n, P10029909329091387439.a n = A240847 n

end A240847

/-! ## A240847.P6665496586000120433

`A023610(n)-A007502(n+1)-A045925(n)`
-/

namespace A240847.P6665496586000120433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n - A007502 (n + 1) - A045925 n

end

end A240847.P6665496586000120433

namespace A240847

/-- `A023610(n)-A007502(n+1)-A045925(n)` -/
def P6665496586000120433.Spec : Prop :=
  ∀ n, P6665496586000120433.a n = A240847 n

end A240847

/-! ## A240847.P4357016433279881880

`A088209(n)-(A007502(n+1)+A001629(n+1))`
-/

namespace A240847.P4357016433279881880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088209 n - (A007502 (n + 1) + A001629 (n + 1))

end

end A240847.P4357016433279881880

namespace A240847

/-- `A088209(n)-(A007502(n+1)+A001629(n+1))` -/
def P4357016433279881880.Spec : Prop :=
  ∀ n, P4357016433279881880.a n = A240847 n

end A240847

/-!
# A240848: Sum of n, digitsum(n) and number of digits of n.

The programs for A240848, the canonical program `A240848.P13107810746749667617` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240848 has offset 0).

The definition of A240848 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A240848.P13107810746749667617

`n+A007953(n)+A055642(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A240848

/-- `n+A007953(n)+A055642(n)` -/
def P13107810746749667617.Spec : Prop :=
  ∀ n, P13107810746749667617.a n = A240848 n

theorem P13107810746749667617.correct : P13107810746749667617.Spec := by
  intro n
  simp only [A240848]

end A240848

/-! ## A240848.P13217405517779518664

`∑{digits}[n, #+1]+n`
-/

namespace A240848.P13217405517779518664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).sum + n

end

end A240848.P13217405517779518664

namespace A240848

/-- `∑{digits}[n, #+1]+n` -/
def P13217405517779518664.Spec : Prop :=
  ∀ n, (P13217405517779518664.a n : ℤ) = A240848 n

end A240848

/-! ## A240848.P6558472011322227914

`n-∑{digits}[n, xor(#, -1)]`
-/

namespace A240848.P6558472011322227914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.xor (x : ℤ) (-1)).sum

end

end A240848.P6558472011322227914

namespace A240848

/-- `n-∑{digits}[n, xor(#, -1)]` -/
def P6558472011322227914.Spec : Prop :=
  ∀ n, P6558472011322227914.a n = A240848 n

end A240848

/-! ## A240848.P4373478915150216325

`A337843(n)+∑{digits}[n, #]`
-/

namespace A240848.P4373478915150216325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A240848.P4373478915150216325

namespace A240848

/-- `A337843(n)+∑{digits}[n, #]` -/
def P4373478915150216325.Spec : Prop :=
  ∀ n, P4373478915150216325.a n = A240848 n

end A240848

/-! ## A240848.P8649367197092789928

`A062028(n)+A055642(n)`
-/

namespace A240848.P8649367197092789928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n + A055642 n

end

end A240848.P8649367197092789928

namespace A240848

/-- `A062028(n)+A055642(n)` -/
def P8649367197092789928.Spec : Prop :=
  ∀ n, P8649367197092789928.a n = A240848 n

end A240848

/-! ## A240848.P16314762806598119922

`A337843(n)+A007953(n)`
-/

namespace A240848.P16314762806598119922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n + A007953 n

end

end A240848.P16314762806598119922

namespace A240848

/-- `A337843(n)+A007953(n)` -/
def P16314762806598119922.Spec : Prop :=
  ∀ n, P16314762806598119922.a n = A240848 n

theorem P16314762806598119922.correct : P16314762806598119922.Spec := by
  intro n
  simp only [A240848, Nat.add_sub_cancel, A240848.P16314762806598119922.a, A240848.P13107810746749667617.a, A007953, A007953.P3472751987379697826.a, A055642, A055642.P2478179801723442865.a, A337843, A337843.P8962796639510321882.a, A054899, A054899.P10770181254942084517.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240848

/-! ## A240848.P7961241728212512124

`A337843(n)+sqrt(A118881(n))`
-/

namespace A240848.P7961241728212512124
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A337843 n : ℝ) + Real.sqrt (A118881 n : ℝ)

end

end A240848.P7961241728212512124

namespace A240848

/-- `A337843(n)+sqrt(A118881(n))` -/
def P7961241728212512124.Spec : Prop :=
  ∀ n, P7961241728212512124.a n = (A240848 n : ℝ)

end A240848

/-! ## A240848.P7357858070218805202

`A062028(n)+dr(A348783(n))`
-/

namespace A240848.P7357858070218805202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n + (SequenceMachineLib.digitalRoot (A348783 n) : ℤ)

end

end A240848.P7357858070218805202

namespace A240848

/-- `A062028(n)+dr(A348783(n))` -/
def P7357858070218805202.Spec : Prop :=
  ∀ n, P7357858070218805202.a n = A240848 n

end A240848

/-! ## A240848.P10021210581412056821

`A055642(n)+sqrt(A118881(n))+n`
-/

namespace A240848.P10021210581412056821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055642 n : ℝ) + (Real.sqrt (A118881 n : ℝ) + (n : ℝ))

end

end A240848.P10021210581412056821

namespace A240848

/-- `A055642(n)+sqrt(A118881(n))+n` -/
def P10021210581412056821.Spec : Prop :=
  ∀ n, P10021210581412056821.a n = (A240848 n : ℝ)

end A240848

/-! ## A240848.P10284718264799918881

`A160093(A052928(n)+1)+A062028(n)`
-/

namespace A240848.P10284718264799918881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (A052928 n + 1).toNat + A062028 n

end

end A240848.P10284718264799918881

namespace A240848

/-- `A160093(A052928(n)+1)+A062028(n)` -/
def P10284718264799918881.Spec : Prop :=
  ∀ n, P10284718264799918881.a n = A240848 n

end A240848

/-! ## A240848.P5732374176426324007

`A055642(n)+A004525(A169805(n))+n`
-/

namespace A240848.P5732374176426324007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n + (A004525 (A169805 n).toNat + (n : ℤ))

end

end A240848.P5732374176426324007

namespace A240848

/-- `A055642(n)+A004525(A169805(n))+n` -/
def P5732374176426324007.Spec : Prop :=
  ∀ n, P5732374176426324007.a n = A240848 n

end A240848

/-! ## A240848.P15890236387525252908

`A273005(n)+1+n`
-/

namespace A240848.P15890236387525252908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273005 n + 1 + (n : ℤ)

end

end A240848.P15890236387525252908

namespace A240848

/-- `A273005(n)+1+n` -/
def P15890236387525252908.Spec : Prop :=
  ∀ n, P15890236387525252908.a n = A240848 n

end A240848

/-!
# A240849: Quinary happy numbers.

The programs for A240849, there is no canonical definition to state claims against.
-/

/-! ## A240849.P18020016789944819730

`∑[A008441(A001172(n)²)]`
-/

namespace A240849.P18020016789944819730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (A001172 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240849.P18020016789944819730

/-! ## A240849.P720571587024420847

`lt[A207031(n+1), A207031(A265723(n+1))]`
-/

namespace A240849.P720571587024420847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207031 (A265723 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A240849.P720571587024420847

/-! ## A240849.P5066145262804714835

`eq[A072438(A252754(2*(n+2))), A325470(3*n+5)]`
-/

namespace A240849.P5066145262804714835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A252754 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325470 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240849.P5066145262804714835

/-! ## A240849.P794252570352770383

`eq[A000002(A335490(2*n+3)), A335497(n+1)]`
-/

namespace A240849.P794252570352770383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A335490 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335497 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240849.P794252570352770383

/-!
# A240850: Number of partitions p of n into distinct parts including mean(p).

The programs for A240850, there is no canonical definition to state claims against.
-/

/-! ## A240850.P13006160181171685576

`A035457(A004277(n))-A240851(n)`
-/

namespace A240850.P13006160181171685576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A240851 n

end

end A240850.P13006160181171685576

/-! ## A240850.P3567318044168539370

`A000009(n)-(A240851(n)+A000007(n))`
-/

namespace A240850.P3567318044168539370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A240851 n + A000007 n)

end

end A240850.P3567318044168539370

/-! ## A240850.P5030734362148266005

`A240852(n)+A240858(n)-A240851(n)`
-/

namespace A240850.P5030734362148266005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240852 n + (A240858 n - A240851 n)

end

end A240850.P5030734362148266005

/-! ## A240850.P15917098690786801360

`(A000009(n)-A240851(n))%A000032(n+1)`
-/

namespace A240850.P15917098690786801360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A240851 n) (A000032 (n + 1))

end

end A240850.P15917098690786801360

/-! ## A240850.P5234406133842212967

`(A000009(n)-A240851(n))*A000040(n+1)%2`
-/

namespace A240850.P5234406133842212967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n - A240851 n) * Int.tmod (A000040 (n + 1)) 2

end

end A240850.P5234406133842212967

/-! ## A240850.P4611665504533118625

`A000009(n)-A240851(n)-and(1, A000010(n+2))`
-/

namespace A240850.P4611665504533118625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240851 n - Int.land 1 (A000010 (n + 2))

end

end A240850.P4611665504533118625

/-! ## A240850.P294152729710277771

`A061199(A000124(n))-A240851(n)`
-/

namespace A240850.P294152729710277771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A000124 n).toNat - A240851 n

end

end A240850.P294152729710277771

/-! ## A240850.P6414402940375594190

`A359897(n)+A359898(n)-A240851(n)`
-/

namespace A240850.P6414402940375594190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359897 n + (A359898 n - A240851 n)

end

end A240850.P6414402940375594190

/-!
# A240851: Number of partitions p of n into distinct parts not including mean(p).

The programs for A240851, there is no canonical definition to state claims against.
-/

/-! ## A240851.P17705343629066751679

`A052839(n)-(A240850(n)+1)`
-/

namespace A240851.P17705343629066751679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A240850 n + 1)

end

end A240851.P17705343629066751679

/-! ## A240851.P10844406433566375647

`A117409(n+2)-A240850(n)`
-/

namespace A240851.P10844406433566375647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (n + 2) - A240850 n

end

end A240851.P10844406433566375647

/-! ## A240851.P12880730940206830675

`A000009(n)-round(1/acot(A240850(n)))`
-/

namespace A240851.P12880730940206830675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A240850 n : ℝ))

end

end A240851.P12880730940206830675

/-! ## A240851.P1155485031594847708

`A000009(n)-A240850(round(acot(n)+n))`
-/

namespace A240851.P1155485031594847708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240850 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A240851.P1155485031594847708

/-! ## A240851.P14635611194208067115

`A000009(n)-A240850(round(sqrt(n²+1)))`
-/

namespace A240851.P14635611194208067115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240850 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A240851.P14635611194208067115

/-! ## A240851.P1456491896471732986

`(A333147(n)+1)/2-round(1/acot(A240850(n)))`
-/

namespace A240851.P1456491896471732986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333147 n + 1 : ℚ) / 2 - (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A240850 n : ℝ)) : ℚ)

end

end A240851.P1456491896471732986

/-! ## A240851.P3381119277979362528

`A035457(A004277(n))-A240850(n)`
-/

namespace A240851.P3381119277979362528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A240850 n

end

end A240851.P3381119277979362528

/-! ## A240851.P16079356162979941779

`abs(A081360(n))-A240850(A028310(n))`
-/

namespace A240851.P16079356162979941779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A240850 (A028310 n).toNat

end

end A240851.P16079356162979941779

/-! ## A240851.P12217981411365225687

`A240852(n)+A240858(n)-A240850(n)`
-/

namespace A240851.P12217981411365225687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240852 n + (A240858 n - A240850 n)

end

end A240851.P12217981411365225687

/-! ## A240851.P1440811729893273755

`A061199(A000124(n))-A240850(n)`
-/

namespace A240851.P1440811729893273755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A000124 n).toNat - A240850 n

end

end A240851.P1440811729893273755

/-!
# A240852: Number of partitions p of n into distinct parts including max(p) - min(p).

The programs for A240852, there is no canonical definition to state claims against.
-/

/-! ## A240852.P3032641885650003644

`A000009(n)-round(1/acot(A240858(n)))`
-/

namespace A240852.P3032641885650003644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A240858 n : ℝ))

end

end A240852.P3032641885650003644

/-! ## A240852.P3474934962084827054

`A000009(n)-A240858(round(acot(n)+n))`
-/

namespace A240852.P3474934962084827054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240858 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A240852.P3474934962084827054

/-! ## A240852.P3764683229155274013

`A000009(n)-A240858(round(sqrt(n²+1)))`
-/

namespace A240852.P3764683229155274013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240858 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A240852.P3764683229155274013

/-! ## A240852.P14882484644475065493

`A111133(n)+1-A240858(A028310(n))`
-/

namespace A240852.P14882484644475065493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1 - A240858 (A028310 n).toNat

end

end A240852.P14882484644475065493

/-! ## A240852.P18142893608358616274

`A035457(2*n)-A240858(A028310(n))`
-/

namespace A240852.P18142893608358616274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A240858 (A028310 n).toNat

end

end A240852.P18142893608358616274

/-! ## A240852.P5448912876203279883

`A000009(n)-(A240858(n)+A000007(n))`
-/

namespace A240852.P5448912876203279883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A240858 n + A000007 n)

end

end A240852.P5448912876203279883

/-! ## A240852.P9021191814512000605

`(A000009(n)-A240858(n))%A000041(n)`
-/

namespace A240852.P9021191814512000605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A240858 n) (A000041 n)

end

end A240852.P9021191814512000605

/-! ## A240852.P16831967367556233739

`(A000009(n)-A240858(n))*A000040(n+1)%2`
-/

namespace A240852.P16831967367556233739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n - A240858 n) * Int.tmod (A000040 (n + 1)) 2

end

end A240852.P16831967367556233739

/-! ## A240852.P14811775941559353606

`A061199(∑[n]+1)-A240858(n)`
-/

namespace A240852.P14811775941559353606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A240858 n

end

end A240852.P14811775941559353606

/-!
# A240853: Number of partitions p of n into distinct parts including 2*min(p).

The programs for A240853, there is no canonical definition to state claims against.
-/

/-! ## A240853.P13838425230889927690

`A052839(n)-(A240854(n)+1)`
-/

namespace A240853.P13838425230889927690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A240854 n + 1)

end

end A240853.P13838425230889927690

/-! ## A240853.P16592907697372549397

`A285229(∑[n]+1)-A240854(n)`
-/

namespace A240853.P16592907697372549397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A240854 n

end

end A240853.P16592907697372549397

/-! ## A240853.P8276914475591587030

`A000009(n)-A240854(round(sqrt(n²+1)))`
-/

namespace A240853.P8276914475591587030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240854 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A240853.P8276914475591587030

/-! ## A240853.P14911101502022351742

`A052839(round(acot(n)+n))%(A240854(n)+1)`
-/

namespace A240853.P14911101502022351742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052839 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) (A240854 n + 1)

end

end A240853.P14911101502022351742

/-! ## A240853.P8996191755428056739

`∑[A087897(n)]-A240854(A028310(n))`
-/

namespace A240853.P8996191755428056739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240854 (A028310 n).toNat

end

end A240853.P8996191755428056739

/-! ## A240853.P1338921594931562833

`ceil(A087135(n)/2)-A240854(A028310(n))`
-/

namespace A240853.P1338921594931562833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087135 n : ℚ) / 2⌉ - A240854 (A028310 n).toNat

end

end A240853.P1338921594931562833

/-! ## A240853.P14899318456009832934

`ceil(A333147(n)/2)-A240854(A028310(n))`
-/

namespace A240853.P14899318456009832934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 n : ℚ) / 2⌉ - A240854 (A028310 n).toNat

end

end A240853.P14899318456009832934

/-! ## A240853.P17731948405510946982

`(A000009(n)-A240854(n))%A000045(n+1)`
-/

namespace A240853.P17731948405510946982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A240854 n) (A000045 (n + 1))

end

end A240853.P17731948405510946982

/-! ## A240853.P16854293460769778313

`(A000009(n)-A240854(n))*A000040(n+1)%2`
-/

namespace A240853.P16854293460769778313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n - A240854 n) * Int.tmod (A000040 (n + 1)) 2

end

end A240853.P16854293460769778313

/-! ## A240853.P9076188810744890732

`A000009(n)-A240854(n)-and(1, A000010(n+2))`
-/

namespace A240853.P9076188810744890732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240854 n - Int.land 1 (A000010 (n + 2))

end

end A240853.P9076188810744890732

/-!
# A240854: Number of partitions p of n into distinct parts not including 2*min(p).

The programs for A240854, there is no canonical definition to state claims against.
-/

/-! ## A240854.P3629189333432900295

`A035457(A004277(n))-A240853(n)`
-/

namespace A240854.P3629189333432900295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A240853 n

end

end A240854.P3629189333432900295

/-! ## A240854.P12380156725974675913

`A000009(n)-(A240853(n)+A000007(n))`
-/

namespace A240854.P12380156725974675913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A240853 n + A000007 n)

end

end A240854.P12380156725974675913

/-! ## A240854.P5871605767296749926

`A240852(n)+A240858(n)-A240853(n)`
-/

namespace A240854.P5871605767296749926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240852 n + (A240858 n - A240853 n)

end

end A240854.P5871605767296749926

/-! ## A240854.P13745563494609418453

`(A000009(n)-A240853(n))%∑[A000041(n)]`
-/

namespace A240854.P13745563494609418453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A240853 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240854.P13745563494609418453

/-! ## A240854.P2167519974687811052

`(A000009(n)-A240853(n))*A000040(n+1)%2`
-/

namespace A240854.P2167519974687811052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n - A240853 n) * Int.tmod (A000040 (n + 1)) 2

end

end A240854.P2167519974687811052

/-! ## A240854.P789629897852276565

`(A000009(n)-A240853(n))*A008683(2*A000040(n+1))`
-/

namespace A240854.P789629897852276565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n - A240853 n) * A008683 (2 * A000040 (n + 1)).toNat

end

end A240854.P789629897852276565

/-! ## A240854.P9754741714321857444

`A240850(n)+A240851(n)-A240853(n)`
-/

namespace A240854.P9754741714321857444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240850 n + (A240851 n - A240853 n)

end

end A240854.P9754741714321857444

/-! ## A240854.P4241797518655474207

`A061199(∑[n]+1)-A240853(n)`
-/

namespace A240854.P4241797518655474207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A240853 n

end

end A240854.P4241797518655474207

/-!
# A240855: Number of partitions p of n into distinct parts including the number of parts.

The programs for A240855, there is no canonical definition to state claims against.
-/

/-! ## A240855.P3724485381268310015

`A000009(n)-A240861(n)`
-/

namespace A240855.P3724485381268310015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240861 n

end

end A240855.P3724485381268310015

/-! ## A240855.P6295974678075463311

`abs(A081360(n))-A240861(n)`
-/

namespace A240855.P6295974678075463311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A240861 n

end

end A240855.P6295974678075463311

/-! ## A240855.P2264018195223261829

`A111133(n)+1-A240861(n)`
-/

namespace A240855.P2264018195223261829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A240861 n)

end

end A240855.P2264018195223261829

/-! ## A240855.P1513585129694593084

`A035457(2*n)-A240861(n)`
-/

namespace A240855.P1513585129694593084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A240861 n

end

end A240855.P1513585129694593084

/-! ## A240855.P713522194300484015

`ceil(A087135(n)/2)-A240861(n)`
-/

namespace A240855.P713522194300484015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087135 n : ℚ) / 2⌉ - A240861 n

end

end A240855.P713522194300484015

/-! ## A240855.P7337184020134804112

`A025147(n)+A096765(n)-A240861(n)`
-/

namespace A240855.P7337184020134804112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n + (A096765 n - A240861 n)

end

end A240855.P7337184020134804112

/-! ## A240855.P12406241527971644858

`A000700(n)+A331848(n)-A240861(n)`
-/

namespace A240855.P12406241527971644858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n + (A331848 n - A240861 n)

end

end A240855.P12406241527971644858

/-! ## A240855.P10417959885378803512

`gcd(A000038(n), A081360(n))-A240861(n)`
-/

namespace A240855.P10417959885378803512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A081360 n) : ℤ) - A240861 n

end

end A240855.P10417959885378803512

/-! ## A240855.P2664617194959718574

`A364272(n)+A364349(n)-A240861(n)`
-/

namespace A240855.P2664617194959718574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364272 n + (A364349 n - A240861 n)

end

end A240855.P2664617194959718574

/-! ## A240855.P12978049375590609892

`A367214(n)+A367215(n)-A240861(n)`
-/

namespace A240855.P12978049375590609892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367214 n + (A367215 n - A240861 n)

end

end A240855.P12978049375590609892

/-!
# A240857: Triangle read by rows: T(0,0) = 0; T(n+1,k) = T(n,k+1), 0 <= k < n; T(n+1,n) = T(n,0); T(n+1,n+1) = T(n,0)+1.

The programs for A240857, the canonical program `A240857.P5485024977046605687` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240857 has offset 0).

The definition of A240857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240857.P5485024977046605687

`A048881(col(n)+row(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A240857

/-- `A048881(col(n)+row(n))` -/
def P5485024977046605687.Spec : Prop :=
  ∀ n, P5485024977046605687.a n = A240857 n

theorem P5485024977046605687.correct : P5485024977046605687.Spec := by
  intro n
  simp only [A240857]

end A240857

/-! ## A240857.P12132820863744419041

`A000120(col(n)+1+row(n))-1`
-/

namespace A240857.P12132820863744419041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.triCol n + 1 + SequenceMachineLib.triRow n) - 1

end

end A240857.P12132820863744419041

namespace A240857

/-- `A000120(col(n)+1+row(n))-1` -/
def P12132820863744419041.Spec : Prop :=
  ∀ n, P12132820863744419041.a n = A240857 n

theorem P12132820863744419041.correct : P12132820863744419041.Spec := by
  intro n
  simp only [A240857, Nat.add_sub_cancel, A240857.P12132820863744419041.a, A240857.P5485024977046605687.a, A000120, A000120.P2816527436160941581.a, A048881, A048881.P16567064232951496228.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240857

/-! ## A240857.P5029173872357805458

`A048881(A051162(n))`
-/

namespace A240857.P5029173872357805458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A051162 n).toNat

end

end A240857.P5029173872357805458

namespace A240857

/-- `A048881(A051162(n))` -/
def P5029173872357805458.Spec : Prop :=
  ∀ n, P5029173872357805458.a n = A240857 n

end A240857

/-! ## A240857.P7615293157650489123

`A048881(A134478(n))`
-/

namespace A240857.P7615293157650489123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A134478 n).toNat

end

end A240857.P7615293157650489123

namespace A240857

/-- `A048881(A134478(n))` -/
def P7615293157650489123.Spec : Prop :=
  ∀ n, P7615293157650489123.a n = A240857 n

end A240857

/-! ## A240857.P17571597051667423653

`A048881(A131421(n+1))`
-/

namespace A240857.P17571597051667423653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A131421 (n + 1)).toNat

end

end A240857.P17571597051667423653

namespace A240857

/-- `A048881(A131421(n+1))` -/
def P17571597051667423653.Spec : Prop :=
  ∀ n, P17571597051667423653.a n = A240857 n

end A240857

/-! ## A240857.P8432457099035593422

`A000120(A094727(n+1))-1`
-/

namespace A240857.P8432457099035593422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A094727 (n + 1)).toNat - 1

end

end A240857.P8432457099035593422

namespace A240857

/-- `A000120(A094727(n+1))-1` -/
def P8432457099035593422.Spec : Prop :=
  ∀ n, P8432457099035593422.a n = A240857 n

end A240857

/-! ## A240857.P15302890644245116462

`A000120(A134478(n)+1)-1`
-/

namespace A240857.P15302890644245116462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A134478 n + 1).toNat - 1

end

end A240857.P15302890644245116462

namespace A240857

/-- `A000120(A134478(n)+1)-1` -/
def P15302890644245116462.Spec : Prop :=
  ∀ n, P15302890644245116462.a n = A240857 n

end A240857

/-! ## A240857.P759723552455169275

`A000120(A131421(n+1)+1)-1`
-/

namespace A240857.P759723552455169275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A131421 (n + 1) + 1).toNat - 1

end

end A240857.P759723552455169275

namespace A240857

/-- `A000120(A131421(n+1)+1)-1` -/
def P759723552455169275.Spec : Prop :=
  ∀ n, P759723552455169275.a n = A240857 n

end A240857

/-! ## A240857.P10980875368155870672

`A000120(A002262(n)+A002024(n+1))-1`
-/

namespace A240857.P10980875368155870672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002262 n + A002024 (n + 1)).toNat - 1

end

end A240857.P10980875368155870672

namespace A240857

/-- `A000120(A002262(n)+A002024(n+1))-1` -/
def P10980875368155870672.Spec : Prop :=
  ∀ n, P10980875368155870672.a n = A240857 n

end A240857

/-! ## A240857.P9500002574904654536

`A000120(A003056(n)+A002260(n+1))-1`
-/

namespace A240857.P9500002574904654536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003056 n + A002260 (n + 1)).toNat - 1

end

end A240857.P9500002574904654536

namespace A240857

/-- `A000120(A003056(n)+A002260(n+1))-1` -/
def P9500002574904654536.Spec : Prop :=
  ∀ n, P9500002574904654536.a n = A240857 n

end A240857

/-! ## A240857.P10986259248673383549

`A000120(A003056(n)+A002262(n)+1)-1`
-/

namespace A240857.P10986259248673383549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003056 n + (A002262 n + 1)).toNat - 1

end

end A240857.P10986259248673383549

namespace A240857

/-- `A000120(A003056(n)+A002262(n)+1)-1` -/
def P10986259248673383549.Spec : Prop :=
  ∀ n, P10986259248673383549.a n = A240857 n

end A240857

/-!
# A240858: Number of partitions p of n into distinct parts not including max(p) - min(p).

The programs for A240858, there is no canonical definition to state claims against.
-/

/-! ## A240858.P16923022823317303687

`A285229(∑[n]+1)-A240852(n)`
-/

namespace A240858.P16923022823317303687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A240852 n

end

end A240858.P16923022823317303687

/-! ## A240858.P15647846415937999213

`A035457(A004277(n))-A240852(n)`
-/

namespace A240858.P15647846415937999213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A240852 n

end

end A240858.P15647846415937999213

/-! ## A240858.P12542324504251548015

`A240853(n)+A240854(n)-A240852(n)`
-/

namespace A240858.P12542324504251548015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240853 n + (A240854 n - A240852 n)

end

end A240858.P12542324504251548015

/-! ## A240858.P10166687540531897189

`and(A000009(n), A134824(n))-A240852(n)`
-/

namespace A240858.P10166687540531897189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000009 n) (A134824 n) - A240852 n

end

end A240858.P10166687540531897189

/-! ## A240858.P354016880188651878

`A240850(n)+A240851(n)-A240852(n)`
-/

namespace A240858.P354016880188651878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240850 n + (A240851 n - A240852 n)

end

end A240858.P354016880188651878

/-! ## A240858.P1568955384379675822

`A061199(A000124(n))-A240852(n)`
-/

namespace A240858.P1568955384379675822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A000124 n).toNat - A240852 n

end

end A240858.P1568955384379675822

/-!
# A240859: Cubes k^3 such that k^3 + (k+1)^3 is semiprime.

The programs for A240859, there is no canonical definition to state claims against.
-/

/-! ## A240859.P14204365441968086339

`floor(sqrt(A163418(n+1)))^3`
-/

namespace A240859.P14204365441968086339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A163418 (n + 1)) ^ 3

end

end A240859.P14204365441968086339

/-! ## A240859.P10790059091503369217

`A000578(floor(sqrt(A163418(n+1))))`
-/

namespace A240859.P10790059091503369217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (Int.sqrt (A163418 (n + 1))).toNat

end

end A240859.P10790059091503369217

/-! ## A240859.P14693652506384490132

`A249122(p?[A088503(n+1)])^3`
-/

namespace A240859.P14693652506384490132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ^ 3

end

end A240859.P14693652506384490132

/-! ## A240859.P9406110115666112272

`A245621(A118939(n+1))`
-/

namespace A240859.P9406110115666112272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245621 (A118939 (n + 1)).toNat

end

end A240859.P9406110115666112272

/-! ## A240859.P218827073073916305

`A004524(p?[A088503(n+1)])^3`
-/

namespace A240859.P218827073073916305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ^ 3

end

end A240859.P218827073073916305

/-! ## A240859.P1687794357586446691

`A213389(A118939(n+1)-1)/2`
-/

namespace A240859.P1687794357586446691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213389 (A118939 (n + 1) - 1).toNat : ℚ) / 2

end

end A240859.P1687794357586446691

/-! ## A240859.P13196865829252196329

`A000578(A004526(p?[A088503(n+1)]))`
-/

namespace A240859.P13196865829252196329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A004526 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A240859.P13196865829252196329

/-! ## A240859.P16848580773117151811

`A000578(A023022(p?[A088503(n+1)]))`
-/

namespace A240859.P16848580773117151811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A023022 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A240859.P16848580773117151811

/-! ## A240859.P14495871795730708503

`A000578(A028242(p?[A088503(n+1)]))`
-/

namespace A240859.P14495871795730708503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A028242 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A240859.P14495871795730708503

/-!
# A240860: a(n) = Sum_{i=1..n} (-1)^{i+1} prime(i)^2, where prime(k) denotes the k-th prime: alternating sum of the squares of the first n primes.

The programs for A240860, the canonical program `A240860.P9927518057295808665` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240860 has offset 1).

The definition of A240860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240860.P9927518057295808665

`∑[A001248(n+1)*(-1)^n]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A240860

/-- `∑[A001248(n+1)*(-1)^n]` -/
def P9927518057295808665.Spec : Prop :=
  ∀ n, P9927518057295808665.a n = A240860 (n + 1)

theorem P9927518057295808665.correct : P9927518057295808665.Spec := by
  intro n
  simp only [A240860, Nat.add_sub_cancel]

end A240860

/-! ## A240860.P7987500094802846527

`∑[A000040(n+1)²*(-1)^n]`
-/

namespace A240860.P7987500094802846527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240860.P7987500094802846527

namespace A240860

/-- `∑[A000040(n+1)²*(-1)^n]` -/
def P7987500094802846527.Spec : Prop :=
  ∀ n, P7987500094802846527.a n = A240860 (n + 1)

end A240860

/-! ## A240860.P16169054797638762002

`∑[A001248(n+1)/A033999(n)]`
-/

namespace A240860.P16169054797638762002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240860.P16169054797638762002

namespace A240860

/-- `∑[A001248(n+1)/A033999(n)]` -/
def P16169054797638762002.Spec : Prop :=
  ∀ n, P16169054797638762002.a n = (A240860 (n + 1) : ℚ)

end A240860

/-! ## A240860.P15170358747955550043

`∑[A033999(n)*A000040(n+1)²]`
-/

namespace A240860.P15170358747955550043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240860.P15170358747955550043

namespace A240860

/-- `∑[A033999(n)*A000040(n+1)²]` -/
def P15170358747955550043.Spec : Prop :=
  ∀ n, P15170358747955550043.a n = A240860 (n + 1)

theorem P15170358747955550043.correct : P15170358747955550043.Spec := by
  intro n
  simp only [A240860, Nat.add_sub_cancel, A240860.P15170358747955550043.f1, A240860.P15170358747955550043.a, A240860.P9927518057295808665.f1, A240860.P9927518057295808665.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240860

/-! ## A240860.P9929611682191954336

`∑[A008578(n+2)²*A062157(n+1)]`
-/

namespace A240860.P9929611682191954336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 2 * A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240860.P9929611682191954336

namespace A240860

/-- `∑[A008578(n+2)²*A062157(n+1)]` -/
def P9929611682191954336.Spec : Prop :=
  ∀ n, P9929611682191954336.a n = A240860 (n + 1)

end A240860

/-! ## A240860.P11370099847834190300

`∑[A008578(n+2)²*A165326(n+1)]`
-/

namespace A240860.P11370099847834190300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 2 * A165326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240860.P11370099847834190300

namespace A240860

/-- `∑[A008578(n+2)²*A165326(n+1)]` -/
def P11370099847834190300.Spec : Prop :=
  ∀ n, P11370099847834190300.a n = A240860 (n + 1)

end A240860

/-! ## A240860.P10932593943929360274

`∑[A073846(2*(n+1))²*A062157(n+1)]`
-/

namespace A240860.P10932593943929360274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * (n + 1)) ^ 2 * A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240860.P10932593943929360274

namespace A240860

/-- `∑[A073846(2*(n+1))²*A062157(n+1)]` -/
def P10932593943929360274.Spec : Prop :=
  ∀ n, P10932593943929360274.a n = A240860 (n + 1)

end A240860

/-! ## A240860.P17739547342533397344

`∑[A073846(2*(n+1))²*A165326(n+1)]`
-/

namespace A240860.P17739547342533397344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * (n + 1)) ^ 2 * A165326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240860.P17739547342533397344

namespace A240860

/-- `∑[A073846(2*(n+1))²*A165326(n+1)]` -/
def P17739547342533397344.Spec : Prop :=
  ∀ n, P17739547342533397344.a n = A240860 (n + 1)

end A240860

/-! ## A240860.P10106915110243907667

`∑[A073846(2*(n+1))²*A009001(2*n)]`
-/

namespace A240860.P10106915110243907667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * (n + 1)) ^ 2 * A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240860.P10106915110243907667

namespace A240860

/-- `∑[A073846(2*(n+1))²*A009001(2*n)]` -/
def P10106915110243907667.Spec : Prop :=
  ∀ n, P10106915110243907667.a n = A240860 (n + 1)

end A240860

/-! ## A240860.P11959753396900955494

`∑[record[A108077(n+1)]²*(-1)^n]`
-/

namespace A240860.P11959753396900955494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 2 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240860.P11959753396900955494

namespace A240860

/-- `∑[record[A108077(n+1)]²*(-1)^n]` -/
def P11959753396900955494.Spec : Prop :=
  ∀ n, P11959753396900955494.a n = A240860 (n + 1)

end A240860

/-!
# A240861: Number of partitions p of n into distinct parts not including the number of parts.

The programs for A240861, there is no canonical definition to state claims against.
-/

/-! ## A240861.P3355695187520472015

`A000009(n)-A240855(n)`
-/

namespace A240861.P3355695187520472015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240855 n

end

end A240861.P3355695187520472015

/-! ## A240861.P5120228807158750209

`abs(A081360(n))-A240855(n)`
-/

namespace A240861.P5120228807158750209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A240855 n

end

end A240861.P5120228807158750209

/-! ## A240861.P9970492020205376314

`∑[A087897(n)]-A240855(n)`
-/

namespace A240861.P9970492020205376314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240855 n

end

end A240861.P9970492020205376314

/-! ## A240861.P14777871649191408504

`A111133(n)+1-A240855(n)`
-/

namespace A240861.P14777871649191408504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A240855 n)

end

end A240861.P14777871649191408504

/-! ## A240861.P10065784594244100243

`A035457(2*n)-A240855(n)`
-/

namespace A240861.P10065784594244100243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A240855 n

end

end A240861.P10065784594244100243

/-! ## A240861.P14993126240883004899

`A364272(n)+A364349(n)-A240855(n)`
-/

namespace A240861.P14993126240883004899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364272 n + (A364349 n - A240855 n)

end

end A240861.P14993126240883004899

/-! ## A240861.P8780402840037271938

`A367214(n)+A367215(n)-A240855(n)`
-/

namespace A240861.P8780402840037271938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367214 n + (A367215 n - A240855 n)

end

end A240861.P8780402840037271938

/-!
# A240862: Number of partitions of n into distinct parts of which the number of even parts is a part.

The programs for A240862, there is no canonical definition to state claims against.
-/

/-! ## A240862.P10146943908154542737

`A240865(n)-A240867(n)`
-/

namespace A240862.P10146943908154542737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240865 n - A240867 n

end

end A240862.P10146943908154542737

/-! ## A240862.P3771911973617843101

`A240863(n)+A240866(n)-A240867(n)`
-/

namespace A240862.P3771911973617843101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240863 n + (A240866 n - A240867 n)

end

end A240862.P3771911973617843101

/-! ## A240862.P15401862864715789976

`A240865(n)-(A240869(n)-A240868(n))`
-/

namespace A240862.P15401862864715789976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240865 n - (A240869 n - A240868 n)

end

end A240862.P15401862864715789976

/-! ## A240862.P1855741494257972569

`A052839(n)-(A240868(n)+A240867(n)+1)`
-/

namespace A240862.P1855741494257972569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A240868 n + (A240867 n + 1))

end

end A240862.P1855741494257972569

/-! ## A240862.P14801302477863033632

`A000009(n)-(A240868(n)+A240867(A028310(n)))`
-/

namespace A240862.P14801302477863033632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A240868 n + A240867 (A028310 n).toNat)

end

end A240862.P14801302477863033632

/-! ## A240862.P15314479648478229487

`A035457(A004277(n))-(A240868(n)+A240867(n))`
-/

namespace A240862.P15314479648478229487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - (A240868 n + A240867 n)

end

end A240862.P15314479648478229487

/-! ## A240862.P15742349131060981942

`A000009(n)-A240868(n)-A000007(n)-A240867(n)`
-/

namespace A240862.P15742349131060981942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240868 n - A000007 n - A240867 n

end

end A240862.P15742349131060981942

/-! ## A240862.P17008444324301573132

`(A000009(n)-A240868(n))*A057427(n)-A240867(n)`
-/

namespace A240862.P17008444324301573132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n - A240868 n) * A057427 n - A240867 n

end

end A240862.P17008444324301573132

/-! ## A240862.P9304551140434930550

`(A000009(n)-A240868(n))%record[A007318(n)]-A240867(n)`
-/

namespace A240862.P9304551140434930550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A240868 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - A240867 n

end

end A240862.P9304551140434930550

/-! ## A240862.P3633559261857577393

`(A000009(n)-A240868(n))*A000040(n+1)%2-A240867(n)`
-/

namespace A240862.P3633559261857577393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n - A240868 n) * Int.tmod (A000040 (n + 1)) 2 - A240867 n

end

end A240862.P3633559261857577393

/-! ## A240862.P7939038894055613161

`A240866(n)+A240864(n)`
-/

namespace A240862.P7939038894055613161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240866 n + A240864 n

end

end A240862.P7939038894055613161

/-! ## A240862.P16022801464340127004

`A240870(n)+A240863(n)-A240869(n)`
-/

namespace A240862.P16022801464340127004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240870 n + A240863 n - A240869 n

end

end A240862.P16022801464340127004

/-! ## A240862.P3154414422087312658

`A061199(A000124(n))-(A240868(n)+A240867(n))`
-/

namespace A240862.P3154414422087312658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A000124 n).toNat - (A240868 n + A240867 n)

end

end A240862.P3154414422087312658

/-!
# A240863: Number of partitions of n into distinct parts of which the number of odd parts is a part.

The programs for A240863, there is no canonical definition to state claims against.
-/

/-! ## A240863.P1306690321146315537

`A240865(n)-A240866(n)`
-/

namespace A240863.P1306690321146315537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240865 n - A240866 n

end

end A240863.P1306690321146315537

/-! ## A240863.P17645342309047740786

`A240862(n)+A240867(n)-A240866(n)`
-/

namespace A240863.P17645342309047740786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240862 n + (A240867 n - A240866 n)

end

end A240863.P17645342309047740786

/-! ## A240863.P7597321150311422592

`A052839(n)-(A240868(n)+A240866(n)+1)`
-/

namespace A240863.P7597321150311422592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A240868 n + (A240866 n + 1))

end

end A240863.P7597321150311422592

/-! ## A240863.P9014275781049111696

`A000009(n)-A240868(abs(1-n)+1)-A240866(n)`
-/

namespace A240863.P9014275781049111696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240868 (|1 - (n : ℤ)| + 1).toNat - A240866 n

end

end A240863.P9014275781049111696

/-! ## A240863.P8623454648769349766

`A035457(A004277(n))-(A240868(n)+A240866(n))`
-/

namespace A240863.P8623454648769349766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - (A240868 n + A240866 n)

end

end A240863.P8623454648769349766

/-! ## A240863.P18321704246248799193

`A000009(n)-A240868(n)-A000007(n)-A240866(n)`
-/

namespace A240863.P18321704246248799193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240868 n - A000007 n - A240866 n

end

end A240863.P18321704246248799193

/-! ## A240863.P8337724463197698785

`(A000009(n)-A240868(n))*A057427(n)-A240866(n)`
-/

namespace A240863.P8337724463197698785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n - A240868 n) * A057427 n - A240866 n

end

end A240863.P8337724463197698785

/-! ## A240863.P13102592782099560384

`(A000009(n)-A240868(n))%record[A007318(n)]-A240866(n)`
-/

namespace A240863.P13102592782099560384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A240868 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - A240866 n

end

end A240863.P13102592782099560384

/-! ## A240863.P11859258640005031863

`(A000009(n)-A240868(n))*A000040(n+1)%2-A240866(n)`
-/

namespace A240863.P11859258640005031863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n - A240868 n) * Int.tmod (A000040 (n + 1)) 2 - A240866 n

end

end A240863.P11859258640005031863

/-! ## A240863.P9767673385971715767

`A240867(n)+A240864(n)`
-/

namespace A240863.P9767673385971715767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240867 n + A240864 n

end

end A240863.P9767673385971715767

/-! ## A240863.P18364575148377148205

`A240869(n)+A240862(n)-A240870(n)`
-/

namespace A240863.P18364575148377148205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240869 n + A240862 n - A240870 n

end

end A240863.P18364575148377148205

/-! ## A240863.P10687237136902479701

`A061199(A000124(n))-(A240868(n)+A240866(n))`
-/

namespace A240863.P10687237136902479701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A000124 n).toNat - (A240868 n + A240866 n)

end

end A240863.P10687237136902479701

/-!
# A240864: Number of partitions of n into distinct parts of which the number of even parts and the number of odd parts are parts.

The programs for A240864, there is no canonical definition to state claims against.
-/

/-! ## A240864.P1522763331321069860

`A240862(n)-A240866(n)`
-/

namespace A240864.P1522763331321069860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240862 n - A240866 n

end

end A240864.P1522763331321069860

/-! ## A240864.P10955100904683962414

`A240863(n)-A240867(n)`
-/

namespace A240864.P10955100904683962414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240863 n - A240867 n

end

end A240864.P10955100904683962414

/-! ## A240864.P5613932465318909319

`A240862(n)+A240863(n)-A240865(n)`
-/

namespace A240864.P5613932465318909319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240862 n + (A240863 n - A240865 n)

end

end A240864.P5613932465318909319

/-! ## A240864.P960627397519910484

`A240865(n)-(A240867(n)+A240866(n))`
-/

namespace A240864.P960627397519910484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240865 n - (A240867 n + A240866 n)

end

end A240864.P960627397519910484

/-! ## A240864.P14613462436567988163

`A240865(n)-A240866(n)-(A240869(n)-A240868(n))`
-/

namespace A240864.P14613462436567988163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240865 n - A240866 n - (A240869 n - A240868 n)

end

end A240864.P14613462436567988163

/-! ## A240864.P5083986284276651815

`A052839(n)-(A240868(n)+A240866(n)+1)-A240867(n)`
-/

namespace A240864.P5083986284276651815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A240868 n + (A240866 n + 1)) - A240867 n

end

end A240864.P5083986284276651815

/-! ## A240864.P2955368055659098371

`A240863(n)-(A052839(n)-(A240862(n)+1)-A240868(n))`
-/

namespace A240864.P2955368055659098371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240863 n - (A052839 n - (A240862 n + 1) - A240868 n)

end

end A240864.P2955368055659098371

/-! ## A240864.P12360591902097976992

`A240863(n)-(A000009(n)-A240868(n)-A000007(n)-A240862(n))`
-/

namespace A240864.P12360591902097976992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240863 n - (A000009 n - A240868 n - A000007 n - A240862 n)

end

end A240864.P12360591902097976992

/-! ## A240864.P1193457858566709103

`(A000009(n)-A240868(n))*A000040(n+1)%2-A240866(n)-A240867(n)`
-/

namespace A240864.P1193457858566709103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n - A240868 n) * Int.tmod (A000040 (n + 1)) 2 - A240866 n - A240867 n

end

end A240864.P1193457858566709103

/-! ## A240864.P7717945480215905609

`A240863(n)-(A061199(A000124(n))-A240868(n)-A240862(n))`
-/

namespace A240864.P7717945480215905609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240863 n - (A061199 (A000124 n).toNat - A240868 n - A240862 n)

end

end A240864.P7717945480215905609

/-! ## A240864.P15043073939709675436

`A061199(A000124(n))-A240868(n)-A240866(n)-A240867(n)`
-/

namespace A240864.P15043073939709675436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A000124 n).toNat - A240868 n - A240866 n - A240867 n

end

end A240864.P15043073939709675436

/-!
# A240865: Number of partitions of n into distinct parts of which the number of even parts or the number of odd parts is a part.

The programs for A240865, there is no canonical definition to state claims against.
-/

/-! ## A240865.P8824647034108505970

`A240866(n)+A240863(n)`
-/

namespace A240865.P8824647034108505970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240866 n + A240863 n

end

end A240865.P8824647034108505970

/-! ## A240865.P16248352659958240676

`A240867(n)+A240862(n)`
-/

namespace A240865.P16248352659958240676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240867 n + A240862 n

end

end A240865.P16248352659958240676

/-! ## A240865.P11261292257471061275

`A052839(n)-(A240868(n)+1)`
-/

namespace A240865.P11261292257471061275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A240868 n + 1)

end

end A240865.P11261292257471061275

/-! ## A240865.P2180792671013580531

`A000009(n)-A240868(abs(1-n)+1)`
-/

namespace A240865.P2180792671013580531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240868 (|1 - (n : ℤ)| + 1).toNat

end

end A240865.P2180792671013580531

/-! ## A240865.P585834002508361150

`A035457(A004277(n))-A240868(n)`
-/

namespace A240865.P585834002508361150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A240868 n

end

end A240865.P585834002508361150

/-! ## A240865.P2047022490970395434

`A000009(n)-(A240868(n)+A000007(n))`
-/

namespace A240865.P2047022490970395434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A240868 n + A000007 n)

end

end A240865.P2047022490970395434

/-! ## A240865.P6920880577912207731

`A240864(n)+A240867(n)+A240866(n)`
-/

namespace A240865.P6920880577912207731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240864 n + (A240867 n + A240866 n)

end

end A240865.P6920880577912207731

/-! ## A240865.P9909234355853641095

`A240862(n)+A240863(n)-A240864(n)`
-/

namespace A240865.P9909234355853641095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240862 n + (A240863 n - A240864 n)

end

end A240865.P9909234355853641095

/-! ## A240865.P1665418832434867312

`A061199(A000124(n))-A240868(n)`
-/

namespace A240865.P1665418832434867312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A000124 n).toNat - A240868 n

end

end A240865.P1665418832434867312

/-! ## A240865.P1195904648215312521

`A061199(∑[A028310(n)])-A240868(n)`
-/

namespace A240865.P1195904648215312521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A240868 n

end

end A240865.P1195904648215312521

/-!
# A240866: Number of partitions of n into distinct parts of which the number of even parts is a part and the number of odd parts is not a part.

The programs for A240866, there is no canonical definition to state claims against.
-/

/-! ## A240866.P8379406027198968752

`A240865(n)-A240863(n)`
-/

namespace A240866.P8379406027198968752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240865 n - A240863 n

end

end A240866.P8379406027198968752

/-! ## A240866.P16117683433966956304

`A240862(n)+A240867(n)-A240863(n)`
-/

namespace A240866.P16117683433966956304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240862 n + (A240867 n - A240863 n)

end

end A240866.P16117683433966956304

/-! ## A240866.P8770660626976980437

`A052839(n)-(A240863(n)+1)-A240868(n)`
-/

namespace A240866.P8770660626976980437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A240863 n + 1) - A240868 n

end

end A240866.P8770660626976980437

/-! ## A240866.P11616502776327032465

`A285229(∑[n]+1)-A240863(n)-A240868(n)`
-/

namespace A240866.P11616502776327032465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A240863 n - A240868 n

end

end A240866.P11616502776327032465

/-! ## A240866.P13668743731222343300

`A000009(n)-A240868(abs(1-n)+1)-A240863(n)`
-/

namespace A240866.P13668743731222343300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240868 (|1 - (n : ℤ)| + 1).toNat - A240863 n

end

end A240866.P13668743731222343300

/-! ## A240866.P14817191487184299588

`A035457(A004277(n))-A240868(n)-A240863(n)`
-/

namespace A240866.P14817191487184299588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A240868 n - A240863 n

end

end A240866.P14817191487184299588

/-! ## A240866.P17917765776810054772

`A000009(n)-A240863(A000007(n)+n)-A240868(n)`
-/

namespace A240866.P17917765776810054772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240863 (A000007 n + (n : ℤ)).toNat - A240868 n

end

end A240866.P17917765776810054772

/-! ## A240866.P11436002956239876939

`A240862(n)-A240864(n)`
-/

namespace A240866.P11436002956239876939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240862 n - A240864 n

end

end A240866.P11436002956239876939

/-! ## A240866.P13978058249534896838

`A240870(n)-A240868(n)`
-/

namespace A240866.P13978058249534896838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240870 n - A240868 n

end

end A240866.P13978058249534896838

/-! ## A240866.P15951948298476199860

`A061199(∑[n]+1)-A240863(n)-A240868(n)`
-/

namespace A240866.P15951948298476199860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A240863 n - A240868 n

end

end A240866.P15951948298476199860

/-!
# A240867: Number of partitions of n into distinct parts of which the number of odd parts is a part and the number of even parts is not a part.

The programs for A240867, there is no canonical definition to state claims against.
-/

/-! ## A240867.P15887389213586114234

`A240865(n)-A240862(n)`
-/

namespace A240867.P15887389213586114234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240865 n - A240862 n

end

end A240867.P15887389213586114234

/-! ## A240867.P15426829868013895895

`A240869(n)-A240868(n)`
-/

namespace A240867.P15426829868013895895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240869 n - A240868 n

end

end A240867.P15426829868013895895

/-! ## A240867.P7528769899740210860

`A240863(n)+A240866(n)-A240862(n)`
-/

namespace A240867.P7528769899740210860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240863 n + (A240866 n - A240862 n)

end

end A240867.P7528769899740210860

/-! ## A240867.P7653299160814416782

`A052839(n)-(A240862(n)+1)-A240868(n)`
-/

namespace A240867.P7653299160814416782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A240862 n + 1) - A240868 n

end

end A240867.P7653299160814416782

/-! ## A240867.P11756214699053084300

`A285229(∑[n]+1)-A240862(n)-A240868(n)`
-/

namespace A240867.P11756214699053084300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A240862 n - A240868 n

end

end A240867.P11756214699053084300

/-! ## A240867.P8945194473448754532

`A000009(n)-A240868(n)-A000007(n)-A240862(n)`
-/

namespace A240867.P8945194473448754532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240868 n - A000007 n - A240862 n

end

end A240867.P8945194473448754532

/-! ## A240867.P8547612545568477826

`(A000009(n)-A240868(n))%(A000045(n)+1)-A240862(n)`
-/

namespace A240867.P8547612545568477826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A240868 n) (A000045 n + 1) - A240862 n

end

end A240867.P8547612545568477826

/-! ## A240867.P6616286269921552178

`(A000009(n)-A240868(n))*A000040(n+1)%2-A240862(n)`
-/

namespace A240867.P6616286269921552178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n - A240868 n) * Int.tmod (A000040 (n + 1)) 2 - A240862 n

end

end A240867.P6616286269921552178

/-! ## A240867.P3669301935735548006

`A240863(n)-A240864(n)`
-/

namespace A240867.P3669301935735548006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240863 n - A240864 n

end

end A240867.P3669301935735548006

/-! ## A240867.P14694979528544510668

`A240863(n)+A190611(gcd(n, n+1))*A240864(n)`
-/

namespace A240867.P14694979528544510668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240863 n + A190611 (Nat.gcd n (n + 1)) * A240864 n

end

end A240867.P14694979528544510668

/-! ## A240867.P10772488256966695118

`A240863(n)+A008683(A007918(n))*A240864(n)`
-/

namespace A240867.P10772488256966695118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240863 n + A008683 (A007918 n).toNat * A240864 n

end

end A240867.P10772488256966695118

/-! ## A240867.P16525420700642069900

`A061199(A000124(n))-(A240868(n)+A240862(n))`
-/

namespace A240867.P16525420700642069900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A000124 n).toNat - (A240868 n + A240862 n)

end

end A240867.P16525420700642069900

/-!
# A240868: Number of partitions of n into distinct parts of which the number of even parts is not a part and the number of odd parts is not a part.

The programs for A240868, there is no canonical definition to state claims against.
-/

/-! ## A240868.P5963551715176742046

`A240869(n)-A240867(n)`
-/

namespace A240868.P5963551715176742046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240869 n - A240867 n

end

end A240868.P5963551715176742046

/-! ## A240868.P1430352275925447676

`(A240865(n)-A000009(n))*A057428(n)`
-/

namespace A240868.P1430352275925447676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A240865 n - A000009 n) * A057428 n

end

end A240868.P1430352275925447676

/-! ## A240868.P2068585810088258556

`A052839(n)-(A240866(n)+A240863(n)+1)`
-/

namespace A240868.P2068585810088258556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A240866 n + (A240863 n + 1))

end

end A240868.P2068585810088258556

/-! ## A240868.P10362564260631884168

`A052839(n)-(A240862(n)+1)-A240867(n)`
-/

namespace A240868.P10362564260631884168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A240862 n + 1) - A240867 n

end

end A240868.P10362564260631884168

/-! ## A240868.P15122022052731808129

`A285229(∑[n]+1)-A240862(n)-A240867(n)`
-/

namespace A240868.P15122022052731808129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A240862 n - A240867 n

end

end A240868.P15122022052731808129

/-! ## A240868.P15937689535312893713

`A285229(∑[n]+1)-A240863(n)-A240866(n)`
-/

namespace A240868.P15937689535312893713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A240863 n - A240866 n

end

end A240868.P15937689535312893713

/-! ## A240868.P14828362285177715598

`(A000009(n)-A240863(n))%A000041(n)-A240866(n)`
-/

namespace A240868.P14828362285177715598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A240863 n) (A000041 n) - A240866 n

end

end A240868.P14828362285177715598

/-! ## A240868.P14782973918596811147

`A000009(n)-A240863(n)-A000010(n+2)%2-A240866(n)`
-/

namespace A240868.P14782973918596811147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240863 n - Int.tmod (A000010 (n + 2)) 2 - A240866 n

end

end A240868.P14782973918596811147

/-! ## A240868.P18267889738481795449

`(A000009(n)-A240863(n))*A000040(n+1)%2-A240866(n)`
-/

namespace A240868.P18267889738481795449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n - A240863 n) * Int.tmod (A000040 (n + 1)) 2 - A240866 n

end

end A240868.P18267889738481795449

/-! ## A240868.P1957588598850288418

`A008683(3*(n+1)²)+A000009(n)-A240863(n)-A240866(n)`
-/

namespace A240868.P1957588598850288418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (3 * (n + 1) ^ 2) + (A000009 n - A240863 n) - A240866 n

end

end A240868.P1957588598850288418

/-! ## A240868.P14046107146355931895

`A240870(n)-A240866(n)`
-/

namespace A240868.P14046107146355931895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240870 n - A240866 n

end

end A240868.P14046107146355931895

/-! ## A240868.P16467266017827341915

`A061199(∑[n]+1)-A240863(n)-A240866(n)`
-/

namespace A240868.P16467266017827341915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A240863 n - A240866 n

end

end A240868.P16467266017827341915

/-! ## A240868.P16056546138497332553

`A061199(A000124(n))-(A240866(n)+A240863(n))`
-/

namespace A240868.P16056546138497332553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A000124 n).toNat - (A240866 n + A240863 n)

end

end A240868.P16056546138497332553

/-!
# A240869: Number of partitions of n into distinct parts of which the number of even parts is not a part.

The programs for A240869, there is no canonical definition to state claims against.
-/

/-! ## A240869.P11287356533735555064

`A240868(n)+A240867(n)`
-/

namespace A240869.P11287356533735555064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240868 n + A240867 n

end

end A240869.P11287356533735555064

/-! ## A240869.P10468175242096175357

`A052839(n)-(A240862(n)+1)`
-/

namespace A240869.P10468175242096175357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A240862 n + 1)

end

end A240869.P10468175242096175357

/-! ## A240869.P3868705555566507405

`A285229(∑[n]+1)-A240862(n)`
-/

namespace A240869.P3868705555566507405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A240862 n

end

end A240869.P3868705555566507405

/-! ## A240869.P6006505910811123785

`A035457(A004277(n))-A240862(n)`
-/

namespace A240869.P6006505910811123785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A240862 n

end

end A240869.P6006505910811123785

/-! ## A240869.P14886505595056555559

`A000009(n)-(A240862(n)+A000007(n))`
-/

namespace A240869.P14886505595056555559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A240862 n + A000007 n)

end

end A240869.P14886505595056555559

/-! ## A240869.P8270325707772143934

`A240865(n)+A240868(n)-A240862(n)`
-/

namespace A240869.P8270325707772143934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240865 n + (A240868 n - A240862 n)

end

end A240869.P8270325707772143934

/-! ## A240869.P2790848031340891873

`A240863(n)+A240868(n)-A240864(n)`
-/

namespace A240869.P2790848031340891873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240863 n + (A240868 n - A240864 n)

end

end A240869.P2790848031340891873

/-! ## A240869.P13043246938152237547

`A240863(n)+A240870(n)-A240862(n)`
-/

namespace A240869.P13043246938152237547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240863 n + (A240870 n - A240862 n)

end

end A240869.P13043246938152237547

/-! ## A240869.P10212605410430848654

`A061199(A000124(n))-A240862(n)`
-/

namespace A240869.P10212605410430848654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A000124 n).toNat - A240862 n

end

end A240869.P10212605410430848654

/-! ## A240869.P12938636183860342499

`A061199(∑[A028310(n)])-A240862(n)`
-/

namespace A240869.P12938636183860342499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A240862 n

end

end A240869.P12938636183860342499

/-!
# A240870: Number of partitions of n into distinct parts of which the number of odd parts is not a part.

The programs for A240870, there is no canonical definition to state claims against.
-/

/-! ## A240870.P11151874683212490377

`A240868(n)+A240866(n)`
-/

namespace A240870.P11151874683212490377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240868 n + A240866 n

end

end A240870.P11151874683212490377

/-! ## A240870.P15333414415030158280

`A052839(n)-(A240863(n)+1)`
-/

namespace A240870.P15333414415030158280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A240863 n + 1)

end

end A240870.P15333414415030158280

/-! ## A240870.P11876395380174104822

`A285229(∑[n]+1)-A240863(n)`
-/

namespace A240870.P11876395380174104822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A240863 n

end

end A240870.P11876395380174104822

/-! ## A240870.P17567472406169769910

`A000009(n)-A240863(A028310(n))`
-/

namespace A240870.P17567472406169769910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240863 (A028310 n).toNat

end

end A240870.P17567472406169769910

/-! ## A240870.P13953545945329429377

`A035457(A004277(n))-A240863(n)`
-/

namespace A240870.P13953545945329429377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A240863 n

end

end A240870.P13953545945329429377

/-! ## A240870.P4823197286337930316

`abs(A081360(n))-A240863(A028310(n))`
-/

namespace A240870.P4823197286337930316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A240863 (A028310 n).toNat

end

end A240870.P4823197286337930316

/-! ## A240870.P8636719602674224998

`A000009(n)-A240863(A000007(n)+n)`
-/

namespace A240870.P8636719602674224998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A240863 (A000007 n + (n : ℤ)).toNat

end

end A240870.P8636719602674224998

/-! ## A240870.P6838142954005738548

`A240862(n)+A240868(n)-A240864(n)`
-/

namespace A240870.P6838142954005738548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240862 n + (A240868 n - A240864 n)

end

end A240870.P6838142954005738548

/-! ## A240870.P402175765221369559

`A240862(n)+A240869(n)-A240863(n)`
-/

namespace A240870.P402175765221369559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240862 n + (A240869 n - A240863 n)

end

end A240870.P402175765221369559

/-! ## A240870.P12527555906609054546

`A240868(n)+A240865(n)-A240863(n)`
-/

namespace A240870.P12527555906609054546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240868 n + A240865 n - A240863 n

end

end A240870.P12527555906609054546

/-! ## A240870.P6041659694475804591

`A061199(∑[n]+1)-A240863(n)`
-/

namespace A240870.P6041659694475804591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A240863 n

end

end A240870.P6041659694475804591

/-!
# A240871: Number of partitions p of n into distinct parts such that max(p) = 3 + min(p).

The programs for A240871, the canonical program `A240871.P17812865653308610154` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240871 has offset 0).

The definition of A240871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240871.P17812865653308610154

`ogf((x^5+x^6+3x^7+3x^8+3x^9+3x^10+2x^11+x^12)/(1+x+x^2-x^4-x^5-x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240871

/-- `ogf((x^5+x^6+3x^7+3x^8+3x^9+3x^10+2x^11+x^12)/(1+x+x^2-x^4-x^5-x^6))` -/
def P17812865653308610154.Spec : Prop :=
  ∀ n, P17812865653308610154.a n = A240871 n

theorem P17812865653308610154.correct : P17812865653308610154.Spec := by
  intro n
  simp only [A240871]

end A240871

/-!
# A240872: Number of partitions p of n into distinct parts such that max(p) = 4 + min(p).

The programs for A240872, the canonical program `A240872.P1176674816980518121` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240872 has offset 0).

The definition of A240872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240872.P1176674816980518121

`ogf((x^6+x^7+3x^8+4x^9+5x^10+6x^11+7x^12+6x^13+5x^14+5x^15+3x^16+2x^17+x^18)/(1+x+x^2+x^3-x^5-x^6-x^7-x^8))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240872

/-- `ogf((x^6+x^7+3x^8+4x^9+5x^10+6x^11+7x^12+6x^13+5x^14+5x^15+3x^16+2x^17+x^18)/(1+x+x^2+x^3-x^5-x^6-x^7-x^8))` -/
def P1176674816980518121.Spec : Prop :=
  ∀ n, P1176674816980518121.a n = A240872 n

theorem P1176674816980518121.correct : P1176674816980518121.Spec := by
  intro n
  simp only [A240872]

end A240872

/-!
# A240874: Number of partitions p of n into distinct parts such that max(p) < 2*min(p).

The programs for A240874, there is no canonical definition to state claims against.
-/

/-! ## A240874.P737154404100544393

`A241061(n)-A241035(n)`
-/

namespace A240874.P737154404100544393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241061 n - A241035 n

end

end A240874.P737154404100544393

/-! ## A240874.P14535017751603452159

`A241067(n)+A241065(n)`
-/

namespace A240874.P14535017751603452159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241067 n + A241065 n

end

end A240874.P14535017751603452159

/-! ## A240874.P13774046165228846646

`A052839(n)-(A241036(n)+1)`
-/

namespace A240874.P13774046165228846646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A241036 n + 1)

end

end A240874.P13774046165228846646

/-! ## A240874.P17478045947050184303

`A035457(A004277(n))-A241036(n)`
-/

namespace A240874.P17478045947050184303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004277 n).toNat - A241036 n

end

end A240874.P17478045947050184303

/-! ## A240874.P12730354257043856431

`A000009(n)-(A241036(n)+A000007(n))`
-/

namespace A240874.P12730354257043856431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A241036 n + A000007 n)

end

end A240874.P12730354257043856431

/-! ## A240874.P5653710975012530961

`A241068(n)+A241065(n)-A241036(n)`
-/

namespace A240874.P5653710975012530961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241068 n + A241065 n - A241036 n

end

end A240874.P5653710975012530961

/-! ## A240874.P2281002000328394873

`A000009(n)-A241036(n)-val(A000040(n+1), 2)`
-/

namespace A240874.P2281002000328394873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241036 n - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A240874.P2281002000328394873

/-! ## A240874.P5372245149079420514

`A000009(n)-A241036(n)-and(1, A000010(n+2))`
-/

namespace A240874.P5372245149079420514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241036 n - Int.land 1 (A000010 (n + 2))

end

end A240874.P5372245149079420514

/-! ## A240874.P10067766573015837370

`A000009(n)-A241036(n)-A000045(C(2, n+2))`
-/

namespace A240874.P10067766573015837370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A241036 n - A000045 (Nat.choose 2 (n + 2))

end

end A240874.P10067766573015837370

/-! ## A240874.P13751213050690016891

`A241037(n)+A241061(n)-A241036(n)`
-/

namespace A240874.P13751213050690016891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241037 n + (A241061 n - A241036 n)

end

end A240874.P13751213050690016891

/-!
# A240876: Expansion of (1 + x)^11 / (1 - x)^12.

The programs for A240876, the canonical program `A240876.P12730443081561685234` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240876 has offset 0).

The definition of A240876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240876.P12730443081561685234

`∑[A035706(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A240876

/-- `∑[A035706(n)]` -/
def P12730443081561685234.Spec : Prop :=
  ∀ n, P12730443081561685234.a n = A240876 n

theorem P12730443081561685234.correct : P12730443081561685234.Spec := by
  intro n
  simp only [A240876]

end A240876

/-! ## A240876.P2960430106545119037

`A035707(n)-a(n-1)` with `a(0)=1`
-/

namespace A240876.P2960430106545119037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035707 n - a (n - 1)

end

end A240876.P2960430106545119037

namespace A240876

/-- `A035707(n)-a(n-1)` -/
def P2960430106545119037.Spec : Prop :=
  ∀ n, P2960430106545119037.a n = A240876 n

end A240876

/-! ## A240876.P7905656323228155747

`A035605(n)+A008421(n)`
-/

namespace A240876.P7905656323228155747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035605 n + A008421 n

end

end A240876.P7905656323228155747

namespace A240876

/-- `A035605(n)+A008421(n)` -/
def P7905656323228155747.Spec : Prop :=
  ∀ n, P7905656323228155747.a n = A240876 n

end A240876

/-! ## A240876.P10642817686546420073

`A053805(n)-A035606(n)`
-/

namespace A240876.P10642817686546420073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053805 n - A035606 n

end

end A240876.P10642817686546420073

namespace A240876

/-- `A053805(n)-A035606(n)` -/
def P10642817686546420073.Spec : Prop :=
  ∀ n, P10642817686546420073.a n = A240876 n

end A240876

/-! ## A240876.P4954947629182779670

`(A035707(n)+A035706(n))/2`
-/

namespace A240876.P4954947629182779670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035707 n + A035706 n : ℚ) / 2

end

end A240876.P4954947629182779670

namespace A240876

/-- `(A035707(n)+A035706(n))/2` -/
def P4954947629182779670.Spec : Prop :=
  ∀ n, P4954947629182779670.a n = (A240876 n : ℚ)

end A240876

/-! ## A240876.P16317941029145201200

`∑[∑[2*A008420(n)]-A008420(n)]`
-/

namespace A240876.P16317941029145201200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240876.P16317941029145201200

namespace A240876

/-- `∑[∑[2*A008420(n)]-A008420(n)]` -/
def P16317941029145201200.Spec : Prop :=
  ∀ n, P16317941029145201200.a n = A240876 n

end A240876

/-! ## A240876.P4001963545843353596

`Δ[A035606(n)]/2`
-/

namespace A240876.P4001963545843353596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035606 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A240876.P4001963545843353596

namespace A240876

/-- `Δ[A035606(n)]/2` -/
def P4001963545843353596.Spec : Prop :=
  ∀ n, P4001963545843353596.a n = (A240876 n : ℚ)

end A240876

/-! ## A240876.P16395099828892153746

`A300624(n+1)+A300624(n)`
-/

namespace A240876.P16395099828892153746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300624 (n + 1) + A300624 n

end

end A240876.P16395099828892153746

namespace A240876

/-- `A300624(n+1)+A300624(n)` -/
def P16395099828892153746.Spec : Prop :=
  ∀ n, P16395099828892153746.a n = A240876 n

end A240876

/-! ## A240876.P6182132576589163829

`(A035606(n+1)-A035606(n))/2`
-/

namespace A240876.P6182132576589163829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035606 (n + 1) - A035606 n : ℚ) / 2

end

end A240876.P6182132576589163829

namespace A240876

/-- `(A035606(n+1)-A035606(n))/2` -/
def P6182132576589163829.Spec : Prop :=
  ∀ n, P6182132576589163829.a n = (A240876 n : ℚ)

end A240876

/-!
# A240877: Sum of the denominators of the Farey series of order n (A006843).

The programs for A240877, the canonical program `A240877.P3561136259224989296` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240877 has offset 0).

The definition of A240877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240877.P12770821640916365769

`A002618(n)+a(n-1)` with `a(0)=1`
-/

namespace A240877.P12770821640916365769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002618 n + a (n - 1)

end

end A240877.P12770821640916365769

namespace A240877

/-- `A002618(n)+a(n-1)` -/
def P12770821640916365769.Spec : Prop :=
  ∀ n, P12770821640916365769.a n = A240877 n

end A240877

/-! ## A240877.P10088281490870969910

`∑[A002618(floor(sqrt(n²+1)))]`
-/

namespace A240877.P10088281490870969910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240877.P10088281490870969910

namespace A240877

/-- `∑[A002618(floor(sqrt(n²+1)))]` -/
def P10088281490870969910.Spec : Prop :=
  ∀ n, P10088281490870969910.a n = A240877 n

end A240877

/-! ## A240877.P3561136259224989296

`a(n-1)+A046151(n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A240877

/-- `a(n-1)+A046151(n)+1` -/
def P3561136259224989296.Spec : Prop :=
  ∀ n, P3561136259224989296.a n = A240877 n

theorem P3561136259224989296.correct : P3561136259224989296.Spec := by
  intro n
  simp only [A240877]

end A240877

/-! ## A240877.P7642650102884055366

`a(n-1)+n*A000010(n)` with `a(0)=1`
-/

namespace A240877.P7642650102884055366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n : ℤ) * A000010 n

end

end A240877.P7642650102884055366

namespace A240877

/-- `a(n-1)+n*A000010(n)` -/
def P7642650102884055366.Spec : Prop :=
  ∀ n, P7642650102884055366.a n = A240877 n

end A240877

/-! ## A240877.P6961888036816931054

`∑[n*A000010(abs(1-n)+1)]+1`
-/

namespace A240877.P6961888036816931054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000010 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A240877.P6961888036816931054

namespace A240877

/-- `∑[n*A000010(abs(1-n)+1)]+1` -/
def P6961888036816931054.Spec : Prop :=
  ∀ n, P6961888036816931054.a n = A240877 n

end A240877

/-! ## A240877.P1177060105586118961

`A011755(n+1)-A046151(n+1)`
-/

namespace A240877.P1177060105586118961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011755 (n + 1) - A046151 (n + 1)

end

end A240877.P1177060105586118961

namespace A240877

/-- `A011755(n+1)-A046151(n+1)` -/
def P1177060105586118961.Spec : Prop :=
  ∀ n, P1177060105586118961.a n = A240877 n

end A240877

/-! ## A240877.P2044638423368533854

`2*A213544(n+1)-A002618(n+1)`
-/

namespace A240877.P2044638423368533854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213544 (n + 1) - A002618 (n + 1)

end

end A240877.P2044638423368533854

namespace A240877

/-- `2*A213544(n+1)-A002618(n+1)` -/
def P2044638423368533854.Spec : Prop :=
  ∀ n, P2044638423368533854.a n = A240877 n

end A240877

/-! ## A240877.P11188152419484465427

`∑[A000010(A028310(n))*A028310(n)]`
-/

namespace A240877.P11188152419484465427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240877.P11188152419484465427

namespace A240877

/-- `∑[A000010(A028310(n))*A028310(n)]` -/
def P11188152419484465427.Spec : Prop :=
  ∀ n, P11188152419484465427.a n = A240877 n

end A240877

/-! ## A240877.P10422286825683766376

`∑[A000010(A065033(2*n))*A065033(2*n)]`
-/

namespace A240877.P10422286825683766376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A065033 (2 * n)).toNat * A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240877.P10422286825683766376

namespace A240877

/-- `∑[A000010(A065033(2*n))*A065033(2*n)]` -/
def P10422286825683766376.Spec : Prop :=
  ∀ n, P10422286825683766376.a n = A240877 n

end A240877

/-! ## A240877.P307408598972954098

`∑[A000010(A123108(2*n))*A123108(2*n)]`
-/

namespace A240877.P307408598972954098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A123108 (2 * n)).toNat * A123108 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240877.P307408598972954098

namespace A240877

/-- `∑[A000010(A123108(2*n))*A123108(2*n)]` -/
def P307408598972954098.Spec : Prop :=
  ∀ n, P307408598972954098.a n = A240877 n

end A240877

/-! ## A240877.P14630308851127270318

`∑[A000010(A101279(2*n+1))*A101279(2*n+1)]`
-/

namespace A240877.P14630308851127270318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A101279 (2 * n + 1)).toNat * A101279 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240877.P14630308851127270318

namespace A240877

/-- `∑[A000010(A101279(2*n+1))*A101279(2*n+1)]` -/
def P14630308851127270318.Spec : Prop :=
  ∀ n, P14630308851127270318.a n = A240877 n

end A240877

/-! ## A240877.P1045450566812749409

`∑[A000010(n^ceil(atan(n)))]`
-/

namespace A240877.P1045450566812749409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240877.P1045450566812749409

namespace A240877

/-- `∑[A000010(n^ceil(atan(n)))]` -/
def P1045450566812749409.Spec : Prop :=
  ∀ n, P1045450566812749409.a n = A240877 n

end A240877

/-! ## A240877.P14505502003652680845

`A000010(n²)+a(n-1)` with `a(0)=1`
-/

namespace A240877.P14505502003652680845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (n ^ 2) + a (n - 1)

end

end A240877.P14505502003652680845

namespace A240877

/-- `A000010(n²)+a(n-1)` -/
def P14505502003652680845.Spec : Prop :=
  ∀ n, P14505502003652680845.a n = A240877 n

end A240877

/-! ## A240877.P8991928482823803137

`∑[A000010(abs(1-n²)+1)]`
-/

namespace A240877.P8991928482823803137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|1 - (n ^ 2 : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240877.P8991928482823803137

namespace A240877

/-- `∑[A000010(abs(1-n²)+1)]` -/
def P8991928482823803137.Spec : Prop :=
  ∀ n, P8991928482823803137.a n = A240877 n

end A240877

/-! ## A240877.P9241449121065976779

`A327171(n²)+a(n-1)` with `a(0)=1`
-/

namespace A240877.P9241449121065976779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A327171 (n ^ 2) + a (n - 1)

end

end A240877.P9241449121065976779

namespace A240877

/-- `A327171(n²)+a(n-1)` -/
def P9241449121065976779.Spec : Prop :=
  ∀ n, P9241449121065976779.a n = A240877 n

end A240877

/-! ## A240877.P8863230072871621123

`∑[A298983(∑[n]-n)]`
-/

namespace A240877.P8863230072871621123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298983 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240877.P8863230072871621123

namespace A240877

/-- `∑[A298983(∑[n]-n)]` -/
def P8863230072871621123.Spec : Prop :=
  ∀ n, P8863230072871621123.a n = A240877 n

end A240877

/-! ## A240877.P18276713569477450986

`A055035(n²)+a(n-1)` with `a(0)=1`
-/

namespace A240877.P18276713569477450986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055035 (n ^ 2) + a (n - 1)

end

end A240877.P18276713569477450986

namespace A240877

/-- `A055035(n²)+a(n-1)` -/
def P18276713569477450986.Spec : Prop :=
  ∀ n, P18276713569477450986.a n = A240877 n

end A240877

/-! ## A240877.P1970645803633405739

`A071957(n²)+a(n-1)` with `a(0)=1`
-/

namespace A240877.P1970645803633405739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071957 (n ^ 2) + a (n - 1)

end

end A240877.P1970645803633405739

namespace A240877

/-- `A071957(n²)+a(n-1)` -/
def P1970645803633405739.Spec : Prop :=
  ∀ n, P1970645803633405739.a n = A240877 n

end A240877

/-! ## A240877.P5320793638441893240

`A076685(n²)+a(n-1)` with `a(0)=1`
-/

namespace A240877.P5320793638441893240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076685 (n ^ 2) + a (n - 1)

end

end A240877.P5320793638441893240

namespace A240877

/-- `A076685(n²)+a(n-1)` -/
def P5320793638441893240.Spec : Prop :=
  ∀ n, P5320793638441893240.a n = A240877 n

end A240877

/-! ## A240877.P8988477730032928139

`A080736(n²)+a(n-1)` with `a(0)=1`
-/

namespace A240877.P8988477730032928139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080736 (n ^ 2) + a (n - 1)

end

end A240877.P8988477730032928139

namespace A240877

/-- `A080736(n²)+a(n-1)` -/
def P8988477730032928139.Spec : Prop :=
  ∀ n, P8988477730032928139.a n = A240877 n

end A240877

/-!
# A240878: Numbers n such that (n^2 + 2)/3 is prime.

The programs for A240878, there is no canonical definition to state claims against.
-/

/-! ## A240878.P16417012725396414340

`record[lcm(3, A242330(n+2))]/3`
-/

namespace A240878.P16417012725396414340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A242330 (n + 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3

end

end A240878.P16417012725396414340

/-! ## A240878.P496355026070556553

`∩[A038179(n+1), A242330(n+1)]`
-/

namespace A240878.P496355026070556553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240878.P496355026070556553

/-! ## A240878.P2136585993710205184

`∩[A242330(n+1), A259749(n+1)]`
-/

namespace A240878.P2136585993710205184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240878.P2136585993710205184

/-! ## A240878.P3763592283298563421

`∩[A047268(n+1), A242330(n+1)]`
-/

namespace A240878.P3763592283298563421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240878.P3763592283298563421

/-! ## A240878.P2954440762672964791

`∩[A108118(n+1), A242330(n+1)]`
-/

namespace A240878.P2954440762672964791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240878.P2954440762672964791

/-! ## A240878.P3600527793115786597

`∩[A144430(n+1), A242330(n+1)]`
-/

namespace A240878.P3600527793115786597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240878.P3600527793115786597

/-! ## A240878.P16138114996197675587

`∩[A001651(n+1), A242330(n+1)]`
-/

namespace A240878.P16138114996197675587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240878.P16138114996197675587

/-! ## A240878.P974150056310933280

`comp[A241403(n+1)]`
-/

namespace A240878.P974150056310933280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A240878.P974150056310933280

/-! ## A240878.P17699199977992523298

`record[A051176(A242330(n+1))]`
-/

namespace A240878.P17699199977992523298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A242330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240878.P17699199977992523298

/-! ## A240878.P12649519754697190194

`filter[A242330(n+1), A011655(#)]`
-/

namespace A240878.P12649519754697190194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A240878.P12649519754697190194

/-! ## A240878.P6008395577859611899

`filter[A242330(n+1), A267208(#)]`
-/

namespace A240878.P6008395577859611899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A240878.P6008395577859611899

/-! ## A240878.P17340408523262357653

`record[A091684(A242330(A008619(n)))]`
-/

namespace A240878.P17340408523262357653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A242330 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240878.P17340408523262357653

/-! ## A240878.P15137604205102049735

`record[A091684(A242330(n+1)%A017053(n))]`
-/

namespace A240878.P15137604205102049735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (Int.tmod (A242330 (n + 1)) (A017053 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240878.P15137604205102049735

/-! ## A240878.P16553093171146621133

`∩[A133223(n+1), A242330(n+1)]`
-/

namespace A240878.P16553093171146621133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240878.P16553093171146621133

/-! ## A240878.P10272992297070462604

`A002264(record[lcm(3, A242330(n+1))])`
-/

namespace A240878.P10272992297070462604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A242330 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A240878.P10272992297070462604

/-! ## A240878.P11079674570537254697

`∩[A062132(n+1), A242330(n+1)]`
-/

namespace A240878.P11079674570537254697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240878.P11079674570537254697

/-!
# A240879: Self-convolution of Sum(binomial(2*n, i), i=0..n).

The programs for A240879, the canonical program `A240879.P14005581407535111882` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240879 has offset 0).

The definition of A240879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240879.P14005581407535111882

`A114121(n)+4*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A240879

/-- `A114121(n)+4*a(n-1)` -/
def P14005581407535111882.Spec : Prop :=
  ∀ n, P14005581407535111882.a n = A240879 n

theorem P14005581407535111882.correct : P14005581407535111882.Spec := by
  intro n
  simp only [A240879]

end A240879

/-! ## A240879.P14734546869878886239

`A258431(n+1)+A002697(n)`
-/

namespace A240879.P14734546869878886239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258431 (n + 1) + A002697 n

end

end A240879.P14734546869878886239

namespace A240879

/-- `A258431(n+1)+A002697(n)` -/
def P14734546869878886239.Spec : Prop :=
  ∀ n, P14734546869878886239.a n = A240879 n

end A240879

/-! ## A240879.P1339309370844136014

`A079028(n)+A172060(n)/2`
-/

namespace A240879.P1339309370844136014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079028 n : ℚ) + (A172060 n : ℚ) / 2

end

end A240879.P1339309370844136014

namespace A240879

/-- `A079028(n)+A172060(n)/2` -/
def P1339309370844136014.Spec : Prop :=
  ∀ n, P1339309370844136014.a n = (A240879 n : ℚ)

end A240879

/-! ## A240879.P11654263385444135086

`A241524(n)-A172060(n)/2`
-/

namespace A240879.P11654263385444135086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241524 n : ℚ) - (A172060 n : ℚ) / 2

end

end A240879.P11654263385444135086

namespace A240879

/-- `A241524(n)-A172060(n)/2` -/
def P11654263385444135086.Spec : Prop :=
  ∀ n, P11654263385444135086.a n = (A240879 n : ℚ)

end A240879

/-! ## A240879.P17984623907435255261

`∑{#}[n, A032443(#)*A032443(n-#)]`
-/

namespace A240879.P17984623907435255261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A032443 k * A032443 (n - k)

end

end A240879.P17984623907435255261

namespace A240879

/-- `∑{#}[n, A032443(#)*A032443(n-#)]` -/
def P17984623907435255261.Spec : Prop :=
  ∀ n, P17984623907435255261.a n = A240879 n

end A240879

/-! ## A240879.P1716395716097345296

`A081039(n)-A018218(n)`
-/

namespace A240879.P1716395716097345296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081039 n - A018218 n

end

end A240879.P1716395716097345296

namespace A240879

/-- `A081039(n)-A018218(n)` -/
def P1716395716097345296.Spec : Prop :=
  ∀ n, P1716395716097345296.a n = A240879 n

end A240879

/-! ## A240879.P18097581066171613749

`A395675(n)-A002697(n)`
-/

namespace A240879.P18097581066171613749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395675 n - A002697 n

end

end A240879.P18097581066171613749

namespace A240879

/-- `A395675(n)-A002697(n)` -/
def P18097581066171613749.Spec : Prop :=
  ∀ n, P18097581066171613749.a n = A240879 n

end A240879

/-! ## A240879.P11415945800216051191

`Δ[A002697(n)]-A018218(n)`
-/

namespace A240879.P11415945800216051191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A018218 n

end

end A240879.P11415945800216051191

namespace A240879

/-- `Δ[A002697(n)]-A018218(n)` -/
def P11415945800216051191.Spec : Prop :=
  ∀ n, P11415945800216051191.a n = A240879 n

end A240879

/-! ## A240879.P1024835339087692104

`A106472(2*n)-A018218(n)`
-/

namespace A240879.P1024835339087692104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 (2 * n) - A018218 n

end

end A240879.P1024835339087692104

namespace A240879

/-- `A106472(2*n)-A018218(n)` -/
def P1024835339087692104.Spec : Prop :=
  ∀ n, P1024835339087692104.a n = A240879 n

end A240879

/-! ## A240879.P12056793425639022084

`(A241524(n)+A079028(n))/2`
-/

namespace A240879.P12056793425639022084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241524 n + A079028 n : ℚ) / 2

end

end A240879.P12056793425639022084

namespace A240879

/-- `(A241524(n)+A079028(n))/2` -/
def P12056793425639022084.Spec : Prop :=
  ∀ n, P12056793425639022084.a n = (A240879 n : ℚ)

end A240879

/-! ## A240879.P13659092542214434433

`A081039(n)-A153338(n+1)/2`
-/

namespace A240879.P13659092542214434433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081039 n : ℚ) - (A153338 (n + 1) : ℚ) / 2

end

end A240879.P13659092542214434433

namespace A240879

/-- `A081039(n)-A153338(n+1)/2` -/
def P13659092542214434433.Spec : Prop :=
  ∀ n, P13659092542214434433.a n = (A240879 n : ℚ)

end A240879

/-! ## A240879.P14644812698857316445

`A339240(n+1)/2-A049610(2*n)`
-/

namespace A240879.P14644812698857316445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339240 (n + 1) : ℚ) / 2 - (A049610 (2 * n) : ℚ)

end

end A240879.P14644812698857316445

namespace A240879

/-- `A339240(n+1)/2-A049610(2*n)` -/
def P14644812698857316445.Spec : Prop :=
  ∀ n, P14644812698857316445.a n = (A240879 n : ℚ)

end A240879

/-! ## A240879.P4857976597091729652

`(A131352(2*n)+A100071(2*n+1))/2`
-/

namespace A240879.P4857976597091729652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131352 (2 * n) + A100071 (2 * n + 1) : ℚ) / 2

end

end A240879.P4857976597091729652

namespace A240879

/-- `(A131352(2*n)+A100071(2*n+1))/2` -/
def P4857976597091729652.Spec : Prop :=
  ∀ n, P4857976597091729652.a n = (A240879 n : ℚ)

end A240879

/-! ## A240879.P8037683582520348209

`A002457(n)+A018218(n)-A002697(n)`
-/

namespace A240879.P8037683582520348209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n + (A018218 n - A002697 n)

end

end A240879.P8037683582520348209

namespace A240879

/-- `A002457(n)+A018218(n)-A002697(n)` -/
def P8037683582520348209.Spec : Prop :=
  ∀ n, P8037683582520348209.a n = A240879 n

end A240879

/-! ## A240879.P17574558032091152060

`A002697(n+1)-(A018218(n)+A002697(n))`
-/

namespace A240879.P17574558032091152060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) - (A018218 n + A002697 n)

end

end A240879.P17574558032091152060

namespace A240879

/-- `A002697(n+1)-(A018218(n)+A002697(n))` -/
def P17574558032091152060.Spec : Prop :=
  ∀ n, P17574558032091152060.a n = A240879 n

end A240879

/-! ## A240879.P6817217462436538092

`A002697(n+1)+A002697(n)-A303602(n)`
-/

namespace A240879.P6817217462436538092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) + (A002697 n - A303602 n)

end

end A240879.P6817217462436538092

namespace A240879

/-- `A002697(n+1)+A002697(n)-A303602(n)` -/
def P6817217462436538092.Spec : Prop :=
  ∀ n, P6817217462436538092.a n = A240879 n

end A240879

/-!
# A240881: Chebyshev transform of A107841.

The programs for A240881, there is no canonical definition to state claims against.
-/

/-! ## A240881.P7037803733157871514

`A285500(4*a(n-1)-2)` with `a(0)=1`
-/

namespace A240881.P7037803733157871514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285500 (4 * a (n - 1) - 2).toNat

end

end A240881.P7037803733157871514

/-!
# A240882: Numbers m such that m - 4*k^2 is a prime for all k > 0 with k^2 < m/4.

The programs for A240882, there is no canonical definition to state claims against.
-/

/-! ## A240882.P11319969864116482623

`A100348(lt[A367214(n), A248937(n+1)])`
-/

namespace A240882.P11319969864116482623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100348 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240882.P11319969864116482623

/-! ## A240882.P16474088074718106957

`A100348(record[A099384(n)])`
-/

namespace A240882.P16474088074718106957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100348 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240882.P16474088074718106957

/-! ## A240882.P5171291518882973810

`A100348(A029731(n+1)+1)`
-/

namespace A240882.P5171291518882973810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100348 (A029731 (n + 1) + 1).toNat

end

end A240882.P5171291518882973810

/-! ## A240882.P17403903004834271673

`A100348(A029967(n+1)+1)`
-/

namespace A240882.P17403903004834271673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100348 (A029967 (n + 1) + 1).toNat

end

end A240882.P17403903004834271673

/-! ## A240882.P6858587134213999681

`A100348(A029968(n+1)+1)`
-/

namespace A240882.P6858587134213999681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100348 (A029968 (n + 1) + 1).toNat

end

end A240882.P6858587134213999681

/-!
# A240883: Central terms of the triangle in A240857.

The programs for A240883, the canonical program `A240883.P5378419761383427474` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240883 has offset 0).

The definition of A240883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240883.P5378419761383427474

`A046818(n)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A240883

/-- `A046818(n)-1` -/
def P5378419761383427474.Spec : Prop :=
  ∀ n, P5378419761383427474.a n = A240883 n

theorem P5378419761383427474.correct : P5378419761383427474.Spec := by
  intro n
  simp only [A240883]

end A240883

/-! ## A240883.P13707645556638626185

`A240857(C(2*n+1, 2)+n)`
-/

namespace A240883.P13707645556638626185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240857 (Nat.choose (2 * n + 1) 2 + n)

end

end A240883.P13707645556638626185

namespace A240883

/-- `A240857(C(2*n+1, 2)+n)` -/
def P13707645556638626185.Spec : Prop :=
  ∀ n, P13707645556638626185.a n = A240883 n

end A240883

/-! ## A240883.P9833837314807453556

`log2(A351864(n))`
-/

namespace A240883.P9833837314807453556
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A351864 n : ℝ)

end

end A240883.P9833837314807453556

namespace A240883

/-- `log2(A351864(n))` -/
def P9833837314807453556.Spec : Prop :=
  ∀ n, P9833837314807453556.a n = (A240883 n : ℝ)

end A240883

/-! ## A240883.P13658330973886954832

`log2(A001316(3*n+1))-1`
-/

namespace A240883.P13658330973886954832
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (3 * n + 1) : ℝ) - 1

end

end A240883.P13658330973886954832

namespace A240883

/-- `log2(A001316(3*n+1))-1` -/
def P13658330973886954832.Spec : Prop :=
  ∀ n, P13658330973886954832.a n = (A240883 n : ℝ)

end A240883

/-! ## A240883.P12241039910643419437

`A000120(A351864(n)-1)`
-/

namespace A240883.P12241039910643419437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A351864 n - 1).toNat

end

end A240883.P12241039910643419437

namespace A240883

/-- `A000120(A351864(n)-1)` -/
def P12241039910643419437.Spec : Prop :=
  ∀ n, P12241039910643419437.a n = A240883 n

end A240883

/-! ## A240883.P1124518379811591401

`A036555(n)-A371093(n)`
-/

namespace A240883.P1124518379811591401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 n - A371093 n

end

end A240883.P1124518379811591401

namespace A240883

/-- `A036555(n)-A371093(n)` -/
def P1124518379811591401.Spec : Prop :=
  ∀ n, P1124518379811591401.a n = A240883 n

end A240883

/-! ## A240883.P18141382837009054725

`A046079(A001316(3*n+1))`
-/

namespace A240883.P18141382837009054725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A001316 (3 * n + 1)).toNat

end

end A240883.P18141382837009054725

namespace A240883

/-- `A046079(A001316(3*n+1))` -/
def P18141382837009054725.Spec : Prop :=
  ∀ n, P18141382837009054725.a n = A240883 n

end A240883

/-! ## A240883.P9701018338961442953

`3*n-A005187(A007494(n))`
-/

namespace A240883.P9701018338961442953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A005187 (A007494 n).toNat

end

end A240883.P9701018338961442953

namespace A240883

/-- `3*n-A005187(A007494(n))` -/
def P9701018338961442953.Spec : Prop :=
  ∀ n, P9701018338961442953.a n = A240883 n

end A240883

/-! ## A240883.P9876643837410475055

`A023416(A001316(3*n+1)+1)`
-/

namespace A240883.P9876643837410475055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A001316 (3 * n + 1) + 1).toNat

end

end A240883.P9876643837410475055

namespace A240883

/-- `A023416(A001316(3*n+1)+1)` -/
def P9876643837410475055.Spec : Prop :=
  ∀ n, P9876643837410475055.a n = A240883 n

end A240883

/-! ## A240883.P16915799986704789461

`A000523(A001316(3*n+1)-1)`
-/

namespace A240883.P16915799986704789461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A001316 (3 * n + 1) - 1).toNat

end

end A240883.P16915799986704789461

namespace A240883

/-- `A000523(A001316(3*n+1)-1)` -/
def P16915799986704789461.Spec : Prop :=
  ∀ n, P16915799986704789461.a n = A240883 n

end A240883

/-! ## A240883.P4918636886031378946

`A000120(A001316(3*n+1)-2)`
-/

namespace A240883.P4918636886031378946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001316 (3 * n + 1) - 2).toNat

end

end A240883.P4918636886031378946

namespace A240883

/-- `A000120(A001316(3*n+1)-2)` -/
def P4918636886031378946.Spec : Prop :=
  ∀ n, P4918636886031378946.a n = A240883 n

end A240883

/-! ## A240883.P6022493600441410783

`A115878(2*A001316(3*n+1))`
-/

namespace A240883.P6022493600441410783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (2 * A001316 (3 * n + 1)).toNat

end

end A240883.P6022493600441410783

namespace A240883

/-- `A115878(2*A001316(3*n+1))` -/
def P6022493600441410783.Spec : Prop :=
  ∀ n, P6022493600441410783.a n = A240883 n

end A240883

/-! ## A240883.P7262961395782046578

`A007814(A001316(3*n+1)/2)`
-/

namespace A240883.P7262961395782046578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A001316 (3 * n + 1) : ℚ) / 2)).toNat

end

end A240883.P7262961395782046578

namespace A240883

/-- `A007814(A001316(3*n+1)/2)` -/
def P7262961395782046578.Spec : Prop :=
  ∀ n, P7262961395782046578.a n = A240883 n

end A240883

/-! ## A240883.P15339163261098445772

`A037861(A001316(2*n+1+n))`
-/

namespace A240883.P15339163261098445772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A001316 (2 * n + 1 + n)).toNat

end

end A240883.P15339163261098445772

namespace A240883

/-- `A037861(A001316(2*n+1+n))` -/
def P15339163261098445772.Spec : Prop :=
  ∀ n, P15339163261098445772.a n = A240883 n

end A240883

/-! ## A240883.P12901572679690773514

`val(A400438(2*n), 2)`
-/

namespace A240883.P12901572679690773514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A400438 (2 * n)).toNat 2

end

end A240883.P12901572679690773514

namespace A240883

/-- `val(A400438(2*n), 2)` -/
def P12901572679690773514.Spec : Prop :=
  ∀ n, (P12901572679690773514.a n : ℤ) = A240883 n

end A240883

/-! ## A240883.P12057755584917511454

`A000120(A173732(2*n))`
-/

namespace A240883.P12057755584917511454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A173732 (2 * n)).toNat

end

end A240883.P12057755584917511454

namespace A240883

/-- `A000120(A173732(2*n))` -/
def P12057755584917511454.Spec : Prop :=
  ∀ n, P12057755584917511454.a n = A240883 n

end A240883

/-! ## A240883.P2956744340438066649

`A016777(2*n)-A005187(A016777(n))`
-/

namespace A240883.P2956744340438066649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n) - A005187 (A016777 n).toNat

end

end A240883.P2956744340438066649

namespace A240883

/-- `A016777(2*n)-A005187(A016777(n))` -/
def P2956744340438066649.Spec : Prop :=
  ∀ n, P2956744340438066649.a n = A240883 n

end A240883

/-! ## A240883.P17196874602856881862

`A046819(2*n)-1`
-/

namespace A240883.P17196874602856881862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046819 (2 * n) - 1

end

end A240883.P17196874602856881862

namespace A240883

/-- `A046819(2*n)-1` -/
def P17196874602856881862.Spec : Prop :=
  ∀ n, P17196874602856881862.a n = A240883 n

end A240883

/-! ## A240883.P9591821001747708754

`A036555(Δ[n²])-2`
-/

namespace A240883.P9591821001747708754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A240883.P9591821001747708754

namespace A240883

/-- `A036555(Δ[n²])-2` -/
def P9591821001747708754.Spec : Prop :=
  ∀ n, P9591821001747708754.a n = A240883 n

end A240883

/-! ## A240883.P16294475371817407937

`log2(A134660(2*n+1))-2`
-/

namespace A240883.P16294475371817407937
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A134660 (2 * n + 1) : ℝ) - 2

end

end A240883.P16294475371817407937

namespace A240883

/-- `log2(A134660(2*n+1))-2` -/
def P16294475371817407937.Spec : Prop :=
  ∀ n, P16294475371817407937.a n = (A240883 n : ℝ)

end A240883

/-! ## A240883.P9839684296659347331

`val(C(2*n+2*n+1, n), 2)`
-/

namespace A240883.P9839684296659347331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose (2 * n + (2 * n + 1)) n) 2

end

end A240883.P9839684296659347331

namespace A240883

/-- `val(C(2*n+2*n+1, n), 2)` -/
def P9839684296659347331.Spec : Prop :=
  ∀ n, (P9839684296659347331.a n : ℤ) = A240883 n

end A240883

/-!
# A240884: Semiprimes of the form C(n) + T(n) where C(n) and T(n) are the n-th cube and triangular numbers.

The programs for A240884, there is no canonical definition to state claims against.
-/

/-! ## A240884.P8553995401773334547

`filter[A085786(n+1), A354927(#)]`
-/

namespace A240884.P8553995401773334547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A240884.P8553995401773334547

/-! ## A240884.P8243395783816750188

`filter[A210464(n+1), A354927(#)]`
-/

namespace A240884.P8243395783816750188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A240884.P8243395783816750188

/-! ## A240884.P7811931999388013657

`filter[A085786(n+3), A374128(#)]`
-/

namespace A240884.P7811931999388013657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085786 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A240884.P7811931999388013657

/-! ## A240884.P10159386087195501809

`filter[A210464(n+3), A374128(#)]`
-/

namespace A240884.P10159386087195501809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210464 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A240884.P10159386087195501809

/-! ## A240884.P5576448593478790090

`filter[A085786(n+1), A064911(#)]`
-/

namespace A240884.P5576448593478790090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A240884.P5576448593478790090

/-!
# A240887: Number of n X n 0..2 arrays with no element equal to a different number of vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A240887, there is no canonical definition to state claims against.
-/

/-! ## A240887.P4862769967756327280

`A240893(∑[4*n]+1)`
-/

namespace A240887.P4862769967756327280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240887.P4862769967756327280

/-! ## A240887.P13184524291865464755

`A043562(n)*A240893(A001844(n))`
-/

namespace A240887.P13184524291865464755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n * A240893 (A001844 n).toNat

end

end A240887.P13184524291865464755

/-! ## A240887.P16703270563117170051

`A007318(∑[n])*A240893(A001844(n))`
-/

namespace A240887.P16703270563117170051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A240893 (A001844 n).toNat

end

end A240887.P16703270563117170051

/-! ## A240887.P4345237476356767754

`A008683(C(n, n²)!)*A240893(A001844(n))`
-/

namespace A240887.P4345237476356767754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.factorial (Nat.choose n (n ^ 2))) * A240893 (A001844 n).toNat

end

end A240887.P4345237476356767754

/-! ## A240887.P2958917270548672070

`A020639(C(n, n²)!)*A240893(A001844(n))`
-/

namespace A240887.P2958917270548672070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (Nat.choose n (n ^ 2))) * A240893 (A001844 n).toNat

end

end A240887.P2958917270548672070

/-!
# A240888: Number of n X 3 0..2 arrays with no element equal to a different number of vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A240888, the canonical program `A240888.P14176022298832326083` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240888 has offset 1).

The definition of A240888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240888.P4228292498310826981

`ogf((2+5x+8x^2+2x^3)/(1-3x-8x^2-14x^3-4x^4))`
-/

namespace A240888.P4228292498310826981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 8, 2] [1, -3, -8, -14, -4] n

end

end A240888.P4228292498310826981

namespace A240888

/-- `ogf((2+5x+8x^2+2x^3)/(1-3x-8x^2-14x^3-4x^4))` -/
def P4228292498310826981.Spec : Prop :=
  ∀ n, P4228292498310826981.a n = A240888 (n + 1)

end A240888

/-! ## A240888.P14176022298832326083

`3*a(n-1)+8*a(n-2)+14*a(n-3)+4*a(n-4)` with `a(0)=2, a(1)=11, a(2)=57, a(3)=289`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240888

/-- `3*a(n-1)+8*a(n-2)+14*a(n-3)+4*a(n-4)` -/
def P14176022298832326083.Spec : Prop :=
  ∀ n, (P14176022298832326083.a n : ℤ) = A240888 (n + 1)

theorem P14176022298832326083.correct : P14176022298832326083.Spec := by
  intro n
  simp only [A240888, Nat.add_sub_cancel]

end A240888

/-! ## A240888.P13826598678199539144

`A240893(∑[n+2]+4)`
-/

namespace A240888.P13826598678199539144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240888.P13826598678199539144

namespace A240888

/-- `A240893(∑[n+2]+4)` -/
def P13826598678199539144.Spec : Prop :=
  ∀ n, P13826598678199539144.a n = A240888 (n + 1)

end A240888

/-! ## A240888.P6983948942568117694

`gcd(A000038(n), A240893(A167614(n+1)))`
-/

namespace A240888.P6983948942568117694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A240893 (A167614 (n + 1)).toNat)

end

end A240888.P6983948942568117694

namespace A240888

/-- `gcd(A000038(n), A240893(A167614(n+1)))` -/
def P6983948942568117694.Spec : Prop :=
  ∀ n, (P6983948942568117694.a n : ℤ) = A240888 (n + 1)

end A240888

/-! ## A240888.P2885394397465357874

`lcm(A033999(n), A240893(A167614(n+1)))`
-/

namespace A240888.P2885394397465357874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A240893 (A167614 (n + 1)).toNat)

end

end A240888.P2885394397465357874

namespace A240888

/-- `lcm(A033999(n), A240893(A167614(n+1)))` -/
def P2885394397465357874.Spec : Prop :=
  ∀ n, (P2885394397465357874.a n : ℤ) = A240888 (n + 1)

end A240888

/-!
# A240889: Number of nX4 0..2 arrays with no element equal to a different number of vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A240889, there is no canonical definition to state claims against.
-/

/-! ## A240889.P4732918326794113688

`A240893(A374004(n+1))`
-/

namespace A240889.P4732918326794113688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (A374004 (n + 1)).toNat

end

end A240889.P4732918326794113688

/-! ## A240889.P8164494494517014232

`A240893(A052905(n)+9)`
-/

namespace A240889.P8164494494517014232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (A052905 n + 9).toNat

end

end A240889.P8164494494517014232

/-! ## A240889.P12148934372773366802

`A240893(A055999(n)+10)`
-/

namespace A240889.P12148934372773366802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (A055999 n + 10).toNat

end

end A240889.P12148934372773366802

/-! ## A240889.P2554080321651408206

`A240893(A167614(n+2)+1)`
-/

namespace A240889.P2554080321651408206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (A167614 (n + 2) + 1).toNat

end

end A240889.P2554080321651408206

/-! ## A240889.P5078021713382411834

`A240893(A166136(n+2)-2)`
-/

namespace A240889.P5078021713382411834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (A166136 (n + 2) - 2).toNat

end

end A240889.P5078021713382411834

/-!
# A240890: Number of nX5 0..2 arrays with no element equal to a different number of vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A240890, there is no canonical definition to state claims against.
-/

/-! ## A240890.P15833487137412958432

`A240893(A374005(n+1))`
-/

namespace A240890.P15833487137412958432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (A374005 (n + 1)).toNat

end

end A240890.P15833487137412958432

/-! ## A240890.P6969747839634789270

`A240893(A166136(n+3)-1)`
-/

namespace A240890.P6969747839634789270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (A166136 (n + 3) - 1).toNat

end

end A240890.P6969747839634789270

/-! ## A240890.P3160794633936855843

`A240893(eq[6, A131818(n+1)])`
-/

namespace A240890.P3160794633936855843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240890.P3160794633936855843

/-! ## A240890.P5674791006159124881

`A240893(Δ[A264443(n)])`
-/

namespace A240890.P5674791006159124881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (f1 (n + 1) - f1 n).toNat

end

end A240890.P5674791006159124881

/-! ## A240890.P2223004528029609595

`A240893(A046691(n+3))`
-/

namespace A240890.P2223004528029609595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (A046691 (n + 3)).toNat

end

end A240890.P2223004528029609595

/-!
# A240891: Number of nX6 0..2 arrays with no element equal to a different number of vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A240891, there is no canonical definition to state claims against.
-/

/-! ## A240891.P13207792462438694535

`A240893(A374007(n+1))`
-/

namespace A240891.P13207792462438694535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (A374007 (n + 1)).toNat

end

end A240891.P13207792462438694535

/-! ## A240891.P3060603664641810549

`A240893(A166136(n+4))`
-/

namespace A240891.P3060603664641810549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (A166136 (n + 4)).toNat

end

end A240891.P3060603664641810549

/-! ## A240891.P6772591607962946734

`A240893(A056115(n)+21)`
-/

namespace A240891.P6772591607962946734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (A056115 n + 21).toNat

end

end A240891.P6772591607962946734

/-! ## A240891.P8479728524700579468

`A240893(Δ[A264443(n)]+10)`
-/

namespace A240891.P8479728524700579468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (f1 (n + 1) - f1 n + 10).toNat

end

end A240891.P8479728524700579468

/-! ## A240891.P3786493665074765628

`A240893(eq[7, A131818(n+1)])`
-/

namespace A240891.P3786493665074765628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240891.P3786493665074765628

/-!
# A240892: Number of nX7 0..2 arrays with no element equal to a different number of vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A240892, there is no canonical definition to state claims against.
-/

/-! ## A240892.P9225493160092124090

`A240893(A374008(n+1))`
-/

namespace A240892.P9225493160092124090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (A374008 (n + 1)).toNat

end

end A240892.P9225493160092124090

/-! ## A240892.P10178855698990626052

`A240893(A056119(n)+28)`
-/

namespace A240892.P10178855698990626052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (A056119 n + 28).toNat

end

end A240892.P10178855698990626052

/-! ## A240892.P7138169276320677113

`A240893(eq[11, A066657(n)])`
-/

namespace A240892.P7138169276320677113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240892.P7138169276320677113

/-! ## A240892.P6876543331113880753

`A240893(eq[8, A131818(n+1)])`
-/

namespace A240892.P6876543331113880753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240892.P6876543331113880753

/-! ## A240892.P755614055672698133

`A240893(eq[4, A219347(n)])`
-/

namespace A240892.P755614055672698133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240892.P755614055672698133

/-!
# A240893: T(n,k)=Number of nXk 0..2 arrays with no element equal to a different number of vertical neighbors than horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A240893, there is no canonical definition to state claims against.
-/

/-! ## A240893.P5505490716078521773

`A135304(2*A241108(n+1))`
-/

namespace A240893.P5505490716078521773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (2 * A241108 (n + 1)).toNat

end

end A240893.P5505490716078521773

/-! ## A240893.P12198367742529145364

`A241108(n+1)+A016389(A022166(n))`
-/

namespace A240893.P12198367742529145364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (n + 1) + A016389 (A022166 n).toNat

end

end A240893.P12198367742529145364

/-! ## A240893.P14856574284458349386

`A241108(n+1)-A011731(A022171(n))`
-/

namespace A240893.P14856574284458349386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (n + 1) - A011731 (A022171 n).toNat

end

end A240893.P14856574284458349386

/-! ## A240893.P12355381033750722556

`A241108(n+1)-A055641(A002843(n))`
-/

namespace A240893.P12355381033750722556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (n + 1) - A055641 (A002843 n).toNat

end

end A240893.P12355381033750722556

/-! ## A240893.P18156413465121733475

`A241108(n+1)-A037824(A022173(n))`
-/

namespace A240893.P18156413465121733475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (n + 1) - A037824 (A022173 n).toNat

end

end A240893.P18156413465121733475

/-!
# A240894: Consider a number of k digits n = d_(k)*10^(k-1) + d_(k-1)*10^(k-2) + … + d_(2)*10 + d_(1). Sequence lists the numbers n such that sigma(n) - n = Sum_{i=1..k-1}{sigma(Sum_{j=1..i}{d_(j)*10^(j-1)}) - Sum_{j=1..i}{d_(j)*10^(j-1)}} (see example below).

The programs for A240894, there is no canonical definition to state claims against.
-/

/-! ## A240894.P11679487153672436023

`A069866(n+5)%A240903(n+1)`
-/

namespace A240894.P11679487153672436023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069866 (n + 5)) (A240903 (n + 1))

end

end A240894.P11679487153672436023

/-! ## A240894.P910133796193099343

`∩[A069866(n+1), A384393(n+1)]`
-/

namespace A240894.P910133796193099343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240894.P910133796193099343

/-! ## A240894.P16898884346510850506

`p?[A069866(n+1)%A238850(n+1)]`
-/

namespace A240894.P16898884346510850506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069866 (n + 1)) (A238850 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240894.P16898884346510850506

/-! ## A240894.P6888597093334006355

`p?[A069866(n+4)%A253386(n+1)]`
-/

namespace A240894.P6888597093334006355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069866 (n + 4)) (A253386 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240894.P6888597093334006355

/-! ## A240894.P16846277448069020852

`A069866(n+5)^A220122(A000045(n))`
-/

namespace A240894.P16846277448069020852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069866 (n + 5) : ℚ) ^ (A220122 (A000045 n).toNat : ℤ)

end

end A240894.P16846277448069020852

/-!
# A240896: Consider a number of k digits n = d_(k)*10^(k-1) + d_(k-1)*10^(k-2) + … + d_(2)*10 + d_(1). Sequence lists the numbers n such that sigma(n) - n = Sum_{i=1..k-1}{phi(Sum_{j=1..i}{d_(j)*10^(j-1)})} (see example below).

The programs for A240896, there is no canonical definition to state claims against.
-/

/-! ## A240896.P3078174894322815662

`or(A181603(n+1), A360456(A360244(2*n+1)))`
-/

namespace A240896.P3078174894322815662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181603 (n + 1)) (A360456 (A360244 (2 * n + 1)).toNat)

end

end A240896.P3078174894322815662

/-!
# A240899: Consider a number of k digits n = d_(k)*10^(k-1) + d_(k-1)*10^(k-2) + … + d_(2)*10 + d_(1). Sequence lists the numbers n such that sigma(n) - n = Sum_{i=1..k-1}{sigma(Sum_{j=1..i}{d_(k-j+1)*10^(i-j)})} (see example below).

The programs for A240899, there is no canonical definition to state claims against.
-/

/-! ## A240899.P8968614119866844559

`∩[A065393(n+1), A308237(n+1)]`
-/

namespace A240899.P8968614119866844559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240899.P8968614119866844559

