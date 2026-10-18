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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
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
# A302500: Lexicographically first sequence of distinct terms such that any set of five successive digits can be reordered as {d, d+1, d+2, d+3, d+4}, d being the smallest of the five digits.

The programs for A302500, there is no canonical definition to state claims against.
-/

/-! ## A302500.P16485936809141512896

`eq[A060268(n+2), A119999(n)]`
-/

namespace A302500.P16485936809141512896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060268 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302500.P16485936809141512896

/-! ## A302500.P18435178351626343336

`∩[A343403(n+1), A061729(n)]`
-/

namespace A302500.P18435178351626343336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061729 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302500.P18435178351626343336

/-! ## A302500.P2011581800715521984

`eq[A133569(n+1), A133569(A179052(n))]`
-/

namespace A302500.P2011581800715521984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133569 (A179052 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302500.P2011581800715521984

/-! ## A302500.P12625579937934719211

`lt[A108542(n+1), A280498(A336772(2*n+3))]`
-/

namespace A302500.P12625579937934719211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (A336772 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302500.P12625579937934719211

/-! ## A302500.P14492285752423527534

`record[gcd(n, A239016(n+1))]`
-/

namespace A302500.P14492285752423527534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A239016 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302500.P14492285752423527534

/-!
# A302501: Lexicographically first sequence of distinct terms such that any set of six successive digits can be reordered as {d, d+1, d+2, d+3, d+4, d+5}, d being the smallest of the six digits.

The programs for A302501, there is no canonical definition to state claims against.
-/

/-! ## A302501.P1511262266590391614

`∩[A085429(n), A095204(n)]`
-/

namespace A302501.P1511262266590391614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095204 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302501.P1511262266590391614

/-! ## A302501.P12998661592856942332

`∩[A094823(n), A095204(n)]`
-/

namespace A302501.P12998661592856942332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095204 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302501.P12998661592856942332

/-! ## A302501.P7422459759864276081

`eq[A273882(n+1), A338830(n)]`
-/

namespace A302501.P7422459759864276081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302501.P7422459759864276081

/-! ## A302501.P9341494934632057985

`∩[A023791(n+1), A095204(n)]`
-/

namespace A302501.P9341494934632057985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095204 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302501.P9341494934632057985

/-! ## A302501.P6792858001883077516

`eq[A070565(n), A133048(A070565(n))]`
-/

namespace A302501.P6792858001883077516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133048 (A070565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302501.P6792858001883077516

/-!
# A302502: Lexicographically first sequence of distinct terms such that any set of seven successive digits can be reordered as {d, d+1, d+2, d+3, d+4, d+5, d+6}, d being the smallest of the seven digits.

The programs for A302502, there is no canonical definition to state claims against.
-/

/-! ## A302502.P6892679365675876403

`filter[A302504(n+1), A267959(#)]`
-/

namespace A302502.P6892679365675876403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267959 (f1 j).toNat = 1) n)

end

end A302502.P6892679365675876403

/-! ## A302502.P12771905700080989896

`filter[A302504(n+1), A385395(#)]`
-/

namespace A302502.P12771905700080989896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A302502.P12771905700080989896

/-! ## A302502.P11006662454682654047

`∩[A249443(n+1), A061729(n)]`
-/

namespace A302502.P11006662454682654047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061729 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302502.P11006662454682654047

/-! ## A302502.P12457591132262206833

`A331162(A173551(n+1))`
-/

namespace A302502.P12457591132262206833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 (A173551 (n + 1)).toNat

end

end A302502.P12457591132262206833

/-! ## A302502.P2128346262302756763

`eq[A194846(n+1), A356944(n+1)]`
-/

namespace A302502.P2128346262302756763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302502.P2128346262302756763

/-!
# A302503: Lexicographically first sequence of distinct terms such that any set of eight successive digits can be reordered as {d, d+1, d+2, d+3, d+4, d+5, d+6, d+7}, d being the smallest of the eight digits.

The programs for A302503, there is no canonical definition to state claims against.
-/

/-! ## A302503.P7894440754821476740

`A130574(A118767(n+1))`
-/

namespace A302503.P7894440754821476740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130574 (A118767 (n + 1)).toNat

end

end A302503.P7894440754821476740

/-! ## A302503.P2781208329716188434

`eq[A345672(n), A358647(n)]`
-/

namespace A302503.P2781208329716188434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302503.P2781208329716188434

/-! ## A302503.P2127890919499795712

`∩[A267215(n+1), A095204(n)]`
-/

namespace A302503.P2127890919499795712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095204 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302503.P2127890919499795712

/-! ## A302503.P11848830120746122905

`lt[A120126(n)², A050813(n+1)]`
-/

namespace A302503.P11848830120746122905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120126 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302503.P11848830120746122905

/-! ## A302503.P7495011221738462888

`eq[A118765(A118764(n)), A348179(n)]`
-/

namespace A302503.P7495011221738462888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118765 (A118764 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348179 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302503.P7495011221738462888

/-!
# A302504: Lexicographically first sequence of distinct terms such that any set of nine successive digits can be reordered as {d, d+1, d+2, d+3, d+4, d+5, d+6, d+7, d+8}, d being the smallest of the nine digits.

The programs for A302504, there is no canonical definition to state claims against.
-/

/-! ## A302504.P9270169979881432993

`record[A309590(A007954(n))]`
-/

namespace A302504.P9270169979881432993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309590 (A007954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302504.P9270169979881432993

/-! ## A302504.P9786512671347192764

`eq[A333921(n), A358647(n)]`
-/

namespace A302504.P9786512671347192764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302504.P9786512671347192764

/-! ## A302504.P13124299969579692787

`record[A309590(A030141(n+1))]`
-/

namespace A302504.P13124299969579692787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309590 (A030141 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302504.P13124299969579692787

/-! ## A302504.P3262122768773344347

`eq[A307651(n), A357912(n+1)]`
-/

namespace A302504.P3262122768773344347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357912 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302504.P3262122768773344347

/-! ## A302504.P4773105561807848453

`∩[A009993(n+1), A061729(n)]`
-/

namespace A302504.P4773105561807848453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061729 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302504.P4773105561807848453

/-!
# A302505: Numbers whose prime indices are squarefree and have disjoint prime indices.

The programs for A302505, there is no canonical definition to state claims against.
-/

/-! ## A302505.P9712776648172350976

`eq[0, A056674(A003963(n+1))]+1`
-/

namespace A302505.P9712776648172350976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302505.P9712776648172350976

/-! ## A302505.P14226855873828116879

`∪[A291686(n+1), A320630(n+1)]`
-/

namespace A302505.P14226855873828116879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302505.P14226855873828116879

/-! ## A302505.P2149958584845703817

`eq[1, A000188(A003963(2*(n+1)))]+1`
-/

namespace A302505.P2149958584845703817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A003963 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302505.P2149958584845703817

/-! ## A302505.P2325366946897639403

`record[A000027(n+1)-A105570(A003963(n+1))]`
-/

namespace A302505.P2325366946897639403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A105570 (A003963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302505.P2325366946897639403

/-! ## A302505.P1068873736287699104

`record[A008966(A003963(n+1))*A130446(n+1)]`
-/

namespace A302505.P1068873736287699104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A003963 (n + 1)).toNat * A130446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302505.P1068873736287699104

/-! ## A302505.P11363636119945981270

`eq[A001221(A003963(n+1)), A302242(n+1)]+1`
-/

namespace A302505.P11363636119945981270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302505.P11363636119945981270

/-! ## A302505.P10313107768817658906

`eq[A014963(10*(n+10)), A003557(A003963(n+1))]+1`
-/

namespace A302505.P10313107768817658906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 10))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302505.P10313107768817658906

/-!
# A302506: Number of total dominating sets in the n-pan graph.

The programs for A302506, the canonical program `A302506.P1418007294241201659` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302506 has offset 1).

The definition of A302506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302506.P1418007294241201659

`a(n-1)-xor(2, n)+a(n-2)+n` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A302506

/-- `a(n-1)-xor(2, n)+a(n-2)+n` -/
def P1418007294241201659.Spec : Prop :=
  ∀ n, P1418007294241201659.a n = A302506 (n + 1)

theorem P1418007294241201659.correct : P1418007294241201659.Spec := by
  intro n
  simp only [A302506, Nat.add_sub_cancel]

end A302506

/-! ## A302506.P6061866163140497751

`a(n-1)-(xor(2, n)-a(n-2)-n)` with `a(0)=2, a(1)=3`
-/

namespace A302506.P6061866163140497751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - ((Nat.xor 2 n : ℤ) - a (n - 2) - (n : ℤ))

end

end A302506.P6061866163140497751

namespace A302506

/-- `a(n-1)-(xor(2, n)-a(n-2)-n)` -/
def P6061866163140497751.Spec : Prop :=
  ∀ n, P6061866163140497751.a n = A302506 (n + 1)

theorem P6061866163140497751.correct : P6061866163140497751.Spec := by
  intro n
  simp only [A302506, Nat.add_sub_cancel, A302506.P6061866163140497751.a, A302506.P1418007294241201659.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A302506

/-! ## A302506.P15588529964333933621

`2*(and(2, n)-1)+a(n-1)+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A302506.P15588529964333933621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * ((Nat.land 2 n : ℤ) - 1) + (a (n - 1) + a (n - 2))

end

end A302506.P15588529964333933621

namespace A302506

/-- `2*(and(2, n)-1)+a(n-1)+a(n-2)` -/
def P15588529964333933621.Spec : Prop :=
  ∀ n, P15588529964333933621.a n = A302506 (n + 1)

end A302506

/-! ## A302506.P9349621127017308492

`a(n-1)-(2*(1-and(2, n))-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A302506.P9349621127017308492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - (2 * (1 - (Nat.land 2 n : ℤ)) - a (n - 2))

end

end A302506.P9349621127017308492

namespace A302506

/-- `a(n-1)-(2*(1-and(2, n))-a(n-2))` -/
def P9349621127017308492.Spec : Prop :=
  ∀ n, P9349621127017308492.a n = A302506 (n + 1)

end A302506

/-! ## A302506.P12282117950622371912

`A111574(n)+A000285(n)`
-/

namespace A302506.P12282117950622371912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111574 n + A000285 n

end

end A302506.P12282117950622371912

namespace A302506

/-- `A111574(n)+A000285(n)` -/
def P12282117950622371912.Spec : Prop :=
  ∀ n, P12282117950622371912.a n = A302506 (n + 1)

end A302506

/-! ## A302506.P7667358196521980156

`A295684(n+2)+A295674(n)`
-/

namespace A302506.P7667358196521980156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295684 (n + 2) + A295674 n

end

end A302506.P7667358196521980156

namespace A302506

/-- `A295684(n+2)+A295674(n)` -/
def P7667358196521980156.Spec : Prop :=
  ∀ n, P7667358196521980156.a n = A302506 (n + 1)

end A302506

/-! ## A302506.P14059862027565664395

`A074677(n+3)+A074662(n+1)`
-/

namespace A302506.P14059862027565664395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (n + 3) + A074662 (n + 1)

end

end A302506.P14059862027565664395

namespace A302506

/-- `A074677(n+3)+A074662(n+1)` -/
def P14059862027565664395.Spec : Prop :=
  ∀ n, P14059862027565664395.a n = A302506 (n + 1)

end A302506

/-! ## A302506.P5345146798002713586

`A295681(n+1)+A362388(n)+A295681(n)`
-/

namespace A302506.P5345146798002713586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295681 (n + 1) + (A362388 n + A295681 n)

end

end A302506.P5345146798002713586

namespace A302506

/-- `A295681(n+1)+A362388(n)+A295681(n)` -/
def P5345146798002713586.Spec : Prop :=
  ∀ n, P5345146798002713586.a n = A302506 (n + 1)

end A302506

/-! ## A302506.P14445949994246084770

`A000032(n)+A000285(n)-A111569(n+1)`
-/

namespace A302506.P14445949994246084770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A000285 n - A111569 (n + 1))

end

end A302506.P14445949994246084770

namespace A302506

/-- `A000032(n)+A000285(n)-A111569(n+1)` -/
def P14445949994246084770.Spec : Prop :=
  ∀ n, P14445949994246084770.a n = A302506 (n + 1)

end A302506

/-! ## A302506.P10545374687185062952

`3*A000045(n+2)-a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A302506.P10545374687185062952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 * A000045 (n + 2) - a (n - 2)

end

end A302506.P10545374687185062952

namespace A302506

/-- `3*A000045(n+2)-a(n-2)` -/
def P10545374687185062952.Spec : Prop :=
  ∀ n, P10545374687185062952.a n = A302506 (n + 1)

end A302506

/-! ## A302506.P3223959427707583082

`A022095(n+1)-(A111569(n+1)+A000032(n))`
-/

namespace A302506.P3223959427707583082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 (n + 1) - (A111569 (n + 1) + A000032 n)

end

end A302506.P3223959427707583082

namespace A302506

/-- `A022095(n+1)-(A111569(n+1)+A000032(n))` -/
def P3223959427707583082.Spec : Prop :=
  ∀ n, P3223959427707583082.a n = A302506 (n + 1)

end A302506

/-! ## A302506.P7056825289600966783

`Δ[A362388(n+2)]`
-/

namespace A302506.P7056825289600966783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362388 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302506.P7056825289600966783

namespace A302506

/-- `Δ[A362388(n+2)]` -/
def P7056825289600966783.Spec : Prop :=
  ∀ n, P7056825289600966783.a n = A302506 (n + 1)

end A302506

/-!
# A302507: a(n) = 4*(3^n-1).

The programs for A302507, the canonical program `A302507.P17660413285331424769` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302507 has offset 0).

The definition of A302507 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(3^n-1)` (program `A302507.P17660413285331424769`, by `A302507.P17660413285331424769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302507.P17660413285331424769

`4*(3^n-1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A302507

/-- `4*(3^n-1)` -/
def P17660413285331424769.Spec : Prop :=
  ∀ n, P17660413285331424769.a n = A302507 n

theorem P17660413285331424769.correct : P17660413285331424769.Spec := by
  intro n
  simp only [A302507]

end A302507

/-! ## A302507.P8365817457886375816

`4*a(n-1)-3*a(n-2)` with `a(0)=0, a(1)=8`
-/

namespace A302507.P8365817457886375816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2)

end

end A302507.P8365817457886375816

namespace A302507

/-- `4*a(n-1)-3*a(n-2)` -/
def P8365817457886375816.Spec : Prop :=
  ∀ n, P8365817457886375816.a n = A302507 n

theorem P8365817457886375816.correct : P8365817457886375816.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A302507, Nat.add_sub_cancel, A302507.P8365817457886375816.a, A302507.P17660413285331424769.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A302507, Nat.add_sub_cancel, A302507.P8365817457886375816.a, A302507.P17660413285331424769.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A302507

/-! ## A302507.P18198722942140153715

`lcm(4, 3^n)-4`
-/

namespace A302507.P18198722942140153715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (3 ^ n) : ℤ) - 4

end

end A302507.P18198722942140153715

namespace A302507

/-- `lcm(4, 3^n)-4` -/
def P18198722942140153715.Spec : Prop :=
  ∀ n, P18198722942140153715.a n = A302507 n

end A302507

/-! ## A302507.P1643479278632686961

`xor(4, 4*3^n)`
-/

namespace A302507.P1643479278632686961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (4 * 3 ^ n)

end

end A302507.P1643479278632686961

namespace A302507

/-- `xor(4, 4*3^n)` -/
def P1643479278632686961.Spec : Prop :=
  ∀ n, (P1643479278632686961.a n : ℤ) = A302507 n

end A302507

/-! ## A302507.P227522771007855391

`and(4*3^n, -5)`
-/

namespace A302507.P227522771007855391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (4 * 3 ^ n : ℤ) (-5)

end

end A302507.P227522771007855391

namespace A302507

/-- `and(4*3^n, -5)` -/
def P227522771007855391.Spec : Prop :=
  ∀ n, P227522771007855391.a n = A302507 n

end A302507

/-! ## A302507.P14679014106052212387

`3*a(n-1)+8` with `a(0)=0`
-/

namespace A302507.P14679014106052212387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + 8

end

end A302507.P14679014106052212387

namespace A302507

/-- `3*a(n-1)+8` -/
def P14679014106052212387.Spec : Prop :=
  ∀ n, (P14679014106052212387.a n : ℤ) = A302507 n

theorem P14679014106052212387.correct : P14679014106052212387.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A302507, Nat.add_sub_cancel, A302507.P14679014106052212387.a, A302507.P17660413285331424769.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A302507, Nat.add_sub_cancel, A302507.P14679014106052212387.a, A302507.P17660413285331424769.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A302507

/-! ## A302507.P11187656349156877593

`∑[3*a(n-1)]` with `a(0)=0, a(1)=8`
-/

namespace A302507.P11187656349156877593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302507.P11187656349156877593

namespace A302507

/-- `∑[3*a(n-1)]` -/
def P11187656349156877593.Spec : Prop :=
  ∀ n, (P11187656349156877593.a n : ℤ) = A302507 n

end A302507

/-! ## A302507.P1381592834887895092

`11-3*(1-a(n-1))` with `a(0)=0`
-/

namespace A302507.P1381592834887895092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  11 - 3 * (1 - a (n - 1))

end

end A302507.P1381592834887895092

namespace A302507

/-- `11-3*(1-a(n-1))` -/
def P1381592834887895092.Spec : Prop :=
  ∀ n, P1381592834887895092.a n = A302507 n

theorem P1381592834887895092.correct : P1381592834887895092.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A302507, Nat.add_sub_cancel, A302507.P1381592834887895092.a, A302507.P17660413285331424769.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A302507, Nat.add_sub_cancel, A302507.P1381592834887895092.a, A302507.P17660413285331424769.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A302507

/-! ## A302507.P4014839760195039972

`a(n-1)+a(n-1)+a(n-1)+8` with `a(0)=0`
-/

namespace A302507.P4014839760195039972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 8))

end

end A302507.P4014839760195039972

namespace A302507

/-- `a(n-1)+a(n-1)+a(n-1)+8` -/
def P4014839760195039972.Spec : Prop :=
  ∀ n, (P4014839760195039972.a n : ℤ) = A302507 n

theorem P4014839760195039972.correct : P4014839760195039972.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A302507, Nat.add_sub_cancel, A302507.P4014839760195039972.a, A302507.P17660413285331424769.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A302507, Nat.add_sub_cancel, A302507.P4014839760195039972.a, A302507.P17660413285331424769.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A302507

/-! ## A302507.P14699112534242549900

`A036543(n)-1`
-/

namespace A302507.P14699112534242549900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036543 n - 1

end

end A302507.P14699112534242549900

namespace A302507

/-- `A036543(n)-1` -/
def P14699112534242549900.Spec : Prop :=
  ∀ n, P14699112534242549900.a n = A302507 n

end A302507

/-! ## A302507.P9033601948919417807

`A171498(n)-3`
-/

namespace A302507.P9033601948919417807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171498 n - 3

end

end A302507.P9033601948919417807

namespace A302507

/-- `A171498(n)-3` -/
def P9033601948919417807.Spec : Prop :=
  ∀ n, P9033601948919417807.a n = A302507 n

end A302507

/-! ## A302507.P2494373319102486035

`A199108(n)-5`
-/

namespace A302507.P2494373319102486035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199108 n - 5

end

end A302507.P2494373319102486035

namespace A302507

/-- `A199108(n)-5` -/
def P2494373319102486035.Spec : Prop :=
  ∀ n, P2494373319102486035.a n = A302507 n

end A302507

/-! ## A302507.P12869322674424510432

`∑[A083583(n)]-1`
-/

namespace A302507.P12869322674424510432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A302507.P12869322674424510432

namespace A302507

/-- `∑[A083583(n)]-1` -/
def P12869322674424510432.Spec : Prop :=
  ∀ n, P12869322674424510432.a n = A302507 n

end A302507

/-! ## A302507.P6125766750490113000

`A003946(n+1)-4`
-/

namespace A302507.P6125766750490113000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (n + 1) - 4

end

end A302507.P6125766750490113000

namespace A302507

/-- `A003946(n+1)-4` -/
def P6125766750490113000.Spec : Prop :=
  ∀ n, P6125766750490113000.a n = A302507 n

end A302507

/-! ## A302507.P4706501511910461675

`A220944(2*n)-1`
-/

namespace A302507.P4706501511910461675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220944 (2 * n) - 1

end

end A302507.P4706501511910461675

namespace A302507

/-- `A220944(2*n)-1` -/
def P4706501511910461675.Spec : Prop :=
  ∀ n, P4706501511910461675.a n = A302507 n

end A302507

/-! ## A302507.P13778193998320720167

`A052156(n+2)-4`
-/

namespace A302507.P13778193998320720167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (n + 2) - 4

end

end A302507.P13778193998320720167

namespace A302507

/-- `A052156(n+2)-4` -/
def P13778193998320720167.Spec : Prop :=
  ∀ n, P13778193998320720167.a n = A302507 n

end A302507

/-! ## A302507.P5822639698892631973

`A025579(n+3)-4`
-/

namespace A302507.P5822639698892631973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 (n + 3) - 4

end

end A302507.P5822639698892631973

namespace A302507

/-- `A025579(n+3)-4` -/
def P5822639698892631973.Spec : Prop :=
  ∀ n, P5822639698892631973.a n = A302507 n

end A302507

/-! ## A302507.P10363242141210122218

`A326339(n+3)-4`
-/

namespace A302507.P10363242141210122218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (n + 3) - 4

end

end A302507.P10363242141210122218

namespace A302507

/-- `A326339(n+3)-4` -/
def P10363242141210122218.Spec : Prop :=
  ∀ n, P10363242141210122218.a n = A302507 n

end A302507

/-! ## A302507.P8504133600467282666

`A079003(n+2)-6`
-/

namespace A302507.P8504133600467282666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079003 (n + 2) - 6

end

end A302507.P8504133600467282666

namespace A302507

/-- `A079003(n+2)-6` -/
def P8504133600467282666.Spec : Prop :=
  ∀ n, P8504133600467282666.a n = A302507 n

end A302507

/-!
# A302508: Total domination number of the n X n X n grid graph.

The programs for A302508, there is no canonical definition to state claims against.
-/

/-! ## A302508.P9607647803348359064

`∑[∑[a(n-4)+n]]` with `a(0)=4, a(1)=0, a(2)=4, a(3)=5`
-/

namespace A302508.P9607647803348359064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 0, 4, 5] fun n f2 =>
  f2 (n - 4) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302508.P9607647803348359064

/-! ## A302508.P16635601160841704188

`record[A330914(n+1)+2]-n`
-/

