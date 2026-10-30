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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A377000: Array read by ascending antidiagonals: T(n,k) = number of n-esthetic numbers with k digits.

The programs for A377000, there is no canonical definition to state claims against.
-/

/-! ## A377000.P3445248704328831390

`A208671(A014132(n+1)%A365368(3*n+4))`
-/

namespace A377000.P3445248704328831390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (Int.tmod (A014132 (n + 1)) (A365368 (3 * n + 4))).toNat

end

end A377000.P3445248704328831390

/-! ## A377000.P9459881386533107102

`A088519(A208919(n+2))`
-/

namespace A377000.P9459881386533107102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A208919 (n + 2)).toNat

end

end A377000.P9459881386533107102

/-! ## A377000.P6578150231642491619

`A208777(n+1)+A011731(A022171(n))`
-/

namespace A377000.P6578150231642491619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (n + 1) + A011731 (A022171 n).toNat

end

end A377000.P6578150231642491619

/-! ## A377000.P8194937294356638073

`A277143(A177808(n))+A208777(n+1)`
-/

namespace A377000.P8194937294356638073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277143 (A177808 n).toNat + A208777 (n + 1)

end

end A377000.P8194937294356638073

/-! ## A377000.P5785115478632190108

`A208777(n+1)-A016389(A022166(n))`
-/

namespace A377000.P5785115478632190108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (n + 1) - A016389 (A022166 n).toNat

end

end A377000.P5785115478632190108

/-!
# A377003: Number of inequivalent 2*n X 6 binary arrays with row sums 3 and column sums n up to row and column permutations.

The programs for A377003, there is no canonical definition to state claims against.
-/

/-! ## A377003.P16880526208660904266

`A377007(A167614(n+2))`
-/

namespace A377003.P16880526208660904266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 (A167614 (n + 2)).toNat

end

end A377003.P16880526208660904266

/-! ## A377003.P11011849309220920654

`A377007(A155212(n)+4)`
-/

namespace A377003.P11011849309220920654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 (A155212 n + 4).toNat

end

end A377003.P11011849309220920654

/-! ## A377003.P3936063041534492656

`A377007(A055999(n+1)+2)`
-/

namespace A377003.P3936063041534492656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 (A055999 (n + 1) + 2).toNat

end

end A377003.P3936063041534492656

/-! ## A377003.P14043105345850701681

`A377007(A374004(n+1)-1)`
-/

namespace A377003.P14043105345850701681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 (A374004 (n + 1) - 1).toNat

end

end A377003.P14043105345850701681

/-! ## A377003.P1839409390536202496

`A377007(A000217(n+3)+3)`
-/

namespace A377003.P1839409390536202496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 (A000217 (n + 3) + 3).toNat

end

end A377003.P1839409390536202496

/-!
# A377004: Number of inequivalent 2*n X 8 binary arrays with row sums 4 and column sums n up to row and column permutations.

The programs for A377004, there is no canonical definition to state claims against.
-/

/-! ## A377004.P10284029673697847137

`A377007(A056115(n)+10)`
-/

namespace A377004.P10284029673697847137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 (A056115 n + 10).toNat

end

end A377004.P10284029673697847137

/-! ## A377004.P3827740934720831959

`A377007(eq[4, A025581(n)])`
-/

namespace A377004.P3827740934720831959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A377004.P3827740934720831959

/-! ## A377004.P11277980935427301303

`A377007(A055999(n+2)+1)`
-/

namespace A377004.P11277980935427301303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 (A055999 (n + 2) + 1).toNat

end

end A377004.P11277980935427301303

/-! ## A377004.P16297076971728174712

`A377007(A167499(n+3)-1)`
-/

namespace A377004.P16297076971728174712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 (A167499 (n + 3) - 1).toNat

end

end A377004.P16297076971728174712

/-! ## A377004.P181603559447910486

`A377007(A000217(n+4)+4)`
-/

namespace A377004.P181603559447910486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 (A000217 (n + 4) + 4).toNat

end

end A377004.P181603559447910486

/-!
# A377005: Number of inequivalent 2*n X 10 binary arrays with row sums 5 and column sums n up to row and column permutations.

The programs for A377005, there is no canonical definition to state claims against.
-/

/-! ## A377005.P4185536309119698463

`A377007(A055999(n+3))`
-/

namespace A377005.P4185536309119698463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 (A055999 (n + 3)).toNat

end

end A377005.P4185536309119698463

/-! ## A377005.P7297840311566583076

`A377007(A167499(n+4))`
-/

namespace A377005.P7297840311566583076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 (A167499 (n + 4)).toNat

end

end A377005.P7297840311566583076

/-! ## A377005.P17855044491417330262

`A377007(eq[5, A025581(n)])`
-/

namespace A377005.P17855044491417330262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A377005.P17855044491417330262

/-! ## A377005.P16000799365695098816

`A377007(A000096(n+4)+∑[A377007(n)])`
-/

namespace A377005.P16000799365695098816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 (A000096 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A377005.P16000799365695098816

/-!
# A377006: Number of inequivalent 2*n X 12 binary arrays with row sums 6 and column sums n up to row and column permutations.

The programs for A377006, there is no canonical definition to state claims against.
-/

/-! ## A377006.P841296572214519544

`A377007(A000096(n+5)+8-A377007(n))`
-/

namespace A377006.P841296572214519544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377007 (A000096 (n + 5) + 8 - A377007 n).toNat

end

end A377006.P841296572214519544

/-!
# A377007: Array read by antidiagonals: T(n,k) is the number of inequivalent 2*n X 2*k binary matrices with all row sums k and column sums n up to permutations of rows and columns.

The programs for A377007, there is no canonical definition to state claims against.
-/

/-! ## A377007.P6260624588022293693

`A143796(A225413(n))`
-/

namespace A377007.P6260624588022293693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143796 (A225413 n).toNat

end

end A377007.P6260624588022293693

/-! ## A377007.P16102011940979504627

`A104307(A395185(n))`
-/

namespace A377007.P16102011940979504627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104307 (A395185 n).toNat

end

end A377007.P16102011940979504627

/-! ## A377007.P10812551316011693717

`A399119(A342980(n))`
-/

namespace A377007.P10812551316011693717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399119 (A342980 n).toNat

end

end A377007.P10812551316011693717

/-! ## A377007.P7188020197150846188

`A001817(2^A363845(n))`
-/

namespace A377007.P7188020197150846188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A363845 n : ℤ))).toNat

end

end A377007.P7188020197150846188

/-! ## A377007.P10939369755025548309

`A046693(floor(floor(A395185(n)/2)/2))`
-/

namespace A377007.P10939369755025548309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046693 ⌊(⌊(A395185 n : ℚ) / 2⌋ : ℚ) / 2⌋.toNat

end

end A377007.P10939369755025548309

/-!
# A377009: Number of odd terms in the Collatz trajectory of k = 4n-1 which are a new record high among its odd terms.

The programs for A377009, there is no canonical definition to state claims against.
-/

/-! ## A377009.P5018301124180292991

`A376996(4*(n+1)-1)`
-/

namespace A377009.P5018301124180292991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376996 (4 * (n + 1) - 1)

end

end A377009.P5018301124180292991

/-! ## A377009.P12669932511341069167

`A221469(A016969(n))`
-/

namespace A377009.P12669932511341069167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221469 (A016969 n).toNat

end

end A377009.P12669932511341069167

/-! ## A377009.P9027112566252039922

`A221469(A017641(n))`
-/

namespace A377009.P9027112566252039922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221469 (A017641 n).toNat

end

end A377009.P9027112566252039922

/-! ## A377009.P10241251890689078276

`A221469(A098502(n+1))`
-/

namespace A377009.P10241251890689078276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221469 (A098502 (n + 1)).toNat

end

end A377009.P10241251890689078276

/-! ## A377009.P3685834287728212075

`A221469(A004767(n))-1`
-/

namespace A377009.P3685834287728212075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221469 (A004767 n).toNat - 1

end

end A377009.P3685834287728212075

/-! ## A377009.P13458287431302978769

`A221469(A101328(n+3))`
-/

namespace A377009.P13458287431302978769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221469 (A101328 (n + 3)).toNat

end

end A377009.P13458287431302978769

/-! ## A377009.P6697870107961932567

`A221469(A017545(n)+8)`
-/

namespace A377009.P6697870107961932567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221469 (A017545 n + 8).toNat

end

end A377009.P6697870107961932567

/-! ## A377009.P4609059581636746892

`A221469(A017533(n)+9)`
-/

namespace A377009.P4609059581636746892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221469 (A017533 n + 9).toNat

end

end A377009.P4609059581636746892

/-! ## A377009.P6358155142777321659

`A221469(A006370(2*n+1)+1)`
-/

namespace A377009.P6358155142777321659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221469 (A006370 (2 * n + 1) + 1).toNat

end

end A377009.P6358155142777321659

/-! ## A377009.P10743480778305463814

`A221469(A302338(2*n+1)+1)`
-/

namespace A377009.P10743480778305463814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221469 (A302338 (2 * n + 1) + 1).toNat

end

end A377009.P10743480778305463814

/-!
# A377011: a(n) = Sum_{k=0..n} 3^k * binomial(2*n+1,n-k).

The programs for A377011, the canonical program `A377011.P16709542778834572411` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377011 has offset 0).

The definition of A377011 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 3^#*C(2*n+1, n-#)]` (program `A377011.P16709542778834572411`, by `A377011.P16709542778834572411.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377011.P15003265737797912372

`∑{#}[n, 4^#*C(2*n-#, n)]`
-/

namespace A377011.P15003265737797912372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 4 ^ k * Nat.choose ((2 * n : ℤ) - (k : ℤ)).toNat n

end

end A377011.P15003265737797912372

namespace A377011

/-- `∑{#}[n, 4^#*C(2*n-#, n)]` -/
def P15003265737797912372.Spec : Prop :=
  ∀ n, (P15003265737797912372.a n : ℤ) = A377011 n

end A377011

/-! ## A377011.P16709542778834572411

`∑{#}[n, 3^#*C(2*n+1, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377011

/-- `∑{#}[n, 3^#*C(2*n+1, n-#)]` -/
def P16709542778834572411.Spec : Prop :=
  ∀ n, (P16709542778834572411.a n : ℤ) = A377011 n

theorem P16709542778834572411.correct : P16709542778834572411.Spec := by
  intro n
  simp only [A377011]

end A377011

/-!
# A377012: Numbers k whose digits can be split into substrings so that the sum of these substrings raised to consecutive powers (1, 2, 3, ...) is the number k itself.

The programs for A377012, there is no canonical definition to state claims against.
-/

/-! ## A377012.P10415269790523565558

`A032799(A007092(n)+11)`
-/

namespace A377012.P10415269790523565558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032799 (A007092 n + 11).toNat

end

end A377012.P10415269790523565558

/-! ## A377012.P9960060045283552513

`A032799(A132271(n+4)+6)`
-/

namespace A377012.P9960060045283552513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032799 (A132271 (n + 4) + 6).toNat

end

end A377012.P9960060045283552513

/-!
# A377013: a(n) = floor(n!*(e - 1/24)).

The programs for A377013, the canonical program `A377013.P341106306071925957` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377013 has offset 0).

The definition of A377013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n!*(e-1/24))` (program `A377013.P341106306071925957`, by `A377013.P341106306071925957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377013.P341106306071925957

