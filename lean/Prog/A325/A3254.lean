import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
# A325400: Heinz numbers of reversed integer partitions whose k-th differences are weakly increasing for all k >= 0.

The programs for A325400, there is no canonical definition to state claims against.
-/

/-! ## A325400.P6809617204179757732

`∪[A342523(n+1), ∑[n]+2]`
-/

namespace A325400.P6809617204179757732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A325400.P6809617204179757732

/-! ## A325400.P16230976721360002373

`∪[A000070(n), A342523(n+1)]`
-/

namespace A325400.P16230976721360002373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325400.P16230976721360002373

/-! ## A325400.P10148952431131645154

`∪[A014696(n), A342523(n+1)]`
-/

namespace A325400.P10148952431131645154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014696 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325400.P10148952431131645154

/-! ## A325400.P6219570622669463433

`∪[A075427(n), A342523(n+1)]`
-/

namespace A325400.P6219570622669463433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325400.P6219570622669463433

/-! ## A325400.P12261764211453117112

`∪[A133263(n), A342523(n+1)]`
-/

namespace A325400.P12261764211453117112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325400.P12261764211453117112

/-! ## A325400.P4496767398593317795

`∪[A265068(n), A342523(n+1)]`
-/

namespace A325400.P4496767398593317795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265068 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325400.P4496767398593317795

/-! ## A325400.P3004009202478856885

`∪[A312998(n), A342523(n+1)]`
-/

namespace A325400.P3004009202478856885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325400.P3004009202478856885

/-! ## A325400.P16770112120015065068

`∪[A342280(n), A342523(n+1)]`
-/

namespace A325400.P16770112120015065068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342280 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325400.P16770112120015065068

/-! ## A325400.P3779033309480563338

`comp[Δ[A002378(A204158(n+1))]]`
-/

namespace A325400.P3779033309480563338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A204158 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A325400.P3779033309480563338

/-! ## A325400.P512992328030365992

`∪[∑[A000041(n)], A342523(n+1)]`
-/

namespace A325400.P512992328030365992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A325400.P512992328030365992

/-!
# A325401: minflip(n) = min(n, r(n)) where r(n) is the binary reverse of n.

The programs for A325401, the canonical program `A325401.P9378557464177393728` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325401 has offset 0).

The definition of A325401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325401.P1701356314573257704

`A055944(n)-A325402(n)`
-/

namespace A325401.P1701356314573257704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n - A325402 n

end

end A325401.P1701356314573257704

namespace A325401

/-- `A055944(n)-A325402(n)` -/
def P1701356314573257704.Spec : Prop :=
  ∀ n, P1701356314573257704.a n = A325401 n

end A325401

/-! ## A325401.P9912443888351859002

`xor(A175919(n), A325402(n))`
-/

namespace A325401.P9912443888351859002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A175919 n) (A325402 n)

end

end A325401.P9912443888351859002

namespace A325401

/-- `xor(A175919(n), A325402(n))` -/
def P9912443888351859002.Spec : Prop :=
  ∀ n, P9912443888351859002.a n = A325401 n

end A325401

/-! ## A325401.P15845762747034325555

`A030101(n)+n-A325402(n)`
-/

namespace A325401.P15845762747034325555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + ((n : ℤ) - A325402 n)

end

end A325401.P15845762747034325555

namespace A325401

/-- `A030101(n)+n-A325402(n)` -/
def P15845762747034325555.Spec : Prop :=
  ∀ n, P15845762747034325555.a n = A325401 n

end A325401

/-! ## A325401.P9378557464177393728

`(A055944(n)-abs(A055945(n)))/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A325401

/-- `(A055944(n)-abs(A055945(n)))/2` -/
def P9378557464177393728.Spec : Prop :=
  ∀ n, P9378557464177393728.a n = (A325401 n : ℚ)

end A325401

/-! ## A325401.P13617789852743416309

`and(A175298(n), A264618(A325402(n)))`
-/

namespace A325401.P13617789852743416309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175298 n) (A264618 (A325402 n).toNat)

end

end A325401.P13617789852743416309

namespace A325401

/-- `and(A175298(n), A264618(A325402(n)))` -/
def P13617789852743416309.Spec : Prop :=
  ∀ n, P13617789852743416309.a n = A325401 n

end A325401

/-! ## A325401.P14821766820083264393

`A030101(n)-A325402(A325402(n)-n)`
-/

namespace A325401.P14821766820083264393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n - A325402 (A325402 n - (n : ℤ)).toNat

end

end A325401.P14821766820083264393

namespace A325401

/-- `A030101(n)-A325402(A325402(n)-n)` -/
def P14821766820083264393.Spec : Prop :=
  ∀ n, P14821766820083264393.a n = A325401 n

end A325401

/-! ## A325401.P8234937617108957865

`A030101(A325402(n))`
-/

namespace A325401.P8234937617108957865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A325402 n).toNat

end

end A325401.P8234937617108957865

namespace A325401

/-- `A030101(A325402(n))` -/
def P8234937617108957865.Spec : Prop :=
  ∀ n, P8234937617108957865.a n = A325401 n

end A325401

/-! ## A325401.P10490897060310929005

`A327193(A048701(n))`
-/

namespace A325401.P10490897060310929005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327193 (A048701 n).toNat

end

end A325401.P10490897060310929005

namespace A325401

/-- `A327193(A048701(n))` -/
def P10490897060310929005.Spec : Prop :=
  ∀ n, P10490897060310929005.a n = A325401 n

end A325401

/-!
# A325402: maxflip(n) = max(n, r(n)) where r(n) is the binary reverse of n.

The programs for A325402, the canonical program `A325402.P10132391026070939766` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325402 has offset 0).

The definition of A325402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325402.P10132391026070939766

`A055944(n)-A325401(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A325402

/-- `A055944(n)-A325401(n)` -/
def P10132391026070939766.Spec : Prop :=
  ∀ n, P10132391026070939766.a n = A325402 n

theorem P10132391026070939766.correct : P10132391026070939766.Spec := by
  intro n
  simp only [A325402]

end A325402

/-! ## A325402.P1124024873587339393

`xor(A175919(n), A325401(n))`
-/

namespace A325402.P1124024873587339393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A175919 n) (A325401 n)

end

end A325402.P1124024873587339393

namespace A325402

/-- `xor(A175919(n), A325401(n))` -/
def P1124024873587339393.Spec : Prop :=
  ∀ n, P1124024873587339393.a n = A325402 n

end A325402

/-! ## A325402.P252170816551638256

`A030101(n)+n-A325401(n)`
-/

namespace A325402.P252170816551638256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + ((n : ℤ) - A325401 n)

end

end A325402.P252170816551638256

namespace A325402

/-- `A030101(n)+n-A325401(n)` -/
def P252170816551638256.Spec : Prop :=
  ∀ n, P252170816551638256.a n = A325402 n

end A325402

/-! ## A325402.P18308678399310983421

`2*n-A055945(n)-A325401(n)`
-/

namespace A325402.P18308678399310983421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055945 n - A325401 n

end

end A325402.P18308678399310983421

namespace A325402

/-- `2*n-A055945(n)-A325401(n)` -/
def P18308678399310983421.Spec : Prop :=
  ∀ n, P18308678399310983421.a n = A325402 n

end A325402

/-! ## A325402.P5751998920971958690

`A264619(n)%(2*n+1)+n-A325401(n)`
-/

namespace A325402.P5751998920971958690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264619 n) (2 * n + 1 : ℤ) + (n : ℤ) - A325401 n

end

end A325402.P5751998920971958690

namespace A325402

/-- `A264619(n)%(2*n+1)+n-A325401(n)` -/
def P5751998920971958690.Spec : Prop :=
  ∀ n, P5751998920971958690.a n = A325402 n

end A325402

/-! ## A325402.P8264302432342223686

`2*A175298(n)-A175919(n)-A325401(n)`
-/

namespace A325402.P8264302432342223686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175298 n - A175919 n - A325401 n

end

end A325402.P8264302432342223686

namespace A325402

/-- `2*A175298(n)-A175919(n)-A325401(n)` -/
def P8264302432342223686.Spec : Prop :=
  ∀ n, P8264302432342223686.a n = A325402 n

end A325402

/-! ## A325402.P13102278930017044789

`and(A003817(n), A264618(n))+n-A325401(n)`
-/

namespace A325402.P13102278930017044789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A264618 n) + (n : ℤ) - A325401 n

end

end A325402.P13102278930017044789

namespace A325402

/-- `and(A003817(n), A264618(n))+n-A325401(n)` -/
def P13102278930017044789.Spec : Prop :=
  ∀ n, P13102278930017044789.a n = A325402 n

end A325402

/-! ## A325402.P17306365221379934107

`and(A003817(n), A264619(n))+n-A325401(n)`
-/

namespace A325402.P17306365221379934107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A264619 n) + (n : ℤ) - A325401 n

end

end A325402.P17306365221379934107

namespace A325402

/-- `and(A003817(n), A264619(n))+n-A325401(n)` -/
def P17306365221379934107.Spec : Prop :=
  ∀ n, P17306365221379934107.a n = A325402 n

end A325402

/-! ## A325402.P9820276838716290965

`A175298(n)+and(n, A264618(n))-A325401(n)`
-/

namespace A325402.P9820276838716290965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n + Int.land (n : ℤ) (A264618 n) - A325401 n

end

end A325402.P9820276838716290965

namespace A325402

/-- `A175298(n)+and(n, A264618(n))-A325401(n)` -/
def P9820276838716290965.Spec : Prop :=
  ∀ n, P9820276838716290965.a n = A325402 n

end A325402

/-! ## A325402.P15320867291123741007

`A175298(n)+and(n, A264619(n))-A325401(n)`
-/

namespace A325402.P15320867291123741007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n + Int.land (n : ℤ) (A264619 n) - A325401 n

end

end A325402.P15320867291123741007

namespace A325402

/-- `A175298(n)+and(n, A264619(n))-A325401(n)` -/
def P15320867291123741007.Spec : Prop :=
  ∀ n, P15320867291123741007.a n = A325402 n

end A325402

/-! ## A325402.P768475033560408504

`and(A145341(n+1), A175298(n))+n-A325401(n)`
-/

namespace A325402.P768475033560408504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145341 (n + 1)) (A175298 n) + (n : ℤ) - A325401 n

end

end A325402.P768475033560408504

namespace A325402

/-- `and(A145341(n+1), A175298(n))+n-A325401(n)` -/
def P768475033560408504.Spec : Prop :=
  ∀ n, P768475033560408504.a n = A325402 n

end A325402

/-! ## A325402.P13877100018175456720

`A175298(n)+A175920(n)-A175917(n)-A325401(n)`
-/

namespace A325402.P13877100018175456720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n + (A175920 n - A175917 n) - A325401 n

end

end A325402.P13877100018175456720

namespace A325402

/-- `A175298(n)+A175920(n)-A175917(n)-A325401(n)` -/
def P13877100018175456720.Spec : Prop :=
  ∀ n, P13877100018175456720.a n = A325402 n

end A325402

/-! ## A325402.P17976849510464832744

`A325401(2*n)+n-A325401(n)`
-/

namespace A325402.P17976849510464832744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * n) + (n : ℤ) - A325401 n

end

end A325402.P17976849510464832744

namespace A325402

/-- `A325401(2*n)+n-A325401(n)` -/
def P17976849510464832744.Spec : Prop :=
  ∀ n, P17976849510464832744.a n = A325402 n

end A325402

/-!
# A325403: Number of permutations of the multiset of prime factors of 2n whose first part is not 2.

The programs for A325403, the canonical program `A325403.P18375620770384998092` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325403 has offset 1).

The definition of A325403 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325392, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325403.P18375620770384998092

`A325392(2*(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A325403

/-- `A325392(2*(n+1))` -/
def P18375620770384998092.Spec : Prop :=
  ∀ n, P18375620770384998092.a n = A325403 (n + 1)

theorem P18375620770384998092.correct : P18375620770384998092.Spec := by
  intro n
  simp only [A325403, Nat.add_sub_cancel]

end A325403

/-! ## A325403.P5384479997892430712

`A008480(2*(n+1))-A008480(n+1)`
-/

namespace A325403.P5384479997892430712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (2 * (n + 1)) - A008480 (n + 1)

end

end A325403.P5384479997892430712

namespace A325403

/-- `A008480(2*(n+1))-A008480(n+1)` -/
def P5384479997892430712.Spec : Prop :=
  ∀ n, P5384479997892430712.a n = A325403 (n + 1)

end A325403

/-! ## A325403.P14743210418131446575

`A168324(2*(n+1))-∑{e}[n+1, #]!/∏{e}[n+1, #!]`
-/

namespace A325403.P14743210418131446575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168324 (2 * (n + 1)) : ℚ) - (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ)

end

end A325403.P14743210418131446575

namespace A325403

/-- `A168324(2*(n+1))-∑{e}[n+1, #]!/∏{e}[n+1, #!]` -/
def P14743210418131446575.Spec : Prop :=
  ∀ n, P14743210418131446575.a n = (A325403 (n + 1) : ℚ)

end A325403

/-! ## A325403.P7512269630477562930

`A335447(2*(n+1))-A335447(n+1)`
-/

namespace A325403.P7512269630477562930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (2 * (n + 1)) - A335447 (n + 1)

end

end A325403.P7512269630477562930

namespace A325403

/-- `A335447(2*(n+1))-A335447(n+1)` -/
def P7512269630477562930.Spec : Prop :=
  ∀ n, P7512269630477562930.a n = A325403 (n + 1)

end A325403

/-! ## A325403.P13655784097322375276

`A168324(A103517(n))-A168324(n+1)`
-/

namespace A325403.P13655784097322375276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (A103517 n).toNat - A168324 (n + 1)

end

end A325403.P13655784097322375276

namespace A325403

/-- `A168324(A103517(n))-A168324(n+1)` -/
def P13655784097322375276.Spec : Prop :=
  ∀ n, P13655784097322375276.a n = A325403 (n + 1)

end A325403

/-! ## A325403.P14042890720849769818

`A168324(2*(n+1))-(A335511(n+1)+A335510(n+1))`
-/

namespace A325403.P14042890720849769818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (2 * (n + 1)) - (A335511 (n + 1) + A335510 (n + 1))

end

end A325403.P14042890720849769818

namespace A325403

/-- `A168324(2*(n+1))-(A335511(n+1)+A335510(n+1))` -/
def P14042890720849769818.Spec : Prop :=
  ∀ n, P14042890720849769818.a n = A325403 (n + 1)

end A325403

/-! ## A325403.P3809808176113787794

`A168324(2*(n+1))-(A335521(n+1)+A335520(n+1))`
-/

namespace A325403.P3809808176113787794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (2 * (n + 1)) - (A335521 (n + 1) + A335520 (n + 1))

end

end A325403.P3809808176113787794

namespace A325403

/-- `A168324(2*(n+1))-(A335521(n+1)+A335520(n+1))` -/
def P3809808176113787794.Spec : Prop :=
  ∀ n, P3809808176113787794.a n = A325403 (n + 1)

end A325403

/-!
# A325406: Triangle read by rows where T(n,k) is the number of reversed integer partitions of n with k distinct differences of any degree.

The programs for A325406, there is no canonical definition to state claims against.
-/

/-! ## A325406.P3255971345180293112

`A004525(A327027(n))%A230775(n+1)`
-/

namespace A325406.P3255971345180293112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (A327027 n).toNat) (A230775 (n + 1))

end

end A325406.P3255971345180293112

/-! ## A325406.P17860088316330463567

`A004525(A327027(n))%A020483(A308682(n))`
-/

namespace A325406.P17860088316330463567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (A327027 n).toNat) (A020483 (A308682 n).toNat)

end

end A325406.P17860088316330463567

/-! ## A325406.P16304313116575165136

`A321100(lcm(4, A340556(n)))`
-/

namespace A325406.P16304313116575165136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321100 (Int.lcm 4 (A340556 n))

end

end A325406.P16304313116575165136

/-! ## A325406.P15087513845105723843

`A178045((5-A142071(n))²)`
-/

namespace A325406.P15087513845105723843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178045 ((5 - A142071 n) ^ 2).toNat

end

end A325406.P15087513845105723843

/-! ## A325406.P2655214832496798856

`A353849((xor(n, floor(n/2))+1)*A353859(n))`
-/

namespace A325406.P2655214832496798856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 ((Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1) * A353859 n).toNat

end

end A325406.P2655214832496798856

/-!
# A325407: Nonprime Heinz numbers of multiples of triangular partitions, or of finite arithmetic progressions with offset 0.

The programs for A325407, there is no canonical definition to state claims against.
-/

/-! ## A325407.P7732412890805267786

`filter[A325327(n+1), A005171(#)]`
-/

namespace A325407.P7732412890805267786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A325407.P7732412890805267786

/-! ## A325407.P15705575091298562009

`record[A288469(A325327(3*n+2))]`
-/

namespace A325407.P15705575091298562009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A325327 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325407.P15705575091298562009

/-! ## A325407.P8749195450479791376

`record[gcd(A003418(n), A325327(n+1))]`
-/

namespace A325407.P8749195450479791376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A325327 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325407.P8749195450479791376

/-!
# A325410: Smallest k such that the adjusted frequency depth of k! is n > 2.

The programs for A325410, there is no canonical definition to state claims against.
-/

/-! ## A325410.P14399429638599633131

`A307734(n+3)`
-/

namespace A325410.P14399429638599633131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307734 (n + 3)

end

end A325410.P14399429638599633131

/-! ## A325410.P1753459927187817078

`record[or(floor(acot(n)²), A307734(n))]`
-/

namespace A325410.P1753459927187817078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ (A307734 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325410.P1753459927187817078

/-! ## A325410.P446047543792469369

`record[or(A000038(n), A307734(n))]`
-/

namespace A325410.P446047543792469369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A307734 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325410.P446047543792469369

/-!
# A325413: Largest sum of the omega-sequence of an integer partition of n.

The programs for A325413, there is no canonical definition to state claims against.
-/

/-! ## A325413.P4735700020798018683

`lt[A263255(n), A065250(A171979(n))]`
-/

namespace A325413.P4735700020798018683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263255 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065250 (A171979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325413.P4735700020798018683

/-!
# A325414: Irregular triangle read by rows where T(n,k) is the number of integer partitions of n with omega-sequence summing to n.

The programs for A325414, there is no canonical definition to state claims against.
-/

/-! ## A325414.P14154864441816520600

`and(A124778(A124774(n)), A239086(n+1))`
-/

namespace A325414.P14154864441816520600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124778 (A124774 n).toNat) (A239086 (n + 1))

end

end A325414.P14154864441816520600

/-! ## A325414.P12457110774040174280

`and(A000034(A165878(n)), A239086(n+1))`
-/

namespace A325414.P12457110774040174280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 (A165878 n).toNat) (A239086 (n + 1))

end

end A325414.P12457110774040174280

/-! ## A325414.P1127535139402377709

`and(A005136(A139391(n+1)), A286581(n))`
-/

namespace A325414.P1127535139402377709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005136 (A139391 (n + 1)).toNat) (A286581 n)

end

end A325414.P1127535139402377709

/-! ## A325414.P2646548155605031742

`and(A005136(A139391(n+1)), A286599(n))`
-/

namespace A325414.P2646548155605031742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005136 (A139391 (n + 1)).toNat) (A286599 n)

end

end A325414.P2646548155605031742

/-! ## A325414.P891190868523794670

`and(A286581(n), A351241(A000010(n+1)))`
-/

namespace A325414.P891190868523794670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286581 n) (A351241 (A000010 (n + 1)).toNat)

end

end A325414.P891190868523794670

/-!
# A325417: a(n) is the least number not 2*a(m) or 3*a(m)+1 for any m < n.

The programs for A325417, there is no canonical definition to state claims against.
-/

/-! ## A325417.P2164496246512758427

`A325444(n)+a(n-1)` with `a(0)=1`
-/

namespace A325417.P2164496246512758427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325444 n + a (n - 1)

end

end A325417.P2164496246512758427

/-! ## A325417.P15618531106505500613

`∑[A325444(A028310(n))]-1`
-/

namespace A325417.P15618531106505500613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325444 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A325417.P15618531106505500613

/-! ## A325417.P5019203907639468886

`∑[A325444(A000038(n)²+n)]`
-/

namespace A325417.P5019203907639468886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325444 (A000038 n ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325417.P5019203907639468886

/-! ## A325417.P9419410363155266429

`∑[A325444(n+1)]+1-A325444(n+1)`
-/

namespace A325417.P9419410363155266429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A325444 (n + 1))

end

end A325417.P9419410363155266429

/-! ## A325417.P12840707068296801468

`eq[char[A325418(n+1)], A000007(n)]`
-/

namespace A325417.P12840707068296801468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325418 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325417.P12840707068296801468

/-! ## A325417.P18177654349471493637

`eq[char[A325418(n+1)], A000038(n)]`
-/

namespace A325417.P18177654349471493637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325418 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325417.P18177654349471493637

/-! ## A325417.P14934632043413481689

`∑[A325444(A233583(n+1))]-1`
-/

namespace A325417.P14934632043413481689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325444 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A325417.P14934632043413481689

/-! ## A325417.P11304824417517892678

`∑[A325444(A233583(n+1)+A000038(n))]`
-/

namespace A325417.P11304824417517892678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325444 (A233583 (n + 1) + A000038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325417.P11304824417517892678

/-!
# A325418: Complement of A325417.

The programs for A325418, there is no canonical definition to state claims against.
-/

/-! ## A325418.P605719907136413902

`A325445(n)+a(n-1)` with `a(0)=2`
-/

namespace A325418.P605719907136413902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A325445 n + a (n - 1)

end

end A325418.P605719907136413902

/-! ## A325418.P5152978723701009287

`∑[A325445(A028310(n))]`
-/

namespace A325418.P5152978723701009287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325445 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325418.P5152978723701009287

/-! ## A325418.P5393540405149051207

`∑[A325445(n+1)]+2-A325445(n+1)`
-/

namespace A325418.P5393540405149051207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A325445 (n + 1))

end

end A325418.P5393540405149051207

/-! ## A325418.P11872206202846404227

`∑[A325445(A008619(A004273(n)))]`
-/

namespace A325418.P11872206202846404227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325445 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325418.P11872206202846404227

/-! ## A325418.P10740635328202499147

`∑[A325445(A291290(A008486(n)))]`
-/

