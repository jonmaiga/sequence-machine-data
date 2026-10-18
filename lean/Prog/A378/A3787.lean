import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A378702: Primes p such that 256*p^8 + 1 is prime.

The programs for A378702, there is no canonical definition to state claims against.
-/

/-! ## A378702.P2453629887425123436

`p?[n*A194003(2*n)]`
-/

namespace A378702.P2453629887425123436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A194003 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A378702.P2453629887425123436

/-! ## A378702.P7282623710999543957

`∩[A000040(n+1), A110654(A006314(n+3))]`
-/

namespace A378702.P7282623710999543957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A006314 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378702.P7282623710999543957

/-!
# A378703: Primes p such that 2^(nextprime(p) - p) + p is prime.

The programs for A378703, there is no canonical definition to state claims against.
-/

/-! ## A378703.P15225304554844593860

`∩[A005098(n+1), A130057(n+1)]`
-/

namespace A378703.P15225304554844593860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378703.P15225304554844593860

/-! ## A378703.P4532369764688999012

`∩[A005098(n+1), A133261(n+1)]`
-/

namespace A378703.P4532369764688999012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378703.P4532369764688999012

/-! ## A378703.P5816004786760341658

`∩[A130057(n+1), A364868(n+1)]`
-/

namespace A378703.P5816004786760341658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378703.P5816004786760341658

/-! ## A378703.P17570735039775882739

`∩[A133261(n+1), A364868(n+1)]`
-/

namespace A378703.P17570735039775882739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378703.P17570735039775882739

/-!
# A378705: Inverse permutation to A378200.

The programs for A378705, the canonical program `A378705.P16790697538674376241` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378705 has offset 1).

The definition of A378705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378705.P16790697538674376241

`A381664(A056023(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A378705

/-- `A381664(A056023(n+1))` -/
def P16790697538674376241.Spec : Prop :=
  ∀ n, P16790697538674376241.a n = A378705 (n + 1)

theorem P16790697538674376241.correct : P16790697538674376241.Spec := by
  intro n
  simp only [A378705, Nat.add_sub_cancel]

end A378705

/-! ## A378705.P15501687585667856722

`A056023(A381663(n+1))`
-/

namespace A378705.P15501687585667856722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A381663 (n + 1)).toNat

end

end A378705.P15501687585667856722

namespace A378705

/-- `A056023(A381663(n+1))` -/
def P15501687585667856722.Spec : Prop :=
  ∀ n, P15501687585667856722.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P1971722751737067038

`A378762(A378684(n+1))`
-/

namespace A378705.P1971722751737067038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378762 (A378684 (n + 1)).toNat

end

end A378705.P1971722751737067038

namespace A378705

/-- `A378762(A378684(n+1))` -/
def P1971722751737067038.Spec : Prop :=
  ∀ n, P1971722751737067038.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P12185224834755390617

`A379342(A378200(n+1))`
-/

namespace A378705.P12185224834755390617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A378200 (n + 1)).toNat

end

end A378705.P12185224834755390617

namespace A378705

/-- `A379342(A378200(n+1))` -/
def P12185224834755390617.Spec : Prop :=
  ∀ n, P12185224834755390617.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P1453427890783716035

`A383589(A379343(n+1))`
-/

namespace A378705.P1453427890783716035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A379343 (n + 1)).toNat

end

end A378705.P1453427890783716035

namespace A378705

/-- `A383589(A379343(n+1))` -/
def P1453427890783716035.Spec : Prop :=
  ∀ n, P1453427890783716035.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P13041107751766074930

`A379343(A383723(n+1))`
-/

namespace A378705.P13041107751766074930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A383723 (n + 1)).toNat

end

end A378705.P13041107751766074930

namespace A378705

/-- `A379343(A383723(n+1))` -/
def P13041107751766074930.Spec : Prop :=
  ∀ n, P13041107751766074930.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P13270067188088045314

`A381663(A383589(n+1))`
-/

namespace A378705.P13270067188088045314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381663 (A383589 (n + 1)).toNat

end

end A378705.P13270067188088045314

namespace A378705

/-- `A381663(A383589(n+1))` -/
def P13270067188088045314.Spec : Prop :=
  ∀ n, P13270067188088045314.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P16985622687281112533

`A383723(A381664(n+1))`
-/

namespace A378705.P16985622687281112533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A381664 (n + 1)).toNat

end

end A378705.P16985622687281112533

namespace A378705

/-- `A383723(A381664(n+1))` -/
def P16985622687281112533.Spec : Prop :=
  ∀ n, P16985622687281112533.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P14151458692231224667

`A056023(A378684(A381662(n+1)))`
-/

namespace A378705.P14151458692231224667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A378684 (A381662 (n + 1)).toNat).toNat

end

end A378705.P14151458692231224667

namespace A378705

/-- `A056023(A378684(A381662(n+1)))` -/
def P14151458692231224667.Spec : Prop :=
  ∀ n, P14151458692231224667.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P17095880090822199669

`A380200(A056023(A380200(n+1)))`
-/

namespace A378705.P17095880090822199669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A056023 (A380200 (n + 1)).toNat).toNat

end

end A378705.P17095880090822199669

namespace A378705

/-- `A380200(A056023(A380200(n+1)))` -/
def P17095880090822199669.Spec : Prop :=
  ∀ n, P17095880090822199669.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P4689142848250223597

`A380245(A056023(A380815(n+1)))`
-/

namespace A378705.P4689142848250223597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A056023 (A380815 (n + 1)).toNat).toNat

end

end A378705.P4689142848250223597

namespace A378705

/-- `A380245(A056023(A380815(n+1)))` -/
def P4689142848250223597.Spec : Prop :=
  ∀ n, P4689142848250223597.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P16729014234837997839

`A379343(A378762(A376214(n+1)))`
-/

namespace A378705.P16729014234837997839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A378762 (A376214 (n + 1)).toNat).toNat

end

end A378705.P16729014234837997839

namespace A378705

/-- `A379343(A378762(A376214(n+1)))` -/
def P16729014234837997839.Spec : Prop :=
  ∀ n, P16729014234837997839.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P2024652206963678028

`A378200(A378200(A378762(n+1)))`
-/

namespace A378705.P2024652206963678028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A378200 (A378762 (n + 1)).toNat).toNat

end

end A378705.P2024652206963678028

namespace A378705

/-- `A378200(A378200(A378762(n+1)))` -/
def P2024652206963678028.Spec : Prop :=
  ∀ n, P2024652206963678028.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P4533919232079396466

`A379342(A378762(A379342(n+1)))`
-/

namespace A378705.P4533919232079396466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A378762 (A379342 (n + 1)).toNat).toNat

end

end A378705.P4533919232079396466

namespace A378705

/-- `A379342(A378762(A379342(n+1)))` -/
def P4533919232079396466.Spec : Prop :=
  ∀ n, P4533919232079396466.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P8506264062154621195

`A380200(A378200(A380817(n+1)))`
-/

namespace A378705.P8506264062154621195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A378200 (A380817 (n + 1)).toNat).toNat

end

end A378705.P8506264062154621195

namespace A378705

/-- `A380200(A378200(A380817(n+1)))` -/
def P8506264062154621195.Spec : Prop :=
  ∀ n, P8506264062154621195.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P16619684433351570659

`A378200(A380817(A380245(n+1)))`
-/

namespace A378705.P16619684433351570659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A380817 (A380245 (n + 1)).toNat).toNat

end

end A378705.P16619684433351570659

namespace A378705

/-- `A378200(A380817(A380245(n+1)))` -/
def P16619684433351570659.Spec : Prop :=
  ∀ n, P16619684433351570659.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P16561681879503837184

`A381968(A378200(A381968(n+1)))`
-/

namespace A378705.P16561681879503837184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A378200 (A381968 (n + 1)).toNat).toNat

end

end A378705.P16561681879503837184

namespace A378705

/-- `A381968(A378200(A381968(n+1)))` -/
def P16561681879503837184.Spec : Prop :=
  ∀ n, P16561681879503837184.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P4330618635207354790

`A382679(A378200(A382499(n+1)))`
-/

namespace A378705.P4330618635207354790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A378200 (A382499 (n + 1)).toNat).toNat

end

end A378705.P4330618635207354790

namespace A378705

/-- `A382679(A378200(A382499(n+1)))` -/
def P4330618635207354790.Spec : Prop :=
  ∀ n, P4330618635207354790.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P14500801283743105055

`A382680(A378200(A382680(n+1)))`
-/

namespace A378705.P14500801283743105055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A378200 (A382680 (n + 1)).toNat).toNat

end

end A378705.P14500801283743105055

namespace A378705

/-- `A382680(A378200(A382680(n+1)))` -/
def P14500801283743105055.Spec : Prop :=
  ∀ n, P14500801283743105055.a n = A378705 (n + 1)

end A378705

/-! ## A378705.P8221039769049430239

`A378684(A381968(A383590(n+1)))`
-/

namespace A378705.P8221039769049430239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A381968 (A383590 (n + 1)).toNat).toNat

end

end A378705.P8221039769049430239

namespace A378705

/-- `A378684(A381968(A383590(n+1)))` -/
def P8221039769049430239.Spec : Prop :=
  ∀ n, P8221039769049430239.a n = A378705 (n + 1)

end A378705

/-!
# A378707: Array read by ascending antidiagonals: A(n,k) is the total number of inner points of n-Fibonacci polyominoes with k columns, where k > 0.

The programs for A378707, there is no canonical definition to state claims against.
-/

/-! ## A378707.P4223763444423958757

`A351465(A063007(n))`
-/

namespace A378707.P4223763444423958757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351465 (A063007 n).toNat

end

end A378707.P4223763444423958757

/-! ## A378707.P18408594144174878214

`A179076(A303987(n))`
-/

namespace A378707.P18408594144174878214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179076 (A303987 n).toNat

end

end A378707.P18408594144174878214

/-! ## A378707.P7030493754800837506

`A339187(A209695(n+1))`
-/

namespace A378707.P7030493754800837506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339187 (A209695 (n + 1)).toNat

end

end A378707.P7030493754800837506

/-! ## A378707.P3066644283362039155

`A325678(A271034(n+1))`
-/

namespace A378707.P3066644283362039155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A271034 (n + 1)).toNat

end

end A378707.P3066644283362039155

/-! ## A378707.P6760544040313659331

`A013609(n)-A005361(A080937(n))`
-/

namespace A378707.P6760544040313659331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n - A005361 (A080937 n).toNat

end

end A378707.P6760544040313659331

/-!
# A378708: Circumference of the n-Lucas cube graph.

The programs for A378708, there is no canonical definition to state claims against.
-/

/-! ## A378708.P15875558127672194141

`A199536(A288219(n))`
-/

namespace A378708.P15875558127672194141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199536 (A288219 n).toNat

end

end A378708.P15875558127672194141

/-! ## A378708.P18187080080790080981

`A314254(A000045(n+2))-1`
-/

namespace A378708.P18187080080790080981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314254 (A000045 (n + 2)).toNat - 1

end

end A378708.P18187080080790080981

/-! ## A378708.P1412322989488408508

`and(A000032(n+4)-1, A070051(2*n+3))`
-/

namespace A378708.P1412322989488408508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000032 (n + 4) - 1) (A070051 (2 * n + 3))

end

end A378708.P1412322989488408508

/-! ## A378708.P1712657510774704847

`A001610(n+3)-A287174(A379120(n+1))`
-/

namespace A378708.P1712657510774704847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 3) - A287174 (A379120 (n + 1)).toNat

end

end A378708.P1712657510774704847

/-! ## A378708.P7134817276433448126

`A000032(n+4)-A066099(A007528(n+1))`
-/

namespace A378708.P7134817276433448126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 4) - A066099 (A007528 (n + 1)).toNat

end

end A378708.P7134817276433448126

/-!
# A378709: Circumference of the n-Pell graph.

The programs for A378709, there is no canonical definition to state claims against.
-/

/-! ## A378709.P6101907734592412796

`ogf((4+4x+2x^3)/(1-2x-x^2))`
-/

namespace A378709.P6101907734592412796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, 0, 2] [1, -2, -1] n

end

end A378709.P6101907734592412796

/-!
# A378710: Positive numbers k such that -k is properly represented by the Pell Form x^2 - 15*y^2.

The programs for A378710, there is no canonical definition to state claims against.
-/

/-! ## A378710.P16999334928033138295

`∩[A062837(n+1), A237606(n+1)]`
-/

namespace A378710.P16999334928033138295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378710.P16999334928033138295

/-! ## A378710.P15783145544000695928

`∩[A237606(n+1), A383048(n+1)]`
-/

namespace A378710.P15783145544000695928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378710.P15783145544000695928

/-! ## A378710.P6568384233537738852

`∩[A237606(n+1), A383047(n+1)]`
-/

namespace A378710.P6568384233537738852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378710.P6568384233537738852

/-! ## A378710.P172473203254363801

`∩[A084349(n+1), A237606(n+1)]`
-/

namespace A378710.P172473203254363801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378710.P172473203254363801

/-! ## A378710.P9103462985566626424

`∩[A237606(n+1), A087642(n+3)]`
-/

namespace A378710.P9103462985566626424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087642 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378710.P9103462985566626424

/-!
# A378716: Triangle read by rows: T(n,k) is the number of k-Fibonacci polyominoes with an area of n, with k > 1.

The programs for A378716, there is no canonical definition to state claims against.
-/

/-! ## A378716.P10663204976509649231

`A384005(A176667(n))`
-/

namespace A378716.P10663204976509649231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384005 (A176667 n).toNat

end

end A378716.P10663204976509649231

/-! ## A378716.P18192585294721222676

`A230614(A080992(n+1))+A168120(n)`
-/

namespace A378716.P18192585294721222676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A080992 (n + 1)).toNat + A168120 n

end

end A378716.P18192585294721222676

/-! ## A378716.P14699562332231181814

`A325678(C(A238343(n), A339160(n+1)))`
-/

namespace A378716.P14699562332231181814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (Nat.choose (A238343 n).toNat (A339160 (n + 1)).toNat)

end

end A378716.P14699562332231181814

/-! ## A378716.P5965239299391877710

`A333224(C(A152175(n+2), A141021(n)))`
-/

namespace A378716.P5965239299391877710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (Nat.choose (A152175 (n + 2)).toNat (A141021 n).toNat)

end

end A378716.P5965239299391877710

/-! ## A378716.P5871039300389029103

`A386582(A156552(3*(n+1)))+A155077(n+1)`
-/

namespace A378716.P5871039300389029103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386582 (A156552 (3 * (n + 1))).toNat + A155077 (n + 1)

end

end A378716.P5871039300389029103

/-!
# A378718: a(n) is the smallest integer k such that [1,2,...,k] contains a set of n but no more disjoint consecutive subsequences, each having element sum k.

The programs for A378718, there is no canonical definition to state claims against.
-/

/-! ## A378718.P7145203621328455148

`A266531(A383401(n+1)+A001105(n))`
-/

namespace A378718.P7145203621328455148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266531 (A383401 (n + 1) + A001105 n).toNat

end

end A378718.P7145203621328455148

/-! ## A378718.P14499962927171153985

`A048691(A244342(n+1)*A321720(n))`
-/

namespace A378718.P14499962927171153985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A244342 (n + 1) * A321720 n).toNat

end

end A378718.P14499962927171153985

/-!
# A378720: a(n) is the numerator of the asymptotic density of numbers whose third smallest prime divisor is prime(n).

The programs for A378720, there is no canonical definition to state claims against.
-/

/-! ## A378720.P8883424553795925619

`A222986(5*a(n-1))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A378720.P8883424553795925619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  A222986 (5 * a (n - 1)).toNat

end

end A378720.P8883424553795925619

/-! ## A378720.P16770844390614744560

`A049027(a(n-1)+a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A378720.P16770844390614744560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A049027 (a (n - 1) + a (n - 2)).toNat

end

end A378720.P16770844390614744560

/-!
# A378721: a(n) is the denominator of the asymptotic density of numbers whose third smallest prime divisor is prime(n).

The programs for A378721, there is no canonical definition to state claims against.
-/

/-! ## A378721.P15244171540674842942

`A328571(A233901(n+1)%A206432(2*n+1))`
-/

namespace A378721.P15244171540674842942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (Int.tmod (A233901 (n + 1)) (A206432 (2 * n + 1))).toNat

end

end A378721.P15244171540674842942

/-!
# A378723: Triangle read by rows: row n gives denominators of n distinct unit fractions (or Egyptian fractions) summing to 1, where denominators are listed in increasing order and the denominators from largest to smallest are as small as possible.

The programs for A378723, there is no canonical definition to state claims against.
-/

/-! ## A378723.P5905155038425070859

`A216993(n+1)+A185246(A152980(n))`
-/

namespace A378723.P5905155038425070859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216993 (n + 1) + A185246 (A152980 n).toNat

end

end A378723.P5905155038425070859

/-!
# A378724: The number of root fires on a rooted undirected infinite ternary tree with a self-loop at the root, when the chip-firing process starts with 3n chips at the root.

The programs for A378724, the canonical program `A378724.P14155618765579295738` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378724 has offset 1).

The definition of A378724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378724.P14155618765579295738

`a(floor((n-1)/3))+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A378724

