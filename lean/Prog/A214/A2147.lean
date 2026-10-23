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
import Seq.B000.C024
import Seq.B000.C025
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
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A214700: Numbers k such that 9^k + 3^(k+1) - 1 is prime.

The programs for A214700, there is no canonical definition to state claims against.
-/

/-! ## A214700.P8939419540270397913

`eq[3, A214730(n+1)]+1`
-/

namespace A214700.P8939419540270397913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214700.P8939419540270397913

/-!
# A214701: Number of different values taken by sigma(k)/k for k from 1 up to n.

The programs for A214701, there is no canonical definition to state claims against.
-/

/-! ## A214701.P7590928578197230678

`∑[char[A094759(n+1)-1]]`
-/

namespace A214701.P7590928578197230678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094759 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214701.P7590928578197230678

/-! ## A214701.P17882588061064117595

`∑[A000007(1-A094759(n+1)+n)]`
-/

namespace A214701.P17882588061064117595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (1 - A094759 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214701.P17882588061064117595

/-! ## A214701.P3714310694664387663

`∑[A143434(2-A094759(n+1)+n)]`
-/

namespace A214701.P3714310694664387663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143434 (2 - A094759 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214701.P3714310694664387663

/-! ## A214701.P12666058870725709649

`∑[C(A094759(n+1), A000027(n+1))]`
-/

namespace A214701.P12666058870725709649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094759 (n + 1)).toNat (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214701.P12666058870725709649

/-! ## A214701.P11817974871496675680

`∑[1-A019431(n+1-A094759(n+1))]`
-/

namespace A214701.P11817974871496675680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A019431 ((n + 1 : ℤ) - A094759 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214701.P11817974871496675680

/-! ## A214701.P3820648801829838556

`∑[A077968((n+1)%A094759(n+1))%2]`
-/

namespace A214701.P3820648801829838556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077968 (Int.tmod (n + 1 : ℤ) (A094759 (n + 1))).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214701.P3820648801829838556

/-! ## A214701.P473924995784032740

`A059108(A214081(n)-1)+n`
-/

namespace A214701.P473924995784032740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059108 (A214081 n - 1).toNat + (n : ℤ)

end

end A214701.P473924995784032740

/-! ## A214701.P1358162713440535654

`∑[1-A348264((n+3)²)]`
-/

namespace A214701.P1358162713440535654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A348264 ((n + 3) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214701.P1358162713440535654

/-! ## A214701.P6239333071975370996

`∑[A334946(A334466(n+2))]`
-/

namespace A214701.P6239333071975370996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334946 (A334466 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214701.P6239333071975370996

/-! ## A214701.P6867239444433116797

`∑[A322351(A138202(n)+1)!%2]`
-/

namespace A214701.P6867239444433116797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A322351 (A138202 n + 1).toNat).toNat % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214701.P6867239444433116797

/-!
# A214703: Primes having only {2, 3, 5} as digits.

The programs for A214703, there is no canonical definition to state claims against.
-/

/-! ## A214703.P12613779004674828664

`∩[A386042(n+1), A386144(n+1)]`
-/

namespace A214703.P12613779004674828664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P12613779004674828664

/-! ## A214703.P9120421775559231261

`∩[A386042(n+1), A386145(n+1)]`
-/

namespace A214703.P9120421775559231261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P9120421775559231261

/-! ## A214703.P16867159649347418238

`∩[A386144(n+1), A386145(n+1)]`
-/

namespace A214703.P16867159649347418238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P16867159649347418238

/-! ## A214703.P8254403787954733546

`∩[A386042(n+1), A386139(n+1)]`
-/

namespace A214703.P8254403787954733546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P8254403787954733546

/-! ## A214703.P13765418981213254798

`∩[A386139(n+1), A386144(n+1)]`
-/

namespace A214703.P13765418981213254798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P13765418981213254798

/-! ## A214703.P10437184729619550164

`∩[A386139(n+1), A386145(n+1)]`
-/

namespace A214703.P10437184729619550164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P10437184729619550164

/-! ## A214703.P9592767346440442485

`∩[A019546(n+1), A386042(n+1)]`
-/

namespace A214703.P9592767346440442485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P9592767346440442485

/-! ## A214703.P12976537640130937810

`∩[A019546(n+1), A386139(n+1)]`
-/

namespace A214703.P12976537640130937810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P12976537640130937810

/-! ## A214703.P4715245249198365911

`∩[A019546(n+1), A386144(n+1)]`
-/

namespace A214703.P4715245249198365911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P4715245249198365911

/-! ## A214703.P10345852865232479040

`∩[A019546(n+1), A386145(n+1)]`
-/

namespace A214703.P10345852865232479040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P10345852865232479040

/-! ## A214703.P9656816076008190630

`∩[A019546(n+1), A386146(n+1)]`
-/

namespace A214703.P9656816076008190630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P9656816076008190630

/-! ## A214703.P4812084911946432860

`∩[A386042(n+1), A386146(n+1)]`
-/

namespace A214703.P4812084911946432860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P4812084911946432860

/-! ## A214703.P12781028122546185083

`∩[A386139(n+1), A386146(n+1)]`
-/

namespace A214703.P12781028122546185083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P12781028122546185083

/-! ## A214703.P6519832111573802760

`∩[A386144(n+1), A386146(n+1)]`
-/

namespace A214703.P6519832111573802760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P6519832111573802760

/-! ## A214703.P909092879664214678

`∩[A386145(n+1), A386146(n+1)]`
-/

namespace A214703.P909092879664214678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P909092879664214678

/-! ## A214703.P7844868145783040117

`∩[A019546(n+1), A386086(n+1)]`
-/

namespace A214703.P7844868145783040117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P7844868145783040117

/-! ## A214703.P12562268771712999281

`∩[A386042(n+1), A386086(n+1)]`
-/

namespace A214703.P12562268771712999281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P12562268771712999281

/-! ## A214703.P14187467856400975014

`∩[A386086(n+1), A386139(n+1)]`
-/

namespace A214703.P14187467856400975014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P14187467856400975014

/-! ## A214703.P11963673305127003900

`∩[A386086(n+1), A386144(n+1)]`
-/

namespace A214703.P11963673305127003900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P11963673305127003900

/-! ## A214703.P11426093814308038180

`∩[A386086(n+1), A386145(n+1)]`
-/

namespace A214703.P11426093814308038180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214703.P11426093814308038180

/-!
# A214704: Primes that contain only the digits (2, 3, 7).

The programs for A214704, there is no canonical definition to state claims against.
-/

/-! ## A214704.P11378022242439388586

`∩[A386044(n+1), A386150(n+1)]`
-/

namespace A214704.P11378022242439388586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P11378022242439388586

/-! ## A214704.P18325978521895800629

`∩[A019546(n+1), A386044(n+1)]`
-/

namespace A214704.P18325978521895800629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P18325978521895800629

/-! ## A214704.P9173876568942256855

`∩[A019546(n+1), A386150(n+1)]`
-/

namespace A214704.P9173876568942256855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P9173876568942256855

/-! ## A214704.P12452552652829564233

`∩[A019546(n+1), A386147(n+1)]`
-/

namespace A214704.P12452552652829564233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P12452552652829564233

/-! ## A214704.P5679226871958688312

`∩[A386044(n+1), A386147(n+1)]`
-/

namespace A214704.P5679226871958688312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P5679226871958688312

/-! ## A214704.P2695373481031395444

`∩[A386147(n+1), A386150(n+1)]`
-/

namespace A214704.P2695373481031395444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P2695373481031395444

/-! ## A214704.P5968551132629119402

`∩[A019546(n+1), A386141(n+1)]`
-/

namespace A214704.P5968551132629119402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P5968551132629119402

/-! ## A214704.P3893767814259831726

`∩[A386044(n+1), A386141(n+1)]`
-/

namespace A214704.P3893767814259831726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P3893767814259831726

/-! ## A214704.P10677700593883619986

`∩[A386141(n+1), A386147(n+1)]`
-/

namespace A214704.P10677700593883619986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P10677700593883619986

/-! ## A214704.P14387185547646085703

`∩[A386141(n+1), A386150(n+1)]`
-/

namespace A214704.P14387185547646085703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P14387185547646085703

/-! ## A214704.P2915619168125080586

`∩[A019546(n+1), A386151(n+1)]`
-/

namespace A214704.P2915619168125080586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P2915619168125080586

/-! ## A214704.P4496299281418637639

`∩[A386044(n+1), A386151(n+1)]`
-/

namespace A214704.P4496299281418637639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P4496299281418637639

/-! ## A214704.P4121906807719709015

`∩[A386141(n+1), A386151(n+1)]`
-/

namespace A214704.P4121906807719709015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P4121906807719709015

/-! ## A214704.P16283585741892034472

`∩[A386147(n+1), A386151(n+1)]`
-/

namespace A214704.P16283585741892034472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P16283585741892034472

/-! ## A214704.P8977262927560399310

`∩[A019546(n+1), A386088(n+1)]`
-/

namespace A214704.P8977262927560399310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P8977262927560399310

/-! ## A214704.P209113743137004390

`∩[A386044(n+1), A386088(n+1)]`
-/

namespace A214704.P209113743137004390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P209113743137004390

/-! ## A214704.P10656893323975788013

`∩[A386088(n+1), A386141(n+1)]`
-/

namespace A214704.P10656893323975788013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P10656893323975788013

/-! ## A214704.P16926867326485610473

`∩[A386088(n+1), A386147(n+1)]`
-/

namespace A214704.P16926867326485610473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P16926867326485610473

/-! ## A214704.P17431141756723858787

`∩[A386088(n+1), A386150(n+1)]`
-/

namespace A214704.P17431141756723858787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P17431141756723858787

/-! ## A214704.P16299193423921221296

`∩[A386088(n+1), A386151(n+1)]`
-/

namespace A214704.P16299193423921221296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214704.P16299193423921221296

/-!
# A214705: Primes that contain only the digits (2, 5, 7).

The programs for A214705, there is no canonical definition to state claims against.
-/

/-! ## A214705.P154682606406205794

`∩[A386049(n+1), A386162(n+1)]`
-/

namespace A214705.P154682606406205794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P154682606406205794

/-! ## A214705.P8265471824492497496

`∩[A386049(n+1), A386160(n+1)]`
-/

namespace A214705.P8265471824492497496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P8265471824492497496

/-! ## A214705.P1415760206500886009

`∩[A386160(n+1), A386162(n+1)]`
-/

namespace A214705.P1415760206500886009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P1415760206500886009

/-! ## A214705.P6965671362497974458

`∩[A386049(n+1), A386153(n+1)]`
-/

namespace A214705.P6965671362497974458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P6965671362497974458

/-! ## A214705.P1331425339731710998

`∩[A386153(n+1), A386160(n+1)]`
-/

namespace A214705.P1331425339731710998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P1331425339731710998

/-! ## A214705.P13034176358340267738

`∩[A386153(n+1), A386162(n+1)]`
-/

namespace A214705.P13034176358340267738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P13034176358340267738

/-! ## A214705.P1201727722515202519

`∩[A386049(n+1), A386163(n+1)]`
-/

namespace A214705.P1201727722515202519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P1201727722515202519

/-! ## A214705.P7512018530412162258

`∩[A386153(n+1), A386163(n+1)]`
-/

namespace A214705.P7512018530412162258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P7512018530412162258

/-! ## A214705.P8668128348956529541

`∩[A386160(n+1), A386163(n+1)]`
-/

namespace A214705.P8668128348956529541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P8668128348956529541

/-! ## A214705.P13988462958896170863

`∩[A386162(n+1), A386163(n+1)]`
-/

namespace A214705.P13988462958896170863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P13988462958896170863

/-! ## A214705.P1093137674599763034

`∩[A019546(n+1), A386049(n+1)]`
-/

namespace A214705.P1093137674599763034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P1093137674599763034

/-! ## A214705.P9255805914035682684

`∩[A019546(n+1), A386153(n+1)]`
-/

namespace A214705.P9255805914035682684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P9255805914035682684

/-! ## A214705.P5590759511405121892

`∩[A019546(n+1), A386160(n+1)]`
-/

namespace A214705.P5590759511405121892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P5590759511405121892

/-! ## A214705.P10991150402827100662

`∩[A019546(n+1), A386162(n+1)]`
-/

namespace A214705.P10991150402827100662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P10991150402827100662

/-! ## A214705.P6995071504913535959

`∩[A019546(n+1), A386163(n+1)]`
-/

namespace A214705.P6995071504913535959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P6995071504913535959

/-! ## A214705.P786025178854260223

`∩[A019546(n+1), A386096(n+1)]`
-/

namespace A214705.P786025178854260223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P786025178854260223

/-! ## A214705.P9640483415668709050

`∩[A386049(n+1), A386096(n+1)]`
-/

namespace A214705.P9640483415668709050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P9640483415668709050

/-! ## A214705.P16294236611513871527

`∩[A386096(n+1), A386153(n+1)]`
-/

namespace A214705.P16294236611513871527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P16294236611513871527

/-! ## A214705.P5131356897951432791

`∩[A386096(n+1), A386160(n+1)]`
-/

namespace A214705.P5131356897951432791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P5131356897951432791

/-! ## A214705.P16943496659347145710

`∩[A386096(n+1), A386162(n+1)]`
-/

namespace A214705.P16943496659347145710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214705.P16943496659347145710

/-!
# A214706: a(n) = a(n-1)*a(n-2) with a(0)=1, a(1)=5.

The programs for A214706, the canonical program `A214706.P4879467208442013427` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214706 has offset 0).

The definition of A214706 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)` (program `A214706.P4879467208442013427`, by `A214706.P4879467208442013427.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214706.P4879467208442013427

`a(n-1)*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A214706

/-- `a(n-1)*a(n-2)` -/
def P4879467208442013427.Spec : Prop :=
  ∀ n, (P4879467208442013427.a n : ℤ) = A214706 n

theorem P4879467208442013427.correct : P4879467208442013427.Spec := by
  intro n
  simp only [A214706]

end A214706

/-! ## A214706.P16662277756913395667

`a(n-1)²/a(n-3)` with `a(0)=1, a(1)=5, a(2)=5`
-/

namespace A214706.P16662277756913395667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5, 5] fun n a =>
  a (n - 1) ^ 2 / a (n - 3)

end

end A214706.P16662277756913395667

namespace A214706

/-- `a(n-1)²/a(n-3)` -/
def P16662277756913395667.Spec : Prop :=
  ∀ n, P16662277756913395667.a n = (A214706 n : ℚ)

end A214706

/-! ## A214706.P16377512163238012039

`a(n-1)/a(n-2)^(-1)` with `a(0)=1, a(1)=5`
-/

namespace A214706.P16377512163238012039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) / a (n - 2) ^ (-1 : ℤ)

end

end A214706.P16377512163238012039

namespace A214706

/-- `a(n-1)/a(n-2)^(-1)` -/
def P16377512163238012039.Spec : Prop :=
  ∀ n, P16377512163238012039.a n = (A214706 n : ℚ)

end A214706

/-! ## A214706.P1060490137632252829

`a(n-1)/abs(1/a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A214706.P1060490137632252829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) / |1 / a (n - 2)|

end

end A214706.P1060490137632252829

namespace A214706

/-- `a(n-1)/abs(1/a(n-2))` -/
def P1060490137632252829.Spec : Prop :=
  ∀ n, P1060490137632252829.a n = (A214706 n : ℚ)

end A214706

/-! ## A214706.P4751888116389582081

`5^∑[a(n-1)+a(n-2)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A214706.P4751888116389582081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214706.P4751888116389582081

namespace A214706

/-- `5^∑[a(n-1)+a(n-2)]` -/
def P4751888116389582081.Spec : Prop :=
  ∀ n, (P4751888116389582081.a n : ℤ) = A214706 n

end A214706

/-!
# A214707: Least m>0 such that 3^n-m and 4^n-m are relatively prime.

The programs for A214707, there is no canonical definition to state claims against.
-/

/-! ## A214707.P12149817114083952252

`gcd(A016825(n), A046155(A033621(n+1)))`
-/

namespace A214707.P12149817114083952252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016825 n) (A046155 (A033621 (n + 1)).toNat)

end

end A214707.P12149817114083952252

/-! ## A214707.P2101420248715402198

`A121041(A028900(3*n+4)^A324831(n+1))`
-/

namespace A214707.P2101420248715402198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (SequenceMachineLib.roundAway ((A028900 (3 * n + 4) : ℚ) ^ (A324831 (n + 1) : ℤ))).toNat

end

end A214707.P2101420248715402198

/-! ## A214707.P11033240820879073556

`A303708(or(A195770(n+4), A219686(n+1)))`
-/

namespace A214707.P11033240820879073556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303708 (Int.lor (A195770 (n + 4)) (A219686 (n + 1))).toNat

end

end A214707.P11033240820879073556

/-!
# A214708: Least m>0 such that 4^n-m and 5^n-m are relatively prime.

The programs for A214708, there is no canonical definition to state claims against.
-/

/-! ## A214708.P5471131567818888593

`gcd(A036453(A005897(n)), A375486(n))`
-/

namespace A214708.P5471131567818888593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036453 (A005897 n).toNat) (A375486 n)

end

end A214708.P5471131567818888593

/-! ## A214708.P11892903601840958083

`A007424(∑[A228344(2*n+5)])`
-/

namespace A214708.P11892903601840958083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228344 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214708.P11892903601840958083

/-! ## A214708.P2915414672936486714

`A029653(A124233(A070277(n+1)*A323844(n)))`
-/

namespace A214708.P2915414672936486714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (A124233 (A070277 (n + 1) * A323844 n).toNat).toNat

end

end A214708.P2915414672936486714

/-! ## A214708.P3311917322335786267

`A006530(A318314(∑[A135659(n)]))`
-/

namespace A214708.P3311917322335786267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A318314 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A214708.P3311917322335786267

/-! ## A214708.P5691475273104334245

`A048578(n)%A318314(∑[A135659(n)])+1`
-/

namespace A214708.P5691475273104334245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048578 n) (A318314 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) + 1

end

end A214708.P5691475273104334245

/-!
# A214709: Least m>0 such that n!-m and 2^n-m are relatively prime.

The programs for A214709, there is no canonical definition to state claims against.
-/

/-! ## A214709.P8501753331612819509

`gcd(A000466(A167625(n+1)), A083954(n+2))`
-/

namespace A214709.P8501753331612819509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000466 (A167625 (n + 1)).toNat) (A083954 (n + 2))

end

end A214709.P8501753331612819509

/-! ## A214709.P7067012303302811075

`A331076(gcd(A326153(n+4), A380508(3*n+1)))`
-/

namespace A214709.P7067012303302811075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331076 (Int.gcd (A326153 (n + 4)) (A380508 (3 * n + 1)))

end

end A214709.P7067012303302811075

/-! ## A214709.P10100234153054294758

`A331273(or(n^(n%2)+1, A132230(2*n+5)))`
-/

namespace A214709.P10100234153054294758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331273 (Int.lor (n ^ (n % 2) + 1 : ℤ) (A132230 (2 * n + 5))).toNat

end

end A214709.P10100234153054294758

/-! ## A214709.P5114887461402246211

`A109626(A001179(n+1)^A033716(n+2))`
-/

namespace A214709.P5114887461402246211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (SequenceMachineLib.roundAway ((A001179 (n + 1) : ℚ) ^ (A033716 (n + 2) : ℤ))).toNat

end

end A214709.P5114887461402246211

/-! ## A214709.P11513749494152206943

`A004659(val(A316289(3*n+1), A048521(n+1)))`
-/

namespace A214709.P11513749494152206943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004659 (SequenceMachineLib.valuation (A316289 (3 * n + 1)).toNat (A048521 (n + 1)).toNat)

end

end A214709.P11513749494152206943

/-! ## A214709.P4484855775272330727

`2%A204114(A084192(n))+1`
-/

namespace A214709.P4484855775272330727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A204114 (A084192 n).toNat) + 1

end

end A214709.P4484855775272330727

/-! ## A214709.P12851849994894112684

`gcd(A040101(A355145(n)), A097280(n))`
-/

namespace A214709.P12851849994894112684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040101 (A355145 n).toNat) (A097280 n)

end

end A214709.P12851849994894112684

/-! ## A214709.P994896208470203846

`∏{p}[A204114(A084192(n)), A133799(#)]`
-/

namespace A214709.P994896208470203846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204114 (A084192 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A133799 p

end

end A214709.P994896208470203846

/-! ## A214709.P13201672169925515283

`gcd(A151965(n+1), A204114(A084192(n)))`
-/

namespace A214709.P13201672169925515283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151965 (n + 1)) (A204114 (A084192 n).toNat)

end

end A214709.P13201672169925515283

/-! ## A214709.P14864152636429790327

`gcd(A081585(n), A302460(A326060(3*n+1)))`
-/

namespace A214709.P14864152636429790327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081585 n) (A302460 (A326060 (3 * n + 1)).toNat)

end

end A214709.P14864152636429790327

/-!
# A214710: Least m>0 such that n!-m and n!!-m are relatively prime.

The programs for A214710, the canonical program `A214710.P3311664088709254903` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214710 has offset 1).

The definition of A214710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214710.P3311664088709254903

`A007877(A007912(n+3)+A007893(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A214710

/-- `A007877(A007912(n+3)+A007893(n+1))` -/
def P3311664088709254903.Spec : Prop :=
  ∀ n, P3311664088709254903.a n = A214710 (n + 1)

theorem P3311664088709254903.correct : P3311664088709254903.Spec := by
  intro n
  simp only [A214710, Nat.add_sub_cancel]

end A214710

/-! ## A214710.P1940823619968338377

`A007877(A007912(n+3)+A007891(n+1))`
-/

namespace A214710.P1940823619968338377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A007912 (n + 3) + A007891 (n + 1)).toNat

end

end A214710.P1940823619968338377

namespace A214710

/-- `A007877(A007912(n+3)+A007891(n+1))` -/
def P1940823619968338377.Spec : Prop :=
  ∀ n, P1940823619968338377.a n = A214710 (n + 1)

end A214710

/-! ## A214710.P12443170727308381280

`A052409(∑[A086196(n+1)+2]+n)`
-/

namespace A214710.P12443170727308381280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086196 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A214710.P12443170727308381280

namespace A214710

/-- `A052409(∑[A086196(n+1)+2]+n)` -/
def P12443170727308381280.Spec : Prop :=
  ∀ n, P12443170727308381280.a n = A214710 (n + 1)

end A214710

/-! ## A214710.P7424620641695270399

`A089723(A122985(n+1)+A047393(n+1))`
-/

namespace A214710.P7424620641695270399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A122985 (n + 1) + A047393 (n + 1)).toNat

end

end A214710.P7424620641695270399

namespace A214710

/-- `A089723(A122985(n+1)+A047393(n+1))` -/
def P7424620641695270399.Spec : Prop :=
  ∀ n, P7424620641695270399.a n = A214710 (n + 1)

end A214710

/-! ## A214710.P12063307431007633882

`A071773(gcd(A068901(n+1), A244030(n+1)))`
-/

namespace A214710.P12063307431007633882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (Int.gcd (A068901 (n + 1)) (A244030 (n + 1)))

end

end A214710.P12063307431007633882

namespace A214710

/-- `A071773(gcd(A068901(n+1), A244030(n+1)))` -/
def P12063307431007633882.Spec : Prop :=
  ∀ n, P12063307431007633882.a n = A214710 (n + 1)

end A214710

/-! ## A214710.P9428364154512972814

`gcd(A072463(n), A316264(n+1))`
-/

namespace A214710.P9428364154512972814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072463 n) (A316264 (n + 1))

end

end A214710.P9428364154512972814

namespace A214710

/-- `gcd(A072463(n), A316264(n+1))` -/
def P9428364154512972814.Spec : Prop :=
  ∀ n, (P9428364154512972814.a n : ℤ) = A214710 (n + 1)

end A214710

/-! ## A214710.P12067028055826007422

`A035214(A272423(n))`
-/

namespace A214710.P12067028055826007422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A272423 n).toNat

end

end A214710.P12067028055826007422

namespace A214710

/-- `A035214(A272423(n))` -/
def P12067028055826007422.Spec : Prop :=
  ∀ n, P12067028055826007422.a n = A214710 (n + 1)

end A214710

/-! ## A214710.P17469793367259702658

`gcd(A040469(n), A333955(n+1))`
-/

namespace A214710.P17469793367259702658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040469 n) (A333955 (n + 1))

end

end A214710.P17469793367259702658

namespace A214710

/-- `gcd(A040469(n), A333955(n+1))` -/
def P17469793367259702658.Spec : Prop :=
  ∀ n, (P17469793367259702658.a n : ℤ) = A214710 (n + 1)

end A214710

/-! ## A214710.P16105815404071421971

`A262747(A262887(A262979((2*n+1)²)))`
-/

namespace A214710.P16105815404071421971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262747 (A262887 (A262979 ((2 * n + 1) ^ 2)).toNat).toNat

end

end A214710.P16105815404071421971

namespace A214710

/-- `A262747(A262887(A262979((2*n+1)²)))` -/
def P16105815404071421971.Spec : Prop :=
  ∀ n, P16105815404071421971.a n = A214710 (n + 1)

end A214710

/-!
# A214711: Positions of 2 in A214710.

The programs for A214711, the canonical program `A214711.P10925273728456051061` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214711 has offset 1).

The definition of A214711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214711.P10925273728456051061

`eq[2, A214710(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A214711

/-- `eq[2, A214710(n+1)]+1` -/
def P10925273728456051061.Spec : Prop :=
  ∀ n, (P10925273728456051061.a n : ℤ) = A214711 (n + 1)

theorem P10925273728456051061.correct : P10925273728456051061.Spec := by
  intro n
  simp only [A214711, Nat.add_sub_cancel]

end A214711

/-! ## A214711.P12104300761325452394

`p?[A265694(2*n+1)]-2`
-/

namespace A214711.P12104300761325452394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265694 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A214711.P12104300761325452394

namespace A214711

/-- `p?[A265694(2*n+1)]-2` -/
def P12104300761325452394.Spec : Prop :=
  ∀ n, P12104300761325452394.a n = A214711 (n + 1)

end A214711

/-! ## A214711.P1684080878549792250

`A214919(A129518(n+1))`
-/

namespace A214711.P1684080878549792250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214919 (A129518 (n + 1)).toNat

end

end A214711.P1684080878549792250

namespace A214711

/-- `A214919(A129518(n+1))` -/
def P1684080878549792250.Spec : Prop :=
  ∀ n, P1684080878549792250.a n = A214711 (n + 1)

end A214711

/-! ## A214711.P17190608081635976819

`A214919(A260298(n+2))`
-/

namespace A214711.P17190608081635976819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214919 (A260298 (n + 2)).toNat

end

end A214711.P17190608081635976819

namespace A214711

/-- `A214919(A260298(n+2))` -/
def P17190608081635976819.Spec : Prop :=
  ∀ n, P17190608081635976819.a n = A214711 (n + 1)

end A214711

/-! ## A214711.P9164022116505396626

`eq[A119688(n+1), A182187(n)]`
-/

namespace A214711.P9164022116505396626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214711.P9164022116505396626

namespace A214711

/-- `eq[A119688(n+1), A182187(n)]` -/
def P9164022116505396626.Spec : Prop :=
  ∀ n, (P9164022116505396626.a n : ℤ) = A214711 (n + 1)

end A214711

/-!
# A214712: a(n) is the least m > 0 such that Fibonacci(n)-m and n-m are relatively prime.

The programs for A214712, there is no canonical definition to state claims against.
-/

/-! ## A214712.P7624190066519616777

`gcd(A001221(A298462(2*n+1)), A048320(n))`
-/

namespace A214712.P7624190066519616777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A298462 (2 * n + 1)).toNat) (A048320 n)

end

end A214712.P7624190066519616777

/-! ## A214712.P7228191877986580051

`A001222(xor(A002387(n), A056903(n+4)))`
-/

namespace A214712.P7228191877986580051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A002387 n) (A056903 (n + 4))).toNat

