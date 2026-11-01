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
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C047
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
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
# A393801: Decimal expansion of 1 - 2/sqrt(5).

The programs for A393801, there is no canonical definition to state claims against.
-/

/-! ## A393801.P17605285229213769109

`9-A010532(n)`
-/

namespace A393801.P17605285229213769109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A010532 (n + 1)

end

end A393801.P17605285229213769109

/-!
# A393803: Numbers whose number of nonzero digits is identical in base 2 and 3.

The programs for A393803, the canonical program `A393803.P3807868099825041291` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393803 has offset 1).

The definition of A393803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393803.P14381030079311212520

`eq[log2(A001316(n)), A160384(n)]`
-/

namespace A393803.P14381030079311212520
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A393803.P14381030079311212520

namespace A393803

/-- `eq[log2(A001316(n)), A160384(n)]` -/
def P14381030079311212520.Spec : Prop :=
  ∀ n, (P14381030079311212520.a n : ℤ) = A393803 (n + 1)

end A393803

/-! ## A393803.P11389502828261251092

`eq[2*n-A005187(n), A160384(n)]`
-/

namespace A393803.P11389502828261251092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P11389502828261251092

namespace A393803

/-- `eq[2*n-A005187(n), A160384(n)]` -/
def P11389502828261251092.Spec : Prop :=
  ∀ n, (P11389502828261251092.a n : ℤ) = A393803 (n + 1)