/-- `a(floor((n-1)/3))+n` -/
def P14155618765579295738.Spec : Prop :=
  ∀ n, (P14155618765579295738.a n : ℤ) = A378724 (n + 1)

theorem P14155618765579295738.correct : P14155618765579295738.Spec := by
  intro n
  simp only [A378724, Nat.add_sub_cancel]

end A378724

/-! ## A378724.P10961550511759340338

`∑[A378725(n+1)]-A378725(n+1)`
-/

namespace A378724.P10961550511759340338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A378725 (n + 1)

end

end A378724.P10961550511759340338

namespace A378724

/-- `∑[A378725(n+1)]-A378725(n+1)` -/
def P10961550511759340338.Spec : Prop :=
  ∀ n, P10961550511759340338.a n = A378724 (n + 1)

end A378724

/-! ## A378724.P12215991578633233699

`∑[A378725(3*n+1)-1]`
-/

namespace A378724.P12215991578633233699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378725 (3 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378724.P12215991578633233699

namespace A378724

/-- `∑[A378725(3*n+1)-1]` -/
def P12215991578633233699.Spec : Prop :=
  ∀ n, P12215991578633233699.a n = A378724 (n + 1)

end A378724

/-! ## A378724.P13664935364940139445

`lt[A351783(n), A254390(A133299(2*n+5))]`
-/

namespace A378724.P13664935364940139445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A133299 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378724.P13664935364940139445

namespace A378724

/-- `lt[A351783(n), A254390(A133299(2*n+5))]` -/
def P13664935364940139445.Spec : Prop :=
  ∀ n, (P13664935364940139445.a n : ℤ) = A378724 (n + 1)

end A378724

/-! ## A378724.P12287882513451553890

`lt[A120636(n+1), A000040(A133299(2*n+5))]`
-/

namespace A378724.P12287882513451553890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A133299 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378724.P12287882513451553890

namespace A378724

/-- `lt[A120636(n+1), A000040(A133299(2*n+5))]` -/
def P12287882513451553890.Spec : Prop :=
  ∀ n, (P12287882513451553890.a n : ℤ) = A378724 (n + 1)

end A378724

/-!
# A378725: a(n) = A378724(n+1) - A378724(n).

The programs for A378725, the canonical program `A378725.P17767535879698643150` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378725 has offset 1).

The definition of A378725 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378724, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378725.P17767535879698643150

`A378724(n+2)-A378724(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A378725

/-- `A378724(n+2)-A378724(n+1)` -/
def P17767535879698643150.Spec : Prop :=
  ∀ n, P17767535879698643150.a n = A378725 (n + 1)

theorem P17767535879698643150.correct : P17767535879698643150.Spec := by
  intro n
  simp only [A378725, Nat.add_sub_cancel]

end A378725

/-! ## A378725.P14087577497862407106

`Δ[a(floor((n-1)/3))+n]` with `a(0)=0`
-/

namespace A378725.P14087577497862407106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 3⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A378725.P14087577497862407106

namespace A378725

/-- `Δ[a(floor((n-1)/3))+n]` -/
def P14087577497862407106.Spec : Prop :=
  ∀ n, P14087577497862407106.a n = A378725 (n + 1)

end A378725

/-! ## A378725.P1642675878909147620

`Δ[A378724(n+1)]`
-/

namespace A378725.P1642675878909147620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378725.P1642675878909147620

namespace A378725

/-- `Δ[A378724(n+1)]` -/
def P1642675878909147620.Spec : Prop :=
  ∀ n, P1642675878909147620.a n = A378725 (n + 1)

theorem P1642675878909147620.correct : P1642675878909147620.Spec := by
  intro n
  simp only [A378725, Nat.add_sub_cancel, A378725.P1642675878909147620.f1, A378725.P1642675878909147620.a, A378725.P17767535879698643150.a, SequenceMachineLib.memo_apply]

end A378725

/-! ## A378725.P6737060370265477181

`ceil(ratio[1/A054390(n)])`
-/

namespace A378725.P6737060370265477181
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A054390 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) / f1 n⌉

end

end A378725.P6737060370265477181

namespace A378725

/-- `ceil(ratio[1/A054390(n)])` -/
def P6737060370265477181.Spec : Prop :=
  ∀ n, P6737060370265477181.a n = A378725 (n + 1)

end A378725

/-! ## A378725.P13903881909447930337

`val(A269867(2*n+3), 2)`
-/

namespace A378725.P13903881909447930337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A269867 (2 * n + 3)).toNat 2

end

end A378725.P13903881909447930337

namespace A378725

/-- `val(A269867(2*n+3), 2)` -/
def P13903881909447930337.Spec : Prop :=
  ∀ n, (P13903881909447930337.a n : ℤ) = A378725 (n + 1)

end A378725

/-! ## A378725.P8275773584961195037

`A091090(A065361(n+1))`
-/

namespace A378725.P8275773584961195037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A065361 (n + 1)).toNat

end

end A378725.P8275773584961195037

namespace A378725

/-- `A091090(A065361(n+1))` -/
def P8275773584961195037.Spec : Prop :=
  ∀ n, P8275773584961195037.a n = A378725 (n + 1)

end A378725

/-! ## A378725.P7100558842012975290

`A254046(A046901(n+1))`
-/

namespace A378725.P7100558842012975290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254046 (A046901 (n + 1)).toNat

end

end A378725.P7100558842012975290

namespace A378725

/-- `A254046(A046901(n+1))` -/
def P7100558842012975290.Spec : Prop :=
  ∀ n, P7100558842012975290.a n = A378725 (n + 1)

end A378725

/-! ## A378725.P12129008711274605181

`A051064(A338247(n+1))`
-/

namespace A378725.P12129008711274605181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A338247 (n + 1)).toNat

end

end A378725.P12129008711274605181

namespace A378725

/-- `A051064(A338247(n+1))` -/
def P12129008711274605181.Spec : Prop :=
  ∀ n, P12129008711274605181.a n = A378725 (n + 1)

end A378725

/-! ## A378725.P4935359297838297429

`A051064(A372783(n+1))`
-/

namespace A378725.P4935359297838297429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A372783 (n + 1)).toNat

end

end A378725.P4935359297838297429

namespace A378725

/-- `A051064(A372783(n+1))` -/
def P4935359297838297429.Spec : Prop :=
  ∀ n, P4935359297838297429.a n = A378725 (n + 1)

end A378725

/-! ## A378725.P6141174658480615946

`A091090(A343228(n+1))`
-/

namespace A378725.P6141174658480615946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A343228 (n + 1)).toNat

end

end A378725.P6141174658480615946

namespace A378725

/-- `A091090(A343228(n+1))` -/
def P6141174658480615946.Spec : Prop :=
  ∀ n, P6141174658480615946.a n = A378725 (n + 1)

end A378725

/-! ## A378725.P10948083639370989198

`A254046(A274601(n+1))`
-/

namespace A378725.P10948083639370989198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254046 (A274601 (n + 1)).toNat

end

end A378725.P10948083639370989198

namespace A378725

/-- `A254046(A274601(n+1))` -/
def P10948083639370989198.Spec : Prop :=
  ∀ n, P10948083639370989198.a n = A378725 (n + 1)

end A378725

/-! ## A378725.P5777151819702619671

`A254046(A338245(n+1))`
-/

namespace A378725.P5777151819702619671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254046 (A338245 (n + 1)).toNat

end

end A378725.P5777151819702619671

namespace A378725

/-- `A254046(A338245(n+1))` -/
def P5777151819702619671.Spec : Prop :=
  ∀ n, P5777151819702619671.a n = A378725 (n + 1)

end A378725

/-! ## A378725.P10727783225021313275

`A277872(eq[A088440(n+1), A277872(n+1)])`
-/

namespace A378725.P10727783225021313275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A378725.P10727783225021313275

namespace A378725

/-- `A277872(eq[A088440(n+1), A277872(n+1)])` -/
def P10727783225021313275.Spec : Prop :=
  ∀ n, P10727783225021313275.a n = A378725 (n + 1)

end A378725

/-! ## A378725.P3332048826968252012

`A277872(eq[A115517(n+1), A277872(n+1)])`
-/

namespace A378725.P3332048826968252012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A378725.P3332048826968252012

namespace A378725

/-- `A277872(eq[A115517(n+1), A277872(n+1)])` -/
def P3332048826968252012.Spec : Prop :=
  ∀ n, P3332048826968252012.a n = A378725 (n + 1)

end A378725

/-! ## A378725.P7050605095191695242

`A277872(eq[A204118(n+2), A277872(n+1)])`
-/

namespace A378725.P7050605095191695242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204118 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A378725.P7050605095191695242

namespace A378725

/-- `A277872(eq[A204118(n+2), A277872(n+1)])` -/
def P7050605095191695242.Spec : Prop :=
  ∀ n, P7050605095191695242.a n = A378725 (n + 1)

end A378725

/-! ## A378725.P9135442006978744434

`A277872(eq[A204120(n+2), A277872(n+1)])`
-/

namespace A378725.P9135442006978744434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204120 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A378725.P9135442006978744434

namespace A378725

/-- `A277872(eq[A204120(n+2), A277872(n+1)])` -/
def P9135442006978744434.Spec : Prop :=
  ∀ n, P9135442006978744434.a n = A378725 (n + 1)

end A378725

/-!
# A378726: The total number of fires on a rooted undirected infinite ternary tree with a self-loop at the root, when the chip-firing process starts with 3n chips at the root.

The programs for A378726, there is no canonical definition to state claims against.
-/

/-! ## A378726.P8976225927013167910

`∑[A378962(n+1)]-A378962(n+1)`
-/

namespace A378726.P8976225927013167910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A378962 (n + 1)

end

end A378726.P8976225927013167910

/-!
# A378727: The total number of fires in a rooted undirected infinite 4-ary tree with a self-loop at the root, when the chip-firing process starts with (4^n-1)/3 chips at the root.

The programs for A378727, the canonical program `A378727.P10417953451389191869` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378727 has offset 1).

The definition of A378727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378727.P10417953451389191869

`10*a(n-1)-33*a(n-2)+40*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=1, a(2)=10, a(3)=67`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A378727

/-- `10*a(n-1)-33*a(n-2)+40*a(n-3)-16*a(n-4)` -/
def P10417953451389191869.Spec : Prop :=
  ∀ n, P10417953451389191869.a n = A378727 (n + 1)

theorem P10417953451389191869.correct : P10417953451389191869.Spec := by
  intro n
  simp only [A378727, Nat.add_sub_cancel]

end A378727

/-! ## A378727.P14437574405529664904

`((3*(n+1)-5)*4^(n+1)+3*(n+1)+5)/27`
-/

namespace A378727.P14437574405529664904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 * (n + 1) : ℤ) - 5) * (4 ^ (n + 1) : ℤ) + (3 * (n + 1) : ℤ) + 5 : ℚ) / 27

end

end A378727.P14437574405529664904

namespace A378727

/-- `((3*(n+1)-5)*4^(n+1)+3*(n+1)+5)/27` -/
def P14437574405529664904.Spec : Prop :=
  ∀ n, P14437574405529664904.a n = (A378727 (n + 1) : ℚ)

theorem P14437574405529664904.correct : P14437574405529664904.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A378727, Nat.add_sub_cancel, A378727.P14437574405529664904.a, A378727.P10417953451389191869.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A378727, Nat.add_sub_cancel, A378727.P14437574405529664904.a, A378727.P10417953451389191869.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A378727

/-! ## A378727.P9899286427724304031

`∑[A014916(n+1)]-A014916(n+1)`
-/

namespace A378727.P9899286427724304031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014916 (n + 1)

end

end A378727.P9899286427724304031

namespace A378727

/-- `∑[A014916(n+1)]-A014916(n+1)` -/
def P9899286427724304031.Spec : Prop :=
  ∀ n, P9899286427724304031.a n = A378727 (n + 1)

end A378727

/-!
# A378728: The total number of fires in a rooted undirected infinite 5-ary tree with a self-loop at the root, when the chip-firing process starts with (5^n-1)/4 chips at the root.

The programs for A378728, the canonical program `A378728.P5571620223108738075` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378728 has offset 1).

The definition of A378728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378728.P5571620223108738075

`12*a(n-1)-46*a(n-2)+60*a(n-3)-25*a(n-4)` with `a(0)=0, a(1)=1, a(2)=12, a(3)=98`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A378728

/-- `12*a(n-1)-46*a(n-2)+60*a(n-3)-25*a(n-4)` -/
def P5571620223108738075.Spec : Prop :=
  ∀ n, P5571620223108738075.a n = A378728 (n + 1)

theorem P5571620223108738075.correct : P5571620223108738075.Spec := by
  intro n
  simp only [A378728, Nat.add_sub_cancel]

end A378728

/-! ## A378728.P9122057395399858263

`((2*(n+1)-3)*5^(n+1)+2*(n+1)+3)/32`
-/

namespace A378728.P9122057395399858263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 3) * (5 ^ (n + 1) : ℤ) + (2 * (n + 1) : ℤ) + 3 : ℚ) / 32

end

end A378728.P9122057395399858263

namespace A378728

/-- `((2*(n+1)-3)*5^(n+1)+2*(n+1)+3)/32` -/
def P9122057395399858263.Spec : Prop :=
  ∀ n, P9122057395399858263.a n = (A378728 (n + 1) : ℚ)

theorem P9122057395399858263.correct : P9122057395399858263.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A378728, Nat.add_sub_cancel, A378728.P9122057395399858263.a, A378728.P5571620223108738075.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A378728, Nat.add_sub_cancel, A378728.P9122057395399858263.a, A378728.P5571620223108738075.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A378728

/-! ## A378728.P6810565505790165118

`∑[5*a(n-1)+1]+5*a(n-1)` with `a(0)=0`
-/

namespace A378728.P6810565505790165118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  5 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5 * a (n - 1)

end

end A378728.P6810565505790165118

namespace A378728

/-- `∑[5*a(n-1)+1]+5*a(n-1)` -/
def P6810565505790165118.Spec : Prop :=
  ∀ n, (P6810565505790165118.a n : ℤ) = A378728 (n + 1)

end A378728

/-! ## A378728.P5855156267979260503

`∑[A014917(A028310(n))]-1`
-/

namespace A378728.P5855156267979260503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014917 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A378728.P5855156267979260503

namespace A378728

/-- `∑[A014917(A028310(n))]-1` -/
def P5855156267979260503.Spec : Prop :=
  ∀ n, P5855156267979260503.a n = A378728 (n + 1)

end A378728

/-! ## A378728.P9579350494045171511

`∑[A014917(n+1)]-A014917(n+1)`
-/

namespace A378728.P9579350494045171511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014917 (n + 1)

end

end A378728.P9579350494045171511

namespace A378728

/-- `∑[A014917(n+1)]-A014917(n+1)` -/
def P9579350494045171511.Spec : Prop :=
  ∀ n, P9579350494045171511.a n = A378728 (n + 1)

end A378728

/-! ## A378728.P4968578405802785848

`∑[∑[A053464(n)]]%A155665(n)`
-/

namespace A378728.P4968578405802785848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053464 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A155665 n)

end

end A378728.P4968578405802785848

namespace A378728

/-- `∑[∑[A053464(n)]]%A155665(n)` -/
def P4968578405802785848.Spec : Prop :=
  ∀ n, P4968578405802785848.a n = A378728 (n + 1)

end A378728

/-!
# A378729: Characteristic function of the primitive practical numbers as a subsequence of the practical numbers.

The programs for A378729, there is no canonical definition to state claims against.
-/

/-! ## A378729.P5159128635754723043

`floor(1/A377377(n+1))`
-/

namespace A378729.P5159128635754723043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A377377 (n + 1) : ℚ)⌋

end

end A378729.P5159128635754723043

/-! ## A378729.P14045007771546884522

`A378454(A005153(n+1))`
-/

namespace A378729.P14045007771546884522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378454 (A005153 (n + 1)).toNat

end

end A378729.P14045007771546884522

/-! ## A378729.P4647609894460489847

`A063524(A377377(n+1))`
-/

namespace A378729.P4647609894460489847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A377377 (n + 1)).toNat

end

end A378729.P4647609894460489847

/-! ## A378729.P7612661243339624015

`A008683(A377377(n+1)²)`
-/

namespace A378729.P7612661243339624015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A377377 (n + 1) ^ 2).toNat

end

end A378729.P7612661243339624015

/-! ## A378729.P17502304325692432454

`A008966(A377377(n+1)²)`
-/

namespace A378729.P17502304325692432454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A377377 (n + 1) ^ 2).toNat

end

end A378729.P17502304325692432454

/-! ## A378729.P15076774532169037834

`A329678(3*A377377(n+1))`
-/

namespace A378729.P15076774532169037834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (3 * A377377 (n + 1)).toNat

end

end A378729.P15076774532169037834

/-! ## A378729.P16461170776941135677

`A322860(or(1, A377377(n+1)))`
-/

namespace A378729.P16461170776941135677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (Int.lor 1 (A377377 (n + 1))).toNat

end

end A378729.P16461170776941135677

/-! ## A378729.P5078400648262904419

`A010057(∏{p}[A377377(n+1), #])`
-/

namespace A378729.P5078400648262904419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A378729.P5078400648262904419

/-! ## A378729.P13373685486103004598

`A322860(A377377(n+1)²+1)`
-/

namespace A378729.P13373685486103004598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (A377377 (n + 1) ^ 2 + 1).toNat

end

end A378729.P13373685486103004598

/-! ## A378729.P3795667054068499193

`A161435(2*A377377(n+1)+4)`
-/

namespace A378729.P3795667054068499193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161435 (2 * A377377 (n + 1) + 4).toNat

end

end A378729.P3795667054068499193

/-! ## A378729.P11414245233991590677

`C(A344594(A042988(n)), A377377(n+1))`
-/

namespace A378729.P11414245233991590677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344594 (A042988 n).toNat).toNat (A377377 (n + 1)).toNat

end

end A378729.P11414245233991590677

/-! ## A378729.P18071435415580377246

`C(A344594(A151800(n)), A377377(n+1))`
-/

namespace A378729.P18071435415580377246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344594 (A151800 n).toNat).toNat (A377377 (n + 1)).toNat

