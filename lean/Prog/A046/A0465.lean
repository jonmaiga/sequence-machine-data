import SequenceMachineLib
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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A046500: Smallest prime with multiplicative persistence n.

The programs for A046500, there is no canonical definition to state claims against.
-/

/-! ## A046500.P2858861878518360722

`A156850(A182233(n+2))`
-/

namespace A046500.P2858861878518360722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156850 (A182233 (n + 2)).toNat

end

end A046500.P2858861878518360722

/-!
# A046501: Primes with multiplicative persistence value 1.

The programs for A046501, there is no canonical definition to state claims against.
-/

/-! ## A046501.P1182974480062847535

`p?[A046510(n+1)]`
-/

namespace A046501.P1182974480062847535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046501.P1182974480062847535

/-! ## A046501.P6148985389767993573

`record[A006530(A046510(n+2))]`
-/

namespace A046501.P6148985389767993573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046510 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046501.P6148985389767993573

/-! ## A046501.P1060413577877416441

`filter[A046510(n+1), A010051(#)]`
-/

namespace A046501.P1060413577877416441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A046501.P1060413577877416441

/-! ## A046501.P11567838727943174929

`filter[A046510(n+1), A323153(#)]`
-/

namespace A046501.P11567838727943174929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A046501.P11567838727943174929

/-! ## A046501.P5591462486455118784

`∩[A000040(n+1), A046510(n+1)]`
-/

namespace A046501.P5591462486455118784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046501.P5591462486455118784

/-! ## A046501.P7189622282018578668

`∩[A004139(n+1), A046510(n+1)]`
-/

namespace A046501.P7189622282018578668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046501.P7189622282018578668

/-! ## A046501.P14044894239402528192

`∩[A006005(n+1), A046510(n+1)]`
-/

namespace A046501.P14044894239402528192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046501.P14044894239402528192

/-! ## A046501.P16666877288075601144

`∩[A008578(n+1), A046510(n+1)]`
-/

namespace A046501.P16666877288075601144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046501.P16666877288075601144

/-! ## A046501.P3217017071641918652

`∩[A045319(n+1), A046510(n+1)]`
-/

namespace A046501.P3217017071641918652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046501.P3217017071641918652

/-! ## A046501.P9696030519586986926

`∩[A045344(n+1), A046510(n+1)]`
-/

namespace A046501.P9696030519586986926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046501.P9696030519586986926

/-! ## A046501.P8062425849642173352

`∩[A046022(n+1), A046510(n+1)]`
-/

namespace A046501.P8062425849642173352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046501.P8062425849642173352

/-! ## A046501.P4198652298550710801

`∩[A046510(n+1), A053813(n+1)]`
-/

namespace A046501.P4198652298550710801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046501.P4198652298550710801

/-! ## A046501.P17852905209234626647

`∩[A046510(n+1), A065091(n+1)]`
-/

namespace A046501.P17852905209234626647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046501.P17852905209234626647

/-! ## A046501.P16647817901707918355

`∩[A046510(n+1), A067126(n+1)]`
-/

namespace A046501.P16647817901707918355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046501.P16647817901707918355

/-! ## A046501.P14078679248228008961

`∩[A046510(n+1), A158611(n+1)]`
-/

namespace A046501.P14078679248228008961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046501.P14078679248228008961

/-! ## A046501.P8712701253602334673

`∩[A046510(n+1), A161346(n+1)]`
-/

namespace A046501.P8712701253602334673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046501.P8712701253602334673

/-! ## A046501.P6366060300125451045

`∩[A046510(n+1), A161428(n+1)]`
-/

namespace A046501.P6366060300125451045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046501.P6366060300125451045

/-! ## A046501.P3385011888075062941

`∩[A046510(n+1), A193339(n+1)]`
-/

namespace A046501.P3385011888075062941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046501.P3385011888075062941

/-! ## A046501.P17377391522558776355

`p?[eq[1, A031346(n)]]`
-/

namespace A046501.P17377391522558776355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A046501.P17377391522558776355

/-! ## A046501.P3807587219417079523

`eq[A031346(n), A217668(n)]`
-/

namespace A046501.P3807587219417079523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046501.P3807587219417079523

/-!
# A046502: Primes with multiplicative persistence value 2.

The programs for A046502, there is no canonical definition to state claims against.
-/

/-! ## A046502.P8729001555300622249

`p?[A046511(n+1)]`
-/

namespace A046502.P8729001555300622249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046502.P8729001555300622249

/-! ## A046502.P8764951131394936119

`filter[A046511(n+1), A010051(#)]`
-/

namespace A046502.P8764951131394936119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A046502.P8764951131394936119

/-! ## A046502.P16888560933340912720

`∩[A000040(n+1), A046511(n+1)]`
-/

namespace A046502.P16888560933340912720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P16888560933340912720

/-! ## A046502.P6559482097828268388

`∩[A004139(n+1), A046511(n+1)]`
-/

namespace A046502.P6559482097828268388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P6559482097828268388

/-! ## A046502.P7228064696081640817

`∩[A006005(n+1), A046511(n+1)]`
-/

namespace A046502.P7228064696081640817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P7228064696081640817

/-! ## A046502.P10727972280305276128

`∩[A008578(n+1), A046511(n+1)]`
-/

namespace A046502.P10727972280305276128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P10727972280305276128

/-! ## A046502.P10454546804473021941

`∩[A033946(n+1), A046511(n+1)]`
-/

namespace A046502.P10454546804473021941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P10454546804473021941

/-! ## A046502.P1977057354723020711

`∩[A038618(n+1), A046511(n+1)]`
-/

namespace A046502.P1977057354723020711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P1977057354723020711

/-! ## A046502.P962838390566938956

`∩[A045319(n+1), A046511(n+1)]`
-/

namespace A046502.P962838390566938956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P962838390566938956

/-! ## A046502.P4301726997986472607

`∩[A045344(n+1), A046511(n+1)]`
-/

namespace A046502.P4301726997986472607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P4301726997986472607

/-! ## A046502.P16368173378389744914

`∩[A046022(n+1), A046511(n+1)]`
-/

namespace A046502.P16368173378389744914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P16368173378389744914

/-! ## A046502.P8022134232096241630

`∩[A046511(n+1), A051948(n+1)]`
-/

namespace A046502.P8022134232096241630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P8022134232096241630

/-! ## A046502.P6522113412381078632

`∩[A046511(n+1), A062972(n+1)]`
-/

namespace A046502.P6522113412381078632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P6522113412381078632

/-! ## A046502.P2362953582910949106

`∩[A046511(n+1), A065091(n+1)]`
-/

namespace A046502.P2362953582910949106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P2362953582910949106

/-! ## A046502.P7949337057230079005

`∩[A046511(n+1), A065396(n+1)]`
-/

namespace A046502.P7949337057230079005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P7949337057230079005

/-! ## A046502.P3323593812495336655

`∩[A046511(n+1), A066050(n+1)]`
-/

namespace A046502.P3323593812495336655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P3323593812495336655

/-! ## A046502.P15662575019565621716

`∩[A046511(n+1), A067126(n+1)]`
-/

namespace A046502.P15662575019565621716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P15662575019565621716

/-! ## A046502.P957732314107974865

`∩[A046511(n+1), A071621(n+1)]`
-/

namespace A046502.P957732314107974865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P957732314107974865

/-! ## A046502.P11495992161369440488

`∩[A116974(n+1), A046511(n+1)]`
-/

namespace A046502.P11495992161369440488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P11495992161369440488

/-! ## A046502.P15672304552612246282

`∩[A046511(n+1), A161346(n+1)]`
-/

namespace A046502.P15672304552612246282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046502.P15672304552612246282

/-!
# A046503: Primes with multiplicative persistence value 3.

The programs for A046503, there is no canonical definition to state claims against.
-/

/-! ## A046503.P12146504598454518894

`p?[A046512(n+1)]`
-/

namespace A046503.P12146504598454518894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046503.P12146504598454518894

/-! ## A046503.P6956388435943972870

`p?[record[A046512(A291769(n))]]`
-/

namespace A046503.P6956388435943972870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046503.P6956388435943972870

/-! ## A046503.P16758934399473506404

`record[A006530(A046512(n+2))]`
-/

namespace A046503.P16758934399473506404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046512 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046503.P16758934399473506404

/-! ## A046503.P4941163314968763367

`filter[A046512(n+1), A010051(#)]`
-/

namespace A046503.P4941163314968763367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A046503.P4941163314968763367

/-! ## A046503.P15924230783804626959

`∩[A000040(n+1), A046512(n+1)]`
-/

namespace A046503.P15924230783804626959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P15924230783804626959

/-! ## A046503.P2855103304521967887

`∩[A004139(n+1), A046512(n+1)]`
-/

namespace A046503.P2855103304521967887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P2855103304521967887

/-! ## A046503.P4785875272828086425

`∩[A006005(n+1), A046512(n+1)]`
-/

namespace A046503.P4785875272828086425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P4785875272828086425

/-! ## A046503.P2606897334840970228

`∩[A008578(n+1), A046512(n+1)]`
-/

namespace A046503.P2606897334840970228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P2606897334840970228

/-! ## A046503.P8035226671368949244

`∩[A033946(n+1), A046512(n+1)]`
-/

namespace A046503.P8035226671368949244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P8035226671368949244

/-! ## A046503.P5581629913998290749

`∩[A038618(n+1), A046512(n+1)]`
-/

namespace A046503.P5581629913998290749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P5581629913998290749

/-! ## A046503.P2714453123585392023

`∩[A045319(n+1), A046512(n+1)]`
-/

namespace A046503.P2714453123585392023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P2714453123585392023

/-! ## A046503.P8621098358898935960

`∩[A045344(n+1), A046512(n+1)]`
-/

namespace A046503.P8621098358898935960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P8621098358898935960

/-! ## A046503.P12270561917566712036

`∩[A046022(n+1), A046512(n+1)]`
-/

namespace A046503.P12270561917566712036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P12270561917566712036

/-! ## A046503.P696505852210445297

`∩[A046512(n+1), A051948(n+1)]`
-/

namespace A046503.P696505852210445297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P696505852210445297

/-! ## A046503.P7435207649175207461

`∩[A046512(n+1), A062972(n+1)]`
-/

namespace A046503.P7435207649175207461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P7435207649175207461

/-! ## A046503.P5228495677705861895

`∩[A046512(n+1), A065091(n+1)]`
-/

namespace A046503.P5228495677705861895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P5228495677705861895

/-! ## A046503.P14336367300784084059

`∩[A046512(n+1), A065396(n+1)]`
-/

namespace A046503.P14336367300784084059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P14336367300784084059

/-! ## A046503.P954819872885919634

`∩[A046512(n+1), A066050(n+1)]`
-/

namespace A046503.P954819872885919634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P954819872885919634

/-! ## A046503.P8678487672057139198

`∩[A046512(n+1), A067126(n+1)]`
-/

namespace A046503.P8678487672057139198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P8678487672057139198

/-! ## A046503.P17062377564416386101

`∩[A046512(n+1), A071621(n+1)]`
-/

namespace A046503.P17062377564416386101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046503.P17062377564416386101

/-!
# A046504: Primes with multiplicative persistence value 4.

The programs for A046504, there is no canonical definition to state claims against.
-/

/-! ## A046504.P15567119550765875875

`p?[A046513(n+1)]`
-/

namespace A046504.P15567119550765875875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046504.P15567119550765875875

/-! ## A046504.P6278015779075858744

`∏{p}[p?[A046513(A028310(n))], #]`
-/

namespace A046504.P6278015779075858744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A046504.P6278015779075858744

/-! ## A046504.P12228840135969386273

`∩[A038618(n+1), A046513(n+1)]`
-/

namespace A046504.P12228840135969386273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P12228840135969386273

/-! ## A046504.P11088605211253670678

`p?[A046513(A028310(n))]%A017379(n)`
-/

namespace A046504.P11088605211253670678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017379 n)

end

end A046504.P11088605211253670678

/-! ## A046504.P2337293051061784775

`filter[A046513(n+1), A010051(#)]`
-/

namespace A046504.P2337293051061784775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A046504.P2337293051061784775

/-! ## A046504.P8252717231603601982

`∩[A000040(n+1), A046513(n+1)]`
-/

namespace A046504.P8252717231603601982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P8252717231603601982

/-! ## A046504.P13311471174827462555

`∩[A004139(n+1), A046513(n+1)]`
-/

namespace A046504.P13311471174827462555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P13311471174827462555

/-! ## A046504.P9755603105014922114

`∩[A006005(n+1), A046513(n+1)]`
-/

namespace A046504.P9755603105014922114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P9755603105014922114

/-! ## A046504.P8247035698253653185

`∩[A008578(n+1), A046513(n+1)]`
-/

namespace A046504.P8247035698253653185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P8247035698253653185

/-! ## A046504.P6049393663089595050

`∩[A033946(n+1), A046513(n+1)]`
-/

namespace A046504.P6049393663089595050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P6049393663089595050

/-! ## A046504.P2804399740106717174

`∩[A045319(n+1), A046513(n+1)]`
-/

namespace A046504.P2804399740106717174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P2804399740106717174

/-! ## A046504.P3985960118586183236

`∩[A045344(n+1), A046513(n+1)]`
-/

namespace A046504.P3985960118586183236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P3985960118586183236

/-! ## A046504.P10660865944460113748

`∩[A046022(n+1), A046513(n+1)]`
-/

namespace A046504.P10660865944460113748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P10660865944460113748

/-! ## A046504.P11496771435388773766

`∩[A046513(n+1), A051948(n+1)]`
-/

namespace A046504.P11496771435388773766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P11496771435388773766

/-! ## A046504.P4220423341066183859

`∩[A046513(n+1), A053813(n+1)]`
-/

namespace A046504.P4220423341066183859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P4220423341066183859

/-! ## A046504.P6081143821836011944

`∩[A046513(n+1), A062972(n+1)]`
-/

namespace A046504.P6081143821836011944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P6081143821836011944

/-! ## A046504.P2580861987716660830

`∩[A046513(n+1), A065091(n+1)]`
-/

namespace A046504.P2580861987716660830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P2580861987716660830

/-! ## A046504.P4326153394688207653

`∩[A046513(n+1), A065396(n+1)]`
-/

namespace A046504.P4326153394688207653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P4326153394688207653

/-! ## A046504.P10606106536128184301

`∩[A046513(n+1), A066050(n+1)]`
-/

namespace A046504.P10606106536128184301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P10606106536128184301

/-! ## A046504.P574440716571286360

`∩[A046513(n+1), A066542(n+1)]`
-/

namespace A046504.P574440716571286360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046504.P574440716571286360

/-!
# A046505: Primes with multiplicative persistence value 5.

The programs for A046505, there is no canonical definition to state claims against.
-/

/-! ## A046505.P11632814873960409834

`p?[A046514(n+1)]`
-/

namespace A046505.P11632814873960409834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046505.P11632814873960409834

/-! ## A046505.P5386247418628166026

`p?[record[A046514(A052938(n))]]`
-/

namespace A046505.P5386247418628166026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046514 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046505.P5386247418628166026

/-! ## A046505.P10323073944597224274

`p?[A033999(n)*A046514(A052938(n))]`
-/

namespace A046505.P10323073944597224274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A046514 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046505.P10323073944597224274

/-! ## A046505.P13834065491327152778

`p?[(n-A004442(n))*A046514(A052938(n))]`
-/

namespace A046505.P13834065491327152778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004442 n) * A046514 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046505.P13834065491327152778

/-! ## A046505.P3135178173587513954

`record[A006530(A046514(n+4))]`
-/

namespace A046505.P3135178173587513954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046514 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046505.P3135178173587513954

/-! ## A046505.P5123660023292985184

`filter[A046514(n+1), A010051(#)]`
-/

namespace A046505.P5123660023292985184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A046505.P5123660023292985184

/-!
# A046506: Primes with multiplicative persistence value 6.

The programs for A046506, there is no canonical definition to state claims against.
-/

/-! ## A046506.P10397263095322721531

`p?[A046515(n+1)]`
-/

namespace A046506.P10397263095322721531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046506.P10397263095322721531

/-! ## A046506.P4211852801317762955

`record[p?[A046515(A203814(n))]]`
-/

namespace A046506.P4211852801317762955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046515 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046506.P4211852801317762955

/-! ## A046506.P5809480468405662

`record[p?[A046515(A331742(n))]]`
-/

namespace A046506.P5809480468405662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046515 (A331742 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046506.P5809480468405662

/-! ## A046506.P139020778025955085

`record[p?[A046515(A065648(n))]]`
-/

namespace A046506.P139020778025955085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046515 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046506.P139020778025955085

/-!
# A046507: Primes with multiplicative persistence value 7.

The programs for A046507, there is no canonical definition to state claims against.
-/

/-! ## A046507.P13713168758762228883

`p?[A046516(n+1)]`
-/

namespace A046507.P13713168758762228883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046507.P13713168758762228883

/-! ## A046507.P13199588353374861581

`record[p?[A046516(A141256(n))]]`
-/

namespace A046507.P13199588353374861581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046516 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046507.P13199588353374861581

/-! ## A046507.P17306790172274747243

`record[p?[A046516(A324344(n))]]`
-/

namespace A046507.P17306790172274747243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046516 (A324344 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046507.P17306790172274747243

/-! ## A046507.P11439519722852832242

`record[p?[A046516(A324347(n))]]`
-/

namespace A046507.P11439519722852832242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046516 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046507.P11439519722852832242

/-! ## A046507.P802252448445140566

`or(1, p?[A046516(A028310(n))])`
-/

namespace A046507.P802252448445140566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046516 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A046507.P802252448445140566

/-!
# A046510: Numbers with multiplicative persistence value 1.

The programs for A046510, there is no canonical definition to state claims against.
-/

/-! ## A046510.P15031394478579522696

`∪[A046501(n+1), A199991(n+1)]`
-/

namespace A046510.P15031394478579522696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046510.P15031394478579522696

/-! ## A046510.P12180806242639429552

`eq[1, A031346(n)]`
-/

namespace A046510.P12180806242639429552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046510.P12180806242639429552

/-! ## A046510.P15440418296924094455

`eq[A031286(A007954(n)), A033330(n+1)]`
-/

namespace A046510.P15440418296924094455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046510.P15440418296924094455

/-! ## A046510.P5373642641897436926

`eq[A053392(A007954(n)), A073531(n+1)]`
-/

namespace A046510.P5373642641897436926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046510.P5373642641897436926

/-! ## A046510.P10551580151604946397

`eq[(1/2)^3^A044913(n+2), A018817(A007954(n))]`
-/

namespace A046510.P10551580151604946397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((1 : ℚ) / 2) ^ 3) ^ (A044913 (n + 2) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018817 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A046510.P10551580151604946397

/-! ## A046510.P18109489102571025380

`A277697(p?[A008578(n+1)*A031346(n)])`
-/

namespace A046510.P18109489102571025380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A031346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046510.P18109489102571025380

/-! ## A046510.P1400636529116889202

`∩[A090273(n+1), A133506(n+1)]`
-/

namespace A046510.P1400636529116889202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046510.P1400636529116889202

/-!
# A046511: Numbers with multiplicative persistence value 2.

The programs for A046511, there is no canonical definition to state claims against.
-/

/-! ## A046511.P5713641398263807986

`∪[A046502(n+1), A199992(n+1)]`
-/

namespace A046511.P5713641398263807986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046511.P5713641398263807986

/-! ## A046511.P10784901966624678057

`eq[2, A031346(n)]`
-/

namespace A046511.P10784901966624678057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046511.P10784901966624678057

/-! ## A046511.P12047799045951555041

`lt[(2-A031346(n))²*A002515(n+1), 2]`
-/

namespace A046511.P12047799045951555041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A031346 n) ^ 2 * A002515 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046511.P12047799045951555041

/-! ## A046511.P11281138690623998184

`lt[lcm(A031346(n)-2, A213561(n+1)), n-2]`
-/

namespace A046511.P11281138690623998184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A031346 n - 2) (A213561 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A046511.P11281138690623998184

/-! ## A046511.P8019086809139097904

`lt[(2-A031346(n))²*A046320(n+1), n+2]`
-/

namespace A046511.P8019086809139097904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A031346 n) ^ 2 * A046320 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046511.P8019086809139097904

/-! ## A046511.P882515701068063970

`lt[(2-A031346(n))², A188967(A188969(n+1))]`
-/

namespace A046511.P882515701068063970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A031346 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (A188969 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046511.P882515701068063970

/-!
# A046512: Numbers with multiplicative persistence value 3.

The programs for A046512, there is no canonical definition to state claims against.
-/

/-! ## A046512.P2017209265159531886

`∪[A046503(n+1), A199993(n+1)]`
-/

namespace A046512.P2017209265159531886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046512.P2017209265159531886

/-! ## A046512.P12291420266137579674

`eq[3, A031346(n)]`
-/

namespace A046512.P12291420266137579674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046512.P12291420266137579674

/-! ## A046512.P2604460026564216175

`lt[2, val(A055671(n)+A031346(n)+5, 2)]`
-/

namespace A046512.P2604460026564216175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055671 n + (A031346 n + 5)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046512.P2604460026564216175

/-!
# A046513: Numbers with multiplicative persistence value 4.

The programs for A046513, there is no canonical definition to state claims against.
-/

/-! ## A046513.P13425103248478319370

`∪[A046504(n+1), A199994(n+1)]`
-/

namespace A046513.P13425103248478319370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046513.P13425103248478319370

/-! ## A046513.P6151998806406594939

`eq[4, A031346(n)]`
-/

namespace A046513.P6151998806406594939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046513.P6151998806406594939

/-!
# A046514: Numbers with multiplicative persistence value 5.

The programs for A046514, there is no canonical definition to state claims against.
-/

/-! ## A046514.P8024179029841270771

`∪[A046505(n+1), A199995(n+1)]`
-/

namespace A046514.P8024179029841270771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046514.P8024179029841270771

/-! ## A046514.P4407814775515921002

`eq[5, A031346(n)]`
-/

namespace A046514.P4407814775515921002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046514.P4407814775515921002

/-! ## A046514.P4733029486421343216

`lt[A263131(A017281(n)), A070565(n)]`
-/

namespace A046514.P4733029486421343216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263131 (A017281 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046514.P4733029486421343216

/-! ## A046514.P11152043847991767429

`filter[A284067(3*n+1), A144596(#)]`
-/

namespace A046514.P11152043847991767429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284067 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144596 (f1 j).toNat = 1) n)