namespace A325418.P10740635328202499147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325445 (A291290 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325418.P10740635328202499147

/-! ## A325418.P14035170934887006302

`∑[A325445(A233583(n+1))]`
-/

namespace A325418.P14035170934887006302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325445 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325418.P14035170934887006302

/-! ## A325418.P3714533344984955031

`∑[A325445(A007318(∑[n]+1))]`
-/

namespace A325418.P3714533344984955031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325445 (A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325418.P3714533344984955031

/-! ## A325418.P3478470302959532780

`∑[A325445(A003056(A000124(n)))]`
-/

namespace A325418.P3478470302959532780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325445 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325418.P3478470302959532780

/-! ## A325418.P4879837108757646083

`∑[A325445(A003056(A133263(n)))]`
-/

namespace A325418.P4879837108757646083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325445 (A003056 (A133263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325418.P4879837108757646083

/-!
# A325419: a(n) is the least number not 2*a(m)+1 or 3*a(m) for any m < n.

The programs for A325419, there is no canonical definition to state claims against.
-/

/-! ## A325419.P5180260520123058995

`A325494(n)+a(n-1)` with `a(0)=1`
-/

namespace A325419.P5180260520123058995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325494 n + a (n - 1)

end

end A325419.P5180260520123058995

/-! ## A325419.P10362794490287149137

`∑[A325494(A000007(n)+n)]`
-/

namespace A325419.P10362794490287149137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325494 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325419.P10362794490287149137

/-! ## A325419.P2686499115646104371

`∑[A325494(xor(n, A000007(n)))]`
-/

namespace A325419.P2686499115646104371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325494 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325419.P2686499115646104371

/-! ## A325419.P4255169003088962416

`∑[A325494(n+1)]+1-A325494(n+1)`
-/

namespace A325419.P4255169003088962416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A325494 (n + 1))

end

end A325419.P4255169003088962416

/-! ## A325419.P7111748100000659214

`∑[A325494(gcd(n, A045662(n)))]`
-/

namespace A325419.P7111748100000659214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325494 (Int.gcd (n : ℤ) (A045662 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325419.P7111748100000659214

/-! ## A325419.P18118364544457723526

`∑[A325494(A077028(∑[n]+1))]`
-/

namespace A325419.P18118364544457723526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325494 (A077028 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325419.P18118364544457723526

/-!
# A325420: Complement of A325419.

The programs for A325420, there is no canonical definition to state claims against.
-/

/-! ## A325420.P4190492513081522512

`A010684(2*n)+comp[A325419(n+1)-1]`
-/

namespace A325420.P4190492513081522512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325419 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (2 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A325420.P4190492513081522512

/-! ## A325420.P6674950969901150891

`A038712(2*n+3)+comp[A325419(n+1)-1]`
-/

namespace A325420.P6674950969901150891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325419 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (2 * n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A325420.P6674950969901150891

/-! ## A325420.P6618910037392535731

`A028310(comp[A325419(n+1)-1])+1`
-/

namespace A325420.P6618910037392535731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325419 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A325420.P6618910037392535731

/-! ## A325420.P16094194423119467305

`eq[char[A325419(n+1)], A000007(n)]`
-/

namespace A325420.P16094194423119467305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325419 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325420.P16094194423119467305

/-! ## A325420.P12143941054074443000

`eq[char[A325419(n+1)], A000038(n)]`
-/

namespace A325420.P12143941054074443000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325419 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325420.P12143941054074443000

/-! ## A325420.P17034914989751918632

`A050603(A000290(n))+comp[A325419(n+1)-1]`
-/

namespace A325420.P17034914989751918632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325419 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A000290 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A325420.P17034914989751918632

/-! ## A325420.P17734033663060631708

`A325495(n)+a(n-1)` with `a(0)=3`
-/

namespace A325420.P17734033663060631708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A325495 n + a (n - 1)

end

end A325420.P17734033663060631708

/-! ## A325420.P1845454256064562595

`∑[A325495(round(sqrt(n²+1)))]+1`
-/

namespace A325420.P1845454256064562595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325495 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A325420.P1845454256064562595

/-! ## A325420.P18002489840686693152

`A325495(n)-A001489(a(n-1))` with `a(0)=3`
-/

namespace A325420.P18002489840686693152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A325495 n - A001489 (a (n - 1)).toNat

end

end A325420.P18002489840686693152

/-!
# A325421: Numbers k coprime to 10 such that there are exactly two values of A for which k^2+4*A and k^2-4*A are perfect squares.

The programs for A325421, the canonical program `A325421.P4803804597475767812` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325421 has offset 1).

The definition of A325421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325421.P4803804597475767812

`∩[A084646(n+1), A100490(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A325421

/-- `∩[A084646(n+1), A100490(n)]` -/
def P4803804597475767812.Spec : Prop :=
  ∀ n, (P4803804597475767812.a n : ℤ) = A325421 (n + 1)

theorem P4803804597475767812.correct : P4803804597475767812.Spec := by
  intro n
  simp only [A325421, Nat.add_sub_cancel]

end A325421

/-!
# A325422: Complement of A077477.

The programs for A325422, there is no canonical definition to state claims against.
-/

/-! ## A325422.P12774454234941298130

`A325497(n)+a(n-1)` with `a(0)=3`
-/

namespace A325422.P12774454234941298130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A325497 n + a (n - 1)

end

end A325422.P12774454234941298130

/-! ## A325422.P2199902162416224313

`∑[A325497(A028310(n))]+2`
-/

namespace A325422.P2199902162416224313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325497 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A325422.P2199902162416224313

/-! ## A325422.P411286081718998110

`eq[char[A077477(n+1)], A000007(n)]`
-/

namespace A325422.P411286081718998110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077477 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325422.P411286081718998110

/-! ## A325422.P6035044402880354328

`eq[char[A077477(n+1)], A000038(n)]`
-/

namespace A325422.P6035044402880354328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077477 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325422.P6035044402880354328

/-! ## A325422.P13796281328656899508

`∑[A325497(A233583(n+1))]+2`
-/

namespace A325422.P13796281328656899508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325497 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A325422.P13796281328656899508

/-!
# A325423: Numbers k such that sigma(2*k+1) >= sigma(2*k).

The programs for A325423, the canonical program `A325423.P4379105431595009186` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325423 has offset 1).

The definition of A325423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325423.P4379105431595009186

`lt[A260196(n), A340793(2*n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A325423

/-- `lt[A260196(n), A340793(2*n+1)]` -/
def P4379105431595009186.Spec : Prop :=
  ∀ n, (P4379105431595009186.a n : ℤ) = A325423 (n + 1)

theorem P4379105431595009186.correct : P4379105431595009186.Spec := by
  intro n
  simp only [A325423, Nat.add_sub_cancel]

end A325423

/-! ## A325423.P9285499284086509834

`lt[A153881(n+1), A340793(2*n+1)]`
-/

namespace A325423.P9285499284086509834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325423.P9285499284086509834

namespace A325423

/-- `lt[A153881(n+1), A340793(2*n+1)]` -/
def P9285499284086509834.Spec : Prop :=
  ∀ n, (P9285499284086509834.a n : ℤ) = A325423 (n + 1)

end A325423

/-! ## A325423.P7568924860005259128

`lt[A260196(n)*A340793(A005408(n)), 1]`
-/

namespace A325423.P7568924860005259128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n * A340793 (A005408 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325423.P7568924860005259128

namespace A325423

/-- `lt[A260196(n)*A340793(A005408(n)), 1]` -/
def P7568924860005259128.Spec : Prop :=
  ∀ n, (P7568924860005259128.a n : ℤ) = A325423 (n + 1)

end A325423

/-! ## A325423.P9485055909487428759

`lt[A008683(A008578(2*n+1)), A340793(2*n+1)]`
-/

namespace A325423.P9485055909487428759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008578 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325423.P9485055909487428759

namespace A325423

/-- `lt[A008683(A008578(2*n+1)), A340793(2*n+1)]` -/
def P9485055909487428759.Spec : Prop :=
  ∀ n, (P9485055909487428759.a n : ℤ) = A325423 (n + 1)

end A325423

/-! ## A325423.P1721547134814531496

`lt[A039653(2*n), A014681(A039653(2*n+1))]`
-/

namespace A325423.P1721547134814531496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A039653 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325423.P1721547134814531496

namespace A325423

/-- `lt[A039653(2*n), A014681(A039653(2*n+1))]` -/
def P1721547134814531496.Spec : Prop :=
  ∀ n, (P1721547134814531496.a n : ℤ) = A325423 (n + 1)

end A325423

/-! ## A325423.P7210037141433041984

`lt[A028310(A039653(n)), A143348(n+1)]/2`
-/

namespace A325423.P7210037141433041984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A039653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2

end

end A325423.P7210037141433041984

namespace A325423

/-- `lt[A028310(A039653(n)), A143348(n+1)]/2` -/
def P7210037141433041984.Spec : Prop :=
  ∀ n, P7210037141433041984.a n = (A325423 (n + 1) : ℚ)

end A325423

/-! ## A325423.P2608122605892738668

`lt[A028310(A039653(2*n)), A143348(2*n+1)]`
-/

namespace A325423.P2608122605892738668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A039653 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325423.P2608122605892738668

namespace A325423

/-- `lt[A028310(A039653(2*n)), A143348(2*n+1)]` -/
def P2608122605892738668.Spec : Prop :=
  ∀ n, (P2608122605892738668.a n : ℤ) = A325423 (n + 1)

end A325423

/-!
# A325424: Complement of A036668: numbers not of the form 2^i*3^j*k, i + j even, (k,6) = 1.

The programs for A325424, the canonical program `A325424.P14992744106236860470` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325424 has offset 1).

The definition of A325424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325424.P12123522521984804572

`lt[0, A182582(n+1)]+1`
-/

namespace A325424.P12123522521984804572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A325424.P12123522521984804572

namespace A325424

/-- `lt[0, A182582(n+1)]+1` -/
def P12123522521984804572.Spec : Prop :=
  ∀ n, (P12123522521984804572.a n : ℤ) = A325424 (n + 1)

end A325424

/-! ## A325424.P14992744106236860470

`A325499(n)+a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A325424

/-- `A325499(n)+a(n-1)` -/
def P14992744106236860470.Spec : Prop :=
  ∀ n, P14992744106236860470.a n = A325424 (n + 1)

theorem P14992744106236860470.correct : P14992744106236860470.Spec := by
  intro n
  simp only [A325424, Nat.add_sub_cancel]

end A325424

/-! ## A325424.P7486345716729262031

`∑[A325499(n+1)]+2-A325499(n+1)`
-/

namespace A325424.P7486345716729262031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A325499 (n + 1))

end

end A325424.P7486345716729262031

namespace A325424

/-- `∑[A325499(n+1)]+2-A325499(n+1)` -/
def P7486345716729262031.Spec : Prop :=
  ∀ n, P7486345716729262031.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P9599167559138107928

`filter[A084090(n+2), A182582(#)]`
-/

namespace A325424.P9599167559138107928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084090 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P9599167559138107928

namespace A325424

/-- `filter[A084090(n+2), A182582(#)]` -/
def P9599167559138107928.Spec : Prop :=
  ∀ n, P9599167559138107928.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P5351285191976251110

`filter[A047229(n+2), A182582(#)]`
-/

namespace A325424.P5351285191976251110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P5351285191976251110

namespace A325424

/-- `filter[A047229(n+2), A182582(#)]` -/
def P5351285191976251110.Spec : Prop :=
  ∀ n, P5351285191976251110.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P8254985031924136426

`filter[A389634(n+1), A182582(#)]`
-/

namespace A325424.P8254985031924136426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P8254985031924136426

namespace A325424

/-- `filter[A389634(n+1), A182582(#)]` -/
def P8254985031924136426.Spec : Prop :=
  ∀ n, P8254985031924136426.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P10314239815610651930

`filter[A391342(n+1), A182582(#)]`
-/

namespace A325424.P10314239815610651930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P10314239815610651930

namespace A325424

/-- `filter[A391342(n+1), A182582(#)]` -/
def P10314239815610651930.Spec : Prop :=
  ∀ n, P10314239815610651930.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P5892986228204584883

`filter[A080671(n+1), A182582(#)]`
-/

namespace A325424.P5892986228204584883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P5892986228204584883

namespace A325424

/-- `filter[A080671(n+1), A182582(#)]` -/
def P5892986228204584883.Spec : Prop :=
  ∀ n, P5892986228204584883.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P6004789117333648485

`filter[A276347(n+2), A182582(#)]`
-/

namespace A325424.P6004789117333648485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276347 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P6004789117333648485

namespace A325424

/-- `filter[A276347(n+2), A182582(#)]` -/
def P6004789117333648485.Spec : Prop :=
  ∀ n, P6004789117333648485.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P10569141399513387345

`filter[A080672(n+1), A182582(#)]`
-/

namespace A325424.P10569141399513387345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P10569141399513387345

namespace A325424

/-- `filter[A080672(n+1), A182582(#)]` -/
def P10569141399513387345.Spec : Prop :=
  ∀ n, P10569141399513387345.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P10939628748816453538

`filter[A070331(n+1), A182582(#)]`
-/

namespace A325424.P10939628748816453538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P10939628748816453538

namespace A325424

/-- `filter[A070331(n+1), A182582(#)]` -/
def P10939628748816453538.Spec : Prop :=
  ∀ n, P10939628748816453538.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P7356038162391452243

`filter[A232681(n+1), A182582(#)]`
-/

namespace A325424.P7356038162391452243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P7356038162391452243

namespace A325424

/-- `filter[A232681(n+1), A182582(#)]` -/
def P7356038162391452243.Spec : Prop :=
  ∀ n, P7356038162391452243.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P14490951650679690892

`filter[A151988(n+1), A182582(#)]`
-/

namespace A325424.P14490951650679690892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P14490951650679690892

namespace A325424

/-- `filter[A151988(n+1), A182582(#)]` -/
def P14490951650679690892.Spec : Prop :=
  ∀ n, P14490951650679690892.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P10922326805415265210

`filter[A047226(n+2), A182582(#)]`
-/

namespace A325424.P10922326805415265210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P10922326805415265210

namespace A325424

/-- `filter[A047226(n+2), A182582(#)]` -/
def P10922326805415265210.Spec : Prop :=
  ∀ n, P10922326805415265210.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P2872592570630771313

`filter[A047248(n+2), A182582(#)]`
-/

namespace A325424.P2872592570630771313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P2872592570630771313

namespace A325424

/-- `filter[A047248(n+2), A182582(#)]` -/
def P2872592570630771313.Spec : Prop :=
  ∀ n, P2872592570630771313.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P15922192708066122653

`filter[A153276(n+2), A182582(#)]`
-/

namespace A325424.P15922192708066122653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153276 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P15922192708066122653

namespace A325424

/-- `filter[A153276(n+2), A182582(#)]` -/
def P15922192708066122653.Spec : Prop :=
  ∀ n, P15922192708066122653.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P1662074023792073971

`filter[A171581(n+1), A182582(#)]`
-/

namespace A325424.P1662074023792073971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P1662074023792073971

namespace A325424

/-- `filter[A171581(n+1), A182582(#)]` -/
def P1662074023792073971.Spec : Prop :=
  ∀ n, P1662074023792073971.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P15093102266635767194

`filter[A173905(n+2), A182582(#)]`
-/

namespace A325424.P15093102266635767194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P15093102266635767194

namespace A325424

/-- `filter[A173905(n+2), A182582(#)]` -/
def P15093102266635767194.Spec : Prop :=
  ∀ n, P15093102266635767194.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P1548693486812705898

`filter[A073900(n+1), A182582(#)]`
-/

namespace A325424.P1548693486812705898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P1548693486812705898

namespace A325424

/-- `filter[A073900(n+1), A182582(#)]` -/
def P1548693486812705898.Spec : Prop :=
  ∀ n, P1548693486812705898.a n = A325424 (n + 1)

end A325424

/-! ## A325424.P2797305282760070351

`filter[A073899(n+1), A182582(#)]`
-/

namespace A325424.P2797305282760070351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A325424.P2797305282760070351

namespace A325424

/-- `filter[A073899(n+1), A182582(#)]` -/
def P2797305282760070351.Spec : Prop :=
  ∀ n, P2797305282760070351.a n = A325424 (n + 1)

end A325424

/-!
# A325425: a(n) is the least number not 2*a(m) or floor(3*a(m)/2) for any m < n.

The programs for A325425, there is no canonical definition to state claims against.
-/

/-! ## A325425.P2970169845601942297

`A325518(n)+a(n-1)` with `a(0)=1`
-/

namespace A325425.P2970169845601942297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325518 n + a (n - 1)

end

end A325425.P2970169845601942297

/-! ## A325425.P1399125819876500703

`∑[A325518(A028310(n))]-1`
-/

namespace A325425.P1399125819876500703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325518 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A325425.P1399125819876500703

/-! ## A325425.P7794745879965902394

`∑[A325518(A000038(n)²+n)]`
-/

namespace A325425.P7794745879965902394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325518 (A000038 n ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325425.P7794745879965902394

/-! ## A325425.P5527008524727666442

`∑[A325518(n+1)]+1-A325518(n+1)`
-/

namespace A325425.P5527008524727666442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A325518 (n + 1))

end

end A325425.P5527008524727666442

/-! ## A325425.P10184719142526109585

`eq[char[A325426(n+1)], A000007(n)]`
-/

namespace A325425.P10184719142526109585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325426 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325425.P10184719142526109585

/-! ## A325425.P1408535969432560907

`eq[char[A325426(n+1)], A000038(n)]`
-/

namespace A325425.P1408535969432560907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325426 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325425.P1408535969432560907

/-! ## A325425.P11431575046478559308

`∑[A325518(A233583(n+1))]-1`
-/

namespace A325425.P11431575046478559308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325518 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A325425.P11431575046478559308

/-! ## A325425.P7043023661602997782

`∑[A325518(A233583(n+1)+A000038(n))]`
-/

namespace A325425.P7043023661602997782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325518 (A233583 (n + 1) + A000038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325425.P7043023661602997782

/-!
# A325426: Complement of A325425.

The programs for A325426, there is no canonical definition to state claims against.
-/

/-! ## A325426.P16938071716105830753

`A325519(n)+a(n-1)` with `a(0)=2`
-/

namespace A325426.P16938071716105830753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A325519 n + a (n - 1)

end

end A325426.P16938071716105830753

/-! ## A325426.P8711675930253466917

`∑[A325519(n^(n²%(n+1)))]`
-/

namespace A325426.P8711675930253466917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325519 (n ^ (n ^ 2 % (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325426.P8711675930253466917

/-! ## A325426.P15815016928730274053

`∑[A325519(A000007(n)+n)]`
-/

namespace A325426.P15815016928730274053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325519 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325426.P15815016928730274053

/-! ## A325426.P7674107014881500183

`∑[A325519(1-A057427(n)+n)]`
-/

namespace A325426.P7674107014881500183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325519 (1 - A057427 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325426.P7674107014881500183

/-! ## A325426.P7176908430016409422

`∑[A325519(n+1)]+2-A325519(n+1)`
-/

namespace A325426.P7176908430016409422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A325519 (n + 1))

end

end A325426.P7176908430016409422

/-! ## A325426.P6215383126165986025

`∑[A325519(A123108(n)+A065033(n))]`
-/

namespace A325426.P6215383126165986025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325519 (A123108 n + A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325426.P6215383126165986025

/-! ## A325426.P11797466621433986166

`∑[A325519(A065033(2*n))]`
-/

namespace A325426.P11797466621433986166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325519 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325426.P11797466621433986166

/-! ## A325426.P13542286357698433098

`∑[A325519(A123108(2*n))]`
-/

namespace A325426.P13542286357698433098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325519 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325426.P13542286357698433098

/-! ## A325426.P16319550238844362139

`∑[A325519(A007318(∑[n]+1))]`
-/

namespace A325426.P16319550238844362139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325519 (A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325426.P16319550238844362139

/-!
# A325427: a(n) is the least number not 2*a(m)+1 or floor(3*a(m)/2) for any m < n.

The programs for A325427, there is no canonical definition to state claims against.
-/

/-! ## A325427.P3344290380197510094

`A325520(n)+a(n-1)` with `a(0)=1`
-/

namespace A325427.P3344290380197510094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325520 n + a (n - 1)

end

end A325427.P3344290380197510094

/-! ## A325427.P10610886224233018443

`∑[A325520(A028310(n))]`
-/

namespace A325427.P10610886224233018443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325520 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325427.P10610886224233018443

/-! ## A325427.P9385820606487689081

`∑[A325520(A000007(n)+n)]`
-/

namespace A325427.P9385820606487689081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325520 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325427.P9385820606487689081

/-! ## A325427.P8668854940272472556

`∑[A325520(gcd(n, A008486(n)))]`
-/

namespace A325427.P8668854940272472556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325520 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325427.P8668854940272472556

/-! ## A325427.P5194071836964469978

`∑[A325520(n+1)]+1-A325520(n+1)`
-/

namespace A325427.P5194071836964469978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A325520 (n + 1))

end

end A325427.P5194071836964469978

/-! ## A325427.P16887001251358090217

`∑[A325520(A123108(2*n))]`
-/

namespace A325427.P16887001251358090217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325520 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325427.P16887001251358090217

/-! ## A325427.P7900735878215047147

`∑[A325520(A003056(A000124(n)))]`
-/

namespace A325427.P7900735878215047147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325520 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325427.P7900735878215047147

/-! ## A325427.P8523600936177413488

`∑[A325520(2-A000122(n²)+n)]`
-/

namespace A325427.P8523600936177413488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325520 (2 - A000122 (n ^ 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325427.P8523600936177413488

/-! ## A325427.P9258028940699777298

`∑[A325520(A000122(n*(n+1))+n)]`
-/

namespace A325427.P9258028940699777298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325520 (A000122 (n * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325427.P9258028940699777298

/-!
# A325428: Complement of A325427.

The programs for A325428, there is no canonical definition to state claims against.
-/

/-! ## A325428.P15278516478217502754

`A325521(n)+a(n-1)` with `a(0)=3`
-/

namespace A325428.P15278516478217502754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A325521 n + a (n - 1)

end

end A325428.P15278516478217502754

/-! ## A325428.P13373554029711658191

`∑[A325521(A028310(n))]+1`
-/

namespace A325428.P13373554029711658191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325521 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A325428.P13373554029711658191

/-! ## A325428.P2597783740752796158

`∑[A325521(n+1)]+3-A325521(n+1)`
-/

namespace A325428.P2597783740752796158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 - A325521 (n + 1))

end

end A325428.P2597783740752796158

/-! ## A325428.P16096590131829886849

`eq[char[A325427(n+1)], A000007(n)]`
-/

namespace A325428.P16096590131829886849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325427 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325428.P16096590131829886849

/-! ## A325428.P17102035739747779456

`eq[char[A325427(n+1)], A000038(n)]`
-/

namespace A325428.P17102035739747779456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325427 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325428.P17102035739747779456

/-!
# A325429: a(n) is the least number not 3*a(m) or floor(3*a(m)/2) for any m < n.

The programs for A325429, there is no canonical definition to state claims against.
-/

/-! ## A325429.P3426111931647785251

`A325522(n)+a(n-1)` with `a(0)=1`
-/

namespace A325429.P3426111931647785251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325522 n + a (n - 1)

end

end A325429.P3426111931647785251

/-! ## A325429.P9529908450805657074

`comp[A325430(n+1)-1]+1`
-/

namespace A325429.P9529908450805657074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325430 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A325429.P9529908450805657074

/-! ## A325429.P5769871826860523137

`∑[A325522(A028310(n))]`
-/

namespace A325429.P5769871826860523137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325522 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325429.P5769871826860523137

/-! ## A325429.P8002211448795990457

`∑[A325522(gcd(n, A008706(n)))]`
-/

namespace A325429.P8002211448795990457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325522 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325429.P8002211448795990457

/-! ## A325429.P8456428339008827932

`∑[A325522(A004275(n+1)-n)]`
-/

namespace A325429.P8456428339008827932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325522 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325429.P8456428339008827932

/-! ## A325429.P2241459132205509032

`∑[A325522(n+1)]+1-A325522(n+1)`
-/

namespace A325429.P2241459132205509032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A325522 (n + 1))

end

end A325429.P2241459132205509032

/-! ## A325429.P15386501567831419159

`∑[A325522(A140106(n+2)+A140106(n+1)+1)]`
-/

namespace A325429.P15386501567831419159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325522 (A140106 (n + 2) + A140106 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325429.P15386501567831419159

/-! ## A325429.P8119606960670912153

`∑[A325522(A061395(A001747(n+1)))]`
-/

namespace A325429.P8119606960670912153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325522 (A061395 (A001747 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325429.P8119606960670912153

/-! ## A325429.P4181838781417120273

`∑[A325522(A008619(A004275(n)))]`
-/

namespace A325429.P4181838781417120273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325522 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325429.P4181838781417120273

/-! ## A325429.P14868308295707443623

`∑[A325522(A123108(2*n))]`
-/

namespace A325429.P14868308295707443623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325522 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325429.P14868308295707443623

/-! ## A325429.P15919279657466301370

`∑[A325522(A140106(2*n+1)+1)]`
-/

namespace A325429.P15919279657466301370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325522 (A140106 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325429.P15919279657466301370

/-! ## A325429.P16821631124098638685

`∑[A325522(A002260(A034856(n+1)))]`
-/

namespace A325429.P16821631124098638685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325522 (A002260 (A034856 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325429.P16821631124098638685

/-!
# A325430: Complement of A325429.

The programs for A325430, there is no canonical definition to state claims against.
-/

/-! ## A325430.P13554863777222489416

`A325523(n)+a(n-1)` with `a(0)=3`
-/

namespace A325430.P13554863777222489416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A325523 n + a (n - 1)

end

end A325430.P13554863777222489416

/-! ## A325430.P2194111251252497855

`∑[A325523(A028310(n))]`
-/

namespace A325430.P2194111251252497855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325523 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325430.P2194111251252497855

/-! ## A325430.P10133508845904065367

`∑[A325523(gcd(n, A008574(n)))]`
-/

namespace A325430.P10133508845904065367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325523 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325430.P10133508845904065367

/-! ## A325430.P10787484732022259773

`∑[A325523(n+1)]+3-A325523(n+1)`
-/

namespace A325430.P10787484732022259773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 - A325523 (n + 1))

end

end A325430.P10787484732022259773

/-! ## A325430.P13620495643607873875

`∑[A325523(A065033(2*n))]`
-/

namespace A325430.P13620495643607873875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325523 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325430.P13620495643607873875

/-! ## A325430.P7527923375796985967

`∑[A325523(A003056(∑[n]+1))]`
-/

namespace A325430.P7527923375796985967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325523 (A003056 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325430.P7527923375796985967

/-!
# A325431: a(n) is the least number not 3*a(m) or 4*a(m) for any m < n.

The programs for A325431, there is no canonical definition to state claims against.
-/

/-! ## A325431.P17400658786235820058

`A325524(n)+a(n-1)` with `a(0)=1`
-/

namespace A325431.P17400658786235820058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325524 n + a (n - 1)

end

end A325431.P17400658786235820058

/-! ## A325431.P9661228313510964012

`∑[A325524(floor(n*n/(n+1))+1)]`
-/

namespace A325431.P9661228313510964012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325524 (⌊(n : ℚ) * ((n : ℚ) / (n + 1 : ℚ))⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325431.P9661228313510964012

/-! ## A325431.P3172030807034819638

`∑[A325524(n+1)]+1-A325524(n+1)`
-/

namespace A325431.P3172030807034819638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A325524 (n + 1))

end

end A325431.P3172030807034819638

/-! ## A325431.P13468220244346753616

`eq[1, A134451(A042965(A097248(n+1)+1))]+1`
-/

namespace A325431.P13468220244346753616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A042965 (A097248 (n + 1) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325431.P13468220244346753616

/-! ## A325431.P16643385451672886730

`lt[A322869(n+1), A322869(3*(n+1))]+1`
-/

namespace A325431.P16643385451672886730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322869 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325431.P16643385451672886730

/-! ## A325431.P8577514080414815083

`record[A289438(A325432(n+1))]`
-/

namespace A325431.P8577514080414815083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (A325432 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325431.P8577514080414815083

/-! ## A325431.P11809978051698475294

`record[n+1-and(2, A048675(n+1))]`
-/

namespace A325431.P11809978051698475294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.land 2 (A048675 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325431.P11809978051698475294

/-! ## A325431.P8821233417683603034

`lt[(A156552(n+1)-A323905(n+1))%4, 2]+1`
-/

namespace A325431.P8821233417683603034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156552 (n + 1) - A323905 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325431.P8821233417683603034

/-! ## A325431.P10989911709682313877

`lt[(A323243(n+1)-A324865(n+1)-A323905(n+1))%4, 2]+1`
-/

namespace A325431.P10989911709682313877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323243 (n + 1) - A324865 (n + 1) - A323905 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325431.P10989911709682313877

/-! ## A325431.P18385387309592903602

`lt[A054841(n+1)%4, 2]+1`
-/

namespace A325431.P18385387309592903602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054841 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325431.P18385387309592903602

/-! ## A325431.P11369706317984217079

`lt[(A252754(A250245(n+1))-A323905(n+1))%4, 2]+1`
-/

namespace A325431.P11369706317984217079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252754 (A250245 (n + 1)).toNat - A323905 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325431.P11369706317984217079

/-!
# A325432: Complement of A325431.

The programs for A325432, there is no canonical definition to state claims against.
-/

/-! ## A325432.P3750221333377289823

`A325525(n)+a(n-1)` with `a(0)=3`
-/

namespace A325432.P3750221333377289823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A325525 n + a (n - 1)

end

end A325432.P3750221333377289823

/-! ## A325432.P4467816115638636589

`∑[A325525(A028310(n))]+2`
-/

namespace A325432.P4467816115638636589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325525 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A325432.P4467816115638636589

/-! ## A325432.P8815614025484035573

`eq[char[A325431(n+1)], A000007(n)]`
-/

namespace A325432.P8815614025484035573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325431 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325432.P8815614025484035573

/-! ## A325432.P10278149203686440481

`eq[char[A325431(n+1)], A000038(n)]`
-/

namespace A325432.P10278149203686440481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325431 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325432.P10278149203686440481

/-! ## A325432.P792836292052296269

`eq[0, A359378(A097248(n+1))]+1`
-/

namespace A325432.P792836292052296269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359378 (A097248 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325432.P792836292052296269

/-! ## A325432.P13801685615623607599

`eq[2, A134451(A042965(A097248(n+1)+1))]+1`
-/

namespace A325432.P13801685615623607599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A042965 (A097248 (n + 1) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325432.P13801685615623607599

/-! ## A325432.P9626810882081983898

`A000007(n)+∑[A325525(A233583(n+1))]`
-/

namespace A325432.P9626810882081983898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325525 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325432.P9626810882081983898

/-! ## A325432.P3028620544136035092

`eq[2, and(2, A048675(n+1))]+1`
-/

namespace A325432.P3028620544136035092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A048675 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325432.P3028620544136035092

/-!
# A325433: Triangle T read by rows: T(n,k) is the number of partitions of n in which k is the least integer that is not a part and there are more parts > k than there are < k (n >= k > 0).

The programs for A325433, there is no canonical definition to state claims against.
-/

/-! ## A325433.P8994589536069329455

`C(A122922(A130321(n)), A133819(n+1))`
-/

namespace A325433.P8994589536069329455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A122922 (A130321 n).toNat).toNat (A133819 (n + 1)).toNat

end

end A325433.P8994589536069329455

/-! ## A325433.P2570089875769220758

`C(A122922(A130321(n)), A209576(n+1))`
-/

namespace A325433.P2570089875769220758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A122922 (A130321 n).toNat).toNat (A209576 (n + 1)).toNat

end

end A325433.P2570089875769220758

/-! ## A325433.P18291201544413589096

`A000010(A061194(n+1))%A010766(n+1)`
-/

namespace A325433.P18291201544413589096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A061194 (n + 1)).toNat) (A010766 (n + 1))

end

end A325433.P18291201544413589096

/-! ## A325433.P5088148771416534089

`val(A328923(n), A134266(A133819(n+1)))`
-/

namespace A325433.P5088148771416534089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328923 n).toNat (A134266 (A133819 (n + 1)).toNat).toNat

end

end A325433.P5088148771416534089

/-! ## A325433.P10626002987518061775

`A000010(A108041(n))%A010766(n+1)`
-/

namespace A325433.P10626002987518061775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A108041 n).toNat) (A010766 (n + 1))

end

end A325433.P10626002987518061775

/-!
# A325434: Row sums of A325433.

The programs for A325434, there is no canonical definition to state claims against.
-/

/-! ## A325434.P3868773736658541620

`A347206(n+1)/2`
-/

namespace A325434.P3868773736658541620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347206 (n + 1) : ℚ) / 2

end

end A325434.P3868773736658541620

/-! ## A325434.P587720008163935114

`Δ[∑[A347206(n)]/2]`
-/

namespace A325434.P587720008163935114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347206 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325434.P587720008163935114

/-! ## A325434.P3247721781311864340

`A273943(A347206(n+1))`
-/

namespace A325434.P3247721781311864340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A347206 (n + 1)).toNat

end

end A325434.P3247721781311864340

/-! ## A325434.P5447264414312814391

`A004526(A347206(n+1)+1)`
-/

namespace A325434.P5447264414312814391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A347206 (n + 1) + 1).toNat

end

end A325434.P5447264414312814391

/-! ## A325434.P6476719435443087818

`A123108(A347206(n+1)+1)`
-/

namespace A325434.P6476719435443087818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A347206 (n + 1) + 1).toNat

end

end A325434.P6476719435443087818

/-!
# A325435: Numbers m such that m! / sigma(m) is an integer.

The programs for A325435, the canonical program `A325435.P4849477700169915760` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325435 has offset 1).

The definition of A325435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325435.P2873798401632814986

`comp[A325436(n+1)-1]+1`
-/

namespace A325435.P2873798401632814986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325436 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A325435.P2873798401632814986

namespace A325435

/-- `comp[A325436(n+1)-1]+1` -/
def P2873798401632814986.Spec : Prop :=
  ∀ n, (P2873798401632814986.a n : ℤ) = A325435 (n + 1)

end A325435

/-! ## A325435.P6251726521871689917

`A163162(ceil(cosh(sin(n))+n))`
-/

namespace A325435.P6251726521871689917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 ⌈Real.cosh (Real.sin (n : ℝ)) + (n : ℝ)⌉.toNat

end

end A325435.P6251726521871689917

namespace A325435

/-- `A163162(ceil(cosh(sin(n))+n))` -/
def P6251726521871689917.Spec : Prop :=
  ∀ n, P6251726521871689917.a n = A325435 (n + 1)

end A325435

/-! ## A325435.P3056004483449900417

`gcd(floor(acot(n)), A163162(n+2))`
-/

namespace A325435.P3056004483449900417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A163162 (n + 2))

end

end A325435.P3056004483449900417

namespace A325435

/-- `gcd(floor(acot(n)), A163162(n+2))` -/
def P3056004483449900417.Spec : Prop :=
  ∀ n, (P3056004483449900417.a n : ℤ) = A325435 (n + 1)

end A325435

/-! ## A325435.P3875050798853887386

`A163162(ceil(sin(n)²)+1+n)`
-/

namespace A325435.P3875050798853887386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (⌈Real.sin (n : ℝ) ^ 2⌉ + 1 + (n : ℤ)).toNat

end

end A325435.P3875050798853887386

namespace A325435

/-- `A163162(ceil(sin(n)²)+1+n)` -/
def P3875050798853887386.Spec : Prop :=
  ∀ n, P3875050798853887386.a n = A325435 (n + 1)

end A325435

/-! ## A325435.P4849477700169915760

`A163162(n+2-C(2, n+2))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A325435

/-- `A163162(n+2-C(2, n+2))` -/
def P4849477700169915760.Spec : Prop :=
  ∀ n, P4849477700169915760.a n = A325435 (n + 1)

theorem P4849477700169915760.correct : P4849477700169915760.Spec := by
  intro n
  simp only [A325435, Nat.add_sub_cancel]

end A325435

/-! ## A325435.P11820765194265063764

`A163162(A065475(n+1))`
-/

namespace A325435.P11820765194265063764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (A065475 (n + 1)).toNat

end

end A325435.P11820765194265063764

namespace A325435

/-- `A163162(A065475(n+1))` -/
def P11820765194265063764.Spec : Prop :=
  ∀ n, P11820765194265063764.a n = A325435 (n + 1)

end A325435

/-! ## A325435.P6456991815110417649

`A163162(A181440(n+2))`
-/

namespace A325435.P6456991815110417649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (A181440 (n + 2)).toNat

end

end A325435.P6456991815110417649

namespace A325435

/-- `A163162(A181440(n+2))` -/
def P6456991815110417649.Spec : Prop :=
  ∀ n, P6456991815110417649.a n = A325435 (n + 1)

end A325435

/-! ## A325435.P3646282180041703893

`A163162(A184985(n+2))`
-/

namespace A325435.P3646282180041703893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (A184985 (n + 2)).toNat

end

end A325435.P3646282180041703893

namespace A325435

/-- `A163162(A184985(n+2))` -/
def P3646282180041703893.Spec : Prop :=
  ∀ n, P3646282180041703893.a n = A325435 (n + 1)

end A325435

/-! ## A325435.P3925186076631419190

`A171526(A163162(n+2))`
-/

namespace A325435.P3925186076631419190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (A163162 (n + 2)).toNat

end

end A325435.P3925186076631419190

namespace A325435

/-- `A171526(A163162(n+2))` -/
def P3925186076631419190.Spec : Prop :=
  ∀ n, P3925186076631419190.a n = A325435 (n + 1)

end A325435

/-!
# A325436: Numbers m such that m! / sigma(m) is not an integer.

The programs for A325436, there is no canonical definition to state claims against.
-/

/-! ## A325436.P15924070331066134442

`A023194(A028310(n))+char[1]`
-/

namespace A325436.P15924070331066134442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (A028310 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A325436.P15924070331066134442

/-! ## A325436.P13077405502618864107

`A023194(A000007(n)+n)+char[1]`
-/

namespace A325436.P13077405502618864107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (A000007 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A325436.P13077405502618864107

/-! ## A325436.P13281349568499883885

`∪[A023194(n+1), A229092(n+1)]`
-/

namespace A325436.P13281349568499883885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325436.P13281349568499883885

/-! ## A325436.P17367810230307384101

`∪[A023194(n+1), A244113(n+1)]`
-/

namespace A325436.P17367810230307384101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325436.P17367810230307384101

/-! ## A325436.P16978607938983267802

`∪[A023194(n+1), A379989(n+1)]`
-/

namespace A325436.P16978607938983267802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325436.P16978607938983267802

/-!
# A325437: Final digit of primes of the form k^2 + 1.

The programs for A325437, the canonical program `A325437.P15815788262768055512` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325437 has offset 1).

The definition of A325437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325437.P15815788262768055512

`A002496(n+1)%10`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A325437

/-- `A002496(n+1)%10` -/
def P15815788262768055512.Spec : Prop :=
  ∀ n, P15815788262768055512.a n = A325437 (n + 1)

theorem P15815788262768055512.correct : P15815788262768055512.Spec := by
  intro n
  simp only [A325437, Nat.add_sub_cancel]

end A325437

/-! ## A325437.P14956971865792402441

`(A005574(n+1)²+1)%10`
-/

namespace A325437.P14956971865792402441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005574 (n + 1) ^ 2 + 1) 10

end

end A325437.P14956971865792402441

namespace A325437

/-- `(A005574(n+1)²+1)%10` -/
def P14956971865792402441.Spec : Prop :=
  ∀ n, P14956971865792402441.a n = A325437 (n + 1)

end A325437

/-! ## A325437.P11190978590884589651

`A163588(A065475(n+1))%10`
-/

namespace A325437.P11190978590884589651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163588 (A065475 (n + 1)).toNat) 10

end

end A325437.P11190978590884589651

namespace A325437

/-- `A163588(A065475(n+1))%10` -/
def P11190978590884589651.Spec : Prop :=
  ∀ n, P11190978590884589651.a n = A325437 (n + 1)

end A325437

/-! ## A325437.P6088771751020650895

`record[A089120(n+1)]%10`
-/

namespace A325437.P6088771751020650895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10

end

end A325437.P6088771751020650895

namespace A325437

/-- `record[A089120(n+1)]%10` -/
def P6088771751020650895.Spec : Prop :=
  ∀ n, P6088771751020650895.a n = A325437 (n + 1)

end A325437

/-! ## A325437.P12200249639100275025

`A008959(A005574(n+1))+1`
-/

namespace A325437.P12200249639100275025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008959 (A005574 (n + 1)).toNat + 1

end

end A325437.P12200249639100275025

namespace A325437

/-- `A008959(A005574(n+1))+1` -/
def P12200249639100275025.Spec : Prop :=
  ∀ n, P12200249639100275025.a n = A325437 (n + 1)

end A325437

/-! ## A325437.P13211973217747928908

`A002522(record[A247339(n+1)])%10`
-/

namespace A325437.P13211973217747928908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 10

end

end A325437.P13211973217747928908

namespace A325437

/-- `A002522(record[A247339(n+1)])%10` -/
def P13211973217747928908.Spec : Prop :=
  ∀ n, P13211973217747928908.a n = A325437 (n + 1)

end A325437

/-! ## A325437.P16575089632246889573

`p?[n²+1]%10`
-/

namespace A325437.P16575089632246889573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % 10

end

end A325437.P16575089632246889573

namespace A325437

/-- `p?[n²+1]%10` -/
def P16575089632246889573.Spec : Prop :=
  ∀ n, (P16575089632246889573.a n : ℤ) = A325437 (n + 1)

end A325437

/-! ## A325437.P17294614911793790147

`record[A020639(n*(n+2)+2)]%10`
-/

namespace A325437.P17294614911793790147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n * (n + 2) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10

end

end A325437.P17294614911793790147

namespace A325437

/-- `record[A020639(n*(n+2)+2)]%10` -/
def P17294614911793790147.Spec : Prop :=
  ∀ n, P17294614911793790147.a n = A325437 (n + 1)

end A325437

/-! ## A325437.P14809443536509918610

`A007652(A062325(n+1))`
-/

namespace A325437.P14809443536509918610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (A062325 (n + 1)).toNat

end

end A325437.P14809443536509918610

namespace A325437

/-- `A007652(A062325(n+1))` -/
def P14809443536509918610.Spec : Prop :=
  ∀ n, P14809443536509918610.a n = A325437 (n + 1)

end A325437

/-!
# A325438: Indices of primes of the form k^2 + 1 ending in 1.

The programs for A325438, the canonical program `A325438.P1688981022104594762` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325438 has offset 1).

The definition of A325438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325438.P1688981022104594762

`eq[1, A325437(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A325438

/-- `eq[1, A325437(n+1)]+1` -/
def P1688981022104594762.Spec : Prop :=
  ∀ n, (P1688981022104594762.a n : ℤ) = A325438 (n + 1)

theorem P1688981022104594762.correct : P1688981022104594762.Spec := by
  intro n
  simp only [A325438, Nat.add_sub_cancel]

end A325438

/-! ## A325438.P2350713254732964248

`eq[1, A163588(n+1)%10]`
-/

namespace A325438.P2350713254732964248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163588 (n + 1)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325438.P2350713254732964248

namespace A325438

/-- `eq[1, A163588(n+1)%10]` -/
def P2350713254732964248.Spec : Prop :=
  ∀ n, (P2350713254732964248.a n : ℤ) = A325438 (n + 1)

end A325438

/-! ## A325438.P14233705622030807483

`eq[1, A002496(n+1)%5]+1`
-/

namespace A325438.P14233705622030807483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002496 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325438.P14233705622030807483

namespace A325438

/-- `eq[1, A002496(n+1)%5]+1` -/
def P14233705622030807483.Spec : Prop :=
  ∀ n, (P14233705622030807483.a n : ℤ) = A325438 (n + 1)

end A325438

/-! ## A325438.P10953974399499508735

`eq[10, gcd(10, A005574(n+1))]+1`
-/

namespace A325438.P10953974399499508735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A005574 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325438.P10953974399499508735

namespace A325438

/-- `eq[10, gcd(10, A005574(n+1))]+1` -/
def P10953974399499508735.Spec : Prop :=
  ∀ n, (P10953974399499508735.a n : ℤ) = A325438 (n + 1)

end A325438

/-! ## A325438.P15292937230107381443

`eq[1, A325437(A000038(n)+n)]`
-/

namespace A325438.P15292937230107381443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325437 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325438.P15292937230107381443

namespace A325438

/-- `eq[1, A325437(A000038(n)+n)]` -/
def P15292937230107381443.Spec : Prop :=
  ∀ n, (P15292937230107381443.a n : ℤ) = A325438 (n + 1)

end A325438

/-! ## A325438.P6142649231516140866

`eq[1, A325437(A123108(2*n))]`
-/

namespace A325438.P6142649231516140866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325437 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325438.P6142649231516140866

namespace A325438

/-- `eq[1, A325437(A123108(2*n))]` -/
def P6142649231516140866.Spec : Prop :=
  ∀ n, (P6142649231516140866.a n : ℤ) = A325438 (n + 1)

end A325438

/-! ## A325438.P18272964977281160030

`eq[1, A325437(A233583(n+1))]`
-/

namespace A325438.P18272964977281160030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325437 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325438.P18272964977281160030

namespace A325438

/-- `eq[1, A325437(A233583(n+1))]` -/
def P18272964977281160030.Spec : Prop :=
  ∀ n, (P18272964977281160030.a n : ℤ) = A325438 (n + 1)

end A325438

/-!
# A325439: Indices of primes of the form k^2 + 1 ending in 7.

The programs for A325439, the canonical program `A325439.P483323475764833444` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325439 has offset 1).

The definition of A325439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6632 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325439.P483323475764833444

`eq[7, A325437(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A325439

/-- `eq[7, A325437(n+1)]+1` -/
def P483323475764833444.Spec : Prop :=
  ∀ n, (P483323475764833444.a n : ℤ) = A325439 (n + 1)

theorem P483323475764833444.correct : P483323475764833444.Spec := by
  intro n
  simp only [A325439, Nat.add_sub_cancel]

end A325439

/-! ## A325439.P1212151920677798412

`record[∑[Δ[A325437(n+2)]+1]]`
-/

namespace A325439.P1212151920677798412
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325437 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325439.P1212151920677798412

namespace A325439

/-- `record[∑[Δ[A325437(n+2)]+1]]` -/
def P1212151920677798412.Spec : Prop :=
  ∀ n, P1212151920677798412.a n = A325439 (n + 1)

end A325439

/-! ## A325439.P4994449878762499487

`eq[7, A325437(A000038(n)+n)]`
-/

namespace A325439.P4994449878762499487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325437 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325439.P4994449878762499487

namespace A325439

/-- `eq[7, A325437(A000038(n)+n)]` -/
def P4994449878762499487.Spec : Prop :=
  ∀ n, (P4994449878762499487.a n : ℤ) = A325439 (n + 1)

end A325439

/-! ## A325439.P13579632267113845973

`eq[7, A163588(n+1)%10]`
-/

namespace A325439.P13579632267113845973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163588 (n + 1)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325439.P13579632267113845973

namespace A325439

/-- `eq[7, A163588(n+1)%10]` -/
def P13579632267113845973.Spec : Prop :=
  ∀ n, (P13579632267113845973.a n : ℤ) = A325439 (n + 1)

end A325439

/-! ## A325439.P12140453000038283665

`eq[7, A325437(A123108(2*n))]`
-/

namespace A325439.P12140453000038283665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325437 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325439.P12140453000038283665

namespace A325439

/-- `eq[7, A325437(A123108(2*n))]` -/
def P12140453000038283665.Spec : Prop :=
  ∀ n, (P12140453000038283665.a n : ℤ) = A325439 (n + 1)

end A325439

/-! ## A325439.P15445203821344692031

`eq[7, A325437(A233583(n+1))]`
-/

namespace A325439.P15445203821344692031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325437 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325439.P15445203821344692031

namespace A325439

/-- `eq[7, A325437(A233583(n+1))]` -/
def P15445203821344692031.Spec : Prop :=
  ∀ n, (P15445203821344692031.a n : ℤ) = A325439 (n + 1)

end A325439

/-!
# A325440: a(n) is the least number not 2*a(m)-1 or 3*a(m)-1 for any m < n.

The programs for A325440, there is no canonical definition to state claims against.
-/

/-! ## A325440.P11957343681770471840

`A325530(n)+a(n-1)` with `a(0)=1`
-/

namespace A325440.P11957343681770471840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325530 n + a (n - 1)

end

end A325440.P11957343681770471840

/-! ## A325440.P223655986029858713

`∑[A325530(A000038(n)+n)]`
-/

namespace A325440.P223655986029858713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325530 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325440.P223655986029858713

/-! ## A325440.P12913868473220673707

`∑[A325530(xor(n, A000038(n)))]`
-/

namespace A325440.P12913868473220673707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325530 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325440.P12913868473220673707

/-! ## A325440.P10596822648214755262

`∑[A325530(n+1)]+1-A325530(n+1)`
-/

namespace A325440.P10596822648214755262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A325530 (n + 1))

end

end A325440.P10596822648214755262

/-! ## A325440.P9835562640221718434

`eq[char[A325441(n+1)], A000007(n)]`
-/

namespace A325440.P9835562640221718434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325441 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325440.P9835562640221718434

/-! ## A325440.P11820331598139017102

`∑[A325530(A233583(n+1)+A159075(n))]`
-/

namespace A325440.P11820331598139017102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325530 (A233583 (n + 1) + A159075 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325440.P11820331598139017102

/-! ## A325440.P5798132937038741266

`∑[A325530(A233583(2*n+1)-n)]`
-/

namespace A325440.P5798132937038741266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325530 (A233583 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325440.P5798132937038741266

/-!
# A325441: Complement of A325440.

The programs for A325441, there is no canonical definition to state claims against.
-/

/-! ## A325441.P3124013050848164697

`A325531(n)+a(n-1)` with `a(0)=2`
-/

namespace A325441.P3124013050848164697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A325531 n + a (n - 1)

end

end A325441.P3124013050848164697

/-! ## A325441.P11105771622948533157

`∑[A325531(A028310(n))]-1`
-/

namespace A325441.P11105771622948533157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325531 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A325441.P11105771622948533157

/-! ## A325441.P12569984215143452550

`∑[A325531(A000038(n)+n)]`
-/

namespace A325441.P12569984215143452550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325531 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325441.P12569984215143452550

/-! ## A325441.P11101976343928482351

`∑[A325531(xor(n, A000038(n)))]`
-/

namespace A325441.P11101976343928482351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325531 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325441.P11101976343928482351

/-! ## A325441.P5468480881348098135

`∑[A325531(n+1)]+2-A325531(n+1)`
-/

namespace A325441.P5468480881348098135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A325531 (n + 1))

end

end A325441.P5468480881348098135

/-! ## A325441.P14591098772291679609

`∑[A325531(A028310(n)+A000007(n))]`
-/

namespace A325441.P14591098772291679609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325531 (A028310 n + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325441.P14591098772291679609

/-! ## A325441.P15505449150096532001

`eq[char[A325440(n+1)], A000007(n)]`
-/

namespace A325441.P15505449150096532001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325440 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325441.P15505449150096532001

/-! ## A325441.P6083441839443574296

`eq[char[A325440(n+1)], A000038(n)]`
-/

namespace A325441.P6083441839443574296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325440 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325441.P6083441839443574296

/-! ## A325441.P6156088903873843555

`∑[A325531(A233583(n+1)+A159075(n))]`
-/

namespace A325441.P6156088903873843555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325531 (A233583 (n + 1) + A159075 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325441.P6156088903873843555

/-! ## A325441.P3062215479242709331

`∑[A325531(A233583(2*n+1)-n)]`
-/

namespace A325441.P3062215479242709331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325531 (A233583 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325441.P3062215479242709331

/-!
# A325442: a(n) is the least number not 2*a(m)-1 or 3*a(m) for any m < n.

The programs for A325442, there is no canonical definition to state claims against.
-/

/-! ## A325442.P17972877723638519379

`A325532(n)+a(n-1)` with `a(0)=1`
-/

namespace A325442.P17972877723638519379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325532 n + a (n - 1)

end

end A325442.P17972877723638519379

/-! ## A325442.P1247245109057851560

`comp[A325443(n+1)-1]+1`
-/

namespace A325442.P1247245109057851560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325443 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A325442.P1247245109057851560

/-! ## A325442.P8959849456713470814

`∑[A325532(A028310(n))]`
-/

namespace A325442.P8959849456713470814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325532 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325442.P8959849456713470814

/-! ## A325442.P11270663139336579300

`eq[char[A325443(n+1)], A010051(3*(n+1))]`
-/

namespace A325442.P11270663139336579300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325443 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325442.P11270663139336579300

/-! ## A325442.P11443410284944972633

`lt[A161801(n), A161809(A347157(3*n+1))]`
-/

namespace A325442.P11443410284944972633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161809 (A347157 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325442.P11443410284944972633

/-!
# A325443: Complement of A325442.

The programs for A325443, there is no canonical definition to state claims against.
-/

/-! ## A325443.P1999985406749601415

`A325533(n)+a(n-1)` with `a(0)=3`
-/

namespace A325443.P1999985406749601415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A325533 n + a (n - 1)

end

end A325443.P1999985406749601415

/-! ## A325443.P13668120453154984295

`∑[A325533(A028310(n))]`
-/

namespace A325443.P13668120453154984295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325533 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325443.P13668120453154984295

/-! ## A325443.P4444563784953744855

`∑[A325533(A000007(n)+n)]`
-/

namespace A325443.P4444563784953744855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325533 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325443.P4444563784953744855

/-! ## A325443.P13708377078602559464

`∑[A325533(gcd(n, A008458(n)))]`
-/

namespace A325443.P13708377078602559464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325533 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325443.P13708377078602559464

/-! ## A325443.P12021014440151474921

`∑[A325533(∏{d}[n, A001222(#)]+n)]`
-/

namespace A325443.P12021014440151474921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325533 (∏ d ∈ Nat.divisors (f2 n), A001222 d + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325443.P12021014440151474921

/-! ## A325443.P428689083847342304

`∑[A325533(A065033(2*n))]`
-/

namespace A325443.P428689083847342304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325533 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325443.P428689083847342304

/-! ## A325443.P15437281988246897228

`∑[A325533(n^A049687(∑[n]))]`
-/

namespace A325443.P15437281988246897228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325533 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A049687 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325443.P15437281988246897228

/-!
# A325444: Difference sequence of A325417.

The programs for A325444, there is no canonical definition to state claims against.
-/

/-! ## A325444.P2664669867313565753

`Δ[A325417(n+1)]`
-/

namespace A325444.P2664669867313565753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325444.P2664669867313565753

/-! ## A325444.P11450460874395125782

`A325417(n+2)-A325417(n+1)`
-/

namespace A325444.P11450460874395125782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325417 (n + 2) - A325417 (n + 1)

end

end A325444.P11450460874395125782

/-! ## A325444.P5734908290492348885

`Δ[record[A325417(A158416(n))]]`
-/

namespace A325444.P5734908290492348885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325417 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325444.P5734908290492348885

/-! ## A325444.P4340676702299488782

`Δ[record[A325417(A263111(n))]]`
-/

namespace A325444.P4340676702299488782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325417 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325444.P4340676702299488782

/-! ## A325444.P1753965106756047973

`Δ[record[A325417(A134478(n))]]`
-/

namespace A325444.P1753965106756047973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325417 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325444.P1753965106756047973

/-! ## A325444.P17648897713671582958

`Δ[record[A325417(A101504(n))]]`
-/

namespace A325444.P17648897713671582958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325417 (A101504 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325444.P17648897713671582958

/-! ## A325444.P951469150876735292

`Δ[record[A325417(A137734(n))]]`
-/

namespace A325444.P951469150876735292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325417 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325444.P951469150876735292

/-!
# A325445: Difference sequence of A325418.

The programs for A325445, there is no canonical definition to state claims against.
-/

/-! ## A325445.P12461360673907096687

`Δ[A325418(n+1)]`
-/

namespace A325445.P12461360673907096687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325445.P12461360673907096687

/-! ## A325445.P7772020748879360927

`A325418(n+2)-A325418(n+1)`
-/

namespace A325445.P7772020748879360927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325418 (n + 2) - A325418 (n + 1)

end

end A325445.P7772020748879360927

/-! ## A325445.P17372580085800704929

`A043318(A325418(n+2)%(A325418(n+1)+1)+1)`
-/

namespace A325445.P17372580085800704929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043318 (Int.tmod (A325418 (n + 2)) (A325418 (n + 1) + 1) + 1).toNat

end

end A325445.P17372580085800704929

/-! ## A325445.P8782134478478842042

`Δ[record[A325418(A158416(n))]]`
-/

namespace A325445.P8782134478478842042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325418 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325445.P8782134478478842042

/-! ## A325445.P4598431053223611934

`Δ[record[A325418(A263111(n))]]`
-/

namespace A325445.P4598431053223611934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325418 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325445.P4598431053223611934

/-! ## A325445.P7302880416855960303

`Δ[record[A325418(A109785(n))]]`
-/

namespace A325445.P7302880416855960303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325418 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325445.P7302880416855960303

/-! ## A325445.P14921706970624321187

`Δ[record[A325418(A137734(n))]]`
-/

namespace A325445.P14921706970624321187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325418 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325445.P14921706970624321187

/-!
# A325446: The unitary version of Kalmár's function: number of ordered factorizations of n into powers of distinct primes.

The programs for A325446, the canonical program `A325446.P518244642965140129` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325446 has offset 1).

The definition of A325446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325446.P8217359182173852850

`A050328(∏{p}[n+1, #])`
-/

namespace A325446.P8217359182173852850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050328 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A325446.P8217359182173852850

namespace A325446

/-- `A050328(∏{p}[n+1, #])` -/
def P8217359182173852850.Spec : Prop :=
  ∀ n, P8217359182173852850.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P2944489168861125553

`A074206(∏{p}[n+1, #])`
-/

namespace A325446.P2944489168861125553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A325446.P2944489168861125553

namespace A325446

/-- `A074206(∏{p}[n+1, #])` -/
def P2944489168861125553.Spec : Prop :=
  ∀ n, P2944489168861125553.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P518244642965140129

`A254578(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A325446

/-- `A254578(∏{p}[n+1, #])` -/
def P518244642965140129.Spec : Prop :=
  ∀ n, P518244642965140129.a n = A325446 (n + 1)

theorem P518244642965140129.correct : P518244642965140129.Spec := by
  intro n
  simp only [A325446, Nat.add_sub_cancel]

end A325446

/-! ## A325446.P12178793711137777136

`A329385(∏{p}[n+1, #])`
-/

namespace A325446.P12178793711137777136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329385 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A325446.P12178793711137777136

namespace A325446

/-- `A329385(∏{p}[n+1, #])` -/
def P12178793711137777136.Spec : Prop :=
  ∀ n, P12178793711137777136.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P15317852002353671145

`A333046(n+1)/(n+1)`
-/

namespace A325446.P15317852002353671145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333046 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A325446.P15317852002353671145

namespace A325446

/-- `A333046(n+1)/(n+1)` -/
def P15317852002353671145.Spec : Prop :=
  ∀ n, P15317852002353671145.a n = (A325446 (n + 1) : ℚ)

end A325446

/-! ## A325446.P7167601331721859191

`A002033(∏{p}[n+1, #]-1)`
-/

namespace A325446.P7167601331721859191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (∏ p ∈ Nat.primeFactors (f1 n), p - 1)

end

end A325446.P7167601331721859191

namespace A325446

/-- `A002033(∏{p}[n+1, #]-1)` -/
def P7167601331721859191.Spec : Prop :=
  ∀ n, P7167601331721859191.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P8370451944609199520

`A002033(n%∏{p}[n+1, #])`
-/

namespace A325446.P8370451944609199520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (n % (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A325446.P8370451944609199520

namespace A325446

/-- `A002033(n%∏{p}[n+1, #])` -/
def P8370451944609199520.Spec : Prop :=
  ∀ n, P8370451944609199520.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P11882027219220526022

`A000670(∑{e}[∏{p}[n+1, #], #])`
-/

namespace A325446.P11882027219220526022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A325446.P11882027219220526022

namespace A325446

/-- `A000670(∑{e}[∏{p}[n+1, #], #])` -/
def P11882027219220526022.Spec : Prop :=
  ∀ n, P11882027219220526022.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P888456096381659747

`A050328(A007947(n+1))`
-/

namespace A325446.P888456096381659747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050328 (A007947 (n + 1)).toNat

end

end A325446.P888456096381659747

namespace A325446

/-- `A050328(A007947(n+1))` -/
def P888456096381659747.Spec : Prop :=
  ∀ n, P888456096381659747.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P11157873492423171424

`A002033(A075423(n+1))`
-/

namespace A325446.P11157873492423171424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A075423 (n + 1)).toNat

end

end A325446.P11157873492423171424

namespace A325446

/-- `A002033(A075423(n+1))` -/
def P11157873492423171424.Spec : Prop :=
  ∀ n, P11157873492423171424.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P4779817608364505910

`A117621(A076618(n+1))`
-/

namespace A325446.P4779817608364505910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117621 (A076618 (n + 1)).toNat

end

end A325446.P4779817608364505910

namespace A325446

/-- `A117621(A076618(n+1))` -/
def P4779817608364505910.Spec : Prop :=
  ∀ n, P4779817608364505910.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P564147616456236231

`A050328(A329607(n+1))`
-/

namespace A325446.P564147616456236231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050328 (A329607 (n + 1)).toNat

end

end A325446.P564147616456236231

namespace A325446

/-- `A050328(A329607(n+1))` -/
def P564147616456236231.Spec : Prop :=
  ∀ n, P564147616456236231.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P8201861431481480907

`A050328(A334085(n+1))`
-/

namespace A325446.P8201861431481480907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050328 (A334085 (n + 1)).toNat

end

end A325446.P8201861431481480907

namespace A325446

/-- `A050328(A334085(n+1))` -/
def P8201861431481480907.Spec : Prop :=
  ∀ n, P8201861431481480907.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P16582144378485185627

`A002033(A007947(n+1)-1)`
-/

namespace A325446.P16582144378485185627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A007947 (n + 1) - 1).toNat

end

end A325446.P16582144378485185627

namespace A325446

/-- `A002033(A007947(n+1)-1)` -/
def P16582144378485185627.Spec : Prop :=
  ∀ n, P16582144378485185627.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P10849675779634667095

`A002033(A340679(n+1)-1)`
-/

namespace A325446.P10849675779634667095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A340679 (n + 1) - 1).toNat

end

end A325446.P10849675779634667095

namespace A325446

/-- `A002033(A340679(n+1)-1)` -/
def P10849675779634667095.Spec : Prop :=
  ∀ n, P10849675779634667095.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P8691873622018166016

`A002033(n%A340679(n+1))`
-/

namespace A325446.P8691873622018166016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (Int.tmod (n : ℤ) (A340679 (n + 1))).toNat

end

end A325446.P8691873622018166016

namespace A325446

/-- `A002033(n%A340679(n+1))` -/
def P8691873622018166016.Spec : Prop :=
  ∀ n, P8691873622018166016.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P7361483204158258274

`A000670(A008472(n+1)-A055631(n+1))`
-/

namespace A325446.P7361483204158258274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A008472 (n + 1) - A055631 (n + 1)).toNat

end

end A325446.P7361483204158258274

namespace A325446

/-- `A000670(A008472(n+1)-A055631(n+1))` -/
def P7361483204158258274.Spec : Prop :=
  ∀ n, P7361483204158258274.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P11924550463120012716

`A074206(A279350(A046523(n+1)))`
-/

namespace A325446.P11924550463120012716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A279350 (A046523 (n + 1)).toNat).toNat

end

end A325446.P11924550463120012716

namespace A325446

/-- `A074206(A279350(A046523(n+1)))` -/
def P11924550463120012716.Spec : Prop :=
  ∀ n, P11924550463120012716.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P1033144071299791340

`A105592(∑{p}[n+1, A001222(#)]^4)`
-/

namespace A325446.P1033144071299791340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105592 ((∑ p ∈ Nat.primeFactors (f1 n), A001222 p) ^ 4).toNat

end

end A325446.P1033144071299791340

namespace A325446

/-- `A105592(∑{p}[n+1, A001222(#)]^4)` -/
def P1033144071299791340.Spec : Prop :=
  ∀ n, P1033144071299791340.a n = A325446 (n + 1)

end A325446

/-! ## A325446.P4716913489856123336

`A105592(A001222(∏{p}[n+1, #])^4)`
-/

namespace A325446.P4716913489856123336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105592 (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ 4).toNat

end

end A325446.P4716913489856123336

namespace A325446

/-- `A105592(A001222(∏{p}[n+1, #])^4)` -/
def P4716913489856123336.Spec : Prop :=
  ∀ n, P4716913489856123336.a n = A325446 (n + 1)

end A325446

/-!
# A325448: Fibonacci numbers whose decimal expansion contains the digit 1.

The programs for A325448, there is no canonical definition to state claims against.
-/

/-! ## A325448.P13893174942743600241

`A256654(A123286(n)*A285563(n))`
-/

namespace A325448.P13893174942743600241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A123286 (n + 31) * A285563 n).toNat

end

end A325448.P13893174942743600241

/-! ## A325448.P4069270161857892731

`A256654(A001642(n+1)²)`
-/

namespace A325448.P4069270161857892731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A001642 (n + 1) ^ 2).toNat

end

end A325448.P4069270161857892731

/-! ## A325448.P6004806132012902919

`A000045(lt[1, A110504(3*n+4)])`
-/

namespace A325448.P6004806132012902919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110504 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A325448.P6004806132012902919

/-!
# A325450: Numbers k such that sum of digits (k) and sum of digits (k^2) is 9.

The programs for A325450, there is no canonical definition to state claims against.
-/

/-! ## A325450.P9289459312049062815

`∩[A052223(n+1), A061904(n+1)]`
-/

namespace A325450.P9289459312049062815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325450.P9289459312049062815

/-! ## A325450.P10661769477783561452

`∩[A052223(n+1), A262712(n+1)]`
-/

namespace A325450.P10661769477783561452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325450.P10661769477783561452

/-! ## A325450.P4456222422910193884

`∩[A052223(n+1), A058369(n+1)]`
-/

namespace A325450.P4456222422910193884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325450.P4456222422910193884

/-! ## A325450.P11665881598810571314

`∩[A049343(n+1), A061904(n+1)]`
-/

namespace A325450.P11665881598810571314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325450.P11665881598810571314

/-! ## A325450.P1080950701227430923

`∩[A049343(n+1), A262712(n+1)]`
-/

namespace A325450.P1080950701227430923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325450.P1080950701227430923

/-!
# A325451: Numbers k such that sum of digits (k) and sum of digits (k^2) is 10.

The programs for A325451, there is no canonical definition to state claims against.
-/

/-! ## A325451.P15520970892050929555

`∩[A262713(n+1), A326833(n+1)]`
-/

namespace A325451.P15520970892050929555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325451.P15520970892050929555

/-! ## A325451.P7109516565067830511

`∩[A052224(n+1), A262713(n+1)]`
-/

namespace A325451.P7109516565067830511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325451.P7109516565067830511

/-! ## A325451.P17076573707532532521

`∩[A262713(n+1), A326806(n+1)]`
-/

namespace A325451.P17076573707532532521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325451.P17076573707532532521

/-! ## A325451.P5410433137284801561

`∩[A052224(n+1), A058369(n+1)]`
-/

namespace A325451.P5410433137284801561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325451.P5410433137284801561

/-! ## A325451.P6225200040032543388

`∩[A052224(n+1), A268135(n+1)]`
-/

namespace A325451.P6225200040032543388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325451.P6225200040032543388

/-!
# A325452: G.f. A(x) satisfies: Sum_{n>=0} x^n * A(x)^(n*(n+1)/2) = Sum_{n>=0} x^n / [Product_{k=1..n} 1 - k*x].

The programs for A325452, there is no canonical definition to state claims against.
-/

/-! ## A325452.P17860459370246193406

`A186444(A213094(n)+2)`
-/

namespace A325452.P17860459370246193406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186444 (A213094 n + 2).toNat

end

end A325452.P17860459370246193406

/-! ## A325452.P404475727194225669

`A002264(or(3, A268699(n)))`
-/

namespace A325452.P404475727194225669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lor 3 (A268699 n)).toNat

end

end A325452.P404475727194225669

/-! ## A325452.P11984442522490537588

`A341440(A351150(n)-A341439(n+1))`
-/

namespace A325452.P11984442522490537588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341440 (A351150 n - A341439 (n + 1)).toNat

end

end A325452.P11984442522490537588

/-!
# A325453: G.f. A(x) satisfies: Sum_{n>=0} x^n * A(x)^(n^2) = Sum_{n>=0} x^n / [Product_{k=1..n} 1 - (2*k-1)*x].

The programs for A325453, there is no canonical definition to state claims against.
-/

/-! ## A325453.P8688353162365950431

`A002264(or(2, A216373(n)))`
-/

namespace A325453.P8688353162365950431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lor 2 (A216373 n)).toNat

end

end A325453.P8688353162365950431

/-! ## A325453.P13516867674027047514

`A004523(A002720(comp[2*n+3]+1-n))`
-/

namespace A325453.P13516867674027047514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A002720 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (1 - (n : ℤ))).toNat).toNat

end

end A325453.P13516867674027047514

/-! ## A325453.P2647058084045999179

`A004526(A302101(n)-A120304(n))`
-/

namespace A325453.P2647058084045999179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A302101 n - A120304 n).toNat

end

end A325453.P2647058084045999179

/-!
# A325454: a(n) is the digit sum of the n-th Niven number (or Harshad number).

The programs for A325454, there is no canonical definition to state claims against.
-/

/-! ## A325454.P3272036873438278801

`A005349(n+1)/A113315(n+1)`
-/

namespace A325454.P3272036873438278801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005349 (n + 1) : ℚ) / (A113315 (n + 1) : ℚ)

end

end A325454.P3272036873438278801

/-! ## A325454.P8631523434274726495

`A007953(A005349(n+1))`
-/

namespace A325454.P8631523434274726495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A005349 (n + 1)).toNat

end

end A325454.P8631523434274726495

/-! ## A325454.P7955344744849718551

`∑{digits}[A082516(n)+a(n-1), #]` with `a(0)=1`
-/

namespace A325454.P7955344744849718551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A082516 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A325454.P7955344744849718551

/-! ## A325454.P4382179452305073040

`∑[A082516(A028310(n))]/A113315(n+1)`
-/

namespace A325454.P4382179452305073040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082516 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A113315 (n + 1) : ℚ)

end

end A325454.P4382179452305073040

/-! ## A325454.P13306686668507987120

`∪[A100432(n+1), A100433(n+1)]/A113315(n+1)`
-/

namespace A325454.P13306686668507987120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100433 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A113315 (n + 1) : ℚ)

end

end A325454.P13306686668507987120

/-! ## A325454.P9207971681984430028

`∪[A101813(n+1), A101814(n+1)]/A113315(n+1)`
-/

namespace A325454.P9207971681984430028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101814 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A113315 (n + 1) : ℚ)

end

end A325454.P9207971681984430028

/-! ## A325454.P2958594148469434958

`∑{digits}[eq[0, A070635(n+1)]+1, #]`
-/

namespace A325454.P2958594148469434958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A325454.P2958594148469434958

/-! ## A325454.P2361861947302586197

`∑{digits}[eq[1, A065518(n+1)]+1, #]`
-/

namespace A325454.P2361861947302586197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A325454.P2361861947302586197

/-! ## A325454.P15140913756914070295

`∑{digits}[lt[A065518(2*n-n+1), 2]+1, #]`
-/

namespace A325454.P15140913756914070295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 ((2 * n : ℤ) - (n : ℤ) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A325454.P15140913756914070295

/-! ## A325454.P3437769676363025913

`∑{digits}[lt[A070635(abs(1-n)+2)+1, 2]+1, #]`
-/

namespace A325454.P3437769676363025913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (|1 - (n : ℤ)| + 2).toNat + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A325454.P3437769676363025913

/-! ## A325454.P3004678950665081106

`A007953(eq[0, A070635(n+1)]+1)`
-/

namespace A325454.P3004678950665081106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A325454.P3004678950665081106

/-! ## A325454.P12430215633132823567

`A007953(eq[1, A065518(n+1)]+1)`
-/

namespace A325454.P12430215633132823567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A325454.P12430215633132823567

/-! ## A325454.P18399482103483176789

`A007953(lt[A070635(n+1), 1]+1)`
-/

namespace A325454.P18399482103483176789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A325454.P18399482103483176789

/-! ## A325454.P1788051183841542399

`A007953(lt[A065518(n+1), 2]+1)`
-/

namespace A325454.P1788051183841542399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A325454.P1788051183841542399

/-! ## A325454.P13551002829649413227

`A066750(A005349(2*n+1-n))`
-/

namespace A325454.P13551002829649413227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066750 (A005349 (2 * n + 1 - n)).toNat

end

end A325454.P13551002829649413227

/-! ## A325454.P9907118653027304843

`record[A360074(n+1)]/A113315(n+1)`
-/

namespace A325454.P9907118653027304843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A113315 (n + 1) : ℚ)

end

end A325454.P9907118653027304843

/-! ## A325454.P14982059617075738299

`A066750(record[A066578(n+1)*A066750(n+1)])`
-/

namespace A325454.P14982059617075738299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066578 (n + 1) * A066750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066750 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A325454.P14982059617075738299

/-! ## A325454.P13163776091001499817

`A169805(lt[A070635(abs(1-n)+2)+1, 2]+1)/2`
-/

namespace A325454.P13163776091001499817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (|1 - (n : ℤ)| + 2).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℚ) / 2

end

end A325454.P13163776091001499817

/-! ## A325454.P11900704061027971382

`A004092(5*A005349(n+1))`
-/

namespace A325454.P11900704061027971382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A005349 (n + 1)).toNat

end

end A325454.P11900704061027971382

/-!
# A325455: Triangle read by rows: T(n,k) is the number of simple connected graphs on n unlabeled nodes with circumference k, (n >= 3, k >= 3).

The programs for A325455, there is no canonical definition to state claims against.
-/

/-! ## A325455.P3202591245168254907

`A071189(A000108(n))*A325684(n)`
-/

namespace A325455.P3202591245168254907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071189 (A000108 n).toNat * A325684 n

end

end A325455.P3202591245168254907

/-!
# A325456: Heinz numbers of integer partitions with strictly increasing differences.

The programs for A325456, there is no canonical definition to state claims against.
-/

/-! ## A325456.P7118458176120231510

`filter[A342523(n+1), A212793(#)]`
-/

namespace A325456.P7118458176120231510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A325456.P7118458176120231510

/-! ## A325456.P34469334329707730

`filter[A342523(n+1), A359471(#)]`
-/

namespace A325456.P34469334329707730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A325456.P34469334329707730

/-! ## A325456.P10698740565604730219

`∪[A026666(n), A342524(n+1)]`
-/

namespace A325456.P10698740565604730219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026666 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325456.P10698740565604730219

/-! ## A325456.P697544219805576006

`A325368(A209061(n+1)+A094496(n+3))`
-/

namespace A325456.P697544219805576006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (A209061 (n + 1) + A094496 (n + 3)).toNat

end

end A325456.P697544219805576006

/-! ## A325456.P16305153778203113855

`A342524(n+1)%A213300(n+1)`
-/

namespace A325456.P16305153778203113855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342524 (n + 1)) (A213300 (n + 1))

end

end A325456.P16305153778203113855

/-!
# A325457: Heinz numbers of integer partitions with strictly decreasing differences.

The programs for A325457, there is no canonical definition to state claims against.
-/

/-! ## A325457.P493039983870969820

`A342525(A004830(n+2))`
-/

namespace A325457.P493039983870969820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (A004830 (n + 2)).toNat

end

end A325457.P493039983870969820

/-! ## A325457.P13830838584762376446

`∩[A160453(n+1), A342525(n+1)]`
-/

namespace A325457.P13830838584762376446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325457.P13830838584762376446

/-! ## A325457.P11703470306180734990

`∪[A229027(n+1), A325399(n+1)]`
-/

namespace A325457.P11703470306180734990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325457.P11703470306180734990

/-! ## A325457.P13549944191309079094

`A342525(comp[A061978(2*n+1)-A031443(n+1)])`
-/

namespace A325457.P13549944191309079094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061978 (2 * n + 1) - A031443 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A325457.P13549944191309079094

/-! ## A325457.P9635475195066031895

`A342525(comp[A000045(n)-∑[n]])`
-/

namespace A325457.P9635475195066031895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A325457.P9635475195066031895

/-! ## A325457.P4169654674960131047

`∩[A325361(n+1), A325368(n+1)]`
-/

namespace A325457.P4169654674960131047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325457.P4169654674960131047

/-! ## A325457.P9313413581032831332

`∩[A325368(n+1), A342525(n+1)]`
-/

namespace A325457.P9313413581032831332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325457.P9313413581032831332

/-!
# A325458: Triangle read by rows where T(n,k) is the number of integer partitions of n with largest hook of size k, i.e., with (largest part) + (number of parts) - 1 = k.

The programs for A325458, there is no canonical definition to state claims against.
-/

/-! ## A325458.P15482743477091496128

`A259481(A061579(n)+1-ceil(sin(n)²))`
-/

namespace A325458.P15482743477091496128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A061579 n + 1 - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A325458.P15482743477091496128

/-! ## A325458.P15575056765832192094

`A259481(A028310(∑[2*n]%comp[∑[n]]))`
-/

namespace A325458.P15575056765832192094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A028310 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

end

end A325458.P15575056765832192094

/-! ## A325458.P6046900486267860885

`A259481(A061579(n)+A000007(n))`
-/

namespace A325458.P6046900486267860885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A061579 n + A000007 n).toNat

end

end A325458.P6046900486267860885

/-! ## A325458.P9402293701366455682

`A259481(A114327(A028310(n))+n)`
-/

namespace A325458.P9402293701366455682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A114327 (A028310 n).toNat + (n : ℤ)).toNat

end

end A325458.P9402293701366455682

/-! ## A325458.P12731363042322729498

`A259481(or(A000007(n), A061579(n)))`
-/

namespace A325458.P12731363042322729498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (Int.lor (A000007 n) (A061579 n)).toNat

end

end A325458.P12731363042322729498

/-! ## A325458.P4811793454612186498

`A259481(xor(A000007(n), A061579(n)))`
-/

namespace A325458.P4811793454612186498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (Int.xor (A000007 n) (A061579 n)).toNat

end

end A325458.P4811793454612186498

/-! ## A325458.P3016553547588896630

`A259481(A061579(n)^A178334(n))`
-/

namespace A325458.P3016553547588896630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (SequenceMachineLib.roundAway ((A061579 n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A325458.P3016553547588896630

/-! ## A325458.P4970026719681533442

`A259481(A137735(A061579(n)²))`
-/

namespace A325458.P4970026719681533442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A137735 (A061579 n ^ 2).toNat).toNat

end

end A325458.P4970026719681533442

/-!
# A325459: Sum of numbers of nontrivial divisors (greater than 1 and less than k) of k for k = 1..n.

The programs for A325459, the canonical program `A325459.P11168469447053430677` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325459 has offset 0).

The definition of A325459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325459.P11168469447053430677

`A070824(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A325459

/-- `A070824(n)+a(n-1)` -/
def P11168469447053430677.Spec : Prop :=
  ∀ n, P11168469447053430677.a n = A325459 n

theorem P11168469447053430677.correct : P11168469447053430677.Spec := by
  intro n
  simp only [A325459]

end A325459

/-! ## A325459.P8018541652342702043

`∑[A070824(abs(1-n)+1)]`
-/

namespace A325459.P8018541652342702043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325459.P8018541652342702043

namespace A325459

/-- `∑[A070824(abs(1-n)+1)]` -/
def P8018541652342702043.Spec : Prop :=
  ∀ n, P8018541652342702043.a n = A325459 n

end A325459

/-! ## A325459.P5117052725157632628

`A006218(n)-comp[2*(n+1)]`
-/

namespace A325459.P5117052725157632628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A325459.P5117052725157632628

namespace A325459

/-- `A006218(n)-comp[2*(n+1)]` -/
def P5117052725157632628.Spec : Prop :=
  ∀ n, P5117052725157632628.a n = A325459 n

end A325459

/-! ## A325459.P13436649320738417927

`∑[floor(n/(n+1)*A032741(n))]`
-/

namespace A325459.P13436649320738417927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (n + 1 : ℚ) * (A032741 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325459.P13436649320738417927

namespace A325459

/-- `∑[floor(n/(n+1)*A032741(n))]` -/
def P13436649320738417927.Spec : Prop :=
  ∀ n, P13436649320738417927.a n = A325459 n

end A325459

/-! ## A325459.P15659696715822913265

`a(n-1)+A000005(n)-2` with `a(0)=0, a(1)=0`
-/

namespace A325459.P15659696715822913265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + (A000005 n - 2)

end

end A325459.P15659696715822913265

namespace A325459

/-- `a(n-1)+A000005(n)-2` -/
def P15659696715822913265.Spec : Prop :=
  ∀ n, P15659696715822913265.a n = A325459 n

end A325459

/-! ## A325459.P10426934184048331120

`∑[A000005(C(2, n+1)+n)-2]`
-/

namespace A325459.P10426934184048331120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose 2 (n + 1) + n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325459.P10426934184048331120

namespace A325459

/-- `∑[A000005(C(2, n+1)+n)-2]` -/
def P10426934184048331120.Spec : Prop :=
  ∀ n, P10426934184048331120.a n = A325459 n

end A325459

/-! ## A325459.P5766275419135712866

`A054519(n)-A004277(n)`
-/

namespace A325459.P5766275419135712866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - A004277 n

end

end A325459.P5766275419135712866

namespace A325459

/-- `A054519(n)-A004277(n)` -/
def P5766275419135712866.Spec : Prop :=
  ∀ n, P5766275419135712866.a n = A325459 n

end A325459

/-! ## A325459.P4163663680076558225

`A106633(n)-A008574(n)`
-/

namespace A325459.P4163663680076558225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106633 n - A008574 n

end

end A325459.P4163663680076558225

namespace A325459

/-- `A106633(n)-A008574(n)` -/
def P4163663680076558225.Spec : Prop :=
  ∀ n, P4163663680076558225.a n = A325459 n

end A325459

/-! ## A325459.P17063090925010548667

`∑[A289207(A032741(n)+1)]`
-/

namespace A325459.P17063090925010548667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A032741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325459.P17063090925010548667

namespace A325459

/-- `∑[A289207(A032741(n)+1)]` -/
def P17063090925010548667.Spec : Prop :=
  ∀ n, P17063090925010548667.a n = A325459 n

end A325459

/-! ## A325459.P4405297147418668099

`A006590(n+1)-A008486(n)`
-/

namespace A325459.P4405297147418668099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) - A008486 n

end

end A325459.P4405297147418668099

namespace A325459

/-- `A006590(n+1)-A008486(n)` -/
def P4405297147418668099.Spec : Prop :=
  ∀ n, P4405297147418668099.a n = A325459 n

end A325459

/-! ## A325459.P7085382358301432015

`A054519(n)-A004275(n+1)`
-/

namespace A325459.P7085382358301432015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - A004275 (n + 1)

end

end A325459.P7085382358301432015

namespace A325459

/-- `A054519(n)-A004275(n+1)` -/
def P7085382358301432015.Spec : Prop :=
  ∀ n, P7085382358301432015.a n = A325459 n

end A325459

/-! ## A325459.P13083822081117750568

`A054519(n)-(A004273(n)+1)`
-/

namespace A325459.P13083822081117750568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - (A004273 n + 1)

end

end A325459.P13083822081117750568

namespace A325459

/-- `A054519(n)-(A004273(n)+1)` -/
def P13083822081117750568.Spec : Prop :=
  ∀ n, P13083822081117750568.a n = A325459 n

end A325459

/-! ## A325459.P16142773283667569966

`A054519(n)+n-A008486(n)`
-/

namespace A325459.P16142773283667569966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n + ((n : ℤ) - A008486 n)

end

end A325459.P16142773283667569966

namespace A325459

/-- `A054519(n)+n-A008486(n)` -/
def P16142773283667569966.Spec : Prop :=
  ∀ n, P16142773283667569966.a n = A325459 n

end A325459

/-! ## A325459.P252369888455379350

`∑[A032741(n)+1]-A004277(n)`
-/

namespace A325459.P252369888455379350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004277 n

end

end A325459.P252369888455379350

namespace A325459

/-- `∑[A032741(n)+1]-A004277(n)` -/
def P252369888455379350.Spec : Prop :=
  ∀ n, P252369888455379350.a n = A325459 n

end A325459

/-! ## A325459.P6980531983204550773

`∑[A325765(n)]-(A325765(n)+n)`
-/

namespace A325459.P6980531983204550773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A325765 n + (n : ℤ))

end

end A325459.P6980531983204550773

namespace A325459

/-- `∑[A325765(n)]-(A325765(n)+n)` -/
def P6980531983204550773.Spec : Prop :=
  ∀ n, P6980531983204550773.a n = A325459 n

end A325459

/-! ## A325459.P1103326824882930937

`∑[A032741(n)]+n-record[A006257(n)]`
-/

namespace A325459.P1103326824882930937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A325459.P1103326824882930937

namespace A325459

/-- `∑[A032741(n)]+n-record[A006257(n)]` -/
def P1103326824882930937.Spec : Prop :=
  ∀ n, P1103326824882930937.a n = A325459 n

end A325459

/-! ## A325459.P14492995124341295927

`∑[A070824(n+1)]-A070824(n+1)`
-/

namespace A325459.P14492995124341295927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A070824 (n + 1)

end

end A325459.P14492995124341295927

namespace A325459

/-- `∑[A070824(n+1)]-A070824(n+1)` -/
def P14492995124341295927.Spec : Prop :=
  ∀ n, P14492995124341295927.a n = A325459 n

end A325459

/-! ## A325459.P3815727341919877023

`A002541(n+1)-(A070824(n+1)+n)`
-/

namespace A325459.P3815727341919877023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1) - (A070824 (n + 1) + (n : ℤ))

end

end A325459.P3815727341919877023

namespace A325459

/-- `A002541(n+1)-(A070824(n+1)+n)` -/
def P3815727341919877023.Spec : Prop :=
  ∀ n, P3815727341919877023.a n = A325459 n

end A325459

/-! ## A325459.P16242370991299336647

`∑[A000005(n+1)]-(A004273(n)+A000005(n+1))`
-/

namespace A325459.P16242370991299336647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A004273 n + A000005 (n + 1))

end

end A325459.P16242370991299336647

namespace A325459

/-- `∑[A000005(n+1)]-(A004273(n)+A000005(n+1))` -/
def P16242370991299336647.Spec : Prop :=
  ∀ n, P16242370991299336647.a n = A325459 n

end A325459

/-! ## A325459.P9366193051509584996

`eq[1, A027751(n+1)]-n`
-/

namespace A325459.P9366193051509584996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A325459.P9366193051509584996

namespace A325459

/-- `eq[1, A027751(n+1)]-n` -/
def P9366193051509584996.Spec : Prop :=
  ∀ n, P9366193051509584996.a n = A325459 n

end A325459

/-!
# A325460: Heinz numbers of integer partitions with strictly increasing differences (with the last part taken to be 0).

The programs for A325460, there is no canonical definition to state claims against.
-/

/-! ## A325460.P16936786247317491526

`A392707(∪[A177713(n+1), A392698(n+1)])`
-/

namespace A325460.P16936786247317491526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392698 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392707 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A325460.P16936786247317491526

/-! ## A325460.P4155146142441168632

`filter[A392707(n+1), A123927(#)]`
-/

namespace A325460.P4155146142441168632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A325460.P4155146142441168632

/-! ## A325460.P16008006205140400252

`∩[A325388(n+1), A392694(n+1)]`
-/

namespace A325460.P16008006205140400252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325460.P16008006205140400252

/-! ## A325460.P342219546471733372

`∩[A074235(n+1), A392695(n+1)]`
-/

namespace A325460.P342219546471733372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325460.P342219546471733372

/-! ## A325460.P9662354948629980572

`∩[A320340(n+1), A325396(n+1)]`
-/

namespace A325460.P9662354948629980572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325460.P9662354948629980572

/-! ## A325460.P16316775161278276136

`∩[A325388(n+1), A325396(n+1)]`
-/

namespace A325460.P16316775161278276136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325460.P16316775161278276136

/-! ## A325460.P17140055681628516121

`∩[A325396(n+1), A392695(n+1)]`
-/

namespace A325460.P17140055681628516121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325460.P17140055681628516121

/-! ## A325460.P11503324472749778202

`∩[A325362(n+1), A325388(n+1)]`
-/

namespace A325460.P11503324472749778202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325460.P11503324472749778202

/-! ## A325460.P3648417063420643059

`A392707(n+1)%A345924(n+1)`
-/

namespace A325460.P3648417063420643059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392707 (n + 1)) (A345924 (n + 1))

end

end A325460.P3648417063420643059

/-!
# A325461: Heinz numbers of integer partitions with strictly decreasing differences (with the last part taken to be 0).

The programs for A325461, there is no canonical definition to state claims against.
-/

/-! ## A325461.P73668521910315591

`record[A019555(A325394(n+1)²)]`
-/

namespace A325461.P73668521910315591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A325394 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325461.P73668521910315591

/-! ## A325461.P3665951078840471196

`∩[A325364(n+1), A325367(n+1)]`
-/

namespace A325461.P3665951078840471196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325461.P3665951078840471196

/-! ## A325461.P11668655641509707156

`∩[A325367(n+1), A325394(n+1)]`
-/

namespace A325461.P11668655641509707156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325461.P11668655641509707156

/-! ## A325461.P8718957425151287832

`∩[A325394(n+1), A325457(n+1)]`
-/

namespace A325461.P8718957425151287832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325461.P8718957425151287832

/-! ## A325461.P9933029482317580964

`∩[A325394(n+1), A342525(n+1)]`
-/

namespace A325461.P9933029482317580964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325461.P9933029482317580964

/-!
# A325462: a(n) is the least number not 2*a(m) or 3*a(m)-1 for any m < n.

The programs for A325462, there is no canonical definition to state claims against.
-/

/-! ## A325462.P16308524884693180735

`A325526(n)+a(n-1)` with `a(0)=1`
-/

namespace A325462.P16308524884693180735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325526 n + a (n - 1)

end

end A325462.P16308524884693180735

/-! ## A325462.P12052511782183230491

`comp[A325463(n+1)-1]+1`
-/

namespace A325462.P12052511782183230491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325463 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A325462.P12052511782183230491

/-! ## A325462.P2844325770904897768

`∑[A325526(A000038(n)+n)]`
-/

namespace A325462.P2844325770904897768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325526 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325462.P2844325770904897768

/-! ## A325462.P5725372950029522867

`∑[A325526(or(n, A000038(n)))]`
-/

namespace A325462.P5725372950029522867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325526 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325462.P5725372950029522867

/-! ## A325462.P11022508168826848289

`∑[A325526(n+1)]+1-A325526(n+1)`
-/

namespace A325462.P11022508168826848289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A325526 (n + 1))

end

end A325462.P11022508168826848289

/-! ## A325462.P12730254314566766562

`∑[A325526(A000720(A039915(n+1)))]`
-/

namespace A325462.P12730254314566766562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325526 (A000720 (A039915 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325462.P12730254314566766562

/-! ## A325462.P7102972755590826530

`∑[A325526(A001281(A004277(n)))]`
-/

namespace A325462.P7102972755590826530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325526 (A001281 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325462.P7102972755590826530

/-! ## A325462.P807027640952935134

`∑[A325526(gcd(n, A233583(n+1)))]`
-/

namespace A325462.P807027640952935134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325526 (Int.gcd (n : ℤ) (A233583 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325462.P807027640952935134

/-! ## A325462.P7681107502200500333

`∑[A325526(A233583(2*n+1)-n)]`
-/

namespace A325462.P7681107502200500333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325526 (A233583 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325462.P7681107502200500333

/-!
# A325463: Complement of A325462.

The programs for A325463, there is no canonical definition to state claims against.
-/

/-! ## A325463.P1400261771731981763

`A325527(n)+a(n-1)` with `a(0)=2`
-/

namespace A325463.P1400261771731981763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A325527 n + a (n - 1)

end

end A325463.P1400261771731981763

/-! ## A325463.P6468311451050115874

`∑[A325527(A028310(n))]-2`
-/

namespace A325463.P6468311451050115874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325527 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A325463.P6468311451050115874

/-! ## A325463.P12564801179904120098

`∑[A325527(A000038(n)+n)]`
-/

namespace A325463.P12564801179904120098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325527 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325463.P12564801179904120098

/-! ## A325463.P574438618956593541

`∑[A325527(or(n, A000038(n)))]`
-/

namespace A325463.P574438618956593541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325527 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325463.P574438618956593541

/-! ## A325463.P14547428617799562659

`∑[A325527(xor(n, A000038(n)))]`
-/

namespace A325463.P14547428617799562659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325527 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325463.P14547428617799562659

/-! ## A325463.P17878393130929026586

`∑[A325527(n+1)]+2-A325527(n+1)`
-/

namespace A325463.P17878393130929026586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A325527 (n + 1))

end

end A325463.P17878393130929026586

/-! ## A325463.P6985621596544885451

`eq[char[A325462(n+1)], A000007(n)]`
-/

namespace A325463.P6985621596544885451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325462 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325463.P6985621596544885451

/-! ## A325463.P8591929471047529370

`∑[A325527(gcd(n, A233583(n+1)))]`
-/

namespace A325463.P8591929471047529370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325527 (Int.gcd (n : ℤ) (A233583 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325463.P8591929471047529370

/-! ## A325463.P17976065719665537450

`∑[A325527(A233583(2*n+1)-n)]`
-/

namespace A325463.P17976065719665537450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325527 (A233583 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325463.P17976065719665537450

/-! ## A325463.P5017924688519647135

`∑[A325527(A135227(A000124(n)))]`
-/

namespace A325463.P5017924688519647135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325527 (A135227 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325463.P5017924688519647135

/-!
# A325464: a(n) is the least number not 2*a(m) or 3*a(m)-2 for any m < n.

The programs for A325464, there is no canonical definition to state claims against.
-/

/-! ## A325464.P18264916958794470284

`A325528(n)+a(n-1)` with `a(0)=1`
-/

namespace A325464.P18264916958794470284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325528 n + a (n - 1)

end

end A325464.P18264916958794470284

/-! ## A325464.P16433908196827634168

`A362815(n+2)-A130196(A000288(n))`
-/

namespace A325464.P16433908196827634168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362815 (n + 2) - A130196 (A000288 n).toNat

end

end A325464.P16433908196827634168

/-! ## A325464.P2850385548525305054

`A362815(n+2)-A181819(A073337(n+1))`
-/

namespace A325464.P2850385548525305054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362815 (n + 2) - A181819 (A073337 (n + 1)).toNat

end

end A325464.P2850385548525305054

/-! ## A325464.P3033384697109834823

`A362815(n+2)-A352892(A002496(n+3))`
-/

namespace A325464.P3033384697109834823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362815 (n + 2) - A352892 (A002496 (n + 3)).toNat

end

end A325464.P3033384697109834823

/-! ## A325464.P9475691925944886879

`lt[A373098(A023360(n)), A373088(2*n)]`
-/

namespace A325464.P9475691925944886879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373098 (A023360 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373088 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325464.P9475691925944886879

/-!
# A325465: Complement of A325464.

The programs for A325465, there is no canonical definition to state claims against.
-/

/-! ## A325465.P15272396470806197629

`A325529(n)+a(n-1)` with `a(0)=2`
-/

namespace A325465.P15272396470806197629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A325529 n + a (n - 1)

end

end A325465.P15272396470806197629

/-! ## A325465.P6600356799942870929

`∑[A325529(round(sqrt(n²+1)))]-2`
-/

namespace A325465.P6600356799942870929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325529 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A325465.P6600356799942870929

/-! ## A325465.P6995579256650672222

`∑[A325529(n*A102863(9*a(n-1)))]` with `a(0)=2`
-/

namespace A325465.P6995579256650672222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A325529 ((n : ℤ) * A102863 (9 * f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325465.P6995579256650672222

/-! ## A325465.P1892521322338183784

`eq[char[A325464(n+1)], A000007(n)]`
-/

namespace A325465.P1892521322338183784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325464 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325465.P1892521322338183784

/-! ## A325465.P14303541071994844613

`eq[char[A325464(n+1)], A000038(n)]`
-/

namespace A325465.P14303541071994844613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325464 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325465.P14303541071994844613

/-!
# A325466: Triangle read by rows where T(n,k) is the number of reversed integer partitions of n with k distinct differences of any degree > 0.

The programs for A325466, there is no canonical definition to state claims against.
-/

/-! ## A325466.P5985419843018007288

`A265337(A238129(n)^A338117(n+1))`
-/

namespace A325466.P5985419843018007288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265337 (SequenceMachineLib.roundAway ((A238129 n : ℚ) ^ (A338117 (n + 1) : ℤ))).toNat

end

end A325466.P5985419843018007288

/-! ## A325466.P17672664396190568157

`A265337(A238129(n)^A346089(n+1))`
-/

namespace A325466.P17672664396190568157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265337 (SequenceMachineLib.roundAway ((A238129 n : ℚ) ^ (A346089 (n + 1) : ℤ))).toNat

end

end A325466.P17672664396190568157

/-! ## A325466.P14566322016233842468

`A265337(A346089(n+1)²²*A238129(n))`
-/

namespace A325466.P14566322016233842468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265337 ((A346089 (n + 1) ^ 2) ^ 2 * A238129 n).toNat

end

end A325466.P14566322016233842468

/-! ## A325466.P2340263745915728455

`A319420(2*A238129(n))`
-/

namespace A325466.P2340263745915728455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (2 * A238129 n).toNat

end

end A325466.P2340263745915728455

/-! ## A325466.P389711421821785880

`A001221(A027379(A238129(n)²))`
-/

namespace A325466.P389711421821785880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A027379 (A238129 n ^ 2).toNat).toNat

end

end A325466.P389711421821785880

/-!
# A325468: Number of integer partitions y of n such that the k-th differences of y are distinct (independently) for all k >= 0.

The programs for A325468, there is no canonical definition to state claims against.
-/

/-! ## A325468.P9093082365961922842

`A325876(n)+A108731(A184955(n))`
-/

namespace A325468.P9093082365961922842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325876 n + A108731 (A184955 n).toNat

end

end A325468.P9093082365961922842

/-! ## A325468.P156860913372869788

`A325876(n)+A302110(A008862(n))`
-/

namespace A325468.P156860913372869788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325876 n + A302110 (A008862 n).toNat

end

end A325468.P156860913372869788

/-! ## A325468.P3909239852701659853

`A378191(A378235(n))+A325876(n)`
-/

namespace A325468.P3909239852701659853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 (A378235 n).toNat + A325876 n

end

end A325468.P3909239852701659853

/-! ## A325468.P7695447208246437016

`or(A025441(A192677(n)), A325876(n))`
-/

namespace A325468.P7695447208246437016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025441 (A192677 n).toNat) (A325876 n)

end

end A325468.P7695447208246437016

/-! ## A325468.P7212726585007188112

`A325876(n)+A058348(A014648(n+1))`
-/

namespace A325468.P7212726585007188112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325876 n + A058348 (A014648 (n + 1)).toNat

end

end A325468.P7212726585007188112

/-!
# A325469: a(n) is the number of divisors d of n such that d divides sigma(d).

The programs for A325469, the canonical program `A325469.P15952648157714405911` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325469 has offset 1).

The definition of A325469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325469.P15952648157714405911

`∑{d}[n+1, A000007(A000203(#)%#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A325469

/-- `∑{d}[n+1, A000007(A000203(#)%#)]` -/
def P15952648157714405911.Spec : Prop :=
  ∀ n, P15952648157714405911.a n = A325469 (n + 1)

theorem P15952648157714405911.correct : P15952648157714405911.Spec := by
  intro n
  simp only [A325469, Nat.add_sub_cancel]

end A325469

/-! ## A325469.P4035688914029092241

`A087802(A325471(n+1))`
-/

namespace A325469.P4035688914029092241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (A325471 (n + 1)).toNat

end

end A325469.P4035688914029092241

namespace A325469

/-- `A087802(A325471(n+1))` -/
def P4035688914029092241.Spec : Prop :=
  ∀ n, P4035688914029092241.a n = A325469 (n + 1)

end A325469

/-! ## A325469.P12952834942561345412

`A001221(2*A325471(n+1))`
-/

namespace A325469.P12952834942561345412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A325471 (n + 1)).toNat

end

end A325469.P12952834942561345412

namespace A325469

/-- `A001221(2*A325471(n+1))` -/
def P12952834942561345412.Spec : Prop :=
  ∀ n, P12952834942561345412.a n = A325469 (n + 1)

end A325469

/-! ## A325469.P4490312324714621677

`A154402(2*A325471(n+1))`
-/

namespace A325469.P4490312324714621677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (2 * A325471 (n + 1)).toNat

end

end A325469.P4490312324714621677

namespace A325469

/-- `A154402(2*A325471(n+1))` -/
def P4490312324714621677.Spec : Prop :=
  ∀ n, P4490312324714621677.a n = A325469 (n + 1)

end A325469

/-! ## A325469.P10112243494819375467

`A005087(A008795(A325470(n+1)+3))`
-/

namespace A325469.P10112243494819375467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A008795 (A325470 (n + 1) + 3).toNat).toNat

end

end A325469.P10112243494819375467

namespace A325469

/-- `A005087(A008795(A325470(n+1)+3))` -/
def P10112243494819375467.Spec : Prop :=
  ∀ n, P10112243494819375467.a n = A325469 (n + 1)

end A325469

/-! ## A325469.P11896714279999555181

`A006530(A046523(A325470(n+1)²))`
-/

namespace A325469.P11896714279999555181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046523 (A325470 (n + 1) ^ 2).toNat).toNat

end

end A325469.P11896714279999555181

namespace A325469

/-- `A006530(A046523(A325470(n+1)²))` -/
def P11896714279999555181.Spec : Prop :=
  ∀ n, P11896714279999555181.a n = A325469 (n + 1)

end A325469

/-! ## A325469.P16269089614157211159

`A000005(A055017(A325470(n+1)²))`
-/

namespace A325469.P16269089614157211159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055017 (A325470 (n + 1) ^ 2).toNat).toNat

end

end A325469.P16269089614157211159

namespace A325469

/-- `A000005(A055017(A325470(n+1)²))` -/
def P16269089614157211159.Spec : Prop :=
  ∀ n, P16269089614157211159.a n = A325469 (n + 1)

end A325469

/-! ## A325469.P9358031463240589984

`A003056(A088873(A325470(n+1)²))`
-/

namespace A325469.P9358031463240589984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A088873 (A325470 (n + 1) ^ 2).toNat).toNat

end

end A325469.P9358031463240589984

namespace A325469

/-- `A003056(A088873(A325470(n+1)²))` -/
def P9358031463240589984.Spec : Prop :=
  ∀ n, P9358031463240589984.a n = A325469 (n + 1)

end A325469

/-! ## A325469.P8117288254306500419

`A001221(A249860(4*A325470(n+1)+1)-1)`
-/

namespace A325469.P8117288254306500419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A249860 (4 * A325470 (n + 1) + 1).toNat - 1).toNat

end

end A325469.P8117288254306500419

namespace A325469

/-- `A001221(A249860(4*A325470(n+1)+1)-1)` -/
def P8117288254306500419.Spec : Prop :=
  ∀ n, P8117288254306500419.a n = A325469 (n + 1)

end A325469

/-! ## A325469.P4748540673936929957

`A080225(n+1)+a(A097795(A000010(n)))` with `a(0)=1`
-/

namespace A325469.P4748540673936929957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080225 (n + 1) + a (A097795 (A000010 n).toNat).toNat

end

end A325469.P4748540673936929957

namespace A325469

/-- `A080225(n+1)+a(A097795(A000010(n)))` -/
def P4748540673936929957.Spec : Prop :=
  ∀ n, P4748540673936929957.a n = A325469 (n + 1)

end A325469

/-!
# A325470: a(n) is the sum of divisors d of n such that d divides sigma(d).

The programs for A325470, the canonical program `A325470.P15058644850768859444` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325470 has offset 1).

The definition of A325470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325470.P15058644850768859444

`A187794(n+1)+A000120(A059268(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A325470

/-- `A187794(n+1)+A000120(A059268(n))` -/
def P15058644850768859444.Spec : Prop :=
  ∀ n, P15058644850768859444.a n = A325470 (n + 1)

theorem P15058644850768859444.correct : P15058644850768859444.Spec := by
  intro n
  simp only [A325470, Nat.add_sub_cancel]

end A325470

/-! ## A325470.P4691504343954038942

`A187794(n+1)+A056926(A019565(n))`
-/

namespace A325470.P4691504343954038942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (n + 1) + A056926 (A019565 n).toNat

end

end A325470.P4691504343954038942

namespace A325470

/-- `A187794(n+1)+A056926(A019565(n))` -/
def P4691504343954038942.Spec : Prop :=
  ∀ n, P4691504343954038942.a n = A325470 (n + 1)

end A325470

/-! ## A325470.P17064661312783997169

`A187794(n+1)+A050315(A130123(n))`
-/

namespace A325470.P17064661312783997169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (n + 1) + A050315 (A130123 n).toNat

end

end A325470.P17064661312783997169

namespace A325470

/-- `A187794(n+1)+A050315(A130123(n))` -/
def P17064661312783997169.Spec : Prop :=
  ∀ n, P17064661312783997169.a n = A325470 (n + 1)

end A325470

/-! ## A325470.P12050883226004578186

`A187794(n+1)+A140670(A328575(n))`
-/

namespace A325470.P12050883226004578186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (n + 1) + A140670 (A328575 n).toNat

end

end A325470.P12050883226004578186

namespace A325470

/-- `A187794(n+1)+A140670(A328575(n))` -/
def P12050883226004578186.Spec : Prop :=
  ∀ n, P12050883226004578186.a n = A325470 (n + 1)

end A325470

/-! ## A325470.P4144327333484073023

`A004442(A187794(n+1))%p?[A182840(n)]`
-/

namespace A325470.P4144327333484073023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 (A187794 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A325470.P4144327333484073023

namespace A325470

/-- `A004442(A187794(n+1))%p?[A182840(n)]` -/
def P4144327333484073023.Spec : Prop :=
  ∀ n, P4144327333484073023.a n = A325470 (n + 1)

end A325470

/-! ## A325470.P3401931910504184687

`A187794(n+1)+A007913(A072861(n+1))`
-/

namespace A325470.P3401931910504184687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (n + 1) + A007913 (A072861 (n + 1)).toNat

end

end A325470.P3401931910504184687

namespace A325470

/-- `A187794(n+1)+A007913(A072861(n+1))` -/
def P3401931910504184687.Spec : Prop :=
  ∀ n, P3401931910504184687.a n = A325470 (n + 1)

end A325470

/-! ## A325470.P11454190380400239191

`A187794(n+1)+A001065(A082555(n+1))`
-/

namespace A325470.P11454190380400239191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (n + 1) + A001065 (A082555 (n + 1)).toNat

end

end A325470.P11454190380400239191

namespace A325470

/-- `A187794(n+1)+A001065(A082555(n+1))` -/
def P11454190380400239191.Spec : Prop :=
  ∀ n, P11454190380400239191.a n = A325470 (n + 1)

end A325470

/-! ## A325470.P10556655367771518683

`A187794(n+1)+A000034(A088827(n+1))`
-/

namespace A325470.P10556655367771518683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (n + 1) + A000034 (A088827 (n + 1)).toNat

end

end A325470.P10556655367771518683

namespace A325470

/-- `A187794(n+1)+A000034(A088827(n+1))` -/
def P10556655367771518683.Spec : Prop :=
  ∀ n, P10556655367771518683.a n = A325470 (n + 1)

end A325470

/-! ## A325470.P17484822828159972379

`A187794(n+1)+A001227(A338506(n+1))`
-/

namespace A325470.P17484822828159972379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (n + 1) + A001227 (A338506 (n + 1)).toNat

end

end A325470.P17484822828159972379

namespace A325470

/-- `A187794(n+1)+A001227(A338506(n+1))` -/
def P17484822828159972379.Spec : Prop :=
  ∀ n, P17484822828159972379.a n = A325470 (n + 1)

end A325470

/-! ## A325470.P13686513005473354274

`A294937(A071395(n+1))+A187794(n+1)`
-/

namespace A325470.P13686513005473354274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (A071395 (n + 1)).toNat + A187794 (n + 1)

end

end A325470.P13686513005473354274

namespace A325470

/-- `A294937(A071395(n+1))+A187794(n+1)` -/
def P13686513005473354274.Spec : Prop :=
  ∀ n, P13686513005473354274.a n = A325470 (n + 1)

end A325470

/-! ## A325470.P3067249346202919883

`A187794(n+1)-A057428(A007437(n+1))`
-/

namespace A325470.P3067249346202919883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (n + 1) - A057428 (A007437 (n + 1)).toNat

end

end A325470.P3067249346202919883

namespace A325470

/-- `A187794(n+1)-A057428(A007437(n+1))` -/
def P3067249346202919883.Spec : Prop :=
  ∀ n, P3067249346202919883.a n = A325470 (n + 1)

end A325470

/-! ## A325470.P5007727097775325230

`A325471(A338506(n+1))+A187794(A133265(n))`
-/

namespace A325470.P5007727097775325230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325471 (A338506 (n + 1)).toNat + A187794 (A133265 n).toNat

end

end A325470.P5007727097775325230

namespace A325470

/-- `A325471(A338506(n+1))+A187794(A133265(n))` -/
def P5007727097775325230.Spec : Prop :=
  ∀ n, P5007727097775325230.a n = A325470 (n + 1)

end A325470

/-! ## A325470.P8823470605654610381

`A187794(n+1)+A167965(A074206(A072504(n+1)))`
-/

namespace A325470.P8823470605654610381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (n + 1) + A167965 (A074206 (A072504 (n + 1)).toNat).toNat

end

end A325470.P8823470605654610381

namespace A325470

/-- `A187794(n+1)+A167965(A074206(A072504(n+1)))` -/
def P8823470605654610381.Spec : Prop :=
  ∀ n, P8823470605654610381.a n = A325470 (n + 1)

end A325470

/-! ## A325470.P10085640601979051757

`A187794(n+1)+A082061(A152313(n+1))`
-/

namespace A325470.P10085640601979051757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (n + 1) + A082061 (A152313 (n + 1)).toNat

end

end A325470.P10085640601979051757

namespace A325470

/-- `A187794(n+1)+A082061(A152313(n+1))` -/
def P10085640601979051757.Spec : Prop :=
  ∀ n, P10085640601979051757.a n = A325470 (n + 1)

end A325470

/-! ## A325470.P7749070776617536023

`A187794(n+1)+A000007(A187794(A079317(n)))`
-/

namespace A325470.P7749070776617536023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (n + 1) + A000007 (A187794 (A079317 n).toNat).toNat

end

end A325470.P7749070776617536023

namespace A325470

/-- `A187794(n+1)+A000007(A187794(A079317(n)))` -/
def P7749070776617536023.Spec : Prop :=
  ∀ n, P7749070776617536023.a n = A325470 (n + 1)

end A325470

/-!
# A325471: a(n) is the product of divisors d of n such that d divides sigma(d).

The programs for A325471, there is no canonical definition to state claims against.
-/

/-! ## A325471.P9988405797205922757

`A000010(gcd(A015953(n+1), A027760(n+1)))`
-/

namespace A325471.P9988405797205922757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.gcd (A015953 (n + 1)) (A027760 (n + 1)))

end

end A325471.P9988405797205922757

/-! ## A325471.P1665072696046753275

`A110545(A325470(n+1)²)`
-/

namespace A325471.P1665072696046753275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A325470 (n + 1) ^ 2).toNat

end

end A325471.P1665072696046753275

/-! ## A325471.P8630069877073739060

`A327637(∏{d}[A325470(n+1), #])`
-/

namespace A325471.P8630069877073739060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327637 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A325471.P8630069877073739060

/-! ## A325471.P17723845983253722806

`A076512(∏{d}[A325470(n+1), #]²)`
-/

namespace A325471.P17723845983253722806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 ((∏ d ∈ Nat.divisors (f1 n).natAbs, d) ^ 2)

end

end A325471.P17723845983253722806

/-!
# A325472: Numbers having at least two representations as multinomial coefficients M(n;lambda), where lambda is a partition of n.

The programs for A325472, there is no canonical definition to state claims against.
-/

/-! ## A325472.P5674941448697154683

`∪[A305188(n+1), A001288(n)]`
-/

namespace A325472.P5674941448697154683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325472.P5674941448697154683

/-! ## A325472.P1256065588264058930

`∪[A305188(n+1), A002299(n)]`
-/

namespace A325472.P1256065588264058930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002299 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325472.P1256065588264058930

/-! ## A325472.P16745888341160834701

`∪[A002457(n), A305188(n+1)]`
-/

namespace A325472.P16745888341160834701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325472.P16745888341160834701

/-! ## A325472.P9497568088606312743

`∪[A015219(n), A305188(n+1)]`
-/

namespace A325472.P9497568088606312743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015219 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325472.P9497568088606312743

/-! ## A325472.P14250333396234515904

`∪[A053135(n), A305188(n+1)]`
-/

namespace A325472.P14250333396234515904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325472.P14250333396234515904

/-! ## A325472.P14301267378042989960

`A305188(A028310(n))%∑[n+5]`
-/

namespace A325472.P14301267378042989960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305188 (A028310 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A325472.P14301267378042989960

/-! ## A325472.P3058020925282196973

`A305188(A028310(n))^abs(A057428(n))`
-/

namespace A325472.P3058020925282196973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305188 (A028310 n).toNat : ℚ) ^ (|A057428 n| : ℤ)

end

end A325472.P3058020925282196973

/-! ## A325472.P14198755952808725035

`A305188(A028310(n))^A062157(n)²`
-/

namespace A325472.P14198755952808725035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305188 (A028310 n).toNat : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A325472.P14198755952808725035

/-! ## A325472.P14934783828836396379

`A305188(A028310(n))^A294893(A001316(n))`
-/

namespace A325472.P14934783828836396379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305188 (A028310 n).toNat : ℚ) ^ (A294893 (A001316 n).toNat : ℤ)

end

end A325472.P14934783828836396379

/-! ## A325472.P4098655209712331517

`A305188(A028310(n))^A001222(A027746(n+1))`
-/

namespace A325472.P4098655209712331517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305188 (A028310 n).toNat : ℚ) ^ (A001222 (A027746 (n + 1)).toNat : ℤ)

end

end A325472.P4098655209712331517

/-! ## A325472.P4463493950198543308

`A305188(A028310(n))^A001222(A258568(n+1))`
-/

namespace A325472.P4463493950198543308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305188 (A028310 n).toNat : ℚ) ^ (A001222 (A258568 (n + 1)).toNat : ℤ)

end

end A325472.P4463493950198543308

/-! ## A325472.P11442712400603645234

`A305188(n)%A006987(a(n-1)+1)` with `a(0)=1`
-/

namespace A325472.P11442712400603645234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A305188 n) (A006987 (a (n - 1) + 1).toNat)

end

end A325472.P11442712400603645234

/-! ## A325472.P7260184250123547143

`A305188(n-A000040(a(n-1)+1)%2+1)` with `a(0)=1`
-/

namespace A325472.P7260184250123547143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305188 ((n : ℤ) - Int.tmod (A000040 (a (n - 1) + 1).toNat) 2 + 1).toNat

end

end A325472.P7260184250123547143

/-! ## A325472.P6070941490847438499

`A014963(a(n-1))*A305188(A028310(n))` with `a(0)=1`
-/

namespace A325472.P6070941490847438499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 (a (n - 1)).toNat * A305188 (A028310 n).toNat

end

end A325472.P6070941490847438499

/-!
# A325473: Number of compositions of n with no part divisible by 3 and an even number of parts congruent to 4 or 5 modulo 6.

The programs for A325473, the canonical program `A325473.P15099245965244273231` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325473 has offset 0).

The definition of A325473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325473.P15099245965244273231

`A192804(n-1)+a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A325473

/-- `A192804(n-1)+a(n-1)` -/
def P15099245965244273231.Spec : Prop :=
  ∀ n, P15099245965244273231.a n = A325473 n

theorem P15099245965244273231.correct : P15099245965244273231.Spec := by
  intro n
  simp only [A325473]

end A325473

/-! ## A325473.P5908164958563223121

`ceil((A028310(n)+A001590(n+2))/2)`
-/

namespace A325473.P5908164958563223121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028310 n + A001590 (n + 2) : ℚ) / 2⌉

end

end A325473.P5908164958563223121

namespace A325473

/-- `ceil((A028310(n)+A001590(n+2))/2)` -/
def P5908164958563223121.Spec : Prop :=
  ∀ n, P5908164958563223121.a n = A325473 n

end A325473

/-! ## A325473.P15638581742676323094

`(A028310(n)+A001590(n+2))/A020639(A004277(n))`
-/

namespace A325473.P15638581742676323094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n + A001590 (n + 2) : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A325473.P15638581742676323094

namespace A325473

/-- `(A028310(n)+A001590(n+2))/A020639(A004277(n))` -/
def P15638581742676323094.Spec : Prop :=
  ∀ n, P15638581742676323094.a n = (A325473 n : ℚ)

end A325473

/-! ## A325473.P5570461062202623570

`(A028310(n)+A001590(n+2))/A100051(A008458(n))`
-/

namespace A325473.P5570461062202623570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n + A001590 (n + 2) : ℚ) / (A100051 (A008458 n).toNat : ℚ)

end

end A325473.P5570461062202623570

namespace A325473

/-- `(A028310(n)+A001590(n+2))/A100051(A008458(n))` -/
def P5570461062202623570.Spec : Prop :=
  ∀ n, P5570461062202623570.a n = (A325473 n : ℚ)

end A325473

/-! ## A325473.P3101626146943610860

`(A028310(n)+A001590(n+2))/A020639(A315580(n))`
-/

namespace A325473.P3101626146943610860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n + A001590 (n + 2) : ℚ) / (A020639 (A315580 n).toNat : ℚ)

end

end A325473.P3101626146943610860

namespace A325473

/-- `(A028310(n)+A001590(n+2))/A020639(A315580(n))` -/
def P3101626146943610860.Spec : Prop :=
  ∀ n, P3101626146943610860.a n = (A325473 n : ℚ)

end A325473

/-! ## A325473.P17280665578781686215

`(A028310(n)+A001590(n+2))/A098008(A006530(n+1))`
-/

namespace A325473.P17280665578781686215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n + A001590 (n + 2) : ℚ) / (A098008 (A006530 (n + 1)).toNat : ℚ)

end

end A325473.P17280665578781686215

namespace A325473

/-- `(A028310(n)+A001590(n+2))/A098008(A006530(n+1))` -/
def P17280665578781686215.Spec : Prop :=
  ∀ n, P17280665578781686215.a n = (A325473 n : ℚ)

end A325473

/-! ## A325473.P6682200752227156886

`(A028310(n)+A001590(n+2))/A014963(A137688(n))`
-/

namespace A325473.P6682200752227156886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n + A001590 (n + 2) : ℚ) / (A014963 (A137688 n).toNat : ℚ)

end

end A325473.P6682200752227156886

namespace A325473

/-- `(A028310(n)+A001590(n+2))/A014963(A137688(n))` -/
def P6682200752227156886.Spec : Prop :=
  ∀ n, P6682200752227156886.a n = (A325473 n : ℚ)

end A325473

/-!
# A325474: Number of connected n-regular loopless multigraphs on eight unlabeled nodes.

The programs for A325474, there is no canonical definition to state claims against.
-/

/-! ## A325474.P6849432315807352626

`A328682(eq[8, A002262(n)])`
-/

namespace A325474.P6849432315807352626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325474.P6849432315807352626

/-! ## A325474.P12748025752354024576

`A328682(eq[8, A130270(n+1)])`
-/

namespace A325474.P12748025752354024576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325474.P12748025752354024576

/-! ## A325474.P13287852753618880373

`A328682(eq[8, A144328(n+1)])`
-/

namespace A325474.P13287852753618880373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325474.P13287852753618880373

/-! ## A325474.P8075895918319938024

`A328682(eq[9, A002260(n+1)])`
-/

namespace A325474.P8075895918319938024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325474.P8075895918319938024

/-! ## A325474.P4771646594117697793

`A328682(eq[9, A134868(n+1)])`
-/

namespace A325474.P4771646594117697793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325474.P4771646594117697793

/-!
# A325475: a(n) = (24*n)^2.

The programs for A325475, the canonical program `A325475.P17768364736889893458` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325475 has offset 0).

The definition of A325475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(24*n)²` (program `A325475.P17768364736889893458`, by `A325475.P17768364736889893458.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A325475.P17768364736889893458

`(24*n)²`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A325475

/-- `(24*n)²` -/
def P17768364736889893458.Spec : Prop :=
  ∀ n, (P17768364736889893458.a n : ℤ) = A325475 n

theorem P17768364736889893458.correct : P17768364736889893458.Spec := by
  intro n
  simp only [A325475]

end A325475

/-!
# A325476: Number of connected regular loopless multigraphs on n unlabeled nodes of degree less than n.

The programs for A325476, there is no canonical definition to state claims against.
-/

/-! ## A325476.P8616831716803401427

`A319897(n)-A328682(A106232(n+1))`
-/

namespace A325476.P8616831716803401427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319897 n - A328682 (A106232 (n + 1)).toNat

end

end A325476.P8616831716803401427

/-!
# A325477: Irregular triangle read by rows: T(n, k) gives the coefficients of the Girard-Waring formula for the sum of n-th power of three indeterminates in terms of their elementary symmetric functions.

The programs for A325477, there is no canonical definition to state claims against.
-/

/-! ## A325477.P15818479122504113780

`A307449(A020753(n+1)%A020753(n+4))`
-/

namespace A325477.P15818479122504113780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307449 (Int.tmod (A020753 (n + 1)) (A020753 (n + 4))).toNat

end

end A325477.P15818479122504113780

/-! ## A325477.P12369229621938408676

`A324602(A026501(n+1))%A269303(3*n+5)`
-/

namespace A325477.P12369229621938408676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324602 (A026501 (n + 1)).toNat) (A269303 (3 * n + 5))

end

end A325477.P12369229621938408676

/-! ## A325477.P5983894286177669551

`A307449(A020753(n+1)^A050782(n))`
-/

namespace A325477.P5983894286177669551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307449 (SequenceMachineLib.roundAway ((A020753 (n + 1) : ℚ) ^ (A050782 n : ℤ))).toNat

end

end A325477.P5983894286177669551

/-! ## A325477.P13864106813993363037

`A324602(A020753(n+1)^A050782(n))`
-/

namespace A325477.P13864106813993363037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324602 (SequenceMachineLib.roundAway ((A020753 (n + 1) : ℚ) ^ (A050782 n : ℤ))).toNat

end

end A325477.P13864106813993363037

/-! ## A325477.P14046741223490760201

`A324602(A026501(n+1))%A153800(n+1)`
-/

namespace A325477.P14046741223490760201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324602 (A026501 (n + 1)).toNat) (A153800 (n + 1))

end

end A325477.P14046741223490760201

/-!
# A325478: Number of colored set partitions of [n] where colors of the elements of subsets are distinct and in increasing order and all colors of an initial interval of the color palette are used.

The programs for A325478, there is no canonical definition to state claims against.
-/

/-! ## A325478.P9014662145917676640

`A025906(21*A349970(n))`
-/

namespace A325478.P9014662145917676640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 (21 * A349970 n).toNat

end

end A325478.P9014662145917676640

/-! ## A325478.P3606984639870631771

`A103118(A078027(n²+8))`
-/

namespace A325478.P3606984639870631771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103118 (A078027 (n ^ 2 + 8)).toNat

end

end A325478.P3606984639870631771

/-!
# A325479: Decimal expansion of a normal number in base 10, which, on average, up to any given integer appearance (above 11), is more compact than Champernowne's constant, and more compact than A189823.

The programs for A325479, there is no canonical definition to state claims against.
-/

/-! ## A325479.P17180684760994373361

`A007376(lt[A134909(3*n+5), A326738(n+1)])`
-/

namespace A325479.P17180684760994373361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134909 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325479.P17180684760994373361

/-! ## A325479.P18188131564138576186

`A033307(lt[0, A104608(3*n+1)])`
-/

namespace A325479.P18188131564138576186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104608 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A325479.P18188131564138576186

/-! ## A325479.P4696181310815937785

`A007376(∑[A000189(A144502(n))])`
-/

namespace A325479.P4696181310815937785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A144502 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325479.P4696181310815937785

/-! ## A325479.P18109625153438890383

`A007376(∑[A261835(A094544(n))])`
-/

namespace A325479.P18109625153438890383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A094544 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325479.P18109625153438890383

/-! ## A325479.P4024051081991268644

`A007376(∑[A292870(A094544(n))])`
-/

namespace A325479.P4024051081991268644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (A094544 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325479.P4024051081991268644

/-!
# A325481: Number of colored set partitions of [2n] where colors of the elements of subsets are distinct and in increasing order and exactly n colors are used.

The programs for A325481, there is no canonical definition to state claims against.
-/

/-! ## A325481.P18380861600826399817

`A322670(∑[4*n])`
-/

namespace A325481.P18380861600826399817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322670 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A325481.P18380861600826399817

/-! ## A325481.P16295089748164035616

`lcm(A033999(n), A322670(A046092(n)))`
-/

namespace A325481.P16295089748164035616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A322670 (A046092 n).toNat)

end

end A325481.P16295089748164035616

/-! ## A325481.P4008423902216417315

`or(A000007(n), A322670(A046092(n)))`
-/

namespace A325481.P4008423902216417315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A322670 (A046092 n).toNat)

end

end A325481.P4008423902216417315

/-! ## A325481.P9487528555839016999

`or(A010052(n), A322670(A046092(n)))`
-/

namespace A325481.P9487528555839016999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 n) (A322670 (A046092 n).toNat)

end

end A325481.P9487528555839016999

/-! ## A325481.P2005091286437096223

`or(A093709(n), A322670(A046092(n)))`
-/

namespace A325481.P2005091286437096223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A093709 n) (A322670 (A046092 n).toNat)

end

end A325481.P2005091286437096223

/-!
# A325482: Number of colored set partitions of [n] where colors of the elements of subsets are distinct and in increasing order and exactly two colors are used.

The programs for A325482, the canonical program `A325482.P18230021522589642406` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325482 has offset 2).

The definition of A325482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325482.P18230021522589642406

`∑[A238803(n+2)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A325482

/-- `∑[A238803(n+2)]` -/
def P18230021522589642406.Spec : Prop :=
  ∀ n, P18230021522589642406.a n = A325482 (n + 2)

theorem P18230021522589642406.correct : P18230021522589642406.Spec := by
  intro n
  simp only [A325482, Nat.add_sub_cancel]

end A325482

/-! ## A325482.P12470056303061301279

`A005425(n+2)-2`
-/

namespace A325482.P12470056303061301279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (n + 2) - 2

end

end A325482.P12470056303061301279

namespace A325482

/-- `A005425(n+2)-2` -/
def P12470056303061301279.Spec : Prop :=
  ∀ n, P12470056303061301279.a n = A325482 (n + 2)

end A325482

/-! ## A325482.P15550426781502671837

`∑[abs(Δ[A005425(n+1)])]`
-/

namespace A325482.P15550426781502671837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325482.P15550426781502671837

namespace A325482

/-- `∑[abs(Δ[A005425(n+1)])]` -/
def P15550426781502671837.Spec : Prop :=
  ∀ n, P15550426781502671837.a n = A325482 (n + 2)

end A325482

/-! ## A325482.P6869325893270514157

`A027412(n+3)/2-2`
-/

namespace A325482.P6869325893270514157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027412 (n + 3) : ℚ) / 2 - 2

end

end A325482.P6869325893270514157

namespace A325482

/-- `A027412(n+3)/2-2` -/
def P6869325893270514157.Spec : Prop :=
  ∀ n, P6869325893270514157.a n = (A325482 (n + 2) : ℚ)

end A325482

/-! ## A325482.P11592117300044943659

`record[Δ[A005425(A004736(n+1))]]`
-/

namespace A325482.P11592117300044943659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (A004736 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325482.P11592117300044943659

namespace A325482

/-- `record[Δ[A005425(A004736(n+1))]]` -/
def P11592117300044943659.Spec : Prop :=
  ∀ n, P11592117300044943659.a n = A325482 (n + 2)

end A325482

/-! ## A325482.P17731003491249668223

`A085483(lt[A085483(n+1), n])-2`
-/

namespace A325482.P17731003491249668223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085483 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085483 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - 2

end

end A325482.P17731003491249668223

namespace A325482

/-- `A085483(lt[A085483(n+1), n])-2` -/
def P17731003491249668223.Spec : Prop :=
  ∀ n, P17731003491249668223.a n = A325482 (n + 2)

end A325482

/-!
# A325483: Numbers whose sum of their decimal digits is less than or equal to the sum of the digits of their binary representation.

The programs for A325483, there is no canonical definition to state claims against.
-/

/-! ## A325483.P7039986976713631249

`∪[A037308(n+1), A108580(n+1)]`
-/

namespace A325483.P7039986976713631249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325483.P7039986976713631249

/-! ## A325483.P12049529891509017628

`lt[A180018(n), 1]`
-/

namespace A325483.P12049529891509017628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325483.P12049529891509017628

/-! ## A325483.P18005936627432693369

`lt[A007953(n), A000120(n)+1]`
-/

namespace A325483.P18005936627432693369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325483.P18005936627432693369

/-! ## A325483.P14684714537459956329

`lt[A329562(n), A001316(n)+1]`
-/

namespace A325483.P14684714537459956329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325483.P14684714537459956329

/-! ## A325483.P8860415630040330293

`lt[A118881(n), (A000120(n)+1)²]`
-/

namespace A325483.P8860415630040330293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000120 n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325483.P8860415630040330293

/-! ## A325483.P11945434902644094047

`lt[log2(A329562(n)), A000120(n)+1]`
-/

namespace A325483.P11945434902644094047
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A325483.P11945434902644094047

/-! ## A325483.P5071614558111245163

`lt[A007953(n), A000005(A001316(n))]`
-/

namespace A325483.P5071614558111245163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325483.P5071614558111245163

/-! ## A325483.P5174699971072877201

`lt[A329562(n), A001316(A005408(n))]`
-/

namespace A325483.P5174699971072877201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325483.P5174699971072877201

/-! ## A325483.P8908077461289687789

`eq[A011371(n)%A160941(n+1), A011371(n)]`
-/

namespace A325483.P8908077461289687789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011371 n) (A160941 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325483.P8908077461289687789

/-! ## A325483.P12689194589057921471

`lt[A053831(A171397(n)), A000120(n)+1]`
-/

namespace A325483.P12689194589057921471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (A171397 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325483.P12689194589057921471

/-! ## A325483.P9604672600180214865

`lt[A007953(n), A000120(A005408(n))]`
-/

namespace A325483.P9604672600180214865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325483.P9604672600180214865

/-! ## A325483.P4371762772251525208

`lt[A053836(A102489(n)), A000120(n)+1]`
-/

namespace A325483.P4371762772251525208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A102489 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325483.P4371762772251525208

/-!
# A325484: One of the four successive approximations up to 5^n for the 5-adic integer 6^(1/4). This is the 1 (mod 5) case (except for n = 0).

The programs for A325484, there is no canonical definition to state claims against.
-/

/-! ## A325484.P4481791160945531402

`A048898(n)+A048899(n)-A325487(n)`
-/

namespace A325484.P4481791160945531402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 n + (A048899 n - A325487 n)

end

end A325484.P4481791160945531402

/-! ## A325484.P17964799355613730924

`(A000351(n)-A325487(n))%A000351(n)`
-/

namespace A325484.P17964799355613730924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 n - A325487 n) (A000351 n)

end

end A325484.P17964799355613730924

/-! ## A325484.P10046389759915015743

`(A034935(n)*A325486(n))%A000351(n)`
-/

namespace A325484.P10046389759915015743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034935 n * A325486 n) (A000351 n)

end

end A325484.P10046389759915015743

/-! ## A325484.P18318324056048141337

`(A048898(n)*A325486(n))%A000351(n)`
-/

namespace A325484.P18318324056048141337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048898 n * A325486 n) (A000351 n)

end

end A325484.P18318324056048141337

/-! ## A325484.P13019788681125844069

`(A048899(n)*A325485(n))%A000351(n)`
-/

namespace A325484.P13019788681125844069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048899 n * A325485 n) (A000351 n)

end

end A325484.P13019788681125844069

/-!
# A325485: One of the four successive approximations up to 5^n for the 5-adic integer 6^(1/4). This is the 2 (mod 5) case (except for n = 0).

The programs for A325485, there is no canonical definition to state claims against.
-/

/-! ## A325485.P9021363869345690211

`A048898(n)+A048899(n)-A325486(n)`
-/

namespace A325485.P9021363869345690211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 n + (A048899 n - A325486 n)

end

end A325485.P9021363869345690211

/-! ## A325485.P14357205016559023304

`A268922(n)+A269590(n)-A325486(n)`
-/

namespace A325485.P14357205016559023304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268922 n + (A269590 n - A325486 n)

end

end A325485.P14357205016559023304

/-! ## A325485.P14648496067533111549

`(A000351(n)-A325486(n))%A000351(n)`
-/

namespace A325485.P14648496067533111549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 n - A325486 n) (A000351 n)

end

end A325485.P14648496067533111549

/-! ## A325485.P1275510047754576885

`(A034935(n)*A325484(n))%A000351(n)`
-/

namespace A325485.P1275510047754576885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034935 n * A325484 n) (A000351 n)

end

end A325485.P1275510047754576885

/-! ## A325485.P15027946243259003666

`(A048898(n)*A325484(n))%A000351(n)`
-/

namespace A325485.P15027946243259003666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048898 n * A325484 n) (A000351 n)

end

end A325485.P15027946243259003666

/-!
# A325486: One of the four successive approximations up to 5^n for the 5-adic integer 6^(1/4). This is the 3 (mod 5) case (except for n = 0).

The programs for A325486, there is no canonical definition to state claims against.
-/

/-! ## A325486.P9546293867806480105

`A048898(n)+A048899(n)-A325485(n)`
-/

namespace A325486.P9546293867806480105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 n + (A048899 n - A325485 n)

end

end A325486.P9546293867806480105

/-! ## A325486.P12579562857958788222

`(A000351(n)-A325485(n))%A000351(n)`
-/

namespace A325486.P12579562857958788222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 n - A325485 n) (A000351 n)

end

end A325486.P12579562857958788222

/-! ## A325486.P16865913192859834334

`(A034935(n)*A325487(n))%A000351(n)`
-/

namespace A325486.P16865913192859834334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034935 n * A325487 n) (A000351 n)

end

end A325486.P16865913192859834334

/-! ## A325486.P11533413644197916678

`(A048898(n)*A325487(n))%A000351(n)`
-/

namespace A325486.P11533413644197916678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048898 n * A325487 n) (A000351 n)

