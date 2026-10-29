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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C046
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
import Seq.B001.C012
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A316500: Number of unlabeled rooted identity trees with n nodes in which the branches of any node with more than one branch have empty intersection.

The programs for A316500, there is no canonical definition to state claims against.
-/

/-! ## A316500.P7814838044940555202

`A026819(floor(sqrt(A275518(n+1))))`
-/

namespace A316500.P7814838044940555202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (Int.sqrt (A275518 (n + 1))).toNat

end

end A316500.P7814838044940555202

/-! ## A316500.P5613661859041793453

`A046155(floor(sqrt(A275518(n+1))))`
-/

namespace A316500.P5613661859041793453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (Int.sqrt (A275518 (n + 1))).toNat

end

end A316500.P5613661859041793453

/-! ## A316500.P7128616163023078075

`A026819(ceil(sqrt(A275518(n+1))))`
-/

namespace A316500.P7128616163023078075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 ⌈Real.sqrt (A275518 (n + 1) : ℝ)⌉.toNat

end

end A316500.P7128616163023078075

/-! ## A316500.P492165325877307588

`A046155(ceil(sqrt(A275518(n+1))))`
-/

namespace A316500.P492165325877307588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 ⌈Real.sqrt (A275518 (n + 1) : ℝ)⌉.toNat

end

end A316500.P492165325877307588

/-! ## A316500.P16167630850804406651

`A046155(A161221(floor(n-atan(n))))`
-/

namespace A316500.P16167630850804406651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A161221 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat).toNat

end

end A316500.P16167630850804406651

/-!
# A316501: Number of unlabeled rooted trees with n nodes in which the branches of any node with more than one distinct branch have empty intersection.

The programs for A316501, there is no canonical definition to state claims against.
-/

/-! ## A316501.P12000375486629873355

`A125702(n+3)-A321228(n+2)`
-/

namespace A316501.P12000375486629873355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125702 (n + 3) - A321228 (n + 2)

end

end A316501.P12000375486629873355

/-! ## A316501.P13424038712396631295

`A023193(A113682(n)+A014495(n))`
-/

namespace A316501.P13424038712396631295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A113682 n + A014495 n).toNat

end

end A316501.P13424038712396631295

/-! ## A316501.P13808910720328838178

`A026819(A316980(n)+A000110(n))`
-/

namespace A316501.P13808910720328838178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A316980 n + A000110 n).toNat

end

end A316501.P13808910720328838178

/-! ## A316501.P10356016851184936809

`A026819(A000110(n)-(1-A316980(n)))`
-/

namespace A316501.P10356016851184936809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A000110 n - (1 - A316980 n)).toNat

end

end A316501.P10356016851184936809

/-!
# A316502: Matula-Goebel numbers of unlabeled rooted trees with n nodes in which the branches of any node with more than one branch have empty intersection.

The programs for A316502, there is no canonical definition to state claims against.
-/

/-! ## A316502.P25359874224381345

`comp[A317789(n+1)-1]+1`
-/

namespace A316502.P25359874224381345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317789 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A316502.P25359874224381345

/-! ## A316502.P5695072284301309145

`∪[6*(n+1), A316495(n+1)]`
-/

namespace A316502.P5695072284301309145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316502.P5695072284301309145

/-! ## A316502.P3183953999863396546

`∪[A316495(n+1), A006156(n)]`
-/

namespace A316502.P3183953999863396546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006156 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316502.P3183953999863396546

/-! ## A316502.P4605166945486504208

`∪[A316495(n+1), A007782(n)]`
-/

namespace A316502.P4605166945486504208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007782 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316502.P4605166945486504208

/-! ## A316502.P6018065725286912650

`∪[A316495(n+1), A008458(n)]`
-/

namespace A316502.P6018065725286912650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316502.P6018065725286912650

/-! ## A316502.P11743866572782128852

`∪[A316495(n+1), A315170(n)]`
-/

namespace A316502.P11743866572782128852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315170 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316502.P11743866572782128852

/-! ## A316502.P2025925905715815164

`∪[A316495(n+1), A315187(n)]`
-/

namespace A316502.P2025925905715815164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316502.P2025925905715815164

/-! ## A316502.P9346420720577454265

`comp[A233583(A317789(n+1))]+1`
-/

namespace A316502.P9346420720577454265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A317789 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A316502.P9346420720577454265

/-!
# A316503: Matula-Goebel numbers of unlabeled rooted identity trees with n nodes in which the branches of any node with more than one branch have empty intersection.

The programs for A316503, there is no canonical definition to state claims against.
-/

/-! ## A316503.P10326140808938825226

`record[A348066(A317709(n+1))]`
-/

namespace A316503.P10326140808938825226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (A317709 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316503.P10326140808938825226

/-! ## A316503.P8152330828095142141

`∩[A276625(n+1), A317709(n+1)]`
-/

namespace A316503.P8152330828095142141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316503.P8152330828095142141

/-! ## A316503.P14918575417161757461

`∩[A297571(n+1), A317709(n+1)]`
-/

namespace A316503.P14918575417161757461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316503.P14918575417161757461

/-! ## A316503.P12760305051225966634

`∩[A302494(n+1), A317709(n+1)]`
-/

namespace A316503.P12760305051225966634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316503.P12760305051225966634

/-! ## A316503.P7314389672682910869

`∩[A317709(n+1), A382201(n+1)]`
-/

namespace A316503.P7314389672682910869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316503.P7314389672682910869

/-!
# A316504: Numbers k such that A090086(k+1) > k+1.

The programs for A316504, there is no canonical definition to state claims against.
-/

/-! ## A316504.P15674002019116734900

`lt[n, A090086(n+1)]`
-/

namespace A316504.P15674002019116734900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A316504.P15674002019116734900

/-! ## A316504.P16878568586690713406

`record[A351078(n)%A090087(n+1)]`
-/

namespace A316504.P16878568586690713406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351078 n) (A090087 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316504.P16878568586690713406

/-! ## A316504.P9592985279723506405

`eq[A007535(n+1), A090086(n+1)]`
-/

namespace A316504.P9592985279723506405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316504.P9592985279723506405

/-! ## A316504.P10647368705673650725

`record[n^(A090086(n+1)/A090085(n+1))]`
-/

namespace A316504.P10647368705673650725
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((A090086 (n + 1) : ℚ) / (A090085 (n + 1) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316504.P10647368705673650725

/-! ## A316504.P3709414927802444495

`eq[A000203((n+1)%A090086(n+1)+1), A000203(n+2)]`
-/

namespace A316504.P3709414927802444495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.tmod (n + 1 : ℤ) (A090086 (n + 1)) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316504.P3709414927802444495

/-!
# A316505: a(n) is the smallest number k > 1 such that k^n - 1 is divisible by 3^n.

The programs for A316505, the canonical program `A316505.P16861205524032787403` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316505 has offset 1).

The definition of A316505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316505.P16861205524032787403

`3^(n+1-A007949(n+1))-(-1)^(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316505

/-- `3^(n+1-A007949(n+1))-(-1)^(n+1)` -/
def P16861205524032787403.Spec : Prop :=
  ∀ n, P16861205524032787403.a n = (A316505 (n + 1) : ℚ)

end A316505

/-! ## A316505.P177317928473464300

`A273893(n+1)+(-1)^n`
-/

namespace A316505.P177317928473464300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273893 (n + 1) + (-1) ^ n

end

end A316505.P177317928473464300

namespace A316505

/-- `A273893(n+1)+(-1)^n` -/
def P177317928473464300.Spec : Prop :=
  ∀ n, P177317928473464300.a n = A316505 (n + 1)

end A316505

/-! ## A316505.P14603843745855552516

`Δ[or(1, ∑[A273893(n)])]`
-/

namespace A316505.P14603843745855552516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273893 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A316505.P14603843745855552516

namespace A316505

/-- `Δ[or(1, ∑[A273893(n)])]` -/
def P14603843745855552516.Spec : Prop :=
  ∀ n, P14603843745855552516.a n = A316505 (n + 1)

end A316505

/-! ## A316505.P12352186997302041871

`Δ[A000034(n)+∑[A273893(n)]]`
-/

namespace A316505.P12352186997302041871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273893 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A316505.P12352186997302041871

namespace A316505

/-- `Δ[A000034(n)+∑[A273893(n)]]` -/
def P12352186997302041871.Spec : Prop :=
  ∀ n, P12352186997302041871.a n = A316505 (n + 1)

end A316505

/-! ## A316505.P14436653430588284978

`Δ[A000035(n)+∑[A273893(n)]]`
-/

namespace A316505.P14436653430588284978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273893 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A316505.P14436653430588284978

namespace A316505

/-- `Δ[A000035(n)+∑[A273893(n)]]` -/
def P14436653430588284978.Spec : Prop :=
  ∀ n, P14436653430588284978.a n = A316505 (n + 1)

end A316505

/-! ## A316505.P17396861132650948739

`Δ[A010693(n)+∑[A273893(n)]]`
-/

namespace A316505.P17396861132650948739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273893 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A316505.P17396861132650948739

namespace A316505

/-- `Δ[A010693(n)+∑[A273893(n)]]` -/
def P17396861132650948739.Spec : Prop :=
  ∀ n, P17396861132650948739.a n = A316505 (n + 1)

end A316505

/-!
# A316506: a(n) is the rank of the multiplicative group of Gaussian integers modulo n.

The programs for A316506, there is no canonical definition to state claims against.
-/

/-! ## A316506.P3075022587919921669

`A001221(A334274(3*n+2)%A334319(2*(n+1)))`
-/

namespace A316506.P3075022587919921669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A334274 (3 * n + 2)) (A334319 (2 * (n + 1)))).toNat

end

end A316506.P3075022587919921669

/-! ## A316506.P3039728239071630855

`A007895(A000217(n))-A038189(A036599(n))`
-/

namespace A316506.P3039728239071630855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A000217 n).toNat - A038189 (A036599 n).toNat

end

end A316506.P3039728239071630855

/-! ## A316506.P11470558645265064178

`∑{p}[A278800(2*(n+1)), A340366(#)]`
-/

namespace A316506.P11470558645265064178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278800 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A340366 p

end

end A316506.P11470558645265064178

/-! ## A316506.P14862687243065148381

`A001221(A350892(n+1)+A006127(n))`
-/

namespace A316506.P14862687243065148381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A350892 (n + 1) + A006127 n).toNat

end

end A316506.P14862687243065148381

/-! ## A316506.P8528456417646044526

`A001221(or(A194897(n+1), A235701(n)))`
-/

namespace A316506.P8528456417646044526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A194897 (n + 1)) (A235701 n)).toNat

end

end A316506.P8528456417646044526

/-!
# A316507: Number of nXn 0..1 arrays with every element unequal to 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316507, there is no canonical definition to state claims against.
-/

/-! ## A316507.P5524616301409787451

`A316511(∑[4*n]+1)`
-/

namespace A316507.P5524616301409787451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316507.P5524616301409787451

/-! ## A316507.P13753045440488689575

`record[A003982(n)*A316511(n+1)]`
-/

namespace A316507.P13753045440488689575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316507.P13753045440488689575

/-! ## A316507.P6450440893745461622

`A316511(A001844(n))+A098728(n)`
-/

namespace A316507.P6450440893745461622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (A001844 n).toNat + A098728 n

end

end A316507.P6450440893745461622

/-! ## A316507.P17860288734911048013

`A316511(A048871(n+1))+A059995(n)`
-/

namespace A316507.P17860288734911048013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (A048871 (n + 1)).toNat + A059995 n

end

end A316507.P17860288734911048013

/-! ## A316507.P9950516852198252968

`lcm(A033999(n), A316511(A048871(n+1)))`
-/

namespace A316507.P9950516852198252968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A316511 (A048871 (n + 1)).toNat)

end

end A316507.P9950516852198252968

/-!
# A316508: Number of n X 5 0..1 arrays with every element unequal to 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316508, there is no canonical definition to state claims against.
-/

/-! ## A316508.P377741268422458016

`A316511(A374005(n+1))`
-/

namespace A316508.P377741268422458016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (A374005 (n + 1)).toNat

end

end A316508.P377741268422458016

/-! ## A316508.P8247851745737504817

`A316511(A167499(n+3))`
-/

namespace A316508.P8247851745737504817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (A167499 (n + 3)).toNat

end

end A316508.P8247851745737504817

/-! ## A316508.P7059003195599448342

`A316511(Δ[A023551(n+1)]-2*n)`
-/

namespace A316508.P7059003195599448342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A316508.P7059003195599448342

/-! ## A316508.P12613793242236081012

`A316511(Δ[A264443(n)])`
-/

namespace A316508.P12613793242236081012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (f1 (n + 1) - f1 n).toNat

end

end A316508.P12613793242236081012

/-! ## A316508.P2559914614789160945

`A316511(eq[3, A152157(n)])`
-/

namespace A316508.P2559914614789160945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316508.P2559914614789160945

/-!
# A316509: Number of nX6 0..1 arrays with every element unequal to 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316509, there is no canonical definition to state claims against.
-/

/-! ## A316509.P10201840643028282435

`A316511(A374007(n+1))`
-/

namespace A316509.P10201840643028282435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (A374007 (n + 1)).toNat

end

end A316509.P10201840643028282435

/-! ## A316509.P2950316859955928190

`A316511(Δ[A264443(n)]+10)`
-/

namespace A316509.P2950316859955928190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (f1 (n + 1) - f1 n + 10).toNat

end

end A316509.P2950316859955928190

/-! ## A316509.P8886334702930880464

`A316511(eq[7, A131818(n+1)])`
-/

namespace A316509.P8886334702930880464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316509.P8886334702930880464

/-! ## A316509.P7039668619720247081

`A316511(Δ[A023545(n+1)]+10)`
-/

namespace A316509.P7039668619720247081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (f1 (n + 1) - f1 n + 10).toNat

end

end A316509.P7039668619720247081

/-! ## A316509.P14057634733038208805

`A316511(eq[5, A152157(n)])`
-/

namespace A316509.P14057634733038208805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316509.P14057634733038208805

/-!
# A316510: Number of nX7 0..1 arrays with every element unequal to 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316510, there is no canonical definition to state claims against.
-/

/-! ## A316510.P1981558153116483520

`A316511(A374008(n+1))`
-/

namespace A316510.P1981558153116483520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (A374008 (n + 1)).toNat

end

end A316510.P1981558153116483520

/-! ## A316510.P15419026189497983629

`A316511(eq[8, A131818(n+1)])`
-/

namespace A316510.P15419026189497983629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316510.P15419026189497983629

/-! ## A316510.P14676877246508401818

`A316511(Δ[A023551(n+1)]+13)`
-/

namespace A316510.P14676877246508401818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (f1 (n + 1) - f1 n + 13).toNat

end

end A316510.P14676877246508401818

/-! ## A316510.P454336607305194930

`A316511(A055999(n+4))`
-/

namespace A316510.P454336607305194930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (A055999 (n + 4)).toNat

end

end A316510.P454336607305194930

/-! ## A316510.P16774396294316577832

`A316511(eq[6, A193592(n)])`
-/

namespace A316510.P16774396294316577832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316510.P16774396294316577832

/-!
# A316512: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316512, there is no canonical definition to state claims against.
-/

/-! ## A316512.P1029463300725401547

`A316518(∑[4*n]+1)`
-/

namespace A316512.P1029463300725401547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316512.P1029463300725401547

/-! ## A316512.P1913028652856215706

`record[A003982(n)*A316518(n+1)]`
-/

namespace A316512.P1913028652856215706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316512.P1913028652856215706

/-! ## A316512.P12518346178318225514

`record[gcd(A037012(n), A316518(n+1))]`
-/

namespace A316512.P12518346178318225514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A316518 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316512.P12518346178318225514

/-! ## A316512.P13278331103892845622

`A316518(A001844(n))+A025439(n)`
-/

namespace A316512.P13278331103892845622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A001844 n).toNat + A025439 n

end

end A316512.P13278331103892845622

/-! ## A316512.P17242184230894117328

`A316518(A001844(n))+A025466(n)`
-/

namespace A316512.P17242184230894117328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A001844 n).toNat + A025466 n

end

end A316512.P17242184230894117328

/-!
# A316513: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316513, there is no canonical definition to state claims against.
-/

/-! ## A316513.P6357883824596374678

`A316518(∑[n+2]+4)`
-/

namespace A316513.P6357883824596374678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316513.P6357883824596374678

/-! ## A316513.P14019520972320568248

`A316518(A167614(n+1))+A011737(n)`
-/

namespace A316513.P14019520972320568248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A167614 (n + 1)).toNat + A011737 n

end

end A316513.P14019520972320568248