`floor(n!*(e-1/24))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377013

/-- `floor(n!*(e-1/24))` -/
def P341106306071925957.Spec : Prop :=
  ∀ n, P341106306071925957.a n = A377013 n

theorem P341106306071925957.correct : P341106306071925957.Spec := by
  intro n
  simp only [A377013]

end A377013

/-! ## A377013.P14680602029217425777

`char[comp[n^n]]+n*a(n-1)` with `a(0)=2`
-/

namespace A377013.P14680602029217425777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + n * a (n - 1)

end

end A377013.P14680602029217425777

namespace A377013

/-- `char[comp[n^n]]+n*a(n-1)` -/
def P14680602029217425777.Spec : Prop :=
  ∀ n, (P14680602029217425777.a n : ℤ) = A377013 n

end A377013

/-! ## A377013.P12177578925831772358

`n*a(n-1)+1-val(A147800(n+1), A046097(n+1))` with `a(0)=2`
-/

namespace A377013.P12177578925831772358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) * a (n - 1) + 1 - (SequenceMachineLib.valuation (A147800 (n + 1)).toNat (A046097 (n + 1)).toNat : ℤ)

end

end A377013.P12177578925831772358

namespace A377013

/-- `n*a(n-1)+1-val(A147800(n+1), A046097(n+1))` -/
def P12177578925831772358.Spec : Prop :=
  ∀ n, P12177578925831772358.a n = A377013 n

end A377013

/-! ## A377013.P4034212105437201716

`n*a(n-1)+1-A378036(A034008(2*(n+2)))` with `a(0)=2, a(1)=2`
-/

namespace A377013.P4034212105437201716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  (n : ℤ) * a (n - 1) + 1 - A378036 (A034008 (2 * (n + 2))).toNat

end

end A377013.P4034212105437201716

namespace A377013

/-- `n*a(n-1)+1-A378036(A034008(2*(n+2)))` -/
def P4034212105437201716.Spec : Prop :=
  ∀ n, P4034212105437201716.a n = A377013 n

end A377013

/-!
# A377016: Semiperimeter of the unique primitive Pythagorean triple whose short leg is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A377016, the canonical program `A377016.P1722148904578130006` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377016 has offset 0).

The definition of A377016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377016.P1722148904578130006

`(A002315(n)+2*A008844(n)-1)/2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A377016

/-- `(A002315(n)+2*A008844(n)-1)/2` -/
def P1722148904578130006.Spec : Prop :=
  ∀ n, P1722148904578130006.a n = (A377016 n : ℚ)

end A377016

/-! ## A377016.P11301157100566696134

`C(∑{#}[n, C(n, #)*3^(n-#)*2^#*2^ceil(#/2)]+1, 2)`
-/

namespace A377016.P11301157100566696134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (2 ^ k : ℚ) * (2 : ℚ) ^ (⌈(k : ℚ) / 2⌉ : ℤ) + 1)).toNat 2

end

end A377016.P11301157100566696134

namespace A377016

/-- `C(∑{#}[n, C(n, #)*3^(n-#)*2^#*2^ceil(#/2)]+1, 2)` -/
def P11301157100566696134.Spec : Prop :=
  ∀ n, (P11301157100566696134.a n : ℤ) = A377016 n

end A377016

/-! ## A377016.P14754683529697886778

`A385977(n)/4`
-/

namespace A377016.P14754683529697886778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385977 n : ℚ) / 4

end

end A377016.P14754683529697886778

namespace A377016

/-- `A385977(n)/4` -/
def P14754683529697886778.Spec : Prop :=
  ∀ n, P14754683529697886778.a n = (A377016 n : ℚ)

end A377016

/-! ## A377016.P14818454427098489768

`C(∑[A003499(n)], 2)`
-/

namespace A377016.P14818454427098489768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003499 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A377016.P14818454427098489768

namespace A377016

/-- `C(∑[A003499(n)], 2)` -/
def P14818454427098489768.Spec : Prop :=
  ∀ n, (P14818454427098489768.a n : ℤ) = A377016 n

end A377016

/-! ## A377016.P17211669313943746924

`C(A002315(n)+1, 2)`
-/

namespace A377016.P17211669313943746924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002315 n + 1).toNat 2

end

end A377016.P17211669313943746924

namespace A377016

/-- `C(A002315(n)+1, 2)` -/
def P17211669313943746924.Spec : Prop :=
  ∀ n, (P17211669313943746924.a n : ℤ) = A377016 n

end A377016

/-! ## A377016.P12271284595918286921

`C(2*A046090(n), 2)`
-/

namespace A377016.P12271284595918286921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A046090 n).toNat 2

end

end A377016.P12271284595918286921

namespace A377016

/-- `C(2*A046090(n), 2)` -/
def P12271284595918286921.Spec : Prop :=
  ∀ n, (P12271284595918286921.a n : ℤ) = A377016 n

end A377016

/-! ## A377016.P7905157473131136096

`C(A182780(2*n), 2)`
-/

namespace A377016.P7905157473131136096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A182780 (2 * n)).toNat 2

end

end A377016.P7905157473131136096

namespace A377016

/-- `C(A182780(2*n), 2)` -/
def P7905157473131136096.Spec : Prop :=
  ∀ n, (P7905157473131136096.a n : ℤ) = A377016 n

end A377016

/-! ## A377016.P14314578153386293657

`C(A228797(2*n+1), 2)`
-/

namespace A377016.P14314578153386293657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A228797 (2 * n + 1)).toNat 2

end

end A377016.P14314578153386293657

namespace A377016

/-- `C(A228797(2*n+1), 2)` -/
def P14314578153386293657.Spec : Prop :=
  ∀ n, (P14314578153386293657.a n : ℤ) = A377016 n

end A377016

/-! ## A377016.P14852621568057481259

`A008844(n)+A001652(n)`
-/

namespace A377016.P14852621568057481259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008844 n + A001652 n

end

end A377016.P14852621568057481259

namespace A377016

/-- `A008844(n)+A001652(n)` -/
def P14852621568057481259.Spec : Prop :=
  ∀ n, P14852621568057481259.a n = A377016 n

end A377016

/-! ## A377016.P12846209842323796515

`A002315(n)*A046090(n)`
-/

namespace A377016.P12846209842323796515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * A046090 n

end

end A377016.P12846209842323796515

namespace A377016

/-- `A002315(n)*A046090(n)` -/
def P12846209842323796515.Spec : Prop :=
  ∀ n, P12846209842323796515.a n = A377016 n

end A377016

/-!
# A377017: Area of the unique primitive Pythagorean triple whose short leg is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A377017, the canonical program `A377017.P5371651612865963793` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377017 has offset 0).

The definition of A377017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377017.P5371651612865963793

