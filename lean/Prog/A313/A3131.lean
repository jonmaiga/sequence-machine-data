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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
# A313100: Coordination sequence Gal.5.100.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313100, the canonical program `A313100.P9368663845500705119` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313100 has offset 0).

The definition of A313100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313100.P7230167608105613725

`A311433(n)+∑[A021913(n)]`
-/

namespace A313100.P7230167608105613725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311433 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313100.P7230167608105613725

namespace A313100

/-- `A311433(n)+∑[A021913(n)]` -/
def P7230167608105613725.Spec : Prop :=
  ∀ n, P7230167608105613725.a n = A313100 n

theorem P7230167608105613725.correct : P7230167608105613725.Spec := by
  intro n
  simp only [A313100, Nat.add_sub_cancel, A313100.P7230167608105613725.f1, A313100.P7230167608105613725.a, A313100.P9368663845500705119.f1, A313100.P9368663845500705119.a, A011862, A011862.P9485299441699197278.a, A021913, A021913.P3902253882929539198.a, A311433, A311433.P1198720009371064807.f1, A311433.P1198720009371064807.a, A312932, A312932.P265636690513476108.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313100

/-! ## A313100.P13377189984202482212

`A311433(n)+Δ[A011848(n)]`
-/

namespace A313100.P13377189984202482212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311433 n + (f1 (n + 1) - f1 n)

end

end A313100.P13377189984202482212

namespace A313100

/-- `A311433(n)+Δ[A011848(n)]` -/
def P13377189984202482212.Spec : Prop :=
  ∀ n, P13377189984202482212.a n = A313100 n

end A313100

/-! ## A313100.P9368663845500705119

`A312932(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313100

/-- `A312932(n)+Δ[A011862(n)]` -/
def P9368663845500705119.Spec : Prop :=
  ∀ n, P9368663845500705119.a n = A313100 n

theorem P9368663845500705119.correct : P9368663845500705119.Spec := by
  intro n
  simp only [A313100]

end A313100

/-! ## A313100.P3683321753455526236

`(A310521(n)+A008574(n))/2`
-/

namespace A313100.P3683321753455526236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310521 n + A008574 n : ℚ) / 2

end

end A313100.P3683321753455526236

namespace A313100

/-- `(A310521(n)+A008574(n))/2` -/
def P3683321753455526236.Spec : Prop :=
  ∀ n, P3683321753455526236.a n = (A313100 n : ℚ)

end A313100

/-! ## A313100.P16175277996171734757

`A313683(n)+A102283(A006369(n)+n)`
-/

namespace A313100.P16175277996171734757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n + A102283 (A006369 n + (n : ℤ)).toNat

end

end A313100.P16175277996171734757

namespace A313100

/-- `A313683(n)+A102283(A006369(n)+n)` -/
def P16175277996171734757.Spec : Prop :=
  ∀ n, P16175277996171734757.a n = A313100 n

end A313100

/-! ## A313100.P1742727634412223606

`A312100(n)+A004396(n-A004396(n))`
-/

namespace A313100.P1742727634412223606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313100.P1742727634412223606

namespace A313100

/-- `A312100(n)+A004396(n-A004396(n))` -/
def P1742727634412223606.Spec : Prop :=
  ∀ n, P1742727634412223606.a n = A313100 n

theorem P1742727634412223606.correct : P1742727634412223606.Spec := by
  intro n
  simp only [A313100, Nat.add_sub_cancel, A313100.P1742727634412223606.a, A313100.P9368663845500705119.f1, A313100.P9368663845500705119.a, A004396, A004396.P17032557045289780609.a, A011862, A011862.P9485299441699197278.a, A312100, A312100.P12685263577647089552.f1, A312100.P12685263577647089552.a, A312932, A312932.P265636690513476108.a, A008574, A008574.P1300280032690682112.a, A311458, A311458.P16823108361581684520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313100

/-! ## A313100.P15693779663887684171

`A004396(n)+A312932(n)-A004396(A004396(n))`
-/

namespace A313100.P15693779663887684171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A312932 n - A004396 (A004396 n).toNat)

end

end A313100.P15693779663887684171

namespace A313100

/-- `A004396(n)+A312932(n)-A004396(A004396(n))` -/
def P15693779663887684171.Spec : Prop :=
  ∀ n, P15693779663887684171.a n = A313100 n

end A313100

/-! ## A313100.P285928751534216585

`A314736(n)-A128834(A004396(2*n))`
-/

namespace A313100.P285928751534216585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n - A128834 (A004396 (2 * n)).toNat

end

end A313100.P285928751534216585

namespace A313100

/-- `A314736(n)-A128834(A004396(2*n))` -/
def P285928751534216585.Spec : Prop :=
  ∀ n, P285928751534216585.a n = A313100 n

end A313100

/-! ## A313100.P10019100116053434055

`A313241(n)-Δ[A011862(n)]`
-/

namespace A313100.P10019100116053434055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n - (f1 (n + 1) - f1 n)

end

end A313100.P10019100116053434055

namespace A313100

/-- `A313241(n)-Δ[A011862(n)]` -/
def P10019100116053434055.Spec : Prop :=
  ∀ n, P10019100116053434055.a n = A313100 n

theorem P10019100116053434055.correct : P10019100116053434055.Spec := by
  intro n
  simp only [A313100, Nat.add_sub_cancel, A313100.P10019100116053434055.f1, A313100.P10019100116053434055.a, A313100.P9368663845500705119.f1, A313100.P9368663845500705119.a, A011862, A011862.P9485299441699197278.a, A312932, A312932.P265636690513476108.a, A313241, A313241.P6304044137677485136.f1, A313241.P6304044137677485136.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313100

/-! ## A313100.P8073811475086428689

`A313241(n)-A002264(A004396(n)+1)`
-/

namespace A313100.P8073811475086428689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n - A002264 (A004396 n + 1).toNat

end

end A313100.P8073811475086428689

namespace A313100

/-- `A313241(n)-A002264(A004396(n)+1)` -/
def P8073811475086428689.Spec : Prop :=
  ∀ n, P8073811475086428689.a n = A313100 n

end A313100

/-! ## A313100.P5213266737065414

`A310454(n)-A004396(n-A004396(n))`
-/

namespace A313100.P5213266737065414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310454 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A313100.P5213266737065414

namespace A313100

/-- `A310454(n)-A004396(n-A004396(n))` -/
def P5213266737065414.Spec : Prop :=
  ∀ n, P5213266737065414.a n = A313100 n

theorem P5213266737065414.correct : P5213266737065414.Spec := by
  intro n
  simp only [A313100, Nat.add_sub_cancel, A313100.P5213266737065414.a, A313100.P9368663845500705119.f1, A313100.P9368663845500705119.a, A004396, A004396.P17032557045289780609.a, A011862, A011862.P9485299441699197278.a, A310454, A310454.P10457649734858247148.a, A312932, A312932.P265636690513476108.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313100

/-! ## A313100.P7068567246842562434

`A313773(n)-A004396(A004396(n))`
-/

namespace A313100.P7068567246842562434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313773 n - A004396 (A004396 n).toNat

end

end A313100.P7068567246842562434

namespace A313100

/-- `A313773(n)-A004396(A004396(n))` -/
def P7068567246842562434.Spec : Prop :=
  ∀ n, P7068567246842562434.a n = A313100 n

end A313100

/-! ## A313100.P8985456384836711778

`abs(10*n-A315475(n))`
-/

namespace A313100.P8985456384836711778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315475 n|

end

end A313100.P8985456384836711778

namespace A313100

/-- `abs(10*n-A315475(n))` -/
def P8985456384836711778.Spec : Prop :=
  ∀ n, P8985456384836711778.a n = A313100 n

end A313100

/-! ## A313100.P4468926631273073593

`A008458(n)+A008574(n)-A315475(n)`
-/

namespace A313100.P4468926631273073593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315475 n)

end

end A313100.P4468926631273073593

namespace A313100

/-- `A008458(n)+A008574(n)-A315475(n)` -/
def P4468926631273073593.Spec : Prop :=
  ∀ n, P4468926631273073593.a n = A313100 n

end A313100

/-! ## A313100.P54337118143829399

`A310538(n)-A004525(A310538(n)-A008574(n))`
-/

namespace A313100.P54337118143829399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310538 n - A004525 (A310538 n - A008574 n).toNat

end

end A313100.P54337118143829399

namespace A313100

/-- `A310538(n)-A004525(A310538(n)-A008574(n))` -/
def P54337118143829399.Spec : Prop :=
  ∀ n, P54337118143829399.a n = A313100 n

end A313100

/-! ## A313100.P2864308965523094289

`A313909(n)-A004396(n)`
-/

namespace A313100.P2864308965523094289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313909 n - A004396 n

end

end A313100.P2864308965523094289

namespace A313100

/-- `A313909(n)-A004396(n)` -/
def P2864308965523094289.Spec : Prop :=
  ∀ n, P2864308965523094289.a n = A313100 n

theorem P2864308965523094289.correct : P2864308965523094289.Spec := by
  intro n
  simp only [A313100, Nat.add_sub_cancel, A313100.P2864308965523094289.a, A313100.P9368663845500705119.f1, A313100.P9368663845500705119.a, A004396, A004396.P17032557045289780609.a, A011862, A011862.P9485299441699197278.a, A312932, A312932.P265636690513476108.a, A313909, A313909.P6555194053940030791.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313100

/-! ## A313100.P10415160229545749276

`A314218(n)-A004396(A004396(2*n))`
-/

namespace A313100.P10415160229545749276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314218 n - A004396 (A004396 (2 * n)).toNat

end

end A313100.P10415160229545749276

namespace A313100

/-- `A314218(n)-A004396(A004396(2*n))` -/
def P10415160229545749276.Spec : Prop :=
  ∀ n, P10415160229545749276.a n = A313100 n

end A313100

/-! ## A313100.P4752634412862037950

`A005843(A008458(n)-n)-A315475(n)`
-/

namespace A313100.P4752634412862037950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315475 n

end

end A313100.P4752634412862037950

namespace A313100

/-- `A005843(A008458(n)-n)-A315475(n)` -/
def P4752634412862037950.Spec : Prop :=
  ∀ n, P4752634412862037950.a n = A313100 n

end A313100

/-! ## A313100.P6126893794927503707

`A004526(A310521(n))+A004277(n)`
-/

namespace A313100.P6126893794927503707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310521 n).toNat + A004277 n

end

end A313100.P6126893794927503707

namespace A313100

/-- `A004526(A310521(n))+A004277(n)` -/
def P6126893794927503707.Spec : Prop :=
  ∀ n, P6126893794927503707.a n = A313100 n

end A313100

/-! ## A313100.P4229870246097219186

`A004396(A004396(n)+A310521(n)+n)`
-/

namespace A313100.P4229870246097219186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n + (A310521 n + (n : ℤ))).toNat

end

end A313100.P4229870246097219186

namespace A313100

/-- `A004396(A004396(n)+A310521(n)+n)` -/
def P4229870246097219186.Spec : Prop :=
  ∀ n, P4229870246097219186.a n = A313100 n

end A313100

/-!
# A313101: Coordination sequence Gal.3.34.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313101, there is no canonical definition to state claims against.
-/

/-! ## A313101.P10395901401561022084

`A002004(n+1)+A001222(A008325(n+3))`
-/

namespace A313101.P10395901401561022084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002004 (n + 1) + A001222 (A008325 (n + 3)).toNat

end

end A313101.P10395901401561022084

/-! ## A313101.P14986031763553707959

`A346130(A311439(n))`
-/

namespace A313101.P14986031763553707959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A311439 n).toNat

end

end A313101.P14986031763553707959

/-! ## A313101.P1006514998851553908

`A346130(A311440(n))`
-/

namespace A313101.P1006514998851553908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A311440 n).toNat

end

end A313101.P1006514998851553908

/-! ## A313101.P15427881192786767552

`A346130(A311441(n))`
-/

namespace A313101.P15427881192786767552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A311441 n).toNat

end

end A313101.P15427881192786767552

/-! ## A313101.P10584988179995642119

`A346130(A311442(n))`
-/

namespace A313101.P10584988179995642119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A311442 n).toNat

end

end A313101.P10584988179995642119

/-!
# A313102: Coordination sequence Gal.5.273.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313102, there is no canonical definition to state claims against.
-/

/-! ## A313102.P3702154715125707390

`A312944(n)+A091463(n+1)%4`
-/

namespace A313102.P3702154715125707390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312944 n + Int.tmod (A091463 (n + 1)) 4

end

end A313102.P3702154715125707390

/-! ## A313102.P12166636736001015913

`A313046(n)+A107846(A017935(n))`
-/

namespace A313102.P12166636736001015913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313046 n + A107846 (A017935 n).toNat

end

end A313102.P12166636736001015913

/-! ## A313102.P9446459589347484377

`A250120(n)+A231122(A001780(n))`
-/

namespace A313102.P9446459589347484377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A231122 (A001780 n).toNat

end

end A313102.P9446459589347484377

/-! ## A313102.P12632144992720408845

`A356225(A003432(n))+A301293(n)`
-/

namespace A313102.P12632144992720408845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356225 (A003432 n).toNat + A301293 n

end

end A313102.P12632144992720408845

/-! ## A313102.P8352514015917148468

`A250120(n)+A054354(A358464(n+1))`
-/

namespace A313102.P8352514015917148468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A054354 (A358464 (n + 1)).toNat

end

end A313102.P8352514015917148468

/-!
# A313103: Coordination sequence Gal.6.260.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313103, the canonical program `A313103.P6719779738666640190` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313103 has offset 0).

The definition of A313103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313103.P6719779738666640190

`A311475(n)+∑[gcd(2, ∑[n+1])]%(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313103

/-- `A311475(n)+∑[gcd(2, ∑[n+1])]%(n+1)` -/
def P6719779738666640190.Spec : Prop :=
  ∀ n, P6719779738666640190.a n = A313103 n

theorem P6719779738666640190.correct : P6719779738666640190.Spec := by
  intro n
  simp only [A313103]

end A313103

/-! ## A313103.P8329590450989471584

`A311475(n)+∑[A021913(n)]`
-/

namespace A313103.P8329590450989471584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313103.P8329590450989471584

namespace A313103

/-- `A311475(n)+∑[A021913(n)]` -/
def P8329590450989471584.Spec : Prop :=
  ∀ n, P8329590450989471584.a n = A313103 n

end A313103

/-! ## A313103.P17783167372979756218

`A311475(n)+Δ[A011848(n)]`
-/

namespace A313103.P17783167372979756218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + (f1 (n + 1) - f1 n)

end

end A313103.P17783167372979756218

namespace A313103

/-- `A311475(n)+Δ[A011848(n)]` -/
def P17783167372979756218.Spec : Prop :=
  ∀ n, P17783167372979756218.a n = A313103 n

end A313103

/-! ## A313103.P11639377733411211703

`A311475(n)+A004524(n+1)`
-/

namespace A313103.P11639377733411211703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + A004524 (n + 1)

end

end A313103.P11639377733411211703

namespace A313103

/-- `A311475(n)+A004524(n+1)` -/
def P11639377733411211703.Spec : Prop :=
  ∀ n, P11639377733411211703.a n = A313103 n

end A313103

/-! ## A313103.P1516224515441591752

`A311475(n)+n-A004525(n)`
-/

namespace A313103.P1516224515441591752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + ((n : ℤ) - A004525 n)

end

end A313103.P1516224515441591752

namespace A313103

/-- `A311475(n)+n-A004525(n)` -/
def P1516224515441591752.Spec : Prop :=
  ∀ n, P1516224515441591752.a n = A313103 n

end A313103

/-! ## A313103.P4763320533055773768

`A314770(n)-A101455(n)`
-/

namespace A313103.P4763320533055773768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314770 n - A101455 n

end

end A313103.P4763320533055773768

namespace A313103

/-- `A314770(n)-A101455(n)` -/
def P4763320533055773768.Spec : Prop :=
  ∀ n, P4763320533055773768.a n = A313103 n

end A313103

/-! ## A313103.P156431372366749919

`A310459(n)-∑[A022003(n)]`
-/

namespace A313103.P156431372366749919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310459 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313103.P156431372366749919

namespace A313103

/-- `A310459(n)-∑[A022003(n)]` -/
def P156431372366749919.Spec : Prop :=
  ∀ n, P156431372366749919.a n = A313103 n

end A313103

/-! ## A313103.P11997866496786480957

`A310459(n)-A002264(n+1)`
-/

namespace A313103.P11997866496786480957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310459 n - A002264 (n + 1)

end

end A313103.P11997866496786480957

namespace A313103

/-- `A310459(n)-A002264(n+1)` -/
def P11997866496786480957.Spec : Prop :=
  ∀ n, P11997866496786480957.a n = A313103 n

end A313103

/-! ## A313103.P2484710731721983086

`A008576(n)+A310459(n)-A008486(n)`
-/

namespace A313103.P2484710731721983086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A310459 n - A008486 n)

end

end A313103.P2484710731721983086

namespace A313103

/-- `A008576(n)+A310459(n)-A008486(n)` -/
def P2484710731721983086.Spec : Prop :=
  ∀ n, P2484710731721983086.a n = A313103 n

end A313103

/-! ## A313103.P14209456861030870422

`abs(A008592(n)-A315474(n))`
-/

namespace A313103.P14209456861030870422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315474 n|

end

end A313103.P14209456861030870422

namespace A313103

/-- `abs(A008592(n)-A315474(n))` -/
def P14209456861030870422.Spec : Prop :=
  ∀ n, P14209456861030870422.a n = A313103 n

end A313103

/-! ## A313103.P6788536094022099881

`A008458(n)+A008574(n)-A315474(n)`
-/

namespace A313103.P6788536094022099881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315474 n)

end

end A313103.P6788536094022099881

namespace A313103

/-- `A008458(n)+A008574(n)-A315474(n)` -/
def P6788536094022099881.Spec : Prop :=
  ∀ n, P6788536094022099881.a n = A313103 n

end A313103

/-! ## A313103.P16312030233732945392

`A313739(n)-A004396(A004525(n))`
-/

namespace A313103.P16312030233732945392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n - A004396 (A004525 n).toNat

end

end A313103.P16312030233732945392

namespace A313103

/-- `A313739(n)-A004396(A004525(n))` -/
def P16312030233732945392.Spec : Prop :=
  ∀ n, P16312030233732945392.a n = A313103 n

end A313103

/-! ## A313103.P15931738828175233105

`A313789(n)-A004525(n)`
-/

namespace A313103.P15931738828175233105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n - A004525 n

end

end A313103.P15931738828175233105

namespace A313103

/-- `A313789(n)-A004525(n)` -/
def P15931738828175233105.Spec : Prop :=
  ∀ n, P15931738828175233105.a n = A313103 n

end A313103

/-! ## A313103.P10849158174587700814

`A313789(n)-Δ[A054925(n)]`
-/

namespace A313103.P10849158174587700814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n - (f1 (n + 1) - f1 n)

end

end A313103.P10849158174587700814

namespace A313103

/-- `A313789(n)-Δ[A054925(n)]` -/
def P10849158174587700814.Spec : Prop :=
  ∀ n, P10849158174587700814.a n = A313103 n

end A313103

/-! ## A313103.P1965593512560453101

`∑[A021913(n)]+A313789(n)-n`
-/

namespace A313103.P1965593512560453101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A313789 n - (n : ℤ))

end

end A313103.P1965593512560453101

namespace A313103

/-- `∑[A021913(n)]+A313789(n)-n` -/
def P1965593512560453101.Spec : Prop :=
  ∀ n, P1965593512560453101.a n = A313103 n

end A313103

/-! ## A313103.P10621116908296035746

`Δ[A011848(n)]+A313789(n)-n`
-/

namespace A313103.P10621116908296035746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313789 n - (n : ℤ))

end

end A313103.P10621116908296035746

namespace A313103

/-- `Δ[A011848(n)]+A313789(n)-n` -/
def P10621116908296035746.Spec : Prop :=
  ∀ n, P10621116908296035746.a n = A313103 n

end A313103

/-!
# A313104: Coordination sequence Gal.3.24.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313104, there is no canonical definition to state claims against.
-/

/-! ## A313104.P7889745637658763441

`or(A001222(A009291(n)), A175227(n+1))`
-/

namespace A313104.P7889745637658763441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A009291 n).toNat) (A175227 (n + 1))

end

end A313104.P7889745637658763441

/-!
# A313105: Coordination sequence Gal.6.554.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313105, there is no canonical definition to state claims against.
-/

/-! ## A313105.P16809988293817119085

`A314950(n)-A007814(A321721(3*n))`
-/

namespace A313105.P16809988293817119085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314950 n - A007814 (A321721 (3 * n)).toNat

end

end A313105.P16809988293817119085

/-! ## A313105.P10181946002528150736

`A310416(n)-A327051(A316319(n))`
-/

namespace A313105.P10181946002528150736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310416 n - A327051 (A316319 n).toNat

end

end A313105.P10181946002528150736

/-! ## A313105.P18164442871684758804

`xor(A144625(A265067(n)), A301298(n))`
-/

namespace A313105.P18164442871684758804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A144625 (A265067 n).toNat) (A301298 n)

end

end A313105.P18164442871684758804

/-!
# A313106: Coordination sequence Gal.5.261.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313106, there is no canonical definition to state claims against.
-/

/-! ## A313106.P12469627305545696736

`A311575(n)+A001222(A120305(n))`
-/

namespace A313106.P12469627305545696736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311575 n + A001222 (A120305 n).toNat

end

end A313106.P12469627305545696736

/-! ## A313106.P6175327544159793088

`A312176(n)+A181712(A026596(n))`
-/

namespace A313106.P6175327544159793088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312176 n + A181712 (A026596 n).toNat

end

end A313106.P6175327544159793088

/-! ## A313106.P3691018849570963588

`A337383(A000244(n))+A312118(n)`
-/

namespace A313106.P3691018849570963588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337383 (A000244 n).toNat + A312118 n

end

end A313106.P3691018849570963588

/-! ## A313106.P4130688591512174540

`A312118(n)-A081729(A001790(n))`
-/

namespace A313106.P4130688591512174540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312118 n - A081729 (A001790 n).toNat

end

end A313106.P4130688591512174540

/-! ## A313106.P10874679750493019301

`A312078(n)+A316866(n)-A081729(A001790(n))`
-/

namespace A313106.P10874679750493019301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312078 n + (A316866 n - A081729 (A001790 n).toNat)

end

end A313106.P10874679750493019301

/-!
# A313107: Coordination sequence Gal.5.152.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313107, there is no canonical definition to state claims against.
-/

/-! ## A313107.P7245937720993413018

`A000201(∑[A344961((n+1)²)])`
-/

namespace A313107.P7245937720993413018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344961 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A313107.P7245937720993413018

/-! ## A313107.P2221451116809161208

`A310257(n)+A001221(A005493(n))`
-/

namespace A313107.P2221451116809161208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310257 n + A001221 (A005493 n).toNat

end

end A313107.P2221451116809161208

/-! ## A313107.P3193210359769367744

`A311520(n)+A001222(A014517(n))`
-/

namespace A313107.P3193210359769367744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311520 n + A001222 (A014517 n).toNat

end

end A313107.P3193210359769367744

/-! ## A313107.P16034183459898048275

`A311523(n)+A001222(A255540(n+1))`
-/

namespace A313107.P16034183459898048275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311523 n + A001222 (A255540 (n + 1)).toNat

end

end A313107.P16034183459898048275

/-!
# A313108: Coordination sequence Gal.5.246.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313108, there is no canonical definition to state claims against.
-/

/-! ## A313108.P10081631500148396214

`A008706(n)-A072670(A000292(3*(n+1)))`
-/

namespace A313108.P10081631500148396214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A072670 (A000292 (3 * (n + 1))).toNat

end

end A313108.P10081631500148396214

/-! ## A313108.P3069309346233145995

`A313044(n)+A230093(A002426(n))`
-/

namespace A313108.P3069309346233145995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313044 n + A230093 (A002426 n).toNat

end

end A313108.P3069309346233145995

/-! ## A313108.P7565934225752650751

`A313044(n)+A157928(A198324(n))`
-/

namespace A313108.P7565934225752650751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313044 n + A157928 (A198324 n).toNat

end

end A313108.P7565934225752650751

/-! ## A313108.P7049765943647137993

`A250120(n)-A172293(A110518(n))`
-/

namespace A313108.P7049765943647137993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A172293 (A110518 n).toNat

end

end A313108.P7049765943647137993

/-! ## A313108.P9390091776396993198

`A250120(n)-A014372(A352369(n))`
-/

namespace A313108.P9390091776396993198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A014372 (A352369 n).toNat

end

end A313108.P9390091776396993198

/-!
# A313109: Coordination sequence Gal.6.357.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313109, there is no canonical definition to state claims against.
-/

/-! ## A313109.P6313016351927652047

`A312622(n)-A014017(n+2)`
-/

namespace A313109.P6313016351927652047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312622 n - A014017 (n + 2)

end

end A313109.P6313016351927652047

/-! ## A313109.P10777086161382075413

`abs(A312622(n)+A014017(n+6))`
-/

namespace A313109.P10777086161382075413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A312622 n + A014017 (n + 6)|

end

end A313109.P10777086161382075413

/-! ## A313109.P7729190159285862297

`A312622(n)+A014017(n+6)^A000040(n+1)`
-/

namespace A313109.P7729190159285862297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312622 n : ℚ) + (A014017 (n + 6) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A313109.P7729190159285862297

/-! ## A313109.P301740314914540790

`A028310(A312622(n)+A014017(n+6))`
-/

namespace A313109.P301740314914540790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A312622 n + A014017 (n + 6)).toNat

end

end A313109.P301740314914540790

/-! ## A313109.P1560807053913880608

`A312622(n)+A014017(n+6)^p?[A253047(n+1)]`
-/