namespace A302508.P16635601160841704188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330914 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A302508.P16635601160841704188

/-! ## A302508.P12683585232052025508

`∑[floor(A106587(n+1)^(ϕ-1))]+2`
-/

namespace A302508.P12683585232052025508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A106587 (n + 1) : ℝ) ^ (Real.goldenRatio - 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A302508.P12683585232052025508

/-!
# A302509: Number of n X n 0..1 arrays with every element equal to 0, 1, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302509, there is no canonical definition to state claims against.
-/

/-! ## A302509.P14407907966281920771

`A302515(∑[4*n]+1)`
-/

namespace A302509.P14407907966281920771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302509.P14407907966281920771

/-! ## A302509.P14447565943718335590

`record[A003982(n)*A302515(n+1)]`
-/

namespace A302509.P14447565943718335590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302509.P14447565943718335590

/-! ## A302509.P14624190971604999622

`record[and(A185917(n+1), A302515(n+1))]`
-/

namespace A302509.P14624190971604999622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A302515 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302509.P14624190971604999622

/-! ## A302509.P3577278348745285418

`A302515(A001844(n))+A165878(n)`
-/

namespace A302509.P3577278348745285418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A001844 n).toNat + A165878 n

end

end A302509.P3577278348745285418

/-! ## A302509.P6528755409890156594

`A016288(n)*A302515(A001844(n))`
-/

namespace A302509.P6528755409890156594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016288 n * A302515 (A001844 n).toNat

end

end A302509.P6528755409890156594

/-!
# A302510: Number of n X 3 0..1 arrays with every element equal to 0, 1, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302510, the canonical program `A302510.P17496917303344681663` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302510 has offset 1).

The definition of A302510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 711 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302510.P17496917303344681663

`a(n-1)+a(n-4)` with `a(0)=3, a(1)=3, a(2)=11, a(3)=9, a(4)=14, a(5)=21, a(6)=28`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A302510

/-- `a(n-1)+a(n-4)` -/
def P17496917303344681663.Spec : Prop :=
  ∀ n, (P17496917303344681663.a n : ℤ) = A302510 (n + 1)

theorem P17496917303344681663.correct : P17496917303344681663.Spec := by
  intro n
  simp only [A302510, Nat.add_sub_cancel]

end A302510

/-! ## A302510.P14400650734404455029

`A302515(∑[n+3]+1)`
-/

namespace A302510.P14400650734404455029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302510.P14400650734404455029

namespace A302510

/-- `A302515(∑[n+3]+1)` -/
def P14400650734404455029.Spec : Prop :=
  ∀ n, P14400650734404455029.a n = A302510 (n + 1)

end A302510

/-!
# A302511: Number of nX4 0..1 arrays with every element equal to 0, 1, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302511, there is no canonical definition to state claims against.
-/

/-! ## A302511.P4424569199184028857

`A302515(A141214(n+1))`
-/

namespace A302511.P4424569199184028857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A141214 (n + 1)).toNat

end

end A302511.P4424569199184028857

/-! ## A302511.P4702015068615334241

`A302515(A055998(n+2))`
-/

namespace A302511.P4702015068615334241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A055998 (n + 2)).toNat

end

end A302511.P4702015068615334241

/-! ## A302511.P12305165782634525490

`A302515(A155212(n)+5)`
-/

namespace A302511.P12305165782634525490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A155212 n + 5).toNat

end

end A302511.P12305165782634525490

/-! ## A302511.P16155673023662127543

`A302515(A056000(n)+7)`
-/

namespace A302511.P16155673023662127543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A056000 n + 7).toNat

end

end A302511.P16155673023662127543

/-! ## A302511.P8825359343640969076

`A302515(A052905(n+1)+2)`
-/

namespace A302511.P8825359343640969076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A052905 (n + 1) + 2).toNat

end

end A302511.P8825359343640969076

/-!
# A302512: Number of nX5 0..1 arrays with every element equal to 0, 1, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302512, there is no canonical definition to state claims against.
-/

/-! ## A302512.P13331905119621013886

`A302515(A046691(n+3))`
-/

namespace A302512.P13331905119621013886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A046691 (n + 3)).toNat

end

end A302512.P13331905119621013886

/-! ## A302512.P5572146533731375126

`A302515(A056115(n)+11)`
-/

namespace A302512.P5572146533731375126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A056115 n + 11).toNat

end

end A302512.P5572146533731375126

/-! ## A302512.P10359563358023584516

`A302515(Δ[A023545(n+1)])`
-/

namespace A302512.P10359563358023584516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (f1 (n + 1) - f1 n).toNat

end

end A302512.P10359563358023584516

/-! ## A302512.P15583769777467736726

`A302515(A000096(n+4)-3)`
-/

namespace A302512.P15583769777467736726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A000096 (n + 4) - 3).toNat

end

end A302512.P15583769777467736726

/-! ## A302512.P10835716864453544550

`A302515(A000124(n+5)-5)`
-/

namespace A302512.P10835716864453544550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A000124 (n + 5) - 5).toNat

end

end A302512.P10835716864453544550

/-!
# A302513: Number of nX6 0..1 arrays with every element equal to 0, 1, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302513, there is no canonical definition to state claims against.
-/

/-! ## A302513.P5218344623671077040

`A302515(A052905(n+3))`
-/

namespace A302513.P5218344623671077040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A052905 (n + 3)).toNat

end

end A302513.P5218344623671077040

/-! ## A302513.P4633053134255547963

`A302515(A302537(n)+15)`
-/

namespace A302513.P4633053134255547963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A302537 n + 15).toNat

end

end A302513.P4633053134255547963

/-! ## A302513.P15847813769477637775

`A302515(A034856(n+5)-3)`
-/

namespace A302513.P15847813769477637775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A034856 (n + 5) - 3).toNat

end

end A302513.P15847813769477637775

/-! ## A302513.P7145406818763706719

`A302515(A000096(n+5)-4)`
-/

namespace A302513.P7145406818763706719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A000096 (n + 5) - 4).toNat

end

end A302513.P7145406818763706719

/-! ## A302513.P17253400376539786945

`A302515(A000217(n+6)-5)`
-/

namespace A302513.P17253400376539786945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A000217 (n + 6) - 5).toNat

end

end A302513.P17253400376539786945

/-!
# A302514: Number of nX7 0..1 arrays with every element equal to 0, 1, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302514, there is no canonical definition to state claims against.
-/

/-! ## A302514.P4769038954573783850

`A302515(A055999(n+4))`
-/

namespace A302514.P4769038954573783850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A055999 (n + 4)).toNat

end

end A302514.P4769038954573783850

/-! ## A302514.P4479042904577298646

`A302515(A000217(n+7)-6)`
-/

namespace A302514.P4479042904577298646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A000217 (n + 7) - 6).toNat

end

end A302514.P4479042904577298646

/-! ## A302514.P15856178068596495587

`A302515(A000124(n+7)-7)`
-/

namespace A302514.P15856178068596495587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A000124 (n + 7) - 7).toNat

end

end A302514.P15856178068596495587

/-! ## A302514.P2252813205853827242

`A302515(A167614(n+5)+n-2)`
-/

namespace A302514.P2252813205853827242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A167614 (n + 5) + ((n : ℤ) - 2)).toNat

end

end A302514.P2252813205853827242

/-! ## A302514.P3879527271634659801

`A302515((n+11)²%A134227(n+12))`
-/

namespace A302514.P3879527271634659801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (Int.tmod ((n + 11) ^ 2 : ℤ) (A134227 (n + 12))).toNat

end

end A302514.P3879527271634659801

/-!
# A302515: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302515, there is no canonical definition to state claims against.
-/

/-! ## A302515.P12772478195300182774

`A303314(n+1)-A186034(A022167(n))`
-/

namespace A302515.P12772478195300182774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (n + 1) - A186034 (A022167 n).toNat

end

end A302515.P12772478195300182774

/-! ## A302515.P2077653872342127461

`A303314(n+1)-A124763(A099594(n))`
-/

namespace A302515.P2077653872342127461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (n + 1) - A124763 (A099594 n).toNat

end

end A302515.P2077653872342127461

/-! ## A302515.P17593281080792761

`A303314(n+1)-A228360(A174116(n))`
-/

namespace A302515.P17593281080792761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (n + 1) - A228360 (A174116 n).toNat

end

end A302515.P17593281080792761

/-! ## A302515.P2433258781857205033

`A303314(n+1)-A059841(A157156(n))`
-/

namespace A302515.P2433258781857205033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (n + 1) - A059841 (A157156 n).toNat

end

end A302515.P2433258781857205033

/-! ## A302515.P14230493804387438671

`A303314(n+1)-A014374(A318045(n+1))`
-/

namespace A302515.P14230493804387438671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (n + 1) - A014374 (A318045 (n + 1)).toNat

end

end A302515.P14230493804387438671

/-!
# A302516: Number of 3 X n 0..1 arrays with every element equal to 0, 1, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302516, the canonical program `A302516.P4164995207528696153` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302516 has offset 1).

The definition of A302516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302516.P4164995207528696153

`a(n-1)+2*a(n-3)+4*a(n-4)` with `a(0)=4, a(1)=4, a(2)=11, a(3)=15, a(4)=21, a(5)=52, a(6)=118`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A302516

/-- `a(n-1)+2*a(n-3)+4*a(n-4)` -/
def P4164995207528696153.Spec : Prop :=
  ∀ n, (P4164995207528696153.a n : ℤ) = A302516 (n + 1)

theorem P4164995207528696153.correct : P4164995207528696153.Spec := by
  intro n
  simp only [A302516, Nat.add_sub_cancel]

end A302516

/-! ## A302516.P16928577087424482367

`A302515(∑[n+2]+4)`
-/

namespace A302516.P16928577087424482367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302516.P16928577087424482367

namespace A302516

/-- `A302515(∑[n+2]+4)` -/
def P16928577087424482367.Spec : Prop :=
  ∀ n, P16928577087424482367.a n = A302516 (n + 1)

end A302516

/-! ## A302516.P8632902698879881031

`A016288(n)*A302515(A167614(n+1))`
-/

namespace A302516.P8632902698879881031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016288 n * A302515 (A167614 (n + 1)).toNat

end

end A302516.P8632902698879881031

namespace A302516

/-- `A016288(n)*A302515(A167614(n+1))` -/
def P8632902698879881031.Spec : Prop :=
  ∀ n, P8632902698879881031.a n = A302516 (n + 1)

end A302516

/-! ## A302516.P15460341245704717975

`lcm(A087960(n), A302515(A167614(n+1)))`
-/

namespace A302516.P15460341245704717975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A302515 (A167614 (n + 1)).toNat)

end

end A302516.P15460341245704717975

namespace A302516

/-- `lcm(A087960(n), A302515(A167614(n+1)))` -/
def P15460341245704717975.Spec : Prop :=
  ∀ n, (P15460341245704717975.a n : ℤ) = A302516 (n + 1)

end A302516

/-! ## A302516.P17354439821146704252

`A302515(A167614(n+1))%A201027(n+1)`
-/

namespace A302516.P17354439821146704252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302515 (A167614 (n + 1)).toNat) (A201027 (n + 1))

end

end A302516.P17354439821146704252

namespace A302516

/-- `A302515(A167614(n+1))%A201027(n+1)` -/
def P17354439821146704252.Spec : Prop :=
  ∀ n, P17354439821146704252.a n = A302516 (n + 1)

end A302516

/-!
# A302517: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302517, there is no canonical definition to state claims against.
-/

/-! ## A302517.P8538583320160571305

`A302515(A141214(n)+7)`
-/

namespace A302517.P8538583320160571305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A141214 n + 7).toNat

end

end A302517.P8538583320160571305

/-! ## A302517.P489539627519834749

`A302515(A052905(n)+9)`
-/

namespace A302517.P489539627519834749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A052905 n + 9).toNat

end

end A302517.P489539627519834749

/-! ## A302517.P5644574715619548565

`A302515(A055999(n)+10)`
-/

namespace A302517.P5644574715619548565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A055999 n + 10).toNat

end

end A302517.P5644574715619548565

/-! ## A302517.P6845717663596060502

`A302515(A167614(n+2)+1)`
-/

namespace A302517.P6845717663596060502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A167614 (n + 2) + 1).toNat

end

end A302517.P6845717663596060502

/-! ## A302517.P644158505283524220

`A302515(A166136(n+2)-2)`
-/

namespace A302517.P644158505283524220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A166136 (n + 2) - 2).toNat

end

end A302517.P644158505283524220

/-!
# A302518: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302518, there is no canonical definition to state claims against.
-/

/-! ## A302518.P5280501441849781624

`A302515(A167499(n+3))`
-/

namespace A302518.P5280501441849781624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A167499 (n + 3)).toNat

end

end A302518.P5280501441849781624

/-! ## A302518.P17272063582358073856

`A302515(A155212(n)+13)`
-/

namespace A302518.P17272063582358073856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A155212 n + 13).toNat

end

end A302518.P17272063582358073856

/-! ## A302518.P13020657588864327583

`A302515(A056000(n)+15)`
-/

namespace A302518.P13020657588864327583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A056000 n + 15).toNat

end

end A302518.P13020657588864327583

/-! ## A302518.P1904312112186603802

`A302515(A000217(n+4)+5)`
-/

namespace A302518.P1904312112186603802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A000217 (n + 4) + 5).toNat

end

end A302518.P1904312112186603802

/-! ## A302518.P10362958478488486957

`A302515(A055998(n+2)+8)`
-/

namespace A302518.P10362958478488486957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A055998 (n + 2) + 8).toNat

end

end A302518.P10362958478488486957

/-!
# A302519: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302519, there is no canonical definition to state claims against.
-/

/-! ## A302519.P282517113717799229

`A302515(A166136(n+4))`
-/

namespace A302519.P282517113717799229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A166136 (n + 4)).toNat

end

end A302519.P282517113717799229

/-! ## A302519.P1921078328125399971

`A302515(A167499(n+4)+1)`
-/

namespace A302519.P1921078328125399971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A167499 (n + 4) + 1).toNat

end

end A302519.P1921078328125399971

/-! ## A302519.P10852506545258612805

`A302515(A000124(n+5)+5)`
-/

namespace A302519.P10852506545258612805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A000124 (n + 5) + 5).toNat

end

end A302519.P10852506545258612805

/-! ## A302519.P6239195446695324650

`A302515(A000217(n+5)+6)`
-/

namespace A302519.P6239195446695324650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A000217 (n + 5) + 6).toNat

end

end A302519.P6239195446695324650

/-! ## A302519.P17511524408202618282

`A302515(A141214(n+2)+9)`
-/

namespace A302519.P17511524408202618282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A141214 (n + 2) + 9).toNat

end

end A302519.P17511524408202618282

/-!
# A302520: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302520, there is no canonical definition to state claims against.
-/

/-! ## A302520.P15386555846503498754

`A302515(A167487(n+5))`
-/

namespace A302520.P15386555846503498754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A167487 (n + 5)).toNat

end

end A302520.P15386555846503498754

/-! ## A302520.P2118344923957440455

`A302515(A302537(n)+27)`
-/

namespace A302520.P2118344923957440455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A302537 n + 27).toNat

end

end A302520.P2118344923957440455

/-! ## A302520.P1885941539514124837

`A302515(A000124(n+6)+6)`
-/

namespace A302520.P1885941539514124837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A000124 (n + 6) + 6).toNat

end

end A302520.P1885941539514124837

/-! ## A302520.P9533284972402257473

`A302515(A000217(n+6)+7)`
-/

namespace A302520.P9533284972402257473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A000217 (n + 6) + 7).toNat

end

end A302520.P9533284972402257473

/-! ## A302520.P7697557127576305830

`A302515(A155212(n+4)-2*n)`
-/

namespace A302520.P7697557127576305830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302515 (A155212 (n + 4) - (2 * n : ℤ)).toNat

end

end A302520.P7697557127576305830

/-!
# A302521: Odd numbers whose prime indices are squarefree and have disjoint prime indices. Numbers n such that the n-th multiset multisystem is a set partition.

The programs for A302521, there is no canonical definition to state claims against.
-/

/-! ## A302521.P6219781505259221550

`lt[n%2, A008966(A003963(n+1))]+1`
-/

namespace A302521.P6219781505259221550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A302521.P6219781505259221550

/-! ## A302521.P2425718594355364054

`record[(2*n+1)*A008966(A003963(2*n+1))]`
-/

namespace A302521.P2425718594355364054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A008966 (A003963 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302521.P2425718594355364054

/-! ## A302521.P762230200586787219

`eq[A000188(A003963(n+1)), A010689(n)]+1`
-/

namespace A302521.P762230200586787219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A003963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302521.P762230200586787219

/-! ## A302521.P12854942609317726165

`eq[A000188(A003963(n+1)), A033999(n)]+1`
-/

namespace A302521.P12854942609317726165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A003963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302521.P12854942609317726165

/-! ## A302521.P1242917348846013201

`lt[A000035(n), A008966(A003963(n+1))]+1`
-/

namespace A302521.P1242917348846013201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A302521.P1242917348846013201

/-! ## A302521.P6295774750412619353

`record[A008966(A003963(n+1))*A204455(n+1)]`
-/

namespace A302521.P6295774750412619353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A003963 (n + 1)).toNat * A204455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302521.P6295774750412619353

/-! ## A302521.P11735154392610596564

`record[A000265(n+1)/A000188(A003963(n+1))]`
-/

namespace A302521.P11735154392610596564
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A000188 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302521.P11735154392610596564

/-! ## A302521.P6020629388159755290

`record[A026741(n+1)/A000188(A003963(n+1))]`
-/

namespace A302521.P6020629388159755290
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 1) : ℚ) / (A000188 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302521.P6020629388159755290

/-! ## A302521.P7303181380491639041

`eq[1-A010673(n), A008683(A003963(n+1))²]+1`
-/

namespace A302521.P7303181380491639041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A003963 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302521.P7303181380491639041

/-! ## A302521.P15582824875954827380

`lt[(A090930(n+1)+1)%2, A008683(A003963(n+1))²]+1`
-/

namespace A302521.P15582824875954827380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090930 (n + 1) + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A003963 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A302521.P15582824875954827380

/-!
# A302522: Number of n X n 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302522, there is no canonical definition to state claims against.
-/

/-! ## A302522.P12631472471403196007

`A302528(∑[4*n]+1)`
-/

namespace A302522.P12631472471403196007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302522.P12631472471403196007

/-! ## A302522.P7049518029928176980

`record[A302528(A330613(n+1))]`
-/

namespace A302522.P7049518029928176980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302522.P7049518029928176980

/-! ## A302522.P4658135162921985075

`A302528(A001844(n))+char[9]`
-/

namespace A302522.P4658135162921985075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302522.P4658135162921985075

/-! ## A302522.P4711491540271600373

`record[A003982(n)*A302528(n+1)]`
-/

namespace A302522.P4711491540271600373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302522.P4711491540271600373

/-! ## A302522.P13135118311244116378

`A302528(A001844(n))%A302543(n)`
-/

namespace A302522.P13135118311244116378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302528 (A001844 n).toNat) (A302543 n)

end

end A302522.P13135118311244116378

/-!
# A302523: Number of nX3 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302523, there is no canonical definition to state claims against.
-/

/-! ## A302523.P17747138057892554211

`A302528(∑[n+3]+1)`
-/

namespace A302523.P17747138057892554211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302523.P17747138057892554211

/-! ## A302523.P10428490150795449433

`record[A302528(A347633(n+2))]`
-/

namespace A302523.P10428490150795449433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A347633 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302523.P10428490150795449433

/-! ## A302523.P12138727569673815467

`or(char[1], A302528(A034856(n+2)))`
-/

namespace A302523.P12138727569673815467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302528 (A034856 (n + 2)).toNat)

end

end A302523.P12138727569673815467

/-! ## A302523.P8956682839619968024

`A302528(A000124(n+3)-3)+char[31]`
-/

namespace A302523.P8956682839619968024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A000124 (n + 3) - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302523.P8956682839619968024

/-! ## A302523.P6730879322591184281

`A302528(Δ[A008778(n)])+A185264(n)`
-/

namespace A302523.P6730879322591184281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (f1 (n + 1) - f1 n).toNat + A185264 n

end

end A302523.P6730879322591184281

/-!
# A302524: Number of nX4 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302524, there is no canonical definition to state claims against.
-/

/-! ## A302524.P11966640943683431476

`A302528(∑[n+4]+3)`
-/

namespace A302524.P11966640943683431476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302524.P11966640943683431476

/-! ## A302524.P818144702828878010

`A303410(∑[n+4]+3)`
-/

namespace A302524.P818144702828878010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302524.P818144702828878010

/-! ## A302524.P9830470283456749782

`lcm(2, A302528(A141214(n+1)))`
-/

namespace A302524.P9830470283456749782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A302528 (A141214 (n + 1)).toNat)

end

end A302524.P9830470283456749782

/-! ## A302524.P14808487336770729242

`record[A302528(A027379(abs(1-n)+1))]`
-/

namespace A302524.P14808487336770729242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A027379 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302524.P14808487336770729242

/-! ## A302524.P1945795944950211904

`A302528(A027379(n+2))%A002450(n+3)`
-/

namespace A302524.P1945795944950211904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302528 (A027379 (n + 2)).toNat) (A002450 (n + 3))

end

end A302524.P1945795944950211904

/-!
# A302525: Number of nX5 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302525, there is no canonical definition to state claims against.
-/

/-! ## A302525.P14534630953736516443

`A302528(Δ[A264443(n)])`
-/

namespace A302525.P14534630953736516443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (f1 (n + 1) - f1 n).toNat

end

end A302525.P14534630953736516443

/-! ## A302525.P5727575638971463292

`A302528(A046691(n+3))`
-/

namespace A302525.P5727575638971463292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A046691 (n + 3)).toNat

end

end A302525.P5727575638971463292

/-! ## A302525.P7304531817126404032

`A302528(A056115(n)+11)`
-/

namespace A302525.P7304531817126404032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A056115 n + 11).toNat

end

end A302525.P7304531817126404032

/-! ## A302525.P8465363846703684800

`A302528(eq[2, A092921(n)])`
-/

namespace A302525.P8465363846703684800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302525.P8465363846703684800

/-! ## A302525.P12348621650003154795

`A302528(eq[3, A152157(n)])`
-/

namespace A302525.P12348621650003154795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302525.P12348621650003154795

/-!
# A302526: Number of nX6 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302526, there is no canonical definition to state claims against.
-/

/-! ## A302526.P8236958079989262147

`A302528(A052905(n+3))`
-/

namespace A302526.P8236958079989262147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A052905 (n + 3)).toNat

end

end A302526.P8236958079989262147