`A002315(n)*(A008844(n)-1)/2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A377017

/-- `A002315(n)*(A008844(n)-1)/2` -/
def P5371651612865963793.Spec : Prop :=
  ∀ n, P5371651612865963793.a n = (A377017 n : ℚ)

end A377017

/-! ## A377017.P1903850576924134266

`A001652(n)*A377016(n)`
-/

namespace A377017.P1903850576924134266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n * A377016 n

end

end A377017.P1903850576924134266

namespace A377017

/-- `A001652(n)*A377016(n)` -/
def P1903850576924134266.Spec : Prop :=
  ∀ n, P1903850576924134266.a n = A377017 n

end A377017

/-! ## A377017.P7303764732519323007

`A029549(n)*A077444(n+1)`
-/

namespace A377017.P7303764732519323007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029549 n * A077444 (n + 1)

end

end A377017.P7303764732519323007

namespace A377017

/-- `A029549(n)*A077444(n+1)` -/
def P7303764732519323007.Spec : Prop :=
  ∀ n, P7303764732519323007.a n = A377017 n

end A377017

/-! ## A377017.P659902681029945333

`2*A002315(n)*A029549(n)`
-/

namespace A377017.P659902681029945333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002315 n * A029549 n)

end

end A377017.P659902681029945333

namespace A377017

/-- `2*A002315(n)*A029549(n)` -/
def P659902681029945333.Spec : Prop :=
  ∀ n, P659902681029945333.a n = A377017 n

end A377017

/-! ## A377017.P18378797264952981263

`∑[A002315(2*n)]*A001542(n)`
-/

namespace A377017.P18378797264952981263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001542 n

end

end A377017.P18378797264952981263

namespace A377017

/-- `∑[A002315(2*n)]*A001542(n)` -/
def P18378797264952981263.Spec : Prop :=
  ∀ n, P18378797264952981263.a n = A377017 n

end A377017

/-!
# A377019: Numbers whose prime factorization has exponents that are all factorial numbers.

The programs for A377019, the canonical program `A377019.P8238063563762477433` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377019 has offset 1).

The definition of A377019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377019.P776845531852901995

`∩[A220218(n+1), A377021(n+1)]`
-/

namespace A377019.P776845531852901995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377019.P776845531852901995

namespace A377019

/-- `∩[A220218(n+1), A377021(n+1)]` -/
def P776845531852901995.Spec : Prop :=
  ∀ n, (P776845531852901995.a n : ℤ) = A377019 (n + 1)

end A377019

/-! ## A377019.P17707260155148942662

`∩[A377020(n+1), A377021(n+1)]`
-/

namespace A377019.P17707260155148942662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377019.P17707260155148942662

namespace A377019

/-- `∩[A377020(n+1), A377021(n+1)]` -/
def P17707260155148942662.Spec : Prop :=
  ∀ n, (P17707260155148942662.a n : ℤ) = A377019 (n + 1)

end A377019

/-! ## A377019.P8238063563762477433

`eq[A001221(n+1), A376885(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A377019

/-- `eq[A001221(n+1), A376885(n+1)]+1` -/
def P8238063563762477433.Spec : Prop :=
  ∀ n, (P8238063563762477433.a n : ℤ) = A377019 (n + 1)

theorem P8238063563762477433.correct : P8238063563762477433.Spec := by
  intro n
  simp only [A377019, Nat.add_sub_cancel]

end A377019

/-! ## A377019.P18412264487683830097

`eq[A366145(n+1), A038573(A366145(n+1))]+1`
-/

namespace A377019.P18412264487683830097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A366145 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A377019.P18412264487683830097

namespace A377019

/-- `eq[A366145(n+1), A038573(A366145(n+1))]+1` -/
def P18412264487683830097.Spec : Prop :=
  ∀ n, (P18412264487683830097.a n : ℤ) = A377019 (n + 1)

end A377019

/-! ## A377019.P1646379838927386327

`eq[1, A277543(A256690(n+1))]+1`
-/

namespace A377019.P1646379838927386327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A256690 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377019.P1646379838927386327

namespace A377019

/-- `eq[1, A277543(A256690(n+1))]+1` -/
def P1646379838927386327.Spec : Prop :=
  ∀ n, (P1646379838927386327.a n : ℤ) = A377019 (n + 1)

end A377019

/-! ## A377019.P3396695053614303106

`∪[A004709(n+1), A117070(A390058(2*n+1))]`
-/

namespace A377019.P3396695053614303106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117070 (A390058 (2 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377019.P3396695053614303106

namespace A377019

/-- `∪[A004709(n+1), A117070(A390058(2*n+1))]` -/
def P3396695053614303106.Spec : Prop :=
  ∀ n, (P3396695053614303106.a n : ℤ) = A377019 (n + 1)

end A377019

/-!
# A377021: Numbers whose prime factorization has exponents that are all sums of distinct factorials (A059590, where 0! and 1! are not considered distinct).

The programs for A377021, there is no canonical definition to state claims against.
-/

/-! ## A377021.P2737115457827051072

`lt[A332089(A046951(n+1)), 2]+1`
-/

namespace A377021.P2737115457827051072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332089 (A046951 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A377021.P2737115457827051072

/-! ## A377021.P4625398003240066397

`lt[A122203(n), A008472(n+1)+2]+1`
-/

namespace A377021.P4625398003240066397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A377021.P4625398003240066397

/-! ## A377021.P18084719392847759928

`lt[A122203(n), A286621(n+1)+2]+1`
-/

namespace A377021.P18084719392847759928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286621 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A377021.P18084719392847759928

/-! ## A377021.P5308410140860384904

`comp[A082294(n+1)%A005820(n+1)-1]+1`
-/

namespace A377021.P5308410140860384904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082294 (n + 1)) (A005820 (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A377021.P5308410140860384904

/-! ## A377021.P10512358808542787204

`comp[16*A316432(3*n+5)]`
-/

namespace A377021.P10512358808542787204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A316432 (3 * n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377021.P10512358808542787204

/-! ## A377021.P2015741598287055038

`comp[Δ[A069129(A317508(n+2))]]`
-/

namespace A377021.P2015741598287055038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A317508 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377021.P2015741598287055038

/-! ## A377021.P3541771054332799558

`comp[A400708(C(A400183(n+1), 2))]`
-/

namespace A377021.P3541771054332799558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400708 (Nat.choose (A400183 (n + 1)).toNat 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377021.P3541771054332799558

/-! ## A377021.P11401825009667747834

`lt[A287166(A092905(n)), A000118(n)]`
-/

namespace A377021.P11401825009667747834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287166 (A092905 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377021.P11401825009667747834

/-! ## A377021.P15945951849798921249

`lt[A040292(n), A007947(A178861(n+1))]`
-/

namespace A377021.P15945951849798921249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040292 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A178861 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377021.P15945951849798921249

/-! ## A377021.P4348643680029321227

`lt[A110969(A209559(n+1)), A217558(n)]`
-/

namespace A377021.P4348643680029321227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110969 (A209559 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377021.P4348643680029321227

/-!
# A377022: Numbers whose prime factorization has exponents that have no digit 1 in their factorial-base representation (A255411).

The programs for A377022, there is no canonical definition to state claims against.
-/

/-! ## A377022.P9168574072960451056

`A337050(n+1)^A383664(A015161(n))`
-/

namespace A377022.P9168574072960451056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337050 (n + 1) : ℚ) ^ (A383664 ((A015161 n).toNat + 13) : ℤ)

end

end A377022.P9168574072960451056

/-! ## A377022.P3475912224224293918

`A337050(n+1)^A229648(A360098(n+1))`
-/

namespace A377022.P3475912224224293918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337050 (n + 1) : ℚ) ^ (A229648 (A360098 (n + 1)).toNat : ℤ)

end

end A377022.P3475912224224293918

/-! ## A377022.P566624661691934909

`A337050(n+1)^A197717(A066701(n+2))`
-/

namespace A377022.P566624661691934909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337050 (n + 1) : ℚ) ^ (A197717 (A066701 (n + 2)).toNat : ℤ)

end

end A377022.P566624661691934909

/-! ## A377022.P1933540608920773019

`A000452(n+1)^A010907(A326688(n+3))`
-/

namespace A377022.P1933540608920773019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000452 (n + 1) : ℚ) ^ (A010907 (A326688 (n + 3)).toNat : ℤ)

end

end A377022.P1933540608920773019

/-! ## A377022.P10234803949832574639

`A337050(n+1)^A176895(A281533(3*n+4))`
-/

namespace A377022.P10234803949832574639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337050 (n + 1) : ℚ) ^ (A176895 (A281533 (3 * n + 4)).toNat : ℤ)

end

end A377022.P10234803949832574639

/-!
# A377025: Squares and cubes that are not 6th powers.

The programs for A377025, there is no canonical definition to state claims against.
-/

/-! ## A377025.P8010076476641407602

`∑[runs[A191291(n+1)]+1]-n`
-/

namespace A377025.P8010076476641407602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191291 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A377025.P8010076476641407602

/-! ## A377025.P15826129398917209075

`∑[runs[A191291(A028310(n))]]`
-/

namespace A377025.P15826129398917209075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191291 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377025.P15826129398917209075

/-! ## A377025.P3692888866965369430

`∪[A179125(n+1), A179126(n+1)]`
-/

namespace A377025.P3692888866965369430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377025.P3692888866965369430

/-! ## A377025.P12454228311940396310

`eq[A010052(n), A057427(A055400(n))]`
-/

namespace A377025.P12454228311940396310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A055400 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377025.P12454228311940396310

/-! ## A377025.P2516940342297737407

`A002760(comp[A000105(n)-A027750(2*n+5)])`
-/

namespace A377025.P2516940342297737407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n - A027750 (2 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A377025.P2516940342297737407

/-!
# A377026: Numbers k such that 2^(2^k+1) == -1 (mod k^2).

The programs for A377026, there is no canonical definition to state claims against.
-/

/-! ## A377026.P15982692790197472795

`A093665(A052321(n+2))`
-/

namespace A377026.P15982692790197472795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093665 (A052321 (n + 2)).toNat

end

end A377026.P15982692790197472795

/-! ## A377026.P4732704605642334250

`filter[A006521(n+1), A212793(#)]`
-/

namespace A377026.P4732704605642334250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A377026.P4732704605642334250

/-!
# A377027: a(1) = 1. For n > 1, if a(n-1) is a novel term, a(n) = a(a(n-1)), and if a(n-1) seen k (>1) times (including a(n-1)), with k*a(n-1) < n then a(n) = k*a(n-1); else a(n) = 1.

The programs for A377027, there is no canonical definition to state claims against.
-/

/-! ## A377027.P2213089796311422426

`A379730(n+1)^A256756(n)!`
-/

namespace A377027.P2213089796311422426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379730 (n + 1) ^ Nat.factorial (A256756 n).toNat

end

end A377027.P2213089796311422426

/-! ## A377027.P2596985635964235037

`A379730(n+1)+A000007(A045623(n))`
-/

namespace A377027.P2596985635964235037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379730 (n + 1) + A000007 (A045623 n).toNat

end

end A377027.P2596985635964235037

/-! ## A377027.P9827585772644784923

`A379730(n+1)+A000007(A283877(n))`
-/

namespace A377027.P9827585772644784923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379730 (n + 1) + A000007 (A283877 n).toNat

end

end A377027.P9827585772644784923

/-! ## A377027.P7485448274260023133

`A379730(n+1)+A000007(A295147(n))`
-/

namespace A377027.P7485448274260023133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379730 (n + 1) + A000007 (A295147 n).toNat

end

end A377027.P7485448274260023133

/-! ## A377027.P3722805103202324805

`A344759(A133494(n))*A379730(n+1)`
-/

namespace A377027.P3722805103202324805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344759 (A133494 n).toNat * A379730 (n + 1)

end

end A377027.P3722805103202324805

/-!
# A377028: a(n) = number of integers k <= n such that k is a term in A055932.

The programs for A377028, the canonical program `A377028.P17721679851901498056` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377028 has offset 1).

The definition of A377028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377028.P17721679851901498056

`∑[A341629(1+n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A377028

/-- `∑[A341629(1+n)]` -/
def P17721679851901498056.Spec : Prop :=
  ∀ n, P17721679851901498056.a n = A377028 (n + 1)

theorem P17721679851901498056.correct : P17721679851901498056.Spec := by
  intro n
  simp only [A377028, Nat.add_sub_cancel]

end A377028

/-! ## A377028.P17259420128943020881

`∑[char[A057335(n)-1]]`
-/

namespace A377028.P17259420128943020881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377028.P17259420128943020881

namespace A377028

/-- `∑[char[A057335(n)-1]]` -/
def P17259420128943020881.Spec : Prop :=
  ∀ n, (P17259420128943020881.a n : ℤ) = A377028 (n + 1)

end A377028

/-! ## A377028.P2162339021155627653

`∑[char[A277331(n)-1]]`
-/

namespace A377028.P2162339021155627653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277331 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377028.P2162339021155627653

namespace A377028

/-- `∑[char[A277331(n)-1]]` -/
def P2162339021155627653.Spec : Prop :=
  ∀ n, (P2162339021155627653.a n : ℤ) = A377028 (n + 1)

end A377028

/-! ## A377028.P1427379460515452709

`∑[char[A324939(n)-1]]`
-/

namespace A377028.P1427379460515452709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324939 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377028.P1427379460515452709

namespace A377028

/-- `∑[char[A324939(n)-1]]` -/
def P1427379460515452709.Spec : Prop :=
  ∀ n, (P1427379460515452709.a n : ℤ) = A377028 (n + 1)

end A377028

/-! ## A377028.P14911508438710973346

`∑[A322585(∏{p}[n+1, #])]`
-/

namespace A377028.P14911508438710973346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377028.P14911508438710973346

namespace A377028

/-- `∑[A322585(∏{p}[n+1, #])]` -/
def P14911508438710973346.Spec : Prop :=
  ∀ n, P14911508438710973346.a n = A377028 (n + 1)

end A377028

/-! ## A377028.P7584936764521675892

`∑[A331168(∏{p}[n+1, #])]`
-/

namespace A377028.P7584936764521675892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331168 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377028.P7584936764521675892

namespace A377028

/-- `∑[A331168(∏{p}[n+1, #])]` -/
def P7584936764521675892.Spec : Prop :=
  ∀ n, P7584936764521675892.a n = A377028 (n + 1)

end A377028

/-! ## A377028.P15537475937265147456

`∑[char[A055932(n+1)-1]]`
-/

namespace A377028.P15537475937265147456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377028.P15537475937265147456

namespace A377028

/-- `∑[char[A055932(n+1)-1]]` -/
def P15537475937265147456.Spec : Prop :=
  ∀ n, (P15537475937265147456.a n : ℤ) = A377028 (n + 1)

end A377028

/-! ## A377028.P15714715247091390871

`∑[char[lt[A079067(n+1), 1]]]`
-/

namespace A377028.P15714715247091390871
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377028.P15714715247091390871

namespace A377028

/-- `∑[char[lt[A079067(n+1), 1]]]` -/
def P15714715247091390871.Spec : Prop :=
  ∀ n, (P15714715247091390871.a n : ℤ) = A377028 (n + 1)

end A377028

/-! ## A377028.P6364477055264428060

`∑[C(A071364(n+1), n+1)]`
-/

namespace A377028.P6364477055264428060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071364 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377028.P6364477055264428060

namespace A377028

/-- `∑[C(A071364(n+1), n+1)]` -/
def P6364477055264428060.Spec : Prop :=
  ∀ n, (P6364477055264428060.a n : ℤ) = A377028 (n + 1)

end A377028

/-! ## A377028.P9867805306061810953

`∑[C(A276084(n+1), A061395(n+1))]`
-/

namespace A377028.P9867805306061810953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A276084 (n + 1)).toNat (A061395 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377028.P9867805306061810953

namespace A377028

/-- `∑[C(A276084(n+1), A061395(n+1))]` -/
def P9867805306061810953.Spec : Prop :=
  ∀ n, (P9867805306061810953.a n : ℤ) = A377028 (n + 1)

end A377028

/-! ## A377028.P2624791032218444806

`∑[A008683(A335286(n+1)²)]`
-/

namespace A377028.P2624791032218444806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A335286 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377028.P2624791032218444806

namespace A377028

/-- `∑[A008683(A335286(n+1)²)]` -/
def P2624791032218444806.Spec : Prop :=
  ∀ n, P2624791032218444806.a n = A377028 (n + 1)

end A377028

/-! ## A377028.P2453408887858940730

`∑[A197183(A286469(n+1)²)]`
-/

namespace A377028.P2453408887858940730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197183 (A286469 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377028.P2453408887858940730

namespace A377028

/-- `∑[A197183(A286469(n+1)²)]` -/
def P2453408887858940730.Spec : Prop :=
  ∀ n, P2453408887858940730.a n = A377028 (n + 1)

end A377028

/-! ## A377028.P17740303941031703646

`A341629((n+1)²)+a(n-1)` with `a(0)=1`
-/

namespace A377028.P17740303941031703646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A341629 ((n + 1) ^ 2) + a (n - 1)

end

end A377028.P17740303941031703646

namespace A377028

/-- `A341629((n+1)²)+a(n-1)` -/
def P17740303941031703646.Spec : Prop :=
  ∀ n, P17740303941031703646.a n = A377028 (n + 1)

end A377028

/-!
# A377029: a(1) = 0; thereafter in the binary expansion of a(n-1), expand bits: 1->01 and 0->10.

The programs for A377029, the canonical program `A377029.P15592168475021674256` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377029 has offset 1).

The definition of A377029 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374625, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A377029.P15592168475021674256

`A374625(a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A377029

/-- `A374625(a(n-1))` -/
def P15592168475021674256.Spec : Prop :=
  ∀ n, P15592168475021674256.a n = A377029 (n + 1)

theorem P15592168475021674256.correct : P15592168475021674256.Spec := by
  intro n
  simp only [A377029, Nat.add_sub_cancel]

end A377029

/-! ## A377029.P8525048870035265581

`A320916(A094373(n))`
-/

namespace A377029.P8525048870035265581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320916 (A094373 n).toNat

end

end A377029.P8525048870035265581

namespace A377029

/-- `A320916(A094373(n))` -/
def P8525048870035265581.Spec : Prop :=
  ∀ n, P8525048870035265581.a n = A377029 (n + 1)

end A377029

/-! ## A377029.P4399801402278832809

`A320916(A085431(n+1))`
-/

namespace A377029.P4399801402278832809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320916 (A085431 (n + 1)).toNat

end

end A377029.P4399801402278832809

namespace A377029

/-- `A320916(A085431(n+1))` -/
def P4399801402278832809.Spec : Prop :=
  ∀ n, P4399801402278832809.a n = A377029 (n + 1)

end A377029

/-! ## A377029.P15086217026534402708

`A320916(record[Δ[A004760(n+1)]])`
-/

namespace A377029.P15086217026534402708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320916 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A377029.P15086217026534402708

namespace A377029

/-- `A320916(record[Δ[A004760(n+1)]])` -/
def P15086217026534402708.Spec : Prop :=
  ∀ n, P15086217026534402708.a n = A377029 (n + 1)

end A377029

/-! ## A377029.P16886929385139251194

`A320916(A011782(n)+A000120(n))`
-/

namespace A377029.P16886929385139251194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320916 (A011782 n + A000120 n).toNat

end

end A377029.P16886929385139251194

namespace A377029

/-- `A320916(A011782(n)+A000120(n))` -/
def P16886929385139251194.Spec : Prop :=
  ∀ n, P16886929385139251194.a n = A377029 (n + 1)

end A377029

/-!
# A377032: Odd numbers k such that A000045(k)/A000005(k) is an integer.

The programs for A377032, there is no canonical definition to state claims against.
-/

/-! ## A377032.P983461917862401942

`∩[A003593(n+1), A160684(n+1)]`
-/

namespace A377032.P983461917862401942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377032.P983461917862401942

/-!
# A377034: Antidiagonal-sums of the array A377033(n,k) = n-th term of the k-th differences of the composite numbers (A002808).

The programs for A377034, there is no canonical definition to state claims against.
-/

/-! ## A377034.P16200650395689255638

`A002808(n+2)-A377036(n+1)`
-/

namespace A377034.P16200650395689255638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 2) - A377036 (n + 1)

end

end A377034.P16200650395689255638

/-! ## A377034.P7127787121957050319

`A018252(n+3)-A377036(n+1)`
-/

namespace A377034.P7127787121957050319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 3) - A377036 (n + 1)

end

end A377034.P7127787121957050319

/-!
# A377036: First term of the n-th differences of the composite numbers. Inverse zero-based binomial transform of A002808.

The programs for A377036, there is no canonical definition to state claims against.
-/

/-! ## A377036.P3503883327367384984

`∑{#}[n, (-1)^(n-#)*C(n, #)*A002808(#+1)]`
-/

namespace A377036.P3503883327367384984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A002808 (k + 1) : ℚ)

end

end A377036.P3503883327367384984

/-! ## A377036.P15070949714152309580

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A053767(#)]`
-/

namespace A377036.P15070949714152309580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A053767 k : ℚ)

end

end A377036.P15070949714152309580

/-! ## A377036.P6310901963056070466

`A377033(∑[n]+n)`
-/

namespace A377036.P6310901963056070466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377033 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A377036.P6310901963056070466

/-! ## A377036.P11253701256362150586

`A377033(n*(n+3)/2)%25`
-/

namespace A377036.P11253701256362150586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377033 (SequenceMachineLib.roundAway ((n * (n + 3) : ℚ) / 2)).toNat) 25

end

end A377036.P11253701256362150586

/-! ## A377036.P10233058748488983922

`A377033(A000096(n))+A000007(n+2)`
-/

namespace A377036.P10233058748488983922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377033 (A000096 n).toNat + A000007 (n + 2)

end

end A377036.P10233058748488983922

/-!
# A377038: Array read by antidiagonals downward where A(n,k) is the n-th term of the k-th differences of the squarefree numbers.

The programs for A377038, there is no canonical definition to state claims against.
-/

/-! ## A377038.P2496424931353800871

`A376682(n)-A014083(A267266(n+1))`
-/

namespace A377038.P2496424931353800871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376682 n - A014083 (A267266 (n + 1)).toNat

end

end A377038.P2496424931353800871

/-! ## A377038.P15295125226553857288

`A376682(n)+A178780(A096765(2*n+3))`
-/

namespace A377038.P15295125226553857288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376682 n + A178780 (A096765 (2 * n + 3)).toNat

end

end A377038.P15295125226553857288

/-!
# A377039: Antidiagonal-sums of the array A377038(n,k) = n-th term of k-th differences of squarefree numbers (A005117).

The programs for A377039, there is no canonical definition to state claims against.
-/

/-! ## A377039.P14501339328588218781

`A005117(n+2)-A377041(n+1)`
-/

namespace A377039.P14501339328588218781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) - A377041 (n + 1)

end

end A377039.P14501339328588218781

/-!
# A377041: First term of the n-th differences of the squarefree numbers. Inverse zero-based binomial transform of A005117.

The programs for A377041, there is no canonical definition to state claims against.
-/

/-! ## A377041.P17234537914710048874

`∑{#}[n, (-1)^(n-#)*C(n, #)*A005117(#+1)]`
-/

namespace A377041.P17234537914710048874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A005117 (k + 1) : ℚ)

end

end A377041.P17234537914710048874

/-! ## A377041.P13116349182294125733

`∑{#}[n, (-1)^(n-#)*C(n, #)*A077377(#+1)]`
-/

namespace A377041.P13116349182294125733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A077377 (k + 1) : ℚ)

end

end A377041.P13116349182294125733

/-! ## A377041.P8828415328794019846

`∑{#}[n, (-1)^(n-#)*C(n, #)*A348506(#+1)]`
-/

namespace A377041.P8828415328794019846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A348506 (k + 1) : ℚ)

end

end A377041.P8828415328794019846

/-! ## A377041.P11546023233226067170

`∑{#}[n, (-1)^(n-#)*C(n, #)*A367801(#+1)]`
-/

namespace A377041.P11546023233226067170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A367801 (k + 1) : ℚ)

end

end A377041.P11546023233226067170

/-! ## A377041.P21001574855940721

`A377038(∑[n]+n)`
-/

namespace A377041.P21001574855940721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377038 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A377041.P21001574855940721

/-!
# A377043: The n-th perfect-power A001597(n) minus the n-th power of a prime A000961(n).

The programs for A377043, there is no canonical definition to state claims against.
-/

/-! ## A377043.P6861031142850625815

`A001597(n+1)-A000961(n+1)`
-/

namespace A377043.P6861031142850625815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - A000961 (n + 1)

end

end A377043.P6861031142850625815

/-! ## A377043.P15095837779741612813

`∑[A076412(n)]-A000961(n+1)`
-/

namespace A377043.P15095837779741612813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000961 (n + 1)

end

end A377043.P15095837779741612813

/-! ## A377043.P2126588835586678150

`A377044(n+1)+A057820(n+1)`
-/

namespace A377043.P2126588835586678150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377044 (n + 1) + A057820 (n + 1)

end

end A377043.P2126588835586678150

/-! ## A377043.P14330142429418458461

`abs(A157985(1+n))-A000961(n+1)`
-/

namespace A377043.P14330142429418458461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (1 + n)| - A000961 (n + 1)

end

end A377043.P14330142429418458461

/-! ## A377043.P11854505037064041562

`A001597(n+1)-sqrt(A056798(n+1))`
-/

namespace A377043.P11854505037064041562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) : ℝ) - Real.sqrt (A056798 (n + 1) : ℝ)

