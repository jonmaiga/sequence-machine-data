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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A014300: Number of nodes of odd outdegree in all ordered rooted (planar) trees with n edges.

The programs for A014300, the canonical program `A014300.P6272885527061733046` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014300 has offset 1).

The definition of A014300 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333564, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014300.P16360309272402840446

`∑{#}[n, C(2*#, n)]`
-/

namespace A014300.P16360309272402840446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * k) n

end

end A014300.P16360309272402840446

namespace A014300

/-- `∑{#}[n, C(2*#, n)]` -/
def P16360309272402840446.Spec : Prop :=
  ∀ n, (P16360309272402840446.a n : ℤ) = A014300 (n + 1)

end A014300

/-! ## A014300.P6807761151654431495

`(C(2*(n+1), n+1)+A000957(n+1))/3`
-/

namespace A014300.P6807761151654431495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * (n + 1)) (n + 1) : ℤ) + A000957 (n + 1) : ℚ) / 3

end

end A014300.P6807761151654431495

namespace A014300

/-- `(C(2*(n+1), n+1)+A000957(n+1))/3` -/
def P6807761151654431495.Spec : Prop :=
  ∀ n, P6807761151654431495.a n = (A014300 (n + 1) : ℚ)

end A014300

/-! ## A014300.P6272885527061733046

`A333564(n+1)/2^(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A014300

/-- `A333564(n+1)/2^(n+1)` -/
def P6272885527061733046.Spec : Prop :=
  ∀ n, P6272885527061733046.a n = (A014300 (n + 1) : ℚ)

end A014300

/-! ## A014300.P9320012022147115153

`A191526(Δ[n²])`
-/

namespace A014300.P9320012022147115153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A014300.P9320012022147115153

namespace A014300

/-- `A191526(Δ[n²])` -/
def P9320012022147115153.Spec : Prop :=
  ∀ n, P9320012022147115153.a n = A014300 (n + 1)

end A014300

/-! ## A014300.P16615815443863119154

`record[A191526(A006257(n))]`
-/

namespace A014300.P16615815443863119154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014300.P16615815443863119154

namespace A014300

/-- `record[A191526(A006257(n))]` -/
def P16615815443863119154.Spec : Prop :=
  ∀ n, P16615815443863119154.a n = A014300 (n + 1)

end A014300

/-! ## A014300.P10465067119576456720

`A026641(n)+A014301(n+1)`
-/

namespace A014300.P10465067119576456720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n + A014301 (n + 1)

end

end A014300.P10465067119576456720

namespace A014300

/-- `A026641(n)+A014301(n+1)` -/
def P10465067119576456720.Spec : Prop :=
  ∀ n, P10465067119576456720.a n = A014300 (n + 1)

end A014300

/-! ## A014300.P12565188555103903990

`A072547(n+2)+A000957(n+1)`
-/

namespace A014300.P12565188555103903990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072547 (n + 2) + A000957 (n + 1)

end

end A014300.P12565188555103903990

namespace A014300

/-- `A072547(n+2)+A000957(n+1)` -/
def P12565188555103903990.Spec : Prop :=
  ∀ n, P12565188555103903990.a n = A014300 (n + 1)

end A014300

/-! ## A014300.P6414854945677788561

`A072547(n+2)-A126983(n+1)`
-/

namespace A014300.P6414854945677788561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072547 (n + 2) - A126983 (n + 1)

end

end A014300.P6414854945677788561

namespace A014300

/-- `A072547(n+2)-A126983(n+1)` -/
def P6414854945677788561.Spec : Prop :=
  ∀ n, P6414854945677788561.a n = A014300 (n + 1)

end A014300

/-! ## A014300.P1711251871523537974

`A109078(2*n)+A014301(n+1)`
-/

namespace A014300.P1711251871523537974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109078 (2 * n) + A014301 (n + 1)

end

end A014300.P1711251871523537974

namespace A014300

/-- `A109078(2*n)+A014301(n+1)` -/
def P1711251871523537974.Spec : Prop :=
  ∀ n, P1711251871523537974.a n = A014300 (n + 1)

end A014300

/-! ## A014300.P7748083667680545997

`A191526(2*n)+A014301(n+1)`
-/

namespace A014300.P7748083667680545997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (2 * n) + A014301 (n + 1)

end

end A014300.P7748083667680545997

namespace A014300

/-- `A191526(2*n)+A014301(n+1)` -/
def P7748083667680545997.Spec : Prop :=
  ∀ n, P7748083667680545997.a n = A014300 (n + 1)

end A014300

/-! ## A014300.P9915970571104154435

`∑[A014301(n+1)+Δ[A112556(n)]]`
-/

namespace A014300.P9915970571104154435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112556 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014300.P9915970571104154435

namespace A014300

/-- `∑[A014301(n+1)+Δ[A112556(n)]]` -/
def P9915970571104154435.Spec : Prop :=
  ∀ n, P9915970571104154435.a n = A014300 (n + 1)

end A014300

/-! ## A014300.P12028481102937955209

`∑[A072547(n+1)+A014301(n+1)]`
-/

namespace A014300.P12028481102937955209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072547 (n + 1) + A014301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014300.P12028481102937955209

namespace A014300

/-- `∑[A072547(n+1)+A014301(n+1)]` -/
def P12028481102937955209.Spec : Prop :=
  ∀ n, P12028481102937955209.a n = A014300 (n + 1)

end A014300

/-! ## A014300.P5463371570978811964

`A109078(2*n+1)+A000957(n+1)`
-/

namespace A014300.P5463371570978811964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109078 (2 * n + 1) + A000957 (n + 1)

end

end A014300.P5463371570978811964

namespace A014300

/-- `A109078(2*n+1)+A000957(n+1)` -/
def P5463371570978811964.Spec : Prop :=
  ∀ n, P5463371570978811964.a n = A014300 (n + 1)

end A014300

/-! ## A014300.P10010431428182584407

`A109078(2*n+1)-A126983(n+1)`
-/

namespace A014300.P10010431428182584407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109078 (2 * n + 1) - A126983 (n + 1)

end

end A014300.P10010431428182584407

namespace A014300

/-- `A109078(2*n+1)-A126983(n+1)` -/
def P10010431428182584407.Spec : Prop :=
  ∀ n, P10010431428182584407.a n = A014300 (n + 1)

end A014300

/-! ## A014300.P3343548823792250488

`A109078(2*n)+A109078(2*n+1)/2`
-/

namespace A014300.P3343548823792250488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109078 (2 * n) : ℚ) + (A109078 (2 * n + 1) : ℚ) / 2

end

end A014300.P3343548823792250488

namespace A014300

/-- `A109078(2*n)+A109078(2*n+1)/2` -/
def P3343548823792250488.Spec : Prop :=
  ∀ n, P3343548823792250488.a n = (A014300 (n + 1) : ℚ)

end A014300

/-! ## A014300.P13757909123964036847

`A026641(n)+A126983(n+1)+A026641(n)`
-/

namespace A014300.P13757909123964036847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n + (A126983 (n + 1) + A026641 n)

end

end A014300.P13757909123964036847

namespace A014300

/-- `A026641(n)+A126983(n+1)+A026641(n)` -/
def P13757909123964036847.Spec : Prop :=
  ∀ n, P13757909123964036847.a n = A014300 (n + 1)

end A014300

/-! ## A014300.P17630628090378988053

`A026641(n)+A026641(n)-A000957(n+1)`
-/

namespace A014300.P17630628090378988053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n + (A026641 n - A000957 (n + 1))

end

end A014300.P17630628090378988053

namespace A014300

/-- `A026641(n)+A026641(n)-A000957(n+1)` -/
def P17630628090378988053.Spec : Prop :=
  ∀ n, P17630628090378988053.a n = A014300 (n + 1)

end A014300

/-! ## A014300.P7261240146610737921

`A000957(n+1)+A014301(n+1)+A014301(n+1)`
-/

namespace A014300.P7261240146610737921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 1) + (A014301 (n + 1) + A014301 (n + 1))

end

end A014300.P7261240146610737921

namespace A014300

/-- `A000957(n+1)+A014301(n+1)+A014301(n+1)` -/
def P7261240146610737921.Spec : Prop :=
  ∀ n, P7261240146610737921.a n = A014300 (n + 1)

end A014300

/-! ## A014300.P5405260279000406859

`A014301(n+1)+A072547(n+2)-A091526(n+1)`
-/

namespace A014300.P5405260279000406859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 1) + (A072547 (n + 2) - A091526 (n + 1))

end

end A014300.P5405260279000406859

namespace A014300

/-- `A014301(n+1)+A072547(n+2)-A091526(n+1)` -/
def P5405260279000406859.Spec : Prop :=
  ∀ n, P5405260279000406859.a n = A014300 (n + 1)

end A014300

/-! ## A014300.P4894948085041005195

`Δ[A306409(n)]`
-/

namespace A014300.P4894948085041005195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014300.P4894948085041005195

namespace A014300

/-- `Δ[A306409(n)]` -/
def P4894948085041005195.Spec : Prop :=
  ∀ n, P4894948085041005195.a n = A014300 (n + 1)

end A014300

/-!
# A014301: Number of internal nodes of even outdegree in all ordered rooted trees with n edges.

The programs for A014301, the canonical program `A014301.P18515033819834153` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014301 has offset 1).

The definition of A014301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014301.P18515033819834153

`(A026641(n+1)-A026641(n))/3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014301

/-- `(A026641(n+1)-A026641(n))/3` -/
def P18515033819834153.Spec : Prop :=
  ∀ n, P18515033819834153.a n = (A014301 (n + 1) : ℚ)

end A014301

/-! ## A014301.P2861929029366427688

`1/2*∑{#}[n+1, (-1)^(n+1-#)*C(n+1+#-1, #)]`
-/

namespace A014301.P2861929029366427688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose ((n + 1 + k : ℤ) - 1).toNat k : ℚ))

end

end A014301.P2861929029366427688

namespace A014301

/-- `1/2*∑{#}[n+1, (-1)^(n+1-#)*C(n+1+#-1, #)]` -/
def P2861929029366427688.Spec : Prop :=
  ∀ n, P2861929029366427688.a n = (A014301 (n + 1) : ℚ)

end A014301

/-! ## A014301.P5075959310903678049

`C(2*(n+1)-1, n+1)/3-A000957(n+1)/3`
-/

namespace A014301.P5075959310903678049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((2 * (n + 1) : ℤ) - 1).toNat (n + 1) : ℚ) / 3 - (A000957 (n + 1) : ℚ) / 3

end

end A014301.P5075959310903678049

namespace A014301

/-- `C(2*(n+1)-1, n+1)/3-A000957(n+1)/3` -/
def P5075959310903678049.Spec : Prop :=
  ∀ n, P5075959310903678049.a n = (A014301 (n + 1) : ℚ)

end A014301

/-! ## A014301.P11507750310020357210

`A072547(n+2)/2`
-/

namespace A014301.P11507750310020357210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072547 (n + 2) : ℚ) / 2

end

end A014301.P11507750310020357210

namespace A014301

/-- `A072547(n+2)/2` -/
def P11507750310020357210.Spec : Prop :=
  ∀ n, P11507750310020357210.a n = (A014301 (n + 1) : ℚ)

end A014301

/-! ## A014301.P15131940642313485264

`A109078(Δ[n²])/2`
-/

namespace A014301.P15131940642313485264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109078 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A014301.P15131940642313485264

namespace A014301

/-- `A109078(Δ[n²])/2` -/
def P15131940642313485264.Spec : Prop :=
  ∀ n, P15131940642313485264.a n = (A014301 (n + 1) : ℚ)

end A014301

/-! ## A014301.P4807521638679961599

`abs((1-A092785(n))/2)`
-/

namespace A014301.P4807521638679961599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(1 - A092785 n : ℚ) / 2|

end

end A014301.P4807521638679961599

namespace A014301

/-- `abs((1-A092785(n))/2)` -/
def P4807521638679961599.Spec : Prop :=
  ∀ n, P4807521638679961599.a n = (A014301 (n + 1) : ℚ)

end A014301

/-! ## A014301.P3483034571715339371

`A024718(n)-A135336(n)`
-/

namespace A014301.P3483034571715339371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n - A135336 n

end

end A014301.P3483034571715339371

namespace A014301

/-- `A024718(n)-A135336(n)` -/
def P3483034571715339371.Spec : Prop :=
  ∀ n, P3483034571715339371.a n = A014301 (n + 1)

end A014301

/-! ## A014301.P14936781629966404544

`Δ[A307349(n)-A000035(n)]`
-/

namespace A014301.P14936781629966404544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307349 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014301.P14936781629966404544

namespace A014301

/-- `Δ[A307349(n)-A000035(n)]` -/
def P14936781629966404544.Spec : Prop :=
  ∀ n, P14936781629966404544.a n = A014301 (n + 1)

end A014301

/-! ## A014301.P13476632213769864949

`A126983(n+1)+A026641(n)`
-/

namespace A014301.P13476632213769864949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 (n + 1) + A026641 n

end

end A014301.P13476632213769864949

namespace A014301

/-- `A126983(n+1)+A026641(n)` -/
def P13476632213769864949.Spec : Prop :=
  ∀ n, P13476632213769864949.a n = A014301 (n + 1)

end A014301

/-! ## A014301.P10660624983814691900

`A026641(n)-A000957(n+1)`
-/

namespace A014301.P10660624983814691900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n - A000957 (n + 1)

end

end A014301.P10660624983814691900

namespace A014301

/-- `A026641(n)-A000957(n+1)` -/
def P10660624983814691900.Spec : Prop :=
  ∀ n, P10660624983814691900.a n = A014301 (n + 1)

end A014301

/-! ## A014301.P14873923307950497454

`A014300(n+1)-A026641(n)`
-/

namespace A014301.P14873923307950497454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 1) - A026641 n

end

end A014301.P14873923307950497454

namespace A014301

/-- `A014300(n+1)-A026641(n)` -/
def P14873923307950497454.Spec : Prop :=
  ∀ n, P14873923307950497454.a n = A014301 (n + 1)

end A014301

/-! ## A014301.P4405457754291529712

`A191526(Δ[n²])-A026641(n)`
-/

namespace A014301.P4405457754291529712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A026641 n

end

end A014301.P4405457754291529712

namespace A014301

/-- `A191526(Δ[n²])-A026641(n)` -/
def P4405457754291529712.Spec : Prop :=
  ∀ n, P4405457754291529712.a n = A014301 (n + 1)

end A014301

/-! ## A014301.P10977387548611624836

`A091526(n+1)+A000957(n+1)`
-/

namespace A014301.P10977387548611624836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091526 (n + 1) + A000957 (n + 1)

end

end A014301.P10977387548611624836

namespace A014301

/-- `A091526(n+1)+A000957(n+1)` -/
def P10977387548611624836.Spec : Prop :=
  ∀ n, P10977387548611624836.a n = A014301 (n + 1)

end A014301

/-! ## A014301.P5208274932572541547

`A126983(n+1)+A109078(2*n)`
-/

namespace A014301.P5208274932572541547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 (n + 1) + A109078 (2 * n)

end

end A014301.P5208274932572541547

namespace A014301

/-- `A126983(n+1)+A109078(2*n)` -/
def P5208274932572541547.Spec : Prop :=
  ∀ n, P5208274932572541547.a n = A014301 (n + 1)

end A014301

/-! ## A014301.P11403961912765277278

`A109078(2*n)-A000957(n+1)`
-/

namespace A014301.P11403961912765277278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109078 (2 * n) - A000957 (n + 1)

end

end A014301.P11403961912765277278

namespace A014301

/-- `A109078(2*n)-A000957(n+1)` -/
def P11403961912765277278.Spec : Prop :=
  ∀ n, P11403961912765277278.a n = A014301 (n + 1)

end A014301

/-! ## A014301.P7657201881051653033

`A014300(n+1)-A109078(2*n)`
-/

namespace A014301.P7657201881051653033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 1) - A109078 (2 * n)

end

end A014301.P7657201881051653033

namespace A014301

/-- `A014300(n+1)-A109078(2*n)` -/
def P7657201881051653033.Spec : Prop :=
  ∀ n, P7657201881051653033.a n = A014301 (n + 1)

end A014301

/-! ## A014301.P12358184277701877622

`A191526(2*n)-A000957(n+1)`
-/

namespace A014301.P12358184277701877622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (2 * n) - A000957 (n + 1)

end

end A014301.P12358184277701877622

namespace A014301

/-- `A191526(2*n)-A000957(n+1)` -/
def P12358184277701877622.Spec : Prop :=
  ∀ n, P12358184277701877622.a n = A014301 (n + 1)

end A014301

/-! ## A014301.P4179992218330489726

`A014300(n+1)-A191526(2*n)`
-/

namespace A014301.P4179992218330489726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 1) - A191526 (2 * n)

end

end A014301.P4179992218330489726

namespace A014301

/-- `A014300(n+1)-A191526(2*n)` -/
def P4179992218330489726.Spec : Prop :=
  ∀ n, P4179992218330489726.a n = A014301 (n + 1)

end A014301

/-! ## A014301.P13407571418899153521

`A191526(Δ[n²])-A191526(2*n)`
-/

namespace A014301.P13407571418899153521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A191526 (2 * n)

end

end A014301.P13407571418899153521

namespace A014301

/-- `A191526(Δ[n²])-A191526(2*n)` -/
def P13407571418899153521.Spec : Prop :=
  ∀ n, P13407571418899153521.a n = A014301 (n + 1)

end A014301

/-! ## A014301.P6065415090594123514

`A307349(n+1)-(A307349(n)+A033999(n))`
-/

namespace A014301.P6065415090594123514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307349 (n + 1) - (A307349 n + A033999 n)

end

end A014301.P6065415090594123514

namespace A014301

/-- `A307349(n+1)-(A307349(n)+A033999(n))` -/
def P6065415090594123514.Spec : Prop :=
  ∀ n, P6065415090594123514.a n = A014301 (n + 1)

end A014301

/-!
# A014302: a(n) = prime(n)*(prime(n-1)-1)/2.

The programs for A014302, the canonical program `A014302.P15333125040278370706` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014302 has offset 3).

The definition of A014302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014302.P15333125040278370706

`A000040(n+3)*A005097(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A014302

/-- `A000040(n+3)*A005097(n+1)` -/
def P15333125040278370706.Spec : Prop :=
  ∀ n, P15333125040278370706.a n = A014302 (n + 3)

theorem P15333125040278370706.correct : P15333125040278370706.Spec := by
  intro n
  simp only [A014302, Nat.add_sub_cancel]

end A014302

/-! ## A014302.P18382269291865212571

`A000040(n+3)*(A000040(n+2)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014302.P18382269291865212571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 3) * (A000040 (n + 2) - 1) : ℚ) / 2

end

end A014302.P18382269291865212571

namespace A014302

/-- `A000040(n+3)*(A000040(n+2)-1)/2` -/
def P18382269291865212571.Spec : Prop :=
  ∀ n, P18382269291865212571.a n = (A014302 (n + 3) : ℚ)

end A014302

/-! ## A014302.P12328736219954425993

`A005097(n+1)*A215848(n+1)`
-/

namespace A014302.P12328736219954425993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) * A215848 (n + 1)

end

end A014302.P12328736219954425993

namespace A014302

/-- `A005097(n+1)*A215848(n+1)` -/
def P12328736219954425993.Spec : Prop :=
  ∀ n, P12328736219954425993.a n = A014302 (n + 3)

theorem P12328736219954425993.correct : P12328736219954425993.Spec := by
  intro n
  simp only [A014302, Nat.add_sub_cancel, A014302.P12328736219954425993.a, A014302.P15333125040278370706.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005097, A005097.P2146150579650678334.a, A215848, A215848.P17068717743202425727.a, A130290, A130290.P12006832031725450867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014302

/-! ## A014302.P11073911982745418564

`Δ[A007504(n+2)]*A005097(n+1)`
-/

namespace A014302.P11073911982745418564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005097 (n + 1)

end

end A014302.P11073911982745418564

namespace A014302

/-- `Δ[A007504(n+2)]*A005097(n+1)` -/
def P11073911982745418564.Spec : Prop :=
  ∀ n, P11073911982745418564.a n = A014302 (n + 3)

end A014302

/-! ## A014302.P6596312762749428696

`(A006254(n+1)-1)*A215848(n+1)`
-/

namespace A014302.P6596312762749428696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006254 (n + 1) - 1) * A215848 (n + 1)

end

end A014302.P6596312762749428696

namespace A014302

/-- `(A006254(n+1)-1)*A215848(n+1)` -/
def P6596312762749428696.Spec : Prop :=
  ∀ n, P6596312762749428696.a n = A014302 (n + 3)

end A014302

/-! ## A014302.P12327901612611807133

`A037167(n+2)/2`
-/

namespace A014302.P12327901612611807133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037167 (n + 2) : ℚ) / 2

end

end A014302.P12327901612611807133

namespace A014302

/-- `A037167(n+2)/2` -/
def P12327901612611807133.Spec : Prop :=
  ∀ n, P12327901612611807133.a n = (A014302 (n + 3) : ℚ)

end A014302

/-! ## A014302.P12893194421481535934

`A005097(n+1)*A045344(n+2)`
-/

namespace A014302.P12893194421481535934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) * A045344 (n + 2)

end

end A014302.P12893194421481535934

namespace A014302

/-- `A005097(n+1)*A045344(n+2)` -/
def P12893194421481535934.Spec : Prop :=
  ∀ n, P12893194421481535934.a n = A014302 (n + 3)

end A014302

/-! ## A014302.P17176489230246216961

`A005097(n+1)*A065091(n+2)`
-/

namespace A014302.P17176489230246216961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) * A065091 (n + 2)

end

end A014302.P17176489230246216961

namespace A014302

/-- `A005097(n+1)*A065091(n+2)` -/
def P17176489230246216961.Spec : Prop :=
  ∀ n, P17176489230246216961.a n = A014302 (n + 3)

theorem P17176489230246216961.correct : P17176489230246216961.Spec := by
  intro n
  simp only [A014302, Nat.add_sub_cancel, A014302.P17176489230246216961.a, A014302.P15333125040278370706.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005097, A005097.P2146150579650678334.a, A065091, A065091.P6971844946592549357.a, A130290, A130290.P12006832031725450867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014302

/-! ## A014302.P4596723294761885820

`A045344(n+2)*A102781(n+2)`
-/

namespace A014302.P4596723294761885820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) * A102781 (n + 2)

end

end A014302.P4596723294761885820

namespace A014302

/-- `A045344(n+2)*A102781(n+2)` -/
def P4596723294761885820.Spec : Prop :=
  ∀ n, P4596723294761885820.a n = A014302 (n + 3)

end A014302

/-! ## A014302.P8637152836953366527

`A065091(n+2)*A102781(n+2)`
-/

namespace A014302.P8637152836953366527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) * A102781 (n + 2)

end

end A014302.P8637152836953366527

namespace A014302

/-- `A065091(n+2)*A102781(n+2)` -/
def P8637152836953366527.Spec : Prop :=
  ∀ n, P8637152836953366527.a n = A014302 (n + 3)

end A014302

/-! ## A014302.P9786546970766187390

`A065091(n+2)*A130290(n+2)`
-/

namespace A014302.P9786546970766187390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) * A130290 (n + 2)

end

end A014302.P9786546970766187390

namespace A014302

/-- `A065091(n+2)*A130290(n+2)` -/
def P9786546970766187390.Spec : Prop :=
  ∀ n, P9786546970766187390.a n = A014302 (n + 3)

theorem P9786546970766187390.correct : P9786546970766187390.Spec := by
  intro n
  simp only [A014302, Nat.add_sub_cancel, A014302.P9786546970766187390.a, A014302.P15333125040278370706.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005097, A005097.P2146150579650678334.a, A065091, A065091.P6971844946592549357.a, A130290, A130290.P12006832031725450867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014302

/-! ## A014302.P10181521277697500773

`(A037165(n+2)+A000040(n+2))/2`
-/

namespace A014302.P10181521277697500773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037165 (n + 2) + A000040 (n + 2) : ℚ) / 2

end

end A014302.P10181521277697500773

namespace A014302

/-- `(A037165(n+2)+A000040(n+2))/2` -/
def P10181521277697500773.Spec : Prop :=
  ∀ n, P10181521277697500773.a n = (A014302 (n + 3) : ℚ)

end A014302

/-! ## A014302.P7488681952520562199

`(A083553(n+2)+A006093(n+2))/2`
-/

namespace A014302.P7488681952520562199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083553 (n + 2) + A006093 (n + 2) : ℚ) / 2

end

end A014302.P7488681952520562199

namespace A014302

/-- `(A083553(n+2)+A006093(n+2))/2` -/
def P7488681952520562199.Spec : Prop :=
  ∀ n, P7488681952520562199.a n = (A014302 (n + 3) : ℚ)

end A014302

/-! ## A014302.P9353121292452760097

`(A037166(n+2)-A001223(n+2))/2`
-/

namespace A014302.P9353121292452760097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037166 (n + 2) - A001223 (n + 2) : ℚ) / 2

end