/-! ## A316513.P3959038697309805690

`A316518(A167614(n+1))+A061858(n)`
-/

namespace A316513.P3959038697309805690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A167614 (n + 1)).toNat + A061858 n

end

end A316513.P3959038697309805690

/-! ## A316513.P3917078063230240843

`A316518(A167614(n+1))%A341854(n)`
-/

namespace A316513.P3917078063230240843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316518 (A167614 (n + 1)).toNat) (A341854 n)

end

end A316513.P3917078063230240843

/-! ## A316513.P15384861326262249018

`lcm(A020985(n), A316518(A167614(n+1)))`
-/

namespace A316513.P15384861326262249018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A316518 (A167614 (n + 1)).toNat)

end

end A316513.P15384861326262249018

/-!
# A316514: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316514, there is no canonical definition to state claims against.
-/

/-! ## A316514.P3185087699822824488

`A316518(A374004(n+1))`
-/

namespace A316514.P3185087699822824488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A374004 (n + 1)).toNat

end

end A316514.P3185087699822824488

/-! ## A316514.P753258862826835757

`A316518(A141214(n)+7)`
-/

namespace A316514.P753258862826835757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A141214 n + 7).toNat

end

end A316514.P753258862826835757

/-! ## A316514.P12263999585905481873

`A316518(A055999(n)+10)`
-/

namespace A316514.P12263999585905481873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A055999 n + 10).toNat

end

end A316514.P12263999585905481873

/-! ## A316514.P10453261228875676999

`A316518(A167614(n+2)+1)`
-/

namespace A316514.P10453261228875676999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A167614 (n + 2) + 1).toNat

end

end A316514.P10453261228875676999

/-! ## A316514.P9515713157457092166

`A316518(A167499(n+2)-1)`
-/

namespace A316514.P9515713157457092166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A167499 (n + 2) - 1).toNat

end

end A316514.P9515713157457092166

/-!
# A316515: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316515, there is no canonical definition to state claims against.
-/

/-! ## A316515.P2030632612980624029

`A316518(A374005(n+1))`
-/

namespace A316515.P2030632612980624029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A374005 (n + 1)).toNat

end

end A316515.P2030632612980624029

/-! ## A316515.P16636009492317161214

`A316518(A167499(n+3))`
-/

namespace A316515.P16636009492317161214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A167499 (n + 3)).toNat

end

end A316515.P16636009492317161214

/-! ## A316515.P10782178813640561144

`A316518(A000124(n+5)-(n+1))`
-/

namespace A316515.P10782178813640561144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A316515.P10782178813640561144

/-! ## A316515.P5100321774082319580

`A316518(A052905(n+3)-(2*n+1))`
-/

namespace A316515.P5100321774082319580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A316515.P5100321774082319580

/-! ## A316515.P391862713967176538

`A316518(Δ[A264443(n)])`
-/

namespace A316515.P391862713967176538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (f1 (n + 1) - f1 n).toNat

end

end A316515.P391862713967176538

/-!
# A316516: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316516, there is no canonical definition to state claims against.
-/

/-! ## A316516.P17819020125872653692

`A316518(A374007(n+1))`
-/

namespace A316516.P17819020125872653692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A374007 (n + 1)).toNat

end

end A316516.P17819020125872653692

/-! ## A316516.P17847377993164884094

`A316518(A166136(n+4))`
-/

namespace A316516.P17847377993164884094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A166136 (n + 4)).toNat

end

end A316516.P17847377993164884094

/-! ## A316516.P14107985647374065111

`A316518(Δ[A264443(n)]+10)`
-/

namespace A316516.P14107985647374065111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (f1 (n + 1) - f1 n + 10).toNat

end

end A316516.P14107985647374065111

/-! ## A316516.P7534442117348038568

`A316518(A167499(n+4)+1)`
-/

namespace A316516.P7534442117348038568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A167499 (n + 4) + 1).toNat

end

end A316516.P7534442117348038568

/-! ## A316516.P3666010020467265762

`A316518(A000096(n+4)+7)`
-/

namespace A316516.P3666010020467265762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A000096 (n + 4) + 7).toNat

end

end A316516.P3666010020467265762

/-!
# A316517: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316517, there is no canonical definition to state claims against.
-/

/-! ## A316517.P3448122053127950287

`A316518(A374008(n+1))`
-/

namespace A316517.P3448122053127950287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A374008 (n + 1)).toNat

end

end A316517.P3448122053127950287

/-! ## A316517.P7653745283417703564

`A316518(A167487(n+5))`
-/

namespace A316517.P7653745283417703564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A167487 (n + 5)).toNat

end

end A316517.P7653745283417703564

/-! ## A316517.P12412424227849666101

`A316518(A000217(n+6)+7)`
-/

namespace A316517.P12412424227849666101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A000217 (n + 6) + 7).toNat

end

end A316517.P12412424227849666101

/-! ## A316517.P2257244550707822623

`A316518(A052905(n+3)+12)`
-/

namespace A316517.P2257244550707822623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A052905 (n + 3) + 12).toNat

end

end A316517.P2257244550707822623

/-! ## A316517.P10008372852160899263

`A316518(A133263(n+4)+A005843(n+8))`
-/

namespace A316517.P10008372852160899263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (A133263 (n + 4) + A005843 (n + 8)).toNat

end

end A316517.P10008372852160899263

/-!
# A316518: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316518, there is no canonical definition to state claims against.
-/

/-! ## A316518.P6202666038819312329

`A304775(n+1)+A186745(A306100(n))`
-/

namespace A316518.P6202666038819312329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304775 (n + 1) + A186745 (A306100 n).toNat

end

end A316518.P6202666038819312329

/-! ## A316518.P15682608682895247169

`A304775(n+1)+A011737(A022171(n))`
-/

namespace A316518.P15682608682895247169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304775 (n + 1) + A011737 (A022171 n).toNat

end

end A316518.P15682608682895247169

/-! ## A316518.P12720994626618667499

`A304775(n+1)+A025465(A023105(n))`
-/

namespace A316518.P12720994626618667499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304775 (n + 1) + A025465 (A023105 n).toNat

end

end A316518.P12720994626618667499

/-! ## A316518.P14219049597288424274

`A304775(n+1)+A014707(A036426(n))`
-/

namespace A316518.P14219049597288424274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304775 (n + 1) + A014707 (A036426 n).toNat

end

end A316518.P14219049597288424274

/-! ## A316518.P15522244977660539697

`A304775(n+1)+A037824(A022173(n))`
-/

namespace A316518.P15522244977660539697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304775 (n + 1) + A037824 (A022173 n).toNat

end

end A316518.P15522244977660539697

/-!
# A316519: a(n) is the number of distinct nonzero values frac(n/k) can take for k in 1..n, where frac denotes the fractional part.

The programs for A316519, there is no canonical definition to state claims against.
-/

/-! ## A316519.P14110487990354485893

`n-A001222(A001790(A080221(n+1)))`
-/

namespace A316519.P14110487990354485893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001222 (A001790 (A080221 (n + 1)).toNat).toNat

end

end A316519.P14110487990354485893

/-! ## A316519.P466489026435123889

`A132881(lcm(2, A005179(n+1)))`
-/

namespace A316519.P466489026435123889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (Int.lcm 2 (A005179 (n + 1)))

end

end A316519.P466489026435123889

/-! ## A316519.P5165251630620240565

`A132881(A005179(n+1)*A054977(n))`
-/

namespace A316519.P5165251630620240565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (A005179 (n + 1) * A054977 n).toNat

end

end A316519.P5165251630620240565

/-! ## A316519.P8378229288437783729

`A057427(n)*A132881(A005179(n+1))`
-/

namespace A316519.P8378229288437783729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A132881 (A005179 (n + 1)).toNat

end

end A316519.P8378229288437783729

/-! ## A316519.P17166529669821193701

`A132881(A005179(n+1))%A000041(n)`
-/

namespace A316519.P17166529669821193701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132881 (A005179 (n + 1)).toNat) (A000041 n)

end

end A316519.P17166529669821193701

/-!
# A316520: Heinz numbers of integer partitions whose average is a prime number.

The programs for A316520, there is no canonical definition to state claims against.
-/

/-! ## A316520.P14366901082403347747

`lt[A248593(A240504(n+3)), A248124(n+4)]`
-/

namespace A316520.P14366901082403347747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248593 (A240504 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248124 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316520.P14366901082403347747

/-! ## A316520.P9124368884177711716

`lt[A248124(A052214(3*n+1)), A248124(n+4)]`
-/

namespace A316520.P9124368884177711716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248124 (A052214 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248124 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316520.P9124368884177711716

/-! ## A316520.P10206728965847355377

`lt[A192336(A329455(3*n+1)), A248124(n+4)]`
-/

namespace A316520.P10206728965847355377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192336 (A329455 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248124 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316520.P10206728965847355377

/-! ## A316520.P10459067351792010377

`lt[A247940(A196245(2*(n+2))), A248124(n+4)]`
-/

namespace A316520.P10459067351792010377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247940 (A196245 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248124 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316520.P10459067351792010377

/-!
# A316521: Matula-Goebel numbers of rooted trees where all terminal rooted subtrees are either constant or strict.

The programs for A316521, there is no canonical definition to state claims against.
-/

/-! ## A316521.P16653185836057510545

`A317710(A123068(n+2))`
-/

namespace A316521.P16653185836057510545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (A123068 (n + 2)).toNat

end

end A316521.P16653185836057510545

/-! ## A316521.P2239962366411704825

`filter[A317710(n+1), A168185(#)]`
-/

namespace A316521.P2239962366411704825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A316521.P2239962366411704825

/-! ## A316521.P17384849217487620182

`A317710(comp[A316593(n+3)]+1)`
-/

namespace A316521.P17384849217487620182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316593 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A316521.P17384849217487620182

/-! ## A316521.P2206590472393790956

`A317710(comp[n*A264865(n+4)])`
-/

namespace A316521.P2206590472393790956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A264865 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A316521.P2206590472393790956

/-! ## A316521.P6839814900278067367

`∩[A023805(n+1), A317710(n+1)]`
-/

namespace A316521.P6839814900278067367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316521.P6839814900278067367

/-! ## A316521.P5404643227967433972

`∩[A064598(n+1), A317710(n+1)]`
-/

namespace A316521.P5404643227967433972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316521.P5404643227967433972

/-! ## A316521.P13703441139751594260

`∩[A065200(n+1), A317710(n+1)]`
-/

namespace A316521.P13703441139751594260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316521.P13703441139751594260

/-! ## A316521.P3859619203439406052

`∩[A168186(n+1), A317710(n+1)]`
-/

namespace A316521.P3859619203439406052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316521.P3859619203439406052

/-! ## A316521.P1470218606974578469

`∩[A273058(n+1), A317710(n+1)]`
-/

namespace A316521.P1470218606974578469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316521.P1470218606974578469

/-! ## A316521.P6385858627955729688

`∩[A285100(n+1), A317710(n+1)]`
-/

namespace A316521.P6385858627955729688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316521.P6385858627955729688

/-!
# A316522: Number of unlabeled rooted trees with n nodes where all terminal rooted subtrees are either constant or strict.

The programs for A316522, there is no canonical definition to state claims against.
-/

/-! ## A316522.P6507465870152017744

`A319434(A026898(n))-A331308(n+1)`
-/

namespace A316522.P6507465870152017744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319434 (A026898 n).toNat - A331308 (n + 1)

end

end A316522.P6507465870152017744

/-! ## A316522.P17665449023603374685

`A238845(A238803(n))+A238825(n+2)`
-/

namespace A316522.P17665449023603374685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (A238803 n).toNat + A238825 (n + 2)

end

end A316522.P17665449023603374685

/-! ## A316522.P10017224031471289946

`A054404(A259446(n+5)+A000129(n))`
-/

namespace A316522.P10017224031471289946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A259446 (n + 5) + A000129 n).toNat

end

end A316522.P10017224031471289946

/-! ## A316522.P943863640154977476

`A317712(n+1)-A046080(A006128(3*n+1))`
-/

namespace A316522.P943863640154977476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317712 (n + 1) - A046080 (A006128 (3 * n + 1)).toNat

end

end A316522.P943863640154977476

/-!
# A316523: Number of odd multiplicities minus number of even multiplicities in the canonical prime factorization of n.

The programs for A316523, the canonical program `A316523.P9130007244371439540` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316523 has offset 1).

The definition of A316523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316523.P9130007244371439540

`A162642(n+1)-A162641(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A316523

/-- `A162642(n+1)-A162641(n+1)` -/
def P9130007244371439540.Spec : Prop :=
  ∀ n, P9130007244371439540.a n = A316523 (n + 1)

theorem P9130007244371439540.correct : P9130007244371439540.Spec := by
  intro n
  simp only [A316523, Nat.add_sub_cancel]

end A316523

/-! ## A316523.P17301266677137765077

`∑{e}[n+1, -(-1)^#]`
-/

namespace A316523.P17301266677137765077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (-((-1) ^ Nat.factorization (f1 n) p))

end

end A316523.P17301266677137765077

namespace A316523

/-- `∑{e}[n+1, -(-1)^#]` -/
def P17301266677137765077.Spec : Prop :=
  ∀ n, P17301266677137765077.a n = A316523 (n + 1)

end A316523

/-! ## A316523.P18166213076848178916

`-∑{e}[n+1, xor(1, #)-#]`
-/

namespace A316523.P18166213076848178916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n), ((Nat.xor 1 (Nat.factorization (f1 n) p) : ℤ) - (Nat.factorization (f1 n) p : ℤ)))

end

end A316523.P18166213076848178916

namespace A316523

/-- `-∑{e}[n+1, xor(1, #)-#]` -/
def P18166213076848178916.Spec : Prop :=
  ∀ n, P18166213076848178916.a n = A316523 (n + 1)

end A316523

/-! ## A316523.P12371259653506396534

`∑{e}[n+1, #%2]-A001222(∏{e}[n+1, (#+1)%2+1])`
-/

namespace A316523.P12371259653506396534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % 2 : ℕ) : ℤ) - A001222 (∏ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p + 1) % 2 + 1))

end

end A316523.P12371259653506396534

namespace A316523

/-- `∑{e}[n+1, #%2]-A001222(∏{e}[n+1, (#+1)%2+1])` -/
def P12371259653506396534.Spec : Prop :=
  ∀ n, P12371259653506396534.a n = A316523 (n + 1)

end A316523

/-! ## A316523.P4526466776497874918

`A112400(A066990(n+1))`
-/

namespace A316523.P4526466776497874918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112400 (A066990 (n + 1)).toNat

end

end A316523.P4526466776497874918

namespace A316523

/-- `A112400(A066990(n+1))` -/
def P4526466776497874918.Spec : Prop :=
  ∀ n, P4526466776497874918.a n = A316523 (n + 1)

end A316523

/-! ## A316523.P13119196334985277221

`A195017(A181819(n+1))`
-/

namespace A316523.P13119196334985277221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A181819 (n + 1)).toNat

end

end A316523.P13119196334985277221

namespace A316523

/-- `A195017(A181819(n+1))` -/
def P13119196334985277221.Spec : Prop :=
  ∀ n, P13119196334985277221.a n = A316523 (n + 1)

end A316523

/-! ## A316523.P15157595585580358441

`A001221(n+1)-2*A162641(n+1)`
-/

namespace A316523.P15157595585580358441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - 2 * A162641 (n + 1)

end

end A316523.P15157595585580358441

namespace A316523

/-- `A001221(n+1)-2*A162641(n+1)` -/
def P15157595585580358441.Spec : Prop :=
  ∀ n, P15157595585580358441.a n = A316523 (n + 1)