end

end A378729.P18071435415580377246

/-! ## A378729.P9936557586389259283

`C(A001223(n+1), A296363(A377377(n+1)))`
-/

namespace A378729.P9936557586389259283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001223 (n + 1)).toNat (A296363 (A377377 (n + 1)).toNat).toNat

end

end A378729.P9936557586389259283

/-! ## A378729.P13492633499351844809

`C(A002024(n+1), A296363(A377377(n+1)))`
-/

namespace A378729.P13492633499351844809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1)).toNat (A296363 (A377377 (n + 1)).toNat).toNat

end

end A378729.P13492633499351844809

/-! ## A378729.P5424360612979860403

`C(A344594(A007693(n+3)), A377377(n+1))`
-/

namespace A378729.P5424360612979860403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344594 (A007693 (n + 3)).toNat).toNat (A377377 (n + 1)).toNat

end

end A378729.P5424360612979860403

/-! ## A378729.P17037410787939165117

`C(A344594(A109611(n+5)), A377377(n+1))`
-/

namespace A378729.P17037410787939165117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344594 (A109611 (n + 5)).toNat).toNat (A377377 (n + 1)).toNat

end

end A378729.P17037410787939165117

/-!
# A378730: G.f. A(x) satisfies A(x) = ( 1 + x / (1 - x*A(x)^(3/2)) )^2.

The programs for A378730, there is no canonical definition to state claims against.
-/

/-! ## A378730.P7299391918522179396

`A048688(A150581(n))`
-/

namespace A378730.P7299391918522179396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048688 (A150581 n).toNat

end

end A378730.P7299391918522179396

/-! ## A378730.P16854682013704364786

`∑[A108917(A355508(n))]`
-/

namespace A378730.P16854682013704364786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 (A355508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378730.P16854682013704364786

/-!
# A378731: G.f. A(x) satisfies A(x) = ( 1 + x / (1 - x*A(x)^(4/3)) )^3.

The programs for A378731, there is no canonical definition to state claims against.
-/

/-! ## A378731.P16792055805198201148

`A274529(A084869(n))`
-/

namespace A378731.P16792055805198201148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274529 (A084869 n).toNat

end

end A378731.P16792055805198201148

/-!
# A378732: G.f. A(x) satisfies A(x) = ( 1 + x / (1 - x*A(x)) )^4.

The programs for A378732, there is no canonical definition to state claims against.
-/

/-! ## A378732.P2255782478923852445

`A087866(A082761(n)+A001248(n+1))`
-/

namespace A378732.P2255782478923852445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087866 (A082761 n + A001248 (n + 1)).toNat

end

end A378732.P2255782478923852445

/-!
# A378733: G.f. A(x) satisfies A(x) = 1 + x / (1 - x*A(x)^2)^4.

The programs for A378733, there is no canonical definition to state claims against.
-/

/-! ## A378733.P14535477144475556321

`A062108(A001683(2*n+3)+1)`
-/

namespace A378733.P14535477144475556321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A001683 (2 * n + 3) + 1).toNat

end

end A378733.P14535477144475556321

/-! ## A378733.P9973191187958797835

`A025767(A349898(∑[2^∑{digits}[n, #]])-1)`
-/

namespace A378733.P9973191187958797835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 (A349898 (∑ j ∈ Finset.range (n + 1), f1 j) - 1).toNat

end

end A378733.P9973191187958797835

/-!
# A378734: Number of multisets E(n) generable by the following procedure: E(0) = { 0, 0, ... }; to get an E(n+1) from an E(n), first increment all elements then optionally choose an x and a y and replace them with 0 and x+y.

The programs for A378734, there is no canonical definition to state claims against.
-/

/-! ## A378734.P64214121975189431

`A115510(A137961(n))+A022290(n)`
-/

namespace A378734.P64214121975189431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (A137961 n).toNat + A022290 n

end

end A378734.P64214121975189431

/-! ## A378734.P6436471912382430957

`A137961(n)+A001221(A212071(n))`
-/

namespace A378734.P6436471912382430957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137961 n + A001221 (A212071 n).toNat

end

end A378734.P6436471912382430957

/-!
# A378735: Greatest non-abundant divisor of the n-th abundant number.

The programs for A378735, there is no canonical definition to state claims against.
-/

/-! ## A378735.P2535404610922746145

`A378665(A005101(n+1))`
-/

namespace A378735.P2535404610922746145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378665 (A005101 (n + 1)).toNat

end

end A378735.P2535404610922746145

/-! ## A378735.P8822084462595474415

`A378665(A204822(n+1)-A205098(n+1))`
-/

namespace A378735.P8822084462595474415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378665 (A204822 (n + 1) - A205098 (n + 1)).toNat

end

end A378735.P8822084462595474415

/-! ## A378735.P15880760277642710766

`A378665(A204822(n+1)%A205098(n+1))`
-/

namespace A378735.P15880760277642710766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378665 (Int.tmod (A204822 (n + 1)) (A205098 (n + 1))).toNat

end

end A378735.P15880760277642710766

/-!
# A378736: Greatest divisor d of the n-th abundant number such that sigma(d) <= 2*d < A003961(d).

The programs for A378736, there is no canonical definition to state claims against.
-/

/-! ## A378736.P17903549368018871356

`A378664(A005101(n+1))`
-/

namespace A378736.P17903549368018871356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378664 (A005101 (n + 1)).toNat

end

end A378736.P17903549368018871356

/-! ## A378736.P10536375644521145438

`A378664(A224907(n+1)/2)`
-/

namespace A378736.P10536375644521145438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378664 (SequenceMachineLib.roundAway ((A224907 (n + 1) : ℚ) / 2)).toNat

end

end A378736.P10536375644521145438

/-! ## A378736.P2835633632999298663

`A378664(eq[1, A060862(n+1)]+1)`
-/

namespace A378736.P2835633632999298663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378664 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A378736.P2835633632999298663

/-! ## A378736.P4764306251540981408

`A378664(eq[1, A082551(n+1)]+1)`
-/

namespace A378736.P4764306251540981408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378664 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A378736.P4764306251540981408

/-! ## A378736.P5648703585792597302

`A378664(lt[0, A318679(n+1)]+1)`
-/

namespace A378736.P5648703585792597302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378664 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A378736.P5648703585792597302

/-! ## A378736.P4222650228708171985

`A378664(A204822(n+1)-A205098(n+1))`
-/

namespace A378736.P4222650228708171985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378664 (A204822 (n + 1) - A205098 (n + 1)).toNat

end

end A378736.P4222650228708171985

/-! ## A378736.P12203422723053654604

`A378664(∪[A204825(n+1), A087245(n+1)])`
-/

namespace A378736.P12203422723053654604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378664 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A378736.P12203422723053654604

/-!
# A378738: Primitively abundant numbers k for which A378665(k) > A378664(k).

The programs for A378738, there is no canonical definition to state claims against.
-/

/-! ## A378738.P5381243058762614493

`∩[A091191(n+1), A378737(n+1)]`
-/

namespace A378738.P5381243058762614493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378738.P5381243058762614493

/-! ## A378738.P14392286009913870344

`∩[A357696(n+1), A378737(n+1)]`
-/

namespace A378738.P14392286009913870344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378738.P14392286009913870344

/-! ## A378738.P4299086525728025782

`filter[A378737(n+1), A294930(#)]`
-/

namespace A378738.P4299086525728025782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A378738.P4299086525728025782

/-! ## A378738.P1631908747527441823

`lcm(A087890(n+1), A378737(n+1))`
-/

namespace A378738.P1631908747527441823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087890 (n + 1)) (A378737 (n + 1))

end

end A378738.P1631908747527441823

/-! ## A378738.P9520221392701440602

`A378737(n+1)+A010051(A079908(n))`
-/

namespace A378738.P9520221392701440602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378737 (n + 1) + A010051 (A079908 n).toNat

end

end A378738.P9520221392701440602

/-!
# A378739: A378664(k) computed for those primitively abundant numbers k for which A378664(k) is less than the largest proper divisor of k.

The programs for A378739, there is no canonical definition to state claims against.
-/

/-! ## A378739.P4021138003851429783

`A378664(A378738(n+1))`
-/

namespace A378739.P4021138003851429783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378664 (A378738 (n + 1)).toNat

end

end A378739.P4021138003851429783

/-! ## A378739.P1803247062815708004

`A378664(∩[A357696(n+1), A378737(n+1)])`
-/

namespace A378739.P1803247062815708004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378737 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378664 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A378739.P1803247062815708004

/-! ## A378739.P7621460553564783488

`A378664(lcm(A087890(n+1), A378737(n+1)))`
-/

namespace A378739.P7621460553564783488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378664 (Int.lcm (A087890 (n + 1)) (A378737 (n + 1)))

end

end A378739.P7621460553564783488

/-! ## A378739.P12560043831886299298

`gcd(A090788(n+1), A378737(n+1))`
-/

namespace A378739.P12560043831886299298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090788 (n + 1)) (A378737 (n + 1))

end

end A378739.P12560043831886299298

/-! ## A378739.P7146354679236268732

`gcd(A335735(n+1), A378738(n+1))`
-/

namespace A378739.P7146354679236268732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A335735 (n + 1)) (A378738 (n + 1))

end

end A378739.P7146354679236268732

/-!
# A378740: Distinct values of A378664(k) in the order of appearance, when k ranges over those primitively abundant numbers k for which A378664(k) is less than the largest proper divisor of k.

The programs for A378740, there is no canonical definition to state claims against.
-/

/-! ## A378740.P11158527149407816251

`A378664(A378741(n+1))`
-/

namespace A378740.P11158527149407816251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378664 (A378741 (n + 1)).toNat

end

end A378740.P11158527149407816251

/-!
# A378744: The least k such that prime(1+n)^k > 2 * prime(n)^k.

The programs for A378744, the canonical program `A378744.P4748667220349122921` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378744 has offset 1).

The definition of A378744 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378744.P4748667220349122921

`ceil(log(2)/log(A000040(n+2)/A000040(n+1)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A378744

/-- `ceil(log(2)/log(A000040(n+2)/A000040(n+1)))` -/
def P4748667220349122921.Spec : Prop :=
  ∀ n, P4748667220349122921.a n = A378744 (n + 1)

theorem P4748667220349122921.correct : P4748667220349122921.Spec := by
  intro n
  simp only [A378744, Nat.add_sub_cancel]

end A378744

/-! ## A378744.P14508428061305565628

`ceil(1/Δ[log2(A000040(n+1))])`
-/

namespace A378744.P14508428061305565628
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (f1 (n + 1) - f1 n)⌉

end

end A378744.P14508428061305565628

namespace A378744

/-- `ceil(1/Δ[log2(A000040(n+1))])` -/
def P14508428061305565628.Spec : Prop :=
  ∀ n, P14508428061305565628.a n = A378744 (n + 1)

end A378744

/-! ## A378744.P14198995943423600946

`A130742(n+1)+1`
-/

namespace A378744.P14198995943423600946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130742 (n + 1) + 1

end

end A378744.P14198995943423600946

namespace A378744

/-- `A130742(n+1)+1` -/
def P14198995943423600946.Spec : Prop :=
  ∀ n, P14198995943423600946.a n = A378744 (n + 1)

end A378744

/-! ## A378744.P11643973948410579374

`A020725(A130742(n+1))`
-/

namespace A378744.P11643973948410579374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A130742 (n + 1)).toNat

end

end A378744.P11643973948410579374

namespace A378744

/-- `A020725(A130742(n+1))` -/
def P11643973948410579374.Spec : Prop :=
  ∀ n, P11643973948410579374.a n = A378744 (n + 1)

end A378744

/-!
# A378745: a(n) = prime(n)^A378744(n).

The programs for A378745, the canonical program `A378745.P4000645261650579531` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378745 has offset 1).

The definition of A378745 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A378744, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378745.P4000645261650579531

`A000040(n+1)^A378744(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A378745

/-- `A000040(n+1)^A378744(n+1)` -/
def P4000645261650579531.Spec : Prop :=
  ∀ n, P4000645261650579531.a n = (A378745 (n + 1) : ℚ)

end A378745

/-! ## A378745.P9297190840451085120

`A000040(n+1)^A374155(A209622(n))`
-/

namespace A378745.P9297190840451085120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A374155 (A209622 n).toNat : ℤ)

end

end A378745.P9297190840451085120

namespace A378745

/-- `A000040(n+1)^A374155(A209622(n))` -/
def P9297190840451085120.Spec : Prop :=
  ∀ n, P9297190840451085120.a n = (A378745 (n + 1) : ℚ)

end A378745

/-! ## A378745.P9600518408621395063

`A038612(n+1)^A374155(A209622(n))`
-/

namespace A378745.P9600518408621395063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038612 (n + 1) : ℚ) ^ (A374155 (A209622 n).toNat : ℤ)

end

end A378745.P9600518408621395063

namespace A378745

/-- `A038612(n+1)^A374155(A209622(n))` -/
def P9600518408621395063.Spec : Prop :=
  ∀ n, P9600518408621395063.a n = (A378745 (n + 1) : ℚ)

end A378745

/-!
# A378746: a(n) = Product{i=n..primepi(2*prime(n))} prime(i).

The programs for A378746, there is no canonical definition to state claims against.
-/

/-! ## A378746.P17950625221942535082

`A073838(A255483(∑[n]))`
-/

namespace A378746.P17950625221942535082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073838 (A255483 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A378746.P17950625221942535082

/-! ## A378746.P6888385284219646764

`A073838(A000040(n+1))`
-/

namespace A378746.P6888385284219646764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073838 (A000040 (n + 1)).toNat

end

end A378746.P6888385284219646764

/-! ## A378746.P5696413146007584288

`A073838(A008864(n+1)-1)`
-/

namespace A378746.P5696413146007584288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073838 (A008864 (n + 1) - 1).toNat

end

end A378746.P5696413146007584288

/-! ## A378746.P17925785664009992179

`A073838(A040976(n+1)+2)`
-/

namespace A378746.P17925785664009992179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073838 (A040976 (n + 1) + 2).toNat

end

end A378746.P17925785664009992179

/-! ## A378746.P8135098454269149601

`A073838(∪[A042988(n), A042990(n)])`
-/

namespace A378746.P8135098454269149601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073838 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A378746.P8135098454269149601

/-! ## A378746.P11763400730130804033

`A073838(A002110(n+1)/A002110(n))`
-/

namespace A378746.P11763400730130804033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073838 (SequenceMachineLib.roundAway ((A002110 (n + 1) : ℚ) / (A002110 n : ℚ))).toNat

end

end A378746.P11763400730130804033

/-! ## A378746.P7243861026184642959

`A055773(eq[A027642(n), A339890(n+1)])`
-/

namespace A378746.P7243861026184642959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A378746.P7243861026184642959

/-!
# A378747: a(n) = A048673(n) - A001065(n).

The programs for A378747, the canonical program `A378747.P2612506612617413863` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378747 has offset 1).

The definition of A378747 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378747.P2612506612617413863