end

end A046514.P11152043847991767429

/-!
# A046515: Numbers with multiplicative persistence value 6.

The programs for A046515, there is no canonical definition to state claims against.
-/

/-! ## A046515.P6369751889530522637

`∪[A046506(n+1), A199996(n+1)]`
-/

namespace A046515.P6369751889530522637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046515.P6369751889530522637

/-! ## A046515.P7825833458416783223

`A199996(n+1)-A193581(A062399(n))`
-/

namespace A046515.P7825833458416783223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199996 (n + 1) - A193581 (A062399 n).toNat

end

end A046515.P7825833458416783223

/-! ## A046515.P7338020583472262019

`A191558(A199996(n+1))-A193581(n)`
-/

namespace A046515.P7338020583472262019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A199996 (n + 1)).toNat - A193581 n

end

end A046515.P7338020583472262019

/-! ## A046515.P2757649237727384913

`A199996(n+1)-A193581(A351870(n))`
-/

namespace A046515.P2757649237727384913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199996 (n + 1) - A193581 (A351870 n).toNat

end

end A046515.P2757649237727384913

/-! ## A046515.P10686810684287710097

`A199996(A062399(n+1))`
-/

namespace A046515.P10686810684287710097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199996 (A062399 (n + 1)).toNat

end

end A046515.P10686810684287710097

/-!
# A046516: Numbers with multiplicative persistence value 7.

The programs for A046516, there is no canonical definition to state claims against.
-/

/-! ## A046516.P3459201558342206241

`∪[A046507(n+1), A199997(n+1)]`
-/

namespace A046516.P3459201558342206241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046516.P3459201558342206241

/-! ## A046516.P5849461473520382559

`A199997(n+1)^A007318(A088925(n))`
-/

namespace A046516.P5849461473520382559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199997 (n + 1) : ℚ) ^ (A007318 (A088925 n).toNat : ℤ)

end

end A046516.P5849461473520382559

/-! ## A046516.P313592568175532363

`lcm(A008683(A022168(n)), A199997(n+1))`
-/

namespace A046516.P313592568175532363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A022168 n).toNat) (A199997 (n + 1))

end

end A046516.P313592568175532363

/-! ## A046516.P9275266419012605882

`A199997(n+1)%A199999(n+4)`
-/

namespace A046516.P9275266419012605882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199997 (n + 1)) (A199999 (n + 4))

end

end A046516.P9275266419012605882

/-! ## A046516.P6765483952739905777

`A199997(n+1)+A162296(A259187(2*n+3))`
-/

namespace A046516.P6765483952739905777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199997 (n + 1) + A162296 (A259187 (2 * n + 3)).toNat

end

end A046516.P6765483952739905777

/-!
# A046518: Numbers with multiplicative persistence value 9.

The programs for A046518, there is no canonical definition to state claims against.
-/

/-! ## A046518.P12194618608523844683

`∪[A046509(n+1), A199999(n+1)]%A199999(2*(n+1))`
-/

namespace A046518.P12194618608523844683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199999 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A199999 (2 * (n + 1)))

end

end A046518.P12194618608523844683

/-! ## A046518.P1678474101766346508

`A199999(∏{p}[∏{p}[n+1, #*val(n+1, #)], #]^∏{e}[n+1, #])`
-/

namespace A046518.P1678474101766346508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199999 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p))

end

end A046518.P1678474101766346508

/-! ## A046518.P4940899067540687636

`A199999(A024645(n+1))`
-/

namespace A046518.P4940899067540687636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199999 (A024645 (n + 1)).toNat

end

end A046518.P4940899067540687636

/-!
# A046519: Least n-digit 'happy' prime.

The programs for A046519, there is no canonical definition to state claims against.
-/

/-! ## A046519.P318560863172017823

`A288178(A022168(n+4))+10^n`
-/

namespace A046519.P318560863172017823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288178 (A022168 (n + 4)).toNat + (10 ^ n : ℤ)

end

end A046519.P318560863172017823

/-! ## A046519.P1597057165454859441

`A340209(A340204(n+1))+and(10^n, -2)`
-/

namespace A046519.P1597057165454859441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340209 (A340204 (n + 1)).toNat + Int.land (10 ^ n : ℤ) (-2)

end

end A046519.P1597057165454859441

/-!
# A046520: a(n) = (sum of divisors of n) - phi(n) - (number of divisors of n).

The programs for A046520, the canonical program `A046520.P408125302691526791` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046520 has offset 1).

The definition of A046520 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046520.P408125302691526791

`A000203(n+1)-A000010(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046520

/-- `A000203(n+1)-A000010(n+1)-A000005(n+1)` -/
def P408125302691526791.Spec : Prop :=
  ∀ n, P408125302691526791.a n = A046520 (n + 1)

theorem P408125302691526791.correct : P408125302691526791.Spec := by
  intro n
  simp only [A046520, Nat.add_sub_cancel]

end A046520

/-! ## A046520.P4095127002291560011

`∑{d}[n+1, #-1]-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A046520.P4095127002291560011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) : ℤ) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A046520.P4095127002291560011

namespace A046520

/-- `∑{d}[n+1, #-1]-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P4095127002291560011.Spec : Prop :=
  ∀ n, P4095127002291560011.a n = (A046520 (n + 1) : ℚ)

end A046520

/-! ## A046520.P13786582146646219395

`∑{d}[n+1, #-1]-A000010(n+1)`
-/

namespace A046520.P13786582146646219395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) - A000010 (n + 1)

end

end A046520.P13786582146646219395

namespace A046520

/-- `∑{d}[n+1, #-1]-A000010(n+1)` -/
def P13786582146646219395.Spec : Prop :=
  ∀ n, P13786582146646219395.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P16650098319080215846

`A051612(n+1)-Δ[A006218(n)]`
-/

namespace A046520.P16650098319080215846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) - (f1 (n + 1) - f1 n)

end

end A046520.P16650098319080215846

namespace A046520

/-- `A051612(n+1)-Δ[A006218(n)]` -/
def P16650098319080215846.Spec : Prop :=
  ∀ n, P16650098319080215846.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P9070652141153942295

`A063085(n+1)+A048146(n+1)`
-/

namespace A046520.P9070652141153942295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063085 (n + 1) + A048146 (n + 1)

end

end A046520.P9070652141153942295

namespace A046520

/-- `A063085(n+1)+A048146(n+1)` -/
def P9070652141153942295.Spec : Prop :=
  ∀ n, P9070652141153942295.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P13317298784029477383

`A228947(n+1)+A049820(n+1)`
-/

namespace A046520.P13317298784029477383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228947 (n + 1) + A049820 (n + 1)

end

end A046520.P13317298784029477383

namespace A046520

/-- `A228947(n+1)+A049820(n+1)` -/
def P13317298784029477383.Spec : Prop :=
  ∀ n, P13317298784029477383.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P2640485307374510276

`A219428(n+1)+A152770(n+1)`
-/

namespace A046520.P2640485307374510276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + A152770 (n + 1)

end

end A046520.P2640485307374510276

namespace A046520

/-- `A219428(n+1)+A152770(n+1)` -/
def P2640485307374510276.Spec : Prop :=
  ∀ n, P2640485307374510276.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P8187062754172557824

`A051612(n+1)-A000005(n+1)`
-/

namespace A046520.P8187062754172557824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) - A000005 (n + 1)

end

end A046520.P8187062754172557824

namespace A046520

/-- `A051612(n+1)-A000005(n+1)` -/
def P8187062754172557824.Spec : Prop :=
  ∀ n, P8187062754172557824.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P2973125094289931313

`A000203(n+1)-A061468(n+1)`
-/

namespace A046520.P2973125094289931313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A061468 (n + 1)

end

end A046520.P2973125094289931313

namespace A046520

/-- `A000203(n+1)-A061468(n+1)` -/
def P2973125094289931313.Spec : Prop :=
  ∀ n, P2973125094289931313.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P1311031745286006484

`A065608(n+1)-A000010(n+1)`
-/

namespace A046520.P1311031745286006484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) - A000010 (n + 1)

end

end A046520.P1311031745286006484

namespace A046520

/-- `A065608(n+1)-A000010(n+1)` -/
def P1311031745286006484.Spec : Prop :=
  ∀ n, P1311031745286006484.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P2432681674597367506

`A152992(n+1)-A037228(n+1)`
-/

namespace A046520.P2432681674597367506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152992 (n + 1) - A037228 (n + 1)

end

end A046520.P2432681674597367506

namespace A046520

/-- `A152992(n+1)-A037228(n+1)` -/
def P2432681674597367506.Spec : Prop :=
  ∀ n, P2432681674597367506.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P2667476136017001231

`A129235(n+1)-A065387(n+1)`
-/

namespace A046520.P2667476136017001231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129235 (n + 1) - A065387 (n + 1)

end

end A046520.P2667476136017001231

namespace A046520

/-- `A129235(n+1)-A065387(n+1)` -/
def P2667476136017001231.Spec : Prop :=
  ∀ n, P2667476136017001231.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P3801516639431702042

`A158901(n+1)-A039649(n+1)`
-/

namespace A046520.P3801516639431702042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (n + 1) - A039649 (n + 1)

end

end A046520.P3801516639431702042

namespace A046520

/-- `A158901(n+1)-A039649(n+1)` -/
def P3801516639431702042.Spec : Prop :=
  ∀ n, P3801516639431702042.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P13893999011062145292

`A137319(n+1)-A121048(n+1)`
-/

namespace A046520.P13893999011062145292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137319 (n + 1) - A121048 (n + 1)

end

end A046520.P13893999011062145292

namespace A046520

/-- `A137319(n+1)-A121048(n+1)` -/
def P13893999011062145292.Spec : Prop :=
  ∀ n, P13893999011062145292.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P16481003677937440462

`A074400(n+1)-A233541(n+1)`
-/

namespace A046520.P16481003677937440462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A233541 (n + 1)

end

end A046520.P16481003677937440462

namespace A046520

/-- `A074400(n+1)-A233541(n+1)` -/
def P16481003677937440462.Spec : Prop :=
  ∀ n, P16481003677937440462.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P2463016973890417632

`A094472(n+1)-A374969(n+1)`
-/

namespace A046520.P2463016973890417632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094472 (n + 1) - A374969 (n + 1)

end

end A046520.P2463016973890417632

namespace A046520

/-- `A094472(n+1)-A374969(n+1)` -/
def P2463016973890417632.Spec : Prop :=
  ∀ n, P2463016973890417632.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P1589277148297259701

`A324048(n+1)-A351561(n+1)`
-/

namespace A046520.P1589277148297259701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324048 (n + 1) - A351561 (n + 1)

end

end A046520.P1589277148297259701

namespace A046520

/-- `A324048(n+1)-A351561(n+1)` -/
def P1589277148297259701.Spec : Prop :=
  ∀ n, P1589277148297259701.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P6373121844498534409

`A001065(n+1)+A045763(n+1)-1`
-/

namespace A046520.P6373121844498534409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A045763 (n + 1) - 1)

end

end A046520.P6373121844498534409

namespace A046520

/-- `A001065(n+1)+A045763(n+1)-1` -/
def P6373121844498534409.Spec : Prop :=
  ∀ n, P6373121844498534409.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P1547374727836857163

`A000203(n+1)-(A073757(n+1)+1)`
-/

namespace A046520.P1547374727836857163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A073757 (n + 1) + 1)

end

end A046520.P1547374727836857163

namespace A046520

/-- `A000203(n+1)-(A073757(n+1)+1)` -/
def P1547374727836857163.Spec : Prop :=
  ∀ n, P1547374727836857163.a n = A046520 (n + 1)

end A046520

/-! ## A046520.P4301658713025987359

`A051953(n+1)+A152770(n+1)-1`
-/

namespace A046520.P4301658713025987359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (A152770 (n + 1) - 1)

end

end A046520.P4301658713025987359

namespace A046520

/-- `A051953(n+1)+A152770(n+1)-1` -/
def P4301658713025987359.Spec : Prop :=
  ∀ n, P4301658713025987359.a n = A046520 (n + 1)

end A046520

/-!
# A046521: Array T(i,j) = binomial(-1/2-i,j)*(-4)^j, i,j >= 0 read by antidiagonals going down.

The programs for A046521, the canonical program `A046521.P4882171672424064069` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046521 has offset 0).

The definition of A046521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046521.P4882171672424064069

`A039599(n)/A007318(n)*A078812(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A046521

/-- `A039599(n)/A007318(n)*A078812(n)` -/
def P4882171672424064069.Spec : Prop :=
  ∀ n, P4882171672424064069.a n = (A046521 n : ℚ)

end A046521

/-! ## A046521.P6952603650465735428

`A069466(n)/A098473(n)`
-/

namespace A046521.P6952603650465735428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A098473 n : ℚ)

end

end A046521.P6952603650465735428

namespace A046521

/-- `A069466(n)/A098473(n)` -/
def P6952603650465735428.Spec : Prop :=
  ∀ n, P6952603650465735428.a n = (A046521 n : ℚ)

end A046521

/-! ## A046521.P1012933346869907049

`A069466(n)/A117852(A061579(n))`
-/

namespace A046521.P1012933346869907049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A117852 (A061579 n).toNat : ℚ)

end

end A046521.P1012933346869907049

namespace A046521

/-- `A069466(n)/A117852(A061579(n))` -/
def P1012933346869907049.Spec : Prop :=
  ∀ n, P1012933346869907049.a n = (A046521 n : ℚ)

end A046521

/-! ## A046521.P4899377474905346030

`A054335(A245300(n)+A002262(n))`
-/

namespace A046521.P4899377474905346030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A245300 n + A002262 n).toNat

end

end A046521.P4899377474905346030

namespace A046521

/-- `A054335(A245300(n)+A002262(n))` -/
def P4899377474905346030.Spec : Prop :=
  ∀ n, P4899377474905346030.a n = A046521 n

end A046521

/-! ## A046521.P2251052719502049334

`A048854(n)/A094587(n)`
-/

namespace A046521.P2251052719502049334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048854 n : ℚ) / (A094587 n : ℚ)

end

end A046521.P2251052719502049334

namespace A046521

/-- `A048854(n)/A094587(n)` -/
def P2251052719502049334.Spec : Prop :=
  ∀ n, P2251052719502049334.a n = (A046521 n : ℚ)

end A046521

/-! ## A046521.P754289876522136821

`A048854(n)/A008279(A061579(n))`
-/

namespace A046521.P754289876522136821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048854 n : ℚ) / (A008279 (A061579 n).toNat : ℚ)

end

end A046521.P754289876522136821

namespace A046521

/-- `A048854(n)/A008279(A061579(n))` -/
def P754289876522136821.Spec : Prop :=
  ∀ n, P754289876522136821.a n = (A046521 n : ℚ)

end A046521

/-! ## A046521.P18305479567003870471

`A001316(A025581(n))*A269949(n)`
-/

namespace A046521.P18305479567003870471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A025581 n).toNat * A269949 n

end

end A046521.P18305479567003870471

namespace A046521

/-- `A001316(A025581(n))*A269949(n)` -/
def P18305479567003870471.Spec : Prop :=
  ∀ n, P18305479567003870471.a n = A046521 n

end A046521

/-! ## A046521.P960010166675242703

`A038207(n)/A094587(n)*A112292(n)`
-/

namespace A046521.P960010166675242703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A094587 n : ℚ) * (A112292 n : ℚ)

end

end A046521.P960010166675242703

namespace A046521

/-- `A038207(n)/A094587(n)*A112292(n)` -/
def P960010166675242703.Spec : Prop :=
  ∀ n, P960010166675242703.a n = (A046521 n : ℚ)

end A046521

/-!
# A046522: a(n) = 2*floor(sqrt(n)) - d(n), where d(n) is the number of divisors of n (A000005).

The programs for A046522, the canonical program `A046522.P10567357501966836050` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046522 has offset 1).

The definition of A046522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046522.P2243799263287364353

`2*floor(sqrt(n+1))-A000005(n+1)`
-/

namespace A046522.P2243799263287364353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.sqrt (n + 1) : ℤ) - A000005 (n + 1)

end

end A046522.P2243799263287364353

namespace A046522

/-- `2*floor(sqrt(n+1))-A000005(n+1)` -/
def P2243799263287364353.Spec : Prop :=
  ∀ n, P2243799263287364353.a n = A046522 (n + 1)

end A046522

/-! ## A046522.P282392550744633990

`A160812(n+1)+A010052(n+1)`
-/

namespace A046522.P282392550744633990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160812 (n + 1) + A010052 (n + 1)

end

end A046522.P282392550744633990

namespace A046522

/-- `A160812(n+1)+A010052(n+1)` -/
def P282392550744633990.Spec : Prop :=
  ∀ n, P282392550744633990.a n = A046522 (n + 1)

end A046522

/-! ## A046522.P12391498798451376811

`A004442(A001650(n+1)-A000005(n+1))`
-/

namespace A046522.P12391498798451376811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A001650 (n + 1) - A000005 (n + 1)).toNat

end

end A046522.P12391498798451376811

namespace A046522

/-- `A004442(A001650(n+1)-A000005(n+1))` -/
def P12391498798451376811.Spec : Prop :=
  ∀ n, P12391498798451376811.a n = A046522 (n + 1)

end A046522

/-! ## A046522.P10567357501966836050

`A005843(A000196(n+1))-(A334954(n+1)-1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046522

/-- `A005843(A000196(n+1))-(A334954(n+1)-1)` -/
def P10567357501966836050.Spec : Prop :=
  ∀ n, P10567357501966836050.a n = A046522 (n + 1)

theorem P10567357501966836050.correct : P10567357501966836050.Spec := by
  intro n
  simp only [A046522, Nat.add_sub_cancel]

end A046522

/-! ## A046522.P15234785129941712359

`A000196(n+1)+A160812(n+1)-A000196(n)`
-/

namespace A046522.P15234785129941712359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) + (A160812 (n + 1) - A000196 n)

end

end A046522.P15234785129941712359

namespace A046522

/-- `A000196(n+1)+A160812(n+1)-A000196(n)` -/
def P15234785129941712359.Spec : Prop :=
  ∀ n, P15234785129941712359.a n = A046522 (n + 1)

end A046522

/-! ## A046522.P9144047616855770394

`A010052(n+1)+A236627(n+1)+A236627(n+1)`
-/

namespace A046522.P9144047616855770394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) + (A236627 (n + 1) + A236627 (n + 1))

end

end A046522.P9144047616855770394

namespace A046522

/-- `A010052(n+1)+A236627(n+1)+A236627(n+1)` -/
def P9144047616855770394.Spec : Prop :=
  ∀ n, P9144047616855770394.a n = A046522 (n + 1)

end A046522

/-! ## A046522.P6850565774486734667

`A000196(n+1)+A000196(n+1)-A000005(n+1)`
-/

namespace A046522.P6850565774486734667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) + (A000196 (n + 1) - A000005 (n + 1))

end

end A046522.P6850565774486734667

namespace A046522

/-- `A000196(n+1)+A000196(n+1)-A000005(n+1)` -/
def P6850565774486734667.Spec : Prop :=
  ∀ n, P6850565774486734667.a n = A046522 (n + 1)

end A046522

/-! ## A046522.P16681645606410872559

`A028392(n+1)-(A028391(n+1)+A000005(n+1))`
-/

namespace A046522.P16681645606410872559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (n + 1) - (A028391 (n + 1) + A000005 (n + 1))

end

end A046522.P16681645606410872559

namespace A046522

/-- `A028392(n+1)-(A028391(n+1)+A000005(n+1))` -/
def P16681645606410872559.Spec : Prop :=
  ∀ n, P16681645606410872559.a n = A046522 (n + 1)

end A046522

/-! ## A046522.P2544081272152031551

`A004275(A003059(n+2))-A069157(2*(n+1))`
-/

namespace A046522.P2544081272152031551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A003059 (n + 2)).toNat - A069157 (2 * (n + 1))

end

end A046522.P2544081272152031551

namespace A046522

/-- `A004275(A003059(n+2))-A069157(2*(n+1))` -/
def P2544081272152031551.Spec : Prop :=
  ∀ n, P2544081272152031551.a n = A046522 (n + 1)

end A046522

/-!
# A046523: Smallest number with same prime signature as n.

The programs for A046523, there is no canonical definition to state claims against.
-/

/-! ## A046523.P10617944256230300607

`sqrt(A278254(n+1))`
-/

namespace A046523.P10617944256230300607
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278254 (n + 1) : ℝ)

end

end A046523.P10617944256230300607

/-! ## A046523.P10526357937546780482

`A025487(A101296(n+1))`
-/

namespace A046523.P10526357937546780482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (n + 1)).toNat

end

end A046523.P10526357937546780482

/-! ## A046523.P10749288530188579956

`A089247(A071364(n+1))`
-/

namespace A046523.P10749288530188579956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 (n + 1)).toNat

end

end A046523.P10749288530188579956

/-! ## A046523.P2224191317247585955

`A083260(A089247(n+1))`
-/

namespace A046523.P2224191317247585955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083260 (A089247 (n + 1)).toNat

end

end A046523.P2224191317247585955

/-! ## A046523.P3407874444772092792

`A181821(A181819(n+1))`
-/

namespace A046523.P3407874444772092792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (n + 1)).toNat

end

end A046523.P3407874444772092792

/-! ## A046523.P6370202879754602776

`A181821(∏{e}[n+1, A095285(#)])`
-/

namespace A046523.P6370202879754602776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n), A095285 (Nat.factorization (f1 n) p)).toNat

end

end A046523.P6370202879754602776