end

end A325486.P11533413644197916678

/-! ## A325486.P7804063442134404276

`(A048899(n)*A325484(n))%A000351(n)`
-/

namespace A325486.P7804063442134404276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048899 n * A325484 n) (A000351 n)

end

end A325486.P7804063442134404276

/-!
# A325487: One of the four successive approximations up to 13^n for the 13-adic integer 6^(1/4). This is the 4 (mod 5) case (except for n = 0).

The programs for A325487, there is no canonical definition to state claims against.
-/

/-! ## A325487.P4013271461503758345

`A048898(n)+A048899(n)-A325484(n)`
-/

namespace A325487.P4013271461503758345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 n + (A048899 n - A325484 n)

end

end A325487.P4013271461503758345

/-! ## A325487.P12286891429021896259

`(A000351(n)-A325484(n))%A000351(n)`
-/

namespace A325487.P12286891429021896259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 n - A325484 n) (A000351 n)

end

end A325487.P12286891429021896259

/-! ## A325487.P1524063831601398825

`(A034935(n)*A325485(n))%A000351(n)`
-/

namespace A325487.P1524063831601398825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034935 n * A325485 n) (A000351 n)

end

end A325487.P1524063831601398825

/-! ## A325487.P12273160088117794417

`(A048898(n)*A325485(n))%A000351(n)`
-/