theorem P15157595585580358441.correct : P15157595585580358441.Spec := by
  intro n
  simp only [A316523, Nat.add_sub_cancel, A316523.P15157595585580358441.a, A316523.P9130007244371439540.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A162641, A162641.P7922189454188814525.a, A162642, A162642.P6212984874729219521.a, A336643, A336643.P7928680159681903247.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316523

/-! ## A316523.P3004905627649854173

`2*A162642(n+1)-A001221(n+1)`
-/

namespace A316523.P3004905627649854173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162642 (n + 1) - A001221 (n + 1)

end

end A316523.P3004905627649854173

namespace A316523

/-- `2*A162642(n+1)-A001221(n+1)` -/
def P3004905627649854173.Spec : Prop :=
  ∀ n, P3004905627649854173.a n = A316523 (n + 1)

theorem P3004905627649854173.correct : P3004905627649854173.Spec := by
  intro n
  simp only [A316523, Nat.add_sub_cancel, A316523.P3004905627649854173.a, A316523.P9130007244371439540.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A162641, A162641.P7922189454188814525.a, A162642, A162642.P6212984874729219521.a, A336643, A336643.P7928680159681903247.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316523

/-! ## A316523.P975166873164325501

`A349326(n+1)-2*A362412(n+1)`
-/

namespace A316523.P975166873164325501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349326 (n + 1) - 2 * A362412 (n + 1)

end

end A316523.P975166873164325501

namespace A316523

/-- `A349326(n+1)-2*A362412(n+1)` -/
def P975166873164325501.Spec : Prop :=
  ∀ n, P975166873164325501.a n = A316523 (n + 1)

end A316523

/-! ## A316523.P9784622223975972767

`A067029(A055076(n+1))-A162641(n+1)`
-/

namespace A316523.P9784622223975972767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A055076 (n + 1)).toNat - A162641 (n + 1)

end

end A316523.P9784622223975972767

namespace A316523

/-- `A067029(A055076(n+1))-A162641(n+1)` -/
def P9784622223975972767.Spec : Prop :=
  ∀ n, P9784622223975972767.a n = A316523 (n + 1)

end A316523

/-! ## A316523.P11842368854902682840

`A162642(n+1)-A162642(A003557(n+1))`
-/

namespace A316523.P11842368854902682840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1) - A162642 (A003557 (n + 1)).toNat

end

end A316523.P11842368854902682840

namespace A316523

/-- `A162642(n+1)-A162642(A003557(n+1))` -/
def P11842368854902682840.Spec : Prop :=
  ∀ n, P11842368854902682840.a n = A316523 (n + 1)

end A316523

/-! ## A316523.P3255192043760658183

`2*A001221(A007913(n+1))-A001221(n+1)`
-/

namespace A316523.P3255192043760658183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (A007913 (n + 1)).toNat - A001221 (n + 1)

end

end A316523.P3255192043760658183

namespace A316523

/-- `2*A001221(A007913(n+1))-A001221(n+1)` -/
def P3255192043760658183.Spec : Prop :=
  ∀ n, P3255192043760658183.a n = A316523 (n + 1)

end A316523

/-! ## A316523.P5712974999430244503

`A001221(n+1)-2*A001221(A071974(n+1))`
-/

namespace A316523.P5712974999430244503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - 2 * A001221 (A071974 (n + 1)).toNat

end

end A316523.P5712974999430244503

namespace A316523

/-- `A001221(n+1)-2*A001221(A071974(n+1))` -/
def P5712974999430244503.Spec : Prop :=
  ∀ n, P5712974999430244503.a n = A316523 (n + 1)

end A316523

/-! ## A316523.P12547522062558898510

`2*A001221(A071975(n+1))-A001221(n+1)`
-/

namespace A316523.P12547522062558898510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (A071975 (n + 1)).toNat - A001221 (n + 1)

end

end A316523.P12547522062558898510

namespace A316523

/-- `2*A001221(A071975(n+1))-A001221(n+1)` -/
def P12547522062558898510.Spec : Prop :=
  ∀ n, P12547522062558898510.a n = A316523 (n + 1)

end A316523

/-! ## A316523.P6415475876252510016

`A001221(n+1)-2*A001221(A331738(n+1))`
-/

namespace A316523.P6415475876252510016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - 2 * A001221 (A331738 (n + 1)).toNat

end

end A316523.P6415475876252510016

namespace A316523

/-- `A001221(n+1)-2*A001221(A331738(n+1))` -/
def P6415475876252510016.Spec : Prop :=
  ∀ n, P6415475876252510016.a n = A316523 (n + 1)

end A316523

/-! ## A316523.P4001696062747717366

`A001221(n+1)-2*A001221(A350388(n+1))`
-/

namespace A316523.P4001696062747717366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - 2 * A001221 (A350388 (n + 1)).toNat

end

end A316523.P4001696062747717366

namespace A316523

/-- `A001221(n+1)-2*A001221(A350388(n+1))` -/
def P4001696062747717366.Spec : Prop :=
  ∀ n, P4001696062747717366.a n = A316523 (n + 1)

end A316523

/-! ## A316523.P14376880658623314283

`2*A001221(A350389(n+1))-A001221(n+1)`
-/

namespace A316523.P14376880658623314283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (A350389 (n + 1)).toNat - A001221 (n + 1)

end

end A316523.P14376880658623314283

namespace A316523

/-- `2*A001221(A350389(n+1))-A001221(n+1)` -/
def P14376880658623314283.Spec : Prop :=
  ∀ n, P14376880658623314283.a n = A316523 (n + 1)

end A316523

/-! ## A316523.P1693258807261200281

`A162642(n+1)+A295662(n+1)-A056170(n+1)`
-/

namespace A316523.P1693258807261200281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1) + (A295662 (n + 1) - A056170 (n + 1))

end

end A316523.P1693258807261200281

namespace A316523

/-- `A162642(n+1)+A295662(n+1)-A056170(n+1)` -/
def P1693258807261200281.Spec : Prop :=
  ∀ n, P1693258807261200281.a n = A316523 (n + 1)

theorem P1693258807261200281.correct : P1693258807261200281.Spec := by
  intro n
  simp only [A316523, Nat.add_sub_cancel, A316523.P1693258807261200281.a, A316523.P9130007244371439540.a, A056170, A056170.P910878729848546389.a, A162641, A162641.P7922189454188814525.a, A162642, A162642.P6212984874729219521.a, A295662, A295662.P12288310833318385704.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A056169, A056169.P17430176249366647977.a, A336643, A336643.P7928680159681903247.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A055231, A055231.P8962300905713718501.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316523

/-! ## A316523.P18388225231212442073

`A001222(n+1)-A001222(A011264(n+1))`
-/

namespace A316523.P18388225231212442073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A011264 (n + 1)).toNat

end

end A316523.P18388225231212442073

namespace A316523

/-- `A001222(n+1)-A001222(A011264(n+1))` -/
def P18388225231212442073.Spec : Prop :=
  ∀ n, P18388225231212442073.a n = A316523 (n + 1)

end A316523

/-! ## A316523.P13456928612596205252

`A162642(n+1)-A162642(A011264(n+1))`
-/

namespace A316523.P13456928612596205252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1) - A162642 (A011264 (n + 1)).toNat

end

end A316523.P13456928612596205252

namespace A316523

/-- `A162642(n+1)-A162642(A011264(n+1))` -/
def P13456928612596205252.Spec : Prop :=
  ∀ n, P13456928612596205252.a n = A316523 (n + 1)

end A316523

/-!
# A316524: Signed sum over the prime indices of n.

The programs for A316524, the canonical program `A316524.P1955025122253698323` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316524 has offset 1).

The definition of A316524 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344616, A344617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A316524.P1955025122253698323

`A344616(n+1)*A344617(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A316524

/-- `A344616(n+1)*A344617(n+1)` -/
def P1955025122253698323.Spec : Prop :=
  ∀ n, P1955025122253698323.a n = A316524 (n + 1)

theorem P1955025122253698323.correct : P1955025122253698323.Spec := by
  intro n
  simp only [A316524, Nat.add_sub_cancel]

end A316524

/-! ## A316524.P15394275569990365096

`A346697(n+1)-A346698(n+1)`
-/

namespace A316524.P15394275569990365096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346697 (n + 1) - A346698 (n + 1)

end

end A316524.P15394275569990365096

namespace A316524

/-- `A346697(n+1)-A346698(n+1)` -/
def P15394275569990365096.Spec : Prop :=
  ∀ n, P15394275569990365096.a n = A316524 (n + 1)

theorem P15394275569990365096.correct : P15394275569990365096.Spec := by
  intro n
  simp only [A316524, Nat.add_sub_cancel, A316524.P15394275569990365096.a, A316524.P1955025122253698323.a, A344616, A344616.P9154132711565358048.a, A344617, A344617.P17193290426147395898.f1, A344617.P17193290426147395898.a, A346697, A346697.P6768469797168310646.a, A346698, A346698.P6991962575422240649.a, A008836, A008836.P691704047226663751.a, A025480, A025480.P15873863116418380882.a, A056239, A056239.P11316688788989965672.a, A122111, A122111.P18124015185857335041.a, A257991, A257991.P9003885035180655311.f1, A257991.P9003885035180655311.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A006519, A006519.P10435570611646570274.a, A014963, A014963.P5975177236000282614.a, A033999, A033999.P17703899380244199787.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A008578, A008578.P3639467937083264764.a, A048896, A048896.P6461019053085857547.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A316524

/-! ## A316524.P9948678024033801855

`-(A008836(n+1)*A344616(n+1))`
-/

namespace A316524.P9948678024033801855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008836 (n + 1) * A344616 (n + 1))

end

end A316524.P9948678024033801855

namespace A316524

/-- `-(A008836(n+1)*A344616(n+1))` -/
def P9948678024033801855.Spec : Prop :=
  ∀ n, P9948678024033801855.a n = A316524 (n + 1)

end A316524

/-! ## A316524.P1141043818735707485

`2*A346697(n+1)-A056239(n+1)`
-/

namespace A316524.P1141043818735707485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A346697 (n + 1) - A056239 (n + 1)

end

end A316524.P1141043818735707485

namespace A316524

/-- `2*A346697(n+1)-A056239(n+1)` -/
def P1141043818735707485.Spec : Prop :=
  ∀ n, P1141043818735707485.a n = A316524 (n + 1)

end A316524

/-! ## A316524.P18199644213335974880

`A056239(n+1)-2*A346698(n+1)`
-/

namespace A316524.P18199644213335974880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - 2 * A346698 (n + 1)

end

end A316524.P18199644213335974880

namespace A316524

/-- `A056239(n+1)-2*A346698(n+1)` -/
def P18199644213335974880.Spec : Prop :=
  ∀ n, P18199644213335974880.a n = A316524 (n + 1)

end A316524

/-! ## A316524.P10055120952325770772

`A346698(2*(n+1))-A346698(n+1)`
-/

namespace A316524.P10055120952325770772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (2 * (n + 1)) - A346698 (n + 1)

end

end A316524.P10055120952325770772

namespace A316524

/-- `A346698(2*(n+1))-A346698(n+1)` -/
def P10055120952325770772.Spec : Prop :=
  ∀ n, P10055120952325770772.a n = A316524 (n + 1)

end A316524

/-! ## A316524.P12834783194313867394

`(char[n²-1]-(-1)^A001222(n+1))*A344616(n+1)`
-/

namespace A316524.P12834783194313867394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) - (-1 : ℚ) ^ (A001222 (n + 1) : ℤ)) * (A344616 (n + 1) : ℚ)

end

end A316524.P12834783194313867394

namespace A316524

/-- `(char[n²-1]-(-1)^A001222(n+1))*A344616(n+1)` -/
def P12834783194313867394.Spec : Prop :=
  ∀ n, P12834783194313867394.a n = (A316524 (n + 1) : ℚ)

end A316524

/-! ## A316524.P2511711913195351323

`A008836(2*(n+1))*A344616(n+1)`
-/

namespace A316524.P2511711913195351323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (2 * (n + 1)) * A344616 (n + 1)

end

end A316524.P2511711913195351323

namespace A316524

/-- `A008836(2*(n+1))*A344616(n+1)` -/
def P2511711913195351323.Spec : Prop :=
  ∀ n, P2511711913195351323.a n = A316524 (n + 1)

end A316524

/-! ## A316524.P9726679925505008586

`A392711(A210241(n+1))`
-/

namespace A316524.P9726679925505008586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392711 (A210241 (n + 1)).toNat

end

end A316524.P9726679925505008586

namespace A316524

/-- `A392711(A210241(n+1))` -/
def P9726679925505008586.Spec : Prop :=
  ∀ n, P9726679925505008586.a n = A316524 (n + 1)

end A316524

/-! ## A316524.P14220904445783351380

`A056239(n+1)-A056239(A346704(n+1)²)`
-/

namespace A316524.P14220904445783351380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A056239 (A346704 (n + 1) ^ 2).toNat

end

end A316524.P14220904445783351380

namespace A316524

/-- `A056239(n+1)-A056239(A346704(n+1)²)` -/
def P14220904445783351380.Spec : Prop :=
  ∀ n, P14220904445783351380.a n = A316524 (n + 1)

end A316524

/-!
# A316525: Numbers whose average of prime factors is prime.

The programs for A316525, there is no canonical definition to state claims against.
-/

/-! ## A316525.P8445175115678160696

`∪[A134344(n+1), Δ[A007504(n)]]`
-/

namespace A316525.P8445175115678160696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316525.P8445175115678160696

/-! ## A316525.P15350948668211908914

`∪[A000040(n+1), A134344(n+1)]`
-/

namespace A316525.P15350948668211908914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316525.P15350948668211908914

/-! ## A316525.P5869315164307917356

`∪[A000430(n+1), A134344(n+1)]`
-/

namespace A316525.P5869315164307917356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316525.P5869315164307917356

/-! ## A316525.P10250152797777931860

`∪[A009087(n+1), A134344(n+1)]`
-/

namespace A316525.P10250152797777931860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316525.P10250152797777931860

/-! ## A316525.P15772730833090157494

`∪[A050376(n+1), A134344(n+1)]`
-/

namespace A316525.P15772730833090157494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316525.P15772730833090157494

/-! ## A316525.P2714047630897898131

`∪[A087797(n+1), A134344(n+1)]`
-/

namespace A316525.P2714047630897898131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316525.P2714047630897898131

/-! ## A316525.P15288761969851730562

`∪[A096165(n+1), A134344(n+1)]`
-/

namespace A316525.P15288761969851730562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316525.P15288761969851730562

/-! ## A316525.P5601894945144086155

`∪[A246655(n+1), A134344(n+1)]`
-/

namespace A316525.P5601894945144086155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316525.P5601894945144086155

/-! ## A316525.P5183273124899072368

`∪[A134344(n+1), A280257(n+1)]`
-/

namespace A316525.P5183273124899072368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316525.P5183273124899072368

/-!
# A316526: a(n) = 122880*6^n - 307200*5^n + 264960*4^n - 90240*3^n + 9844*2^n - 122.

The programs for A316526, there is no canonical definition to state claims against.
-/

/-! ## A316526.P17745393185182891323

`A345394(∑[n+4]+11+n+n)`
-/

namespace A316526.P17745393185182891323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345394 (∑ j ∈ Finset.range (n + 1), f1 j + 11 + n + n)

end

end A316526.P17745393185182891323

/-!
# A316527: Fibonacci numbers whose sum of digits is not a prime.

The programs for A316527, there is no canonical definition to state claims against.
-/

/-! ## A316527.P7997963218025689942

`A000045(lt[A341811(2*n+1), A056993(n)])`
-/

namespace A316527.P7997963218025689942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341811 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316527.P7997963218025689942

/-! ## A316527.P15020618311753998821

`filter[A249265(2*n+1), A070886(#)]`
-/

namespace A316527.P15020618311753998821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249265 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070886 (f1 j).toNat = 1) n)

end

end A316527.P15020618311753998821

/-! ## A316527.P14803899821457575031

`A000045(A192593(n+1)%A102896(n))`
-/

namespace A316527.P14803899821457575031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A192593 (n + 1)) (A102896 n)).toNat

end

end A316527.P14803899821457575031

/-! ## A316527.P5976281197872287414

`A000045(A285259(n+1)%A102896(n))`
-/

namespace A316527.P5976281197872287414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A285259 (n + 1)) (A102896 n)).toNat

end

end A316527.P5976281197872287414

/-!
# A316528: a(n) = 3*a(n-1) - a(n-2) - 2*a(n-3) for n > 2, a(0)=1, a(1)=4, a(2)=10.

The programs for A316528, the canonical program `A316528.P6674647566312435837` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316528 has offset 0).

The definition of A316528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)-2*a(n-3)` (program `A316528.P6674647566312435837`, by `A316528.P6674647566312435837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316528.P10230032730684618586

`ogf((1+x-x^2)/(1-3x+x^2+2x^3))`
-/

namespace A316528.P10230032730684618586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -3, 1, 2] n

end

end A316528.P10230032730684618586

namespace A316528

/-- `ogf((1+x-x^2)/(1-3x+x^2+2x^3))` -/
def P10230032730684618586.Spec : Prop :=
  ∀ n, P10230032730684618586.a n = A316528 n

end A316528