end

end A214712.P7228191877986580051

/-!
# A214713: a(n) is the least m > 0 such that Fibonacci(n+1)-m and n-m are relatively prime.

The programs for A214713, there is no canonical definition to state claims against.
-/

/-! ## A214713.P3967264623105321103

`A005136(abs(A005082(2*n+1)-12))`
-/

namespace A214713.P3967264623105321103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 |A005082 (2 * n + 1) - 12|.toNat

end

end A214713.P3967264623105321103

/-! ## A214713.P15726499180579729504

`gcd(A193404(A020639(3*n+4)), A340051(n))`
-/

namespace A214713.P15726499180579729504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193404 (A020639 (3 * n + 4)).toNat) (A340051 n)

end

end A214713.P15726499180579729504

/-! ## A214713.P10321581638567397130

`A261794(A103314(n+6))`
-/

namespace A214713.P10321581638567397130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (A103314 (n + 6)).toNat

end

end A214713.P10321581638567397130

/-! ## A214713.P2187667725865088354

`A001285(∑[∑{d}[n+1, #]²])`
-/

namespace A214713.P2187667725865088354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), d) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214713.P2187667725865088354

/-! ## A214713.P4940154848156870759

`gcd(2, A277707(lcm(n+1, ∏{p}[n+1, #^3])))`
-/