end A014302.P9353121292452760097

namespace A014302

/-- `(A037166(n+2)-A001223(n+2))/2` -/
def P9353121292452760097.Spec : Prop :=
  ∀ n, P9353121292452760097.a n = (A014302 (n + 3) : ℚ)

end A014302

/-! ## A014302.P184659634461827524

`(A006094(n+2)-A065091(n+2))/2`
-/

namespace A014302.P184659634461827524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 2) - A065091 (n + 2) : ℚ) / 2

end

end A014302.P184659634461827524

namespace A014302

/-- `(A006094(n+2)-A065091(n+2))/2` -/
def P184659634461827524.Spec : Prop :=
  ∀ n, P184659634461827524.a n = (A014302 (n + 3) : ℚ)

end A014302

/-! ## A014302.P1497376768185625253

`(A123134(n+2)-A001043(n+2))/2`
-/

namespace A014302.P1497376768185625253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123134 (n + 2) - A001043 (n + 2) : ℚ) / 2

end

end A014302.P1497376768185625253

namespace A014302

/-- `(A123134(n+2)-A001043(n+2))/2` -/
def P1497376768185625253.Spec : Prop :=
  ∀ n, P1497376768185625253.a n = (A014302 (n + 3) : ℚ)

end A014302

/-! ## A014302.P17785387458742847137

`(A286624(n+2)-A092949(n+2))/2`
-/

namespace A014302.P17785387458742847137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286624 (n + 2) - A092949 (n + 2) : ℚ) / 2

end

end A014302.P17785387458742847137

namespace A014302

/-- `(A286624(n+2)-A092949(n+2))/2` -/
def P17785387458742847137.Spec : Prop :=
  ∀ n, P17785387458742847137.a n = (A014302 (n + 3) : ℚ)

end A014302

/-! ## A014302.P11872454105918555772

`A006093(n+2)/2*A045344(n+2)`
-/

namespace A014302.P11872454105918555772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 2) : ℚ) / 2 * (A045344 (n + 2) : ℚ)

end

end A014302.P11872454105918555772

namespace A014302

/-- `A006093(n+2)/2*A045344(n+2)` -/
def P11872454105918555772.Spec : Prop :=
  ∀ n, P11872454105918555772.a n = (A014302 (n + 3) : ℚ)

end A014302

/-! ## A014302.P12027491645837334927

`A006093(n+2)/2*A065091(n+2)`
-/

namespace A014302.P12027491645837334927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 2) : ℚ) / 2 * (A065091 (n + 2) : ℚ)

end

end A014302.P12027491645837334927

namespace A014302

/-- `A006093(n+2)/2*A065091(n+2)` -/
def P12027491645837334927.Spec : Prop :=
  ∀ n, P12027491645837334927.a n = (A014302 (n + 3) : ℚ)

end A014302

/-! ## A014302.P8408484628178642633

`A039915(n+2)/2*A065091(n+2)`
-/

namespace A014302.P8408484628178642633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039915 (n + 2) : ℚ) / 2 * (A065091 (n + 2) : ℚ)

end

end A014302.P8408484628178642633

namespace A014302

/-- `A039915(n+2)/2*A065091(n+2)` -/
def P8408484628178642633.Spec : Prop :=
  ∀ n, P8408484628178642633.a n = (A014302 (n + 3) : ℚ)

end A014302

/-!
# A014303: a(n) = prime(n)*(prime(n+1)-1)/2.

The programs for A014303, the canonical program `A014303.P12243143900441004356` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014303 has offset 1).

The definition of A014303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014303.P12243143900441004356

`A000040(n+1)*A005097(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A014303

/-- `A000040(n+1)*A005097(n+1)` -/
def P12243143900441004356.Spec : Prop :=
  ∀ n, P12243143900441004356.a n = A014303 (n + 1)

theorem P12243143900441004356.correct : P12243143900441004356.Spec := by
  intro n
  simp only [A014303, Nat.add_sub_cancel]

end A014303

/-! ## A014303.P1410930983935916240

`A000040(n+1)*(A000040(n+2)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014303.P1410930983935916240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * (A000040 (n + 2) - 1) : ℚ) / 2

end

end A014303.P1410930983935916240

namespace A014303

/-- `A000040(n+1)*(A000040(n+2)-1)/2` -/
def P1410930983935916240.Spec : Prop :=
  ∀ n, P1410930983935916240.a n = (A014303 (n + 1) : ℚ)

end A014303

/-! ## A014303.P6030450985242727080

`A037166(n+1)/2`
-/

namespace A014303.P6030450985242727080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037166 (n + 1) : ℚ) / 2

end

end A014303.P6030450985242727080

namespace A014303

/-- `A037166(n+1)/2` -/
def P6030450985242727080.Spec : Prop :=
  ∀ n, P6030450985242727080.a n = (A014303 (n + 1) : ℚ)

end A014303

/-! ## A014303.P5733417671445206323

`Δ[A007504(n)]*A005097(n+1)`
-/

namespace A014303.P5733417671445206323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005097 (n + 1)

end

end A014303.P5733417671445206323

namespace A014303

/-- `Δ[A007504(n)]*A005097(n+1)` -/
def P5733417671445206323.Spec : Prop :=
  ∀ n, P5733417671445206323.a n = A014303 (n + 1)

end A014303

/-! ## A014303.P2921616186510974860

`A099407(n+1)+A005097(n+1)`
-/

namespace A014303.P2921616186510974860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099407 (n + 1) + A005097 (n + 1)

end

end A014303.P2921616186510974860

namespace A014303

/-- `A099407(n+1)+A005097(n+1)` -/
def P2921616186510974860.Spec : Prop :=
  ∀ n, P2921616186510974860.a n = A014303 (n + 1)

end A014303

/-! ## A014303.P3973875129842134076

`A392034(n+1)+A008837(n+1)`
-/

namespace A014303.P3973875129842134076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392034 (n + 1) + A008837 (n + 1)

end

end A014303.P3973875129842134076

namespace A014303

/-- `A392034(n+1)+A008837(n+1)` -/
def P3973875129842134076.Spec : Prop :=
  ∀ n, P3973875129842134076.a n = A014303 (n + 1)

end A014303

/-! ## A014303.P17806348341973164626

`abs(Δ[A008348(n)]*A005097(n+1))`
-/

namespace A014303.P17806348341973164626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A005097 (n + 1)|

end

end A014303.P17806348341973164626

namespace A014303

/-- `abs(Δ[A008348(n)]*A005097(n+1))` -/
def P17806348341973164626.Spec : Prop :=
  ∀ n, P17806348341973164626.a n = A014303 (n + 1)

end A014303

/-! ## A014303.P6179540513185687113

`abs(Δ[A117128(n)]*A005097(n+1))`
-/

namespace A014303.P6179540513185687113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A005097 (n + 1)|

end

end A014303.P6179540513185687113

namespace A014303

/-- `abs(Δ[A117128(n)]*A005097(n+1))` -/
def P6179540513185687113.Spec : Prop :=
  ∀ n, P6179540513185687113.a n = A014303 (n + 1)

end A014303

/-! ## A014303.P9836582256837761425

`sqrt(A001248(n+1))*A005097(n+1)`
-/

namespace A014303.P9836582256837761425
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A005097 (n + 1) : ℝ)

end

end A014303.P9836582256837761425

namespace A014303

/-- `sqrt(A001248(n+1))*A005097(n+1)` -/
def P9836582256837761425.Spec : Prop :=
  ∀ n, P9836582256837761425.a n = (A014303 (n + 1) : ℝ)

end A014303

/-! ## A014303.P8554367754750912110

`record[A259153(n+2)]*A005097(n+1)`
-/

namespace A014303.P8554367754750912110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A005097 (n + 1)

end

end A014303.P8554367754750912110

namespace A014303

/-- `record[A259153(n+2)]*A005097(n+1)` -/
def P8554367754750912110.Spec : Prop :=
  ∀ n, P8554367754750912110.a n = A014303 (n + 1)

end A014303

/-! ## A014303.P18109316711922904564

`(A006093(n+1)+1)*A005097(n+1)`
-/

namespace A014303.P18109316711922904564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A005097 (n + 1)

end

end A014303.P18109316711922904564

namespace A014303

/-- `(A006093(n+1)+1)*A005097(n+1)` -/
def P18109316711922904564.Spec : Prop :=
  ∀ n, P18109316711922904564.a n = A014303 (n + 1)

theorem P18109316711922904564.correct : P18109316711922904564.Spec := by
  intro n
  simp only [A014303, Nat.add_sub_cancel, A014303.P18109316711922904564.a, A014303.P12243143900441004356.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005097, A005097.P2146150579650678334.a, A006093, A006093.P2906174024863549003.a, A130290, A130290.P12006832031725450867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014303

/-! ## A014303.P17493167358683628974

`(A067076(n+1)+1)*A000040(n+1)`
-/

namespace A014303.P17493167358683628974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067076 (n + 1) + 1) * A000040 (n + 1)

end

end A014303.P17493167358683628974

namespace A014303

/-- `(A067076(n+1)+1)*A000040(n+1)` -/
def P17493167358683628974.Spec : Prop :=
  ∀ n, P17493167358683628974.a n = A014303 (n + 1)

end A014303

/-! ## A014303.P964456464896920660

`(A006254(n+1)-1)*A000040(n+1)`
-/

namespace A014303.P964456464896920660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006254 (n + 1) - 1) * A000040 (n + 1)

end

end A014303.P964456464896920660

namespace A014303

/-- `(A006254(n+1)-1)*A000040(n+1)` -/
def P964456464896920660.Spec : Prop :=
  ∀ n, P964456464896920660.a n = A014303 (n + 1)

end A014303

/-! ## A014303.P4061199546495051063

`(A008864(n+1)-1)*A005097(n+1)`
-/

namespace A014303.P4061199546495051063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A005097 (n + 1)

end

end A014303.P4061199546495051063

namespace A014303

/-- `(A008864(n+1)-1)*A005097(n+1)` -/
def P4061199546495051063.Spec : Prop :=
  ∀ n, P4061199546495051063.a n = A014303 (n + 1)

theorem P4061199546495051063.correct : P4061199546495051063.Spec := by
  intro n
  simp only [A014303, Nat.add_sub_cancel, A014303.P4061199546495051063.a, A014303.P12243143900441004356.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005097, A005097.P2146150579650678334.a, A008864, A008864.P9177617808325052279.a, A130290, A130290.P12006832031725450867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014303

/-! ## A014303.P3577100936235795228

`(A037167(n+1)+A001223(n+1))/2`
-/

namespace A014303.P3577100936235795228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037167 (n + 1) + A001223 (n + 1) : ℚ) / 2

end

end A014303.P3577100936235795228

namespace A014303

/-- `(A037167(n+1)+A001223(n+1))/2` -/
def P3577100936235795228.Spec : Prop :=
  ∀ n, P3577100936235795228.a n = (A014303 (n + 1) : ℚ)

end A014303

/-! ## A014303.P17304238945092018569

`A005097(n+1)+A083553(n+1)/2`
-/

namespace A014303.P17304238945092018569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005097 (n + 1) : ℚ) + (A083553 (n + 1) : ℚ) / 2

end

end A014303.P17304238945092018569

namespace A014303

/-- `A005097(n+1)+A083553(n+1)/2` -/
def P17304238945092018569.Spec : Prop :=
  ∀ n, P17304238945092018569.a n = (A014303 (n + 1) : ℚ)

end A014303

/-! ## A014303.P1733753950906756066

`(A098090(n+1)-2)*A000040(n+1)`
-/

namespace A014303.P1733753950906756066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098090 (n + 1) - 2) * A000040 (n + 1)

end

end A014303.P1733753950906756066

namespace A014303

/-- `(A098090(n+1)-2)*A000040(n+1)` -/
def P1733753950906756066.Spec : Prop :=
  ∀ n, P1733753950906756066.a n = A014303 (n + 1)

end A014303

/-! ## A014303.P2673749491129677080

`(A065091(n+1)+A037165(n+1))/2`
-/

namespace A014303.P2673749491129677080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) + A037165 (n + 1) : ℚ) / 2

end

end A014303.P2673749491129677080

namespace A014303

/-- `(A065091(n+1)+A037165(n+1))/2` -/
def P2673749491129677080.Spec : Prop :=
  ∀ n, P2673749491129677080.a n = (A014303 (n + 1) : ℚ)

end A014303

/-! ## A014303.P3577900649291771311

`(A111071(n+1)+A031131(n+1))/2`
-/

namespace A014303.P3577900649291771311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111071 (n + 1) + A031131 (n + 1) : ℚ) / 2

end

end A014303.P3577900649291771311

namespace A014303

/-- `(A111071(n+1)+A031131(n+1))/2` -/
def P3577900649291771311.Spec : Prop :=
  ∀ n, P3577900649291771311.a n = (A014303 (n + 1) : ℚ)

end A014303

/-! ## A014303.P5814388645146223814

`(A291463(n+1)+A036689(n+1))/2`
-/

namespace A014303.P5814388645146223814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291463 (n + 1) + A036689 (n + 1) : ℚ) / 2

end

end A014303.P5814388645146223814

namespace A014303

/-- `(A291463(n+1)+A036689(n+1))/2` -/
def P5814388645146223814.Spec : Prop :=
  ∀ n, P5814388645146223814.a n = (A014303 (n + 1) : ℚ)

end A014303

/-!
# A014304: Expansion of e.g.f. 1/sqrt(exp(x)*(2-exp(x))).

The programs for A014304, there is no canonical definition to state claims against.
-/

/-! ## A014304.P8450606917400959023

`A280939(n)-a(n-1)` with `a(0)=1`
-/

namespace A014304.P8450606917400959023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280939 n - a (n - 1)

end

end A014304.P8450606917400959023

/-! ## A014304.P13506545607079557406

`(A014307(n)-a(n-1))/2` with `a(0)=1`
-/

namespace A014304.P13506545607079557406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A014307 n : ℚ) - a (n - 1)) / 2

end

end A014304.P13506545607079557406

/-! ## A014304.P15257292611827483794

`A280939(n+1)+A280939(n+1)-A014307(n+1)`
-/

namespace A014304.P15257292611827483794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280939 (n + 1) + (A280939 (n + 1) - A014307 (n + 1))

end

end A014304.P15257292611827483794

/-! ## A014304.P11695260932612076005

`A176785(n+1)/A000079(n)`
-/

namespace A014304.P11695260932612076005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176785 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A014304.P11695260932612076005

/-! ## A014304.P4217174866866813979

`A176785(n+1)/record[A131575(n)]`
-/

namespace A014304.P4217174866866813979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176785 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A014304.P4217174866866813979

/-!
# A014306: a(n) = 0 if n of form m(m+1)(m+2)/6, otherwise 1.

The programs for A014306, the canonical program `A014306.P10618753585715922645` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014306 has offset 0).

The definition of A014306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014306.P10618753585715922645