/-! ## A046523.P9536976462806812197

`A292586(n+1)*A292589(n+1)`
-/

namespace A046523.P9536976462806812197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292586 (n + 1) * A292589 (n + 1)

end

end A046523.P9536976462806812197

/-! ## A046523.P3897444266060590059

`lcm(A083260(n+1), A212173(n+1))`
-/

namespace A046523.P3897444266060590059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083260 (n + 1)) (A212173 (n + 1))

end

end A046523.P3897444266060590059

/-! ## A046523.P11561542164209263875

`A181821(∏{e}[n+1, A008578(#+1)])`
-/

namespace A046523.P11561542164209263875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n), A008578 (Nat.factorization (f1 n) p + 1)).toNat

end

end A046523.P11561542164209263875

/-! ## A046523.P11149767540113094284

`A278231(A193231(n+1))`
-/

namespace A046523.P11149767540113094284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278231 (A193231 (n + 1)).toNat

end

end A046523.P11149767540113094284

/-! ## A046523.P8017672942731940462

`A278237(A263273(n+1))`
-/

namespace A046523.P8017672942731940462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278237 (A263273 (n + 1)).toNat

end

end A046523.P8017672942731940462

/-! ## A046523.P6466251901138945159

`A278233(A091202(n+1))`
-/

namespace A046523.P6466251901138945159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A091202 (n + 1)).toNat

end

end A046523.P6466251901138945159

/-! ## A046523.P1410388806502391039

`A278264(A064413(n+1))`
-/

namespace A046523.P1410388806502391039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278264 (A064413 (n + 1)).toNat

end

end A046523.P1410388806502391039

/-! ## A046523.P5948103752514959361

`A278224(A064216(n+1))`
-/

namespace A046523.P5948103752514959361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A064216 (n + 1)).toNat

end

end A046523.P5948103752514959361

/-! ## A046523.P6135700670651920823

`A278263(A064664(n+1))`
-/

namespace A046523.P6135700670651920823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278263 (A064664 (n + 1)).toNat

end

end A046523.P6135700670651920823

/-! ## A046523.P12610881972977612713

`sqrt(A278259(2*(n+1)))`
-/

namespace A046523.P12610881972977612713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278259 (2 * (n + 1)) : ℝ)

end

end A046523.P12610881972977612713

/-! ## A046523.P15969647033197266709

`A278233(A091204(n+1))`
-/

namespace A046523.P15969647033197266709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A091204 (n + 1)).toNat

end

end A046523.P15969647033197266709

/-! ## A046523.P677954365407817123

`A051444(A083262(n+1))`
-/

namespace A046523.P677954365407817123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A083262 (n + 1)).toNat

end

end A046523.P677954365407817123

/-! ## A046523.P15953706964296076791

`A278221(A329607(n+1))`
-/

namespace A046523.P15953706964296076791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 (A329607 (n + 1)).toNat

end

end A046523.P15953706964296076791

/-! ## A046523.P18130687478111245818

`A278524(A250245(n+1))`
-/

namespace A046523.P18130687478111245818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278524 (A250245 (n + 1)).toNat

end

end A046523.P18130687478111245818

/-!
# A046524: Number of coverings of Klein bottle with n lists.

The programs for A046524, the canonical program `A046524.P5816599537313407512` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046524 has offset 1).

The definition of A046524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046524.P5816599537313407512

`∑{d}[n+1, A008619(A133622(#))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046524

/-- `∑{d}[n+1, A008619(A133622(#))]` -/
def P5816599537313407512.Spec : Prop :=
  ∀ n, P5816599537313407512.a n = A046524 (n + 1)

theorem P5816599537313407512.correct : P5816599537313407512.Spec := by
  intro n
  simp only [A046524, Nat.add_sub_cancel]

end A046524

/-! ## A046524.P16699151702655800814

`∑{d}[n+1, A008619(A027656(#))]`
-/

namespace A046524.P16699151702655800814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008619 (A027656 d).toNat

end

end A046524.P16699151702655800814

namespace A046524

/-- `∑{d}[n+1, A008619(A027656(#))]` -/
def P16699151702655800814.Spec : Prop :=
  ∀ n, P16699151702655800814.a n = A046524 (n + 1)

end A046524

/-! ## A046524.P8960366282251561491

`∑{d}[n+1, A008619(A158416(#))]`
-/

namespace A046524.P8960366282251561491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008619 (A158416 d).toNat

end

end A046524.P8960366282251561491

namespace A046524

/-- `∑{d}[n+1, A008619(A158416(#))]` -/
def P8960366282251561491.Spec : Prop :=
  ∀ n, P8960366282251561491.a n = A046524 (n + 1)

end A046524

/-! ## A046524.P11322405378636391394

`∑{d}[n+1, A080513(A142150(#))]`
-/

namespace A046524.P11322405378636391394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080513 (A142150 d).toNat

end

end A046524.P11322405378636391394

namespace A046524

/-- `∑{d}[n+1, A080513(A142150(#))]` -/
def P11322405378636391394.Spec : Prop :=
  ∀ n, P11322405378636391394.a n = A046524 (n + 1)

end A046524

/-! ## A046524.P6380296718682556458

`∑{d}[n+1, A110654(A179820(#))]`
-/

namespace A046524.P6380296718682556458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A110654 (A179820 d).toNat

end

end A046524.P6380296718682556458

namespace A046524

/-- `∑{d}[n+1, A110654(A179820(#))]` -/
def P6380296718682556458.Spec : Prop :=
  ∀ n, P6380296718682556458.a n = A046524 (n + 1)

end A046524

/-! ## A046524.P16232371129652390947

`∑{d}[n+1, A008619(A142150(#)+1)]`
-/

namespace A046524.P16232371129652390947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008619 (A142150 d + 1).toNat

end

end A046524.P16232371129652390947

namespace A046524

/-- `∑{d}[n+1, A008619(A142150(#)+1)]` -/
def P16232371129652390947.Spec : Prop :=
  ∀ n, P16232371129652390947.a n = A046524 (n + 1)

end A046524

/-! ## A046524.P9373292342722773920

`∑{d}[n+1, A004526(A142150(#)+3)]`
-/

namespace A046524.P9373292342722773920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004526 (A142150 d + 3).toNat

end

end A046524.P9373292342722773920

namespace A046524

/-- `∑{d}[n+1, A004526(A142150(#)+3)]` -/
def P9373292342722773920.Spec : Prop :=
  ∀ n, P9373292342722773920.a n = A046524 (n + 1)

end A046524

/-! ## A046524.P4735966624726629426

`∑{d}[n+1, A080513(A153793(#)%#)]`
-/

namespace A046524.P4735966624726629426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080513 (Int.tmod (A153793 d) (d : ℤ)).toNat

end

end A046524.P4735966624726629426

namespace A046524

/-- `∑{d}[n+1, A080513(A153793(#)%#)]` -/
def P4735966624726629426.Spec : Prop :=
  ∀ n, P4735966624726629426.a n = A046524 (n + 1)

end A046524

/-! ## A046524.P12841243650680210710

`∑{d}[n+1, A008621(A141310(#)+1)]`
-/

namespace A046524.P12841243650680210710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008621 (A141310 d + 1).toNat

end

end A046524.P12841243650680210710

namespace A046524

/-- `∑{d}[n+1, A008621(A141310(#)+1)]` -/
def P12841243650680210710.Spec : Prop :=
  ∀ n, P12841243650680210710.a n = A046524 (n + 1)

end A046524

/-!
# A046525: Numbers common to A033950 and A034884.

The programs for A046525, there is no canonical definition to state claims against.
-/

/-! ## A046525.P14583172319642548571

`A046526(comp[(2-2^n)²])`
-/

namespace A046525.P14583172319642548571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (2 ^ n : ℤ)) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046526 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A046525.P14583172319642548571

/-! ## A046525.P9038528387347688041

`record[A122377(A034884(n+1))]`
-/

namespace A046525.P9038528387347688041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A034884 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046525.P9038528387347688041

/-! ## A046525.P8518791780413466738

`record[A046526(A262564(n+1))]`
-/

namespace A046525.P8518791780413466738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046526 (A262564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046525.P8518791780413466738

/-! ## A046525.P7770176163037451581

`record[A038608(A046526(n+2))]`
-/

namespace A046525.P7770176163037451581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A046526 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046525.P7770176163037451581

/-! ## A046525.P1178723058569840041

`filter[A046526(n+1), A059841(#)]`
-/

namespace A046525.P1178723058569840041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046525.P1178723058569840041

/-!
# A046526: Numbers common to A033950 and A035033.

The programs for A046526, there is no canonical definition to state claims against.
-/

/-! ## A046526.P11217380049791810741

`record[(n+1)%(A009191(n+1)²+1)]`
-/

namespace A046526.P11217380049791810741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A009191 (n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046526.P11217380049791810741

/-! ## A046526.P17126466527102286783

`record[A122377(A035033(n+1))]`
-/

namespace A046526.P17126466527102286783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A035033 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046526.P17126466527102286783

/-! ## A046526.P14996309376094832448

`filter[A035033(n+1), A336040(#)]`
-/

namespace A046526.P14996309376094832448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A046526.P14996309376094832448

/-! ## A046526.P13243977130920015463

`∪[A046525(n+1), A242853(n)]`
-/

namespace A046526.P13243977130920015463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046526.P13243977130920015463

/-! ## A046526.P284173303355388403

`∪[A046525(n+1), A304410(n+1)]`
-/

namespace A046526.P284173303355388403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046526.P284173303355388403

/-!
# A046527: A triangle related to A000108 (Catalan) and A000302 (powers of 4).

The programs for A046527, there is no canonical definition to state claims against.
-/

/-! ## A046527.P4111956725730301243

`2*A046521(n)-A046658(n+1)`
-/

namespace A046527.P4111956725730301243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046521 n - A046658 (n + 1)

end

end A046527.P4111956725730301243

/-! ## A046527.P5399485320272123975

`A048870(n)/A094587(n)`
-/

namespace A046527.P5399485320272123975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048870 n : ℚ) / (A094587 n : ℚ)

end

end A046527.P5399485320272123975

/-! ## A046527.P7751546365880365256

`A048870(n)/A008279(A061579(n))`
-/

namespace A046527.P7751546365880365256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048870 n : ℚ) / (A008279 (A061579 n).toNat : ℚ)

end

end A046527.P7751546365880365256

/-! ## A046527.P4774412177352989583

`A048870(n)/A008279(A038722(n+2))`
-/

namespace A046527.P4774412177352989583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048870 n : ℚ) / (A008279 (A038722 (n + 2)).toNat : ℚ)

end

end A046527.P4774412177352989583

/-! ## A046527.P3390653476062322702

`A104713(n+3)/A143497(n+2)*A048870(n)`
-/

namespace A046527.P3390653476062322702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104713 (n + 3) : ℚ) / (A143497 (n + 2) : ℚ) * (A048870 n : ℚ)

end

end A046527.P3390653476062322702

/-!
# A046528: Numbers that are a product of distinct Mersenne primes (elements of A000668).

The programs for A046528, there is no canonical definition to state claims against.
-/

/-! ## A046528.P10207190511025550020

`∩[A054784(n+1), A282572(n+1)]`
-/

namespace A046528.P10207190511025550020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046528.P10207190511025550020

/-! ## A046528.P5957687644209564386

`A281707(n+1)/2`
-/

namespace A046528.P5957687644209564386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281707 (n + 1) : ℚ) / 2

end

end A046528.P5957687644209564386

/-! ## A046528.P11874922054583618286

`∩[A054784(n+1), A342572(n+1)]`
-/

namespace A046528.P11874922054583618286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046528.P11874922054583618286

/-! ## A046528.P6521188550778088587

`∩[A054784(n+1), A386430(n+1)]`
-/

namespace A046528.P6521188550778088587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046528.P6521188550778088587

/-! ## A046528.P12095062242514584936

`∩[A054784(n+1), A376857(n+1)]`
-/

namespace A046528.P12095062242514584936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046528.P12095062242514584936

/-!
# A046530: Number of distinct cubic residues mod n.

The programs for A046530, there is no canonical definition to state claims against.
-/

/-! ## A046530.P17232776144703031167

`1-A257301(n+1)+n`
-/

namespace A046530.P17232776144703031167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A257301 (n + 1) + (n : ℤ)

end

end A046530.P17232776144703031167

/-! ## A046530.P12084061050768073360

`Δ[n²]-n-A257301(Δ[n²]-n)`
-/

namespace A046530.P12084061050768073360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - A257301 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

end

end A046530.P12084061050768073360

/-! ## A046530.P7180768657292223376

`A024000(A257301(n+1))+n`
-/

namespace A046530.P7180768657292223376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A257301 (n + 1)).toNat + (n : ℤ)

end

end A046530.P7180768657292223376

/-! ## A046530.P5575948139287111867

`abs(A257301(n+1)+A001478(n+1))`
-/

namespace A046530.P5575948139287111867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257301 (n + 1) + A001478 (n + 1)|

end

end A046530.P5575948139287111867

/-! ## A046530.P3363536330804224007

`A001489(A257301(n+1))+A000027(n+1)`
-/

namespace A046530.P3363536330804224007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A257301 (n + 1)).toNat + A000027 (n + 1)

end

end A046530.P3363536330804224007

/-!
# A046531: Numerators of elements to right of central elements of 1/2-Pascal triangle (by row).

The programs for A046531, there is no canonical definition to state claims against.
-/

/-! ## A046531.P10056135215832539495

`A046225(Δ[n²])`
-/

namespace A046531.P10056135215832539495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046531.P10056135215832539495

/-! ## A046531.P9445369121331189318

`A046226(2*(n+1))`
-/

namespace A046531.P9445369121331189318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046226 (2 * (n + 1))

end

end A046531.P9445369121331189318

/-! ## A046531.P14478580209637332229

`xor(1, xor(1, A046225(2*n+1)))`
-/

namespace A046531.P14478580209637332229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A046225 (2 * n + 1)))

end

end A046531.P14478580209637332229

/-! ## A046531.P7054008757445640491

`A033999(n)²*A046225(2*n+1)`
-/

namespace A046531.P7054008757445640491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A046225 (2 * n + 1)

end

end A046531.P7054008757445640491

/-! ## A046531.P2984826018184764049

`A033999(2*n)*A046225(2*n+1)`
-/

namespace A046531.P2984826018184764049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A046225 (2 * n + 1)

end

end A046531.P2984826018184764049

/-! ## A046531.P10085803036028570987

`A046225(2*n+1)+A014682(2*n)-n`
-/

namespace A046531.P10085803036028570987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (2 * n + 1) + (A014682 (2 * n) - (n : ℤ))

end

end A046531.P10085803036028570987

/-! ## A046531.P9756037924599226876

`(A003602(2*n+1)-n)*A046225(2*n+1)`
-/

namespace A046531.P9756037924599226876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003602 (2 * n + 1) - (n : ℤ)) * A046225 (2 * n + 1)

end

end A046531.P9756037924599226876

/-! ## A046531.P16634235035990314257

`(A004442(2*n)-2*n)*A046225(2*n+1)`
-/

namespace A046531.P16634235035990314257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 (2 * n) - (2 * n : ℤ)) * A046225 (2 * n + 1)

end

end A046531.P16634235035990314257

/-! ## A046531.P6016391835476713465

`A046225(A005408(n))/A033999(n)²`
-/

namespace A046531.P6016391835476713465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046225 (A005408 n).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A046531.P6016391835476713465

/-! ## A046531.P1901501301937051301

`A046225(A005408(n))%A046228(n+1)`
-/

namespace A046531.P1901501301937051301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046225 (A005408 n).toNat) (A046228 (n + 1))

end

end A046531.P1901501301937051301

/-! ## A046531.P680404586717202691

`A046225(2*n+1)²/A046225(A004442(2*n))`
-/

namespace A046531.P680404586717202691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046225 (2 * n + 1) ^ 2 : ℚ) / (A046225 (A004442 (2 * n)).toNat : ℚ)

end

end A046531.P680404586717202691

/-! ## A046531.P5530624489568019622

`A003602(A046225(2*(n+1)))*A046225(2*n+1)`
-/

namespace A046531.P5530624489568019622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A046225 (2 * (n + 1))).toNat * A046225 (2 * n + 1)

end

end A046531.P5530624489568019622

/-! ## A046531.P14519044733739265283

`A046225(2*n+1)*A046225(A046225(2*(n+1))²)`
-/

namespace A046531.P14519044733739265283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (2 * n + 1) * A046225 (A046225 (2 * (n + 1)) ^ 2).toNat

end

end A046531.P14519044733739265283

/-! ## A046531.P17499032251158086434

`A046225(A046225(2*(n+1)))*A046225(A004442(2*n))`
-/

namespace A046531.P17499032251158086434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (A046225 (2 * (n + 1))).toNat * A046225 (A004442 (2 * n)).toNat

end

end A046531.P17499032251158086434

/-! ## A046531.P3227900263658677293

`A046218(A274428(n+1))`
-/

namespace A046531.P3227900263658677293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046218 (A274428 (n + 1)).toNat

end

end A046531.P3227900263658677293

/-! ## A046531.P11256478848681044248

`filter[A046225(2*n+1), A115971(#)]`
-/

namespace A046531.P11256478848681044248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A046531.P11256478848681044248

/-!
# A046532: First numerator and then denominator of 1/2-Pascal triangle (by row), excluding 2's.

The programs for A046532, there is no canonical definition to state claims against.
-/

/-! ## A046532.P3330585569043061093

`A323467(A046581(n+1))^A325509(3*n)`
-/

namespace A046532.P3330585569043061093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323467 (A046581 (n + 1)).toNat : ℚ) ^ (A325509 (3 * n) : ℤ)

end

end A046532.P3330585569043061093

/-! ## A046532.P8042323020743352691

`A323467(A046581(n+1))+A000007(A109872(n+1))`
-/

namespace A046532.P8042323020743352691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323467 (A046581 (n + 1)).toNat + A000007 (A109872 (n + 1)).toNat

end

end A046532.P8042323020743352691

/-! ## A046532.P8248482528107531920

`A323467(A046581(n+1))%A141214(n)`
-/

namespace A046532.P8248482528107531920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323467 (A046581 (n + 1)).toNat) (A141214 n)

end

end A046532.P8248482528107531920

/-!
# A046533: First denominator and then numerator of 1/2-Pascal triangle (by row), excluding 2's.

The programs for A046533, there is no canonical definition to state claims against.
-/

/-! ## A046533.P10155254437075878505

`A226190(A046582(n+1)%A083184(n+1))`
-/

namespace A046533.P10155254437075878505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (Int.tmod (A046582 (n + 1)) (A083184 (n + 1))).toNat

end

end A046533.P10155254437075878505

/-! ## A046533.P18208583109314666982

`A226190(A046582(n+1))%A019993(n+1)`
-/

namespace A046533.P18208583109314666982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226190 (A046582 (n + 1)).toNat) (A019993 (n + 1))

end

end A046533.P18208583109314666982

/-!
# A046534: First numerator and then denominator of the 1/3-Pascal triangle (by row). To get a 1/3-Pascal triangle, replace "2" in the third row of the Pascal triangle with "1/3" and calculate all other rows as in the Pascal triangle.

The programs for A046534, there is no canonical definition to state claims against.
-/

/-! ## A046534.P14570637671398334820

`A046535(xor(1, n)+1)`
-/

namespace A046534.P14570637671398334820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (Nat.xor 1 n + 1)

end

end A046534.P14570637671398334820

/-! ## A046534.P9272506422152874893

`A046535(n+2-2*and(1, n))`
-/

namespace A046534.P9272506422152874893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (n + 2 - 2 * Nat.land 1 n)

end

end A046534.P9272506422152874893

/-! ## A046534.P2595760553749053270

`A046535(A004442(n)+1)`
-/

namespace A046534.P2595760553749053270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (A004442 n + 1).toNat

end

end A046534.P2595760553749053270

/-! ## A046534.P17651341233899946468

`A046535(A014681(n+1))`
-/

namespace A046534.P17651341233899946468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (A014681 (n + 1)).toNat

end

end A046534.P17651341233899946468

/-! ## A046534.P11117317086663028750

`A046535(A103889(n+1))`
-/

namespace A046534.P11117317086663028750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (A103889 (n + 1)).toNat

end

end A046534.P11117317086663028750

/-! ## A046534.P3369563424911984477

`A046535(A114112(n+1))`
-/

namespace A046534.P3369563424911984477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (A114112 (n + 1)).toNat

end

end A046534.P3369563424911984477

/-! ## A046534.P7936024878393295046

`A046535(abs(Δ[A014682(n)]))`
-/

namespace A046534.P7936024878393295046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 |f1 (n + 1) - f1 n|.toNat

end

end A046534.P7936024878393295046

/-! ## A046534.P8450189891435049709

`A046535((A166519(n)+1)/2)`
-/

namespace A046534.P8450189891435049709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (SequenceMachineLib.roundAway ((A166519 n + 1 : ℚ) / 2)).toNat

end

end A046534.P8450189891435049709

/-! ## A046534.P7710988252547748363

`A046535(Δ[n²]-A014681(n))`
-/

namespace A046534.P7710988252547748363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A014681 n).toNat

end

end A046534.P7710988252547748363

/-! ## A046534.P15817312958350883676

`A046535(A028242(n)+A008619(n))`
-/

namespace A046534.P15817312958350883676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (A028242 n + A008619 n).toNat

end

end A046534.P15817312958350883676

/-! ## A046534.P2303520065694116053

`A046535(Δ[A236453(n)])`
-/

namespace A046534.P2303520065694116053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (f1 (n + 1) - f1 n).toNat

end

end A046534.P2303520065694116053

/-! ## A046534.P11053167730315250363

`A046535(A236453(n+1)-A236453(n))`
-/

namespace A046534.P11053167730315250363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (A236453 (n + 1) - A236453 n).toNat

end

end A046534.P11053167730315250363

/-! ## A046534.P10603005680940986592

`A046535(A003602(A166519(n)))`
-/