theorem P11389502828261251092.correct : P11389502828261251092.Spec := by
  intro n
  simp only [A393803, Nat.add_sub_cancel, A393803.P11389502828261251092.f1, A393803.P11389502828261251092.f2, A393803.P11389502828261251092.a, A393803.P3807868099825041291.f1, A393803.P3807868099825041291.f2, A393803.P3807868099825041291.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A160384, A160384.P15664302299430304392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393803

/-! ## A393803.P3807868099825041291

`eq[A000120(n), A160384(n)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A393803

/-- `eq[A000120(n), A160384(n)]` -/
def P3807868099825041291.Spec : Prop :=
  ∀ n, (P3807868099825041291.a n : ℤ) = A393803 (n + 1)

theorem P3807868099825041291.correct : P3807868099825041291.Spec := by
  intro n
  simp only [A393803, Nat.add_sub_cancel]

end A393803

/-! ## A393803.P12407947350800969629

`eq[A081603(n), A180017(n)]`
-/

namespace A393803.P12407947350800969629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P12407947350800969629

namespace A393803

/-- `eq[A081603(n), A180017(n)]` -/
def P12407947350800969629.Spec : Prop :=
  ∀ n, (P12407947350800969629.a n : ℤ) = A393803 (n + 1)

end A393803

/-! ## A393803.P2733364821910697026

`eq[log2(A117592(n)), A180017(n)]`
-/

namespace A393803.P2733364821910697026
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A117592 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A393803.P2733364821910697026

namespace A393803

/-- `eq[log2(A117592(n)), A180017(n)]` -/
def P2733364821910697026.Spec : Prop :=
  ∀ n, (P2733364821910697026.a n : ℤ) = A393803 (n + 1)

end A393803

/-! ## A393803.P11130523654975939541

`eq[n-A011371(n), A160384(n)]`
-/

namespace A393803.P11130523654975939541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P11130523654975939541

namespace A393803

/-- `eq[n-A011371(n), A160384(n)]` -/
def P11130523654975939541.Spec : Prop :=
  ∀ n, (P11130523654975939541.a n : ℤ) = A393803 (n + 1)

theorem P11130523654975939541.correct : P11130523654975939541.Spec := by
  intro n
  simp only [A393803, Nat.add_sub_cancel, A393803.P11130523654975939541.f1, A393803.P11130523654975939541.f2, A393803.P11130523654975939541.a, A393803.P3807868099825041291.f1, A393803.P3807868099825041291.f2, A393803.P3807868099825041291.a, A000120, A000120.P2816527436160941581.a, A011371, A011371.P12398255777927387864.a, A160384, A160384.P15664302299430304392.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393803

/-! ## A393803.P13346914381690537703

`eq[A000120(n), A275024(A006047(n))]`
-/

namespace A393803.P13346914381690537703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P13346914381690537703

namespace A393803

/-- `eq[A000120(n), A275024(A006047(n))]` -/
def P13346914381690537703.Spec : Prop :=
  ∀ n, (P13346914381690537703.a n : ℤ) = A393803 (n + 1)

end A393803

/-! ## A393803.P16725863945992024116

`eq[A000120(n), A000120(A289831(n))]`
-/

namespace A393803.P16725863945992024116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289831 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P16725863945992024116

namespace A393803

/-- `eq[A000120(n), A000120(A289831(n))]` -/
def P16725863945992024116.Spec : Prop :=
  ∀ n, (P16725863945992024116.a n : ℤ) = A393803 (n + 1)

end A393803

/-! ## A393803.P14833355644149550909

`eq[A000120(n), A000120(A023717(n))]`
-/

namespace A393803.P14833355644149550909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P14833355644149550909

namespace A393803

/-- `eq[A000120(n), A000120(A023717(n))]` -/
def P14833355644149550909.Spec : Prop :=
  ∀ n, (P14833355644149550909.a n : ℤ) = A393803 (n + 1)

end A393803

/-! ## A393803.P546825554897433609

`eq[A038573(n), A038573(A023717(n))]`
-/

namespace A393803.P546825554897433609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P546825554897433609

namespace A393803

/-- `eq[A038573(n), A038573(A023717(n))]` -/
def P546825554897433609.Spec : Prop :=
  ∀ n, (P546825554897433609.a n : ℤ) = A393803 (n + 1)

end A393803

/-! ## A393803.P1272527829610591831

`eq[A093659(n), A093659(A023717(n))]`
-/

namespace A393803.P1272527829610591831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P1272527829610591831

namespace A393803

/-- `eq[A093659(n), A093659(A023717(n))]` -/
def P1272527829610591831.Spec : Prop :=
  ∀ n, (P1272527829610591831.a n : ℤ) = A393803 (n + 1)

end A393803

/-! ## A393803.P13359421346921509864

`eq[A000120(n), A160385(A023709(n+1))]`
-/

namespace A393803.P13359421346921509864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A023709 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P13359421346921509864

namespace A393803

/-- `eq[A000120(n), A160385(A023709(n+1))]` -/
def P13359421346921509864.Spec : Prop :=
  ∀ n, (P13359421346921509864.a n : ℤ) = A393803 (n + 1)

end A393803

/-!
# A393804: The maximal coefficient in the expansion of Product_{j=0..n} (Sum_{k=1..2^j} x_k).

The programs for A393804, there is no canonical definition to state claims against.
-/

/-! ## A393804.P8316724093847141424

`∏[∑[A010349(A219915(n+3))%2]]`
-/

namespace A393804.P8316724093847141424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010349 (A219915 (n + 3)).toNat) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A393804.P8316724093847141424

/-! ## A393804.P4475606207061596394

`∏[A134021(A273873(n+1))]`
-/

namespace A393804.P4475606207061596394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A273873 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A393804.P4475606207061596394

/-! ## A393804.P14003988039246868838

`∏[A385170(∑[A343386(n)])]`
-/

namespace A393804.P14003988039246868838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343386 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385170 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A393804.P14003988039246868838

/-! ## A393804.P16032292180578923113

`∏[floor(record[A039953(n+1)]/3)+1]`
-/

namespace A393804.P16032292180578923113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039953 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / 3⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A393804.P16032292180578923113

/-! ## A393804.P9897920184468076713

`∏[∑[A003849(A395149(2*(n+1)))]]`
-/

namespace A393804.P9897920184468076713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A395149 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A393804.P9897920184468076713

/-!
# A393806: Palindromes that have only one largest digit (strict maximum).

The programs for A393806, there is no canonical definition to state claims against.
-/

/-! ## A393806.P11353332672634264288

`filter[A343524(n+1), A196368(#)]`
-/

namespace A393806.P11353332672634264288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A393806.P11353332672634264288

/-! ## A393806.P13381747223386622094

`∩[A343524(n+1), A056142(n)]`
-/

namespace A393806.P13381747223386622094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393806.P13381747223386622094

/-! ## A393806.P10785112900365409295

`∩[A201982(n+1), A343524(n+1)]`
-/

namespace A393806.P10785112900365409295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393806.P10785112900365409295

/-! ## A393806.P9369646860004328725

`∩[A343524(n+1), A355301(n+1)]`
-/

namespace A393806.P9369646860004328725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393806.P9369646860004328725

/-! ## A393806.P17454431665956761608

`∩[A056142(A043096(n+1)), A072544(n+1)]`
-/

namespace A393806.P17454431665956761608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (A043096 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393806.P17454431665956761608

/-!
# A393808: a(n) = Sum_{k=1..n} gcd(k^4,n).

The programs for A393808, the canonical program `A393808.P13245784490693188052` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393808 has offset 1).

The definition of A393808 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, gcd((#+1)^4, n+1)]` (program `A393808.P13245784490693188052`, by `A393808.P13245784490693188052.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393808.P13245784490693188052

`∑{#}[n, gcd((#+1)^4, n+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393808

/-- `∑{#}[n, gcd((#+1)^4, n+1)]` -/
def P13245784490693188052.Spec : Prop :=
  ∀ n, (P13245784490693188052.a n : ℤ) = A393808 (n + 1)

theorem P13245784490693188052.correct : P13245784490693188052.Spec := by
  intro n
  simp only [A393808, Nat.add_sub_cancel]

end A393808

/-! ## A393808.P6575992466169645714

`A397733(n+1)%A397702(n+2)`
-/

namespace A393808.P6575992466169645714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397733 (n + 1)) (A397702 (n + 2))

end

end A393808.P6575992466169645714

namespace A393808

/-- `A397733(n+1)%A397702(n+2)` -/
def P6575992466169645714.Spec : Prop :=
  ∀ n, P6575992466169645714.a n = A393808 (n + 1)

end A393808

/-! ## A393808.P4089380050548356279

`A397733(n+1)+A000007(A333157(n))`
-/

namespace A393808.P4089380050548356279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397733 (n + 1) + A000007 (A333157 n).toNat

end

end A393808.P4089380050548356279

namespace A393808

/-- `A397733(n+1)+A000007(A333157(n))` -/
def P4089380050548356279.Spec : Prop :=
  ∀ n, P4089380050548356279.a n = A393808 (n + 1)

end A393808

/-! ## A393808.P13308401446833597103

`A397733(n+1)%A252904(A397750(n))`
-/

namespace A393808.P13308401446833597103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397733 (n + 1)) (A252904 (A397750 n).toNat)

end

end A393808.P13308401446833597103

namespace A393808

/-- `A397733(n+1)%A252904(A397750(n))` -/
def P13308401446833597103.Spec : Prop :=
  ∀ n, P13308401446833597103.a n = A393808 (n + 1)

end A393808

/-! ## A393808.P6661799718916080073

`A397733(n+1)+A010051(A343022(n+1))`
-/

namespace A393808.P6661799718916080073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397733 (n + 1) + A010051 (A343022 (n + 1)).toNat

end

end A393808.P6661799718916080073

namespace A393808

/-- `A397733(n+1)+A010051(A343022(n+1))` -/
def P6661799718916080073.Spec : Prop :=
  ∀ n, P6661799718916080073.a n = A393808 (n + 1)

end A393808

/-!
# A393809: Primes p such that p^2 = (a+b+c)*b + 1 for some primitive Pythagorean triple (a,b,c).

The programs for A393809, there is no canonical definition to state claims against.
-/

/-! ## A393809.P3810681270552648000

`p?[A395517(n+1)]`
-/

namespace A393809.P3810681270552648000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A393809.P3810681270552648000

/-! ## A393809.P3085440483843896075

`filter[A395517(n+1), A010051(#)]`
-/

namespace A393809.P3085440483843896075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A393809.P3085440483843896075

/-! ## A393809.P4269428792100616451

`filter[A395517(n+1), A069513(#)]`
-/

namespace A393809.P4269428792100616451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A393809.P4269428792100616451

/-!
# A393813: Among all the numbers k such that 0 <= k < n and {phi * k} < {phi * n}, a(n) is the one maximizing {phi * k}, where {} denotes the fractional part and phi = A001622.

The programs for A393813, there is no canonical definition to state claims against.
-/

/-! ## A393813.P9626799460308782032

`n+1-A054065(A000124(n))`
-/

namespace A393813.P9626799460308782032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A054065 (A000124 n).toNat

end

end A393813.P9626799460308782032

/-! ## A393813.P15432024674070790858

`n+1-A054065(A054068(A054066(n+1)))`
-/

namespace A393813.P15432024674070790858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A054065 (A054068 (A054066 (n + 1)).toNat).toNat

end

end A393813.P15432024674070790858

/-! ## A393813.P17372313937136100472

`1-A194832(∑[1+n])+n`
-/

namespace A393813.P17372313937136100472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194832 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A393813.P17372313937136100472

/-! ## A393813.P11817662002271412665

`n+1-A194832(A000217(n+1))`
-/

namespace A393813.P11817662002271412665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A194832 (A000217 (n + 1)).toNat

end

end A393813.P11817662002271412665

/-! ## A393813.P15838073866715803417

`A084532(A054347(1+n))-1`
-/

namespace A393813.P15838073866715803417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084532 (A054347 (1 + n)).toNat - 1

end

end A393813.P15838073866715803417

/-! ## A393813.P9942011648075209761

`A215344(A385177(n+1))`
-/

namespace A393813.P9942011648075209761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215344 (A385177 (n + 1)).toNat

end

end A393813.P9942011648075209761

/-! ## A393813.P4523157977584771886

`A215344(∑[A019446(n+1)])`
-/

namespace A393813.P4523157977584771886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215344 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A393813.P4523157977584771886

/-! ## A393813.P17861616055095987583

`A215344(fp[A215344(n+1)])`
-/

namespace A393813.P17861616055095987583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215344 (SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0)

end

end A393813.P17861616055095987583

/-!
# A393814: Minimum value taken by Recamán's sequence (A005132) between terms where A005132(k) mod k increases.

The programs for A393814, there is no canonical definition to state claims against.
-/

/-! ## A393814.P8623449772150317680

`A005132(A393815(1+n))`
-/

namespace A393814.P8623449772150317680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A393815 (1 + n)).toNat

end

end A393814.P8623449772150317680

/-!
# A393815: Indices of the minimum value taken by Recamán's sequence (A005132) between terms where A005132(k) mod k increases.

The programs for A393815, there is no canonical definition to state claims against.
-/

/-! ## A393815.P6436016680408174196

`A057167(A393814(1+n))`
-/

namespace A393815.P6436016680408174196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (A393814 (1 + n)).toNat

end

end A393815.P6436016680408174196

/-! ## A393815.P12246171211758401271

`A173817(A005517(n+1))`
-/

namespace A393815.P12246171211758401271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173817 (A005517 (n + 1)).toNat

end

end A393815.P12246171211758401271

/-! ## A393815.P12006390344191662363

`A345006(A062868(n))+A000051(n)`
-/

namespace A393815.P12006390344191662363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345006 (A062868 n).toNat + A000051 n

end

end A393815.P12006390344191662363

/-! ## A393815.P17159982388846854554

`A395918(n)+A293137(A328296(n))`
-/

namespace A393815.P17159982388846854554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395918 n + A293137 (A328296 n).toNat

end

end A393815.P17159982388846854554

/-!
# A393816: Achilles numbers with exactly 2 distinct prime factors.

The programs for A393816, there is no canonical definition to state claims against.
-/

/-! ## A393816.P11958475610666649002

`∩[A052486(n+1), A355462(n+1)]`
-/

namespace A393816.P11958475610666649002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P11958475610666649002

/-! ## A393816.P9711297444677874356

`∩[A052486(n+1), A391921(n+1)]`
-/

namespace A393816.P9711297444677874356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P9711297444677874356

/-! ## A393816.P1756777575072097721

`∩[A355462(n+1), A389753(n+1)]`
-/

namespace A393816.P1756777575072097721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P1756777575072097721

/-! ## A393816.P15711230411502232879

`∩[A389753(n+1), A391921(n+1)]`
-/

namespace A393816.P15711230411502232879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P15711230411502232879

/-! ## A393816.P15348532273779263321

`∩[A052486(n+1), A338539(n+1)]`
-/

namespace A393816.P15348532273779263321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P15348532273779263321

/-! ## A393816.P7730289261248380686

`∩[A338539(n+1), A393941(n+1)]`
-/

namespace A393816.P7730289261248380686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P7730289261248380686

/-! ## A393816.P2081402310875981224

`∩[A338539(n+1), A393999(n+1)]`
-/

namespace A393816.P2081402310875981224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P2081402310875981224

/-! ## A393816.P10265484851960485132

`∩[A355462(n+1), A391415(n+1)]`
-/

namespace A393816.P10265484851960485132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P10265484851960485132

/-! ## A393816.P1658181768440384138

`∩[A391415(n+1), A391921(n+1)]`
-/

namespace A393816.P1658181768440384138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P1658181768440384138

/-! ## A393816.P11753756654566304172

`∩[A345382(n+1), A389753(n+1)]`
-/

namespace A393816.P11753756654566304172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P11753756654566304172

/-! ## A393816.P5214496543757021167

`∩[A345382(n+1), A391415(n+1)]`
-/

namespace A393816.P5214496543757021167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393816.P5214496543757021167

/-!
# A393818: a(n) is the least odd semiprime > 2*prime(n).

The programs for A393818, the canonical program `A393818.P14790485006410335386` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393818 has offset 1).

The definition of A393818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393818.P5796866155661233340

`A046315(A115392(1+n)-n)`
-/

namespace A393818.P5796866155661233340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (A115392 (1 + n) - (n : ℤ)).toNat

end

end A393818.P5796866155661233340

namespace A393818

/-- `A046315(A115392(1+n)-n)` -/
def P5796866155661233340.Spec : Prop :=
  ∀ n, P5796866155661233340.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P14790485006410335386

`A001358(A289182(A115392(n+1)-n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A393818

/-- `A001358(A289182(A115392(n+1)-n))` -/
def P14790485006410335386.Spec : Prop :=
  ∀ n, P14790485006410335386.a n = A393818 (n + 1)

theorem P14790485006410335386.correct : P14790485006410335386.Spec := by
  intro n
  simp only [A393818, Nat.add_sub_cancel]

end A393818

/-! ## A393818.P1004159297975153772

`A106326(A072055(1+n))`
-/

namespace A393818.P1004159297975153772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A072055 (1 + n)).toNat

end

end A393818.P1004159297975153772

namespace A393818

/-- `A106326(A072055(1+n))` -/
def P1004159297975153772.Spec : Prop :=
  ∀ n, P1004159297975153772.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P10090528583745988070

`A106326(A073582(n+1))`
-/

namespace A393818.P10090528583745988070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A073582 (n + 1)).toNat

end

end A393818.P10090528583745988070

namespace A393818

/-- `A106326(A073582(n+1))` -/
def P10090528583745988070.Spec : Prop :=
  ∀ n, P10090528583745988070.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P13762867020557146687

`A106326(A100484(n+1))`
-/

namespace A393818.P13762867020557146687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A100484 (n + 1)).toNat

end

end A393818.P13762867020557146687

namespace A393818

/-- `A106326(A100484(n+1))` -/
def P13762867020557146687.Spec : Prop :=
  ∀ n, P13762867020557146687.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P18315274857659568558

`A106326(A166496(n+1))`
-/

namespace A393818.P18315274857659568558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A166496 (n + 1)).toNat

end

end A393818.P18315274857659568558

namespace A393818

/-- `A106326(A166496(n+1))` -/
def P18315274857659568558.Spec : Prop :=
  ∀ n, P18315274857659568558.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P9078527605031442404

`A106326(A001747(n+2))`
-/

namespace A393818.P9078527605031442404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A001747 (n + 2)).toNat

end

end A393818.P9078527605031442404

namespace A393818

/-- `A106326(A001747(n+2))` -/
def P9078527605031442404.Spec : Prop :=
  ∀ n, P9078527605031442404.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P18043007858849123325

`A106326(A074845(n+2))`
-/

namespace A393818.P18043007858849123325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A074845 (n + 2)).toNat

end

end A393818.P18043007858849123325

namespace A393818

/-- `A106326(A074845(n+2))` -/
def P18043007858849123325.Spec : Prop :=
  ∀ n, P18043007858849123325.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P11114468508264629022

`A106326(A077017(n+2))`
-/

namespace A393818.P11114468508264629022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A077017 (n + 2)).toNat

end

end A393818.P11114468508264629022

namespace A393818

/-- `A106326(A077017(n+2))` -/
def P11114468508264629022.Spec : Prop :=
  ∀ n, P11114468508264629022.a n = A393818 (n + 1)

end A393818

/-! ## A393818.P16466660005404321680

`A106326(A161344(n+2))`
-/

namespace A393818.P16466660005404321680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A161344 (n + 2)).toNat

end

end A393818.P16466660005404321680

namespace A393818

/-- `A106326(A161344(n+2))` -/
def P16466660005404321680.Spec : Prop :=
  ∀ n, P16466660005404321680.a n = A393818 (n + 1)

end A393818

/-!
# A393820: a(n) is the difference between the nearest upper and lower odd semiprime neighbors of 2*prime(n), divided by 2.

The programs for A393820, there is no canonical definition to state claims against.
-/

/-! ## A393820.P18052351401080095948

`(A393818(n+3)-A393819(n+3))/2`
-/

namespace A393820.P18052351401080095948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393818 (n + 3) - A393819 (n + 3) : ℚ) / 2

end

end A393820.P18052351401080095948

/-!
# A393822: a(n) is the number of unit cubes in the cubic lattice, divided by 24, that have 2 vertices strictly inside and 6 vertices strictly outside the sphere x^2 + y^2 + z^2 = n.

The programs for A393822, there is no canonical definition to state claims against.
-/

/-! ## A393822.P2435912632487543816

`A005087(and(A134717(n+1), A239567(2*n+5)))`
-/

namespace A393822.P2435912632487543816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (Int.land (A134717 (n + 1)) (A239567 (2 * n + 5))).toNat

end

end A393822.P2435912632487543816

/-! ## A393822.P15881202629682194487

`A082858(A213300(2*n+1)%∑[A263837(n+1)])`
-/

namespace A393822.P15881202629682194487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (Int.tmod (A213300 (2 * n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A393822.P15881202629682194487

/-!
# A393823: a(n) is the number of unit cubes in the cubic lattice, divided by 24, that have 3 vertices strictly inside and 5 vertices strictly outside the sphere x^2 + y^2 + z^2 = n.

The programs for A393823, there is no canonical definition to state claims against.
-/

/-! ## A393823.P15606422386477411242

`A333175(n+1)%A333175(A182001(n+2)²)`
-/

namespace A393823.P15606422386477411242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333175 (n + 1)) (A333175 (A182001 (n + 2) ^ 2).toNat)

end

end A393823.P15606422386477411242

/-!
# A393828: a(n) is the least odd semiprime > prime(n).

The programs for A393828, the canonical program `A393828.P14388676286992084639` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393828 has offset 1).

The definition of A393828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393828.P14388676286992084639

`A106326(A000040(1+n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A393828

/-- `A106326(A000040(1+n))` -/
def P14388676286992084639.Spec : Prop :=
  ∀ n, P14388676286992084639.a n = A393828 (n + 1)

theorem P14388676286992084639.correct : P14388676286992084639.Spec := by
  intro n
  simp only [A393828, Nat.add_sub_cancel]

end A393828

/-! ## A393828.P12615938241030345923

`A106326(A006005(1+n))`
-/

namespace A393828.P12615938241030345923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A006005 (1 + n)).toNat

end

end A393828.P12615938241030345923

namespace A393828

/-- `A106326(A006005(1+n))` -/
def P12615938241030345923.Spec : Prop :=
  ∀ n, P12615938241030345923.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P629274566266767085

`A106326(A006093(1+n))`
-/

namespace A393828.P629274566266767085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A006093 (1 + n)).toNat

end

end A393828.P629274566266767085

namespace A393828

/-- `A106326(A006093(1+n))` -/
def P629274566266767085.Spec : Prop :=
  ∀ n, P629274566266767085.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P5833850893798963857

`A106326(A008864(n+1))`
-/

namespace A393828.P5833850893798963857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A008864 (n + 1)).toNat

end

end A393828.P5833850893798963857

namespace A393828

/-- `A106326(A008864(n+1))` -/
def P5833850893798963857.Spec : Prop :=
  ∀ n, P5833850893798963857.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P13553352664520335327

`A106326(A014193(n+1))`
-/

namespace A393828.P13553352664520335327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A014193 (n + 1)).toNat