`A048673(n+1)-A001065(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378747

/-- `A048673(n+1)-A001065(n+1)` -/
def P2612506612617413863.Spec : Prop :=
  ∀ n, P2612506612617413863.a n = A378747 (n + 1)

theorem P2612506612617413863.correct : P2612506612617413863.Spec := by
  intro n
  simp only [A378747, Nat.add_sub_cancel]

end A378747

/-! ## A378747.P13869712740022224070

`n+1+(A003961(n+1)+1)/2-A000203(n+1)`
-/

namespace A378747.P13869712740022224070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (A003961 (n + 1) + 1 : ℚ) / 2 - (A000203 (n + 1) : ℚ)

end

end A378747.P13869712740022224070

namespace A378747

/-- `n+1+(A003961(n+1)+1)/2-A000203(n+1)` -/
def P13869712740022224070.Spec : Prop :=
  ∀ n, P13869712740022224070.a n = (A378747 (n + 1) : ℚ)

end A378747

/-! ## A378747.P12559036604694549639

`∑{d}[n+1, A378748(#)]`
-/

namespace A378747.P12559036604694549639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378748 d

end

end A378747.P12559036604694549639

namespace A378747

/-- `∑{d}[n+1, A378748(#)]` -/
def P12559036604694549639.Spec : Prop :=
  ∀ n, P12559036604694549639.a n = A378747 (n + 1)

end A378747

/-! ## A378747.P13218561683164721539

`1-A378751(n+1)+n`
-/

namespace A378747.P13218561683164721539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A378751 (n + 1) + (n : ℤ)

end

end A378747.P13218561683164721539

namespace A378747

/-- `1-A378751(n+1)+n` -/
def P13218561683164721539.Spec : Prop :=
  ∀ n, P13218561683164721539.a n = A378747 (n + 1)

end A378747

/-! ## A378747.P14135253158168775488

`A349573(n+1)+A033879(n+1)`
-/

namespace A378747.P14135253158168775488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (n + 1) + A033879 (n + 1)

end

end A378747.P14135253158168775488

namespace A378747

/-- `A349573(n+1)+A033879(n+1)` -/
def P14135253158168775488.Spec : Prop :=
  ∀ n, P14135253158168775488.a n = A378747 (n + 1)

end A378747

/-! ## A378747.P10176672740478502327

`A349573(n+1)-A033880(n+1)`
-/

namespace A378747.P10176672740478502327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (n + 1) - A033880 (n + 1)

end

end A378747.P10176672740478502327

namespace A378747

/-- `A349573(n+1)-A033880(n+1)` -/
def P10176672740478502327.Spec : Prop :=
  ∀ n, P10176672740478502327.a n = A378747 (n + 1)

end A378747

/-!
# A378748: Möbius transform of A378747.

The programs for A378748, the canonical program `A378748.P8742583333347776614` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378748 has offset 1).

The definition of A378748 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A378521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378748.P8742583333347776614

`A378521(n+1)-A051953(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A378748

/-- `A378521(n+1)-A051953(n+1)` -/
def P8742583333347776614.Spec : Prop :=
  ∀ n, P8742583333347776614.a n = A378748 (n + 1)

theorem P8742583333347776614.correct : P8742583333347776614.Spec := by
  intro n
  simp only [A378748, Nat.add_sub_cancel]

end A378748

/-! ## A378748.P296368044998679708

`∑{d}[n+1, A008683(#)*A378747((n+1)/#)]`
-/

namespace A378748.P296368044998679708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378747 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378748.P296368044998679708

namespace A378748

/-- `∑{d}[n+1, A008683(#)*A378747((n+1)/#)]` -/
def P296368044998679708.Spec : Prop :=
  ∀ n, P296368044998679708.a n = A378748 (n + 1)

end A378748

/-! ## A378748.P13656755985925988749

`A349136(A003961(n+1))-A051953(n+1)`
-/

namespace A378748.P13656755985925988749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 (A003961 (n + 1)).toNat - A051953 (n + 1)

end

end A378748.P13656755985925988749

namespace A378748

/-- `A349136(A003961(n+1))-A051953(n+1)` -/
def P13656755985925988749.Spec : Prop :=
  ∀ n, P13656755985925988749.a n = A378748 (n + 1)

end A378748

/-! ## A378748.P7576305664846820605

`A026741(A003972(n+1))-A051953(n+1)`
-/

namespace A378748.P7576305664846820605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003972 (n + 1)).toNat - A051953 (n + 1)

end

end A378748.P7576305664846820605

namespace A378748

/-- `A026741(A003972(n+1))-A051953(n+1)` -/
def P7576305664846820605.Spec : Prop :=
  ∀ n, P7576305664846820605.a n = A378748 (n + 1)

end A378748

/-! ## A378748.P7057111148429141650

`A026741(A003972(n+1))-(1-Δ[A002088(n)]+n)`
-/

namespace A378748.P7057111148429141650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003972 (n + 1)).toNat - (1 - (f1 (n + 1) - f1 n) + (n : ℤ))

end

end A378748.P7057111148429141650

namespace A378748

/-- `A026741(A003972(n+1))-(1-Δ[A002088(n)]+n)` -/
def P7057111148429141650.Spec : Prop :=
  ∀ n, P7057111148429141650.a n = A378748 (n + 1)

end A378748

/-! ## A378748.P13539999733190875337

`A026741(A003972(n+1))-(1-A000010(n+1)+n)`
-/

namespace A378748.P13539999733190875337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003972 (n + 1)).toNat - (1 - A000010 (n + 1) + (n : ℤ))

end

end A378748.P13539999733190875337

namespace A378748

/-- `A026741(A003972(n+1))-(1-A000010(n+1)+n)` -/
def P13539999733190875337.Spec : Prop :=
  ∀ n, P13539999733190875337.a n = A378748 (n + 1)

end A378748

/-! ## A378748.P6404789935387176928

`A026741(A003972(n+1))-(2-A039649(n+1)+n)`
-/

namespace A378748.P6404789935387176928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003972 (n + 1)).toNat - (2 - A039649 (n + 1) + (n : ℤ))

end

end A378748.P6404789935387176928

namespace A378748

/-- `A026741(A003972(n+1))-(2-A039649(n+1)+n)` -/
def P6404789935387176928.Spec : Prop :=
  ∀ n, P6404789935387176928.a n = A378748 (n + 1)

end A378748

/-! ## A378748.P14436801648700794296

`A026741(A003972(n+1))-A345891(n+1)%(n+1)`
-/

namespace A378748.P14436801648700794296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003972 (n + 1)).toNat - Int.tmod (A345891 (n + 1)) (n + 1 : ℤ)

end

end A378748.P14436801648700794296

namespace A378748

/-- `A026741(A003972(n+1))-A345891(n+1)%(n+1)` -/
def P14436801648700794296.Spec : Prop :=
  ∀ n, P14436801648700794296.a n = A378748 (n + 1)

end A378748

/-! ## A378748.P16389428972532276793

`A026741(A003972(n+1))-A046151(n+1)%(n+2)`
-/

namespace A378748.P16389428972532276793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003972 (n + 1)).toNat - Int.tmod (A046151 (n + 1)) (n + 2 : ℤ)

end

end A378748.P16389428972532276793

namespace A378748

/-- `A026741(A003972(n+1))-A046151(n+1)%(n+2)` -/
def P16389428972532276793.Spec : Prop :=
  ∀ n, P16389428972532276793.a n = A378748 (n + 1)

end A378748

/-!
# A378751: a(n) = A000203(n) - A048673(n).

The programs for A378751, the canonical program `A378751.P13164053895739909960` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378751 has offset 1).

The definition of A378751 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378751.P4679596686583500890

`n+1-A378747(n+1)`
-/

namespace A378751.P4679596686583500890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A378747 (n + 1)

end

end A378751.P4679596686583500890

namespace A378751

/-- `n+1-A378747(n+1)` -/
def P4679596686583500890.Spec : Prop :=
  ∀ n, P4679596686583500890.a n = A378751 (n + 1)

end A378751

/-! ## A378751.P6208926306177590996

`1/2*(A377984(n+1)-1)`
-/

namespace A378751.P6208926306177590996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A377984 (n + 1) - 1 : ℚ)

end

end A378751.P6208926306177590996

namespace A378751

/-- `1/2*(A377984(n+1)-1)` -/
def P6208926306177590996.Spec : Prop :=
  ∀ n, P6208926306177590996.a n = (A378751 (n + 1) : ℚ)

end A378751

/-! ## A378751.P13164053895739909960

`A000203(n+1)-A048673(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378751

/-- `A000203(n+1)-A048673(n+1)` -/
def P13164053895739909960.Spec : Prop :=
  ∀ n, P13164053895739909960.a n = A378751 (n + 1)

theorem P13164053895739909960.correct : P13164053895739909960.Spec := by
  intro n
  simp only [A378751, Nat.add_sub_cancel]

end A378751

/-! ## A378751.P18370928304765041887

`(A377984(n+1)-1)/2`
-/

namespace A378751.P18370928304765041887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377984 (n + 1) - 1 : ℚ) / 2

end

end A378751.P18370928304765041887

namespace A378751

/-- `(A377984(n+1)-1)/2` -/
def P18370928304765041887.Spec : Prop :=
  ∀ n, P18370928304765041887.a n = (A378751 (n + 1) : ℚ)

end A378751

/-! ## A378751.P14610006875450247003

`A001065(n+1)-A349573(n+1)`
-/

namespace A378751.P14610006875450247003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A349573 (n + 1)

end

end A378751.P14610006875450247003

namespace A378751

/-- `A001065(n+1)-A349573(n+1)` -/
def P14610006875450247003.Spec : Prop :=
  ∀ n, P14610006875450247003.a n = A378751 (n + 1)

end A378751

/-! ## A378751.P1859382026098744641

`A108228(n+1)-A286385(n+1)`
-/

namespace A378751.P1859382026098744641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108228 (n + 1) - A286385 (n + 1)

end

end A378751.P1859382026098744641

namespace A378751

/-- `A108228(n+1)-A286385(n+1)` -/
def P1859382026098744641.Spec : Prop :=
  ∀ n, P1859382026098744641.a n = A378751 (n + 1)

end A378751

/-! ## A378751.P9316428824932391214

`A088580(n+1)-(A048673(n+1)+1)`
-/

namespace A378751.P9316428824932391214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A048673 (n + 1) + 1)

end

end A378751.P9316428824932391214

namespace A378751

/-- `A088580(n+1)-(A048673(n+1)+1)` -/
def P9316428824932391214.Spec : Prop :=
  ∀ n, P9316428824932391214.a n = A378751 (n + 1)

end A378751

/-! ## A378751.P2214817525733307238

`A048673(n+1)-(A286385(n+1)+1)`
-/

namespace A378751.P2214817525733307238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1) - (A286385 (n + 1) + 1)

end

end A378751.P2214817525733307238

namespace A378751

/-- `A048673(n+1)-(A286385(n+1)+1)` -/
def P2214817525733307238.Spec : Prop :=
  ∀ n, P2214817525733307238.a n = A378751 (n + 1)

end A378751

/-! ## A378751.P17669898555055766771

`(A002659(n+1)-A003961(n+1))/2`
-/

namespace A378751.P17669898555055766771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002659 (n + 1) - A003961 (n + 1) : ℚ) / 2

end

end A378751.P17669898555055766771

namespace A378751

/-- `(A002659(n+1)-A003961(n+1))/2` -/
def P17669898555055766771.Spec : Prop :=
  ∀ n, P17669898555055766771.a n = (A378751 (n + 1) : ℚ)

end A378751

/-! ## A378751.P404651847934527649

`A000203(n+1)-A243501(n+1)/2`
-/

namespace A378751.P404651847934527649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) - (A243501 (n + 1) : ℚ) / 2

end

end A378751.P404651847934527649

namespace A378751

/-- `A000203(n+1)-A243501(n+1)/2` -/
def P404651847934527649.Spec : Prop :=
  ∀ n, P404651847934527649.a n = (A378751 (n + 1) : ℚ)

end A378751

/-! ## A378751.P1741962440488905967

`A285704(A048673(n+1))`
-/

namespace A378751.P1741962440488905967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285704 (A048673 (n + 1)).toNat

end

end A378751.P1741962440488905967

namespace A378751

/-- `A285704(A048673(n+1))` -/
def P1741962440488905967.Spec : Prop :=
  ∀ n, P1741962440488905967.a n = A378751 (n + 1)

end A378751

/-!
# A378752: a(n) = 2*sigma(n) - sigma(A003961(n)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

The programs for A378752, the canonical program `A378752.P11019158071708526030` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378752 has offset 1).

The definition of A378752 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378752.P11019158071708526030

`2*A000203(n+1)-A003973(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378752

/-- `2*A000203(n+1)-A003973(n+1)` -/
def P11019158071708526030.Spec : Prop :=
  ∀ n, P11019158071708526030.a n = A378752 (n + 1)

theorem P11019158071708526030.correct : P11019158071708526030.Spec := by
  intro n
  simp only [A378752, Nat.add_sub_cancel]

end A378752

/-! ## A378752.P2757579598919376491

`A074400(n+1)-A003973(n+1)`
-/

namespace A378752.P2757579598919376491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A003973 (n + 1)

end

end A378752.P2757579598919376491

namespace A378752

/-- `A074400(n+1)-A003973(n+1)` -/
def P2757579598919376491.Spec : Prop :=
  ∀ n, P2757579598919376491.a n = A378752 (n + 1)

end A378752

/-! ## A378752.P10156808091513781454

`A000203(n+1)-A336852(n+1)`
-/

namespace A378752.P10156808091513781454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A336852 (n + 1)

end

end A378752.P10156808091513781454

namespace A378752

/-- `A000203(n+1)-A336852(n+1)` -/
def P10156808091513781454.Spec : Prop :=
  ∀ n, P10156808091513781454.a n = A378752 (n + 1)

end A378752

/-! ## A378752.P10932342887942364902

`A377984(n+1)-A336851(n+1)`
-/

namespace A378752.P10932342887942364902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377984 (n + 1) - A336851 (n + 1)

end

end A378752.P10932342887942364902

namespace A378752

/-- `A377984(n+1)-A336851(n+1)` -/
def P10932342887942364902.Spec : Prop :=
  ∀ n, P10932342887942364902.a n = A378752 (n + 1)

end A378752

/-! ## A378752.P16833739877917513550

`A003973(n+1)-2*A336852(n+1)`
-/

namespace A378752.P16833739877917513550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - 2 * A336852 (n + 1)

end

end A378752.P16833739877917513550

namespace A378752

/-- `A003973(n+1)-2*A336852(n+1)` -/
def P16833739877917513550.Spec : Prop :=
  ∀ n, P16833739877917513550.a n = A378752 (n + 1)

end A378752

/-! ## A378752.P4996577704108499881

`A239050(n+1)/2-A003973(n+1)`
-/

namespace A378752.P4996577704108499881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239050 (n + 1) : ℚ) / 2 - (A003973 (n + 1) : ℚ)

end

end A378752.P4996577704108499881

namespace A378752

/-- `A239050(n+1)/2-A003973(n+1)` -/
def P4996577704108499881.Spec : Prop :=
  ∀ n, P4996577704108499881.a n = (A378752 (n + 1) : ℚ)

end A378752

/-! ## A378752.P18287951277411880501

`A074400(n+1)/2-A336852(n+1)`
-/

namespace A378752.P18287951277411880501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A336852 (n + 1) : ℚ)

end

end A378752.P18287951277411880501

namespace A378752

/-- `A074400(n+1)/2-A336852(n+1)` -/
def P18287951277411880501.Spec : Prop :=
  ∀ n, P18287951277411880501.a n = (A378752 (n + 1) : ℚ)

end A378752

/-! ## A378752.P15965611775321197590

`∑{d}[n+1, A296075(#)*A378754((n+1)/#)]`
-/

namespace A378752.P15965611775321197590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296075 d * A378754 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378752.P15965611775321197590

namespace A378752

/-- `∑{d}[n+1, A296075(#)*A378754((n+1)/#)]` -/
def P15965611775321197590.Spec : Prop :=
  ∀ n, P15965611775321197590.a n = A378752 (n + 1)

end A378752

/-! ## A378752.P1023186306230042301

`A000203(n+1)-(A336851(n+1)+A286385(n+1))`
-/

namespace A378752.P1023186306230042301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A336851 (n + 1) + A286385 (n + 1))

end

end A378752.P1023186306230042301

namespace A378752

/-- `A000203(n+1)-(A336851(n+1)+A286385(n+1))` -/
def P1023186306230042301.Spec : Prop :=
  ∀ n, P1023186306230042301.a n = A378752 (n + 1)

end A378752

/-! ## A378752.P17644168953536402492

`A003961(n+1)-(A336852(n+1)+A286385(n+1))`
-/

namespace A378752.P17644168953536402492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - (A336852 (n + 1) + A286385 (n + 1))

end

end A378752.P17644168953536402492

namespace A378752

/-- `A003961(n+1)-(A336852(n+1)+A286385(n+1))` -/
def P17644168953536402492.Spec : Prop :=
  ∀ n, P17644168953536402492.a n = A378752 (n + 1)

end A378752

/-!
# A378753: Dirichlet inverse of A378752, where A378752(n) = 2*sigma(n) - sigma(A003961(n)), and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

The programs for A378753, there is no canonical definition to state claims against.
-/

/-! ## A378753.P17597196116275762094

`∑{d}[n+1, A008683(#)*A346248((n+1)/#)]`
-/

namespace A378753.P17597196116275762094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A346248 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378753.P17597196116275762094

/-! ## A378753.P8476824802728993814

`∑{d}[n+1, A007427(#)*A376404((n+1)/#)]`
-/

namespace A378753.P8476824802728993814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A376404 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378753.P8476824802728993814

/-! ## A378753.P16137440785482704125

`∑{d}[n+1, A378432(#)*A378755((n+1)/#)]`
-/

namespace A378753.P16137440785482704125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378432 d * A378755 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378753.P16137440785482704125

/-!
# A378754: Dirichlet convolution of -A252748 and A323910.

The programs for A378754, there is no canonical definition to state claims against.
-/

/-! ## A378754.P1153505228919576862

`∑{d}[n+1, A378432(#)*A378752((n+1)/#)]`
-/

namespace A378754.P1153505228919576862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378432 d * A378752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378754.P1153505228919576862