/-! ## A316528.P6674647566312435837

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=10`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A316528

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P6674647566312435837.Spec : Prop :=
  ∀ n, P6674647566312435837.a n = A316528 n

theorem P6674647566312435837.correct : P6674647566312435837.Spec := by
  intro n
  simp only [A316528]

end A316528

/-! ## A316528.P1246048928735785385

`5*2^n-2*A000045(n+3)`
-/

namespace A316528.P1246048928735785385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * 2 ^ n : ℤ) - 2 * A000045 (n + 3)

end

end A316528.P1246048928735785385

namespace A316528

/-- `5*2^n-2*A000045(n+3)` -/
def P1246048928735785385.Spec : Prop :=
  ∀ n, P1246048928735785385.a n = A316528 n

end A316528

/-! ## A316528.P4296436014206058510

`A167821(n+2)+2^n`
-/

namespace A316528.P4296436014206058510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (n + 2) + (2 ^ n : ℤ)

end

end A316528.P4296436014206058510

namespace A316528

/-- `A167821(n+2)+2^n` -/
def P4296436014206058510.Spec : Prop :=
  ∀ n, P4296436014206058510.a n = A316528 n

end A316528

/-! ## A316528.P16954925750728322527

`A074878(n+2)-2^n`
-/

namespace A316528.P16954925750728322527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074878 (n + 2) - (2 ^ n : ℤ)

end

end A316528.P16954925750728322527

namespace A316528

/-- `A074878(n+2)-2^n` -/
def P16954925750728322527.Spec : Prop :=
  ∀ n, P16954925750728322527.a n = A316528 n

end A316528

/-! ## A316528.P3351242951178067513

`2*(a(n-1)+A000045(n))` with `a(0)=1`
-/

namespace A316528.P3351242951178067513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + A000045 n)

end

end A316528.P3351242951178067513

namespace A316528

/-- `2*(a(n-1)+A000045(n))` -/
def P3351242951178067513.Spec : Prop :=
  ∀ n, P3351242951178067513.a n = A316528 n

end A316528

/-! ## A316528.P2118738518568446377

`A055389(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A316528.P2118738518568446377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055389 n + 2 * a (n - 1)

end

end A316528.P2118738518568446377

namespace A316528

/-- `A055389(n)+2*a(n-1)` -/
def P2118738518568446377.Spec : Prop :=
  ∀ n, P2118738518568446377.a n = A316528 n

end A316528

/-! ## A316528.P1958548470050413668

`A027973(n)+A008466(n)`
-/

namespace A316528.P1958548470050413668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027973 n + A008466 n

end

end A316528.P1958548470050413668

namespace A316528

/-- `A027973(n)+A008466(n)` -/
def P1958548470050413668.Spec : Prop :=
  ∀ n, P1958548470050413668.a n = A316528 n

end A316528

/-! ## A316528.P9762894517325144854

`A099166(n)+A000045(n)`
-/

namespace A316528.P9762894517325144854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099166 n + A000045 n

end

end A316528.P9762894517325144854

namespace A316528

/-- `A099166(n)+A000045(n)` -/
def P9762894517325144854.Spec : Prop :=
  ∀ n, P9762894517325144854.a n = A316528 n

end A316528

/-! ## A316528.P7681646506988057685

`A107659(n)+A027558(n)`
-/

namespace A316528.P7681646506988057685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107659 n + A027558 n

end

end A316528.P7681646506988057685

namespace A316528

/-- `A107659(n)+A027558(n)` -/
def P7681646506988057685.Spec : Prop :=
  ∀ n, P7681646506988057685.a n = A316528 n

end A316528

/-! ## A316528.P10624555520312855912

`A048487(n)-A168193(n)`
-/

namespace A316528.P10624555520312855912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048487 n - A168193 n

end

end A316528.P10624555520312855912

namespace A316528

/-- `A048487(n)-A168193(n)` -/
def P10624555520312855912.Spec : Prop :=
  ∀ n, P10624555520312855912.a n = A316528 n

end A316528

/-! ## A316528.P511539025397110633

`A094002(n)-A192760(n)`
-/

namespace A316528.P511539025397110633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094002 n - A192760 n

end

end A316528.P511539025397110633

namespace A316528

/-- `A094002(n)-A192760(n)` -/
def P511539025397110633.Spec : Prop :=
  ∀ n, P511539025397110633.a n = A316528 n

end A316528

/-! ## A316528.P12602918276490561356

`A175661(n)-A227200(n)`
-/

namespace A316528.P12602918276490561356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175661 n - A227200 n

end

end A316528.P12602918276490561356

namespace A316528

/-- `A175661(n)-A227200(n)` -/
def P12602918276490561356.Spec : Prop :=
  ∀ n, P12602918276490561356.a n = A316528 n

end A316528

/-! ## A316528.P6671077310715042216

`A104004(n)+∑[A027934(n)]`
-/

namespace A316528.P6671077310715042216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104004 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316528.P6671077310715042216

namespace A316528

/-- `A104004(n)+∑[A027934(n)]` -/
def P6671077310715042216.Spec : Prop :=
  ∀ n, P6671077310715042216.a n = A316528 n

end A316528

/-! ## A316528.P10948849593723367824

`A104004(n)+A008466(n+1)`
-/

namespace A316528.P10948849593723367824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104004 n + A008466 (n + 1)

end

end A316528.P10948849593723367824

namespace A316528

/-- `A104004(n)+A008466(n+1)` -/
def P10948849593723367824.Spec : Prop :=
  ∀ n, P10948849593723367824.a n = A316528 n

end A316528

/-! ## A316528.P15977125707085220752

`A175657(n)+A167821(n+1)`
-/

namespace A316528.P15977125707085220752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175657 n + A167821 (n + 1)

end

end A316528.P15977125707085220752

namespace A316528

/-- `A175657(n)+A167821(n+1)` -/
def P15977125707085220752.Spec : Prop :=
  ∀ n, P15977125707085220752.a n = A316528 n

end A316528

/-! ## A316528.P2205620080170894887

`A027934(n)+A008466(n+2)`
-/

namespace A316528.P2205620080170894887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 n + A008466 (n + 2)

end

end A316528.P2205620080170894887

namespace A316528

/-- `A027934(n)+A008466(n+2)` -/
def P2205620080170894887.Spec : Prop :=
  ∀ n, P2205620080170894887.a n = A316528 n

end A316528

/-! ## A316528.P1650419523871562270

`A020714(n)-A078642(n+1)`
-/

namespace A316528.P1650419523871562270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n - A078642 (n + 1)

end

end A316528.P1650419523871562270

namespace A316528

/-- `A020714(n)-A078642(n+1)` -/
def P1650419523871562270.Spec : Prop :=
  ∀ n, P1650419523871562270.a n = A316528 n

end A316528

/-! ## A316528.P16876553919721206400

`A119587(n+2)+A000225(n)`
-/

namespace A316528.P16876553919721206400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119587 (n + 2) + A000225 n

end

end A316528.P16876553919721206400

namespace A316528

/-- `A119587(n+2)+A000225(n)` -/
def P16876553919721206400.Spec : Prop :=
  ∀ n, P16876553919721206400.a n = A316528 n

end A316528

/-! ## A316528.P6673922345631609652

`A175660(n+1)-A104004(n)`
-/

namespace A316528.P6673922345631609652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175660 (n + 1) - A104004 n

end

end A316528.P6673922345631609652

namespace A316528

/-- `A175660(n+1)-A104004(n)` -/
def P6673922345631609652.Spec : Prop :=
  ∀ n, P6673922345631609652.a n = A316528 n

end A316528

/-!
# A316529: Heinz numbers of totally strong integer partitions.

The programs for A316529, there is no canonical definition to state claims against.
-/

/-! ## A316529.P3222180369056127977

`A304678(n+1)%84`
-/

namespace A316529.P3222180369056127977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304678 (n + 1)) 84

end

end A316529.P3222180369056127977

/-! ## A316529.P7690469930699376994

`comp[A316597(n+1)-1]+1`
-/

namespace A316529.P7690469930699376994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316597 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A316529.P7690469930699376994

/-! ## A316529.P3649424255841039742

`comp[A360253(n+1)-1]+1`
-/

namespace A316529.P3649424255841039742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360253 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A316529.P3649424255841039742

/-! ## A316529.P10602508120472539504

`record[A085079(n+1)%(n+2)]`
-/

namespace A316529.P10602508120472539504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085079 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316529.P10602508120472539504

/-! ## A316529.P17087379124462184246

`∪[(n+1)², A065200(n+1)]`
-/

namespace A316529.P17087379124462184246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316529.P17087379124462184246

/-! ## A316529.P3994218069613388150

`∪[(n+1)², A304678(n+2)]`
-/

namespace A316529.P3994218069613388150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316529.P3994218069613388150

/-! ## A316529.P4106214648142777653

`lt[A069799(n+1), n+2]+1`
-/

namespace A316529.P4106214648142777653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A316529.P4106214648142777653

/-! ## A316529.P6874975448406289428

`∪[A065200(n+1), A002727(n)]`
-/

namespace A316529.P6874975448406289428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002727 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316529.P6874975448406289428

/-!
# A316530: Numbers k such that A000009(k) divides k!.

The programs for A316530, there is no canonical definition to state claims against.
-/

/-! ## A316530.P5994175603054614381

`lt[A254269(n), n+1]`
-/

namespace A316530.P5994175603054614381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254269 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A316530.P5994175603054614381

/-! ## A316530.P11694050508969038358

`lt[A254269(n)-A267883(n), n]`
-/

namespace A316530.P11694050508969038358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254269 n - A267883 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A316530.P11694050508969038358

/-! ## A316530.P6965173298538734371

`lt[A060576(n)*A254269(n), n]`
-/

namespace A316530.P6965173298538734371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A254269 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A316530.P6965173298538734371

/-! ## A316530.P6219397799289537085

`lt[A254269(n)%A000041(n), n]`
-/

namespace A316530.P6219397799289537085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254269 n) (A000041 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A316530.P6219397799289537085

/-! ## A316530.P11579477252322310664

`lt[A254269(n), A083220(n)]-and(64, n)`
-/

namespace A316530.P11579477252322310664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254269 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (Nat.land 64 n : ℤ)

end

end A316530.P11579477252322310664

/-! ## A316530.P15670162731927897851

`A000027(lt[A254269(n), A083220(n)])`
-/

namespace A316530.P15670162731927897851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254269 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316530.P15670162731927897851

/-! ## A316530.P4814957731056343159

`A028310(lt[A254269(n), A098180(n)])`
-/

namespace A316530.P4814957731056343159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254269 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316530.P4814957731056343159

/-! ## A316530.P9698712591139559435

`lt[A254269(n), A083220(n)]%A017017(n)`
-/

namespace A316530.P9698712591139559435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254269 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) (A017017 n)

end

end A316530.P9698712591139559435

/-!
# A316532: Leading least prime signatures, ordered by the underlying partitions, as in A063008.

The programs for A316532, there is no canonical definition to state claims against.
-/

/-! ## A316532.P11905910245153997305

`filter[A036035(n), A373156(#)]`
-/

namespace A316532.P11905910245153997305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A316532.P11905910245153997305

/-! ## A316532.P6344716355797966815

`filter[A059901(n), A373156(#)]`
-/

namespace A316532.P6344716355797966815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A316532.P6344716355797966815

/-! ## A316532.P3641845983476943148

`filter[A063008(n), A373156(#)]`
-/

namespace A316532.P3641845983476943148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A316532.P3641845983476943148

/-! ## A316532.P16094614088207181217

`filter[A087443(n), A373156(#)]`
-/

namespace A316532.P16094614088207181217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A316532.P16094614088207181217

/-! ## A316532.P8030788754058725791

`A283980(A337470(∑[n]))`
-/

namespace A316532.P8030788754058725791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283980 (A337470 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A316532.P8030788754058725791

/-!
# A316533: a(n) is the Sprague-Grundy value of the Node-Kayles game played on the generalized Petersen graph P(n,2).

The programs for A316533, there is no canonical definition to state claims against.
-/

/-! ## A316533.P2565463030547751485

`abs(floor(cos(n)^(n+1)))`
-/

namespace A316533.P2565463030547751485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.cos (n : ℝ) ^ (n + 1)⌋|

end

end A316533.P2565463030547751485

/-! ## A316533.P543190819142823666

`floor(cos(n)^(n+1))²`
-/

namespace A316533.P543190819142823666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (n : ℝ) ^ (n + 1)⌋ ^ 2

end

end A316533.P543190819142823666

/-!
# A316534: Numbers k such that k concatenated with k+1 and then divided by 2k+1 produces an integer after a series of divisions explained in the Example section.

The programs for A316534, there is no canonical definition to state claims against.
-/

/-! ## A316534.P16561921086136983647

`5%(A237113(n+4)+1)+n`
-/

namespace A316534.P16561921086136983647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A237113 (n + 4) + 1) + (n : ℤ)

end

end A316534.P16561921086136983647

/-!
# A316536: Number of abelian subgroups of the group SL(2, Z(n)), counting conjugates as distinct.

The programs for A316536, there is no canonical definition to state claims against.
-/

/-! ## A316536.P12846890423176782164

`A339238(A046092(n)+A001548(n))`
-/

namespace A316536.P12846890423176782164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339238 (A046092 n + A001548 n).toNat

end

end A316536.P12846890423176782164

/-!
# A316537: Number of cyclic subgroups of the group SL(2, Z(n)), counting conjugates as distinct.

The programs for A316537, there is no canonical definition to state claims against.
-/

/-! ## A316537.P12833244364874807856

`A217038(A077217(2*n+1)*A217067(n))`
-/

namespace A316537.P12833244364874807856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A077217 (2 * n + 1) * A217067 n).toNat

end

end A316537.P12833244364874807856

/-! ## A316537.P9983107315009301177

`A325863(3*n+2)-A138262(A325863(n))`
-/

namespace A316537.P9983107315009301177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325863 (3 * n + 2) - A138262 (A325863 n).toNat

end

end A316537.P9983107315009301177

/-!
# A316538: Numbers k such that k concatenated with k-1 and then divided by 2k-1 produces an integer after some divisions explained in the Example section.

The programs for A316538, there is no canonical definition to state claims against.
-/

/-! ## A316538.P10907988572993480290

`(3%A326498(n))!+n`
-/

namespace A316538.P10907988572993480290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod 3 (A326498 n)).toNat + n

end

end A316538.P10907988572993480290

/-!
# A316539: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316539, there is no canonical definition to state claims against.
-/

/-! ## A316539.P7766741083278464401

`A316545(∑[4*n]+1)`
-/

namespace A316539.P7766741083278464401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316539.P7766741083278464401

/-! ## A316539.P8593746976437261596

`A316545(A001844(n))+A025469(n)`
-/

namespace A316539.P8593746976437261596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A001844 n).toNat + A025469 n

end

end A316539.P8593746976437261596

/-! ## A316539.P4737699963582502614

`A052307(n)*A316545(A001844(n))`
-/

namespace A316539.P4737699963582502614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n * A316545 (A001844 n).toNat

end

end A316539.P4737699963582502614

/-! ## A316539.P6987838416328081905

`A316545(A001844(n))+A034562(n+1)`
-/

namespace A316539.P6987838416328081905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A001844 n).toNat + A034562 (n + 1)

end

end A316539.P6987838416328081905

/-!
# A316540: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316540, there is no canonical definition to state claims against.
-/

/-! ## A316540.P1298985013927013765

`A316545(∑[n+2]+4)`
-/

namespace A316540.P1298985013927013765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316540.P1298985013927013765

/-! ## A316540.P12478392123666188459

`A177849(n)*A316545(A167614(n+1))`
-/

namespace A316540.P12478392123666188459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A316545 (A167614 (n + 1)).toNat

end

end A316540.P12478392123666188459

/-! ## A316540.P11950523877884442021

`A316545(A167614(n+1))%A107955(n)`
-/

namespace A316540.P11950523877884442021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316545 (A167614 (n + 1)).toNat) (A107955 n)

end

end A316540.P11950523877884442021

/-! ## A316540.P16443701152046896400

`or(A102683(n), A316545(A167614(n+1)))`
-/

namespace A316540.P16443701152046896400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 n) (A316545 (A167614 (n + 1)).toNat)

end

end A316540.P16443701152046896400

/-! ## A316540.P3803417491696581999

`lcm(A034947(n+1), A316545(A167614(n+1)))`
-/

namespace A316540.P3803417491696581999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A316545 (A167614 (n + 1)).toNat)

end

end A316540.P3803417491696581999

/-!
# A316541: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316541, there is no canonical definition to state claims against.
-/

/-! ## A316541.P1324760859054663088

`A316545(A145018(n+4))`
-/

namespace A316541.P1324760859054663088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A145018 (n + 4)).toNat

end

end A316541.P1324760859054663088

/-! ## A316541.P11058909826191836370

`A316545(A141214(n)+7)`
-/

namespace A316541.P11058909826191836370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A141214 n + 7).toNat

end

end A316541.P11058909826191836370

/-! ## A316541.P6312737632405204845