namespace A046534.P10603005680940986592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (A003602 (A166519 n).toNat).toNat

end

end A046534.P10603005680940986592

/-!
# A046535: First denominator and then numerator of each element of the 1/3-Pascal triangle (by row).

The programs for A046535, there is no canonical definition to state claims against.
-/

/-! ## A046535.P1157029685848678783

`A046534(xor(1, n)+1)`
-/

namespace A046535.P1157029685848678783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (Nat.xor 1 n + 1)

end

end A046535.P1157029685848678783

/-! ## A046535.P15605378502472258881

`A046534(-xor(n, -2))`
-/

namespace A046535.P15605378502472258881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (-Int.xor (n : ℤ) (-2)).toNat

end

end A046535.P15605378502472258881

/-! ## A046535.P4260489235644678458

`A046534((-1)^n+n+1)`
-/

namespace A046535.P4260489235644678458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A046535.P4260489235644678458

/-! ## A046535.P17299262918165829504

`abs(A033999(n)*A046534(A103889(n+1)))`
-/

namespace A046535.P17299262918165829504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A046534 (A103889 (n + 1)).toNat|

end

end A046535.P17299262918165829504

/-! ## A046535.P1938015137241997283

`A209229(3*n)+A046534(A114112(n+1))`
-/

namespace A046535.P1938015137241997283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (3 * n) + A046534 (A114112 (n + 1)).toNat

end

end A046535.P1938015137241997283

/-! ## A046535.P5133791118699877858

`A046534(A046534(2*(n+1)))*A046534(A014681(n+1))`
-/

namespace A046535.P5133791118699877858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (A046534 (2 * (n + 1))).toNat * A046534 (A014681 (n + 1)).toNat

end

end A046535.P5133791118699877858

/-!
# A046536: First numerator and then denominator of each element of the 1/3-Pascal triangle (by row), excluding 1's.

The programs for A046536, there is no canonical definition to state claims against.
-/

/-! ## A046536.P917587204549245282

`A046534(lt[1, A046534(n+1)]+1)`
-/

namespace A046536.P917587204549245282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046536.P917587204549245282

/-! ## A046536.P12665220962473684497

`A046534(eq[2, 2%A046534(n+1)]+1)`
-/

namespace A046536.P12665220962473684497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A046534 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046536.P12665220962473684497

/-! ## A046536.P7694752700587087655

`A046534(comp[C(n+1, n*A046534(n+1))])`
-/

namespace A046536.P7694752700587087655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) ((n : ℤ) * A046534 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A046536.P7694752700587087655

/-! ## A046536.P3320701380889087448

`A064553(p?[A008578(A046534(n+1))])`
-/

namespace A046536.P3320701380889087448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046536.P3320701380889087448

/-! ## A046536.P10492883857020212491

`A036234(p?[A182986(A046534(n+1))])`
-/

namespace A046536.P10492883857020212491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A046534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046536.P10492883857020212491

/-!
# A046537: First denominator and then numerator of the 1/3-Pascal triangle (by row), excluding 1's.

The programs for A046537, there is no canonical definition to state claims against.
-/

/-! ## A046537.P8202751548874497932

`A046535(lt[1, A046535(n+1)]+1)`
-/

namespace A046537.P8202751548874497932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046537.P8202751548874497932

/-! ## A046537.P12926017667982084182

`A036234(p?[A008578(A046535(n+1))])`
-/

namespace A046537.P12926017667982084182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046535 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046537.P12926017667982084182

/-! ## A046537.P1207260045020177577

`A064553(p?[A008578(A046535(n+1))])`
-/

namespace A046537.P1207260045020177577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046535 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046537.P1207260045020177577

/-! ## A046537.P1224766905241812716

`A046536(A187829(n+1)+A062157(n))`
-/

namespace A046537.P1224766905241812716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046536 (A187829 (n + 1) + A062157 n).toNat

end

end A046537.P1224766905241812716

/-! ## A046537.P16928830410994985481

`A046536(round(sqrt(n²+1))^A046552(n+1))`
-/

namespace A046537.P16928830410994985481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046536 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ) ^ (A046552 (n + 1) : ℤ))).toNat

end

end A046537.P16928830410994985481

/-!
# A046538: First denominator and then numerator of the 1/3-Pascal triangle (by row), excluding 1's and 3's.

The programs for A046538, there is no canonical definition to state claims against.
-/

/-! ## A046538.P1065883195766864101

`A046539(lt[1, A046539(n+1)]+1)`
-/

namespace A046538.P1065883195766864101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046538.P1065883195766864101

/-! ## A046538.P9463446599885836173

`A046539(lt[n+1, A193722(n)])`
-/

namespace A046538.P9463446599885836173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046538.P9463446599885836173

/-! ## A046538.P7391223274609506263

`A046539(lt[1, A193722(n)-n])`
-/

namespace A046538.P7391223274609506263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193722 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046538.P7391223274609506263

/-! ## A046538.P15923052604923718381

`A046537(comp[eq[3, A046537(n+1)]]+1)`
-/

namespace A046538.P15923052604923718381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046537 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046537 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A046538.P15923052604923718381

/-! ## A046538.P15746186091031340624

`A046553(lt[1, A046553(n+1)]+1)`
-/

namespace A046538.P15746186091031340624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046538.P15746186091031340624

/-! ## A046538.P15858319057218594802

`A046534(lt[3, A046535(n+1)])`
-/

namespace A046538.P15858319057218594802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046538.P15858319057218594802

/-! ## A046538.P3627711852305427359

`A046534(eq[3, 3%A046534(n+1)]+1)`
-/

namespace A046538.P3627711852305427359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A046534 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046538.P3627711852305427359

/-!
# A046539: Numerators of the 1/3-Pascal triangle (by row).

The programs for A046539, there is no canonical definition to state claims against.
-/

/-! ## A046539.P17397706055566962766

`A046534(Δ[n²])`
-/

namespace A046539.P17397706055566962766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046539.P17397706055566962766

/-! ## A046539.P67565656418840992

`A046535(2*(n+1))`
-/

namespace A046539.P67565656418840992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (2 * (n + 1))

end

end A046539.P67565656418840992

/-! ## A046539.P17321032486488996483

`root(A046534(2*n+1), 2)²`
-/

namespace A046539.P17321032486488996483
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A046534 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A046539.P17321032486488996483

/-! ## A046539.P7858493683239481973

`abs(A033999(n)*A046534(2*n+1))`
-/

namespace A046539.P7858493683239481973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A046534 (2 * n + 1)|

end

end A046539.P7858493683239481973

/-! ## A046539.P11473686594406605785

`A033999(2*n)*A046534(2*n+1)`
-/

namespace A046539.P11473686594406605785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A046534 (2 * n + 1)

end

end A046539.P11473686594406605785

/-! ## A046539.P2154719521847173035

`A046534(2*n+1)%A000041(n+2)`
-/

namespace A046539.P2154719521847173035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046534 (2 * n + 1)) (A000041 (n + 2))

end

end A046539.P2154719521847173035

/-! ## A046539.P356818445484714896

`A046534(2*n+1)+and(1, A184636(n+2))`
-/

namespace A046539.P356818445484714896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (2 * n + 1) + Int.land 1 (A184636 (n + 2))

end

end A046539.P356818445484714896

/-! ## A046539.P18135431068726482728

`A134323(2*n+1)²*A046534(2*n+1)`
-/

namespace A046539.P18135431068726482728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (2 * n + 1) ^ 2 * A046534 (2 * n + 1)

end

end A046539.P18135431068726482728

/-! ## A046539.P1246814668841959676

`or(char[A046534(2*(n+1))], A046534(2*n+1))`
-/

namespace A046539.P1246814668841959676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A046534 (2 * n + 1))

end

end A046539.P1246814668841959676

/-! ## A046539.P5433408463617751260

`A046534(2*n+1)+n*A209229(2*n+1)`
-/

namespace A046539.P5433408463617751260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (2 * n + 1) + (n : ℤ) * A209229 (2 * n + 1)

end

end A046539.P5433408463617751260

/-! ## A046539.P13920526835535998336

`lcm(A008683(A014963(n+2)), A046534(2*n+1))`
-/

namespace A046539.P13920526835535998336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A014963 (n + 2)).toNat) (A046534 (2 * n + 1))

end

end A046539.P13920526835535998336

/-! ## A046539.P3086021995761674968

`A046534(2*n+1)*A046534(A014963(2*(n+1)))`
-/

namespace A046539.P3086021995761674968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (2 * n + 1) * A046534 (A014963 (2 * (n + 1))).toNat

end

end A046539.P3086021995761674968

/-! ## A046539.P562095409686919842

`A046534(2*n+1)%A048577(n)`
-/

namespace A046539.P562095409686919842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046534 (2 * n + 1)) (A048577 n)

end

end A046539.P562095409686919842

/-! ## A046539.P16596735308818509934

`∑{d}[A046534(2*n+1), A000010(#)]`
-/

namespace A046539.P16596735308818509934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A046539.P16596735308818509934

/-! ## A046539.P9020121359796623587

`A046534(2*n+1)*A046534(A046543(2*(n+1)))`
-/

namespace A046539.P9020121359796623587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (2 * n + 1) * A046534 (A046543 (2 * (n + 1))).toNat

end

end A046539.P9020121359796623587

/-!
# A046540: Denominators of the 1/3-Pascal triangle (by row).

The programs for A046540, there is no canonical definition to state claims against.
-/

/-! ## A046540.P4481005107932958894

`A046535(Δ[n²])`
-/

namespace A046540.P4481005107932958894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046540.P4481005107932958894

/-! ## A046540.P14940593993676402587

`A046534(2*(n+1))`
-/

namespace A046540.P14940593993676402587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (2 * (n + 1))

end

end A046540.P14940593993676402587

/-! ## A046540.P14972997630100890474

`dr(A046535(2*n+1))`
-/

namespace A046540.P14972997630100890474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A046535 (2 * n + 1))

end

end A046540.P14972997630100890474

/-! ## A046540.P13392913269149311798

`dr(A046534(A005843(n+1)))`
-/

namespace A046540.P13392913269149311798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A046534 (A005843 (n + 1)).toNat)

end

end A046540.P13392913269149311798

/-! ## A046540.P7400481246185038592

`A000041(A046534(n+2+n))`
-/

namespace A046540.P7400481246185038592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A046534 (n + 2 + n)).toNat

end

end A046540.P7400481246185038592

/-! ## A046540.P5461721767050057993

`A000005(A046535(2*n+1)²)`
-/

namespace A046540.P5461721767050057993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A046535 (2 * n + 1) ^ 2).toNat

end

end A046540.P5461721767050057993

/-! ## A046540.P2114009104269892766

`A006530(A046535(2*n+1)!)`
-/

namespace A046540.P2114009104269892766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A046535 (2 * n + 1)).toNat)

end

end A046540.P2114009104269892766

/-! ## A046540.P9893451635417940914

`A000005(A046534(n+2+n)²)`
-/

namespace A046540.P9893451635417940914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A046534 (n + 2 + n) ^ 2).toNat

end

end A046540.P9893451635417940914

/-! ## A046540.P4457103991701695023

`A006530(A046534(n+2+n)!)`
-/

namespace A046540.P4457103991701695023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A046534 (n + 2 + n)).toNat)

end

end A046540.P4457103991701695023

/-! ## A046540.P9661077063147431821

`A014681(A046535(2*n+1)+1)`
-/

namespace A046540.P9661077063147431821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A046535 (2 * n + 1) + 1).toNat

end

end A046540.P9661077063147431821

/-! ## A046540.P3821769605417899641

`A029966(A046535(2*n+1)+1)`
-/

namespace A046540.P3821769605417899641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029966 (A046535 (2 * n + 1) + 1).toNat

end

end A046540.P3821769605417899641

/-! ## A046540.P15032615347904104070

`A046543(A046535(2*n+1)+1)`
-/

namespace A046540.P15032615347904104070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046543 (A046535 (2 * n + 1) + 1).toNat

end

end A046540.P15032615347904104070

/-! ## A046540.P12566751962116000006

`A103889(A046535(2*n+1)+1)`
-/

namespace A046540.P12566751962116000006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A046535 (2 * n + 1) + 1).toNat

end

end A046540.P12566751962116000006

/-! ## A046540.P16356966409269903936

`A120508(A046535(2*n+1)+1)`
-/

namespace A046540.P16356966409269903936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120508 (A046535 (2 * n + 1) + 1).toNat

end

end A046540.P16356966409269903936

/-! ## A046540.P7133531666916336579

`A004442(A046535(2*n+1)-1)`
-/

namespace A046540.P7133531666916336579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A046535 (2 * n + 1) - 1).toNat

end

end A046540.P7133531666916336579

/-! ## A046540.P14564248956999961751

`A007318(A046534(n+2+n)+4)`
-/

namespace A046540.P14564248956999961751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A046534 (n + 2 + n) + 4).toNat

end

end A046540.P14564248956999961751

/-! ## A046540.P9785631532341828703

`A001222(2^A046534(n+2+n))`
-/

namespace A046540.P9785631532341828703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A046534 (n + 2 + n) : ℤ))).toNat

end

end A046540.P9785631532341828703

/-! ## A046540.P6805153549055834428

`filter[A046535(2*n+1), A000035(#)]`
-/

namespace A046540.P6805153549055834428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046540.P6805153549055834428

/-! ## A046540.P14134919790700693165

`filter[A046535(2*n+1), A004539(#)]`
-/

namespace A046540.P14134919790700693165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A004539 (f1 j).toNat = 1) n)

end

end A046540.P14134919790700693165

/-!
# A046542: Odd numbers among the numerators of the 1/3-Pascal triangle (by row).

The programs for A046542, there is no canonical definition to state claims against.
-/

/-! ## A046542.P8979469991694096893

`filter[A046539(n+1), A000035(#)]`
-/

namespace A046542.P8979469991694096893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046542.P8979469991694096893

/-! ## A046542.P6991148873600233383

`filter[A046535(2*(n+1)), A000035(#)]`
-/

namespace A046542.P6991148873600233383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046542.P6991148873600233383

/-! ## A046542.P11773620384973713034

`filter[A046534(2*n+1), A000035(#)]`
-/

namespace A046542.P11773620384973713034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046542.P11773620384973713034

/-! ## A046542.P18223628877968604301

`filter[A046539(n+1), A141738(#)]`
-/

namespace A046542.P18223628877968604301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141738 (f1 j).toNat = 1) n)

end

end A046542.P18223628877968604301

/-! ## A046542.P17029140302595984618

`filter[A046534(2*n+1), A141738(#)]`
-/

namespace A046542.P17029140302595984618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141738 (f1 j).toNat = 1) n)

end

end A046542.P17029140302595984618

/-!
# A046543: First numerator and then denominator of the central elements of the 1/3-Pascal triangle (by row).

The programs for A046543, there is no canonical definition to state claims against.
-/

/-! ## A046543.P2131701806720152862

`A046544((-1)^n+n+1)`
-/

namespace A046543.P2131701806720152862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046544 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A046543.P2131701806720152862

/-! ## A046543.P12444018732241521002

`A046544(A065190(n+2)-1)+A000038(n+1)`
-/

namespace A046543.P12444018732241521002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046544 (A065190 (n + 2) - 1).toNat + A000038 (n + 1)

end

end A046543.P12444018732241521002

/-! ## A046543.P6470016035766774956

`A046544(A065190(n+2)-1)+A000007(A035422(n+1))`
-/

namespace A046543.P6470016035766774956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046544 (A065190 (n + 2) - 1).toNat + A000007 (A035422 (n + 1)).toNat

end

end A046543.P6470016035766774956

/-! ## A046543.P4645048013503944811

`A046544(A065190(n+2)-1)%A032201(n+1)`
-/

namespace A046543.P4645048013503944811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046544 (A065190 (n + 2) - 1).toNat) (A032201 (n + 1))

end

end A046543.P4645048013503944811

/-! ## A046543.P8578896516670944264

`A046534(A081346(n))`
-/

namespace A046543.P8578896516670944264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (A081346 n).toNat

end

end A046543.P8578896516670944264

/-! ## A046543.P2550052676309690533

`A046534(n*A103889(n+1)+1)`
-/

namespace A046543.P2550052676309690533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 ((n : ℤ) * A103889 (n + 1) + 1).toNat

end

end A046543.P2550052676309690533

/-! ## A046543.P17329643785481862551

`A046534(n*A114112(n+1)+1)`
-/

namespace A046543.P17329643785481862551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 ((n : ℤ) * A114112 (n + 1) + 1).toNat

end

end A046543.P17329643785481862551

/-!
# A046544: First denominator and then numerator of the central elements of the 1/3-Pascal triangle (by row).

The programs for A046544, there is no canonical definition to state claims against.
-/

/-! ## A046544.P557470124377046339

`A046543(A004442(n)+1)`
-/

namespace A046544.P557470124377046339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046543 (A004442 n + 1).toNat

end

end A046544.P557470124377046339

/-! ## A046544.P13895265073112591808

`A046543(A014681(n+1))`
-/

namespace A046544.P13895265073112591808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046543 (A014681 (n + 1)).toNat

end

end A046544.P13895265073112591808

/-! ## A046544.P2024517953409065658

`A046543(A103889(n+1))`
-/

namespace A046544.P2024517953409065658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046543 (A103889 (n + 1)).toNat

end

end A046544.P2024517953409065658

/-! ## A046544.P6757977150922528091

`A046543(A114112(n+1))`
-/

namespace A046544.P6757977150922528091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046543 (A114112 (n + 1)).toNat

end

end A046544.P6757977150922528091

/-! ## A046544.P13973447783270096327

`A046543(abs(Δ[A014682(n)]))`
-/

namespace A046544.P13973447783270096327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046543 |f1 (n + 1) - f1 n|.toNat

end

end A046544.P13973447783270096327

/-! ## A046544.P6607288311276935254

`A046543(1-A062157(n)+n)`
-/

namespace A046544.P6607288311276935254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046543 (1 - A062157 n + (n : ℤ)).toNat

end

end A046544.P6607288311276935254

/-! ## A046544.P314647460300395817

`A046543(1-(A062157(n)-n))`
-/

namespace A046544.P314647460300395817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046543 (1 - (A062157 n - (n : ℤ))).toNat

end

end A046544.P314647460300395817

/-! ## A046544.P5651772497794556741

`A046543(A062157(n+1)+n+1)`
-/

namespace A046544.P5651772497794556741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046543 (A062157 (n + 1) + (n + 1 : ℤ)).toNat

end

end A046544.P5651772497794556741

/-! ## A046544.P2061060616807917882

`A046535(A081346(n))`
-/

namespace A046544.P2061060616807917882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (A081346 n).toNat

end

end A046544.P2061060616807917882

/-! ## A046544.P6958922225216985558

`A046534(A081346(xor(1, n)))`
-/

namespace A046544.P6958922225216985558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (A081346 (Nat.xor 1 n)).toNat

end

end A046544.P6958922225216985558

/-! ## A046544.P603612936656910481

`A046535(n*A103889(n+1)+1)`
-/

namespace A046544.P603612936656910481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 ((n : ℤ) * A103889 (n + 1) + 1).toNat

end

end A046544.P603612936656910481

/-! ## A046544.P11940454697212273337

`A046535(n*A114112(n+1)+1)`
-/

namespace A046544.P11940454697212273337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 ((n : ℤ) * A114112 (n + 1) + 1).toNat

end

end A046544.P11940454697212273337

/-!
# A046545: Distinct numbers in writing first numerator and then denominator of the central elements of the 1/3-Pascal triangle (by row).

The programs for A046545, there is no canonical definition to state claims against.
-/

/-! ## A046545.P8410216481869709686

`record[A046543(n+1)]`
-/

namespace A046545.P8410216481869709686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046545.P8410216481869709686

/-! ## A046545.P15617846388921592151

`record[A046544(n+1)]`
-/

namespace A046545.P15617846388921592151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046545.P15617846388921592151

/-! ## A046545.P13574550449857867713

`A046543(A223134(n))`
-/

namespace A046545.P13574550449857867713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046543 (A223134 n).toNat

end

end A046545.P13574550449857867713

/-! ## A046545.P16773779067697388327

`A046544(A316571(n+2))`
-/

namespace A046545.P16773779067697388327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046544 (A316571 (n + 2)).toNat

end

end A046545.P16773779067697388327

/-! ## A046545.P11152246139113927484

`A046544(lt[n, A046544(n+1)]+1)`
-/

namespace A046545.P11152246139113927484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046545.P11152246139113927484

/-! ## A046545.P17577718562936581041

`A046543(A114112(n+1)+A014681(n))`
-/

namespace A046545.P17577718562936581041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046543 (A114112 (n + 1) + A014681 n).toNat

end

end A046545.P17577718562936581041

/-! ## A046545.P7231193029020998799

`record[A046534((n+1)²)]`
-/

namespace A046545.P7231193029020998799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046545.P7231193029020998799

/-! ## A046545.P6105452410733553410

`record[A046535(n²+1)]`
-/

namespace A046545.P6105452410733553410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046545.P6105452410733553410

/-! ## A046545.P2769799666043154509

`record[A046534(n+1)/A046531(n+1)]`
-/

namespace A046545.P2769799666043154509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046534 (n + 1) : ℚ) / (A046531 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046545.P2769799666043154509

/-!
# A046546: First numerator and then denominator of the elements to the right of the central elements of the 1/3-Pascal triangle.

The programs for A046546, there is no canonical definition to state claims against.
-/

/-! ## A046546.P3661490868423140681

`A046547(xor(1, n)+1)`
-/

namespace A046546.P3661490868423140681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046547 (Nat.xor 1 n + 1)

end

end A046546.P3661490868423140681

/-! ## A046546.P9704854549173708897

`A046547((-1)^n+n+1)`
-/

namespace A046546.P9704854549173708897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046547 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A046546.P9704854549173708897

/-! ## A046546.P17361160209043312558

`or(char[1], A046547(A014681(n+1)))`
-/

namespace A046546.P17361160209043312558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A046547 (A014681 (n + 1)).toNat)