namespace A313109.P1560807053913880608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253047 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312622 n : ℚ) + (A014017 (n + 6) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A313109.P1560807053913880608

/-!
# A313110: Coordination sequence Gal.3.13.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313110, the canonical program `A313110.P8718307215339103209` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313110 has offset 0).

The definition of A313110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313110.P4584031155774016581

`A301298(n)-A134667(n)`
-/

namespace A313110.P4584031155774016581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A134667 n

end

end A313110.P4584031155774016581

namespace A313110

/-- `A301298(n)-A134667(n)` -/
def P4584031155774016581.Spec : Prop :=
  ∀ n, P4584031155774016581.a n = A313110 n

end A313110

/-! ## A313110.P7053471698403200128

`A008574(n)+∑[A131735(n)]`
-/

namespace A313110.P7053471698403200128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313110.P7053471698403200128

namespace A313110

/-- `A008574(n)+∑[A131735(n)]` -/
def P7053471698403200128.Spec : Prop :=
  ∀ n, P7053471698403200128.a n = A313110 n

end A313110

/-! ## A313110.P8718307215339103209

`A312065(n)+A002264(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313110

/-- `A312065(n)+A002264(n+1)` -/
def P8718307215339103209.Spec : Prop :=
  ∀ n, P8718307215339103209.a n = A313110 n

theorem P8718307215339103209.correct : P8718307215339103209.Spec := by
  intro n
  simp only [A313110]

end A313110

/-! ## A313110.P11505586405035140411

`A298786(n)+A047513(n+1)`
-/

namespace A313110.P11505586405035140411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + A047513 (n + 1)

end

end A313110.P11505586405035140411

namespace A313110

/-- `A298786(n)+A047513(n+1)` -/
def P11505586405035140411.Spec : Prop :=
  ∀ n, P11505586405035140411.a n = A313110 n

end A313110

/-! ## A313110.P12891006248141829562

`A008458(n)-A047424(n+1)`
-/

namespace A313110.P12891006248141829562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047424 (n + 1)

end

end A313110.P12891006248141829562

namespace A313110

/-- `A008458(n)-A047424(n+1)` -/
def P12891006248141829562.Spec : Prop :=
  ∀ n, P12891006248141829562.a n = A313110 n

end A313110

/-! ## A313110.P1458628566514771385

`A271114(n)-A047564(n+1)`
-/

namespace A313110.P1458628566514771385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A047564 (n + 1)

end

end A313110.P1458628566514771385

namespace A313110

/-- `A271114(n)-A047564(n+1)` -/
def P1458628566514771385.Spec : Prop :=
  ∀ n, P1458628566514771385.a n = A313110 n

end A313110

/-! ## A313110.P9401975103880869880

`(A310525(n)+A008574(n))/2`
-/

namespace A313110.P9401975103880869880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310525 n + A008574 n : ℚ) / 2

end

end A313110.P9401975103880869880

namespace A313110

/-- `(A310525(n)+A008574(n))/2` -/
def P9401975103880869880.Spec : Prop :=
  ∀ n, P9401975103880869880.a n = (A313110 n : ℚ)

end A313110

/-! ## A313110.P4478799895048497940

`A004525(n)+A310511(n)-n`
-/

namespace A313110.P4478799895048497940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310511 n - (n : ℤ))

end

end A313110.P4478799895048497940

namespace A313110

/-- `A004525(n)+A310511(n)-n` -/
def P4478799895048497940.Spec : Prop :=
  ∀ n, P4478799895048497940.a n = A313110 n

end A313110

/-! ## A313110.P419513627656710058

`A312065(n)+n-A004396(n)`
-/

namespace A313110.P419513627656710058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + ((n : ℤ) - A004396 n)

end

end A313110.P419513627656710058

namespace A313110

/-- `A312065(n)+n-A004396(n)` -/
def P419513627656710058.Spec : Prop :=
  ∀ n, P419513627656710058.a n = A313110 n

end A313110

/-! ## A313110.P17121256372296616404

`A271114(n)-(A099480(n)+n)`
-/

namespace A313110.P17121256372296616404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - (A099480 n + (n : ℤ))

end

end A313110.P17121256372296616404

namespace A313110

/-- `A271114(n)-(A099480(n)+n)` -/
def P17121256372296616404.Spec : Prop :=
  ∀ n, P17121256372296616404.a n = A313110 n

end A313110

/-! ## A313110.P11675685143707947980

`A315693(n)-(A128834(n)+n)`
-/

namespace A313110.P11675685143707947980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 n - (A128834 n + (n : ℤ))

end

end A313110.P11675685143707947980

namespace A313110

/-- `A315693(n)-(A128834(n)+n)` -/
def P11675685143707947980.Spec : Prop :=
  ∀ n, P11675685143707947980.a n = A313110 n

end A313110

/-! ## A313110.P509564698437421346

`∑[A131735(n)]+A008486(n)+n`
-/

namespace A313110.P509564698437421346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A008486 n + (n : ℤ))

end

end A313110.P509564698437421346

namespace A313110

/-- `∑[A131735(n)]+A008486(n)+n` -/
def P509564698437421346.Spec : Prop :=
  ∀ n, P509564698437421346.a n = A313110 n

end A313110

/-! ## A313110.P79199766878053182

`A008486(2*n)-A047424(n+1)`
-/

namespace A313110.P79199766878053182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A047424 (n + 1)

end

end A313110.P79199766878053182

namespace A313110

/-- `A008486(2*n)-A047424(n+1)` -/
def P79199766878053182.Spec : Prop :=
  ∀ n, P79199766878053182.a n = A313110 n

end A313110

/-! ## A313110.P5114432328216838068

`A042965(n+1)+A312065(n)-n`
-/

namespace A313110.P5114432328216838068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + (A312065 n - (n : ℤ))

end

end A313110.P5114432328216838068

namespace A313110

/-- `A042965(n+1)+A312065(n)-n` -/
def P5114432328216838068.Spec : Prop :=
  ∀ n, P5114432328216838068.a n = A313110 n

end A313110

/-! ## A313110.P8987694038877942631

`A004275(3*n+1)-A047424(n+1)`
-/

namespace A313110.P8987694038877942631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (3 * n + 1) - A047424 (n + 1)

end

end A313110.P8987694038877942631

namespace A313110

/-- `A004275(3*n+1)-A047424(n+1)` -/
def P8987694038877942631.Spec : Prop :=
  ∀ n, P8987694038877942631.a n = A313110 n

end A313110

/-! ## A313110.P2302820269462494824

`A008486(n)+A312065(n)-A008576(n)`
-/

namespace A313110.P2302820269462494824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A312065 n - A008576 n)

end

end A313110.P2302820269462494824

namespace A313110

/-- `A008486(n)+A312065(n)-A008576(n)` -/
def P2302820269462494824.Spec : Prop :=
  ∀ n, P2302820269462494824.a n = A313110 n

end A313110

/-! ## A313110.P15606853128925419292

`A313510(n)-A128834(n)`
-/

namespace A313110.P15606853128925419292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n - A128834 n

end

end A313110.P15606853128925419292

namespace A313110

/-- `A313510(n)-A128834(n)` -/
def P15606853128925419292.Spec : Prop :=
  ∀ n, P15606853128925419292.a n = A313110 n

theorem P15606853128925419292.correct : P15606853128925419292.Spec := by
  intro n
  simp only [A313110, Nat.add_sub_cancel, A313110.P15606853128925419292.a, A313110.P8718307215339103209.a, A002264, A002264.P5647656940077635922.a, A128834, A128834.P16779687439637953687.a, A312065, A312065.P12266081500591104946.a, A313510, A313510.P5280808024420407807.a, A008486, A008486.P11623131867527198563.a, A010892, A010892.P14408744864468695543.a, A047513, A047513.P16955071387491425171.f1, A047513.P16955071387491425171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313110

/-! ## A313110.P18436298275425786651

`A004396(n)-(n-A310461(n))`
-/

namespace A313110.P18436298275425786651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n - ((n : ℤ) - A310461 n)

end

end A313110.P18436298275425786651

namespace A313110

/-- `A004396(n)-(n-A310461(n))` -/
def P18436298275425786651.Spec : Prop :=
  ∀ n, P18436298275425786651.a n = A313110 n

end A313110

/-! ## A313110.P2807157750921357028

`A008576(n)+A310461(n)-A008486(n)`
-/

namespace A313110.P2807157750921357028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A310461 n - A008486 n)

end

end A313110.P2807157750921357028

namespace A313110

/-- `A008576(n)+A310461(n)-A008486(n)` -/
def P2807157750921357028.Spec : Prop :=
  ∀ n, P2807157750921357028.a n = A313110 n

end A313110

/-! ## A313110.P8799093440680437580

`A313791(n)-A004525(n)`
-/

namespace A313110.P8799093440680437580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313791 n - A004525 n

end

end A313110.P8799093440680437580

namespace A313110

/-- `A313791(n)-A004525(n)` -/
def P8799093440680437580.Spec : Prop :=
  ∀ n, P8799093440680437580.a n = A313110 n

theorem P8799093440680437580.correct : P8799093440680437580.Spec := by
  intro n
  simp only [A313110, Nat.add_sub_cancel, A313110.P8799093440680437580.a, A313110.P8718307215339103209.a, A002264, A002264.P5647656940077635922.a, A004525, A004525.P4158271949796742323.a, A312065, A312065.P12266081500591104946.a, A313791, A313791.P11156003567688367397.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P16955071387491425171.f1, A047513.P16955071387491425171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313110

/-!
# A313111: Coordination sequence Gal.6.448.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313111, there is no canonical definition to state claims against.
-/

/-! ## A313111.P5403172265967443500

`record[A313112(n)-A033483(n)]`
-/

namespace A313111.P5403172265967443500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313112 n - A033483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313111.P5403172265967443500

/-! ## A313111.P15052758311884261739

`A313112(n)-A108497(A052551(n))`
-/

namespace A313111.P15052758311884261739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313112 n - A108497 (A052551 n).toNat

end

end A313111.P15052758311884261739

/-! ## A313111.P11573259521714634183

`A313112(n)-A185284(A175106(n))`
-/

namespace A313111.P11573259521714634183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313112 n - A185284 (A175106 n).toNat

end

end A313111.P11573259521714634183

/-! ## A313111.P9876530275390418672

`A313112(n)-A033483(n*A033483(n))`
-/

namespace A313111.P9876530275390418672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313112 n - A033483 ((n : ℤ) * A033483 n).toNat

end

end A313111.P9876530275390418672

/-! ## A313111.P11751539224995579465

`∑[A096509(A075426(n))+1]`
-/

namespace A313111.P11751539224995579465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (A075426 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313111.P11751539224995579465

/-!
# A313112: Coordination sequence Gal.6.447.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313112, there is no canonical definition to state claims against.
-/

/-! ## A313112.P9924438251189816668

`A313111(n)+A086076(A122111(3*n+4))`
-/

namespace A313112.P9924438251189816668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313111 n + A086076 (A122111 (3 * n + 4)).toNat

end

end A313112.P9924438251189816668

/-! ## A313112.P2985275959313538708

`A313111(n)+A185284(A175106(n))`
-/

namespace A313112.P2985275959313538708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313111 n + A185284 (A175106 n).toNat

end

end A313112.P2985275959313538708

/-! ## A313112.P14095051184228419261

`A313100(n)+A049320(A112472(3*n+5))`
-/

namespace A313112.P14095051184228419261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A049320 (A112472 (3 * n + 5)).toNat

end

end A313112.P14095051184228419261

/-!
# A313113: Coordination sequence Gal.6.133.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313113, the canonical program `A313113.P5106100273962664714` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313113 has offset 0).

The definition of A313113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313113.P7212017086170450251

`abs(A008592(n)-A315470(n))`
-/

namespace A313113.P7212017086170450251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315470 n|

end

end A313113.P7212017086170450251

namespace A313113

/-- `abs(A008592(n)-A315470(n))` -/
def P7212017086170450251.Spec : Prop :=
  ∀ n, P7212017086170450251.a n = A313113 n

end A313113

/-! ## A313113.P7453919133108674201

`2*A008706(n)-A315470(n)`
-/

namespace A313113.P7453919133108674201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315470 n

end

end A313113.P7453919133108674201

namespace A313113

/-- `2*A008706(n)-A315470(n)` -/
def P7453919133108674201.Spec : Prop :=
  ∀ n, P7453919133108674201.a n = A313113 n

end A313113

/-! ## A313113.P4294299922074911158

`A008458(n)+A008574(n)-A315470(n)`
-/

namespace A313113.P4294299922074911158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315470 n)

end

end A313113.P4294299922074911158

namespace A313113

/-- `A008458(n)+A008574(n)-A315470(n)` -/
def P4294299922074911158.Spec : Prop :=
  ∀ n, P4294299922074911158.a n = A313113 n

end A313113

/-! ## A313113.P2560797713987964156

`(A310526(n)+A008574(n))/2`
-/

namespace A313113.P2560797713987964156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310526 n + A008574 n : ℚ) / 2

end

end A313113.P2560797713987964156

namespace A313113

/-- `(A310526(n)+A008574(n))/2` -/
def P2560797713987964156.Spec : Prop :=
  ∀ n, P2560797713987964156.a n = (A313113 n : ℚ)

theorem P2560797713987964156.correct : P2560797713987964156.Spec := by
  intro n
  simp only [A313113, Nat.add_sub_cancel, A313113.P2560797713987964156.a, A313113.P5106100273962664714.a, A008574, A008574.P1300280032690682112.a, A310526, A310526.P8794290420324191919.a, A311932, A311932.P15341292208442206404.f1, A311932.P15341292208442206404.a, A011864, A011864.P3547417513882699266.a, A311434, A311434.P5901078868228664766.a, A004525, A004525.P4158271949796742323.a, A311481, A311481.P6523631880089765102.a, A008592, A008592.P4981059802862696142.a, A315746, A315746.P339001443445391414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313113

/-! ## A313113.P4125842929301570406

`A005843(A008458(n)-n)-A315470(n)`
-/

namespace A313113.P4125842929301570406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315470 n

end

end A313113.P4125842929301570406

namespace A313113

/-- `A005843(A008458(n)-n)-A315470(n)` -/
def P4125842929301570406.Spec : Prop :=
  ∀ n, P4125842929301570406.a n = A313113 n

end A313113

/-! ## A313113.P4874118827831772598

`A004526(A310526(n))+A004277(n)`
-/

namespace A313113.P4874118827831772598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310526 n).toNat + A004277 n

end

end A313113.P4874118827831772598

namespace A313113

/-- `A004526(A310526(n))+A004277(n)` -/
def P4874118827831772598.Spec : Prop :=
  ∀ n, P4874118827831772598.a n = A313113 n

end A313113

/-! ## A313113.P6855222465091329922

`A004396(A310471(n)+2*n)`
-/

namespace A313113.P6855222465091329922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310471 n + (2 * n : ℤ)).toNat

end

end A313113.P6855222465091329922

namespace A313113

/-- `A004396(A310471(n)+2*n)` -/
def P6855222465091329922.Spec : Prop :=
  ∀ n, P6855222465091329922.a n = A313113 n

end A313113

/-! ## A313113.P7505350240574137687

`A004396(A310471(n)+n+n)`
-/

namespace A313113.P7505350240574137687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310471 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313113.P7505350240574137687

namespace A313113

/-- `A004396(A310471(n)+n+n)` -/
def P7505350240574137687.Spec : Prop :=
  ∀ n, P7505350240574137687.a n = A313113 n

end A313113

/-! ## A313113.P5106100273962664714

`A311932(2*n)-4*n`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A313113

/-- `A311932(2*n)-4*n` -/
def P5106100273962664714.Spec : Prop :=
  ∀ n, P5106100273962664714.a n = A313113 n

theorem P5106100273962664714.correct : P5106100273962664714.Spec := by
  intro n
  simp only [A313113]

end A313113

/-! ## A313113.P9335960217628214252

`A004396(A312125(2*n)-A005843(n))`
-/

namespace A313113.P9335960217628214252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312125 (2 * n) - A005843 n).toNat

end

end A313113.P9335960217628214252

namespace A313113

/-- `A004396(A312125(2*n)-A005843(n))` -/
def P9335960217628214252.Spec : Prop :=
  ∀ n, P9335960217628214252.a n = A313113 n

end A313113

/-! ## A313113.P15563610331893741297

`2*A008574(2*n)-A315699(2*n)`
-/

namespace A313113.P15563610331893741297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315699 (2 * n)

end

end A313113.P15563610331893741297

namespace A313113

/-- `2*A008574(2*n)-A315699(2*n)` -/
def P15563610331893741297.Spec : Prop :=
  ∀ n, P15563610331893741297.a n = A313113 n

end A313113

/-! ## A313113.P12405538684010020073

`A004525(A312185(2*n))`
-/

namespace A313113.P12405538684010020073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312185 (2 * n)).toNat

end

end A313113.P12405538684010020073

namespace A313113

/-- `A004525(A312185(2*n))` -/
def P12405538684010020073.Spec : Prop :=
  ∀ n, P12405538684010020073.a n = A313113 n

end A313113

/-! ## A313113.P8322836717185631267

`A004526(A312556(2*n)+1)`
-/

namespace A313113.P8322836717185631267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312556 (2 * n) + 1).toNat

end

end A313113.P8322836717185631267

namespace A313113

/-- `A004526(A312556(2*n)+1)` -/
def P8322836717185631267.Spec : Prop :=
  ∀ n, P8322836717185631267.a n = A313113 n

end A313113

/-! ## A313113.P3711035799274794187

`A312556(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A313113.P3711035799274794187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312556 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A313113.P3711035799274794187

namespace A313113

/-- `A312556(2*n)/(4*n+2-A004277(2*n))` -/
def P3711035799274794187.Spec : Prop :=
  ∀ n, P3711035799274794187.a n = (A313113 n : ℚ)

end A313113

/-!
# A313114: Coordination sequence Gal.4.110.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313114, there is no canonical definition to state claims against.
-/

/-! ## A313114.P9185295481629930827

`A313236(n)-A064990(A071301(n))`
-/

namespace A313114.P9185295481629930827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313236 n - A064990 (A071301 n).toNat

end

end A313114.P9185295481629930827

/-! ## A313114.P18250069186152615235

`A008706(n)-A196563(A292617(n))`
-/

namespace A313114.P18250069186152615235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A196563 (A292617 n).toNat

end

end A313114.P18250069186152615235

/-! ## A313114.P8633728294143149800

`A314944(n)-A200244(A028859(n))`
-/

namespace A313114.P8633728294143149800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314944 n - A200244 (A028859 n).toNat

end

end A313114.P8633728294143149800

/-! ## A313114.P304747719875181663

`A313247(n)-A285196(A007504(n))`
-/

namespace A313114.P304747719875181663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313247 n - A285196 (A007504 n).toNat

end

end A313114.P304747719875181663

/-! ## A313114.P6005093083056034005

`A250120(n)-A081419(n+1)%2`
-/

namespace A313114.P6005093083056034005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - Int.tmod (A081419 (n + 1)) 2

end

end A313114.P6005093083056034005

/-!
# A313115: Coordination sequence Gal.4.43.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313115, the canonical program `A313115.P1984220492497243584` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313115 has offset 0).

The definition of A313115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313115.P16645668252245686512

`A313685(n)-A046978(n)`
-/

namespace A313115.P16645668252245686512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n - A046978 n

end

end A313115.P16645668252245686512

namespace A313115

/-- `A313685(n)-A046978(n)` -/
def P16645668252245686512.Spec : Prop :=
  ∀ n, P16645668252245686512.a n = A313115 n

end A313115

/-! ## A313115.P17659322877502462802

`A315020(n)-A188510(n)`
-/

namespace A313115.P17659322877502462802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315020 n - A188510 n

end

end A313115.P17659322877502462802

namespace A313115

/-- `A315020(n)-A188510(n)` -/
def P17659322877502462802.Spec : Prop :=
  ∀ n, P17659322877502462802.a n = A313115 n

end A313115

/-! ## A313115.P5177257950990413258

`(A310530(n)+A008574(n))/2`
-/

namespace A313115.P5177257950990413258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310530 n + A008574 n : ℚ) / 2

end

end A313115.P5177257950990413258

namespace A313115

/-- `(A310530(n)+A008574(n))/2` -/
def P5177257950990413258.Spec : Prop :=
  ∀ n, P5177257950990413258.a n = (A313115 n : ℚ)

end A313115

/-! ## A313115.P1984220492497243584

`A311501(n)+n-A004525(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313115

/-- `A311501(n)+n-A004525(n)` -/
def P1984220492497243584.Spec : Prop :=
  ∀ n, P1984220492497243584.a n = A313115 n

theorem P1984220492497243584.correct : P1984220492497243584.Spec := by
  intro n
  simp only [A313115]

end A313115

/-! ## A313115.P4177439337254383142

`round((A310530(n)+A008586(n))/2)`
-/

namespace A313115.P4177439337254383142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A310530 n + A008586 n : ℚ) / 2)

end

end A313115.P4177439337254383142

namespace A313115

/-- `round((A310530(n)+A008586(n))/2)` -/
def P4177439337254383142.Spec : Prop :=
  ∀ n, P4177439337254383142.a n = A313115 n

end A313115

/-! ## A313115.P4365110398414099302

`abs(A008592(n)-(A314672(n)+n))`
-/

namespace A313115.P4365110398414099302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A314672 n + (n : ℤ))|

end

end A313115.P4365110398414099302

namespace A313115

/-- `abs(A008592(n)-(A314672(n)+n))` -/
def P4365110398414099302.Spec : Prop :=
  ∀ n, P4365110398414099302.a n = A313115 n

end A313115

/-! ## A313115.P11591826087629208614

`A047273(n+1)+A311501(n)-n`
-/

namespace A313115.P11591826087629208614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) + (A311501 n - (n : ℤ))

end

end A313115.P11591826087629208614

namespace A313115

/-- `A047273(n+1)+A311501(n)-n` -/
def P11591826087629208614.Spec : Prop :=
  ∀ n, P11591826087629208614.a n = A313115 n

end A313115

/-! ## A313115.P831435811542883438

`A008706(n)-A004525(A004525(n))`
-/

namespace A313115.P831435811542883438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A004525 (A004525 n).toNat

end

end A313115.P831435811542883438

namespace A313115

/-- `A008706(n)-A004525(A004525(n))` -/
def P831435811542883438.Spec : Prop :=
  ∀ n, P831435811542883438.a n = A313115 n

end A313115

/-! ## A313115.P304916650026065697

`A301293(n)+A201629(A004525(n))/2`
-/

namespace A313115.P304916650026065697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301293 n : ℚ) + (A201629 (A004525 n).toNat : ℚ) / 2

end

end A313115.P304916650026065697

namespace A313115

/-- `A301293(n)+A201629(A004525(n))/2` -/
def P304916650026065697.Spec : Prop :=
  ∀ n, P304916650026065697.a n = (A313115 n : ℚ)

end A313115

/-! ## A313115.P18336774518389920886

`A008458(n)-(A004525(A004525(n))+n)`
-/

namespace A313115.P18336774518389920886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A004525 (A004525 n).toNat + (n : ℤ))

end

end A313115.P18336774518389920886

namespace A313115

/-- `A008458(n)-(A004525(A004525(n))+n)` -/
def P18336774518389920886.Spec : Prop :=
  ∀ n, P18336774518389920886.a n = A313115 n

end A313115

/-! ## A313115.P16597949516863239618

`A008574(n)+n-A004525(A004525(n))`
-/

namespace A313115.P16597949516863239618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A313115.P16597949516863239618

namespace A313115

/-- `A008574(n)+n-A004525(A004525(n))` -/
def P16597949516863239618.Spec : Prop :=
  ∀ n, P16597949516863239618.a n = A313115 n

end A313115

/-! ## A313115.P10346532935513884539

`A004525(A004525(n))+A310530(n)-n`
-/

namespace A313115.P10346532935513884539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A310530 n - (n : ℤ))

end

end A313115.P10346532935513884539

namespace A313115

/-- `A004525(A004525(n))+A310530(n)-n` -/
def P10346532935513884539.Spec : Prop :=
  ∀ n, P10346532935513884539.a n = A313115 n

end A313115

/-! ## A313115.P7906030118969469754

`A312140(n)+A004525(n-A004525(n))`
-/

namespace A313115.P7906030118969469754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A313115.P7906030118969469754

namespace A313115

/-- `A312140(n)+A004525(n-A004525(n))` -/
def P7906030118969469754.Spec : Prop :=
  ∀ n, P7906030118969469754.a n = A313115 n

end A313115

/-! ## A313115.P16732112161818927346

`A008458(n)+A008486(n)-A314672(n)`
-/

namespace A313115.P16732112161818927346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314672 n)

end

end A313115.P16732112161818927346

namespace A313115

/-- `A008458(n)+A008486(n)-A314672(n)` -/
def P16732112161818927346.Spec : Prop :=
  ∀ n, P16732112161818927346.a n = A313115 n

end A313115

/-! ## A313115.P6806624777960584862

`A313561(n)-A046978(A046978(n)+n)`
-/

namespace A313115.P6806624777960584862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n - A046978 (A046978 n + (n : ℤ)).toNat

end

end A313115.P6806624777960584862

namespace A313115

/-- `A313561(n)-A046978(A046978(n)+n)` -/
def P6806624777960584862.Spec : Prop :=
  ∀ n, P6806624777960584862.a n = A313115 n

end A313115

/-! ## A313115.P16345836322378143074

`record[A195140(n+1)]-A004525(A004525(n))`
-/

namespace A313115.P16345836322378143074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004525 (A004525 n).toNat

end

end A313115.P16345836322378143074

namespace A313115

/-- `record[A195140(n+1)]-A004525(A004525(n))` -/
def P16345836322378143074.Spec : Prop :=
  ∀ n, P16345836322378143074.a n = A313115 n

end A313115

/-! ## A313115.P3832171412796479104

`A005843(n)+A008486(n)-A004525(A004525(n))`
-/

namespace A313115.P3832171412796479104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A008486 n - A004525 (A004525 n).toNat)

end

end A313115.P3832171412796479104

namespace A313115

/-- `A005843(n)+A008486(n)-A004525(A004525(n))` -/
def P3832171412796479104.Spec : Prop :=
  ∀ n, P3832171412796479104.a n = A313115 n

end A313115

/-! ## A313115.P7294419259743224217

`A312205(n)+A046978(n-A046978(n))`
-/

namespace A313115.P7294419259743224217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n + A046978 ((n : ℤ) - A046978 n).toNat

end

end A313115.P7294419259743224217

namespace A313115

/-- `A312205(n)+A046978(n-A046978(n))` -/
def P7294419259743224217.Spec : Prop :=
  ∀ n, P7294419259743224217.a n = A313115 n

end A313115

/-! ## A313115.P9127656647588384817

`A310458(n)-A004525(n-A004525(n))`
-/

namespace A313115.P9127656647588384817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310458 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A313115.P9127656647588384817

namespace A313115

/-- `A310458(n)-A004525(n-A004525(n))` -/
def P9127656647588384817.Spec : Prop :=
  ∀ n, P9127656647588384817.a n = A313115 n

end A313115

/-! ## A313115.P1922058420621153738

`A194225(n+1)+A314123(n)-n`
-/

namespace A313115.P1922058420621153738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194225 (n + 1) + (A314123 n - (n : ℤ))

end

end A313115.P1922058420621153738

namespace A313115

/-- `A194225(n+1)+A314123(n)-n` -/
def P1922058420621153738.Spec : Prop :=
  ∀ n, P1922058420621153738.a n = A313115 n

end A313115

/-!
# A313116: Coordination sequence Gal.5.116.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313116, the canonical program `A313116.P8612234978426201844` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313116 has offset 0).

The definition of A313116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313116.P6299548618978382465

`A314087(n)-A253262(n)`
-/

namespace A313116.P6299548618978382465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314087 n - A253262 n

end

end A313116.P6299548618978382465

namespace A313116

/-- `A314087(n)-A253262(n)` -/
def P6299548618978382465.Spec : Prop :=
  ∀ n, P6299548618978382465.a n = A313116 n

end A313116

/-! ## A313116.P15274008771769095619

`A313719(n)-A330025(n)`
-/

namespace A313116.P15274008771769095619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n - A330025 n

end

end A313116.P15274008771769095619

namespace A313116

/-- `A313719(n)-A330025(n)` -/
def P15274008771769095619.Spec : Prop :=
  ∀ n, P15274008771769095619.a n = A313116 n

end A313116

/-! ## A313116.P18355019671883327657

`A311958(n)+Δ[A011858(n)]`
-/

namespace A313116.P18355019671883327657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311958 n + (f1 (n + 1) - f1 n)

end

end A313116.P18355019671883327657

namespace A313116

/-- `A311958(n)+Δ[A011858(n)]` -/
def P18355019671883327657.Spec : Prop :=
  ∀ n, P18355019671883327657.a n = A313116 n

end A313116

/-! ## A313116.P4461657900624843231

`A311958(n)+A057354(n+1)`
-/

namespace A313116.P4461657900624843231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311958 n + A057354 (n + 1)

end

end A313116.P4461657900624843231

namespace A313116

/-- `A311958(n)+A057354(n+1)` -/
def P4461657900624843231.Spec : Prop :=
  ∀ n, P4461657900624843231.a n = A313116 n

end A313116

/-! ## A313116.P7118328464475810552

`(A310532(n)+A008574(n))/2`
-/

namespace A313116.P7118328464475810552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310532 n + A008574 n : ℚ) / 2

end

end A313116.P7118328464475810552

namespace A313116

/-- `(A310532(n)+A008574(n))/2` -/
def P7118328464475810552.Spec : Prop :=
  ∀ n, P7118328464475810552.a n = (A313116 n : ℚ)

end A313116

/-! ## A313116.P6681977159624259859

`A151988(n)+A313090(n)-n`
-/

namespace A313116.P6681977159624259859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A313090 n - (n : ℤ))

end

end A313116.P6681977159624259859

namespace A313116

/-- `A151988(n)+A313090(n)-n` -/
def P6681977159624259859.Spec : Prop :=
  ∀ n, P6681977159624259859.a n = A313116 n

end A313116

/-! ## A313116.P18032863802793460533

`abs(A008592(n)-(A314670(n)+n))`
-/

namespace A313116.P18032863802793460533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A314670 n + (n : ℤ))|

end

end A313116.P18032863802793460533

namespace A313116

/-- `abs(A008592(n)-(A314670(n)+n))` -/
def P18032863802793460533.Spec : Prop :=
  ∀ n, P18032863802793460533.a n = A313116 n

end A313116

/-! ## A313116.P14272514281063924236

`A047486(n+1)+A311289(n)-n`
-/

namespace A313116.P14272514281063924236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A311289 n - (n : ℤ))

end

end A313116.P14272514281063924236

namespace A313116

/-- `A047486(n+1)+A311289(n)-n` -/
def P14272514281063924236.Spec : Prop :=
  ∀ n, P14272514281063924236.a n = A313116 n

end A313116

/-! ## A313116.P9789079067328823444

`A047299(n+1)+A311958(n)-n`
-/

namespace A313116.P9789079067328823444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + (A311958 n - (n : ℤ))

end

end A313116.P9789079067328823444

namespace A313116

/-- `A047299(n+1)+A311958(n)-n` -/
def P9789079067328823444.Spec : Prop :=
  ∀ n, P9789079067328823444.a n = A313116 n

end A313116

/-! ## A313116.P5525228766337771736

`A047263(n+1)+A312948(n)-n`
-/

namespace A313116.P5525228766337771736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A312948 n - (n : ℤ))

end

end A313116.P5525228766337771736

namespace A313116

/-- `A047263(n+1)+A312948(n)-n` -/
def P5525228766337771736.Spec : Prop :=
  ∀ n, P5525228766337771736.a n = A313116 n

end A313116

/-! ## A313116.P5810388257878016906

`A191275(n+1)+A311157(n)-n`
-/

namespace A313116.P5810388257878016906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1) + (A311157 n - (n : ℤ))

end

end A313116.P5810388257878016906

namespace A313116

/-- `A191275(n+1)+A311157(n)-n` -/
def P5810388257878016906.Spec : Prop :=
  ∀ n, P5810388257878016906.a n = A313116 n

end A313116

/-! ## A313116.P5099148408612076054

`A005843(A008574(n))+n-A314670(n)`
-/

namespace A313116.P5099148408612076054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A314670 n)

end

end A313116.P5099148408612076054

namespace A313116

/-- `A005843(A008574(n))+n-A314670(n)` -/
def P5099148408612076054.Spec : Prop :=
  ∀ n, P5099148408612076054.a n = A313116 n

end A313116

/-! ## A313116.P229957586317567244

`A008458(n)+A008486(n)-A314670(n)`
-/

namespace A313116.P229957586317567244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314670 n)

end

end A313116.P229957586317567244

namespace A313116

/-- `A008458(n)+A008486(n)-A314670(n)` -/
def P229957586317567244.Spec : Prop :=
  ∀ n, P229957586317567244.a n = A313116 n

end A313116

/-! ## A313116.P8612234978426201844

`A330025(n-A330025(n))+A312162(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313116

/-- `A330025(n-A330025(n))+A312162(n)` -/
def P8612234978426201844.Spec : Prop :=
  ∀ n, P8612234978426201844.a n = A313116 n

theorem P8612234978426201844.correct : P8612234978426201844.Spec := by
  intro n
  simp only [A313116]

end A313116

/-! ## A313116.P10205283424098946444

`A313692(n)-A330025(A330025(n)+n)`
-/

namespace A313116.P10205283424098946444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A313116.P10205283424098946444

namespace A313116

/-- `A313692(n)-A330025(A330025(n)+n)` -/
def P10205283424098946444.Spec : Prop :=
  ∀ n, P10205283424098946444.a n = A313116 n

end A313116

/-! ## A313116.P12232634813714733345

`A313255(n)-A002266(n+2)`
-/

namespace A313116.P12232634813714733345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313255 n - A002266 (n + 2)

end

end A313116.P12232634813714733345

namespace A313116

/-- `A313255(n)-A002266(n+2)` -/
def P12232634813714733345.Spec : Prop :=
  ∀ n, P12232634813714733345.a n = A313116 n

theorem P12232634813714733345.correct : P12232634813714733345.Spec := by
  intro n
  simp only [A313116, Nat.add_sub_cancel, A313116.P12232634813714733345.a, A313116.P8612234978426201844.a, A002266, A002266.P12055520221930490546.a, A312162, A312162.P8460047677510331873.a, A313255, A313255.P1594934984092539332.a, A330025, A330025.P16976327817596103196.a, A008574, A008574.P1300280032690682112.a, A011558, A011558.P14291727921269463220.a, A047263, A047263.P10177617567604490545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A313116

/-! ## A313116.P14450806651309200955

`abs(A008592(n)-A315468(n))`
-/

namespace A313116.P14450806651309200955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315468 n|

end

end A313116.P14450806651309200955

namespace A313116

/-- `abs(A008592(n)-A315468(n))` -/
def P14450806651309200955.Spec : Prop :=
  ∀ n, P14450806651309200955.a n = A313116 n

end A313116

/-! ## A313116.P5433833688502916709

`A008458(n)+A008574(n)-A315468(n)`
-/

namespace A313116.P5433833688502916709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315468 n)

end

end A313116.P5433833688502916709

namespace A313116

/-- `A008458(n)+A008574(n)-A315468(n)` -/
def P5433833688502916709.Spec : Prop :=
  ∀ n, P5433833688502916709.a n = A313116 n

end A313116

/-! ## A313116.P16428823706817941255

`A314252(n)-n`
-/

namespace A313116.P16428823706817941255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n - (n : ℤ)

end

end A313116.P16428823706817941255

namespace A313116

/-- `A314252(n)-n` -/
def P16428823706817941255.Spec : Prop :=
  ∀ n, P16428823706817941255.a n = A313116 n

theorem P16428823706817941255.correct : P16428823706817941255.Spec := by
  intro n
  simp only [A313116, Nat.add_sub_cancel, A313116.P16428823706817941255.a, A313116.P8612234978426201844.a, A312162, A312162.P8460047677510331873.a, A314252, A314252.P9634804335758676249.a, A330025, A330025.P16976327817596103196.a, A008574, A008574.P1300280032690682112.a, A011558, A011558.P14291727921269463220.a, A047263, A047263.P10177617567604490545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A313116

/-! ## A313116.P5408670750658258644

`A315761(n)-(A330025(n)+n)`
-/

namespace A313116.P5408670750658258644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315761 n - (A330025 n + (n : ℤ))

end

end A313116.P5408670750658258644

namespace A313116

/-- `A315761(n)-(A330025(n)+n)` -/
def P5408670750658258644.Spec : Prop :=
  ∀ n, P5408670750658258644.a n = A313116 n

theorem P5408670750658258644.correct : P5408670750658258644.Spec := by
  intro n
  simp only [A313116, Nat.add_sub_cancel, A313116.P5408670750658258644.a, A313116.P8612234978426201844.a, A312162, A312162.P8460047677510331873.a, A315761, A315761.P1947908363640495384.a, A330025, A330025.P16976327817596103196.a, A008574, A008574.P1300280032690682112.a, A011558, A011558.P14291727921269463220.a, A047263, A047263.P10177617567604490545.a, A314252, A314252.P9634804335758676249.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A313116

/-!
# A313117: Coordination sequence Gal.6.134.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313117, the canonical program `A313117.P16447127706921561156` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313117 has offset 0).

The definition of A313117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313117.P11955116753935564300

`A313515(n)-A128834(n)`
-/

namespace A313117.P11955116753935564300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313515 n - A128834 n

end

end A313117.P11955116753935564300

namespace A313117

/-- `A313515(n)-A128834(n)` -/
def P11955116753935564300.Spec : Prop :=
  ∀ n, P11955116753935564300.a n = A313117 n

theorem P11955116753935564300.correct : P11955116753935564300.Spec := by
  intro n
  simp only [A313117, Nat.add_sub_cancel, A313117.P11955116753935564300.a, A313117.P16447127706921561156.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A128834, A128834.P16779687439637953687.a, A312123, A312123.P2703485450737880313.a, A313515, A313515.P11298845023019683879.a, A008592, A008592.P4981059802862696142.a, A010892, A010892.P14408744864468695543.a, A315687, A315687.P9579488049278104774.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, A312890, A312890.P5869710039852604831.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313117

/-! ## A313117.P16025556314037067042

`A311512(n)+Δ[A011848(n)]`
-/

namespace A313117.P16025556314037067042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n + (f1 (n + 1) - f1 n)

end

end A313117.P16025556314037067042

namespace A313117

/-- `A311512(n)+Δ[A011848(n)]` -/
def P16025556314037067042.Spec : Prop :=
  ∀ n, P16025556314037067042.a n = A313117 n

end A313117

/-! ## A313117.P9319655491526048678

`A312101(n)+A002264(n+1)`
-/

namespace A313117.P9319655491526048678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312101 n + A002264 (n + 1)

end

end A313117.P9319655491526048678

namespace A313117

/-- `A312101(n)+A002264(n+1)` -/
def P9319655491526048678.Spec : Prop :=
  ∀ n, P9319655491526048678.a n = A313117 n

end A313117

/-! ## A313117.P2011540569949411675

`A311512(n)+A004524(n+1)`
-/

namespace A313117.P2011540569949411675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n + A004524 (n + 1)

end

end A313117.P2011540569949411675

namespace A313117

/-- `A311512(n)+A004524(n+1)` -/
def P2011540569949411675.Spec : Prop :=
  ∀ n, P2011540569949411675.a n = A313117 n

end A313117

/-! ## A313117.P14889746082179132290

`A313515(n)+A010892(n+2)`
-/

namespace A313117.P14889746082179132290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313515 n + A010892 (n + 2)

end

end A313117.P14889746082179132290

namespace A313117

/-- `A313515(n)+A010892(n+2)` -/
def P14889746082179132290.Spec : Prop :=
  ∀ n, P14889746082179132290.a n = A313117 n

end A313117

/-! ## A313117.P426446452853364868

`A312101(n)+n-A004396(n)`
-/

namespace A313117.P426446452853364868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312101 n + ((n : ℤ) - A004396 n)

end

end A313117.P426446452853364868

namespace A313117

/-- `A312101(n)+n-A004396(n)` -/
def P426446452853364868.Spec : Prop :=
  ∀ n, P426446452853364868.a n = A313117 n

end A313117

/-! ## A313117.P15779890752237281413

`A312101(n)+A008615(2*n+1)`
-/

namespace A313117.P15779890752237281413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312101 n + A008615 (2 * n + 1)

end

end A313117.P15779890752237281413

namespace A313117

/-- `A312101(n)+A008615(2*n+1)` -/
def P15779890752237281413.Spec : Prop :=
  ∀ n, P15779890752237281413.a n = A313117 n

end A313117

/-! ## A313117.P9422524100273171556

`A042965(n+1)+A312101(n)-n`
-/

namespace A313117.P9422524100273171556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + (A312101 n - (n : ℤ))

end

end A313117.P9422524100273171556

namespace A313117

/-- `A042965(n+1)+A312101(n)-n` -/
def P9422524100273171556.Spec : Prop :=
  ∀ n, P9422524100273171556.a n = A313117 n

end A313117

/-! ## A313117.P5069612353518557964

`A047273(n+1)+A311512(n)-n`
-/

namespace A313117.P5069612353518557964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) + (A311512 n - (n : ℤ))

end

end A313117.P5069612353518557964

namespace A313117

/-- `A047273(n+1)+A311512(n)-n` -/
def P5069612353518557964.Spec : Prop :=
  ∀ n, P5069612353518557964.a n = A313117 n

end A313117

/-! ## A313117.P16447127706921561156

`A312123(n)+A004396(n-A004525(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313117

/-- `A312123(n)+A004396(n-A004525(n))` -/
def P16447127706921561156.Spec : Prop :=
  ∀ n, P16447127706921561156.a n = A313117 n

theorem P16447127706921561156.correct : P16447127706921561156.Spec := by
  intro n
  simp only [A313117]

end A313117

/-! ## A313117.P17187693368817060671

`A008486(n)+A312101(n)-A008576(n)`
-/

namespace A313117.P17187693368817060671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A312101 n - A008576 n)

end

end A313117.P17187693368817060671

namespace A313117

/-- `A008486(n)+A312101(n)-A008576(n)` -/
def P17187693368817060671.Spec : Prop :=
  ∀ n, P17187693368817060671.a n = A313117 n

end A313117

/-! ## A313117.P10091991486641357256

`A008458(n)+A008486(n)-A314668(n)`
-/

namespace A313117.P10091991486641357256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314668 n)

end

end A313117.P10091991486641357256

namespace A313117

/-- `A008458(n)+A008486(n)-A314668(n)` -/
def P10091991486641357256.Spec : Prop :=
  ∀ n, P10091991486641357256.a n = A313117 n

end A313117

/-! ## A313117.P15587862712234253481

`A004525(n)+A313057(n)-A004396(A004525(n))`
-/

namespace A313117.P15587862712234253481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313057 n - A004396 (A004525 n).toNat)

end

end A313117.P15587862712234253481

namespace A313117

/-- `A004525(n)+A313057(n)-A004396(A004525(n))` -/
def P15587862712234253481.Spec : Prop :=
  ∀ n, P15587862712234253481.a n = A313117 n

end A313117

/-! ## A313117.P10531890301724362427

`A312144(n)+A004525(n-A004396(n))`
-/

namespace A313117.P10531890301724362427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313117.P10531890301724362427

namespace A313117

/-- `A312144(n)+A004525(n-A004396(n))` -/
def P10531890301724362427.Spec : Prop :=
  ∀ n, P10531890301724362427.a n = A313117 n

end A313117

/-! ## A313117.P17846725828663067774

`abs(A008593(n)-(A315467(n)+n))`
-/

namespace A313117.P17846725828663067774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A315467 n + (n : ℤ))|

end

end A313117.P17846725828663067774

namespace A313117

/-- `abs(A008593(n)-(A315467(n)+n))` -/
def P17846725828663067774.Spec : Prop :=
  ∀ n, P17846725828663067774.a n = A313117 n

end A313117

/-! ## A313117.P13007923566541450776

`A313739(n)-A004525(A004396(n))`
-/

namespace A313117.P13007923566541450776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n - A004525 (A004396 n).toNat

end

end A313117.P13007923566541450776

namespace A313117

/-- `A313739(n)-A004525(A004396(n))` -/
def P13007923566541450776.Spec : Prop :=
  ∀ n, P13007923566541450776.a n = A313117 n

end A313117

/-! ## A313117.P16940862591414812174

`A008458(n)+A008574(n)-A315467(n)`
-/

namespace A313117.P16940862591414812174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315467 n)

end

end A313117.P16940862591414812174

namespace A313117

/-- `A008458(n)+A008574(n)-A315467(n)` -/
def P16940862591414812174.Spec : Prop :=
  ∀ n, P16940862591414812174.a n = A313117 n

end A313117

/-! ## A313117.P9828206306616960245

`A313794(n)-A004525(n)`
-/

namespace A313117.P9828206306616960245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313794 n - A004525 n

end

end A313117.P9828206306616960245

namespace A313117

/-- `A313794(n)-A004525(n)` -/
def P9828206306616960245.Spec : Prop :=
  ∀ n, P9828206306616960245.a n = A313117 n

end A313117

/-! ## A313117.P15805818319194999589

`A314254(n)-n`
-/

namespace A313117.P15805818319194999589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314254 n - (n : ℤ)

end

end A313117.P15805818319194999589

namespace A313117

/-- `A314254(n)-n` -/
def P15805818319194999589.Spec : Prop :=
  ∀ n, P15805818319194999589.a n = A313117 n

theorem P15805818319194999589.correct : P15805818319194999589.Spec := by
  intro n
  simp only [A313117, Nat.add_sub_cancel, A313117.P15805818319194999589.a, A313117.P16447127706921561156.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312123, A312123.P2703485450737880313.a, A314254, A314254.P14587660656971649234.a, A008592, A008592.P4981059802862696142.a, A315687, A315687.P9579488049278104774.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, A312890, A312890.P5869710039852604831.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313117

/-! ## A313117.P5407816386931982438

`A313126(n)-∑[A021913(A311549(n))]`
-/

namespace A313117.P5407816386931982438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A311549 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313126 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313117.P5407816386931982438

namespace A313117

/-- `A313126(n)-∑[A021913(A311549(n))]` -/
def P5407816386931982438.Spec : Prop :=
  ∀ n, P5407816386931982438.a n = A313117 n

end A313117

/-!
# A313118: Coordination sequence Gal.6.234.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313118, the canonical program `A313118.P9114111145320884075` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313118 has offset 0).

The definition of A313118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2390 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313118.P9114111145320884075

`A312976(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313118

/-- `A312976(n)+Δ[A011864(n)]` -/
def P9114111145320884075.Spec : Prop :=
  ∀ n, P9114111145320884075.a n = A313118 n

theorem P9114111145320884075.correct : P9114111145320884075.Spec := by
  intro n
  simp only [A313118]

end A313118

/-! ## A313118.P2505382274452588466

`abs(A008592(n)-A315466(n))`
-/

namespace A313118.P2505382274452588466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315466 n|

end

end A313118.P2505382274452588466

namespace A313118

/-- `abs(A008592(n)-A315466(n))` -/
def P2505382274452588466.Spec : Prop :=
  ∀ n, P2505382274452588466.a n = A313118 n

end A313118

/-! ## A313118.P15148580966429911034

`2*A008706(n)-A315466(n)`
-/

namespace A313118.P15148580966429911034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315466 n

end

end A313118.P15148580966429911034

namespace A313118

/-- `2*A008706(n)-A315466(n)` -/
def P15148580966429911034.Spec : Prop :=
  ∀ n, P15148580966429911034.a n = A313118 n

end A313118

/-! ## A313118.P5577425700330148891

`A135042(2*n+1)-A315466(n)`
-/

namespace A313118.P5577425700330148891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315466 n

end

end A313118.P5577425700330148891

namespace A313118

/-- `A135042(2*n+1)-A315466(n)` -/
def P5577425700330148891.Spec : Prop :=
  ∀ n, P5577425700330148891.a n = A313118 n

end A313118

/-! ## A313118.P10796817307104317903

`A008458(n)+A008574(n)-A315466(n)`
-/

namespace A313118.P10796817307104317903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315466 n)

end

end A313118.P10796817307104317903

namespace A313118

/-- `A008458(n)+A008574(n)-A315466(n)` -/
def P10796817307104317903.Spec : Prop :=
  ∀ n, P10796817307104317903.a n = A313118 n

end A313118

/-! ## A313118.P12775045826652683979

`A315466(n)-A005843(A315466(n)-A008706(n))`
-/

namespace A313118.P12775045826652683979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315466 n - A005843 (A315466 n - A008706 n).toNat

end

end A313118.P12775045826652683979

namespace A313118

/-- `A315466(n)-A005843(A315466(n)-A008706(n))` -/
def P12775045826652683979.Spec : Prop :=
  ∀ n, P12775045826652683979.a n = A313118 n

end A313118

/-! ## A313118.P6664462296945988679

`(A311385(n)+A310520(n))/2`
-/

namespace A313118.P6664462296945988679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311385 n + A310520 n : ℚ) / 2

end

end A313118.P6664462296945988679

namespace A313118

/-- `(A311385(n)+A310520(n))/2` -/
def P6664462296945988679.Spec : Prop :=
  ∀ n, P6664462296945988679.a n = (A313118 n : ℚ)

end A313118

/-! ## A313118.P10737059088151663850

`A005843(A008706(n))-A315466(n)`
-/

namespace A313118.P10737059088151663850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315466 n

end

end A313118.P10737059088151663850

namespace A313118

/-- `A005843(A008706(n))-A315466(n)` -/
def P10737059088151663850.Spec : Prop :=
  ∀ n, P10737059088151663850.a n = A313118 n

end A313118

/-! ## A313118.P10355009511323627193

`A065502(A008458(n))-A315466(n)`
-/

namespace A313118.P10355009511323627193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315466 n

end

end A313118.P10355009511323627193

namespace A313118

/-- `A065502(A008458(n))-A315466(n)` -/
def P10355009511323627193.Spec : Prop :=
  ∀ n, P10355009511323627193.a n = A313118 n

end A313118

/-! ## A313118.P7160844319541556374

`A233583(A017281(n))-A315466(n)`
-/

namespace A313118.P7160844319541556374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315466 n

end

end A313118.P7160844319541556374

namespace A313118

/-- `A233583(A017281(n))-A315466(n)` -/
def P7160844319541556374.Spec : Prop :=
  ∀ n, P7160844319541556374.a n = A313118 n

end A313118

/-!
# A313119: Coordination sequence Gal.6.157.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313119, the canonical program `A313119.P14327494610439454234` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313119 has offset 0).

The definition of A313119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2388 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313119.P14327494610439454234

`A086161(n)+A312113(n)-1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313119

/-- `A086161(n)+A312113(n)-1` -/
def P14327494610439454234.Spec : Prop :=
  ∀ n, P14327494610439454234.a n = A313119 n

theorem P14327494610439454234.correct : P14327494610439454234.Spec := by
  intro n
  simp only [A313119]

end A313119

/-! ## A313119.P8730260788602523849

`A311312(n)+n-A004396(A004525(n))`
-/

namespace A313119.P8730260788602523849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A313119.P8730260788602523849

namespace A313119

/-- `A311312(n)+n-A004396(A004525(n))` -/
def P8730260788602523849.Spec : Prop :=
  ∀ n, P8730260788602523849.a n = A313119 n

end A313119

/-! ## A313119.P13179298732519187752

`A004396(n)+A312963(n)-A004525(n)`
-/

namespace A313119.P13179298732519187752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A312963 n - A004525 n)

end

end A313119.P13179298732519187752

namespace A313119

/-- `A004396(n)+A312963(n)-A004525(n)` -/
def P13179298732519187752.Spec : Prop :=
  ∀ n, P13179298732519187752.a n = A313119 n

end A313119

/-! ## A313119.P7183093752439161453

`A008486(n)+A312113(n)-A008576(n)`
-/

namespace A313119.P7183093752439161453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A312113 n - A008576 n)

end

end A313119.P7183093752439161453

namespace A313119

/-- `A008486(n)+A312113(n)-A008576(n)` -/
def P7183093752439161453.Spec : Prop :=
  ∀ n, P7183093752439161453.a n = A313119 n

end A313119

/-! ## A313119.P6875897598488397709

`A008706(n)-A128834(A004525(A128834(n)+n))`
-/

namespace A313119.P6875897598488397709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A128834 (A004525 (A128834 n + (n : ℤ)).toNat).toNat

end

end A313119.P6875897598488397709

namespace A313119

/-- `A008706(n)-A128834(A004525(A128834(n)+n))` -/
def P6875897598488397709.Spec : Prop :=
  ∀ n, P6875897598488397709.a n = A313119 n

end A313119

/-! ## A313119.P2836617157592542923

`abs(A008592(n)-A315465(n))`
-/

namespace A313119.P2836617157592542923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315465 n|

end

end A313119.P2836617157592542923

namespace A313119

/-- `abs(A008592(n)-A315465(n))` -/
def P2836617157592542923.Spec : Prop :=
  ∀ n, P2836617157592542923.a n = A313119 n

end A313119

/-! ## A313119.P11384863912572664522

`floor(A010015(n)/A315465(n))`
-/

namespace A313119.P11384863912572664522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315465 n : ℚ)⌋

end

end A313119.P11384863912572664522

namespace A313119

/-- `floor(A010015(n)/A315465(n))` -/
def P11384863912572664522.Spec : Prop :=
  ∀ n, P11384863912572664522.a n = A313119 n

end A313119

/-! ## A313119.P4624689181196436005

`A008458(n)+A008574(n)-A315465(n)`
-/

namespace A313119.P4624689181196436005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315465 n)

end

end A313119.P4624689181196436005

namespace A313119

/-- `A008458(n)+A008574(n)-A315465(n)` -/
def P4624689181196436005.Spec : Prop :=
  ∀ n, P4624689181196436005.a n = A313119 n

end A313119

/-! ## A313119.P4362305765615495957

`A312144(n)+A004396(n-A004525(n))`
-/

namespace A313119.P4362305765615495957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313119.P4362305765615495957

namespace A313119

/-- `A312144(n)+A004396(n-A004525(n))` -/
def P4362305765615495957.Spec : Prop :=
  ∀ n, P4362305765615495957.a n = A313119 n

end A313119

/-! ## A313119.P7728843714038822922

`A311536(n)+∑[C(n, 2)%2]`
-/

namespace A313119.P7728843714038822922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A313119.P7728843714038822922

namespace A313119

/-- `A311536(n)+∑[C(n, 2)%2]` -/
def P7728843714038822922.Spec : Prop :=
  ∀ n, P7728843714038822922.a n = A313119 n

end A313119

/-! ## A313119.P11773934577613358965

`A311536(n)+∑[A021913(n)]`
-/

namespace A313119.P11773934577613358965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313119.P11773934577613358965

namespace A313119

/-- `A311536(n)+∑[A021913(n)]` -/
def P11773934577613358965.Spec : Prop :=
  ∀ n, P11773934577613358965.a n = A313119 n

end A313119

/-! ## A313119.P5993082799847262876

`A311536(n)+Δ[A011848(n)]`
-/

namespace A313119.P5993082799847262876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n + (f1 (n + 1) - f1 n)

end

end A313119.P5993082799847262876

namespace A313119

/-- `A311536(n)+Δ[A011848(n)]` -/
def P5993082799847262876.Spec : Prop :=
  ∀ n, P5993082799847262876.a n = A313119 n

end A313119

/-! ## A313119.P5440660061746783690

`A311536(n)+A004524(n+1)`
-/

namespace A313119.P5440660061746783690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n + A004524 (n + 1)

end

end A313119.P5440660061746783690

namespace A313119

/-- `A311536(n)+A004524(n+1)` -/
def P5440660061746783690.Spec : Prop :=
  ∀ n, P5440660061746783690.a n = A313119 n

end A313119

/-! ## A313119.P13064854906946778144

`A311536(n)+n-A004525(n)`
-/

namespace A313119.P13064854906946778144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n + ((n : ℤ) - A004525 n)

end

end A313119.P13064854906946778144

namespace A313119

/-- `A311536(n)+n-A004525(n)` -/
def P13064854906946778144.Spec : Prop :=
  ∀ n, P13064854906946778144.a n = A313119 n

end A313119

/-! ## A313119.P18034789274115348643

`A313803(n)-A004525(n)`
-/

namespace A313119.P18034789274115348643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313803 n - A004525 n

end

end A313119.P18034789274115348643

namespace A313119

/-- `A313803(n)-A004525(n)` -/
def P18034789274115348643.Spec : Prop :=
  ∀ n, P18034789274115348643.a n = A313119 n

end A313119

/-! ## A313119.P1230042005305136039

`A313803(n)-Δ[A054925(n)]`
-/

namespace A313119.P1230042005305136039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313803 n - (f1 (n + 1) - f1 n)

end

end A313119.P1230042005305136039

namespace A313119

/-- `A313803(n)-Δ[A054925(n)]` -/
def P1230042005305136039.Spec : Prop :=
  ∀ n, P1230042005305136039.a n = A313119 n

end A313119

/-! ## A313119.P11099570236960903701

`A310466(n)-∑[A022003(n)]`
-/

namespace A313119.P11099570236960903701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310466 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313119.P11099570236960903701

namespace A313119

/-- `A310466(n)-∑[A022003(n)]` -/
def P11099570236960903701.Spec : Prop :=
  ∀ n, P11099570236960903701.a n = A313119 n

end A313119

/-! ## A313119.P15239676580160439771

`A310466(n)-A008615(2*n+1)`
-/

namespace A313119.P15239676580160439771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310466 n - A008615 (2 * n + 1)

end

end A313119.P15239676580160439771

namespace A313119

/-- `A310466(n)-A008615(2*n+1)` -/
def P15239676580160439771.Spec : Prop :=
  ∀ n, P15239676580160439771.a n = A313119 n

end A313119

/-! ## A313119.P1150797590057285934

`A008576(n)+A310466(n)-A008486(n)`
-/

namespace A313119.P1150797590057285934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A310466 n - A008486 n)

end

end A313119.P1150797590057285934

namespace A313119

/-- `A008576(n)+A310466(n)-A008486(n)` -/
def P1150797590057285934.Spec : Prop :=
  ∀ n, P1150797590057285934.a n = A313119 n

end A313119

/-!
# A313120: Coordination sequence Gal.5.267.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313120, there is no canonical definition to state claims against.
-/

/-! ## A313120.P9363640317845061885

`A312059(n)+A001222(A187245(n))`
-/

namespace A313120.P9363640317845061885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312059 n + A001222 (A187245 n).toNat

end

end A313120.P9363640317845061885

/-! ## A313120.P15521621751158582299

`A313719(n)+A056594(A157004(n))`
-/

namespace A313120.P15521621751158582299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n + A056594 (A157004 n).toNat

end

end A313120.P15521621751158582299

/-! ## A313120.P981828542908434263

`A219529(n)-A001222(A155866(n))`
-/

namespace A313120.P981828542908434263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A001222 (A155866 n).toNat

end

end A313120.P981828542908434263

/-! ## A313120.P1875040400362595017

`eq[A000045(A242062(n)), A348485(n+1)]`
-/

namespace A313120.P1875040400362595017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A242062 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348485 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A313120.P1875040400362595017

/-!
# A313121: Coordination sequence Gal.3.25.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313121, the canonical program `A313121.P8292700378048131852` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313121 has offset 0).

The definition of A313121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313121.P8292700378048131852

`A250120(n)-A102283(A058992(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313121

/-- `A250120(n)-A102283(A058992(n+1))` -/
def P8292700378048131852.Spec : Prop :=
  ∀ n, P8292700378048131852.a n = A313121 n

theorem P8292700378048131852.correct : P8292700378048131852.Spec := by
  intro n
  simp only [A313121]

end A313121

/-! ## A313121.P15790897676006238668

`A047486(A008486(n)+1)-A102283(A058992(n+1))`
-/

namespace A313121.P15790897676006238668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008486 n + 1).toNat - A102283 (A058992 (n + 1)).toNat

end

end A313121.P15790897676006238668

namespace A313121

/-- `A047486(A008486(n)+1)-A102283(A058992(n+1))` -/
def P15790897676006238668.Spec : Prop :=
  ∀ n, P15790897676006238668.a n = A313121 n

end A313121

/-! ## A313121.P6373853638654397400

`A047486(A033627(n+2))-A102283(A058992(n+1))`
-/

namespace A313121.P6373853638654397400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A033627 (n + 2)).toNat - A102283 (A058992 (n + 1)).toNat

end

end A313121.P6373853638654397400

namespace A313121

/-- `A047486(A033627(n+2))-A102283(A058992(n+1))` -/
def P6373853638654397400.Spec : Prop :=
  ∀ n, P6373853638654397400.a n = A313121 n

end A313121

/-! ## A313121.P10633276834292453429

`A047486(A008574(n)+1-n)-A102283(A058992(n+1))`
-/

namespace A313121.P10633276834292453429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008574 n + (1 - (n : ℤ))).toNat - A102283 (A058992 (n + 1)).toNat

end

end A313121.P10633276834292453429

namespace A313121

/-- `A047486(A008574(n)+1-n)-A102283(A058992(n+1))` -/
def P10633276834292453429.Spec : Prop :=
  ∀ n, P10633276834292453429.a n = A313121 n

end A313121

/-! ## A313121.P11197655899971520922

`A250120(n)+A102283(2*A058992(n+1))`
-/

namespace A313121.P11197655899971520922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A102283 (2 * A058992 (n + 1)).toNat

end

end A313121.P11197655899971520922

namespace A313121

/-- `A250120(n)+A102283(2*A058992(n+1))` -/
def P11197655899971520922.Spec : Prop :=
  ∀ n, P11197655899971520922.a n = A313121 n

end A313121

/-! ## A313121.P10404712165113107967

`A250120(n)+A314458(n)-A315907(n)`
-/

namespace A313121.P10404712165113107967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A314458 n - A315907 n)

end

end A313121.P10404712165113107967

namespace A313121

/-- `A250120(n)+A314458(n)-A315907(n)` -/
def P10404712165113107967.Spec : Prop :=
  ∀ n, P10404712165113107967.a n = A313121 n

end A313121

/-! ## A313121.P15245993155144293856

`A312561(n)+A330025(n)-A102283(A058992(n+1))`
-/

namespace A313121.P15245993155144293856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n + (A330025 n - A102283 (A058992 (n + 1)).toNat)

end

end A313121.P15245993155144293856

namespace A313121

/-- `A312561(n)+A330025(n)-A102283(A058992(n+1))` -/
def P15245993155144293856.Spec : Prop :=
  ∀ n, P15245993155144293856.a n = A313121 n

end A313121

/-! ## A313121.P11359981503253206340

`A315303(n)-(A330025(n)+A102283(A058992(n+1)))`
-/

namespace A313121.P11359981503253206340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315303 n - (A330025 n + A102283 (A058992 (n + 1)).toNat)

end

end A313121.P11359981503253206340

namespace A313121

/-- `A315303(n)-(A330025(n)+A102283(A058992(n+1)))` -/
def P11359981503253206340.Spec : Prop :=
  ∀ n, P11359981503253206340.a n = A313121 n

end A313121

/-! ## A313121.P5345501708889921969

`A315187(n)-(A244895(n)+A102283(A058992(n+1)))`
-/

namespace A313121.P5345501708889921969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n - (A244895 n + A102283 (A058992 (n + 1)).toNat)

end

end A313121.P5345501708889921969

namespace A313121

/-- `A315187(n)-(A244895(n)+A102283(A058992(n+1)))` -/
def P5345501708889921969.Spec : Prop :=
  ∀ n, P5345501708889921969.a n = A313121 n

end A313121

/-! ## A313121.P16310304031331377015

`A250120(n)+A301722(n)-A301694(n)`
-/

namespace A313121.P16310304031331377015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A301722 n - A301694 n)