namespace A214713.P4940154848156870759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A277707 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 3)))

end

end A214713.P4940154848156870759

/-!
# A214714: Least m>0 such that prime(n)-m and n-m are relatively prime.

The programs for A214714, there is no canonical definition to state claims against.
-/

/-! ## A214714.P7298776560108054780

`gcd(A000005(A327067(n)), A327082(3*n+1))`
-/

namespace A214714.P7298776560108054780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A327067 n).toNat) (A327082 (3 * n + 1))

end

end A214714.P7298776560108054780

/-! ## A214714.P7368811677590874150

`gcd(A007427(A115124(n+6)), A174571(n+5))`
-/

namespace A214714.P7368811677590874150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007427 (A115124 (n + 6)).toNat) (A174571 (n + 5))

end

end A214714.P7368811677590874150

/-! ## A214714.P1912821161129315030

`A040001(A126869(n))*A181935(A054531(n+1))`
-/

namespace A214714.P1912821161129315030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A126869 n).toNat * A181935 (A054531 (n + 1)).toNat

end

end A214714.P1912821161129315030

/-! ## A214714.P14802074394572943381

`A007875(A201101(n+1)-A075425(n+1))`
-/

namespace A214714.P14802074394572943381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A201101 (n + 1) - A075425 (n + 1)).toNat

end

end A214714.P14802074394572943381

/-! ## A214714.P5693537953013770390

`gcd(4, gcd(n, A152332(n+1))!)`
-/

namespace A214714.P5693537953013770390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (Nat.factorial (Int.gcd (n : ℤ) (A152332 (n + 1))))

end

end A214714.P5693537953013770390

/-!
# A214715: Least m>0 such that prime(n+1)-m and n-m are relatively prime.

The programs for A214715, there is no canonical definition to state claims against.
-/

/-! ## A214715.P10260651331400254717

`A055874(A061797(n+1))`
-/

namespace A214715.P10260651331400254717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A061797 (n + 1)).toNat

end

end A214715.P10260651331400254717

/-! ## A214715.P6850376151897929422

`A001511(n*A302053(n)+2)`
-/

namespace A214715.P6850376151897929422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 ((n : ℤ) * A302053 n + 2).toNat

end

end A214715.P6850376151897929422

/-! ## A214715.P9281665934582283797

`gcd(4, A124388(n*A302053(n)))`
-/

namespace A214715.P9281665934582283797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A124388 ((n : ℤ) * A302053 n).toNat)

end

end A214715.P9281665934582283797

/-! ## A214715.P931346518101276082

`A037271(gcd(A007051(n), A243301(n+1)))`
-/

namespace A214715.P931346518101276082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037271 (Int.gcd (A007051 n) (A243301 (n + 1)))

end

end A214715.P931346518101276082

/-! ## A214715.P11361389651298380394

`A165112(A211970(3*n+2))+A059841(n)`
-/

namespace A214715.P11361389651298380394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165112 (A211970 (3 * n + 2)).toNat + A059841 n

end

end A214715.P11361389651298380394

/-!
# A214716: Least m>0 such that 3^n-m and n-m are relatively prime.

The programs for A214716, there is no canonical definition to state claims against.
-/

/-! ## A214716.P1162270309538538317

`gcd(2, n)*A309913(A191426(n+1))`
-/

namespace A214716.P1162270309538538317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A309913 (A191426 (n + 1)).toNat

end

end A214716.P1162270309538538317

/-! ## A214716.P6370761680789919465

`A101872(or(6, A144129(n)))`
-/

namespace A214716.P6370761680789919465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (Int.lor 6 (A144129 n)).toNat

end

end A214716.P6370761680789919465

/-! ## A214716.P10848408841034512881

`A353567(or(6, A144129(n)))`
-/

namespace A214716.P10848408841034512881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353567 (Int.lor 6 (A144129 n)).toNat

end

end A214716.P10848408841034512881

/-! ## A214716.P12071986876871588045

`gcd(Δ[A235986(2*n+3)], A235986(n+1))`
-/

namespace A214716.P12071986876871588045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235986 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A235986 (n + 1))

end

end A214716.P12071986876871588045

/-! ## A214716.P16909757036714230911

`A000005(gcd(A030104(n), A211001(n+1)))`
-/

namespace A214716.P16909757036714230911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A030104 n) (A211001 (n + 1)))

end

end A214716.P16909757036714230911

/-!
# A214717: Least m>0 such that 4^n-m and n-m are relatively prime.

The programs for A214717, there is no canonical definition to state claims against.
-/

/-! ## A214717.P5269312632975375356

`A269977(A065000(n+1)%A248616(2*n+5))`
-/

namespace A214717.P5269312632975375356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269977 (Int.tmod (A065000 (n + 1)) (A248616 (2 * n + 5))).toNat

end

end A214717.P5269312632975375356

/-! ## A214717.P11739419546161793728

`A255326(A027620(n)+6*n)`
-/

namespace A214717.P11739419546161793728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (A027620 n + (6 * n : ℤ)).toNat

end

end A214717.P11739419546161793728

/-! ## A214717.P7527061341975813671

`A031245(n+1)+A007814(A000032(n))`
-/

namespace A214717.P7527061341975813671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031245 (n + 1) + A007814 (A000032 n).toNat

end

end A214717.P7527061341975813671

/-! ## A214717.P14858013939501641571

`A269977(A065000(n+1)%A167499(n))`
-/

namespace A214717.P14858013939501641571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269977 (Int.tmod (A065000 (n + 1)) (A167499 n)).toNat

end

end A214717.P14858013939501641571

/-! ## A214717.P9690387489050937527

`A269977(A065000(n+1))`
-/

namespace A214717.P9690387489050937527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269977 (A065000 (n + 1)).toNat

end

end A214717.P9690387489050937527

/-!
# A214718: Least m>0 such that 5^n-m and n-m are relatively prime.

The programs for A214718, there is no canonical definition to state claims against.
-/

/-! ## A214718.P1658155212821891679

`∏{e}[A014131(n+2), #]`
-/

namespace A214718.P1658155212821891679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014131 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A214718.P1658155212821891679

/-! ## A214718.P4505515437949554028

`∏{e}[6*(A084639(n+1)+1), #]`
-/

namespace A214718.P4505515437949554028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A084639 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A214718.P4505515437949554028

/-! ## A214718.P11092917075287469207

`A138010(Δ[A087503(n)])`
-/

namespace A214718.P11092917075287469207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138010 (f1 (n + 1) - f1 n).toNat

end

end A214718.P11092917075287469207

/-! ## A214718.P13070918367006341898

`A138010(A038754(n+1))`
-/

namespace A214718.P13070918367006341898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138010 (A038754 (n + 1)).toNat

end

end A214718.P13070918367006341898

/-! ## A214718.P10852972045274597900

`A214069(A005915(n))`
-/

namespace A214718.P10852972045274597900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214069 (A005915 n).toNat

end

end A214718.P10852972045274597900

/-!
# A214719: Least m>0 such that 6^n-m and n-m are relatively prime.

The programs for A214719, there is no canonical definition to state claims against.
-/

/-! ## A214719.P3223104104906216097

`gcd(A060395(n), A133310(A004911(n+1)+1))`
-/

namespace A214719.P3223104104906216097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060395 n) (A133310 (A004911 (n + 1) + 1).toNat)

end

end A214719.P3223104104906216097

/-! ## A214719.P12822426018585647275

`A295879(A379317(3*n+4))+A295659(n+1)`
-/

namespace A214719.P12822426018585647275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295879 (A379317 (3 * n + 4)).toNat + A295659 (n + 1)

end

end A214719.P12822426018585647275

/-! ## A214719.P12749812516257953381

`gcd(A060395(n), A133310(A004911(n+2)))`
-/

namespace A214719.P12749812516257953381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060395 n) (A133310 (A004911 (n + 2)).toNat)

end

end A214719.P12749812516257953381

/-! ## A214719.P16148185023580614992

`gcd(A007090(A027193(2*n)), A083221(n+2))`
-/

namespace A214719.P16148185023580614992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007090 (A027193 (2 * n)).toNat) (A083221 (n + 2))

end

end A214719.P16148185023580614992

/-! ## A214719.P13319140463678547414

`gcd(A053669(n+1), A301722(A293603(n)))`
-/

namespace A214719.P13319140463678547414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053669 (n + 1)) (A301722 (A293603 n).toNat)

end

end A214719.P13319140463678547414

/-!
# A214720: Least m>0 such that n^2-m and n-m are relatively prime.

The programs for A214720, there is no canonical definition to state claims against.
-/

/-! ## A214720.P13854963958450774439

`A053669(n+1)-2*char[1]`
-/

namespace A214720.P13854963958450774439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A214720.P13854963958450774439

/-!
# A214721: Least m>0 such that 2*n+1+m and n-m are not relatively prime.

The programs for A214721, there is no canonical definition to state claims against.
-/

/-! ## A214721.P6922709966114615672

`A028310(A144390(n+1))%A306289(n+1)`
-/

namespace A214721.P6922709966114615672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A144390 (n + 1)).toNat) (A306289 (n + 1))

end

end A214721.P6922709966114615672

/-! ## A214721.P5935162948831619081

`A063278(A056109(n+2))%A020639(3*n+4)`
-/

namespace A214721.P5935162948831619081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063278 (A056109 (n + 2)).toNat) (A020639 (3 * n + 4))

end

end A214721.P5935162948831619081

/-! ## A214721.P17684021478767605816

`A132669(A132669(n+1))%A020639(3*n+4)`
-/

namespace A214721.P17684021478767605816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132669 (A132669 (n + 1)).toNat) (A020639 (3 * n + 4))

end

end A214721.P17684021478767605816

/-! ## A214721.P11302013943855730684

`A066328(A001248(n+1))%A020639(3*n+4)`
-/

namespace A214721.P11302013943855730684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066328 (A001248 (n + 1)).toNat) (A020639 (3 * n + 4))

end

end A214721.P11302013943855730684

/-! ## A214721.P5347578035258964466

`A347533(A000124(n))%A020639(3*n+4)`
-/

namespace A214721.P5347578035258964466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347533 (A000124 n).toNat) (A020639 (3 * n + 4))

end

end A214721.P5347578035258964466

/-!
# A214723: Numbers of the form p^2 + q^2, with p and q prime, in exactly one way.

The programs for A214723, there is no canonical definition to state claims against.
-/

/-! ## A214723.P4938137619403760940

`eq[1, A045698(n)]`
-/

namespace A214723.P4938137619403760940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214723.P4938137619403760940

/-! ## A214723.P14246640223069925553

`record[A045636(n+1)/A045698(A045636(n+1))]`
-/

namespace A214723.P14246640223069925553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045636 (n + 1) : ℚ) / (A045698 (A045636 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214723.P14246640223069925553

/-! ## A214723.P17304014702931517630

`A026233(p?[A008578(n+1)*A045698(n)])`
-/

namespace A214723.P17304014702931517630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A045698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A214723.P17304014702931517630

/-! ## A214723.P11817172995300181481

`A045636(record[A249858(n+1)+1])`
-/

namespace A214723.P11817172995300181481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249858 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214723.P11817172995300181481

/-!
# A214725: Smallest number expressible as a sum of 9 cubes (including 0) in n ways.

The programs for A214725, there is no canonical definition to state claims against.
-/

/-! ## A214725.P15766980853045017879

`A001414(2*(n+1))*A001414(A224799(n))`
-/

namespace A214725.P15766980853045017879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (2 * (n + 1)) * A001414 (A224799 n).toNat

end

end A214725.P15766980853045017879

/-! ## A214725.P866724989746832905

`A319057(2*(n+1))*A319057(A368962(n))`
-/

namespace A214725.P866724989746832905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319057 (2 * (n + 1)) * A319057 (A368962 n).toNat

end

end A214725.P866724989746832905

/-!
# A214727: a(n) = a(n-1) + a(n-2) + a(n-3) with a(0) = 1, a(1) = a(2) = 2.

The programs for A214727, the canonical program `A214727.P11946142167153470616` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214727 has offset 0).

The definition of A214727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A214727.P11946142167153470616`, by `A214727.P11946142167153470616.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214727.P11946142167153470616

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A214727

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P11946142167153470616.Spec : Prop :=
  ∀ n, (P11946142167153470616.a n : ℤ) = A214727 n

theorem P11946142167153470616.correct : P11946142167153470616.Spec := by
  intro n
  simp only [A214727]

end A214727

/-! ## A214727.P14266787171401365570

`ogf((-1-x+x^2)/(-1+x+x^2+x^3))`
-/

namespace A214727.P14266787171401365570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -1, -1, -1] n

end

end A214727.P14266787171401365570

namespace A214727

/-- `ogf((-1-x+x^2)/(-1+x+x^2+x^3))` -/
def P14266787171401365570.Spec : Prop :=
  ∀ n, P14266787171401365570.a n = A214727 n

end A214727

/-! ## A214727.P986229520210446251

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=5`
-/

namespace A214727.P986229520210446251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 5] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A214727.P986229520210446251

namespace A214727

/-- `2*a(n-1)-a(n-4)` -/
def P986229520210446251.Spec : Prop :=
  ∀ n, P986229520210446251.a n = A214727 n

end A214727

/-! ## A214727.P14386929119447453986

`floor(a(n-1)-(a(n-4)-a(n-1)))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A214727.P14386929119447453986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 5] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A214727.P14386929119447453986

namespace A214727

/-- `floor(a(n-1)-(a(n-4)-a(n-1)))` -/
def P14386929119447453986.Spec : Prop :=
  ∀ n, P14386929119447453986.a n = A214727 n

end A214727

/-! ## A214727.P11847429359074837519

`A275778(n)+A000073(n)`
-/

namespace A214727.P11847429359074837519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275778 n + A000073 n

end

end A214727.P11847429359074837519

namespace A214727

/-- `A275778(n)+A000073(n)` -/
def P11847429359074837519.Spec : Prop :=
  ∀ n, P11847429359074837519.a n = A214727 n

end A214727

/-! ## A214727.P10824299478769325393

`A354784(n)+A276658(n)`
-/

namespace A214727.P10824299478769325393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 n + A276658 n

end

end A214727.P10824299478769325393

namespace A214727

/-- `A354784(n)+A276658(n)` -/
def P10824299478769325393.Spec : Prop :=
  ∀ n, P10824299478769325393.a n = A214727 n

end A214727

/-! ## A214727.P16323603003040839084

`A074678(n)-A228826(n)`
-/

namespace A214727.P16323603003040839084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074678 n - A228826 n