end

end A377043.P11854505037064041562

/-! ## A377043.P6258906053991886724

`A001597(n+1)-A138929(n+1)/2`
-/

namespace A377043.P6258906053991886724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) : ℚ) - (A138929 (n + 1) : ℚ) / 2

end

end A377043.P6258906053991886724

/-! ## A377043.P4328799304227192878

`A377044(n+1)+A000961(n+2)-A000961(n+1)`
-/

namespace A377043.P4328799304227192878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377044 (n + 1) + (A000961 (n + 2) - A000961 (n + 1))

end

end A377043.P4328799304227192878

/-! ## A377043.P5527992659864806483

`A001597(n+1)-record[A034699(n+1)]`
-/

namespace A377043.P5527992659864806483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377043.P5527992659864806483

/-!
# A377044: The n-th perfect-power A001597(n) minus the n-th prime-power A246655(n).

The programs for A377044, there is no canonical definition to state claims against.
-/

/-! ## A377044.P11423200429646026692

`A001597(n+1)-A246655(n+1)`
-/

namespace A377044.P11423200429646026692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - A246655 (n + 1)

end

end A377044.P11423200429646026692

/-! ## A377044.P17923960148232753937

`∑[A076412(n)]-A246655(n+1)`
-/

namespace A377044.P17923960148232753937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A246655 (n + 1)

end

end A377044.P17923960148232753937

/-! ## A377044.P2185988375743859656

`A377043(n+1)-A057820(n+1)`
-/

namespace A377044.P2185988375743859656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377043 (n + 1) - A057820 (n + 1)

end

end A377044.P2185988375743859656

/-! ## A377044.P2826557081514827729

`sqrt(A340588(n+1))-A246655(n+1)`
-/

namespace A377044.P2826557081514827729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340588 (n + 1) : ℝ) - (A246655 (n + 1) : ℝ)

end

end A377044.P2826557081514827729

/-! ## A377044.P2724846284203641706

`A001597(n+1)-∑[A275120(n+1)]`
-/

namespace A377044.P2724846284203641706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377044.P2724846284203641706

/-! ## A377044.P8935146525498208474

`∪[(n+1)², A097054(n+1)]-∑[A275120(n+1)]`
-/

namespace A377044.P8935146525498208474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A377044.P8935146525498208474

/-! ## A377044.P12428125551993321986

`A001597(n+1)-A000961(n+2)`
-/

namespace A377044.P12428125551993321986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - A000961 (n + 2)

end

end A377044.P12428125551993321986

/-! ## A377044.P9388797620441472067

`A377043(n+2)-A053289(n+1)`
-/

namespace A377044.P9388797620441472067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377043 (n + 2) - A053289 (n + 1)

end

end A377044.P9388797620441472067