end

end A313121.P16310304031331377015

namespace A313121

/-- `A250120(n)+A301722(n)-A301694(n)` -/
def P16310304031331377015.Spec : Prop :=
  ∀ n, P16310304031331377015.a n = A313121 n

end A313121

/-! ## A313121.P3762196414120447718

`A072154(2*n)-A102283(A058992(n+1))`
-/

namespace A313121.P3762196414120447718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A102283 (A058992 (n + 1)).toNat

end

end A313121.P3762196414120447718

namespace A313121

/-- `A072154(2*n)-A102283(A058992(n+1))` -/
def P3762196414120447718.Spec : Prop :=
  ∀ n, P3762196414120447718.a n = A313121 n

end A313121

/-!
# A313122: Coordination sequence Gal.6.314.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313122, there is no canonical definition to state claims against.
-/

/-! ## A313122.P6015146605016470518

`A310398(n)+A102560(A148550(n))`
-/

namespace A313122.P6015146605016470518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A102560 (A148550 n).toNat

end

end A313122.P6015146605016470518

/-! ## A313122.P7143815945905396722

`A310398(n)+A102560(A148551(n))`
-/

namespace A313122.P7143815945905396722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A102560 (A148551 n).toNat

end

end A313122.P7143815945905396722

/-! ## A313122.P1827417093150565666

`A310398(n)-A056594(A099159(n))`
-/

namespace A313122.P1827417093150565666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n - A056594 (A099159 n).toNat

end

end A313122.P1827417093150565666

/-! ## A313122.P4378946452959195958

`A310398(n)+A056594(A099159(n)+2)`
-/

namespace A313122.P4378946452959195958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A056594 (A099159 n + 2).toNat

end

end A313122.P4378946452959195958

/-! ## A313122.P8210131002173147714

`A310398(A087051(n))-A131531(n+1)`
-/

namespace A313122.P8210131002173147714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 (A087051 n).toNat - A131531 (n + 1)

end

end A313122.P8210131002173147714

/-!
# A313123: Coordination sequence Gal.6.368.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313123, there is no canonical definition to state claims against.
-/

/-! ## A313123.P9951027234266739351

`A311932(n)+A001221(A000108(n))`
-/

namespace A313123.P9951027234266739351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311932 n + A001221 (A000108 n).toNat

end

end A313123.P9951027234266739351

/-! ## A313123.P3580264637536900208

`A137735(lcm(A053829(n), A195824(n)))`
-/

namespace A313123.P3580264637536900208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Int.lcm (A053829 n) (A195824 n))

end

end A313123.P3580264637536900208

/-! ## A313123.P10656080225130804461

`A311932(n)+A001221(A126324(2*n))`
-/

namespace A313123.P10656080225130804461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311932 n + A001221 (A126324 (2 * n)).toNat

end

end A313123.P10656080225130804461

/-! ## A313123.P11785025138718407200

`A311932(n)+A001221(A208355(2*n))`
-/

namespace A313123.P11785025138718407200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311932 n + A001221 (A208355 (2 * n)).toNat

end

end A313123.P11785025138718407200

/-! ## A313123.P7259812051392797077

`A314913(n)-A171588(A072706(3*n))`
-/

namespace A313123.P7259812051392797077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314913 n - A171588 (A072706 (3 * n)).toNat

end

end A313123.P7259812051392797077

/-!
# A313124: Coordination sequence Gal.6.250.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313124, the canonical program `A313124.P8905845740579056507` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313124 has offset 0).

The definition of A313124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313124.P8905845740579056507