end

end A393828.P13553352664520335327

namespace A393828

/-- `A106326(A014193(n+1))` -/
def P13553352664520335327.Spec : Prop :=
  ∀ n, P13553352664520335327.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P9324945469382801443

`A106326(A014686(n+1))`
-/

namespace A393828.P9324945469382801443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A014686 (n + 1)).toNat

end

end A393828.P9324945469382801443

namespace A393828

/-- `A106326(A014686(n+1))` -/
def P9324945469382801443.Spec : Prop :=
  ∀ n, P9324945469382801443.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P6809685379599560957

`A106326(A028815(n+1))`
-/

namespace A393828.P6809685379599560957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A028815 (n + 1)).toNat

end

end A393828.P6809685379599560957

namespace A393828

/-- `A106326(A028815(n+1))` -/
def P6809685379599560957.Spec : Prop :=
  ∀ n, P6809685379599560957.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P15279149654474080268

`A106326(A039915(n+1))`
-/

namespace A393828.P15279149654474080268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A039915 (n + 1)).toNat

end

end A393828.P15279149654474080268

namespace A393828

/-- `A106326(A039915(n+1))` -/
def P15279149654474080268.Spec : Prop :=
  ∀ n, P15279149654474080268.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P1765236900346788390

`A106326(A052147(n+1))`
-/