end

end A214727.P16323603003040839084

namespace A214727

/-- `A074678(n)-A228826(n)` -/
def P16323603003040839084.Spec : Prop :=
  ∀ n, P16323603003040839084.a n = A214727 n

end A214727

/-! ## A214727.P1454826800679485169

`A000213(n)+∑[A001590(n)]`
-/

namespace A214727.P1454826800679485169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214727.P1454826800679485169

namespace A214727

/-- `A000213(n)+∑[A001590(n)]` -/
def P1454826800679485169.Spec : Prop :=
  ∀ n, P1454826800679485169.a n = A214727 n

end A214727

/-! ## A214727.P5280371760794689758

`A000213(n)+A000073(n+1)`
-/

namespace A214727.P5280371760794689758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + A000073 (n + 1)

end

end A214727.P5280371760794689758

namespace A214727

/-- `A000213(n)+A000073(n+1)` -/
def P5280371760794689758.Spec : Prop :=
  ∀ n, P5280371760794689758.a n = A214727 n

end A214727

/-! ## A214727.P13053681957453711376

`A001590(n+1)+A020992(n)`
-/

namespace A214727.P13053681957453711376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) + A020992 n

end

end A214727.P13053681957453711376

namespace A214727

/-- `A001590(n+1)+A020992(n)` -/
def P13053681957453711376.Spec : Prop :=
  ∀ n, P13053681957453711376.a n = A214727 n

end A214727

/-! ## A214727.P1210891766742045121

`A001590(n)+A089068(n)+1`
-/

namespace A214727.P1210891766742045121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + (A089068 n + 1)

end

end A214727.P1210891766742045121

namespace A214727

/-- `A001590(n)+A089068(n)+1` -/
def P1210891766742045121.Spec : Prop :=
  ∀ n, P1210891766742045121.a n = A214727 n

end A214727

/-! ## A214727.P7012194972676076398

`A001590(n)+A000073(n+2)`
-/

namespace A214727.P7012194972676076398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + A000073 (n + 2)

end

end A214727.P7012194972676076398

namespace A214727

/-- `A001590(n)+A000073(n+2)` -/
def P7012194972676076398.Spec : Prop :=
  ∀ n, P7012194972676076398.a n = A214727 n

end A214727

/-! ## A214727.P9883015821711246914

`A081172(n)+A001590(n+2)`
-/

namespace A214727.P9883015821711246914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + A001590 (n + 2)

end

end A214727.P9883015821711246914

namespace A214727

/-- `A081172(n)+A001590(n+2)` -/
def P9883015821711246914.Spec : Prop :=
  ∀ n, P9883015821711246914.a n = A214727 n

end A214727

/-! ## A214727.P14604880243078818471

`A228826(n+2)+A074678(n)`
-/

namespace A214727.P14604880243078818471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (n + 2) + A074678 n

end

end A214727.P14604880243078818471

namespace A214727

/-- `A228826(n+2)+A074678(n)` -/
def P14604880243078818471.Spec : Prop :=
  ∀ n, P14604880243078818471.a n = A214727 n

end A214727

/-! ## A214727.P11622802139441640098

`A276658(n)+2*A000073(n)`
-/

namespace A214727.P11622802139441640098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 n + 2 * A000073 n

end

end A214727.P11622802139441640098

namespace A214727

/-- `A276658(n)+2*A000073(n)` -/
def P11622802139441640098.Spec : Prop :=
  ∀ n, P11622802139441640098.a n = A214727 n

end A214727

/-! ## A214727.P6783770570420897301

`A275778(n)+A354784(n)/2`
-/

namespace A214727.P6783770570420897301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275778 n : ℚ) + (A354784 n : ℚ) / 2

end

end A214727.P6783770570420897301

namespace A214727

/-- `A275778(n)+A354784(n)/2` -/
def P6783770570420897301.Spec : Prop :=
  ∀ n, P6783770570420897301.a n = (A214727 n : ℚ)

end A214727

/-! ## A214727.P10256656153629925803

`A001590(n)+∑[A001590(n+1)]`
-/

namespace A214727.P10256656153629925803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214727.P10256656153629925803

namespace A214727

/-- `A001590(n)+∑[A001590(n+1)]` -/
def P10256656153629925803.Spec : Prop :=
  ∀ n, P10256656153629925803.a n = A214727 n

end A214727

/-! ## A214727.P12763525809890975722

`A141036(n)+Δ[A001590(n+1)]`
-/

namespace A214727.P12763525809890975722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n + (f1 (n + 1) - f1 n)

end

end A214727.P12763525809890975722

namespace A214727

/-- `A141036(n)+Δ[A001590(n+1)]` -/
def P12763525809890975722.Spec : Prop :=
  ∀ n, P12763525809890975722.a n = A214727 n

end A214727

/-! ## A214727.P8406889979829188300

`A000213(n)+Δ[A192804(n+1)]`
-/

namespace A214727.P8406889979829188300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (f1 (n + 1) - f1 n)

end

end A214727.P8406889979829188300

namespace A214727

/-- `A000213(n)+Δ[A192804(n+1)]` -/
def P8406889979829188300.Spec : Prop :=
  ∀ n, P8406889979829188300.a n = A214727 n

end A214727

/-! ## A214727.P10644041989898554045

`A213816(2*n+1)+A001590(n)`
-/

namespace A214727.P10644041989898554045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (2 * n + 1) + A001590 n

end

end A214727.P10644041989898554045

namespace A214727

/-- `A213816(2*n+1)+A001590(n)` -/
def P10644041989898554045.Spec : Prop :=
  ∀ n, P10644041989898554045.a n = A214727 n

end A214727

/-!
# A214728: Least k such that n + (n+1) + ... + (n+k-1) is a square.

The programs for A214728, there is no canonical definition to state claims against.
-/

/-! ## A214728.P13666523379809538388

`A101160(A028310(n))+1`
-/

namespace A214728.P13666523379809538388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101160 (A028310 n).toNat + 1

end

end A214728.P13666523379809538388

/-! ## A214728.P7782087660021867166

`A101160(A065033(2*n))+1`
-/

namespace A214728.P7782087660021867166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101160 (A065033 (2 * n)).toNat + 1

end

end A214728.P7782087660021867166

/-! ## A214728.P9096121591845938489

`A101160(A123108(2*n))+1`
-/

namespace A214728.P9096121591845938489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101160 (A123108 (2 * n)).toNat + 1

end

end A214728.P9096121591845938489

/-! ## A214728.P9232114796312247480

`A101160(A000007(n)+n)+1`
-/

namespace A214728.P9232114796312247480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101160 (A000007 n + (n : ℤ)).toNat + 1

end

end A214728.P9232114796312247480

/-! ## A214728.P11641824626353337881

`A000124(n)-(A000217(n)-A101160(A028310(n)))`
-/

namespace A214728.P11641824626353337881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A000217 n - A101160 (A028310 n).toNat)

end

end A214728.P11641824626353337881

/-!
# A214729: Member m=6 of the m-family of sums b(m,n) = Sum_{k=0..n} F(k+m)*F(k), m >= 0, n >= 0, with the Fibonacci numbers F.

The programs for A214729, the canonical program `A214729.P16955039997608405851` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214729 has offset 0).

The definition of A214729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214729.P16955039997608405851

`A001654(n+3)-2*(2+(-1)^n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214729

/-- `A001654(n+3)-2*(2+(-1)^n)` -/
def P16955039997608405851.Spec : Prop :=
  ∀ n, P16955039997608405851.a n = A214729 n

theorem P16955039997608405851.correct : P16955039997608405851.Spec := by
  intro n
  simp only [A214729]

end A214729

/-! ## A214729.P2010560958012233949

`4*A027941(n)+9*A001654(n)`
-/

namespace A214729.P2010560958012233949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A027941 n + 9 * A001654 n

end

end A214729.P2010560958012233949

namespace A214729

/-- `4*A027941(n)+9*A001654(n)` -/
def P2010560958012233949.Spec : Prop :=
  ∀ n, P2010560958012233949.a n = A214729 n

end A214729

/-! ## A214729.P11044253325296464457

`∑[A292612(n+3)]`
-/

namespace A214729.P11044253325296464457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292612 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214729.P11044253325296464457

namespace A214729

/-- `∑[A292612(n+3)]` -/
def P11044253325296464457.Spec : Prop :=
  ∀ n, P11044253325296464457.a n = A214729 n

end A214729

/-! ## A214729.P7319272732166820339

`ceil(ϕ*A080144(n))`
-/

namespace A214729.P7319272732166820339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A080144 n : ℝ)⌉

end

end A214729.P7319272732166820339

namespace A214729

/-- `ceil(ϕ*A080144(n))` -/
def P7319272732166820339.Spec : Prop :=
  ∀ n, P7319272732166820339.a n = A214729 n

end A214729

/-! ## A214729.P7072789546905128451

`A180671(2*n)-a(n-1)` with `a(0)=0`
-/

namespace A214729.P7072789546905128451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A180671 (2 * n) - a (n - 1)

end

end A214729.P7072789546905128451

namespace A214729

/-- `A180671(2*n)-a(n-1)` -/
def P7072789546905128451.Spec : Prop :=
  ∀ n, P7072789546905128451.a n = A214729 n

end A214729

/-! ## A214729.P9734346329651610210

`∑[A338225(n+1)]-2*char[2*n]`
-/

namespace A214729.P9734346329651610210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338225 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((2 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A214729.P9734346329651610210

namespace A214729

/-- `∑[A338225(n+1)]-2*char[2*n]` -/
def P9734346329651610210.Spec : Prop :=
  ∀ n, P9734346329651610210.a n = A214729 n

end A214729

/-! ## A214729.P12390034320885304299

`∑[A020701(2*n+1)-a(n-1)]` with `a(0)=0`
-/

namespace A214729.P12390034320885304299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A020701 (2 * n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214729.P12390034320885304299

namespace A214729

/-- `∑[A020701(2*n+1)-a(n-1)]` -/
def P12390034320885304299.Spec : Prop :=
  ∀ n, P12390034320885304299.a n = A214729 n

end A214729

/-! ## A214729.P16229605236568735811

`A080144(n)+A080143(n)`
-/

namespace A214729.P16229605236568735811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080144 n + A080143 n

end

end A214729.P16229605236568735811

namespace A214729

/-- `A080144(n)+A080143(n)` -/
def P16229605236568735811.Spec : Prop :=
  ∀ n, P16229605236568735811.a n = A214729 n

end A214729

/-! ## A214729.P13019636716714235864

`A080144(n)+∑[A192920(n)]`
-/

namespace A214729.P13019636716714235864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080144 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214729.P13019636716714235864

namespace A214729

/-- `A080144(n)+∑[A192920(n)]` -/
def P13019636716714235864.Spec : Prop :=
  ∀ n, P13019636716714235864.a n = A214729 n

end A214729

/-! ## A214729.P11466568411712303868

`A080097(n)+2*A080143(n)`
-/

namespace A214729.P11466568411712303868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080097 n + 2 * A080143 n

end

end A214729.P11466568411712303868

namespace A214729

/-- `A080097(n)+2*A080143(n)` -/
def P11466568411712303868.Spec : Prop :=
  ∀ n, P11466568411712303868.a n = A214729 n

end A214729

/-! ## A214729.P8926554225790529690

`2*A080144(n)-A080097(n)`
-/

namespace A214729.P8926554225790529690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080144 n - A080097 n

end

end A214729.P8926554225790529690

namespace A214729

/-- `2*A080144(n)-A080097(n)` -/
def P8926554225790529690.Spec : Prop :=
  ∀ n, P8926554225790529690.a n = A214729 n

end A214729

/-! ## A214729.P7937440067853478140

`∑[A000045(n+6)*A000045(n)]`
-/

namespace A214729.P7937440067853478140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 6) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214729.P7937440067853478140

namespace A214729

/-- `∑[A000045(n+6)*A000045(n)]` -/
def P7937440067853478140.Spec : Prop :=
  ∀ n, P7937440067853478140.a n = A214729 n

end A214729

/-! ## A214729.P16344890228155527574

`A059840(n+2)+A080144(n)+A080097(n)`
-/

namespace A214729.P16344890228155527574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (n + 2) + (A080144 n + A080097 n)

end

end A214729.P16344890228155527574

namespace A214729

/-- `A059840(n+2)+A080144(n)+A080097(n)` -/
def P16344890228155527574.Spec : Prop :=
  ∀ n, P16344890228155527574.a n = A214729 n

end A214729

/-!
# A214731: a(n) = n^3 - 2*n^2 - 1.

The programs for A214731, the canonical program `A214731.P11100101771334017780` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214731 has offset 1).

The definition of A214731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3-2*(n+1)²-1` (program `A214731.P11100101771334017780`, by `A214731.P11100101771334017780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214731.P13866820752088088308

`(n+1)²*(n-1)-1`
-/

namespace A214731.P13866820752088088308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * ((n : ℤ) - 1) - 1

end

end A214731.P13866820752088088308

namespace A214731

/-- `(n+1)²*(n-1)-1` -/
def P13866820752088088308.Spec : Prop :=
  ∀ n, P13866820752088088308.a n = A214731 (n + 1)

theorem P13866820752088088308.correct : P13866820752088088308.Spec := by
  intro n
  simp only [A214731, Nat.add_sub_cancel, A214731.P13866820752088088308.a, A214731.P11100101771334017780.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A214731

/-! ## A214731.P11100101771334017780

`(n+1)^3-2*(n+1)²-1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A214731

/-- `(n+1)^3-2*(n+1)²-1` -/
def P11100101771334017780.Spec : Prop :=
  ∀ n, P11100101771334017780.a n = A214731 (n + 1)

theorem P11100101771334017780.correct : P11100101771334017780.Spec := by
  intro n
  simp only [A214731, Nat.add_sub_cancel]

end A214731

/-! ## A214731.P11275308928629822482

`floor(lcm(n+1, n²)-(n+ϕ))`
-/

namespace A214731.P11275308928629822482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (n + 1) (n ^ 2) : ℝ) - ((n : ℝ) + Real.goldenRatio)⌋

end

end A214731.P11275308928629822482

namespace A214731

/-- `floor(lcm(n+1, n²)-(n+ϕ))` -/
def P11275308928629822482.Spec : Prop :=
  ∀ n, P11275308928629822482.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P7193484934952909595

`∑[∑[a(n-1)+6]]` with `a(0)=-2, a(1)=3, a(2)=8`
-/

namespace A214731.P7193484934952909595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2, 3, 8] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214731.P7193484934952909595

namespace A214731

/-- `∑[∑[a(n-1)+6]]` -/
def P7193484934952909595.Spec : Prop :=
  ∀ n, P7193484934952909595.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P16379989332122987133