`abs(A008592(n)-A315464(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A313124

/-- `abs(A008592(n)-A315464(n))` -/
def P8905845740579056507.Spec : Prop :=
  ∀ n, P8905845740579056507.a n = A313124 n

theorem P8905845740579056507.correct : P8905845740579056507.Spec := by
  intro n
  simp only [A313124]

end A313124

/-! ## A313124.P5925367767687373501

`2*A008706(n)-A315464(n)`
-/

namespace A313124.P5925367767687373501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315464 n

end

end A313124.P5925367767687373501

namespace A313124

/-- `2*A008706(n)-A315464(n)` -/
def P5925367767687373501.Spec : Prop :=
  ∀ n, P5925367767687373501.a n = A313124 n

end A313124

/-! ## A313124.P11475810697348453876

`A135042(2*n+1)-A315464(n)`
-/

namespace A313124.P11475810697348453876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315464 n

end

end A313124.P11475810697348453876

namespace A313124

/-- `A135042(2*n+1)-A315464(n)` -/
def P11475810697348453876.Spec : Prop :=
  ∀ n, P11475810697348453876.a n = A313124 n

end A313124

/-! ## A313124.P7433719189559490104

`A184418(A008574(n))-A315464(n)`
-/

namespace A313124.P7433719189559490104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315464 n

end

end A313124.P7433719189559490104

namespace A313124

/-- `A184418(A008574(n))-A315464(n)` -/
def P7433719189559490104.Spec : Prop :=
  ∀ n, P7433719189559490104.a n = A313124 n

end A313124

/-! ## A313124.P8835689022749375019

`A008458(n)+A008574(n)-A315464(n)`
-/

namespace A313124.P8835689022749375019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315464 n)

end

end A313124.P8835689022749375019

namespace A313124

/-- `A008458(n)+A008574(n)-A315464(n)` -/
def P8835689022749375019.Spec : Prop :=
  ∀ n, P8835689022749375019.a n = A313124 n

end A313124

/-! ## A313124.P12835738536781411358

`A315464(n)-A005843(A315464(n)-A008706(n))`
-/

namespace A313124.P12835738536781411358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315464 n - A005843 (A315464 n - A008706 n).toNat

end

end A313124.P12835738536781411358

namespace A313124

/-- `A315464(n)-A005843(A315464(n)-A008706(n))` -/
def P12835738536781411358.Spec : Prop :=
  ∀ n, P12835738536781411358.a n = A313124 n

end A313124

/-! ## A313124.P14916118870817027738

`A005843(A008706(n))-A315464(n)`
-/

namespace A313124.P14916118870817027738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315464 n

end

end A313124.P14916118870817027738

namespace A313124

/-- `A005843(A008706(n))-A315464(n)` -/
def P14916118870817027738.Spec : Prop :=
  ∀ n, P14916118870817027738.a n = A313124 n

end A313124

/-! ## A313124.P15070023415966605984

`A065502(A008458(n))-A315464(n)`
-/

namespace A313124.P15070023415966605984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315464 n

end

end A313124.P15070023415966605984

namespace A313124

/-- `A065502(A008458(n))-A315464(n)` -/
def P15070023415966605984.Spec : Prop :=
  ∀ n, P15070023415966605984.a n = A313124 n

end A313124

/-! ## A313124.P5278838913640769183

`A233583(A017281(n))-A315464(n)`
-/

namespace A313124.P5278838913640769183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315464 n

end

end A313124.P5278838913640769183

namespace A313124

/-- `A233583(A017281(n))-A315464(n)` -/
def P5278838913640769183.Spec : Prop :=
  ∀ n, P5278838913640769183.a n = A313124 n

end A313124

/-!
# A313125: Coordination sequence Gal.5.111.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313125, the canonical program `A313125.P8596607718569848778` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313125 has offset 0).

The definition of A313125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313125.P8596607718569848778

`abs(A008592(n)-A315463(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A313125

/-- `abs(A008592(n)-A315463(n))` -/
def P8596607718569848778.Spec : Prop :=
  ∀ n, P8596607718569848778.a n = A313125 n

theorem P8596607718569848778.correct : P8596607718569848778.Spec := by
  intro n
  simp only [A313125]

end A313125

/-! ## A313125.P8521278927529076532

`2*A008706(n)-A315463(n)`
-/

namespace A313125.P8521278927529076532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315463 n

end

end A313125.P8521278927529076532

namespace A313125

/-- `2*A008706(n)-A315463(n)` -/
def P8521278927529076532.Spec : Prop :=
  ∀ n, P8521278927529076532.a n = A313125 n

end A313125

/-! ## A313125.P14426612841315605273

`A313799(n)-A004396(A004396(n))`
-/

namespace A313125.P14426612841315605273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n - A004396 (A004396 n).toNat

end

end A313125.P14426612841315605273

namespace A313125

/-- `A313799(n)-A004396(A004396(n))` -/
def P14426612841315605273.Spec : Prop :=
  ∀ n, P14426612841315605273.a n = A313125 n

end A313125

/-! ## A313125.P7744414031193595648

`A312160(n)+A004396(n-A004396(n))`
-/

namespace A313125.P7744414031193595648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313125.P7744414031193595648

namespace A313125

/-- `A312160(n)+A004396(n-A004396(n))` -/
def P7744414031193595648.Spec : Prop :=
  ∀ n, P7744414031193595648.a n = A313125 n

end A313125

/-! ## A313125.P7879154287407856495

`A008458(n)+A008574(n)-A315463(n)`
-/

namespace A313125.P7879154287407856495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315463 n)

end

end A313125.P7879154287407856495

namespace A313125

/-- `A008458(n)+A008574(n)-A315463(n)` -/
def P7879154287407856495.Spec : Prop :=
  ∀ n, P7879154287407856495.a n = A313125 n

end A313125

/-! ## A313125.P14278938872182656180

`A310462(n)-A004396(n-A004396(n))`
-/

namespace A313125.P14278938872182656180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310462 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A313125.P14278938872182656180

namespace A313125

/-- `A310462(n)-A004396(n-A004396(n))` -/
def P14278938872182656180.Spec : Prop :=
  ∀ n, P14278938872182656180.a n = A313125 n

end A313125

/-! ## A313125.P12398394188692273472

`A313927(n)-A004396(n)`
-/

namespace A313125.P12398394188692273472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313927 n - A004396 n

end

end A313125.P12398394188692273472

namespace A313125

/-- `A313927(n)-A004396(n)` -/
def P12398394188692273472.Spec : Prop :=
  ∀ n, P12398394188692273472.a n = A313125 n

theorem P12398394188692273472.correct : P12398394188692273472.Spec := by
  intro n
  simp only [A313125, Nat.add_sub_cancel, A313125.P12398394188692273472.a, A313125.P8596607718569848778.a, A004396, A004396.P17032557045289780609.a, A008592, A008592.P4981059802862696142.a, A313927, A313927.P15646847580110018084.a, A315463, A315463.P16900864329988193490.a, A315256, A315256.P12326446692328451720.a, A314828, A314828.P12558538320936083635.a, A312932, A312932.P265636690513476108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313125

/-! ## A313125.P5874466289923600433

`A313927(n)-A002264(2*n+1)`
-/

namespace A313125.P5874466289923600433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313927 n - A002264 (2 * n + 1)

end

end A313125.P5874466289923600433

namespace A313125

/-- `A313927(n)-A002264(2*n+1)` -/
def P5874466289923600433.Spec : Prop :=
  ∀ n, P5874466289923600433.a n = A313125 n

theorem P5874466289923600433.correct : P5874466289923600433.Spec := by
  intro n
  simp only [A313125, Nat.add_sub_cancel, A313125.P5874466289923600433.a, A313125.P8596607718569848778.a, A002264, A002264.P5647656940077635922.a, A008592, A008592.P4981059802862696142.a, A313927, A313927.P15646847580110018084.a, A315463, A315463.P16900864329988193490.a, A004396, A004396.P17032557045289780609.a, A315256, A315256.P12326446692328451720.a, A314828, A314828.P12558538320936083635.a, A312932, A312932.P265636690513476108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313125

/-! ## A313125.P5754830315933085473

`A313927(n)-A004525(A004773(n))`
-/

namespace A313125.P5754830315933085473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313927 n - A004525 (A004773 n).toNat

end

end A313125.P5754830315933085473

namespace A313125

/-- `A313927(n)-A004525(A004773(n))` -/
def P5754830315933085473.Spec : Prop :=
  ∀ n, P5754830315933085473.a n = A313125 n

end A313125

/-! ## A313125.P17166694881947775423

`A004396(2*n)+A004396(A313293(n))`
-/

namespace A313125.P17166694881947775423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A313293 n).toNat

end

end A313125.P17166694881947775423

namespace A313125

/-- `A004396(2*n)+A004396(A313293(n))` -/
def P17166694881947775423.Spec : Prop :=
  ∀ n, P17166694881947775423.a n = A313125 n

end A313125

/-! ## A313125.P6711158402718793846

`A005843(n)-(A004396(n)-A004396(A313293(n)))`
-/

namespace A313125.P6711158402718793846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (A004396 n - A004396 (A313293 n).toNat)

end

end A313125.P6711158402718793846

namespace A313125

/-- `A005843(n)-(A004396(n)-A004396(A313293(n)))` -/
def P6711158402718793846.Spec : Prop :=
  ∀ n, P6711158402718793846.a n = A313125 n

end A313125

/-! ## A313125.P12760638197452164304

`A004396(A313293(n)+2*n)`
-/

namespace A313125.P12760638197452164304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313293 n + (2 * n : ℤ)).toNat

end

end A313125.P12760638197452164304

namespace A313125

/-- `A004396(A313293(n)+2*n)` -/
def P12760638197452164304.Spec : Prop :=
  ∀ n, P12760638197452164304.a n = A313125 n

end A313125

/-! ## A313125.P12896164447987087776

`A004396(A313293(n)+n+n)`
-/

namespace A313125.P12896164447987087776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313293 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313125.P12896164447987087776

namespace A313125

/-- `A004396(A313293(n)+n+n)` -/
def P12896164447987087776.Spec : Prop :=
  ∀ n, P12896164447987087776.a n = A313125 n

end A313125

/-!
# A313126: Coordination sequence Gal.6.198.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313126, the canonical program `A313126.P11597078416560143332` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313126 has offset 0).

The definition of A313126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313126.P13024641780706231028

`A314903(n)-A134667(n)`
-/

namespace A313126.P13024641780706231028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314903 n - A134667 n

end

end A313126.P13024641780706231028

namespace A313126

/-- `A314903(n)-A134667(n)` -/
def P13024641780706231028.Spec : Prop :=
  ∀ n, P13024641780706231028.a n = A313126 n

end A313126

/-! ## A313126.P6847530102375281511

`abs(A008592(n)-A315462(n))`
-/

namespace A313126.P6847530102375281511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315462 n|

end

end A313126.P6847530102375281511

namespace A313126

/-- `abs(A008592(n)-A315462(n))` -/
def P6847530102375281511.Spec : Prop :=
  ∀ n, P6847530102375281511.a n = A313126 n

end A313126

/-! ## A313126.P3974822304602048425

`floor(A010015(n)/A315462(n))`
-/

namespace A313126.P3974822304602048425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315462 n : ℚ)⌋

end

end A313126.P3974822304602048425

namespace A313126

/-- `floor(A010015(n)/A315462(n))` -/
def P3974822304602048425.Spec : Prop :=
  ∀ n, P3974822304602048425.a n = A313126 n

end A313126

/-! ## A313126.P15008340329794838141

`A163810(A004525(n))+A008587(n)`
-/

namespace A313126.P15008340329794838141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (A004525 n).toNat + A008587 n

end

end A313126.P15008340329794838141

namespace A313126

/-- `A163810(A004525(n))+A008587(n)` -/
def P15008340329794838141.Spec : Prop :=
  ∀ n, P15008340329794838141.a n = A313126 n

end A313126

/-! ## A313126.P11597078416560143332

`A008706(n)-A128834(A004525(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313126

/-- `A008706(n)-A128834(A004525(n))` -/
def P11597078416560143332.Spec : Prop :=
  ∀ n, P11597078416560143332.a n = A313126 n

theorem P11597078416560143332.correct : P11597078416560143332.Spec := by
  intro n
  simp only [A313126]

end A313126

/-! ## A313126.P4043833293842727186

`A311312(n)+n-A004525(A004396(n))`
-/

namespace A313126.P4043833293842727186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A313126.P4043833293842727186

namespace A313126

/-- `A311312(n)+n-A004525(A004396(n))` -/
def P4043833293842727186.Spec : Prop :=
  ∀ n, P4043833293842727186.a n = A313126 n

end A313126

/-! ## A313126.P16666203218221076028

`A008458(n)+A008574(n)-A315462(n)`
-/

namespace A313126.P16666203218221076028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315462 n)

end

end A313126.P16666203218221076028

namespace A313126

/-- `A008458(n)+A008574(n)-A315462(n)` -/
def P16666203218221076028.Spec : Prop :=
  ∀ n, P16666203218221076028.a n = A313126 n

end A313126

/-! ## A313126.P3438245506039970915

`∑{d}[A008592(n)-A315462(n), A000010(#)]`
-/

namespace A313126.P3438245506039970915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313126.P3438245506039970915

namespace A313126

/-- `∑{d}[A008592(n)-A315462(n), A000010(#)]` -/
def P3438245506039970915.Spec : Prop :=
  ∀ n, P3438245506039970915.a n = A313126 n

end A313126

/-! ## A313126.P7424190404510126644

`A312144(n)+∑[A022003(n)]`
-/

namespace A313126.P7424190404510126644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313126.P7424190404510126644

namespace A313126

/-- `A312144(n)+∑[A022003(n)]` -/
def P7424190404510126644.Spec : Prop :=
  ∀ n, P7424190404510126644.a n = A313126 n

end A313126

/-! ## A313126.P7542250525149407704

`A312144(n)+A002264(n+1)`
-/

namespace A313126.P7542250525149407704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + A002264 (n + 1)

end

end A313126.P7542250525149407704

namespace A313126

/-- `A312144(n)+A002264(n+1)` -/
def P7542250525149407704.Spec : Prop :=
  ∀ n, P7542250525149407704.a n = A313126 n

end A313126

/-! ## A313126.P9379089068304123693

`A312144(n)+n-A004396(n)`
-/

namespace A313126.P9379089068304123693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + ((n : ℤ) - A004396 n)

end

end A313126.P9379089068304123693

namespace A313126

/-- `A312144(n)+n-A004396(n)` -/
def P9379089068304123693.Spec : Prop :=
  ∀ n, P9379089068304123693.a n = A313126 n

end A313126

/-! ## A313126.P12606707236525812487

`A008486(n)+A312144(n)-A008576(n)`
-/

namespace A313126.P12606707236525812487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A312144 n - A008576 n)

end

end A313126.P12606707236525812487

namespace A313126

/-- `A008486(n)+A312144(n)-A008576(n)` -/
def P12606707236525812487.Spec : Prop :=
  ∀ n, P12606707236525812487.a n = A313126 n

end A313126

/-! ## A313126.P2745248080500978201

`∑[A131735(n)]+A313754(n)-n`
-/

namespace A313126.P2745248080500978201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A313754 n - (n : ℤ))

end

end A313126.P2745248080500978201

namespace A313126

/-- `∑[A131735(n)]+A313754(n)-n` -/
def P2745248080500978201.Spec : Prop :=
  ∀ n, P2745248080500978201.a n = A313126 n

end A313126

/-! ## A313126.P3776293667520123599

`A313930(n)-A004396(n)`
-/

namespace A313126.P3776293667520123599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313930 n - A004396 n

end

end A313126.P3776293667520123599

namespace A313126

/-- `A313930(n)-A004396(n)` -/
def P3776293667520123599.Spec : Prop :=
  ∀ n, P3776293667520123599.a n = A313126 n

theorem P3776293667520123599.correct : P3776293667520123599.Spec := by
  intro n
  simp only [A313126, Nat.add_sub_cancel, A313126.P3776293667520123599.a, A313126.P11597078416560143332.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A008706, A008706.P2829034798076193717.a, A128834, A128834.P16779687439637953687.a, A313930, A313930.P828336190909050308.a, A010892, A010892.P14408744864468695543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313126

/-! ## A313126.P12135343953997312122

`A313930(n)-A002264(2*n+1)`
-/

namespace A313126.P12135343953997312122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313930 n - A002264 (2 * n + 1)

end

end A313126.P12135343953997312122

namespace A313126

/-- `A313930(n)-A002264(2*n+1)` -/
def P12135343953997312122.Spec : Prop :=
  ∀ n, P12135343953997312122.a n = A313126 n

theorem P12135343953997312122.correct : P12135343953997312122.Spec := by
  intro n
  simp only [A313126, Nat.add_sub_cancel, A313126.P12135343953997312122.a, A313126.P11597078416560143332.a, A002264, A002264.P5647656940077635922.a, A004525, A004525.P4158271949796742323.a, A008706, A008706.P2829034798076193717.a, A128834, A128834.P16779687439637953687.a, A313930, A313930.P828336190909050308.a, A004396, A004396.P17032557045289780609.a, A010892, A010892.P14408744864468695543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313126

/-! ## A313126.P13374154434591785364

`A074067(A315462(n))`
-/

namespace A313126.P13374154434591785364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315462 n).toNat

end

end A313126.P13374154434591785364

namespace A313126

/-- `A074067(A315462(n))` -/
def P13374154434591785364.Spec : Prop :=
  ∀ n, P13374154434591785364.a n = A313126 n

end A313126

/-! ## A313126.P7233603922693093414

`A004396(2*n)+A004396(A313297(n))`
-/

namespace A313126.P7233603922693093414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A313297 n).toNat

end

end A313126.P7233603922693093414

namespace A313126

/-- `A004396(2*n)+A004396(A313297(n))` -/
def P7233603922693093414.Spec : Prop :=
  ∀ n, P7233603922693093414.a n = A313126 n

end A313126

/-! ## A313126.P13749544723906355123

`A004396(A312206(n)+n)+n`
-/

namespace A313126.P13749544723906355123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312206 n + (n : ℤ)).toNat + (n : ℤ)

end

end A313126.P13749544723906355123

namespace A313126

/-- `A004396(A312206(n)+n)+n` -/
def P13749544723906355123.Spec : Prop :=
  ∀ n, P13749544723906355123.a n = A313126 n

end A313126

/-! ## A313126.P10067914280142390606

`A004396(A313297(n)+2*n)`
-/

namespace A313126.P10067914280142390606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313297 n + (2 * n : ℤ)).toNat

end

end A313126.P10067914280142390606

namespace A313126

/-- `A004396(A313297(n)+2*n)` -/
def P10067914280142390606.Spec : Prop :=
  ∀ n, P10067914280142390606.a n = A313126 n

end A313126

/-!
# A313127: Coordination sequence Gal.5.69.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313127, the canonical program `A313127.P3112124540791628005` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313127 has offset 0).

The definition of A313127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2352 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313127.P11576061609825750304

`abs(5*n-A163812(n))`
-/

namespace A313127.P11576061609825750304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * n : ℤ) - A163812 n|

end

end A313127.P11576061609825750304

namespace A313127

/-- `abs(5*n-A163812(n))` -/
def P11576061609825750304.Spec : Prop :=
  ∀ n, P11576061609825750304.a n = A313127 n

end A313127

/-! ## A313127.P16813282258754322437

`A008706(n)-A330025(n)`
-/

namespace A313127.P16813282258754322437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A330025 n

end

end A313127.P16813282258754322437

namespace A313127

/-- `A008706(n)-A330025(n)` -/
def P16813282258754322437.Spec : Prop :=
  ∀ n, P16813282258754322437.a n = A313127 n

end A313127

/-! ## A313127.P5919001915947749452

`abs(A008592(n)-A315461(n))`
-/

namespace A313127.P5919001915947749452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315461 n|

end

end A313127.P5919001915947749452

namespace A313127

/-- `abs(A008592(n)-A315461(n))` -/
def P5919001915947749452.Spec : Prop :=
  ∀ n, P5919001915947749452.a n = A313127 n

end A313127

/-! ## A313127.P14718476541060214961

`floor(A010015(n)/A315461(n))`
-/

namespace A313127.P14718476541060214961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315461 n : ℚ)⌋

end

end A313127.P14718476541060214961

namespace A313127

/-- `floor(A010015(n)/A315461(n))` -/
def P14718476541060214961.Spec : Prop :=
  ∀ n, P14718476541060214961.a n = A313127 n

end A313127

/-! ## A313127.P12413636591333094237

`A008706(n)+A163812(n+5)`
-/

namespace A313127.P12413636591333094237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A163812 (n + 5)

end

end A313127.P12413636591333094237

namespace A313127

/-- `A008706(n)+A163812(n+5)` -/
def P12413636591333094237.Spec : Prop :=
  ∀ n, P12413636591333094237.a n = A313127 n

end A313127

/-! ## A313127.P16427472916195219876

`2*A008706(n)-A315461(n)`
-/

namespace A313127.P16427472916195219876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315461 n

end

end A313127.P16427472916195219876

namespace A313127

/-- `2*A008706(n)-A315461(n)` -/
def P16427472916195219876.Spec : Prop :=
  ∀ n, P16427472916195219876.a n = A313127 n

end A313127

/-! ## A313127.P18061897841109241875

`A008458(n)-(A330025(n)+n)`
-/

namespace A313127.P18061897841109241875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A330025 n + (n : ℤ))

end

end A313127.P18061897841109241875

namespace A313127

/-- `A008458(n)-(A330025(n)+n)` -/
def P18061897841109241875.Spec : Prop :=
  ∀ n, P18061897841109241875.a n = A313127 n

end A313127

/-! ## A313127.P3112124540791628005

`A008574(n)+n-A330025(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313127

/-- `A008574(n)+n-A330025(n)` -/
def P3112124540791628005.Spec : Prop :=
  ∀ n, P3112124540791628005.a n = A313127 n

theorem P3112124540791628005.correct : P3112124540791628005.Spec := by
  intro n
  simp only [A313127]

end A313127

/-! ## A313127.P4055326078419953517

`A151988(n)+A313116(n)-n`
-/

namespace A313127.P4055326078419953517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A313116 n - (n : ℤ))

end

end A313127.P4055326078419953517

namespace A313127

/-- `A151988(n)+A313116(n)-n` -/
def P4055326078419953517.Spec : Prop :=
  ∀ n, P4055326078419953517.a n = A313127 n

end A313127

/-! ## A313127.P8875401494449431344

`A001068(A008574(n))-A330025(n)`
-/

namespace A313127.P8875401494449431344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A008574 n).toNat - A330025 n

end

end A313127.P8875401494449431344

namespace A313127

/-- `A001068(A008574(n))-A330025(n)` -/
def P8875401494449431344.Spec : Prop :=
  ∀ n, P8875401494449431344.a n = A313127 n

end A313127

/-! ## A313127.P4672172299513721801

`A008458(n)+A008574(n)-A315461(n)`
-/

namespace A313127.P4672172299513721801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315461 n)

end

end A313127.P4672172299513721801

namespace A313127

/-- `A008458(n)+A008574(n)-A315461(n)` -/
def P4672172299513721801.Spec : Prop :=
  ∀ n, P4672172299513721801.a n = A313127 n

end A313127

/-! ## A313127.P14157301960134880613

`A314093(n)-A253262(n)`
-/

namespace A313127.P14157301960134880613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314093 n - A253262 n

end

end A313127.P14157301960134880613

namespace A313127

/-- `A314093(n)-A253262(n)` -/
def P14157301960134880613.Spec : Prop :=
  ∀ n, P14157301960134880613.a n = A313127 n

theorem P14157301960134880613.correct : P14157301960134880613.Spec := by
  intro n
  simp only [A313127, Nat.add_sub_cancel, A313127.P14157301960134880613.a, A313127.P3112124540791628005.a, A008574, A008574.P1300280032690682112.a, A253262, A253262.P6184646248567078382.a, A314093, A314093.P5564140878793647355.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A313127

/-! ## A313127.P15307169231103120748

`A074067(A315461(n))`
-/

namespace A313127.P15307169231103120748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315461 n).toNat

end

end A313127.P15307169231103120748

namespace A313127

/-- `A074067(A315461(n))` -/
def P15307169231103120748.Spec : Prop :=
  ∀ n, P15307169231103120748.a n = A313127 n

end A313127

/-! ## A313127.P5771284336236857628

`A005843(A008706(n))-A315461(n)`
-/

namespace A313127.P5771284336236857628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315461 n

end

end A313127.P5771284336236857628

namespace A313127

/-- `A005843(A008706(n))-A315461(n)` -/
def P5771284336236857628.Spec : Prop :=
  ∀ n, P5771284336236857628.a n = A313127 n

end A313127

/-!
# A313128: Coordination sequence Gal.6.158.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313128, the canonical program `A313128.P16248448995239105676` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313128 has offset 0).

The definition of A313128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313128.P17730182399014372009

`abs(A008592(n)-A315460(n))`
-/

namespace A313128.P17730182399014372009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315460 n|

end

end A313128.P17730182399014372009

namespace A313128

/-- `abs(A008592(n)-A315460(n))` -/
def P17730182399014372009.Spec : Prop :=
  ∀ n, P17730182399014372009.a n = A313128 n

end A313128

/-! ## A313128.P580863971219198930

`A312980(n)+Δ[A011864(n)]`
-/

namespace A313128.P580863971219198930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312980 n + (f1 (n + 1) - f1 n)

end

end A313128.P580863971219198930

namespace A313128

/-- `A312980(n)+Δ[A011864(n)]` -/
def P580863971219198930.Spec : Prop :=
  ∀ n, P580863971219198930.a n = A313128 n

end A313128

/-! ## A313128.P14955513146559622301

`2*A008706(n)-A315460(n)`
-/

namespace A313128.P14955513146559622301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315460 n

end

end A313128.P14955513146559622301

namespace A313128

/-- `2*A008706(n)-A315460(n)` -/
def P14955513146559622301.Spec : Prop :=
  ∀ n, P14955513146559622301.a n = A313128 n

end A313128

/-! ## A313128.P16049092951280104713

`A000038(n)+A008592(n)-A315460(n)`
-/

namespace A313128.P16049092951280104713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A315460 n)

end

end A313128.P16049092951280104713

namespace A313128

/-- `A000038(n)+A008592(n)-A315460(n)` -/
def P16049092951280104713.Spec : Prop :=
  ∀ n, P16049092951280104713.a n = A313128 n

end A313128

/-! ## A313128.P15903017611742608368

`A008458(n)+A008574(n)-A315460(n)`
-/

namespace A313128.P15903017611742608368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315460 n)

end

end A313128.P15903017611742608368

namespace A313128

/-- `A008458(n)+A008574(n)-A315460(n)` -/
def P15903017611742608368.Spec : Prop :=
  ∀ n, P15903017611742608368.a n = A313128 n

end A313128

/-! ## A313128.P13700675341762042567

`(A312562(n)+A310423(n))/2`
-/

namespace A313128.P13700675341762042567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312562 n + A310423 n : ℚ) / 2

end

end A313128.P13700675341762042567

namespace A313128

/-- `(A312562(n)+A310423(n))/2` -/
def P13700675341762042567.Spec : Prop :=
  ∀ n, P13700675341762042567.a n = (A313128 n : ℚ)

end A313128

/-! ## A313128.P16248448995239105676

`A312562(n)+A004525(A310423(n)-A312562(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A313128

/-- `A312562(n)+A004525(A310423(n)-A312562(n))` -/
def P16248448995239105676.Spec : Prop :=
  ∀ n, P16248448995239105676.a n = A313128 n

theorem P16248448995239105676.correct : P16248448995239105676.Spec := by
  intro n
  simp only [A313128]

end A313128

/-! ## A313128.P8211100240287399909

`(A312685(n)+A310380(n))/2`
-/

namespace A313128.P8211100240287399909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312685 n + A310380 n : ℚ) / 2

end

end A313128.P8211100240287399909

namespace A313128

/-- `(A312685(n)+A310380(n))/2` -/
def P8211100240287399909.Spec : Prop :=
  ∀ n, P8211100240287399909.a n = (A313128 n : ℚ)

end A313128

/-! ## A313128.P2457848877124049923

`A310526(n)-A004525(A310526(n)-A311553(n))`
-/

namespace A313128.P2457848877124049923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310526 n - A004525 (A310526 n - A311553 n).toNat

end

end A313128.P2457848877124049923

namespace A313128

/-- `A310526(n)-A004525(A310526(n)-A311553(n))` -/
def P2457848877124049923.Spec : Prop :=
  ∀ n, P2457848877124049923.a n = A313128 n

end A313128

/-! ## A313128.P5437978469719797657

`A065502(A312163(n))/2+n`
-/

namespace A313128.P5437978469719797657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065502 (A312163 n).toNat : ℚ) / 2 + (n : ℚ)

end

end A313128.P5437978469719797657

namespace A313128

/-- `A065502(A312163(n))/2+n` -/
def P5437978469719797657.Spec : Prop :=
  ∀ n, P5437978469719797657.a n = (A313128 n : ℚ)

end A313128

/-! ## A313128.P11820413415733963019

`A005843(A008706(n))-A315460(n)`
-/

namespace A313128.P11820413415733963019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315460 n

end

end A313128.P11820413415733963019

namespace A313128

/-- `A005843(A008706(n))-A315460(n)` -/
def P11820413415733963019.Spec : Prop :=
  ∀ n, P11820413415733963019.a n = A313128 n

end A313128

/-! ## A313128.P15915846154724757219

`A065502(A008458(n))-A315460(n)`
-/

namespace A313128.P15915846154724757219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315460 n

end

end A313128.P15915846154724757219

namespace A313128

/-- `A065502(A008458(n))-A315460(n)` -/
def P15915846154724757219.Spec : Prop :=
  ∀ n, P15915846154724757219.a n = A313128 n

end A313128

/-! ## A313128.P1649135293263411876

`A004525(A311553(n)+A310526(n))`
-/

namespace A313128.P1649135293263411876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311553 n + A310526 n).toNat

end

end A313128.P1649135293263411876

namespace A313128

/-- `A004525(A311553(n)+A310526(n))` -/
def P1649135293263411876.Spec : Prop :=
  ∀ n, P1649135293263411876.a n = A313128 n

end A313128

/-! ## A313128.P11123535250077090465

`A004525(A312562(n)+A310423(n))`
-/

namespace A313128.P11123535250077090465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312562 n + A310423 n).toNat

end

end A313128.P11123535250077090465

namespace A313128

/-- `A004525(A312562(n)+A310423(n))` -/
def P11123535250077090465.Spec : Prop :=
  ∀ n, P11123535250077090465.a n = A313128 n

end A313128

/-! ## A313128.P8692742697960103713

`A004525(A312685(n)+A310380(n))`
-/

namespace A313128.P8692742697960103713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312685 n + A310380 n).toNat

end

end A313128.P8692742697960103713

namespace A313128

/-- `A004525(A312685(n)+A310380(n))` -/
def P8692742697960103713.Spec : Prop :=
  ∀ n, P8692742697960103713.a n = A313128 n

end A313128

/-! ## A313128.P7904154412567152992

`A233583(A017281(n))-A315460(n)`
-/

namespace A313128.P7904154412567152992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315460 n

end

end A313128.P7904154412567152992

namespace A313128

/-- `A233583(A017281(n))-A315460(n)` -/
def P7904154412567152992.Spec : Prop :=
  ∀ n, P7904154412567152992.a n = A313128 n

end A313128

/-!
# A313129: Coordination sequence Gal.6.159.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313129, the canonical program `A313129.P8353896223887088681` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313129 has offset 0).

The definition of A313129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313129.P8353896223887088681