/-! ## A302526.P15077935664374514114

`A302528(A302537(n)+15)`
-/

namespace A302526.P15077935664374514114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A302537 n + 15).toNat

end

end A302526.P15077935664374514114

/-! ## A302526.P624534756967145544

`A302528(A056119(n)+16)`
-/

namespace A302526.P624534756967145544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A056119 n + 16).toNat

end

end A302526.P624534756967145544

/-! ## A302526.P190204702938942

`A302528(eq[3, A219347(n)])`
-/

namespace A302526.P190204702938942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302526.P190204702938942

/-! ## A302526.P2646344290411333380

`A302528(eq[5, A193592(n)])`
-/

namespace A302526.P2646344290411333380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302526.P2646344290411333380

/-!
# A302527: Number of nX7 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302527, there is no canonical definition to state claims against.
-/

/-! ## A302527.P17350230104873753656

`A302528(A055999(n+4))`
-/

namespace A302527.P17350230104873753656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A055999 (n + 4)).toNat

end

end A302527.P17350230104873753656

/-! ## A302527.P3438067110789652996

`A302528(eq[4, A219347(n)])`
-/

namespace A302527.P3438067110789652996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302527.P3438067110789652996

/-! ## A302527.P17825189655680375642

`A302528(eq[5, A332954(n)])`
-/

namespace A302527.P17825189655680375642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302527.P17825189655680375642

/-! ## A302527.P12950467244162084731

`A302528(eq[6, A193592(n)])`
-/

namespace A302527.P12950467244162084731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302527.P12950467244162084731

/-! ## A302527.P5594110160520541112

`A302528(eq[32, A166065(n)])`
-/

namespace A302527.P5594110160520541112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302527.P5594110160520541112

/-!
# A302528: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302528, there is no canonical definition to state claims against.
-/

/-! ## A302528.P4614138614992588547

`A303410(n+1)-A046092(A185284(2*n+1))`
-/

namespace A302528.P4614138614992588547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (n + 1) - A046092 (A185284 (2 * n + 1)).toNat

end

end A302528.P4614138614992588547

/-! ## A302528.P3488480261156597779

`A072088(A303410(n+1))`
-/

namespace A302528.P3488480261156597779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A303410 (n + 1)).toNat

end

end A302528.P3488480261156597779

/-! ## A302528.P4458183416169050240

`A303410(A151764(n+1))`
-/

namespace A302528.P4458183416169050240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (A151764 (n + 1)).toNat

end

end A302528.P4458183416169050240

/-! ## A302528.P14124581750024361306

`A000196(A303410(n+1)²)`
-/

namespace A302528.P14124581750024361306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A303410 (n + 1) ^ 2).toNat

end

end A302528.P14124581750024361306

/-! ## A302528.P6005409581449305930

`A037213(A303410(n+1)²)`
-/

namespace A302528.P6005409581449305930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A303410 (n + 1) ^ 2).toNat

end

end A302528.P6005409581449305930

/-!
# A302529: Number of 3 X n 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302529, there is no canonical definition to state claims against.
-/

/-! ## A302529.P15959334213133567056

`A302528(∑[n+2]+4)`
-/

namespace A302529.P15959334213133567056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302529.P15959334213133567056

/-! ## A302529.P16249454907514148039

`A303410(∑[n+2]+4)`
-/

namespace A302529.P16249454907514148039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302529.P16249454907514148039

/-! ## A302529.P11108611474249512299

`lcm(2, A302528(A167614(n+1)))`
-/

namespace A302529.P11108611474249512299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A302528 (A167614 (n + 1)).toNat)

end

end A302529.P11108611474249512299

/-! ## A302529.P3422548872657541482

`A302528(A167614(n+1))+A011731(n)`
-/

namespace A302529.P3422548872657541482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A167614 (n + 1)).toNat + A011731 n

end

end A302529.P3422548872657541482

/-! ## A302529.P15638205748246294431

`A303410(A167614(n+1))+A025443(n)`
-/

namespace A302529.P15638205748246294431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (A167614 (n + 1)).toNat + A025443 n

end

end A302529.P15638205748246294431

/-!
# A302530: Number of 4Xn 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302530, there is no canonical definition to state claims against.
-/

/-! ## A302530.P271202933450221553

`A302528(∑[n+3]+7)`
-/

namespace A302530.P271202933450221553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302530.P271202933450221553

/-! ## A302530.P6746829320592037208

`A302528(A167614(n+2)+1)+char[19]`
-/

namespace A302530.P6746829320592037208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302530.P6746829320592037208

/-! ## A302530.P10380170006958572236

`A007318(C(n, 2))*A302528(A167614(n+2)+1)`
-/

namespace A302530.P10380170006958572236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A302528 (A167614 (n + 2) + 1).toNat

end

end A302530.P10380170006958572236

/-! ## A302530.P9888268212617757272

`A007318(and(1, -n))*A302528(A167614(n+2)+1)`
-/

namespace A302530.P9888268212617757272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A302528 (A167614 (n + 2) + 1).toNat

end

end A302530.P9888268212617757272

/-! ## A302530.P14157612937094112847

`A000041(C(n, n²))*A302528(A167614(n+2)+1)`
-/

namespace A302530.P14157612937094112847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A302528 (A167614 (n + 2) + 1).toNat

end

end A302530.P14157612937094112847

/-!
# A302531: Number of 5Xn 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302531, there is no canonical definition to state claims against.
-/

/-! ## A302531.P7681319133349196220

`A302528(C(n+6, 2)-n)`
-/

namespace A302531.P7681319133349196220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (Nat.choose (n + 6) 2 - n)

end

end A302531.P7681319133349196220

/-! ## A302531.P10068159164029602671

`A302528(A167499(n+3))`
-/

namespace A302531.P10068159164029602671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A167499 (n + 3)).toNat

end

end A302531.P10068159164029602671

/-! ## A302531.P6665756611084343701

`A302528(A155212(n)+13)`
-/

namespace A302531.P6665756611084343701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A155212 n + 13).toNat

end

end A302531.P6665756611084343701

/-! ## A302531.P38390157423951953

`A302528(A056000(n)+15)`
-/

namespace A302531.P38390157423951953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A056000 n + 15).toNat

end

end A302531.P38390157423951953

/-! ## A302531.P14308028668606072031

`A302528(eq[7, A066657(n)])`
-/

namespace A302531.P14308028668606072031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302531.P14308028668606072031

/-!
# A302532: Number of 6Xn 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302532, there is no canonical definition to state claims against.
-/

/-! ## A302532.P5222950892238170994

`A302528(A166136(n+4))`
-/

namespace A302532.P5222950892238170994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A166136 (n + 4)).toNat

end

end A302532.P5222950892238170994

/-! ## A302532.P13228404213401447464

`A302528(A056115(n)+21)`
-/

namespace A302532.P13228404213401447464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A056115 n + 21).toNat

end

end A302532.P13228404213401447464

/-! ## A302532.P1918689239741684847

`A302528(Δ[A264443(n)]+10)`
-/

namespace A302532.P1918689239741684847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (f1 (n + 1) - f1 n + 10).toNat

end

end A302532.P1918689239741684847

/-! ## A302532.P6431758950836576979

`A302528(A167499(n+4)+1)`
-/

namespace A302532.P6431758950836576979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A167499 (n + 4) + 1).toNat

end

end A302532.P6431758950836576979

/-! ## A302532.P7045058443943536583

`A302528(A167614(n+4)+3)`
-/

namespace A302532.P7045058443943536583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A167614 (n + 4) + 3).toNat

end

end A302532.P7045058443943536583

/-!
# A302533: Number of 7 X n 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302533, there is no canonical definition to state claims against.
-/

/-! ## A302533.P7008900402055131489

`A302528(A167487(n+5))`
-/

namespace A302533.P7008900402055131489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A167487 (n + 5)).toNat

end

end A302533.P7008900402055131489

/-! ## A302533.P4543003701779043447

`A302528(A302537(n)+27)`
-/

namespace A302533.P4543003701779043447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A302537 n + 27).toNat

end

end A302533.P4543003701779043447

/-! ## A302533.P10929074834463061989

`A302528(A056119(n)+28)`
-/

namespace A302533.P10929074834463061989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A056119 n + 28).toNat

end

end A302533.P10929074834463061989

/-! ## A302533.P5771221449498710339

`A302528(eq[11, A066657(n)])`
-/

namespace A302533.P5771221449498710339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302533.P5771221449498710339

/-! ## A302533.P9747236603323371392

`A302528(A166136(n+5)+1)`
-/

namespace A302533.P9747236603323371392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A166136 (n + 5) + 1).toNat

end

end A302533.P9747236603323371392

/-!
# A302534: Squarefree numbers whose prime indices are also squarefree and have disjoint prime indices.

The programs for A302534, there is no canonical definition to state claims against.
-/

/-! ## A302534.P13222522637740006663

`∪[2*A302521(n+1), A302521(n+1)]`
-/

namespace A302534.P13222522637740006663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A302521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302534.P13222522637740006663

/-! ## A302534.P5055722114563141767

`∪[A302521(n+1), A004277(A302521(n+1))]`
-/

namespace A302534.P5055722114563141767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A302521 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302534.P5055722114563141767

/-! ## A302534.P10952035468179963947

`record[A007947(n+1)-A325974(A156061(n+1))]`
-/

namespace A302534.P10952035468179963947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - A325974 (A156061 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302534.P10952035468179963947

/-! ## A302534.P9812079714166661963

`record[A007947(n+1)*A008966(A003963(n+1))]`
-/

namespace A302534.P9812079714166661963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A008966 (A003963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302534.P9812079714166661963

/-! ## A302534.P10007040078652065290

`record[A008966(A003963(n+1))*A327937(n+1)]`
-/

namespace A302534.P10007040078652065290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A003963 (n + 1)).toNat * A327937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302534.P10007040078652065290

/-! ## A302534.P7979535503189583530

`record[A003967(n+1)/A000188(A003963(n+1))]`
-/

namespace A302534.P7979535503189583530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003967 (n + 1) : ℚ) / (A000188 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302534.P7979535503189583530

/-! ## A302534.P4048167447341977600

`record[A007913(n+1)/A000188(A003963(n+1))]`
-/

namespace A302534.P4048167447341977600
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A000188 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302534.P4048167447341977600

/-! ## A302534.P13544256805388764160

`record[A015052(n+1)/A000188(A003963(n+1))]`
-/

namespace A302534.P13544256805388764160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015052 (n + 1) : ℚ) / (A000188 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302534.P13544256805388764160

/-! ## A302534.P17615645727947835423

`record[A015053(n+1)/A000188(A003963(n+1))]`
-/

namespace A302534.P17615645727947835423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015053 (n + 1) : ℚ) / (A000188 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302534.P17615645727947835423

/-! ## A302534.P5915388062396309679

`record[A019554(n+1)/A000188(A003963(n+1))]`
-/

namespace A302534.P5915388062396309679
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) : ℚ) / (A000188 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302534.P5915388062396309679

/-!
# A302535: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n * A(x)^n * Product_{k=0..n-1} (4*k + 1).

The programs for A302535, there is no canonical definition to state claims against.
-/

/-! ## A302535.P11366243626447416359

`A188042(A006902(n))`
-/

namespace A302535.P11366243626447416359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (A006902 n).toNat

end

end A302535.P11366243626447416359

/-!
# A302537: a(n) = (n^2 + 13*n + 2)/2.

The programs for A302537, the canonical program `A302537.P18275586766582321166` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302537 has offset 0).

The definition of A302537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302537.P18275586766582321166

`C(n, 2)+7*n+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A302537

/-- `C(n, 2)+7*n+1` -/
def P18275586766582321166.Spec : Prop :=
  ∀ n, (P18275586766582321166.a n : ℤ) = A302537 n

theorem P18275586766582321166.correct : P18275586766582321166.Spec := by
  intro n
  simp only [A302537]

end A302537

/-! ## A302537.P4750198910176310514

`a(n-1)+n+6` with `a(0)=1`
-/

namespace A302537.P4750198910176310514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 6)

end

end A302537.P4750198910176310514

namespace A302537

/-- `a(n-1)+n+6` -/
def P4750198910176310514.Spec : Prop :=
  ∀ n, (P4750198910176310514.a n : ℤ) = A302537 n

end A302537

/-! ## A302537.P11623576217356100560

`(n²+13*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302537.P11623576217356100560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 13 * n + 2 : ℚ) / 2

end

end A302537.P11623576217356100560

namespace A302537

/-- `(n²+13*n+2)/2` -/
def P11623576217356100560.Spec : Prop :=
  ∀ n, P11623576217356100560.a n = (A302537 n : ℚ)

end A302537

/-! ## A302537.P2678198375041767234

`A056119(n)+1`
-/

namespace A302537.P2678198375041767234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n + 1

end

end A302537.P2678198375041767234

namespace A302537

/-- `A056119(n)+1` -/
def P2678198375041767234.Spec : Prop :=
  ∀ n, P2678198375041767234.a n = A302537 n

end A302537

/-! ## A302537.P16849624898434398363

`A152947(n+1)+A008589(n)`
-/

namespace A302537.P16849624898434398363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1) + A008589 n

end

end A302537.P16849624898434398363

namespace A302537

/-- `A152947(n+1)+A008589(n)` -/
def P16849624898434398363.Spec : Prop :=
  ∀ n, P16849624898434398363.a n = A302537 n

end A302537

/-! ## A302537.P18053588012470231118

`A060544(n+1)-A002939(n)`
-/

namespace A302537.P18053588012470231118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1) - A002939 n

end

end A302537.P18053588012470231118

namespace A302537

/-- `A060544(n+1)-A002939(n)` -/
def P18053588012470231118.Spec : Prop :=
  ∀ n, P18053588012470231118.a n = A302537 n

end A302537

/-! ## A302537.P15016028802573900874

`∑[gcd(6, floor(acot(n)))+n]`
-/

namespace A302537.P15016028802573900874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 ⌊SequenceMachineLib.acot (n : ℝ)⌋ + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302537.P15016028802573900874

namespace A302537

/-- `∑[gcd(6, floor(acot(n)))+n]` -/
def P15016028802573900874.Spec : Prop :=
  ∀ n, (P15016028802573900874.a n : ℤ) = A302537 n

end A302537

/-! ## A302537.P12608270255598279899

`record[a(n-1)-(7-n)]` with `a(0)=1`
-/

namespace A302537.P12608270255598279899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (7 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302537.P12608270255598279899

namespace A302537

/-- `record[a(n-1)-(7-n)]` -/
def P12608270255598279899.Spec : Prop :=
  ∀ n, P12608270255598279899.a n = A302537 n

end A302537

/-! ## A302537.P8156513150318946001

`∑[(3%(n+1)²)!+n]`
-/

namespace A302537.P8156513150318946001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (3 % (n + 1) ^ 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302537.P8156513150318946001

namespace A302537

/-- `∑[(3%(n+1)²)!+n]` -/
def P8156513150318946001.Spec : Prop :=
  ∀ n, (P8156513150318946001.a n : ℤ) = A302537 n

end A302537

/-! ## A302537.P17132721632058338991

`record[(2-n)²-C(n+3, 2)]`
-/

namespace A302537.P17132721632058338991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2 - (Nat.choose (n + 3) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302537.P17132721632058338991

namespace A302537

/-- `record[(2-n)²-C(n+3, 2)]` -/
def P17132721632058338991.Spec : Prop :=
  ∀ n, P17132721632058338991.a n = A302537 n

end A302537

/-! ## A302537.P8713893861155525186

`(n+2)²-lcm(n-2, n-3)/2`
-/

namespace A302537.P8713893861155525186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) - (Int.lcm ((n : ℤ) - 2) ((n : ℤ) - 3) : ℚ) / 2

end

end A302537.P8713893861155525186

namespace A302537

/-- `(n+2)²-lcm(n-2, n-3)/2` -/
def P8713893861155525186.Spec : Prop :=
  ∀ n, P8713893861155525186.a n = (A302537 n : ℚ)

end A302537

/-! ## A302537.P13313257665639569734

`∑[2*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=7, a(2)=8`
-/

namespace A302537.P13313257665639569734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 8] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302537.P13313257665639569734

namespace A302537

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P13313257665639569734.Spec : Prop :=
  ∀ n, P13313257665639569734.a n = A302537 n

end A302537

/-! ## A302537.P7899682761072695328

`∑[floor(a(n-1)²/a(n-2))]` with `a(0)=1, a(1)=7, a(2)=8`
-/

namespace A302537.P7899682761072695328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 8] fun n f1 =>
  ⌊(f1 (n - 1) ^ 2 : ℚ) / (f1 (n - 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302537.P7899682761072695328

namespace A302537

/-- `∑[floor(a(n-1)²/a(n-2))]` -/
def P7899682761072695328.Spec : Prop :=
  ∀ n, P7899682761072695328.a n = A302537 n

end A302537

/-! ## A302537.P10778368163446442516

`A132759(n)/2+1`
-/

namespace A302537.P10778368163446442516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132759 n : ℚ) / 2 + 1

end

end A302537.P10778368163446442516

namespace A302537

/-- `A132759(n)/2+1` -/
def P10778368163446442516.Spec : Prop :=
  ∀ n, P10778368163446442516.a n = (A302537 n : ℚ)

end A302537

/-! ## A302537.P17019295248733877148

`A056115(n)+1+n`
-/

namespace A302537.P17019295248733877148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + 1 + (n : ℤ)

end

end A302537.P17019295248733877148

namespace A302537

/-- `A056115(n)+1+n` -/
def P17019295248733877148.Spec : Prop :=
  ∀ n, P17019295248733877148.a n = A302537 n

end A302537

/-! ## A302537.P3538841723407655066

`A056121(n)+1-n`
-/

namespace A302537.P3538841723407655066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056121 n + (1 - (n : ℤ))

end

end A302537.P3538841723407655066

namespace A302537

/-- `A056121(n)+1-n` -/
def P3538841723407655066.Spec : Prop :=
  ∀ n, P3538841723407655066.a n = A302537 n

end A302537

/-! ## A302537.P4575161594169653224

`A052905(n)+3*n`
-/

namespace A302537.P4575161594169653224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n + (3 * n : ℤ)

end

end A302537.P4575161594169653224

namespace A302537

/-- `A052905(n)+3*n` -/
def P4575161594169653224.Spec : Prop :=
  ∀ n, P4575161594169653224.a n = A302537 n

end A302537

/-! ## A302537.P8823091156902337090

`5*n+A000217(n+1)`
-/

namespace A302537.P8823091156902337090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) + A000217 (n + 1)

end

end A302537.P8823091156902337090

namespace A302537

/-- `5*n+A000217(n+1)` -/
def P8823091156902337090.Spec : Prop :=
  ∀ n, P8823091156902337090.a n = A302537 n

end A302537

/-!
# A302539: Squarefree numbers whose prime indices other than 1 are prime numbers.

The programs for A302539, the canonical program `A302539.P592553550650422003` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302539 has offset 1).

The definition of A302539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 657 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302539.P592553550650422003