`ceil((n+1)/acot(n²)-(n+3))`
-/

namespace A214731.P16379989332122987133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n ^ 2 : ℝ) - (n + 3 : ℝ)⌉

end

end A214731.P16379989332122987133

namespace A214731

/-- `ceil((n+1)/acot(n²)-(n+3))` -/
def P16379989332122987133.Spec : Prop :=
  ∀ n, P16379989332122987133.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P5709088165880714195

`floor(n/Δ[atan(n)]-2*(n+1))`
-/

namespace A214731.P5709088165880714195
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (f1 (n + 1) - f1 n) - (2 * (n + 1) : ℝ)⌋

end

end A214731.P5709088165880714195

namespace A214731

/-- `floor(n/Δ[atan(n)]-2*(n+1))` -/
def P5709088165880714195.Spec : Prop :=
  ∀ n, P5709088165880714195.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P5921425828552536401

`round(n/Δ[atan(n)]-2*(n+1))`
-/

namespace A214731.P5921425828552536401
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (f1 (n + 1) - f1 n) - (2 * (n + 1) : ℝ))

end

end A214731.P5921425828552536401

namespace A214731

/-- `round(n/Δ[atan(n)]-2*(n+1))` -/
def P5921425828552536401.Spec : Prop :=
  ∀ n, P5921425828552536401.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P4227838158870192466

`floor(2*n/acot(∑[n])-(n+2))`
-/

namespace A214731.P4227838158870192466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) - (n + 2 : ℝ)⌋

end

end A214731.P4227838158870192466

namespace A214731

/-- `floor(2*n/acot(∑[n])-(n+2))` -/
def P4227838158870192466.Spec : Prop :=
  ∀ n, P4227838158870192466.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P7485491854740508846

`floor(n^3-∑[a(n-1)-2])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A214731.P7485491854740508846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214731.P7485491854740508846

namespace A214731

/-- `floor(n^3-∑[a(n-1)-2])` -/
def P7485491854740508846.Spec : Prop :=
  ∀ n, P7485491854740508846.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P10802078603830979864

`xor(-1, -((n-1)*∑[2*n+1]))`
-/

namespace A214731.P10802078603830979864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)))

end

end A214731.P10802078603830979864

namespace A214731

/-- `xor(-1, -((n-1)*∑[2*n+1]))` -/
def P10802078603830979864.Spec : Prop :=
  ∀ n, P10802078603830979864.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P13416873002997093240

`(n+2)*(lcm(n, n-1)+(n-2)/(n+2))`
-/

namespace A214731.P13416873002997093240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) + ((n : ℤ) - 2 : ℚ) / (n + 2 : ℚ))

end

end A214731.P13416873002997093240

namespace A214731

/-- `(n+2)*(lcm(n, n-1)+(n-2)/(n+2))` -/
def P13416873002997093240.Spec : Prop :=
  ∀ n, P13416873002997093240.a n = (A214731 (n + 1) : ℚ)

end A214731

/-! ## A214731.P9487393569133163532

`∑[A005918(n)-(n+3)]`
-/

namespace A214731.P9487393569133163532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214731.P9487393569133163532

namespace A214731

/-- `∑[A005918(n)-(n+3)]` -/
def P9487393569133163532.Spec : Prop :=
  ∀ n, P9487393569133163532.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P13001607161900953715

`∑[∑[6*n-2]-A004273(n)]`
-/

namespace A214731.P13001607161900953715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214731.P13001607161900953715

namespace A214731

/-- `∑[∑[6*n-2]-A004273(n)]` -/
def P13001607161900953715.Spec : Prop :=
  ∀ n, P13001607161900953715.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P9666912095830773093

`∑[A077588(n)+or(1, 2*n-3)]`
-/

namespace A214731.P9666912095830773093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 n + Int.lor 1 ((2 * n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214731.P9666912095830773093

namespace A214731

/-- `∑[A077588(n)+or(1, 2*n-3)]` -/
def P9666912095830773093.Spec : Prop :=
  ∀ n, P9666912095830773093.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P13721683760168151503

`-(n²*A001478(n+1)+n+2)`
-/

namespace A214731.P13721683760168151503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n ^ 2 : ℤ) * A001478 (n + 1) + (n + 2 : ℤ))

end

end A214731.P13721683760168151503

namespace A214731

/-- `-(n²*A001478(n+1)+n+2)` -/
def P13721683760168151503.Spec : Prop :=
  ∀ n, P13721683760168151503.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P9392483791118586403

`∑[n*(3*n+1)-A004277(n)-1]`
-/

namespace A214731.P9392483791118586403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (3 * n + 1) : ℤ) - A004277 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214731.P9392483791118586403

namespace A214731

/-- `∑[n*(3*n+1)-A004277(n)-1]` -/
def P9392483791118586403.Spec : Prop :=
  ∀ n, P9392483791118586403.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P16733273654803152284

`-((n+1-2*n)*A000290(n+1)+1)`
-/

namespace A214731.P16733273654803152284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n + 1 : ℤ) - (2 * n : ℤ)) * A000290 (n + 1) + 1)

end

end A214731.P16733273654803152284

namespace A214731

/-- `-((n+1-2*n)*A000290(n+1)+1)` -/
def P16733273654803152284.Spec : Prop :=
  ∀ n, P16733273654803152284.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P6734122946710196241

`∑[A004538(n)-A008574(n)]`
-/

namespace A214731.P6734122946710196241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 n - A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214731.P6734122946710196241

namespace A214731

/-- `∑[A004538(n)-A008574(n)]` -/
def P6734122946710196241.Spec : Prop :=
  ∀ n, P6734122946710196241.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P14642238420985323386

`∑[A005899(n)-A027688(n)]`
-/

namespace A214731.P14642238420985323386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n - A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214731.P14642238420985323386

namespace A214731

/-- `∑[A005899(n)-A027688(n)]` -/
def P14642238420985323386.Spec : Prop :=
  ∀ n, P14642238420985323386.a n = A214731 (n + 1)

end A214731

/-! ## A214731.P6859657338512267298

`∑[A049450(n)-A054977(n)]`
-/

namespace A214731.P6859657338512267298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214731.P6859657338512267298

namespace A214731

/-- `∑[A049450(n)-A054977(n)]` -/
def P6859657338512267298.Spec : Prop :=
  ∀ n, P6859657338512267298.a n = A214731 (n + 1)

end A214731

/-!
# A214732: a(n) = 25*n^2 + 15*n + 1021.

The programs for A214732, the canonical program `A214732.P15126367615606309258` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214732 has offset 0).

The definition of A214732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214732.P15126367615606309258

`A158060(A202018(n))-(10*n+5)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214732

/-- `A158060(A202018(n))-(10*n+5)` -/
def P15126367615606309258.Spec : Prop :=
  ∀ n, P15126367615606309258.a n = A214732 n

theorem P15126367615606309258.correct : P15126367615606309258.Spec := by
  intro n
  simp only [A214732]

end A214732

/-! ## A214732.P17466115013049133469

`A008607(A202018(n))-A017317(n)`
-/

namespace A214732.P17466115013049133469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (A202018 n).toNat - A017317 n

end

end A214732.P17466115013049133469

namespace A214732

/-- `A008607(A202018(n))-A017317(n)` -/
def P17466115013049133469.Spec : Prop :=
  ∀ n, P17466115013049133469.a n = A214732 n

end A214732

/-! ## A214732.P10762077652857432314

`abs(A017329(n)-A158060(A202018(n)))`
-/

namespace A214732.P10762077652857432314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017329 n - A158060 (A202018 n).toNat|

end

end A214732.P10762077652857432314

namespace A214732

/-- `abs(A017329(n)-A158060(A202018(n)))` -/
def P10762077652857432314.Spec : Prop :=
  ∀ n, P10762077652857432314.a n = A214732 n

end A214732

/-! ## A214732.P3577354482279687657

`A008607(record[A118124(n)])-A017317(n)`
-/

namespace A214732.P3577354482279687657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A017317 n

end

end A214732.P3577354482279687657

namespace A214732

/-- `A008607(record[A118124(n)])-A017317(n)` -/
def P3577354482279687657.Spec : Prop :=
  ∀ n, P3577354482279687657.a n = A214732 n

end A214732

/-! ## A214732.P12002355169834534978

`A158060(record[A118124(n)])-A017329(n)`
-/

namespace A214732.P12002355169834534978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A017329 n

end

end A214732.P12002355169834534978

namespace A214732

/-- `A158060(record[A118124(n)])-A017329(n)` -/
def P12002355169834534978.Spec : Prop :=
  ∀ n, P12002355169834534978.a n = A214732 n

end A214732

/-!
# A214733: a(n) = -a(n-1) - 3*a(n-2) with n>1, a(0)=0, a(1)=1.

The programs for A214733, the canonical program `A214733.P712536137107246666` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214733 has offset 0).

The definition of A214733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)-3*a(n-2)` (program `A214733.P712536137107246666`, by `A214733.P712536137107246666.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214733.P712536137107246666

`-a(n-1)-3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A214733

/-- `-a(n-1)-3*a(n-2)` -/
def P712536137107246666.Spec : Prop :=
  ∀ n, P712536137107246666.a n = A214733 n

theorem P712536137107246666.correct : P712536137107246666.Spec := by
  intro n
  simp only [A214733]

end A214733

/-! ## A214733.P8167743178618368098

`ogf(x/(1+x+3x^2))`
-/

namespace A214733.P8167743178618368098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 1, 3] n

end

end A214733.P8167743178618368098

namespace A214733

/-- `ogf(x/(1+x+3x^2))` -/
def P8167743178618368098.Spec : Prop :=
  ∀ n, P8167743178618368098.a n = A214733 n

end A214733

/-! ## A214733.P2075012815238802329

`Δ[1-3*a(n-2)-a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A214733.P2075012815238802329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - 3 * f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214733.P2075012815238802329

namespace A214733

/-- `Δ[1-3*a(n-2)-a(n-1)]` -/
def P2075012815238802329.Spec : Prop :=
  ∀ n, P2075012815238802329.a n = A214733 n

end A214733

/-! ## A214733.P6778708783181398900

`3*a(n-3)-2*a(n-2)` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A214733.P6778708783181398900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n a =>
  3 * a (n - 3) - 2 * a (n - 2)

end

end A214733.P6778708783181398900

namespace A214733

/-- `3*a(n-3)-2*a(n-2)` -/
def P6778708783181398900.Spec : Prop :=
  ∀ n, P6778708783181398900.a n = A214733 n

end A214733

/-! ## A214733.P150453799983694907

`a(n-2)/(2/3-1)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A214733.P150453799983694907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) / ((2 : ℚ) / 3 - 1) - a (n - 1)

end

end A214733.P150453799983694907

namespace A214733

/-- `a(n-2)/(2/3-1)-a(n-1)` -/
def P150453799983694907.Spec : Prop :=
  ∀ n, P150453799983694907.a n = (A214733 n : ℚ)

end A214733

/-! ## A214733.P2729032530397446531

`A110523(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A214733.P2729032530397446531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A110523 (n - 1) - a (n - 1)

end

end A214733.P2729032530397446531

namespace A214733

/-- `A110523(n-1)-a(n-1)` -/
def P2729032530397446531.Spec : Prop :=
  ∀ n, P2729032530397446531.a n = A214733 n

end A214733

/-! ## A214733.P1902302915243049230

`A062157(n)*A106852(A004273(n)-n)`
-/

namespace A214733.P1902302915243049230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A106852 (A004273 n - (n : ℤ)).toNat

end

end A214733.P1902302915243049230

namespace A214733

/-- `A062157(n)*A106852(A004273(n)-n)` -/
def P1902302915243049230.Spec : Prop :=
  ∀ n, P1902302915243049230.a n = A214733 n

end A214733

/-!
# A214735: Primes such that no pairwise sum is a square.

The programs for A214735, there is no canonical definition to state claims against.
-/

/-! ## A214735.P1055508381177879069

`record[and(A096246(n+1), A210757(n+1))]`
-/

namespace A214735.P1055508381177879069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096246 (n + 1)) (A210757 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214735.P1055508381177879069

/-! ## A214735.P15085873223116295039

`p?[∑[A001221(A152604(n+1))]]`
-/

namespace A214735.P15085873223116295039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A152604 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214735.P15085873223116295039

/-! ## A214735.P3716388618793331312

`A000040(eq[A085141(n), A112022(n)])`
-/

namespace A214735.P3716388618793331312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A214735.P3716388618793331312

/-! ## A214735.P17635667911048039360

`∩[A094480(n+1), A367600(n+1)]`
-/

namespace A214735.P17635667911048039360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214735.P17635667911048039360

/-! ## A214735.P5133799141179720587

`∩[A094480(n+1), A367611(n+1)]`
-/

namespace A214735.P5133799141179720587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214735.P5133799141179720587

/-!
# A214736: Least m>0 such that n-m divides n+1+m.

The programs for A214736, there is no canonical definition to state claims against.
-/

/-! ## A214736.P11423563618509958068

`A060685(n+2)-(n+3)`
-/

namespace A214736.P11423563618509958068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060685 (n + 2) - (n + 3 : ℤ)

end

end A214736.P11423563618509958068

/-! ## A214736.P5207568742953020736

`n+2-A184726(n+4)`
-/

namespace A214736.P5207568742953020736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A184726 (n + 4)

end

end A214736.P5207568742953020736

/-! ## A214736.P11610508888781582206

`n+1-A089196(2*(n+2))`
-/

namespace A214736.P11610508888781582206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A089196 (2 * (n + 2))

end

end A214736.P11610508888781582206

/-! ## A214736.P15494694113236427267

`∑[Δ[A075861(2*n+3)]/2]`
-/

namespace A214736.P15494694113236427267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (2 * n + 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214736.P15494694113236427267

/-! ## A214736.P10161674751342884697

`3*(n+2)-A166250(2*n+5)`
-/

namespace A214736.P10161674751342884697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 2) : ℤ) - A166250 (2 * n + 5)

end

end A214736.P10161674751342884697

/-! ## A214736.P16624823933695627691

`2-A032742(2*n+5)+n`
-/

namespace A214736.P16624823933695627691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A032742 (2 * n + 5) + (n : ℤ)

end

end A214736.P16624823933695627691

/-! ## A214736.P15258333849555999551

`n-A093803(2*n+5)+2`
-/

namespace A214736.P15258333849555999551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A093803 (2 * n + 5) + 2

end

end A214736.P15258333849555999551

/-! ## A214736.P3282654518390440412

`n+2-A108738(2*n+5)`
-/

namespace A214736.P3282654518390440412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A108738 (2 * n + 5)

end

end A214736.P3282654518390440412

/-! ## A214736.P8851937970892574973

`A060681(2*n+5)-(n+3)`
-/

namespace A214736.P8851937970892574973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (2 * n + 5) - (n + 3 : ℤ)

end

end A214736.P8851937970892574973

/-! ## A214736.P6556126529921119312

`A108514(2*n+5)-(n+3)`
-/

namespace A214736.P6556126529921119312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108514 (2 * n + 5) - (n + 3 : ℤ)

end

end A214736.P6556126529921119312

/-! ## A214736.P9622156493498635914

`n+2-A054576(4*n+10)`
-/

namespace A214736.P9622156493498635914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A054576 (4 * n + 10)

end

end A214736.P9622156493498635914

/-! ## A214736.P8281368304555970559

`A214918(2*(n+2))/2`
-/

namespace A214736.P8281368304555970559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214918 (2 * (n + 2)) : ℚ) / 2