`A316545(A052905(n)+9)`
-/

namespace A316541.P6312737632405204845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A052905 n + 9).toNat

end

end A316541.P6312737632405204845

/-! ## A316541.P12765107427149122828

`A316545(A055999(n)+10)`
-/

namespace A316541.P12765107427149122828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A055999 n + 10).toNat

end

end A316541.P12765107427149122828

/-! ## A316541.P3148887971366711465

`A316545(∑[A141213(n)]+7)`
-/

namespace A316541.P3148887971366711465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (∑ j ∈ Finset.range (n + 1), f1 j + 7).toNat

end

end A316541.P3148887971366711465

/-!
# A316542: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316542, there is no canonical definition to state claims against.
-/

/-! ## A316542.P9383830631266146978

`A316545(A167499(n+3))`
-/

namespace A316542.P9383830631266146978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A167499 (n + 3)).toNat

end

end A316542.P9383830631266146978

/-! ## A316542.P6331415857156313182

`A316545(A155212(n)+13)`
-/

namespace A316542.P6331415857156313182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A155212 n + 13).toNat

end

end A316542.P6331415857156313182

/-! ## A316542.P8897376290141125196

`A316545(A056000(n)+15)`
-/

namespace A316542.P8897376290141125196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A056000 n + 15).toNat

end

end A316542.P8897376290141125196

/-! ## A316542.P14232426472336413584

`A316545(A000217(n+4)+5)`
-/

namespace A316542.P14232426472336413584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A000217 (n + 4) + 5).toNat

end

end A316542.P14232426472336413584

/-! ## A316542.P5392429001079894016

`A316545(A141214(n+1)+8)`
-/

namespace A316542.P5392429001079894016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A141214 (n + 1) + 8).toNat

end

end A316542.P5392429001079894016

/-!
# A316543: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316543, there is no canonical definition to state claims against.
-/

/-! ## A316543.P2224018378919666851

`A316545(A166136(n+4))`
-/

namespace A316543.P2224018378919666851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A166136 (n + 4)).toNat

end

end A316543.P2224018378919666851

/-! ## A316543.P7215219005304401111

`A316545(A056115(n)+21)`
-/

namespace A316543.P7215219005304401111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A056115 n + 21).toNat

end

end A316543.P7215219005304401111

/-! ## A316543.P1343553636502211587

`A316545(A000096(n+4)+7)`
-/

namespace A316543.P1343553636502211587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A000096 (n + 4) + 7).toNat

end

end A316543.P1343553636502211587

/-! ## A316543.P14515967740631988189

`A316545(A000217(n+5)+6)`
-/

namespace A316543.P14515967740631988189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A000217 (n + 5) + 6).toNat

end

end A316543.P14515967740631988189

/-! ## A316543.P45658447314089392

`A316545(A000124(n+6)-(n+1))`
-/

namespace A316543.P45658447314089392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A316543.P45658447314089392

/-!
# A316544: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316544, there is no canonical definition to state claims against.
-/

/-! ## A316544.P17968863604879201060

`A316545(A000124(n+6)+6)`
-/

namespace A316544.P17968863604879201060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A000124 (n + 6) + 6).toNat

end

end A316544.P17968863604879201060

/-! ## A316544.P15609886098853099273

`A316545(A000217(n+6)+7)`
-/

namespace A316544.P15609886098853099273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A000217 (n + 6) + 7).toNat

end

end A316544.P15609886098853099273

/-! ## A316544.P14749964697005288532

`A316545(A027379(n+4)+10)`
-/

namespace A316544.P14749964697005288532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A027379 (n + 4) + 10).toNat

end

end A316544.P14749964697005288532

/-! ## A316544.P8849992057297061949

`A316545(A055998(n+6)-A005408(n+2))`
-/

namespace A316544.P8849992057297061949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A055998 (n + 6) - A005408 (n + 2)).toNat

end

end A316544.P8849992057297061949

/-! ## A316544.P12551363190490611959

`A316545(A000096(n+7)-A005408(n+3))`
-/

namespace A316544.P12551363190490611959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (A000096 (n + 7) - A005408 (n + 3)).toNat

end

end A316544.P12551363190490611959

/-!
# A316545: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316545, there is no canonical definition to state claims against.
-/

/-! ## A316545.P2696699245779448635

`A304848(n+1)+A186034(A022167(n))`
-/

namespace A316545.P2696699245779448635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (n + 1) + A186034 (A022167 n).toNat

end

end A316545.P2696699245779448635

/-! ## A316545.P4567232352432337892

`A304848(n+1)+A173920(A173917(n))`
-/

namespace A316545.P4567232352432337892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (n + 1) + A173920 (A173917 n).toNat

end

end A316545.P4567232352432337892

/-! ## A316545.P16808738154422098093

`A367306(A304848(n+1))`
-/

namespace A316545.P16808738154422098093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A304848 (n + 1)).toNat

end

end A316545.P16808738154422098093

/-! ## A316545.P8484587046416678664

`A304848(n+1)+A025465(A003099(n))`
-/

namespace A316545.P8484587046416678664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (n + 1) + A025465 (A003099 n).toNat

end

end A316545.P8484587046416678664

/-! ## A316545.P17551141545263016536

`A306060(n+1)-A025465(A003099(n))`
-/

namespace A316545.P17551141545263016536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (n + 1) - A025465 (A003099 n).toNat

end

end A316545.P17551141545263016536

/-!
# A316546: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316546, there is no canonical definition to state claims against.
-/

/-! ## A316546.P5008879156639496801

`A316552(∑[4*n]+1)`
-/

namespace A316546.P5008879156639496801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316546.P5008879156639496801

/-! ## A316546.P5922612889269956168

`record[A316552(Δ[A235355(n)])]`
-/

namespace A316546.P5922612889269956168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316546.P5922612889269956168

/-! ## A316546.P14689985522916564025

`record[A316552(A330613(n+1))]`
-/

namespace A316546.P14689985522916564025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316546.P14689985522916564025

/-! ## A316546.P13569071342318044530

`A316552(A001844(n))+char[11]`
-/

namespace A316546.P13569071342318044530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316546.P13569071342318044530

/-! ## A316546.P16388006538942858047

`record[A003982(n)*A316552(n+1)]`
-/

namespace A316546.P16388006538942858047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316546.P16388006538942858047

/-!
# A316547: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316547, there is no canonical definition to state claims against.
-/

/-! ## A316547.P6144879442019075369

`A316552(∑[n+2]+4)`
-/

namespace A316547.P6144879442019075369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316547.P6144879442019075369

/-! ## A316547.P3193153943575287105

`A316552(A167614(n+1))+char[23]`
-/

namespace A316547.P3193153943575287105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316547.P3193153943575287105

/-! ## A316547.P14788939172685951946

`A316552(A046691(n)+7)+char[25]`
-/

namespace A316547.P14788939172685951946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316547.P14788939172685951946

/-! ## A316547.P10643944292474781928

`record[A316552(n+4)/A030524(n+1)]`
-/

namespace A316547.P10643944292474781928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316552 (n + 4) : ℚ) / (A030524 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316547.P10643944292474781928

/-! ## A316547.P6892998614691526568

`A316552(A167614(n+1))%A041466(n)`
-/

namespace A316547.P6892998614691526568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316552 (A167614 (n + 1)).toNat) (A041466 n)

end

end A316547.P6892998614691526568

/-!
# A316548: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316548, there is no canonical definition to state claims against.
-/

/-! ## A316548.P762199903336190931

`A316552(∑[n+3]+7)`
-/

namespace A316548.P762199903336190931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316548.P762199903336190931

/-! ## A316548.P15947325135014237701

`and(-1, A316552(A027379(n+2)))`
-/

namespace A316548.P15947325135014237701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316552 (A027379 (n + 2)).toNat)

end

end A316548.P15947325135014237701

/-! ## A316548.P8503864310116977658

`A316552(A027379(n+2))+A000038(n+1)`
-/

namespace A316548.P8503864310116977658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A027379 (n + 2)).toNat + A000038 (n + 1)

end

end A316548.P8503864310116977658

/-! ## A316548.P4946000722852478286

`A316552(A027379(n+2))+A200214(n+1)`
-/

namespace A316548.P4946000722852478286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A027379 (n + 2)).toNat + A200214 (n + 1)

end

end A316548.P4946000722852478286

/-! ## A316548.P7533669708408894867

`A316552(A027379(n+2))+A285007(n+1)`
-/

namespace A316548.P7533669708408894867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A027379 (n + 2)).toNat + A285007 (n + 1)

end

end A316548.P7533669708408894867

/-!
# A316549: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316549, there is no canonical definition to state claims against.
-/

/-! ## A316549.P13053975960204308775

`A316552(A374005(n+1))`
-/

namespace A316549.P13053975960204308775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A374005 (n + 1)).toNat

end

end A316549.P13053975960204308775

/-! ## A316549.P894962923322989287

`A316552(A155212(n)+13)`
-/

namespace A316549.P894962923322989287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A155212 n + 13).toNat

end

end A316549.P894962923322989287

/-! ## A316549.P17710930399226946705

`A316552(A056000(n)+15)`
-/

namespace A316549.P17710930399226946705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A056000 n + 15).toNat

end

end A316549.P17710930399226946705

/-! ## A316549.P2252703778156257329

`A316552(eq[7, A066657(n)])`
-/

namespace A316549.P2252703778156257329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316549.P2252703778156257329

/-! ## A316549.P14503669001005958570

`A316552(A167614(n+3)+2)`
-/

namespace A316549.P14503669001005958570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A167614 (n + 3) + 2).toNat

end

end A316549.P14503669001005958570

/-!
# A316550: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316550, there is no canonical definition to state claims against.
-/

/-! ## A316550.P17463801061399774208

`A316552(∑[n+5]+16)`
-/

namespace A316550.P17463801061399774208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A316550.P17463801061399774208

/-! ## A316550.P12218173727030547558

`A316552(A166136(n+4))+A200214(n+1)`
-/

namespace A316550.P12218173727030547558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A166136 (n + 4)).toNat + A200214 (n + 1)

end

end A316550.P12218173727030547558

/-! ## A316550.P7502115670312692639

`A316552(A166136(n+4))+A285007(n+1)`
-/

namespace A316550.P7502115670312692639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A166136 (n + 4)).toNat + A285007 (n + 1)

end

end A316550.P7502115670312692639

/-! ## A316550.P5285688836153273410

`A056753(2*(n+1))*A316552(A166136(n+4))`
-/

namespace A316550.P5285688836153273410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 (2 * (n + 1)) * A316552 (A166136 (n + 4)).toNat

end

end A316550.P5285688836153273410

/-! ## A316550.P10075851120911331595

`A316552(A145018(n+6)+2)*A357138(3*n+2)`
-/

namespace A316550.P10075851120911331595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A145018 (n + 6) + 2).toNat * A357138 (3 * n + 2)

end

end A316550.P10075851120911331595

/-!
# A316551: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316551, there is no canonical definition to state claims against.
-/

/-! ## A316551.P17431205780730561043

`A316552(A374008(n+1))`
-/

namespace A316551.P17431205780730561043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A374008 (n + 1)).toNat

end

end A316551.P17431205780730561043

/-! ## A316551.P6940426664419326682

`A316552(A167487(n+5))`
-/

namespace A316551.P6940426664419326682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A167487 (n + 5)).toNat

end

end A316551.P6940426664419326682

/-! ## A316551.P4860381623630239818

`A316552(A056119(n)+28)`
-/

namespace A316551.P4860381623630239818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A056119 n + 28).toNat

end

end A316551.P4860381623630239818

/-! ## A316551.P1270132374111151077

`A316552(eq[11, A066657(n)])`
-/

namespace A316551.P1270132374111151077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316551.P1270132374111151077

/-! ## A316551.P10666216553663584979

`A316552(A166136(n+5)+1)`
-/

namespace A316551.P10666216553663584979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (A166136 (n + 5) + 1).toNat

end

end A316551.P10666216553663584979

/-!
# A316552: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316552, there is no canonical definition to state claims against.
-/

/-! ## A316552.P18443771363574377908

`A309785(A299321(n+1))+A305252(n+1)`
-/

namespace A316552.P18443771363574377908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A299321 (n + 1)).toNat + A305252 (n + 1)

end

end A316552.P18443771363574377908

/-! ## A316552.P9327345454455094771

`xor(A200214(A197561(n+1)), A305252(n+1))`
-/

namespace A316552.P9327345454455094771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A200214 (A197561 (n + 1)).toNat) (A305252 (n + 1))

end

end A316552.P9327345454455094771

/-! ## A316552.P6723120436102041027

`A305252(n+1)+A285007(A035607(n))`
-/

namespace A316552.P6723120436102041027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305252 (n + 1) + A285007 (A035607 n).toNat

end

end A316552.P6723120436102041027

/-! ## A316552.P8291603741129914934

`A305252(n+1)+A285007(A270061(n))`
-/

namespace A316552.P8291603741129914934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305252 (n + 1) + A285007 (A270061 n).toNat

end

end A316552.P8291603741129914934

/-! ## A316552.P14304694098445193101

`A309785(A331562(n))+A305252(n+1)`
-/

namespace A316552.P14304694098445193101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A331562 n).toNat + A305252 (n + 1)

end

end A316552.P14304694098445193101

/-!
# A316553: Number of elements of order 2 in the group SL(2, Z(n)).

The programs for A316553, the canonical program `A316553.P5817434773325312047` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316553 has offset 1).

The definition of A316553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316553.P10647943495886679383

`gcd(8, n+1)*A034444(n+1)-1`
-/

namespace A316553.P10647943495886679383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 8 (n + 1) : ℤ) * A034444 (n + 1) - 1

end

end A316553.P10647943495886679383

namespace A316553

/-- `gcd(8, n+1)*A034444(n+1)-1` -/
def P10647943495886679383.Spec : Prop :=
  ∀ n, P10647943495886679383.a n = A316553 (n + 1)

end A316553

/-! ## A316553.P5817434773325312047