/-! ## A377044.P17033986127395906606

`A000961(n+1)+A377043(n+1)-A000961(n+2)`
-/

namespace A377044.P17033986127395906606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) + (A377043 (n + 1) - A000961 (n + 2))

end

end A377044.P17033986127395906606

/-! ## A377044.P14005824169470103000

`A001597(n+1)+A377043(n+2)-A001597(n+2)`
-/

namespace A377044.P14005824169470103000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) + (A377043 (n + 2) - A001597 (n + 2))

end

end A377044.P14005824169470103000

/-!
# A377045: Number of partitions of cuban primes.

The programs for A377045, there is no canonical definition to state claims against.
-/

/-! ## A377045.P2263294203996083236

`A000041(A002407(n+1))`
-/

namespace A377045.P2263294203996083236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002407 (n + 1)).toNat

end

end A377045.P2263294203996083236

/-!
# A377047: Antidiagonal-sums of the array A377046(n,k) = n-th term of k-th differences of nonsquarefree numbers (A013929).

The programs for A377047, there is no canonical definition to state claims against.
-/

/-! ## A377047.P4591821537464386649

`A013929(n+2)-A377049(n+1)`
-/

namespace A377047.P4591821537464386649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 2) - A377049 (n + 1)

end

end A377047.P4591821537464386649

/-!
# A377049: First term of the n-th differences of the nonsquarefree numbers. Inverse zero-based binomial transform of A013929.

The programs for A377049, the canonical program `A377049.P6557862379142308554` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377049 has offset 0).

The definition of A377049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377049.P6557862379142308554

`∑{#}[n, (-1)^(n-#)*C(n, #)*A013929(#+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A377049

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A013929(#+1)]` -/
def P6557862379142308554.Spec : Prop :=
  ∀ n, P6557862379142308554.a n = (A377049 n : ℚ)

end A377049

/-! ## A377049.P11148906971549611774

`A377046(n+∑[n])`
-/

namespace A377049.P11148906971549611774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377046 (n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A377049.P11148906971549611774

namespace A377049

/-- `A377046(n+∑[n])` -/
def P11148906971549611774.Spec : Prop :=
  ∀ n, P11148906971549611774.a n = A377049 n

end A377049

/-! ## A377049.P14385503100970728896

`A377046(A000096(n))%A266205(n)`
-/

namespace A377049.P14385503100970728896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377046 (A000096 n).toNat) (A266205 n)

end

end A377049.P14385503100970728896

namespace A377049

/-- `A377046(A000096(n))%A266205(n)` -/
def P14385503100970728896.Spec : Prop :=
  ∀ n, P14385503100970728896.a n = A377049 n

end A377049

/-! ## A377049.P8595205002945675469

`A377046(A000096(n))+A035699(n+1)`
-/

namespace A377049.P8595205002945675469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377046 (A000096 n).toNat + A035699 (n + 1)

end

end A377049.P8595205002945675469

namespace A377049

/-- `A377046(A000096(n))+A035699(n+1)` -/
def P8595205002945675469.Spec : Prop :=
  ∀ n, P8595205002945675469.a n = A377049 n

end A377049

/-! ## A377049.P3703309047944309217

`A377046(A000096(n))+A319998(2*n+1)`
-/

namespace A377049.P3703309047944309217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377046 (A000096 n).toNat + A319998 (2 * n + 1)

end

end A377049.P3703309047944309217

namespace A377049

/-- `A377046(A000096(n))+A319998(2*n+1)` -/
def P3703309047944309217.Spec : Prop :=
  ∀ n, P3703309047944309217.a n = A377049 n

end A377049

/-!
# A377050: Position of first appearance of zero in the n-th differences of the nonsquarefree numbers, or 0 if it does not appear.

The programs for A377050, there is no canonical definition to state claims against.
-/

/-! ## A377050.P9543042823710628807

`A053452(A001412(n))-A290460(n+3)`
-/

namespace A377050.P9543042823710628807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053452 (A001412 n).toNat - A290460 (n + 3)

end

end A377050.P9543042823710628807

/-! ## A377050.P14507678285573252425

`A235924(A084438(3*n+4)-A000108(n))`
-/

namespace A377050.P14507678285573252425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235924 (A084438 (3 * n + 4) - A000108 n).toNat

end

end A377050.P14507678285573252425

/-!
# A377051: Array read by antidiagonals downward where A(n,k) is the n-th term of the k-th differences of the powers of primes.

The programs for A377051, there is no canonical definition to state claims against.
-/

/-! ## A377051.P4496085365472577537

`C(A004736(n+1), A001221(A181806(n+1)))`
-/

namespace A377051.P4496085365472577537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1)).toNat (A001221 (A181806 (n + 1)).toNat).toNat

end

end A377051.P4496085365472577537

/-! ## A377051.P34834540376627171

`C(A235224(A181324(2*(n+2))), A008949(n))`
-/

namespace A377051.P34834540376627171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A235224 (A181324 (2 * (n + 2))).toNat).toNat (A008949 n).toNat

end

end A377051.P34834540376627171

/-! ## A377051.P8090583905027728736

`A030528(lt[A325468(2*n), A157156(n+2)])`
-/

namespace A377051.P8090583905027728736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325468 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157156 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A377051.P8090583905027728736

/-! ## A377051.P15171998563300057313

`A241494(A162711(n+1))`
-/

namespace A377051.P15171998563300057313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 (A162711 (n + 1)).toNat

end

end A377051.P15171998563300057313

/-! ## A377051.P17555826994763790893

`A241494(A224841(n+1))`
-/

namespace A377051.P17555826994763790893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 (A224841 (n + 1)).toNat

end

end A377051.P17555826994763790893

/-!
# A377052: Antidiagonal-sums of the array A377051(n,k) = n-th term of k-th differences of powers of primes.

The programs for A377052, there is no canonical definition to state claims against.
-/

/-! ## A377052.P18115386503707572831

`A246655(n+1)-A377054(n+1)`
-/

namespace A377052.P18115386503707572831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) - A377054 (n + 1)

end

end A377052.P18115386503707572831

/-! ## A377052.P1085389794423507440

`A000961(n+2)-A377054(n+1)`
-/

namespace A377052.P1085389794423507440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2) - A377054 (n + 1)

end

end A377052.P1085389794423507440

/-!
# A377054: First term of the n-th differences of the powers of primes. Inverse zero-based binomial transform of A000961.

The programs for A377054, there is no canonical definition to state claims against.
-/

/-! ## A377054.P9723890560013389615

`∑{#}[n, (-1)^(n-#)*C(n, #)*A000961(#+1)]`
-/

namespace A377054.P9723890560013389615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A000961 (k + 1) : ℚ)

end

end A377054.P9723890560013389615

/-! ## A377054.P10338282326129852962

`∑{#}[n, (-1)^(n-#)*C(n, #)*A036116(#+1)]`
-/

namespace A377054.P10338282326129852962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A036116 (k + 1) : ℚ)

end

end A377054.P10338282326129852962

/-! ## A377054.P16671753876041765792

`∑{#}[n, (-1)^(n-#)*C(n, #)*A195943(#+1)]`
-/

namespace A377054.P16671753876041765792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A195943 (k + 1) : ℚ)

end

end A377054.P16671753876041765792

/-! ## A377054.P17565250503997322634

`∑{#}[n, (-1)^(n-#)*C(n, #)*A399967(#+1)]`
-/

namespace A377054.P17565250503997322634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A399967 (k + 1) : ℚ)

end

end A377054.P17565250503997322634

/-! ## A377054.P9043349050034012982

`A377051(∑[n]+n)`
-/

namespace A377054.P9043349050034012982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377051 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A377054.P9043349050034012982

/-!
# A377056: Antidiagonal-sums of the array A175804(n,k) = n-th term of k-th differences of partition numbers (A000041).

The programs for A377056, there is no canonical definition to state claims against.
-/

/-! ## A377056.P6027615246073046460

`A000041(n+1)-A281425(n+1)`
-/

namespace A377056.P6027615246073046460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A281425 (n + 1)

end

end A377056.P6027615246073046460

/-! ## A377056.P13110171641686745748

`A000070(n+1)-(A281425(n+1)+A000070(n))`
-/

namespace A377056.P13110171641686745748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A281425 (n + 1) + A000070 n)

end

end A377056.P13110171641686745748

/-!
# A377057: Numbers k such that there is at least one prime-power between prime(k)+1 and prime(k+1)-1.

The programs for A377057, there is no canonical definition to state claims against.
-/

/-! ## A377057.P6709100988288977927

`A000720(A053607(n+1))`
-/

namespace A377057.P6709100988288977927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A053607 (n + 1)).toNat

end

end A377057.P6709100988288977927

/-! ## A377057.P11174503493226432041

`record[A000720(A163813(n+2))]`
-/

namespace A377057.P11174503493226432041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A163813 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377057.P11174503493226432041

/-! ## A377057.P14267618665694382930

`A061395(2*A053607(n+1))`
-/

namespace A377057.P14267618665694382930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A053607 (n + 1)).toNat

end

end A377057.P14267618665694382930

/-! ## A377057.P3812181182164342781

`A325355(3*A053607(n+1))`
-/

namespace A377057.P3812181182164342781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325355 (3 * A053607 (n + 1)).toNat

end

end A377057.P3812181182164342781

/-! ## A377057.P3015125041764957375

`A061395(lcm(2, A053607(n+1)))`
-/

namespace A377057.P3015125041764957375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A053607 (n + 1)))

end

end A377057.P3015125041764957375

/-! ## A377057.P6079356753108412896

`A061395(or(1, A053607(n+1)))`
-/

namespace A377057.P6079356753108412896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A053607 (n + 1))).toNat

end

end A377057.P6079356753108412896

/-! ## A377057.P7825343908827864455

`A316524(or(1, A053607(n+1)))`
-/

namespace A377057.P7825343908827864455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (Int.lor 1 (A053607 (n + 1))).toNat

end

end A377057.P7825343908827864455

/-! ## A377057.P15534528722131733590

`∪[A086688(n+1), A377287(n+1)]`
-/

namespace A377057.P15534528722131733590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377057.P15534528722131733590

/-!
# A377060: Array read by antidiagonals: T(n,k) is the number of inequivalent n X k nonnegative integer matrices with all column sums n and row sums k up to permutation of rows and columns.

The programs for A377060, there is no canonical definition to state claims against.
-/

/-! ## A377060.P16210765970917962390

`A347648(A122083(n))`
-/

namespace A377060.P16210765970917962390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347648 (A122083 n).toNat

end

end A377060.P16210765970917962390

/-! ## A377060.P1015837592213307078

`A353832(A333159(n)^A333159(n+4))`
-/

namespace A377060.P1015837592213307078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (SequenceMachineLib.roundAway ((A333159 n : ℚ) ^ (A333159 (n + 4) : ℤ))).toNat

end

end A377060.P1015837592213307078

/-! ## A377060.P9257150429962025298

`A353832(A333159(n)%A255208(n+1))`
-/

namespace A377060.P9257150429962025298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (Int.tmod (A333159 n) (A255208 (n + 1))).toNat

end

end A377060.P9257150429962025298

/-! ## A377060.P9138554753351740925

`ceil(A153516(n+1)/A332821(2*n+1))`
-/

namespace A377060.P9138554753351740925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A153516 (n + 1) : ℚ) / (A332821 (2 * n + 1) : ℚ)⌉

end

end A377060.P9138554753351740925

/-! ## A377060.P5388584647309229548

`A329040(A167040(n))`
-/

namespace A377060.P5388584647309229548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329040 (A167040 n).toNat

end

end A377060.P5388584647309229548