namespace A393828.P1765236900346788390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A052147 (n + 1)).toNat

end

end A393828.P1765236900346788390

namespace A393828

/-- `A106326(A052147(n+1))` -/
def P1765236900346788390.Spec : Prop :=
  ∀ n, P1765236900346788390.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P7669325137657905065

`A106326(A055670(n+1))`
-/

namespace A393828.P7669325137657905065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A055670 (n + 1)).toNat

end

end A393828.P7669325137657905065

namespace A393828

/-- `A106326(A055670(n+1))` -/
def P7669325137657905065.Spec : Prop :=
  ∀ n, P7669325137657905065.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P17132415139847589766

`A106326(A076342(n+1))`
-/

namespace A393828.P17132415139847589766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A076342 (n + 1)).toNat

end

end A393828.P17132415139847589766

namespace A393828

/-- `A106326(A076342(n+1))` -/
def P17132415139847589766.Spec : Prop :=
  ∀ n, P17132415139847589766.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P6576575812660693594

`A106326(A082542(n+1))`
-/

namespace A393828.P6576575812660693594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A082542 (n + 1)).toNat

end

end A393828.P6576575812660693594

namespace A393828

/-- `A106326(A082542(n+1))` -/
def P6576575812660693594.Spec : Prop :=
  ∀ n, P6576575812660693594.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P6096717545418692595

`A106326(A102414(n+1))`
-/

namespace A393828.P6096717545418692595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A102414 (n + 1)).toNat

end

end A393828.P6096717545418692595

namespace A393828

/-- `A106326(A102414(n+1))` -/
def P6096717545418692595.Spec : Prop :=
  ∀ n, P6096717545418692595.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P8970379522984114975

`A106326(A123123(n+1))`
-/

namespace A393828.P8970379522984114975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A123123 (n + 1)).toNat

end

end A393828.P8970379522984114975

namespace A393828

/-- `A106326(A123123(n+1))` -/
def P8970379522984114975.Spec : Prop :=
  ∀ n, P8970379522984114975.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P17882249768958882869

`A106326(A156037(n+1))`
-/

namespace A393828.P17882249768958882869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A156037 (n + 1)).toNat

end

end A393828.P17882249768958882869

namespace A393828

/-- `A106326(A156037(n+1))` -/
def P17882249768958882869.Spec : Prop :=
  ∀ n, P17882249768958882869.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P4871820541614374523

`A106326(A161847(n+1))`
-/

namespace A393828.P4871820541614374523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A161847 (n + 1)).toNat

end

end A393828.P4871820541614374523

namespace A393828

/-- `A106326(A161847(n+1))` -/
def P4871820541614374523.Spec : Prop :=
  ∀ n, P4871820541614374523.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P12700718612250001101

`A106326(A163976(n+1))`
-/

namespace A393828.P12700718612250001101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A163976 (n + 1)).toNat

end

end A393828.P12700718612250001101

namespace A393828

/-- `A106326(A163976(n+1))` -/
def P12700718612250001101.Spec : Prop :=
  ∀ n, P12700718612250001101.a n = A393828 (n + 1)

end A393828

/-! ## A393828.P9195484769411513967

`A106326(A172022(n+1))`
-/

namespace A393828.P9195484769411513967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106326 (A172022 (n + 1)).toNat

end

end A393828.P9195484769411513967

namespace A393828

/-- `A106326(A172022(n+1))` -/
def P9195484769411513967.Spec : Prop :=
  ∀ n, P9195484769411513967.a n = A393828 (n + 1)