`A010685(n)*A060594(n+1)-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A316553

/-- `A010685(n)*A060594(n+1)-1` -/
def P5817434773325312047.Spec : Prop :=
  ∀ n, P5817434773325312047.a n = A316553 (n + 1)

theorem P5817434773325312047.correct : P5817434773325312047.Spec := by
  intro n
  simp only [A316553, Nat.add_sub_cancel]

end A316553

/-! ## A316553.P11009502046248078696

`A000034(n)²*A060594(n+1)-1`
-/

namespace A316553.P11009502046248078696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A060594 (n + 1) - 1

end

end A316553.P11009502046248078696

namespace A316553

/-- `A000034(n)²*A060594(n+1)-1` -/
def P11009502046248078696.Spec : Prop :=
  ∀ n, P11009502046248078696.a n = A316553 (n + 1)

end A316553

/-! ## A316553.P7297704176500968656

`A134451(n+1)²*A060594(n+1)-1`
-/

namespace A316553.P7297704176500968656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (n + 1) ^ 2 * A060594 (n + 1) - 1

end

end A316553.P7297704176500968656

namespace A316553

/-- `A134451(n+1)²*A060594(n+1)-1` -/
def P7297704176500968656.Spec : Prop :=
  ∀ n, P7297704176500968656.a n = A316553 (n + 1)

end A316553

/-! ## A316553.P2036107099029101268

`A280193(n+1)²*A060594(n+1)-1`
-/

namespace A316553.P2036107099029101268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (n + 1) ^ 2 * A060594 (n + 1) - 1

end

end A316553.P2036107099029101268

namespace A316553

/-- `A280193(n+1)²*A060594(n+1)-1` -/
def P2036107099029101268.Spec : Prop :=
  ∀ n, P2036107099029101268.a n = A316553 (n + 1)

end A316553

/-! ## A316553.P10727732407971598884

`A001065(A010685(n)*A060594(n+1))`
-/

namespace A316553.P10727732407971598884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A010685 n * A060594 (n + 1)).toNat

end

end A316553.P10727732407971598884

namespace A316553

/-- `A001065(A010685(n)*A060594(n+1))` -/
def P10727732407971598884.Spec : Prop :=
  ∀ n, P10727732407971598884.a n = A316553 (n + 1)

end A316553

/-! ## A316553.P15489518949012264117

`A011371(A010685(n)*A060594(n+1))`
-/

namespace A316553.P15489518949012264117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A010685 n * A060594 (n + 1)).toNat

end

end A316553.P15489518949012264117

namespace A316553

/-- `A011371(A010685(n)*A060594(n+1))` -/
def P15489518949012264117.Spec : Prop :=
  ∀ n, P15489518949012264117.a n = A316553 (n + 1)

end A316553

/-! ## A316553.P14955989351074715132

`A035327(A010685(n)*A060594(n+1))`
-/

namespace A316553.P14955989351074715132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A010685 n * A060594 (n + 1)).toNat

end

end A316553.P14955989351074715132

namespace A316553

/-- `A035327(A010685(n)*A060594(n+1))` -/
def P14955989351074715132.Spec : Prop :=
  ∀ n, P14955989351074715132.a n = A316553 (n + 1)

end A316553

/-! ## A316553.P7533683353681192584

`A130734(A010685(n)*A060594(n+1))`
-/

namespace A316553.P7533683353681192584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A010685 n * A060594 (n + 1)).toNat

end

end A316553.P7533683353681192584

namespace A316553

/-- `A130734(A010685(n)*A060594(n+1))` -/
def P7533683353681192584.Spec : Prop :=
  ∀ n, P7533683353681192584.a n = A316553 (n + 1)

end A316553

/-!
# A316555: Number of distinct GCDs of nonempty submultisets of the integer partition with Heinz number n.

The programs for A316555, there is no canonical definition to state claims against.
-/

/-! ## A316555.P3261376974650205393

`A320509(A316556(n+1))%A003002(A047304(n+1))`
-/

namespace A316555.P3261376974650205393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320509 (A316556 (n + 1)).toNat) (A003002 (A047304 (n + 1)).toNat)

end

end A316555.P3261376974650205393

/-! ## A316555.P13144586260452069255

`A061420(A316556(n+1))%A348437(A007063(n+1))`
-/

namespace A316555.P13144586260452069255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061420 (A316556 (n + 1)).toNat) (A348437 (A007063 (n + 1)).toNat)

end

end A316555.P13144586260452069255

/-! ## A316555.P14088551308728050134

`A061420(A316556(n+1))%A015949(n+1)`
-/

namespace A316555.P14088551308728050134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061420 (A316556 (n + 1)).toNat) (A015949 (n + 1))

end

end A316555.P14088551308728050134

/-! ## A316555.P12959918739566236552

`A061420(A316556(n+1)%A299008(n+1))`
-/

namespace A316555.P12959918739566236552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061420 (Int.tmod (A316556 (n + 1)) (A299008 (n + 1))).toNat

end

end A316555.P12959918739566236552

/-! ## A316555.P14523396616378110593

`A320509(A316556(n+1))%A299740(n+1)`
-/

namespace A316555.P14523396616378110593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320509 (A316556 (n + 1)).toNat) (A299740 (n + 1))

end

end A316555.P14523396616378110593

/-! ## A316555.P9770397570417350404

`p?[A142463(n)]%A116549(A316556(n+1))`
-/

namespace A316555.P9770397570417350404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A116549 (A316556 (n + 1)).toNat)

end

end A316555.P9770397570417350404

/-! ## A316555.P65868531510754779

`A106457(2^A316556(n+1))`
-/

namespace A316555.P65868531510754779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106457 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A316556 (n + 1) : ℤ))).toNat

end

end A316555.P65868531510754779

/-! ## A316555.P14379638935279172950

`A004218(5^A316556(n+1))`
-/

namespace A316555.P14379638935279172950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A316556 (n + 1) : ℤ))).toNat

end

end A316555.P14379638935279172950

/-! ## A316555.P17938360330808702752

`A076869(A316556(n+1)²+1)`
-/

namespace A316555.P17938360330808702752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076869 (A316556 (n + 1) ^ 2 + 1).toNat

end

end A316555.P17938360330808702752

/-! ## A316555.P1573277450406010848

`A316556(A316556(n+1)^6+1)`
-/

namespace A316555.P1573277450406010848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316556 (A316556 (n + 1) ^ 6 + 1).toNat

end

end A316555.P1573277450406010848

/-! ## A316555.P15330290065921844949

`A076869(A116966(A316556(n+1)²))`
-/

namespace A316555.P15330290065921844949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076869 (A116966 (A316556 (n + 1) ^ 2).toNat).toNat

end

end A316555.P15330290065921844949

/-! ## A316555.P282416398876942143

`A001221(A007067(A316556(n+1))!)`
-/

namespace A316555.P282416398876942143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A007067 (A316556 (n + 1)).toNat).toNat)

end

end A316555.P282416398876942143

/-! ## A316555.P7694844980431596451

`A001221(A092391(A316556(n+1))!)`
-/

namespace A316555.P7694844980431596451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A092391 (A316556 (n + 1)).toNat).toNat)

end

end A316555.P7694844980431596451

/-! ## A316555.P2188856169973493135

`A001221(A267259(A316556(n+1))!)`
-/

namespace A316555.P2188856169973493135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A267259 (A316556 (n + 1)).toNat).toNat)

end

end A316555.P2188856169973493135

/-! ## A316555.P3388842420887987693

`A049474(A316556(n+1)%A026375(n))`
-/

namespace A316555.P3388842420887987693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (Int.tmod (A316556 (n + 1)) (A026375 n)).toNat

end

end A316555.P3388842420887987693

/-! ## A316555.P7546744542703327320

`A116549(A316556(n+1))-A316556(A142745(n+1))`
-/

namespace A316555.P7546744542703327320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116549 (A316556 (n + 1)).toNat - A316556 (A142745 (n + 1)).toNat

end

end A316555.P7546744542703327320

/-! ## A316555.P16931665687036688894

`A001221(A014963(A137688(n))*A316437(n+1))`
-/

namespace A316555.P16931665687036688894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A014963 (A137688 n).toNat * A316437 (n + 1)).toNat

end

end A316555.P16931665687036688894

/-!
# A316556: Number of distinct LCMs of nonempty submultisets of the integer partition with Heinz number n.

The programs for A316556, there is no canonical definition to state claims against.
-/

/-! ## A316556.P17881067876592673209

`A198277(n)%A327394(A007947(n+1))`
-/

namespace A316556.P17881067876592673209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A327394 (A007947 (n + 1)).toNat)

end

end A316556.P17881067876592673209

/-! ## A316556.P2432057020833834356

`A327406(A327395(n+1))+A001221(n+1)`
-/

namespace A316556.P2432057020833834356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327406 (A327395 (n + 1)).toNat + A001221 (n + 1)

end

end A316556.P2432057020833834356

/-! ## A316556.P13475781076851309504

`A316555(n+1)+A121373(A325800(n+1))`
-/

namespace A316556.P13475781076851309504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316555 (n + 1) + A121373 (A325800 (n + 1)).toNat

end

end A316556.P13475781076851309504

/-! ## A316556.P15693949132117422999

`A337531(A330061(2*(n+1))/2)`
-/

namespace A316556.P15693949132117422999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337531 (SequenceMachineLib.roundAway ((A330061 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A316556.P15693949132117422999

/-! ## A316556.P11545836459575450928

`A337531(A090110(n+1))`
-/

namespace A316556.P11545836459575450928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337531 (A090110 (n + 1)).toNat

end

end A316556.P11545836459575450928

/-!
# A316557: Number of distinct integer averages of subsets of the integer partition with Heinz number n.

The programs for A316557, there is no canonical definition to state claims against.
-/

/-! ## A316557.P4360871815909057361

`or(A001221(n+1), A188009(A045850(n+3)))`
-/

namespace A316557.P4360871815909057361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (n + 1)) (A188009 (A045850 (n + 3)).toNat)

end

end A316557.P4360871815909057361

/-! ## A316557.P10970018049542901571

`or(A001221(n+1), A254379(A006128(n)))`
-/

namespace A316557.P10970018049542901571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (n + 1)) (A254379 (A006128 n).toNat)

end

end A316557.P10970018049542901571

/-! ## A316557.P8102699223183141763

`or(A001221(n+1), A290098(A232797(n+1)))`
-/

namespace A316557.P8102699223183141763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (n + 1)) (A290098 (A232797 (n + 1)).toNat)

end

end A316557.P8102699223183141763

/-! ## A316557.P11884073340075030264

`or(A001221(n+1), A005088(A218823(n+1)))`
-/

namespace A316557.P11884073340075030264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (n + 1)) (A005088 (A218823 (n + 1)).toNat)

end

end A316557.P11884073340075030264

/-! ## A316557.P2326909960915943318

`or(A001221(n+1), A353498(A220369(n+1)))`
-/

namespace A316557.P2326909960915943318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (n + 1)) (A353498 (A220369 (n + 1)).toNat)

end

end A316557.P2326909960915943318

/-!
# A316559: Number of abelian subgroups of the group GL(2, Z(n)), counting conjugates as distinct.

The programs for A316559, there is no canonical definition to state claims against.
-/

/-! ## A316559.P5997202184678090577

`record[Δ[A023443(A041717(n))]]`
-/

namespace A316559.P5997202184678090577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A041717 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316559.P5997202184678090577

/-!
# A316560: Number of cyclic subgroups of the group GL(2, Z(n)), counting conjugates as distinct.

The programs for A316560, there is no canonical definition to state claims against.
-/

/-! ## A316560.P12997376938376958401

`A103977(A192120(3*n+1)+A068413(n))`
-/

namespace A316560.P12997376938376958401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (A192120 (3 * n + 1) + A068413 n).toNat

end

end A316560.P12997376938376958401

/-!
# A316561: Squarefree numbers whose arithmetic mean of digits is 4.

The programs for A316561, the canonical program `A316561.P12406151038005718592` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316561 has offset 1).

The definition of A316561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6779 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316561.P12406151038005718592

`record[∏{p}[A061387(n+2), #]]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A316561

/-- `record[∏{p}[A061387(n+2), #]]` -/
def P12406151038005718592.Spec : Prop :=
  ∀ n, (P12406151038005718592.a n : ℤ) = A316561 (n + 1)

theorem P12406151038005718592.correct : P12406151038005718592.Spec := by
  intro n
  simp only [A316561, Nat.add_sub_cancel]

end A316561

/-! ## A316561.P6286665170454973528

`filter[A061387(n+1), A008966(#)]`
-/

namespace A316561.P6286665170454973528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A316561.P6286665170454973528

namespace A316561

/-- `filter[A061387(n+1), A008966(#)]` -/
def P6286665170454973528.Spec : Prop :=
  ∀ n, P6286665170454973528.a n = A316561 (n + 1)

end A316561

/-! ## A316561.P16487721872596528729

`∩[A005117(n+1), A061387(n+1)]`
-/

namespace A316561.P16487721872596528729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316561.P16487721872596528729

namespace A316561

/-- `∩[A005117(n+1), A061387(n+1)]` -/
def P16487721872596528729.Spec : Prop :=
  ∀ n, (P16487721872596528729.a n : ℤ) = A316561 (n + 1)

end A316561

/-! ## A316561.P502499353668410694

`filter[A061387(n+1), A323154(#)]`
-/

namespace A316561.P502499353668410694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A316561.P502499353668410694

namespace A316561

/-- `filter[A061387(n+1), A323154(#)]` -/
def P502499353668410694.Spec : Prop :=
  ∀ n, P502499353668410694.a n = A316561 (n + 1)

end A316561

/-! ## A316561.P13052341024347525601

`filter[A061387(n+1), A353559(#)]`
-/

namespace A316561.P13052341024347525601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A316561.P13052341024347525601

namespace A316561

/-- `filter[A061387(n+1), A353559(#)]` -/
def P13052341024347525601.Spec : Prop :=
  ∀ n, P13052341024347525601.a n = A316561 (n + 1)

end A316561

/-! ## A316561.P6361965235750677203

`∩[A061387(n+1), A348506(n+1)]`
-/

namespace A316561.P6361965235750677203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316561.P6361965235750677203

namespace A316561

/-- `∩[A061387(n+1), A348506(n+1)]` -/
def P6361965235750677203.Spec : Prop :=
  ∀ n, (P6361965235750677203.a n : ℤ) = A316561 (n + 1)

end A316561

/-! ## A316561.P5453850023527388539

`∩[A061387(n+1), A348499(n+1)]`
-/

namespace A316561.P5453850023527388539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316561.P5453850023527388539

namespace A316561

/-- `∩[A061387(n+1), A348499(n+1)]` -/
def P5453850023527388539.Spec : Prop :=
  ∀ n, (P5453850023527388539.a n : ℤ) = A316561 (n + 1)

end A316561

/-! ## A316561.P7166231862418820630

`∩[A061387(n+1), A366882(n+1)]`
-/

namespace A316561.P7166231862418820630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316561.P7166231862418820630

namespace A316561

/-- `∩[A061387(n+1), A366882(n+1)]` -/
def P7166231862418820630.Spec : Prop :=
  ∀ n, (P7166231862418820630.a n : ℤ) = A316561 (n + 1)

end A316561

/-! ## A316561.P9279242703940227539

`∩[A061387(n+1), A144338(n+1)]`
-/

namespace A316561.P9279242703940227539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316561.P9279242703940227539

namespace A316561

/-- `∩[A061387(n+1), A144338(n+1)]` -/
def P9279242703940227539.Spec : Prop :=
  ∀ n, (P9279242703940227539.a n : ℤ) = A316561 (n + 1)

end A316561

/-! ## A316561.P17483458868403415469

`∩[A061387(n+1), A064594(n+1)]`
-/

namespace A316561.P17483458868403415469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316561.P17483458868403415469

namespace A316561

/-- `∩[A061387(n+1), A064594(n+1)]` -/
def P17483458868403415469.Spec : Prop :=
  ∀ n, (P17483458868403415469.a n : ℤ) = A316561 (n + 1)

end A316561

/-! ## A316561.P6846970782153011906

`∩[A061387(n+1), A348961(n+1)]`
-/

namespace A316561.P6846970782153011906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316561.P6846970782153011906

namespace A316561

/-- `∩[A061387(n+1), A348961(n+1)]` -/
def P6846970782153011906.Spec : Prop :=
  ∀ n, (P6846970782153011906.a n : ℤ) = A316561 (n + 1)

end A316561

/-! ## A316561.P10520734257671594126

`∩[A061387(n+1), A193303(n+1)]`
-/

namespace A316561.P10520734257671594126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316561.P10520734257671594126

namespace A316561

/-- `∩[A061387(n+1), A193303(n+1)]` -/
def P10520734257671594126.Spec : Prop :=
  ∀ n, (P10520734257671594126.a n : ℤ) = A316561 (n + 1)

end A316561

/-! ## A316561.P11221766597413550099

`record[A015052(A061387(n+2))]`
-/

namespace A316561.P11221766597413550099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A061387 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316561.P11221766597413550099

namespace A316561

/-- `record[A015052(A061387(n+2))]` -/
def P11221766597413550099.Spec : Prop :=
  ∀ n, P11221766597413550099.a n = A316561 (n + 1)

end A316561

/-!
# A316562: Koechel number for the works of W. A. Mozart rounded from age 11.

The programs for A316562, there is no canonical definition to state claims against.
-/

/-! ## A316562.P4378062198629024799

`ceil(61*(2*n+1)/5)+3`
-/

namespace A316562.P4378062198629024799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈61 * ((2 * n + 1 : ℚ) / 5)⌉ + 3

end

end A316562.P4378062198629024799

/-! ## A316562.P8380975820620748361

`A057354(A304839(n+1)+17)`
-/

namespace A316562.P8380975820620748361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A304839 (n + 1) + 17).toNat

end

end A316562.P8380975820620748361

/-! ## A316562.P13137380044112807151

`A059995(A362360(3*n+2)+n)`
-/

namespace A316562.P13137380044112807151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A362360 (3 * n + 2) + (n : ℤ)).toNat

end

end A316562.P13137380044112807151

/-! ## A316562.P2819923445065016704

`A057354(A008592(6*n+4)+n)`
-/

namespace A316562.P2819923445065016704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A008592 (6 * n + 4) + (n : ℤ)).toNat

end

end A316562.P2819923445065016704

/-! ## A316562.P11459736273900157647

`record[A047263(6*n+4)+A038608(5*n+12)]`
-/