/-!
# A378755: Dirichlet convolution of A033879 and A346248.

The programs for A378755, there is no canonical definition to state claims against.
-/

/-! ## A378755.P10400314296526098125

`∑{d}[n+1, A033879(#)*A346248((n+1)/#)]`
-/

namespace A378755.P10400314296526098125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A346248 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378755.P10400314296526098125

/-! ## A378755.P8506631910018309966

`∑{d}[n+1, A083254(#)*A376404((n+1)/#)]`
-/

namespace A378755.P8506631910018309966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A083254 d * A376404 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378755.P8506631910018309966

/-! ## A378755.P4242245993084478379

`∑{d}[n+1, A296075(#)*A378753((n+1)/#)]`
-/

namespace A378755.P4242245993084478379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296075 d * A378753 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378755.P4242245993084478379

/-! ## A378755.P5395966580731597603

`A337549(n+1)+A035211(A105725(n+1))`
-/

namespace A378755.P5395966580731597603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337549 (n + 1) + A035211 (A105725 (n + 1)).toNat

end

end A378755.P5395966580731597603

/-!
# A378756: Dirichlet convolution of A046692 and A005187, where A046692 is the Dirichlet inverse of sigma.

The programs for A378756, the canonical program `A378756.P8685349970917417550` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378756 has offset 1).

The definition of A378756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378756.P8685349970917417550

`∑{d}[n+1, A055615(#)*A297111((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A378756

/-- `∑{d}[n+1, A055615(#)*A297111((n+1)/#)]` -/
def P8685349970917417550.Spec : Prop :=
  ∀ n, P8685349970917417550.a n = A378756 (n + 1)

theorem P8685349970917417550.correct : P8685349970917417550.Spec := by
  intro n
  simp only [A378756, Nat.add_sub_cancel]

end A378756

/-! ## A378756.P3782125795504775945

`A168532(A056220(3*(n+1)))-A378757(n+1)`
-/

namespace A378756.P3782125795504775945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168532 (A056220 (3 * (n + 1))).toNat - A378757 (n + 1)

end

end A378756.P3782125795504775945

namespace A378756

/-- `A168532(A056220(3*(n+1)))-A378757(n+1)` -/
def P3782125795504775945.Spec : Prop :=
  ∀ n, P3782125795504775945.a n = A378756 (n + 1)

end A378756

/-! ## A378756.P10787843473269043383

`A130706(A011971(2*n+1))-A378757(n+1)`
-/

namespace A378756.P10787843473269043383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A011971 (2 * n + 1)).toNat - A378757 (n + 1)

end

end A378756.P10787843473269043383

namespace A378756

/-- `A130706(A011971(2*n+1))-A378757(n+1)` -/
def P10787843473269043383.Spec : Prop :=
  ∀ n, P10787843473269043383.a n = A378756 (n + 1)

end A378756

/-! ## A378756.P646086326008579784

`A132747(A378775(n+1))-A378757(n+1)`
-/

namespace A378756.P646086326008579784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (A378775 (n + 1)).toNat - A378757 (n + 1)

end

end A378756.P646086326008579784

namespace A378756

/-- `A132747(A378775(n+1))-A378757(n+1)` -/
def P646086326008579784.Spec : Prop :=
  ∀ n, P646086326008579784.a n = A378756 (n + 1)

end A378756

/-! ## A378756.P6478244788976475664

`A000122(A005338(n+8))-A378757(n+1)`
-/

namespace A378756.P6478244788976475664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A005338 (n + 8)).toNat - A378757 (n + 1)

end

end A378756.P6478244788976475664

namespace A378756

/-- `A000122(A005338(n+8))-A378757(n+1)` -/
def P6478244788976475664.Spec : Prop :=
  ∀ n, P6478244788976475664.a n = A378756 (n + 1)

end A378756

/-!
# A378757: Dirichlet convolution of sigma and the Dirichlet inverse of A005187 (A346237).

The programs for A378757, there is no canonical definition to state claims against.
-/

/-! ## A378757.P5169996728499106308

`∑{d}[n+1, #*A378991((n+1)/#)]`
-/

namespace A378757.P5169996728499106308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A378991 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378757.P5169996728499106308

/-! ## A378757.P7452993987787410036

`∑{d}[n+1, A000203(#)*A346237((n+1)/#)]`
-/

namespace A378757.P7452993987787410036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A346237 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378757.P7452993987787410036

/-! ## A378757.P589768238622698640

`A168532(A056220(3*(n+1)))-A378756(n+1)`
-/

namespace A378757.P589768238622698640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168532 (A056220 (3 * (n + 1))).toNat - A378756 (n + 1)

end

end A378757.P589768238622698640

/-! ## A378757.P12549016968014921730

`A000122(A274110(n+1))-A378756(n+1)`
-/

namespace A378757.P12549016968014921730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A274110 (n + 1)).toNat - A378756 (n + 1)

end

end A378757.P12549016968014921730

/-! ## A378757.P17703086822967950523

`A132747(A378775(n+1))-A378756(n+1)`
-/

namespace A378757.P17703086822967950523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (A378775 (n + 1)).toNat - A378756 (n + 1)

end

end A378757.P17703086822967950523

/-!
# A378760: Smallest sum b_1 + .. + b_k among the sequences of positive integers b_1, b_2, ..., b_k such that 1 + b_1*(1 + b_2*(...(1 + b_k) ... )) = n.

The programs for A378760, there is no canonical definition to state claims against.
-/

/-! ## A378760.P554332190105680234

`A083896(n+1)+A075167(A328964(n))`
-/

namespace A378760.P554332190105680234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (n + 1) + A075167 (A328964 n).toNat

end

end A378760.P554332190105680234

/-! ## A378760.P8057273384778342272

`A084558(A006995(n+1)*A237125(n))`
-/

namespace A378760.P8057273384778342272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A006995 (n + 1) * A237125 n).toNat

end

end A378760.P8057273384778342272

/-! ## A378760.P866141225542973940

`A131234(n+1)-A003849(A304321(n+1))`
-/

namespace A378760.P866141225542973940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (n + 1) - A003849 (A304321 (n + 1)).toNat

end

end A378760.P866141225542973940

/-! ## A378760.P11788076033761823623

`A084558(A073133(n+1)*A286272(n+1))`
-/

namespace A378760.P11788076033761823623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A073133 (n + 1) * A286272 (n + 1)).toNat

end

end A378760.P11788076033761823623

/-!
# A378762: a(n) = A378200(A378200(A378200(n))).

The programs for A378762, the canonical program `A378762.P3404448250858099609` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378762 has offset 1).

The definition of A378762 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378762.P3404448250858099609

`A378200(A378200(A378200(n+1)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A378762

/-- `A378200(A378200(A378200(n+1)))` -/
def P3404448250858099609.Spec : Prop :=
  ∀ n, P3404448250858099609.a n = A378762 (n + 1)

theorem P3404448250858099609.correct : P3404448250858099609.Spec := by
  intro n
  simp only [A378762, Nat.add_sub_cancel]

end A378762

/-! ## A378762.P8217167705620940780

`A380817(A056023(n+1))`
-/

namespace A378762.P8217167705620940780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A056023 (n + 1)).toNat

end

end A378762.P8217167705620940780

namespace A378762

/-- `A380817(A056023(n+1))` -/
def P8217167705620940780.Spec : Prop :=
  ∀ n, P8217167705620940780.a n = A378762 (n + 1)

end A378762

/-! ## A378762.P8169969201475868905

`A378684(A378200(n+1))`
-/

namespace A378762.P8169969201475868905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A378200 (n + 1)).toNat

end

end A378762.P8169969201475868905

namespace A378762

/-- `A378684(A378200(n+1))` -/
def P8169969201475868905.Spec : Prop :=
  ∀ n, P8169969201475868905.a n = A378762 (n + 1)

end A378762

/-! ## A378762.P1389004713214221889

`A379342(A378705(n+1))`
-/

namespace A378762.P1389004713214221889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A378705 (n + 1)).toNat

end

end A378762.P1389004713214221889

namespace A378762

/-- `A379342(A378705(n+1))` -/
def P1389004713214221889.Spec : Prop :=
  ∀ n, P1389004713214221889.a n = A378762 (n + 1)

end A378762

/-! ## A378762.P10239394817076470723

`A383723(A376214(n+1))`
-/

namespace A378762.P10239394817076470723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A376214 (n + 1)).toNat

end

end A378762.P10239394817076470723

namespace A378762

/-- `A383723(A376214(n+1))` -/
def P10239394817076470723.Spec : Prop :=
  ∀ n, P10239394817076470723.a n = A378762 (n + 1)

end A378762

/-! ## A378762.P7287731751343069817

`A383589(A381662(n+1))`
-/

namespace A378762.P7287731751343069817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A381662 (n + 1)).toNat

end

end A378762.P7287731751343069817

namespace A378762

/-- `A383589(A381662(n+1))` -/
def P7287731751343069817.Spec : Prop :=
  ∀ n, P7287731751343069817.a n = A378762 (n + 1)

end A378762

/-! ## A378762.P5630642380491180106

`A383590(A381968(n+1))`
-/

namespace A378762.P5630642380491180106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383590 (A381968 (n + 1)).toNat

end

end A378762.P5630642380491180106

namespace A378762

/-- `A383590(A381968(n+1))` -/
def P5630642380491180106.Spec : Prop :=
  ∀ n, P5630642380491180106.a n = A378762 (n + 1)

end A378762

/-! ## A378762.P3752271889551885714

`A383419(A382499(n+1))`
-/

namespace A378762.P3752271889551885714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383419 (A382499 (n + 1)).toNat

end

end A378762.P3752271889551885714

namespace A378762

/-- `A383419(A382499(n+1))` -/
def P3752271889551885714.Spec : Prop :=
  ∀ n, P3752271889551885714.a n = A378762 (n + 1)

end A378762

/-! ## A378762.P6744697497165034337

`A383724(A382679(n+1))`
-/

namespace A378762.P6744697497165034337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383724 (A382679 (n + 1)).toNat

end

end A378762.P6744697497165034337

namespace A378762

/-- `A383724(A382679(n+1))` -/
def P6744697497165034337.Spec : Prop :=
  ∀ n, P6744697497165034337.a n = A378762 (n + 1)

end A378762

/-! ## A378762.P6093237580173252501

`A383722(A382680(n+1))`
-/

namespace A378762.P6093237580173252501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383722 (A382680 (n + 1)).toNat

end

end A378762.P6093237580173252501

namespace A378762

/-- `A383722(A382680(n+1))` -/
def P6093237580173252501.Spec : Prop :=
  ∀ n, P6093237580173252501.a n = A378762 (n + 1)

end A378762

/-! ## A378762.P12851089371853878226

`A064789(A056011(A057027(n+1)))`
-/

namespace A378762.P12851089371853878226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A056011 (A057027 (n + 1)).toNat).toNat

end

end A378762.P12851089371853878226

namespace A378762

/-- `A064789(A056011(A057027(n+1)))` -/
def P12851089371853878226.Spec : Prop :=
  ∀ n, P12851089371853878226.a n = A378762 (n + 1)

end A378762

/-! ## A378762.P16357318451730848874

`A056023(A380245(A378684(n+1)))`
-/

namespace A378762.P16357318451730848874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A380245 (A378684 (n + 1)).toNat).toNat

end

end A378762.P16357318451730848874

namespace A378762

/-- `A056023(A380245(A378684(n+1)))` -/
def P16357318451730848874.Spec : Prop :=
  ∀ n, P16357318451730848874.a n = A378762 (n + 1)

end A378762

/-! ## A378762.P10295168528672445460

`A056023(A381664(A380200(n+1)))`
-/

namespace A378762.P10295168528672445460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A381664 (A380200 (n + 1)).toNat).toNat

end

end A378762.P10295168528672445460

namespace A378762

/-- `A056023(A381664(A380200(n+1)))` -/
def P10295168528672445460.Spec : Prop :=
  ∀ n, P10295168528672445460.a n = A378762 (n + 1)

end A378762

/-! ## A378762.P10483659157049270865

`A376214(A378705(A380245(n+1)))`
-/

namespace A378762.P10483659157049270865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A378705 (A380245 (n + 1)).toNat).toNat

end

end A378762.P10483659157049270865

namespace A378762

/-- `A376214(A378705(A380245(n+1)))` -/
def P10483659157049270865.Spec : Prop :=
  ∀ n, P10483659157049270865.a n = A378762 (n + 1)

end A378762

/-! ## A378762.P14493484695347909414

`A383589(A376214(A380817(n+1)))`
-/

namespace A378762.P14493484695347909414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A376214 (A380817 (n + 1)).toNat).toNat

end

end A378762.P14493484695347909414

namespace A378762

/-- `A383589(A376214(A380817(n+1)))` -/
def P14493484695347909414.Spec : Prop :=
  ∀ n, P14493484695347909414.a n = A378762 (n + 1)

end A378762

/-! ## A378762.P10128393701816914515

`A376214(A381968(A383722(n+1)))`
-/

namespace A378762.P10128393701816914515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A381968 (A383722 (n + 1)).toNat).toNat

end

end A378762.P10128393701816914515

namespace A378762

/-- `A376214(A381968(A383722(n+1)))` -/
def P10128393701816914515.Spec : Prop :=
  ∀ n, P10128393701816914515.a n = A378762 (n + 1)

end A378762

/-! ## A378762.P17071252887779398715

`A381968(A376214(A383724(n+1)))`
-/

namespace A378762.P17071252887779398715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A376214 (A383724 (n + 1)).toNat).toNat

end

end A378762.P17071252887779398715

namespace A378762

/-- `A381968(A376214(A383724(n+1)))` -/
def P17071252887779398715.Spec : Prop :=
  ∀ n, P17071252887779398715.a n = A378762 (n + 1)

end A378762

/-!
# A378763: Lower matching number for the n X n torus grid graph.

The programs for A378763, there is no canonical definition to state claims against.
-/

/-! ## A378763.P4645754331870303949

`∑[A333257(floor(A010060(n+3)+ϕ^n))+1]`
-/

namespace A378763.P4645754331870303949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333257 ⌊(A010060 (n + 3) : ℝ) + Real.goldenRatio ^ n⌋.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378763.P4645754331870303949

/-! ## A378763.P5700321086447970716

`A366386(A325617(n))+A211265(2*(n+2))`
-/

namespace A378763.P5700321086447970716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366386 (A325617 n).toNat + A211265 (2 * (n + 2))

end

end A378763.P5700321086447970716

/-! ## A378763.P9492531947623322193

`A083889(A119016(2*(n+2)))+A008810(n+3)`
-/

namespace A378763.P9492531947623322193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083889 (A119016 (2 * (n + 2))).toNat + A008810 (n + 3)

end

end A378763.P9492531947623322193

/-! ## A378763.P6054724312564818483

`A083544(A049806(2*n+3)+A008967(n+4))`
-/

namespace A378763.P6054724312564818483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083544 (A049806 (2 * n + 3) + A008967 (n + 4)).toNat

end

end A378763.P6054724312564818483

/-! ## A378763.P4797853867005273349

`∑[A138096(A134344(n+1))+1]`
-/

namespace A378763.P4797853867005273349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138096 (A134344 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378763.P4797853867005273349

/-!
# A378764: Sum of the semiprimes which are less than or equal to n minus the sum of the primes which are less than or equal to n.

The programs for A378764, there is no canonical definition to state claims against.
-/

/-! ## A378764.P17183569461744973389

`A140234(n+1)-A034387(n+1)`
-/

namespace A378764.P17183569461744973389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140234 (n + 1) - A034387 (n + 1)

end

end A378764.P17183569461744973389

/-!
# A378765: (Exponent of the highest power of 2 that divides n!), reduced modulo 10.

The programs for A378765, the canonical program `A378765.P15192029574522423943` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378765 has offset 0).

The definition of A378765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378765.P15192029574522423943

`(a(n-1)+val(n, 2))%10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A378765

/-- `(a(n-1)+val(n, 2))%10` -/
def P15192029574522423943.Spec : Prop :=
  ∀ n, (P15192029574522423943.a n : ℤ) = A378765 n

theorem P15192029574522423943.correct : P15192029574522423943.Spec := by
  intro n
  simp only [A378765]

end A378765

/-! ## A378765.P1529449060136688071

`A011371(n)%10`
-/

namespace A378765.P1529449060136688071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011371 n) 10

end

end A378765.P1529449060136688071

namespace A378765

/-- `A011371(n)%10` -/
def P1529449060136688071.Spec : Prop :=
  ∀ n, P1529449060136688071.a n = A378765 n

end A378765

/-! ## A378765.P3167035632382332558

`A227361(or(1, n))%10`
-/

namespace A378765.P3167035632382332558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227361 (Nat.lor 1 n)) 10

end

end A378765.P3167035632382332558

namespace A378765

/-- `A227361(or(1, n))%10` -/
def P3167035632382332558.Spec : Prop :=
  ∀ n, P3167035632382332558.a n = A378765 n

end A378765

/-! ## A378765.P14503438472939743476

`(n-A000120(n))%10`
-/

namespace A378765.P14503438472939743476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A000120 n) 10

end

end A378765.P14503438472939743476

namespace A378765