/-!
# A377061: Number of inequivalent n X 3 nonnegative integer arrays with row sums 3 and column sums n up to permutations of rows and columns.

The programs for A377061, there is no canonical definition to state claims against.
-/

/-! ## A377061.P12197529138551389862

`A377060(A167614(n+2))`
-/

namespace A377061.P12197529138551389862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377060 (A167614 (n + 2)).toNat

end

end A377061.P12197529138551389862

/-! ## A377061.P9571406116897095206

`A377060(A056000(n)+6)`
-/

namespace A377061.P9571406116897095206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377060 (A056000 n + 6).toNat

end

end A377061.P9571406116897095206

/-! ## A377061.P8706526000169375642

`A377060(A055999(n+1)+2)`
-/

namespace A377061.P8706526000169375642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377060 (A055999 (n + 1) + 2).toNat

end

end A377061.P8706526000169375642

/-! ## A377061.P6782469109523376253

`A377060(A055998(n+2)-1)`
-/

namespace A377061.P6782469109523376253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377060 (A055998 (n + 2) - 1).toNat

end

end A377061.P6782469109523376253

/-! ## A377061.P7454174986783213630

`A377060(eq[A040000(n)+1, A002262(n)])`
-/

namespace A377061.P7454174986783213630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377060 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A377061.P7454174986783213630

/-!
# A377062: Number of inequivalent n X 4 nonnegative integer arrays with row sums 4 and column sums n up to permutations of rows and columns.

The programs for A377062, there is no canonical definition to state claims against.
-/

/-! ## A377062.P3527864994316136267

`A377060(eq[4, A002262(n)])`
-/

namespace A377062.P3527864994316136267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A377062.P3527864994316136267

/-! ## A377062.P8226219615861258565

`A377060(Δ[A055831(n+4)])`
-/

namespace A377062.P8226219615861258565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377060 (f1 (n + 1) - f1 n).toNat

end

end A377062.P8226219615861258565

/-! ## A377062.P18397170620356324836

`A377060(A055999(n+1)+10)`
-/

namespace A377062.P18397170620356324836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377060 (A055999 (n + 1) + 10).toNat

end

end A377062.P18397170620356324836

/-! ## A377062.P16731775687201881265

`A377060(A000217(n+4)+n)`
-/

namespace A377062.P16731775687201881265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377060 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A377062.P16731775687201881265

/-!
# A377064: Number of {-1,0,1} n X n matrices with all rows and columns summing to zero up to permutations of rows.

The programs for A377064, there is no canonical definition to state claims against.
-/

/-! ## A377064.P5502058259638938844

`A377063(∑[4*n])`
-/

namespace A377064.P5502058259638938844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377063 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A377064.P5502058259638938844

/-! ## A377064.P17165048170911385510

`A377063(A046092(n))%A003180(n)`
-/

namespace A377064.P17165048170911385510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377063 (A046092 n).toNat) (A003180 n)

end

end A377064.P17165048170911385510

/-!
# A377065: Number of 3 X n 0..2 matrices with row sums n and column sums 3 up to permutations of rows.

The programs for A377065, the canonical program `A377065.P12584164709197230038` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377065 has offset 0).

The definition of A377065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377065.P12584164709197230038

`(A172634(n)-1)/6+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A377065

/-- `(A172634(n)-1)/6+1` -/
def P12584164709197230038.Spec : Prop :=
  ∀ n, P12584164709197230038.a n = (A377065 n : ℚ)

end A377065

/-! ## A377065.P15015517610919146799

`floor(A172634(n)/6)+1`
-/

namespace A377065.P15015517610919146799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A172634 n : ℚ) / 6⌋ + 1

end

end A377065.P15015517610919146799

namespace A377065

/-- `floor(A172634(n)/6)+1` -/
def P15015517610919146799.Spec : Prop :=
  ∀ n, P15015517610919146799.a n = A377065 n

end A377065

/-! ## A377065.P10925385807530629701

`A377063(C(n+5, 2)-n-1)`
-/

namespace A377065.P10925385807530629701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377063 ((Nat.choose (n + 5) 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A377065.P10925385807530629701

namespace A377065

/-- `A377063(C(n+5, 2)-n-1)` -/
def P10925385807530629701.Spec : Prop :=
  ∀ n, P10925385807530629701.a n = A377065 n

end A377065

/-! ## A377065.P4202976427226123353

`A377063(A167614(n+2))`
-/

namespace A377065.P4202976427226123353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377063 (A167614 (n + 2)).toNat

end

end A377065.P4202976427226123353

namespace A377065

/-- `A377063(A167614(n+2))` -/
def P4202976427226123353.Spec : Prop :=
  ∀ n, P4202976427226123353.a n = A377065 n

end A377065

/-! ## A377065.P1256614512866759146

`A377063(A340266(n+2)+1)`
-/

namespace A377065.P1256614512866759146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377063 (A340266 (n + 2) + 1).toNat

end

end A377065.P1256614512866759146

namespace A377065

/-- `A377063(A340266(n+2)+1)` -/
def P1256614512866759146.Spec : Prop :=
  ∀ n, P1256614512866759146.a n = A377065 n

end A377065

/-!
# A377066: Number of 4 X n 0..2 matrices with row sums n and column sums 4 up to permutations of rows.

The programs for A377066, there is no canonical definition to state claims against.
-/

/-! ## A377066.P17945281090472137929

`A377063(eq[4, A002262(n)])`
-/

namespace A377066.P17945281090472137929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A377066.P17945281090472137929

/-! ## A377066.P13617847490871197118

`A377063(A000217(n+4)+4)`
-/

namespace A377066.P13617847490871197118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377063 (A000217 (n + 4) + 4).toNat

end

end A377066.P13617847490871197118

/-! ## A377066.P9159408402242166287

`A377063(eq[5, A002260(n+1)])`
-/

namespace A377066.P9159408402242166287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A377066.P9159408402242166287

/-!
# A377067: Number of n X 3 0..2 matrices with row sums 3 and column sums n up to permutations of rows.

The programs for A377067, the canonical program `A377067.P16933480983826322669` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377067 has offset 0).

The definition of A377067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377067.P16933480983826322669

`ogf((1-x+x^2)/(1-2x-x^2+3x^3+x^4-x^5-3x^6+x^7+2x^8-x^9))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377067

/-- `ogf((1-x+x^2)/(1-2x-x^2+3x^3+x^4-x^5-3x^6+x^7+2x^8-x^9))` -/
def P16933480983826322669.Spec : Prop :=
  ∀ n, P16933480983826322669.a n = A377067 n

theorem P16933480983826322669.correct : P16933480983826322669.Spec := by
  intro n
  simp only [A377067]

end A377067

/-! ## A377067.P5656588650854042994

`∑[∑[ceil(∑[(n+1)/3])-a(n-1)]-a(n-1)]` with `a(0)=1`
-/

namespace A377067.P5656588650854042994
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ⌈∑ j ∈ Finset.range (n + 1), f3 j⌉ - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377067.P5656588650854042994

namespace A377067

/-- `∑[∑[ceil(∑[(n+1)/3])-a(n-1)]-a(n-1)]` -/
def P5656588650854042994.Spec : Prop :=
  ∀ n, P5656588650854042994.a n = A377067 n

end A377067

/-! ## A377067.P7871476618323681022

`∑[round((n+3)*(2*(n+3)²-27*(-1)^(n+3)+3)/144)]`
-/

namespace A377067.P7871476618323681022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3 : ℤ) * ((2 * (n + 3) ^ 2 : ℤ) - 27 * (-1) ^ (n + 3) + 3) : ℚ) / 144)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377067.P7871476618323681022

namespace A377067

/-- `∑[round((n+3)*(2*(n+3)²-27*(-1)^(n+3)+3)/144)]` -/
def P7871476618323681022.Spec : Prop :=
  ∀ n, P7871476618323681022.a n = A377067 n

end A377067

/-! ## A377067.P5025894230279272861

`A001973(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A377067.P5025894230279272861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001973 n + a (n - 2)

end

end A377067.P5025894230279272861

namespace A377067

/-- `A001973(n)+a(n-2)` -/
def P5025894230279272861.Spec : Prop :=
  ∀ n, P5025894230279272861.a n = A377067 n

end A377067

/-! ## A377067.P14006896211833408548

`∑[A053090(n+3)]%A005718(n)`
-/

namespace A377067.P14006896211833408548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053090 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A005718 n)

end

end A377067.P14006896211833408548

namespace A377067

/-- `∑[A053090(n+3)]%A005718(n)` -/
def P14006896211833408548.Spec : Prop :=
  ∀ n, P14006896211833408548.a n = A377067 n

end A377067

/-! ## A377067.P17268299096637488763

`A053090(n+3)+a(A023443(n))` with `a(0)=1`
-/

namespace A377067.P17268299096637488763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053090 (n + 3) + a (A023443 n).toNat

end

end A377067.P17268299096637488763

namespace A377067

/-- `A053090(n+3)+a(A023443(n))` -/
def P17268299096637488763.Spec : Prop :=
  ∀ n, P17268299096637488763.a n = A377067 n

end A377067

/-!
# A377068: Number of n X 4 0..2 matrices with row sums 4 and column sums n up to permutations of rows.

The programs for A377068, there is no canonical definition to state claims against.
-/

/-! ## A377068.P13897135462121783377

`A377063(A000217(n+4)+n)`
-/

namespace A377068.P13897135462121783377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377063 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A377068.P13897135462121783377

/-! ## A377068.P13700617055306528915

`A377063(A166136(n+1)+A000027(3*n+1))`
-/

namespace A377068.P13700617055306528915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377063 (A166136 (n + 1) + A000027 (3 * n + 1)).toNat

end

end A377068.P13700617055306528915

/-! ## A377068.P17919140832216027377

`A377063(eq[4, A249822(n+1)])`
-/

namespace A377068.P17919140832216027377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A377068.P17919140832216027377

/-!
# A377069: Triangle read by rows: T(n,k) is the number of (k+1)-vertex dominating sets of the (n+1)-path graph that include the first vertex.

The programs for A377069, the canonical program `A377069.P16290722204881367440` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377069 has offset 0).

The definition of A377069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377069.P16290722204881367440

`T(row(n)-3, col(n)-1)+T(n-2,k-1)+T(n-1,k-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377069

/-- `T(row(n)-3, col(n)-1)+T(n-2,k-1)+T(n-1,k-1)` -/
def P16290722204881367440.Spec : Prop :=
  ∀ n, (P16290722204881367440.a n : ℤ) = A377069 n

theorem P16290722204881367440.correct : P16290722204881367440.Spec := by
  intro n
  simp only [A377069]

end A377069

/-! ## A377069.P14971221234635086465

`A212633(n+1)-T(n-1,k)` with `a(0)=1`
-/

namespace A377069.P14971221234635086465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A212633 (n + 1) - SequenceMachineLib.triUp a n

end

end A377069.P14971221234635086465

namespace A377069

/-- `A212633(n+1)-T(n-1,k)` -/
def P14971221234635086465.Spec : Prop :=
  ∀ n, P14971221234635086465.a n = A377069 n

end A377069

/-! ## A377069.P11137122020209182624

`A060701(lt[A008279(n), A133820(n+1)])`
-/

namespace A377069.P11137122020209182624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060701 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A377069.P11137122020209182624

namespace A377069

/-- `A060701(lt[A008279(n), A133820(n+1)])` -/
def P11137122020209182624.Spec : Prop :=
  ∀ n, P11137122020209182624.a n = A377069 n

end A377069

/-! ## A377069.P1864363067947977793

`A233523(3*n+4)%Δ[A100218(n)]`
-/

namespace A377069.P1864363067947977793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233523 (3 * n + 4)) (f1 (n + 1) - f1 n)