namespace A325487.P12273160088117794417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048898 n * A325485 n) (A000351 n)

end

end A325487.P12273160088117794417

/-! ## A325487.P10312335789572991446

`(A048899(n)*A325486(n))%A000351(n)`
-/

namespace A325487.P10312335789572991446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048899 n * A325486 n) (A000351 n)

end

end A325487.P10312335789572991446

/-!
# A325488: Dimensions of space of harmonic polynomials of each degree invariant under the full icosahedral group.

The programs for A325488, the canonical program `A325488.P7076042349237648460` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325488 has offset 0).

The definition of A325488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325488.P9917152776547354661

`(floor(n/5)-floor((n-1)/6))*char[2*n]`
-/

namespace A325488.P9917152776547354661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 5⌋ - ⌊((n : ℤ) - 1 : ℚ) / 6⌋) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A325488.P9917152776547354661

namespace A325488

/-- `(floor(n/5)-floor((n-1)/6))*char[2*n]` -/
def P9917152776547354661.Spec : Prop :=
  ∀ n, P9917152776547354661.a n = A325488 n

end A325488

/-! ## A325488.P7076042349237648460

`lcm(floor(n/5)-floor((n-1)/6), ∑[(-1)^n])`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A325488

/-- `lcm(floor(n/5)-floor((n-1)/6), ∑[(-1)^n])` -/
def P7076042349237648460.Spec : Prop :=
  ∀ n, (P7076042349237648460.a n : ℤ) = A325488 n