/-- `(n-A000120(n))%10` -/
def P14503438472939743476.Spec : Prop :=
  ∀ n, P14503438472939743476.a n = A378765 n

end A378765

/-! ## A378765.P13667294821100931432

`(A005187(n)-n)%10`
-/

namespace A378765.P13667294821100931432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 n - (n : ℤ)) 10

end

end A378765.P13667294821100931432

namespace A378765

/-- `(A005187(n)-n)%10` -/
def P13667294821100931432.Spec : Prop :=
  ∀ n, P13667294821100931432.a n = A378765 n

end A378765

/-! ## A378765.P13523133756002721676

`A005187(floor(n/2))%10`
-/

namespace A378765.P13523133756002721676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 ⌊(n : ℚ) / 2⌋.toNat) 10

end

end A378765.P13523133756002721676

namespace A378765

/-- `A005187(floor(n/2))%10` -/
def P13523133756002721676.Spec : Prop :=
  ∀ n, P13523133756002721676.a n = A378765 n

end A378765

/-! ## A378765.P15227257538267836028

`A010879(n-(∑[1-∑{e}[or(n, -n), #]]-1))`
-/

namespace A378765.P15227257538267836028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A378765.P15227257538267836028

namespace A378765

/-- `A010879(n-(∑[1-∑{e}[or(n, -n), #]]-1))` -/
def P15227257538267836028.Spec : Prop :=
  ∀ n, P15227257538267836028.a n = A378765 n

end A378765

/-! ## A378765.P13615128564175265553

`A010879(A011371(n))`
-/

namespace A378765.P13615128564175265553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A011371 n).toNat

end

end A378765.P13615128564175265553

namespace A378765

/-- `A010879(A011371(n))` -/
def P13615128564175265553.Spec : Prop :=
  ∀ n, P13615128564175265553.a n = A378765 n

end A378765

/-! ## A378765.P9163533608988121769

`A010879(n-A000120(n))`
-/

namespace A378765.P9163533608988121769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((n : ℤ) - A000120 n).toNat

end

end A378765.P9163533608988121769

namespace A378765

/-- `A010879(n-A000120(n))` -/
def P9163533608988121769.Spec : Prop :=
  ∀ n, P9163533608988121769.a n = A378765 n

end A378765

/-! ## A378765.P9187366788651419379

`val(n!, 2)%10`
-/

namespace A378765.P9187366788651419379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial n) 2 % 10

end

end A378765.P9187366788651419379

namespace A378765

/-- `val(n!, 2)%10` -/
def P9187366788651419379.Spec : Prop :=
  ∀ n, (P9187366788651419379.a n : ℤ) = A378765 n

end A378765

/-!
# A378767: Numbers k that are not prime powers which are divisible by a cube greater than 1.

The programs for A378767, the canonical program `A378767.P14747477378798876079` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378767 has offset 1).

The definition of A378767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9962 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378767.P14747477378798876079

`filter[A046099(n+1), A355447(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A378767

/-- `filter[A046099(n+1), A355447(#)]` -/
def P14747477378798876079.Spec : Prop :=
  ∀ n, P14747477378798876079.a n = A378767 (n + 1)

theorem P14747477378798876079.correct : P14747477378798876079.Spec := by
  intro n
  simp only [A378767, Nat.add_sub_cancel]

end A378767

/-! ## A378767.P7060154522136656964

`∩[A046099(n+1), A378878(n+1)]`
-/

namespace A378767.P7060154522136656964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378767.P7060154522136656964

namespace A378767

/-- `∩[A046099(n+1), A378878(n+1)]` -/
def P7060154522136656964.Spec : Prop :=
  ∀ n, (P7060154522136656964.a n : ℤ) = A378767 (n + 1)

end A378767

/-! ## A378767.P9690126879274010086

`∩[A046099(n+1), A393201(n+1)]`
-/

namespace A378767.P9690126879274010086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378767.P9690126879274010086

namespace A378767

/-- `∩[A046099(n+1), A393201(n+1)]` -/
def P9690126879274010086.Spec : Prop :=
  ∀ n, (P9690126879274010086.a n : ℤ) = A378767 (n + 1)

end A378767

/-! ## A378767.P1287507913506189405

`∩[A046099(n+1), A379336(n+1)]`
-/

namespace A378767.P1287507913506189405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378767.P1287507913506189405

namespace A378767

/-- `∩[A046099(n+1), A379336(n+1)]` -/
def P1287507913506189405.Spec : Prop :=
  ∀ n, (P1287507913506189405.a n : ℤ) = A378767 (n + 1)

end A378767

/-! ## A378767.P17447328954565303169

`∩[A046099(n+1), A376271(n+1)]`
-/

namespace A378767.P17447328954565303169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378767.P17447328954565303169

namespace A378767

/-- `∩[A046099(n+1), A376271(n+1)]` -/
def P17447328954565303169.Spec : Prop :=
  ∀ n, (P17447328954565303169.a n : ℤ) = A378767 (n + 1)

end A378767

/-! ## A378767.P18295800112490104568

`∩[A046099(n+1), A126706(n+1)]`
-/

namespace A378767.P18295800112490104568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378767.P18295800112490104568

namespace A378767

/-- `∩[A046099(n+1), A126706(n+1)]` -/
def P18295800112490104568.Spec : Prop :=
  ∀ n, (P18295800112490104568.a n : ℤ) = A378767 (n + 1)

end A378767

/-! ## A378767.P13749700142090959619

`∩[A046099(n+1), A376384(n+1)]`
-/

namespace A378767.P13749700142090959619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378767.P13749700142090959619

namespace A378767

/-- `∩[A046099(n+1), A376384(n+1)]` -/
def P13749700142090959619.Spec : Prop :=
  ∀ n, (P13749700142090959619.a n : ℤ) = A378767 (n + 1)

end A378767

/-! ## A378767.P15799932735739234389

`∩[A046099(n+1), A158871(n+1)]`
-/

namespace A378767.P15799932735739234389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378767.P15799932735739234389

namespace A378767

/-- `∩[A046099(n+1), A158871(n+1)]` -/
def P15799932735739234389.Spec : Prop :=
  ∀ n, (P15799932735739234389.a n : ℤ) = A378767 (n + 1)

end A378767

/-! ## A378767.P9903212039892150741

`∩[A024619(n+1), A046099(n+1)]`
-/

namespace A378767.P9903212039892150741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378767.P9903212039892150741

namespace A378767

/-- `∩[A024619(n+1), A046099(n+1)]` -/
def P9903212039892150741.Spec : Prop :=
  ∀ n, (P9903212039892150741.a n : ℤ) = A378767 (n + 1)

end A378767

/-! ## A378767.P4631463174295647929

`∩[A046099(n+1), A361102(n+1)]`
-/

namespace A378767.P4631463174295647929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378767.P4631463174295647929

namespace A378767

/-- `∩[A046099(n+1), A361102(n+1)]` -/
def P4631463174295647929.Spec : Prop :=
  ∀ n, (P4631463174295647929.a n : ℤ) = A378767 (n + 1)

end A378767

/-! ## A378767.P998835208870133217

`∩[A046099(n+1), A387335(n+1)]`
-/

namespace A378767.P998835208870133217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378767.P998835208870133217

namespace A378767

/-- `∩[A046099(n+1), A387335(n+1)]` -/
def P998835208870133217.Spec : Prop :=
  ∀ n, (P998835208870133217.a n : ℤ) = A378767 (n + 1)

end A378767

/-! ## A378767.P17500850414211786395

`∩[A046099(n+1), A085971(n+1)]`
-/

namespace A378767.P17500850414211786395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378767.P17500850414211786395

namespace A378767

/-- `∩[A046099(n+1), A085971(n+1)]` -/
def P17500850414211786395.Spec : Prop :=
  ∀ n, (P17500850414211786395.a n : ℤ) = A378767 (n + 1)

end A378767

/-! ## A378767.P17238123993213238369

`filter[A046099(n+1), A143731(#)]`
-/

namespace A378767.P17238123993213238369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A378767.P17238123993213238369

namespace A378767

/-- `filter[A046099(n+1), A143731(#)]` -/
def P17238123993213238369.Spec : Prop :=
  ∀ n, P17238123993213238369.a n = A378767 (n + 1)

end A378767

/-! ## A378767.P5903156203161623665

`∩[A046099(n+1), A102467(n+1)]`
-/

namespace A378767.P5903156203161623665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378767.P5903156203161623665

namespace A378767

/-- `∩[A046099(n+1), A102467(n+1)]` -/
def P5903156203161623665.Spec : Prop :=
  ∀ n, (P5903156203161623665.a n : ℤ) = A378767 (n + 1)

end A378767

/-! ## A378767.P5757878569843207791

`∩[A046099(n+1), A324455(n+1)]`
-/

namespace A378767.P5757878569843207791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378767.P5757878569843207791

namespace A378767

/-- `∩[A046099(n+1), A324455(n+1)]` -/
def P5757878569843207791.Spec : Prop :=
  ∀ n, (P5757878569843207791.a n : ℤ) = A378767 (n + 1)

end A378767

/-!
# A378768: Squares of powerful numbers that are not prime powers.

The programs for A378768, there is no canonical definition to state claims against.
-/

/-! ## A378768.P14933364160150953993

`A286708(n+1)²`
-/

namespace A378768.P14933364160150953993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1) ^ 2

end

end A378768.P14933364160150953993

/-! ## A378768.P14688964208442345831

`(A365786(n+1)*A365787(n+1))²`
-/

namespace A378768.P14688964208442345831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A365786 (n + 1) * A365787 (n + 1)) ^ 2

end

end A378768.P14688964208442345831

/-! ## A378768.P18438292210376602471

`∪[A177492(n+1), A372404(n+1)]²`
-/

namespace A378768.P18438292210376602471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A378768.P18438292210376602471

/-! ## A378768.P11357896109365539708

`∪[A303606(n+1), A359280(n+1)]²`
-/

namespace A378768.P11357896109365539708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A378768.P11357896109365539708

/-! ## A378768.P14549182053765059510

`∪[A303606(n+1), A372404(n+1)]²`
-/

namespace A378768.P14549182053765059510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A378768.P14549182053765059510

/-! ## A378768.P18265361966710765083

`∪[A363216(n+1), A363217(n+1)]²`
-/

namespace A378768.P18265361966710765083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A378768.P18265361966710765083

/-! ## A378768.P14784324295254012585

`∪[A363169(n+1), A369417(n+1)]²`
-/

namespace A378768.P14784324295254012585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A378768.P14784324295254012585

/-! ## A378768.P5475596434536550561

`∪[A363216(n+1), A369417(n+1)]²`
-/

namespace A378768.P5475596434536550561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A378768.P5475596434536550561

/-! ## A378768.P5179279982929392685

`∪[A363169(n+1), A369636(n+1)]²`
-/

namespace A378768.P5179279982929392685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A378768.P5179279982929392685

/-! ## A378768.P6291890792293229741

`∪[A363216(n+1), A369636(n+1)]²`
-/

namespace A378768.P6291890792293229741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A378768.P6291890792293229741

/-! ## A378768.P5340166280332219522

`∪[A364930(n+1), A369636(n+1)]²`
-/

namespace A378768.P5340166280332219522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A378768.P5340166280332219522

/-! ## A378768.P8173088200940129424

`A286708(n+1)*A365786(n+1)*A365787(n+1)`
-/

namespace A378768.P8173088200940129424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1) * A365786 (n + 1) * A365787 (n + 1)

end

end A378768.P8173088200940129424

/-! ## A378768.P612677239402197683

`(A286708(n+2)-A358173(n+1))*A286708(n+1)`
-/

namespace A378768.P612677239402197683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A286708 (n + 2) - A358173 (n + 1)) * A286708 (n + 1)

end

end A378768.P612677239402197683

/-! ## A378768.P2107169240637123205

`∩[A001694(n+1), A370266(n+1)]²`
-/

namespace A378768.P2107169240637123205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A378768.P2107169240637123205

/-! ## A378768.P4787743505388001152

`∩[A372841(n+1), A374291(n+1)]`
-/

namespace A378768.P4787743505388001152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378768.P4787743505388001152

/-! ## A378768.P16264103655411667841

`∩[A374291(n+1), A387255(n+1)]`
-/

namespace A378768.P16264103655411667841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378768.P16264103655411667841

/-! ## A378768.P8501230054820311778

`∩[A036967(n+1), A378900(n+1)]`
-/

namespace A378768.P8501230054820311778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378768.P8501230054820311778

/-! ## A378768.P10514902045203107457

`∩[A322449(n+1), A378900(n+1)]`
-/

namespace A378768.P10514902045203107457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378768.P10514902045203107457

/-! ## A378768.P8487509902568306679

`∩[A370787(n+1), A378900(n+1)]`
-/

namespace A378768.P8487509902568306679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378768.P8487509902568306679

/-! ## A378768.P2180806284294192633

`∩[A371011(n+1), A378900(n+1)]`
-/

namespace A378768.P2180806284294192633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378768.P2180806284294192633

/-!
# A378769: Intersection of A375055 and A376936.

The programs for A378769, there is no canonical definition to state claims against.
-/

/-! ## A378769.P3216941848675711093

`∩[A376936(n+1), A395197(n+1)]`
-/

namespace A378769.P3216941848675711093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378769.P3216941848675711093

/-! ## A378769.P5379664066262987256

`∩[A376936(n+1), A390950(n+1)]`
-/

namespace A378769.P5379664066262987256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378769.P5379664066262987256

/-! ## A378769.P14404182284276020755

`∩[A318720(n+1), A376936(n+1)]`
-/

namespace A378769.P14404182284276020755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378769.P14404182284276020755

/-! ## A378769.P14008177592912775671

`∩[A390950(n+1), A391968(n+1)]`
-/

namespace A378769.P14008177592912775671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378769.P14008177592912775671

/-! ## A378769.P113427617383061153

`∩[A391968(n+1), A395197(n+1)]`
-/

namespace A378769.P113427617383061153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378769.P113427617383061153

/-!
# A378772: Number of weakly decreasing sequences of positive integers [p1, p2, ..., p_k] satisfying n = (1 + p1*(1 + p2*(... (1 + p_k) ...))).

The programs for A378772, there is no canonical definition to state claims against.
-/

/-! ## A378772.P16488439685295467606

`A038548(xor(n², A277928(n)))`
-/

namespace A378772.P16488439685295467606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (Int.xor (n ^ 2 : ℤ) (A277928 n)).toNat

end

end A378772.P16488439685295467606

/-!
# A378774: Prime numbers with monotonically increasing digits, increasing by only 0 or 1.

The programs for A378774, there is no canonical definition to state claims against.
-/

/-! ## A378774.P2539144572181196159

`∩[A028864(n+1), A378949(n+1)]`
-/

namespace A378774.P2539144572181196159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378774.P2539144572181196159

/-! ## A378774.P12075862652087058952

`∩[A068148(n+1), A378949(n+1)]`
-/

namespace A378774.P12075862652087058952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378774.P12075862652087058952

/-! ## A378774.P11742588839546829082

`∩[A028864(n+1), A032981(n+1)]`
-/

namespace A378774.P11742588839546829082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378774.P11742588839546829082

/-! ## A378774.P11300886602929668010

`∩[A028864(n+1), A376425(n+1)]`
-/

namespace A378774.P11300886602929668010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378774.P11300886602929668010

/-! ## A378774.P11487033792320677738

`∩[A028864(n+1), A068148(n+1)]`
-/

namespace A378774.P11487033792320677738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378774.P11487033792320677738

/-!
# A378775: Prime numbers with monotonically decreasing digits, differing by at most 1.

The programs for A378775, there is no canonical definition to state claims against.
-/

/-! ## A378775.P10356836179964853441

`∩[A028867(n+1), A032981(n+1)]`
-/

namespace A378775.P10356836179964853441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378775.P10356836179964853441

/-! ## A378775.P15319825699490219013

`∩[A028867(n+1), A376425(n+1)]`
-/

namespace A378775.P15319825699490219013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378775.P15319825699490219013

/-! ## A378775.P12099012453825236698

`∩[A028867(n+1), A068148(n+1)]`
-/

namespace A378775.P12099012453825236698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378775.P12099012453825236698

/-! ## A378775.P10600924788542579858

`∩[A068148(n+1), A190220(n+1)]`
-/

namespace A378775.P10600924788542579858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378775.P10600924788542579858

/-! ## A378775.P12016817015640762282

`∩[A028867(n+1), A134336(n+1)]`
-/

namespace A378775.P12016817015640762282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378775.P12016817015640762282

/-!
# A378776: Lexicographically earliest sequence of positive integers such that each multiset enclosed by a pair of equal terms, including the endpoints, is distinct.

The programs for A378776, there is no canonical definition to state claims against.
-/

/-! ## A378776.P6485404678766633424

`A002033(A185284(2*n))*A366493(n+1)`
-/

namespace A378776.P6485404678766633424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A185284 (2 * n)).toNat * A366493 (n + 1)

end

end A378776.P6485404678766633424

/-! ## A378776.P6517855047567756509

`A366493(n+1)*A367931(A377434(3*n+1))`
-/

namespace A378776.P6517855047567756509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366493 (n + 1) * A367931 (A377434 (3 * n + 1)).toNat