end

end A377069.P1864363067947977793

namespace A377069

/-- `A233523(3*n+4)%Δ[A100218(n)]` -/
def P1864363067947977793.Spec : Prop :=
  ∀ n, P1864363067947977793.a n = A377069 n

end A377069

/-! ## A377069.P12164928997496785763

`A131084(n+1)/A050320(A102276(n))`
-/

namespace A377069.P12164928997496785763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131084 (n + 1) : ℚ) / (A050320 (A102276 n).toNat : ℚ)

end

end A377069.P12164928997496785763

namespace A377069

/-- `A131084(n+1)/A050320(A102276(n))` -/
def P12164928997496785763.Spec : Prop :=
  ∀ n, P12164928997496785763.a n = (A377069 n : ℚ)

end A377069

/-!
# A377071: a(n) = binomial(bigomega(n) + omega(n) - 1, omega(n) - 1), where bigomega = A001222 and omega = A001221.

The programs for A377071, the canonical program `A377071.P12918428740894715970` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377071 has offset 1).

The definition of A377071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377071.P4716727811004866029

`A376567(n+1)-A378181(n+1)`
-/

namespace A377071.P4716727811004866029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376567 (n + 1) - A378181 (n + 1)

end

end A377071.P4716727811004866029

namespace A377071

/-- `A376567(n+1)-A378181(n+1)` -/
def P4716727811004866029.Spec : Prop :=
  ∀ n, P4716727811004866029.a n = A377071 (n + 1)

theorem P4716727811004866029.correct : P4716727811004866029.Spec := by
  intro n
  simp only [A377071, Nat.add_sub_cancel, A377071.P4716727811004866029.a, A377071.P12918428740894715970.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A297155, A297155.P1611206963555320167.a, A376567, A376567.P9640430291992892874.a, A378181, A378181.P11540481461231249369.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A252464, A252464.P11274602121942962009.a, A297113, A297113.P441289280190658386.a, A046660, A046660.P3614759855976580945.a, A061395, A061395.P8431317036300486107.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A377071

/-! ## A377071.P3248358882493968531

`C(A252464(A071364(n+1)), A001222(n+1))`
-/

namespace A377071.P3248358882493968531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A252464 (A071364 (n + 1)).toNat).toNat (A001222 (n + 1)).toNat

end

end A377071.P3248358882493968531

namespace A377071

/-- `C(A252464(A071364(n+1)), A001222(n+1))` -/
def P3248358882493968531.Spec : Prop :=
  ∀ n, (P3248358882493968531.a n : ℤ) = A377071 (n + 1)

end A377071

/-! ## A377071.P12918428740894715970

`C(A297155(n+1)+A001222(n+1), A001222(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A377071

/-- `C(A297155(n+1)+A001222(n+1), A001222(n+1))` -/
def P12918428740894715970.Spec : Prop :=
  ∀ n, (P12918428740894715970.a n : ℤ) = A377071 (n + 1)

theorem P12918428740894715970.correct : P12918428740894715970.Spec := by
  intro n
  simp only [A377071, Nat.add_sub_cancel]

end A377071

/-! ## A377071.P15092081442127903598

`A325392(A124508(n+1))`
-/

namespace A377071.P15092081442127903598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325392 (A124508 (n + 1)).toNat

end

end A377071.P15092081442127903598

namespace A377071

/-- `A325392(A124508(n+1))` -/
def P15092081442127903598.Spec : Prop :=
  ∀ n, P15092081442127903598.a n = A377071 (n + 1)

end A377071

/-! ## A377071.P12579263944966426695

`C(A305079(A329600(n+1)), A001222(n+1))`
-/

namespace A377071.P12579263944966426695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A305079 (A329600 (n + 1)).toNat).toNat (A001222 (n + 1)).toNat

end

end A377071.P12579263944966426695

namespace A377071

/-- `C(A305079(A329600(n+1)), A001222(n+1))` -/
def P12579263944966426695.Spec : Prop :=
  ∀ n, (P12579263944966426695.a n : ℤ) = A377071 (n + 1)

end A377071

/-! ## A377071.P4584531323316600932

`A264857(A064549(n+1))`
-/

namespace A377071.P4584531323316600932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264857 (A064549 (n + 1)).toNat

end

end A377071.P4584531323316600932

namespace A377071

/-- `A264857(A064549(n+1))` -/
def P4584531323316600932.Spec : Prop :=
  ∀ n, P4584531323316600932.a n = A377071 (n + 1)

end A377071

/-! ## A377071.P5408288476959745563

`A378181(A129598(n+1))-A378181(n+1)`
-/

namespace A377071.P5408288476959745563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378181 (A129598 (n + 1)).toNat - A378181 (n + 1)

end

end A377071.P5408288476959745563

namespace A377071

/-- `A378181(A129598(n+1))-A378181(n+1)` -/
def P5408288476959745563.Spec : Prop :=
  ∀ n, P5408288476959745563.a n = A377071 (n + 1)

end A377071

/-!
# A377072: a(n) = sum of row n of A377070.

The programs for A377072, there is no canonical definition to state claims against.
-/

/-! ## A377072.P7658694056147912886

`A377378(n+1)-A378182(n+1)`
-/

namespace A377072.P7658694056147912886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377378 (n + 1) - A378182 (n + 1)

end

end A377072.P7658694056147912886

/-! ## A377072.P8609459762647404651

`A378182(A129598(n+1))-A378182(n+1)`
-/

namespace A377072.P8609459762647404651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378182 (A129598 (n + 1)).toNat - A378182 (n + 1)

end

end A377072.P8609459762647404651

/-! ## A377072.P3333323071868133775

`A300383(A291441(n+1))+n`
-/

namespace A377072.P3333323071868133775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300383 (A291441 (n + 1)).toNat + (n : ℤ)

end

end A377072.P3333323071868133775

/-! ## A377072.P934320310297573409

`A000040(n+1)*A219071(3*n)+1+n`
-/

namespace A377072.P934320310297573409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A219071 (3 * n) + 1 + (n : ℤ)

end

end A377072.P934320310297573409

/-!
# A377073: a(n) = rad(n)^binomial(bigomega(n) + omega(n) - 1, omega(n)), where rad = A007947, bigomega = A001222, and omega = A001221.

The programs for A377073, the canonical program `A377073.P14327059145503149103` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377073 has offset 1).

The definition of A377073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377073.P14327059145503149103

`∏{p}[n+1, #]^A378181(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A377073

/-- `∏{p}[n+1, #]^A378181(n+1)` -/
def P14327059145503149103.Spec : Prop :=
  ∀ n, P14327059145503149103.a n = (A377073 (n + 1) : ℚ)

end A377073

/-! ## A377073.P12464846331776657922

`∑{d}[n+1, A000010(#)*A008683(#)²]^A378181(n+1)`
-/

namespace A377073.P12464846331776657922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A000010 d * A008683 d ^ 2 : ℤ) : ℚ) ^ (A378181 (n + 1) : ℤ)

end

end A377073.P12464846331776657922

namespace A377073

/-- `∑{d}[n+1, A000010(#)*A008683(#)²]^A378181(n+1)` -/
def P12464846331776657922.Spec : Prop :=
  ∀ n, P12464846331776657922.a n = (A377073 (n + 1) : ℚ)

end A377073

/-! ## A377073.P4191586319545354506

`A377379(n+1)/A378183(n+1)`
-/

namespace A377073.P4191586319545354506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377379 (n + 1) : ℚ) / (A378183 (n + 1) : ℚ)

end

end A377073.P4191586319545354506

namespace A377073

/-- `A377379(n+1)/A378183(n+1)` -/
def P4191586319545354506.Spec : Prop :=
  ∀ n, P4191586319545354506.a n = (A377073 (n + 1) : ℚ)

end A377073

/-! ## A377073.P6446557138653442373

`∏{p}[n+1, #]^A029962(∏{e}[n+1, #+1])`
-/

namespace A377073.P6446557138653442373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A029962 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) : ℤ)

end

end A377073.P6446557138653442373

namespace A377073

/-- `∏{p}[n+1, #]^A029962(∏{e}[n+1, #+1])` -/
def P6446557138653442373.Spec : Prop :=
  ∀ n, P6446557138653442373.a n = (A377073 (n + 1) : ℚ)

end A377073

/-! ## A377073.P7967879565744486179

`∏{p}[n+1, #]^A051856(A000005(n+1))`
-/

namespace A377073.P7967879565744486179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A051856 (A000005 (n + 1)).toNat : ℤ)

end

end A377073.P7967879565744486179

namespace A377073

/-- `∏{p}[n+1, #]^A051856(A000005(n+1))` -/
def P7967879565744486179.Spec : Prop :=
  ∀ n, P7967879565744486179.a n = (A377073 (n + 1) : ℚ)

end A377073

/-!
# A377074: E.g.f. satisfies A(x) = exp( 3 * (exp(x*A(x)^(1/3)) - 1) ).

The programs for A377074, there is no canonical definition to state claims against.
-/

/-! ## A377074.P1792316538196783660

`A337413(A363142(n))+A107403(n)`
-/

namespace A377074.P1792316538196783660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337413 (A363142 n).toNat + A107403 n

end

end A377074.P1792316538196783660

/-!
# A377075: G.f.: Sum_{k>=0} x^(8*k^2) / Product_{j=1..8*k-1} (1 - x^j).

The programs for A377075, there is no canonical definition to state claims against.
-/

/-! ## A377075.P252247060269924303

`A026813(abs(1-n))%A250120(A153784(n))`
-/

namespace A377075.P252247060269924303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026813 |1 - (n : ℤ)|.toNat) (A250120 (A153784 n).toNat)

end

end A377075.P252247060269924303

/-! ## A377075.P16087807324075083508

`A026813(A358575(∑[n]+3))`
-/

namespace A377075.P16087807324075083508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 (A358575 (∑ j ∈ Finset.range (n + 1), f1 j + 3)).toNat

end

end A377075.P16087807324075083508

/-! ## A377075.P16458813406049419256

`A118759(A026814(n))-A008554(A339235(n))`
-/

namespace A377075.P16458813406049419256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A026814 n).toNat - A008554 (A339235 n).toNat

end

end A377075.P16458813406049419256

/-! ## A377075.P18247955484449994225

`∑{e}[A011782(n), A026813(#)]`
-/

namespace A377075.P18247955484449994225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A026813 (Nat.factorization (f1 n).natAbs p)

end

end A377075.P18247955484449994225

/-!
# A377076: G.f.: Sum_{k>=0} x^(6*k^2) / Product_{j=1..6*k-1} (1 - x^j).

The programs for A377076, there is no canonical definition to state claims against.
-/

/-! ## A377076.P9985019180880878298

`A026811(abs(1-n))%A241144(3*n+4)`
-/

namespace A377076.P9985019180880878298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026811 |1 - (n : ℤ)|.toNat) (A241144 (3 * n + 4))

end

end A377076.P9985019180880878298

/-! ## A377076.P12603321199556715152

`∑{e}[ceil(2^(n-1)), A026811(#)]`
-/

namespace A377076.P12603321199556715152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A026811 (Nat.factorization (f1 n).natAbs p)

end

end A377076.P12603321199556715152

/-! ## A377076.P7544511326905443086

`A026811(n-char[A286000(n+1)])`
-/

namespace A377076.P7544511326905443086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286000 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A377076.P7544511326905443086

/-!
# A377077: G.f.: Sum_{k>=0} x^(7*k^2) / Product_{j=1..7*k-1} (1 - x^j).

The programs for A377077, there is no canonical definition to state claims against.
-/