`char[comp[C(n, 3)]]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014306

/-- `char[comp[C(n, 3)]]` -/
def P10618753585715922645.Spec : Prop :=
  ∀ n, (P10618753585715922645.a n : ℤ) = A014306 n

theorem P10618753585715922645.correct : P10618753585715922645.Spec := by
  intro n
  simp only [A014306]

end A014306

/-! ## A014306.P12689796580988332632

`char[comp[∑[∑[n]]]]`
-/

namespace A014306.P12689796580988332632
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A014306.P12689796580988332632

namespace A014306

/-- `char[comp[∑[∑[n]]]]` -/
def P12689796580988332632.Spec : Prop :=
  ∀ n, (P12689796580988332632.a n : ℤ) = A014306 n

end A014306

/-! ## A014306.P8591012244060335784

`1-char[C(n, 3)]`
-/

namespace A014306.P8591012244060335784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A014306.P8591012244060335784

namespace A014306

/-- `1-char[C(n, 3)]` -/
def P8591012244060335784.Spec : Prop :=
  ∀ n, P8591012244060335784.a n = A014306 n

end A014306

/-! ## A014306.P1550002984491970683

`xor(1, char[C(n, 3)])`
-/

namespace A014306.P1550002984491970683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A014306.P1550002984491970683

namespace A014306

/-- `xor(1, char[C(n, 3)])` -/
def P1550002984491970683.Spec : Prop :=
  ∀ n, (P1550002984491970683.a n : ℤ) = A014306 n

end A014306

/-! ## A014306.P11831925796854537146

`xor(1, char[∑[∑[n]]])`
-/

namespace A014306.P11831925796854537146
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A014306.P11831925796854537146

namespace A014306

/-- `xor(1, char[∑[∑[n]]])` -/
def P11831925796854537146.Spec : Prop :=
  ∀ n, (P11831925796854537146.a n : ℤ) = A014306 n

end A014306

/-! ## A014306.P11314497228707800533

`floor(cos(char[C(n, 3)]))`
-/

namespace A014306.P11314497228707800533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A014306.P11314497228707800533

namespace A014306

/-- `floor(cos(char[C(n, 3)]))` -/
def P11314497228707800533.Spec : Prop :=
  ∀ n, P11314497228707800533.a n = A014306 n

end A014306

/-! ## A014306.P5600845448098972456

`floor(acos(char[C(n, 3)]))`
-/

namespace A014306.P5600845448098972456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A014306.P5600845448098972456

namespace A014306

/-- `floor(acos(char[C(n, 3)]))` -/
def P5600845448098972456.Spec : Prop :=
  ∀ n, P5600845448098972456.a n = A014306 n

end A014306

/-! ## A014306.P8038893602920072146

`floor(acot(char[C(n, 3)]))`
-/

namespace A014306.P8038893602920072146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A014306.P8038893602920072146

namespace A014306

/-- `floor(acot(char[C(n, 3)]))` -/
def P8038893602920072146.Spec : Prop :=
  ∀ n, P8038893602920072146.a n = A014306 n

end A014306

/-! ## A014306.P7325122726751003956

`sin(acos(char[C(n, 3)]))`
-/

namespace A014306.P7325122726751003956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A014306.P7325122726751003956

namespace A014306

/-- `sin(acos(char[C(n, 3)]))` -/
def P7325122726751003956.Spec : Prop :=
  ∀ n, P7325122726751003956.a n = (A014306 n : ℝ)

end A014306

/-! ## A014306.P7081528266370609769

`cos(asin(char[C(n, 3)]))`
-/

namespace A014306.P7081528266370609769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A014306.P7081528266370609769

namespace A014306

/-- `cos(asin(char[C(n, 3)]))` -/
def P7081528266370609769.Spec : Prop :=
  ∀ n, P7081528266370609769.a n = (A014306 n : ℝ)

end A014306

/-! ## A014306.P7194712056202303222

`floor(cos(char[∑[∑[n]]]))`
-/

namespace A014306.P7194712056202303222
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A014306.P7194712056202303222

namespace A014306

/-- `floor(cos(char[∑[∑[n]]]))` -/
def P7194712056202303222.Spec : Prop :=
  ∀ n, P7194712056202303222.a n = A014306 n

end A014306

/-! ## A014306.P9215085963827522286

`floor(acos(char[∑[∑[n]]]))`
-/

namespace A014306.P9215085963827522286
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A014306.P9215085963827522286

namespace A014306

/-- `floor(acos(char[∑[∑[n]]]))` -/
def P9215085963827522286.Spec : Prop :=
  ∀ n, P9215085963827522286.a n = A014306 n

end A014306

/-! ## A014306.P1964773129860275559

`floor(acot(char[∑[∑[n]]]))`
-/

namespace A014306.P1964773129860275559
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A014306.P1964773129860275559

namespace A014306

/-- `floor(acot(char[∑[∑[n]]]))` -/
def P1964773129860275559.Spec : Prop :=
  ∀ n, P1964773129860275559.a n = A014306 n

end A014306

/-! ## A014306.P7130483292414453830

`sin(acos(char[∑[∑[n]]]))`
-/

namespace A014306.P7130483292414453830
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A014306.P7130483292414453830

namespace A014306

/-- `sin(acos(char[∑[∑[n]]]))` -/
def P7130483292414453830.Spec : Prop :=
  ∀ n, P7130483292414453830.a n = (A014306 n : ℝ)

end A014306

/-! ## A014306.P16728597249137692816

`cos(asin(char[∑[∑[n]]]))`
-/

namespace A014306.P16728597249137692816
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A014306.P16728597249137692816

namespace A014306

/-- `cos(asin(char[∑[∑[n]]]))` -/
def P16728597249137692816.Spec : Prop :=
  ∀ n, P16728597249137692816.a n = (A014306 n : ℝ)

end A014306

/-! ## A014306.P173455343477661224

`C(2, char[C(n, 3)]+2)`
-/

namespace A014306.P173455343477661224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((if ∃ j, f1 j = n then 1 else 0) + 2)

end

end A014306.P173455343477661224

namespace A014306

/-- `C(2, char[C(n, 3)]+2)` -/
def P173455343477661224.Spec : Prop :=
  ∀ n, (P173455343477661224.a n : ℤ) = A014306 n

end A014306

/-! ## A014306.P9939968496585969174

`C(2, 3*char[C(n, 3)])`
-/

namespace A014306.P9939968496585969174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (3 * (if ∃ j, f1 j = n then 1 else 0))

end

end A014306.P9939968496585969174

namespace A014306

/-- `C(2, 3*char[C(n, 3)])` -/
def P9939968496585969174.Spec : Prop :=
  ∀ n, (P9939968496585969174.a n : ℤ) = A014306 n

end A014306

/-! ## A014306.P1765553830481523209

`(char[∑[∑[n]]]+1)%2`
-/

namespace A014306.P1765553830481523209
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) % 2

end

end A014306.P1765553830481523209

namespace A014306

/-- `(char[∑[∑[n]]]+1)%2` -/
def P1765553830481523209.Spec : Prop :=
  ∀ n, (P1765553830481523209.a n : ℤ) = A014306 n

end A014306

/-! ## A014306.P2141191497747655529

`val(char[∑[∑[n]]]+2, 2)`
-/

namespace A014306.P2141191497747655529
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((if ∃ j, f1 j = n then 1 else 0) + 2) 2

end

end A014306.P2141191497747655529

namespace A014306

/-- `val(char[∑[∑[n]]]+2, 2)` -/
def P2141191497747655529.Spec : Prop :=
  ∀ n, (P2141191497747655529.a n : ℤ) = A014306 n

end A014306

/-! ## A014306.P942556080573852969

`and(1, char[∑[∑[n]]]+1)`
-/

namespace A014306.P942556080573852969
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A014306.P942556080573852969

namespace A014306

/-- `and(1, char[∑[∑[n]]]+1)` -/
def P942556080573852969.Spec : Prop :=
  ∀ n, (P942556080573852969.a n : ℤ) = A014306 n

end A014306

/-!
# A014307: Expansion of the e.g.f. sqrt(exp(x) / (2 - exp(x))).

The programs for A014307, there is no canonical definition to state claims against.
-/

/-! ## A014307.P16943988401068810116

`abs(Δ[A348468(n)])`
-/

namespace A014307.P16943988401068810116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A014307.P16943988401068810116

/-! ## A014307.P9224600642670442316

`gcd(Δ[A348468(n)], A000038(n))`
-/

namespace A014307.P9224600642670442316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A014307.P9224600642670442316

/-! ## A014307.P15259333911884077173

`lcm(Δ[A348468(n)], A033999(n))`
-/

namespace A014307.P15259333911884077173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A033999 n)

end

end A014307.P15259333911884077173

/-! ## A014307.P12720887265189672354

`A348468(n)-A348468(n+1)`
-/

namespace A014307.P12720887265189672354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348468 n - A348468 (n + 1)

end

end A014307.P12720887265189672354

/-! ## A014307.P4629085286803886947

`Δ[A033999(2*n)-A348468(n)]`
-/

namespace A014307.P4629085286803886947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) - A348468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014307.P4629085286803886947

/-! ## A014307.P6775215169546699315

`Δ[A033999(2*n+1)*A348468(n)]`
-/

namespace A014307.P6775215169546699315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A348468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014307.P6775215169546699315

/-! ## A014307.P8938698770311016588

`A124212(n)/2^n`
-/

namespace A014307.P8938698770311016588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124212 n : ℚ) / (2 ^ n : ℚ)

end

end A014307.P8938698770311016588

/-!
# A014308: Inverse of 299th cyclotomic polynomial.

The programs for A014308, there is no canonical definition to state claims against.
-/

/-! ## A014308.P8115584046115143498

`A014607(n)*A033999(n)`
-/

namespace A014308.P8115584046115143498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014607 n * A033999 n

end

end A014308.P8115584046115143498

/-!
# A014309: a(n) = (n+2)*(n+1)*(n^2 + 7*n - 12)/24.

The programs for A014309, the canonical program `A014309.P3705422544734832804` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014309 has offset 1).

The definition of A014309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)*(n+2)*((n+1)²+7*(n+1)-12)/24` (program `A014309.P14473118925364571190`, by `A014309.P14473118925364571190.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014309.P3045322999045787496

`ogf((-1+8x-10x^2+5x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A014309.P3045322999045787496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 8, -10, 5, -1] [1, -5, 10, -10, 5, -1] n

end

end A014309.P3045322999045787496

namespace A014309

/-- `ogf((-1+8x-10x^2+5x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P3045322999045787496.Spec : Prop :=
  ∀ n, P3045322999045787496.a n = A014309 (n + 1)

end A014309

/-! ## A014309.P3705422544734832804

`C(n+3, 4)+2*C(n+3, 3)-C(n+3, 2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014309

/-- `C(n+3, 4)+2*C(n+3, 3)-C(n+3, 2)` -/
def P3705422544734832804.Spec : Prop :=
  ∀ n, P3705422544734832804.a n = A014309 (n + 1)

theorem P3705422544734832804.correct : P3705422544734832804.Spec := by
  intro n
  simp only [A014309, Nat.add_sub_cancel]

end A014309

/-! ## A014309.P14473118925364571190

`(n+3)*(n+2)*((n+1)²+7*(n+1)-12)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014309.P14473118925364571190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3) * (n + 2) : ℤ) * (((n + 1) ^ 2 + 7 * (n + 1) : ℤ) - 12) : ℚ) / 24

end

end A014309.P14473118925364571190

namespace A014309

/-- `(n+3)*(n+2)*((n+1)²+7*(n+1)-12)/24` -/
def P14473118925364571190.Spec : Prop :=
  ∀ n, P14473118925364571190.a n = (A014309 (n + 1) : ℚ)

theorem P14473118925364571190.correct : P14473118925364571190.Spec := by
  intro n
  simp only [A014309, Nat.add_sub_cancel, A014309.P14473118925364571190.a, A014309.P3705422544734832804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014309

/-! ## A014309.P17181988251415292840

`∑[∑[4*n]+C(n, 3)]-1`
-/

namespace A014309.P17181988251415292840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A014309.P17181988251415292840

namespace A014309

/-- `∑[∑[4*n]+C(n, 3)]-1` -/
def P17181988251415292840.Spec : Prop :=
  ∀ n, P17181988251415292840.a n = A014309 (n + 1)

end A014309

/-! ## A014309.P5909013212667832259

`∑[∑[C(n+3, 2)]]-(n+2)²`
-/

namespace A014309.P5909013212667832259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n + 2) ^ 2 : ℤ)

end

end A014309.P5909013212667832259

namespace A014309

/-- `∑[∑[C(n+3, 2)]]-(n+2)²` -/
def P5909013212667832259.Spec : Prop :=
  ∀ n, P5909013212667832259.a n = A014309 (n + 1)

end A014309

/-! ## A014309.P16939525577697579994

`∑[∑[C(n+3, 2)-2]]-(n+2)`
-/

namespace A014309.P16939525577697579994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 2 : ℤ)

end

end A014309.P16939525577697579994

namespace A014309

/-- `∑[∑[C(n+3, 2)-2]]-(n+2)` -/
def P16939525577697579994.Spec : Prop :=
  ∀ n, P16939525577697579994.a n = A014309 (n + 1)

end A014309

/-! ## A014309.P17854278171690795847

`∑[∑[a(n-1)+n+2]]-(n+2)` with `a(0)=1`
-/

namespace A014309.P17854278171690795847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 2 : ℤ)

end

end A014309.P17854278171690795847

namespace A014309

/-- `∑[∑[a(n-1)+n+2]]-(n+2)` -/
def P17854278171690795847.Spec : Prop :=
  ∀ n, P17854278171690795847.a n = A014309 (n + 1)

end A014309

/-! ## A014309.P16493541940669921888

`A005712(n+2)-(n+2)`
-/

namespace A014309.P16493541940669921888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) - (n + 2 : ℤ)

end

end A014309.P16493541940669921888

namespace A014309

/-- `A005712(n+2)-(n+2)` -/
def P16493541940669921888.Spec : Prop :=
  ∀ n, P16493541940669921888.a n = A014309 (n + 1)

end A014309

/-! ## A014309.P5897099674615566292

`∑[A005586(n)-A028310(n)]`
-/

namespace A014309.P5897099674615566292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014309.P5897099674615566292

namespace A014309

/-- `∑[A005586(n)-A028310(n)]` -/
def P5897099674615566292.Spec : Prop :=
  ∀ n, P5897099674615566292.a n = A014309 (n + 1)

end A014309

/-! ## A014309.P2686062591495066822

`∑[A008778(n)-A054977(n)]`
-/

namespace A014309.P2686062591495066822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014309.P2686062591495066822

namespace A014309

/-- `∑[A008778(n)-A054977(n)]` -/
def P2686062591495066822.Spec : Prop :=
  ∀ n, P2686062591495066822.a n = A014309 (n + 1)

end A014309

/-! ## A014309.P4959392930569798611

`A033275(n+4)-A145126(n)`
-/

namespace A014309.P4959392930569798611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033275 (n + 4) - A145126 n

end

end A014309.P4959392930569798611

namespace A014309

/-- `A033275(n+4)-A145126(n)` -/
def P4959392930569798611.Spec : Prop :=
  ∀ n, P4959392930569798611.a n = A014309 (n + 1)

end A014309

/-! ## A014309.P80614225050141770

`A252870(n+1)+A008865(n+1)`
-/

namespace A014309.P80614225050141770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252870 (n + 1) + A008865 (n + 1)

end

end A014309.P80614225050141770

namespace A014309

/-- `A252870(n+1)+A008865(n+1)` -/
def P80614225050141770.Spec : Prop :=
  ∀ n, P80614225050141770.a n = A014309 (n + 1)

end A014309

/-! ## A014309.P1666422043437849471

`A005582(n+1)-A000217(n+2)`
-/

namespace A014309.P1666422043437849471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 1) - A000217 (n + 2)

end

end A014309.P1666422043437849471

namespace A014309

/-- `A005582(n+1)-A000217(n+2)` -/
def P1666422043437849471.Spec : Prop :=
  ∀ n, P1666422043437849471.a n = A014309 (n + 1)

end A014309

/-! ## A014309.P13167842759686613187

`A005287(n+4)-A023545(n+1)`
-/

namespace A014309.P13167842759686613187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005287 (n + 4) - A023545 (n + 1)

end

end A014309.P13167842759686613187

namespace A014309

/-- `A005287(n+4)-A023545(n+1)` -/
def P13167842759686613187.Spec : Prop :=
  ∀ n, P13167842759686613187.a n = A014309 (n + 1)

end A014309

/-! ## A014309.P16577291354209804323

`∑[A275874(n+4)-A134227(n+1)]`
-/

namespace A014309.P16577291354209804323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275874 (n + 4) - A134227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014309.P16577291354209804323

namespace A014309

/-- `∑[A275874(n+4)-A134227(n+1)]` -/
def P16577291354209804323.Spec : Prop :=
  ∀ n, P16577291354209804323.a n = A014309 (n + 1)

end A014309

/-! ## A014309.P3966246355329083940

`∑[A008778(n)-A000034(A001316(n))]`
-/

namespace A014309.P3966246355329083940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n - A000034 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014309.P3966246355329083940

namespace A014309

/-- `∑[A008778(n)-A000034(A001316(n))]` -/
def P3966246355329083940.Spec : Prop :=
  ∀ n, P3966246355329083940.a n = A014309 (n + 1)

end A014309

/-! ## A014309.P4627623932344384693

`A323847(n+2)-1`
-/

namespace A014309.P4627623932344384693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323847 (n + 2) - 1

end

end A014309.P4627623932344384693

namespace A014309

/-- `A323847(n+2)-1` -/
def P4627623932344384693.Spec : Prop :=
  ∀ n, P4627623932344384693.a n = A014309 (n + 1)

theorem P4627623932344384693.correct : P4627623932344384693.Spec := by
  intro n
  simp only [A014309, Nat.add_sub_cancel, A014309.P4627623932344384693.a, A014309.P3705422544734832804.a, A323847, A323847.P17379173831627455529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014309

/-! ## A014309.P521815729094548414

`A368881(n+1)-(n+3)`
-/

namespace A014309.P521815729094548414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368881 (n + 1) - (n + 3 : ℤ)

end

end A014309.P521815729094548414

namespace A014309

/-- `A368881(n+1)-(n+3)` -/
def P521815729094548414.Spec : Prop :=
  ∀ n, P521815729094548414.a n = A014309 (n + 1)

theorem P521815729094548414.correct : P521815729094548414.Spec := by
  intro n
  simp only [A014309, Nat.add_sub_cancel, A014309.P521815729094548414.a, A014309.P3705422544734832804.a, A368881, A368881.P15366897681764231190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014309

/-! ## A014309.P3576248288659325229

`A095661(n)-A000292(n+2)`
-/

namespace A014309.P3576248288659325229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 n - A000292 (n + 2)

end

end A014309.P3576248288659325229

namespace A014309

/-- `A095661(n)-A000292(n+2)` -/
def P3576248288659325229.Spec : Prop :=
  ∀ n, P3576248288659325229.a n = A014309 (n + 1)

end A014309

/-!
# A014310: Inverse of 301st cyclotomic polynomial.

The programs for A014310, there is no canonical definition to state claims against.
-/

/-! ## A014310.P1279897181479249121

`A014611(n)*A033999(n)`
-/

namespace A014310.P1279897181479249121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014611 n * A033999 n

end

end A014310.P1279897181479249121

/-!
# A014311: Numbers with exactly 3 ones in binary expansion.

The programs for A014311, the canonical program `A014311.P14315375804036944727` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014311 has offset 1).

The definition of A014311 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056558, A194847, A194848, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014311.P14315375804036944727

`2^A056558(n)+2^A194848(n)+2^A194847(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A014311

/-- `2^A056558(n)+2^A194848(n)+2^A194847(n)` -/
def P14315375804036944727.Spec : Prop :=
  ∀ n, P14315375804036944727.a n = (A014311 (n + 1) : ℚ)

end A014311

/-! ## A014311.P4072976526970305109

`A048679(A179243(n+1))`
-/

namespace A014311.P4072976526970305109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A179243 (n + 1)).toNat

end

end A014311.P4072976526970305109

namespace A014311

/-- `A048679(A179243(n+1))` -/
def P4072976526970305109.Spec : Prop :=
  ∀ n, P4072976526970305109.a n = A014311 (n + 1)

end A014311

/-! ## A014311.P1668957835899596711

`eq[3, a(and(n, n-1))+1]` with `a(0)=0`
-/

namespace A014311.P1668957835899596711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014311.P1668957835899596711

namespace A014311

/-- `eq[3, a(and(n, n-1))+1]` -/
def P1668957835899596711.Spec : Prop :=
  ∀ n, (P1668957835899596711.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P14672069550991281163

`eq[8, 2*a(and(n, n-1))]` with `a(0)=1`
-/

namespace A014311.P14672069550991281163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014311.P14672069550991281163

namespace A014311

/-- `eq[8, 2*a(and(n, n-1))]` -/
def P14672069550991281163.Spec : Prop :=
  ∀ n, (P14672069550991281163.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P788185924165343872

`eq[n, a(n-1)+val(n, 2)]` with `a(0)=4, a(1)=3`
-/

namespace A014311.P788185924165343872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 3] fun n f2 =>
  f2 (n - 1) + SequenceMachineLib.valuation n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014311.P788185924165343872

namespace A014311

/-- `eq[n, a(n-1)+val(n, 2)]` -/
def P788185924165343872.Spec : Prop :=
  ∀ n, (P788185924165343872.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P16298541174652829555

`eq[4, a(floor(n/2))+n%2]` with `a(0)=1`
-/

namespace A014311.P16298541174652829555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014311.P16298541174652829555

namespace A014311

/-- `eq[4, a(floor(n/2))+n%2]` -/
def P16298541174652829555.Spec : Prop :=
  ∀ n, (P16298541174652829555.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P5388600580409559987

`eq[4, 1-(val(n, 2)-a(n-1))]` with `a(0)=1`
-/

namespace A014311.P5388600580409559987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - ((SequenceMachineLib.valuation n 2 : ℤ) - f2 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014311.P5388600580409559987

namespace A014311

/-- `eq[4, 1-(val(n, 2)-a(n-1))]` -/
def P5388600580409559987.Spec : Prop :=
  ∀ n, (P5388600580409559987.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P12061958108515127956

`eq[8, A001316(n)]`
-/

namespace A014311.P12061958108515127956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014311.P12061958108515127956

namespace A014311

/-- `eq[8, A001316(n)]` -/
def P12061958108515127956.Spec : Prop :=
  ∀ n, (P12061958108515127956.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P11937388877265367874

`eq[7, A000203(lcm(n, a(n-1)+1)/n)]` with `a(0)=0`
-/

namespace A014311.P11937388877265367874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000203 (SequenceMachineLib.roundAway ((Int.lcm (n : ℤ) (f2 (n - 1) + 1) : ℚ) / (n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014311.P11937388877265367874

namespace A014311

/-- `eq[7, A000203(lcm(n, a(n-1)+1)/n)]` -/
def P11937388877265367874.Spec : Prop :=
  ∀ n, (P11937388877265367874.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P6732029865387250950

`eq[8, A060632(2*n)]`
-/

namespace A014311.P6732029865387250950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014311.P6732029865387250950

namespace A014311

/-- `eq[8, A060632(2*n)]` -/
def P6732029865387250950.Spec : Prop :=
  ∀ n, (P6732029865387250950.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P11057178257132290013

`eq[7, A328472(2*n+1)]`
-/

namespace A014311.P11057178257132290013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328472 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014311.P11057178257132290013

namespace A014311

/-- `eq[7, A328472(2*n+1)]` -/
def P11057178257132290013.Spec : Prop :=
  ∀ n, (P11057178257132290013.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P7109058204334775127

`∩[A052294(n+1), A344602(n+1)]`
-/

namespace A014311.P7109058204334775127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014311.P7109058204334775127

namespace A014311

/-- `∩[A052294(n+1), A344602(n+1)]` -/
def P7109058204334775127.Spec : Prop :=
  ∀ n, (P7109058204334775127.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P12927578238499615762

`∩[A075930(n), A095736(n+1)]`
-/

namespace A014311.P12927578238499615762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014311.P12927578238499615762

namespace A014311

/-- `∩[A075930(n), A095736(n+1)]` -/
def P12927578238499615762.Spec : Prop :=
  ∀ n, (P12927578238499615762.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P13844744453879287942

`∩[A151757(n+1), A075930(n)]`
-/

namespace A014311.P13844744453879287942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075930 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014311.P13844744453879287942

namespace A014311

/-- `∩[A151757(n+1), A075930(n)]` -/
def P13844744453879287942.Spec : Prop :=
  ∀ n, (P13844744453879287942.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P11718383166656734729

`∩[A344602(n+1), A075930(n)]`
-/

namespace A014311.P11718383166656734729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075930 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014311.P11718383166656734729

namespace A014311

/-- `∩[A344602(n+1), A075930(n)]` -/
def P11718383166656734729.Spec : Prop :=
  ∀ n, (P11718383166656734729.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P14488127451677652822

`∩[A151757(n+1), A235336(n)]`
-/

namespace A014311.P14488127451677652822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235336 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014311.P14488127451677652822

namespace A014311

/-- `∩[A151757(n+1), A235336(n)]` -/
def P14488127451677652822.Spec : Prop :=
  ∀ n, (P14488127451677652822.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P5542042822603478789

`∩[A333975(n+1), A235336(n)]`
-/

namespace A014311.P5542042822603478789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235336 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014311.P5542042822603478789

namespace A014311

/-- `∩[A333975(n+1), A235336(n)]` -/
def P5542042822603478789.Spec : Prop :=
  ∀ n, (P5542042822603478789.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P6876191635193611330

`eq[5, A050315(n)]`
-/

namespace A014311.P6876191635193611330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014311.P6876191635193611330

namespace A014311

/-- `eq[5, A050315(n)]` -/
def P6876191635193611330.Spec : Prop :=
  ∀ n, (P6876191635193611330.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P13668656066548179421

`eq[2, A292601(A292601(n))]`
-/

namespace A014311.P13668656066548179421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292601 (A292601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014311.P13668656066548179421

namespace A014311

/-- `eq[2, A292601(A292601(n))]` -/
def P13668656066548179421.Spec : Prop :=
  ∀ n, (P13668656066548179421.a n : ℤ) = A014311 (n + 1)

end A014311

/-! ## A014311.P15849671721359968365

`eq[1, A001222(A268444(n))-2]`
-/

namespace A014311.P15849671721359968365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A268444 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014311.P15849671721359968365

namespace A014311

/-- `eq[1, A001222(A268444(n))-2]` -/
def P15849671721359968365.Spec : Prop :=
  ∀ n, (P15849671721359968365.a n : ℤ) = A014311 (n + 1)

end A014311

/-!
# A014312: Numbers with exactly 4 ones in binary expansion.

The programs for A014312, the canonical program `A014312.P6536201147470879106` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014312 has offset 1).

The definition of A014312 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127324, A194882, A194883, A194884, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014312.P6536201147470879106

`2^A194882(n)+2^A194883(n)+2^A194884(n)+2^A127324(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A014312

/-- `2^A194882(n)+2^A194883(n)+2^A194884(n)+2^A127324(n)` -/
def P6536201147470879106.Spec : Prop :=
  ∀ n, P6536201147470879106.a n = (A014312 (n + 1) : ℚ)

end A014312

/-! ## A014312.P13218307402968775230

`A048679(A179244(n+1))`
-/

namespace A014312.P13218307402968775230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A179244 (n + 1)).toNat

end

end A014312.P13218307402968775230

namespace A014312

/-- `A048679(A179244(n+1))` -/
def P13218307402968775230.Spec : Prop :=
  ∀ n, P13218307402968775230.a n = A014312 (n + 1)

end A014312

/-! ## A014312.P6540749272569064618

`eq[4, a(and(n, n-1))+1]` with `a(0)=0`
-/

namespace A014312.P6540749272569064618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014312.P6540749272569064618

namespace A014312

/-- `eq[4, a(and(n, n-1))+1]` -/
def P6540749272569064618.Spec : Prop :=
  ∀ n, (P6540749272569064618.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P14002555010726473674

`eq[16, 2*a(and(n, n-1))]` with `a(0)=1`
-/

namespace A014312.P14002555010726473674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014312.P14002555010726473674

namespace A014312

/-- `eq[16, 2*a(and(n, n-1))]` -/
def P14002555010726473674.Spec : Prop :=
  ∀ n, (P14002555010726473674.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P10599563666410902200

`eq[4, a(floor(n/2))+n%2]` with `a(0)=0`
-/

namespace A014312.P10599563666410902200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014312.P10599563666410902200

namespace A014312

/-- `eq[4, a(floor(n/2))+n%2]` -/
def P10599563666410902200.Spec : Prop :=
  ∀ n, (P10599563666410902200.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P4776400285456289189

`eq[4, a(floor(n/2))+and(1, n)]` with `a(0)=0`
-/

namespace A014312.P4776400285456289189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014312.P4776400285456289189

namespace A014312

/-- `eq[4, a(floor(n/2))+and(1, n)]` -/
def P4776400285456289189.Spec : Prop :=
  ∀ n, (P4776400285456289189.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P2399166362605574996

`eq[4, a(n-1)+1-val(n, 2)]` with `a(0)=0`
-/

namespace A014312.P2399166362605574996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + (1 - (SequenceMachineLib.valuation n 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014312.P2399166362605574996

namespace A014312

/-- `eq[4, a(n-1)+1-val(n, 2)]` -/
def P2399166362605574996.Spec : Prop :=
  ∀ n, (P2399166362605574996.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P12020730947158593665

`eq[5, 1-(val(n, 2)-a(n-1))]` with `a(0)=1`
-/

namespace A014312.P12020730947158593665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - ((SequenceMachineLib.valuation n 2 : ℤ) - f2 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014312.P12020730947158593665

namespace A014312

/-- `eq[5, 1-(val(n, 2)-a(n-1))]` -/
def P12020730947158593665.Spec : Prop :=
  ∀ n, (P12020730947158593665.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P15029049297109951816

`eq[4, log2(A001316(n))]`
-/

namespace A014312.P15029049297109951816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A014312.P15029049297109951816

namespace A014312

/-- `eq[4, log2(A001316(n))]` -/
def P15029049297109951816.Spec : Prop :=
  ∀ n, (P15029049297109951816.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P16691517104049234997

`eq[A001316(n), A040056(n)]`
-/

namespace A014312.P16691517104049234997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014312.P16691517104049234997

namespace A014312

/-- `eq[A001316(n), A040056(n)]` -/
def P16691517104049234997.Spec : Prop :=
  ∀ n, (P16691517104049234997.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P11818254203974569432

`eq[A040057(n), A060632(n)]`
-/

namespace A014312.P11818254203974569432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014312.P11818254203974569432

namespace A014312

/-- `eq[A040057(n), A060632(n)]` -/
def P11818254203974569432.Spec : Prop :=
  ∀ n, (P11818254203974569432.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P9515636922240018363

`eq[A040002(n)², A001316(n)]`
-/

namespace A014312.P9515636922240018363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014312.P9515636922240018363

namespace A014312

/-- `eq[A040002(n)², A001316(n)]` -/
def P9515636922240018363.Spec : Prop :=
  ∀ n, (P9515636922240018363.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P5069372302642081635

`eq[2*A040013(n), A060632(n)]`
-/

namespace A014312.P5069372302642081635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014312.P5069372302642081635

namespace A014312

/-- `eq[2*A040013(n), A060632(n)]` -/
def P5069372302642081635.Spec : Prop :=
  ∀ n, (P5069372302642081635.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P8584935931798406606

`eq[1, A000925(A001316(n)+2)]`
-/

namespace A014312.P8584935931798406606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A001316 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014312.P8584935931798406606

namespace A014312

/-- `eq[1, A000925(A001316(n)+2)]` -/
def P8584935931798406606.Spec : Prop :=
  ∀ n, (P8584935931798406606.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P16660779501959449717

`eq[2, A001222(A268444(n))-2]`
-/

namespace A014312.P16660779501959449717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A268444 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014312.P16660779501959449717

namespace A014312

/-- `eq[2, A001222(A268444(n))-2]` -/
def P16660779501959449717.Spec : Prop :=
  ∀ n, (P16660779501959449717.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P5485654470856328743

`eq[A001316(n), A134660(A001316(n)+1)]`
-/

namespace A014312.P5485654470856328743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134660 (A001316 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014312.P5485654470856328743

namespace A014312

/-- `eq[A001316(n), A134660(A001316(n)+1)]` -/
def P5485654470856328743.Spec : Prop :=
  ∀ n, (P5485654470856328743.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P4014173684267167276

`eq[4, A000120(n)]`
-/

namespace A014312.P4014173684267167276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014312.P4014173684267167276

namespace A014312

/-- `eq[4, A000120(n)]` -/
def P4014173684267167276.Spec : Prop :=
  ∀ n, (P4014173684267167276.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P10418589372626607462

`eq[5, A102396(n)]`
-/

namespace A014312.P10418589372626607462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014312.P10418589372626607462

namespace A014312

/-- `eq[5, A102396(n)]` -/
def P10418589372626607462.Spec : Prop :=
  ∀ n, (P10418589372626607462.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P4424003785549745323

`eq[6, A102395(n)]`
-/

namespace A014312.P4424003785549745323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014312.P4424003785549745323

namespace A014312

/-- `eq[6, A102395(n)]` -/
def P4424003785549745323.Spec : Prop :=
  ∀ n, (P4424003785549745323.a n : ℤ) = A014312 (n + 1)

end A014312

/-! ## A014312.P4503020609066004459

`eq[7, A057334(n)]`
-/

namespace A014312.P4503020609066004459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014312.P4503020609066004459

namespace A014312

/-- `eq[7, A057334(n)]` -/
def P4503020609066004459.Spec : Prop :=
  ∀ n, (P4503020609066004459.a n : ℤ) = A014312 (n + 1)

end A014312

/-!
# A014313: Numbers with exactly 5 ones in binary expansion.

The programs for A014313, the canonical program `A014313.P14902531710114140058` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014313 has offset 1).

The definition of A014313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014313.P2919003236518057722

`A048679(A179245(n+1))`
-/

namespace A014313.P2919003236518057722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A179245 (n + 1)).toNat

end

end A014313.P2919003236518057722

namespace A014313

/-- `A048679(A179245(n+1))` -/
def P2919003236518057722.Spec : Prop :=
  ∀ n, P2919003236518057722.a n = A014313 (n + 1)

end A014313

/-! ## A014313.P14902531710114140058

`eq[5, a(and(n, n-1))+1]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014313

/-- `eq[5, a(and(n, n-1))+1]` -/
def P14902531710114140058.Spec : Prop :=
  ∀ n, (P14902531710114140058.a n : ℤ) = A014313 (n + 1)

theorem P14902531710114140058.correct : P14902531710114140058.Spec := by
  intro n
  simp only [A014313, Nat.add_sub_cancel]

end A014313

/-! ## A014313.P9248180926300656782

`eq[32, 2*a(and(n, n-1))]` with `a(0)=1`
-/

namespace A014313.P9248180926300656782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014313.P9248180926300656782

namespace A014313

/-- `eq[32, 2*a(and(n, n-1))]` -/
def P9248180926300656782.Spec : Prop :=
  ∀ n, (P9248180926300656782.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P11164997126285379988

`eq[5, a(floor(n/2))+n%2]` with `a(0)=0`
-/

namespace A014313.P11164997126285379988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014313.P11164997126285379988

namespace A014313

/-- `eq[5, a(floor(n/2))+n%2]` -/
def P11164997126285379988.Spec : Prop :=
  ∀ n, (P11164997126285379988.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P14541666741503162941

`eq[1, xor(1, -a(and(n, n-1)))]` with `a(0)=4`
-/

namespace A014313.P14541666741503162941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  Int.xor 1 (-f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014313.P14541666741503162941

namespace A014313

/-- `eq[1, xor(1, -a(and(n, n-1)))]` -/
def P14541666741503162941.Spec : Prop :=
  ∀ n, (P14541666741503162941.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P9154168939014113608

`eq[8, a(floor(n/2))+and(1, n)]` with `a(0)=3`
-/

namespace A014313.P9154168939014113608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014313.P9154168939014113608

namespace A014313

/-- `eq[8, a(floor(n/2))+and(1, n)]` -/
def P9154168939014113608.Spec : Prop :=
  ∀ n, (P9154168939014113608.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P16192892025190488072

`eq[5, a(n-1)+1-val(n, 2)]` with `a(0)=0`
-/

namespace A014313.P16192892025190488072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + (1 - (SequenceMachineLib.valuation n 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014313.P16192892025190488072

namespace A014313

/-- `eq[5, a(n-1)+1-val(n, 2)]` -/
def P16192892025190488072.Spec : Prop :=
  ∀ n, (P16192892025190488072.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P9419273514470262033

`eq[6, 1-(val(n, 2)-a(n-1))]` with `a(0)=1`
-/

namespace A014313.P9419273514470262033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - ((SequenceMachineLib.valuation n 2 : ℤ) - f2 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014313.P9419273514470262033

namespace A014313

/-- `eq[6, 1-(val(n, 2)-a(n-1))]` -/
def P9419273514470262033.Spec : Prop :=
  ∀ n, (P9419273514470262033.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P1090279538144172701

`eq[32, A001316(n)]`
-/

namespace A014313.P1090279538144172701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014313.P1090279538144172701

namespace A014313

/-- `eq[32, A001316(n)]` -/
def P1090279538144172701.Spec : Prop :=
  ∀ n, (P1090279538144172701.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P9253870414923340697

`eq[2*A040057(n), A060632(n)]`
-/

namespace A014313.P9253870414923340697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014313.P9253870414923340697

namespace A014313

/-- `eq[2*A040057(n), A060632(n)]` -/
def P9253870414923340697.Spec : Prop :=
  ∀ n, (P9253870414923340697.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P10075834528371616567

`eq[5, A000120(n)]`
-/

namespace A014313.P10075834528371616567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014313.P10075834528371616567

namespace A014313

/-- `eq[5, A000120(n)]` -/
def P10075834528371616567.Spec : Prop :=
  ∀ n, (P10075834528371616567.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P3736363083350897789

`eq[10, A102395(n)]`
-/

namespace A014313.P3736363083350897789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014313.P3736363083350897789

namespace A014313

/-- `eq[10, A102395(n)]` -/
def P3736363083350897789.Spec : Prop :=
  ∀ n, (P3736363083350897789.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P3779088559486820876

`eq[11, A057334(n)]`
-/

namespace A014313.P3779088559486820876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014313.P3779088559486820876

namespace A014313

/-- `eq[11, A057334(n)]` -/
def P3779088559486820876.Spec : Prop :=
  ∀ n, (P3779088559486820876.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P947481550843408824

`eq[11, A102396(n)]`
-/

namespace A014313.P947481550843408824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014313.P947481550843408824

namespace A014313

/-- `eq[11, A102396(n)]` -/
def P947481550843408824.Spec : Prop :=
  ∀ n, (P947481550843408824.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P14433529616809701375

`eq[4, A048881(n)]+1`
-/

namespace A014313.P14433529616809701375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014313.P14433529616809701375

namespace A014313

/-- `eq[4, A048881(n)]+1` -/
def P14433529616809701375.Spec : Prop :=
  ∀ n, (P14433529616809701375.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P621750921151564772

`eq[n+5, A092391(n)]`
-/

namespace A014313.P621750921151564772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014313.P621750921151564772

namespace A014313

/-- `eq[n+5, A092391(n)]` -/
def P621750921151564772.Spec : Prop :=
  ∀ n, (P621750921151564772.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P7974327252867363567

`eq[6, A063787(n+1)]`
-/

namespace A014313.P7974327252867363567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014313.P7974327252867363567

namespace A014313

/-- `eq[6, A063787(n+1)]` -/
def P7974327252867363567.Spec : Prop :=
  ∀ n, (P7974327252867363567.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P2987371824764161949

`lt[dr(A131762(n)+1), 2]`
-/

namespace A014313.P2987371824764161949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A131762 n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014313.P2987371824764161949

namespace A014313

/-- `lt[dr(A131762(n)+1), 2]` -/
def P2987371824764161949.Spec : Prop :=
  ∀ n, (P2987371824764161949.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P10268576892057307468

`eq[1, dr(2*A197353(n))]`
-/

namespace A014313.P10268576892057307468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 * A197353 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014313.P10268576892057307468

namespace A014313

/-- `eq[1, dr(2*A197353(n))]` -/
def P10268576892057307468.Spec : Prop :=
  ∀ n, (P10268576892057307468.a n : ℤ) = A014313 (n + 1)

end A014313

/-! ## A014313.P10243976580719323483

`eq[1, dr(2*A001202(n+1))]`
-/

namespace A014313.P10243976580719323483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 * A001202 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014313.P10243976580719323483

namespace A014313

/-- `eq[1, dr(2*A001202(n+1))]` -/
def P10243976580719323483.Spec : Prop :=
  ∀ n, (P10243976580719323483.a n : ℤ) = A014313 (n + 1)

end A014313

/-!
# A014314: Number of up steps in all length n left factors of Dyck paths.

The programs for A014314, the canonical program `A014314.P224106078485910448` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014314 has offset 0).

The definition of A014314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014314.P224106078485910448

`A191527(n)+floor(2^(n-1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A014314

/-- `A191527(n)+floor(2^(n-1))` -/
def P224106078485910448.Spec : Prop :=
  ∀ n, P224106078485910448.a n = A014314 n

theorem P224106078485910448.correct : P224106078485910448.Spec := by
  intro n
  simp only [A014314]

end A014314

/-! ## A014314.P12203615712380783537

`A294175(n)+A100071(n)`
-/

namespace A014314.P12203615712380783537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 n + A100071 n

end

end A014314.P12203615712380783537

namespace A014314

/-- `A294175(n)+A100071(n)` -/
def P12203615712380783537.Spec : Prop :=
  ∀ n, P12203615712380783537.a n = A014314 n

end A014314

/-! ## A014314.P8165773593708603083

`A323988(n)-A001405(n)`
-/

namespace A014314.P8165773593708603083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323988 n - A001405 n

end

end A014314.P8165773593708603083

namespace A014314

/-- `A323988(n)-A001405(n)` -/
def P8165773593708603083.Spec : Prop :=
  ∀ n, P8165773593708603083.a n = A014314 n

end A014314

/-! ## A014314.P4864671788672480148

`A107373(n+1)+A045621(n)`
-/

namespace A014314.P4864671788672480148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) + A045621 n

end

end A014314.P4864671788672480148

namespace A014314

/-- `A107373(n+1)+A045621(n)` -/
def P4864671788672480148.Spec : Prop :=
  ∀ n, P4864671788672480148.a n = A014314 n

end A014314

/-! ## A014314.P2305967594859348249

`A323988(n)-A210736(n+1)`
-/

namespace A014314.P2305967594859348249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323988 n - A210736 (n + 1)

end

end A014314.P2305967594859348249

namespace A014314

/-- `A323988(n)-A210736(n+1)` -/
def P2305967594859348249.Spec : Prop :=
  ∀ n, P2305967594859348249.a n = A014314 n

end A014314

/-! ## A014314.P6027961740085496823

`A191386(n+2)-A001405(n)`
-/

namespace A014314.P6027961740085496823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191386 (n + 2) - A001405 n

end

end A014314.P6027961740085496823

namespace A014314

/-- `A191386(n+2)-A001405(n)` -/
def P6027961740085496823.Spec : Prop :=
  ∀ n, P6027961740085496823.a n = A014314 n

end A014314

/-! ## A014314.P9847466785367580686

`A191386(n+2)-A210736(n+1)`
-/

namespace A014314.P9847466785367580686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191386 (n + 2) - A210736 (n + 1)

end

end A014314.P9847466785367580686

namespace A014314

/-- `A191386(n+2)-A210736(n+1)` -/
def P9847466785367580686.Spec : Prop :=
  ∀ n, P9847466785367580686.a n = A014314 n

end A014314

/-! ## A014314.P14499740965337797359

`A027306(n)+A100071(n)-A001405(n)`
-/

namespace A014314.P14499740965337797359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n + (A100071 n - A001405 n)

end

end A014314.P14499740965337797359

namespace A014314

/-- `A027306(n)+A100071(n)-A001405(n)` -/
def P14499740965337797359.Spec : Prop :=
  ∀ n, P14499740965337797359.a n = A014314 n

end A014314

/-! ## A014314.P13889084223216571640

`A107373(n+1)+A000079(n)-A001405(n)`
-/

namespace A014314.P13889084223216571640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) + (A000079 n - A001405 n)

end

end A014314.P13889084223216571640

namespace A014314

/-- `A107373(n+1)+A000079(n)-A001405(n)` -/
def P13889084223216571640.Spec : Prop :=
  ∀ n, P13889084223216571640.a n = A014314 n

end A014314

/-! ## A014314.P14781431079854925684

`A099325(n)-A189911(n)`
-/

namespace A014314.P14781431079854925684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n - A189911 n

end

end A014314.P14781431079854925684

namespace A014314

/-- `A099325(n)-A189911(n)` -/
def P14781431079854925684.Spec : Prop :=
  ∀ n, P14781431079854925684.a n = A014314 n

end A014314

/-! ## A014314.P4481575471909832327

`n*A001405(n)-A107373(n+1)`
-/

namespace A014314.P4481575471909832327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001405 n - A107373 (n + 1)

end

end A014314.P4481575471909832327

namespace A014314

/-- `n*A001405(n)-A107373(n+1)` -/
def P4481575471909832327.Spec : Prop :=
  ∀ n, P4481575471909832327.a n = A014314 n

end A014314

/-!
# A014316: Convolution of Catalan numbers and squares.

The programs for A014316, the canonical program `A014316.P17889708612490521663` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014316 has offset 0).

The definition of A014316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014316.P17889708612490521663

`∑[∑[A155051(A004275(n))]-2]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A014316

/-- `∑[∑[A155051(A004275(n))]-2]+1` -/
def P17889708612490521663.Spec : Prop :=
  ∀ n, P17889708612490521663.a n = A014316 n

theorem P17889708612490521663.correct : P17889708612490521663.Spec := by
  intro n
  simp only [A014316]

end A014316

/-! ## A014316.P17772737758426465668

`∑[∑[A155051(2*n)]-A155051(2*n)]`
-/

namespace A014316.P17772737758426465668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155051 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A155051 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014316.P17772737758426465668

namespace A014316

/-- `∑[∑[A155051(2*n)]-A155051(2*n)]` -/
def P17772737758426465668.Spec : Prop :=
  ∀ n, P17772737758426465668.a n = A014316 n

end A014316

/-! ## A014316.P5930801999095883008

`A018021(n)-A067760(A003266(n))`
-/

namespace A014316.P5930801999095883008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018021 n - A067760 (A003266 n).toNat

end

end A014316.P5930801999095883008

namespace A014316

/-- `A018021(n)-A067760(A003266(n))` -/
def P5930801999095883008.Spec : Prop :=
  ∀ n, P5930801999095883008.a n = A014316 n

end A014316

/-!
# A014317: Inverse of 308th cyclotomic polynomial.

The programs for A014317, there is no canonical definition to state claims against.
-/

/-! ## A014317.P8015174154865344255

`A014625(2*n)`
-/

namespace A014317.P8015174154865344255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014625 (2 * n)

end

end A014317.P8015174154865344255

/-!
# A014318: Convolution of Catalan numbers and powers of 2.

The programs for A014318, the canonical program `A014318.P6577514891599178479` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014318 has offset 0).

The definition of A014318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014318.P17152798921121137635

`∑{#}[n, abs(A106270(C(n+1, 2)+#))*A000079(#)]`
-/

namespace A014318.P17152798921121137635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), |A106270 (Nat.choose (n + 1) 2 + k)| * A000079 k

end

end A014318.P17152798921121137635

namespace A014318

/-- `∑{#}[n, abs(A106270(C(n+1, 2)+#))*A000079(#)]` -/
def P17152798921121137635.Spec : Prop :=
  ∀ n, P17152798921121137635.a n = A014318 n

end A014318

/-! ## A014318.P6577514891599178479

`∑{#}[n, 2^(n-#)*C(2*#, #)/(#+1)]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014318

/-- `∑{#}[n, 2^(n-#)*C(2*#, #)/(#+1)]` -/
def P6577514891599178479.Spec : Prop :=
  ∀ n, P6577514891599178479.a n = (A014318 n : ℚ)

end A014318

/-! ## A014318.P4490035809167510969

`∑[A126221(n)]`
-/

namespace A014318.P4490035809167510969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014318.P4490035809167510969

namespace A014318

/-- `∑[A126221(n)]` -/
def P4490035809167510969.Spec : Prop :=
  ∀ n, P4490035809167510969.a n = A014318 n

end A014318

/-! ## A014318.P590162764495195849

`abs(A158495(n+1))`
-/

namespace A014318.P590162764495195849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158495 (n + 1)|

end

end A014318.P590162764495195849

namespace A014318

/-- `abs(A158495(n+1))` -/
def P590162764495195849.Spec : Prop :=
  ∀ n, P590162764495195849.a n = A014318 n

end A014318

/-! ## A014318.P6317453284122964084

`∑{#}[n, C(n, #)*A097332(#)]`
-/

namespace A014318.P6317453284122964084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A097332 k

end

end A014318.P6317453284122964084

namespace A014318

/-- `∑{#}[n, C(n, #)*A097332(#)]` -/
def P6317453284122964084.Spec : Prop :=
  ∀ n, P6317453284122964084.a n = A014318 n

end A014318

/-! ## A014318.P660768404803291763

`2^(n+1)-A158499(n+1)`
-/

namespace A014318.P660768404803291763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A158499 (n + 1)

end

end A014318.P660768404803291763

namespace A014318

/-- `2^(n+1)-A158499(n+1)` -/
def P660768404803291763.Spec : Prop :=
  ∀ n, P660768404803291763.a n = A014318 n

end A014318

/-! ## A014318.P5146455070074816831

`A000108(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A014318.P5146455070074816831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000108 n + 2 * a (n - 1)

end

end A014318.P5146455070074816831

namespace A014318

/-- `A000108(n)+2*a(n-1)` -/
def P5146455070074816831.Spec : Prop :=
  ∀ n, P5146455070074816831.a n = A014318 n

end A014318

/-! ## A014318.P1360578163564236620

`abs(A168491(n))+2*a(n-1)` with `a(0)=1`
-/

namespace A014318.P1360578163564236620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A168491 n| + 2 * a (n - 1)

end

end A014318.P1360578163564236620

namespace A014318

/-- `abs(A168491(n))+2*a(n-1)` -/
def P1360578163564236620.Spec : Prop :=
  ∀ n, P1360578163564236620.a n = A014318 n

end A014318

/-! ## A014318.P1912855512953305026

`A120588(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A014318.P1912855512953305026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120588 (n + 1) + 2 * a (n - 1)

end

end A014318.P1912855512953305026

namespace A014318

/-- `A120588(n+1)+2*a(n-1)` -/
def P1912855512953305026.Spec : Prop :=
  ∀ n, P1912855512953305026.a n = A014318 n

end A014318

/-! ## A014318.P15859255228938829024

`2*a(n-1)+A120304(n)+2` with `a(0)=1`
-/

namespace A014318.P15859255228938829024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (A120304 n + 2)

end

end A014318.P15859255228938829024

namespace A014318

/-- `2*a(n-1)+A120304(n)+2` -/
def P15859255228938829024.Spec : Prop :=
  ∀ n, P15859255228938829024.a n = A014318 n

end A014318

/-! ## A014318.P5824719693835630312

`A028303(2*n)+2*a(n-1)` with `a(0)=1`
-/

namespace A014318.P5824719693835630312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028303 (2 * n) + 2 * a (n - 1)

end

end A014318.P5824719693835630312

namespace A014318

/-- `A028303(2*n)+2*a(n-1)` -/
def P5824719693835630312.Spec : Prop :=
  ∀ n, P5824719693835630312.a n = A014318 n

end A014318

/-! ## A014318.P13732890127583982752

`A126324(2*n)+2*a(n-1)` with `a(0)=1`
-/

namespace A014318.P13732890127583982752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126324 (2 * n) + 2 * a (n - 1)

end

end A014318.P13732890127583982752

namespace A014318

/-- `A126324(2*n)+2*a(n-1)` -/
def P13732890127583982752.Spec : Prop :=
  ∀ n, P13732890127583982752.a n = A014318 n

end A014318

/-! ## A014318.P14069296911528600506

`A208355(2*n)+2*a(n-1)` with `a(0)=1`
-/

namespace A014318.P14069296911528600506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A208355 (2 * n) + 2 * a (n - 1)

end

end A014318.P14069296911528600506

namespace A014318

/-- `A208355(2*n)+2*a(n-1)` -/
def P14069296911528600506.Spec : Prop :=
  ∀ n, P14069296911528600506.a n = A014318 n

end A014318

/-! ## A014318.P17380044237947530022

`A068875(n)/2+2*a(n-1)` with `a(0)=1`
-/

namespace A014318.P17380044237947530022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A068875 n : ℚ) / 2 + 2 * a (n - 1)

end

end A014318.P17380044237947530022

namespace A014318

/-- `A068875(n)/2+2*a(n-1)` -/
def P17380044237947530022.Spec : Prop :=
  ∀ n, P17380044237947530022.a n = (A014318 n : ℚ)

end A014318

/-! ## A014318.P8618944858882953193

`A089408(Δ[n²])+2*a(n-1)` with `a(0)=1`
-/

namespace A014318.P8618944858882953193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2 * a (n - 1)

end

end A014318.P8618944858882953193

namespace A014318

/-- `A089408(Δ[n²])+2*a(n-1)` -/
def P8618944858882953193.Spec : Prop :=
  ∀ n, P8618944858882953193.a n = A014318 n

end A014318

/-! ## A014318.P17259052661978240529

`ceil(A131428(n)/2)+2*a(n-1)` with `a(0)=1`
-/

namespace A014318.P17259052661978240529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A131428 n : ℚ) / 2⌉ + 2 * a (n - 1)

end

end A014318.P17259052661978240529

namespace A014318

/-- `ceil(A131428(n)/2)+2*a(n-1)` -/
def P17259052661978240529.Spec : Prop :=
  ∀ n, P17259052661978240529.a n = A014318 n

end A014318

/-! ## A014318.P5009939455212060889

`abs(A090192(Δ[n²]))+2*a(n-1)` with `a(0)=1`
-/

namespace A014318.P5009939455212060889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A090192 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat| + 2 * a (n - 1)

end

end A014318.P5009939455212060889

namespace A014318

/-- `abs(A090192(Δ[n²]))+2*a(n-1)` -/
def P5009939455212060889.Spec : Prop :=
  ∀ n, P5009939455212060889.a n = A014318 n

end A014318

/-! ## A014318.P16839540860408289615

`A139379(n+1)+A139379(n)`
-/

namespace A014318.P16839540860408289615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139379 (n + 1) + A139379 n

end

end A014318.P16839540860408289615

namespace A014318

/-- `A139379(n+1)+A139379(n)` -/
def P16839540860408289615.Spec : Prop :=
  ∀ n, P16839540860408289615.a n = A014318 n

end A014318

/-! ## A014318.P17442686164294804427

`2*A126221(n)-A000108(n)`
-/

namespace A014318.P17442686164294804427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126221 n - A000108 n

end

end A014318.P17442686164294804427

namespace A014318

/-- `2*A126221(n)-A000108(n)` -/
def P17442686164294804427.Spec : Prop :=
  ∀ n, P17442686164294804427.a n = A014318 n

end A014318

/-!
# A014319: Inverse of 310th cyclotomic polynomial.

The programs for A014319, there is no canonical definition to state claims against.
-/

/-! ## A014319.P9419477643162436306

`A014164(n)*A033999(n)`
-/

namespace A014319.P9419477643162436306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014164 n * A033999 n

end

end A014319.P9419477643162436306

/-!
# A014320: The next new gap between successive primes.

The programs for A014320, there is no canonical definition to state claims against.
-/

/-! ## A014320.P4806013457342312626

`A335367(n+1)-A335366(n+1)`
-/

namespace A014320.P4806013457342312626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335367 (n + 1) - A335366 (n + 1)

end

end A014320.P4806013457342312626

/-! ## A014320.P16826625758405101427

`A335367(n%(n+1)+1)%A335366(n+1)`
-/

namespace A014320.P16826625758405101427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335367 (n % (n + 1) + 1)) (A335366 (n + 1))

end

end A014320.P16826625758405101427

/-! ## A014320.P18025884163829716372

`A335367(A000027(n+1))%A335366(n+1)`
-/

namespace A014320.P18025884163829716372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335367 (A000027 (n + 1)).toNat) (A335366 (n + 1))

end

end A014320.P18025884163829716372

/-! ## A014320.P5052469875744272401

`A065599(A335367(n+1)%A335366(n+1))`
-/

namespace A014320.P5052469875744272401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065599 (Int.tmod (A335367 (n + 1)) (A335366 (n + 1))).toNat

end

end A014320.P5052469875744272401

/-! ## A014320.P2199941233600749112

`A335367(A008619(2*n))%A335366(n+1)`
-/

namespace A014320.P2199941233600749112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335367 (A008619 (2 * n)).toNat) (A335366 (n + 1))

end

end A014320.P2199941233600749112

/-! ## A014320.P2286438807414074622

`A335367(A007318(C(2, n))+n)%A335366(n+1)`
-/

namespace A014320.P2286438807414074622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335367 (A007318 (Nat.choose 2 n) + (n : ℤ)).toNat) (A335366 (n + 1))

end

end A014320.P2286438807414074622

/-! ## A014320.P6324465366044210590

`lcm(A035214(a(n-1)), A058320(n-1))` with `a(0)=1`
-/

namespace A014320.P6324465366044210590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A035214 (a (n - 1))) (A058320 (n - 1))

end

end A014320.P6324465366044210590

/-! ## A014320.P6657707164740435896

`A058320(n-A211095(a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A014320.P6657707164740435896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A058320 ((n : ℤ) - A211095 (a (n - 2)).toNat).toNat

end

end A014320.P6657707164740435896

/-!
# A014321: The next new gap between successive odd primes (divided by 2).

The programs for A014321, there is no canonical definition to state claims against.
-/

/-! ## A014321.P1619554285476115229

`A014320(n+2)/2`
-/

namespace A014321.P1619554285476115229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014320 (n + 2) : ℚ) / 2

end

end A014321.P1619554285476115229

/-! ## A014321.P12478723248643986004

`A001281(A014320(n+2))`
-/

namespace A014321.P12478723248643986004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A014320 (n + 2)).toNat

end

end A014321.P12478723248643986004

/-! ## A014321.P2489926928874838928

`A032742(A014320(n+2))%A016825(n)`
-/

namespace A014321.P2489926928874838928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (A014320 (n + 2)).toNat) (A016825 n)

end

end A014321.P2489926928874838928

/-! ## A014321.P1926319500231061010

`A032742(A014320(n+2))+A019590(n+5)`
-/

namespace A014321.P1926319500231061010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A014320 (n + 2)).toNat + A019590 (n + 5)

end

end A014321.P1926319500231061010

/-! ## A014321.P6067511493460676998

`A032742(A014320(n+2)%A185212(n+1))`
-/

namespace A014321.P6067511493460676998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Int.tmod (A014320 (n + 2)) (A185212 (n + 1))).toNat

end

end A014321.P6067511493460676998

/-! ## A014321.P18317943633673803705

`A058320(n)/2`
-/

namespace A014321.P18317943633673803705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058320 n : ℚ) / 2

end

end A014321.P18317943633673803705

/-! ## A014321.P17486516026351373528

`A001281(A058320(n))`
-/

namespace A014321.P17486516026351373528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A058320 n).toNat

end

end A014321.P17486516026351373528

/-! ## A014321.P12316615784075949733

`A004524(A058320(n)+1)`
-/

namespace A014321.P12316615784075949733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A058320 n + 1).toNat

end

end A014321.P12316615784075949733

/-! ## A014321.P6804535308575786449

`A001057(A058320(n)-1)`
-/

namespace A014321.P6804535308575786449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A058320 n - 1).toNat

end

end A014321.P6804535308575786449

/-! ## A014321.P17898618889178000557

`A003602(A058320(n)-1)`
-/

namespace A014321.P17898618889178000557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A058320 n - 1).toNat

end

end A014321.P17898618889178000557

/-!
# A014322: Convolution of Bell numbers with themselves.

The programs for A014322, there is no canonical definition to state claims against.
-/

/-! ## A014322.P17839956629276904120

`A292870(∑[3+n])`
-/

namespace A014322.P17839956629276904120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014322.P17839956629276904120

/-! ## A014322.P16728289207683674405

`record[A205574(∑[n]+2)]`
-/

namespace A014322.P16728289207683674405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014322.P16728289207683674405

/-! ## A014322.P8695265502921428165

`A205574(3+∑[n+2])`
-/

namespace A014322.P8695265502921428165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (3 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014322.P8695265502921428165

/-! ## A014322.P11145192809036083459

`record[A292870(A060577(n)-n)]`
-/

namespace A014322.P11145192809036083459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (A060577 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014322.P11145192809036083459

/-! ## A014322.P4636967865055160744

`∑{#}[n, A000110(#)*A000110(n-#)]`
-/

namespace A014322.P4636967865055160744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000110 k * A000110 (n - k)

end

end A014322.P4636967865055160744

/-! ## A014322.P5446601183084159886

`record[A292870(A055998(A257684(n)))]`
-/

namespace A014322.P5446601183084159886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (A055998 (A257684 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014322.P5446601183084159886

/-!
# A014323: Three-fold convolution of Bell numbers with themselves.

The programs for A014323, there is no canonical definition to state claims against.
-/

/-! ## A014323.P3861980136064285760

`∑{#}[n, A000110(#)*A014322(n-#)]`
-/

namespace A014323.P3861980136064285760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000110 k * A014322 (n - k)

end

end A014323.P3861980136064285760

/-! ## A014323.P17885823952253486196

`A292870(∑[n+3]+n+3)`
-/

namespace A014323.P17885823952253486196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A014323.P17885823952253486196

/-! ## A014323.P17700914138358433870

`record[A292870(abs(A046691(n)))]`
-/

namespace A014323.P17700914138358433870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014323.P17700914138358433870

/-! ## A014323.P8687967810641261624

`record[A243148(n)*A292870(n)]`
-/

namespace A014323.P8687967810641261624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 n * A292870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014323.P8687967810641261624

/-! ## A014323.P15793170724819313236

`record[A292870(A060577(A008615(n)))]`
-/

namespace A014323.P15793170724819313236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (A060577 (A008615 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014323.P15793170724819313236

/-! ## A014323.P14036728468605107800

`A205574(A167614(n+2))`
-/

namespace A014323.P14036728468605107800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (A167614 (n + 2)).toNat

end

end A014323.P14036728468605107800

/-! ## A014323.P608657093774162686

`A205574(A000096(n+2)+4)`
-/

namespace A014323.P608657093774162686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (A000096 (n + 2) + 4).toNat

end

end A014323.P608657093774162686

/-! ## A014323.P16231058338331000195

`record[A205574(A000124(n+1)+2)]`
-/

namespace A014323.P16231058338331000195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (A000124 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014323.P16231058338331000195

/-!
# A014324: Inverse of 315th cyclotomic polynomial.

The programs for A014324, there is no canonical definition to state claims against.
-/

/-! ## A014324.P46443710803511420

`A010892(n)*A014639(n)`
-/

namespace A014324.P46443710803511420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A014639 n

end

end A014324.P46443710803511420

/-!
# A014325: Four-fold convolution of Bell numbers with themselves.

The programs for A014325, there is no canonical definition to state claims against.
-/

/-! ## A014325.P8934303409611583428

`∑{#}[n, A014322(#)*A014322(n-#)]`
-/

namespace A014325.P8934303409611583428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A014322 k * A014322 (n - k)

end

end A014325.P8934303409611583428

/-! ## A014325.P11358052667589821897

`record[A292870(A052905(n))]`
-/

namespace A014325.P11358052667589821897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014325.P11358052667589821897

/-! ## A014325.P3890228245371004609

`A292870(A052905(n+2))`
-/

namespace A014325.P3890228245371004609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (A052905 (n + 2)).toNat

end

end A014325.P3890228245371004609

/-! ## A014325.P11765217546323563549

`A292870(Δ[A264443(n)]-1)`
-/

namespace A014325.P11765217546323563549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (f1 (n + 1) - f1 n - 1).toNat

end

end A014325.P11765217546323563549

/-! ## A014325.P9050404993906316708

`A292870(Δ[A111396(n)]-2)`
-/

namespace A014325.P9050404993906316708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (f1 (n + 1) - f1 n - 2).toNat

end

end A014325.P9050404993906316708

/-! ## A014325.P4647863803563655736

`record[A292870(A055999(n)+1)]`
-/

namespace A014325.P4647863803563655736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014325.P4647863803563655736

/-! ## A014325.P4402640796986038348

`record[A292870(A060577(n)-1)]`
-/

namespace A014325.P4402640796986038348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (A060577 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014325.P4402640796986038348

/-! ## A014325.P18296926301465692476

`A292870(A167614(n+4)-8)`
-/

namespace A014325.P18296926301465692476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (A167614 (n + 4) - 8).toNat

end

end A014325.P18296926301465692476

/-! ## A014325.P13221595075439285979

`record[A292870(abs(A046691(n))-1)]`
-/

namespace A014325.P13221595075439285979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014325.P13221595075439285979

/-! ## A014325.P3260683856028548252

`record[A292870(A046691(n+1)-1)]`
-/

namespace A014325.P3260683856028548252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014325.P3260683856028548252

/-!
# A014326: Convolution of partition numbers and Bell numbers.

The programs for A014326, there is no canonical definition to state claims against.
-/

/-! ## A014326.P4829059890687121639

`∑[A292503(n)]`
-/

namespace A014326.P4829059890687121639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014326.P4829059890687121639

/-! ## A014326.P9528997443964432337

`∑[A292745(∑[4*n])]`
-/

namespace A014326.P9528997443964432337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014326.P9528997443964432337

/-! ## A014326.P7553721253005508707

`∑[A292745(A008586(∑[n]))%(10^(n+1)-2)]`
-/

namespace A014326.P7553721253005508707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292745 (A008586 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat) ((10 ^ (n + 1) : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014326.P7553721253005508707

/-! ## A014326.P1430389975126027383

`∑[A292745(A001844(n)+n+n)^A178334(n)]`
-/

namespace A014326.P1430389975126027383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292745 (A001844 n + (n : ℤ) + (n : ℤ)).toNat : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014326.P1430389975126027383

/-! ## A014326.P13230476975495641901

`∑[A292745(A001844(n)+n+n)^(1-A019590(n+1))]`
-/

namespace A014326.P13230476975495641901
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292745 (A001844 n + (n : ℤ) + (n : ℤ)).toNat : ℚ) ^ (1 - A019590 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014326.P13230476975495641901

/-!
# A014327: Convolution of Bell and Catalan numbers.

The programs for A014327, the canonical program `A014327.P17205633815240297737` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014327 has offset 0).

The definition of A014327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014327.P17205633815240297737

`∑{#}[n, A000110(#)*A000108(n-#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014327

/-- `∑{#}[n, A000110(#)*A000108(n-#)]` -/
def P17205633815240297737.Spec : Prop :=
  ∀ n, P17205633815240297737.a n = A014327 n

theorem P17205633815240297737.correct : P17205633815240297737.Spec := by
  intro n
  simp only [A014327]

end A014327

/-! ## A014327.P10811722835823598793

`A289439(A014322(n)+A000108(n+1))`
-/

namespace A014327.P10811722835823598793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (A014322 n + A000108 (n + 1)).toNat

end

end A014327.P10811722835823598793

namespace A014327

/-- `A289439(A014322(n)+A000108(n+1))` -/
def P10811722835823598793.Spec : Prop :=
  ∀ n, P10811722835823598793.a n = A014327 n

end A014327

/-! ## A014327.P12556850266574685444

`A004525(A014322(n)-A115140(n+2))`
-/

namespace A014327.P12556850266574685444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A014322 n - A115140 (n + 2)).toNat

end

end A014327.P12556850266574685444

namespace A014327

/-- `A004525(A014322(n)-A115140(n+2))` -/
def P12556850266574685444.Spec : Prop :=
  ∀ n, P12556850266574685444.a n = A014327 n

end A014327

/-! ## A014327.P12877354633476846657

`A004526(A014322(n)-A115140(n+2))`
-/

namespace A014327.P12877354633476846657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A014322 n - A115140 (n + 2)).toNat

end

end A014327.P12877354633476846657

namespace A014327

/-- `A004526(A014322(n)-A115140(n+2))` -/
def P12877354633476846657.Spec : Prop :=
  ∀ n, P12877354633476846657.a n = A014327 n

end A014327

/-!
# A014328: Inverse of 319th cyclotomic polynomial.

The programs for A014328, there is no canonical definition to state claims against.
-/

/-! ## A014328.P17490792007644854201

`A014647(n)*A033999(n)`
-/

namespace A014328.P17490792007644854201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014647 n * A033999 n

end

end A014328.P17490792007644854201

/-!
# A014329: Convolution of partition numbers and Catalan numbers.

The programs for A014329, there is no canonical definition to state claims against.
-/

/-! ## A014329.P18061310565858959961

`A183118(n)+A178334(A000142(n))`
-/

namespace A014329.P18061310565858959961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183118 n + A178334 (A000142 n).toNat

end

end A014329.P18061310565858959961

/-! ## A014329.P17513521937900849094

`A183125(n)+A178334(A000142(n))`
-/

namespace A014329.P17513521937900849094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183125 n + A178334 (A000142 n).toNat

end

end A014329.P17513521937900849094

/-! ## A014329.P1008337278866185184

`A183125(n)+A178334(A060726(n))`
-/

namespace A014329.P1008337278866185184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183125 n + A178334 (A060726 n).toNat

end

end A014329.P1008337278866185184

/-!
# A014330: Exponential convolution of Catalan numbers with themselves.

The programs for A014330, the canonical program `A014330.P4740914488366063403` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014330 has offset 0).

The definition of A014330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014330.P4740914488366063403

`∑{#}[n, C(n, #)*A000108(#)*A000108(n-#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014330

/-- `∑{#}[n, C(n, #)*A000108(#)*A000108(n-#)]` -/
def P4740914488366063403.Spec : Prop :=
  ∀ n, P4740914488366063403.a n = A014330 n

theorem P4740914488366063403.correct : P4740914488366063403.Spec := by
  intro n
  simp only [A014330]

end A014330

/-! ## A014330.P10494550463582492623

`A204452(n)+A203577(n)`
-/

namespace A014330.P10494550463582492623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204452 n + A203577 n

end

end A014330.P10494550463582492623

namespace A014330

/-- `A204452(n)+A203577(n)` -/
def P10494550463582492623.Spec : Prop :=
  ∀ n, P10494550463582492623.a n = A014330 n

theorem P10494550463582492623.correct : P10494550463582492623.Spec := by
  intro n
  simp only [A014330, Nat.add_sub_cancel, A014330.P10494550463582492623.a, A014330.P4740914488366063403.f1, A014330.P4740914488366063403.a, A000108, A000108.P17551949696095299361.a, A203577, A203577.P16876113419730567641.f1, A203577.P16876113419730567641.a, A204452, A204452.P10666909078565737077.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014330

/-! ## A014330.P2331141645394919406

`A294498(∑[n+3])`
-/

namespace A014330.P2331141645394919406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294498 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014330.P2331141645394919406

namespace A014330

/-- `A294498(∑[n+3])` -/
def P2331141645394919406.Spec : Prop :=
  ∀ n, P2331141645394919406.a n = A014330 n

end A014330

/-! ## A014330.P12123560259233391111

`record[A294498(A069981(n))]`
-/

namespace A014330.P12123560259233391111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294498 (A069981 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014330.P12123560259233391111

namespace A014330

/-- `record[A294498(A069981(n))]` -/
def P12123560259233391111.Spec : Prop :=
  ∀ n, P12123560259233391111.a n = A014330 n

end A014330

/-! ## A014330.P9871527529739079585

`A203577(n)-(A000007(A009766(n))-A204452(n))`
-/

namespace A014330.P9871527529739079585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203577 n - (A000007 (A009766 n).toNat - A204452 n)

end

end A014330.P9871527529739079585

namespace A014330

/-- `A203577(n)-(A000007(A009766(n))-A204452(n))` -/
def P9871527529739079585.Spec : Prop :=
  ∀ n, P9871527529739079585.a n = A014330 n

end A014330

/-!
# A014331: Inverse of 322nd cyclotomic polynomial.

The programs for A014331, there is no canonical definition to state claims against.
-/

/-! ## A014331.P11919549944814244298

`A014170(n)*A033999(n)`
-/

namespace A014331.P11919549944814244298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014170 n * A033999 n

end

end A014331.P11919549944814244298

/-!
# A014332: Inverse of 323rd cyclotomic polynomial.

The programs for A014332, there is no canonical definition to state claims against.
-/

/-! ## A014332.P6048418994144310024

`A014655(n)*A033999(n)`
-/

namespace A014332.P6048418994144310024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014655 n * A033999 n

end

end A014332.P6048418994144310024

/-!
# A014333: Three-fold exponential convolution of Catalan numbers with themselves.

The programs for A014333, there is no canonical definition to state claims against.
-/

/-! ## A014333.P14947721376483548292

`A294498(∑[n+3]+n+3)`
-/

namespace A014333.P14947721376483548292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294498 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A014333.P14947721376483548292

/-! ## A014333.P16546736342057945873

`record[A294498(abs(A046691(n)))]`
-/

namespace A014333.P16546736342057945873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294498 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014333.P16546736342057945873

/-! ## A014333.P7664016997939370805

`record[A294498(abs(A248158(n)))]`
-/

namespace A014333.P7664016997939370805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294498 |A248158 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014333.P7664016997939370805

/-! ## A014333.P16905893619142126121

`A294498(A046691(n+2))+A090192(2*(n+1))`
-/

namespace A014333.P16905893619142126121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294498 (A046691 (n + 2)).toNat + A090192 (2 * (n + 1))

end

end A014333.P16905893619142126121

/-!
# A014334: Exponential convolution of Fibonacci numbers with themselves.

The programs for A014334, the canonical program `A014334.P13857905234463766476` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014334 has offset 0).

The definition of A014334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014334.P15403743770044147496

`ogf(2x^2/(1-3x-2x^2+4x^3))`
-/

namespace A014334.P15403743770044147496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -3, -2, 4] n

end

end A014334.P15403743770044147496

namespace A014334

/-- `ogf(2x^2/(1-3x-2x^2+4x^3))` -/
def P15403743770044147496.Spec : Prop :=
  ∀ n, P15403743770044147496.a n = A014334 n

end A014334

/-! ## A014334.P13857905234463766476

`3*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014334

/-- `3*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P13857905234463766476.Spec : Prop :=
  ∀ n, P13857905234463766476.a n = A014334 n

theorem P13857905234463766476.correct : P13857905234463766476.Spec := by
  intro n
  simp only [A014334]

end A014334

/-! ## A014334.P2510596000691154827

`2*A014335(n)`
-/

namespace A014334.P2510596000691154827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014335 n

end

end A014334.P2510596000691154827

namespace A014334

/-- `2*A014335(n)` -/
def P2510596000691154827.Spec : Prop :=
  ∀ n, P2510596000691154827.a n = A014334 n

end A014334

/-! ## A014334.P17969574952651869954

`∑{#}[n, A000045(#)*A000045(n-#)*C(n, #)]`
-/

namespace A014334.P17969574952651869954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000045 k * A000045 (n - k) * (Nat.choose n k : ℤ)

end

end A014334.P17969574952651869954

namespace A014334

/-- `∑{#}[n, A000045(#)*A000045(n-#)*C(n, #)]` -/
def P17969574952651869954.Spec : Prop :=
  ∀ n, P17969574952651869954.a n = A014334 n

end A014334

/-! ## A014334.P14953265004186296235

`(2^n*A000032(n)-2)/5`
-/

namespace A014334.P14953265004186296235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) * A000032 n - 2 : ℚ) / 5

end

end A014334.P14953265004186296235

namespace A014334

/-- `(2^n*A000032(n)-2)/5` -/
def P14953265004186296235.Spec : Prop :=
  ∀ n, P14953265004186296235.a n = (A014334 n : ℚ)

end A014334

/-! ## A014334.P1243814007915258419

`(∑{#}[n, A000032(#)*A000032(n-#)*C(n, #)]-4)/5`
-/

namespace A014334.P1243814007915258419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), A000032 k * A000032 (n - k) * (Nat.choose n k : ℤ) - 4 : ℤ) : ℚ) / 5

end

end A014334.P1243814007915258419

namespace A014334

/-- `(∑{#}[n, A000032(#)*A000032(n-#)*C(n, #)]-4)/5` -/
def P1243814007915258419.Spec : Prop :=
  ∀ n, P1243814007915258419.a n = (A014334 n : ℚ)

end A014334

/-! ## A014334.P17631513579523847002

`2*(2*a(n-2)+a(n-1)+1)` with `a(0)=0, a(1)=0`
-/

namespace A014334.P17631513579523847002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * (2 * a (n - 2) + (a (n - 1) + 1))

end

end A014334.P17631513579523847002

namespace A014334

/-- `2*(2*a(n-2)+a(n-1)+1)` -/
def P17631513579523847002.Spec : Prop :=
  ∀ n, (P17631513579523847002.a n : ℤ) = A014334 n

end A014334

/-! ## A014334.P13364627313110472148

`floor(2^n/5*A000032(n))`
-/

namespace A014334.P13364627313110472148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) / 5 * (A000032 n : ℚ)⌋

end

end A014334.P13364627313110472148

namespace A014334

/-- `floor(2^n/5*A000032(n))` -/
def P13364627313110472148.Spec : Prop :=
  ∀ n, P13364627313110472148.a n = A014334 n

end A014334

/-! ## A014334.P1820446284962044561

`A204451(n)+A203578(n)`
-/

namespace A014334.P1820446284962044561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204451 n + A203578 n

end

end A014334.P1820446284962044561

namespace A014334

/-- `A204451(n)+A203578(n)` -/
def P1820446284962044561.Spec : Prop :=
  ∀ n, P1820446284962044561.a n = A014334 n

theorem P1820446284962044561.correct : P1820446284962044561.Spec := by
  intro n
  simp only [A014334, Nat.add_sub_cancel, A014334.P1820446284962044561.a, A014334.P13857905234463766476.a, A203578, A203578.P17701711027380631501.f1, A203578.P17701711027380631501.a, A204451, A204451.P6356091905252605546.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014334

/-! ## A014334.P4382770738018885957

`lcm(A014335(n), A040000(n))`
-/

namespace A014334.P4382770738018885957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014335 n) (A040000 n)

end

end A014334.P4382770738018885957

namespace A014334

/-- `lcm(A014335(n), A040000(n))` -/
def P4382770738018885957.Spec : Prop :=
  ∀ n, (P4382770738018885957.a n : ℤ) = A014334 n

end A014334

/-! ## A014334.P15665855431275047127

`∑[A118658(n)*A166444(n)]`
-/

namespace A014334.P15665855431275047127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n * A166444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014334.P15665855431275047127

namespace A014334

/-- `∑[A118658(n)*A166444(n)]` -/
def P15665855431275047127.Spec : Prop :=
  ∀ n, P15665855431275047127.a n = A014334 n

end A014334

/-! ## A014334.P7940081475103805656

`∑[A131577(n)*A212804(n)]`
-/

namespace A014334.P7940081475103805656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014334.P7940081475103805656

namespace A014334

/-- `∑[A131577(n)*A212804(n)]` -/
def P7940081475103805656.Spec : Prop :=
  ∀ n, P7940081475103805656.a n = A014334 n

end A014334

/-! ## A014334.P9122966937765048028

`∑[2*A085449(log2(A011782(n)))]`
-/

namespace A014334.P9122966937765048028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085449 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014334.P9122966937765048028

namespace A014334

/-- `∑[2*A085449(log2(A011782(n)))]` -/
def P9122966937765048028.Spec : Prop :=
  ∀ n, P9122966937765048028.a n = A014334 n

end A014334

/-! ## A014334.P3292714497724076805

`∑[∑[A166444(n)]*A212804(n)]`
-/

namespace A014334.P3292714497724076805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014334.P3292714497724076805

namespace A014334

/-- `∑[∑[A166444(n)]*A212804(n)]` -/
def P3292714497724076805.Spec : Prop :=
  ∀ n, P3292714497724076805.a n = A014334 n

end A014334

/-! ## A014334.P14415939349324324080

`∑[Δ[A000045(n)]*A131577(n)]`
-/

namespace A014334.P14415939349324324080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014334.P14415939349324324080

namespace A014334

/-- `∑[Δ[A000045(n)]*A131577(n)]` -/
def P14415939349324324080.Spec : Prop :=
  ∀ n, P14415939349324324080.a n = A014334 n

end A014334

/-! ## A014334.P9940103075757915523

`∑[Δ[A011782(n)]*A212804(n)]`
-/

namespace A014334.P9940103075757915523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014334.P9940103075757915523

namespace A014334

/-- `∑[Δ[A011782(n)]*A212804(n)]` -/
def P9940103075757915523.Spec : Prop :=
  ∀ n, P9940103075757915523.a n = A014334 n

end A014334

/-! ## A014334.P6108227796711296765

`2*(∑[A085449(n)]-A085449(n))`
-/

namespace A014334.P6108227796711296765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A085449 n)

end

end A014334.P6108227796711296765

namespace A014334

/-- `2*(∑[A085449(n)]-A085449(n))` -/
def P6108227796711296765.Spec : Prop :=
  ∀ n, P6108227796711296765.a n = A014334 n

end A014334

/-! ## A014334.P2931409663214247301

`∑[Δ[A000045(n)]*A011782(n)]-1`
-/

namespace A014334.P2931409663214247301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014334.P2931409663214247301

namespace A014334

/-- `∑[Δ[A000045(n)]*A011782(n)]-1` -/
def P2931409663214247301.Spec : Prop :=
  ∀ n, P2931409663214247301.a n = A014334 n

end A014334

/-! ## A014334.P169856792729301583

`A014335(A005843(n)/2)+A014335(n)`
-/

namespace A014334.P169856792729301583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014335 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A014335 n

end

end A014334.P169856792729301583

namespace A014334

/-- `A014335(A005843(n)/2)+A014335(n)` -/
def P169856792729301583.Spec : Prop :=
  ∀ n, P169856792729301583.a n = A014334 n

end A014334

/-! ## A014334.P4868428759710822218

`A014335(A005843(n)-n)+A014335(n)`
-/

namespace A014334.P4868428759710822218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014335 (A005843 n - (n : ℤ)).toNat + A014335 n

end

end A014334.P4868428759710822218

namespace A014334

/-- `A014335(A005843(n)-n)+A014335(n)` -/
def P4868428759710822218.Spec : Prop :=
  ∀ n, P4868428759710822218.a n = A014334 n

end A014334

/-!
# A014335: Exponential convolution of Fibonacci numbers with themselves (divided by 2).

The programs for A014335, the canonical program `A014335.P18281927150287947530` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014335 has offset 0).

The definition of A014335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014335.P11581280523768988345

`ogf(x^2/(1-3x-2x^2+4x^3))`
-/

namespace A014335.P11581280523768988345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -3, -2, 4] n

end

end A014335.P11581280523768988345

namespace A014335

/-- `ogf(x^2/(1-3x-2x^2+4x^3))` -/
def P11581280523768988345.Spec : Prop :=
  ∀ n, P11581280523768988345.a n = A014335 n

end A014335

/-! ## A014335.P18281927150287947530

`2*a(n-1)+4*a(n-2)+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014335

/-- `2*a(n-1)+4*a(n-2)+1` -/
def P18281927150287947530.Spec : Prop :=
  ∀ n, (P18281927150287947530.a n : ℤ) = A014335 n

theorem P18281927150287947530.correct : P18281927150287947530.Spec := by
  intro n
  simp only [A014335]

end A014335

/-! ## A014335.P17509027644990312095

`A014334(n)/2`
-/

namespace A014335.P17509027644990312095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014334 n : ℚ) / 2

end

end A014335.P17509027644990312095

namespace A014335

/-- `A014334(n)/2` -/
def P17509027644990312095.Spec : Prop :=
  ∀ n, P17509027644990312095.a n = (A014335 n : ℚ)

end A014335

/-! ## A014335.P6675126936868115946

`(A203579(n)-2)/5`
-/

namespace A014335.P6675126936868115946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203579 n - 2 : ℚ) / 5

end

end A014335.P6675126936868115946

namespace A014335

/-- `(A203579(n)-2)/5` -/
def P6675126936868115946.Spec : Prop :=
  ∀ n, P6675126936868115946.a n = (A014335 n : ℚ)

theorem P6675126936868115946.correct : P6675126936868115946.Spec := by
  intro n
  simp only [A014335, Nat.add_sub_cancel, A014335.P6675126936868115946.a, A014335.P18281927150287947530.a, A203579, A203579.P360852745112911251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014335

/-! ## A014335.P2023474721863989590

`(2^n*A000032(n)-2)/10`
-/

namespace A014335.P2023474721863989590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) * A000032 n - 2 : ℚ) / 10

end

end A014335.P2023474721863989590

namespace A014335

/-- `(2^n*A000032(n)-2)/10` -/
def P2023474721863989590.Spec : Prop :=
  ∀ n, P2023474721863989590.a n = (A014335 n : ℚ)

end A014335

/-! ## A014335.P12907097538142815618

`1+(a(n-1)+2*a(n-2))*2` with `a(0)=0, a(1)=0`
-/

namespace A014335.P12907097538142815618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 + (a (n - 1) + 2 * a (n - 2)) * 2

end

end A014335.P12907097538142815618

namespace A014335

/-- `1+(a(n-1)+2*a(n-2))*2` -/
def P12907097538142815618.Spec : Prop :=
  ∀ n, (P12907097538142815618.a n : ℤ) = A014335 n

theorem P12907097538142815618.correct : P12907097538142815618.Spec := by
  intro n
  simp only [A014335, Nat.add_sub_cancel, A014335.P12907097538142815618.a, A014335.P18281927150287947530.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A014335

/-! ## A014335.P9685012335013482422

`A085449(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A014335.P9685012335013482422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A085449 (n - 1) + a (n - 1)

end

end A014335.P9685012335013482422

namespace A014335

/-- `A085449(n-1)+a(n-1)` -/
def P9685012335013482422.Spec : Prop :=
  ∀ n, P9685012335013482422.a n = A014335 n

end A014335

/-! ## A014335.P547417229183997175

`∑[A085449(log2(A011782(n)))]`
-/

namespace A014335.P547417229183997175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014335.P547417229183997175

namespace A014335

/-- `∑[A085449(log2(A011782(n)))]` -/
def P547417229183997175.Spec : Prop :=
  ∀ n, P547417229183997175.a n = A014335 n

end A014335

/-! ## A014335.P16722330749642781698

`∑[A085449(A004273(n)-n)]`
-/

namespace A014335.P16722330749642781698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014335.P16722330749642781698

namespace A014335

/-- `∑[A085449(A004273(n)-n)]` -/
def P16722330749642781698.Spec : Prop :=
  ∀ n, P16722330749642781698.a n = A014335 n

end A014335

/-! ## A014335.P17717228649864056309

`∑[A166444(n)*A212804(n)]`
-/

namespace A014335.P17717228649864056309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014335.P17717228649864056309

namespace A014335

/-- `∑[A166444(n)*A212804(n)]` -/
def P17717228649864056309.Spec : Prop :=
  ∀ n, P17717228649864056309.a n = A014335 n

end A014335

/-! ## A014335.P14969665098125838981

`∑[A118658(n)/2*A166444(n)]`
-/

namespace A014335.P14969665098125838981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118658 n : ℚ) / 2 * (A166444 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014335.P14969665098125838981

namespace A014335

/-- `∑[A118658(n)/2*A166444(n)]` -/
def P14969665098125838981.Spec : Prop :=
  ∀ n, P14969665098125838981.a n = (A014335 n : ℚ)

end A014335

/-! ## A014335.P16966179312898700151

`∑[A131577(n)/2*A212804(n)]`
-/

namespace A014335.P16966179312898700151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 n : ℚ) / 2 * (A212804 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014335.P16966179312898700151

namespace A014335

/-- `∑[A131577(n)/2*A212804(n)]` -/
def P16966179312898700151.Spec : Prop :=
  ∀ n, P16966179312898700151.a n = (A014335 n : ℚ)

end A014335

/-! ## A014335.P10117063996939493962

`∑[A085449(n)]-A085449(n)`
-/

namespace A014335.P10117063996939493962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A085449 n

end

end A014335.P10117063996939493962

namespace A014335

/-- `∑[A085449(n)]-A085449(n)` -/
def P10117063996939493962.Spec : Prop :=
  ∀ n, P10117063996939493962.a n = A014335 n

end A014335

/-! ## A014335.P306372370834248633

`floor(A052899(n)/4)`
-/

namespace A014335.P306372370834248633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052899 n : ℚ) / 4⌋

end

end A014335.P306372370834248633

namespace A014335

/-- `floor(A052899(n)/4)` -/
def P306372370834248633.Spec : Prop :=
  ∀ n, P306372370834248633.a n = A014335 n

end A014335

/-! ## A014335.P15460538985614913837

`floor(A084057(n)/5)`
-/

namespace A014335.P15460538985614913837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084057 n : ℚ) / 5⌋

end

end A014335.P15460538985614913837

namespace A014335

/-- `floor(A084057(n)/5)` -/
def P15460538985614913837.Spec : Prop :=
  ∀ n, P15460538985614913837.a n = A014335 n

end A014335

/-! ## A014335.P4146365693235587581

`(∑[2^n*Δ[A000045(n)]]-1)/4`
-/

namespace A014335.P4146365693235587581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 4

end

end A014335.P4146365693235587581

namespace A014335

/-- `(∑[2^n*Δ[A000045(n)]]-1)/4` -/
def P4146365693235587581.Spec : Prop :=
  ∀ n, P4146365693235587581.a n = (A014335 n : ℚ)

end A014335

/-! ## A014335.P15591314724729570469

`A084057(n)-A052899(n)`
-/

namespace A014335.P15591314724729570469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n - A052899 n

end

end A014335.P15591314724729570469

namespace A014335

/-- `A084057(n)-A052899(n)` -/
def P15591314724729570469.Spec : Prop :=
  ∀ n, P15591314724729570469.a n = A014335 n

end A014335

/-! ## A014335.P16156209243399253878

`A087131(n)/2-A052899(n)`
-/

namespace A014335.P16156209243399253878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087131 n : ℚ) / 2 - (A052899 n : ℚ)

end

end A014335.P16156209243399253878

namespace A014335

/-- `A087131(n)/2-A052899(n)` -/
def P16156209243399253878.Spec : Prop :=
  ∀ n, P16156209243399253878.a n = (A014335 n : ℚ)

end A014335

/-! ## A014335.P8025883151269930220

`(A063727(n)-A081057(n))/2`
-/

namespace A014335.P8025883151269930220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063727 n - A081057 n : ℚ) / 2

end

end A014335.P8025883151269930220

namespace A014335

/-- `(A063727(n)-A081057(n))/2` -/
def P8025883151269930220.Spec : Prop :=
  ∀ n, P8025883151269930220.a n = (A014335 n : ℚ)

end A014335

/-! ## A014335.P4466689420563762899

`(∑[A084057(n)]-A081057(n))/2`
-/

namespace A014335.P4466689420563762899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A081057 n : ℤ) : ℚ) / 2

end

end A014335.P4466689420563762899

namespace A014335

/-- `(∑[A084057(n)]-A081057(n))/2` -/
def P4466689420563762899.Spec : Prop :=
  ∀ n, P4466689420563762899.a n = (A014335 n : ℚ)

end A014335

/-!
# A014336: Three-fold exponential convolution of Fibonacci numbers with themselves.

The programs for A014336, the canonical program `A014336.P9016764146916550331` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014336 has offset 0).

The definition of A014336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014336.P10187445273365455385

`ogf(6x^3/(1-6x+x^2+24x^3-9x^4))`
-/

namespace A014336.P10187445273365455385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 6] [1, -6, 1, 24, -9] n

end

end A014336.P10187445273365455385

namespace A014336

/-- `ogf(6x^3/(1-6x+x^2+24x^3-9x^4))` -/
def P10187445273365455385.Spec : Prop :=
  ∀ n, P10187445273365455385.a n = A014336 n

end A014336

/-! ## A014336.P6506479204039993501

`6*A014337(n)`
-/

namespace A014336.P6506479204039993501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A014337 n

end

end A014336.P6506479204039993501

namespace A014336

/-- `6*A014337(n)` -/
def P6506479204039993501.Spec : Prop :=
  ∀ n, P6506479204039993501.a n = A014336 n

end A014336

/-! ## A014336.P9016764146916550331

`(3^n*A000045(n)-3*A000045(2*n))/5`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014336

/-- `(3^n*A000045(n)-3*A000045(2*n))/5` -/
def P9016764146916550331.Spec : Prop :=
  ∀ n, P9016764146916550331.a n = (A014336 n : ℚ)

end A014336

/-! ## A014336.P3973408417306540936

`A000045(n)*A098703(n)-A001654(n)`
-/

namespace A014336.P3973408417306540936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A098703 n - A001654 n

end

end A014336.P3973408417306540936

namespace A014336

/-- `A000045(n)*A098703(n)-A001654(n)` -/
def P3973408417306540936.Spec : Prop :=
  ∀ n, P3973408417306540936.a n = A014336 n

end A014336

/-! ## A014336.P9981243894207627457

`(A094688(n)-A099159(n))*A000045(n)`
-/

namespace A014336.P9981243894207627457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094688 n - A099159 n) * A000045 n

end

end A014336.P9981243894207627457

namespace A014336

/-- `(A094688(n)-A099159(n))*A000045(n)` -/
def P9981243894207627457.Spec : Prop :=
  ∀ n, P9981243894207627457.a n = A014336 n

end A014336

/-! ## A014336.P16493638568388406793

`(A098703(n)-A000045(n+1))*A000045(n)`
-/

namespace A014336.P16493638568388406793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098703 n - A000045 (n + 1)) * A000045 n

end

end A014336.P16493638568388406793

namespace A014336

/-- `(A098703(n)-A000045(n+1))*A000045(n)` -/
def P16493638568388406793.Spec : Prop :=
  ∀ n, P16493638568388406793.a n = A014336 n

end A014336

/-! ## A014336.P645315920944822310

`A000045(n)*A098703(n)-∑[A236191(n)²]`
-/

namespace A014336.P645315920944822310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A098703 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014336.P645315920944822310

namespace A014336

/-- `A000045(n)*A098703(n)-∑[A236191(n)²]` -/
def P645315920944822310.Spec : Prop :=
  ∀ n, P645315920944822310.a n = A014336 n

end A014336

/-!
# A014337: Three-fold exponential convolution of Fibonacci numbers with themselves (divided by 6).

The programs for A014337, the canonical program `A014337.P5624364044775650877` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014337 has offset 0).

The definition of A014337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014337.P13251517319314622290

`ogf(x^3/(1-6x+x^2+24x^3-9x^4))`
-/

namespace A014337.P13251517319314622290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -6, 1, 24, -9] n

end

end A014337.P13251517319314622290

namespace A014337

/-- `ogf(x^3/(1-6x+x^2+24x^3-9x^4))` -/
def P13251517319314622290.Spec : Prop :=
  ∀ n, P13251517319314622290.a n = A014337 n

end A014337

/-! ## A014337.P5624364044775650877

`(3^n*A000045(n)-3*A000045(2*n))/30`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014337

/-- `(3^n*A000045(n)-3*A000045(2*n))/30` -/
def P5624364044775650877.Spec : Prop :=
  ∀ n, P5624364044775650877.a n = (A014337 n : ℚ)

end A014337

/-! ## A014337.P14523043631557928292

`A014336(n)/6`
-/

namespace A014337.P14523043631557928292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014336 n : ℚ) / 6

end

end A014337.P14523043631557928292

namespace A014337

/-- `A014336(n)/6` -/
def P14523043631557928292.Spec : Prop :=
  ∀ n, P14523043631557928292.a n = (A014337 n : ℚ)

end A014337

/-! ## A014337.P213669183838552827

`A346415(A167614(A233583(n+1)-1))`
-/

namespace A014337.P213669183838552827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346415 (A167614 (A233583 (n + 1) - 1).toNat).toNat

end

end A014337.P213669183838552827

namespace A014337

/-- `A346415(A167614(A233583(n+1)-1))` -/
def P213669183838552827.Spec : Prop :=
  ∀ n, P213669183838552827.a n = A014337 n

end A014337

/-! ## A014337.P4723775886180847904

`A346415(A000217(A233583(n+1))+3)`
-/

namespace A014337.P4723775886180847904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346415 (A000217 (A233583 (n + 1)).toNat + 3).toNat

end

end A014337.P4723775886180847904

namespace A014337

/-- `A346415(A000217(A233583(n+1))+3)` -/
def P4723775886180847904.Spec : Prop :=
  ∀ n, P4723775886180847904.a n = A014337 n

end A014337

/-! ## A014337.P7290282096733866140

`A346415(A034856(n+1)-A004275(n))`
-/

namespace A014337.P7290282096733866140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346415 (A034856 (n + 1) - A004275 n).toNat

end

end A014337.P7290282096733866140

namespace A014337

/-- `A346415(A034856(n+1)-A004275(n))` -/
def P7290282096733866140.Spec : Prop :=
  ∀ n, P7290282096733866140.a n = A014337 n

end A014337

/-! ## A014337.P6620033684052996764

`A346415(A152950(n+1)%A000051(n))`
-/

namespace A014337.P6620033684052996764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346415 (Int.tmod (A152950 (n + 1)) (A000051 n)).toNat

end

end A014337.P6620033684052996764

namespace A014337

/-- `A346415(A152950(n+1)%A000051(n))` -/
def P6620033684052996764.Spec : Prop :=
  ∀ n, P6620033684052996764.a n = A014337 n

end A014337

/-!
# A014338: Inverse of 329th cyclotomic polynomial.

The programs for A014338, there is no canonical definition to state claims against.
-/

/-! ## A014338.P3409540905267671380

`A014667(n)*A033999(n)`
-/

namespace A014338.P3409540905267671380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014667 n * A033999 n

end

end A014338.P3409540905267671380

/-!
# A014339: Inverse of 330th cyclotomic polynomial.

The programs for A014339, there is no canonical definition to state claims against.
-/

/-! ## A014339.P10631187612834466359

`A014174(n)*A033999(n)`
-/

namespace A014339.P10631187612834466359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014174 n * A033999 n

end

end A014339.P10631187612834466359

/-!
# A014340: Four-fold exponential convolution of Fibonacci numbers with themselves.

The programs for A014340, there is no canonical definition to state claims against.
-/

/-! ## A014340.P448034741927281586

`24*A014341(n)`
-/

namespace A014340.P448034741927281586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A014341 n

end

end A014340.P448034741927281586

/-! ## A014340.P6611390213376794948

`24*A346415(A077169(n+1)-1)`
-/

namespace A014340.P6611390213376794948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A346415 (A077169 (n + 1) - 1).toNat

end

end A014340.P6611390213376794948

/-! ## A014340.P16074063081031236141

`24*A346415(A145018(n+1))%A229233(n)`
-/

namespace A014340.P16074063081031236141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * Int.tmod (A346415 (A145018 (n + 1)).toNat) (A229233 n)

end

end A014340.P16074063081031236141

/-! ## A014340.P1381074424392227414

`24*A343609(A081920(n)-A081908(n))`
-/

namespace A014340.P1381074424392227414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A343609 (A081920 n - A081908 n).toNat

end

end A014340.P1381074424392227414

/-!
# A014341: Four-fold exponential convolution of Fibonacci numbers with themselves (divided by 24).

The programs for A014341, there is no canonical definition to state claims against.
-/

/-! ## A014341.P15476222516448829395

`A014340(n)/24`
-/

namespace A014341.P15476222516448829395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014340 n : ℚ) / 24

end

end A014341.P15476222516448829395

/-! ## A014341.P6103704585652078820

`A346415(A077169(n+1)-1)`
-/

namespace A014341.P6103704585652078820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346415 (A077169 (n + 1) - 1).toNat

end

end A014341.P6103704585652078820

/-! ## A014341.P14538376718053983820

`A346415(A145018(n+1))%A229233(n)`
-/

namespace A014341.P14538376718053983820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346415 (A145018 (n + 1)).toNat) (A229233 n)

end

end A014341.P14538376718053983820

/-! ## A014341.P534318101518790330

`A346415(A145018(n+1))%A000178(n)`
-/

namespace A014341.P534318101518790330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346415 (A145018 (n + 1)).toNat) (A000178 n)

end

end A014341.P534318101518790330

/-!
# A014342: Convolution of primes with themselves.

The programs for A014342, the canonical program `A014342.P14254626287387086048` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014342 has offset 1).

The definition of A014342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014342.P3382063904151549370

`∑[A067773(n+1)]`
-/

namespace A014342.P3382063904151549370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014342.P3382063904151549370

namespace A014342

/-- `∑[A067773(n+1)]` -/
def P3382063904151549370.Spec : Prop :=
  ∀ n, P3382063904151549370.a n = A014342 (n + 1)

end A014342

/-! ## A014342.P5181812044119037353

`A025129(n+1)+A024697(n+1)`
-/

namespace A014342.P5181812044119037353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025129 (n + 1) + A024697 (n + 1)

end

end A014342.P5181812044119037353

namespace A014342

/-- `A025129(n+1)+A024697(n+1)` -/
def P5181812044119037353.Spec : Prop :=
  ∀ n, P5181812044119037353.a n = A014342 (n + 1)

end A014342

/-! ## A014342.P14254626287387086048

`A209403(n+1)-A343531(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A014342

/-- `A209403(n+1)-A343531(n+1)` -/
def P14254626287387086048.Spec : Prop :=
  ∀ n, P14254626287387086048.a n = A014342 (n + 1)

theorem P14254626287387086048.correct : P14254626287387086048.Spec := by
  intro n
  simp only [A014342, Nat.add_sub_cancel]

end A014342

/-! ## A014342.P14752294501087379353

`∑[A343531(n+1)+A100484(n+1)]-A343531(n+1)`
-/

namespace A014342.P14752294501087379353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343531 (n + 1) + A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A343531 (n + 1)

end

end A014342.P14752294501087379353

namespace A014342

/-- `∑[A343531(n+1)+A100484(n+1)]-A343531(n+1)` -/
def P14752294501087379353.Spec : Prop :=
  ∀ n, P14752294501087379353.a n = A014342 (n + 1)

end A014342

/-! ## A014342.P8782392309256725969

`A023626(n+3)-A001747(n+3)`
-/

namespace A014342.P8782392309256725969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023626 (n + 3) - A001747 (n + 3)

end

end A014342.P8782392309256725969

namespace A014342

/-- `A023626(n+3)-A001747(n+3)` -/
def P8782392309256725969.Spec : Prop :=
  ∀ n, P8782392309256725969.a n = A014342 (n + 1)

end A014342

/-! ## A014342.P15585564945610994308

`A023626(n+3)-2*A008578(n+3)`
-/

namespace A014342.P15585564945610994308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023626 (n + 3) - 2 * A008578 (n + 3)

end

end A014342.P15585564945610994308

namespace A014342

/-- `A023626(n+3)-2*A008578(n+3)` -/
def P15585564945610994308.Spec : Prop :=
  ∀ n, P15585564945610994308.a n = A014342 (n + 1)

end A014342

/-! ## A014342.P10037545730353370283

`∑{#}[n, A000040(#+1)*A000040(n-#+1)]`
-/

namespace A014342.P10037545730353370283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000040 (k + 1) * A000040 ((n : ℤ) - (k : ℤ) + 1).toNat

end

end A014342.P10037545730353370283

namespace A014342

/-- `∑{#}[n, A000040(#+1)*A000040(n-#+1)]` -/
def P10037545730353370283.Spec : Prop :=
  ∀ n, P10037545730353370283.a n = A014342 (n + 1)

end A014342

/-! ## A014342.P10135531227401391750

`A340991(∑[n+2]+3)`
-/

namespace A014342.P10135531227401391750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A014342.P10135531227401391750

namespace A014342

/-- `A340991(∑[n+2]+3)` -/
def P10135531227401391750.Spec : Prop :=
  ∀ n, P10135531227401391750.a n = A014342 (n + 1)

end A014342

/-! ## A014342.P18171922196641829707

`A145518(A000217(n+1)+2)+A025129(n+1)`
-/

namespace A014342.P18171922196641829707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145518 (A000217 (n + 1) + 2).toNat + A025129 (n + 1)

end

end A014342.P18171922196641829707

namespace A014342

/-- `A145518(A000217(n+1)+2)+A025129(n+1)` -/
def P18171922196641829707.Spec : Prop :=
  ∀ n, P18171922196641829707.a n = A014342 (n + 1)

end A014342

/-!
# A014343: Three-fold convolution of primes with themselves.

The programs for A014343, the canonical program `A014343.P15416920076803200101` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014343 has offset 0).

The definition of A014343 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014342, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014343.P15416920076803200101

`∑{#}[n, A014342(n-#+1)*A000040(#+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A014343

/-- `∑{#}[n, A014342(n-#+1)*A000040(#+1)]` -/
def P15416920076803200101.Spec : Prop :=
  ∀ n, P15416920076803200101.a n = A014343 n

theorem P15416920076803200101.correct : P15416920076803200101.Spec := by
  intro n
  simp only [A014343]

end A014343

/-! ## A014343.P3027080292043391292

`A340991(A167614(n+2))`
-/

namespace A014343.P3027080292043391292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (A167614 (n + 2)).toNat

end

end A014343.P3027080292043391292

namespace A014343

/-- `A340991(A167614(n+2))` -/
def P3027080292043391292.Spec : Prop :=
  ∀ n, P3027080292043391292.a n = A014343 n

end A014343

/-! ## A014343.P13326999704919795486

`A340991(A052905(n)+8)`
-/

namespace A014343.P13326999704919795486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (A052905 n + 8).toNat

end

end A014343.P13326999704919795486

namespace A014343

/-- `A340991(A052905(n)+8)` -/
def P13326999704919795486.Spec : Prop :=
  ∀ n, P13326999704919795486.a n = A014343 n

end A014343

/-! ## A014343.P5408044479464655507

`A340991(A055999(n)+9)`
-/

namespace A014343.P5408044479464655507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (A055999 n + 9).toNat

end

end A014343.P5408044479464655507

namespace A014343

/-- `A340991(A055999(n)+9)` -/
def P5408044479464655507.Spec : Prop :=
  ∀ n, P5408044479464655507.a n = A014343 n

end A014343

/-! ## A014343.P3772741120947457478

`A340991(A166136(n+2)-3)`
-/

namespace A014343.P3772741120947457478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (A166136 (n + 2) - 3).toNat

end

end A014343.P3772741120947457478

namespace A014343

/-- `A340991(A166136(n+2)-3)` -/
def P3772741120947457478.Spec : Prop :=
  ∀ n, P3772741120947457478.a n = A014343 n

end A014343

/-! ## A014343.P16673904502248141486

`A340991(A000124(n+4)-(n+2))`
-/

namespace A014343.P16673904502248141486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (A000124 (n + 4) - (n + 2 : ℤ)).toNat

end

end A014343.P16673904502248141486

namespace A014343

/-- `A340991(A000124(n+4)-(n+2))` -/
def P16673904502248141486.Spec : Prop :=
  ∀ n, P16673904502248141486.a n = A014343 n

end A014343

/-! ## A014343.P3748792294755198308

`A340991(eq[8, A059268(n)])`
-/

namespace A014343.P3748792294755198308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014343.P3748792294755198308

namespace A014343

/-- `A340991(eq[8, A059268(n)])` -/
def P3748792294755198308.Spec : Prop :=
  ∀ n, P3748792294755198308.a n = A014343 n

end A014343

/-! ## A014343.P1582897000358758188

`A340991(eq[4, A002260(n+1)])`
-/

namespace A014343.P1582897000358758188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014343.P1582897000358758188

namespace A014343

/-- `A340991(eq[4, A002260(n+1)])` -/
def P1582897000358758188.Spec : Prop :=
  ∀ n, P1582897000358758188.a n = A014343 n

end A014343

/-! ## A014343.P2953771056471862960

`A340991(eq[3, A002262(n)])`
-/

namespace A014343.P2953771056471862960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014343.P2953771056471862960

namespace A014343

/-- `A340991(eq[3, A002262(n)])` -/
def P2953771056471862960.Spec : Prop :=
  ∀ n, P2953771056471862960.a n = A014343 n

end A014343

/-!
# A014344: Four-fold convolution of primes with themselves.

The programs for A014344, the canonical program `A014344.P10374461214958288225` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014344 has offset 0).

The definition of A014344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014344.P10374461214958288225

`∑{#}[n, A014342(#+1)*A014342(n-#+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A014344

/-- `∑{#}[n, A014342(#+1)*A014342(n-#+1)]` -/
def P10374461214958288225.Spec : Prop :=
  ∀ n, P10374461214958288225.a n = A014344 n

theorem P10374461214958288225.correct : P10374461214958288225.Spec := by
  intro n
  simp only [A014344]

end A014344

/-! ## A014344.P15984297640034967952

`A340991(A167614(n+3)+1)`
-/

namespace A014344.P15984297640034967952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (A167614 (n + 3) + 1).toNat

end

end A014344.P15984297640034967952

namespace A014344

/-- `A340991(A167614(n+3)+1)` -/
def P15984297640034967952.Spec : Prop :=
  ∀ n, P15984297640034967952.a n = A014344 n

end A014344

/-! ## A014344.P5045755432645896255

`A340991(A167499(n+3)-1)`
-/

namespace A014344.P5045755432645896255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (A167499 (n + 3) - 1).toNat

end

end A014344.P5045755432645896255

namespace A014344

/-- `A340991(A167499(n+3)-1)` -/
def P5045755432645896255.Spec : Prop :=
  ∀ n, P5045755432645896255.a n = A014344 n

end A014344

/-! ## A014344.P9696104035264731923

`A340991(A133263(n+4)+2)`
-/

namespace A014344.P9696104035264731923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (A133263 (n + 4) + 2).toNat

end

end A014344.P9696104035264731923

namespace A014344

/-- `A340991(A133263(n+4)+2)` -/
def P9696104035264731923.Spec : Prop :=
  ∀ n, P9696104035264731923.a n = A014344 n

end A014344

/-! ## A014344.P18226715995956793632

`A340991(A000217(n+5)-(n+1))`
-/

namespace A014344.P18226715995956793632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A014344.P18226715995956793632

namespace A014344

/-- `A340991(A000217(n+5)-(n+1))` -/
def P18226715995956793632.Spec : Prop :=
  ∀ n, P18226715995956793632.a n = A014344 n

end A014344

/-! ## A014344.P11739329702827609379

`A340991(eq[4, A002262(n)])`
-/

namespace A014344.P11739329702827609379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014344.P11739329702827609379

namespace A014344

/-- `A340991(eq[4, A002262(n)])` -/
def P11739329702827609379.Spec : Prop :=
  ∀ n, P11739329702827609379.a n = A014344 n

end A014344

/-!
# A014345: Exponential convolution of primes with themselves.

The programs for A014345, the canonical program `A014345.P6178042040382765614` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014345 has offset 0).

The definition of A014345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014345.P6178042040382765614

`∑{#}[n, C(n, #)*A000040(#+1)*A000040(n-#+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014345

/-- `∑{#}[n, C(n, #)*A000040(#+1)*A000040(n-#+1)]` -/
def P6178042040382765614.Spec : Prop :=
  ∀ n, P6178042040382765614.a n = A014345 n

theorem P6178042040382765614.correct : P6178042040382765614.Spec := by
  intro n
  simp only [A014345]

end A014345

/-! ## A014345.P1064974639556684339

`2*A014346(n)`
-/

namespace A014345.P1064974639556684339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014346 n

end

end A014345.P1064974639556684339

namespace A014345

/-- `2*A014346(n)` -/
def P1064974639556684339.Spec : Prop :=
  ∀ n, P1064974639556684339.a n = A014345 n

end A014345

/-! ## A014345.P8190820434588547015

`A014346(A005843(n)/2)+A014346(n)`
-/

namespace A014345.P8190820434588547015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014346 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A014346 n

end

end A014345.P8190820434588547015

namespace A014345

/-- `A014346(A005843(n)/2)+A014346(n)` -/
def P8190820434588547015.Spec : Prop :=
  ∀ n, P8190820434588547015.a n = A014345 n

end A014345

/-! ## A014345.P18084036015708297775

`A014346(A008585(n)/3)+A014346(n)`
-/

namespace A014345.P18084036015708297775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014346 (SequenceMachineLib.roundAway ((A008585 n : ℚ) / 3)).toNat + A014346 n

end

end A014345.P18084036015708297775

namespace A014345

/-- `A014346(A008585(n)/3)+A014346(n)` -/
def P18084036015708297775.Spec : Prop :=
  ∀ n, P18084036015708297775.a n = A014345 n

end A014345

/-! ## A014345.P16848127456835169211

`A014346(A005843(n)-n)+A014346(n)`
-/

namespace A014345.P16848127456835169211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014346 (A005843 n - (n : ℤ)).toNat + A014346 n

end

end A014345.P16848127456835169211

namespace A014345

/-- `A014346(A005843(n)-n)+A014346(n)` -/
def P16848127456835169211.Spec : Prop :=
  ∀ n, P16848127456835169211.a n = A014345 n

end A014345

/-! ## A014345.P8697776727602818210

`A014346(n)+A014346(n)%A107953(n)`
-/

namespace A014345.P8697776727602818210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014346 n + Int.tmod (A014346 n) (A107953 n)

end

end A014345.P8697776727602818210

namespace A014345

/-- `A014346(n)+A014346(n)%A107953(n)` -/
def P8697776727602818210.Spec : Prop :=
  ∀ n, P8697776727602818210.a n = A014345 n

end A014345

/-! ## A014345.P13826043612113758735

`(A014346(n)+A014346(n))%A116476(n+1)`
-/

namespace A014345.P13826043612113758735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014346 n + A014346 n) (A116476 (n + 1))

end

end A014345.P13826043612113758735

namespace A014345

/-- `(A014346(n)+A014346(n))%A116476(n+1)` -/
def P13826043612113758735.Spec : Prop :=
  ∀ n, P13826043612113758735.a n = A014345 n

end A014345

/-!
# A014346: Exponential convolution of primes with themselves (divided by 2).

The programs for A014346, the canonical program `A014346.P3586364160332068111` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014346 has offset 0).

The definition of A014346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014346.P3586364160332068111

`A014345(n)/2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014346

/-- `A014345(n)/2` -/
def P3586364160332068111.Spec : Prop :=
  ∀ n, P3586364160332068111.a n = (A014346 n : ℚ)

end A014346

/-! ## A014346.P9936422053026849262

`∑{#}[n, C(n, #)*A000040(#+1)*A000040(n-#+1)]/2`
-/

namespace A014346.P9936422053026849262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000040 (k + 1) * A000040 ((n : ℤ) - (k : ℤ) + 1).toNat : ℤ) : ℚ) / 2

end

end A014346.P9936422053026849262

namespace A014346

/-- `∑{#}[n, C(n, #)*A000040(#+1)*A000040(n-#+1)]/2` -/
def P9936422053026849262.Spec : Prop :=
  ∀ n, P9936422053026849262.a n = (A014346 n : ℚ)

end A014346

/-! ## A014346.P10178992655597433188

`A014682(A014345(n))`
-/

namespace A014346.P10178992655597433188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014345 n).toNat

end

end A014346.P10178992655597433188

namespace A014346

/-- `A014682(A014345(n))` -/
def P10178992655597433188.Spec : Prop :=
  ∀ n, P10178992655597433188.a n = A014346 n

end A014346

/-! ## A014346.P9789385456754875353

`A103391(A014345(n)-2)`
-/

namespace A014346.P9789385456754875353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A014345 n - 2).toNat

end

end A014346.P9789385456754875353

namespace A014346

/-- `A103391(A014345(n)-2)` -/
def P9789385456754875353.Spec : Prop :=
  ∀ n, P9789385456754875353.a n = A014346 n

end A014346

/-! ## A014346.P11911421723929265836

`A273943(lcm(2, A014345(n)))`
-/

namespace A014346.P11911421723929265836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A014345 n))

end

end A014346.P11911421723929265836

namespace A014346

/-- `A273943(lcm(2, A014345(n)))` -/
def P11911421723929265836.Spec : Prop :=
  ∀ n, P11911421723929265836.a n = A014346 n

end A014346

/-!
# A014347: Three-fold exponential convolution of primes with themselves.

The programs for A014347, there is no canonical definition to state claims against.
-/

/-! ## A014347.P1302741565262393742

`2*A014348(n)`
-/

namespace A014347.P1302741565262393742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014348 n

end

end A014347.P1302741565262393742

/-! ## A014347.P883447585215047203

`A014348(A005843(n)/2)+A014348(n)`
-/

namespace A014347.P883447585215047203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014348 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A014348 n

end

end A014347.P883447585215047203

/-! ## A014347.P12179343463139074841

`A014348(A005843(n)-n)+A014348(n)`
-/

namespace A014347.P12179343463139074841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014348 (A005843 n - (n : ℤ)).toNat + A014348 n

end

end A014347.P12179343463139074841

/-! ## A014347.P17087525656686466861

`A014348(lcm(n, A097807(n)))+A014348(n)`
-/

namespace A014347.P17087525656686466861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014348 (Int.lcm (n : ℤ) (A097807 n)) + A014348 n

end

end A014347.P17087525656686466861

/-! ## A014347.P11052028985230988665

`A014348(n)+record[A014348(A061395(n+1))]`
-/

namespace A014347.P11052028985230988665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014348 (A061395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014348 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014347.P11052028985230988665

/-! ## A014347.P8949549345111804452

`A000007(n+1)+A014348(n)+A014348(n)`
-/

namespace A014347.P8949549345111804452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A014348 n + A014348 n)

end

end A014347.P8949549345111804452

/-! ## A014347.P14850608338015734475

`A014348(n)+A014348(n)%A014352(n)`
-/

namespace A014347.P14850608338015734475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014348 n + Int.tmod (A014348 n) (A014352 n)

end

end A014347.P14850608338015734475

/-!
# A014348: Three-fold exponential convolution of primes with themselves (divided by 2).

The programs for A014348, there is no canonical definition to state claims against.
-/

/-! ## A014348.P9089736906370434086

`A014347(n)/2`
-/

namespace A014348.P9089736906370434086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014347 n : ℚ) / 2

end

end A014348.P9089736906370434086

/-! ## A014348.P9904167797517323968

`A014682(A014347(n))`
-/

namespace A014348.P9904167797517323968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014347 n).toNat

end

end A014348.P9904167797517323968

/-! ## A014348.P15913764633431831534

`A319702(A014347(n)-3)`
-/

namespace A014348.P15913764633431831534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A014347 n - 3).toNat

end

end A014348.P15913764633431831534

/-!
# A014349: Inverse of 340th cyclotomic polynomial.

The programs for A014349, there is no canonical definition to state claims against.
-/

/-! ## A014349.P15401071731340702011

`A014094(A004525(n))*A056594(n)`
-/

namespace A014349.P15401071731340702011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014094 (A004525 n).toNat * A056594 n

end

end A014349.P15401071731340702011

/-!
# A014350: Inverse of 341st cyclotomic polynomial.

The programs for A014350, there is no canonical definition to state claims against.
-/

/-! ## A014350.P10520757560229731662

`A014691(n)*A033999(n)`
-/

namespace A014350.P10520757560229731662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014691 n * A033999 n

end

end A014350.P10520757560229731662

/-!
# A014351: Four-fold exponential convolution of primes with themselves (divided by 8).

The programs for A014351, there is no canonical definition to state claims against.
-/

/-! ## A014351.P10402958537444281378

`A014352(n)/8`
-/

namespace A014351.P10402958537444281378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014352 n : ℚ) / 8

end

end A014351.P10402958537444281378

/-!
# A014352: Four-fold exponential convolution of primes with themselves.

The programs for A014352, there is no canonical definition to state claims against.
-/

/-! ## A014352.P12924259843081186644

`8*A014351(n)`
-/

namespace A014352.P12924259843081186644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A014351 n

end

end A014352.P12924259843081186644

/-!
# A014353: Chance of getting nothing, a pair, 2 pair, 3 of a kind, other straight, other flush, full house, 4 of a kind, other straight flush, or a royal flush in poker is 1 in a(n) (rounded to nearest integer).

The programs for A014353, there is no canonical definition to state claims against.
-/

/-! ## A014353.P13375497785292368685

`A053328(A019209(n+3)²+1)`
-/

namespace A014353.P13375497785292368685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053328 (A019209 (n + 3) ^ 2 + 1).toNat

end

end A014353.P13375497785292368685

/-!
# A014354: Inverse of 345th cyclotomic polynomial.

The programs for A014354, there is no canonical definition to state claims against.
-/

/-! ## A014354.P5814203994763813311

`A014699(n)*A033999(n)`
-/

namespace A014354.P5814203994763813311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014699 n * A033999 n

end

end A014354.P5814203994763813311

/-!
# A014355: Chance of getting a pair (2 to aces), 2 jacks, 2 queens, 2 kings, 2 aces, 2 pair, 3 of a kind, straight, flush, full house in 5-card poker is 1 in a(n), according to M. Barron.

The programs for A014355, there is no canonical definition to state claims against.
-/

/-! ## A014355.P4011782613446857375

`A057694(A167020(n+1)+n)`
-/

namespace A014355.P4011782613446857375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057694 (A167020 (n + 1) + (n : ℤ)).toNat

end

end A014355.P4011782613446857375

/-! ## A014355.P3472413362057355775

`A057694(1-A025458(n)+n)`
-/

namespace A014355.P3472413362057355775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057694 (1 - A025458 n + (n : ℤ)).toNat

end

end A014355.P3472413362057355775

/-! ## A014355.P9337329662288735474

`A057694(1-(A025458(n)-n))`
-/

namespace A014355.P9337329662288735474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057694 (1 - (A025458 n - (n : ℤ))).toNat

end

end A014355.P9337329662288735474

/-! ## A014355.P14769781030720355824

`A057694(char[A014155(n+1)]+n)`
-/

namespace A014355.P14769781030720355824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014155 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057694 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A014355.P14769781030720355824

/-! ## A014355.P14799905712127534606

`A057694(n+1-A318880(n+1))`
-/

namespace A014355.P14799905712127534606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057694 ((n + 1 : ℤ) - A318880 (n + 1)).toNat

end

end A014355.P14799905712127534606

/-!
# A014358: Chance of getting no pair, a pair, 2 pair, 3 of a kind, other straight, other flush, full house, 4 of a kind, other straight flush, a royal flush, or 5 of a kind in poker when joker is wild is 1 in a(n) (rounded to nearest integer).

The programs for A014358, there is no canonical definition to state claims against.
-/

/-! ## A014358.P4987437957338309197

`A340903(n)+A071766(A067442(n+1))`
-/

namespace A014358.P4987437957338309197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340903 n + A071766 (A067442 (n + 1)).toNat

end

end A014358.P4987437957338309197

/-!
# A014359: Inverse of 350th cyclotomic polynomial.

The programs for A014359, there is no canonical definition to state claims against.
-/

/-! ## A014359.P16030703026225872241

`A014019(n)*A014184(n)`
-/

namespace A014359.P16030703026225872241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 n * A014184 n

end

end A014359.P16030703026225872241

/-!
# A014363: Aliquot sequence starting at 966.

The programs for A014363, there is no canonical definition to state claims against.
-/

/-! ## A014363.P15808682362502724649

`A048050(a(n-1))+1` with `a(0)=966`
-/

namespace A014363.P15808682362502724649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [966] fun n a =>
  A048050 (a (n - 1)).toNat + 1

end

end A014363.P15808682362502724649

/-! ## A014363.P11295955482416756945

`A001065(A028310(a(n-1)))` with `a(0)=966`
-/

namespace A014363.P11295955482416756945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [966] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A014363.P11295955482416756945

/-! ## A014363.P3249684136382084815

`A001065(a(n-1))+A000007(A236728(n+1))` with `a(0)=966`
-/

namespace A014363.P3249684136382084815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [966] fun n a =>
  A001065 (a (n - 1)).toNat + A000007 (A236728 (n + 1)).toNat

end

end A014363.P3249684136382084815

/-!
# A014366: Inverse of 357th cyclotomic polynomial.

The programs for A014366, there is no canonical definition to state claims against.
-/

/-! ## A014366.P17835233005361216464

`A014723(n)*A033999(n)`
-/

namespace A014366.P17835233005361216464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014723 n * A033999 n

end

end A014366.P17835233005361216464

/-!
# A014368: a(n) = bc, where n = C(b,2)+C(c,1), b>c>=0.

The programs for A014368, there is no canonical definition to state claims against.
-/

/-! ## A014368.P2698980703097470898

`lt[1, A292630(A025793(n))]`
-/

namespace A014368.P2698980703097470898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292630 (A025793 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A014368.P2698980703097470898

/-! ## A014368.P2851243384358881567

`lt[A082656(A213217(n)), n]`
-/

namespace A014368.P2851243384358881567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082656 (A213217 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014368.P2851243384358881567

/-! ## A014368.P6387971659541035671

`lt[A143671(A213217(n+1)), n]+1`
-/

namespace A014368.P6387971659541035671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143671 (A213217 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A014368.P6387971659541035671

/-! ## A014368.P1684092164072668440

`lt[A143671(A213217(2*n-n)), n]`
-/

namespace A014368.P1684092164072668440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143671 (A213217 (2 * n - n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014368.P1684092164072668440

/-! ## A014368.P15293661182815772987

`lt[A007304(2*(n+1))/A213217(n), n+1]`
-/

namespace A014368.P15293661182815772987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007304 (2 * (n + 1)) : ℚ) / (A213217 n : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A014368.P15293661182815772987

/-! ## A014368.P2501666879273055873

`eq[A005151(A213217(n)), A023989(n)]`
-/

namespace A014368.P2501666879273055873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005151 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014368.P2501666879273055873

/-! ## A014368.P7240899440797733268

`lt[A265028(A070939(n)), A213217(n)]`
-/

namespace A014368.P7240899440797733268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265028 (A070939 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014368.P7240899440797733268

/-! ## A014368.P5843461238962885828

`eq[-A016050(n), A016050(A213217(n))]`
-/

namespace A014368.P5843461238962885828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A016050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016050 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014368.P5843461238962885828

/-! ## A014368.P17860879601953897999

`eq[A015660(n+1), A015668(A213217(n))]`
-/

namespace A014368.P17860879601953897999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015668 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014368.P17860879601953897999

/-! ## A014368.P5528719947744511190

`eq[A005151(n+2), A005151(A213217(n))]`
-/

namespace A014368.P5528719947744511190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005151 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005151 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014368.P5528719947744511190

/-!
# A014369: a(n) = bcd, where n = C(b,3)+C(c,2)+C(d,1), b>c>d>=0.

The programs for A014369, there is no canonical definition to state claims against.
-/

/-! ## A014369.P5077730949402993496

`A262557(A014311(2+n))`
-/

namespace A014369.P5077730949402993496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (A014311 (2 + n)).toNat

end

end A014369.P5077730949402993496

/-! ## A014369.P6359106239128162075

`A262557(eq[16, A267447(n)])`
-/

namespace A014369.P6359106239128162075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014369.P6359106239128162075

/-! ## A014369.P12474189338194045741

`record[A349944(n+5)]`
-/

namespace A014369.P12474189338194045741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349944 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014369.P12474189338194045741

/-! ## A014369.P671305437961818449

`A349944(A130572(2*n+3)+A076654(3*n+4))`
-/

namespace A014369.P671305437961818449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349944 (A130572 (2 * n + 3) + A076654 (3 * n + 4)).toNat

end

end A014369.P671305437961818449

/-!
# A014370: If n = binomial(b,2) + binomial(c,1), b > c >= 0 then a(n) = binomial(b+1,3) + binomial(c+1,2).

The programs for A014370, the canonical program `A014370.P2808801534584236967` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014370 has offset 1).

The definition of A014370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014370.P6685626117312680015

`C(row(n)+2, 3)+C(col(n)+2, 2)`
-/

namespace A014370.P6685626117312680015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 2) 3 + Nat.choose (SequenceMachineLib.triCol n + 2) 2

end

end A014370.P6685626117312680015

namespace A014370

/-- `C(row(n)+2, 3)+C(col(n)+2, 2)` -/
def P6685626117312680015.Spec : Prop :=
  ∀ n, (P6685626117312680015.a n : ℤ) = A014370 (n + 1)

end A014370

/-! ## A014370.P13315366725171394764

`((row(n)+1)^3-(row(n)+1)+3*(col(n)+1)²+3*(col(n)+1))/6`
-/

namespace A014370.P13315366725171394764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n + 1) ^ 3 : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ) + (3 * (SequenceMachineLib.triCol n + 1) ^ 2 : ℤ) + (3 * (SequenceMachineLib.triCol n + 1) : ℤ) : ℚ) / 6

end

end A014370.P13315366725171394764

namespace A014370

/-- `((row(n)+1)^3-(row(n)+1)+3*(col(n)+1)²+3*(col(n)+1))/6` -/
def P13315366725171394764.Spec : Prop :=
  ∀ n, P13315366725171394764.a n = (A014370 (n + 1) : ℚ)

end A014370

/-! ## A014370.P2808801534584236967

`a(n-1)+A002260(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014370

/-- `a(n-1)+A002260(n+1)` -/
def P2808801534584236967.Spec : Prop :=
  ∀ n, P2808801534584236967.a n = A014370 (n + 1)

theorem P2808801534584236967.correct : P2808801534584236967.Spec := by
  intro n
  simp only [A014370, Nat.add_sub_cancel]

end A014370

/-! ## A014370.P8503133021373093136

`∑[1+T(n-1,k-1)]` with `a(0)=1`
-/

namespace A014370.P8503133021373093136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  1 + SequenceMachineLib.triUpLeft f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014370.P8503133021373093136

namespace A014370

/-- `∑[1+T(n-1,k-1)]` -/
def P8503133021373093136.Spec : Prop :=
  ∀ n, (P8503133021373093136.a n : ℤ) = A014370 (n + 1)

end A014370

/-! ## A014370.P3341525291498452503

`∑[1+T(n,k-1)]` with `a(0)=1`
-/

namespace A014370.P3341525291498452503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  1 + SequenceMachineLib.triLeft f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014370.P3341525291498452503

namespace A014370

/-- `∑[1+T(n,k-1)]` -/
def P3341525291498452503.Spec : Prop :=
  ∀ n, (P3341525291498452503.a n : ℤ) = A014370 (n + 1)

end A014370

/-! ## A014370.P3978211172153499074

`∑[1+col(n)]`
-/

namespace A014370.P3978211172153499074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.triCol n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014370.P3978211172153499074

namespace A014370

/-- `∑[1+col(n)]` -/
def P3978211172153499074.Spec : Prop :=
  ∀ n, (P3978211172153499074.a n : ℤ) = A014370 (n + 1)

end A014370

/-! ## A014370.P8887512109713576775

`a(n-1)+col(n)+1` with `a(0)=1`
-/

namespace A014370.P8887512109713576775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (SequenceMachineLib.triCol n + 1)

end

end A014370.P8887512109713576775

namespace A014370

/-- `a(n-1)+col(n)+1` -/
def P8887512109713576775.Spec : Prop :=
  ∀ n, (P8887512109713576775.a n : ℤ) = A014370 (n + 1)

end A014370

/-! ## A014370.P8619160396539344729

`∑[n+1-C(∑[char[∑[n]]], 2)]`
-/

namespace A014370.P8619160396539344729
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014370.P8619160396539344729

namespace A014370

/-- `∑[n+1-C(∑[char[∑[n]]], 2)]` -/
def P8619160396539344729.Spec : Prop :=
  ∀ n, P8619160396539344729.a n = A014370 (n + 1)

end A014370

/-! ## A014370.P8747278285995519107

`a(n-∑[char[∑[n]]])+1+n` with `a(0)=1, a(1)=2`
-/

namespace A014370.P8747278285995519107
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - ∑ j ∈ Finset.range (n + 1), f1 j) + 1 + n

end

end A014370.P8747278285995519107

namespace A014370

/-- `a(n-∑[char[∑[n]]])+1+n` -/
def P8747278285995519107.Spec : Prop :=
  ∀ n, (P8747278285995519107.a n : ℤ) = A014370 (n + 1)

end A014370

/-! ## A014370.P6547254677679057550

`∑[A002260(n+1)]`
-/

namespace A014370.P6547254677679057550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014370.P6547254677679057550

namespace A014370

/-- `∑[A002260(n+1)]` -/
def P6547254677679057550.Spec : Prop :=
  ∀ n, P6547254677679057550.a n = A014370 (n + 1)

end A014370

/-! ## A014370.P15907608552249196713

`∑[A002262(n)+1]`
-/

namespace A014370.P15907608552249196713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014370.P15907608552249196713

namespace A014370

/-- `∑[A002262(n)+1]` -/
def P15907608552249196713.Spec : Prop :=
  ∀ n, P15907608552249196713.a n = A014370 (n + 1)

end A014370

/-! ## A014370.P7821394108462425332

`∑[abs(A140756(n+1))]`
-/

namespace A014370.P7821394108462425332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014370.P7821394108462425332

namespace A014370

/-- `∑[abs(A140756(n+1))]` -/
def P7821394108462425332.Spec : Prop :=
  ∀ n, P7821394108462425332.a n = A014370 (n + 1)

end A014370

/-! ## A014370.P14852105164290260020

`∑[sqrt(A133819(n+1))]`
-/

namespace A014370.P14852105164290260020
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014370.P14852105164290260020

namespace A014370

/-- `∑[sqrt(A133819(n+1))]` -/
def P14852105164290260020.Spec : Prop :=
  ∀ n, P14852105164290260020.a n = (A014370 (n + 1) : ℝ)

end A014370

/-! ## A014370.P9053137434210888281

`∑[sqrt(A143844(n))+1]`
-/

namespace A014370.P9053137434210888281
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143844 n : ℝ) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014370.P9053137434210888281

namespace A014370

/-- `∑[sqrt(A143844(n))+1]` -/
def P9053137434210888281.Spec : Prop :=
  ∀ n, P9053137434210888281.a n = (A014370 (n + 1) : ℝ)

end A014370

/-! ## A014370.P15258489279143442571

`∑[log2(A059268(n))+1]`
-/

namespace A014370.P15258489279143442571
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014370.P15258489279143442571

namespace A014370

/-- `∑[log2(A059268(n))+1]` -/
def P15258489279143442571.Spec : Prop :=
  ∀ n, P15258489279143442571.a n = (A014370 (n + 1) : ℝ)

end A014370

/-! ## A014370.P11087488789668243482

`∑[1-A057944(n)+n]`
-/

namespace A014370.P11087488789668243482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057944 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014370.P11087488789668243482

namespace A014370

/-- `∑[1-A057944(n)+n]` -/
def P11087488789668243482.Spec : Prop :=
  ∀ n, P11087488789668243482.a n = A014370 (n + 1)

end A014370

/-! ## A014370.P437578324477196086

`∑[A132118(n+1)-n]`
-/

namespace A014370.P437578324477196086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014370.P437578324477196086

namespace A014370

/-- `∑[A132118(n+1)-n]` -/
def P437578324477196086.Spec : Prop :=
  ∀ n, P437578324477196086.a n = A014370 (n + 1)

end A014370

/-! ## A014370.P7060054343258612034

`∑[sqrt(sqrt(A133821(n+1)))]`
-/

namespace A014370.P7060054343258612034
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A133821 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014370.P7060054343258612034

namespace A014370

/-- `∑[sqrt(sqrt(A133821(n+1)))]` -/
def P7060054343258612034.Spec : Prop :=
  ∀ n, P7060054343258612034.a n = (A014370 (n + 1) : ℝ)

end A014370

/-! ## A014370.P4936566412275710834

`A111138(n+1)+1+n`
-/

namespace A014370.P4936566412275710834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111138 (n + 1) + 1 + (n : ℤ)

end

end A014370.P4936566412275710834

namespace A014370

/-- `A111138(n+1)+1+n` -/
def P4936566412275710834.Spec : Prop :=
  ∀ n, P4936566412275710834.a n = A014370 (n + 1)

end A014370

/-! ## A014370.P12289005830915397717

`∑[∑[2-A130296(n+1)]]`
-/

namespace A014370.P12289005830915397717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130296 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014370.P12289005830915397717

namespace A014370

/-- `∑[∑[2-A130296(n+1)]]` -/
def P12289005830915397717.Spec : Prop :=
  ∀ n, P12289005830915397717.a n = A014370 (n + 1)

end A014370

/-!
# A014371: Number of trivalent connected simple graphs with 2*n nodes and girth at least 4.

The programs for A014371, there is no canonical definition to state claims against.
-/

/-! ## A014371.P17926835789804112808

`A014372(n)+A006924(n)`
-/

namespace A014371.P17926835789804112808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014372 n + A006924 n

end

end A014371.P17926835789804112808

/-! ## A014371.P5045647769937604084

`A002851(n)-A006923(n)`
-/

namespace A014371.P5045647769937604084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 n - A006923 n

end

end A014371.P5045647769937604084

/-! ## A014371.P12800697361359683278

`A185334(n)-A185234(n)`
-/

namespace A014371.P12800697361359683278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185334 n - A185234 n

end

end A014371.P12800697361359683278

/-! ## A014371.P5750368277213439202

`A321304(n²)-A006923(n)`
-/

namespace A014371.P5750368277213439202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321304 (n ^ 2) - A006923 n

end

end A014371.P5750368277213439202

/-! ## A014371.P10313313305111832933

`A006924(n)+A014374(n)+A006925(n)`
-/

namespace A014371.P10313313305111832933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006924 n + (A014374 n + A006925 n)

end

end A014371.P10313313305111832933

/-!
# A014372: Number of trivalent connected simple graphs with 2n nodes and girth at least 5.

The programs for A014372, there is no canonical definition to state claims against.
-/

/-! ## A014372.P11509597567200800983

`A014374(n)+A006925(n)`
-/

namespace A014372.P11509597567200800983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014374 n + A006925 n

end

end A014372.P11509597567200800983

/-! ## A014372.P8684571580521316990

`A014371(n)-A006924(n)`
-/

namespace A014372.P8684571580521316990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014371 n - A006924 n

end

end A014372.P8684571580521316990

/-! ## A014372.P13108997985554892042

`A185335(n)-A185235(n)`
-/

namespace A014372.P13108997985554892042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185335 n - A185235 n

end

end A014372.P13108997985554892042

/-! ## A014372.P15603770930598468332

`A006925(n)+A014375(n)+A006926(n)`
-/

namespace A014372.P15603770930598468332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006925 n + (A014375 n + A006926 n)

end

end A014372.P15603770930598468332

/-! ## A014372.P7583311407053975812

`A002851(n)-(A006924(n)+A006923(n))`
-/

namespace A014372.P7583311407053975812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 n - (A006924 n + A006923 n)

end

end A014372.P7583311407053975812

/-!
# A014373: Inverse of 364th cyclotomic polynomial.

The programs for A014373, there is no canonical definition to state claims against.
-/

/-! ## A014373.P15867170566771900126

`A014737(2*n)`
-/

namespace A014373.P15867170566771900126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014737 (2 * n)

end

end A014373.P15867170566771900126

/-!
# A014374: Number of trivalent connected simple graphs with 2n nodes and girth at least 6.

The programs for A014374, there is no canonical definition to state claims against.
-/

/-! ## A014374.P18120907808008080886

`A185336(n)-A185036(n)`
-/

namespace A014374.P18120907808008080886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185336 n - A185036 n

end

end A014374.P18120907808008080886

/-! ## A014374.P7343319481832935616

`A185336(n)-A185236(n)`
-/

namespace A014374.P7343319481832935616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185336 n - A185236 n

end

end A014374.P7343319481832935616

/-! ## A014374.P15914337185101696729

`A185336(n)+A153881(n+1)*A185236(n)`
-/

namespace A014374.P15914337185101696729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185336 n + A153881 (n + 1) * A185236 n

end

end A014374.P15914337185101696729

/-! ## A014374.P5216533660137385420

`A014375(n)+A006926(n)`
-/

namespace A014374.P5216533660137385420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014375 n + A006926 n

end

end A014374.P5216533660137385420

/-! ## A014374.P16206911247407125735

`A006926(n)+A014376(n)+A006927(n)`
-/

namespace A014374.P16206911247407125735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006926 n + (A014376 n + A006927 n)

end

end A014374.P16206911247407125735

/-!
# A014375: Number of trivalent connected simple graphs with 2n nodes and girth at least 7.

The programs for A014375, there is no canonical definition to state claims against.
-/

/-! ## A014375.P11131877729382465704

`A006927(n)+A014376(n)`
-/

namespace A014375.P11131877729382465704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006927 n + A014376 n

end

end A014375.P11131877729382465704

/-! ## A014375.P1184032006373479897

`A186747(2*n)+A014376(n)`
-/

namespace A014375.P1184032006373479897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 (2 * n) + A014376 n

end

end A014375.P1184032006373479897

/-! ## A014375.P7697957893819789398

`A186727(2*n)-char[A271206(n+3)]`
-/

namespace A014375.P7697957893819789398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271206 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186727 (2 * n) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A014375.P7697957893819789398

/-! ## A014375.P13380809122983787088

`A006927(n)-(A011738(n)-A014376(n))`
-/

namespace A014375.P13380809122983787088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006927 n - (A011738 n - A014376 n)

end

end A014375.P13380809122983787088

/-! ## A014375.P4292971782766419072

`A006927(n)-(A011744(n)-A014376(n))`
-/

namespace A014375.P4292971782766419072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006927 n - (A011744 n - A014376 n)

end

end A014375.P4292971782766419072

/-!
# A014376: Number of trivalent connected simple graphs with 2n nodes and girth at least 8.

The programs for A014376, there is no canonical definition to state claims against.
-/

/-! ## A014376.P8403904278456372475

`A186748(A033061(n+1)+7)`
-/

namespace A014376.P8403904278456372475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186748 (A033061 (n + 1) + 7).toNat

end

end A014376.P8403904278456372475

/-! ## A014376.P16797312733459461374

`A186748(A064223(n+2)+6)`
-/

namespace A014376.P16797312733459461374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186748 (A064223 (n + 2) + 6).toNat

end

end A014376.P16797312733459461374

/-! ## A014376.P3474837572122984982

`xor(A186748(2*n), A240467(n))`
-/

namespace A014376.P3474837572122984982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A186748 (2 * n)) (A240467 n)

end

end A014376.P3474837572122984982

/-! ## A014376.P14057872869750367593

`A186728(2*n)-char[A028275(n)]`
-/

namespace A014376.P14057872869750367593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186728 (2 * n) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A014376.P14057872869750367593

/-! ## A014376.P9168639560210683263

`xor(char[A038382(2*n+1)], A186748(2*n))`
-/

namespace A014376.P9168639560210683263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038382 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A186748 (2 * n))

end

end A014376.P9168639560210683263

/-!
# A014377: Number of connected regular graphs of degree 7 with 2n nodes.

The programs for A014377, there is no canonical definition to state claims against.
-/

/-! ## A014377.P14112113463376795236

`A165628(n)-A165877(n)`
-/

namespace A014377.P14112113463376795236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165628 n - A165877 n

end

end A014377.P14112113463376795236

/-! ## A014377.P3448783076869114012

`A184973(n)+A181153(n)`
-/

namespace A014377.P3448783076869114012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184973 n + A181153 n

end

end A014377.P3448783076869114012

/-! ## A014377.P9928699003116817903

`A184973(n)+A006822(n)`
-/

namespace A014377.P9928699003116817903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184973 n + A006822 n

end

end A014377.P9928699003116817903

/-! ## A014377.P8185191453656926212

`A184973(n)+A014374(n)`
-/

namespace A014377.P8185191453656926212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184973 n + A014374 n

end

end A014377.P8185191453656926212

/-! ## A014377.P17417369340130605420

`A184973(n)+A025911(n)`
-/

namespace A014377.P17417369340130605420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184973 n + A025911 n

end

end A014377.P17417369340130605420

/-!
# A014378: Number of connected regular graphs of degree 8 with n nodes.

The programs for A014378, there is no canonical definition to state claims against.
-/

/-! ## A014378.P11151954371690884083

`A184983(n)+A181154(n)`
-/

namespace A014378.P11151954371690884083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184983 n + A181154 n

end

end A014378.P11151954371690884083

/-! ## A014378.P4246105578981746654

`A068934(∑[n+1-∑{digits}[n+1, A036370(#)]]+1)`
-/

namespace A014378.P4246105578981746654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A036370 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068934 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A014378.P4246105578981746654

/-! ## A014378.P3454804508049522110

`A184983(n)+A088155(n)`
-/

namespace A014378.P3454804508049522110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184983 n + A088155 n

end

end A014378.P3454804508049522110

/-! ## A014378.P7952888824617264774

`or(A353428(n)², A184983(n))`
-/

namespace A014378.P7952888824617264774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A353428 n ^ 2) (A184983 n)

end

end A014378.P7952888824617264774

/-! ## A014378.P11722390546696898147

`A185327(A014085(n))+A184983(n)`
-/

namespace A014378.P11722390546696898147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 (A014085 n).toNat + A184983 n

end

end A014378.P11722390546696898147

/-!
# A014379: Inverse of 370th cyclotomic polynomial.

The programs for A014379, there is no canonical definition to state claims against.
-/

/-! ## A014379.P1102339520444428818

`A014194(n)*A033999(n)`
-/

namespace A014379.P1102339520444428818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014194 n * A033999 n

end

end A014379.P1102339520444428818

/-!
# A014380: Inverse of 371st cyclotomic polynomial.

The programs for A014380, there is no canonical definition to state claims against.
-/

/-! ## A014380.P2542130428793418445

`A016236(A045572(n+1)-A321924(n+1))`
-/

namespace A014380.P2542130428793418445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016236 (A045572 (n + 1) - A321924 (n + 1)).toNat

end

end A014380.P2542130428793418445

/-!
# A014381: Number of connected regular graphs of degree 9 with 2n nodes.

The programs for A014381, there is no canonical definition to state claims against.
-/

/-! ## A014381.P4312512463815109214

`A184993(n)+A181170(n)`
-/

namespace A014381.P4312512463815109214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184993 n + A181170 n

end

end A014381.P4312512463815109214

/-! ## A014381.P13131395229890012317

`A068934(C(2*n, 2)+10)`
-/

namespace A014381.P13131395229890012317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068934 (Nat.choose (2 * n) 2 + 10)

end

end A014381.P13131395229890012317

/-! ## A014381.P11711712374374728342

`A068934(A000384(n)+10)`
-/

namespace A014381.P11711712374374728342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068934 (A000384 n + 10).toNat

end

end A014381.P11711712374374728342

/-! ## A014381.P17803196309715376963

`A184993(T(n-2,k)+n)` with `a(0)=1`
-/

namespace A014381.P17803196309715376963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184993 (SequenceMachineLib.triUp2 a n + (n : ℤ)).toNat

end

end A014381.P17803196309715376963

/-! ## A014381.P5885875695792999615

`∏{e}[2^n, A184993(#)]`
-/

namespace A014381.P5885875695792999615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A184993 (Nat.factorization (f1 n) p)

end

end A014381.P5885875695792999615

/-!
# A014383: Inverse of 374th cyclotomic polynomial.

The programs for A014383, there is no canonical definition to state claims against.
-/

/-! ## A014383.P6689334393654136890

`A014196(n)*A033999(n)`
-/

namespace A014383.P6689334393654136890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014196 n * A033999 n

end

end A014383.P6689334393654136890

/-!
# A014384: Number of connected regular graphs of degree 11 with 2n nodes.

The programs for A014384, there is no canonical definition to state claims against.
-/

/-! ## A014384.P14301574847254423088

`A068934(A178877(n+5)+A107057(n+1))`
-/

namespace A014384.P14301574847254423088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068934 (A178877 (n + 5) + A107057 (n + 1)).toNat

end

end A014384.P14301574847254423088

/-!
# A014385: Number of connected regular bipartite graphs of degree 6 with 2n nodes.

The programs for A014385, there is no canonical definition to state claims against.
-/

/-! ## A014385.P1276770633039242688

`A008326(A155212(n)+14)`
-/

namespace A014385.P1276770633039242688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A155212 n + 14).toNat

end

end A014385.P1276770633039242688

/-! ## A014385.P18117350415583389599

`A008326(A056000(n)+16)`
-/

namespace A014385.P18117350415583389599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A056000 n + 16).toNat

end

end A014385.P18117350415583389599

/-! ## A014385.P6597803368453419632

`A008326(A000217(n+4)+6)`
-/

namespace A014385.P6597803368453419632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A000217 (n + 4) + 6).toNat

end

end A014385.P6597803368453419632

/-! ## A014385.P1316711128212791442

`A008326(A055998(n+2)+9)`
-/

namespace A014385.P1316711128212791442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A055998 (n + 2) + 9).toNat

end

end A014385.P1316711128212791442

/-! ## A014385.P7503731261748626966

`A008326(A052905(n+1)+11)`
-/

namespace A014385.P7503731261748626966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A052905 (n + 1) + 11).toNat

end

end A014385.P7503731261748626966

/-!
# A014386: Inverse of 377th cyclotomic polynomial.

The programs for A014386, there is no canonical definition to state claims against.
-/

/-! ## A014386.P1191347215793983583

`A014763(n)*A033999(n)`
-/

namespace A014386.P1191347215793983583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014763 n * A033999 n

end

end A014386.P1191347215793983583

/-!
# A014387: Number of connected regular bipartite graphs of degree 7 with 2n nodes.

The programs for A014387, there is no canonical definition to state claims against.
-/

/-! ## A014387.P760773336645730931

`A008326(A167487(n+4))`
-/

namespace A014387.P760773336645730931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A167487 (n + 4)).toNat

end

end A014387.P760773336645730931

/-! ## A014387.P14901322194578924480

`A008326(A167499(n+4)+2)`
-/

namespace A014387.P14901322194578924480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A167499 (n + 4) + 2).toNat

end

end A014387.P14901322194578924480

/-! ## A014387.P1014064370631685794

`A008326(A167614(n+4)+4)`
-/

namespace A014387.P1014064370631685794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A167614 (n + 4) + 4).toNat

end

end A014387.P1014064370631685794

/-! ## A014387.P2060352318027427536

`A008326(A000124(n+5)+6)`
-/

namespace A014387.P2060352318027427536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A000124 (n + 5) + 6).toNat

end

end A014387.P2060352318027427536

/-! ## A014387.P5755458035750071437

`A008326(A000217(n+5)+7)`
-/

namespace A014387.P5755458035750071437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A000217 (n + 5) + 7).toNat