end

end A378776.P6517855047567756509

/-!
# A378777: a(n) = n^2 * binomial(3*n, n).

The programs for A378777, the canonical program `A378777.P17573353302366903639` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378777 has offset 0).

The definition of A378777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378777.P17573353302366903639

`n²*A005809(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A378777

/-- `n²*A005809(n)` -/
def P17573353302366903639.Spec : Prop :=
  ∀ n, P17573353302366903639.a n = A378777 n

theorem P17573353302366903639.correct : P17573353302366903639.Spec := by
  intro n
  simp only [A378777]

end A378777

/-! ## A378777.P5874037570301281962

`n²*A119301(∑[n])`
-/

namespace A378777.P5874037570301281962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A119301 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378777.P5874037570301281962

namespace A378777

/-- `n²*A119301(∑[n])` -/
def P5874037570301281962.Spec : Prop :=
  ∀ n, P5874037570301281962.a n = A378777 n

end A378777

/-! ## A378777.P13568791223004526344

`n²*A264772(∑[n])`
-/

namespace A378777.P13568791223004526344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A264772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378777.P13568791223004526344

namespace A378777

/-- `n²*A264772(∑[n])` -/
def P13568791223004526344.Spec : Prop :=
  ∀ n, P13568791223004526344.a n = A378777 n

end A378777

/-! ## A378777.P17017477921406957123

`n²*record[A119301(n)]`
-/

namespace A378777.P17017477921406957123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378777.P17017477921406957123

namespace A378777

/-- `n²*record[A119301(n)]` -/
def P17017477921406957123.Spec : Prop :=
  ∀ n, P17017477921406957123.a n = A378777 n

end A378777

/-! ## A378777.P10116401203146827479

`n²*record[A264772(n)]`
-/

namespace A378777.P10116401203146827479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378777.P10116401203146827479

namespace A378777

/-- `n²*record[A264772(n)]` -/
def P10116401203146827479.Spec : Prop :=
  ∀ n, P10116401203146827479.a n = A378777 n

end A378777

/-! ## A378777.P1385306013237707901

`n²*record[A344503(n)]`
-/

namespace A378777.P1385306013237707901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378777.P1385306013237707901

namespace A378777

/-- `n²*record[A344503(n)]` -/
def P1385306013237707901.Spec : Prop :=
  ∀ n, P1385306013237707901.a n = A378777 n

end A378777

/-! ## A378777.P3054347974220962015

`n²*A065942(2*n)`
-/

namespace A378777.P3054347974220962015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A065942 (2 * n)

end

end A378777.P3054347974220962015

namespace A378777

/-- `n²*A065942(2*n)` -/
def P3054347974220962015.Spec : Prop :=
  ∀ n, P3054347974220962015.a n = A378777 n

end A378777

/-! ## A378777.P17436499972618698547

`n²*A081204(2*n)`
-/

namespace A378777.P17436499972618698547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A081204 (2 * n)

end

end A378777.P17436499972618698547

namespace A378777

/-- `n²*A081204(2*n)` -/
def P17436499972618698547.Spec : Prop :=
  ∀ n, P17436499972618698547.a n = A378777 n

end A378777

/-! ## A378777.P3694685633547874405

`n²*A303259(2*n+1)`
-/

namespace A378777.P3694685633547874405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A303259 (2 * n + 1)

end

end A378777.P3694685633547874405

namespace A378777

/-- `n²*A303259(2*n+1)` -/
def P3694685633547874405.Spec : Prop :=
  ∀ n, P3694685633547874405.a n = A378777 n

end A378777

/-! ## A378777.P12213858447791643124

`n²*A051033(A008585(n))`
-/

namespace A378777.P12213858447791643124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A051033 (A008585 n).toNat

end

end A378777.P12213858447791643124

namespace A378777

/-- `n²*A051033(A008585(n))` -/
def P12213858447791643124.Spec : Prop :=
  ∀ n, P12213858447791643124.a n = A378777 n

end A378777

/-! ## A378777.P2055507742372254370

`n*A000217(n)*A007226(n)`
-/

namespace A378777.P2055507742372254370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000217 n * A007226 n)

end

end A378777.P2055507742372254370

namespace A378777

/-- `n*A000217(n)*A007226(n)` -/
def P2055507742372254370.Spec : Prop :=
  ∀ n, P2055507742372254370.a n = A378777 n

end A378777

/-! ## A378777.P2802277587324686937

`A001105(n)*A005809(n)/2`
-/

namespace A378777.P2802277587324686937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001105 n * A005809 n : ℚ) / 2

end

end A378777.P2802277587324686937

namespace A378777

/-- `A001105(n)*A005809(n)/2` -/
def P2802277587324686937.Spec : Prop :=
  ∀ n, P2802277587324686937.a n = (A378777 n : ℚ)

end A378777

/-! ## A378777.P5624418627030605744

`n²*A269956(∑[n])`
-/

namespace A378777.P5624418627030605744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A269956 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378777.P5624418627030605744

namespace A378777

/-- `n²*A269956(∑[n])` -/
def P5624418627030605744.Spec : Prop :=
  ∀ n, P5624418627030605744.a n = A378777 n

end A378777

/-! ## A378777.P5948531447088173051

`n²*C(3*n, n)`
-/

namespace A378777.P5948531447088173051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * Nat.choose (3 * n) n

end

end A378777.P5948531447088173051

namespace A378777

/-- `n²*C(3*n, n)` -/
def P5948531447088173051.Spec : Prop :=
  ∀ n, (P5948531447088173051.a n : ℤ) = A378777 n

end A378777

/-! ## A378777.P9412882564116891841

`n*n*C(3*n, n)`
-/

namespace A378777.P9412882564116891841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n * Nat.choose (3 * n) n)

end

end A378777.P9412882564116891841

namespace A378777

/-- `n*n*C(3*n, n)` -/
def P9412882564116891841.Spec : Prop :=
  ∀ n, (P9412882564116891841.a n : ℤ) = A378777 n

end A378777

/-!
# A378778: a(n) = n^2 * 2^n * binomial(3*n, n).

The programs for A378778, the canonical program `A378778.P3667161725199278276` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378778 has offset 0).

The definition of A378778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378778.P16795928024949359093

`n*A378780(n)`
-/

namespace A378778.P16795928024949359093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A378780 n

end

end A378778.P16795928024949359093

namespace A378778

/-- `n*A378780(n)` -/
def P16795928024949359093.Spec : Prop :=
  ∀ n, P16795928024949359093.a n = A378778 n

end A378778

/-! ## A378778.P3667161725199278276

`n²*A228484(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A378778

/-- `n²*A228484(n)` -/
def P3667161725199278276.Spec : Prop :=
  ∀ n, P3667161725199278276.a n = A378778 n

theorem P3667161725199278276.correct : P3667161725199278276.Spec := by
  intro n
  simp only [A378778]

end A378778

/-! ## A378778.P10135147287558092363

`A007758(n)*A005809(n)`
-/

namespace A378778.P10135147287558092363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 n * A005809 n

end

end A378778.P10135147287558092363

namespace A378778

/-- `A007758(n)*A005809(n)` -/
def P10135147287558092363.Spec : Prop :=
  ∀ n, P10135147287558092363.a n = A378778 n

end A378778

/-! ## A378778.P13685736968074159196

`n²*A128099(A033954(n))`
-/

namespace A378778.P13685736968074159196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A128099 (A033954 n).toNat

end

end A378778.P13685736968074159196

namespace A378778

/-- `n²*A128099(A033954(n))` -/
def P13685736968074159196.Spec : Prop :=
  ∀ n, P13685736968074159196.a n = A378778 n

end A378778

/-! ## A378778.P5372548940043875330

`n²*A013609(A062725(n))`
-/

namespace A378778.P5372548940043875330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A013609 (A062725 n).toNat

end

end A378778.P5372548940043875330

namespace A378778

/-- `n²*A013609(A062725(n))` -/
def P5372548940043875330.Spec : Prop :=
  ∀ n, P5372548940043875330.a n = A378778 n

end A378778

/-!
# A378779: a(n) = n^2 * 4^n * binomial(3*n, n).

The programs for A378779, the canonical program `A378779.P3225827329424791518` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378779 has offset 0).

The definition of A378779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378779.P3225827329424791518

`n²*A006588(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A378779

/-- `n²*A006588(n)` -/
def P3225827329424791518.Spec : Prop :=
  ∀ n, P3225827329424791518.a n = A378779 n

theorem P3225827329424791518.correct : P3225827329424791518.Spec := by
  intro n
  simp only [A378779]

end A378779

/-! ## A378779.P6599619030829207171

`A128782(n)*A005809(n)`
-/

namespace A378779.P6599619030829207171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128782 n * A005809 n

end

end A378779.P6599619030829207171

namespace A378779

/-- `A128782(n)*A005809(n)` -/
def P6599619030829207171.Spec : Prop :=
  ∀ n, P6599619030829207171.a n = A378779 n

end A378779

/-! ## A378779.P210636778654062953

`A036289(n)*A378780(n)`
-/

namespace A378779.P210636778654062953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n * A378780 n

end

end A378779.P210636778654062953

namespace A378779

/-- `A036289(n)*A378780(n)` -/
def P210636778654062953.Spec : Prop :=
  ∀ n, P210636778654062953.a n = A378779 n

end A378779

/-! ## A378779.P14625703861533447066

`A134401(n)*A378780(n)`
-/

namespace A378779.P14625703861533447066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134401 n * A378780 n

end

end A378779.P14625703861533447066

namespace A378779

/-- `A134401(n)*A378780(n)` -/
def P14625703861533447066.Spec : Prop :=
  ∀ n, P14625703861533447066.a n = A378779 n

end A378779

/-! ## A378779.P10664304479674839022

`A378780(n)/A005809(n)*A378780(n)`
-/

namespace A378779.P10664304479674839022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378780 n : ℚ) / (A005809 n : ℚ) * (A378780 n : ℚ)

end

end A378779.P10664304479674839022

namespace A378779

/-- `A378780(n)/A005809(n)*A378780(n)` -/
def P10664304479674839022.Spec : Prop :=
  ∀ n, P10664304479674839022.a n = (A378779 n : ℚ)

end A378779

/-!
# A378780: a(n) = n * 2^n * binomial(3*n, n).

The programs for A378780, the canonical program `A378780.P13564199033729833604` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378780 has offset 0).

The definition of A378780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378780.P13564199033729833604

`n*A228484(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A378780

/-- `n*A228484(n)` -/
def P13564199033729833604.Spec : Prop :=
  ∀ n, P13564199033729833604.a n = A378780 n

theorem P13564199033729833604.correct : P13564199033729833604.Spec := by
  intro n
  simp only [A378780]

end A378780

/-! ## A378780.P16167765398329929653

`A036289(n)*A005809(n)`
-/

namespace A378780.P16167765398329929653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n * A005809 n

end

end A378780.P16167765398329929653

namespace A378780

/-- `A036289(n)*A005809(n)` -/
def P16167765398329929653.Spec : Prop :=
  ∀ n, P16167765398329929653.a n = A378780 n

end A378780

/-! ## A378780.P16203728357437283692

`n*lcm(A005809(n), A153231(n))`
-/

namespace A378780.P16203728357437283692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.lcm (A005809 n) (A153231 n)

end

end A378780.P16203728357437283692

namespace A378780

/-- `n*lcm(A005809(n), A153231(n))` -/
def P16203728357437283692.Spec : Prop :=
  ∀ n, (P16203728357437283692.a n : ℤ) = A378780 n

end A378780

/-! ## A378780.P14429559557207336147

`n*A128099(A033954(n))`
-/

namespace A378780.P14429559557207336147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A128099 (A033954 n).toNat

end

end A378780.P14429559557207336147

namespace A378780

/-- `n*A128099(A033954(n))` -/
def P14429559557207336147.Spec : Prop :=
  ∀ n, P14429559557207336147.a n = A378780 n

end A378780

/-! ## A378780.P8145773462541501367

`n*A013609(A062725(n))`
-/

namespace A378780.P8145773462541501367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A013609 (A062725 n).toNat

end

end A378780.P8145773462541501367

namespace A378780

/-- `n*A013609(A062725(n))` -/
def P8145773462541501367.Spec : Prop :=
  ∀ n, P8145773462541501367.a n = A378780 n

end A378780

/-!
# A378781: a(n) = n^3 * 2^n * binomial(3*n, n) / 3.

The programs for A378781, the canonical program `A378781.P6898465891069053923` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378781 has offset 0).

The definition of A378781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378781.P6898465891069053923

`n*A378778(n)/3`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A378781

/-- `n*A378778(n)/3` -/
def P6898465891069053923.Spec : Prop :=
  ∀ n, P6898465891069053923.a n = (A378781 n : ℚ)

end A378781

/-! ## A378781.P18005817867173943490

`n²*A378780(n)/3`
-/

namespace A378781.P18005817867173943490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A378780 n : ℚ) / 3

end

end A378781.P18005817867173943490

namespace A378781

/-- `n²*A378780(n)/3` -/
def P18005817867173943490.Spec : Prop :=
  ∀ n, P18005817867173943490.a n = (A378781 n : ℚ)

end A378781

/-! ## A378781.P8107358364809212776

`A128789(n)*A005809(n)/3`
-/

namespace A378781.P8107358364809212776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128789 n * A005809 n : ℚ) / 3

end

end A378781.P8107358364809212776

namespace A378781

/-- `A128789(n)*A005809(n)/3` -/
def P8107358364809212776.Spec : Prop :=
  ∀ n, P8107358364809212776.a n = (A378781 n : ℚ)

end A378781

/-!
# A378784: a(1)=1, a(2)=2, then the terms from a(2^k + 1) to a(2^(k+1)) are the first 2^k terms in reverse order, increased by a(2^k).

The programs for A378784, the canonical program `A378784.P5059854642230422677` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378784 has offset 1).

The definition of A378784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378784.P5059854642230422677