namespace A316562.P11459736273900157647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (6 * n + 4) + A038608 (5 * n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316562.P11459736273900157647

/-!
# A316563: Maximum order of an element in the special linear group SL(2, Z(n)).

The programs for A316563, there is no canonical definition to state claims against.
-/

/-! ## A316563.P3339419300450845117

`Δ[eq[n^(n%2), A316564(n+1)]]`
-/

namespace A316563.P3339419300450845117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316564 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A316563.P3339419300450845117

/-! ## A316563.P17181145573198738417

`Δ[eq[A093178(n), A316564(n+1)]]`
-/

namespace A316563.P17181145573198738417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316564 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A316563.P17181145573198738417

/-!
# A316565: Maximum order of an element of the general linear group GL(2, Z(n)).

The programs for A316565, there is no canonical definition to state claims against.
-/

/-! ## A316565.P6884338222499756058

`Δ[eq[1, A316566(n+1)]]`
-/

namespace A316565.P6884338222499756058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316566 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A316565.P6884338222499756058

/-! ## A316565.P13411473024885324605

`A096894(A345052(n+1))`
-/

namespace A316565.P13411473024885324605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096894 (A345052 (n + 1)).toNat

end

end A316565.P13411473024885324605

/-! ## A316565.P16762264118391713971

`A096894(A191414(n+1)%A078310(n+1))`
-/

namespace A316565.P16762264118391713971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096894 (Int.tmod (A191414 (n + 1)) (A078310 (n + 1))).toNat

end

end A316565.P16762264118391713971

/-! ## A316565.P9297745062389539575

`A096894(lcm(A001615(n+1), A306933(n+1)))`
-/

namespace A316565.P9297745062389539575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096894 (Int.lcm (A001615 (n + 1)) (A306933 (n + 1)))

end

end A316565.P9297745062389539575

/-! ## A316565.P16063901184339825157

`A096894(or(A001175(n+1), A306933(n+1)))`
-/

namespace A316565.P16063901184339825157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096894 (Int.lor (A001175 (n + 1)) (A306933 (n + 1))).toNat

end

end A316565.P16063901184339825157

/-!
# A316567: E.g.f. A(x) satisfies: Sum_{n>=0} 1/n! * exp(n^2*x)/A(x)^n = exp(1).

The programs for A316567, there is no canonical definition to state claims against.
-/

/-! ## A316567.P4793451746556828360

`A091226(Δ[n²]^n+1)`
-/

namespace A316567.P4793451746556828360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n + 1).toNat

end

end A316567.P4793451746556828360

/-!
# A316568: Largest k such that 1^2 + n, 2^2 + n, ..., k^2 + n are composite.

The programs for A316568, there is no canonical definition to state claims against.
-/

/-! ## A316568.P9208300785944018119

`A085099(n+1)-1`
-/

namespace A316568.P9208300785944018119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (n + 1) - 1

end

end A316568.P9208300785944018119

/-! ## A316568.P5138599141658136600

`sqrt(A059844(n+1))-1`
-/

namespace A316568.P5138599141658136600
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059844 (n + 1) : ℝ) - 1

end

end A316568.P5138599141658136600

/-! ## A316568.P5213798162501769097

`floor(sqrt(A059843(n+1)-n))-1`
-/

namespace A316568.P5213798162501769097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A059843 (n + 1) - (n : ℤ)) - 1

end

end A316568.P5213798162501769097

/-! ## A316568.P10667204080196491772

`A023444(A085099(n+1)+1)`
-/

namespace A316568.P10667204080196491772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A085099 (n + 1) + 1).toNat

end

end A316568.P10667204080196491772

/-! ## A316568.P7019875788103599621

`A289207(A085099(n+1)+1)`
-/

namespace A316568.P7019875788103599621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A085099 (n + 1) + 1).toNat

end

end A316568.P7019875788103599621

/-! ## A316568.P7010576756294756555

`A065423(2*A085099(n+1))`
-/

namespace A316568.P7010576756294756555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A085099 (n + 1)).toNat

end

end A316568.P7010576756294756555

/-! ## A316568.P13282191230810191325

`gcd(A059844(n+1), A088212(n+1))-1`
-/

namespace A316568.P13282191230810191325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A059844 (n + 1)) (A088212 (n + 1)) : ℤ) - 1

end

end A316568.P13282191230810191325

/-! ## A316568.P10435217246900987038

`log2(1/2)+A085099(n+1)/A007318(C(2, n)+1)`
-/

namespace A316568.P10435217246900987038
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((1 : ℚ) / 2 : ℝ) + ((A085099 (n + 1) : ℚ) / (A007318 (Nat.choose 2 n + 1) : ℚ) : ℝ)

end

end A316568.P10435217246900987038

/-! ## A316568.P17326576948094903524

`A057918(A059844(n+1))`
-/

namespace A316568.P17326576948094903524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A059844 (n + 1)).toNat

end

end A316568.P17326576948094903524

/-! ## A316568.P8147709408263915748

`A057918(A085099(n+1)²)`
-/

namespace A316568.P8147709408263915748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A085099 (n + 1) ^ 2).toNat

end

end A316568.P8147709408263915748

/-! ## A316568.P650784718923349867

`A259361(A085099(n+1)²)`
-/

namespace A316568.P650784718923349867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A085099 (n + 1) ^ 2).toNat

end

end A316568.P650784718923349867

/-! ## A316568.P17104851781827061546

`A025177(A059843(n+1)-n)`
-/

namespace A316568.P17104851781827061546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A059843 (n + 1) - (n : ℤ)).toNat

end

end A316568.P17104851781827061546

/-! ## A316568.P12842126208492934688

`A000194(A059843(n+1)-n)-1`
-/

namespace A316568.P12842126208492934688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A059843 (n + 1) - (n : ℤ)).toNat - 1

end

end A316568.P12842126208492934688

/-! ## A316568.P16823858920801243840

`A000196(A059843(n+1)-(n+2))`
-/

namespace A316568.P16823858920801243840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A059843 (n + 1) - (n + 2 : ℤ)).toNat

end

end A316568.P16823858920801243840

/-! ## A316568.P7178349916897347310

`A171173(A059843(n+1)-n)-1`
-/

namespace A316568.P7178349916897347310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (A059843 (n + 1) - (n : ℤ)).toNat - 1

end

end A316568.P7178349916897347310

/-! ## A316568.P9963617463660045331

`A087960(A008586(n)+1)+A085099(n+1)`
-/

namespace A316568.P9963617463660045331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A008586 n + 1).toNat + A085099 (n + 1)

end

end A316568.P9963617463660045331

/-! ## A316568.P9091699111830570431

`A200748(n)%A085099(n+1)`
-/

namespace A316568.P9091699111830570431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A085099 (n + 1))

end

end A316568.P9091699111830570431

/-! ## A316568.P7679841094112248694

`A117010(n+1)%A085099(n+1)`
-/

namespace A316568.P7679841094112248694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A085099 (n + 1))

end

end A316568.P7679841094112248694

/-! ## A316568.P3361729878838318060

`A083800(n+1)%A085099(n+1)`
-/

namespace A316568.P3361729878838318060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A085099 (n + 1))

end

end A316568.P3361729878838318060

/-! ## A316568.P6149112395315118894

`A070198(n)%A085099(n+1)`
-/

namespace A316568.P6149112395315118894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A085099 (n + 1))

end

end A316568.P6149112395315118894

/-!
# A316569: a(n) = Jacobi (or Kronecker) symbol (n, 15).

The programs for A316569, the canonical program `A316569.P17506517709868393694` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316569 has offset 0).

The definition of A316569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316569.P17506517709868393694

`ogf((x-x^3+2x^4-x^5+x^7)/(1-x+x^3-x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A316569

/-- `ogf((x-x^3+2x^4-x^5+x^7)/(1-x+x^3-x^4+x^5-x^7+x^8))` -/
def P17506517709868393694.Spec : Prop :=
  ∀ n, P17506517709868393694.a n = A316569 n

theorem P17506517709868393694.correct : P17506517709868393694.Spec := by
  intro n
  simp only [A316569]

end A316569

/-!
# A316570: Multiplicative digital root of sigma(n).

The programs for A316570, there is no canonical definition to state claims against.
-/

/-! ## A316570.P6692850310318742058

`A031347(A000203(n+1))`
-/

namespace A316570.P6692850310318742058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A000203 (n + 1)).toNat

end

end A316570.P6692850310318742058

/-! ## A316570.P16112664289709671666

`A031347(A277216(n+1))`
-/

namespace A316570.P16112664289709671666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A277216 (n + 1)).toNat

end

end A316570.P16112664289709671666

/-! ## A316570.P5437066600843323447

`A031347(∑{d}[n+1, #])`
-/

namespace A316570.P5437066600843323447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A316570.P5437066600843323447

/-! ## A316570.P8910631520125587314

`A031347(Δ[A160664(n)])`
-/

namespace A316570.P8910631520125587314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (f1 (n + 1) - f1 n).toNat

end

end A316570.P8910631520125587314

/-! ## A316570.P13825321934813912941

`A031347(A088580(n+1)-1)`
-/

namespace A316570.P13825321934813912941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A088580 (n + 1) - 1).toNat

end

end A316570.P13825321934813912941

/-! ## A316570.P17020197037081142335

`A031347(A001065(n+1)+1+n)`
-/

namespace A316570.P17020197037081142335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A316570.P17020197037081142335

/-! ## A316570.P16181664707032090245

`A031347(A160664(n+1)-A160664(n))`
-/

namespace A316570.P16181664707032090245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A160664 (n + 1) - A160664 n).toNat

end

end A316570.P16181664707032090245

/-!
# A316571: a(1) = 1; for n > 1: a(n) = smallest number such that (Sum_{k=1..n} a(k)) is divisible by n - 1.

The programs for A316571, the canonical program `A316571.P10134120899406305458` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316571 has offset 1).

The definition of A316571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316571.P10134120899406305458