end A393828

/-!
# A393830: a(n) is the difference between the nearest upper and lower odd semiprime neighbors of prime(n), divided by 2.

The programs for A393830, there is no canonical definition to state claims against.
-/

/-! ## A393830.P15433480793873274719

`(A393828(n+5)-A393829(n+5))/2`
-/

namespace A393830.P15433480793873274719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393828 (n + 5) - A393829 (n + 5) : ℚ) / 2

end

end A393830.P15433480793873274719

/-! ## A393830.P958864326773880053

`A026741(A393828(n+5)-A393829(n+5))`
-/

namespace A393830.P958864326773880053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A393828 (n + 5) - A393829 (n + 5)).toNat

end

end A393830.P958864326773880053

/-!
# A393834: A variant of Sierpinski carpet, read by antidiagonals.

The programs for A393834, there is no canonical definition to state claims against.
-/

/-! ## A393834.P4802905660136904599

`2-A143007(n)%3`
-/

namespace A393834.P4802905660136904599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A143007 n) 3

end

end A393834.P4802905660136904599

/-! ## A393834.P9431066631780394350

`A062685(val(A143007(n)+1, 6)+1)`
-/

namespace A393834.P9431066631780394350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062685 (SequenceMachineLib.valuation (A143007 n + 1).toNat 6 + 1)

end

end A393834.P9431066631780394350

/-! ## A393834.P14890519521862276853

`A215604(val(A143007(n)+1, 6)+1)`
-/

namespace A393834.P14890519521862276853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215604 (SequenceMachineLib.valuation (A143007 n + 1).toNat 6 + 1)

end

end A393834.P14890519521862276853

/-! ## A393834.P6164646255243607701

`2-A164213(val(A143007(n)+1, 6))`
-/

namespace A393834.P6164646255243607701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A164213 (SequenceMachineLib.valuation (A143007 n + 1).toNat 6)

end

end A393834.P6164646255243607701

/-! ## A393834.P4988731096659126557

`A010673(2*(n+2))^val(A143007(n)+1, 3)`
-/

namespace A393834.P4988731096659126557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (2 * (n + 2)) ^ SequenceMachineLib.valuation (A143007 n + 1).toNat 3

end

end A393834.P4988731096659126557

/-! ## A393834.P8463882647416002434

`(dr(A047671(n+1))%2)^A211312(A186733(n+1))`
-/

namespace A393834.P8463882647416002434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (A047671 (n + 1)) % 2 : ℕ) : ℚ) ^ (A211312 (A186733 (n + 1)).toNat : ℤ)

end

end A393834.P8463882647416002434

/-! ## A393834.P13367196947190295676

`or(char[A127758(n+1)], A153490(n+1))`
-/

namespace A393834.P13367196947190295676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A153490 (n + 1))

end

end A393834.P13367196947190295676

/-! ## A393834.P5029917798946617316

`or(char[A295078(n+1)], A153490(n+1))`
-/

namespace A393834.P5029917798946617316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295078 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A153490 (n + 1))

end

end A393834.P5029917798946617316

/-! ## A393834.P1027004604352211678

`or(char[A341241(n+3)], A153490(n+1))`
-/

namespace A393834.P1027004604352211678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341241 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A153490 (n + 1))

end

end A393834.P1027004604352211678

/-! ## A393834.P780684698143884703

`A153490(n+1)+char[A125816(3*n+4)]`
-/

namespace A393834.P780684698143884703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125816 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153490 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A393834.P780684698143884703

/-!
# A393836: Number of fixed polygiraffes with n cells.

The programs for A393836, there is no canonical definition to state claims against.
-/

/-! ## A393836.P13780039782677298484

`A393390(A167614(n+2)+1)`
-/

namespace A393836.P13780039782677298484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393390 (A167614 (n + 2) + 1).toNat

end

end A393836.P13780039782677298484

/-! ## A393836.P16849502922911225432

`A393390(eq[9, A131818(n+1)+4])`
-/

namespace A393836.P16849502922911225432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A393836.P16849502922911225432

/-!
# A393837: Number of one-sided polygiraffes with n cells.

The programs for A393837, there is no canonical definition to state claims against.
-/

/-! ## A393837.P5034536279592082885

`A393391(A167614(n+2)+1)`
-/

namespace A393837.P5034536279592082885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393391 (A167614 (n + 2) + 1).toNat

end

end A393837.P5034536279592082885

/-! ## A393837.P15856443985869294822

`A393391(A000217(n+3)+4)`
-/

namespace A393837.P15856443985869294822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393391 (A000217 (n + 3) + 4).toNat

end

end A393837.P15856443985869294822

/-!
# A393838: Number of free polygiraffes with n cells.

The programs for A393838, there is no canonical definition to state claims against.
-/

/-! ## A393838.P6614274162530899127

`A393392(eq[3, col(n)]+1)`
-/

namespace A393838.P6614274162530899127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393392 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A393838.P6614274162530899127

/-! ## A393838.P732855186400961627

`A393392(A167614(n+2)+1)`
-/

namespace A393838.P732855186400961627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393392 (A167614 (n + 2) + 1).toNat

end

end A393838.P732855186400961627

/-! ## A393838.P12970352966646557321

`A393392(A000124(n+3)+3)`
-/

namespace A393838.P12970352966646557321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393392 (A000124 (n + 3) + 3).toNat

end

end A393838.P12970352966646557321

/-! ## A393838.P172103890623864517

`A393392(A000217(n+4)-n)`
-/

namespace A393838.P172103890623864517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393392 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A393838.P172103890623864517

/-! ## A393838.P8714304906054467541

`A393392(A055998(n+2)+3-n)`
-/

namespace A393838.P8714304906054467541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393392 (A055998 (n + 2) + 3 - (n : ℤ)).toNat

end

end A393838.P8714304906054467541

/-!
# A393839: Number of squares reachable in n (but no fewer) leaps of a giraffe (the fairy chess piece) on an infinite chessboard.

The programs for A393839, there is no canonical definition to state claims against.
-/

/-! ## A393839.P15806758428302258292

`A393393(∑[n+3]+7)`
-/

namespace A393839.P15806758428302258292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393393 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A393839.P15806758428302258292

/-!
# A393842: Number of n X n binary matrices with exactly 12 1's such that there are an even number of 1's in every row and column.

The programs for A393842, there is no canonical definition to state claims against.
-/

/-! ## A393842.P3648996066745709998