`A164677(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A378784

/-- `A164677(n)+a(n-1)` -/
def P5059854642230422677.Spec : Prop :=
  ∀ n, P5059854642230422677.a n = A378784 (n + 1)

theorem P5059854642230422677.correct : P5059854642230422677.Spec := by
  intro n
  simp only [A378784, Nat.add_sub_cancel]

end A378784

/-! ## A378784.P17641038030722722105

`A029931(A003188(n))+1`
-/

namespace A378784.P17641038030722722105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A003188 n).toNat + 1

end

end A378784.P17641038030722722105

namespace A378784

/-- `A029931(A003188(n))+1` -/
def P17641038030722722105.Spec : Prop :=
  ∀ n, P17641038030722722105.a n = A378784 (n + 1)

end A378784

/-! ## A378784.P13513792348184258559

`A359042(A341915(n))+1`
-/

namespace A378784.P13513792348184258559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359042 (A341915 n).toNat + 1

end

end A378784.P13513792348184258559

namespace A378784

/-- `A359042(A341915(n))+1` -/
def P13513792348184258559.Spec : Prop :=
  ∀ n, P13513792348184258559.a n = A378784 (n + 1)

end A378784

/-! ## A378784.P4558327459965381774

`A073642(A048724(n))+1`
-/

namespace A378784.P4558327459965381774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A048724 n).toNat + 1

end

end A378784.P4558327459965381774

namespace A378784

/-- `A073642(A048724(n))+1` -/
def P4558327459965381774.Spec : Prop :=
  ∀ n, P4558327459965381774.a n = A378784 (n + 1)

end A378784

/-! ## A378784.P14334390515047019387

`A227192(A004760(n+2))`
-/

namespace A378784.P14334390515047019387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227192 (A004760 (n + 2)).toNat

end

end A378784.P14334390515047019387

namespace A378784

/-- `A227192(A004760(n+2))` -/
def P14334390515047019387.Spec : Prop :=
  ∀ n, P14334390515047019387.a n = A378784 (n + 1)

end A378784

/-! ## A378784.P16010250421944214206

`A073642(A065621(n+1))+1`
-/

namespace A378784.P16010250421944214206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A065621 (n + 1)).toNat + 1

end

end A378784.P16010250421944214206

namespace A378784

/-- `A073642(A065621(n+1))+1` -/
def P16010250421944214206.Spec : Prop :=
  ∀ n, P16010250421944214206.a n = A378784 (n + 1)

end A378784

/-! ## A378784.P572447083124529180

`A266475(A243353(n))+1`
-/

namespace A378784.P572447083124529180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266475 (A243353 n).toNat + 1

end

end A378784.P572447083124529180

namespace A378784

/-- `A266475(A243353(n))+1` -/
def P572447083124529180.Spec : Prop :=
  ∀ n, P572447083124529180.a n = A378784 (n + 1)

end A378784

/-! ## A378784.P1840736931502114296

`A066328(A302033(n))+1`
-/

namespace A378784.P1840736931502114296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A302033 n).toNat + 1

end

end A378784.P1840736931502114296

namespace A378784

/-- `A066328(A302033(n))+1` -/
def P1840736931502114296.Spec : Prop :=
  ∀ n, P1840736931502114296.a n = A378784 (n + 1)

end A378784

/-!
# A378786: G.f. A(x) satisfies A(x) = 1 + x * (1+x)^2 * A(x)^4.

The programs for A378786, there is no canonical definition to state claims against.
-/

/-! ## A378786.P17651751090089770910

`A381785(n)-a(n-1)` with `a(0)=1`
-/

namespace A378786.P17651751090089770910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A381785 n - a (n - 1)

end

end A378786.P17651751090089770910

/-! ## A378786.P367915308715110879

`A059543(ceil(A097861(2*(n+2))/A235155(n+1)))`
-/

namespace A378786.P367915308715110879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059543 ⌈(A097861 (2 * (n + 2)) : ℚ) / (A235155 (n + 1) : ℚ)⌉.toNat

end

end A378786.P367915308715110879

/-!
# A378787: G.f. A(x) satisfies A(x) = ( 1 + x * (1 + x*A(x)^2)^3 )^2.

The programs for A378787, there is no canonical definition to state claims against.
-/

/-! ## A378787.P9580281827780891942

`A156253(or(A205772(n), A329738(n)))`
-/

namespace A378787.P9580281827780891942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (Int.lor (A205772 n) (A329738 n)).toNat

end

end A378787.P9580281827780891942

/-! ## A378787.P9811279687691186195

`A213076(n+2)-A001065(A120458(n))`
-/

namespace A378787.P9811279687691186195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213076 (n + 2) - A001065 (A120458 n).toNat

end

end A378787.P9811279687691186195

/-!
# A378788: Lower matching number of the (n,n)-stacked book graph.

The programs for A378788, the canonical program `A378788.P15862671358062057024` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378788 has offset 1).

The definition of A378788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378788.P136423319398048220

`A212984(n)+A087508(n)`
-/

namespace A378788.P136423319398048220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212984 n + A087508 n

end

end A378788.P136423319398048220

namespace A378788

/-- `A212984(n)+A087508(n)` -/
def P136423319398048220.Spec : Prop :=
  ∀ n, P136423319398048220.a n = A378788 (n + 1)

end A378788

/-! ## A378788.P15862671358062057024

`A007980(n)-A002264(n*A079978(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A378788

/-- `A007980(n)-A002264(n*A079978(n))` -/
def P15862671358062057024.Spec : Prop :=
  ∀ n, P15862671358062057024.a n = A378788 (n + 1)

theorem P15862671358062057024.correct : P15862671358062057024.Spec := by
  intro n
  simp only [A378788, Nat.add_sub_cancel]

end A378788

/-! ## A378788.P11920279897180489231

`A008806(A047271(n+1))`
-/

namespace A378788.P11920279897180489231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008806 (A047271 (n + 1)).toNat

end

end A378788.P11920279897180489231

namespace A378788

/-- `A008806(A047271(n+1))` -/
def P11920279897180489231.Spec : Prop :=
  ∀ n, P11920279897180489231.a n = A378788 (n + 1)

end A378788

/-! ## A378788.P17943588790033313713

`A211540(A235451(2*n))+n+1`
-/

namespace A378788.P17943588790033313713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (A235451 (2 * n)).toNat + (n + 1 : ℤ)

end

end A378788.P17943588790033313713

namespace A378788

/-- `A211540(A235451(2*n))+n+1` -/
def P17943588790033313713.Spec : Prop :=
  ∀ n, P17943588790033313713.a n = A378788 (n + 1)

end A378788

/-! ## A378788.P10315624419715406039

`A094909(A047268(n+2))`
-/

namespace A378788.P10315624419715406039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094909 (A047268 (n + 2)).toNat

end

end A378788.P10315624419715406039

namespace A378788

/-- `A094909(A047268(n+2))` -/
def P10315624419715406039.Spec : Prop :=
  ∀ n, P10315624419715406039.a n = A378788 (n + 1)

end A378788

/-!
# A378789: Numbers k such that tau(k) == 1 (mod(2*(tau(k+prime(k)-1)))), where tau(k) = A000005(k).

The programs for A378789, there is no canonical definition to state claims against.
-/

/-! ## A378789.P12524301944854790722

`filter[A318690(n+1), A369004(#)]`
-/

namespace A378789.P12524301944854790722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369004 (f1 j).toNat = 1) n)

end

end A378789.P12524301944854790722

/-! ## A378789.P14705464319734170275

`∩[A318690(n+1), A373259(n+1)]`
-/

namespace A378789.P14705464319734170275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378789.P14705464319734170275

/-!
# A378790: Lower matching number of the n X n king graph.

The programs for A378790, the canonical program `A378790.P611562375653118169` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378790 has offset 1).

The definition of A378790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378790.P611562375653118169

`round(A032438(n+1)/2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A378790

/-- `round(A032438(n+1)/2)` -/
def P611562375653118169.Spec : Prop :=
  ∀ n, P611562375653118169.a n = A378790 (n + 1)

theorem P611562375653118169.correct : P611562375653118169.Spec := by
  intro n
  simp only [A378790, Nat.add_sub_cancel]

end A378790

/-! ## A378790.P11140485646752232800

`A110655(n)+A001318(n)`
-/

namespace A378790.P11140485646752232800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n + A001318 n

end

end A378790.P11140485646752232800

namespace A378790

/-- `A110655(n)+A001318(n)` -/
def P11140485646752232800.Spec : Prop :=
  ∀ n, P11140485646752232800.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P17210983101433861667

`A396814(n)+A004525(n)`
-/

namespace A378790.P17210983101433861667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396814 n + A004525 n

end

end A378790.P17210983101433861667

namespace A378790

/-- `A396814(n)+A004525(n)` -/
def P17210983101433861667.Spec : Prop :=
  ∀ n, P17210983101433861667.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P13794001707647305803

`A396812(n)+A026741(n)`
-/

namespace A378790.P13794001707647305803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396812 n + A026741 n

end

end A378790.P13794001707647305803

namespace A378790

/-- `A396812(n)+A026741(n)` -/
def P13794001707647305803.Spec : Prop :=
  ∀ n, P13794001707647305803.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P8114788085620039746

`A397990(n)-A396811(n)`
-/

namespace A378790.P8114788085620039746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397990 n - A396811 n

end

end A378790.P8114788085620039746

namespace A378790

/-- `A397990(n)-A396811(n)` -/
def P8114788085620039746.Spec : Prop :=
  ∀ n, P8114788085620039746.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P13927180095081262012

`A024219(n+1)-A144065(n)`
-/

namespace A378790.P13927180095081262012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024219 (n + 1) - A144065 n

end

end A378790.P13927180095081262012

namespace A378790

/-- `A024219(n+1)-A144065(n)` -/
def P13927180095081262012.Spec : Prop :=
  ∀ n, P13927180095081262012.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P5517963803456107416

`A274830(n+1)-A038707(n)`
-/

namespace A378790.P5517963803456107416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (n + 1) - A038707 n

end

end A378790.P5517963803456107416

namespace A378790

/-- `A274830(n+1)-A038707(n)` -/
def P5517963803456107416.Spec : Prop :=
  ∀ n, P5517963803456107416.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P18263736041081849088

`A111710(n+1)-A391537(n+1)`
-/

namespace A378790.P18263736041081849088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111710 (n + 1) - A391537 (n + 1)

end

end A378790.P18263736041081849088

namespace A378790

/-- `A111710(n+1)-A391537(n+1)` -/
def P18263736041081849088.Spec : Prop :=
  ∀ n, P18263736041081849088.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P14865357971059125511

`A110654(A110654(n))+A001318(n)`
-/

namespace A378790.P14865357971059125511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 n).toNat + A001318 n

end

end A378790.P14865357971059125511

namespace A378790

/-- `A110654(A110654(n))+A001318(n)` -/
def P14865357971059125511.Spec : Prop :=
  ∀ n, P14865357971059125511.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P4886343187850656923

`A110654(A110654(n))+∑[A026741(n)]`
-/

namespace A378790.P4886343187850656923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378790.P4886343187850656923

namespace A378790

/-- `A110654(A110654(n))+∑[A026741(n)]` -/
def P4886343187850656923.Spec : Prop :=
  ∀ n, P4886343187850656923.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P12135729159836008443

`A054925(n+1)+A000217(n)-A211539(n)`
-/

namespace A378790.P12135729159836008443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 (n + 1) + (A000217 n - A211539 n)

end

end A378790.P12135729159836008443

namespace A378790

/-- `A054925(n+1)+A000217(n)-A211539(n)` -/
def P12135729159836008443.Spec : Prop :=
  ∀ n, P12135729159836008443.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P854430063068029580

`A002620(n+1)+A000982(A004526(n+1))`
-/

namespace A378790.P854430063068029580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + A000982 (A004526 (n + 1)).toNat

end

end A378790.P854430063068029580

namespace A378790

/-- `A002620(n+1)+A000982(A004526(n+1))` -/
def P854430063068029580.Spec : Prop :=
  ∀ n, P854430063068029580.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P17172880980776746512

`A282513(n+1)+A282513(n)-A001318(n+1)`
-/

namespace A378790.P17172880980776746512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282513 (n + 1) + (A282513 n - A001318 (n + 1))

end

end A378790.P17172880980776746512

namespace A378790

/-- `A282513(n+1)+A282513(n)-A001318(n+1)` -/
def P17172880980776746512.Spec : Prop :=
  ∀ n, P17172880980776746512.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P2956739310987065390

`A008619(n+1)+A282513(n)-A178804(n+2)`
-/

namespace A378790.P2956739310987065390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + (A282513 n - A178804 (n + 2))

end

end A378790.P2956739310987065390

namespace A378790

/-- `A008619(n+1)+A282513(n)-A178804(n+2)` -/
def P2956739310987065390.Spec : Prop :=
  ∀ n, P2956739310987065390.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P1130293467570388770

`A296160(n+1)+A296160(n+3)`
-/

namespace A378790.P1130293467570388770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296160 (n + 1) + A296160 (n + 3)

end

end A378790.P1130293467570388770

namespace A378790

/-- `A296160(n+1)+A296160(n+3)` -/
def P1130293467570388770.Spec : Prop :=
  ∀ n, P1130293467570388770.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P2652150043898189801

`A056829(A032766(n+1))`
-/

namespace A378790.P2652150043898189801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056829 (A032766 (n + 1)).toNat

end

end A378790.P2652150043898189801

namespace A378790

/-- `A056829(A032766(n+1))` -/
def P2652150043898189801.Spec : Prop :=
  ∀ n, P2652150043898189801.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P16303589183263217587

`A056829(A047238(n+2)/2)`
-/

namespace A378790.P16303589183263217587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056829 (SequenceMachineLib.roundAway ((A047238 (n + 2) : ℚ) / 2)).toNat

end

end A378790.P16303589183263217587

namespace A378790

/-- `A056829(A047238(n+2)/2)` -/
def P16303589183263217587.Spec : Prop :=
  ∀ n, P16303589183263217587.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P2103023240292751857

`A056829(A008619(n+1)+n)`
-/

namespace A378790.P2103023240292751857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056829 (A008619 (n + 1) + (n : ℤ)).toNat

end

end A378790.P2103023240292751857

namespace A378790

/-- `A056829(A008619(n+1)+n)` -/
def P2103023240292751857.Spec : Prop :=
  ∀ n, P2103023240292751857.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P836561367543407182

`record[A008818(n)]-A008818(n)`
-/

namespace A378790.P836561367543407182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A008818 n

end

end A378790.P836561367543407182

namespace A378790

/-- `record[A008818(n)]-A008818(n)` -/
def P836561367543407182.Spec : Prop :=
  ∀ n, P836561367543407182.a n = A378790 (n + 1)

end A378790

/-! ## A378790.P6405613424006922298

`A008818(2*n)-A008818(n)`
-/

namespace A378790.P6405613424006922298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 (2 * n) - A008818 n

end

end A378790.P6405613424006922298

namespace A378790

/-- `A008818(2*n)-A008818(n)` -/
def P6405613424006922298.Spec : Prop :=
  ∀ n, P6405613424006922298.a n = A378790 (n + 1)

end A378790

/-!
# A378792: Numbers k such that tau(k) == 1 (mod(2*(tau(prime(k) - k + 1)))), where tau(k) = A000005(k).

The programs for A378792, there is no canonical definition to state claims against.
-/

/-! ## A378792.P10632007817932889500

`(A001358(n+4)%A066811(n+1))²`
-/

namespace A378792.P10632007817932889500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 4)) (A066811 (n + 1)) ^ 2

end

end A378792.P10632007817932889500

/-! ## A378792.P5960826432689658162

`A001358(n+4)^A001221(A011557(n))`
-/

namespace A378792.P5960826432689658162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 4) : ℚ) ^ (A001221 (A011557 n).toNat : ℤ)

end

end A378792.P5960826432689658162

/-!
# A378794: Numbers k such that tau(k) == 1 (mod(2*(tau(k^2 + k - 1)))), where tau(k) = A000005(k).

The programs for A378794, there is no canonical definition to state claims against.
-/

/-! ## A378794.P15256886302467819647

`(A359157(n+1)%A179513(n+5))²`
-/

namespace A378794.P15256886302467819647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359157 (n + 1)) (A179513 (n + 5)) ^ 2

end

end A378794.P15256886302467819647

/-! ## A378794.P15049429210678440932

`A359157(n+1)²%A159345(2*(n+2))`
-/

namespace A378794.P15049429210678440932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359157 (n + 1) ^ 2) (A159345 (2 * (n + 2)))

end

end A378794.P15049429210678440932

/-! ## A378794.P1901002808120318257

`A359157(n+1)^A000034(A000244(n))`
-/

namespace A378794.P1901002808120318257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359157 (n + 1) : ℚ) ^ (A000034 (A000244 n).toNat : ℤ)

end

end A378794.P1901002808120318257

/-! ## A378794.P16408465199323039800

`A359157(n+1)^A153655(A214561(n))`
-/

namespace A378794.P16408465199323039800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359157 (n + 1) : ℚ) ^ (A153655 (A214561 n).toNat : ℤ)

end

end A378794.P16408465199323039800

/-! ## A378794.P15455132362821786300

`A000290(A359157(n+1))%A159345(2*n+4)`
-/

namespace A378794.P15455132362821786300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A359157 (n + 1)).toNat) (A159345 (2 * n + 4))

end

end A378794.P15455132362821786300

/-!
# A378795: Ulam numbers that are semiprimes.

The programs for A378795, there is no canonical definition to state claims against.
-/

/-! ## A378795.P7576608789179374999

`filter[A002858(n+1), A064911(#)]`
-/

namespace A378795.P7576608789179374999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A378795.P7576608789179374999

/-! ## A378795.P9994262819551454629

`∩[A001358(n+1), A002858(n+1)]`
-/

namespace A378795.P9994262819551454629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378795.P9994262819551454629

/-! ## A378795.P6585040737170096628

`∩[A001358(n+1), Δ[A078663(n+1)]]`
-/

namespace A378795.P6585040737170096628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378795.P6585040737170096628

/-! ## A378795.P4938433567121091421

`∩[A001358(n+1), A001281(A048951(n+1))]`
-/

namespace A378795.P4938433567121091421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A048951 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378795.P4938433567121091421

/-! ## A378795.P6774909041678693924

`∩[A001358(n+1), A110654(A048951(n+1)-1)]`
-/

namespace A378795.P6774909041678693924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A048951 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378795.P6774909041678693924

/-!
# A378796: Number of minimal edge cuts in the n-sun graph.

The programs for A378796, the canonical program `A378796.P2718175004098467947` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378796 has offset 1).

The definition of A378796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378796.P2718175004098467947

`A046717(n+1)+n`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A378796

/-- `A046717(n+1)+n` -/
def P2718175004098467947.Spec : Prop :=
  ∀ n, P2718175004098467947.a n = A378796 (n + 1)

theorem P2718175004098467947.correct : P2718175004098467947.Spec := by
  intro n
  simp only [A378796, Nat.add_sub_cancel]

end A378796

/-! ## A378796.P16230767981853660893

`(3^(n+1)+(-1)^(n+1))/2+n`
-/

namespace A378796.P16230767981853660893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) + (-1) ^ (n + 1) : ℚ) / 2 + (n : ℚ)

end

end A378796.P16230767981853660893

namespace A378796

/-- `(3^(n+1)+(-1)^(n+1))/2+n` -/
def P16230767981853660893.Spec : Prop :=
  ∀ n, P16230767981853660893.a n = (A378796 (n + 1) : ℚ)

end A378796

/-! ## A378796.P3244735909837662260

`∑[2*and(1, n)+3^n]`
-/

namespace A378796.P3244735909837662260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + 3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378796.P3244735909837662260

namespace A378796

/-- `∑[2*and(1, n)+3^n]` -/
def P3244735909837662260.Spec : Prop :=
  ∀ n, (P3244735909837662260.a n : ℤ) = A378796 (n + 1)

end A378796

/-! ## A378796.P4013936952950609249

`xor(1, A120471(n)+n)`
-/

namespace A378796.P4013936952950609249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A120471 n + (n : ℤ))

end

end A378796.P4013936952950609249

namespace A378796

/-- `xor(1, A120471(n)+n)` -/
def P4013936952950609249.Spec : Prop :=
  ∀ n, P4013936952950609249.a n = A378796 (n + 1)

end A378796