end

end A214736.P8281368304555970559

/-!
# A214739: Least m>0 such that n-m divides 2^(n-1)+m.

The programs for A214739, there is no canonical definition to state claims against.
-/

/-! ## A214739.P9697104920234331585

`A329501(A117575(n)+∑[2^floor(n/3)])`
-/

namespace A214739.P9697104920234331585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329501 (SequenceMachineLib.roundAway ((A117575 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A214739.P9697104920234331585

/-!
# A214743: Least m>0 such that n-m divides prime(n)+prime(m).

The programs for A214743, there is no canonical definition to state claims against.
-/

/-! ## A214743.P10671828551471012138

`dr(A004736(record[A340368(n+1)]))`
-/

namespace A214743.P10671828551471012138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A214743.P10671828551471012138

/-! ## A214743.P14483415315882616249

`A358371(A048675(n+4)^A043562(n))`
-/

namespace A214743.P14483415315882616249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (SequenceMachineLib.roundAway ((A048675 (n + 4) : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A214743.P14483415315882616249

/-! ## A214743.P5558362806312881482

`A277892(A077168(n+2)+1)`
-/

namespace A214743.P5558362806312881482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (A077168 (n + 2) + 1).toNat

end

end A214743.P5558362806312881482

/-! ## A214743.P15344533243167691358

`A087117(2*A306853(n+1))`
-/

namespace A214743.P15344533243167691358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (2 * A306853 (n + 1)).toNat

end

end A214743.P15344533243167691358

/-! ## A214743.P13341481568201896168

`A363943(3*A067187(n+1))`
-/

namespace A214743.P13341481568201896168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363943 (3 * A067187 (n + 1)).toNat

end

end A214743.P13341481568201896168

/-!
# A214745: Least m>0 such that n-m divides 2*n-1+m.

The programs for A214745, there is no canonical definition to state claims against.
-/

/-! ## A214745.P4668506727502207229

`2-(A355319(3*n+5)-n)`
-/

namespace A214745.P4668506727502207229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A355319 (3 * n + 5) - (n : ℤ))

end

end A214745.P4668506727502207229

/-! ## A214745.P10030838042526359190

`n-A023444(A355319(3*n+5))`
-/

namespace A214745.P10030838042526359190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023444 (A355319 (3 * n + 5)).toNat

end

end A214745.P10030838042526359190

/-! ## A214745.P7827922913097905630

`A004736(A355319(3*n+5)+A000217(n))`
-/

namespace A214745.P7827922913097905630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A355319 (3 * n + 5) + A000217 n).toNat

end

end A214745.P7827922913097905630

/-! ## A214745.P7796987439539320772

`2-A355249(3*n+5)+n`
-/

namespace A214745.P7796987439539320772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A355249 (3 * n + 5) + (n : ℤ)

end

end A214745.P7796987439539320772

/-! ## A214745.P12189958283827205329

`A067836(A095661(n))%A029730(n+3)`
-/

namespace A214745.P12189958283827205329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067836 (A095661 n).toNat) (A029730 (n + 3))

end

end A214745.P12189958283827205329

/-!
# A214748: Least m>0 such that n-m divides (2*n-1)!!+m.

The programs for A214748, there is no canonical definition to state claims against.
-/

/-! ## A214748.P11207822719805016956

`2*A060681(n+2)-A000265(n+2)`
-/

namespace A214748.P11207822719805016956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060681 (n + 2) - A000265 (n + 2)

end

end A214748.P11207822719805016956

/-! ## A214748.P517107405805964053

`A004277(A060681(n+2))-A000265(n+2)`
-/

namespace A214748.P517107405805964053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A060681 (n + 2)).toNat - A000265 (n + 2)

end

end A214748.P517107405805964053

/-!
# A214752: Primes in the sequence of tribonacci numbers starting 1, 1, 0 (A081172).

The programs for A214752, there is no canonical definition to state claims against.
-/

/-! ## A214752.P4454656125773116060

`A081172(A235396(n+1))`
-/

namespace A214752.P4454656125773116060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (A235396 (n + 1)).toNat

end

end A214752.P4454656125773116060

/-! ## A214752.P6561537985615748873

`p?[2*a(n-1)-a(n-4)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A214752.P6561537985615748873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0, 2] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214752.P6561537985615748873

/-! ## A214752.P13889808247115314297

`p?[a(n-1)+a(n-2)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A214752.P13889808247115314297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214752.P13889808247115314297

/-!
# A214753: Number T(n,k) of solid standard Young tableaux of n cells and height = k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A214753, there is no canonical definition to state claims against.
-/

/-! ## A214753.P15562258360453703844

`A122542(n)*A155586(A055645(n))`
-/

namespace A214753.P15562258360453703844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n * A155586 (A055645 n).toNat

end

end A214753.P15562258360453703844

/-! ## A214753.P18343998879195051166

`A162351(A065941(n)*A109971(n))`
-/

namespace A214753.P18343998879195051166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (A065941 n * A109971 n).toNat

end

end A214753.P18343998879195051166

/-! ## A214753.P7577699960384692720

`A006530(A155586(n)!)*A122542(n)`
-/

namespace A214753.P7577699960384692720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A155586 n).toNat) * A122542 n

end

end A214753.P7577699960384692720

/-! ## A214753.P11433867463525212229

`A295884(A019460(n))+A276544(n+1)`
-/

namespace A214753.P11433867463525212229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (A019460 n).toNat + A276544 (n + 1)

end

end A214753.P11433867463525212229

/-! ## A214753.P16125503662519713762

`A126302(A268434(n))`
-/

namespace A214753.P16125503662519713762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126302 (A268434 n).toNat

end

end A214753.P16125503662519713762

/-!
# A214754: Primes that can be written in binary representation as a concatenation of odd primes.

The programs for A214754, there is no canonical definition to state claims against.
-/

/-! ## A214754.P5305305458280194559

`A232085(∑[A035214(A037019(n+1))])`
-/

namespace A214754.P5305305458280194559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A037019 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232085 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214754.P5305305458280194559

/-! ## A214754.P4943727420238831593

`∩[A090423(n+1), A335512(n+1)]`
-/

namespace A214754.P4943727420238831593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214754.P4943727420238831593

/-! ## A214754.P1265225501135638157

`∩[A232085(n+1), A335512(n+1)]`
-/

namespace A214754.P1265225501135638157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214754.P1265225501135638157

/-! ## A214754.P13984097556056938996

`p?[A335512(A099474(n+1))]`
-/

namespace A214754.P13984097556056938996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335512 (A099474 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214754.P13984097556056938996

/-! ## A214754.P451355490200786556

`A090423(A070939(A143444(A257113(n+2))))`
-/

namespace A214754.P451355490200786556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090423 (A070939 (A143444 (A257113 (n + 2)).toNat).toNat).toNat

end

end A214754.P451355490200786556

/-!
# A214755: Primes formed by concatenating odd primes.

The programs for A214755, there is no canonical definition to state claims against.
-/

/-! ## A214755.P10471645055098664620

`A019549(lt[A232941(n+1), A358797(n+1)])`
-/

namespace A214755.P10471645055098664620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019549 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214755.P10471645055098664620

/-! ## A214755.P17005387303988134262

`∩[A053028(n+1), A147627(n+1)]`
-/

namespace A214755.P17005387303988134262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214755.P17005387303988134262

/-! ## A214755.P6119092628324568219

`∩[A105877(n+1), A147627(n+1)]`
-/

namespace A214755.P6119092628324568219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214755.P6119092628324568219

/-! ## A214755.P7297582001489427293

`∩[A122487(n+1), A147627(n+1)]`
-/

namespace A214755.P7297582001489427293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214755.P7297582001489427293

/-! ## A214755.P9305058442145843597

`∩[A158405(A000217(2*n+1)), A227919(n+3)]`
-/

namespace A214755.P9305058442145843597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (A000217 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214755.P9305058442145843597

/-!
# A214756: a(n) = largest Ramanujan prime R_k in A104272 that is <= A002386(n).

The programs for A214756, there is no canonical definition to state claims against.
-/

/-! ## A214756.P6079638148587071975

`A000040(A214924(n+1))`
-/

namespace A214756.P6079638148587071975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A214924 (n + 1)).toNat

end

end A214756.P6079638148587071975

/-! ## A214756.P3120072510497420220

`A008578(A214924(n+1)+1)`
-/

namespace A214756.P3120072510497420220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A214924 (n + 1) + 1).toNat

end

end A214756.P3120072510497420220

/-! ## A214756.P5625584419193440998

`A073846(2*A214924(n+1))`
-/

namespace A214756.P5625584419193440998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A214924 (n + 1)).toNat

end

end A214756.P5625584419193440998

/-! ## A214756.P12261318481101692455

`A207790(2*A214924(n+1))`
-/

namespace A214756.P12261318481101692455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A214924 (n + 1)).toNat

end

end A214756.P12261318481101692455

/-! ## A214756.P5405531552161102185

`A000040(A214925(n+1)-A214926(n+1))`
-/

namespace A214756.P5405531552161102185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A214925 (n + 1) - A214926 (n + 1)).toNat

end

end A214756.P5405531552161102185

/-!
# A214757: a(n) = smallest Ramanujan prime R_k in A104272 that is >= A000101(n).

The programs for A214757, there is no canonical definition to state claims against.
-/

/-! ## A214757.P2677815271458548935

`A000040(A214925(n+1))`
-/

namespace A214757.P2677815271458548935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A214925 (n + 1)).toNat

end

end A214757.P2677815271458548935

/-! ## A214757.P3710827369540629148

`A008578(A214925(n+1)+1)`
-/

namespace A214757.P3710827369540629148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A214925 (n + 1) + 1).toNat

end

end A214757.P3710827369540629148

/-! ## A214757.P4450519033226735080

`A045319(A214925(n+1)-1)`
-/

namespace A214757.P4450519033226735080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A214925 (n + 1) - 1).toNat

end

end A214757.P4450519033226735080

/-! ## A214757.P5798688676721314145

`A046022(A214925(n+1)+2)`
-/

namespace A214757.P5798688676721314145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A214925 (n + 1) + 2).toNat

end

end A214757.P5798688676721314145

/-! ## A214757.P13725858087965856011

`A065091(A214925(n+1)-1)`
-/

namespace A214757.P13725858087965856011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A214925 (n + 1) - 1).toNat

end

end A214757.P13725858087965856011

/-!
# A214758: Carmichael numbers divisible by a smaller Carmichael number.

The programs for A214758, there is no canonical definition to state claims against.
-/

/-! ## A214758.P12936399710715889672

`A141711(A053030(n+1)^A011973(3*(n+1)))`
-/

namespace A214758.P12936399710715889672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141711 (SequenceMachineLib.roundAway ((A053030 (n + 1) : ℚ) ^ (A011973 (3 * (n + 1)) : ℤ))).toNat

end

end A214758.P12936399710715889672

/-!
# A214759: E.g.f. satisfies: A(x) = x - log(1-A(x))*log(1+A(x)).

The programs for A214759, there is no canonical definition to state claims against.
-/

/-! ## A214759.P6160291344238088595

`∑[A187318(A360236(n))]`
-/

namespace A214759.P6160291344238088595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 (A360236 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214759.P6160291344238088595

/-!
# A214760: G.f. satisfies: A(x) = 1/A(-x*A(x)^3).

The programs for A214760, there is no canonical definition to state claims against.
-/

/-! ## A214760.P16112091119826073137

`A004396(∑[A153297(n)])`
-/

namespace A214760.P16112091119826073137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214760.P16112091119826073137

/-! ## A214760.P12437334497128310278

`A006369(∑[A153297(n)])`
-/

namespace A214760.P12437334497128310278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214760.P12437334497128310278

/-!
# A214761: G.f. satisfies: A(x) = 1/A(-x*A(x)).

The programs for A214761, there is no canonical definition to state claims against.
-/

/-! ## A214761.P6948327354261788134

`A083219(2^n*A181600(n))`
-/

namespace A214761.P6948327354261788134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 ((2 ^ n : ℤ) * A181600 n).toNat

end

end A214761.P6948327354261788134

/-! ## A214761.P6189602100920059625

`A285869(2^n*A181600(n))`
-/

namespace A214761.P6189602100920059625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 ((2 ^ n : ℤ) * A181600 n).toNat

end

end A214761.P6189602100920059625

/-! ## A214761.P883190344348969302

`and(A110654(A124820(n)), A157823(n))`
-/

namespace A214761.P883190344348969302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110654 (A124820 n).toNat) (A157823 n)

end

end A214761.P883190344348969302

/-! ## A214761.P13792846608525950129

`A004525(A000079(n)*A293643(n+2))`
-/

namespace A214761.P13792846608525950129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000079 n * A293643 (n + 2)).toNat

end

end A214761.P13792846608525950129

/-!
# A214762: G.f. satisfies: A(x) = 1/A(-x*A(x)^2).

The programs for A214762, there is no canonical definition to state claims against.
-/

/-! ## A214762.P11367478351054208821

`A230257(∏[2/(n+1)+4]/2-2*4^n+13)`
-/

namespace A214762.P11367478351054208821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230257 (SequenceMachineLib.roundAway ((∏ j ∈ Finset.range (n + 1), f1 j) / 2 - (2 * 4 ^ n : ℚ) + 13)).toNat

end

end A214762.P11367478351054208821

/-! ## A214762.P10554085907524837253

`A110277(A018004(n))`
-/

namespace A214762.P10554085907524837253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110277 (A018004 n).toNat

end

end A214762.P10554085907524837253

/-!
# A214763: G.f. satisfies: A(x) = 1/A(-x*A(x)^3).

The programs for A214763, there is no canonical definition to state claims against.
-/

/-! ## A214763.P9511228456267976183

`A000079(n)*A073188(A179489(n+1))`
-/