end

end A014387.P5755458035750071437

/-!
# A014389: Inverse of 380th cyclotomic polynomial.

The programs for A014389, there is no canonical definition to state claims against.
-/

/-! ## A014389.P305923559864288797

`A014199(A004526(n))*A059841(n)`
-/

namespace A014389.P305923559864288797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014199 (A004526 n).toNat * A059841 n

end

end A014389.P305923559864288797

/-!
# A014390: Final 2 digits of 7^n.

The programs for A014390, the canonical program `A014390.P7909445402582626344` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014390 has offset 0).

The definition of A014390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014390.P7909445402582626344

`(7^n)%50`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014390

/-- `(7^n)%50` -/
def P7909445402582626344.Spec : Prop :=
  ∀ n, (P7909445402582626344.a n : ℤ) = A014390 n

theorem P7909445402582626344.correct : P7909445402582626344.Spec := by
  intro n
  simp only [A014390]

end A014390

/-!
# A014391: Final digit of 8^n.

The programs for A014391, the canonical program `A014391.P4931417615698888401` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014391 has offset 0).

The definition of A014391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014391.P4931417615698888401

`ogf((1+7x-3x^2+5x^3)/(1-x+x^2-x^3))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014391

/-- `ogf((1+7x-3x^2+5x^3)/(1-x+x^2-x^3))` -/
def P4931417615698888401.Spec : Prop :=
  ∀ n, P4931417615698888401.a n = A014391 n

theorem P4931417615698888401.correct : P4931417615698888401.Spec := by
  intro n
  simp only [A014391]

end A014391

/-!
# A014392: Final 2 digits of 8^n.

The programs for A014392, the canonical program `A014392.P1942321098737970699` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014392 has offset 0).

The definition of A014392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014392.P1942321098737970699

`A000855(3*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014392

/-- `A000855(3*n)` -/
def P1942321098737970699.Spec : Prop :=
  ∀ n, P1942321098737970699.a n = A014392 n

theorem P1942321098737970699.correct : P1942321098737970699.Spec := by
  intro n
  simp only [A014392]

end A014392

/-!
# A014393: Final 2 digits of 9^n.

The programs for A014393, the canonical program `A014393.P16422536560283986321` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014393 has offset 0).