`abs(A008592(n)-A315459(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A313129

/-- `abs(A008592(n)-A315459(n))` -/
def P8353896223887088681.Spec : Prop :=
  ∀ n, P8353896223887088681.a n = A313129 n

theorem P8353896223887088681.correct : P8353896223887088681.Spec := by
  intro n
  simp only [A313129]

end A313129

/-! ## A313129.P12233529996595833506

`A311549(n)+∑[A021913(n)]`
-/

namespace A313129.P12233529996595833506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311549 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313129.P12233529996595833506

namespace A313129

/-- `A311549(n)+∑[A021913(n)]` -/
def P12233529996595833506.Spec : Prop :=
  ∀ n, P12233529996595833506.a n = A313129 n

end A313129

/-! ## A313129.P1047695455374567543

`A312152(n)+∑[A022003(n)]`
-/

namespace A313129.P1047695455374567543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312152 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313129.P1047695455374567543

namespace A313129

/-- `A312152(n)+∑[A022003(n)]` -/
def P1047695455374567543.Spec : Prop :=
  ∀ n, P1047695455374567543.a n = A313129 n

end A313129

/-! ## A313129.P5436147923867316789

`A311549(n)+Δ[A011848(n)]`
-/

namespace A313129.P5436147923867316789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311549 n + (f1 (n + 1) - f1 n)

end

end A313129.P5436147923867316789

namespace A313129

/-- `A311549(n)+Δ[A011848(n)]` -/
def P5436147923867316789.Spec : Prop :=
  ∀ n, P5436147923867316789.a n = A313129 n

end A313129

/-! ## A313129.P11459210778451520393

`A312152(n)+A002264(n+1)`
-/

namespace A313129.P11459210778451520393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312152 n + A002264 (n + 1)

end

end A313129.P11459210778451520393

namespace A313129

/-- `A312152(n)+A002264(n+1)` -/
def P11459210778451520393.Spec : Prop :=
  ∀ n, P11459210778451520393.a n = A313129 n

end A313129

/-! ## A313129.P8255687168227200843

`A311549(n)+A004524(n+1)`
-/

namespace A313129.P8255687168227200843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311549 n + A004524 (n + 1)

end

end A313129.P8255687168227200843

namespace A313129

/-- `A311549(n)+A004524(n+1)` -/
def P8255687168227200843.Spec : Prop :=
  ∀ n, P8255687168227200843.a n = A313129 n

end A313129

/-! ## A313129.P7151957741679289767

`2*A008706(n)-A315459(n)`
-/

namespace A313129.P7151957741679289767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315459 n

end

end A313129.P7151957741679289767

namespace A313129

/-- `2*A008706(n)-A315459(n)` -/
def P7151957741679289767.Spec : Prop :=
  ∀ n, P7151957741679289767.a n = A313129 n

end A313129

/-! ## A313129.P3110679902497116537

`A311549(n)+n-A004525(n)`
-/

namespace A313129.P3110679902497116537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311549 n + ((n : ℤ) - A004525 n)

end

end A313129.P3110679902497116537

namespace A313129

/-- `A311549(n)+n-A004525(n)` -/
def P3110679902497116537.Spec : Prop :=
  ∀ n, P3110679902497116537.a n = A313129 n

end A313129

/-! ## A313129.P6539340658041041287

`A312152(n)+A008615(2*n+1)`
-/

namespace A313129.P6539340658041041287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312152 n + A008615 (2 * n + 1)

end

end A313129.P6539340658041041287

namespace A313129

/-- `A312152(n)+A008615(2*n+1)` -/
def P6539340658041041287.Spec : Prop :=
  ∀ n, P6539340658041041287.a n = A313129 n

end A313129

/-! ## A313129.P5174524586924977725

`A008486(n)+A312152(n)-A008576(n)`
-/

namespace A313129.P5174524586924977725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A312152 n - A008576 n)

end

end A313129.P5174524586924977725

namespace A313129

/-- `A008486(n)+A312152(n)-A008576(n)` -/
def P5174524586924977725.Spec : Prop :=
  ∀ n, P5174524586924977725.a n = A313129 n

end A313129

/-! ## A313129.P6195654097235138525

`A008458(n)+A008574(n)-A315459(n)`
-/

namespace A313129.P6195654097235138525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315459 n)

end

end A313129.P6195654097235138525

namespace A313129

/-- `A008458(n)+A008574(n)-A315459(n)` -/
def P6195654097235138525.Spec : Prop :=
  ∀ n, P6195654097235138525.a n = A313129 n

end A313129

/-! ## A313129.P8955585028655788134

`A005843(A008706(n))-A315459(n)`
-/

namespace A313129.P8955585028655788134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315459 n

end

end A313129.P8955585028655788134

namespace A313129

/-- `A005843(A008706(n))-A315459(n)` -/
def P8955585028655788134.Spec : Prop :=
  ∀ n, P8955585028655788134.a n = A313129 n

end A313129

/-!
# A313131: Coordination sequence Gal.5.93.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313131, there is no canonical definition to state claims against.
-/

/-! ## A313131.P2330467708788247591

`A315315(n)-A051903(A051924(n+1))`
-/

namespace A313131.P2330467708788247591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315315 n - A051903 (A051924 (n + 1)).toNat

end

end A313131.P2330467708788247591

/-!
# A313132: Coordination sequence Gal.5.276.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313132, there is no canonical definition to state claims against.
-/

/-! ## A313132.P17338281066307045980

`A313133(n)-A185284(A005251(n))`
-/

namespace A313132.P17338281066307045980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313133 n - A185284 (A005251 n).toNat

end

end A313132.P17338281066307045980

/-! ## A313132.P5885874396799242490

`A313133(n)-A267145(A118398(n))`
-/

namespace A313132.P5885874396799242490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313133 n - A267145 (A118398 n).toNat

end

end A313132.P5885874396799242490

/-! ## A313132.P468950013694646816

`A312928(n)+A263280(A263330(n+1))`
-/

namespace A313132.P468950013694646816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312928 n + A263280 (A263330 (n + 1)).toNat

end

end A313132.P468950013694646816

/-! ## A313132.P2326480475775756841

`A313133(n)-A185035(A085908(n+1))`
-/

namespace A313132.P2326480475775756841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313133 n - A185035 (A085908 (n + 1)).toNat

end

end A313132.P2326480475775756841

/-! ## A313132.P10718266335207103770

`A312595(n)+A281082(A264396(3*n+5))`
-/

namespace A313132.P10718266335207103770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312595 n + A281082 (A264396 (3 * n + 5)).toNat

end

end A313132.P10718266335207103770

/-!
# A313133: Coordination sequence Gal.4.125.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313133, there is no canonical definition to state claims against.
-/

/-! ## A313133.P6282644602174363536

`A312594(n)+A037909(A002999(n))`
-/

namespace A313133.P6282644602174363536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312594 n + A037909 (A002999 n).toNat

end

end A313133.P6282644602174363536

/-! ## A313133.P11088782687726958164

`A313132(n)+A185284(A000045(n))`
-/

namespace A313133.P11088782687726958164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313132 n + A185284 (A000045 n).toNat

end

end A313133.P11088782687726958164

/-! ## A313133.P7379788369999973400

`A313132(n)+A185284(A005251(n))`
-/

namespace A313133.P7379788369999973400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313132 n + A185284 (A005251 n).toNat

end

end A313133.P7379788369999973400

/-! ## A313133.P11682843094051465316

`A312589(n)+A124764(A200748(n))`
-/

namespace A313133.P11682843094051465316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312589 n + A124764 (A200748 n).toNat

end

end A313133.P11682843094051465316

/-! ## A313133.P4894420360540858992

`A313132(n)+A147645(A095126(n+1))`
-/

namespace A313133.P4894420360540858992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313132 n + A147645 (A095126 (n + 1)).toNat

end

end A313133.P4894420360540858992

/-!
# A313134: Coordination sequence Gal.6.590.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313134, there is no canonical definition to state claims against.
-/

/-! ## A313134.P10340805285748490626

`A313770(n)-A001221(A047850(n))`
-/

namespace A313134.P10340805285748490626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313770 n - A001221 (A047850 n).toNat

end

end A313134.P10340805285748490626

/-! ## A313134.P8961176064853477082

`A260088(A344533(n+1))+A008574(n)`
-/

namespace A313134.P8961176064853477082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260088 (A344533 (n + 1)).toNat + A008574 n

end

end A313134.P8961176064853477082

/-! ## A313134.P12337382019377530728

`A250120(n)-A145706(A032555(n+1))`
-/

namespace A313134.P12337382019377530728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A145706 (A032555 (n + 1)).toNat

end

end A313134.P12337382019377530728

/-! ## A313134.P3502220030750274706

`A072154(2*n)-A145706(A032555(n+1))`
-/

namespace A313134.P3502220030750274706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A145706 (A032555 (n + 1)).toNat

end

end A313134.P3502220030750274706

/-! ## A313134.P14074906277742129244

`record[A072154(n)/(-1)^n]-A145706(A032555(n+1))`
-/

namespace A313134.P14074906277742129244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072154 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A145706 (A032555 (n + 1)).toNat : ℚ)

end

end A313134.P14074906277742129244

/-!
# A313135: Coordination sequence Gal.6.368.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313135, there is no canonical definition to state claims against.
-/

/-! ## A313135.P6777476477327665914

`∑[A030496(record[A007569(3*(n+1))])]`
-/

namespace A313135.P6777476477327665914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007569 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313135.P6777476477327665914

/-! ## A313135.P14460676843749056563

`A301684(n)+A001222(A107894(n))`
-/

namespace A313135.P14460676843749056563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301684 n + A001222 (A107894 n).toNat

end

end A313135.P14460676843749056563

/-! ## A313135.P9908857657917658271

`A313879(n)-A001221(A054091(n))`
-/

namespace A313135.P9908857657917658271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n - A001221 (A054091 n).toNat

end

end A313135.P9908857657917658271

/-! ## A313135.P12275824984852159682

`A314149(n)-A001222(A173311(n))`
-/

namespace A313135.P12275824984852159682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314149 n - A001222 (A173311 n).toNat

end

end A313135.P12275824984852159682

/-! ## A313135.P13718417384449910302

`xor(A129251(A239459(n+1)), A313226(n))`
-/

namespace A313135.P13718417384449910302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A129251 (A239459 (n + 1)).toNat) (A313226 n)

end

end A313135.P13718417384449910302

/-!
# A313136: Coordination sequence Gal.6.256.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313136, the canonical program `A313136.P11916403924351243439` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313136 has offset 0).

The definition of A313136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313136.P11916403924351243439

`A313540(n)-A128834(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313136

/-- `A313540(n)-A128834(n)` -/
def P11916403924351243439.Spec : Prop :=
  ∀ n, P11916403924351243439.a n = A313136 n

theorem P11916403924351243439.correct : P11916403924351243439.Spec := by
  intro n
  simp only [A313136]

end A313136

/-! ## A313136.P9198328279152220458

`A313540(n)+A010892(n+2)`
-/

namespace A313136.P9198328279152220458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + A010892 (n + 2)

end

end A313136.P9198328279152220458

namespace A313136

/-- `A313540(n)+A010892(n+2)` -/
def P9198328279152220458.Spec : Prop :=
  ∀ n, P9198328279152220458.a n = A313136 n

end A313136

/-! ## A313136.P14166257289017178623

`A004396(n)+A312926(n)-A004525(A004396(n))`
-/

namespace A313136.P14166257289017178623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A312926 n - A004525 (A004396 n).toNat)

end

end A313136.P14166257289017178623

namespace A313136

/-- `A004396(n)+A312926(n)-A004525(A004396(n))` -/
def P14166257289017178623.Spec : Prop :=
  ∀ n, P14166257289017178623.a n = A313136 n

end A313136

/-! ## A313136.P12660289373967650321

`A313246(n)-Δ[A011865(n)]`
-/

namespace A313136.P12660289373967650321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n - (f1 (n + 1) - f1 n)

end

end A313136.P12660289373967650321

namespace A313136

/-- `A313246(n)-Δ[A011865(n)]` -/
def P12660289373967650321.Spec : Prop :=
  ∀ n, P12660289373967650321.a n = A313136 n

end A313136

/-! ## A313136.P3246296463389871320

`A313769(n)-A004525(A004396(n))`
-/

namespace A313136.P3246296463389871320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313769 n - A004525 (A004396 n).toNat

end

end A313136.P3246296463389871320

namespace A313136

/-- `A313769(n)-A004525(A004396(n))` -/
def P3246296463389871320.Spec : Prop :=
  ∀ n, P3246296463389871320.a n = A313136 n

end A313136

/-! ## A313136.P7994769373486059111

`A313778(n)-A004396(A004525(n))`
-/

namespace A313136.P7994769373486059111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n - A004396 (A004525 n).toNat

end

end A313136.P7994769373486059111

namespace A313136

/-- `A313778(n)-A004396(A004525(n))` -/
def P7994769373486059111.Spec : Prop :=
  ∀ n, P7994769373486059111.a n = A313136 n

end A313136

/-! ## A313136.P1973584828566729498

`A310470(n)-A004396(n-A004525(n))`
-/

namespace A313136.P1973584828566729498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310470 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A313136.P1973584828566729498

namespace A313136

/-- `A310470(n)-A004396(n-A004525(n))` -/
def P1973584828566729498.Spec : Prop :=
  ∀ n, P1973584828566729498.a n = A313136 n

end A313136

/-! ## A313136.P14026439944139007191

`abs(A008592(n)-A315455(n))`
-/

namespace A313136.P14026439944139007191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315455 n|

end

end A313136.P14026439944139007191

namespace A313136

/-- `abs(A008592(n)-A315455(n))` -/
def P14026439944139007191.Spec : Prop :=
  ∀ n, P14026439944139007191.a n = A313136 n

end A313136

/-! ## A313136.P3940877523766989436

`2*A008706(n)-A315455(n)`
-/

namespace A313136.P3940877523766989436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315455 n

end

end A313136.P3940877523766989436

namespace A313136

/-- `2*A008706(n)-A315455(n)` -/
def P3940877523766989436.Spec : Prop :=
  ∀ n, P3940877523766989436.a n = A313136 n

end A313136

/-! ## A313136.P4064839999331622361

`A008458(n)+A008574(n)-A315455(n)`
-/

namespace A313136.P4064839999331622361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315455 n)

end

end A313136.P4064839999331622361

namespace A313136

/-- `A008458(n)+A008574(n)-A315455(n)` -/
def P4064839999331622361.Spec : Prop :=
  ∀ n, P4064839999331622361.a n = A313136 n

end A313136

/-! ## A313136.P17642531164520820839

`A315455(n)-A005843(A315455(n)-A008706(n))`
-/

namespace A313136.P17642531164520820839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315455 n - A005843 (A315455 n - A008706 n).toNat

end

end A313136.P17642531164520820839

namespace A313136

/-- `A315455(n)-A005843(A315455(n)-A008706(n))` -/
def P17642531164520820839.Spec : Prop :=
  ∀ n, P17642531164520820839.a n = A313136 n

end A313136

/-! ## A313136.P7645763915378843424

`A005843(A008706(n))-A315455(n)`
-/

namespace A313136.P7645763915378843424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315455 n

end

end A313136.P7645763915378843424

namespace A313136

/-- `A005843(A008706(n))-A315455(n)` -/
def P7645763915378843424.Spec : Prop :=
  ∀ n, P7645763915378843424.a n = A313136 n

end A313136

/-! ## A313136.P771310972600024493

`A028310(A314841(2*n)-A314841(n))`
-/

namespace A313136.P771310972600024493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A314841 (2 * n) - A314841 n).toNat

end

end A313136.P771310972600024493

namespace A313136

/-- `A028310(A314841(2*n)-A314841(n))` -/
def P771310972600024493.Spec : Prop :=
  ∀ n, P771310972600024493.a n = A313136 n

end A313136

/-!
# A313137: Coordination sequence Gal.6.263.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313137, the canonical program `A313137.P995898945456089684` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313137 has offset 0).

The definition of A313137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313137.P4286701614287577805

`abs(A008592(n)-A315454(n))`
-/

namespace A313137.P4286701614287577805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315454 n|

end

end A313137.P4286701614287577805

namespace A313137

/-- `abs(A008592(n)-A315454(n))` -/
def P4286701614287577805.Spec : Prop :=
  ∀ n, P4286701614287577805.a n = A313137 n

end A313137

/-! ## A313137.P6632496616728054049

`A313247(n)-Δ[A011864(n)]`
-/

namespace A313137.P6632496616728054049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313247 n - (f1 (n + 1) - f1 n)

end

end A313137.P6632496616728054049

namespace A313137

/-- `A313247(n)-Δ[A011864(n)]` -/
def P6632496616728054049.Spec : Prop :=
  ∀ n, P6632496616728054049.a n = A313137 n

theorem P6632496616728054049.correct : P6632496616728054049.Spec := by
  intro n
  simp only [A313137, Nat.add_sub_cancel, A313137.P6632496616728054049.f1, A313137.P6632496616728054049.a, A313137.P995898945456089684.a, A011864, A011864.P3547417513882699266.a, A311523, A311523.P10353843342915218177.a, A313247, A313247.P14752324548149291645.f1, A313247.P14752324548149291645.a, A008592, A008592.P4981059802862696142.a, A315743, A315743.P14010390675010090140.f1, A315743.P14010390675010090140.a, A315695, A315695.P671725202491789356.a, A311889, A311889.P1219721333135851208.a, A313722, A313722.P17589787555355658090.f1, A313722.P17589787555355658090.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313137

/-! ## A313137.P2072483791225972147

`2*A008706(n)-A315454(n)`
-/

namespace A313137.P2072483791225972147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315454 n

end

end A313137.P2072483791225972147

namespace A313137

/-- `2*A008706(n)-A315454(n)` -/
def P2072483791225972147.Spec : Prop :=
  ∀ n, P2072483791225972147.a n = A313137 n

end A313137

/-! ## A313137.P15539597473367950528

`A135042(2*n+1)-A315454(n)`
-/

namespace A313137.P15539597473367950528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315454 n

end

end A313137.P15539597473367950528

namespace A313137

/-- `A135042(2*n+1)-A315454(n)` -/
def P15539597473367950528.Spec : Prop :=
  ∀ n, P15539597473367950528.a n = A313137 n

end A313137

/-! ## A313137.P1870505442349615816

`A184418(A008574(n))-A315454(n)`
-/

namespace A313137.P1870505442349615816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315454 n

end

end A313137.P1870505442349615816

namespace A313137

/-- `A184418(A008574(n))-A315454(n)` -/
def P1870505442349615816.Spec : Prop :=
  ∀ n, P1870505442349615816.a n = A313137 n

end A313137

/-! ## A313137.P8135529342519460161

`A008458(n)+A008574(n)-A315454(n)`
-/

namespace A313137.P8135529342519460161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315454 n)

end

end A313137.P8135529342519460161

namespace A313137

/-- `A008458(n)+A008574(n)-A315454(n)` -/
def P8135529342519460161.Spec : Prop :=
  ∀ n, P8135529342519460161.a n = A313137 n

end A313137

/-! ## A313137.P15176545390817991953

`A315454(n)-A005843(A315454(n)-A008706(n))`
-/

namespace A313137.P15176545390817991953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315454 n - A005843 (A315454 n - A008706 n).toNat

end

end A313137.P15176545390817991953

namespace A313137

/-- `A315454(n)-A005843(A315454(n)-A008706(n))` -/
def P15176545390817991953.Spec : Prop :=
  ∀ n, P15176545390817991953.a n = A313137 n

end A313137

/-! ## A313137.P106554442869156393

`∏{d}[A008592(n)-A315454(n), A014963(#)]`
-/

namespace A313137.P106554442869156393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A313137.P106554442869156393

namespace A313137

/-- `∏{d}[A008592(n)-A315454(n), A014963(#)]` -/
def P106554442869156393.Spec : Prop :=
  ∀ n, P106554442869156393.a n = A313137 n

end A313137

/-! ## A313137.P2892496726219157431

`A005843(A008706(n))-A315454(n)`
-/

namespace A313137.P2892496726219157431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315454 n

end

end A313137.P2892496726219157431

namespace A313137

/-- `A005843(A008706(n))-A315454(n)` -/
def P2892496726219157431.Spec : Prop :=
  ∀ n, P2892496726219157431.a n = A313137 n

end A313137

/-! ## A313137.P8564924115461101777

`(A311593(n)+A310517(n))/2`
-/

namespace A313137.P8564924115461101777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311593 n + A310517 n : ℚ) / 2

end

end A313137.P8564924115461101777

namespace A313137

/-- `(A311593(n)+A310517(n))/2` -/
def P8564924115461101777.Spec : Prop :=
  ∀ n, P8564924115461101777.a n = (A313137 n : ℚ)

end A313137

/-! ## A313137.P5529867898239913253

`A311593(n)+A001281(A310517(n)-A311593(n))`
-/

namespace A313137.P5529867898239913253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311593 n + A001281 (A310517 n - A311593 n).toNat

end

end A313137.P5529867898239913253

namespace A313137

/-- `A311593(n)+A001281(A310517(n)-A311593(n))` -/
def P5529867898239913253.Spec : Prop :=
  ∀ n, P5529867898239913253.a n = A313137 n

end A313137

/-! ## A313137.P2880124387406179981

`A311593(n)+A004525(A310517(n)-A311593(n))`
-/

namespace A313137.P2880124387406179981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311593 n + A004525 (A310517 n - A311593 n).toNat

end

end A313137.P2880124387406179981

namespace A313137

/-- `A311593(n)+A004525(A310517(n)-A311593(n))` -/
def P2880124387406179981.Spec : Prop :=
  ∀ n, P2880124387406179981.a n = A313137 n

end A313137

/-! ## A313137.P103311510984091906

`A065502(A008458(n))-A315454(n)`
-/

namespace A313137.P103311510984091906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315454 n

end

end A313137.P103311510984091906

namespace A313137

/-- `A065502(A008458(n))-A315454(n)` -/
def P103311510984091906.Spec : Prop :=
  ∀ n, P103311510984091906.a n = A313137 n

end A313137

/-! ## A313137.P17493703821211845133

`A311626(2*n)/(4*n+1-A004273(2*n))`
-/

namespace A313137.P17493703821211845133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311626 (2 * n) : ℚ) / ((4 * n + 1 : ℤ) - A004273 (2 * n) : ℚ)

end

end A313137.P17493703821211845133

namespace A313137

/-- `A311626(2*n)/(4*n+1-A004273(2*n))` -/
def P17493703821211845133.Spec : Prop :=
  ∀ n, P17493703821211845133.a n = (A313137 n : ℚ)

end A313137

/-! ## A313137.P3716234582618065902