theorem P7076042349237648460.correct : P7076042349237648460.Spec := by
  intro n
  simp only [A325488]

end A325488

/-! ## A325488.P888782205518172244

`A008676(gcd(n, floor(n/2)))`
-/

namespace A325488.P888782205518172244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A325488.P888782205518172244

namespace A325488

/-- `A008676(gcd(n, floor(n/2)))` -/
def P888782205518172244.Spec : Prop :=
  ∀ n, P888782205518172244.a n = A325488 n

end A325488

/-! ## A325488.P4978281908158765711

`A008651(n^and(1, n+1))`
-/

namespace A325488.P4978281908158765711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (n ^ Nat.land 1 (n + 1))

end

end A325488.P4978281908158765711

namespace A325488

/-- `A008651(n^and(1, n+1))` -/
def P4978281908158765711.Spec : Prop :=
  ∀ n, P4978281908158765711.a n = A325488 n

end A325488

/-! ## A325488.P9797169884199599363

`xor(a(n-1), A008676(floor(n/2)))` with `a(0)=1`
-/

namespace A325488.P9797169884199599363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A008676 ⌊(n : ℚ) / 2⌋.toNat)

end

end A325488.P9797169884199599363

namespace A325488

/-- `xor(a(n-1), A008676(floor(n/2)))` -/
def P9797169884199599363.Spec : Prop :=
  ∀ n, P9797169884199599363.a n = A325488 n