The definition of A014393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014393.P16422536560283986321

`ogf((1+9x+81x^2+29x^3+61x^4+49x^5+41x^6+69x^7+21x^8+89x^9)/(1-x^10))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014393

/-- `ogf((1+9x+81x^2+29x^3+61x^4+49x^5+41x^6+69x^7+21x^8+89x^9)/(1-x^10))` -/
def P16422536560283986321.Spec : Prop :=
  ∀ n, P16422536560283986321.a n = A014393 n

theorem P16422536560283986321.correct : P16422536560283986321.Spec := by
  intro n
  simp only [A014393]

end A014393

/-!
# A014394: Inverse of 385th cyclotomic polynomial.

The programs for A014394, there is no canonical definition to state claims against.
-/

/-! ## A014394.P3603944394202921345

`A014779(n)*A033999(n)`
-/

namespace A014394.P3603944394202921345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014779 n * A033999 n

end

end A014394.P3603944394202921345

/-!
# A014395: Number of multigraphs with 5 nodes and n edges.

The programs for A014395, there is no canonical definition to state claims against.
-/

/-! ## A014395.P6319426088688747829

`A192517(A046691(n+3))`
-/

namespace A014395.P6319426088688747829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A046691 (n + 3)).toNat

end

end A014395.P6319426088688747829

/-! ## A014395.P7852629564412800709

`A192517(A056115(n)+11)`
-/

namespace A014395.P7852629564412800709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A056115 n + 11).toNat

end

end A014395.P7852629564412800709

/-! ## A014395.P13707602661348480244

`A192517(Δ[A023545(n+1)])`
-/

namespace A014395.P13707602661348480244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (f1 (n + 1) - f1 n).toNat

end

end A014395.P13707602661348480244

/-! ## A014395.P5076850868420694030

`A192517(A055999(n+2)+2)`
-/

namespace A014395.P5076850868420694030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A055999 (n + 2) + 2).toNat

end

end A014395.P5076850868420694030

/-! ## A014395.P5532406708539806845

`A192517(A000124(n+5)-5)`
-/

namespace A014395.P5532406708539806845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A000124 (n + 5) - 5).toNat

end

end A014395.P5532406708539806845

/-!
# A014396: Number of loopless multigraphs with 6 nodes and n edges.

The programs for A014396, there is no canonical definition to state claims against.
-/

/-! ## A014396.P14185373873198526196

`A192517(A052905(n+3))`
-/

namespace A014396.P14185373873198526196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A052905 (n + 3)).toNat

end

end A014396.P14185373873198526196

/-! ## A014396.P12405836375293507431

`A192517(A000217(n+6)-5)`
-/

namespace A014396.P12405836375293507431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A000217 (n + 6) - 5).toNat

end

end A014396.P12405836375293507431

/-! ## A014396.P14607488399731820878

`A192517(A000124(n+6)-6)`
-/

namespace A014396.P14607488399731820878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A000124 (n + 6) - 6).toNat

end

end A014396.P14607488399731820878

/-! ## A014396.P2206344836363634261

`A192517(Δ[Δ[A006504(n+1)]])`
-/

namespace A014396.P2206344836363634261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (f1 (n + 1) - f1 n).toNat

end

end A014396.P2206344836363634261

/-! ## A014396.P15899144015660201226

`A192517(Δ[A023551(n+1)]+1)`
-/

namespace A014396.P15899144015660201226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (f1 (n + 1) - f1 n + 1).toNat

end

end A014396.P15899144015660201226

/-!
# A014397: Number of loopless multigraphs with 7 nodes and n edges.

The programs for A014397, there is no canonical definition to state claims against.
-/

/-! ## A014397.P9954187367956342540

`A192517(Δ[A023551(n+2)])`
-/

namespace A014397.P9954187367956342540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (f1 (n + 1) - f1 n).toNat

end

end A014397.P9954187367956342540

/-! ## A014397.P13997118639925271389

`A192517(A000124(n+7)-7)`
-/

namespace A014397.P13997118639925271389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A000124 (n + 7) - 7).toNat

end

end A014397.P13997118639925271389

/-! ## A014397.P15070169110537896402

`A192517(eq[7, A004736(n+1)]+1)`
-/

namespace A014397.P15070169110537896402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A014397.P15070169110537896402

/-! ## A014397.P15875570560350178704

`A192517(A000096(n+5)+n+2)`
-/

namespace A014397.P15875570560350178704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A014397.P15875570560350178704

/-! ## A014397.P11979590100242313783

`A192517(A000217(n+6)+n+1)`
-/

namespace A014397.P11979590100242313783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A014397.P11979590100242313783

/-!
# A014398: Number of loopless multigraphs with 8 nodes and n edges.

The programs for A014398, there is no canonical definition to state claims against.
-/

/-! ## A014398.P1412206983225710102

`A192517(A155212(n+4)+1)`
-/

namespace A014398.P1412206983225710102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A155212 (n + 4) + 1).toNat

end

end A014398.P1412206983225710102

/-! ## A014398.P12257306823516229321

`A192517(A000217(n+8)-7)`
-/

namespace A014398.P12257306823516229321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A000217 (n + 8) - 7).toNat

end

end A014398.P12257306823516229321

/-! ## A014398.P17201490103520659717

`A192517(A000124(n+8)-8)`
-/

namespace A014398.P17201490103520659717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A000124 (n + 8) - 8).toNat

end

end A014398.P17201490103520659717

/-! ## A014398.P7313581612497088199

`A192517(A167487(n+5)+2*n+1)`
-/

namespace A014398.P7313581612497088199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A167487 (n + 5) + (2 * n + 1 : ℤ)).toNat

end

end A014398.P7313581612497088199

/-! ## A014398.P16209793994517310359

`A192517(A005843(n+4)+A000217(n+6))`
-/

namespace A014398.P16209793994517310359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A005843 (n + 4) + A000217 (n + 6)).toNat

end

end A014398.P16209793994517310359

/-!
# A014399: Inverse of 390th cyclotomic polynomial.

The programs for A014399, there is no canonical definition to state claims against.
-/

/-! ## A014399.P5757782568144418022

`A014204(n)*A033999(n)`
-/

namespace A014399.P5757782568144418022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014204 n * A033999 n

end

end A014399.P5757782568144418022