namespace A214763.P9511228456267976183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A073188 (A179489 (n + 1)).toNat

end

end A214763.P9511228456267976183

/-! ## A214763.P13640122967034199578

`A073188(A179489(n+1))*A234590(n)`
-/

namespace A214763.P13640122967034199578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A179489 (n + 1)).toNat * A234590 n

end

end A214763.P13640122967034199578

/-! ## A214763.P15061867480791861287

`A073188(A179489(n+1))*A180210(n+1)`
-/

namespace A214763.P15061867480791861287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A179489 (n + 1)).toNat * A180210 (n + 1)

end

end A214763.P15061867480791861287

/-!
# A214764: G.f. satisfies: A(x) = 1/A(-x*A(x)^4).

The programs for A214764, there is no canonical definition to state claims against.
-/

/-! ## A214764.P11357377039796675530

`A127886(C(4*n, n)/(3*n+1))+A004981(n)`
-/

namespace A214764.P11357377039796675530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127886 (SequenceMachineLib.roundAway ((Nat.choose (4 * n) n : ℚ) / (3 * n + 1 : ℚ))).toNat + A004981 n

end

end A214764.P11357377039796675530

/-! ## A214764.P10294655728432865758

`A067169(A002104(n))+A004981(n)`
-/

namespace A214764.P10294655728432865758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067169 ((A002104 n).toNat + 11) + A004981 n

end

end A214764.P10294655728432865758

/-!
# A214765: G.f. satisfies: A(x) = 1/A(-x*A(x)^5).

The programs for A214765, there is no canonical definition to state claims against.
-/

/-! ## A214765.P13236154572656009349

`A026741(A000124(n)*A152318(n+1))`
-/

namespace A214765.P13236154572656009349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000124 n * A152318 (n + 1)).toNat

end

end A214765.P13236154572656009349

/-! ## A214765.P17492598719991952789

`A026741(A000124(n)*A152325(n+1))`
-/

namespace A214765.P17492598719991952789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000124 n * A152325 (n + 1)).toNat

end

end A214765.P17492598719991952789

/-!
# A214766: G.f. satisfies: A(x) = 1/A(-x*A(x)^6).

The programs for A214766, there is no canonical definition to state claims against.
-/

/-! ## A214766.P12377932950369671263

`A060384(A086594(n))`
-/

namespace A214766.P12377932950369671263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A086594 n).toNat

end

end A214766.P12377932950369671263

/-!
# A214767: G.f. satisfies: A(x) = 1/A(-x*A(x)^7).

The programs for A214767, there is no canonical definition to state claims against.
-/

/-! ## A214767.P12847240669495112383

`A000010(2^(n-1)*A192088(n+2))`
-/

namespace A214767.P12847240669495112383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A192088 (n + 2) : ℚ))).toNat

end

end A214767.P12847240669495112383

/-!
# A214768: G.f. satisfies: A(x) = 1/A(-x*A(x)^8).

The programs for A214768, there is no canonical definition to state claims against.
-/

/-! ## A214768.P3496661399611681683

`A008343(or(n, A124548(n)))`
-/

namespace A214768.P3496661399611681683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008343 (Int.lor (n : ℤ) (A124548 n)).toNat

end

end A214768.P3496661399611681683

/-!
# A214769: G.f. satisfies: A(x) = 1/A(-x*A(x)^9).

The programs for A214769, there is no canonical definition to state claims against.
-/

/-! ## A214769.P17827507878924782347

`A005374(A152280(n+1))+1`
-/

namespace A214769.P17827507878924782347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A152280 (n + 1)).toNat + 1

end

end A214769.P17827507878924782347

/-!
# A214770: E.g.f. satisfies: A(x) = x + sin(A(x))*sinh(A(x)).

The programs for A214770, there is no canonical definition to state claims against.
-/

/-! ## A214770.P17821906004823580193

`n!*C(2*n, n)-A130239(A051115(n))`
-/

namespace A214770.P17821906004823580193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.choose (2 * n) n : ℤ) - A130239 (A051115 n).toNat

end

end A214770.P17821906004823580193

/-! ## A214770.P17231986619511858074

`n!*C(2*n, n)-A170770(A288516(n+1))`
-/

namespace A214770.P17231986619511858074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.choose (2 * n) n : ℤ) - A170770 (A288516 (n + 1)).toNat

end

end A214770.P17231986619511858074

/-!
# A214771: a(n) is the smallest number that can be written as the sum of consecutive positive integers in at least n ways.

The programs for A214771, there is no canonical definition to state claims against.
-/

/-! ## A214771.P11919655194462202468

`A038547(A001227(A334077(n+2)))`
-/

namespace A214771.P11919655194462202468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038547 (A001227 (A334077 (n + 2)).toNat).toNat

end

end A214771.P11919655194462202468

/-! ## A214771.P2073430965796650242

`A053624(∑{e}[A053624(2*(n+2)), #])`
-/

namespace A214771.P2073430965796650242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053624 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053624 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A214771.P2073430965796650242

/-! ## A214771.P16564287929273798871

`A339886(A084092(n+1)+ceil(∏{e}[n+1, #+1]/2))`
-/

namespace A214771.P16564287929273798871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339886 (A084092 (n + 1) + ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉).toNat

end

end A214771.P16564287929273798871

/-! ## A214771.P3418307234858205280

`A103578(A139770(A350786(A005179(n+2))))`
-/

namespace A214771.P3418307234858205280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103578 (A139770 (A350786 (A005179 (n + 2)).toNat).toNat).toNat

end

end A214771.P3418307234858205280

/-!
# A214772: Number of partitions of n into parts 6, 9 or 20.

The programs for A214772, the canonical program `A214772.P4658780405022789280` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214772 has offset 0).

The definition of A214772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214772.P4658780405022789280

`A025854(A014682(n)%(n+5))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214772

/-- `A025854(A014682(n)%(n+5))` -/
def P4658780405022789280.Spec : Prop :=
  ∀ n, P4658780405022789280.a n = A214772 n

theorem P4658780405022789280.correct : P4658780405022789280.Spec := by
  intro n
  simp only [A214772]

end A214772

/-! ## A214772.P14732257618055399272

`and(A025904(n), A344886(n+1))`
-/

namespace A214772.P14732257618055399272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025904 n) (A344886 (n + 1))

end

end A214772.P14732257618055399272

namespace A214772

/-- `and(A025904(n), A344886(n+1))` -/
def P14732257618055399272.Spec : Prop :=
  ∀ n, P14732257618055399272.a n = A214772 n

end A214772

/-! ## A214772.P15708050653698134140

`and(A175505(A001263(n+1)), A204814(2*(n+1)))`
-/

namespace A214772.P15708050653698134140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175505 (A001263 (n + 1)).toNat) (A204814 (2 * (n + 1)))

end

end A214772.P15708050653698134140

namespace A214772

/-- `and(A175505(A001263(n+1)), A204814(2*(n+1)))` -/
def P15708050653698134140.Spec : Prop :=
  ∀ n, P15708050653698134140.a n = A214772 n

end A214772

/-! ## A214772.P7751449771036329410

`and(A204814(2*(n+1)), A255205(A225045(3*n+2)))`
-/

namespace A214772.P7751449771036329410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204814 (2 * (n + 1))) (A255205 (A225045 (3 * n + 2)).toNat)

end

end A214772.P7751449771036329410

namespace A214772

/-- `and(A204814(2*(n+1)), A255205(A225045(3*n+2)))` -/
def P7751449771036329410.Spec : Prop :=
  ∀ n, P7751449771036329410.a n = A214772 n

end A214772

/-! ## A214772.P14953332691440349091

`A204814(A205617(A205618(n+1))+n+1)`
-/

namespace A214772.P14953332691440349091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204814 (A205617 (A205618 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A214772.P14953332691440349091

namespace A214772

/-- `A204814(A205617(A205618(n+1))+n+1)` -/
def P14953332691440349091.Spec : Prop :=
  ∀ n, P14953332691440349091.a n = A214772 n

end A214772

/-!
# A214773: Primes such that all pairwise sums are squarefree.

The programs for A214773, there is no canonical definition to state claims against.
-/

/-! ## A214773.P5347417333360996627

`record[A326139(A085902(n)²)]`
-/

namespace A214773.P5347417333360996627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A085902 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214773.P5347417333360996627

/-! ## A214773.P11293085917962969028

`A048146(p?[A085902(n)]²)`
-/

namespace A214773.P11293085917962969028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A214773.P11293085917962969028

/-! ## A214773.P12350459209701558662

`A326139(p?[A085902(n)]²)`
-/

namespace A214773.P12350459209701558662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A214773.P12350459209701558662

/-! ## A214773.P12144373223957791156

`∩[A085902(n), A100546(n)]`
-/

namespace A214773.P12144373223957791156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214773.P12144373223957791156

/-! ## A214773.P9676558535349521262

`∩[A106317(n+1), A085902(n)]`
-/

namespace A214773.P9676558535349521262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085902 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214773.P9676558535349521262

/-!
# A214774: Number of ways of obtaining a weight of n grams using eight weights of denominations 1, 1, 2, 5, 10, 10, 20 and 50 grams.

The programs for A214774, there is no canonical definition to state claims against.
-/

/-! ## A214774.P15732085799391772477

`A153727(A008137(3*n+4)-∑{digits}[n, 10^#]%9)`
-/

namespace A214774.P15732085799391772477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153727 (A008137 (3 * n + 4) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9 : ℕ) : ℤ)).toNat

end

end A214774.P15732085799391772477

/-!
# A214775: Number T(n,k) of solid standard Young tableaux of shape [[n,k],[n-k]]; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A214775, there is no canonical definition to state claims against.
-/

/-! ## A214775.P11102136383100988356

`A118759(A008288(n)*A168256(n))`
-/

namespace A214775.P11102136383100988356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A008288 n * A168256 n).toNat

end

end A214775.P11102136383100988356

/-! ## A214775.P15746489865695096205

`A001511(A176627(n))*A168256(n)`
-/

namespace A214775.P15746489865695096205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A176627 n).toNat * A168256 n

end

end A214775.P15746489865695096205

/-!
# A214776: Number A(n,k) of standard Young tableaux of shape [n*k,n]; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A214776, there is no canonical definition to state claims against.
-/

/-! ## A214776.P5422340481757261650

`A355427(n)-A108611(A118354(n))`
-/

namespace A214776.P5422340481757261650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355427 n - A108611 (A118354 n).toNat

end

end A214776.P5422340481757261650

/-! ## A214776.P13227106212261697177

`A355427(n)-A056654(A290759(n))`
-/

namespace A214776.P13227106212261697177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355427 n - A056654 (A290759 n).toNat

end

end A214776.P13227106212261697177

/-! ## A214776.P3538967505559369762

`A085162(A320354(n))-A108611(A118354(n))`
-/

namespace A214776.P3538967505559369762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085162 (A320354 n).toNat - A108611 (A118354 n).toNat

end

end A214776.P3538967505559369762

/-! ## A214776.P17831401345413256149

`A085162(A320354(n))-A056654(A290759(n))`
-/

namespace A214776.P17831401345413256149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085162 (A320354 n).toNat - A056654 (A290759 n).toNat

end

end A214776.P17831401345413256149

/-! ## A214776.P15398843028497125477

`A007496(A237018(n)+1)`
-/

namespace A214776.P15398843028497125477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007496 (A237018 n + 1).toNat

end

end A214776.P15398843028497125477

/-!
# A214777: McNugget numbers: numbers of the form 6*x + 9*y + 20*z for nonnegative integers x, y, z.

The programs for A214777, there is no canonical definition to state claims against.
-/

/-! ## A214777.P12580405818585031293

`lt[A000007(A278238(2*n+1)), A025854(A014682(n)%(n+5))]`
-/

namespace A214777.P12580405818585031293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A278238 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025854 (Int.tmod (A014682 n) (n + 5 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214777.P12580405818585031293

/-!
# A214778: a(n) = 3*a(n-1) + 6*a(n-2) + a(n-3), with a(0) = 3, a(1) = 3, and a(2) = 21.

The programs for A214778, the canonical program `A214778.P4038292706056569992` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214778 has offset 0).

The definition of A214778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+6*a(n-2)+a(n-3)` (program `A214778.P4038292706056569992`, by `A214778.P4038292706056569992.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214778.P4038292706056569992

`3*a(n-1)+6*a(n-2)+a(n-3)` with `a(0)=3, a(1)=3, a(2)=21`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A214778

/-- `3*a(n-1)+6*a(n-2)+a(n-3)` -/
def P4038292706056569992.Spec : Prop :=
  ∀ n, (P4038292706056569992.a n : ℤ) = A214778 n

theorem P4038292706056569992.correct : P4038292706056569992.Spec := by
  intro n
  simp only [A214778]

end A214778

/-! ## A214778.P16888375805982069968

`ogf((-3+6x+6x^2)/(-1+3x+6x^2+x^3))`
-/

namespace A214778.P16888375805982069968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, -6] [1, -3, -6, -1] n

end

end A214778.P16888375805982069968

namespace A214778

/-- `ogf((-3+6x+6x^2)/(-1+3x+6x^2+x^3))` -/
def P16888375805982069968.Spec : Prop :=
  ∀ n, P16888375805982069968.a n = A214778 n

end A214778

/-!
# A214779: a(n) = 3*a(n-2) - a(n-3) with a(0)=-1, a(1)=1, a(2)=-4.

The programs for A214779, the canonical program `A214779.P14309789177051919295` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214779 has offset 0).

The definition of A214779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)-a(n-3)` (program `A214779.P14309789177051919295`, by `A214779.P14309789177051919295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214779.P14309789177051919295