end A325488

/-! ## A325488.P4400044204816330599

`A008651(abs(A009531(n)))`
-/

namespace A325488.P4400044204816330599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 |A009531 n|.toNat

end

end A325488.P4400044204816330599

namespace A325488

/-- `A008651(abs(A009531(n)))` -/
def P4400044204816330599.Spec : Prop :=
  ∀ n, P4400044204816330599.a n = A325488 n

end A325488

/-! ## A325488.P16007541600977901610

`A008651(A141310(n)-1)`
-/

namespace A325488.P16007541600977901610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A141310 n - 1).toNat

end

end A325488.P16007541600977901610

namespace A325488

/-- `A008651(A141310(n)-1)` -/
def P16007541600977901610.Spec : Prop :=
  ∀ n, P16007541600977901610.a n = A325488 n

end A325488

/-! ## A325488.P15920999976689736476

`A008651(lcm(2, A009531(n)))`
-/

namespace A325488.P15920999976689736476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (Int.lcm 2 (A009531 n))

end

end A325488.P15920999976689736476

namespace A325488

/-- `A008651(lcm(2, A009531(n)))` -/
def P15920999976689736476.Spec : Prop :=
  ∀ n, P15920999976689736476.a n = A325488 n

end A325488

/-! ## A325488.P552474347246827003