`A400733(a(n-1)+1)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A393842.P3648996066745709998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A400733 (a (n - 1) + 1).toNat

end

end A393842.P3648996066745709998

/-!
# A393843: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1)*(n+2)*x - 6*n*A(x) ) = 0 for n >= 1.

The programs for A393843, there is no canonical definition to state claims against.
-/

/-! ## A393843.P254638079922259650

`ceil(A393763(n+1)/6)`
-/

namespace A393843.P254638079922259650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A393763 (n + 1) : ℚ) / 6⌉

end

end A393843.P254638079922259650

/-! ## A393843.P17890856914096045123

`ceil(A393760(∑[n+4]+2)/6)`
-/

namespace A393843.P17890856914096045123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A393760 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 6⌉

end

end A393843.P17890856914096045123

/-!
# A393846: O.g.f. A(x) satisfies: [x^n] exp( n^6 * x ) / A(x) = 0 for n>0.

The programs for A393846, there is no canonical definition to state claims against.
-/

/-! ## A393846.P8678084212453579871

`A304320(eq[5, A193592(n)])`
-/

namespace A393846.P8678084212453579871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A393846.P8678084212453579871

/-! ## A393846.P3284041777548859323

`A304320(A155212(n+2)+3)`
-/

namespace A393846.P3284041777548859323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (A155212 (n + 2) + 3).toNat

end

end A393846.P3284041777548859323

/-! ## A393846.P9117916259275928769

`A304320(A141214(n+3)-2)`
-/

namespace A393846.P9117916259275928769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (A141214 (n + 3) - 2).toNat

end

end A393846.P9117916259275928769

/-! ## A393846.P15917836279979072408

`A304320(A027379(n+4)-2)`
-/

namespace A393846.P15917836279979072408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (A027379 (n + 4) - 2).toNat

end

end A393846.P15917836279979072408

/-!
# A393847: O.g.f. A(x) satisfies: [x^n] exp( n^7 * x ) / A(x) = 0 for n>0.

The programs for A393847, there is no canonical definition to state claims against.
-/

/-! ## A393847.P10092733723294378400

`A304320(A155212(n+3)+2)`
-/

namespace A393847.P10092733723294378400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (A155212 (n + 3) + 2).toNat

end

end A393847.P10092733723294378400

/-! ## A393847.P6693388958665874673

`A304320(A141214(n+4)-3)`
-/

namespace A393847.P6693388958665874673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (A141214 (n + 4) - 3).toNat

end

end A393847.P6693388958665874673

/-! ## A393847.P213679514875413818

`A304320(A027379(n+5)-3)`
-/

namespace A393847.P213679514875413818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (A027379 (n + 5) - 3).toNat

end

end A393847.P213679514875413818

/-!
# A393850: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = n*(n+1) * [x^(n-1)] A(x)^(n+1) for n >= 1 with A'(0) = 1.

The programs for A393850, there is no canonical definition to state claims against.
-/

/-! ## A393850.P13286154348782588344

`A026741(A243942(n)+n)`
-/

namespace A393850.P13286154348782588344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A243942 n + (n : ℤ)).toNat

end

end A393850.P13286154348782588344

/-!
# A393851: G.f. satisfies A(x) = x + x^2 * d^2/dx^2 A(x)^2/2.

The programs for A393851, there is no canonical definition to state claims against.
-/

/-! ## A393851.P17297367835804795697

`A206292(A077335(n))`
-/

namespace A393851.P17297367835804795697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206292 (A077335 n).toNat

end

end A393851.P17297367835804795697

/-!
# A393855: Sum of the distinct entries in the central row and central column of the (2*n + 1) X (2*n + 1) square array formed by the integers 1, 2, ..., (2*n + 1)^2 in order.

The programs for A393855, the canonical program `A393855.P18172184643186633945` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393855 has offset 0).

The definition of A393855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393855.P18172184643186633945

`ogf((1+21x+23x^2+3x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393855

/-- `ogf((1+21x+23x^2+3x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P18172184643186633945.Spec : Prop :=
  ∀ n, P18172184643186633945.a n = A393855 n

theorem P18172184643186633945.correct : P18172184643186633945.Spec := by
  intro n
  simp only [A393855]

end A393855

/-! ## A393855.P7141409922752957385

`(4*n+1)*(2*n*(n+1)+1)`
-/

namespace A393855.P7141409922752957385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 1) * (2 * n * (n + 1) + 1)

end

end A393855.P7141409922752957385

namespace A393855

/-- `(4*n+1)*(2*n*(n+1)+1)` -/
def P7141409922752957385.Spec : Prop :=
  ∀ n, (P7141409922752957385.a n : ℤ) = A393855 n

end A393855

/-! ## A393855.P8433019617922589987

`A016755(n)-2*n²`
-/

namespace A393855.P8433019617922589987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n - (2 * n ^ 2 : ℤ)

end

end A393855.P8433019617922589987

namespace A393855

/-- `A016755(n)-2*n²` -/
def P8433019617922589987.Spec : Prop :=
  ∀ n, P8433019617922589987.a n = A393855 n

end A393855

/-! ## A393855.P3642282130729629216

`A015237(n)+A011199(n)`
-/

namespace A393855.P3642282130729629216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n + A011199 n

end

end A393855.P3642282130729629216

namespace A393855

/-- `A015237(n)+A011199(n)` -/
def P3642282130729629216.Spec : Prop :=
  ∀ n, P3642282130729629216.a n = A393855 n

end A393855

/-! ## A393855.P7073845497695478364

`A118465(n)+A080860(n)`
-/

namespace A393855.P7073845497695478364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118465 n + A080860 n

end

end A393855.P7073845497695478364

namespace A393855

/-- `A118465(n)+A080860(n)` -/
def P7073845497695478364.Spec : Prop :=
  ∀ n, P7073845497695478364.a n = A393855 n

end A393855

/-! ## A393855.P18130966265963228334

`A139757(n)+A110451(n)`
-/

namespace A393855.P18130966265963228334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n + A110451 n

end

end A393855.P18130966265963228334

namespace A393855

/-- `A139757(n)+A110451(n)` -/
def P18130966265963228334.Spec : Prop :=
  ∀ n, P18130966265963228334.a n = A393855 n

end A393855

/-! ## A393855.P3856500038681319373

`A079588(n)-A007742(n)`
-/

namespace A393855.P3856500038681319373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n - A007742 n

end

end A393855.P3856500038681319373

namespace A393855

/-- `A079588(n)-A007742(n)` -/
def P3856500038681319373.Spec : Prop :=
  ∀ n, P3856500038681319373.a n = A393855 n

end A393855

/-! ## A393855.P11604224071366158647

`A005904(n)-A163832(n)`
-/

namespace A393855.P11604224071366158647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n - A163832 n

end

end A393855.P11604224071366158647

namespace A393855

/-- `A005904(n)-A163832(n)` -/
def P11604224071366158647.Spec : Prop :=
  ∀ n, P11604224071366158647.a n = A393855 n

end A393855

/-! ## A393855.P5406454432629249011

`A144138(n)+A069133(n+1)`
-/

namespace A393855.P5406454432629249011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144138 n + A069133 (n + 1)

end

end A393855.P5406454432629249011

namespace A393855

/-- `A144138(n)+A069133(n+1)` -/
def P5406454432629249011.Spec : Prop :=
  ∀ n, P5406454432629249011.a n = A393855 n

end A393855

/-! ## A393855.P17839355829481484032

`A214659(n)+A100155(n+1)`
-/

namespace A393855.P17839355829481484032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214659 n + A100155 (n + 1)

end

end A393855.P17839355829481484032

namespace A393855

/-- `A214659(n)+A100155(n+1)` -/
def P17839355829481484032.Spec : Prop :=
  ∀ n, P17839355829481484032.a n = A393855 n

end A393855

/-! ## A393855.P11755658999149630251

`A200431(n+1)+A171272(n)`
-/

namespace A393855.P11755658999149630251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200431 (n + 1) + A171272 n

end

end A393855.P11755658999149630251

namespace A393855

/-- `A200431(n+1)+A171272(n)` -/
def P11755658999149630251.Spec : Prop :=
  ∀ n, P11755658999149630251.a n = A393855 n

end A393855

/-! ## A393855.P15739564594822214737

`A192796(n+1)-A000466(n)`
-/

namespace A393855.P15739564594822214737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192796 (n + 1) - A000466 n

end

end A393855.P15739564594822214737

namespace A393855

/-- `A192796(n+1)-A000466(n)` -/
def P15739564594822214737.Spec : Prop :=
  ∀ n, P15739564594822214737.a n = A393855 n

end A393855

/-! ## A393855.P2165425213374923573

`A295906(n+1)+A255877(n+1)`
-/

namespace A393855.P2165425213374923573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295906 (n + 1) + A255877 (n + 1)

end

end A393855.P2165425213374923573

namespace A393855

/-- `A295906(n+1)+A255877(n+1)` -/
def P2165425213374923573.Spec : Prop :=
  ∀ n, P2165425213374923573.a n = A393855 n

end A393855

/-! ## A393855.P15965013896713674443

`A001844(n)+A001844(n)*A008586(n)`
-/

namespace A393855.P15965013896713674443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + A001844 n * A008586 n

end

end A393855.P15965013896713674443

namespace A393855

/-- `A001844(n)+A001844(n)*A008586(n)` -/
def P15965013896713674443.Spec : Prop :=
  ∀ n, P15965013896713674443.a n = A393855 n

end A393855

/-! ## A393855.P1875649314968346866

`A071289(Δ[n²])`
-/

namespace A393855.P1875649314968346866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071289 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A393855.P1875649314968346866

namespace A393855

/-- `A071289(Δ[n²])` -/
def P1875649314968346866.Spec : Prop :=
  ∀ n, P1875649314968346866.a n = A393855 n

end A393855

/-! ## A393855.P3201749565472270985

`A081436(2*n)+n`
-/

namespace A393855.P3201749565472270985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 (2 * n) + (n : ℤ)

end

end A393855.P3201749565472270985

namespace A393855

/-- `A081436(2*n)+n` -/
def P3201749565472270985.Spec : Prop :=
  ∀ n, P3201749565472270985.a n = A393855 n

end A393855

/-! ## A393855.P1772362815376217281

`A290631(Δ[n²])/2`
-/

namespace A393855.P1772362815376217281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290631 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A393855.P1772362815376217281

namespace A393855

/-- `A290631(Δ[n²])/2` -/
def P1772362815376217281.Spec : Prop :=
  ∀ n, P1772362815376217281.a n = (A393855 n : ℚ)

end A393855

/-! ## A393855.P18404148071930807768

`A129959(Δ[n²])+n`
-/

namespace A393855.P18404148071930807768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129959 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A393855.P18404148071930807768

namespace A393855

/-- `A129959(Δ[n²])+n` -/
def P18404148071930807768.Spec : Prop :=
  ∀ n, P18404148071930807768.a n = A393855 n

end A393855

/-! ## A393855.P13064945670081065189

`A363288(Δ[n²])-n`
-/

namespace A393855.P13064945670081065189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363288 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A393855.P13064945670081065189

namespace A393855

/-- `A363288(Δ[n²])-n` -/
def P13064945670081065189.Spec : Prop :=
  ∀ n, P13064945670081065189.a n = A393855 n

end A393855

/-! ## A393855.P15811800723391935759

`max(A071289(2*n), A071289(2*n+1))`
-/

namespace A393855.P15811800723391935759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A071289 (2 * n)) (A071289 (2 * n + 1))

end

end A393855.P15811800723391935759

namespace A393855

/-- `max(A071289(2*n), A071289(2*n+1))` -/
def P15811800723391935759.Spec : Prop :=
  ∀ n, P15811800723391935759.a n = A393855 n

end A393855

/-!
# A393860: Prime powers q such that q-1 is squarefree.

The programs for A393860, the canonical program `A393860.P11169165742953773267` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393860 has offset 1).

The definition of A393860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3035 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393860.P11169165742953773267

`∩[A000961(n+1), A005117(n+1)+1]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A393860

/-- `∩[A000961(n+1), A005117(n+1)+1]` -/
def P11169165742953773267.Spec : Prop :=
  ∀ n, (P11169165742953773267.a n : ℤ) = A393860 (n + 1)

theorem P11169165742953773267.correct : P11169165742953773267.Spec := by
  intro n
  simp only [A393860, Nat.add_sub_cancel]

end A393860

/-! ## A393860.P2354785749409803610

`∩[A005117(n+1)+1, A246655(n+1)]`
-/

namespace A393860.P2354785749409803610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393860.P2354785749409803610

namespace A393860

/-- `∩[A005117(n+1)+1, A246655(n+1)]` -/
def P2354785749409803610.Spec : Prop :=
  ∀ n, (P2354785749409803610.a n : ℤ) = A393860 (n + 1)

end A393860

/-! ## A393860.P11834429228664206306

`record[A034699(A007913(n+1)+1)]`
-/

namespace A393860.P11834429228664206306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A007913 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393860.P11834429228664206306

namespace A393860

/-- `record[A034699(A007913(n+1)+1)]` -/
def P11834429228664206306.Spec : Prop :=
  ∀ n, P11834429228664206306.a n = A393860 (n + 1)

end A393860

/-! ## A393860.P17168574480155757801

`record[A034699(A055231(n+1)+1)]`
-/

namespace A393860.P17168574480155757801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A055231 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393860.P17168574480155757801

namespace A393860

/-- `record[A034699(A055231(n+1)+1)]` -/
def P17168574480155757801.Spec : Prop :=
  ∀ n, P17168574480155757801.a n = A393860 (n + 1)

end A393860

/-! ## A393860.P12793289236341863146

`record[A028233(A005117(n+1)+1)]`
-/

namespace A393860.P12793289236341863146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A005117 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393860.P12793289236341863146

namespace A393860

/-- `record[A028233(A005117(n+1)+1)]` -/
def P12793289236341863146.Spec : Prop :=
  ∀ n, P12793289236341863146.a n = A393860 (n + 1)

end A393860

/-! ## A393860.P1421301596964761370

`record[A028233(A007947(n+1)+1)]`
-/

namespace A393860.P1421301596964761370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A007947 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393860.P1421301596964761370

namespace A393860

/-- `record[A028233(A007947(n+1)+1)]` -/
def P1421301596964761370.Spec : Prop :=
  ∀ n, P1421301596964761370.a n = A393860 (n + 1)

end A393860

/-! ## A393860.P14148969758069620561

`record[A309639(A007913(n+1)+1)]`
-/

namespace A393860.P14148969758069620561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309639 (A007913 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393860.P14148969758069620561

namespace A393860

/-- `record[A309639(A007913(n+1)+1)]` -/
def P14148969758069620561.Spec : Prop :=
  ∀ n, P14148969758069620561.a n = A393860 (n + 1)

end A393860

/-! ## A393860.P14503098238893649358

`record[A007947(A344005(n+1))+1]`
-/

namespace A393860.P14503098238893649358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A344005 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393860.P14503098238893649358

namespace A393860

/-- `record[A007947(A344005(n+1))+1]` -/
def P14503098238893649358.Spec : Prop :=
  ∀ n, P14503098238893649358.a n = A393860 (n + 1)

end A393860

/-! ## A393860.P11116233797042667540

`record[A100994(A003557(n+1)+n+1)]`
-/

namespace A393860.P11116233797042667540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (A003557 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393860.P11116233797042667540

namespace A393860

/-- `record[A100994(A003557(n+1)+n+1)]` -/
def P11116233797042667540.Spec : Prop :=
  ∀ n, P11116233797042667540.a n = A393860 (n + 1)

end A393860

/-!
# A393869: Numbers k such that A053669(k) < A003557(k).

The programs for A393869, there is no canonical definition to state claims against.
-/

/-! ## A393869.P1042491389332803865

`∪[A360765(n+1), A396324(n+1)]`
-/

namespace A393869.P1042491389332803865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393869.P1042491389332803865

/-! ## A393869.P12223611072887046517

`lt[0, A360543(n+1)]+1`
-/

namespace A393869.P12223611072887046517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A393869.P12223611072887046517

/-! ## A393869.P7368646976242412734

`comp[A393981(1+n)-1]+1`
-/

namespace A393869.P7368646976242412734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393981 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A393869.P7368646976242412734

/-! ## A393869.P10501866200178341008

`comp[A393981(A028310(n))%A393981(n+1)]`
-/

namespace A393869.P10501866200178341008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393981 (A028310 n).toNat) (A393981 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A393869.P10501866200178341008

/-! ## A393869.P10430079150670247011

`lt[A008479(n+1), A003557(n+1)]+1`
-/

namespace A393869.P10430079150670247011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A393869.P10430079150670247011

/-! ## A393869.P11999230975525614817

`lt[A053669(n+1), A003557(n+1)]+1`
-/

namespace A393869.P11999230975525614817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A393869.P11999230975525614817

/-! ## A393869.P17928862632409989266

`A020725(lt[A360480(n+1), A243823(n+1)])`
-/

namespace A393869.P17928862632409989266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393869.P17928862632409989266

/-! ## A393869.P13219456270954529478

`A113484(lt[A360480(n+1), A243823(n+1)])`
-/

namespace A393869.P13219456270954529478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393869.P13219456270954529478

/-!
# A393870: G.f. A(x) satisfies [x^(n+2)] A^(2^n)(x) = n*2^n * [x^(n+1)] A^(2^n)(x) for n >= 1, where A^k(x) denotes the k-th iteration of A(x).

The programs for A393870, there is no canonical definition to state claims against.
-/

/-! ## A393870.P5663846227414911696

`A362619(A177885(n)²)`
-/

namespace A393870.P5663846227414911696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362619 (A177885 n ^ 2).toNat

end

end A393870.P5663846227414911696

/-!
# A393877: Expansion of e.g.f. Sum_{n>=0} Stirling2(2*n,n) * x^n * exp(n*x).

The programs for A393877, there is no canonical definition to state claims against.
-/

/-! ## A393877.P3557920839596703103

`A296235(n)-A329885(A081132(n))`
-/

namespace A393877.P3557920839596703103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296235 n - A329885 (A081132 n).toNat

end

end A393877.P3557920839596703103

/-!
# A393879: G.f. satisfies Sum_{n>=0} (-1)^n * A(x)^(n^2) = 1 - x - x^2 - x^3.

The programs for A393879, there is no canonical definition to state claims against.
-/

/-! ## A393879.P16041989992219056493

`C(A003986(A371605(n)), A086767(n))`
-/

namespace A393879.P16041989992219056493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003986 (A371605 n).toNat).toNat (A086767 n).toNat

end

end A393879.P16041989992219056493

/-! ## A393879.P5127672136507124527

`C(A003986(A371605(n)), A001221(n+1))`
-/

namespace A393879.P5127672136507124527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003986 (A371605 n).toNat).toNat (A001221 (n + 1)).toNat

end

end A393879.P5127672136507124527

/-!
# A393880: G.f. satisfies Sum_{n>=0} (-1)^n * A(x)^(n^2) = 1 - x - x^2.

The programs for A393880, there is no canonical definition to state claims against.
-/

/-! ## A393880.P17034230727064405430

`A366557(n)-A124761(A036633(n+3))`
-/

namespace A393880.P17034230727064405430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366557 n - A124761 (A036633 (n + 3)).toNat

end

end A393880.P17034230727064405430

/-!
# A393888: G.f. A(x) satisfies 3*A(x) = 1 + x + 2*A(x*A(x)).

The programs for A393888, there is no canonical definition to state claims against.
-/

/-! ## A393888.P16531442110957668225

`A392379(∑[2+n]-1)`
-/

namespace A393888.P16531442110957668225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392379 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A393888.P16531442110957668225

/-! ## A393888.P5344707717244318794

`A124778(n)*A392379(A034856(n+1))`
-/

namespace A393888.P5344707717244318794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n * A392379 (A034856 (n + 1)).toNat

end

end A393888.P5344707717244318794

/-! ## A393888.P15957558991637133176

`A392379(A034856(n+1))%A006898(n+1)`
-/

namespace A393888.P15957558991637133176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392379 (A034856 (n + 1)).toNat) (A006898 (n + 1))

end

end A393888.P15957558991637133176

/-! ## A393888.P10843319683776752497

`A392379(A034856(n+1))+A000007(2*n+1)`
-/

namespace A393888.P10843319683776752497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392379 (A034856 (n + 1)).toNat + A000007 (2 * n + 1)

end

end A393888.P10843319683776752497

/-!
# A393889: G.f. A(x) satisfies 4*A(x) = 1 + x + 3*A(x*A(x)).

The programs for A393889, there is no canonical definition to state claims against.
-/

/-! ## A393889.P9386830349598466697

`A394047(∑[2+n]-1)`
-/

namespace A393889.P9386830349598466697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394047 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A393889.P9386830349598466697

/-! ## A393889.P15713236094941824672

`or(1, A394047(A034856(n+1)))`
-/

namespace A393889.P15713236094941824672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A394047 (A034856 (n + 1)).toNat)