end

end A046546.P17361160209043312558

/-! ## A046546.P12948094303610973033

`gcd(A000038(n), A046547(A014681(n+1)))`
-/

namespace A046546.P12948094303610973033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A046547 (A014681 (n + 1)).toNat)

end

end A046546.P12948094303610973033

/-! ## A046546.P4025381867873752126

`A046547(A014681(n+1))^A001221(A027748(n+1))`
-/

namespace A046546.P4025381867873752126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046547 (A014681 (n + 1)).toNat : ℚ) ^ (A001221 (A027748 (n + 1)).toNat : ℤ)

end

end A046546.P4025381867873752126

/-! ## A046546.P12676358746479377488

`A046547(A014681(n+1))+A000007(n+1)`
-/

namespace A046546.P12676358746479377488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046547 (A014681 (n + 1)).toNat + A000007 (n + 1)

end

end A046546.P12676358746479377488

/-! ## A046546.P8264213785900621884

`A046547(A014681(n+1))%A139582(n)`
-/

namespace A046546.P8264213785900621884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046547 (A014681 (n + 1)).toNat) (A139582 n)

end

end A046546.P8264213785900621884

/-! ## A046546.P7446058316467526203

`A046547(A046547(2*n+1))*A046547(A014681(n+1))`
-/

namespace A046546.P7446058316467526203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046547 (A046547 (2 * n + 1)).toNat * A046547 (A014681 (n + 1)).toNat

end

end A046546.P7446058316467526203

/-! ## A046546.P9118366855437053609

`A014963(A119973(n+1))*A046547(A014681(n+1))`
-/

namespace A046546.P9118366855437053609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A119973 (n + 1)).toNat * A046547 (A014681 (n + 1)).toNat

end

end A046546.P9118366855437053609

/-! ## A046546.P2846926398699577552

`A046547(A014681(n+1))^A014963(∑[n+1])`
-/

namespace A046546.P2846926398699577552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046547 (A014681 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A046546.P2846926398699577552

/-!
# A046547: First denominator and then numerator of the elements to the right of the central elements of the 1/3-Pascal triangle.

The programs for A046547, there is no canonical definition to state claims against.
-/

/-! ## A046547.P12796802030701852309

`A046546(xor(1, n)+1)`
-/

namespace A046547.P12796802030701852309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (Nat.xor 1 n + 1)

end

end A046547.P12796802030701852309

/-! ## A046547.P12812875780839735571

`A046546((-1)^n+n+1)`
-/

namespace A046547.P12812875780839735571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A046547.P12812875780839735571

/-! ## A046547.P739984019401530680

`lcm(A008836(n+1), A046546(A014681(n+1)))`
-/

namespace A046547.P739984019401530680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A046546 (A014681 (n + 1)).toNat)

end

end A046547.P739984019401530680

/-! ## A046547.P15687349570899630984

`A046546(A046546(2*(n+1)))*A046546(A014681(n+1))`
-/

namespace A046547.P15687349570899630984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (A046546 (2 * (n + 1))).toNat * A046546 (A014681 (n + 1)).toNat

end

end A046547.P15687349570899630984

/-! ## A046547.P17766470129637762837

`A014963(A008458(n))*A046546(A014681(n+1))`
-/

namespace A046547.P17766470129637762837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A046546 (A014681 (n + 1)).toNat

end

end A046547.P17766470129637762837

/-! ## A046547.P14878642741364423750

`A046546(A014681(n+1))+A010057(A084696(n+1))`
-/

namespace A046547.P14878642741364423750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (A014681 (n + 1)).toNat + A010057 (A084696 (n + 1)).toNat

end

end A046547.P14878642741364423750

/-!
# A046548: First numerator and then denominator of the elements to the right of the central elements of the 1/3-Pascal triangle (by row), excluding 1's.

The programs for A046548, there is no canonical definition to state claims against.
-/

/-! ## A046548.P8327399574464691647

`A046546(lt[1, A046546(n+1)]+1)`
-/

namespace A046548.P8327399574464691647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046548.P8327399574464691647

/-! ## A046548.P11422945120869097520

`filter[A046546(n+1), A267810(#)]`
-/

namespace A046548.P11422945120869097520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267810 (f1 j).toNat = 1) n)

end

end A046548.P11422945120869097520

/-!
# A046549: First numerator and then denominator of the elements to the right of the central elements of the 1/3-Pascal triangle (by row), excluding 1's and 3's.

The programs for A046549, there is no canonical definition to state claims against.
-/

/-! ## A046549.P10924105171384647197

`A046551(A049068(n+1))`
-/

namespace A046549.P10924105171384647197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046551 (A049068 (n + 1)).toNat

end

end A046549.P10924105171384647197

/-! ## A046549.P8812514770340381856

`A046551(A000037(A000037(n+1)))`
-/

namespace A046549.P8812514770340381856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046551 (A000037 (A000037 (n + 1)).toNat).toNat

end

end A046549.P8812514770340381856

/-! ## A046549.P10729524962639815847

`A046550(lt[1, A046550(n+1)]+1)`
-/

namespace A046549.P10729524962639815847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046549.P10729524962639815847

/-! ## A046549.P8192823256773315748

`A046538(eq[0, A003988(n+1)])`
-/

namespace A046549.P8192823256773315748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046538 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046549.P8192823256773315748

/-! ## A046549.P16942532256339443703

`A046547(2*A049068(n+1))`
-/

namespace A046549.P16942532256339443703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046547 (2 * A049068 (n + 1)).toNat

end

end A046549.P16942532256339443703

/-! ## A046549.P10878922041736139779

`A046546(lt[3, A046547(n+1)])`
-/

namespace A046549.P10878922041736139779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046549.P10878922041736139779

/-! ## A046549.P6871255498070887395

`A046546(lt[3, A046546(xor(1, n)+1)])`
-/

namespace A046549.P6871255498070887395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046549.P6871255498070887395

/-! ## A046549.P11191292504467870324

`A046538(eq[0, A144299(n)])`
-/

namespace A046549.P11191292504467870324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046538 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046549.P11191292504467870324

/-! ## A046549.P7559329503448957331

`A046546(lt[A046544(n+1), A046546(n+1)]+1)`
-/

namespace A046549.P7559329503448957331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A046549.P7559329503448957331

/-! ## A046549.P5380644889083222834

`filter[A046548(n+1), A267683(#)]`
-/

namespace A046549.P5380644889083222834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A046549.P5380644889083222834

/-!
# A046550: First numerator and then denominator of the elements to the right of the central elements of the 1/3-Pascal triangle (by row), excluding 3's.

The programs for A046550, there is no canonical definition to state claims against.
-/

/-! ## A046550.P9751738554866801099

`filter[A046546(n+1), A267683(#)]`
-/

namespace A046550.P9751738554866801099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A046550.P9751738554866801099

/-!
# A046551: Numerators of the elements to the right of the central elements of the 1/3-Pascal triangle (by row).

The programs for A046551, there is no canonical definition to state claims against.
-/

/-! ## A046551.P5886963724566941813

`A046546(Δ[n²])`
-/

namespace A046551.P5886963724566941813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046551.P5886963724566941813

/-! ## A046551.P4505917221011883216

`A046547(2*(n+1))`
-/

namespace A046551.P4505917221011883216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046547 (2 * (n + 1))

end

end A046551.P4505917221011883216

/-! ## A046551.P18079388974716037057

`A046547(A103517(n))%A031126(n)`
-/

namespace A046551.P18079388974716037057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046547 (A103517 n).toNat) (A031126 n)

end

end A046551.P18079388974716037057

/-! ## A046551.P10450094382403263785

`lcm(A008836(n+1), A046546(A005408(n)))`
-/

namespace A046551.P10450094382403263785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A046546 (A005408 n).toNat)

end

end A046551.P10450094382403263785

/-! ## A046551.P14056688513642402756

`A046547(A103517(n))/A046527(round(1/(n+1)))`
-/

namespace A046551.P14056688513642402756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046547 (A103517 n).toNat : ℚ) / (A046527 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ))).toNat : ℚ)

end

end A046551.P14056688513642402756

/-! ## A046551.P16835737778003239965

`A046539(A274428(n+1))`
-/

namespace A046551.P16835737778003239965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046539 (A274428 (n + 1)).toNat

end

end A046551.P16835737778003239965

/-! ## A046551.P16525972213422378174

`A046546(A046544(2*n+1))*A046546(2*n+1)`
-/

namespace A046551.P16525972213422378174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (A046544 (2 * n + 1)).toNat * A046546 (2 * n + 1)

end

end A046551.P16525972213422378174

/-! ## A046551.P10596769863728101953

`filter[A046546(2*n+1), A267683(#)]`
-/

namespace A046551.P10596769863728101953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A046551.P10596769863728101953

/-! ## A046551.P11843309804190252301

`filter[A046546(2*n+1), A267813(#)]`
-/

namespace A046551.P11843309804190252301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046546 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A046551.P11843309804190252301

/-! ## A046551.P6942400179010060737

`A046546(A005408(n))/A217668(A179679(n+1))`
-/

namespace A046551.P6942400179010060737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046546 (A005408 n).toNat : ℚ) / (A217668 (A179679 (n + 1)).toNat : ℚ)

end

end A046551.P6942400179010060737

/-!
# A046552: First numerator and then denominator of each element of the 1/3-Pascal triangle (by row), excluding 3's.

The programs for A046552, there is no canonical definition to state claims against.
-/

/-! ## A046552.P6175532272469029318

`A046553(comp[A281956(n+1)+n])`
-/

namespace A046552.P6175532272469029318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281956 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046553 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A046552.P6175532272469029318

/-!
# A046554: First denominator and then numerator of each element to the right of the central elements of the 1/3-Pascal triangle (by row), excluding 3's.

The programs for A046554, there is no canonical definition to state claims against.
-/

/-! ## A046554.P5525102960818072260

`filter[A046547(n+1), A267683(#)]`
-/

namespace A046554.P5525102960818072260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A046554.P5525102960818072260

/-!
# A046555: Odd numbers in writing first numerator and then denominator of each element of the 1/3-Pascal triangle (by row).

The programs for A046555, there is no canonical definition to state claims against.
-/

/-! ## A046555.P17203733374769750996

`A046534(eq[1, A046534(n+1)%2]+1)`
-/

namespace A046555.P17203733374769750996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046534 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046555.P17203733374769750996

/-! ## A046555.P839175294895545916

`A046534(eq[1, gcd(2, A046534(n+1))]+1)`
-/

namespace A046555.P839175294895545916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A046534 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A046555.P839175294895545916

/-! ## A046555.P8662398909005118975

`A046534(eq[1, and(1, A046534(n+1))]+1)`
-/

namespace A046555.P8662398909005118975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046534 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046555.P8662398909005118975

/-! ## A046555.P3212003383942173045

`A046534(record[n+1-val(A046534(n+1), 2)])`
-/

namespace A046555.P3212003383942173045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.valuation (A046534 (n + 1)).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046555.P3212003383942173045

/-! ## A046555.P2416376828737863456

`A046534(record[(n+1)*and(1, A046534(n+1))])`
-/

namespace A046555.P2416376828737863456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A046534 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046555.P2416376828737863456

/-! ## A046555.P1705471086540455282

`A046534(record[(n+1)^and(1, A046534(n+1))])`
-/

namespace A046555.P1705471086540455282
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.land 1 (A046534 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A046555.P1705471086540455282

/-! ## A046555.P13907643575388735927

`filter[A046534(n+1), A000035(#)]`
-/

namespace A046555.P13907643575388735927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046555.P13907643575388735927

/-!
# A046556: Odd numbers found when writing first denominator and then numerator of each element of the 1/3-Pascal triangle (by row).

The programs for A046556, there is no canonical definition to state claims against.
-/

/-! ## A046556.P587009031141619920

`A046535(record[n*A046535(n+1)%2]+1)`
-/

namespace A046556.P587009031141619920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A046535 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A046556.P587009031141619920

/-! ## A046556.P5443620278164143100

`A046535(record[n/gcd(2, A046535(n+1))]+1)`
-/

namespace A046556.P5443620278164143100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd 2 (A046535 (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A046556.P5443620278164143100

/-! ## A046556.P7160846617422179138

`filter[A046535(n+1), A000035(#)]`
-/

namespace A046556.P7160846617422179138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046556.P7160846617422179138

/-! ## A046556.P12065109737781629618

`A004001(A046623(n+1)%A192272(n+1))`
-/

namespace A046556.P12065109737781629618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (Int.tmod (A046623 (n + 1)) (A192272 (n + 1))).toNat

end

end A046556.P12065109737781629618

/-!
# A046558: Even numbers in the numerators of the 1/3-Pascal triangle (by row).

The programs for A046558, there is no canonical definition to state claims against.
-/

/-! ## A046558.P6617555684660966398

`A046534(eq[0, A046534(n+1)%2]+1)`
-/

namespace A046558.P6617555684660966398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046534 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046558.P6617555684660966398

/-! ## A046558.P13057176825629847803

`A046534(eq[2, gcd(2, A046534(n+1))]+1)`
-/

namespace A046558.P13057176825629847803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A046534 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046534 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A046558.P13057176825629847803

/-! ## A046558.P11131366178132982012

`filter[A046536(n+1), A059841(#)]`
-/

namespace A046558.P11131366178132982012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046558.P11131366178132982012

/-! ## A046558.P8824721409424837485

`filter[A046537(n+1), A059841(#)]`
-/

namespace A046558.P8824721409424837485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046558.P8824721409424837485

/-! ## A046558.P2915695731026515474

`filter[A046538(n+1), A059841(#)]`
-/

namespace A046558.P2915695731026515474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046558.P2915695731026515474

/-! ## A046558.P17052656262496733328

`filter[A046539(n+1), A059841(#)]`
-/

namespace A046558.P17052656262496733328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046558.P17052656262496733328

/-! ## A046558.P9756202139415928601

`filter[A046536(n+1), A135528(#)]`
-/

namespace A046558.P9756202139415928601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A046558.P9756202139415928601

/-! ## A046558.P2832022680129337916

`filter[A046537(n+1), A135528(#)]`
-/

namespace A046558.P2832022680129337916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A046558.P2832022680129337916

/-! ## A046558.P2180459479613363362

`filter[A046538(n+1), A135528(#)]`
-/

namespace A046558.P2180459479613363362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A046558.P2180459479613363362

/-! ## A046558.P4811082942882112658

`filter[A046536(n+1), A266591(#)]`
-/

namespace A046558.P4811082942882112658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A046558.P4811082942882112658

/-!
# A046559: Distinct even numbers in the numerators of the 1/3-Pascal triangle (by row).

The programs for A046559, there is no canonical definition to state claims against.
-/

/-! ## A046559.P11914358995618554860

`A046541(eq[2, gcd(2, A046541(n+1))]+1)`
-/

namespace A046559.P11914358995618554860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A046541 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046541 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A046559.P11914358995618554860

/-! ## A046559.P15873371643383904011

`filter[A046541(n+1), A059841(#)]`
-/

namespace A046559.P15873371643383904011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046559.P15873371643383904011

/-! ## A046559.P16146346339171073076

`filter[A046541(n+1), A267043(#)]`
-/

namespace A046559.P16146346339171073076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A046559.P16146346339171073076

/-! ## A046559.P75123770706978719

`filter[A046541(n+2), A135528(#)]`
-/

namespace A046559.P75123770706978719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A046559.P75123770706978719

/-! ## A046559.P13998026730902256909

`filter[A046541(n+2), A266591(#)]`
-/

namespace A046559.P13998026730902256909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A046559.P13998026730902256909

/-!
# A046561: Distinct odd numbers in writing first numerator and then denominator of each element to the right of the central elements of the 1/3-Pascal triangle (by row).

The programs for A046561, there is no canonical definition to state claims against.
-/

/-! ## A046561.P1816720871085076796

`A046560(eq[1, A046560(n+1)%2]+1)`
-/

namespace A046561.P1816720871085076796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046560 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046561.P1816720871085076796

/-! ## A046561.P4083061721553164668

`A046560(record[(n+1)/gcd(2, A046560(n+1))])`
-/

namespace A046561.P4083061721553164668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 2 (A046560 (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046560 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A046561.P4083061721553164668

/-! ## A046561.P9538413178679933383

`A046560(record[(n+1)*A046560(n+2)%2]+1)`
-/

namespace A046561.P9538413178679933383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A046560 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046560 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A046561.P9538413178679933383

/-! ## A046561.P16375793634979178308

`filter[A046560(n+1), A000035(#)]`
-/

namespace A046561.P16375793634979178308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046561.P16375793634979178308

/-!
# A046562: Distinct even numbers in writing first numerator and then denominator of each element to the right of the central elements of the 1/3-Pascal triangle (by row).

The programs for A046562, there is no canonical definition to state claims against.
-/

/-! ## A046562.P15993296348632328165

`A046560(lt[and(1, A046560(n+1)), 1]+1)`
-/

namespace A046562.P15993296348632328165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046560 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046560 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A046562.P15993296348632328165

/-! ## A046562.P2820848872458495357

`filter[A046560(n+1), A059841(#)]`
-/

namespace A046562.P2820848872458495357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046562.P2820848872458495357

/-! ## A046562.P3671079744318612181

`filter[A046560(n+1), A267043(#)]`
-/

namespace A046562.P3671079744318612181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A046562.P3671079744318612181

/-! ## A046562.P17528208091652882248

`filter[A046560(n+2), A135528(#)]`
-/

namespace A046562.P17528208091652882248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046560 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A046562.P17528208091652882248

/-! ## A046562.P1832809625024000943

`filter[A046560(n+2), A266591(#)]`
-/

namespace A046562.P1832809625024000943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046560 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A046562.P1832809625024000943

/-!
# A046563: First numerator and then denominator of each element of the 1/4-Pascal triangle (by row). To get a 1/4-Pascal triangle, replace "2" in the third row of the Pascal triangle with "1/4" and calculate all other rows as in the Pascal triangle.

The programs for A046563, there is no canonical definition to state claims against.
-/

/-! ## A046563.P4311248429427132976

`A046564(xor(1, n)+1)`
-/

namespace A046563.P4311248429427132976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (Nat.xor 1 n + 1)

end

end A046563.P4311248429427132976

/-! ## A046563.P5137651623146554851

`A046564(-xor(n, -2))`
-/

namespace A046563.P5137651623146554851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (-Int.xor (n : ℤ) (-2)).toNat

end

end A046563.P5137651623146554851

/-! ## A046563.P10232335784167278967

`A046564(2-xor(1, 1-n))`
-/

namespace A046563.P10232335784167278967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A046563.P10232335784167278967

/-! ## A046563.P8287959556967844907

`A046564(A004442(n)+1)`
-/

namespace A046563.P8287959556967844907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (A004442 n + 1).toNat

end

end A046563.P8287959556967844907

/-! ## A046563.P16852000452317209424

`A046564(A014681(n+1))`
-/

namespace A046563.P16852000452317209424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (A014681 (n + 1)).toNat

end

end A046563.P16852000452317209424

/-! ## A046563.P5582123647399517089

`A046564(A103889(n+1))`
-/

namespace A046563.P5582123647399517089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (A103889 (n + 1)).toNat

end

end A046563.P5582123647399517089

/-! ## A046563.P8318086120280321536

`A046564(A114112(n+1))`
-/

namespace A046563.P8318086120280321536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (A114112 (n + 1)).toNat

end

end A046563.P8318086120280321536

/-! ## A046563.P10012363183691140353

`A046564(xor(1, A165754(n)))`
-/

namespace A046563.P10012363183691140353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (Int.xor 1 (A165754 n)).toNat

end

end A046563.P10012363183691140353

/-! ## A046563.P14070325426182622513

`A046564(abs(Δ[A014682(n)]))`
-/

namespace A046563.P14070325426182622513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 |f1 (n + 1) - f1 n|.toNat

end

end A046563.P14070325426182622513

/-! ## A046563.P6859875134538819870

`A046564(2*A109613(n)-n)`
-/

namespace A046563.P6859875134538819870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * A109613 n - (n : ℤ)).toNat

end

end A046563.P6859875134538819870

/-! ## A046563.P13314861452063032439

`A046564(A109613(n)+1-A000035(n))`
-/

namespace A046563.P13314861452063032439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (A109613 n + (1 - A000035 n)).toNat

end

end A046563.P13314861452063032439

/-! ## A046563.P13590059322335419715

`A046564(1-(A000035(n)-A109613(n)))`
-/

namespace A046563.P13590059322335419715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (1 - (A000035 n - A109613 n)).toNat

end

end A046563.P13590059322335419715

/-! ## A046563.P13386635373948147814

`A046564(A109613(n)+A109613(n)-n)`
-/

namespace A046563.P13386635373948147814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (A109613 n + (A109613 n - (n : ℤ))).toNat

end

end A046563.P13386635373948147814

/-! ## A046563.P3019714895556398936

`A046564(A109613(n)-(n-A109613(n)))`
-/

namespace A046563.P3019714895556398936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (A109613 n - ((n : ℤ) - A109613 n)).toNat

end

end A046563.P3019714895556398936

/-! ## A046563.P9473248064727189342

`A046564(Δ[A236453(n)])`
-/

namespace A046563.P9473248064727189342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (f1 (n + 1) - f1 n).toNat

end

end A046563.P9473248064727189342

/-! ## A046563.P4829576818598134069

`A046564(A109613(n)+A000035(n+1))`
-/

namespace A046563.P4829576818598134069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (A109613 n + A000035 (n + 1)).toNat

end

end A046563.P4829576818598134069

/-! ## A046563.P11214732195667045249

`A046564(A236453(n+1)-A236453(n))`
-/

namespace A046563.P11214732195667045249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (A236453 (n + 1) - A236453 n).toNat

end

end A046563.P11214732195667045249

/-! ## A046563.P10731598156000986214

`A046564(A132419(3*n)+n+1)`
-/

namespace A046563.P10731598156000986214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (A132419 (3 * n) + (n + 1 : ℤ)).toNat

end

end A046563.P10731598156000986214

/-!
# A046564: First denominator and then numerator of each element of the 1/4-Pascal triangle (by row).

The programs for A046564, there is no canonical definition to state claims against.
-/

/-! ## A046564.P13889744684810066714

`A046563(xor(1, n)+1)`
-/

namespace A046564.P13889744684810066714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (Nat.xor 1 n + 1)

end

end A046564.P13889744684810066714

/-! ## A046564.P4471042483124108325

`A046563(2-xor(1, 1-n))`
-/

namespace A046564.P4471042483124108325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A046564.P4471042483124108325

/-! ## A046564.P18443123194405501843

`A046563((-1)^n+n+1)`
-/

namespace A046564.P18443123194405501843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A046564.P18443123194405501843

/-! ## A046564.P7081060857379495795

`gcd(A000038(n), A046563(A114112(n+1)))`
-/

namespace A046564.P7081060857379495795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A046563 (A114112 (n + 1)).toNat)

end

end A046564.P7081060857379495795

/-! ## A046564.P2253120922435605651

`A046563(A114112(n+1))^A000041(C(3, n²))`
-/

namespace A046564.P2253120922435605651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046563 (A114112 (n + 1)).toNat : ℚ) ^ (A000041 (Nat.choose 3 (n ^ 2)) : ℤ)

end

end A046564.P2253120922435605651

/-! ## A046564.P1316886917345621513

`A046563(A046563(2*(n+1)))*A046563(A014681(n+1))`
-/

namespace A046564.P1316886917345621513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (A046563 (2 * (n + 1))).toNat * A046563 (A014681 (n + 1)).toNat

end

end A046564.P1316886917345621513

/-! ## A046564.P8331411263927098863

`A046563(A114112(n+1))%A028394(n)`
-/

namespace A046564.P8331411263927098863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046563 (A114112 (n + 1)).toNat) (A028394 n)

end

end A046564.P8331411263927098863

/-! ## A046564.P17087019418714190004

`A098002(A264030(n+1))+A046563(A114112(n+1))`
-/

namespace A046564.P17087019418714190004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098002 (A264030 (n + 1)).toNat + A046563 (A114112 (n + 1)).toNat

end

end A046564.P17087019418714190004

/-!
# A046565: First numerator and then denominator of each element of the 1/4-Pascal triangle (by row), excluding 1's.

The programs for A046565, there is no canonical definition to state claims against.
-/

/-! ## A046565.P7986391549285584788

`A046563(lt[1, A046563(n+1)]+1)`
-/

namespace A046565.P7986391549285584788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046565.P7986391549285584788

/-! ## A046565.P5273914764063198871

`A046563(eq[2, 2%A046563(n+1)²]+1)`
-/

namespace A046565.P5273914764063198871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A046563 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046565.P5273914764063198871

/-! ## A046565.P15069366929455047491

`A326619(p?[A160656(A046563(n+1))])`
-/

namespace A046565.P15069366929455047491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (A046563 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326619 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046565.P15069366929455047491

/-! ## A046565.P10899217123078326512

`A000034(n*(n+1)²)*A046566(A065190(n+1))`
-/

namespace A046565.P10899217123078326512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n * (n + 1) ^ 2) * A046566 (A065190 (n + 1)).toNat

end

end A046565.P10899217123078326512

/-! ## A046565.P3548747793468013860

`A046566(A065190(n+1))%A061550(A000045(n))`
-/

namespace A046565.P3548747793468013860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046566 (A065190 (n + 1)).toNat) (A061550 (A000045 n).toNat)