`record[A055231(A291686(n+1))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A302539

/-- `record[A055231(A291686(n+1))]` -/
def P592553550650422003.Spec : Prop :=
  ∀ n, P592553550650422003.a n = A302539 (n + 1)

theorem P592553550650422003.correct : P592553550650422003.Spec := by
  intro n
  simp only [A302539, Nat.add_sub_cancel]

end A302539

/-! ## A302539.P13184493405282632703

`filter[A291686(n+1), A008966(#)]`
-/

namespace A302539.P13184493405282632703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A302539.P13184493405282632703

namespace A302539

/-- `filter[A291686(n+1), A008966(#)]` -/
def P13184493405282632703.Spec : Prop :=
  ∀ n, P13184493405282632703.a n = A302539 (n + 1)

end A302539

/-! ## A302539.P14192916784678296682

`filter[A291686(n+1), A166486(#)]`
-/

namespace A302539.P14192916784678296682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A302539.P14192916784678296682

namespace A302539

/-- `filter[A291686(n+1), A166486(#)]` -/
def P14192916784678296682.Spec : Prop :=
  ∀ n, P14192916784678296682.a n = A302539 (n + 1)

end A302539

/-! ## A302539.P15363340695359854910

`filter[A291686(n+1), A353559(#)]`
-/

namespace A302539.P15363340695359854910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A302539.P15363340695359854910

namespace A302539

/-- `filter[A291686(n+1), A353559(#)]` -/
def P15363340695359854910.Spec : Prop :=
  ∀ n, P15363340695359854910.a n = A302539 (n + 1)

end A302539

/-! ## A302539.P5645310723739383777

`filter[A291686(n+1), A359550(#)]`
-/

namespace A302539.P5645310723739383777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A302539.P5645310723739383777

namespace A302539

/-- `filter[A291686(n+1), A359550(#)]` -/
def P5645310723739383777.Spec : Prop :=
  ∀ n, P5645310723739383777.a n = A302539 (n + 1)

end A302539

/-! ## A302539.P2250281052899043115

`filter[A291686(n+1), A371087(#)]`
-/

namespace A302539.P2250281052899043115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A302539.P2250281052899043115

namespace A302539

/-- `filter[A291686(n+1), A371087(#)]` -/
def P2250281052899043115.Spec : Prop :=
  ∀ n, P2250281052899043115.a n = A302539 (n + 1)

end A302539

/-! ## A302539.P17693790453737484520

`eq[char[A291686(n+1)], A040446(n)]`
-/

namespace A302539.P17693790453737484520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040446 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A302539.P17693790453737484520

namespace A302539

/-- `eq[char[A291686(n+1)], A040446(n)]` -/
def P17693790453737484520.Spec : Prop :=
  ∀ n, (P17693790453737484520.a n : ℤ) = A302539 (n + 1)

end A302539

/-! ## A302539.P1612947647002223902

`record[∏{p}[A302540(n+1), #]]`
-/

namespace A302539.P1612947647002223902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302539.P1612947647002223902

namespace A302539

/-- `record[∏{p}[A302540(n+1), #]]` -/
def P1612947647002223902.Spec : Prop :=
  ∀ n, (P1612947647002223902.a n : ℤ) = A302539 (n + 1)

end A302539

/-! ## A302539.P262439427450402155

`record[A007913(A302540(n+1))]`
-/

namespace A302539.P262439427450402155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A302540 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302539.P262439427450402155

namespace A302539

/-- `record[A007913(A302540(n+1))]` -/
def P262439427450402155.Spec : Prop :=
  ∀ n, P262439427450402155.a n = A302539 (n + 1)

end A302539

/-! ## A302539.P12963912820523550155

`filter[A302540(n+1), A008966(#)]`
-/

namespace A302539.P12963912820523550155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A302539.P12963912820523550155

namespace A302539

/-- `filter[A302540(n+1), A008966(#)]` -/
def P12963912820523550155.Spec : Prop :=
  ∀ n, P12963912820523550155.a n = A302539 (n + 1)

end A302539

/-! ## A302539.P2946055980562524529

`∩[A291686(n+1), A326535(n+1)]`
-/

namespace A302539.P2946055980562524529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302539.P2946055980562524529

namespace A302539

/-- `∩[A291686(n+1), A326535(n+1)]` -/
def P2946055980562524529.Spec : Prop :=
  ∀ n, (P2946055980562524529.a n : ℤ) = A302539 (n + 1)

end A302539

/-! ## A302539.P13120124314373096902

`∩[A302540(n+1), A326535(n+1)]`
-/

namespace A302539.P13120124314373096902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302539.P13120124314373096902

namespace A302539

/-- `∩[A302540(n+1), A326535(n+1)]` -/
def P13120124314373096902.Spec : Prop :=
  ∀ n, (P13120124314373096902.a n : ℤ) = A302539 (n + 1)

end A302539

/-! ## A302539.P7494186021375065090

`∩[A005117(n+1), A291686(n+1)]`
-/

namespace A302539.P7494186021375065090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302539.P7494186021375065090

namespace A302539

/-- `∩[A005117(n+1), A291686(n+1)]` -/
def P7494186021375065090.Spec : Prop :=
  ∀ n, (P7494186021375065090.a n : ℤ) = A302539 (n + 1)

end A302539

/-! ## A302539.P4589066583840954226

`∩[A005117(n+1), A302540(n+1)]`
-/

namespace A302539.P4589066583840954226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302539.P4589066583840954226

namespace A302539

/-- `∩[A005117(n+1), A302540(n+1)]` -/
def P4589066583840954226.Spec : Prop :=
  ∀ n, (P4589066583840954226.a n : ℤ) = A302539 (n + 1)

end A302539

/-! ## A302539.P1104235240423536770

`∩[A291686(n+1), A348506(n+1)]`
-/

namespace A302539.P1104235240423536770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302539.P1104235240423536770

namespace A302539

/-- `∩[A291686(n+1), A348506(n+1)]` -/
def P1104235240423536770.Spec : Prop :=
  ∀ n, (P1104235240423536770.a n : ℤ) = A302539 (n + 1)

end A302539

/-! ## A302539.P1973182631351967112

`∩[A291686(n+1), A348961(n+1)]`
-/

namespace A302539.P1973182631351967112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302539.P1973182631351967112

namespace A302539

/-- `∩[A291686(n+1), A348961(n+1)]` -/
def P1973182631351967112.Spec : Prop :=
  ∀ n, (P1973182631351967112.a n : ℤ) = A302539 (n + 1)

end A302539

/-! ## A302539.P1235070875606446508

`∩[A291686(n+1), A348499(n+1)]`
-/

namespace A302539.P1235070875606446508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302539.P1235070875606446508

namespace A302539

/-- `∩[A291686(n+1), A348499(n+1)]` -/
def P1235070875606446508.Spec : Prop :=
  ∀ n, (P1235070875606446508.a n : ℤ) = A302539 (n + 1)

end A302539

/-! ## A302539.P11260755477517816334

`∩[A193304(n+1), A291686(n+1)]`
-/

namespace A302539.P11260755477517816334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302539.P11260755477517816334

namespace A302539

/-- `∩[A193304(n+1), A291686(n+1)]` -/
def P11260755477517816334.Spec : Prop :=
  ∀ n, (P11260755477517816334.a n : ℤ) = A302539 (n + 1)

end A302539

/-! ## A302539.P10967742467521833008

`∩[A240370(n+1), A291686(n+1)]`
-/

namespace A302539.P10967742467521833008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302539.P10967742467521833008

namespace A302539

/-- `∩[A240370(n+1), A291686(n+1)]` -/
def P10967742467521833008.Spec : Prop :=
  ∀ n, (P10967742467521833008.a n : ℤ) = A302539 (n + 1)

end A302539

/-! ## A302539.P9034895220152988879

`∩[A291686(n+1), A336223(n+1)]`
-/

namespace A302539.P9034895220152988879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302539.P9034895220152988879

namespace A302539

/-- `∩[A291686(n+1), A336223(n+1)]` -/
def P9034895220152988879.Spec : Prop :=
  ∀ n, (P9034895220152988879.a n : ℤ) = A302539 (n + 1)

end A302539

/-!
# A302540: Numbers whose prime indices other than 1 are prime numbers.

The programs for A302540, the canonical program `A302540.P6853657110483952384` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302540 has offset 1).

The definition of A302540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302540.P9943749287312100747

`eq[A003963(n+1), A295665(n+1)]+1`
-/

namespace A302540.P9943749287312100747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302540.P9943749287312100747

namespace A302540

/-- `eq[A003963(n+1), A295665(n+1)]+1` -/
def P9943749287312100747.Spec : Prop :=
  ∀ n, (P9943749287312100747.a n : ℤ) = A302540 (n + 1)

end A302540

/-! ## A302540.P6853657110483952384

`eq[A087436(n+1), A302242(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A302540

/-- `eq[A087436(n+1), A302242(n+1)]+1` -/
def P6853657110483952384.Spec : Prop :=
  ∀ n, (P6853657110483952384.a n : ℤ) = A302540 (n + 1)

theorem P6853657110483952384.correct : P6853657110483952384.Spec := by
  intro n
  simp only [A302540, Nat.add_sub_cancel]

end A302540

/-! ## A302540.P5739601962538678474

`eq[A257994(n+1), A302242(n+1)]+1`
-/

namespace A302540.P5739601962538678474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302540.P5739601962538678474

namespace A302540

/-- `eq[A257994(n+1), A302242(n+1)]+1` -/
def P5739601962538678474.Spec : Prop :=
  ∀ n, (P5739601962538678474.a n : ℤ) = A302540 (n + 1)

end A302540

/-! ## A302540.P18144407650453251547

`eq[A196052(n+1)-A001222(n+1), A257994(n+1)]+1`
-/

namespace A302540.P18144407650453251547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196052 (n + 1) - A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302540.P18144407650453251547

namespace A302540

/-- `eq[A196052(n+1)-A001222(n+1), A257994(n+1)]+1` -/
def P18144407650453251547.Spec : Prop :=
  ∀ n, (P18144407650453251547.a n : ℤ) = A302540 (n + 1)

end A302540

/-! ## A302540.P167553099859366749

`∩[A302478(n+1), A302492(n+1)]`
-/

namespace A302540.P167553099859366749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302540.P167553099859366749

namespace A302540

/-- `∩[A302478(n+1), A302492(n+1)]` -/
def P167553099859366749.Spec : Prop :=
  ∀ n, (P167553099859366749.a n : ℤ) = A302540 (n + 1)

end A302540

/-! ## A302540.P5103813940974797488

`lt[A340691(n+1), 2]+1`
-/

namespace A302540.P5103813940974797488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340691 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A302540.P5103813940974797488

namespace A302540

/-- `lt[A340691(n+1), 2]+1` -/
def P5103813940974797488.Spec : Prop :=
  ∀ n, (P5103813940974797488.a n : ℤ) = A302540 (n + 1)

end A302540

/-! ## A302540.P2384150786333587420

`eq[0, A330944(A000265(n+1))]+1`
-/

namespace A302540.P2384150786333587420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330944 (A000265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302540.P2384150786333587420

namespace A302540

/-- `eq[0, A330944(A000265(n+1))]+1` -/
def P2384150786333587420.Spec : Prop :=
  ∀ n, (P2384150786333587420.a n : ℤ) = A302540 (n + 1)

end A302540

/-!
# A302542: Expansion of e.g.f. arctan(x)/cos(x) (odd powers only).

The programs for A302542, there is no canonical definition to state claims against.
-/

/-! ## A302542.P3970394644526680225

`A009435(2*n+1)*A033999(n)`
-/

namespace A302542.P3970394644526680225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009435 (2 * n + 1) * A033999 n

end

end A302542.P3970394644526680225

/-! ## A302542.P15209552421631448503

`(1-2*n%2)*A009435(A000027(2*n+1))`
-/

namespace A302542.P15209552421631448503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((2 * (n % 2) : ℕ) : ℤ)) * A009435 (A000027 (2 * n + 1)).toNat

end

end A302542.P15209552421631448503

/-! ## A302542.P15842905851676986845

`A009435(A005408(n))/A033999(n)`
-/

namespace A302542.P15842905851676986845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009435 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A302542.P15842905851676986845

/-! ## A302542.P2365823925854699198

`A009384(2*n+1)*A009435(2*n+1)`
-/

namespace A302542.P2365823925854699198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009384 (2 * n + 1) * A009435 (2 * n + 1)

end

end A302542.P2365823925854699198

/-!
# A302543: Expansion of e.g.f. arctanh(x)/cos(x) (odd powers only).

The programs for A302543, there is no canonical definition to state claims against.
-/

/-! ## A302543.P8192886945931135501

`A009429(Δ[n²])`
-/

namespace A302543.P8192886945931135501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009429 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A302543.P8192886945931135501

/-! ## A302543.P3957238721873636385

`record[A009429(n+1)]`
-/

namespace A302543.P3957238721873636385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302543.P3957238721873636385

/-! ## A302543.P8687437227109647387

`record[or(1, A009429(n))]`
-/

namespace A302543.P8687437227109647387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009429 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302543.P8687437227109647387

/-! ## A302543.P8271977022398384704

`abs(A009429(2*n+1))`
-/

namespace A302543.P8271977022398384704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009429 (2 * n + 1)|

end

end A302543.P8271977022398384704

/-! ## A302543.P9074781594968261205

`or(1, A009429(A005408(n)))`
-/

namespace A302543.P9074781594968261205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009429 (A005408 n).toNat)

end

end A302543.P9074781594968261205

/-!
# A302544: Lexicographically earliest sequence of distinct nonnegative numbers such that for any n >= 0, A065359(a(n)) = - A065359(n).

The programs for A302544, there is no canonical definition to state claims against.
-/

/-! ## A302544.P13824668804304623463

`A222251(A057300(n))+A000007(A124441(n+1))`
-/

namespace A302544.P13824668804304623463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A057300 n).toNat + A000007 (A124441 (n + 1)).toNat

end

end A302544.P13824668804304623463

/-! ## A302544.P1140421065788513434

`A222251(A057300(n))%A006530(A005262(n))`
-/

namespace A302544.P1140421065788513434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222251 (A057300 n).toNat) (A006530 (A005262 n).toNat)

end

end A302544.P1140421065788513434

/-! ## A302544.P15460444943979812239

`and(A152388(2*n+1), A222251(A057300(n)))`
-/

namespace A302544.P15460444943979812239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (2 * n + 1)) (A222251 (A057300 n).toNat)

end

end A302544.P15460444943979812239

/-! ## A302544.P16724574690007224437

`A222251(A057300(n)%A210969(n+1))`
-/

namespace A302544.P16724574690007224437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (Int.tmod (A057300 n) (A210969 (n + 1))).toNat

end

end A302544.P16724574690007224437

/-! ## A302544.P10655889063591172262

`A001221(A083685(n+1))*A222251(A057300(n))`
-/

namespace A302544.P10655889063591172262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A083685 (n + 1)).toNat * A222251 (A057300 n).toNat

end

end A302544.P10655889063591172262

/-!
# A302545: Number of non-isomorphic multiset partitions of weight n with no singletons.

The programs for A302545, there is no canonical definition to state claims against.
-/

/-! ## A302545.P4129867673307380132

`A007716(n)-A330058(n)`
-/

namespace A302545.P4129867673307380132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007716 n - A330058 n

end

end A302545.P4129867673307380132

/-! ## A302545.P9128819259736707599

`∑{d}[C(2, n+2)+n, A303546(#)]-A330058(n)`
-/

namespace A302545.P9128819259736707599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A303546 d - A330058 n

end

end A302545.P9128819259736707599

/-! ## A302545.P3255179187861734651

`∑{d}[A028310(n), A303546(#)]-A330058(n)`
-/

namespace A302545.P3255179187861734651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A303546 d - A330058 n

end

end A302545.P3255179187861734651

/-! ## A302545.P10965228214119834394

`2*A318395(n)-A316983(n)-A330058(n)`
-/

namespace A302545.P10965228214119834394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318395 n - A316983 n - A330058 n

end

end A302545.P10965228214119834394

/-! ## A302545.P6036805756076424952

`A321283(n)+A320810(A028310(n))-A330058(n)`
-/

namespace A302545.P6036805756076424952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321283 n + A320810 (A028310 n).toNat - A330058 n

end

end A302545.P6036805756076424952

/-!
# A302546: a(n) = Sum_{k = 1...n} 2^binomial(n, k).

The programs for A302546, there is no canonical definition to state claims against.
-/

/-! ## A302546.P15544968070153401747

`A001315(n)-2`
-/

namespace A302546.P15544968070153401747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001315 n - 2

end

end A302546.P15544968070153401747

/-! ## A302546.P4375695706219233143

`A306020(n)-1+n`
-/

namespace A302546.P4375695706219233143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306020 n - 1 + (n : ℤ)

end

end A302546.P4375695706219233143

/-! ## A302546.P12794968662970656729

`A169974(n)-2+n`
-/

namespace A302546.P12794968662970656729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169974 n - 2 + (n : ℤ)

end

end A302546.P12794968662970656729

/-! ## A302546.P5637717941213776996

`A306020(n)+A023443(n)`
-/

namespace A302546.P5637717941213776996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306020 n + A023443 n

end

end A302546.P5637717941213776996

/-! ## A302546.P698370579819127860

`A005496(n)-(2-A306020(n))`
-/

namespace A302546.P698370579819127860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 n - (2 - A306020 n)

end

end A302546.P698370579819127860

/-!
# A302547: Expansion of e.g.f. -log(1 - log(1 + x))/(1 - log(1 + x)).

The programs for A302547, there is no canonical definition to state claims against.
-/

/-! ## A302547.P7546013803567863324

`A071538(abs(A287695(n+1)-A340356(n))+1)`
-/

namespace A302547.P7546013803567863324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (|A287695 (n + 1) - A340356 n| + 1).toNat

end

end A302547.P7546013803567863324

/-! ## A302547.P16549704370881881972

`A265534(floor(2^n/sqrt(2)))`
-/

namespace A302547.P16549704370881881972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265534 ⌊(2 ^ n : ℝ) / Real.sqrt (2 : ℝ)⌋.toNat

end

end A302547.P16549704370881881972

/-! ## A302547.P6778688155002614799

`A265569(2*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A302547.P6778688155002614799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A265569 (2 * a (n - 1)).toNat

end

end A302547.P6778688155002614799

/-!
# A302548: Expansion of e.g.f. -log(1 + log(1 - x))/(1 + log(1 - x)).

The programs for A302548, there is no canonical definition to state claims against.
-/

/-! ## A302548.P12020164032456761647

`A120613(A120590(n)+floor(n*sqrt(3)))`
-/

namespace A302548.P12020164032456761647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 (A120590 n + ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋).toNat

end

end A302548.P12020164032456761647

/-! ## A302548.P11117050366076941502

`A057354(A322206(n)+A087804(n))`
-/

namespace A302548.P11117050366076941502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A322206 n + A087804 n).toNat

end

end A302548.P11117050366076941502

/-!
# A302549: Expansion of Sum_{k>=1} (-1 + Product_{j>=1} 1/(1 - x^(k*j))^j).

The programs for A302549, there is no canonical definition to state claims against.
-/

/-! ## A302549.P725648182691746860

`∑{d}[n+1, A000219(#)]`
-/

namespace A302549.P725648182691746860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000219 d

end

end A302549.P725648182691746860

/-! ## A302549.P7999108419381260539

`∑{d}[n+1, A000005(#)*A300275((n+1)/#)]`
-/

namespace A302549.P7999108419381260539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A300275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A302549.P7999108419381260539

/-! ## A302549.P7567349576883919279

`∑{d}[n+1, A242642(A000217(#))]`
-/

namespace A302549.P7567349576883919279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A242642 (A000217 d).toNat

end

end A302549.P7567349576883919279

/-! ## A302549.P16614925021103008134

`∑{d}[n+1, A257673(A000124(#))]`
-/

namespace A302549.P16614925021103008134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A257673 (A000124 d).toNat

end

end A302549.P16614925021103008134

/-! ## A302549.P9263320092810304857

`∑{d}[n+1, A255961(A055998(#)+1)]`
-/

namespace A302549.P9263320092810304857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A255961 (A055998 d + 1).toNat

end

end A302549.P9263320092810304857

/-!
# A302550: Expansion of Sum_{k>=1} (-1 + Product_{j>=1} (1 + x^(k*j))^j).

The programs for A302550, there is no canonical definition to state claims against.
-/

/-! ## A302550.P17600575876639460924

`∑{d}[n+1, A026007(#)]`
-/

namespace A302550.P17600575876639460924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A026007 d

end

end A302550.P17600575876639460924

/-! ## A302550.P11590769986559814993

`∑{d}[n+1, A000005(#)*A300276((n+1)/#)]`
-/

namespace A302550.P11590769986559814993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A300276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A302550.P11590769986559814993

/-!
# A302551: a(n) = a(a(n-1)) + a(n-a(n-2)) with a(1) = a(2) = a(5) = 1, a(3) = a(6) = 2, a(4) = 6.

The programs for A302551, the canonical program `A302551.P14962035159577689282` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302551 has offset 1).

The definition of A302551 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(n-a(n-2))` (program `A302551.P14962035159577689282`, by `A302551.P14962035159577689282.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302551.P14962035159577689282

`a(a(n-1)-1)+a(n-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A302551

/-- `a(a(n-1)-1)+a(n-a(n-2))` -/
def P14962035159577689282.Spec : Prop :=
  ∀ n, (P14962035159577689282.a n : ℤ) = A302551 (n + 1)

theorem P14962035159577689282.correct : P14962035159577689282.Spec := by
  intro n
  simp only [A302551, Nat.add_sub_cancel]

end A302551

/-!
# A302552: Number of segments needed to display the n-th prime number on a 7-segment LCD display.

The programs for A302552, there is no canonical definition to state claims against.
-/

/-! ## A302552.P16959114683246957770

`A006942(A000040(n+1))`
-/

namespace A302552.P16959114683246957770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A000040 (n + 1)).toNat

end

end A302552.P16959114683246957770

/-! ## A302552.P11851408471950071088

`A006942(p?[xor(1, n)])`
-/

namespace A302552.P11851408471950071088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A302552.P11851408471950071088

/-! ## A302552.P874831478311795060

`A006942(p?[comp[n²]])`
-/

namespace A302552.P874831478311795060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A302552.P874831478311795060

/-! ## A302552.P4627120637392805575

`A006942(Δ[A007504(n)])`
-/

namespace A302552.P4627120637392805575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (f1 (n + 1) - f1 n).toNat

end

end A302552.P4627120637392805575

/-! ## A302552.P16086731063562437532

`A006942(A004087(n+1))`
-/

namespace A302552.P16086731063562437532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A004087 (n + 1)).toNat

end

end A302552.P16086731063562437532

/-! ## A302552.P3582268057055520593

`A006942(A028906(n+1))`
-/

namespace A302552.P3582268057055520593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A028906 (n + 1)).toNat

end

end A302552.P3582268057055520593

/-! ## A302552.P13133129812509505875

`A006942(A171018(n+1))`
-/

namespace A302552.P13133129812509505875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A171018 (n + 1)).toNat

end

end A302552.P13133129812509505875

/-! ## A302552.P6472393241315729228

`A006942(A171025(n+1))`
-/

namespace A302552.P6472393241315729228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A171025 (n + 1)).toNat

end

end A302552.P6472393241315729228

/-! ## A302552.P17979527174584875822

`A006942(A171026(n+1))`
-/

namespace A302552.P17979527174584875822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A171026 (n + 1)).toNat

end

end A302552.P17979527174584875822

/-! ## A302552.P5774085176037569794

`A006942(A171055(n+1))`
-/

namespace A302552.P5774085176037569794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A171055 (n + 1)).toNat

end

end A302552.P5774085176037569794

/-! ## A302552.P6337870650218278543

`A006942(A008578(n+2))`
-/

namespace A302552.P6337870650218278543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A008578 (n + 2)).toNat

end

end A302552.P6337870650218278543

/-! ## A302552.P4914222171421389159

`A006942(A182986(n+2))`
-/

namespace A302552.P4914222171421389159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A182986 (n + 2)).toNat

end

end A302552.P4914222171421389159

/-! ## A302552.P2356332698859139463

`A006942(record[A006530(n+2)])`
-/

namespace A302552.P2356332698859139463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302552.P2356332698859139463

/-! ## A302552.P16703938373609466061

`A006942(record[A014963(n+2)])`
-/

namespace A302552.P16703938373609466061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302552.P16703938373609466061

/-! ## A302552.P2724082518097080127

`A006942(record[A020639(n+2)])`
-/

namespace A302552.P2724082518097080127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302552.P2724082518097080127

/-! ## A302552.P11542724113494409420

`A006942(eq[2, A000005(n+1)]+1)`
-/

namespace A302552.P11542724113494409420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A302552.P11542724113494409420

/-! ## A302552.P6819880886626752817

`A006942(A101989(n+1))`
-/

namespace A302552.P6819880886626752817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A101989 (n + 1)).toNat

end

end A302552.P6819880886626752817

/-!
# A302553: Hyper-4 powers that are not hyper-5 powers.

The programs for A302553, there is no canonical definition to state claims against.
-/

/-! ## A302553.P16574701254300261055

`(abs(1-n)+3)^(n+2)`
-/

namespace A302553.P16574701254300261055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|1 - (n : ℤ)| + 3) ^ (n + 2)

end

end A302553.P16574701254300261055

/-! ## A302553.P3723750762899477008

`lcm(gcd(4, n)², (n+2)^(n+2))`
-/

namespace A302553.P3723750762899477008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.gcd 4 n ^ 2) ((n + 2) ^ (n + 2))

end

end A302553.P3723750762899477008

/-! ## A302553.P17993197574596219486

`record[(n-2)*(n-2)^abs(3-n)]`
-/

namespace A302553.P17993197574596219486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) * ((n : ℤ) - 2 : ℚ) ^ (|3 - (n : ℤ)| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302553.P17993197574596219486

/-! ## A302553.P6039797827513959588

`A271936(n+3)`
-/

namespace A302553.P6039797827513959588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271936 (n + 3)

end

end A302553.P6039797827513959588

/-! ## A302553.P4999060392830818344

`((n+2)^((n+2)/A020639(A000010(n+2))))²`
-/

namespace A302553.P4999060392830818344
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℝ) ^ ((n + 2 : ℚ) / (A020639 (A000010 (n + 2)).toNat : ℚ) : ℝ)) ^ 2

end

end A302553.P4999060392830818344

/-!
# A302554: Powers that are not hyper-4 powers.

The programs for A302554, there is no canonical definition to state claims against.
-/

/-! ## A302554.P3038513847508013492

`lt[A253641(A003415(n)), A253641(n)]`
-/

namespace A302554.P3038513847508013492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302554.P3038513847508013492

/-! ## A302554.P11758181921523951993

`lt[A253641(n*A253641(n)), A253641(n)]`
-/

namespace A302554.P11758181921523951993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 ((n : ℤ) * A253641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302554.P11758181921523951993

/-! ## A302554.P8043189668201883755

`A001597(lt[A259862(3*n+1), A285019(n)])`
-/

namespace A302554.P8043189668201883755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259862 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A302554.P8043189668201883755

/-! ## A302554.P15172553477438049295

`A001694(lt[A000041(n), A126198(3*n+1)])`
-/

namespace A302554.P15172553477438049295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A302554.P15172553477438049295

/-! ## A302554.P14418026383261336627

`eq[3, A302555(n)]`
-/

namespace A302554.P14418026383261336627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302554.P14418026383261336627

/-!
# A302555: Maximal degree x for hyperoperated representation of n = a[x]b.

The programs for A302555, there is no canonical definition to state claims against.
-/

/-! ## A302555.P12587975078400254811

`A171157(or(A007088(n), A010271(n)))`
-/

namespace A302555.P12587975078400254811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171157 (Int.lor (A007088 n) (A010271 n)).toNat

end

end A302555.P12587975078400254811

/-! ## A302555.P17496953861475990285

`abs(A335877(A356040(n+1)+A328078(n)))`
-/

namespace A302555.P17496953861475990285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A335877 (A356040 (n + 1) + A328078 n).toNat|

end

end A302555.P17496953861475990285

/-! ## A302555.P14714605046521598483

`A104368(A214023(n+2)+4)-1`
-/

namespace A302555.P14714605046521598483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104368 (A214023 (n + 2) + 4).toNat - 1

end

end A302555.P14714605046521598483

/-! ## A302555.P3765262928857059747

`A276004(xor(A073294(n), A157845(n)))`
-/

namespace A302555.P3765262928857059747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276004 (Int.xor (A073294 n) (A157845 n)).toNat

end

end A302555.P3765262928857059747

/-! ## A302555.P9452898344042890280

`A276004(xor(A073295(n), A157845(n)))`
-/

namespace A302555.P9452898344042890280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276004 (Int.xor (A073295 n) (A157845 n)).toNat

end

end A302555.P9452898344042890280

/-!
# A302556: Expansion of x*(1 + 2*x*(5 - 4*x)*(1 + x^2)*(1 + x^4))/((1 - x)*(1 - 10*x^9)).

The programs for A302556, the canonical program `A302556.P1728675899170851961` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302556 has offset 0).

The definition of A302556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302556.P1728675899170851961

`a(n-1)+10*a(n-9)-10*a(n-10)` with `a(0)=0, a(1)=1, a(2)=11, a(3)=3, a(4)=13, a(5)=5, a(6)=15, a(7)=7, a(8)=17, a(9)=9`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A302556

/-- `a(n-1)+10*a(n-9)-10*a(n-10)` -/
def P1728675899170851961.Spec : Prop :=
  ∀ n, P1728675899170851961.a n = A302556 n

theorem P1728675899170851961.correct : P1728675899170851961.Spec := by
  intro n
  simp only [A302556]

end A302556

/-!
# A302557: Expansion of 1/(2 - Sum_{k>=0} k!*x^k/(1 + x)^(k+1)).

The programs for A302557, there is no canonical definition to state claims against.
-/

/-! ## A302557.P13693772740737129989

`A008616(A052578(n)-n)`
-/

namespace A302557.P13693772740737129989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A052578 n - (n : ℤ)).toNat

end

end A302557.P13693772740737129989

/-! ## A302557.P9904602129349764274

`A008616(∏[A233583(n+1)]-n)`
-/

namespace A302557.P9904602129349764274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (∏ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A302557.P9904602129349764274

/-! ## A302557.P10281786464588517729

`A134119(A098558(n))^round(n/(n+1))`
-/

namespace A302557.P10281786464588517729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134119 (A098558 n).toNat : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) : ℤ)

end

end A302557.P10281786464588517729

/-!
# A302559: Partial sums of A092183.

The programs for A302559, the canonical program `A302559.P17552720317405693606` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302559 has offset 1).

The definition of A302559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302559.P17552720317405693606

`∑[A092183(n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A302559

/-- `∑[A092183(n+1)]` -/
def P17552720317405693606.Spec : Prop :=
  ∀ n, P17552720317405693606.a n = A302559 (n + 1)

theorem P17552720317405693606.correct : P17552720317405693606.Spec := by
  intro n
  simp only [A302559, Nat.add_sub_cancel]

end A302559

/-! ## A302559.P5266471657739242791

`∑[record[A092183(A286378(n))]]`
-/

namespace A302559.P5266471657739242791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092183 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302559.P5266471657739242791

namespace A302559

/-- `∑[record[A092183(A286378(n))]]` -/
def P5266471657739242791.Spec : Prop :=
  ∀ n, P5266471657739242791.a n = A302559 (n + 1)

end A302559

/-! ## A302559.P2063755338220311411

`∑[record[A092183(A291769(n))]]`
-/

namespace A302559.P2063755338220311411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092183 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302559.P2063755338220311411

namespace A302559

/-- `∑[record[A092183(A291769(n))]]` -/
def P2063755338220311411.Spec : Prop :=
  ∀ n, P2063755338220311411.a n = A302559 (n + 1)

end A302559

/-! ## A302559.P7539424833864742304

`∑[record[A092183(A152271(n))]]`
-/

namespace A302559.P7539424833864742304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092183 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302559.P7539424833864742304

namespace A302559

/-- `∑[record[A092183(A152271(n))]]` -/
def P7539424833864742304.Spec : Prop :=
  ∀ n, P7539424833864742304.a n = A302559 (n + 1)

end A302559

/-! ## A302559.P7665188408331614762

`∑[record[A092183(A158416(n))]]`
-/

namespace A302559.P7665188408331614762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092183 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302559.P7665188408331614762

namespace A302559

/-- `∑[record[A092183(A158416(n))]]` -/
def P7665188408331614762.Spec : Prop :=
  ∀ n, P7665188408331614762.a n = A302559 (n + 1)

end A302559

/-! ## A302559.P14600007402775572539

`∑[record[A092183(A028920(n))]]`
-/

namespace A302559.P14600007402775572539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092183 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302559.P14600007402775572539

namespace A302559

/-- `∑[record[A092183(A028920(n))]]` -/
def P14600007402775572539.Spec : Prop :=
  ∀ n, P14600007402775572539.a n = A302559 (n + 1)

end A302559

/-! ## A302559.P6469984065928322886

`∑[record[A092183(A193592(n))]]`
-/

namespace A302559.P6469984065928322886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092183 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302559.P6469984065928322886

namespace A302559

/-- `∑[record[A092183(A193592(n))]]` -/
def P6469984065928322886.Spec : Prop :=
  ∀ n, P6469984065928322886.a n = A302559 (n + 1)

end A302559

/-!
# A302560: Partial sums of icosahedral numbers (A006564).

The programs for A302560, the canonical program `A302560.P10239202043613080348` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302560 has offset 1).

The definition of A302560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302560.P15721945558189832245

`(n+1)*(2-3*(n+1)+10*(n+1)²+15*(n+1)^3)/24`
-/

namespace A302560.P15721945558189832245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((2 - (3 * (n + 1) : ℤ) + (10 * (n + 1) ^ 2 : ℤ) + (15 * (n + 1) ^ 3 : ℤ) : ℚ) / 24)

end

end A302560.P15721945558189832245

namespace A302560

/-- `(n+1)*(2-3*(n+1)+10*(n+1)²+15*(n+1)^3)/24` -/
def P15721945558189832245.Spec : Prop :=
  ∀ n, P15721945558189832245.a n = (A302560 (n + 1) : ℚ)

theorem P15721945558189832245.correct : P15721945558189832245.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A302560, Nat.add_sub_cancel, A302560.P15721945558189832245.a, A302560.P10239202043613080348.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A302560, Nat.add_sub_cancel, A302560.P15721945558189832245.a, A302560.P10239202043613080348.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A302560

/-! ## A302560.P10239202043613080348

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=13, a(2)=61, a(3)=185, a(4)=440`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A302560

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10239202043613080348.Spec : Prop :=
  ∀ n, P10239202043613080348.a n = A302560 (n + 1)

theorem P10239202043613080348.correct : P10239202043613080348.Spec := by
  intro n
  simp only [A302560, Nat.add_sub_cancel]

end A302560

/-! ## A302560.P7443091622937905050

`∑[∑[∑[a(n-1)+15]]]` with `a(0)=1, a(1)=10`
-/

namespace A302560.P7443091622937905050
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f3 =>
  f3 (n - 1) + 15

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302560.P7443091622937905050

namespace A302560

/-- `∑[∑[∑[a(n-1)+15]]]` -/
def P7443091622937905050.Spec : Prop :=
  ∀ n, (P7443091622937905050.a n : ℤ) = A302560 (n + 1)

end A302560

/-! ## A302560.P8995542985634190875

`A006564(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A302560.P8995542985634190875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006564 (n + 1) + a (n - 1)

end

end A302560.P8995542985634190875

namespace A302560

/-- `A006564(n+1)+a(n-1)` -/
def P8995542985634190875.Spec : Prop :=
  ∀ n, P8995542985634190875.a n = A302560 (n + 1)

end A302560

/-! ## A302560.P956264193534577213

`a(n-1)+(n+1)*A005891(n)` with `a(0)=1`
-/

namespace A302560.P956264193534577213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A005891 n

end

end A302560.P956264193534577213

namespace A302560

/-- `a(n-1)+(n+1)*A005891(n)` -/
def P956264193534577213.Spec : Prop :=
  ∀ n, P956264193534577213.a n = A302560 (n + 1)

end A302560

/-! ## A302560.P6268822797280479647

`A101166(n)+A005898(n)`
-/

namespace A302560.P6268822797280479647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101166 n + A005898 n

end

end A302560.P6268822797280479647

namespace A302560

/-- `A101166(n)+A005898(n)` -/
def P6268822797280479647.Spec : Prop :=
  ∀ n, P6268822797280479647.a n = A302560 (n + 1)

end A302560

/-! ## A302560.P14980956437481705298

`A163943(n)+A058310(n)`
-/

namespace A302560.P14980956437481705298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163943 n + A058310 n

end

end A302560.P14980956437481705298

namespace A302560

/-- `A163943(n)+A058310(n)` -/
def P14980956437481705298.Spec : Prop :=
  ∀ n, P14980956437481705298.a n = A302560 (n + 1)

end A302560

/-! ## A302560.P7838695533596607436

`A212981(n)+A093198(n)`
-/

namespace A302560.P7838695533596607436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212981 n + A093198 n

end

end A302560.P7838695533596607436

namespace A302560

/-- `A212981(n)+A093198(n)` -/
def P7838695533596607436.Spec : Prop :=
  ∀ n, P7838695533596607436.a n = A302560 (n + 1)

end A302560

/-! ## A302560.P7361434559786310692

`A053134(n)-A005582(n)`
-/

namespace A302560.P7361434559786310692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 n - A005582 n

end

end A302560.P7361434559786310692

namespace A302560

/-- `A053134(n)-A005582(n)` -/
def P7361434559786310692.Spec : Prop :=
  ∀ n, P7361434559786310692.a n = A302560 (n + 1)

end A302560

/-! ## A302560.P4682752601071264508

`A289643(n)+A006323(n+1)`
-/

namespace A302560.P4682752601071264508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289643 n + A006323 (n + 1)

end

end A302560.P4682752601071264508

namespace A302560

/-- `A289643(n)+A006323(n+1)` -/
def P4682752601071264508.Spec : Prop :=
  ∀ n, P4682752601071264508.a n = A302560 (n + 1)

end A302560

/-! ## A302560.P7802517646524706190

`A338996(n)+A066804(n+1)`
-/

namespace A302560.P7802517646524706190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338996 n + A066804 (n + 1)

end

end A302560.P7802517646524706190

namespace A302560

/-- `A338996(n)+A066804(n+1)` -/
def P7802517646524706190.Spec : Prop :=
  ∀ n, P7802517646524706190.a n = A302560 (n + 1)

end A302560

/-! ## A302560.P13345595962587323854

`A213830(n+1)-A133252(n)`
-/

namespace A302560.P13345595962587323854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213830 (n + 1) - A133252 n

end

end A302560.P13345595962587323854

namespace A302560

/-- `A213830(n+1)-A133252(n)` -/
def P13345595962587323854.Spec : Prop :=
  ∀ n, P13345595962587323854.a n = A302560 (n + 1)

end A302560

/-! ## A302560.P13705385441633125187

`A108650(n)-n*A001296(n)`
-/

namespace A302560.P13705385441633125187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108650 n - (n : ℤ) * A001296 n

end

end A302560.P13705385441633125187

namespace A302560

/-- `A108650(n)-n*A001296(n)` -/
def P13705385441633125187.Spec : Prop :=
  ∀ n, P13705385441633125187.a n = A302560 (n + 1)

end A302560

/-! ## A302560.P15309346533487472273

`A098077(n+1)-A022815(n+1)`
-/

namespace A302560.P15309346533487472273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098077 (n + 1) - A022815 (n + 1)

end

end A302560.P15309346533487472273

namespace A302560

/-- `A098077(n+1)-A022815(n+1)` -/
def P15309346533487472273.Spec : Prop :=
  ∀ n, P15309346533487472273.a n = A302560 (n + 1)

end A302560

/-! ## A302560.P5687173804828602608

`A133252(n)+2*A052149(n+1)`
-/

namespace A302560.P5687173804828602608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133252 n + 2 * A052149 (n + 1)

end

end A302560.P5687173804828602608

namespace A302560

/-- `A133252(n)+2*A052149(n+1)` -/
def P5687173804828602608.Spec : Prop :=
  ∀ n, P5687173804828602608.a n = A302560 (n + 1)

end A302560

/-! ## A302560.P5584747901830350654

`A001296(n)+A179824(n+2)/2`
-/

namespace A302560.P5584747901830350654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001296 n : ℚ) + (A179824 (n + 2) : ℚ) / 2

end

end A302560.P5584747901830350654

namespace A302560

/-- `A001296(n)+A179824(n+2)/2` -/
def P5584747901830350654.Spec : Prop :=
  ∀ n, P5584747901830350654.a n = (A302560 (n + 1) : ℚ)

end A302560

/-! ## A302560.P6186468720441891186

`A001296(n)+A000217(n+1)*(n+1)²`
-/

namespace A302560.P6186468720441891186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n + A000217 (n + 1) * ((n + 1) ^ 2 : ℤ)

end

end A302560.P6186468720441891186

namespace A302560

/-- `A001296(n)+A000217(n+1)*(n+1)²` -/
def P6186468720441891186.Spec : Prop :=
  ∀ n, P6186468720441891186.a n = A302560 (n + 1)

end A302560

/-! ## A302560.P632517738464091674

`A001296(n)+A051740(n)+A002418(n)`
-/

namespace A302560.P632517738464091674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n + (A051740 n + A002418 n)

end

end A302560.P632517738464091674

namespace A302560

/-- `A001296(n)+A051740(n)+A002418(n)` -/
def P632517738464091674.Spec : Prop :=
  ∀ n, P632517738464091674.a n = A302560 (n + 1)

end A302560

/-! ## A302560.P10804701625513725793

`A187673(n)+A000217(n+1)*A000217(n)`
-/

namespace A302560.P10804701625513725793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187673 n + A000217 (n + 1) * A000217 n

end

end A302560.P10804701625513725793

namespace A302560

/-- `A187673(n)+A000217(n+1)*A000217(n)` -/
def P10804701625513725793.Spec : Prop :=
  ∀ n, P10804701625513725793.a n = A302560 (n + 1)

end A302560

/-!
# A302561: Partial sums of A092182.

The programs for A302561, the canonical program `A302561.P8347166441381929307` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302561 has offset 1).

The definition of A302561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302561.P31999328353094119

`∑[C(n², 2)/3+(n+1)*(2*n+1)*(3*n+1)*(4*n+1)]`
-/

namespace A302561.P31999328353094119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 3 + ((n + 1) * ((2 * n + 1) * ((3 * n + 1) * (4 * n + 1))) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302561.P31999328353094119

namespace A302561

/-- `∑[C(n², 2)/3+(n+1)*(2*n+1)*(3*n+1)*(4*n+1)]` -/
def P31999328353094119.Spec : Prop :=
  ∀ n, P31999328353094119.a n = (A302561 (n + 1) : ℚ)

end A302561

/-! ## A302561.P8347166441381929307

`∑[A092182(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A302561

/-- `∑[A092182(n+1)]` -/
def P8347166441381929307.Spec : Prop :=
  ∀ n, P8347166441381929307.a n = A302561 (n + 1)

theorem P8347166441381929307.correct : P8347166441381929307.Spec := by
  intro n
  simp only [A302561, Nat.add_sub_cancel]

end A302561

/-! ## A302561.P7601099584019123266

`∑[record[A092182(A286378(n))]]`
-/

namespace A302561.P7601099584019123266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092182 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302561.P7601099584019123266

namespace A302561

/-- `∑[record[A092182(A286378(n))]]` -/
def P7601099584019123266.Spec : Prop :=
  ∀ n, P7601099584019123266.a n = A302561 (n + 1)

end A302561

/-! ## A302561.P5578737686053509971

`∑[A011245(n)+A008911(n)]`
-/

namespace A302561.P5578737686053509971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011245 n + A008911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302561.P5578737686053509971

namespace A302561

/-- `∑[A011245(n)+A008911(n)]` -/
def P5578737686053509971.Spec : Prop :=
  ∀ n, P5578737686053509971.a n = A302561 (n + 1)

end A302561

/-! ## A302561.P8326661860554404410

`∑[A062786(n+1)²-n*A004068(n)]`
-/

namespace A302561.P8326661860554404410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) ^ 2 - (n : ℤ) * A004068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302561.P8326661860554404410

namespace A302561

/-- `∑[A062786(n+1)²-n*A004068(n)]` -/
def P8326661860554404410.Spec : Prop :=
  ∀ n, P8326661860554404410.a n = A302561 (n + 1)

end A302561

/-! ## A302561.P18307491954851532026

`∑[record[A092182(A028920(n))]]`
-/

namespace A302561.P18307491954851532026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092182 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302561.P18307491954851532026

namespace A302561

/-- `∑[record[A092182(A028920(n))]]` -/
def P18307491954851532026.Spec : Prop :=
  ∀ n, P18307491954851532026.a n = A302561 (n + 1)

end A302561

/-!
# A302562: Partial sums of A092181.

The programs for A302562, the canonical program `A302562.P15737656546795364553` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302562 has offset 1).

The definition of A302562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302562.P15737656546795364553

`(n+1)*(7-10*(n+1)²+15*(n+1)^3+18*(n+1)^4)/30`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A302562

/-- `(n+1)*(7-10*(n+1)²+15*(n+1)^3+18*(n+1)^4)/30` -/
def P15737656546795364553.Spec : Prop :=
  ∀ n, P15737656546795364553.a n = (A302562 (n + 1) : ℚ)

end A302562

/-! ## A302562.P9716286659028096820

`∑[(n+1)²²]+∑[A254371(n)]`
-/

namespace A302562.P9716286659028096820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A302562.P9716286659028096820

namespace A302562

/-- `∑[(n+1)²²]+∑[A254371(n)]` -/
def P9716286659028096820.Spec : Prop :=
  ∀ n, P9716286659028096820.a n = A302562 (n + 1)

end A302562

/-! ## A302562.P15708742845359133480

`∑[A007204(n)]-∑[A000583(n)]`
-/

namespace A302562.P15708742845359133480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A302562.P15708742845359133480

namespace A302562

/-- `∑[A007204(n)]-∑[A000583(n)]` -/
def P15708742845359133480.Spec : Prop :=
  ∀ n, P15708742845359133480.a n = A302562 (n + 1)

end A302562

/-! ## A302562.P16272980112467803671

`A092181(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A302562.P16272980112467803671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092181 (n + 1) + a (n - 1)

end

end A302562.P16272980112467803671

namespace A302562

/-- `A092181(n+1)+a(n-1)` -/
def P16272980112467803671.Spec : Prop :=
  ∀ n, P16272980112467803671.a n = A302562 (n + 1)

end A302562

/-! ## A302562.P18423576696712130252

`or(∑[A092181(n+1)], A000007(n))`
-/

namespace A302562.P18423576696712130252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A302562.P18423576696712130252

namespace A302562

/-- `or(∑[A092181(n+1)], A000007(n))` -/
def P18423576696712130252.Spec : Prop :=
  ∀ n, P18423576696712130252.a n = A302562 (n + 1)

end A302562

/-! ## A302562.P7161408323001225510

`∑[A092181(n+1)]%A229738(n+1)`
-/

namespace A302562.P7161408323001225510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A229738 (n + 1))

end

end A302562.P7161408323001225510

namespace A302562

/-- `∑[A092181(n+1)]%A229738(n+1)` -/
def P7161408323001225510.Spec : Prop :=
  ∀ n, P7161408323001225510.a n = A302562 (n + 1)

end A302562

/-! ## A302562.P2102423943899630171

`∑[A092181(n+1)]^A166333(A016813(n))`
-/

namespace A302562.P2102423943899630171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092181 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A166333 (A016813 n).toNat : ℤ)

end

end A302562.P2102423943899630171

namespace A302562

/-- `∑[A092181(n+1)]^A166333(A016813(n))` -/
def P2102423943899630171.Spec : Prop :=
  ∀ n, P2102423943899630171.a n = (A302562 (n + 1) : ℚ)

end A302562

/-! ## A302562.P11773290350814677680

`A002597(6*n)`
-/

namespace A302562.P11773290350814677680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002597 (6 * n)

end

end A302562.P11773290350814677680

namespace A302562

/-- `A002597(6*n)` -/
def P11773290350814677680.Spec : Prop :=
  ∀ n, P11773290350814677680.a n = A302562 (n + 1)

end A302562

/-! ## A302562.P13015106919792375584

`or(A000007(n), A002597(A008458(n)))`
-/

namespace A302562.P13015106919792375584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A002597 (A008458 n).toNat)

end

end A302562.P13015106919792375584

namespace A302562

/-- `or(A000007(n), A002597(A008458(n)))` -/
def P13015106919792375584.Spec : Prop :=
  ∀ n, P13015106919792375584.a n = A302562 (n + 1)

end A302562

/-! ## A302562.P3407969119642770511

`A000161(A002145(n+1))+∑[A092181(n+1)]`
-/

namespace A302562.P3407969119642770511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A002145 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302562.P3407969119642770511

namespace A302562

/-- `A000161(A002145(n+1))+∑[A092181(n+1)]` -/
def P3407969119642770511.Spec : Prop :=
  ∀ n, P3407969119642770511.a n = A302562 (n + 1)

end A302562

/-! ## A302562.P4002673701085159641

`A002597(A008458(n))/A124522(A040040(n+1))`
-/

namespace A302562.P4002673701085159641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002597 (A008458 n).toNat : ℚ) / (A124522 (A040040 (n + 1)).toNat : ℚ)

end

end A302562.P4002673701085159641

namespace A302562

/-- `A002597(A008458(n))/A124522(A040040(n+1))` -/
def P4002673701085159641.Spec : Prop :=
  ∀ n, P4002673701085159641.a n = (A302562 (n + 1) : ℚ)

end A302562

/-!
# A302563: Numbers whose digital root is equal to their number of digits.

The programs for A302563, the canonical program `A302563.P15763102910394918625` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302563 has offset 1).

The definition of A302563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302563.P15763102910394918625

`A017173(n)+A004216(A017173(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A302563

/-- `A017173(n)+A004216(A017173(n))` -/
def P15763102910394918625.Spec : Prop :=
  ∀ n, P15763102910394918625.a n = A302563 (n + 1)

theorem P15763102910394918625.correct : P15763102910394918625.Spec := by
  intro n
  simp only [A302563, Nat.add_sub_cancel]

end A302563

/-!
# A302564: a(n) is the greatest prime p such that (2*n+1-p)/2 is prime.

The programs for A302564, there is no canonical definition to state claims against.
-/

/-! ## A302564.P15957653866405188643

`A005408(n+3-A195352(n+3))`
-/

namespace A302564.P15957653866405188643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ((n + 3 : ℤ) - A195352 (n + 3)).toNat

end

end A302564.P15957653866405188643

/-! ## A302564.P1508103216957362026

`A004273(n+4-A195352(n+3))`
-/

namespace A302564.P1508103216957362026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 ((n + 4 : ℤ) - A195352 (n + 3)).toNat

end

end A302564.P1508103216957362026

/-! ## A302564.P3776508939121147882

`A020742(n)-2*A195352(n+3)`
-/

namespace A302564.P3776508939121147882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n - 2 * A195352 (n + 3)

end

end A302564.P3776508939121147882

/-! ## A302564.P3854847919007175619

`2*(A020705(n)-A195352(n+3))-1`
-/

namespace A302564.P3854847919007175619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020705 n - A195352 (n + 3)) - 1

end

end A302564.P3854847919007175619

/-! ## A302564.P9281097693019336038

`A020742(n)-A005843(A195352(n+3))`
-/

namespace A302564.P9281097693019336038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n - A005843 (A195352 (n + 3)).toNat

end

end A302564.P9281097693019336038

/-! ## A302564.P15792386687988126559

`A005843(A020705(n)-A195352(n+3))-1`
-/

namespace A302564.P15792386687988126559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A020705 n - A195352 (n + 3)).toNat - 1

end

end A302564.P15792386687988126559

/-! ## A302564.P17283975781097039989

`A014681(2*(A020705(n)-A195352(n+3)))`
-/

namespace A302564.P17283975781097039989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * (A020705 n - A195352 (n + 3))).toNat

end

end A302564.P17283975781097039989

/-!
# A302565: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n * A(x)^n * Product_{k=0..n-1} (5*k + 1).

The programs for A302565, there is no canonical definition to state claims against.
-/

/-! ## A302565.P3059376223515558324

`A312451(lcm(n, a(n-1)))-1` with `a(0)=1, a(1)=1`
-/

namespace A302565.P3059376223515558324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A312451 (Int.lcm (n : ℤ) (a (n - 1))) - 1

end

end A302565.P3059376223515558324

/-!
# A302567: a(n) is the number of primes less than the n-th prime that divide the sum of primes up to the n-th prime.

The programs for A302567, there is no canonical definition to state claims against.
-/

/-! ## A302567.P10235139283222987239

`A001222(gcd(A002110(n), A007504(n+1)))`
-/

namespace A302567.P10235139283222987239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A002110 n) (A007504 (n + 1)))

end

end A302567.P10235139283222987239

/-! ## A302567.P10591511159872847067

`A105783(n+1)-A010054(A018149(n))`
-/

namespace A302567.P10591511159872847067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 (n + 1) - A010054 (A018149 n).toNat

end

end A302567.P10591511159872847067

/-! ## A302567.P2107693351641490952

`A105783(n+1)-A010054(A089001(n+1)²)`
-/

namespace A302567.P2107693351641490952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 (n + 1) - A010054 (A089001 (n + 1) ^ 2).toNat

end

end A302567.P2107693351641490952

/-! ## A302567.P17672236738141358243

`A001222(A132995(n+1))-A010054(A018149(n))`
-/

namespace A302567.P17672236738141358243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A132995 (n + 1)).toNat - A010054 (A018149 n).toNat

end

end A302567.P17672236738141358243

/-! ## A302567.P245219951215716561

`A105783(n+1)-A197183(A000712(n))`
-/

namespace A302567.P245219951215716561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 (n + 1) - A197183 (A000712 n).toNat

end

end A302567.P245219951215716561

/-!
# A302568: Odd numbers that are either prime or whose prime indices are pairwise coprime.

The programs for A302568, there is no canonical definition to state claims against.
-/

/-! ## A302568.P15950943024534543492

`record[A327512(4*n+6)/2]`
-/

namespace A302568.P15950943024534543492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327512 (4 * n + 6) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302568.P15950943024534543492

/-! ## A302568.P13271756095247023936

`∩[comp[2*n], A302569(n+1)]`
-/

namespace A302568.P13271756095247023936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A302568.P13271756095247023936

/-! ## A302568.P3142020345909858009

`eq[n%2, A290104(n+2)]+2`
-/

namespace A302568.P3142020345909858009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A302568.P3142020345909858009

/-! ## A302568.P1288893095119348133

`∩[A302569(n+2), 2*n+1]`
-/

namespace A302568.P1288893095119348133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A302568.P1288893095119348133

/-! ## A302568.P12646154134275066985

`eq[-a(n-1), A290104(n+1)]+1` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A302568.P12646154134275066985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1] fun n f1 =>
  -f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302568.P12646154134275066985

/-! ## A302568.P3911174277247160827

`record[A000265(A302569(n+2))]`
-/

namespace A302568.P3911174277247160827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A302569 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302568.P3911174277247160827

/-! ## A302568.P17900054582515927403

`filter[A302569(n+1), A000035(#)]`
-/

namespace A302568.P17900054582515927403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A302568.P17900054582515927403

/-! ## A302568.P7904029251425225709

`filter[A302569(n+1), A266070(#)]`
-/

namespace A302568.P7904029251425225709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A302568.P7904029251425225709

/-! ## A302568.P2678327435442705371

`filter[A302569(n+1), A323239(#)]`
-/

namespace A302568.P2678327435442705371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A302568.P2678327435442705371

/-! ## A302568.P3829993741071130313

`filter[A302569(n+1), A324908(#)]`
-/

namespace A302568.P3829993741071130313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A302568.P3829993741071130313

/-!
# A302569: Numbers that are either prime or whose prime indices are pairwise coprime. Heinz numbers of integer partitions with pairwise coprime parts.

The programs for A302569, there is no canonical definition to state claims against.
-/

/-! ## A302569.P16974999725326669465

`∪[A000040(n+1), A302696(n+2)]`
-/

namespace A302569.P16974999725326669465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302569.P16974999725326669465

/-! ## A302569.P5284388077768704426

`eq[1, A290104(n+2)]+2`
-/

namespace A302569.P5284388077768704426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A302569.P5284388077768704426

/-! ## A302569.P16543711098461050363

`record[n/a(A290104(n))]` with `a(0)=2, a(1)=1`
-/

namespace A302569.P16543711098461050363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℚ) / f1 (A290104 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302569.P16543711098461050363

/-! ## A302569.P9924534672054871588

`record[A327512(2*(n+2))-(n+2)]`
-/

namespace A302569.P9924534672054871588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (2 * (n + 2)) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302569.P9924534672054871588

/-! ## A302569.P14271812722931251369

`lt[n+2, A327512(2*(n+1))]+1`
-/

namespace A302569.P14271812722931251369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A302569.P14271812722931251369

/-! ## A302569.P14053066406462725236

`record[A327512(A103517(n+1))/2]`
-/

namespace A302569.P14053066406462725236
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327512 (A103517 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302569.P14053066406462725236

/-! ## A302569.P11245059995963161425

`eq[A003963(n+2), A290103(n+2)]+2`
-/

namespace A302569.P11245059995963161425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A302569.P11245059995963161425

/-! ## A302569.P16066752701371501079

`record[A014682(A327512(A103517(n)))]`
-/

namespace A302569.P16066752701371501079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A327512 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302569.P16066752701371501079

/-! ## A302569.P16144014037357945063

`record[A254667(A078898(A302696(n+1)))]`
-/

namespace A302569.P16144014037357945063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A078898 (A302696 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302569.P16144014037357945063

/-! ## A302569.P8186905285254608761

`record[A104103(n+1)/A290104(A104103(n+1))]`
-/

namespace A302569.P8186905285254608761
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104103 (n + 1) : ℚ) / (A290104 (A104103 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302569.P8186905285254608761

/-!
# A302570: Unitary barely abundant numbers: unitary abundant numbers k such that usigma(k)/k < usigma(m)/m for all unitary abundant numbers m < k, where usigma(k) is the sum of the unitary divisors of k (A034448).

The programs for A302570, there is no canonical definition to state claims against.
-/

/-! ## A302570.P2539554764091108460

`A034683(∑[(A064338(n)^A217346(n+1))²])`
-/

namespace A302570.P2539554764091108460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A064338 n : ℚ) ^ (A217346 (n + 1) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A302570.P2539554764091108460

/-! ## A302570.P1004413608413636966

`A034683(∑[(A056239(n+1)^A217346(n+1))²])`
-/

namespace A302570.P1004413608413636966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A056239 (n + 1) : ℚ) ^ (A217346 (n + 1) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A302570.P1004413608413636966

/-! ## A302570.P11979306408062655832

`A034683(∑[(A289507(n+1)^A217346(n+1))²])`
-/

namespace A302570.P11979306408062655832
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A289507 (n + 1) : ℚ) ^ (A217346 (n + 1) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A302570.P11979306408062655832

/-!
# A302571: Bi-unitary barely abundant numbers: bi-unitary abundant numbers k such that bsigma(k)/k < bsigma(m)/m for all bi-unitary abundant numbers m < k, where bsigma(k) is the sum of the bi-unitary divisors of k (A188999).

The programs for A302571, there is no canonical definition to state claims against.
-/

/-! ## A302571.P6542422723696550964

`A335054(n+1)-A192323(A138526(3*n+1))`
-/

namespace A302571.P6542422723696550964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335054 (n + 1) - A192323 (A138526 (3 * n + 1)).toNat

end

end A302571.P6542422723696550964

/-!
# A302572: Unitary barely deficient numbers: unitary deficient numbers k such that usigma(k)/k > usigma(m)/m for all unitary deficient numbers m < k, where usigma(k) is the sum of the unitary divisors of k (A034448).

The programs for A302572, there is no canonical definition to state claims against.
-/

/-! ## A302572.P17468738754528455379

`lcm(∏{e}[n+1, #+1], A109646(∑[2*n²]))`
-/

namespace A302572.P17468738754528455379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A109646 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A302572.P17468738754528455379

/-!
# A302574: Primitive unitary abundant numbers (definition 2): unitary abundant numbers (A034683) having no unitary abundant proper unitary divisor.

The programs for A302574, there is no canonical definition to state claims against.
-/

/-! ## A302574.P4940404958147895889

`A328328(n+1)%A031652(n+1)`
-/

namespace A302574.P4940404958147895889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328328 (n + 1)) (A031652 (n + 1))

end

end A302574.P4940404958147895889

/-! ## A302574.P2708644617975252298

`A328328(and(n+1, A359085(n+1)))`
-/

namespace A302574.P2708644617975252298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328328 (Int.land (n + 1 : ℤ) (A359085 (n + 1))).toNat

end

end A302574.P2708644617975252298

/-! ## A302574.P4779763575254760211

`A328328(n+1)+A096268(12*n²)`
-/

namespace A302574.P4779763575254760211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328328 (n + 1) + A096268 (12 * n ^ 2)

end

end A302574.P4779763575254760211

/-! ## A302574.P1675230840859956930

`A328328((n+1)*A329008(n+1)%2)`
-/

namespace A302574.P1675230840859956930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328328 ((n + 1 : ℤ) * Int.tmod (A329008 (n + 1)) 2).toNat

end

end A302574.P1675230840859956930

/-! ## A302574.P9965264009400400110

`lcm(A328050(3*(n+1)), A328328(n+1))`
-/

namespace A302574.P9965264009400400110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A328050 (3 * (n + 1))) (A328328 (n + 1))

end

end A302574.P9965264009400400110

/-!
# A302575: Numbers x which are the concatenation of y and the product of the digits of y.

The programs for A302575, there is no canonical definition to state claims against.
-/

/-! ## A302575.P7701089867454096905

`A302801(lt[n*∏{digits}[n, #], 10*n])`
-/

namespace A302575.P7701089867454096905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A302575.P7701089867454096905

/-! ## A302575.P6999918125015189064

`record[A302801(n+1)%(48*(n+1))]`
-/

namespace A302575.P6999918125015189064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302801 (n + 1)) (48 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302575.P6999918125015189064

/-! ## A302575.P4154160870276110978

`A302801(A090273(n+2))`
-/

namespace A302575.P4154160870276110978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (A090273 (n + 2)).toNat

end

end A302575.P4154160870276110978

/-! ## A302575.P17216546419491125546

`A302801(lt[A302801(n), 12*n])`
-/

namespace A302575.P17216546419491125546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A302575.P17216546419491125546

/-! ## A302575.P7534073782608081760

`A075617(A302801(n+1))`
-/

namespace A302575.P7534073782608081760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075617 (A302801 (n + 1)).toNat

end

end A302575.P7534073782608081760

/-!
# A302576: Numbers k such that k/10 + 1 is a square.

The programs for A302576, the canonical program `A302576.P9415427550752929177` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302576 has offset 1).

The definition of A302576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302576.P9415427550752929177

`10*(n+1)*(n-1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A302576

/-- `10*(n+1)*(n-1)` -/
def P9415427550752929177.Spec : Prop :=
  ∀ n, P9415427550752929177.a n = A302576 (n + 1)

theorem P9415427550752929177.correct : P9415427550752929177.Spec := by
  intro n
  simp only [A302576, Nat.add_sub_cancel]

end A302576

/-! ## A302576.P12352077009341058196

`A033583(n)-10`
-/

namespace A302576.P12352077009341058196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n - 10

end

end A302576.P12352077009341058196

namespace A302576

/-- `A033583(n)-10` -/
def P12352077009341058196.Spec : Prop :=
  ∀ n, P12352077009341058196.a n = A302576 (n + 1)

end A302576

/-! ## A302576.P7063910386095630502

`∑[a(n-1)+20]` with `a(0)=-10`
-/

namespace A302576.P7063910386095630502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-10] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302576.P7063910386095630502

namespace A302576

/-- `∑[a(n-1)+20]` -/
def P7063910386095630502.Spec : Prop :=
  ∀ n, P7063910386095630502.a n = A302576 (n + 1)

end A302576

/-! ## A302576.P4237612077974252521

`∑[5*or(2, 4*(n-1))]`
-/

namespace A302576.P4237612077974252521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.lor 2 (4 * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302576.P4237612077974252521

namespace A302576

/-- `∑[5*or(2, 4*(n-1))]` -/
def P4237612077974252521.Spec : Prop :=
  ∀ n, P4237612077974252521.a n = A302576 (n + 1)

end A302576

/-! ## A302576.P10836397113916722152

`∑[5*xor(2, 4*(n-1))]`
-/

namespace A302576.P10836397113916722152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.xor 2 (4 * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302576.P10836397113916722152

namespace A302576

/-- `∑[5*xor(2, 4*(n-1))]` -/
def P10836397113916722152.Spec : Prop :=
  ∀ n, P10836397113916722152.a n = A302576 (n + 1)

end A302576

/-! ## A302576.P7927622896564285776

`-5*∑[a(n-1)-4]` with `a(0)=2`
-/

namespace A302576.P7927622896564285776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(5 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A302576.P7927622896564285776

namespace A302576

/-- `-5*∑[a(n-1)-4]` -/
def P7927622896564285776.Spec : Prop :=
  ∀ n, P7927622896564285776.a n = A302576 (n + 1)

end A302576

/-! ## A302576.P9652157756253958084

`A158187(n)-11`
-/

namespace A302576.P9652157756253958084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n - 11

end

end A302576.P9652157756253958084

namespace A302576

/-- `A158187(n)-11` -/
def P9652157756253958084.Spec : Prop :=
  ∀ n, P9652157756253958084.a n = A302576 (n + 1)

end A302576

/-! ## A302576.P13380817772295394486

`A061722(n)-17`
-/

namespace A302576.P13380817772295394486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061722 n - 17

end

end A302576.P13380817772295394486

namespace A302576

/-- `A061722(n)-17` -/
def P13380817772295394486.Spec : Prop :=
  ∀ n, P13380817772295394486.a n = A302576 (n + 1)

end A302576

/-! ## A302576.P7745077410435429606

`∑[10*(Δ[A000290(n)]-2)]`
-/

namespace A302576.P7745077410435429606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (f2 (n + 1) - f2 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302576.P7745077410435429606

namespace A302576

/-- `∑[10*(Δ[A000290(n)]-2)]` -/
def P7745077410435429606.Spec : Prop :=
  ∀ n, P7745077410435429606.a n = A302576 (n + 1)

end A302576

/-! ## A302576.P16910693991573743746

`A033584(n)-A114948(n)`
-/

namespace A302576.P16910693991573743746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n - A114948 n

end

end A302576.P16910693991573743746

namespace A302576

/-- `A033584(n)-A114948(n)` -/
def P16910693991573743746.Spec : Prop :=
  ∀ n, P16910693991573743746.a n = A302576 (n + 1)

end A302576

/-! ## A302576.P5364031819070036314

`A135453(n)-A255845(n)`
-/

namespace A302576.P5364031819070036314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 n - A255845 n

end

end A302576.P5364031819070036314

namespace A302576

/-- `A135453(n)-A255845(n)` -/
def P5364031819070036314.Spec : Prop :=
  ∀ n, P5364031819070036314.a n = A302576 (n + 1)

end A302576

/-! ## A302576.P8088801536464726308

`A123296(n)-A269457(n)`
-/

namespace A302576.P8088801536464726308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123296 n - A269457 n

end

end A302576.P8088801536464726308

namespace A302576

/-- `A123296(n)-A269457(n)` -/
def P8088801536464726308.Spec : Prop :=
  ∀ n, P8088801536464726308.a n = A302576 (n + 1)

end A302576

/-! ## A302576.P15050538397548014081

`A158463(n)-A339048(n)`
-/

namespace A302576.P15050538397548014081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158463 n - A339048 n

end

end A302576.P15050538397548014081

namespace A302576

/-- `A158463(n)-A339048(n)` -/
def P15050538397548014081.Spec : Prop :=
  ∀ n, P15050538397548014081.a n = A302576 (n + 1)

end A302576

/-!
# A302578: Numbers N such that N modulo N's digitsum is a substring of N.

The programs for A302578, there is no canonical definition to state claims against.
-/

/-! ## A302578.P10184305614784671598

`A175266(A175275(n+1))+A131391(n+1)`
-/

namespace A302578.P10184305614784671598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175266 (A175275 (n + 1)).toNat + A131391 (n + 1)

end

end A302578.P10184305614784671598

/-!
# A302580: Numbers k such that the coefficient of x^k in the expansion of Ramanujan's function R(x) = Sum_{i>=0} x^(i*(i+1)/2)/Product_{j=1..i} (1 + x^j) is zero.

The programs for A302580, there is no canonical definition to state claims against.
-/

/-! ## A302580.P3988253618045201221

`eq[0, A003406(n)]`
-/

namespace A302580.P3988253618045201221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003406 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302580.P3988253618045201221

/-! ## A302580.P10881827722499601276

`lt[abs(A003406(n+1)), 1]+1`
-/

namespace A302580.P10881827722499601276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003406 (n + 1)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A302580.P10881827722499601276

/-! ## A302580.P11375048249435564188

`lt[abs(A003406(2*n-n)), 1]`
-/

namespace A302580.P11375048249435564188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003406 (2 * n - n)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302580.P11375048249435564188

/-! ## A302580.P7200698061847045383

`lt[0, A033886(abs(A003406(n)))]`
-/

namespace A302580.P7200698061847045383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033886 |A003406 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A302580.P7200698061847045383

/-! ## A302580.P14856608546891236413

`A000027(lt[abs(A003406(n)), 1])`
-/

namespace A302580.P14856608546891236413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003406 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A302580.P14856608546891236413

/-! ## A302580.P9675944010266163627

`lt[A000225(abs(A003406(n))), 1]`
-/

namespace A302580.P9675944010266163627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 |A003406 n|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302580.P9675944010266163627

/-! ## A302580.P4250432613026052373

`lt[A057427(abs(A003406(n))), 1]`
-/

namespace A302580.P4250432613026052373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 |A003406 n|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302580.P4250432613026052373

/-! ## A302580.P13473576131324618400

`lt[A067659(abs(A003406(n))), 1]`
-/

namespace A302580.P13473576131324618400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 |A003406 n|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302580.P13473576131324618400

/-! ## A302580.P877138451704828476

`lt[A036469(abs(A003406(n))), 2]`
-/

namespace A302580.P877138451704828476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 |A003406 n|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302580.P877138451704828476

/-! ## A302580.P9046297596303856958

`A000027(lt[A003406(n)², 1])`
-/

namespace A302580.P9046297596303856958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003406 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A302580.P9046297596303856958

/-!
# A302581: a(n) = n! * [x^n] -exp(-n*x)*log(1 - x).

The programs for A302581, there is no canonical definition to state claims against.
-/

/-! ## A302581.P5950611614074351260

`A000003(A104087(n))-A151374(n)`
-/

namespace A302581.P5950611614074351260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (A104087 n).toNat - A151374 n

end

end A302581.P5950611614074351260

/-!
# A302582: a(n) = n! * [x^n] log(1 + x)/(1 - x)^n.

The programs for A302582, there is no canonical definition to state claims against.
-/

/-! ## A302582.P12455876759273613863

`∪[∑[n], A322118(3*(n+1))]`
-/

namespace A302582.P12455876759273613863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322118 (3 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A302582.P12455876759273613863

/-!
# A302583: a(n) = ((n + 1)^n - (n - 1)^n)/2.

The programs for A302583, the canonical program `A302583.P1962846669706883234` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302583 has offset 0).

The definition of A302583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302583.P1962846669706883234

`((n+1)^n-(n-1)^n)/2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A302583

/-- `((n+1)^n-(n-1)^n)/2` -/
def P1962846669706883234.Spec : Prop :=
  ∀ n, P1962846669706883234.a n = (A302583 n : ℚ)

end A302583

/-! ## A302583.P7743584266817237758

`(n+1)^n-A062024(n)`
-/

namespace A302583.P7743584266817237758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - A062024 n

end

end A302583.P7743584266817237758

namespace A302583

/-- `(n+1)^n-A062024(n)` -/
def P7743584266817237758.Spec : Prop :=
  ∀ n, P7743584266817237758.a n = A302583 n

end A302583

/-! ## A302583.P17593941827929696286

`A062024(n)-A065440(n)`
-/

namespace A302583.P17593941827929696286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062024 n - A065440 n

end

end A302583.P17593941827929696286

namespace A302583

/-- `A062024(n)-A065440(n)` -/
def P17593941827929696286.Spec : Prop :=
  ∀ n, P17593941827929696286.a n = A302583 n

end A302583

/-! ## A302583.P18236655512364807166

`abs(A000169(n+1)-A062024(n))`
-/

namespace A302583.P18236655512364807166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000169 (n + 1) - A062024 n|

end

end A302583.P18236655512364807166

namespace A302583

/-- `abs(A000169(n+1)-A062024(n))` -/
def P18236655512364807166.Spec : Prop :=
  ∀ n, P18236655512364807166.a n = A302583 n

end A302583

/-! ## A302583.P1039732181265179667

`A102728(∑[4*n])`
-/

namespace A302583.P1039732181265179667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102728 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302583.P1039732181265179667

namespace A302583

/-- `A102728(∑[4*n])` -/
def P1039732181265179667.Spec : Prop :=
  ∀ n, P1039732181265179667.a n = A302583 n

end A302583

/-!
# A302584: a(n) = n! * [x^n] exp(n*x)/cos(x).

The programs for A302584, there is no canonical definition to state claims against.
-/

/-! ## A302584.P8722135796747856345

`A292976(n)-A302586(n)`
-/

namespace A302584.P8722135796747856345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292976 n - A302586 n

end

end A302584.P8722135796747856345

/-! ## A302584.P369981879054939357

`A292975(∑[4*n])-A302586(n)`
-/

namespace A302584.P369981879054939357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (∑ j ∈ Finset.range (n + 1), f1 j) - A302586 n

end

end A302584.P369981879054939357

/-! ## A302584.P11493715912260712174

`A292976(n)+A057428(n)*A302586(n)`
-/

namespace A302584.P11493715912260712174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292976 n + A057428 n * A302586 n

end

end A302584.P11493715912260712174

/-! ## A302584.P3245334634572039134

`record[A003982(n)*A292975(n)]-A302586(n)`
-/

namespace A302584.P3245334634572039134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A292975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A302586 n

end

end A302584.P3245334634572039134

/-!
# A302585: a(n) = n! * [x^n] exp(n*x)/cosh(x).

The programs for A302585, there is no canonical definition to state claims against.
-/

/-! ## A302585.P7588460134811081173

`A247498(∑[4*n])`
-/

namespace A302585.P7588460134811081173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247498 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302585.P7588460134811081173

/-! ## A302585.P2561043792870145961

`∑[A300763((n+1)^n)]-n`
-/

namespace A302585.P2561043792870145961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 ((n + 1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A302585.P2561043792870145961

/-!
# A302586: a(n) = n! * [x^n] exp(n*x)*tan(x).

The programs for A302586, there is no canonical definition to state claims against.
-/

/-! ## A302586.P1729977085966133926

`A292976(n)-A302584(n)`
-/

namespace A302586.P1729977085966133926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292976 n - A302584 n

end

end A302586.P1729977085966133926

/-! ## A302586.P7265057054277843294

`A292975(∑[4*n])-A302584(n)`
-/

namespace A302586.P7265057054277843294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (∑ j ∈ Finset.range (n + 1), f1 j) - A302584 n

end

end A302586.P7265057054277843294

/-! ## A302586.P11689325125920330671

`record[A003982(n)*A292975(n)]-A302584(n)`
-/

namespace A302586.P11689325125920330671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A292975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A302584 n

end

end A302586.P11689325125920330671

/-!
# A302587: a(n) = n! * [x^n] exp(n*x)*tanh(x).

The programs for A302587, there is no canonical definition to state claims against.
-/

/-! ## A302587.P17175186987710295731

`A042948(A277463(n))`
-/

namespace A302587.P17175186987710295731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A277463 n).toNat

end

end A302587.P17175186987710295731

/-! ## A302587.P14426567011119575276

`A102728(n)+A004273(A277463(n))`
-/

namespace A302587.P14426567011119575276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102728 n + A004273 (A277463 n).toNat

end

end A302587.P14426567011119575276

/-!
# A302588: a(n) = a(n-3) + 7*(n-2), a(0)=1, a(1)=2, a(2)=4.

The programs for A302588, the canonical program `A302588.P13087716869761217453` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302588 has offset 0).

The definition of A302588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+7*(n-2)` (program `A302588.P13087716869761217453`, by `A302588.P13087716869761217453.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302588.P13087716869761217453

`a(n-3)+7*(n-2)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A302588

/-- `a(n-3)+7*(n-2)` -/
def P13087716869761217453.Spec : Prop :=
  ∀ n, P13087716869761217453.a n = A302588 n

theorem P13087716869761217453.correct : P13087716869761217453.Spec := by
  intro n
  simp only [A302588]

end A302588

/-! ## A302588.P6712057442364499689

`∑[ceil(∑[2^((n-2)%3)])]`
-/

namespace A302588.P6712057442364499689
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 2) 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302588.P6712057442364499689

namespace A302588

/-- `∑[ceil(∑[2^((n-2)%3)])]` -/
def P6712057442364499689.Spec : Prop :=
  ∀ n, P6712057442364499689.a n = A302588 n

end A302588

/-! ## A302588.P9125216647137153055

`∑[a(n-3)+7]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A302588.P9125216647137153055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302588.P9125216647137153055

namespace A302588

/-- `∑[a(n-3)+7]` -/
def P9125216647137153055.Spec : Prop :=
  ∀ n, (P9125216647137153055.a n : ℤ) = A302588 n

end A302588

/-! ## A302588.P10083274440035274639

`∑[∑[gcd(4, a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A302588.P10083274440035274639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f2 =>
  Nat.gcd 4 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302588.P10083274440035274639

namespace A302588

/-- `∑[∑[gcd(4, a(n-3))]]` -/
def P10083274440035274639.Spec : Prop :=
  ∀ n, (P10083274440035274639.a n : ℤ) = A302588 n

end A302588

/-! ## A302588.P3950232176628341619

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A302588.P3950232176628341619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302588.P3950232176628341619

namespace A302588

/-- `∑[∑[floor(a(n-3))]]` -/
def P3950232176628341619.Spec : Prop :=
  ∀ n, (P3950232176628341619.a n : ℤ) = A302588 n

end A302588

/-! ## A302588.P16238263376251702574

`∑[∑[2^(a(n-1)%4)]]` with `a(0)=1, a(1)=0`
-/

namespace A302588.P16238263376251702574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  2 ^ (f2 (n - 1) % 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302588.P16238263376251702574

namespace A302588

/-- `∑[∑[2^(a(n-1)%4)]]` -/
def P16238263376251702574.Spec : Prop :=
  ∀ n, (P16238263376251702574.a n : ℤ) = A302588 n

end A302588

/-! ## A302588.P10293404418725023267

`A047350(n)+a(n-1)` with `a(0)=1`
-/

namespace A302588.P10293404418725023267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047350 n + a (n - 1)

end

end A302588.P10293404418725023267

namespace A302588

/-- `A047350(n)+a(n-1)` -/
def P10293404418725023267.Spec : Prop :=
  ∀ n, P10293404418725023267.a n = A302588 n

end A302588

/-! ## A302588.P15132250925110055459

`∑[A047321(n+1)]-4*n`
-/

namespace A302588.P15132250925110055459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (4 * n : ℤ)

end

end A302588.P15132250925110055459

namespace A302588

/-- `∑[A047321(n+1)]-4*n` -/
def P15132250925110055459.Spec : Prop :=
  ∀ n, P15132250925110055459.a n = A302588 n

end A302588

/-! ## A302588.P12881754837692703197

`A397980(n)+A168053(n)`
-/

namespace A302588.P12881754837692703197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397980 n + A168053 n

end

end A302588.P12881754837692703197

namespace A302588

/-- `A397980(n)+A168053(n)` -/
def P12881754837692703197.Spec : Prop :=
  ∀ n, P12881754837692703197.a n = A302588 n

end A302588

/-! ## A302588.P3578401367835349071

`A211004(n+1)+A109340(n)`
-/

namespace A302588.P3578401367835349071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211004 (n + 1) + A109340 n

end

end A302588.P3578401367835349071

namespace A302588

/-- `A211004(n+1)+A109340(n)` -/
def P3578401367835349071.Spec : Prop :=
  ∀ n, P3578401367835349071.a n = A302588 n

end A302588

/-! ## A302588.P13240181463973971397

`∑[A047350(n+1)]-A047357(n+1)`
-/

namespace A302588.P13240181463973971397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A047357 (n + 1)

end

end A302588.P13240181463973971397

namespace A302588

/-- `∑[A047350(n+1)]-A047357(n+1)` -/
def P13240181463973971397.Spec : Prop :=
  ∀ n, P13240181463973971397.a n = A302588 n

end A302588

/-! ## A302588.P4936952541300014432

`A109340(n)+A001840(n+1)`
-/

namespace A302588.P4936952541300014432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109340 n + A001840 (n + 1)

end

end A302588.P4936952541300014432

namespace A302588

/-- `A109340(n)+A001840(n+1)` -/
def P4936952541300014432.Spec : Prop :=
  ∀ n, P4936952541300014432.a n = A302588 n

end A302588

/-! ## A302588.P3049285231626938353

`A001840(n+1)+A105770(n)-A047240(n+2)`
-/

namespace A302588.P3049285231626938353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n + 1) + (A105770 n - A047240 (n + 2))

end

end A302588.P3049285231626938353

namespace A302588

/-- `A001840(n+1)+A105770(n)-A047240(n+2)` -/
def P3049285231626938353.Spec : Prop :=
  ∀ n, P3049285231626938353.a n = A302588 n

end A302588

/-!
# A302590: Squarefree numbers whose prime indices are prime numbers.

The programs for A302590, the canonical program `A302590.P9507928259117285976` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302590 has offset 1).

The definition of A302590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3461 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302590.P4590414814496422150

`∩[A076610(n+1), A302539(n+1)]`
-/

namespace A302590.P4590414814496422150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302590.P4590414814496422150

namespace A302590

/-- `∩[A076610(n+1), A302539(n+1)]` -/
def P4590414814496422150.Spec : Prop :=
  ∀ n, (P4590414814496422150.a n : ℤ) = A302590 (n + 1)

end A302590

/-! ## A302590.P9507928259117285976

`record[A007913(A076610(n+1))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A302590

/-- `record[A007913(A076610(n+1))]` -/
def P9507928259117285976.Spec : Prop :=
  ∀ n, P9507928259117285976.a n = A302590 (n + 1)

theorem P9507928259117285976.correct : P9507928259117285976.Spec := by
  intro n
  simp only [A302590, Nat.add_sub_cancel]

end A302590

/-! ## A302590.P6385321493687854086

`filter[A076610(n+1), A008966(#)]`
-/

namespace A302590.P6385321493687854086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A302590.P6385321493687854086

namespace A302590

/-- `filter[A076610(n+1), A008966(#)]` -/
def P6385321493687854086.Spec : Prop :=
  ∀ n, P6385321493687854086.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P3693098626135941866

`filter[A076610(n+1), A359590(#)]`
-/

namespace A302590.P3693098626135941866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A302590.P3693098626135941866

namespace A302590

/-- `filter[A076610(n+1), A359590(#)]` -/
def P3693098626135941866.Spec : Prop :=
  ∀ n, P3693098626135941866.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P10682624403387609174

`filter[A076610(n+1), A359592(#)]`
-/

namespace A302590.P10682624403387609174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A302590.P10682624403387609174

namespace A302590

/-- `filter[A076610(n+1), A359592(#)]` -/
def P10682624403387609174.Spec : Prop :=
  ∀ n, P10682624403387609174.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P718924793707725033

`filter[A076610(n+1), A359834(#)]`
-/

namespace A302590.P718924793707725033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A302590.P718924793707725033

namespace A302590

/-- `filter[A076610(n+1), A359834(#)]` -/
def P718924793707725033.Spec : Prop :=
  ∀ n, P718924793707725033.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P11506629901252045224

`filter[A302539(n+1), A322980(#)]`
-/

namespace A302590.P11506629901252045224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A302590.P11506629901252045224

namespace A302590

/-- `filter[A302539(n+1), A322980(#)]` -/
def P11506629901252045224.Spec : Prop :=
  ∀ n, P11506629901252045224.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P3725212380000078543

`filter[A302539(n+1), A359590(#)]`
-/

namespace A302590.P3725212380000078543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A302590.P3725212380000078543

namespace A302590

/-- `filter[A302539(n+1), A359590(#)]` -/
def P3725212380000078543.Spec : Prop :=
  ∀ n, P3725212380000078543.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P9598343439560789437

`filter[A302539(n+1), A359592(#)]`
-/

namespace A302590.P9598343439560789437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A302590.P9598343439560789437

namespace A302590

/-- `filter[A302539(n+1), A359592(#)]` -/
def P9598343439560789437.Spec : Prop :=
  ∀ n, P9598343439560789437.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P8917455583377110471

`filter[A302539(n+1), A373157(#)]`
-/

namespace A302590.P8917455583377110471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A302590.P8917455583377110471

namespace A302590

/-- `filter[A302539(n+1), A373157(#)]` -/
def P8917455583377110471.Spec : Prop :=
  ∀ n, P8917455583377110471.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P14391356993195569335

`filter[A302539(n+1), A379952(#)]`
-/

namespace A302590.P14391356993195569335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A302590.P14391356993195569335

namespace A302590

/-- `filter[A302539(n+1), A379952(#)]` -/
def P14391356993195569335.Spec : Prop :=
  ∀ n, P14391356993195569335.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P3697184132445068715

`filter[A302539(n+1), A035263(#)]`
-/

namespace A302590.P3697184132445068715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A302590.P3697184132445068715

namespace A302590

/-- `filter[A302539(n+1), A035263(#)]` -/
def P3697184132445068715.Spec : Prop :=
  ∀ n, P3697184132445068715.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P9086040989482348438

`filter[A076610(n+1), A323154(#)]`
-/

namespace A302590.P9086040989482348438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A302590.P9086040989482348438

namespace A302590

/-- `filter[A076610(n+1), A323154(#)]` -/
def P9086040989482348438.Spec : Prop :=
  ∀ n, P9086040989482348438.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P10731112545387451895

`filter[A076610(n+1), A323239(#)]`
-/

namespace A302590.P10731112545387451895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A302590.P10731112545387451895

namespace A302590

/-- `filter[A076610(n+1), A323239(#)]` -/
def P10731112545387451895.Spec : Prop :=
  ∀ n, P10731112545387451895.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P15309259557573991270

`filter[A302539(n+1), A105234(#)]`
-/

namespace A302590.P15309259557573991270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A302590.P15309259557573991270

namespace A302590

/-- `filter[A302539(n+1), A105234(#)]` -/
def P15309259557573991270.Spec : Prop :=
  ∀ n, P15309259557573991270.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P11051520530093702506

`filter[A076610(n+1), A353559(#)]`
-/

namespace A302590.P11051520530093702506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A302590.P11051520530093702506

namespace A302590

/-- `filter[A076610(n+1), A353559(#)]` -/
def P11051520530093702506.Spec : Prop :=
  ∀ n, P11051520530093702506.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P5004008694211468930

`filter[A076610(n+1), A353627(#)]`
-/

namespace A302590.P5004008694211468930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A302590.P5004008694211468930

namespace A302590

/-- `filter[A076610(n+1), A353627(#)]` -/
def P5004008694211468930.Spec : Prop :=
  ∀ n, P5004008694211468930.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P15008379976550202821

`filter[A302539(n+1), A152822(#)]`
-/

namespace A302590.P15008379976550202821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A302590.P15008379976550202821

namespace A302590

/-- `filter[A302539(n+1), A152822(#)]` -/
def P15008379976550202821.Spec : Prop :=
  ∀ n, P15008379976550202821.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P8766464842535958685

`filter[A302539(n+1), A323239(#)]`
-/

namespace A302590.P8766464842535958685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A302590.P8766464842535958685

namespace A302590

/-- `filter[A302539(n+1), A323239(#)]` -/
def P8766464842535958685.Spec : Prop :=
  ∀ n, P8766464842535958685.a n = A302590 (n + 1)

end A302590

/-! ## A302590.P3770642371258065688

`∩[A056911(n+1), A076610(n+1)]`
-/

namespace A302590.P3770642371258065688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302590.P3770642371258065688

namespace A302590

/-- `∩[A056911(n+1), A076610(n+1)]` -/
def P3770642371258065688.Spec : Prop :=
  ∀ n, (P3770642371258065688.a n : ℤ) = A302590 (n + 1)

end A302590

/-!
# A302591: One, powers of 2, and prime numbers of squarefree index.

The programs for A302591, there is no canonical definition to state claims against.
-/

/-! ## A302591.P2884319066953478855

`∪[A302491(n+1), A302592(n+1)]`
-/

namespace A302591.P2884319066953478855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302591.P2884319066953478855

/-! ## A302591.P14343112559491028742

`record[A008966(A003963(n+1))*A028233(n+1)]`
-/

namespace A302591.P14343112559491028742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A003963 (n + 1)).toNat * A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302591.P14343112559491028742

/-! ## A302591.P17117364989224235011

`record[A034699(n+1)/A000188(A003963(n+1))]`
-/

namespace A302591.P17117364989224235011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034699 (n + 1) : ℚ) / (A000188 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302591.P17117364989224235011

/-! ## A302591.P17821967874935970794

`record[A053585(n+1)/A003557(A003963(n+1))]`
-/

namespace A302591.P17821967874935970794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053585 (n + 1) : ℚ) / (A003557 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302591.P17821967874935970794

/-! ## A302591.P13553630882916461511

`record[A068794(n+1)/A000188(A003963(n+1))]`
-/

namespace A302591.P13553630882916461511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068794 (n + 1) : ℚ) / (A000188 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302591.P13553630882916461511

/-! ## A302591.P15112870947986857904

`record[A217434(n+1)/A003557(A003963(n+1))]`
-/

namespace A302591.P15112870947986857904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217434 (n + 1) : ℚ) / (A003557 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302591.P15112870947986857904

/-! ## A302591.P12610182156752559466

`record[A346596(n+1)/A003557(A003963(n+1))]`
-/

namespace A302591.P12610182156752559466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346596 (n + 1) : ℚ) / (A003557 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302591.P12610182156752559466

/-! ## A302591.P2830657089278706906

`record[A330741(n+1)/A203639(A003963(n+1))]`
-/

namespace A302591.P2830657089278706906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330741 (n + 1) : ℚ) / (A203639 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302591.P2830657089278706906

/-! ## A302591.P11500827450946936423

`∩[A174090(n+1), A302478(n+1)]`
-/

namespace A302591.P11500827450946936423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302591.P11500827450946936423

/-! ## A302591.P12087950392679929742

`record[A325351(A302497(n+1))]`
-/

namespace A302591.P12087950392679929742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (A302497 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302591.P12087950392679929742

/-!
# A302592: One, powers of 2, and prime numbers of prime index.

The programs for A302592, there is no canonical definition to state claims against.
-/

/-! ## A302592.P5618975261494991158

`∩[A302591(n+1), A302593(n+1)]`
-/

namespace A302592.P5618975261494991158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302592.P5618975261494991158

/-! ## A302592.P16296080645733118499

`∩[A302498(n+1), A302591(n+1)]`
-/

namespace A302592.P16296080645733118499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302592.P16296080645733118499

/-! ## A302592.P18344950016200736152

`record[A028233(A291686(n+1))]`
-/

namespace A302592.P18344950016200736152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A291686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302592.P18344950016200736152

/-! ## A302592.P2430852263545410155

`filter[A291686(n+1), A010055(#)]`
-/

namespace A302592.P2430852263545410155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A302592.P2430852263545410155

/-! ## A302592.P18414363293556102182

`record[A130065(A291686(floor(n/2)+1))]`
-/

namespace A302592.P18414363293556102182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130065 (A291686 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302592.P18414363293556102182

/-! ## A302592.P2921557041543075004

`∩[A000961(n+1), A291686(n+1)]`
-/

namespace A302592.P2921557041543075004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302592.P2921557041543075004

/-! ## A302592.P11932007972102002149

`∩[A291686(n+1), A302498(n+1)]`
-/

namespace A302592.P11932007972102002149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302592.P11932007972102002149

/-! ## A302592.P9945485352408366476

`∩[A291686(n+1), A302591(n+1)]`
-/

namespace A302592.P9945485352408366476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302592.P9945485352408366476

/-! ## A302592.P8865967053217850711

`A130065(record[A130065(A291686(n+1))])`
-/

namespace A302592.P8865967053217850711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130065 (A291686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130065 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302592.P8865967053217850711

/-! ## A302592.P12214271380543594608

`∩[A174090(n+1), A302540(n+1)]`
-/

namespace A302592.P12214271380543594608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302592.P12214271380543594608

/-! ## A302592.P1298139078004026559

`∩[A302540(n+1), A302591(n+1)]`
-/

namespace A302592.P1298139078004026559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302592.P1298139078004026559

/-!
# A302593: Numbers whose prime indices are powers of a common prime number.

The programs for A302593, the canonical program `A302593.P4667659382129643061` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302593 has offset 1).

The definition of A302593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1012 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302593.P1465442712040184514

`lt[A303975(n+1), 2]+1`
-/

namespace A302593.P1465442712040184514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A302593.P1465442712040184514

namespace A302593

/-- `lt[A303975(n+1), 2]+1` -/
def P1465442712040184514.Spec : Prop :=
  ∀ n, (P1465442712040184514.a n : ℤ) = A302593 (n + 1)

end A302593

/-! ## A302593.P7835351833734800462

`lt[A001221(A003963(n+1)), 2]+1`
-/

namespace A302593.P7835351833734800462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003963 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A302593.P7835351833734800462

namespace A302593

/-- `lt[A001221(A003963(n+1)), 2]+1` -/
def P7835351833734800462.Spec : Prop :=
  ∀ n, (P7835351833734800462.a n : ℤ) = A302593 (n + 1)

end A302593

/-! ## A302593.P4667659382129643061

`lt[A001221(A156061(n+1)), 2]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A302593

/-- `lt[A001221(A156061(n+1)), 2]+1` -/
def P4667659382129643061.Spec : Prop :=
  ∀ n, (P4667659382129643061.a n : ℤ) = A302593 (n + 1)

theorem P4667659382129643061.correct : P4667659382129643061.Spec := by
  intro n
  simp only [A302593, Nat.add_sub_cancel]

end A302593

/-! ## A302593.P1053348102801563063

`lt[A300831(A290103(n+1)), 2]+1`
-/

namespace A302593.P1053348102801563063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300831 (A290103 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A302593.P1053348102801563063

namespace A302593

/-- `lt[A300831(A290103(n+1)), 2]+1` -/
def P1053348102801563063.Spec : Prop :=
  ∀ n, (P1053348102801563063.a n : ℤ) = A302593 (n + 1)

end A302593

/-! ## A302593.P1207208028472242585

`∩[A302492(n+1), A318991(n+1)]`
-/

namespace A302593.P1207208028472242585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302593.P1207208028472242585

namespace A302593

/-- `∩[A302492(n+1), A318991(n+1)]` -/
def P1207208028472242585.Spec : Prop :=
  ∀ n, (P1207208028472242585.a n : ℤ) = A302593 (n + 1)

end A302593

/-!
# A302594: Numbers whose prime indices other than 1 are equal prime numbers.

The programs for A302594, there is no canonical definition to state claims against.
-/

/-! ## A302594.P10535975420720131804

`filter[A302540(n+1), A340363(#)]`
-/

namespace A302594.P10535975420720131804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A302594.P10535975420720131804

/-! ## A302594.P831429655084453767

`∪[A371127(n+1), A000079(n)]`
-/

namespace A302594.P831429655084453767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302594.P831429655084453767

/-! ## A302594.P3494628928646462921

`∪[A371127(n+1), A008860(n)]`
-/

namespace A302594.P3494628928646462921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302594.P3494628928646462921

/-! ## A302594.P2405096504179870349

`∪[A371127(n+1), A008861(n)]`
-/

namespace A302594.P2405096504179870349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302594.P2405096504179870349

/-! ## A302594.P9830962772924833710

`∪[A371127(n+1), A008862(n)]`
-/

namespace A302594.P9830962772924833710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302594.P9830962772924833710

/-! ## A302594.P6951427298553626162

`∪[A371127(n+1), A008863(n)]`
-/

namespace A302594.P6951427298553626162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302594.P6951427298553626162

/-! ## A302594.P15869388102643570275

`∪[A371127(n+1), A051535(n)]`
-/

namespace A302594.P15869388102643570275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302594.P15869388102643570275

/-! ## A302594.P1176780732549889370

`∪[A371127(n+1), A133464(n)]`
-/

namespace A302594.P1176780732549889370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133464 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302594.P1176780732549889370

/-! ## A302594.P12970989791371072475

`∪[A371127(n+1), A145114(n)]`
-/

namespace A302594.P12970989791371072475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145114 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302594.P12970989791371072475

/-! ## A302594.P16126501115914034726

`∪[A371127(n+1), A145115(n)]`
-/

namespace A302594.P16126501115914034726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145115 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302594.P16126501115914034726

/-!
# A302595: Triangle read by rows: T(n,k) is the number of ways to choose a k-dimensional subspace U of an n-dimensional vector space over GF(2) and then choose a subspace of U.

The programs for A302595, there is no canonical definition to state claims against.
-/

/-! ## A302595.P15619470039875296221

`A006116(A025581(n))*A022166(n)`
-/

namespace A302595.P15619470039875296221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006116 (A025581 n).toNat * A022166 n

end

end A302595.P15619470039875296221

/-! ## A302595.P8973349029974387146

`A022166(n)*A061034(A130321(n))`
-/

namespace A302595.P8973349029974387146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n * A061034 (A130321 n).toNat

end

end A302595.P8973349029974387146

/-! ## A302595.P12815151738551105825

`A006116(A025669(n+1))*A022166(n)`
-/

namespace A302595.P12815151738551105825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006116 (A025669 (n + 1)).toNat * A022166 n

end

end A302595.P12815151738551105825

/-!
# A302596: Powers of prime numbers of prime index.

The programs for A302596, the canonical program `A302596.P11885292566214907826` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302596 has offset 1).

The definition of A302596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2504 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302596.P11885292566214907826

`∩[A076610(n+1), A302593(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A302596

/-- `∩[A076610(n+1), A302593(n+1)]` -/
def P11885292566214907826.Spec : Prop :=
  ∀ n, (P11885292566214907826.a n : ℤ) = A302596 (n + 1)

theorem P11885292566214907826.correct : P11885292566214907826.Spec := by
  intro n
  simp only [A302596, Nat.add_sub_cancel]

end A302596

/-! ## A302596.P2587170045386432005

`∩[A076610(n+1), A061345(n)]`
-/

namespace A302596.P2587170045386432005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302596.P2587170045386432005

namespace A302596

/-- `∩[A076610(n+1), A061345(n)]` -/
def P2587170045386432005.Spec : Prop :=
  ∀ n, (P2587170045386432005.a n : ℤ) = A302596 (n + 1)

end A302596

/-! ## A302596.P14583762143144122580

`∩[A076610(n+1), A235868(n+1)]`
-/

namespace A302596.P14583762143144122580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302596.P14583762143144122580

namespace A302596

/-- `∩[A076610(n+1), A235868(n+1)]` -/
def P14583762143144122580.Spec : Prop :=
  ∀ n, (P14583762143144122580.a n : ℤ) = A302596 (n + 1)

end A302596

/-! ## A302596.P13124970613454845647

`∩[A076610(n+1), A380757(n+1)]`
-/

namespace A302596.P13124970613454845647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302596.P13124970613454845647

namespace A302596

/-- `∩[A076610(n+1), A380757(n+1)]` -/
def P13124970613454845647.Spec : Prop :=
  ∀ n, (P13124970613454845647.a n : ℤ) = A302596 (n + 1)

end A302596

/-! ## A302596.P17095587929991286969

`∩[A000961(n+1), A076610(n+1)]`
-/

namespace A302596.P17095587929991286969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302596.P17095587929991286969

namespace A302596

/-- `∩[A000961(n+1), A076610(n+1)]` -/
def P17095587929991286969.Spec : Prop :=
  ∀ n, (P17095587929991286969.a n : ℤ) = A302596 (n + 1)

end A302596

/-! ## A302596.P15779598106166688208

`∩[A076610(n+1), A225657(n+1)]`
-/

namespace A302596.P15779598106166688208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302596.P15779598106166688208

namespace A302596

/-- `∩[A076610(n+1), A225657(n+1)]` -/
def P15779598106166688208.Spec : Prop :=
  ∀ n, (P15779598106166688208.a n : ℤ) = A302596 (n + 1)

end A302596

/-! ## A302596.P4595562908665218970

`∩[A076610(n+1), A141807(n+1)]`
-/

namespace A302596.P4595562908665218970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302596.P4595562908665218970

namespace A302596

/-- `∩[A076610(n+1), A141807(n+1)]` -/
def P4595562908665218970.Spec : Prop :=
  ∀ n, (P4595562908665218970.a n : ℤ) = A302596 (n + 1)

end A302596

/-! ## A302596.P1447516493136067234

`∩[A076610(n+1), A081061(n+1)]`
-/

namespace A302596.P1447516493136067234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302596.P1447516493136067234

namespace A302596

/-- `∩[A076610(n+1), A081061(n+1)]` -/
def P1447516493136067234.Spec : Prop :=
  ∀ n, (P1447516493136067234.a n : ℤ) = A302596 (n + 1)

end A302596

/-! ## A302596.P9396707921190372361

`filter[A076610(n+1), A354923(#)]`
-/

namespace A302596.P9396707921190372361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A302596.P9396707921190372361

namespace A302596

/-- `filter[A076610(n+1), A354923(#)]` -/
def P9396707921190372361.Spec : Prop :=
  ∀ n, P9396707921190372361.a n = A302596 (n + 1)

end A302596

/-! ## A302596.P12728806347883134086

`filter[A076610(n+1), A354924(#)]`
-/

namespace A302596.P12728806347883134086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A302596.P12728806347883134086

namespace A302596

/-- `filter[A076610(n+1), A354924(#)]` -/
def P12728806347883134086.Spec : Prop :=
  ∀ n, P12728806347883134086.a n = A302596 (n + 1)

end A302596

/-! ## A302596.P2699051100223525690

`filter[A076610(n+1), A340363(#)]`
-/

namespace A302596.P2699051100223525690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A302596.P2699051100223525690

namespace A302596

/-- `filter[A076610(n+1), A340363(#)]` -/
def P2699051100223525690.Spec : Prop :=
  ∀ n, P2699051100223525690.a n = A302596 (n + 1)

end A302596

/-! ## A302596.P4953469273422192025

`∩[A076610(n+1), A354925(n+1)]`
-/

namespace A302596.P4953469273422192025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302596.P4953469273422192025

namespace A302596

/-- `∩[A076610(n+1), A354925(n+1)]` -/
def P4953469273422192025.Spec : Prop :=
  ∀ n, (P4953469273422192025.a n : ℤ) = A302596 (n + 1)

end A302596

/-! ## A302596.P13468604937312551080

`∩[A033948(n+1), A076610(n+1)]`
-/

namespace A302596.P13468604937312551080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302596.P13468604937312551080

namespace A302596

/-- `∩[A033948(n+1), A076610(n+1)]` -/
def P13468604937312551080.Spec : Prop :=
  ∀ n, (P13468604937312551080.a n : ℤ) = A302596 (n + 1)

end A302596

/-! ## A302596.P7406674798681183880

`∩[A076610(n+1), A371533(n+1)]`
-/

namespace A302596.P7406674798681183880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302596.P7406674798681183880

namespace A302596

/-- `∩[A076610(n+1), A371533(n+1)]` -/
def P7406674798681183880.Spec : Prop :=
  ∀ n, (P7406674798681183880.a n : ℤ) = A302596 (n + 1)

end A302596

/-! ## A302596.P3322179581856620340

`∩[A076610(n+1), A328336(n+1)]`
-/

namespace A302596.P3322179581856620340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302596.P3322179581856620340

namespace A302596

/-- `∩[A076610(n+1), A328336(n+1)]` -/
def P3322179581856620340.Spec : Prop :=
  ∀ n, (P3322179581856620340.a n : ℤ) = A302596 (n + 1)

end A302596

/-! ## A302596.P2028320790032487850

`∩[A076610(n+1), A318991(n+1)]`
-/

namespace A302596.P2028320790032487850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302596.P2028320790032487850

namespace A302596

/-- `∩[A076610(n+1), A318991(n+1)]` -/
def P2028320790032487850.Spec : Prop :=
  ∀ n, (P2028320790032487850.a n : ℤ) = A302596 (n + 1)

end A302596

/-! ## A302596.P17032718729948838115

`∩[A076610(n+1), A382215(n+1)]`
-/

namespace A302596.P17032718729948838115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302596.P17032718729948838115

namespace A302596

/-- `∩[A076610(n+1), A382215(n+1)]` -/
def P17032718729948838115.Spec : Prop :=
  ∀ n, (P17032718729948838115.a n : ℤ) = A302596 (n + 1)

end A302596

/-! ## A302596.P716127801862915236

`∩[A076610(n+1), A302498(n+1)]`
-/

namespace A302596.P716127801862915236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302596.P716127801862915236

namespace A302596

/-- `∩[A076610(n+1), A302498(n+1)]` -/
def P716127801862915236.Spec : Prop :=
  ∀ n, (P716127801862915236.a n : ℤ) = A302596 (n + 1)

end A302596

/-! ## A302596.P17436513179170663490

`record[A028233(A076610(n+1))]`
-/

namespace A302596.P17436513179170663490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A076610 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302596.P17436513179170663490

namespace A302596

/-- `record[A028233(A076610(n+1))]` -/
def P17436513179170663490.Spec : Prop :=
  ∀ n, P17436513179170663490.a n = A302596 (n + 1)

end A302596

/-!
# A302597: Squarefree numbers whose prime indices are powers of a common prime number.

The programs for A302597, there is no canonical definition to state claims against.
-/

/-! ## A302597.P17149306327012530517

`record[∏{p}[A302593(n+1), #]]`
-/

namespace A302597.P17149306327012530517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302597.P17149306327012530517

/-! ## A302597.P6521497369701892849

`record[A007913(A302593(n+1))]`
-/

namespace A302597.P6521497369701892849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A302593 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302597.P6521497369701892849

/-! ## A302597.P13062645958863879643

`record[A089384(A302593(n+2))]`
-/

namespace A302597.P13062645958863879643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089384 (A302593 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302597.P13062645958863879643

/-! ## A302597.P11048613983266020898

`filter[A302593(n+1), A008966(#)]`
-/

namespace A302597.P11048613983266020898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A302597.P11048613983266020898

/-! ## A302597.P4658388379933125725

`∩[A005117(n+1), A302593(n+1)]`
-/

namespace A302597.P4658388379933125725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302597.P4658388379933125725

/-! ## A302597.P10774199755530617128

`∩[A302593(n+1), A326535(n+1)]`
-/

namespace A302597.P10774199755530617128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302597.P10774199755530617128

/-! ## A302597.P3683442222797723048

`∩[A161203(n+1)-(n+1)², A302593(n+1)]`
-/

namespace A302597.P3683442222797723048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161203 (n + 1) - ((n + 1) ^ 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302597.P3683442222797723048

/-! ## A302597.P12940279591444266131

`∩[A000720(A302491(n+1)), A302593(n+1)]`
-/

namespace A302597.P12940279591444266131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A302491 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302597.P12940279591444266131

/-! ## A302597.P5286730207671063968

`record[A007947(n+1)/A051119(A003963(n+1))]`
-/

namespace A302597.P5286730207671063968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A051119 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302597.P5286730207671063968

/-! ## A302597.P15806702379553986863

`record[A053166(n+1)/A051119(A003963(n+1))]`
-/

namespace A302597.P15806702379553986863
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053166 (n + 1) : ℚ) / (A051119 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302597.P15806702379553986863

/-!
# A302598: G.f.: Sum_{n>=0} (1 + (1+x)^n)^n / (2 + (1+x)^n)^(n+1).

The programs for A302598, there is no canonical definition to state claims against.
-/

/-! ## A302598.P5230708858312147042

`A315607((n-1)*a(n-1))` with `a(0)=1`
-/

namespace A302598.P5230708858312147042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A315607 (((n : ℤ) - 1) * a (n - 1)).toNat

end

end A302598.P5230708858312147042

/-!
# A302599: Numbers k such that digit_sum(k) > digit_sum(2k).

The programs for A302599, the canonical program `A302599.P10102814595459792599` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302599 has offset 1).

The definition of A302599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4604 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302599.P10102814595459792599

`lt[A004092(n), A007953(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A302599

/-- `lt[A004092(n), A007953(n)]` -/
def P10102814595459792599.Spec : Prop :=
  ∀ n, (P10102814595459792599.a n : ℤ) = A302599 (n + 1)

theorem P10102814595459792599.correct : P10102814595459792599.Spec := by
  intro n
  simp only [A302599, Nat.add_sub_cancel]

end A302599

/-! ## A302599.P188300681386161536

`lt[A004092(n)², A118881(n)]`
-/

namespace A302599.P188300681386161536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P188300681386161536

namespace A302599

/-- `lt[A004092(n)², A118881(n)]` -/
def P188300681386161536.Spec : Prop :=
  ∀ n, (P188300681386161536.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P10026456077087673259

`lt[A004092(n), log2(A329562(n))]`
-/

namespace A302599.P10026456077087673259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A302599.P10026456077087673259

namespace A302599

/-- `lt[A004092(n), log2(A329562(n))]` -/
def P10026456077087673259.Spec : Prop :=
  ∀ n, (P10026456077087673259.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P17318627386231172014

`lt[∑{digits}[A004277(n), #], A007953(n)]`
-/

namespace A302599.P17318627386231172014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A302599.P17318627386231172014

namespace A302599

/-- `lt[∑{digits}[A004277(n), #], A007953(n)]` -/
def P17318627386231172014.Spec : Prop :=
  ∀ n, (P17318627386231172014.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P8088505674999484830

`lt[A004092(n), A053831(A171397(n))]`
-/

namespace A302599.P8088505674999484830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (A171397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P8088505674999484830

namespace A302599

/-- `lt[A004092(n), A053831(A171397(n))]` -/
def P8088505674999484830.Spec : Prop :=
  ∀ n, (P8088505674999484830.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P9162177914284459964

`lt[A007953(2*n), ∑{digits}[n, #]]`
-/

namespace A302599.P9162177914284459964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302599.P9162177914284459964

namespace A302599

/-- `lt[A007953(2*n), ∑{digits}[n, #]]` -/
def P9162177914284459964.Spec : Prop :=
  ∀ n, (P9162177914284459964.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P8077522320129972547

`lt[A007953(2*n), A007953(n)]`
-/

namespace A302599.P8077522320129972547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P8077522320129972547

namespace A302599

/-- `lt[A007953(2*n), A007953(n)]` -/
def P8077522320129972547.Spec : Prop :=
  ∀ n, (P8077522320129972547.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P10375798614477340882

`lt[A118881(2*n), A118881(n)]`
-/

namespace A302599.P10375798614477340882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P10375798614477340882

namespace A302599

/-- `lt[A118881(2*n), A118881(n)]` -/
def P10375798614477340882.Spec : Prop :=
  ∀ n, (P10375798614477340882.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P11547513965037983765

`lt[A180018(2*n), A180018(n)]`
-/

namespace A302599.P11547513965037983765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P11547513965037983765

namespace A302599

/-- `lt[A180018(2*n), A180018(n)]` -/
def P11547513965037983765.Spec : Prop :=
  ∀ n, (P11547513965037983765.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P17353531921220850566

`lt[A329562(2*n), A329562(n)]`
-/

namespace A302599.P17353531921220850566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P17353531921220850566

namespace A302599

/-- `lt[A329562(2*n), A329562(n)]` -/
def P17353531921220850566.Spec : Prop :=
  ∀ n, (P17353531921220850566.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P3557812753065812900

`lt[A118881(A005843(n))+1, A118881(n)]`
-/

namespace A302599.P3557812753065812900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A005843 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P3557812753065812900

namespace A302599

/-- `lt[A118881(A005843(n))+1, A118881(n)]` -/
def P3557812753065812900.Spec : Prop :=
  ∀ n, (P3557812753065812900.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P13579103948129137879

`lt[A007953(A004277(n)), A169805(n)/2]`
-/

namespace A302599.P13579103948129137879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004277 n).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A302599.P13579103948129137879

namespace A302599

/-- `lt[A007953(A004277(n)), A169805(n)/2]` -/
def P13579103948129137879.Spec : Prop :=
  ∀ n, (P13579103948129137879.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P12886458719956375294

`lt[A062028(A004277(n)), A062028(n)+n]`
-/

namespace A302599.P12886458719956375294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P12886458719956375294

namespace A302599

/-- `lt[A062028(A004277(n)), A062028(n)+n]` -/
def P12886458719956375294.Spec : Prop :=
  ∀ n, (P12886458719956375294.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P7464540879929457817

`lt[A118880(2*n), A118880(n)]`
-/

namespace A302599.P7464540879929457817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P7464540879929457817

namespace A302599

/-- `lt[A118880(2*n), A118880(n)]` -/
def P7464540879929457817.Spec : Prop :=
  ∀ n, (P7464540879929457817.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P8707042136651715069

`lt[A169805(2*n), A169805(n)]`
-/

namespace A302599.P8707042136651715069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P8707042136651715069

namespace A302599

/-- `lt[A169805(2*n), A169805(n)]` -/
def P8707042136651715069.Spec : Prop :=
  ∀ n, (P8707042136651715069.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P14480452059796400435

`lt[A007953(A005408(n)), A007953(n)+1]`
-/

namespace A302599.P14480452059796400435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A005408 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P14480452059796400435

namespace A302599

/-- `lt[A007953(A005408(n)), A007953(n)+1]` -/
def P14480452059796400435.Spec : Prop :=
  ∀ n, (P14480452059796400435.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P2441778071498155782

`lt[A169805(A005408(n)), A169805(n)+1]`
-/

namespace A302599.P2441778071498155782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (A005408 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P2441778071498155782

namespace A302599

/-- `lt[A169805(A005408(n)), A169805(n)+1]` -/
def P2441778071498155782.Spec : Prop :=
  ∀ n, (P2441778071498155782.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P9637444358482177796

`lt[A329562(A005408(n)), A329562(n)+1]`
-/

namespace A302599.P9637444358482177796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (A005408 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P9637444358482177796

namespace A302599

/-- `lt[A329562(A005408(n)), A329562(n)+1]` -/
def P9637444358482177796.Spec : Prop :=
  ∀ n, (P9637444358482177796.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P2713655400991366510

`lt[A004092(n), A053836(A102489(n))]`
-/

namespace A302599.P2713655400991366510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A102489 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P2713655400991366510

namespace A302599

/-- `lt[A004092(n), A053836(A102489(n))]` -/
def P2713655400991366510.Spec : Prop :=
  ∀ n, (P2713655400991366510.a n : ℤ) = A302599 (n + 1)

end A302599

/-! ## A302599.P2703382710858251179

`lt[A004092(n), A004092(A008587(n))]`
-/

namespace A302599.P2703382710858251179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A008587 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P2703382710858251179

namespace A302599

/-- `lt[A004092(n), A004092(A008587(n))]` -/
def P2703382710858251179.Spec : Prop :=
  ∀ n, (P2703382710858251179.a n : ℤ) = A302599 (n + 1)

end A302599