/-! ## A377077.P2119525128783943122

`A026812(abs(1-n))%A098617(A026926(n+1))`
-/

namespace A377077.P2119525128783943122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026812 |1 - (n : ℤ)|.toNat) (A098617 (A026926 (n + 1)).toNat)

end

end A377077.P2119525128783943122

/-! ## A377077.P232106798166454258

`∑{e}[ceil(2^(n-1)), A026812(#)]`
-/

namespace A377077.P232106798166454258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A026812 (Nat.factorization (f1 n).natAbs p)

end

end A377077.P232106798166454258

/-! ## A377077.P7466313174233272489

`A345672(A008667(n)-A060025(n))`
-/

namespace A377077.P7466313174233272489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345672 (A008667 n - A060025 n).toNat

end

end A377077.P7466313174233272489

/-! ## A377077.P10923364856511759350

`A026812(A001222(ceil(2^(n-1))))`
-/

namespace A377077.P10923364856511759350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (A001222 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A377077.P10923364856511759350

/-! ## A377077.P16054397769356936477

`A026812(n-char[A286000(n+1)])`
-/

namespace A377077.P16054397769356936477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286000 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A377077.P16054397769356936477

/-!
# A377081: G.f.: Sum_{k>=1} x^(3*k^2) * Product_{j=1..k} (1 + x^j).

The programs for A377081, there is no canonical definition to state claims against.
-/

/-! ## A377081.P16882852153803998515

`A000007(∑[A175739(3*n+1)])`
-/

namespace A377081.P16882852153803998515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175739 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A377081.P16882852153803998515

/-! ## A377081.P4982467409706339423

`A341026(∑[A175739(3*n+1)])`
-/

namespace A377081.P4982467409706339423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175739 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341026 ((∑ j ∈ Finset.range (n + 1), f1 j).toNat + 165)

end

end A377081.P4982467409706339423

/-! ## A377081.P15689821740500526399

`A034459(n+1)^∑[A175739(3*n+1)]`
-/

namespace A377081.P15689821740500526399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175739 (3 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034459 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A377081.P15689821740500526399

/-! ## A377081.P3353904186886569376

`A025427(A000196(3*n+1))^A127652(n+1)`
-/

namespace A377081.P3353904186886569376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025427 (A000196 (3 * n + 1)).toNat : ℚ) ^ (A127652 (n + 1) : ℤ)

end

end A377081.P3353904186886569376

/-! ## A377081.P6611246928465276457

`A083913(A000196(3*n+1))^A159976(n+1)`
-/

namespace A377081.P6611246928465276457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083913 (A000196 (3 * n + 1)).toNat : ℚ) ^ (A159976 (n + 1) : ℤ)

end

end A377081.P6611246928465276457

/-!
# A377082: a(0) = 1, a(1) = 3, a(2) = 13; for n >= 2, a(n+1) = 2*3^((a(n)-1)/4) - 1.

The programs for A377082, there is no canonical definition to state claims against.
-/

/-! ## A377082.P15732515079407013434

`record[A048473(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=13`
-/

namespace A377082.P15732515079407013434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13] fun n f1 =>
  A048473 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377082.P15732515079407013434

/-!
# A377084: a(n) is the maximum integer for which some minimum-length sum equaling a(n) of perfect squares less than n^2 excludes (n-1)^2.

The programs for A377084, there is no canonical definition to state claims against.
-/

/-! ## A377084.P5579191227124732779

`A300795(A210984(n+1)+A168256(n))`
-/

namespace A377084.P5579191227124732779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300795 (A210984 (n + 1) + A168256 n).toNat

end

end A377084.P5579191227124732779

/-!
# A377085: a(n) = floor(A377084(n)/(n-1)^2).

The programs for A377085, there is no canonical definition to state claims against.
-/

/-! ## A377085.P14545157138056487391

`floor(A377084(n+3)/(n+2)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377085.P14545157138056487391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A377084 (n + 3) : ℚ) / ((n + 2) ^ 2 : ℚ)⌋

end

end A377085.P14545157138056487391

/-!
# A377086: Number of fixed points under iteration of the map sending a positive integer to the product of its leading base-n digit and the sum of the squares of its base-n digits.

The programs for A377086, there is no canonical definition to state claims against.
-/

/-! ## A377086.P5697832506972353699

`A118914(A081848(n+1)+A000081(n))`
-/

namespace A377086.P5697832506972353699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (A081848 (n + 1) + A000081 n).toNat

end

end A377086.P5697832506972353699

/-! ## A377086.P12481708741855871021

`A086275(A376193(n+1)+A236961(n))`
-/

namespace A377086.P12481708741855871021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086275 (A376193 (n + 1) + A236961 n).toNat

end

end A377086.P12481708741855871021

/-! ## A377086.P14405647990459240258

`A001221(A237384(n+1)-A366741(n))`
-/

namespace A377086.P14405647990459240258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A237384 (n + 1) - A366741 n).toNat

end

end A377086.P14405647990459240258

/-! ## A377086.P6057478648636794846

`A230410(A115579(n+1)*A325860(n))`
-/

namespace A377086.P6057478648636794846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230410 (A115579 (n + 1) * A325860 n).toNat

end

end A377086.P6057478648636794846

/-! ## A377086.P3933616347060532849

`A327310(n)+A257261(A374937(n+7))`
-/

namespace A377086.P3933616347060532849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n + A257261 (A374937 (n + 7)).toNat

end

end A377086.P3933616347060532849

/-!
# A377087: Number of cycles under iteration of the map sending a positive integer to the product of its leading base-n digit and the sum of the squares of its base-n digits.

The programs for A377087, there is no canonical definition to state claims against.
-/

/-! ## A377087.P6684359541611837146

`A281871(A000040(n+1))%A228123(n)`
-/

namespace A377087.P6684359541611837146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281871 (A000040 (n + 1)).toNat) (A228123 n)

end

end A377087.P6684359541611837146

/-! ## A377087.P2555861574618310031

`A281871(sqrt(A001248(n+1)))%A383332(n)`
-/

namespace A377087.P2555861574618310031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281871 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat) (A383332 n)

end

end A377087.P2555861574618310031

/-! ## A377087.P12806703523226946651

`A281871(A006093(n+1)+1)%A383332(n)`
-/

namespace A377087.P12806703523226946651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281871 (A006093 (n + 1) + 1).toNat) (A383332 n)

end

end A377087.P12806703523226946651

/-! ## A377087.P12246351076290778563

`A281871(A001748(n+1)/3)%A383332(n)`
-/

namespace A377087.P12246351076290778563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281871 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat) (A383332 n)

end

end A377087.P12246351076290778563

/-! ## A377087.P834889735324659884

`A281871(A014688(n+1)-(n+1))%A383332(n)`
-/

namespace A377087.P834889735324659884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281871 (A014688 (n + 1) - (n + 1 : ℤ)).toNat) (A383332 n)

end

end A377087.P834889735324659884

/-!
# A377089: Numbers that are both happy (A007770) and elated (A376272).

The programs for A377089, there is no canonical definition to state claims against.
-/

/-! ## A377089.P12513632466987611164

`∩[A007770(n+1), A376272(n+1)]`
-/

namespace A377089.P12513632466987611164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377089.P12513632466987611164

/-!
# A377090: a(0) = 0; thereafter, for n > 0, a(n) is the least integer (in absolute value) not yet in the sequence such that the absolute difference between a(n-1) and a(n) is a prime number; in case of a tie, preference is given to the positive value.

The programs for A377090, there is no canonical definition to state claims against.
-/

/-! ## A377090.P17038682622886541295

`∑[A383444(n)]-A383444(n)`
-/

namespace A377090.P17038682622886541295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A383444 n

end

end A377090.P17038682622886541295

/-! ## A377090.P16126426747452308341

`Δ[A380311(n)]-A383444(n)`
-/

namespace A377090.P16126426747452308341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A383444 n

end

end A377090.P16126426747452308341

/-! ## A377090.P7356742452997130106

`A380311(n+1)-(A383444(n)+A380311(n))`
-/

namespace A377090.P7356742452997130106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380311 (n + 1) - (A383444 n + A380311 n)

end

end A377090.P7356742452997130106

/-!
# A377091: a(0) = 0; thereafter a(n) is the least integer (in absolute value) not yet in the sequence such that the absolute difference between a(n-1) and a(n) is a square; in case of a tie, preference is given to the positive value.

The programs for A377091, there is no canonical definition to state claims against.
-/

/-! ## A377091.P872021436626478128

`∑[A379061(n)]-A379061(n)`
-/

namespace A377091.P872021436626478128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A379061 n

end

end A377091.P872021436626478128

/-!
# A377092: a(0) = 0, and for any n > 0, a(n) is the least integer (in absolute value) not yet in the sequence such that the absolute difference of a(n-1) and a(n) is a Fibonacci number (A000045); in case of a tie, preference is given to the positive value.

The programs for A377092, there is no canonical definition to state claims against.
-/

/-! ## A377092.P1426153244224424025

`∑[A380320(n)]-A380320(n)`
-/

namespace A377092.P1426153244224424025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A380320 n

end

end A377092.P1426153244224424025

/-! ## A377092.P3260332992532966060

`Δ[A380321(n)]-A380320(n)`
-/

namespace A377092.P3260332992532966060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A380320 n

end

end A377092.P3260332992532966060

/-! ## A377092.P5166341963331664488

`A380321(n+1)-(A380321(n)+A380320(n))`
-/

namespace A377092.P5166341963331664488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380321 (n + 1) - (A380321 n + A380320 n)

end

end A377092.P5166341963331664488

/-!
# A377096: G.f. A(x) satisfies [x^(2*n)] A(x)^(5*n) = -5 and [x^(2*n+1)] A(x)^(5*n+2) = [x^(2*n+1)] A(x)^(5*n+3) for n >= 1.

The programs for A377096, there is no canonical definition to state claims against.
-/

/-! ## A377096.P1550101249966364062

`A158882(n)*A366627(A158840(n))`
-/

namespace A377096.P1550101249966364062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158882 n * A366627 (A158840 n).toNat

end

end A377096.P1550101249966364062

/-!
# A377098: G.f. A(x) = Sum_{n>=0} a(n)*x^n where a(n) = Sum_{k=0..n-1} [x^k] A(x)^(k*(n-k)) for n >= 1 with a(0) = 1.

The programs for A377098, there is no canonical definition to state claims against.
-/

/-! ## A377098.P8635718698640667373

`A321621(A224340(n))`
-/

namespace A377098.P8635718698640667373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321621 (A224340 n).toNat

end

end A377098.P8635718698640667373

/-! ## A377098.P14712726634566445452

`A247908(A191743(n!))`
-/

namespace A377098.P14712726634566445452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A191743 (Nat.factorial n)).toNat

end

end A377098.P14712726634566445452

/-!
# A377099: G.f. A(x) satisfies A(x^3)/A(x)^3 = 1 - 3*Sum_{n>=1} x^n/(1 + x^n + x^(2*n)).

The programs for A377099, there is no canonical definition to state claims against.
-/

/-! ## A377099.P10561949714458115915

`A187188(A335503(2*(n+1))+A008776(n))`
-/

namespace A377099.P10561949714458115915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A335503 (2 * (n + 1)) + A008776 n).toNat

end

end A377099.P10561949714458115915

/-! ## A377099.P13387614453962263751

`A008651(Δ[3^(n+1)])`
-/

namespace A377099.P13387614453962263751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A377099.P13387614453962263751

/-! ## A377099.P3438781030022695142

`A033182(Δ[3^(n+1)])`
-/

namespace A377099.P3438781030022695142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A377099.P3438781030022695142