end

end A046565.P3548747793468013860

/-!
# A046566: First denominator and then numerator of the 1/4-Pascal triangle (by row), excluding 1's.

The programs for A046566, there is no canonical definition to state claims against.
-/

/-! ## A046566.P6693182907298002556

`A046564(lt[1, A046564(n+1)]+1)`
-/

namespace A046566.P6693182907298002556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046566.P6693182907298002556

/-! ## A046566.P8605699010994959073

`A036234(p?[A008578(A046564(n+1))])`
-/

namespace A046566.P8605699010994959073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046566.P8605699010994959073

/-! ## A046566.P9860423596761023480

`A064553(p?[A008578(A046564(n+1))])`
-/

namespace A046566.P9860423596761023480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046566.P9860423596761023480

/-! ## A046566.P4320063629333700016

`A046565(A065190(n+1))%A105656(n+2)`
-/

namespace A046566.P4320063629333700016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046565 (A065190 (n + 1)).toNat) (A105656 (n + 2))

end

end A046566.P4320063629333700016

/-! ## A046566.P10238227131338607759

`A046565(A065190(n+1))%A001748(A000011(n))`
-/

namespace A046566.P10238227131338607759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046565 (A065190 (n + 1)).toNat) (A001748 (A000011 n).toNat)

end

end A046566.P10238227131338607759

/-!
# A046567: First denominator and then numerator of the 1/4-Pascal triangle (by row), excluding 1's and 4's.

The programs for A046567, there is no canonical definition to state claims against.
-/

/-! ## A046567.P5557807693628145872

`filter[A046566(n+1), A165556(#)]`
-/

namespace A046567.P5557807693628145872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165556 (f1 j).toNat = 1) n)

end

end A046567.P5557807693628145872

/-!
# A046568: Numerators of the 1/4-Pascal triangle (by row).

The programs for A046568, there is no canonical definition to state claims against.
-/

/-! ## A046568.P6965482198117448674

`A046563(Δ[n²])`
-/

namespace A046568.P6965482198117448674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046568.P6965482198117448674

/-! ## A046568.P200033601882693969

`A046564(2*(n+1))`
-/

namespace A046568.P200033601882693969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * (n + 1))

end

end A046568.P200033601882693969

/-! ## A046568.P6230129375960260425

`or(char[2], A046563(2*n+1))`
-/

namespace A046568.P6230129375960260425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A046563 (2 * n + 1))

end

end A046568.P6230129375960260425

/-! ## A046568.P9515261030284859113

`gcd(A000038(n), A046563(2*n+1))`
-/

namespace A046568.P9515261030284859113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A046563 (2 * n + 1))

end

end A046568.P9515261030284859113

/-! ## A046568.P14281266441681461744

`lcm(A033999(n), A046563(2*n+1))`
-/

namespace A046568.P14281266441681461744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A046563 (2 * n + 1))

end

end A046568.P14281266441681461744

/-! ## A046568.P4728796050988570220

`A046563(2*n+1)+A000007(n+1)`
-/

namespace A046568.P4728796050988570220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (2 * n + 1) + A000007 (n + 1)

end

end A046568.P4728796050988570220

/-! ## A046568.P12771052003631314174

`A046563(2*n+1)+A000038(n+1)`
-/

namespace A046568.P12771052003631314174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (2 * n + 1) + A000038 (n + 1)

end

end A046568.P12771052003631314174

/-! ## A046568.P4189120840164165259

`A033999(2*n)*A046563(2*n+1)`
-/

namespace A046568.P4189120840164165259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A046563 (2 * n + 1)

end

end A046568.P4189120840164165259

/-! ## A046568.P4199327149843172660

`A046563(2*n+1)+A029834(2*(n+1))`
-/

namespace A046568.P4199327149843172660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (2 * n + 1) + A029834 (2 * (n + 1))

end

end A046568.P4199327149843172660

/-! ## A046568.P1402927554662317005

`A046563(2*n+1)+C(n, A000041(n+1))`
-/

namespace A046568.P1402927554662317005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (2 * n + 1) + (Nat.choose n (A000041 (n + 1)).toNat : ℤ)

end

end A046568.P1402927554662317005

/-! ## A046568.P13364395444338722952

`A046563(2*n+1)+C(n, A114112(n+2))`
-/

namespace A046568.P13364395444338722952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (2 * n + 1) + (Nat.choose n (A114112 (n + 2)).toNat : ℤ)

end

end A046568.P13364395444338722952

/-! ## A046568.P6247085340910931559

`A046563(2*n+1)+2-A177002(2*n+1)`
-/

namespace A046568.P6247085340910931559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (2 * n + 1) + (2 - A177002 (2 * n + 1))

end

end A046568.P6247085340910931559

/-! ## A046568.P792615981984375326

`gcd(A010816(n), A046564(A103517(n)))`
-/

namespace A046568.P792615981984375326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A046564 (A103517 n).toNat)

end

end A046568.P792615981984375326

/-! ## A046568.P16311025121892673150

`A033999(n)²*A046563(A005408(n))`
-/

namespace A046568.P16311025121892673150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A046563 (A005408 n).toNat

end

end A046568.P16311025121892673150

/-! ## A046568.P3698142109931925047

`A046563(A267872(n))/or(1, A000007(n))`
-/

namespace A046568.P3698142109931925047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046563 (A267872 n).toNat : ℚ) / (Int.lor 1 (A000007 n) : ℚ)

end

end A046568.P3698142109931925047

/-! ## A046568.P17263592695793226335

`A046563(2*n+1)*A046563(A046563(2*(n+1)))`
-/

namespace A046568.P17263592695793226335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (2 * n + 1) * A046563 (A046563 (2 * (n + 1))).toNat

end

end A046568.P17263592695793226335

/-! ## A046568.P2751994852995745986

`A046563(A005408(n))%A083876(n+1)`
-/

namespace A046568.P2751994852995745986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046563 (A005408 n).toNat) (A083876 (n + 1))

end

end A046568.P2751994852995745986

/-! ## A046568.P10936666465482038822

`A000027(A046563(comp[2*n]))`
-/

namespace A046568.P10936666465482038822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A046563 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A046568.P10936666465482038822

/-! ## A046568.P15981813143808405415

`A000027(A046564(Δ[lcm(n, n+1)]))`
-/

namespace A046568.P15981813143808405415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A046564 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A046568.P15981813143808405415

/-! ## A046568.P5767035263164338793

`∑{d}[A046564(n+2+n), A000010(#)]`
-/

namespace A046568.P5767035263164338793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A046568.P5767035263164338793

/-!
# A046569: Denominators of the 1/4-Pascal triangle (by row).

The programs for A046569, there is no canonical definition to state claims against.
-/

/-! ## A046569.P10469214607785252006

`A046564(Δ[n²])`
-/

namespace A046569.P10469214607785252006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046569.P10469214607785252006

/-! ## A046569.P14213816945913944711

`A046563(2*(n+1))`
-/

namespace A046569.P14213816945913944711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (2 * (n + 1))

end

end A046569.P14213816945913944711

/-! ## A046569.P5846797522213312541

`dr(A046564(2*n+1))`
-/

namespace A046569.P5846797522213312541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A046564 (2 * n + 1))

end

end A046569.P5846797522213312541

/-! ## A046569.P6218575445333758912

`gcd(4, A046564(A005408(n)))`
-/

namespace A046569.P6218575445333758912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A046564 (A005408 n).toNat)

end

end A046569.P6218575445333758912

/-! ## A046569.P11479532893048554469

`A014851(A046563(n+2+n))`
-/

namespace A046569.P11479532893048554469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014851 (A046563 (n + 2 + n)).toNat

end

end A046569.P11479532893048554469

/-! ## A046569.P16000072889930808344

`A000010(A046564(2*n+1)+1)`
-/

namespace A046569.P16000072889930808344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A046564 (2 * n + 1) + 1).toNat

end

end A046569.P16000072889930808344

/-! ## A046569.P15797407923117341538

`A291811(A046564(2*n+1)+1)`
-/

namespace A046569.P15797407923117341538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (A046564 (2 * n + 1) + 1).toNat

end

end A046569.P15797407923117341538

/-! ## A046569.P982576223676266039

`A014682(2*A046564(2*n+1))`
-/

namespace A046569.P982576223676266039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A046564 (2 * n + 1)).toNat

end

end A046569.P982576223676266039

/-! ## A046569.P2193101725899731780

`A246592(2*A046564(2*n+1))`
-/

namespace A046569.P2193101725899731780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246592 (2 * A046564 (2 * n + 1)).toNat

end

end A046569.P2193101725899731780

/-! ## A046569.P75693740068941262

`gcd(A010816(n), A046564(2*n+1))`
-/

namespace A046569.P75693740068941262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A046564 (2 * n + 1))

end

end A046569.P75693740068941262

/-! ## A046569.P13171932635501598007

`filter[A046564(2*n+1), A004547(#)]`
-/

namespace A046569.P13171932635501598007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A004547 (f1 j).toNat = 1) n)

end

end A046569.P13171932635501598007

/-! ## A046569.P8439618505460062866

`filter[A046564(2*n+1), A010055(#)]`
-/

namespace A046569.P8439618505460062866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A046569.P8439618505460062866

/-! ## A046569.P12532998906460842922

`filter[A046564(2*n+1), A010060(#)]`
-/

namespace A046569.P12532998906460842922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A046569.P12532998906460842922

/-! ## A046569.P9619861332270855246

`filter[A046564(2*n+1), A011558(#)]`
-/

namespace A046569.P9619861332270855246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A046569.P9619861332270855246

/-! ## A046569.P7100991451910324193

`filter[A046564(2*n+1), A011655(#)]`
-/

namespace A046569.P7100991451910324193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A046569.P7100991451910324193

/-! ## A046569.P1107442043520665295

`filter[A046564(2*n+1), A011748(#)]`
-/

namespace A046569.P1107442043520665295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011748 (f1 j).toNat = 1) n)

end

end A046569.P1107442043520665295

/-! ## A046569.P14947744936115015129

`filter[A046564(2*n+1), A011750(#)]`
-/

namespace A046569.P14947744936115015129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011750 (f1 j).toNat = 1) n)

end

end A046569.P14947744936115015129

/-! ## A046569.P9393191995261375732

`filter[A046564(2*n+1), A011751(#)]`
-/

namespace A046569.P9393191995261375732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011751 (f1 j).toNat = 1) n)

end

end A046569.P9393191995261375732

/-! ## A046569.P7996504417493447045

`filter[A046564(2*n+1), A014578(#)]`
-/

namespace A046569.P7996504417493447045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A046569.P7996504417493447045

/-! ## A046569.P824851559761832193

`filter[A046564(2*n+1), A022928(#)]`
-/

namespace A046569.P824851559761832193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022928 (f1 j).toNat = 1) n)

end

end A046569.P824851559761832193

/-!
# A046571: Odd numbers in the numerators of the 1/4-Pascal triangle (by row).

The programs for A046571, there is no canonical definition to state claims against.
-/

/-! ## A046571.P3883923169391818280

`A046563(eq[xor(1, n)-n, A046563(n+1)%2]+1)`
-/

namespace A046571.P3883923169391818280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046563 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A046571.P3883923169391818280

/-! ## A046571.P13134168026906074284

`filter[A046568(n+1), A000035(#)]`
-/

namespace A046571.P13134168026906074284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046571.P13134168026906074284

/-! ## A046571.P16900297216124946093

`filter[A046568(n+1), A104106(#)]`
-/

namespace A046571.P16900297216124946093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A046571.P16900297216124946093

/-! ## A046571.P14452001748908294638

`filter[A046568(n+1), A259044(#)]`
-/

namespace A046571.P14452001748908294638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A046571.P14452001748908294638

/-! ## A046571.P12122902871143077148

`filter[A046568(n+1), A260390(#)]`
-/

namespace A046571.P12122902871143077148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A046571.P12122902871143077148

/-! ## A046571.P4046783293325695360

`filter[A046568(n+1), A267256(#)]`
-/

namespace A046571.P4046783293325695360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A046571.P4046783293325695360

/-! ## A046571.P15740910967457346042

`filter[A046568(n+1), A179775(#)]`
-/

namespace A046571.P15740910967457346042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A046571.P15740910967457346042

/-!
# A046572: First numerator and then denominator of the central elements of the 1/4-Pascal triangle (by row).

The programs for A046572, there is no canonical definition to state claims against.
-/

/-! ## A046572.P1942449844976083570

`A046573((-1)^n+n+1)`
-/

namespace A046572.P1942449844976083570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046573 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A046572.P1942449844976083570

/-! ## A046572.P471810926617627125

`A046573(A046573(2*n+1))*A046573(A014681(n+1))`
-/

namespace A046572.P471810926617627125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046573 (A046573 (2 * n + 1)).toNat * A046573 (A014681 (n + 1)).toNat

end

end A046572.P471810926617627125

/-! ## A046572.P14883231138968977667

`A046563(A081346(n))`
-/

namespace A046572.P14883231138968977667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (A081346 n).toNat

end

end A046572.P14883231138968977667

/-! ## A046572.P9119902836865935304

`A046563(n*A103889(n+1)+1)`
-/

namespace A046572.P9119902836865935304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 ((n : ℤ) * A103889 (n + 1) + 1).toNat

end

end A046572.P9119902836865935304

/-! ## A046572.P4661052922519201548

`A046563(n*A114112(n+1)+1)`
-/

namespace A046572.P4661052922519201548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 ((n : ℤ) * A114112 (n + 1) + 1).toNat

end

end A046572.P4661052922519201548

/-!
# A046573: First denominator and then numerator of the central elements of the 1/4-Pascal triangle (by row).

The programs for A046573, there is no canonical definition to state claims against.
-/

/-! ## A046573.P672207203038779193

`A046572((-1)^n+n+1)`
-/

namespace A046573.P672207203038779193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046572 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A046573.P672207203038779193

/-! ## A046573.P5231916561721860410

`gcd(A000038(n), A046572(A103889(n+1)))`
-/

namespace A046573.P5231916561721860410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A046572 (A103889 (n + 1)).toNat)

end

end A046573.P5231916561721860410

/-! ## A046573.P3491784560884234283

`A046564(A081346(n))`
-/

namespace A046573.P3491784560884234283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (A081346 n).toNat

end

end A046573.P3491784560884234283

/-! ## A046573.P10449763254328575143

`A046564(n*A103889(n+1)+1)`
-/

namespace A046573.P10449763254328575143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 ((n : ℤ) * A103889 (n + 1) + 1).toNat

end

end A046573.P10449763254328575143

/-! ## A046573.P16313961485263724968

`A046564(n*A114112(n+1)+1)`
-/

namespace A046573.P16313961485263724968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 ((n : ℤ) * A114112 (n + 1) + 1).toNat

end

end A046573.P16313961485263724968

/-! ## A046573.P6666771657311295432

`A046564(A000035(n)+A109613(n)²)`
-/

namespace A046573.P6666771657311295432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (A000035 n + A109613 n ^ 2).toNat

end

end A046573.P6666771657311295432

/-! ## A046573.P14599707960547899054

`A046563(A002378(n)+Δ[A014682(n)])`
-/

namespace A046573.P14599707960547899054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (A002378 n + (f1 (n + 1) - f1 n)).toNat

end

end A046573.P14599707960547899054

/-! ## A046573.P13406560844121987762

`A046563(A257088(n)²)`
-/

namespace A046573.P13406560844121987762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (A257088 n ^ 2).toNat

end

end A046573.P13406560844121987762

/-!
# A046574: Distinct numbers in writing first numerator and then denominator of the central elements of the 1/4-Pascal triangle (by row).

The programs for A046574, there is no canonical definition to state claims against.
-/

/-! ## A046574.P4868963640768599063

`A046572(lt[A046572(n+1), A024816(n+1)])`
-/

namespace A046574.P4868963640768599063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046572 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046574.P4868963640768599063

/-! ## A046574.P15967806590211863306

`A046572(lt[A046585(2*n+1), A046573(n+1)])`
-/

namespace A046574.P15967806590211863306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046585 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046572 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046574.P15967806590211863306

/-!
# A046575: First numerator and then denominator of the elements to the right of the central elements of the 1/4-Pascal triangle.

The programs for A046575, there is no canonical definition to state claims against.
-/

/-! ## A046575.P14554296750288699208

`A046576(xor(1, n)+1)`
-/

namespace A046575.P14554296750288699208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (Nat.xor 1 n + 1)

end

end A046575.P14554296750288699208

/-! ## A046575.P7785110771480136760

`A046576(A004442(n)+1)`
-/

namespace A046575.P7785110771480136760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (A004442 n + 1).toNat

end

end A046575.P7785110771480136760

/-! ## A046575.P14188995048083862854

`A046576(A014681(n+1))`
-/

namespace A046575.P14188995048083862854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (A014681 (n + 1)).toNat

end

end A046575.P14188995048083862854

/-! ## A046575.P14120041503968514210

`A046576(A103889(n+1))`
-/

namespace A046575.P14120041503968514210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (A103889 (n + 1)).toNat

end

end A046575.P14120041503968514210

/-! ## A046575.P2690864870722162427

`A046576(A114112(n+1))`
-/

namespace A046575.P2690864870722162427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (A114112 (n + 1)).toNat

end

end A046575.P2690864870722162427

/-! ## A046575.P17128709763884105912

`A046576(xor(1, A165754(n)))`
-/

namespace A046575.P17128709763884105912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (Int.xor 1 (A165754 n)).toNat

end

end A046575.P17128709763884105912

/-! ## A046575.P12425183719114344789

`A046576(abs(Δ[A014682(n)]))`
-/

namespace A046575.P12425183719114344789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 |f1 (n + 1) - f1 n|.toNat

end

end A046575.P12425183719114344789

/-! ## A046575.P1596467291167856340

`A046576(n+2-A010873(2*n))`
-/

namespace A046575.P1596467291167856340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 ((n + 2 : ℤ) - A010873 (2 * n)).toNat

end

end A046575.P1596467291167856340

/-! ## A046575.P10341763250332619051

`A046576(Δ[A236453(n)])`
-/

namespace A046575.P10341763250332619051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (f1 (n + 1) - f1 n).toNat

end

end A046575.P10341763250332619051

/-! ## A046575.P8793973176919437227

`A046576(A236453(n+1)-A236453(n))`
-/

namespace A046575.P8793973176919437227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (A236453 (n + 1) - A236453 n).toNat

end

end A046575.P8793973176919437227

/-!
# A046576: First denominator and then numerator of the elements to the right of the central elements of the 1/4-Pascal triangle.

The programs for A046576, there is no canonical definition to state claims against.
-/