`A008676(n-A029578(n))`
-/

namespace A325488.P552474347246827003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 ((n : ℤ) - A029578 n).toNat

end

end A325488.P552474347246827003

namespace A325488

/-- `A008676(n-A029578(n))` -/
def P552474347246827003.Spec : Prop :=
  ∀ n, P552474347246827003.a n = A325488 n

end A325488

/-! ## A325488.P14676618173224552571

`A008651(n/A093178(n))`
-/

namespace A325488.P14676618173224552571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

end

end A325488.P14676618173224552571

namespace A325488

/-- `A008651(n/A093178(n))` -/
def P14676618173224552571.Spec : Prop :=
  ∀ n, P14676618173224552571.a n = A325488 n

end A325488

/-! ## A325488.P9277686524707275274

`A008651(gcd(n, A000982(n)))`
-/

namespace A325488.P9277686524707275274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (Int.gcd (n : ℤ) (A000982 n))

end

end A325488.P9277686524707275274

namespace A325488

/-- `A008651(gcd(n, A000982(n)))` -/
def P9277686524707275274.Spec : Prop :=
  ∀ n, P9277686524707275274.a n = A325488 n

end A325488

/-! ## A325488.P4459185044747018019

`A008651(1-A093178(n)+n)`
-/

namespace A325488.P4459185044747018019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (1 - A093178 n + (n : ℤ)).toNat

end

end A325488.P4459185044747018019

namespace A325488

/-- `A008651(1-A093178(n)+n)` -/
def P4459185044747018019.Spec : Prop :=
  ∀ n, P4459185044747018019.a n = A325488 n

end A325488

/-! ## A325488.P7533166338906084491

`A008651(1-A124625(n)+n)`
-/

namespace A325488.P7533166338906084491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (1 - A124625 n + (n : ℤ)).toNat

end

end A325488.P7533166338906084491

namespace A325488

/-- `A008651(1-A124625(n)+n)` -/
def P7533166338906084491.Spec : Prop :=
  ∀ n, P7533166338906084491.a n = A325488 n

end A325488

/-! ## A325488.P8518094190552536329

`A008651(n)-A008651(A093178(n))`
-/

namespace A325488.P8518094190552536329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 n - A008651 (A093178 n).toNat

end