`A311626(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A313137.P3716234582618065902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311626 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A313137.P3716234582618065902

namespace A313137

/-- `A311626(2*n)/(4*n+2-A004277(2*n))` -/
def P3716234582618065902.Spec : Prop :=
  ∀ n, P3716234582618065902.a n = (A313137 n : ℚ)

end A313137

/-! ## A313137.P995898945456089684

`A311523(2*n)-4*n`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A313137

/-- `A311523(2*n)-4*n` -/
def P995898945456089684.Spec : Prop :=
  ∀ n, P995898945456089684.a n = A313137 n

theorem P995898945456089684.correct : P995898945456089684.Spec := by
  intro n
  simp only [A313137]

end A313137

/-! ## A313137.P3507554243123854859

`2*A008574(2*n)-A315743(2*n)`
-/

namespace A313137.P3507554243123854859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315743 (2 * n)

end

end A313137.P3507554243123854859

namespace A313137

/-- `2*A008574(2*n)-A315743(2*n)` -/
def P3507554243123854859.Spec : Prop :=
  ∀ n, P3507554243123854859.a n = A313137 n

end A313137

/-! ## A313137.P1214899720301235640

`A004525(A311626(2*n))`
-/

namespace A313137.P1214899720301235640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311626 (2 * n)).toNat

end

end A313137.P1214899720301235640

namespace A313137

/-- `A004525(A311626(2*n))` -/
def P1214899720301235640.Spec : Prop :=
  ∀ n, P1214899720301235640.a n = A313137 n

end A313137

/-! ## A313137.P7264804450753270

`A004526(A311626(2*n)+1)`
-/

namespace A313137.P7264804450753270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311626 (2 * n) + 1).toNat

end

end A313137.P7264804450753270

namespace A313137

/-- `A004526(A311626(2*n)+1)` -/
def P7264804450753270.Spec : Prop :=
  ∀ n, P7264804450753270.a n = A313137 n

end A313137

/-! ## A313137.P2143022716421557501

`A008619(A311626(2*n)-1)`
-/

namespace A313137.P2143022716421557501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311626 (2 * n) - 1).toNat

end

end A313137.P2143022716421557501

namespace A313137

/-- `A008619(A311626(2*n)-1)` -/
def P2143022716421557501.Spec : Prop :=
  ∀ n, P2143022716421557501.a n = A313137 n

end A313137

/-!
# A313138: Coordination sequence Gal.5.185.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313138, there is no canonical definition to state claims against.
-/

/-! ## A313138.P112754973007126802

`A313136(n)+A107846(A129953(n))`
-/

namespace A313138.P112754973007126802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313136 n + A107846 (A129953 n).toNat

end

end A313138.P112754973007126802

/-! ## A313138.P17549425584679539422

`or(A215962(A125230(n)), A313136(n))`
-/

namespace A313138.P17549425584679539422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A215962 (A125230 n).toNat) (A313136 n)

end

end A313138.P17549425584679539422

/-! ## A313138.P5570664247483697729

`A313136(n)+A111900(A076019(n+1))`
-/

namespace A313138.P5570664247483697729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313136 n + A111900 (A076019 (n + 1)).toNat

end

end A313138.P5570664247483697729

/-! ## A313138.P13109982744365260870

`A376590(A376574(n))+A301684(n)`
-/

namespace A313138.P13109982744365260870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376590 (A376574 n).toNat + A301684 n

end

end A313138.P13109982744365260870

/-! ## A313138.P17584744937896500490

`A312065(n)+A001221(A108070(n+1))`
-/

namespace A313138.P17584744937896500490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A001221 (A108070 (n + 1)).toNat

end

end A313138.P17584744937896500490

/-!
# A313139: Coordination sequence Gal.5.184.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313139, there is no canonical definition to state claims against.
-/

/-! ## A313139.P4783791781780408902

`A232748(A315760(n)+1)`
-/

namespace A313139.P4783791781780408902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232748 (A315760 n + 1).toNat

end

end A313139.P4783791781780408902

/-! ## A313139.P17321064556351627312

`A313237(n)-A178602(A313237(n))`
-/

namespace A313139.P17321064556351627312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313237 n - A178602 (A313237 n).toNat

end

end A313139.P17321064556351627312

/-! ## A313139.P12667333922104706262

`A313610(n)+A008683(A237745(n+1))`
-/

namespace A313139.P12667333922104706262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313610 n + A008683 (A237745 (n + 1)).toNat

end

end A313139.P12667333922104706262

/-! ## A313139.P13208127426650667969

`A310452(n)-A021913(A002220(n+1))`
-/

namespace A313139.P13208127426650667969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310452 n - A021913 (A002220 (n + 1)).toNat

end

end A313139.P13208127426650667969

/-! ## A313139.P9004255541505372440

`A313136(n)+A086016(A000041(3*n+4))`
-/

namespace A313139.P9004255541505372440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313136 n + A086016 (A000041 (3 * n + 4)).toNat

end

end A313139.P9004255541505372440

/-!
# A313140: Coordination sequence Gal.6.372.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313140, there is no canonical definition to state claims against.
-/

/-! ## A313140.P1502924922842864940

`xor(A178602(A313610(n)), A313237(n))`
-/

namespace A313140.P1502924922842864940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178602 (A313610 n).toNat) (A313237 n)

end

end A313140.P1502924922842864940

/-! ## A313140.P18062769455664872358

`A311481(n)+A025485(A148602(n))`
-/

namespace A313140.P18062769455664872358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311481 n + A025485 (A148602 n).toNat

end

end A313140.P18062769455664872358

/-! ## A313140.P13928033444717790210

`A008706(n)-A093997(A146028(n+1))`
-/

namespace A313140.P13928033444717790210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A093997 (A146028 (n + 1)).toNat

end

end A313140.P13928033444717790210

/-! ## A313140.P17378692022306083273

`A359772(3*n+1)-A001221(A246544(n+1))`
-/

namespace A313140.P17378692022306083273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359772 (3 * n + 1) - A001221 (A246544 (n + 1)).toNat

end

end A313140.P17378692022306083273

/-! ## A313140.P7673430944743522703

`A373364(A081294(n))+∑[(n+1)%3]`
-/

namespace A313140.P7673430944743522703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373364 (A081294 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A313140.P7673430944743522703

/-!
# A313141: Coordination sequence Gal.5.266.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313141, there is no canonical definition to state claims against.
-/

/-! ## A313141.P6750445322484602430

`A333628(A346600(n+1))+A008579(n)`
-/

namespace A313141.P6750445322484602430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333628 (A346600 (n + 1)).toNat + A008579 n

end

end A313141.P6750445322484602430

/-! ## A313141.P10287438685295476477

`A038565(n+1)-(A310385(A348811(n))-A008579(n))`
-/

namespace A313141.P10287438685295476477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038565 (n + 1) - (A310385 (A348811 n).toNat - A008579 n)

end

end A313141.P10287438685295476477

/-! ## A313141.P3670813331127335213

`A037888(A122446(n))+A008579(n)`
-/

namespace A313141.P3670813331127335213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A122446 n).toNat + A008579 n

end

end A313141.P3670813331127335213

/-! ## A313141.P6067345397996513895

`A313102(n)+A305386(A045618(n))`
-/

namespace A313141.P6067345397996513895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313102 n + A305386 (A045618 n).toNat

end

end A313141.P6067345397996513895

/-! ## A313141.P4444874882193865925

`A315329(n)-A001222(A266980(n))`
-/

namespace A313141.P4444874882193865925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315329 n - A001222 (A266980 n).toNat

end

end A313141.P4444874882193865925

/-!
# A313142: Coordination sequence Gal.6.615.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313142, there is no canonical definition to state claims against.
-/

/-! ## A313142.P8499345331750661549

`A313145(n)-A002262(A124482(n+1))`
-/

namespace A313142.P8499345331750661549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313145 n - A002262 (A124482 (n + 1)).toNat

end

end A313142.P8499345331750661549

/-!
# A313143: Coordination sequence Gal.5.128.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313143, there is no canonical definition to state claims against.
-/

/-! ## A313143.P4181914062224516892

`A313149(n)-A304571(A350080(n))`
-/

namespace A313143.P4181914062224516892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313149 n - A304571 (A350080 n).toNat

end

end A313143.P4181914062224516892

/-!
# A313144: Coordination sequence Gal.5.219.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313144, the canonical program `A313144.P17775273712726456344` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313144 has offset 0).

The definition of A313144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313144.P7724963061305861862

`A313565(n)-A128834(n)`
-/

namespace A313144.P7724963061305861862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313565 n - A128834 n

end

end A313144.P7724963061305861862

namespace A313144

/-- `A313565(n)-A128834(n)` -/
def P7724963061305861862.Spec : Prop :=
  ∀ n, P7724963061305861862.a n = A313144 n

theorem P7724963061305861862.correct : P7724963061305861862.Spec := by
  intro n
  simp only [A313144, Nat.add_sub_cancel, A313144.P7724963061305861862.a, A313144.P17775273712726456344.a, A004525, A004525.P4158271949796742323.a, A087509, A087509.P16726383197486069853.a, A128834, A128834.P16779687439637953687.a, A312620, A312620.P764241885793850481.a, A313565, A313565.P15751569244382166249.a, A004396, A004396.P17032557045289780609.a, A010892, A010892.P14408744864468695543.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P16955071387491425171.f1, A047513.P16955071387491425171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313144

/-! ## A313144.P13996019777560818059

`A313565(n)+A010892(n+2)`
-/

namespace A313144.P13996019777560818059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313565 n + A010892 (n + 2)

end

end A313144.P13996019777560818059

namespace A313144

/-- `A313565(n)+A010892(n+2)` -/
def P13996019777560818059.Spec : Prop :=
  ∀ n, P13996019777560818059.a n = A313144 n

end A313144

/-! ## A313144.P409284327129017628

`A313565(n)+A280261(2*n)`
-/

namespace A313144.P409284327129017628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313565 n + A280261 (2 * n)

end

end A313144.P409284327129017628

namespace A313144

/-- `A313565(n)+A280261(2*n)` -/
def P409284327129017628.Spec : Prop :=
  ∀ n, P409284327129017628.a n = A313144 n

end A313144

/-! ## A313144.P17775273712726456344

`A312620(n)+A004525(A087509(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313144

/-- `A312620(n)+A004525(A087509(n))` -/
def P17775273712726456344.Spec : Prop :=
  ∀ n, P17775273712726456344.a n = A313144 n

theorem P17775273712726456344.correct : P17775273712726456344.Spec := by
  intro n
  simp only [A313144]

end A313144

/-! ## A313144.P7496625878821698945

`(A315471(n)+A301688(n))/2-A128834(n)`
-/

namespace A313144.P7496625878821698945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315471 n + A301688 n : ℚ) / 2 - (A128834 n : ℚ)

end

end A313144.P7496625878821698945

namespace A313144

/-- `(A315471(n)+A301688(n))/2-A128834(n)` -/
def P7496625878821698945.Spec : Prop :=
  ∀ n, P7496625878821698945.a n = (A313144 n : ℚ)

end A313144

/-!
# A313145: Coordination sequence Gal.6.264.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313145, the canonical program `A313145.P4535959116783505472` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313145 has offset 0).

The definition of A313145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313145.P4535959116783505472

`A312184(n)+A004525(n-A004396(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A313145

/-- `A312184(n)+A004525(n-A004396(n))` -/
def P4535959116783505472.Spec : Prop :=
  ∀ n, P4535959116783505472.a n = A313145 n

theorem P4535959116783505472.correct : P4535959116783505472.Spec := by
  intro n
  simp only [A313145]

end A313145

/-! ## A313145.P4734352508748450330

`A313569(n)-A128834(n)`
-/

namespace A313145.P4734352508748450330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n - A128834 n

end

end A313145.P4734352508748450330

namespace A313145

/-- `A313569(n)-A128834(n)` -/
def P4734352508748450330.Spec : Prop :=
  ∀ n, P4734352508748450330.a n = A313145 n

end A313145

/-! ## A313145.P12288711817349153192

`A313569(n)+A010892(n+2)`
-/

namespace A313145.P12288711817349153192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + A010892 (n + 2)

end

end A313145.P12288711817349153192

namespace A313145

/-- `A313569(n)+A010892(n+2)` -/
def P12288711817349153192.Spec : Prop :=
  ∀ n, P12288711817349153192.a n = A313145 n

end A313145

/-! ## A313145.P11831821615319862588

`abs(A008592(n)-A315453(n))`
-/

namespace A313145.P11831821615319862588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315453 n|

end

end A313145.P11831821615319862588

namespace A313145

/-- `abs(A008592(n)-A315453(n))` -/
def P11831821615319862588.Spec : Prop :=
  ∀ n, P11831821615319862588.a n = A313145 n

end A313145

/-! ## A313145.P1138861356058857779

`2*A008706(n)-A315453(n)`
-/

namespace A313145.P1138861356058857779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315453 n

end

end A313145.P1138861356058857779

namespace A313145

/-- `2*A008706(n)-A315453(n)` -/
def P1138861356058857779.Spec : Prop :=
  ∀ n, P1138861356058857779.a n = A313145 n

end A313145

/-! ## A313145.P6654669337936500625

`A008458(n)+A008574(n)-A315453(n)`
-/

namespace A313145.P6654669337936500625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315453 n)

end

end A313145.P6654669337936500625

namespace A313145

/-- `A008458(n)+A008574(n)-A315453(n)` -/
def P6654669337936500625.Spec : Prop :=
  ∀ n, P6654669337936500625.a n = A313145 n

end A313145

/-! ## A313145.P14303347352148661517

`A315453(n)-A005843(A315453(n)-A008706(n))`
-/

namespace A313145.P14303347352148661517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315453 n - A005843 (A315453 n - A008706 n).toNat

end

end A313145.P14303347352148661517

namespace A313145

/-- `A315453(n)-A005843(A315453(n)-A008706(n))` -/
def P14303347352148661517.Spec : Prop :=
  ∀ n, P14303347352148661517.a n = A313145 n

end A313145

/-! ## A313145.P17161626526618911917

`A310472(n)-A004396(n-A004525(n))`
-/

namespace A313145.P17161626526618911917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310472 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A313145.P17161626526618911917

namespace A313145

/-- `A310472(n)-A004396(n-A004525(n))` -/
def P17161626526618911917.Spec : Prop :=
  ∀ n, P17161626526618911917.a n = A313145 n

end A313145

/-! ## A313145.P10858114815496984853

`A313791(n)-A004396(A004525(n))`
-/

namespace A313145.P10858114815496984853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313791 n - A004396 (A004525 n).toNat

end

end A313145.P10858114815496984853

namespace A313145

/-- `A313791(n)-A004396(A004525(n))` -/
def P10858114815496984853.Spec : Prop :=
  ∀ n, P10858114815496984853.a n = A313145 n

end A313145

/-! ## A313145.P15125276223007920250

`A313781(n)-A004525(A004396(n))`
-/

namespace A313145.P15125276223007920250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n - A004525 (A004396 n).toNat

end

end A313145.P15125276223007920250

namespace A313145

/-- `A313781(n)-A004525(A004396(n))` -/
def P15125276223007920250.Spec : Prop :=
  ∀ n, P15125276223007920250.a n = A313145 n

end A313145

/-! ## A313145.P10581525155831211281

`A310524(n)-∑[A021913(n)]`
-/

namespace A313145.P10581525155831211281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310524 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313145.P10581525155831211281

namespace A313145

/-- `A310524(n)-∑[A021913(n)]` -/
def P10581525155831211281.Spec : Prop :=
  ∀ n, P10581525155831211281.a n = A313145 n

end A313145

/-! ## A313145.P11907209242393138498

`A310524(n)-Δ[A011848(n)]`
-/

namespace A313145.P11907209242393138498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310524 n - (f1 (n + 1) - f1 n)

end

end A313145.P11907209242393138498

namespace A313145

/-- `A310524(n)-Δ[A011848(n)]` -/
def P11907209242393138498.Spec : Prop :=
  ∀ n, P11907209242393138498.a n = A313145 n

end A313145

/-! ## A313145.P5750671732366108625

`A004525(n)+A310524(n)-n`
-/

namespace A313145.P5750671732366108625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310524 n - (n : ℤ))

end

end A313145.P5750671732366108625

namespace A313145

/-- `A004525(n)+A310524(n)-n` -/
def P5750671732366108625.Spec : Prop :=
  ∀ n, P5750671732366108625.a n = A313145 n

end A313145

/-! ## A313145.P14948547086680349548

`A005843(A008706(n))-A315453(n)`
-/

namespace A313145.P14948547086680349548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315453 n

end

end A313145.P14948547086680349548

namespace A313145

/-- `A005843(A008706(n))-A315453(n)` -/
def P14948547086680349548.Spec : Prop :=
  ∀ n, P14948547086680349548.a n = A313145 n

end A313145

/-!
# A313146: Coordination sequence Gal.6.373.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313146, there is no canonical definition to state claims against.
-/

/-! ## A313146.P958131746718290151

`A135042(n+1)-A008966(A091024(n+1))`
-/

namespace A313146.P958131746718290151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (n + 1) - A008966 (A091024 (n + 1)).toNat

end

end A313146.P958131746718290151

/-! ## A313146.P7496730864210096037

`A312125(n)+A001221(A299968(n))`
-/

namespace A313146.P7496730864210096037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312125 n + A001221 (A299968 n).toNat

end

end A313146.P7496730864210096037

/-! ## A313146.P13489009616365218149

`A352241(A277690(n))`
-/

namespace A313146.P13489009616365218149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352241 (A277690 n).toNat

end

end A313146.P13489009616365218149

/-! ## A313146.P10465993880714110225

`A131396(A153679(3*n+1))-n`
-/

namespace A313146.P10465993880714110225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131396 (A153679 (3 * n + 1)).toNat - (n : ℤ)

end

end A313146.P10465993880714110225

/-! ## A313146.P16338712356203463793

`A301697(n)-A001222(A007581(n))`
-/

namespace A313146.P16338712356203463793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A001222 (A007581 n).toNat

end

end A313146.P16338712356203463793

/-!
# A313147: Coordination sequence Gal.4.63.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313147, the canonical program `A313147.P2022922053315539050` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313147 has offset 0).

The definition of A313147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313147.P2022922053315539050

`A310411(n)-A238470(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313147

/-- `A310411(n)-A238470(n)` -/
def P2022922053315539050.Spec : Prop :=
  ∀ n, P2022922053315539050.a n = A313147 n

theorem P2022922053315539050.correct : P2022922053315539050.Spec := by
  intro n
  simp only [A313147]

end A313147

/-! ## A313147.P729177829261974025

`A314954(n)-A238469(n)`
-/

namespace A313147.P729177829261974025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314954 n - A238469 n

end

end A313147.P729177829261974025

namespace A313147

/-- `A314954(n)-A238469(n)` -/
def P729177829261974025.Spec : Prop :=
  ∀ n, P729177829261974025.a n = A313147 n

end A313147

/-! ## A313147.P5225559657618443969

`A312974(n)+Δ[A011860(n)]`
-/

namespace A313147.P5225559657618443969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n + (f1 (n + 1) - f1 n)

end

end A313147.P5225559657618443969

namespace A313147

/-- `A312974(n)+Δ[A011860(n)]` -/
def P5225559657618443969.Spec : Prop :=
  ∀ n, P5225559657618443969.a n = A313147 n

end A313147

/-! ## A313147.P16889109538840030056

`A313613(n)+A238468(2*n)`
-/

namespace A313147.P16889109538840030056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n + A238468 (2 * n)

end

end A313147.P16889109538840030056

namespace A313147

/-- `A313613(n)+A238468(2*n)` -/
def P16889109538840030056.Spec : Prop :=
  ∀ n, P16889109538840030056.a n = A313147 n

end A313147

/-! ## A313147.P7509035418096333557

`A314954(n)-A238470(2*n)`
-/

namespace A313147.P7509035418096333557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314954 n - A238470 (2 * n)

end

end A313147.P7509035418096333557

namespace A313147

/-- `A314954(n)-A238470(2*n)` -/
def P7509035418096333557.Spec : Prop :=
  ∀ n, P7509035418096333557.a n = A313147 n

end A313147

/-! ## A313147.P2410431632656091775

`A312680(n)+A238470(n)`
-/

namespace A313147.P2410431632656091775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312680 n + A238470 n

end

end A313147.P2410431632656091775

namespace A313147

/-- `A312680(n)+A238470(n)` -/
def P2410431632656091775.Spec : Prop :=
  ∀ n, P2410431632656091775.a n = A313147 n

theorem P2410431632656091775.correct : P2410431632656091775.Spec := by
  intro n
  simp only [A313147, Nat.add_sub_cancel, A313147.P2410431632656091775.a, A313147.P2022922053315539050.a, A238470, A238470.P1028853406756724010.a, A310411, A310411.P12923110571559906962.a, A312680, A312680.P9217351570199122673.a, A008486, A008486.P11623131867527198563.a, A060464, A060464.P1238324434526818081.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313147

/-! ## A313147.P12103324649145201406

`A313289(n)-Δ[A011860(n)]`
-/

namespace A313147.P12103324649145201406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313289 n - (f1 (n + 1) - f1 n)

end

end A313147.P12103324649145201406

namespace A313147

/-- `A313289(n)-Δ[A011860(n)]` -/
def P12103324649145201406.Spec : Prop :=
  ∀ n, P12103324649145201406.a n = A313147 n

theorem P12103324649145201406.correct : P12103324649145201406.Spec := by
  intro n
  simp only [A313147, Nat.add_sub_cancel, A313147.P12103324649145201406.f1, A313147.P12103324649145201406.a, A313147.P2022922053315539050.a, A011860, A011860.P10402414017759076193.a, A238470, A238470.P1028853406756724010.a, A310411, A310411.P12923110571559906962.a, A313289, A313289.P4085022440508008481.f1, A313289.P4085022440508008481.a, A008486, A008486.P11623131867527198563.a, A060464, A060464.P1238324434526818081.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313147

/-! ## A313147.P2810751312859789095

`abs(A008592(n)-A315452(n))`
-/

namespace A313147.P2810751312859789095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315452 n|

end

end A313147.P2810751312859789095

namespace A313147

/-- `abs(A008592(n)-A315452(n))` -/
def P2810751312859789095.Spec : Prop :=
  ∀ n, P2810751312859789095.a n = A313147 n

end A313147

/-! ## A313147.P13525468511054711671

`2*A008706(n)-A315452(n)`
-/

namespace A313147.P13525468511054711671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315452 n

end

end A313147.P13525468511054711671

namespace A313147

/-- `2*A008706(n)-A315452(n)` -/
def P13525468511054711671.Spec : Prop :=
  ∀ n, P13525468511054711671.a n = A313147 n

end A313147

/-! ## A313147.P11489905521869430109

`A008458(n)+A008574(n)-A315452(n)`
-/

namespace A313147.P11489905521869430109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315452 n)

end

end A313147.P11489905521869430109

namespace A313147

/-- `A008458(n)+A008574(n)-A315452(n)` -/
def P11489905521869430109.Spec : Prop :=
  ∀ n, P11489905521869430109.a n = A313147 n

end A313147

/-! ## A313147.P268088994589219615

`A315452(n)-A005843(A315452(n)-A008706(n))`
-/

namespace A313147.P268088994589219615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315452 n - A005843 (A315452 n - A008706 n).toNat

end

end A313147.P268088994589219615

namespace A313147

/-- `A315452(n)-A005843(A315452(n)-A008706(n))` -/
def P268088994589219615.Spec : Prop :=
  ∀ n, P268088994589219615.a n = A313147 n

end A313147

/-! ## A313147.P18024057060827375824

`A005843(A008706(n))-A315452(n)`
-/

namespace A313147.P18024057060827375824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315452 n

end

end A313147.P18024057060827375824

namespace A313147

/-- `A005843(A008706(n))-A315452(n)` -/
def P18024057060827375824.Spec : Prop :=
  ∀ n, P18024057060827375824.a n = A313147 n

end A313147

/-!
# A313148: Coordination sequence Gal.6.251.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313148, the canonical program `A313148.P2982835423397816264` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313148 has offset 0).

The definition of A313148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313148.P4922641733722662524

`abs(A008592(n)-A315450(n))`
-/

namespace A313148.P4922641733722662524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315450 n|

end

end A313148.P4922641733722662524

namespace A313148

/-- `abs(A008592(n)-A315450(n))` -/
def P4922641733722662524.Spec : Prop :=
  ∀ n, P4922641733722662524.a n = A313148 n

end A313148

/-! ## A313148.P7974971044170001268

`2*A008706(n)-A315450(n)`
-/

namespace A313148.P7974971044170001268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315450 n

end

end A313148.P7974971044170001268

namespace A313148

/-- `2*A008706(n)-A315450(n)` -/
def P7974971044170001268.Spec : Prop :=
  ∀ n, P7974971044170001268.a n = A313148 n

end A313148

/-! ## A313148.P2970030625030937241

`A135042(2*n+1)-A315450(n)`
-/

namespace A313148.P2970030625030937241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315450 n

end

end A313148.P2970030625030937241

namespace A313148

/-- `A135042(2*n+1)-A315450(n)` -/
def P2970030625030937241.Spec : Prop :=
  ∀ n, P2970030625030937241.a n = A313148 n

end A313148

/-! ## A313148.P8030831158504838237

`A184418(A008574(n))-A315450(n)`
-/

namespace A313148.P8030831158504838237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315450 n

end

end A313148.P8030831158504838237

namespace A313148

/-- `A184418(A008574(n))-A315450(n)` -/
def P8030831158504838237.Spec : Prop :=
  ∀ n, P8030831158504838237.a n = A313148 n

end A313148

/-! ## A313148.P18134039519513635164

`A008458(n)+A008574(n)-A315450(n)`
-/

namespace A313148.P18134039519513635164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315450 n)

end

end A313148.P18134039519513635164

namespace A313148

/-- `A008458(n)+A008574(n)-A315450(n)` -/
def P18134039519513635164.Spec : Prop :=
  ∀ n, P18134039519513635164.a n = A313148 n

end A313148

/-! ## A313148.P17010038751861315981

`(A312668(n)+A310423(n))/2`
-/

namespace A313148.P17010038751861315981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312668 n + A310423 n : ℚ) / 2

end

end A313148.P17010038751861315981

namespace A313148

/-- `(A312668(n)+A310423(n))/2` -/
def P17010038751861315981.Spec : Prop :=
  ∀ n, P17010038751861315981.a n = (A313148 n : ℚ)

end A313148

/-! ## A313148.P2982835423397816264

`A312668(n)+A001281(A310423(n)-A312668(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A313148

/-- `A312668(n)+A001281(A310423(n)-A312668(n))` -/
def P2982835423397816264.Spec : Prop :=
  ∀ n, P2982835423397816264.a n = A313148 n

theorem P2982835423397816264.correct : P2982835423397816264.Spec := by
  intro n
  simp only [A313148]

end A313148

/-! ## A313148.P3613152509623714101

`A005843(A008706(n))-A315450(n)`
-/

namespace A313148.P3613152509623714101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315450 n

end

end A313148.P3613152509623714101

namespace A313148

/-- `A005843(A008706(n))-A315450(n)` -/
def P3613152509623714101.Spec : Prop :=
  ∀ n, P3613152509623714101.a n = A313148 n

end A313148

/-! ## A313148.P6271452711421540966

`A065502(A008458(n))-A315450(n)`
-/

namespace A313148.P6271452711421540966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315450 n

end

end A313148.P6271452711421540966

namespace A313148

/-- `A065502(A008458(n))-A315450(n)` -/
def P6271452711421540966.Spec : Prop :=
  ∀ n, P6271452711421540966.a n = A313148 n

end A313148

/-! ## A313148.P6271847452277003574

`A001281(A312668(n)+A310423(n))`
-/

namespace A313148.P6271847452277003574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312668 n + A310423 n).toNat

end

end A313148.P6271847452277003574

namespace A313148

/-- `A001281(A312668(n)+A310423(n))` -/
def P6271847452277003574.Spec : Prop :=
  ∀ n, P6271847452277003574.a n = A313148 n

end A313148

/-! ## A313148.P14854294855984887483

`A233583(A017281(n))-A315450(n)`
-/

namespace A313148.P14854294855984887483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315450 n

end

end A313148.P14854294855984887483

namespace A313148

/-- `A233583(A017281(n))-A315450(n)` -/
def P14854294855984887483.Spec : Prop :=
  ∀ n, P14854294855984887483.a n = A313148 n

end A313148

/-!
# A313149: Coordination sequence Gal.6.570.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313149, there is no canonical definition to state claims against.
-/

/-! ## A313149.P12151749670156649442

`A313143(n)+A304571(A350080(n))`
-/

namespace A313149.P12151749670156649442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313143 n + A304571 (A350080 n).toNat

end

end A313149.P12151749670156649442

/-!
# A313150: Coordination sequence Gal.6.382.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313150, there is no canonical definition to state claims against.
-/

/-! ## A313150.P15904614016026162711

`A008683(A047062(n+1))+5*n`
-/

namespace A313150.P15904614016026162711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A047062 (n + 1)).toNat + (5 * n : ℤ)

end

end A313150.P15904614016026162711

/-! ## A313150.P10907915907364919516

`A313146(n)+A267841(A000108(n))`
-/

namespace A313150.P10907915907364919516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313146 n + A267841 (A000108 n).toNat

end

end A313150.P10907915907364919516

/-! ## A313150.P658867238575898582

`A313146(n)+A010060(A241466(n+1))`
-/

namespace A313150.P658867238575898582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313146 n + A010060 (A241466 (n + 1)).toNat

end

end A313150.P658867238575898582

/-! ## A313150.P12466262151745595971

`A301678(n)-A361460(A066973(n+1))`
-/

namespace A313150.P12466262151745595971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A361460 (A066973 (n + 1)).toNat

end

end A313150.P12466262151745595971

/-! ## A313150.P17594505601698353050

`A301697(n)-A162642(A027612(n+1))`
-/

namespace A313150.P17594505601698353050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A162642 (A027612 (n + 1)).toNat

end

end A313150.P17594505601698353050

/-!
# A313151: Coordination sequence Gal.6.382.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313151, there is no canonical definition to state claims against.
-/

/-! ## A313151.P1620485488559539457

`A092982(A310738(2*n))`
-/

namespace A313151.P1620485488559539457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (A310738 (2 * n)).toNat

end

end A313151.P1620485488559539457

/-! ## A313151.P6200398724539443601

`ceil(A313288(n)-atan(A287648(n+1)))`
-/

namespace A313151.P6200398724539443601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A313288 n : ℝ) - Real.arctan (A287648 (n + 1) : ℝ)⌉

end

end A313151.P6200398724539443601

/-! ## A313151.P3809320484780184674

`A313642(n)+A014867(A034472(n))`
-/

namespace A313151.P3809320484780184674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313642 n + A014867 (A034472 n).toNat

end

end A313151.P3809320484780184674

/-! ## A313151.P2438208143122081982

`A313643(n)+A014867(A034472(n))`
-/

namespace A313151.P2438208143122081982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313643 n + A014867 (A034472 n).toNat

end

end A313151.P2438208143122081982

/-! ## A313151.P6135718256151711516

`A313940(n)-A001221(A047009(n))`
-/

namespace A313151.P6135718256151711516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313940 n - A001221 (A047009 n).toNat

end

end A313151.P6135718256151711516

/-!
# A313152: Coordination sequence Gal.5.112.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313152, the canonical program `A313152.P10776798816682064911` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313152 has offset 0).

The definition of A313152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313152.P9780026532344927768

`A008706(n)-A046978(n)`
-/

namespace A313152.P9780026532344927768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A046978 n

end

end A313152.P9780026532344927768

namespace A313152

/-- `A008706(n)-A046978(n)` -/
def P9780026532344927768.Spec : Prop :=
  ∀ n, P9780026532344927768.a n = A313152 n

end A313152

/-! ## A313152.P10776798816682064911

`A311625(n)+Δ[A011848(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313152

/-- `A311625(n)+Δ[A011848(n)]` -/
def P10776798816682064911.Spec : Prop :=
  ∀ n, P10776798816682064911.a n = A313152 n

theorem P10776798816682064911.correct : P10776798816682064911.Spec := by
  intro n
  simp only [A313152]

end A313152

/-! ## A313152.P5877980854584701506

`A310530(n)-Δ[A011848(n)]`
-/

namespace A313152.P5877980854584701506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310530 n - (f1 (n + 1) - f1 n)

end

end A313152.P5877980854584701506

namespace A313152

/-- `A310530(n)-Δ[A011848(n)]` -/
def P5877980854584701506.Spec : Prop :=
  ∀ n, P5877980854584701506.a n = A313152 n

end A313152

/-! ## A313152.P967517762382142786

`A310068(n)+A047299(n+1)`
-/

namespace A313152.P967517762382142786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310068 n + A047299 (n + 1)

end

end A313152.P967517762382142786

namespace A313152

/-- `A310068(n)+A047299(n+1)` -/
def P967517762382142786.Spec : Prop :=
  ∀ n, P967517762382142786.a n = A313152 n

end A313152

/-! ## A313152.P16533976534832684684

`A046980(n+2)+A008706(n)`
-/

namespace A313152.P16533976534832684684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (n + 2) + A008706 n

end

end A313152.P16533976534832684684

namespace A313152

/-- `A046980(n+2)+A008706(n)` -/
def P16533976534832684684.Spec : Prop :=
  ∀ n, P16533976534832684684.a n = A313152 n

end A313152

/-! ## A313152.P15508802224728886676

`A310530(n)-A004524(n+1)`
-/

namespace A313152.P15508802224728886676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310530 n - A004524 (n + 1)

end

end A313152.P15508802224728886676

namespace A313152

/-- `A310530(n)-A004524(n+1)` -/
def P15508802224728886676.Spec : Prop :=
  ∀ n, P15508802224728886676.a n = A313152 n

end A313152

/-! ## A313152.P373976238849464806

`A046978(n+4)+A008706(n)`
-/

namespace A313152.P373976238849464806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (n + 4) + A008706 n

end

end A313152.P373976238849464806

namespace A313152

/-- `A046978(n+4)+A008706(n)` -/
def P373976238849464806.Spec : Prop :=
  ∀ n, P373976238849464806.a n = A313152 n

end A313152

/-! ## A313152.P2389330589248366446

`A311625(n)+A201629(n)/2`
-/

namespace A313152.P2389330589248366446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311625 n : ℚ) + (A201629 n : ℚ) / 2

end

end A313152.P2389330589248366446

namespace A313152

/-- `A311625(n)+A201629(n)/2` -/
def P2389330589248366446.Spec : Prop :=
  ∀ n, P2389330589248366446.a n = (A313152 n : ℚ)

end A313152

/-! ## A313152.P16347210614341748790

`A310530(n)-A201629(n)/2`
-/

namespace A313152.P16347210614341748790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310530 n : ℚ) - (A201629 n : ℚ) / 2

end

end A313152.P16347210614341748790

namespace A313152

/-- `A310530(n)-A201629(n)/2` -/
def P16347210614341748790.Spec : Prop :=
  ∀ n, P16347210614341748790.a n = (A313152 n : ℚ)

end A313152

/-! ## A313152.P9234721962177180747

`A163805(A004525(n))+5*n`
-/

namespace A313152.P9234721962177180747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (A004525 n).toNat + (5 * n : ℤ)

end

end A313152.P9234721962177180747

namespace A313152

/-- `A163805(A004525(n))+5*n` -/
def P9234721962177180747.Spec : Prop :=
  ∀ n, P9234721962177180747.a n = A313152 n

end A313152

/-! ## A313152.P7020317711804017053

`A008458(n)-(A046978(n)+n)`
-/

namespace A313152.P7020317711804017053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A046978 n + (n : ℤ))

end

end A313152.P7020317711804017053

namespace A313152

/-- `A008458(n)-(A046978(n)+n)` -/
def P7020317711804017053.Spec : Prop :=
  ∀ n, P7020317711804017053.a n = A313152 n

end A313152

/-! ## A313152.P11420718086146663568

`A008574(n)+n-A046978(n)`
-/

namespace A313152.P11420718086146663568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A046978 n)

end

end A313152.P11420718086146663568

namespace A313152

/-- `A008574(n)+n-A046978(n)` -/
def P11420718086146663568.Spec : Prop :=
  ∀ n, P11420718086146663568.a n = A313152 n

end A313152

/-! ## A313152.P14939412426981308613

`A004525(n)+A310530(n)-n`
-/

namespace A313152.P14939412426981308613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310530 n - (n : ℤ))

end

end A313152.P14939412426981308613

namespace A313152

/-- `A004525(n)+A310530(n)-n` -/
def P14939412426981308613.Spec : Prop :=
  ∀ n, P14939412426981308613.a n = A313152 n

end A313152

/-! ## A313152.P14838290685723655955

`record[A257088(n)]+n-A046978(n)`
-/

namespace A313152.P14838290685723655955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n : ℤ) - A046978 n)

end

end A313152.P14838290685723655955

namespace A313152

/-- `record[A257088(n)]+n-A046978(n)` -/
def P14838290685723655955.Spec : Prop :=
  ∀ n, P14838290685723655955.a n = A313152 n

end A313152

/-! ## A313152.P14467218956661475375

`2*n+A008486(n)-A046978(n)`
-/

namespace A313152.P14467218956661475375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A008486 n - A046978 n)

end

end A313152.P14467218956661475375

namespace A313152

/-- `2*n+A008486(n)-A046978(n)` -/
def P14467218956661475375.Spec : Prop :=
  ∀ n, P14467218956661475375.a n = A313152 n

end A313152

/-! ## A313152.P5328995406576059048

`A257088(2*n)+n-A046978(n)`
-/

namespace A313152.P5328995406576059048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (2 * n) + ((n : ℤ) - A046978 n)

end

end A313152.P5328995406576059048

namespace A313152

/-- `A257088(2*n)+n-A046978(n)` -/
def P5328995406576059048.Spec : Prop :=
  ∀ n, P5328995406576059048.a n = A313152 n

end A313152

/-! ## A313152.P12951386927172439478

`A301293(n)+A201629(A004525(n))`
-/

namespace A313152.P12951386927172439478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A201629 (A004525 n).toNat

end

end A313152.P12951386927172439478

namespace A313152

/-- `A301293(n)+A201629(A004525(n))` -/
def P12951386927172439478.Spec : Prop :=
  ∀ n, P12951386927172439478.a n = A313152 n

end A313152

/-! ## A313152.P10285368477773638723

`A311501(n)+n-A004525(A004525(n))`
-/

namespace A313152.P10285368477773638723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311501 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A313152.P10285368477773638723

namespace A313152

/-- `A311501(n)+n-A004525(A004525(n))` -/
def P10285368477773638723.Spec : Prop :=
  ∀ n, P10285368477773638723.a n = A313152 n

end A313152

/-! ## A313152.P17622123007458304196

`A312205(n)+A004525(n-A004525(n))`
-/

namespace A313152.P17622123007458304196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A313152.P17622123007458304196

namespace A313152

/-- `A312205(n)+A004525(n-A004525(n))` -/
def P17622123007458304196.Spec : Prop :=
  ∀ n, P17622123007458304196.a n = A313152 n

end A313152

/-! ## A313152.P16444562492835365622

`A008574(n)+n-A330025(A001068(n))`
-/

namespace A313152.P16444562492835365622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A330025 (A001068 n).toNat)

end

end A313152.P16444562492835365622

namespace A313152

/-- `A008574(n)+n-A330025(A001068(n))` -/
def P16444562492835365622.Spec : Prop :=
  ∀ n, P16444562492835365622.a n = A313152 n

end A313152

/-!
# A313153: Coordination sequence Gal.5.113.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313153, the canonical program `A313153.P1548300830717326996` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313153 has offset 0).

The definition of A313153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313153.P1548300830717326996

`abs(A008592(n)-A315446(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313153

/-- `abs(A008592(n)-A315446(n))` -/
def P1548300830717326996.Spec : Prop :=
  ∀ n, P1548300830717326996.a n = A313153 n

theorem P1548300830717326996.correct : P1548300830717326996.Spec := by
  intro n
  simp only [A313153]

end A313153

/-! ## A313153.P9032749509016347786

`2*A008706(n)-A315446(n)`
-/

namespace A313153.P9032749509016347786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315446 n

end

end A313153.P9032749509016347786

namespace A313153

/-- `2*A008706(n)-A315446(n)` -/
def P9032749509016347786.Spec : Prop :=
  ∀ n, P9032749509016347786.a n = A313153 n

end A313153

/-! ## A313153.P6773316202338464749

`A184418(A008574(n))-A315446(n)`
-/

namespace A313153.P6773316202338464749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315446 n

end

end A313153.P6773316202338464749

namespace A313153

/-- `A184418(A008574(n))-A315446(n)` -/
def P6773316202338464749.Spec : Prop :=
  ∀ n, P6773316202338464749.a n = A313153 n

end A313153

/-! ## A313153.P3327542620360368583

`A008458(n)+A008574(n)-A315446(n)`
-/

namespace A313153.P3327542620360368583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315446 n)

end

end A313153.P3327542620360368583

namespace A313153

/-- `A008458(n)+A008574(n)-A315446(n)` -/
def P3327542620360368583.Spec : Prop :=
  ∀ n, P3327542620360368583.a n = A313153 n

end A313153

/-! ## A313153.P8421314886561517857

`∑{d}[A008592(n)-A315446(n), A000010(#)]`
-/

namespace A313153.P8421314886561517857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315446 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313153.P8421314886561517857

namespace A313153

/-- `∑{d}[A008592(n)-A315446(n), A000010(#)]` -/
def P8421314886561517857.Spec : Prop :=
  ∀ n, P8421314886561517857.a n = A313153 n

end A313153

/-! ## A313153.P1976556207599370778

`A313293(n)-Δ[A011862(n)]`
-/

namespace A313153.P1976556207599370778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313293 n - (f1 (n + 1) - f1 n)

end

end A313153.P1976556207599370778

namespace A313153

/-- `A313293(n)-Δ[A011862(n)]` -/
def P1976556207599370778.Spec : Prop :=
  ∀ n, P1976556207599370778.a n = A313153 n

end A313153

/-! ## A313153.P10674433605385103854

`A313293(n)-A002264(A004396(n)+1)`
-/

namespace A313153.P10674433605385103854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313293 n - A002264 (A004396 n + 1).toNat

end

end A313153.P10674433605385103854

namespace A313153

/-- `A313293(n)-A002264(A004396(n)+1)` -/
def P10674433605385103854.Spec : Prop :=
  ∀ n, P10674433605385103854.a n = A313153 n

end A313153

/-! ## A313153.P17024689072027109692

`(A311633(n)+A310531(n))/2`
-/

namespace A313153.P17024689072027109692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311633 n + A310531 n : ℚ) / 2

end

end A313153.P17024689072027109692

namespace A313153

/-- `(A311633(n)+A310531(n))/2` -/
def P17024689072027109692.Spec : Prop :=
  ∀ n, P17024689072027109692.a n = (A313153 n : ℚ)

end A313153

/-! ## A313153.P16199555832939203574

`A311633(n)+A004525(A310531(n)-A311633(n))`
-/

namespace A313153.P16199555832939203574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311633 n + A004525 (A310531 n - A311633 n).toNat

end

end A313153.P16199555832939203574

namespace A313153

/-- `A311633(n)+A004525(A310531(n)-A311633(n))` -/
def P16199555832939203574.Spec : Prop :=
  ∀ n, P16199555832939203574.a n = A313153 n

end A313153

/-! ## A313153.P6749308437400415765

`A005843(A008706(n))-A315446(n)`
-/

namespace A313153.P6749308437400415765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315446 n

end

end A313153.P6749308437400415765

namespace A313153

/-- `A005843(A008706(n))-A315446(n)` -/
def P6749308437400415765.Spec : Prop :=
  ∀ n, P6749308437400415765.a n = A313153 n

end A313153

/-! ## A313153.P1393020626745467721

`A313293(n)-A033183(A004771(n))`
-/

namespace A313153.P1393020626745467721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313293 n - A033183 (A004771 n).toNat

end

end A313153.P1393020626745467721

namespace A313153

/-- `A313293(n)-A033183(A004771(n))` -/
def P1393020626745467721.Spec : Prop :=
  ∀ n, P1393020626745467721.a n = A313153 n

end A313153

/-! ## A313153.P12949128128509206061

`A004525(A311633(n)+A310531(n))`
-/

namespace A313153.P12949128128509206061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311633 n + A310531 n).toNat

end

end A313153.P12949128128509206061

namespace A313153

/-- `A004525(A311633(n)+A310531(n))` -/
def P12949128128509206061.Spec : Prop :=
  ∀ n, P12949128128509206061.a n = A313153 n

end A313153

/-! ## A313153.P11723450865137886707

`A312160(n)+A033183(A004771(2*n))`
-/

namespace A313153.P11723450865137886707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n + A033183 (A004771 (2 * n)).toNat

end

end A313153.P11723450865137886707

namespace A313153

/-- `A312160(n)+A033183(A004771(2*n))` -/
def P11723450865137886707.Spec : Prop :=
  ∀ n, P11723450865137886707.a n = A313153 n