`3*a(n-2)-a(n-3)` with `a(0)=-1, a(1)=1, a(2)=-4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A214779

/-- `3*a(n-2)-a(n-3)` -/
def P14309789177051919295.Spec : Prop :=
  ∀ n, P14309789177051919295.a n = A214779 n

theorem P14309789177051919295.correct : P14309789177051919295.Spec := by
  intro n
  simp only [A214779]

end A214779

/-! ## A214779.P11735830898675287269

`ogf((-1+x-x^2)/(1-3x^2+x^3))`
-/

namespace A214779.P11735830898675287269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 1, -1] [1, 0, -3, 1] n

end

end A214779.P11735830898675287269

namespace A214779

/-- `ogf((-1+x-x^2)/(1-3x^2+x^3))` -/
def P11735830898675287269.Spec : Prop :=
  ∀ n, P11735830898675287269.a n = A214779 n

end A214779

/-! ## A214779.P2464938266116724100

`Δ[Δ[A188048(n)]*A033999(n)]`
-/

namespace A214779.P2464938266116724100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214779.P2464938266116724100

namespace A214779

/-- `Δ[Δ[A188048(n)]*A033999(n)]` -/
def P2464938266116724100.Spec : Prop :=
  ∀ n, P2464938266116724100.a n = A214779 n

end A214779

/-! ## A214779.P2629618031258800317

`Δ[Δ[A094649(n)]/A174971(n)]`
-/

namespace A214779.P2629618031258800317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094649 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A174971 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214779.P2629618031258800317

namespace A214779

/-- `Δ[Δ[A094649(n)]/A174971(n)]` -/
def P2629618031258800317.Spec : Prop :=
  ∀ n, P2629618031258800317.a n = (A214779 n : ℚ)

end A214779

/-! ## A214779.P5509862405538619414

`Δ[(A004442(n)-n)*Δ[A188048(n)]]`
-/

namespace A214779.P5509862405538619414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214779.P5509862405538619414

namespace A214779

/-- `Δ[(A004442(n)-n)*Δ[A188048(n)]]` -/
def P5509862405538619414.Spec : Prop :=
  ∀ n, P5509862405538619414.a n = A214779 n

end A214779

/-! ## A214779.P1458829720806564271

`(A215664(n+1)-∑[A215664(n)])/3`
-/

namespace A214779.P1458829720806564271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A215664 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A214779.P1458829720806564271

namespace A214779

/-- `(A215664(n+1)-∑[A215664(n)])/3` -/
def P1458829720806564271.Spec : Prop :=
  ∀ n, P1458829720806564271.a n = (A214779 n : ℚ)

end A214779

/-! ## A214779.P18342476866002327257

`(A215666(n+1)+A215665(n))/3`
-/

namespace A214779.P18342476866002327257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215666 (n + 1) + A215665 n : ℚ) / 3

end

end A214779.P18342476866002327257

namespace A214779

/-- `(A215666(n+1)+A215665(n))/3` -/
def P18342476866002327257.Spec : Prop :=
  ∀ n, P18342476866002327257.a n = (A214779 n : ℚ)

end A214779

/-!
# A214780: a(1) = 2; a(n+1) = round(a(n)^(1 + 1/a(n))).

The programs for A214780, the canonical program `A214780.P11530381191471325746` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214780 has offset 1).

The definition of A214780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214780.P11530381191471325746

`round(a(n-1)^(1+1/a(n-1)))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A214780

/-- `round(a(n-1)^(1+1/a(n-1)))` -/
def P11530381191471325746.Spec : Prop :=
  ∀ n, P11530381191471325746.a n = A214780 (n + 1)

theorem P11530381191471325746.correct : P11530381191471325746.Spec := by
  intro n
  simp only [A214780, Nat.add_sub_cancel]

end A214780

/-! ## A214780.P9387911163272272432

`round(a(n-1)^(acot(a(n-1))+1))` with `a(0)=2`
-/

namespace A214780.P9387911163272272432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) ^ (SequenceMachineLib.acot (a (n - 1) : ℝ) + 1))

end

end A214780.P9387911163272272432

namespace A214780

/-- `round(a(n-1)^(acot(a(n-1))+1))` -/
def P9387911163272272432.Spec : Prop :=
  ∀ n, P9387911163272272432.a n = A214780 (n + 1)

end A214780

/-! ## A214780.P15397445950419866220

`round(root(a(n-1), a(n-1))*a(n-1))` with `a(0)=2`
-/

namespace A214780.P15397445950419866220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) ^ (1 / (a (n - 1) : ℝ)) * (a (n - 1) : ℝ))

end

end A214780.P15397445950419866220

namespace A214780

/-- `round(root(a(n-1), a(n-1))*a(n-1))` -/
def P15397445950419866220.Spec : Prop :=
  ∀ n, P15397445950419866220.a n = A214780 (n + 1)

end A214780

/-! ## A214780.P5905932041444228658

`round(a(n-1)/root(a(n-1), -a(n-1)))` with `a(0)=2`
-/

namespace A214780.P5905932041444228658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (a (n - 1) : ℝ) ^ (1 / (-a (n - 1) : ℝ)))

end

end A214780.P5905932041444228658

namespace A214780

/-- `round(a(n-1)/root(a(n-1), -a(n-1)))` -/
def P5905932041444228658.Spec : Prop :=
  ∀ n, P5905932041444228658.a n = A214780 (n + 1)

end A214780

/-! ## A214780.P3065177388296153676

`round(a(n-1)^acot(a(n-1))*a(n-1))` with `a(0)=2`
-/

namespace A214780.P3065177388296153676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) ^ (SequenceMachineLib.acot (a (n - 1) : ℝ)) * (a (n - 1) : ℝ))

end

end A214780.P3065177388296153676

namespace A214780

/-- `round(a(n-1)^acot(a(n-1))*a(n-1))` -/
def P3065177388296153676.Spec : Prop :=
  ∀ n, P3065177388296153676.a n = A214780 (n + 1)

end A214780

/-! ## A214780.P18274900423090914592

`round(root(a(n-1), a(n-1))/acot(a(n-1)))` with `a(0)=2`
-/

namespace A214780.P18274900423090914592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) ^ (1 / (a (n - 1) : ℝ)) / SequenceMachineLib.acot (a (n - 1) : ℝ))

end

end A214780.P18274900423090914592

namespace A214780

/-- `round(root(a(n-1), a(n-1))/acot(a(n-1)))` -/
def P18274900423090914592.Spec : Prop :=
  ∀ n, P18274900423090914592.a n = A214780 (n + 1)

end A214780

/-!
# A214784: Numbers n such that n-4=A214783(n).

The programs for A214784, there is no canonical definition to state claims against.
-/

/-! ## A214784.P372384004188181597

`record[A214783(A106535(n+1))+4]`
-/

namespace A214784.P372384004188181597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214783 (A106535 (n + 1)).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214784.P372384004188181597

/-! ## A214784.P11069201754948217184

`∩[A214786(n+1), A237415(n)]`
-/

namespace A214784.P11069201754948217184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237415 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214784.P11069201754948217184

/-! ## A214784.P3895452310837252840

`∩[A214786(n+1), A275068(n)]`
-/

namespace A214784.P3895452310837252840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214784.P3895452310837252840

/-! ## A214784.P5066387979187525496

`∩[A003147(n+1), A214786(n+1)]`
-/

namespace A214784.P5066387979187525496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214784.P5066387979187525496

/-! ## A214784.P5557405346195539223

`∩[A008854(n+1), A214786(n+1)]`
-/

namespace A214784.P5557405346195539223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214784.P5557405346195539223

/-!
# A214785: Numbers k such that k + 6 = A214783(k).

The programs for A214785, there is no canonical definition to state claims against.
-/

/-! ## A214785.P14599102484283747127

`∩[A214786(n+1), A298786(n)]`
-/

namespace A214785.P14599102484283747127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214785.P14599102484283747127

/-! ## A214785.P2395600046667709290

`∩[A003631(n+1), A214786(n+1)]`
-/

namespace A214785.P2395600046667709290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214785.P2395600046667709290

/-! ## A214785.P7574786239386647212

`∩[A023162(n+1), A214786(n+1)]`
-/

namespace A214785.P7574786239386647212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214785.P7574786239386647212

/-! ## A214785.P2177982411320549512

`∩[A040106(n+1), A214786(n+1)]`
-/

namespace A214785.P2177982411320549512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214785.P2177982411320549512

/-! ## A214785.P4611816533270237044

`∩[A040148(n+1), A214786(n+1)]`
-/

namespace A214785.P4611816533270237044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214785.P4611816533270237044

/-!
# A214786: Union of A214784 and A214785.

The programs for A214786, there is no canonical definition to state claims against.
-/

/-! ## A214786.P12406606361728479882

`∪[A214784(n+1), A214785(n+1)]`
-/

namespace A214786.P12406606361728479882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214786.P12406606361728479882

/-! ## A214786.P10517317919581562234

`p?[eq[2, A001055(A176203(n))]]`
-/

namespace A214786.P10517317919581562234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A176203 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214786.P10517317919581562234

/-! ## A214786.P6615037294612179330

`eq[A001055(A176203(n)), A152061(n)]`
-/

namespace A214786.P6615037294612179330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A176203 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214786.P6615037294612179330

/-! ## A214786.P16924547108623845854

`p?[∑[A077267(A070928(n+1))]]`
-/

namespace A214786.P16924547108623845854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A070928 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214786.P16924547108623845854

/-! ## A214786.P10667400079756253808

`p?[A016789(n+2)-A000045(A084938(n))]`
-/

namespace A214786.P10667400079756253808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (n + 2) - A000045 (A084938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214786.P10667400079756253808

/-!
# A214790: Numbers n such that A214789(n) = n-6.

The programs for A214790, there is no canonical definition to state claims against.
-/

/-! ## A214790.P18351809428915907581

`eq[n, A214789(A065033(2*n))+6]`
-/

namespace A214790.P18351809428915907581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214789 (A065033 (2 * n)).toNat + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214790.P18351809428915907581

/-! ## A214790.P16848123393701174380

`eq[A214789(A233583(n+1))+6, A233583(n+1)]`
-/

namespace A214790.P16848123393701174380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214789 (A233583 (n + 1)).toNat + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214790.P16848123393701174380

/-! ## A214790.P7540583550925240109

`∩[A214792(n+1), A237415(n)]`
-/

namespace A214790.P7540583550925240109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237415 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214790.P7540583550925240109

/-! ## A214790.P10964446263646089498

`∩[A035259(n+1), A214792(n+1)]`
-/

namespace A214790.P10964446263646089498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214790.P10964446263646089498

/-! ## A214790.P9883574722992655272

`∩[A054967(n+1), A214792(n+1)]`
-/

namespace A214790.P9883574722992655272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214790.P9883574722992655272

/-!
# A214791: Numbers n such that n+8 = A214789(n).

The programs for A214791, there is no canonical definition to state claims against.
-/

/-! ## A214791.P8292363767076221771

`eq[n+8, A214789(A065033(2*n))]`
-/

namespace A214791.P8292363767076221771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214789 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214791.P8292363767076221771

/-! ## A214791.P4856021008816853796

`eq[n+8, A214789(A233583(n+1))]`
-/

namespace A214791.P4856021008816853796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214789 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214791.P4856021008816853796

/-! ## A214791.P9538710617406321323

`∩[A023162(n+1), A214792(n+1)]`
-/

namespace A214791.P9538710617406321323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214791.P9538710617406321323

/-! ## A214791.P11620040018999342147

`∩[A214792(n+1), A326422(n+1)]`
-/

namespace A214791.P11620040018999342147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214791.P11620040018999342147

/-! ## A214791.P14653880879048065944

`∩[A167415(n+1), A214792(n+1)]`
-/

namespace A214791.P14653880879048065944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214791.P14653880879048065944

/-!
# A214792: Union of A214790 and A214791.

The programs for A214792, there is no canonical definition to state claims against.
-/

/-! ## A214792.P12507187382924956326

`∪[A214790(n+1), A214791(n+1)]`
-/

namespace A214792.P12507187382924956326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214792.P12507187382924956326

/-!
# A214796: Numbers n such that n-8=A214795(n).

The programs for A214796, there is no canonical definition to state claims against.
-/

/-! ## A214796.P5312460274700094941

`∩[A214798(n+1), A237415(n)]`
-/

namespace A214796.P5312460274700094941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237415 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214796.P5312460274700094941

/-! ## A214796.P12454440446591742882

`∩[A214798(n+1), A275068(n)]`
-/

namespace A214796.P12454440446591742882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214796.P12454440446591742882

/-! ## A214796.P16424108666298815489

`∩[A003147(n+1), A214798(n+1)]`
-/

namespace A214796.P16424108666298815489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214796.P16424108666298815489

/-! ## A214796.P7959832241948172430

`∩[A008854(n+1), A214798(n+1)]`
-/

namespace A214796.P7959832241948172430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214796.P7959832241948172430

/-! ## A214796.P5734185128440137774

`∩[A023173(n+1), A214798(n+1)]`
-/

namespace A214796.P5734185128440137774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214796.P5734185128440137774

/-!
# A214797: Numbers n such that n+10=A214795(n).

The programs for A214797, there is no canonical definition to state claims against.
-/

/-! ## A214797.P2730724901139424941

`∩[A214798(n+1), A298786(n)]`
-/

namespace A214797.P2730724901139424941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214797.P2730724901139424941

/-! ## A214797.P5146375618821911237

`∩[A003631(n+1), A214798(n+1)]`
-/

namespace A214797.P5146375618821911237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214797.P5146375618821911237

/-! ## A214797.P7048890628468456468

`∩[A023162(n+1), A214798(n+1)]`
-/

namespace A214797.P7048890628468456468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214797.P7048890628468456468

/-! ## A214797.P6366742888725240960

`∩[A040106(n+1), A214798(n+1)]`
-/

namespace A214797.P6366742888725240960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214797.P6366742888725240960

/-! ## A214797.P4634704531070625304

`∩[A040148(n+1), A214798(n+1)]`
-/

namespace A214797.P4634704531070625304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214797.P4634704531070625304

/-!
# A214798: Union of A214796 and A214797.

The programs for A214798, there is no canonical definition to state claims against.
-/

/-! ## A214798.P16124441589403585958

`∪[A214796(n+1), A214797(n+1)]`
-/

namespace A214798.P16124441589403585958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214798.P16124441589403585958

/-! ## A214798.P8223078146177642685

`p?[lt[9, A177806(n+3)]]`
-/

namespace A214798.P8223078146177642685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177806 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214798.P8223078146177642685

/-! ## A214798.P3051658460979866541

`p?[or(A320042(2*n+5), A320058(2*(n+2)))]`
-/

namespace A214798.P3051658460979866541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A320042 (2 * n + 5)) (A320058 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214798.P3051658460979866541

/-!
# A214799: Let S be a set of n positive numbers such that all n choose 2 pairwise GCD's are distinct, and let max(S) denote the largest element of S; a(n) is the minimal value of max(S) over all choices for S.

The programs for A214799, there is no canonical definition to state claims against.
-/

/-! ## A214799.P12198455594104869003

`A306921(A049169(n+1))`
-/

namespace A214799.P12198455594104869003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306921 (A049169 (n + 1)).toNat

end

end A214799.P12198455594104869003

/-! ## A214799.P17398070987008548895

`A325796(A000712(n)-A000389(n))`
-/

namespace A214799.P17398070987008548895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325796 (A000712 n - A000389 n).toNat

end

end A214799.P17398070987008548895

/-! ## A214799.P7161964009237090250

`A325781(A000071(n+4)-A262519(n))`
-/

namespace A214799.P7161964009237090250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (A000071 (n + 4) - A262519 n).toNat

end

end A214799.P7161964009237090250