end

end A393889.P15713236094941824672

/-! ## A393889.P1597322114450078106

`A124778(n)*A394047(A034856(n+1))`
-/

namespace A393889.P1597322114450078106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n * A394047 (A034856 (n + 1)).toNat

end

end A393889.P1597322114450078106

/-! ## A393889.P18049210302765854346

`A394047(A034856(n+1))%A147759(n+5)`
-/

namespace A393889.P18049210302765854346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394047 (A034856 (n + 1)).toNat) (A147759 (n + 5))

end

end A393889.P18049210302765854346

/-! ## A393889.P9316665041074324302

`A394047(A034856(n+1))+A000007(2*n+1)`
-/

namespace A393889.P9316665041074324302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394047 (A034856 (n + 1)).toNat + A000007 (2 * n + 1)

end

end A393889.P9316665041074324302

/-!
# A393890: G.f. A(x) satisfies 5*A(x) = 1 + x + 4*A(x*A(x)).

The programs for A393890, there is no canonical definition to state claims against.
-/

/-! ## A393890.P6925966654522278894

`A394901(∑[2+n]-1)`
-/

namespace A393890.P6925966654522278894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394901 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A393890.P6925966654522278894

/-! ## A393890.P2482496205754516103

`A394901(A034856(n+1))+A185213(n)`
-/

namespace A393890.P2482496205754516103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394901 (A034856 (n + 1)).toNat + A185213 n

end

end A393890.P2482496205754516103

/-! ## A393890.P12377285275734122383

`A055642(n)*A394901(A034856(n+1))`
-/

namespace A393890.P12377285275734122383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A394901 (A034856 (n + 1)).toNat

end

end A393890.P12377285275734122383

/-! ## A393890.P3448018262713314449

`A394901(A034856(n+1))%A070521(n+1)`
-/

namespace A393890.P3448018262713314449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394901 (A034856 (n + 1)).toNat) (A070521 (n + 1))

end

end A393890.P3448018262713314449

/-! ## A393890.P10376278602457382277

`A394901(A034856(n+1))+A000007(2*n+3)`
-/

namespace A393890.P10376278602457382277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394901 (A034856 (n + 1)).toNat + A000007 (2 * n + 3)

end

end A393890.P10376278602457382277