end A313153

/-! ## A313153.P10502873508070328838

`A233583(A017281(n))-A315446(n)`
-/

namespace A313153.P10502873508070328838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315446 n

end

end A313153.P10502873508070328838

namespace A313153

/-- `A233583(A017281(n))-A315446(n)` -/
def P10502873508070328838.Spec : Prop :=
  ∀ n, P10502873508070328838.a n = A313153 n

end A313153

/-!
# A313154: Coordination sequence Gal.6.252.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313154, the canonical program `A313154.P7910125893097236437` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313154 has offset 0).

The definition of A313154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313154.P7014653038707482559

`A314111(n)-A253262(n)`
-/

namespace A313154.P7014653038707482559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314111 n - A253262 n

end

end A313154.P7014653038707482559

namespace A313154

/-- `A314111(n)-A253262(n)` -/
def P7014653038707482559.Spec : Prop :=
  ∀ n, P7014653038707482559.a n = A313154 n

end A313154

/-! ## A313154.P7843702123120921499

`abs(A008592(n)-A315445(n))`
-/

namespace A313154.P7843702123120921499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315445 n|

end

end A313154.P7843702123120921499

namespace A313154

/-- `abs(A008592(n)-A315445(n))` -/
def P7843702123120921499.Spec : Prop :=
  ∀ n, P7843702123120921499.a n = A313154 n

end A313154

/-! ## A313154.P7910125893097236437

`A312162(n)+Δ[A011858(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313154

/-- `A312162(n)+Δ[A011858(n)]` -/
def P7910125893097236437.Spec : Prop :=
  ∀ n, P7910125893097236437.a n = A313154 n

theorem P7910125893097236437.correct : P7910125893097236437.Spec := by
  intro n
  simp only [A313154]

end A313154

/-! ## A313154.P7301972016001217993

`A312162(n)+A057354(n+1)`
-/

namespace A313154.P7301972016001217993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312162 n + A057354 (n + 1)

end

end A313154.P7301972016001217993

namespace A313154

/-- `A312162(n)+A057354(n+1)` -/
def P7301972016001217993.Spec : Prop :=
  ∀ n, P7301972016001217993.a n = A313154 n

end A313154

/-! ## A313154.P9828647044657783733

`2*A008706(n)-A315445(n)`
-/

namespace A313154.P9828647044657783733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315445 n

end

end A313154.P9828647044657783733

namespace A313154

/-- `2*A008706(n)-A315445(n)` -/
def P9828647044657783733.Spec : Prop :=
  ∀ n, P9828647044657783733.a n = A313154 n

end A313154

/-! ## A313154.P9629077724529579218

`A311440(n)+n-A330025(n)`
-/

namespace A313154.P9629077724529579218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + ((n : ℤ) - A330025 n)

end

end A313154.P9629077724529579218

namespace A313154

/-- `A311440(n)+n-A330025(n)` -/
def P9629077724529579218.Spec : Prop :=
  ∀ n, P9629077724529579218.a n = A313154 n

end A313154

/-! ## A313154.P3641235223313024653

`A135042(2*n+1)-A315445(n)`
-/

namespace A313154.P3641235223313024653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315445 n

end

end A313154.P3641235223313024653

namespace A313154

/-- `A135042(2*n+1)-A315445(n)` -/
def P3641235223313024653.Spec : Prop :=
  ∀ n, P3641235223313024653.a n = A313154 n

end A313154

/-! ## A313154.P11956283784868859855

`A008458(n)+A008574(n)-A315445(n)`
-/

namespace A313154.P11956283784868859855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315445 n)

end

end A313154.P11956283784868859855

namespace A313154

/-- `A008458(n)+A008574(n)-A315445(n)` -/
def P11956283784868859855.Spec : Prop :=
  ∀ n, P11956283784868859855.a n = A313154 n

end A313154

/-! ## A313154.P845091497080752115

`A313752(n)-A330025(A330025(n)+n)`
-/

namespace A313154.P845091497080752115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313752 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A313154.P845091497080752115

namespace A313154

/-- `A313752(n)-A330025(A330025(n)+n)` -/
def P845091497080752115.Spec : Prop :=
  ∀ n, P845091497080752115.a n = A313154 n

end A313154

/-! ## A313154.P7440106842750382860

`∑{d}[A008592(n)-A315445(n), A000010(#)]`
-/

namespace A313154.P7440106842750382860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313154.P7440106842750382860

namespace A313154

/-- `∑{d}[A008592(n)-A315445(n), A000010(#)]` -/
def P7440106842750382860.Spec : Prop :=
  ∀ n, P7440106842750382860.a n = A313154 n

end A313154

/-! ## A313154.P11405373133428137805

`A313782(n)-A330025(n)`
-/

namespace A313154.P11405373133428137805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313782 n - A330025 n

end

end A313154.P11405373133428137805

namespace A313154

/-- `A313782(n)-A330025(n)` -/
def P11405373133428137805.Spec : Prop :=
  ∀ n, P11405373133428137805.a n = A313154 n

theorem P11405373133428137805.correct : P11405373133428137805.Spec := by
  intro n
  simp only [A313154, Nat.add_sub_cancel, A313154.P11405373133428137805.a, A313154.P7910125893097236437.f1, A313154.P7910125893097236437.a, A011858, A011858.P16234308487928340219.a, A312162, A312162.P8460047677510331873.a, A313782, A313782.P12193786850322098717.a, A330025, A330025.P16976327817596103196.a, A008574, A008574.P1300280032690682112.a, A011558, A011558.P14291727921269463220.a, A047263, A047263.P10177617567604490545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A313154

/-! ## A313154.P1377459978447650714

`A315481(n)-2*A330025(n)`
-/

namespace A313154.P1377459978447650714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315481 n - 2 * A330025 n

end

end A313154.P1377459978447650714

namespace A313154

/-- `A315481(n)-2*A330025(n)` -/
def P1377459978447650714.Spec : Prop :=
  ∀ n, P1377459978447650714.a n = A313154 n

theorem P1377459978447650714.correct : P1377459978447650714.Spec := by
  intro n
  simp only [A313154, Nat.add_sub_cancel, A313154.P1377459978447650714.a, A313154.P7910125893097236437.f1, A313154.P7910125893097236437.a, A011858, A011858.P16234308487928340219.a, A312162, A312162.P8460047677510331873.a, A315481, A315481.P74549118950222558.a, A330025, A330025.P16976327817596103196.a, A008574, A008574.P1300280032690682112.a, A011558, A011558.P14291727921269463220.a, A047263, A047263.P10177617567604490545.a, A313782, A313782.P12193786850322098717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A313154

/-! ## A313154.P6442547871765049317

`A005843(A008706(n))-A315445(n)`
-/

namespace A313154.P6442547871765049317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315445 n

end

end A313154.P6442547871765049317

namespace A313154

/-- `A005843(A008706(n))-A315445(n)` -/
def P6442547871765049317.Spec : Prop :=
  ∀ n, P6442547871765049317.a n = A313154 n

end A313154

/-! ## A313154.P1737266876448354546

`A312162(n)+A008676(A016777(2*n))`
-/

namespace A313154.P1737266876448354546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312162 n + A008676 (A016777 (2 * n)).toNat

end

end A313154.P1737266876448354546

namespace A313154

/-- `A312162(n)+A008676(A016777(2*n))` -/
def P1737266876448354546.Spec : Prop :=
  ∀ n, P1737266876448354546.a n = A313154 n

end A313154

/-!
# A313155: Coordination sequence Gal.6.253.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313155, the canonical program `A313155.P12197807562961453067` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313155 has offset 0).

The definition of A313155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313155.P2795282653711236890

`abs(A008592(n)-A315444(n))`
-/

namespace A313155.P2795282653711236890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315444 n|

end

end A313155.P2795282653711236890

namespace A313155

/-- `abs(A008592(n)-A315444(n))` -/
def P2795282653711236890.Spec : Prop :=
  ∀ n, P2795282653711236890.a n = A313155 n

end A313155

/-! ## A313155.P8042205882318207165

`2*A008706(n)-A315444(n)`
-/

namespace A313155.P8042205882318207165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315444 n

end

end A313155.P8042205882318207165

namespace A313155

/-- `2*A008706(n)-A315444(n)` -/
def P8042205882318207165.Spec : Prop :=
  ∀ n, P8042205882318207165.a n = A313155 n

end A313155

/-! ## A313155.P12197807562961453067

`2*A313118(n)-A313031(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A313155

/-- `2*A313118(n)-A313031(n)` -/
def P12197807562961453067.Spec : Prop :=
  ∀ n, P12197807562961453067.a n = A313155 n

theorem P12197807562961453067.correct : P12197807562961453067.Spec := by
  intro n
  simp only [A313155]

end A313155

/-! ## A313155.P15899433385605133213

`A135042(2*n+1)-A315444(n)`
-/

namespace A313155.P15899433385605133213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315444 n

end

end A313155.P15899433385605133213

namespace A313155

/-- `A135042(2*n+1)-A315444(n)` -/
def P15899433385605133213.Spec : Prop :=
  ∀ n, P15899433385605133213.a n = A313155 n

end A313155

/-! ## A313155.P14513756784595755802

`A008458(n)+A008574(n)-A315444(n)`
-/

namespace A313155.P14513756784595755802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315444 n)

end

end A313155.P14513756784595755802

namespace A313155

/-- `A008458(n)+A008574(n)-A315444(n)` -/
def P14513756784595755802.Spec : Prop :=
  ∀ n, P14513756784595755802.a n = A313155 n

end A313155

/-! ## A313155.P15591943768571824711

`A313031(n)+A005843(A313118(n)-A313031(n))`
-/

namespace A313155.P15591943768571824711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313031 n + A005843 (A313118 n - A313031 n).toNat

end

end A313155.P15591943768571824711

namespace A313155

/-- `A313031(n)+A005843(A313118(n)-A313031(n))` -/
def P15591943768571824711.Spec : Prop :=
  ∀ n, P15591943768571824711.a n = A313155 n

end A313155

/-! ## A313155.P4782213631067305579

`2*A313802(n)-A315498(n)`
-/

namespace A313155.P4782213631067305579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313802 n - A315498 n

end

end A313155.P4782213631067305579

namespace A313155

/-- `2*A313802(n)-A315498(n)` -/
def P4782213631067305579.Spec : Prop :=
  ∀ n, P4782213631067305579.a n = A313155 n

end A313155

/-! ## A313155.P17008874926225146418

`A315498(n)-A005843(A315498(n)-A313802(n))`
-/

namespace A313155.P17008874926225146418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315498 n - A005843 (A315498 n - A313802 n).toNat

end

end A313155.P17008874926225146418

namespace A313155

/-- `A315498(n)-A005843(A315498(n)-A313802(n))` -/
def P17008874926225146418.Spec : Prop :=
  ∀ n, P17008874926225146418.a n = A313155 n

end A313155

/-! ## A313155.P10490263885881496515

`A005843(A313118(n))-A313031(n)`
-/

namespace A313155.P10490263885881496515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313118 n).toNat - A313031 n

end

end A313155.P10490263885881496515

namespace A313155

/-- `A005843(A313118(n))-A313031(n)` -/
def P10490263885881496515.Spec : Prop :=
  ∀ n, P10490263885881496515.a n = A313155 n

end A313155

/-! ## A313155.P14495461422193029219

`A005843(A008706(n))-A315444(n)`
-/

namespace A313155.P14495461422193029219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315444 n

end

end A313155.P14495461422193029219

namespace A313155

/-- `A005843(A008706(n))-A315444(n)` -/
def P14495461422193029219.Spec : Prop :=
  ∀ n, P14495461422193029219.a n = A313155 n

end A313155

/-! ## A313155.P705806794068484479

`A005843(A313802(n))-A315498(n)`
-/

namespace A313155.P705806794068484479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313802 n).toNat - A315498 n

end

end A313155.P705806794068484479

namespace A313155

/-- `A005843(A313802(n))-A315498(n)` -/
def P705806794068484479.Spec : Prop :=
  ∀ n, P705806794068484479.a n = A313155 n

end A313155

/-! ## A313155.P14559489349830808233

`A065502(A008458(n))-A315444(n)`
-/

namespace A313155.P14559489349830808233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315444 n

end

end A313155.P14559489349830808233

namespace A313155

/-- `A065502(A008458(n))-A315444(n)` -/
def P14559489349830808233.Spec : Prop :=
  ∀ n, P14559489349830808233.a n = A313155 n

end A313155

/-! ## A313155.P13584037537984431477

`A271324(A022144(n))-A315444(n)`
-/

namespace A313155.P13584037537984431477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271324 (A022144 n).toNat - A315444 n

end

end A313155.P13584037537984431477

namespace A313155

/-- `A271324(A022144(n))-A315444(n)` -/
def P13584037537984431477.Spec : Prop :=
  ∀ n, P13584037537984431477.a n = A313155 n

end A313155

/-! ## A313155.P14930997670578333172

`A004525(A313296(n)+A312209(n))`
-/

namespace A313155.P14930997670578333172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313296 n + A312209 n).toNat

end

end A313155.P14930997670578333172

namespace A313155

/-- `A004525(A313296(n)+A312209(n))` -/
def P14930997670578333172.Spec : Prop :=
  ∀ n, P14930997670578333172.a n = A313155 n

end A313155

/-!
# A313156: Coordination sequence Gal.6.437.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313156, there is no canonical definition to state claims against.
-/

/-! ## A313156.P2647970919833559040

`A035280(A310198(n))`
-/

namespace A313156.P2647970919833559040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035280 (A310198 n).toNat

end

end A313156.P2647970919833559040

/-! ## A313156.P6367491107012186906

`filter[A035280(2*n+1), A071030(#)]`
-/

namespace A313156.P6367491107012186906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035280 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071030 (f1 j).toNat = 1) n)

end

end A313156.P6367491107012186906

/-! ## A313156.P6107050360753638991

`A312325(n)+A000035(A100971(n+1))`
-/

namespace A313156.P6107050360753638991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312325 n + A000035 (A100971 (n + 1)).toNat

end

end A313156.P6107050360753638991

/-! ## A313156.P1616254465605293840

`A341258(A310717(2*n+3))+A312325(n)`
-/

namespace A313156.P1616254465605293840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341258 (A310717 (2 * n + 3)).toNat + A312325 n

end

end A313156.P1616254465605293840

/-! ## A313156.P17937026886380180598

`A035280(∪[A035272(n+1), A257057(n+1)])`
-/

namespace A313156.P17937026886380180598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257057 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035280 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A313156.P17937026886380180598

/-!
# A313157: Coordination sequence Gal.4.91.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313157, there is no canonical definition to state claims against.
-/

/-! ## A313157.P7875152484413084065

`record[A224363(n+1)-A110160(n+2)]`
-/

namespace A313157.P7875152484413084065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224363 (n + 1) - A110160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313157.P7875152484413084065

/-! ## A313157.P14868050368780654000

`record[A033790(n)*A279406(2*(n+1))]`
-/

namespace A313157.P14868050368780654000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033790 n * A279406 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313157.P14868050368780654000

/-! ## A313157.P8871182061780622206

`A311961(n)+A001221(n!)-A047599(A055216(n))`
-/

namespace A313157.P8871182061780622206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311961 n + A001221 (Nat.factorial n) - A047599 (A055216 n).toNat

end

end A313157.P8871182061780622206

/-!
# A313158: Coordination sequence Gal.5.251.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313158, there is no canonical definition to state claims against.
-/

/-! ## A313158.P9729493324752302088

`A189014(A000108(n))+A002048(2*n+1)`
-/

namespace A313158.P9729493324752302088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189014 (A000108 n).toNat + A002048 (2 * n + 1)

end

end A313158.P9729493324752302088

/-! ## A313158.P13054170298012198980

`A313159(n)-A307721(A148833(n))`
-/

namespace A313158.P13054170298012198980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313159 n - A307721 (A148833 n).toNat

end

end A313158.P13054170298012198980

/-! ## A313158.P3789258177142557313

`A313829(n)-A127322(A293780(n+1))`
-/

namespace A313158.P3789258177142557313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313829 n - A127322 (A293780 (n + 1)).toNat

end

end A313158.P3789258177142557313

/-! ## A313158.P17214014897970790789

`A313169(n)-A322217(A344910(3*n+2))`
-/

namespace A313158.P17214014897970790789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313169 n - A322217 (A344910 (3 * n + 2)).toNat

end

end A313158.P17214014897970790789

/-!
# A313159: Coordination sequence Gal.6.295.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313159, there is no canonical definition to state claims against.
-/

/-! ## A313159.P12292067123439670792

`A313158(n)+A213731(A225642(2*(n+1)))`
-/

namespace A313159.P12292067123439670792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313158 n + A213731 (A225642 (2 * (n + 1))).toNat

end

end A313159.P12292067123439670792

/-! ## A313159.P1012794442360631916

`A313158(n)+A307721(A148833(n))`
-/

namespace A313159.P1012794442360631916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313158 n + A307721 (A148833 n).toNat

end

end A313159.P1012794442360631916

/-! ## A313159.P17020756147478877700

`or(A001221(A000088(n)), A312255(n))`
-/

namespace A313159.P17020756147478877700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A000088 n).toNat) (A312255 n)

end

end A313159.P17020756147478877700

/-! ## A313159.P2718456305958944865

`or(A001221(A000088(n)), A312999(n))`
-/

namespace A313159.P2718456305958944865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A000088 n).toNat) (A312999 n)

end

end A313159.P2718456305958944865

/-! ## A313159.P2634546912843000217

`or(A001221(A000088(n)), A313158(n))`
-/

namespace A313159.P2634546912843000217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A000088 n).toNat) (A313158 n)

end

end A313159.P2634546912843000217

/-!
# A313161: Coordination sequence Gal.5.237.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313161, there is no canonical definition to state claims against.
-/

/-! ## A313161.P1070827568643018815

`A313321(n)-A064911(A195924(n))`
-/

namespace A313161.P1070827568643018815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n - A064911 (A195924 n).toNat

end

end A313161.P1070827568643018815

/-! ## A313161.P8660622420066071143

`A312256(n)+A001221(A187245(n))`
-/

namespace A313161.P8660622420066071143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312256 n + A001221 (A187245 n).toNat

end

end A313161.P8660622420066071143

/-! ## A313161.P9467179085612566072

`A313321(n)-A084143(A000110(n))`
-/

namespace A313161.P9467179085612566072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n - A084143 (A000110 n).toNat

end

end A313161.P9467179085612566072

/-! ## A313161.P11371957653130140738

`A080791(A025181(n+3))+A008574(n)`
-/

namespace A313161.P11371957653130140738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A025181 (n + 3)).toNat + A008574 n

end

end A313161.P11371957653130140738

/-! ## A313161.P2138523387475490181

`A313321(n)-A186716(A078829(2*n+1))`
-/

namespace A313161.P2138523387475490181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n - A186716 (A078829 (2 * n + 1)).toNat

end

end A313161.P2138523387475490181

/-!
# A313162: Coordination sequence Gal.4.120.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313162, there is no canonical definition to state claims against.
-/

/-! ## A313162.P5159356024846240320

`A311669(n)+A001221(A153294(n))`
-/

namespace A313162.P5159356024846240320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311669 n + A001221 (A153294 n).toNat

end

end A313162.P5159356024846240320

/-! ## A313162.P11974778077554612232

`A312394(n)+A277735(A142239(n))`
-/

namespace A313162.P11974778077554612232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312394 n + A277735 (A142239 n).toNat

end

end A313162.P11974778077554612232

/-! ## A313162.P12654581015574058551

`A250120(n)-A073274(A007097(n))`
-/

namespace A313162.P12654581015574058551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A073274 (A007097 n).toNat

end

end A313162.P12654581015574058551

/-! ## A313162.P12033567115755827699

`A250120(n)-A321396(A002378(n))`
-/

namespace A313162.P12033567115755827699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A321396 (A002378 n).toNat

end

end A313162.P12033567115755827699

/-!
# A313165: Coordination sequence Gal.6.190.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313165, there is no canonical definition to state claims against.
-/

/-! ## A313165.P12009884478706327743

`A250120(n)-A007949(A334322(n+1))`
-/

namespace A313165.P12009884478706327743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A007949 (A334322 (n + 1)).toNat

end

end A313165.P12009884478706327743

/-! ## A313165.P14159893109948857967

`A313693(n)-A007814(A006542(n+4))`
-/

namespace A313165.P14159893109948857967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n - A007814 (A006542 (n + 4)).toNat

end

end A313165.P14159893109948857967

/-! ## A313165.P2887358296360257959

`or(A001221(A049186(n+1)), A312255(n))`
-/

namespace A313165.P2887358296360257959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A049186 (n + 1)).toNat) (A312255 n)

end

end A313165.P2887358296360257959

/-!
# A313166: Coordination sequence Gal.5.171.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313166, there is no canonical definition to state claims against.
-/

/-! ## A313166.P17652227913973816834

`A313167(n)-A212619(n²+1)`
-/

namespace A313166.P17652227913973816834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313167 n - A212619 (n ^ 2 + 1)

end

end A313166.P17652227913973816834

/-! ## A313166.P7777519189032955469

`A313167(n)-A181838(A083024(n))`
-/

namespace A313166.P7777519189032955469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313167 n - A181838 (A083024 n).toNat

end

end A313166.P7777519189032955469

/-! ## A313166.P6408575963060502487

`A313167(n)-A185284(A188917(n))`
-/

namespace A313166.P6408575963060502487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313167 n - A185284 (A188917 n).toNat

end

end A313166.P6408575963060502487

/-! ## A313166.P377793614290496955

`A313167(n)-A185284(A066664(n+1))`
-/

namespace A313166.P377793614290496955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313167 n - A185284 (A066664 (n + 1)).toNat

end

end A313166.P377793614290496955

/-! ## A313166.P8373088144459390559

`A313167(n)-A185284(A305703(n+1))`
-/

namespace A313166.P8373088144459390559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313167 n - A185284 (A305703 (n + 1)).toNat

end

end A313166.P8373088144459390559

/-!
# A313167: Coordination sequence Gal.6.418.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313167, there is no canonical definition to state claims against.
-/

/-! ## A313167.P3765923376379550076

`A313021(n)+A003982(A163912(n))`
-/

namespace A313167.P3765923376379550076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313021 n + A003982 (A163912 n).toNat

end

end A313167.P3765923376379550076

/-! ## A313167.P858468890558497700

`A313166(n)+A181838(A083024(n))`
-/

namespace A313167.P858468890558497700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313166 n + A181838 (A083024 n).toNat

end

end A313167.P858468890558497700

/-! ## A313167.P9462927600786786770

`A313021(n)+A024326(A132407(n+1))`
-/

namespace A313167.P9462927600786786770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313021 n + A024326 (A132407 (n + 1)).toNat

end

end A313167.P9462927600786786770

/-! ## A313167.P5136785179122273274

`A313021(n)+A278701(A278698(n+1))`
-/

namespace A313167.P5136785179122273274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313021 n + A278701 (A278698 (n + 1)).toNat

end

end A313167.P5136785179122273274

/-!
# A313168: Coordination sequence Gal.6.174.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313168, there is no canonical definition to state claims against.
-/

/-! ## A313168.P6665842071641034355

`or(A001222(A148917(n)), A312484(n))`
-/

namespace A313168.P6665842071641034355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A148917 n).toNat) (A312484 n)

end

end A313168.P6665842071641034355

/-! ## A313168.P14148717709376060630

`xor(A143532(A038144(n+1)), A313174(n))`
-/

namespace A313168.P14148717709376060630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A143532 (A038144 (n + 1)).toNat) (A313174 n)

end

end A313168.P14148717709376060630

/-!
# A313169: Coordination sequence Gal.6.479.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313169, the canonical program `A313169.P6994078110540199840` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313169 has offset 0).

The definition of A313169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313169.P6994078110540199840

`A313119(n)+A313174(n)-A313126(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313169

/-- `A313119(n)+A313174(n)-A313126(n)` -/
def P6994078110540199840.Spec : Prop :=
  ∀ n, P6994078110540199840.a n = A313169 n

theorem P6994078110540199840.correct : P6994078110540199840.Spec := by
  intro n
  simp only [A313169]

end A313169

/-! ## A313169.P2842902370006401250

`xor(A288372(A034263(n)), A313174(n))`
-/

namespace A313169.P2842902370006401250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A288372 (A034263 n).toNat) (A313174 n)

end

end A313169.P2842902370006401250

namespace A313169

/-- `xor(A288372(A034263(n)), A313174(n))` -/
def P2842902370006401250.Spec : Prop :=
  ∀ n, P2842902370006401250.a n = A313169 n

end A313169

/-! ## A313169.P11920782382090397668

`or(A216600(A297314(2*n+5)), A301293(n))`
-/

namespace A313169.P11920782382090397668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A216600 (A297314 (2 * n + 5)).toNat) (A301293 n)

end

end A313169.P11920782382090397668

namespace A313169

/-- `or(A216600(A297314(2*n+5)), A301293(n))` -/
def P11920782382090397668.Spec : Prop :=
  ∀ n, P11920782382090397668.a n = A313169 n

end A313169

/-! ## A313169.P7680587629059646968

`or(A001221(A327015(n)), A312483(n))`
-/

namespace A313169.P7680587629059646968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A327015 n).toNat) (A312483 n)

end

end A313169.P7680587629059646968

namespace A313169

/-- `or(A001221(A327015(n)), A312483(n))` -/
def P7680587629059646968.Spec : Prop :=
  ∀ n, P7680587629059646968.a n = A313169 n

end A313169

/-! ## A313169.P7699400619870607786

`A319000(A313044(2*n+3))+A313030(n)`
-/

namespace A313169.P7699400619870607786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319000 (A313044 (2 * n + 3)).toNat + A313030 n

end

end A313169.P7699400619870607786

namespace A313169

/-- `A319000(A313044(2*n+3))+A313030(n)` -/
def P7699400619870607786.Spec : Prop :=
  ∀ n, P7699400619870607786.a n = A313169 n

end A313169

/-!
# A313170: Coordination sequence Gal.5.125.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313170, there is no canonical definition to state claims against.
-/

/-! ## A313170.P12918110915256246591

`A313204(n)-A001222(A006720(n))`
-/

namespace A313170.P12918110915256246591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313204 n - A001222 (A006720 n).toNat

end

end A313170.P12918110915256246591

/-! ## A313170.P2002190291394271194

`A313213(n)-A001222(A127296(n))`
-/

namespace A313170.P2002190291394271194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313213 n - A001222 (A127296 n).toNat

end

end A313170.P2002190291394271194

/-! ## A313170.P18346681382977540706

`A047607(3*n+2)-A001222(A078057(n))`
-/

namespace A313170.P18346681382977540706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047607 (3 * n + 2) - A001222 (A078057 n).toNat

end

end A313170.P18346681382977540706

/-! ## A313170.P1811808006909773386

`A313203(n)-A267115(A006720(n))`
-/

namespace A313170.P1811808006909773386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313203 n - A267115 (A006720 n).toNat

end

end A313170.P1811808006909773386

/-! ## A313170.P15387724160715738848

`A313203(n)-A267841(A005318(n+4))`
-/

namespace A313170.P15387724160715738848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313203 n - A267841 (A005318 (n + 4)).toNat

end

end A313170.P15387724160715738848

/-!
# A313171: Coordination sequence Gal.6.281.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313171, there is no canonical definition to state claims against.
-/

/-! ## A313171.P6262262926211879165

`A313036(n)+A063725(A148850(n))`
-/

namespace A313171.P6262262926211879165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313036 n + A063725 (A148850 n).toNat

end

end A313171.P6262262926211879165

/-! ## A313171.P16929571418823686265

`A313037(n)+A063725(A148850(n))`
-/

namespace A313171.P16929571418823686265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313037 n + A063725 (A148850 n).toNat

end

end A313171.P16929571418823686265

/-! ## A313171.P2103926525317112133

`A313038(n)+A063725(A148850(n))`
-/

namespace A313171.P2103926525317112133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313038 n + A063725 (A148850 n).toNat

end

end A313171.P2103926525317112133

/-! ## A313171.P13326209725893129198

`A313170(n)+A307721(A148421(n))`
-/

namespace A313171.P13326209725893129198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313170 n + A307721 (A148421 n).toNat

end

end A313171.P13326209725893129198

/-! ## A313171.P16963419899674705583

`A310454(n)-A186034(A181768(n))`
-/

namespace A313171.P16963419899674705583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310454 n - A186034 (A181768 n).toNat

end

end A313171.P16963419899674705583

/-!
# A313174: Coordination sequence Gal.6.478.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313174, the canonical program `A313174.P15113801269401988722` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313174 has offset 0).

The definition of A313174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313174.P15113801269401988722

`A301293(n)+A087509(A006368(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313174

/-- `A301293(n)+A087509(A006368(n))` -/
def P15113801269401988722.Spec : Prop :=
  ∀ n, P15113801269401988722.a n = A313174 n

theorem P15113801269401988722.correct : P15113801269401988722.Spec := by
  intro n
  simp only [A313174]

end A313174

/-! ## A313174.P11159626315065494781

`A301293(n)+A008624(A093178(n))`
-/

namespace A313174.P11159626315065494781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A008624 (A093178 n).toNat

end

end A313174.P11159626315065494781

namespace A313174

/-- `A301293(n)+A008624(A093178(n))` -/
def P11159626315065494781.Spec : Prop :=
  ∀ n, P11159626315065494781.a n = A313174 n

end A313174

/-! ## A313174.P17326148008742362441

`A301293(n)+A002265(A133265(n))`
-/

namespace A313174.P17326148008742362441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A002265 (A133265 n).toNat

end

end A313174.P17326148008742362441

namespace A313174

/-- `A301293(n)+A002265(A133265(n))` -/
def P17326148008742362441.Spec : Prop :=
  ∀ n, P17326148008742362441.a n = A313174 n

end A313174

/-! ## A313174.P9192060876458296043

`A008706(n)-A110657(A022998(n))`
-/

namespace A313174.P9192060876458296043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A110657 (A022998 n).toNat

end

end A313174.P9192060876458296043

namespace A313174

/-- `A008706(n)-A110657(A022998(n))` -/
def P9192060876458296043.Spec : Prop :=
  ∀ n, P9192060876458296043.a n = A313174 n

end A313174

/-! ## A313174.P13762505643266413034

`A008706(n)-A028242(A174239(n))`
-/

namespace A313174.P13762505643266413034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A028242 (A174239 n).toNat

end

end A313174.P13762505643266413034

namespace A313174

/-- `A008706(n)-A028242(A174239(n))` -/
def P13762505643266413034.Spec : Prop :=
  ∀ n, P13762505643266413034.a n = A313174 n

end A313174

/-! ## A313174.P16781070922011853704

`A301293(n)+A077814(A077814(2*n))`
-/

namespace A313174.P16781070922011853704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A077814 (A077814 (2 * n)).toNat

end

end A313174.P16781070922011853704

namespace A313174

/-- `A301293(n)+A077814(A077814(2*n))` -/
def P16781070922011853704.Spec : Prop :=
  ∀ n, P16781070922011853704.a n = A313174 n

end A313174

/-! ## A313174.P10771459143192810474

`A028242(A057979(n)+n)+A008574(n)`
-/

namespace A313174.P10771459143192810474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A057979 n + (n : ℤ)).toNat + A008574 n

end

end A313174.P10771459143192810474

namespace A313174

/-- `A028242(A057979(n)+n)+A008574(n)` -/
def P10771459143192810474.Spec : Prop :=
  ∀ n, P10771459143192810474.a n = A313174 n

end A313174

/-! ## A313174.P9544255839325167935

`A008706(n)-A028242(A026741(A004442(n)))`
-/

namespace A313174.P9544255839325167935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A028242 (A026741 (A004442 n).toNat).toNat

end

end A313174.P9544255839325167935

namespace A313174

/-- `A008706(n)-A028242(A026741(A004442(n)))` -/
def P9544255839325167935.Spec : Prop :=
  ∀ n, P9544255839325167935.a n = A313174 n

end A313174

/-! ## A313174.P1497944049337622879

`A008706(n)-A028242(A142150(n)+A028242(n))`
-/

namespace A313174.P1497944049337622879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A028242 (A142150 n + A028242 n).toNat

end

end A313174.P1497944049337622879

namespace A313174

/-- `A008706(n)-A028242(A142150(n)+A028242(n))` -/
def P1497944049337622879.Spec : Prop :=
  ∀ n, P1497944049337622879.a n = A313174 n

end A313174

/-! ## A313174.P2809781573795845722

`A301710(n)-A186101(A006368(n))`
-/

namespace A313174.P2809781573795845722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A186101 (A006368 n).toNat

end

end A313174.P2809781573795845722

namespace A313174

/-- `A301710(n)-A186101(A006368(n))` -/
def P2809781573795845722.Spec : Prop :=
  ∀ n, P2809781573795845722.a n = A313174 n

end A313174

/-!
# A313175: Coordination sequence Gal.6.280.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313175, there is no canonical definition to state claims against.
-/

/-! ## A313175.P2636944037161805193

`xor(A312585(n), A374706(A028421(n)))`
-/

namespace A313175.P2636944037161805193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A312585 n) (A374706 (A028421 n).toNat)