/-! ## A046576.P9476804519717061308

`A046575(xor(1, n)+1)`
-/

namespace A046576.P9476804519717061308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (Nat.xor 1 n + 1)

end

end A046576.P9476804519717061308

/-! ## A046576.P6388138449699668472

`A046575(2-xor(1, 1-n))`
-/

namespace A046576.P6388138449699668472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A046576.P6388138449699668472

/-! ## A046576.P7835263493569739741

`A046575(A004442(n)+1)`
-/

namespace A046576.P7835263493569739741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (A004442 n + 1).toNat

end

end A046576.P7835263493569739741

/-! ## A046576.P11409415618561508950

`A046575(A014681(n+1))`
-/

namespace A046576.P11409415618561508950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (A014681 (n + 1)).toNat

end

end A046576.P11409415618561508950

/-! ## A046576.P18022582120045529539

`A046575(A103889(n+1))`
-/

namespace A046576.P18022582120045529539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (A103889 (n + 1)).toNat

end

end A046576.P18022582120045529539

/-! ## A046576.P4921853837281822870

`A046575(A114112(n+1))`
-/

namespace A046576.P4921853837281822870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (A114112 (n + 1)).toNat

end

end A046576.P4921853837281822870

/-! ## A046576.P17013744306413098650

`A046575(xor(1, A165754(n)))`
-/

namespace A046576.P17013744306413098650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (Int.xor 1 (A165754 n)).toNat

end

end A046576.P17013744306413098650

/-! ## A046576.P16725260879038083144

`A046575(abs(Δ[A014682(n)]))`
-/

namespace A046576.P16725260879038083144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 |f1 (n + 1) - f1 n|.toNat

end

end A046576.P16725260879038083144

/-! ## A046576.P3517087641237350876

`A046575(A028242(n)+A008619(n))`
-/

namespace A046576.P3517087641237350876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (A028242 n + A008619 n).toNat

end

end A046576.P3517087641237350876

/-! ## A046576.P17956089314436980004

`A046575(Δ[A236453(n)])`
-/

namespace A046576.P17956089314436980004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (f1 (n + 1) - f1 n).toNat

end

end A046576.P17956089314436980004

/-! ## A046576.P13753595858901319235

`A046575(A236453(n+1)-A236453(n))`
-/

namespace A046576.P13753595858901319235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (A236453 (n + 1) - A236453 n).toNat

end

end A046576.P13753595858901319235

/-! ## A046576.P9280602070442608215

`A046575(A008619(2*xor(1, n)))`
-/

namespace A046576.P9280602070442608215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (A008619 (2 * Nat.xor 1 n)).toNat

end

end A046576.P9280602070442608215

/-! ## A046576.P14185741321110396927

`A046575(A132419(3*n)+n+1)`
-/

namespace A046576.P14185741321110396927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (A132419 (3 * n) + (n + 1 : ℤ)).toNat

end

end A046576.P14185741321110396927

/-!
# A046577: First denominator and then numerator of the elements to the right of the central elements of the 1/4-Pascal triangle (by row), excluding 1's.

The programs for A046577, there is no canonical definition to state claims against.
-/

/-! ## A046577.P11054066269121659030

`A046576(lt[1, A046576(n+1)]+1)`
-/

namespace A046577.P11054066269121659030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046577.P11054066269121659030

/-! ## A046577.P8712350578813806322

`filter[A046576(n+1), A103582(#)]`
-/

namespace A046577.P8712350578813806322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103582 (f1 j).toNat = 1) n)

end

end A046577.P8712350578813806322

/-!
# A046578: First denominator and then numerator of the elements to the right of the central elements of the 1/4-Pascal triangle (by row), excluding 1's and 4's.

The programs for A046578, there is no canonical definition to state claims against.
-/

/-! ## A046578.P16907720104140132697

`filter[A046583(n+1), A103582(#)]`
-/

namespace A046578.P16907720104140132697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103582 (f1 j).toNat = 1) n)

end

end A046578.P16907720104140132697

/-!
# A046579: First numerator and then denominator of the elements to the right of the central elements of the 1/4-Pascal triangle (by row), excluding 4's.

The programs for A046579, there is no canonical definition to state claims against.
-/

/-! ## A046579.P480915526995029452

`filter[A046575(n+1), A165556(#)]`
-/

namespace A046579.P480915526995029452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165556 (f1 j).toNat = 1) n)

end

end A046579.P480915526995029452

/-! ## A046579.P7056185273951362898

`A046583(lt[A005709(n), A046641(n+1)])`
-/

namespace A046579.P7056185273951362898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046583 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046579.P7056185273951362898

/-! ## A046579.P17592837010527164733

`A046583(lt[A005709(n), A258827(n+1)])`
-/

namespace A046579.P17592837010527164733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046583 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046579.P17592837010527164733

/-! ## A046579.P6005818781916260038

`A046583(lt[A328964(2*n), A244636(n)])`
-/

namespace A046579.P6005818781916260038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328964 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046583 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046579.P6005818781916260038

/-!
# A046580: Numerators of the elements to the right of the central elements of the 1/4-Pascal triangle (by row).

The programs for A046580, there is no canonical definition to state claims against.
-/

/-! ## A046580.P4170150794240276684

`A046575(Δ[n²])`
-/

namespace A046580.P4170150794240276684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046580.P4170150794240276684

/-! ## A046580.P15057350412382459762

`A046576(2*(n+1))`
-/

namespace A046580.P15057350412382459762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (2 * (n + 1))

end

end A046580.P15057350412382459762

/-! ## A046580.P1242373540455222076

`xor(2, xor(2, A046575(2*n+1)))`
-/

namespace A046580.P1242373540455222076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A046575 (2 * n + 1)))

end

end A046580.P1242373540455222076

/-! ## A046580.P7388167128056597707

`A046575(n+1+n)/gcd(n, n+1)`
-/

namespace A046580.P7388167128056597707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046575 (n + 1 + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A046580.P7388167128056597707

/-! ## A046580.P2595455622368639621

`gcd(A000038(n), A046575(2*n+1))`
-/

namespace A046580.P2595455622368639621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A046575 (2 * n + 1))

end

end A046580.P2595455622368639621

/-! ## A046580.P6235247061413290923

`A046575(2*n+1)+A000038(n+1)`
-/

namespace A046580.P6235247061413290923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (2 * n + 1) + A000038 (n + 1)

end

end A046580.P6235247061413290923

/-! ## A046580.P13962494741750975539

`A046575(2*n+1)+A000035(2*n)`
-/

namespace A046580.P13962494741750975539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (2 * n + 1) + A000035 (2 * n)

end

end A046580.P13962494741750975539

/-! ## A046580.P16999873176880298319

`A046575(2*n+1)+C(2, A005408(n+1))`
-/

namespace A046580.P16999873176880298319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (2 * n + 1) + (Nat.choose 2 (A005408 (n + 1)).toNat : ℤ)

end

end A046580.P16999873176880298319

/-! ## A046580.P9967161149773884432

`A046575(2*n+1)+A014682(2*n)-n`
-/

namespace A046580.P9967161149773884432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (2 * n + 1) + (A014682 (2 * n) - (n : ℤ))

end

end A046580.P9967161149773884432

/-! ## A046580.P17401439304211337193

`(A008619(2*n)-n)*A046575(2*n+1)`
-/

namespace A046580.P17401439304211337193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) - (n : ℤ)) * A046575 (2 * n + 1)

end

end A046580.P17401439304211337193

/-! ## A046580.P1114933478923161722

`(A028242(2*n)-n)*A046575(2*n+1)`
-/

namespace A046580.P1114933478923161722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) - (n : ℤ)) * A046575 (2 * n + 1)

end

end A046580.P1114933478923161722

/-! ## A046580.P16058839226095620743

`A046575(2*n+1)+C(n, A000041(n+1))`
-/

namespace A046580.P16058839226095620743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (2 * n + 1) + (Nat.choose n (A000041 (n + 1)).toNat : ℤ)

end

end A046580.P16058839226095620743

/-! ## A046580.P5805557504248761808

`A046575(A005408(n))^A000041(C(3, n²))`
-/

namespace A046580.P5805557504248761808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046575 (A005408 n).toNat : ℚ) ^ (A000041 (Nat.choose 3 (n ^ 2)) : ℤ)

end

end A046580.P5805557504248761808

/-! ## A046580.P13023097840505385767

`A046575(2*n+1)²/A046575(A004442(2*n))`
-/

namespace A046580.P13023097840505385767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046575 (2 * n + 1) ^ 2 : ℚ) / (A046575 (A004442 (2 * n)).toNat : ℚ)

end

end A046580.P13023097840505385767

/-! ## A046580.P15137476408181051305

`A046575(2*n+1)*A046575(A014963(2*(n+1)))`
-/

namespace A046580.P15137476408181051305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (2 * n + 1) * A046575 (A014963 (2 * (n + 1))).toNat

end

end A046580.P15137476408181051305

/-! ## A046580.P3083042408788965073

`A046575(2*n+1)*A046575(A046575(2*(n+1)))`
-/

namespace A046580.P3083042408788965073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (2 * n + 1) * A046575 (A046575 (2 * (n + 1))).toNat

end

end A046580.P3083042408788965073

/-! ## A046580.P16189281520389303613

`A046575(A046575(2*(n+1)))*A046575(A004442(2*n))`
-/

namespace A046580.P16189281520389303613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (A046575 (2 * (n + 1))).toNat * A046575 (A004442 (2 * n)).toNat

end

end A046580.P16189281520389303613

/-! ## A046580.P5215544045068134683

`A046568(A274428(n+1))`
-/

namespace A046580.P5215544045068134683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046568 (A274428 (n + 1)).toNat

end

end A046580.P5215544045068134683

/-!
# A046581: First numerator and then denominator of each element of the 1/4-Pascal triangle (by row), excluding 4's.

The programs for A046581, there is no canonical definition to state claims against.
-/

/-! ## A046581.P10271477290827171926

`filter[A046563(n+1), A165556(#)]`
-/

namespace A046581.P10271477290827171926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165556 (f1 j).toNat = 1) n)

end

end A046581.P10271477290827171926

/-!
# A046582: First denominator and then numerator of each element of the 1/4-Pascal triangle (by row), excluding 4's.

The programs for A046582, there is no canonical definition to state claims against.
-/

/-! ## A046582.P2112653167707062904

`filter[A046564(n+1), A165556(#)]`
-/

namespace A046582.P2112653167707062904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165556 (f1 j).toNat = 1) n)

end

end A046582.P2112653167707062904

/-!
# A046583: First denominator and then numerator of each element to the right of the central elements of the 1/4-Pascal triangle (by row), excluding 4's.

The programs for A046583, there is no canonical definition to state claims against.
-/

/-! ## A046583.P5597659120265640584

`filter[A046576(n+1), A165556(#)]`
-/

namespace A046583.P5597659120265640584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165556 (f1 j).toNat = 1) n)

end

end A046583.P5597659120265640584

/-!
# A046584: Odd numbers in writing first numerator and then denominator of each element of the 1/4-Pascal triangle (by row).

The programs for A046584, there is no canonical definition to state claims against.
-/

/-! ## A046584.P4307200501353560137

`A046581(eq[1, A046581(n+1)%2]+1)`
-/

namespace A046584.P4307200501353560137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046581 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046584.P4307200501353560137

/-! ## A046584.P2837153066781295090

`A046581(eq[1, and(1, A046581(n+1))]+1)`
-/

namespace A046584.P2837153066781295090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046581 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046584.P2837153066781295090

/-! ## A046584.P12724511575277373941

`A046591(eq[1, and(1, A046591(n+1))]+1)`
-/

namespace A046584.P12724511575277373941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046591 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046584.P12724511575277373941

/-! ## A046584.P2487948296140466943

`A046563(eq[1, A046563(n+1)%2]+1)`
-/

namespace A046584.P2487948296140466943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046563 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046584.P2487948296140466943

/-! ## A046584.P13422112265530548799

`A046563(eq[1, gcd(2, A046563(n+1))]+1)`
-/

namespace A046584.P13422112265530548799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A046563 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A046584.P13422112265530548799

/-! ## A046584.P1453431806625860255

`filter[A046563(n+1), A000035(#)]`
-/

namespace A046584.P1453431806625860255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046584.P1453431806625860255

/-! ## A046584.P12771183539780634633

`filter[A046581(n+1), A000035(#)]`
-/

namespace A046584.P12771183539780634633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046584.P12771183539780634633

/-! ## A046584.P10769251840567414157

`filter[A046591(n+1), A000035(#)]`
-/

namespace A046584.P10769251840567414157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046584.P10769251840567414157

/-! ## A046584.P12783260745018110847

`filter[A046599(n+1), A000035(#)]`
-/

namespace A046584.P12783260745018110847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046584.P12783260745018110847

/-! ## A046584.P9092236945952454374

`filter[A046581(n+1), A104106(#)]`
-/

namespace A046584.P9092236945952454374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A046584.P9092236945952454374

/-! ## A046584.P7531962759139793298

`filter[A046599(n+1), A104106(#)]`
-/

namespace A046584.P7531962759139793298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A046584.P7531962759139793298

/-! ## A046584.P5117837354338977244

`filter[A046581(n+1), A259044(#)]`
-/

namespace A046584.P5117837354338977244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A046584.P5117837354338977244

/-! ## A046584.P7550145679819242281

`filter[A046563(n+1), A260390(#)]`
-/

namespace A046584.P7550145679819242281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A046584.P7550145679819242281

/-! ## A046584.P866247156813446654

`filter[A046581(n+1), A260390(#)]`
-/

namespace A046584.P866247156813446654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A046584.P866247156813446654

/-!
# A046585: Odd numbers in writing first denominator and then numerator of each element of the 1/4-Pascal triangle (by row).

The programs for A046585, there is no canonical definition to state claims against.
-/

/-! ## A046585.P9188307974486672680

`A046582(eq[1, A046582(n+1)%2]+1)`
-/

namespace A046585.P9188307974486672680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046582 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046585.P9188307974486672680

/-! ## A046585.P16694884311813469529

`A046582(eq[1, gcd(2, A046582(n+1))]+1)`
-/

namespace A046585.P16694884311813469529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A046582 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046582 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A046585.P16694884311813469529

/-! ## A046585.P1978078750477345212

`A046582(eq[1, and(1, A046582(n+1))]+1)`
-/

namespace A046585.P1978078750477345212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046582 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046585.P1978078750477345212

/-! ## A046585.P15655624736749608056

`A046564(eq[1, A046564(n+1)%2]+1)`
-/

namespace A046585.P15655624736749608056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046564 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046585.P15655624736749608056

/-! ## A046585.P15216543755991690141

`A046564(eq[1, and(1, A046564(n+1))]+1)`
-/

namespace A046585.P15216543755991690141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046564 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046585.P15216543755991690141

/-! ## A046585.P12875586633914426095

`filter[A046564(n+1), A000035(#)]`
-/

namespace A046585.P12875586633914426095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046585.P12875586633914426095

/-! ## A046585.P11306358687480815550

`filter[A046582(n+1), A000035(#)]`
-/

namespace A046585.P11306358687480815550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046585.P11306358687480815550

/-! ## A046585.P17379161749954899489

`filter[A046592(n+1), A000035(#)]`
-/

namespace A046585.P17379161749954899489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046585.P17379161749954899489

/-! ## A046585.P2824728627120920621

`filter[A046594(n+1), A000035(#)]`
-/

namespace A046585.P2824728627120920621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046585.P2824728627120920621

/-! ## A046585.P14630107764805395354

`filter[A046582(n+1), A104106(#)]`
-/

namespace A046585.P14630107764805395354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A046585.P14630107764805395354

/-! ## A046585.P1435806783075914642

`filter[A046594(n+1), A104106(#)]`
-/

namespace A046585.P1435806783075914642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A046585.P1435806783075914642

/-! ## A046585.P17708717408991235493

`filter[A046582(n+1), A259044(#)]`
-/

namespace A046585.P17708717408991235493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A046585.P17708717408991235493

/-! ## A046585.P16145849442986005371

`filter[A046564(n+1), A260390(#)]`
-/

namespace A046585.P16145849442986005371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A046585.P16145849442986005371

/-! ## A046585.P14845494596963680240

`filter[A046582(n+1), A260390(#)]`
-/

namespace A046585.P14845494596963680240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A046585.P14845494596963680240

/-!
# A046586: Distinct odd numbers in the numerators of the 1/4-Pascal triangle (by row).

The programs for A046586, there is no canonical definition to state claims against.
-/

/-! ## A046586.P15041086328707393175

`A046570(eq[1, and(1, A046570(n+1))]+1)`
-/

namespace A046586.P15041086328707393175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046570 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046586.P15041086328707393175

/-! ## A046586.P5055143791942910684

`filter[A046570(n+1), A000035(#)]`
-/

namespace A046586.P5055143791942910684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046586.P5055143791942910684

/-! ## A046586.P2319512814324401546

`filter[A046570(n+1), A260390(#)]`
-/

namespace A046586.P2319512814324401546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A046586.P2319512814324401546

/-! ## A046586.P14597893363578951210

`A046570(comp[∑[n-1]]^A046563(n+1))`
-/

namespace A046586.P14597893363578951210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046570 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) ^ (A046563 (n + 1) : ℤ))).toNat

end

end A046586.P14597893363578951210

/-! ## A046586.P6486675984849037429

`A046570(A032559(n+1)+A003056(n))`
-/

namespace A046586.P6486675984849037429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046570 (A032559 (n + 1) + A003056 n).toNat

end

end A046586.P6486675984849037429

/-!
# A046587: Even numbers in writing first numerator and then denominator of each element of the 1/4-Pascal triangle (by row).

The programs for A046587, there is no canonical definition to state claims against.
-/

/-! ## A046587.P140368197581817241

`A046565(eq[2, gcd(2, A046565(n+1))]+1)`
-/

namespace A046587.P140368197581817241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A046565 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046565 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A046587.P140368197581817241

/-! ## A046587.P13696892692830983364

`A046566(eq[1, cos(A046566(n+1)%2)]+1)`
-/

namespace A046587.P13696892692830983364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Int.tmod (A046566 (n + 1)) 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046566 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 1)

end

end A046587.P13696892692830983364

/-! ## A046587.P3550842441324562348

`filter[A046566(n+1), A059841(#)]`
-/

namespace A046587.P3550842441324562348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046587.P3550842441324562348

/-! ## A046587.P1060831030056588993

`filter[A046566(n+1), A135528(#)]`
-/

namespace A046587.P1060831030056588993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A046587.P1060831030056588993

/-! ## A046587.P2371430325126350647

`filter[A046565(n+1), A059841(#)]`
-/

namespace A046587.P2371430325126350647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046587.P2371430325126350647

/-! ## A046587.P1805069005901901008

`filter[A046565(n+1), A135528(#)]`
-/

namespace A046587.P1805069005901901008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A046587.P1805069005901901008

/-!
# A046589: Distinct even numbers in writing first numerator and then denominator of each element of the 1/4-Pascal triangle (by row).

The programs for A046589, there is no canonical definition to state claims against.
-/

/-! ## A046589.P3927526289835044949

`filter[A046570(n+1), A059841(#)]`
-/

namespace A046589.P3927526289835044949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046589.P3927526289835044949

/-! ## A046589.P8661256467519446457

`filter[A046570(n+1), A260393(#)]`
-/

namespace A046589.P8661256467519446457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260393 (f1 j).toNat = 1) n)

end

end A046589.P8661256467519446457

/-! ## A046589.P16400061046054058632

`filter[A046570(n+1), A284851(#)]`
-/

namespace A046589.P16400061046054058632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284851 (f1 j).toNat = 1) n)

end

end A046589.P16400061046054058632

/-!
# A046590: Numerators of the elements to the right of the central elements of the 1/4-Pascal triangle (by row), excluding 1's.

The programs for A046590, there is no canonical definition to state claims against.
-/

/-! ## A046590.P5003851501621346652

`A046580(A049068(n+1))`
-/

namespace A046590.P5003851501621346652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046580 (A049068 (n + 1)).toNat

end

end A046590.P5003851501621346652

/-! ## A046590.P62765469731273292

`A046580(A000267(n)+2+n)`
-/

namespace A046590.P62765469731273292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046580 (A000267 n + 2 + (n : ℤ)).toNat

end

end A046590.P62765469731273292

/-! ## A046590.P12510911284396959324

`A046580(A000037(A000037(n+1)))`
-/

namespace A046590.P12510911284396959324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046580 (A000037 (A000037 (n + 1)).toNat).toNat

end

end A046590.P12510911284396959324

/-! ## A046590.P15673288351171476296

`A046578(record[n%A046578(n+1)²]+1)`
-/

namespace A046590.P15673288351171476296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A046578 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A046590.P15673288351171476296

/-! ## A046590.P339091284619843311

`A046575(lt[4, A046576(n+1)])`
-/

namespace A046590.P339091284619843311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046575 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046590.P339091284619843311

/-! ## A046590.P4896338392526280193

`A046576(lt[A046576(n+1), A046613(n+1)]+2)`
-/

namespace A046590.P4896338392526280193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A046590.P4896338392526280193

/-!
# A046591: First numerator and then denominator of each element of the 1/4-Pascal triangle (by row), excluding 2's.

The programs for A046591, there is no canonical definition to state claims against.
-/

/-! ## A046591.P3348015929298881836

`filter[A046563(n+1), A267683(#)]`
-/

namespace A046591.P3348015929298881836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A046591.P3348015929298881836

/-! ## A046591.P2434495351021683030

`filter[A046563(n+1), A267813(#)]`
-/

namespace A046591.P2434495351021683030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A046591.P2434495351021683030

/-! ## A046591.P9954896023723451289

`A046563(A348553(n))+A029834(A191837(n+2))`
-/

namespace A046591.P9954896023723451289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (A348553 n).toNat + A029834 (A191837 (n + 2)).toNat

end

end A046591.P9954896023723451289

/-! ## A046591.P7824643167949981171

`A046563(A348553(n))^A146849(A123317(n+1))`
-/