`ogf((1+2x^3-x^4)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A316571

/-- `ogf((1+2x^3-x^4)/(1-2x+x^2))` -/
def P10134120899406305458.Spec : Prop :=
  ∀ n, P10134120899406305458.a n = A316571 (n + 1)

theorem P10134120899406305458.correct : P10134120899406305458.Spec := by
  intro n
  simp only [A316571, Nat.add_sub_cancel]

end A316571

/-!
# A316572: Number of n X n 0..1 arrays with every element unequal to 0, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316572, there is no canonical definition to state claims against.
-/

/-! ## A316572.P15264810761801933307

`A316576(∑[4*n]+1)`
-/

namespace A316572.P15264810761801933307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316572.P15264810761801933307

/-! ## A316572.P10385602025643807890

`record[A316576(Δ[A235355(n)])]`
-/

namespace A316572.P10385602025643807890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316572.P10385602025643807890

/-! ## A316572.P14141001901288958126

`record[A316576(A272267(n+1))]`
-/

namespace A316572.P14141001901288958126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316572.P14141001901288958126

/-! ## A316572.P7282214948758404631

`record[A316576(A330613(n+1))]`
-/

namespace A316572.P7282214948758404631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316572.P7282214948758404631

/-! ## A316572.P15311572676536715059

`A316576(A001844(n))+char[12]`
-/

namespace A316572.P15311572676536715059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316572.P15311572676536715059

/-!
# A316573: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316573, there is no canonical definition to state claims against.
-/

/-! ## A316573.P987361137435281526

`A316576(A167499(n+3))`
-/

namespace A316573.P987361137435281526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (A167499 (n + 3)).toNat

end

end A316573.P987361137435281526

/-! ## A316573.P3390592450081405234

`A316576(A155212(n)+13)`
-/

namespace A316573.P3390592450081405234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (A155212 n + 13).toNat

end

end A316573.P3390592450081405234

/-! ## A316573.P7346137360315252111

`A316576(A056000(n)+15)`
-/

namespace A316573.P7346137360315252111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (A056000 n + 15).toNat

end

end A316573.P7346137360315252111

/-! ## A316573.P10278916092631261309

`A316576(eq[7, A066657(n)])`
-/

namespace A316573.P10278916092631261309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316573.P10278916092631261309

/-! ## A316573.P17533200601395443567

`A316576(∑[A020705(n)]+11)`
-/

namespace A316573.P17533200601395443567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A316573.P17533200601395443567

/-!
# A316574: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316574, there is no canonical definition to state claims against.
-/

/-! ## A316574.P9477670250834244237

`A316576(∑[n+5]+16)`
-/

namespace A316574.P9477670250834244237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A316574.P9477670250834244237

/-! ## A316574.P7932272376592351196

`A316576(A046691(n+3)+10)+char[22]`
-/

namespace A316574.P7932272376592351196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (A046691 (n + 3) + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316574.P7932272376592351196

/-! ## A316574.P9375171259131575773

`A007318(C(2, n))*A316576(A046691(n+3)+10)`
-/

namespace A316574.P9375171259131575773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A316576 (A046691 (n + 3) + 10).toNat

end

end A316574.P9375171259131575773

/-! ## A316574.P364699402539971795

`A007318(A001222(n+1))*A316576(A046691(n+3)+10)`
-/

namespace A316574.P364699402539971795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001222 (n + 1)).toNat * A316576 (A046691 (n + 3) + 10).toNat

end

end A316574.P364699402539971795

/-! ## A316574.P10587805536020440923

`A014963(Δ[n^4])*A316576(A046691(n+3)+10)`
-/

namespace A316574.P10587805536020440923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A316576 (A046691 (n + 3) + 10).toNat

end

end A316574.P10587805536020440923

/-!
# A316575: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316575, there is no canonical definition to state claims against.
-/

/-! ## A316575.P17155034065153182135

`A316576(A167487(n+5))`
-/

namespace A316575.P17155034065153182135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (A167487 (n + 5)).toNat

end

end A316575.P17155034065153182135

/-! ## A316575.P6081806525927320351

`A316576(A056119(n)+28)`
-/

namespace A316575.P6081806525927320351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (A056119 n + 28).toNat

end

end A316575.P6081806525927320351

/-! ## A316575.P14386105101351220306

`A316576(eq[11, A066657(n)])`
-/

namespace A316575.P14386105101351220306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316575.P14386105101351220306

/-! ## A316575.P10159033559188811098

`A316576(A166136(n+5)+1)`
-/

namespace A316575.P10159033559188811098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (A166136 (n + 5) + 1).toNat

end

end A316575.P10159033559188811098

/-! ## A316575.P6813756060649563061

`A316576(A167499(n+5)+2)`
-/

namespace A316575.P6813756060649563061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (A167499 (n + 5) + 2).toNat

end

end A316575.P6813756060649563061

/-!
# A316577: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316577, there is no canonical definition to state claims against.
-/

/-! ## A316577.P11582482428617615316

`A316583(∑[4*n]+1)`
-/

namespace A316577.P11582482428617615316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316577.P11582482428617615316

/-! ## A316577.P12923572507751890128

`record[A316583(Δ[A235355(n)])]`
-/

namespace A316577.P12923572507751890128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316577.P12923572507751890128

/-! ## A316577.P9179107621772616898

`and(-1, A316583(A001844(n)))`
-/

namespace A316577.P9179107621772616898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316583 (A001844 n).toNat)

end

end A316577.P9179107621772616898

/-! ## A316577.P9838097922140534655

`record[A316583(A330613(n+1))]`
-/

namespace A316577.P9838097922140534655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316577.P9838097922140534655

/-! ## A316577.P6927564207917609183

`record[A003982(n)*A316583(n+1)]`
-/

namespace A316577.P6927564207917609183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316577.P6927564207917609183

/-!
# A316578: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316578, there is no canonical definition to state claims against.
-/

/-! ## A316578.P13110252044038834781

`A316583(∑[n+2]+4)`
-/

namespace A316578.P13110252044038834781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316578.P13110252044038834781

/-! ## A316578.P15097898956249462066

`A316583(A167614(n+1))+A011731(n)`
-/

namespace A316578.P15097898956249462066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A167614 (n + 1)).toNat + A011731 n

end

end A316578.P15097898956249462066

/-! ## A316578.P925816335561060405

`A316583(A167614(n+1))%A017466(n)`
-/

namespace A316578.P925816335561060405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316583 (A167614 (n + 1)).toNat) (A017466 n)

end

end A316578.P925816335561060405

/-! ## A316578.P8437937477482330563

`or(A299905(n), A316583(A167614(n+1)))`
-/

namespace A316578.P8437937477482330563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A299905 n) (A316583 (A167614 (n + 1)).toNat)

end

end A316578.P8437937477482330563

/-! ## A316578.P1077453481036190019

`or(A000007(n), A316583(A046691(n)+7))`
-/

namespace A316578.P1077453481036190019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A316583 (A046691 n + 7).toNat)

end

end A316578.P1077453481036190019

/-!
# A316579: Number of n X 4 0..1 arrays with every element unequal to 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316579, there is no canonical definition to state claims against.
-/

/-! ## A316579.P17769527257152906007

`A316583(A374004(n+1))`
-/

namespace A316579.P17769527257152906007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A374004 (n + 1)).toNat

end

end A316579.P17769527257152906007

/-! ## A316579.P10870223962355680916

`A316583(A141214(n)+7)`
-/

namespace A316579.P10870223962355680916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A141214 n + 7).toNat

end

end A316579.P10870223962355680916

/-! ## A316579.P15887158024554996742

`A316583(A052905(n)+9)`
-/

namespace A316579.P15887158024554996742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A052905 n + 9).toNat

end

end A316579.P15887158024554996742

/-! ## A316579.P5539115516032241554

`A316583(A055999(n)+10)`
-/

namespace A316579.P5539115516032241554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A055999 n + 10).toNat

end

end A316579.P5539115516032241554

/-! ## A316579.P4113768009338295959

`A316583(A167614(n+2)+1)`
-/

namespace A316579.P4113768009338295959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A167614 (n + 2) + 1).toNat

end

end A316579.P4113768009338295959

/-!
# A316580: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316580, there is no canonical definition to state claims against.
-/

/-! ## A316580.P10432460720303224901

`A316583(A374005(n+1))`
-/

namespace A316580.P10432460720303224901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A374005 (n + 1)).toNat

end

end A316580.P10432460720303224901

/-! ## A316580.P7949896303491411736

`A316583(A167499(n+3))`
-/

namespace A316580.P7949896303491411736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A167499 (n + 3)).toNat

end

end A316580.P7949896303491411736

/-! ## A316580.P2060249326282594079

`A316583(A155212(n)+13)`
-/

namespace A316580.P2060249326282594079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A155212 n + 13).toNat

end

end A316580.P2060249326282594079

/-! ## A316580.P16337571457404704518

`A316583(A056000(n)+15)`
-/

namespace A316580.P16337571457404704518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A056000 n + 15).toNat

end

end A316580.P16337571457404704518

/-! ## A316580.P6817938716249330024

`A316583(eq[6, A131818(n+1)])`
-/

namespace A316580.P6817938716249330024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316580.P6817938716249330024

/-!
# A316581: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316581, there is no canonical definition to state claims against.
-/

/-! ## A316581.P16489858375626449110

`A316583(∑[n+5]+16)`
-/

namespace A316581.P16489858375626449110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A316581.P16489858375626449110

/-! ## A316581.P8036043020764217140

`A316583(A166136(n+4))+A184955(n)`
-/

namespace A316581.P8036043020764217140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A166136 (n + 4)).toNat + A184955 n

end

end A316581.P8036043020764217140

/-! ## A316581.P7522231953340569136

`or(A000007(n), A316583(A166136(n+4)))`
-/

namespace A316581.P7522231953340569136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A316583 (A166136 (n + 4)).toNat)

end

end A316581.P7522231953340569136

/-! ## A316581.P5714014644757107611

`or(A016389(n), A316583(A166136(n+4)))`
-/

namespace A316581.P5714014644757107611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 n) (A316583 (A166136 (n + 4)).toNat)

end

end A316581.P5714014644757107611

/-! ## A316581.P967956652715816050

`A316583(A166136(n+4))+A000007(n+2)`
-/

namespace A316581.P967956652715816050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A166136 (n + 4)).toNat + A000007 (n + 2)

end

end A316581.P967956652715816050

/-!
# A316582: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316582, there is no canonical definition to state claims against.
-/

/-! ## A316582.P6382943666858232287

`A316583(A374008(n+1))`
-/

namespace A316582.P6382943666858232287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A374008 (n + 1)).toNat

end

end A316582.P6382943666858232287

/-! ## A316582.P5018852671770360126

`A316583(A112355(n+4)+7)`
-/

namespace A316582.P5018852671770360126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A112355 (n + 4) + 7).toNat

end

end A316582.P5018852671770360126

/-! ## A316582.P4156606995245914355

`A316583(eq[8, A131818(n+1)])`
-/

namespace A316582.P4156606995245914355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316582.P4156606995245914355

/-! ## A316582.P14633789025918388849

`A316583(A055999(n+4))`
-/

namespace A316582.P14633789025918388849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (A055999 (n + 4)).toNat

end

end A316582.P14633789025918388849

/-! ## A316582.P18173882419318552902

`A316583(eq[4, A219347(n)])`
-/

namespace A316582.P18173882419318552902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316582.P18173882419318552902

/-!
# A316583: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316583, there is no canonical definition to state claims against.
-/

/-! ## A316583.P15963866669600935333

`A304901(n+1)+A037824(A022173(n))`
-/

namespace A316583.P15963866669600935333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (n + 1) + A037824 (A022173 n).toNat

end

end A316583.P15963866669600935333

/-! ## A316583.P8655507905728583309

`A304901(n+1)+A038144(A303864(n))`
-/

namespace A316583.P8655507905728583309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (n + 1) + A038144 (A303864 n).toNat

end

end A316583.P8655507905728583309

/-! ## A316583.P14974713609452625661

`A327146(A135302(n))+A303896(n+1)`
-/

namespace A316583.P14974713609452625661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327146 (A135302 n).toNat + A303896 (n + 1)

end

end A316583.P14974713609452625661

/-! ## A316583.P7841812236274999867

`A327146(A331569(n))+A304901(n+1)`
-/

namespace A316583.P7841812236274999867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327146 (A331569 n).toNat + A304901 (n + 1)

end

end A316583.P7841812236274999867

/-! ## A316583.P13297661062943244968

`A304901(n+1)-A016389(A022166(n))`
-/

namespace A316583.P13297661062943244968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (n + 1) - A016389 (A022166 n).toNat

end

end A316583.P13297661062943244968

/-!
# A316586: Array read by antidiagonals: T(n,k) is the number of elements x in SL(2,Z_n) with x^k == I mod n where I is the identity matrix.

The programs for A316586, there is no canonical definition to state claims against.
-/

/-! ## A316586.P9513107104571075014

`A054992(A262705(n)+1)`
-/

namespace A316586.P9513107104571075014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (A262705 n + 1).toNat

end

end A316586.P9513107104571075014

/-! ## A316586.P4762138189061202160

`A054992(or(1, A262705(n)))`
-/

namespace A316586.P4762138189061202160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (Int.lor 1 (A262705 n)).toNat

end

end A316586.P4762138189061202160

/-! ## A316586.P18404101389472042002

`gcd(A001622(n), A118759(A141724(n)))`
-/

namespace A316586.P18404101389472042002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001622 (n + 1)) (A118759 (A141724 n).toNat)

end

end A316586.P18404101389472042002

/-! ## A316586.P3960053171630443264

`A000030(A000292(A152924(n)))`
-/

namespace A316586.P3960053171630443264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000292 (A152924 n).toNat).toNat

end

end A316586.P3960053171630443264

/-! ## A316586.P10460897557279597215

`A193592(n)^A046951(A050168(n))`
-/

namespace A316586.P10460897557279597215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193592 n : ℚ) ^ (A046951 (A050168 n).toNat : ℤ)

end

end A316586.P10460897557279597215

/-!
# A316587: a(n) = [x^(2n)y^n] Product_{i>=1} 1/((1-x^(2i-1)y^i)(1-x^(2i-1)y^(i-1))(1-x^(2i)y^i)^2).

The programs for A316587, there is no canonical definition to state claims against.
-/

/-! ## A316587.P6746074153127631175

`A162621(A112872(n+1))`
-/

namespace A316587.P6746074153127631175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162621 (A112872 (n + 1)).toNat

end

end A316587.P6746074153127631175

/-! ## A316587.P9297309262121705692

`A277103(4*A228050(n+1))`
-/

namespace A316587.P9297309262121705692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277103 (4 * A228050 (n + 1)).toNat

end

end A316587.P9297309262121705692

/-! ## A316587.P2860591938292580946

`A277103(2*A085144(4^n))`
-/

namespace A316587.P2860591938292580946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277103 (2 * A085144 (4 ^ n)).toNat

end

end A316587.P2860591938292580946

/-!
# A316588: Squares visited by knight moves on a diagonally numbered Q1 board and moving to the lowest available unvisited square at each step. Starting square is labeled 1.

The programs for A316588, there is no canonical definition to state claims against.
-/

/-! ## A316588.P5966340564636294761

`A316334(n)+1`
-/

namespace A316588.P5966340564636294761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316334 n + 1

end

end A316588.P5966340564636294761

/-!
# A316591: a(n) equals the coefficient of x^n in Sum_{m>=0} (x^m + 1 + 1/x^m)^m for n >= 1.

The programs for A316591, there is no canonical definition to state claims against.
-/

/-! ## A316591.P14622711870225341242

`A333106(n)+A227344(A127348(n+1))`
-/

namespace A316591.P14622711870225341242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333106 n + A227344 (A127348 (n + 1)).toNat

end

end A316591.P14622711870225341242

/-! ## A316591.P18311290436087203624

`A333106(n)+A099362(A000079(n))`
-/

namespace A316591.P18311290436087203624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333106 n + A099362 (A000079 n).toNat

end

end A316591.P18311290436087203624

/-! ## A316591.P16456226342136227103

`A284256(A000369(3*(n+1)))+A005717(n+1)`
-/

namespace A316591.P16456226342136227103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A000369 (3 * (n + 1))).toNat + A005717 (n + 1)

end

end A316591.P16456226342136227103

/-!
# A316592: a(n) equals the coefficient of x^n in Sum_{m>=0} (x^m + 2 + 1/x^m)^m for n >= 1.

The programs for A316592, there is no canonical definition to state claims against.
-/

/-! ## A316592.P12389305228603763051

`A304638(4*(n+1))`
-/

namespace A316592.P12389305228603763051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304638 (4 * (n + 1))

end

end A316592.P12389305228603763051

/-! ## A316592.P2576499064783208572

`record[A304638(A004277(n))]`
-/

namespace A316592.P2576499064783208572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304638 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316592.P2576499064783208572

/-! ## A316592.P12144030070367841237

`record[A304638(A103517(n))]`
-/

namespace A316592.P12144030070367841237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304638 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316592.P12144030070367841237

/-! ## A316592.P13654476665388173797

`record[A304638(A348717(n+1))]`
-/

namespace A316592.P13654476665388173797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304638 (A348717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316592.P13654476665388173797

/-! ## A316592.P3496550647506139008

`record[A304638(n+1)^A062157(n)]`
-/

namespace A316592.P3496550647506139008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304638 (n + 1) : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316592.P3496550647506139008

/-!
# A316593: a(n) equals the coefficient of x^n in Sum_{m>=0} (x^m + 3 + 1/x^m)^m for n >= 1.

The programs for A316593, there is no canonical definition to state claims against.
-/

/-! ## A316593.P1754198500015275692

`A004396(Δ[A219673(n)+A219672(n)])-n`
-/

namespace A316593.P1754198500015275692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219673 n + A219672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (n + 1) - f1 n).toNat - (n : ℤ)

end

end A316593.P1754198500015275692

/-! ## A316593.P418020613249957647

`A247149(A185043(3*n+2))+A026376(n+1)`
-/

namespace A316593.P418020613249957647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 (A185043 (3 * n + 2)).toNat + A026376 (n + 1)

end

end A316593.P418020613249957647

/-!
# A316594: a(n) equals the coefficient of x^n in Sum_{m>=0} (x^m + 4 + 1/x^m)^m for n >= 1.

The programs for A316594, there is no canonical definition to state claims against.
-/

/-! ## A316594.P4195008680334013311

`A028310(A274092(n)+∑[A161728(n)])`
-/

namespace A316594.P4195008680334013311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A274092 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A316594.P4195008680334013311

/-!
# A316595: a(n) equals the coefficient of x^n in Sum_{m>=0} (x^m + 5 + 1/x^m)^m for n >= 1.

The programs for A316595, there is no canonical definition to state claims against.
-/

/-! ## A316595.P9587540503058690987

`A130481(A153596(n+1))`
-/

namespace A316595.P9587540503058690987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (A153596 (n + 1)).toNat

end

end A316595.P9587540503058690987

/-!
# A316596: a(n) equals the coefficient of x^(2*n-1) in Sum_{m>=0} (x^m + 1/x^m)^m for n >= 1.

The programs for A316596, there is no canonical definition to state claims against.
-/

/-! ## A316596.P4886518887334796354

`A304638(Δ[n²])`
-/

namespace A316596.P4886518887334796354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304638 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A316596.P4886518887334796354

/-! ## A316596.P5159041059795507277

`record[A304638(n+1)]`
-/

namespace A316596.P5159041059795507277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316596.P5159041059795507277

/-! ## A316596.P16565940405372973316

`or(char[1], A304638(2*n+1))`
-/

namespace A316596.P16565940405372973316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304638 (2 * n + 1))

end

end A316596.P16565940405372973316

/-! ## A316596.P6540212597346490655

`A304638(n+1+n)/A131364(n)!`
-/

namespace A316596.P6540212597346490655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304638 (n + 1 + n) : ℚ) / (Nat.factorial (A131364 n).toNat : ℚ)

end

end A316596.P6540212597346490655

/-! ## A316596.P14058396552012660436

`A304638(2*n+1)+A304615(n)%13`
-/

namespace A316596.P14058396552012660436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304638 (2 * n + 1) + Int.tmod (A304615 n) 13

end

end A316596.P14058396552012660436

/-! ## A316596.P1233532770546452381

`A304638(n+1+n)/A007318(C(2, n))`
-/

namespace A316596.P1233532770546452381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304638 (n + 1 + n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A316596.P1233532770546452381

/-! ## A316596.P15302961299424234590

`A304638(n+1+n)+char[A001505(n+1)]`
-/

namespace A316596.P15302961299424234590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001505 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304638 (n + 1 + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A316596.P15302961299424234590

/-! ## A316596.P10555485733662308881

`A000034(2*n)*A304638(A005408(n))`
-/

namespace A316596.P10555485733662308881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A304638 (A005408 n).toNat

end

end A316596.P10555485733662308881

/-! ## A316596.P1269524575831600185

`A304638(2*n+1)+A077966(A016813(n))`
-/

namespace A316596.P1269524575831600185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304638 (2 * n + 1) + A077966 (A016813 n).toNat

end

end A316596.P1269524575831600185

/-! ## A316596.P14137441470709547938

`gcd(A002262(2*n)*A304638(2*n+1), A304638(2*n+1))`
-/

namespace A316596.P14137441470709547938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (2 * n) * A304638 (2 * n + 1)) (A304638 (2 * n + 1))

end

end A316596.P14137441470709547938

/-! ## A316596.P6956502933493347840

`A304638(n+1+n)/A007318(∑[n])`
-/

namespace A316596.P6956502933493347840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304638 (n + 1 + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A316596.P6956502933493347840

/-! ## A316596.P7568492791945394078

`gcd(A002262(∑[n]), A304638(n+1+n))`
-/

namespace A316596.P7568492791945394078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (∑ j ∈ Finset.range (n + 1), f1 j)) (A304638 (n + 1 + n))

end

end A316596.P7568492791945394078

/-!
# A316597: Heinz numbers of integer partitions that are not totally nondecreasing.

The programs for A316597, there is no canonical definition to state claims against.
-/

/-! ## A316597.P14748810890701464339

`∪[A039498(n+1), A112769(n+1)]`
-/

namespace A316597.P14748810890701464339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316597.P14748810890701464339

/-! ## A316597.P7347044215778697599

`∪[A054729(n+1), A112769(n+1)]`
-/

namespace A316597.P7347044215778697599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316597.P7347044215778697599

/-! ## A316597.P18134967549409107171

`∪[A063829(n+1), A112769(n+1)]`
-/

namespace A316597.P18134967549409107171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316597.P18134967549409107171

/-! ## A316597.P9695292345266464488

`∪[A085987(n+1), A112769(n+1)]`
-/

namespace A316597.P9695292345266464488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316597.P9695292345266464488

/-! ## A316597.P16474925271710916361

`∪[A100766(n+1), A112769(n+1)]`
-/

namespace A316597.P16474925271710916361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316597.P16474925271710916361

/-! ## A316597.P8662765582942917495

`∪[A112769(n+1), A135199(n+1)]`
-/

namespace A316597.P8662765582942917495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316597.P8662765582942917495

/-! ## A316597.P18241881537089658119

`∪[A112769(n+1), A141326(n+1)]`
-/

namespace A316597.P18241881537089658119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316597.P18241881537089658119

/-! ## A316597.P3731664587731306297

`∪[A112769(n+1), A154733(n+1)]`
-/

namespace A316597.P3731664587731306297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316597.P3731664587731306297

/-! ## A316597.P2768423826405119632

`∪[A097320(n+1), A182855(n+1)]`
-/

namespace A316597.P2768423826405119632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316597.P2768423826405119632

/-!
# A316598: a(n) is the number of rooted quadrangulations of the projective plane with n vertices.

The programs for A316598, there is no canonical definition to state claims against.
-/

/-! ## A316598.P15570934601652209152

`A005159(n+1)+A007137(n+1)+A007137(n+1)`
-/

namespace A316598.P15570934601652209152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005159 (n + 1) + (A007137 (n + 1) + A007137 (n + 1))

end

end A316598.P15570934601652209152