end

end A313175.P2636944037161805193

/-! ## A313175.P9709124627047208761

`A333645(n+1)+∑[A333628(9*n+1)]+n`
-/

namespace A313175.P9709124627047208761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333628 (9 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333645 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A313175.P9709124627047208761

/-! ## A313175.P7155403492234205758

`xor(A038138(A038146(n+1)), A313174(n))`
-/

namespace A313175.P7155403492234205758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038138 (A038146 (n + 1)).toNat) (A313174 n)

end

end A313175.P7155403492234205758

/-! ## A313175.P6711350670709993478

`A346130(A311716(n))`
-/

namespace A313175.P6711350670709993478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A311716 n).toNat

end

end A313175.P6711350670709993478

/-! ## A313175.P17835146770910640222

`or(A170956(2*(n+2)), A313062(n))`
-/

namespace A313175.P17835146770910640222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A170956 (2 * (n + 2))) (A313062 n)

end

end A313175.P17835146770910640222

/-!
# A313176: Coordination sequence Gal.6.569.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313176, there is no canonical definition to state claims against.
-/

/-! ## A313176.P17675068954421099903

`or(A001221(A113863(n)), A313031(n))`
-/

namespace A313176.P17675068954421099903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A113863 n).toNat) (A313031 n)

end

end A313176.P17675068954421099903

/-! ## A313176.P11444183391963707792

`A313177(n)-A250486(A146019(n+1))`
-/

namespace A313176.P11444183391963707792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313177 n - A250486 (A146019 (n + 1)).toNat

end

end A313176.P11444183391963707792

/-! ## A313176.P6625021400302864413

`A344710(A313179(n))-A180160(A047363(n+1))`
-/

namespace A313176.P6625021400302864413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344710 (A313179 n).toNat - A180160 (A047363 (n + 1)).toNat

end

end A313176.P6625021400302864413

/-! ## A313176.P8785649176260654563

`A311944(n)+A001221(A328441(n))`
-/

namespace A313176.P8785649176260654563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311944 n + A001221 (A328441 n).toNat

end

end A313176.P8785649176260654563

/-! ## A313176.P12001920558166586438

`A360123(A360153(n))+A360093(n+1)`
-/

namespace A313176.P12001920558166586438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360123 (A360153 n).toNat + A360093 (n + 1)

end

end A313176.P12001920558166586438

/-!
# A313177: Coordination sequence Gal.6.510.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313177, there is no canonical definition to state claims against.
-/

/-! ## A313177.P1106474672383321564

`A344710(A313179(n))`
-/

namespace A313177.P1106474672383321564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344710 (A313179 n).toNat

end

end A313177.P1106474672383321564

/-! ## A313177.P8938874160568580471

`A344710(A313005(n)+A057354(n))`
-/

namespace A313177.P8938874160568580471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344710 (A313005 n + A057354 n).toNat

end

end A313177.P8938874160568580471

/-! ## A313177.P4059920606094459758

`A344710(A313176(n)+A242096(n))`
-/

namespace A313177.P4059920606094459758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344710 (A313176 n + A242096 n).toNat

end

end A313177.P4059920606094459758

/-! ## A313177.P10495626543758516071

`A250120(n)-A226520(A248735(n))`
-/

namespace A313177.P10495626543758516071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A226520 (A248735 n).toNat

end

end A313177.P10495626543758516071

/-! ## A313177.P5903677402938050409

`A344710(or(A032741(n), A313062(n)))`
-/

namespace A313177.P5903677402938050409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344710 (Int.lor (A032741 n) (A313062 n)).toNat

end

end A313177.P5903677402938050409

/-!
# A313178: Coordination sequence Gal.6.543.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313178, there is no canonical definition to state claims against.
-/

/-! ## A313178.P8368729589458216198

`A312501(n)+A302110(A087206(n))`
-/

namespace A313178.P8368729589458216198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312501 n + A302110 (A087206 n).toNat

end

end A313178.P8368729589458216198

/-! ## A313178.P302019140658942358

`or(A302110(A087206(n)), A312508(n))`
-/

namespace A313178.P302019140658942358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A302110 (A087206 n).toNat) (A312508 n)

end

end A313178.P302019140658942358

/-! ## A313178.P2588745926228088745

`or(A071993(A244673(n+1)), A312123(n))`
-/

namespace A313178.P2588745926228088745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071993 (A244673 (n + 1)).toNat) (A312123 n)

end

end A313178.P2588745926228088745

/-! ## A313178.P14763503719704657387

`or(A312490(n), A336929(A336913(n+1)))`
-/

namespace A313178.P14763503719704657387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312490 n) (A336929 (A336913 (n + 1)).toNat)

end

end A313178.P14763503719704657387

/-! ## A313178.P5238137194742547785

`or(A001222(A004211(n)), A312448(n))`
-/

namespace A313178.P5238137194742547785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A004211 n).toNat) (A312448 n)

end

end A313178.P5238137194742547785

/-!
# A313179: Coordination sequence Gal.3.38.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313179, there is no canonical definition to state claims against.
-/

/-! ## A313179.P12436435682113948473

`or(A001222(A012864(n)), A313062(n))`
-/

namespace A313179.P12436435682113948473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A012864 n).toNat) (A313062 n)

end

end A313179.P12436435682113948473

/-! ## A313179.P12023895758538225119

`or(A001222(A051295(n)), A313062(n))`
-/

namespace A313179.P12023895758538225119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A051295 n).toNat) (A313062 n)

end

end A313179.P12023895758538225119

/-! ## A313179.P3906101532716647203

`or(A001222(A113863(n)), A313062(n))`
-/

namespace A313179.P3906101532716647203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A113863 n).toNat) (A313062 n)

end

end A313179.P3906101532716647203

/-! ## A313179.P16952159040818763523

`or(A001221(A018190(n+1)), A313176(n))`
-/

namespace A313179.P16952159040818763523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A018190 (n + 1)).toNat) (A313176 n)

end

end A313179.P16952159040818763523

/-! ## A313179.P2532478492991930944

`record[A000040(2*n+1)-A333191(n)]`
-/

namespace A313179.P2532478492991930944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1) - A333191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313179.P2532478492991930944

/-!
# A313180: Coordination sequence Gal.6.314.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313180, there is no canonical definition to state claims against.
-/

/-! ## A313180.P5556809096153579640

`A089840(A002182(n+1))+4*n`
-/

namespace A313180.P5556809096153579640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 (A002182 (n + 1)).toNat + (4 * n : ℤ)

end

end A313180.P5556809096153579640

/-! ## A313180.P9739867500427520688

`A122204(A004394(n+1))+4*n`
-/

namespace A313180.P9739867500427520688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 (A004394 (n + 1)).toNat + (4 * n : ℤ)

end

end A313180.P9739867500427520688

/-! ## A313180.P9917738944272229754

`A122203(A141320(n+1))+4*n`
-/

namespace A313180.P9917738944272229754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (A141320 (n + 1)).toNat + (4 * n : ℤ)

end

end A313180.P9917738944272229754

/-! ## A313180.P8242847194309494541

`A122202(A002182(n+1))+A008586(n)`
-/

namespace A313180.P8242847194309494541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122202 (A002182 (n + 1)).toNat + A008586 n

end

end A313180.P8242847194309494541

/-! ## A313180.P5859736219317340296

`A313875(n)-A002262(A195669(n+3))`
-/

namespace A313180.P5859736219317340296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n - A002262 (A195669 (n + 3)).toNat

end

end A313180.P5859736219317340296

/-!
# A313182: Coordination sequence Gal.5.221.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313182, there is no canonical definition to state claims against.
-/

/-! ## A313182.P17150908804166650193

`A313709(n)-A272664(A116849(n+1))`
-/

namespace A313182.P17150908804166650193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313709 n - A272664 (A116849 (n + 1)).toNat

end

end A313182.P17150908804166650193

/-! ## A313182.P5649320940705074593

`record[A002636(A005919(2*n))]`
-/

namespace A313182.P5649320940705074593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 (A005919 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313182.P5649320940705074593

/-! ## A313182.P7185571411298076916

`A311267(n)+A001222(A001764(n))`
-/

namespace A313182.P7185571411298076916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311267 n + A001222 (A001764 n).toNat

end

end A313182.P7185571411298076916

/-! ## A313182.P10612597184100194113

`A313819(n)-A001221(A000302(n))`
-/

namespace A313182.P10612597184100194113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313819 n - A001221 (A000302 n).toNat

end

end A313182.P10612597184100194113

/-!
# A313183: Coordination sequence Gal.5.168.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313183, there is no canonical definition to state claims against.
-/

/-! ## A313183.P1401431176630514400

`A312890(n)+A001222(A281182(n))`
-/

namespace A313183.P1401431176630514400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312890 n + A001222 (A281182 n).toNat

end

end A313183.P1401431176630514400

/-! ## A313183.P10109748981556240550

`A312727(n)+A144595(A290929(n))`
-/

namespace A313183.P10109748981556240550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312727 n + A144595 (A290929 n).toNat

end

end A313183.P10109748981556240550

/-! ## A313183.P14182206744011633243

`A313069(n)+A033665(A033818(n+1))`
-/

namespace A313183.P14182206744011633243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313069 n + A033665 (A033818 (n + 1)).toNat

end

end A313183.P14182206744011633243

/-!
# A313184: Coordination sequence Gal.6.28.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313184, there is no canonical definition to state claims against.
-/

/-! ## A313184.P10152963785761146342

`A311738(n)+A001221(n!)`
-/

namespace A313184.P10152963785761146342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311738 n + A001221 (Nat.factorial n)

end

end A313184.P10152963785761146342

/-! ## A313184.P12158905361286427424

`A311738(n)+A001221(A000142(n))`
-/

namespace A313184.P12158905361286427424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311738 n + A001221 (A000142 n).toNat

end

end A313184.P12158905361286427424

/-! ## A313184.P212272353591368225

`A311992(n)+A001221(A110447(n))`
-/

namespace A313184.P212272353591368225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311992 n + A001221 (A110447 n).toNat

end

end A313184.P212272353591368225

/-! ## A313184.P9043500642368636963

`A313080(n)+A060398(A084182(n))`
-/

namespace A313184.P9043500642368636963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313080 n + A060398 (A084182 n).toNat

end

end A313184.P9043500642368636963

/-!
# A313186: Coordination sequence Gal.6.426.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313186, there is no canonical definition to state claims against.
-/

/-! ## A313186.P2054723785037001933

`A313013(n)+A004218(A032011(n))`
-/

namespace A313186.P2054723785037001933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313013 n + A004218 (A032011 n).toNat

end

end A313186.P2054723785037001933

/-! ## A313186.P6157104177984970602

`A313187(n)-A353492(A033453(n))`
-/

namespace A313186.P6157104177984970602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313187 n - A353492 (A033453 n).toNat

end

end A313186.P6157104177984970602

/-! ## A313186.P14355791957641273730

`A313187(n)-A185284(A314502(n))`
-/

namespace A313186.P14355791957641273730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313187 n - A185284 (A314502 n).toNat

end

end A313186.P14355791957641273730

/-! ## A313186.P1729538284448197540

`A313187(n)-A185284(A314694(n))`
-/

namespace A313186.P1729538284448197540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313187 n - A185284 (A314694 n).toNat

end

end A313186.P1729538284448197540

/-! ## A313186.P14341729762373537856

`A313187(n)-A185284(A099627(2*n+1))`
-/

namespace A313186.P14341729762373537856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313187 n - A185284 (A099627 (2 * n + 1)).toNat

end

end A313186.P14341729762373537856

/-!
# A313187: Coordination sequence Gal.6.425.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313187, there is no canonical definition to state claims against.
-/

/-! ## A313187.P5548912482222621543

`A313186(n)+A025456(A001047(n))`
-/

namespace A313187.P5548912482222621543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313186 n + A025456 (A001047 n).toNat

end

end A313187.P5548912482222621543

/-! ## A313187.P17514659854674276871

`A313186(n)+A021913(A218962(n))`
-/

namespace A313187.P17514659854674276871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313186 n + A021913 (A218962 n).toNat

end

end A313187.P17514659854674276871

/-! ## A313187.P6287631195542334723

`A313186(n)+A185284(A314502(n))`
-/

namespace A313187.P6287631195542334723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313186 n + A185284 (A314502 n).toNat

end

end A313187.P6287631195542334723

/-! ## A313187.P13362335256216405078

`A313186(n)+A078128(A077739(n+1))`
-/

namespace A313187.P13362335256216405078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313186 n + A078128 (A077739 (n + 1)).toNat

end

end A313187.P13362335256216405078

/-! ## A313187.P4164701729344284024

`char[7]+A313013(n)+A004218(A032011(n))`
-/

namespace A313187.P4164701729344284024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A313013 n + A004218 (A032011 n).toNat)

end

end A313187.P4164701729344284024

/-!
# A313188: Coordination sequence Gal.6.285.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313188, there is no canonical definition to state claims against.
-/

/-! ## A313188.P1685403920605118555

`A313191(n)-A038189(A149862(n))`
-/

namespace A313188.P1685403920605118555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313191 n - A038189 (A149862 n).toNat

end

end A313188.P1685403920605118555

/-! ## A313188.P17191300633734993670

`A313191(n)-A038189(A149868(n))`
-/

namespace A313188.P17191300633734993670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313191 n - A038189 (A149868 n).toNat

end

end A313188.P17191300633734993670

/-! ## A313188.P4531147075815847202

`eq[A257980(A112798(2*(n+3))), A348528(2*(n+1))]`
-/

namespace A313188.P4531147075815847202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257980 (A112798 (2 * (n + 3))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348528 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A313188.P4531147075815847202

/-!
# A313189: Coordination sequence Gal.6.180.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313189, there is no canonical definition to state claims against.
-/

/-! ## A313189.P2812643064528077089

`A334465(A312437(2*n+3))+A312444(n)`
-/

namespace A313189.P2812643064528077089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334465 (A312437 (2 * n + 3)).toNat + A312444 n

end

end A313189.P2812643064528077089

/-! ## A313189.P16073624621820179788

`A313026(n)+A277143(A000244(n))`
-/

namespace A313189.P16073624621820179788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n + A277143 (A000244 n).toNat

end

end A313189.P16073624621820179788

/-! ## A313189.P6875170217558200326

`A250120(n)-A127323(A003586(2*n+1))`
-/

namespace A313189.P6875170217558200326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A127323 (A003586 (2 * n + 1)).toNat

end

end A313189.P6875170217558200326

/-! ## A313189.P7639200372859383107

`A312419(n)-(1-A020639(n!))`
-/

namespace A313189.P7639200372859383107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312419 n - (1 - A020639 (Nat.factorial n))

end

end A313189.P7639200372859383107

/-!
# A313190: Coordination sequence Gal.6.164.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313190, there is no canonical definition to state claims against.
-/

/-! ## A313190.P7451876716871531729

`A313493(A062399(n))-A244895(n)`
-/

namespace A313190.P7451876716871531729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313493 (A062399 n).toNat - A244895 n

end

end A313190.P7451876716871531729

/-! ## A313190.P10921783324855878214

`A327180(A000583(n))+A313030(n)-A244895(n)`
-/

namespace A313190.P10921783324855878214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 (A000583 n).toNat + (A313030 n - A244895 n)

end

end A313190.P10921783324855878214

/-! ## A313190.P2701793103522040380

`A312479(n)+A131735(A005001(n))`
-/

namespace A313190.P2701793103522040380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312479 n + A131735 (A005001 n).toNat

end

end A313190.P2701793103522040380

/-! ## A313190.P17498221199512910216

`A312480(n)+A131735(A005001(n))`
-/

namespace A313190.P17498221199512910216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312480 n + A131735 (A005001 n).toNat

end

end A313190.P17498221199512910216

/-!
# A313191: Coordination sequence Gal.6.271.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313191, there is no canonical definition to state claims against.
-/

/-! ## A313191.P18367841229740589578

`A313685(n)-A007814(A098790(n))`
-/

namespace A313191.P18367841229740589578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n - A007814 (A098790 n).toNat

end

end A313191.P18367841229740589578

/-! ## A313191.P10381652242234798605

`xor(A083889(A016755(n)), A313201(n))`
-/

namespace A313191.P10381652242234798605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083889 (A016755 n).toNat) (A313201 n)

end

end A313191.P10381652242234798605

/-! ## A313191.P18058452480426757664

`xor(A193330(A087051(n)), A314436(n))`
-/

namespace A313191.P18058452480426757664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A193330 (A087051 n).toNat) (A314436 n)

end

end A313191.P18058452480426757664

/-! ## A313191.P15341599605602846688

`A313190(n)+A188967(A001333(n+1))`
-/

namespace A313191.P15341599605602846688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313190 n + A188967 (A001333 (n + 1)).toNat

end

end A313191.P15341599605602846688

/-!
# A313192: Coordination sequence Gal.6.449.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313192, there is no canonical definition to state claims against.
-/

/-! ## A313192.P1651399482027950252

`A312020(n)+A001222(A238639(n))`
-/

namespace A313192.P1651399482027950252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312020 n + A001222 (A238639 n).toNat

end

end A313192.P1651399482027950252

/-! ## A313192.P11720548188317457655

`A250120(n)-A125203(A002108(n+1))`
-/

namespace A313192.P11720548188317457655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A125203 (A002108 (n + 1)).toNat

end

end A313192.P11720548188317457655

/-! ## A313192.P7211353158073801671

`A250120(n)-A086008(A074033(n+1))`
-/

namespace A313192.P7211353158073801671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A086008 (A074033 (n + 1)).toNat

end

end A313192.P7211353158073801671

/-! ## A313192.P10474715215428106186

`A250120(n)-A178471(A000043(n+1))`
-/

namespace A313192.P10474715215428106186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A178471 (A000043 (n + 1)).toNat

end

end A313192.P10474715215428106186

/-! ## A313192.P10500917038479051824

`A250120(n)-A376364(A002805(n+1))`
-/

namespace A313192.P10500917038479051824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A376364 (A002805 (n + 1)).toNat

end

end A313192.P10500917038479051824

/-!
# A313193: Coordination sequence Gal.4.106.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313193, the canonical program `A313193.P12410048015465673857` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313193 has offset 0).

The definition of A313193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313193.P13498187510919901827

`A072151(3*n)-3*n`
-/

namespace A313193.P13498187510919901827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072151 (3 * n) - (3 * n : ℤ)

end

end A313193.P13498187510919901827

namespace A313193

/-- `A072151(3*n)-3*n` -/
def P13498187510919901827.Spec : Prop :=
  ∀ n, P13498187510919901827.a n = A313193 n

end A313193

/-! ## A313193.P11932538982761522424

`A301298(n)-A101455(n)`
-/

namespace A313193.P11932538982761522424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A101455 n

end

end A313193.P11932538982761522424

namespace A313193

/-- `A301298(n)-A101455(n)` -/
def P11932538982761522424.Spec : Prop :=
  ∀ n, P11932538982761522424.a n = A313193 n

end A313193

/-! ## A313193.P12410048015465673857

`A301672(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313193

/-- `A301672(n)+∑[A021913(n)]` -/
def P12410048015465673857.Spec : Prop :=
  ∀ n, P12410048015465673857.a n = A313193 n

theorem P12410048015465673857.correct : P12410048015465673857.Spec := by
  intro n
  simp only [A313193]

end A313193

/-! ## A313193.P7779238813201463142

`A301672(n)+Δ[A011848(n)]`
-/

namespace A313193.P7779238813201463142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + (f1 (n + 1) - f1 n)

end

end A313193.P7779238813201463142

namespace A313193

/-- `A301672(n)+Δ[A011848(n)]` -/
def P7779238813201463142.Spec : Prop :=
  ∀ n, P7779238813201463142.a n = A313193 n

end A313193

/-! ## A313193.P17006114128353202273

`A047538(n+1)+A008576(n)`
-/

namespace A313193.P17006114128353202273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047538 (n + 1) + A008576 n

end

end A313193.P17006114128353202273

namespace A313193

/-- `A047538(n+1)+A008576(n)` -/
def P17006114128353202273.Spec : Prop :=
  ∀ n, P17006114128353202273.a n = A313193 n

end A313193

/-! ## A313193.P4709583758438481481

`A301672(n)+A004524(n+1)`
-/

namespace A313193.P4709583758438481481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A004524 (n + 1)

end

end A313193.P4709583758438481481

namespace A313193

/-- `A301672(n)+A004524(n+1)` -/
def P4709583758438481481.Spec : Prop :=
  ∀ n, P4709583758438481481.a n = A313193 n

end A313193

/-! ## A313193.P13488686737261182033

`A301298(n)+A056594(n+1)`
-/

namespace A313193.P13488686737261182033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A056594 (n + 1)

end

end A313193.P13488686737261182033

namespace A313193

/-- `A301298(n)+A056594(n+1)` -/
def P13488686737261182033.Spec : Prop :=
  ∀ n, P13488686737261182033.a n = A313193 n

end A313193

/-! ## A313193.P16596046745029504570

`A316317(n)+A042965(n+1)`
-/

namespace A313193.P16596046745029504570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316317 n + A042965 (n + 1)

end

end A313193.P16596046745029504570

namespace A313193

/-- `A316317(n)+A042965(n+1)` -/
def P16596046745029504570.Spec : Prop :=
  ∀ n, P16596046745029504570.a n = A313193 n

end A313193

/-! ## A313193.P7273770817414629347

`A316317(n)+A004396(2*n)`
-/

namespace A313193.P7273770817414629347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316317 n + A004396 (2 * n)

end

end A313193.P7273770817414629347

namespace A313193

/-- `A316317(n)+A004396(2*n)` -/
def P7273770817414629347.Spec : Prop :=
  ∀ n, P7273770817414629347.a n = A313193 n

end A313193

/-! ## A313193.P14508927201097755213

`A301298(n)-A046978(2*n)`
-/

namespace A313193.P14508927201097755213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A046978 (2 * n)

end

end A313193.P14508927201097755213

namespace A313193

/-- `A301298(n)-A046978(2*n)` -/
def P14508927201097755213.Spec : Prop :=
  ∀ n, P14508927201097755213.a n = A313193 n

end A313193

/-! ## A313193.P2105669237247113513

`A008576(n)+A201629(n)+n`
-/

namespace A313193.P2105669237247113513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A201629 n + (n : ℤ))

end

end A313193.P2105669237247113513

namespace A313193

/-- `A008576(n)+A201629(n)+n` -/
def P2105669237247113513.Spec : Prop :=
  ∀ n, P2105669237247113513.a n = A313193 n

end A313193

/-! ## A313193.P14890266304776664891

`A301672(n)+n-A004525(n)`
-/

namespace A313193.P14890266304776664891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + ((n : ℤ) - A004525 n)

end

end A313193.P14890266304776664891

namespace A313193

/-- `A301672(n)+n-A004525(n)` -/
def P14890266304776664891.Spec : Prop :=
  ∀ n, P14890266304776664891.a n = A313193 n

end A313193

/-! ## A313193.P13970516016712201697

`A310498(n)-∑[A022003(n)]`
-/

namespace A313193.P13970516016712201697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310498 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313193.P13970516016712201697

namespace A313193

/-- `A310498(n)-∑[A022003(n)]` -/
def P13970516016712201697.Spec : Prop :=
  ∀ n, P13970516016712201697.a n = A313193 n

end A313193

/-! ## A313193.P7059782149979366551

`A310498(n)-A002264(n+1)`
-/

namespace A313193.P7059782149979366551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310498 n - A002264 (n + 1)

end

end A313193.P7059782149979366551

namespace A313193

/-- `A310498(n)-A002264(n+1)` -/
def P7059782149979366551.Spec : Prop :=
  ∀ n, P7059782149979366551.a n = A313193 n

end A313193

/-! ## A313193.P4330685587146948235

`A008576(n)+A310498(n)-A008486(n)`
-/

namespace A313193.P4330685587146948235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A310498 n - A008486 n)

end

end A313193.P4330685587146948235

namespace A313193

/-- `A008576(n)+A310498(n)-A008486(n)` -/
def P4330685587146948235.Spec : Prop :=
  ∀ n, P4330685587146948235.a n = A313193 n

end A313193

/-! ## A313193.P4367694427709108593

`A313862(n)-A004525(n)`
-/

namespace A313193.P4367694427709108593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313862 n - A004525 n

end

end A313193.P4367694427709108593

namespace A313193

/-- `A313862(n)-A004525(n)` -/
def P4367694427709108593.Spec : Prop :=
  ∀ n, P4367694427709108593.a n = A313193 n

end A313193

/-! ## A313193.P15614366270507972457

`A315538(n)-2*A004525(n)`
-/

namespace A313193.P15614366270507972457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315538 n - 2 * A004525 n

end

end A313193.P15614366270507972457

namespace A313193

/-- `A315538(n)-2*A004525(n)` -/
def P15614366270507972457.Spec : Prop :=
  ∀ n, P15614366270507972457.a n = A313193 n

end A313193

/-! ## A313193.P1901967114373695144

`A004396(A311625(2*n))-A004396(2*n)`
-/

namespace A313193.P1901967114373695144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311625 (2 * n)).toNat - A004396 (2 * n)

end

end A313193.P1901967114373695144

namespace A313193

/-- `A004396(A311625(2*n))-A004396(2*n)` -/
def P1901967114373695144.Spec : Prop :=
  ∀ n, P1901967114373695144.a n = A313193 n

end A313193

/-! ## A313193.P6140177140695394030

`A004396(A312140(2*n))-A004396(2*n)`
-/

namespace A313193.P6140177140695394030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312140 (2 * n)).toNat - A004396 (2 * n)

end

end A313193.P6140177140695394030

namespace A313193

/-- `A004396(A312140(2*n))-A004396(2*n)` -/
def P6140177140695394030.Spec : Prop :=
  ∀ n, P6140177140695394030.a n = A313193 n

end A313193

/-! ## A313193.P17550427338007579674

`A056594(n+1)+A004525(A314841(2*n))`
-/

namespace A313193.P17550427338007579674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + A004525 (A314841 (2 * n)).toNat

end

end A313193.P17550427338007579674

namespace A313193

/-- `A056594(n+1)+A004525(A314841(2*n))` -/
def P17550427338007579674.Spec : Prop :=
  ∀ n, P17550427338007579674.a n = A313193 n

end A313193

/-!
# A313194: Coordination sequence Gal.5.160.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313194, there is no canonical definition to state claims against.
-/

/-! ## A313194.P12524606200396419273

`A313195(n)-A185284(A077121(n))`
-/

namespace A313194.P12524606200396419273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313195 n - A185284 (A077121 n).toNat

end

end A313194.P12524606200396419273

/-! ## A313194.P2340794110534077542

`A313195(n)+A240467(A256613(n+1))`
-/

namespace A313194.P2340794110534077542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313195 n + A240467 (A256613 (n + 1)).toNat

end

end A313194.P2340794110534077542

/-! ## A313194.P6904390957541416202

`A313195(A087051(n))`
-/

namespace A313194.P6904390957541416202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313195 (A087051 n).toNat

end

end A313194.P6904390957541416202

/-!
# A313195: Coordination sequence Gal.6.401.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313195, there is no canonical definition to state claims against.
-/

/-! ## A313195.P3781920235814821561

`A313194(n)+A185284(A077121(n))`
-/

namespace A313195.P3781920235814821561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313194 n + A185284 (A077121 n).toNat

end

end A313195.P3781920235814821561

/-! ## A313195.P2010377053654166307

`A313850(n)-A000120(eq[1, A002636(n)])`
-/

namespace A313195.P2010377053654166307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313850 n - A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A313195.P2010377053654166307

/-! ## A313195.P7488985491823362381

`A324095(A088599(n+1))+A313194(n)`
-/

namespace A313195.P7488985491823362381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324095 (A088599 (n + 1)).toNat + A313194 n

end

end A313195.P7488985491823362381

/-!
# A313196: Coordination sequence Gal.6.464.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313196, there is no canonical definition to state claims against.
-/

/-! ## A313196.P3115855501438954125

`A301710(n)-A001222(A007052(n))`
-/

namespace A313196.P3115855501438954125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A001222 (A007052 n).toNat

end

end A313196.P3115855501438954125

/-! ## A313196.P383668400234039657

`A313225(n)-A043545(A143955(n))`
-/

namespace A313196.P383668400234039657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313225 n - A043545 (A143955 n).toNat

end

end A313196.P383668400234039657

/-! ## A313196.P1197656200978112325

`A313167(n)+A011739(A064168(n+1))`
-/

namespace A313196.P1197656200978112325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313167 n + A011739 (A064168 (n + 1)).toNat

end

end A313196.P1197656200978112325

/-! ## A313196.P2774228785544568244

`A313204(n)+A049347(A086252(n+1))`
-/

namespace A313196.P2774228785544568244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313204 n + A049347 (A086252 (n + 1)).toNat

end

end A313196.P2774228785544568244

/-! ## A313196.P16289195229730294201

`A346130(A301672(n))`
-/

namespace A313196.P16289195229730294201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A301672 n).toNat

end

end A313196.P16289195229730294201

/-!
# A313197: Coordination sequence Gal.6.455.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313197, there is no canonical definition to state claims against.
-/

/-! ## A313197.P13982587443233964041

`A313031(n)+A295306(A002905(n))`
-/

namespace A313197.P13982587443233964041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313031 n + A295306 (A002905 n).toNat

end

end A313197.P13982587443233964041

/-! ## A313197.P18079683606244745811

`xor(A003849(A265278(n)), A301298(n))`
-/

namespace A313197.P18079683606244745811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003849 (A265278 n).toNat) (A301298 n)

end

end A313197.P18079683606244745811

/-! ## A313197.P1857233399125673020

`xor(A313053(n), A323162(A014969(n)))`
-/

namespace A313197.P1857233399125673020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A313053 n) (A323162 (A014969 n).toNat)

end

end A313197.P1857233399125673020

/-! ## A313197.P15559130699418899390

`A301293(n)+A001222(A002675(n+2))`
-/

namespace A313197.P15559130699418899390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A001222 (A002675 (n + 2)).toNat

end

end A313197.P15559130699418899390

/-! ## A313197.P11784297240942593846

`A250120(n)-A345388(A112714(n+1))`
-/

namespace A313197.P11784297240942593846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A345388 (A112714 (n + 1)).toNat

end

end A313197.P11784297240942593846

/-!
# A313198: Coordination sequence Gal.6.469.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313198, there is no canonical definition to state claims against.
-/

/-! ## A313198.P18409061565890306604

`A312429(n)+A001221(A006154(n))`
-/

namespace A313198.P18409061565890306604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312429 n + A001221 (A006154 n).toNat

end

end A313198.P18409061565890306604

/-! ## A313198.P2583300103163919416

`A310455(n)-A062173(A032559(n+1))`
-/

namespace A313198.P2583300103163919416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310455 n - A062173 (A032559 (n + 1)).toNat

end

end A313198.P2583300103163919416

/-! ## A313198.P15743296616797718159

`eq[A366538(3*n+5), A366538(A326256(n+5))]`
-/

namespace A313198.P15743296616797718159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366538 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366538 (A326256 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A313198.P15743296616797718159