namespace A046591.P7824643167949981171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046563 (A348553 n).toNat : ℚ) ^ (A146849 (A123317 (n + 1)).toNat : ℤ)

end

end A046591.P7824643167949981171

/-!
# A046592: First denominator and then numerator of each element of the 1/4-Pascal triangle (by row), excluding 2's.

The programs for A046592, there is no canonical definition to state claims against.
-/

/-! ## A046592.P13088245663547158673

`filter[A046564(n+1), A267683(#)]`
-/

namespace A046592.P13088245663547158673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A046592.P13088245663547158673

/-! ## A046592.P4801497590362217110

`filter[A046564(n+1), A267813(#)]`
-/

namespace A046592.P4801497590362217110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A046592.P4801497590362217110

/-! ## A046592.P13449348693550034045

`A046564(record[A008611(A091249(n+1))])`
-/

namespace A046592.P13449348693550034045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A091249 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046592.P13449348693550034045

/-! ## A046592.P2573343498594435013

`A046564(∑[A010893(n)!])`
-/

namespace A046592.P2573343498594435013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010893 (n + 13)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046592.P2573343498594435013

/-! ## A046592.P373508477306719064

`A046564(∑[A181340(n+1)!])`
-/

namespace A046592.P373508477306719064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A181340 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046592.P373508477306719064

/-!
# A046593: First denominator and then numerator of each element of the 1/4-Pascal triangle (by row),excluding 1's and 2's.

The programs for A046593, there is no canonical definition to state claims against.
-/

/-! ## A046593.P10843854395635089783

`A046566(lt[2, A046566(n+1)]+1)`
-/

namespace A046593.P10843854395635089783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046566 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046593.P10843854395635089783

/-! ## A046593.P12276697960365616655

`A046566(eq[2, 2%A046566(n+1)]+1)`
-/

namespace A046593.P12276697960365616655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A046566 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046566 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046593.P12276697960365616655

/-! ## A046593.P6590506717314844935

`A046592(lt[1, A046592(n+1)]+1)`
-/

namespace A046593.P6590506717314844935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046593.P6590506717314844935

/-! ## A046593.P5867090531853370839

`A046564(lt[2, A046564(n+1)]+1)`
-/

namespace A046593.P5867090531853370839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046593.P5867090531853370839

/-! ## A046593.P9253617780369571271

`filter[A046566(n+1), A267683(#)]`
-/

namespace A046593.P9253617780369571271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A046593.P9253617780369571271

/-! ## A046593.P11358629361485136490

`filter[A046564(n+1), A267810(#)]`
-/

namespace A046593.P11358629361485136490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267810 (f1 j).toNat = 1) n)

end

end A046593.P11358629361485136490

/-! ## A046593.P9080029032283330202

`filter[A046566(n+1), A267810(#)]`
-/

namespace A046593.P9080029032283330202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267810 (f1 j).toNat = 1) n)

end

end A046593.P9080029032283330202

/-! ## A046593.P9540718287273902092

`filter[A046566(n+1), A267813(#)]`
-/

namespace A046593.P9540718287273902092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A046593.P9540718287273902092

/-! ## A046593.P7720022341788467393

`filter[A046592(n+1), A267810(#)]`
-/

namespace A046593.P7720022341788467393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267810 (f1 j).toNat = 1) n)

end

end A046593.P7720022341788467393

/-! ## A046593.P8722076964806074610

`A304106(p?[A008578(A046592(n+1))])`
-/

namespace A046593.P8722076964806074610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046592 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304106 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046593.P8722076964806074610

/-!
# A046594: First denominator and then numerator of each element of the 1/4-Pascal triangle (by row), excluding 2's and 4's.

The programs for A046594, there is no canonical definition to state claims against.
-/

/-! ## A046594.P3335881281874912980

`filter[A046582(n+1), A267683(#)]`
-/

namespace A046594.P3335881281874912980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A046594.P3335881281874912980

/-! ## A046594.P9693012623528350915

`filter[A046582(n+1), A267813(#)]`
-/

namespace A046594.P9693012623528350915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A046594.P9693012623528350915

/-! ## A046594.P2230413945921393376

`filter[A046564(n+1), A137161(#)]`
-/

namespace A046594.P2230413945921393376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137161 (f1 j).toNat = 1) n)

end

end A046594.P2230413945921393376

/-! ## A046594.P8173328378186759913

`filter[A046582(n+1), A137161(#)]`
-/

namespace A046594.P8173328378186759913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137161 (f1 j).toNat = 1) n)

end

end A046594.P8173328378186759913

/-! ## A046594.P17128236791331039984

`filter[A046592(n+1), A137161(#)]`
-/

namespace A046594.P17128236791331039984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137161 (f1 j).toNat = 1) n)

end

end A046594.P17128236791331039984

/-! ## A046594.P351989219069713191

`filter[A046592(n+1), A165556(#)]`
-/

namespace A046594.P351989219069713191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165556 (f1 j).toNat = 1) n)

end

end A046594.P351989219069713191

/-!
# A046595: Denominators of the 1/4-Pascal triangle (by row), excluding 1's.

The programs for A046595, there is no canonical definition to state claims against.
-/

/-! ## A046595.P2739051834475004624

`A046569(lt[1, A046569(n+1)]+1)`
-/

namespace A046595.P2739051834475004624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046595.P2739051834475004624

/-! ## A046595.P13320092895128642320

`filter[A046564(2*n+1), A011656(#)]`
-/

namespace A046595.P13320092895128642320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011656 (f1 j).toNat = 1) n)

end

end A046595.P13320092895128642320

/-! ## A046595.P1112795739874301183

`filter[A046564(2*n+1), A011657(#)]`
-/

namespace A046595.P1112795739874301183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011657 (f1 j).toNat = 1) n)

end

end A046595.P1112795739874301183

/-! ## A046595.P2732979314990314881

`filter[A046564(2*n+1), A022925(#)]`
-/

namespace A046595.P2732979314990314881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022925 (f1 j).toNat = 1) n)

end

end A046595.P2732979314990314881

/-! ## A046595.P12789514522687127975

`filter[A046564(2*n+1), A029693(#)]`
-/

namespace A046595.P12789514522687127975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A029693 (f1 j).toNat = 1) n)

end

end A046595.P12789514522687127975

/-! ## A046595.P13611402425790492823

`filter[A046564(2*n+1), A036988(#)]`
-/

namespace A046595.P13611402425790492823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A036988 (f1 j).toNat = 1) n)

end

end A046595.P13611402425790492823

/-! ## A046595.P8433396379284821464

`filter[A046564(2*n+1), A043545(#)]`
-/

namespace A046595.P8433396379284821464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A046595.P8433396379284821464

/-! ## A046595.P9455109011958041000

`filter[A046564(2*n+1), A051840(#)]`
-/

namespace A046595.P9455109011958041000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051840 (f1 j).toNat = 1) n)

end

end A046595.P9455109011958041000

/-! ## A046595.P17491721983133671005

`filter[A046564(2*n+1), A053867(#)]`
-/

namespace A046595.P17491721983133671005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A046595.P17491721983133671005

/-! ## A046595.P15796428027239789447

`filter[A046564(2*n+1), A059841(#)]`
-/

namespace A046595.P15796428027239789447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046595.P15796428027239789447

/-! ## A046595.P14864184187720910328

`filter[A046564(2*n+1), A060510(#)]`
-/

namespace A046595.P14864184187720910328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A060510 (f1 j).toNat = 1) n)

end

end A046595.P14864184187720910328

/-! ## A046595.P2462977593859098006

`filter[A046564(2*n+1), A061265(#)]`
-/

namespace A046595.P2462977593859098006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A061265 (f1 j).toNat = 1) n)

end

end A046595.P2462977593859098006

/-! ## A046595.P852701075052214612

`filter[A046564(2*n+1), A069513(#)]`
-/

namespace A046595.P852701075052214612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A046595.P852701075052214612

/-! ## A046595.P6309246001311745607

`filter[A046564(2*n+1), A072126(#)]`
-/

namespace A046595.P6309246001311745607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072126 (f1 j).toNat = 1) n)

end

end A046595.P6309246001311745607

/-! ## A046595.P2176919831563130398

`filter[A046564(2*n+1), A072165(#)]`
-/

namespace A046595.P2176919831563130398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072165 (f1 j).toNat = 1) n)

end

end A046595.P2176919831563130398

/-! ## A046595.P9034959908704679034

`filter[A046564(2*n+1), A072608(#)]`
-/

namespace A046595.P9034959908704679034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072608 (f1 j).toNat = 1) n)

end

end A046595.P9034959908704679034

/-! ## A046595.P742729459059234804

`filter[A046564(2*n+1), A080110(#)]`
-/

namespace A046595.P742729459059234804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080110 (f1 j).toNat = 1) n)

end

end A046595.P742729459059234804

/-! ## A046595.P16633783516645506403

`filter[A046564(2*n+1), A085405(#)]`
-/

namespace A046595.P16633783516645506403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085405 (f1 j).toNat = 1) n)

end

end A046595.P16633783516645506403

/-! ## A046595.P1602792932229974716

`filter[A046564(2*n+1), A087748(#)]`
-/

namespace A046595.P1602792932229974716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087748 (f1 j).toNat = 1) n)

end

end A046595.P1602792932229974716

/-! ## A046595.P3271783601285912997

`filter[A046564(2*n+1), A089806(#)]`
-/

namespace A046595.P3271783601285912997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089806 (f1 j).toNat = 1) n)

end

end A046595.P3271783601285912997

/-!
# A046596: Denominators of the 1/4-Pascal triangle (by row), excluding 2's.

The programs for A046596, there is no canonical definition to state claims against.
-/

/-! ## A046596.P4074390948858917988

`filter[A046564(2*n+1), A003849(#)]`
-/

namespace A046596.P4074390948858917988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A003849 (f1 j).toNat = 1) n)

end

end A046596.P4074390948858917988

/-! ## A046596.P11620854166761553891

`filter[A046564(2*n+1), A004539(#)]`
-/

namespace A046596.P11620854166761553891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A004539 (f1 j).toNat = 1) n)

end

end A046596.P11620854166761553891

/-! ## A046596.P4396023395389627155

`filter[A046564(2*n+1), A004641(#)]`
-/

namespace A046596.P4396023395389627155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A004641 (f1 j).toNat = 1) n)

end

end A046596.P4396023395389627155

/-! ## A046596.P2089540538891167714

`filter[A046564(2*n+1), A005171(#)]`
-/

namespace A046596.P2089540538891167714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A046596.P2089540538891167714

/-! ## A046596.P4421764187378312906

`filter[A046564(2*n+1), A005713(#)]`
-/

namespace A046596.P4421764187378312906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005713 (f1 j).toNat = 1) n)

end

end A046596.P4421764187378312906

/-! ## A046596.P16284187040814088869

`filter[A046564(2*n+1), A010052(#)]`
-/

namespace A046596.P16284187040814088869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A046596.P16284187040814088869

/-! ## A046596.P10088461467749154071

`filter[A046564(2*n+1), A014577(#)]`
-/

namespace A046596.P10088461467749154071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A046596.P10088461467749154071

/-! ## A046596.P18167536732430780961

`filter[A046564(2*n+1), A022924(#)]`
-/

namespace A046596.P18167536732430780961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022924 (f1 j).toNat = 1) n)

end

end A046596.P18167536732430780961

/-! ## A046596.P15179517579925106452

`filter[A046564(2*n+1), A023532(#)]`
-/

namespace A046596.P15179517579925106452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A046596.P15179517579925106452

/-! ## A046596.P13520767607084276780

`filter[A046564(2*n+1), A023533(#)]`
-/

namespace A046596.P13520767607084276780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023533 (f1 j).toNat = 1) n)

end

end A046596.P13520767607084276780

/-! ## A046596.P2158567897941969458

`filter[A046564(2*n+1), A023960(#)]`
-/

namespace A046596.P2158567897941969458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023960 (f1 j).toNat = 1) n)

end

end A046596.P2158567897941969458

/-! ## A046596.P14307368326799282819

`filter[A046564(2*n+1), A030308(#)]`
-/

namespace A046596.P14307368326799282819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030308 (f1 j).toNat = 1) n)

end

end A046596.P14307368326799282819

/-! ## A046596.P15976323631969942607

`filter[A046564(2*n+1), A033684(#)]`
-/

namespace A046596.P15976323631969942607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A033684 (f1 j).toNat = 1) n)

end

end A046596.P15976323631969942607

/-! ## A046596.P658128920140302430

`filter[A046564(2*n+1), A035263(#)]`
-/

namespace A046596.P658128920140302430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A046596.P658128920140302430

/-! ## A046596.P15007969536817445644

`filter[A046564(2*n+1), A037011(#)]`
-/

namespace A046596.P15007969536817445644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A037011 (f1 j).toNat = 1) n)

end

end A046596.P15007969536817445644

/-! ## A046596.P5349051297962738775

`filter[A046564(2*n+1), A039963(#)]`
-/

namespace A046596.P5349051297962738775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039963 (f1 j).toNat = 1) n)

end

end A046596.P5349051297962738775

/-! ## A046596.P4011454871620642190

`filter[A046564(2*n+1), A039966(#)]`
-/

namespace A046596.P4011454871620642190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A046596.P4011454871620642190

/-! ## A046596.P16881937359866116986

`filter[A046564(2*n+1), A039984(#)]`
-/

namespace A046596.P16881937359866116986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039984 (f1 j).toNat = 1) n)

end

end A046596.P16881937359866116986

/-! ## A046596.P9293694343724510683

`filter[A046564(2*n+1), A040051(#)]`
-/

namespace A046596.P9293694343724510683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A040051 (f1 j).toNat = 1) n)

end

end A046596.P9293694343724510683

/-! ## A046596.P12683440498414505848

`filter[A046564(2*n+1), A041004(#)]`
-/

namespace A046596.P12683440498414505848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A041004 (f1 j).toNat = 1) n)

end

end A046596.P12683440498414505848

/-!
# A046597: Denominators of the 1/4-Pascal triangle (by row), excluding 4's.

The programs for A046597, there is no canonical definition to state claims against.
-/

/-! ## A046597.P5937916314390760416

`filter[A046564(2*n+1), A008966(#)]`
-/

namespace A046597.P5937916314390760416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046597.P5937916314390760416

/-! ## A046597.P18285896453704264404

`filter[A046564(2*n+1), A010056(#)]`
-/

namespace A046597.P18285896453704264404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A046597.P18285896453704264404

/-! ## A046597.P6165550912942150532

`filter[A046564(2*n+1), A022930(#)]`
-/

namespace A046597.P6165550912942150532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022930 (f1 j).toNat = 1) n)

end

end A046597.P6165550912942150532

/-! ## A046597.P10006885262376090444

`filter[A046564(2*n+1), A039985(#)]`
-/

namespace A046597.P10006885262376090444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039985 (f1 j).toNat = 1) n)

end

end A046597.P10006885262376090444

/-! ## A046597.P390894702545141411

`filter[A046564(2*n+1), A047999(#)]`
-/

namespace A046597.P390894702545141411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A047999 (f1 j).toNat = 1) n)

end

end A046597.P390894702545141411

/-! ## A046597.P12170331129268088371

`filter[A046564(2*n+1), A050072(#)]`
-/

namespace A046597.P12170331129268088371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A050072 (f1 j).toNat = 1) n)

end

end A046597.P12170331129268088371

/-! ## A046597.P9667857573982671367

`filter[A046564(2*n+1), A050073(#)]`
-/

namespace A046597.P9667857573982671367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A050073 (f1 j).toNat = 1) n)

end

end A046597.P9667857573982671367

/-! ## A046597.P3845175060486372294

`filter[A046564(2*n+1), A051067(#)]`
-/

namespace A046597.P3845175060486372294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051067 (f1 j).toNat = 1) n)

end

end A046597.P3845175060486372294

/-! ## A046597.P3556339441614809825

`filter[A046564(2*n+1), A057215(#)]`
-/

namespace A046597.P3556339441614809825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A057215 (f1 j).toNat = 1) n)

end

end A046597.P3556339441614809825

/-! ## A046597.P14022095031741939553

`filter[A046564(2*n+1), A060584(#)]`
-/

namespace A046597.P14022095031741939553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A060584 (f1 j).toNat = 1) n)

end

end A046597.P14022095031741939553

/-! ## A046597.P13307652434722484897

`filter[A046564(2*n+1), A068431(#)]`
-/

namespace A046597.P13307652434722484897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068431 (f1 j).toNat = 1) n)

end

end A046597.P13307652434722484897

/-! ## A046597.P16411316769446609950

`filter[A046564(2*n+1), A068432(#)]`
-/

namespace A046597.P16411316769446609950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068432 (f1 j).toNat = 1) n)

end

end A046597.P16411316769446609950

/-! ## A046597.P16308217638987830002

`filter[A046564(2*n+1), A068434(#)]`
-/

namespace A046597.P16308217638987830002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068434 (f1 j).toNat = 1) n)

end

end A046597.P16308217638987830002

/-! ## A046597.P8402366863605685044

`filter[A046564(2*n+1), A070909(#)]`
-/

namespace A046597.P8402366863605685044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070909 (f1 j).toNat = 1) n)

end

end A046597.P8402366863605685044

/-! ## A046597.P4519883917508912859

`filter[A046564(2*n+1), A071026(#)]`
-/

namespace A046597.P4519883917508912859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071026 (f1 j).toNat = 1) n)

end

end A046597.P4519883917508912859

/-! ## A046597.P15246095679450735014

`filter[A046564(2*n+1), A071027(#)]`
-/

namespace A046597.P15246095679450735014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071027 (f1 j).toNat = 1) n)

end

end A046597.P15246095679450735014

/-! ## A046597.P4588728441160640159

`filter[A046564(2*n+1), A073784(#)]`
-/

namespace A046597.P4588728441160640159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073784 (f1 j).toNat = 1) n)

end

end A046597.P4588728441160640159

/-! ## A046597.P10693350216314739437

`filter[A046564(2*n+1), A074201(#)]`
-/

namespace A046597.P10693350216314739437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A074201 (f1 j).toNat = 1) n)

end

end A046597.P10693350216314739437

/-! ## A046597.P3808270564401290335

`filter[A046564(2*n+1), A074937(#)]`
-/

namespace A046597.P3808270564401290335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A074937 (f1 j).toNat = 1) n)

end

end A046597.P3808270564401290335

/-! ## A046597.P11114381272360600414

`filter[A046564(2*n+1), A079295(#)]`
-/

namespace A046597.P11114381272360600414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079295 (f1 j).toNat = 1) n)

end

end A046597.P11114381272360600414

/-!
# A046598: First numerator and then denominator of each element of the 1/4-Pascal triangle (by row), excluding 1's and 2's.

The programs for A046598, there is no canonical definition to state claims against.
-/

/-! ## A046598.P1422486022288008983

`A046565(lt[2, A046565(n+1)]+1)`
-/

namespace A046598.P1422486022288008983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046598.P1422486022288008983

/-! ## A046598.P2226414965238380740

`A046563(lt[2, A046563(n+1)]+1)`
-/

namespace A046598.P2226414965238380740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046598.P2226414965238380740

/-! ## A046598.P7499328096993915402

`A046563(eq[2, 2%A046563(n+1)]+1)`
-/

namespace A046598.P7499328096993915402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A046563 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046598.P7499328096993915402

/-! ## A046598.P16821272321093111669

`filter[A046565(n+1), A267683(#)]`
-/

namespace A046598.P16821272321093111669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A046598.P16821272321093111669

/-! ## A046598.P888428363857663765

`filter[A046563(n+1), A267810(#)]`
-/

namespace A046598.P888428363857663765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267810 (f1 j).toNat = 1) n)

end

end A046598.P888428363857663765

/-! ## A046598.P16354645820769241518

`filter[A046565(n+1), A267810(#)]`
-/

namespace A046598.P16354645820769241518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267810 (f1 j).toNat = 1) n)

end

end A046598.P16354645820769241518

/-! ## A046598.P2296768795623020907

`filter[A046565(n+1), A267813(#)]`
-/

namespace A046598.P2296768795623020907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A046598.P2296768795623020907

/-! ## A046598.P16278461958279944963

`filter[A046591(n+1), A267810(#)]`
-/

namespace A046598.P16278461958279944963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267810 (f1 j).toNat = 1) n)

end

end A046598.P16278461958279944963

/-!
# A046599: First numerator and then denominator of each element of the 1/4-Pascal triangle (by row), excluding 2's and 4's.

The programs for A046599, there is no canonical definition to state claims against.
-/

/-! ## A046599.P17551511389852240056

`A046563(lt[2, (3-A046563(n+1))²]+1)`
-/

namespace A046599.P17551511389852240056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A046563 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046599.P17551511389852240056

/-! ## A046599.P849394657383331200

`filter[A046581(n+1), A267683(#)]`
-/

namespace A046599.P849394657383331200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A046599.P849394657383331200

/-! ## A046599.P4281162289219452929

`filter[A046581(n+1), A267813(#)]`
-/

namespace A046599.P4281162289219452929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A046599.P4281162289219452929

/-! ## A046599.P14528572332045623116

`filter[A046563(n+1), A137161(#)]`
-/

namespace A046599.P14528572332045623116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137161 (f1 j).toNat = 1) n)

end

end A046599.P14528572332045623116

/-! ## A046599.P7183438369110379673

`filter[A046581(n+1), A137161(#)]`
-/

namespace A046599.P7183438369110379673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137161 (f1 j).toNat = 1) n)

end

end A046599.P7183438369110379673

/-! ## A046599.P9541198982694725053

`filter[A046591(n+1), A137161(#)]`
-/

namespace A046599.P9541198982694725053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137161 (f1 j).toNat = 1) n)

end

end A046599.P9541198982694725053

/-! ## A046599.P5747367434466662590

`filter[A046591(n+1), A165556(#)]`
-/

namespace A046599.P5747367434466662590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165556 (f1 j).toNat = 1) n)

end

end A046599.P5747367434466662590