end A325488.P8518094190552536329

namespace A325488

/-- `A008651(n)-A008651(A093178(n))` -/
def P8518094190552536329.Spec : Prop :=
  ∀ n, P8518094190552536329.a n = A325488 n

end A325488

/-! ## A325488.P9354596139589261397

`A008682(n)-A008682(A109613(n))`
-/

namespace A325488.P9354596139589261397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 n - A008682 (A109613 n).toNat

end

end A325488.P9354596139589261397

namespace A325488

/-- `A008682(n)-A008682(A109613(n))` -/
def P9354596139589261397.Spec : Prop :=
  ∀ n, P9354596139589261397.a n = A325488 n

end A325488

/-! ## A325488.P4189016031536601419

`A008676(A057979(n+1))`
-/

namespace A325488.P4189016031536601419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A057979 (n + 1)).toNat

end

end A325488.P4189016031536601419

namespace A325488

/-- `A008676(A057979(n+1))` -/
def P4189016031536601419.Spec : Prop :=
  ∀ n, P4189016031536601419.a n = A325488 n

end A325488

/-! ## A325488.P17436725226153012978

`A008651(A124625(n+1))`
-/

namespace A325488.P17436725226153012978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A124625 (n + 1)).toNat

end

end A325488.P17436725226153012978

namespace A325488

/-- `A008651(A124625(n+1))` -/
def P17436725226153012978.Spec : Prop :=
  ∀ n, P17436725226153012978.a n = A325488 n

end A325488

/-! ## A325488.P11519138179007675048

`and(A008651(n), A077896(n))`
-/

namespace A325488.P11519138179007675048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008651 n) (A077896 n)

end

end A325488.P11519138179007675048

namespace A325488

/-- `and(A008651(n), A077896(n))` -/
def P11519138179007675048.Spec : Prop :=
  ∀ n, P11519138179007675048.a n = A325488 n

end A325488

/-! ## A325488.P12288009733235263524

`and(A008651(n), A080041(n))`
-/

namespace A325488.P12288009733235263524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008651 n) (A080041 n)

end

end A325488.P12288009733235263524

namespace A325488

/-- `and(A008651(n), A080041(n))` -/
def P12288009733235263524.Spec : Prop :=
  ∀ n, P12288009733235263524.a n = A325488 n

end A325488

/-! ## A325488.P9899100176768077526

`and(A033182(n), A080041(n))`
-/

namespace A325488.P9899100176768077526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033182 n) (A080041 n)

end

end A325488.P9899100176768077526

namespace A325488

/-- `and(A033182(n), A080041(n))` -/
def P9899100176768077526.Spec : Prop :=
  ∀ n, P9899100176768077526.a n = A325488 n

end A325488

/-!
# A325489: Digits of one of the four 5-adic integers 6^(1/4) that is congruent to 1 mod 5.

The programs for A325489, there is no canonical definition to state claims against.
-/

/-! ## A325489.P9934951514917323481

`(A325484(n+1)-A325484(n))/5^n`
-/

namespace A325489.P9934951514917323481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325484 (n + 1) - A325484 n : ℚ) / (5 ^ n : ℚ)

end

end A325489.P9934951514917323481

/-! ## A325489.P14765152519499562884

`floor(acot(n)+4-A325492(n))`
-/

namespace A325489.P14765152519499562884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (4 - A325492 n : ℝ)⌋

end

end A325489.P14765152519499562884

/-! ## A325489.P14286234405108085406

`A054977(n)+3-A325492(n)`
-/

namespace A325489.P14286234405108085406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (3 - A325492 n)

end

end A325489.P14286234405108085406

/-! ## A325489.P16974638827997128155

`A000007(n)+4-A325492(n)`
-/

namespace A325489.P16974638827997128155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (4 - A325492 n)

end

end A325489.P16974638827997128155

/-! ## A325489.P1144913019430347497

`5-(A325492(n)+A057427(n))`
-/

namespace A325489.P1144913019430347497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A325492 n + A057427 n)

end

end A325489.P1144913019430347497

/-! ## A325489.P4037516762281875932

`A057428(n)+5-A325492(n)`
-/

namespace A325489.P4037516762281875932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (5 - A325492 n)

end

end A325489.P4037516762281875932

/-! ## A325489.P4946837122968293124

`val(A000040(n+1), 2)+4-A325492(n)`
-/

namespace A325489.P4946837122968293124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ) + (4 - A325492 n)

end

end A325489.P4946837122968293124

/-! ## A325489.P14746997954883774192

`A000045(C(2, n+2))+4-A325492(n)`
-/

namespace A325489.P14746997954883774192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) + (4 - A325492 n)

end

end A325489.P14746997954883774192

/-! ## A325489.P622837012055436092

`val(record[A006530(n+2)], 2)+4-A325492(n)`
-/

namespace A325489.P622837012055436092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 : ℤ) + (4 - A325492 n)

end

end A325489.P622837012055436092

/-!
# A325490: Digits of one of the four 5-adic integers 6^(1/4) that is congruent to 2 mod 5.

The programs for A325490, there is no canonical definition to state claims against.
-/

/-! ## A325490.P3101593909980134133

`ceil(acot(n)+3-A325491(n))`
-/

namespace A325490.P3101593909980134133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ) + (3 - A325491 n : ℝ)⌉

end

end A325490.P3101593909980134133

/-! ## A325490.P13073517182080281551

`A054977(n)+3-A325491(n)`
-/

namespace A325490.P13073517182080281551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (3 - A325491 n)

end

end A325490.P13073517182080281551

/-! ## A325490.P7542485053813454528

`A000007(n)+4-A325491(n)`
-/

namespace A325490.P7542485053813454528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (4 - A325491 n)

end

end A325490.P7542485053813454528

/-! ## A325490.P16852089282844277972

`5-(A325491(n)+A057427(n))`
-/

namespace A325490.P16852089282844277972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A325491 n + A057427 n)

end

end A325490.P16852089282844277972

/-! ## A325490.P10893355261586686146

`A057428(n)+5-A325491(n)`
-/

namespace A325490.P10893355261586686146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (5 - A325491 n)

end

end A325490.P10893355261586686146

/-! ## A325490.P6621256330920861108

`gcd(2, A000040(n+1))+3-A325491(n)`
-/

namespace A325490.P6621256330920861108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) + (3 - A325491 n)

end

end A325490.P6621256330920861108

/-! ## A325490.P1771136043675070188

`ceil(2/A006530(n+1)²)+3-A325491(n)`
-/

namespace A325490.P1771136043675070188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A006530 (n + 1) ^ 2 : ℚ)⌉ + (3 - A325491 n)

end

end A325490.P1771136043675070188

/-! ## A325490.P5756171834073203906

`A000005((2-4/2)^(n/4)+1)+3-A325491(n)`
-/

namespace A325490.P5756171834073203906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 - (4 : ℚ) / 2 : ℝ) ^ ((n : ℚ) / 4 : ℝ) + 1)).toNat + (3 - A325491 n)

end

end A325490.P5756171834073203906

/-! ## A325490.P10579957987754382556

`A269591(n)+A269592(n)-A325491(n)`
-/

namespace A325490.P10579957987754382556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269591 n + (A269592 n - A325491 n)

end

end A325490.P10579957987754382556

/-! ## A325490.P11698530998130295466

`A324025(n)+A324026(n)-A325491(n)`
-/

namespace A325490.P11698530998130295466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324025 n + (A324026 n - A325491 n)

end

end A325490.P11698530998130295466

/-!
# A325491: Digits of one of the four 5-adic integers 6^(1/4) that is congruent to 3 mod 5.

The programs for A325491, there is no canonical definition to state claims against.
-/

/-! ## A325491.P7966297579526731883

`ceil(acot(n))+3-A325490(n)`
-/

namespace A325491.P7966297579526731883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ + (3 - A325490 n)

end

end A325491.P7966297579526731883

/-! ## A325491.P11436666029176489488

`A054977(n)+3-A325490(n)`
-/

namespace A325491.P11436666029176489488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (3 - A325490 n)

end

end A325491.P11436666029176489488

/-! ## A325491.P15482246406893101396

`A000007(n)+4-A325490(n)`
-/

namespace A325491.P15482246406893101396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (4 - A325490 n)

end

end A325491.P15482246406893101396

/-! ## A325491.P3905669612402401531

`5-(A325490(n)+A057427(n))`
-/

namespace A325491.P3905669612402401531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A325490 n + A057427 n)

end

end A325491.P3905669612402401531

/-! ## A325491.P13005890562062181330

`A000038(n)!+3-A325490(n)`
-/

namespace A325491.P13005890562062181330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) + (3 - A325490 n)

end

end A325491.P13005890562062181330

/-! ## A325491.P4059267140017246353

`A039982(4*n)+4-A325490(n)`
-/

namespace A325491.P4059267140017246353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (4 * n) + (4 - A325490 n)

end

end A325491.P4059267140017246353

/-! ## A325491.P16380685997710474898

`A210850(n)+A210851(n)-A325490(n)`
-/

namespace A325491.P16380685997710474898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 n + (A210851 n - A325490 n)

end

end A325491.P16380685997710474898

/-!
# A325492: Digits of one of the four 5-adic integers 6^(1/4) that is congruent to 4 mod 5.

The programs for A325492, there is no canonical definition to state claims against.
-/

/-! ## A325492.P6908280845083953184

`(A325487(n+1)-A325487(n))/5^n`
-/

namespace A325492.P6908280845083953184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325487 (n + 1) - A325487 n : ℚ) / (5 ^ n : ℚ)

end

end A325492.P6908280845083953184

/-! ## A325492.P3651002459769025641

`floor(acot(n))+4-A325489(n)`
-/

namespace A325492.P3651002459769025641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (4 - A325489 n)

end

end A325492.P3651002459769025641

/-! ## A325492.P10472088199475727199

`A000007(n)+4-A325489(n)`
-/

namespace A325492.P10472088199475727199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (4 - A325489 n)

end

end A325492.P10472088199475727199

/-! ## A325492.P17085571420797508848

`5-(A325489(n)+A057427(n))`
-/

namespace A325492.P17085571420797508848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A325489 n + A057427 n)

end

end A325492.P17085571420797508848

/-! ## A325492.P6193515347371068655

`A057428(n)+5-A325489(n)`
-/

namespace A325492.P6193515347371068655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + 5 - A325489 n

end

end A325492.P6193515347371068655

/-! ## A325492.P17577794866203713740

`a(A000038(n))-A325489(n)` with `a(0)=4`
-/

namespace A325492.P17577794866203713740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (A000038 n).toNat - A325489 n

end

end A325492.P17577794866203713740

/-! ## A325492.P5138114583380470432

`a(floor(n/A000040(n+1)))-A325489(n)` with `a(0)=4`
-/

namespace A325492.P5138114583380470432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a ⌊(n : ℚ) / (A000040 (n + 1) : ℚ)⌋.toNat - A325489 n

end

end A325492.P5138114583380470432

/-! ## A325492.P6223369799214403769

`A210850(n)+A210851(n)-A325489(n)`
-/

namespace A325492.P6223369799214403769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 n + (A210851 n - A325489 n)

end

end A325492.P6223369799214403769

/-! ## A325492.P4293392003094784130

`A325490(n)+A325491(n)-A325489(n)`
-/

namespace A325492.P4293392003094784130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325490 n + (A325491 n - A325489 n)

end

end A325492.P4293392003094784130

/-!
# A325494: Difference sequence of A325419.

The programs for A325494, there is no canonical definition to state claims against.
-/

/-! ## A325494.P1390750973100879574

`Δ[A325419(n+1)]`
-/

namespace A325494.P1390750973100879574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325494.P1390750973100879574

/-! ## A325494.P11244446669132952389

`A325419(n+2)-A325419(n+1)`
-/

namespace A325494.P11244446669132952389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325419 (n + 2) - A325419 (n + 1)

end

end A325494.P11244446669132952389

/-! ## A325494.P5119231953218074108

`Δ[record[A325419(A133310(n))]]`
-/

namespace A325494.P5119231953218074108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325419 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325494.P5119231953218074108

/-! ## A325494.P12266743618993380007

`Δ[record[A325419(A158416(n))]]`
-/

namespace A325494.P12266743618993380007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325419 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325494.P12266743618993380007

/-! ## A325494.P10080019745107275788

`Δ[record[A325419(A137734(n))]]`
-/

namespace A325494.P10080019745107275788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325419 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325494.P10080019745107275788

/-!
# A325495: Difference sequence of A325420.

The programs for A325495, there is no canonical definition to state claims against.
-/

/-! ## A325495.P14883680708383374768

`Δ[A325420(n+1)]`
-/

namespace A325495.P14883680708383374768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325495.P14883680708383374768

/-! ## A325495.P13573456809407077441

`Δ[record[A325420(A137734(n))]]`
-/

namespace A325495.P13573456809407077441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325420 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325495.P13573456809407077441

/-! ## A325495.P17277956856858306289

`Δ[record[A325420(A152271(n))]]`
-/

namespace A325495.P17277956856858306289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325420 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325495.P17277956856858306289

/-! ## A325495.P4293802318717034656

`Δ[record[A325420(A158416(n))]]`
-/

namespace A325495.P4293802318717034656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325420 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325495.P4293802318717034656

/-! ## A325495.P313454890334664781

`Δ[record[A325420(A263111(n))]]`
-/

namespace A325495.P313454890334664781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325420 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325495.P313454890334664781

/-! ## A325495.P3277513606029650961

`Δ[record[A325420(A286602(n))]]`
-/

namespace A325495.P3277513606029650961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325420 (A286602 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325495.P3277513606029650961

/-! ## A325495.P15364389309725130381

`A325420(n+2)-A325420(n+1)`
-/

namespace A325495.P15364389309725130381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325420 (n + 2) - A325420 (n + 1)

end

end A325495.P15364389309725130381

/-! ## A325495.P1487227633925041321

`A325415(A325420(n+2)%A325420(n+1))`
-/

namespace A325495.P1487227633925041321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325415 (Int.tmod (A325420 (n + 2)) (A325420 (n + 1))).toNat

end

end A325495.P1487227633925041321

/-!
# A325496: Difference sequence of A077477.

The programs for A325496, there is no canonical definition to state claims against.
-/

/-! ## A325496.P2706636726089862635

`Δ[A077477(n+1)]`
-/

namespace A325496.P2706636726089862635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325496.P2706636726089862635

/-! ## A325496.P774444521670648782

`A077477(n+2)-A077477(n+1)`
-/

namespace A325496.P774444521670648782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077477 (n + 2) - A077477 (n + 1)

end

end A325496.P774444521670648782

/-! ## A325496.P10161292310630450985

`A097272(Δ[A077477(n-log2(1/2))])`
-/

namespace A325496.P10161292310630450985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077477 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (f1 (n + 1) - f1 n).toNat

end

end A325496.P10161292310630450985

/-! ## A325496.P11195063319754689816

`Δ[A077477(n-log2(1/2))%A195605(n)]`
-/

namespace A325496.P11195063319754689816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077477 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) (A195605 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325496.P11195063319754689816

/-! ## A325496.P12958547579806722114

`abs(Δ[A077477(A008611(3*n))])`
-/

namespace A325496.P12958547579806722114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077477 (A008611 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325496.P12958547579806722114

/-! ## A325496.P1639244288587702036

`A001222(ratio[2^A077477(n+1)])`
-/

namespace A325496.P1639244288587702036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A077477 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (f1 (n + 1) / f1 n)).toNat

end

end A325496.P1639244288587702036

/-! ## A325496.P3740999455243787431

`A000005(ratio[2^A077477(n+1)]/2)`
-/

namespace A325496.P3740999455243787431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A077477 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (f1 (n + 1) / f1 n / 2)).toNat

end

end A325496.P3740999455243787431

/-! ## A325496.P1387564071634415929

`A224030(ratio[2^A077477(n+1)]+14)`
-/

namespace A325496.P1387564071634415929
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A077477 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224030 (SequenceMachineLib.roundAway (f1 (n + 1) / f1 n + 14)).toNat

end

end A325496.P1387564071634415929

/-!
# A325497: Difference sequence of A325422.

The programs for A325497, there is no canonical definition to state claims against.
-/

/-! ## A325497.P10547297113632942749

`Δ[A325422(n+1)]`
-/

namespace A325497.P10547297113632942749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325497.P10547297113632942749

/-! ## A325497.P15363283581505229219

`abs(Δ[A325422(n-log2(1/2))])`
-/

namespace A325497.P15363283581505229219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325422 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325497.P15363283581505229219

/-! ## A325497.P3148381103026222789

`A325422(n+2)-A325422(n+1)`
-/

namespace A325497.P3148381103026222789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325422 (n + 2) - A325422 (n + 1)

end

end A325497.P3148381103026222789

/-! ## A325497.P5321334330621314494

`Δ[record[A325422(A152271(n))]]`
-/

namespace A325497.P5321334330621314494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325422 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325497.P5321334330621314494

/-! ## A325497.P17939609493338528015

`Δ[record[A325422(A158416(n))]]`
-/

namespace A325497.P17939609493338528015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325422 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325497.P17939609493338528015

/-! ## A325497.P11965153399770757732

`Δ[record[A325422(A126759(n))]]`
-/

namespace A325497.P11965153399770757732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325422 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325497.P11965153399770757732

/-! ## A325497.P15925637841408537219

`Δ[record[A325422(A263111(n))]]`
-/

namespace A325497.P15925637841408537219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325422 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325497.P15925637841408537219

/-! ## A325497.P688103681662818411

`Δ[record[A325422(A286602(n))]]`
-/

namespace A325497.P688103681662818411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325422 (A286602 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325497.P688103681662818411

/-!
# A325498: Difference sequence of A036668.

The programs for A325498, the canonical program `A325498.P3599496736860101709` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325498 has offset 1).

The definition of A325498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325498.P3599496736860101709

`Δ[A036668(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A325498

/-- `Δ[A036668(n+1)]` -/
def P3599496736860101709.Spec : Prop :=
  ∀ n, P3599496736860101709.a n = A325498 (n + 1)

theorem P3599496736860101709.correct : P3599496736860101709.Spec := by
  intro n
  simp only [A325498, Nat.add_sub_cancel]

end A325498

/-! ## A325498.P18279256451528754062

`A036668(n+2)-A036668(n+1)`
-/

namespace A325498.P18279256451528754062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036668 (n + 2) - A036668 (n + 1)

end

end A325498.P18279256451528754062

namespace A325498

/-- `A036668(n+2)-A036668(n+1)` -/
def P18279256451528754062.Spec : Prop :=
  ∀ n, P18279256451528754062.a n = A325498 (n + 1)

theorem P18279256451528754062.correct : P18279256451528754062.Spec := by
  intro n
  simp only [A325498, Nat.add_sub_cancel, A325498.P18279256451528754062.a, A325498.P3599496736860101709.f1, A325498.P3599496736860101709.a, SequenceMachineLib.memo_apply]

end A325498

/-! ## A325498.P17219847365023404999

`Δ[eq[0, A182582(n+1)]]`
-/

namespace A325498.P17219847365023404999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325498.P17219847365023404999

namespace A325498

/-- `Δ[eq[0, A182582(n+1)]]` -/
def P17219847365023404999.Spec : Prop :=
  ∀ n, P17219847365023404999.a n = A325498 (n + 1)

end A325498

/-! ## A325498.P12057461484640985539

`Δ[eq[0, A169611(A169611(n+1)²+1)]]`
-/

namespace A325498.P12057461484640985539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A169611 (n + 1) ^ 2 + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325498.P12057461484640985539

namespace A325498

/-- `Δ[eq[0, A169611(A169611(n+1)²+1)]]` -/
def P12057461484640985539.Spec : Prop :=
  ∀ n, P12057461484640985539.a n = A325498 (n + 1)

end A325498

/-! ## A325498.P17477422304480563214

`Δ[eq[0, A169611(3*A169611(n+1)+1)]]`
-/

namespace A325498.P17477422304480563214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (3 * A169611 (n + 1) + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325498.P17477422304480563214

namespace A325498

/-- `Δ[eq[0, A169611(3*A169611(n+1)+1)]]` -/
def P17477422304480563214.Spec : Prop :=
  ∀ n, P17477422304480563214.a n = A325498 (n + 1)

end A325498

/-! ## A325498.P10818834923396907769

`Δ[eq[A014578(n), A285384(n+1)]]`
-/

namespace A325498.P10818834923396907769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325498.P10818834923396907769

namespace A325498

/-- `Δ[eq[A014578(n), A285384(n+1)]]` -/
def P10818834923396907769.Spec : Prop :=
  ∀ n, P10818834923396907769.a n = A325498 (n + 1)

end A325498

/-!
# A325499: Difference sequence of A325424.

The programs for A325499, the canonical program `A325499.P806690597136758802` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325499 has offset 1).

The definition of A325499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325499.P11467420356725925103

`Δ[A325424(n+1)]`
-/

namespace A325499.P11467420356725925103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325499.P11467420356725925103

namespace A325499

/-- `Δ[A325424(n+1)]` -/
def P11467420356725925103.Spec : Prop :=
  ∀ n, P11467420356725925103.a n = A325499 (n + 1)

end A325499

/-! ## A325499.P806690597136758802

`Δ[lt[0, A182582(n+1)]]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A325499

/-- `Δ[lt[0, A182582(n+1)]]` -/
def P806690597136758802.Spec : Prop :=
  ∀ n, P806690597136758802.a n = A325499 (n + 1)

theorem P806690597136758802.correct : P806690597136758802.Spec := by
  intro n
  simp only [A325499, Nat.add_sub_cancel]

end A325499

/-! ## A325499.P17746518538568939256

`A325424(n+2)-A325424(n+1)`
-/

namespace A325499.P17746518538568939256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325424 (n + 2) - A325424 (n + 1)

end

end A325499.P17746518538568939256

namespace A325499

/-- `A325424(n+2)-A325424(n+1)` -/
def P17746518538568939256.Spec : Prop :=
  ∀ n, P17746518538568939256.a n = A325499 (n + 1)

end A325499

/-! ## A325499.P14640752850711972320

`Δ[eq[1, and(1, A169611(n+1))]]`
-/

namespace A325499.P14640752850711972320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A169611 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325499.P14640752850711972320

namespace A325499

/-- `Δ[eq[1, and(1, A169611(n+1))]]` -/
def P14640752850711972320.Spec : Prop :=
  ∀ n, P14640752850711972320.a n = A325499 (n + 1)

end A325499

/-! ## A325499.P2361565571938229457

`Δ[eq[1, A169611(A169611(n+1)²+1)]]`
-/

namespace A325499.P2361565571938229457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A169611 (n + 1) ^ 2 + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325499.P2361565571938229457

namespace A325499

/-- `Δ[eq[1, A169611(A169611(n+1)²+1)]]` -/
def P2361565571938229457.Spec : Prop :=
  ∀ n, P2361565571938229457.a n = A325499 (n + 1)

end A325499

/-! ## A325499.P1810167638367744396

`Δ[record[n*A169611(A169611(n+2)²+1)]]`
-/

namespace A325499.P1810167638367744396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A169611 (A169611 (n + 2) ^ 2 + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325499.P1810167638367744396

namespace A325499

/-- `Δ[record[n*A169611(A169611(n+2)²+1)]]` -/
def P1810167638367744396.Spec : Prop :=
  ∀ n, P1810167638367744396.a n = A325499 (n + 1)

end A325499

/-! ## A325499.P12514318916769276732

`Δ[eq[A014578(n), A285384(2*n+1)]]`
-/

namespace A325499.P12514318916769276732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325499.P12514318916769276732

namespace A325499

/-- `Δ[eq[A014578(n), A285384(2*n+1)]]` -/
def P12514318916769276732.Spec : Prop :=
  ∀ n, P12514318916769276732.a n = A325499 (n + 1)

end A325499

