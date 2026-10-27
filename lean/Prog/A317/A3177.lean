import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C020
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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
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
# A317700: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317700, there is no canonical definition to state claims against.
-/

/-! ## A317700.P18139914483487798293

`A317703(A034856(n+4)-(n-2))`
-/

namespace A317700.P18139914483487798293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (A034856 (n + 4) - ((n : ℤ) - 2)).toNat

end

end A317700.P18139914483487798293

/-! ## A317700.P7862202264062617877

`A317703(A374005(n+1))`
-/

namespace A317700.P7862202264062617877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (A374005 (n + 1)).toNat

end

end A317700.P7862202264062617877

/-! ## A317700.P482245658925532997

`A317703(A046691(n+3))`
-/

namespace A317700.P482245658925532997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (A046691 (n + 3)).toNat

end

end A317700.P482245658925532997

/-! ## A317700.P16151116460762499587

`A317703(A056115(n)+11)`
-/

namespace A317700.P16151116460762499587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (A056115 n + 11).toNat

end

end A317700.P16151116460762499587

/-! ## A317700.P6352108551187731072

`A317703(eq[4, A193592(n)])`
-/

namespace A317700.P6352108551187731072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317700.P6352108551187731072

/-!
# A317701: Number of n X 6 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317701, there is no canonical definition to state claims against.
-/

/-! ## A317701.P15521658451410294753

`A317703(A052905(n+2)+11)`
-/

namespace A317701.P15521658451410294753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (A052905 (n + 2) + 11).toNat

end

end A317701.P15521658451410294753

/-! ## A317701.P8282083881818364955

`A317703(eq[7, A131818(n+1)])`
-/

namespace A317701.P8282083881818364955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317701.P8282083881818364955

/-! ## A317701.P1582487653711097507

`A317703(A374007(n+1))`
-/

namespace A317701.P1582487653711097507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (A374007 (n + 1)).toNat

end

end A317701.P1582487653711097507

/-! ## A317701.P12282570205040864450

`A317703(eq[3, A219347(n)])`
-/

namespace A317701.P12282570205040864450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317701.P12282570205040864450

/-! ## A317701.P9236351589891461002

`A317703(eq[5, A193592(n)])`
-/

namespace A317701.P9236351589891461002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317701.P9236351589891461002

/-!
# A317702: Number of n X 7 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317702, there is no canonical definition to state claims against.
-/

/-! ## A317702.P7818092710212863527

`A317703(eq[8, A131818(n+1)])`
-/

namespace A317702.P7818092710212863527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317702.P7818092710212863527

/-! ## A317702.P16922846058223120436

`A317703(A374008(n+1))`
-/

namespace A317702.P16922846058223120436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (A374008 (n + 1)).toNat

end

end A317702.P16922846058223120436

/-! ## A317702.P7059763349677415666

`A317703(eq[4, A219347(n)])`
-/

namespace A317702.P7059763349677415666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317702.P7059763349677415666

/-! ## A317702.P14965729195493110842

`A317703(eq[6, A193592(n)])`
-/

namespace A317702.P14965729195493110842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317702.P14965729195493110842

/-! ## A317702.P15387248348166306086

`A317703(eq[7, A152157(n)])`
-/

namespace A317702.P15387248348166306086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317702.P15387248348166306086

/-!
# A317705: Matula-Goebel numbers of series-reduced powerful rooted trees.

The programs for A317705, there is no canonical definition to state claims against.
-/

/-! ## A317705.P17580095547106289282

`record[A057521(A320269(n+1))]`
-/

namespace A317705.P17580095547106289282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A320269 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317705.P17580095547106289282

/-! ## A317705.P17378619618484965754

`filter[A320269(n+1), A112526(#)]`
-/

namespace A317705.P17378619618484965754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A317705.P17378619618484965754

/-! ## A317705.P8953152791288740273

`∩[A001694(n+1), A320269(n+1)]`
-/

namespace A317705.P8953152791288740273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317705.P8953152791288740273

/-! ## A317705.P6195945782041067882

`∩[A320269(n+1), A328957(n+1)]`
-/

namespace A317705.P6195945782041067882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317705.P6195945782041067882

/-! ## A317705.P17823243745175512787

`∩[A320269(n+1), A377821(n+1)]`
-/

namespace A317705.P17823243745175512787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317705.P17823243745175512787

/-!
# A317707: Number of powerful rooted trees with n nodes.

The programs for A317707, there is no canonical definition to state claims against.
-/

/-! ## A317707.P4133339437186227394

`A023193(A319618(n)+A147660(n))`
-/

namespace A317707.P4133339437186227394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A319618 n + A147660 n).toNat

end

end A317707.P4133339437186227394

/-! ## A317707.P5538773968231038396

`A319645(n)+A029837(A319628(n))`
-/

namespace A317707.P5538773968231038396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319645 n + A029837 (A319628 n).toNat

end

end A317707.P5538773968231038396

/-! ## A317707.P878125265222434808

`A227568(A353860(n)+A318099(n))`
-/

namespace A317707.P878125265222434808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A353860 n + A318099 n).toNat

end

end A317707.P878125265222434808

/-!
# A317708: Number of aperiodic relatively prime trees with n nodes.

The programs for A317708, there is no canonical definition to state claims against.
-/

/-! ## A317708.P11059627697217360682

`A325124(A191789(n))`
-/

namespace A317708.P11059627697217360682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325124 (A191789 n).toNat

end

end A317708.P11059627697217360682

/-! ## A317708.P18251355820960174709

`A371167(A333313(n))`
-/

namespace A317708.P18251355820960174709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371167 (A333313 n).toNat

end

end A317708.P18251355820960174709

/-! ## A317708.P17303584450057881487

`A394988(A032256(n+1))`
-/

namespace A317708.P17303584450057881487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394988 (A032256 (n + 1)).toNat

end

end A317708.P17303584450057881487

/-! ## A317708.P11190606058724230584

`A325124(A298118(n+1))`
-/

namespace A317708.P11190606058724230584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325124 (A298118 (n + 1)).toNat

end

end A317708.P11190606058724230584

/-! ## A317708.P11916131072198431499

`A001385(n)+A000035(A076282(n+1))`
-/

namespace A317708.P11916131072198431499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001385 n + A000035 (A076282 (n + 1)).toNat

end

end A317708.P11916131072198431499

/-!
# A317709: Aperiodic relatively prime tree numbers. Matula-Goebel numbers of aperiodic relatively prime trees.

The programs for A317709, there is no canonical definition to state claims against.
-/

/-! ## A317709.P15638517465497465470

`∩[A303431(n+1), comp[A317789(n+1)]]`
-/

namespace A317709.P15638517465497465470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317789 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A317709.P15638517465497465470

/-! ## A317709.P325850581264001253

`∩[A303431(n+1), A316502(n+1)]`
-/

namespace A317709.P325850581264001253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317709.P325850581264001253

/-! ## A317709.P147913826042245584

`∩[A303431(n+1), A327534(n+1)]`
-/

namespace A317709.P147913826042245584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317709.P147913826042245584

/-! ## A317709.P3998990043376981139

`∩[A303431(n+1), A338331(n+1)]`
-/

namespace A317709.P3998990043376981139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317709.P3998990043376981139

/-! ## A317709.P15863019408758491533

`∩[A303431(n+1), A338555(n+1)]`
-/

namespace A317709.P15863019408758491533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317709.P15863019408758491533

/-!
# A317710: Uniform tree numbers. Matula-Goebel numbers of uniform rooted trees.

The programs for A317710, there is no canonical definition to state claims against.
-/

/-! ## A317710.P17123842895499122726

`comp[A317711(n+1)-1]+1`
-/

namespace A317710.P17123842895499122726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317711 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A317710.P17123842895499122726

/-! ## A317710.P6701662423327471713

`∪[(n+1)², A316521(n+1)]`
-/

namespace A317710.P6701662423327471713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317710.P6701662423327471713

/-! ## A317710.P1330467536666027756

`∪[A316521(n+1), A002727(n)]`
-/

namespace A317710.P1330467536666027756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002727 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317710.P1330467536666027756

/-! ## A317710.P7280996954304958696

`∪[A316521(n+1), A006636(n)]`
-/

namespace A317710.P7280996954304958696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006636 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317710.P7280996954304958696

/-! ## A317710.P14315884502803975835

`∪[A316521(n+1), A008490(n)]`
-/

namespace A317710.P14315884502803975835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317710.P14315884502803975835

/-! ## A317710.P14998540230470223284

`∪[A316521(n+1), A008500(n)]`
-/

namespace A317710.P14998540230470223284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008500 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317710.P14998540230470223284

/-! ## A317710.P3575690489288625268

`∪[A316521(n+1), A009923(n)]`
-/

namespace A317710.P3575690489288625268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009923 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317710.P3575690489288625268

/-! ## A317710.P3663951889751847279

`∪[A316521(n+1), A014343(n)]`
-/

namespace A317710.P3663951889751847279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014343 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317710.P3663951889751847279

/-! ## A317710.P16239026702422783612

`∪[A316521(n+1), A014738(n)]`
-/

namespace A317710.P16239026702422783612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014738 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317710.P16239026702422783612

/-! ## A317710.P95913427564608392

`∪[A316521(n+1), A016826(n)]`
-/

namespace A317710.P95913427564608392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016826 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317710.P95913427564608392

/-!
# A317711: Numbers that are not uniform tree numbers.

The programs for A317711, there is no canonical definition to state claims against.
-/

/-! ## A317711.P12723131612627170043

`eq[char[A317710(n+1)], A151933(n)]`
-/

namespace A317711.P12723131612627170043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A317711.P12723131612627170043

/-! ## A317711.P14352520961235315198

`A126706(n+1)+A061265(A017994(n))`
-/

namespace A317711.P14352520961235315198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1) + A061265 (A017994 n).toNat

end

end A317711.P14352520961235315198

/-! ## A317711.P15415242111281412391

`A318673(A005316(n))+A126706(n+1)`
-/

namespace A317711.P15415242111281412391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318673 (A005316 n).toNat + A126706 (n + 1)

end

end A317711.P15415242111281412391

/-! ## A317711.P5765532913926723923

`A185012(A275071(n))+A126706(n+1)`
-/

namespace A317711.P5765532913926723923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A275071 n).toNat + A126706 (n + 1)

end

end A317711.P5765532913926723923

/-! ## A317711.P4483048786379229391

`A341619(A295145(n))+A126706(n+1)`
-/

namespace A317711.P4483048786379229391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 (A295145 n).toNat + A126706 (n + 1)

end

end A317711.P4483048786379229391

/-!
# A317712: Number of uniform rooted trees with n nodes.

The programs for A317712, there is no canonical definition to state claims against.
-/

/-! ## A317712.P8194595221359417548

`A193530(A004892(n+1))+A004695(n)`
-/

namespace A317712.P8194595221359417548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193530 (A004892 (n + 1)).toNat + A004695 n

end

end A317712.P8194595221359417548

/-! ## A317712.P5357990473645275484

`A243283(A279551(n+1))-A242249(A222379(n))`
-/

namespace A317712.P5357990473645275484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A279551 (n + 1)).toNat - A242249 (A222379 n).toNat

end

end A317712.P5357990473645275484

/-!
# A317713: Number of distinct terminal subtrees of the rooted tree with Matula-Goebel number n.

The programs for A317713, there is no canonical definition to state claims against.
-/

/-! ## A317713.P78793422991205147

`1+A324923(n+1)`
-/

namespace A317713.P78793422991205147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A324923 (n + 1)

end

end A317713.P78793422991205147

/-! ## A317713.P16016552787123711756

`A061775(n+1)-A366386(n+1)`
-/

namespace A317713.P16016552787123711756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - A366386 (n + 1)

end

end A317713.P16016552787123711756

/-! ## A317713.P15646154146636532159

`A196050(n+1)+1-A366386(n+1)`
-/

namespace A317713.P15646154146636532159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) + (1 - A366386 (n + 1))

end

end A317713.P15646154146636532159

/-! ## A317713.P14597422615218293283

`A324923(A000040(n+1))`
-/

namespace A317713.P14597422615218293283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (A000040 (n + 1)).toNat

end

end A317713.P14597422615218293283

/-! ## A317713.P12654319651582696606

`A324923(A100484(n+1))`
-/

namespace A317713.P12654319651582696606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (A100484 (n + 1)).toNat

end

end A317713.P12654319651582696606

/-! ## A317713.P2902626936238773225

`A324923(A001747(n+2))`
-/

namespace A317713.P2902626936238773225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (A001747 (n + 2)).toNat

end

end A317713.P2902626936238773225

/-! ## A317713.P3552566935416455294

`A324923(A001749(n+1))`
-/

namespace A317713.P3552566935416455294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (A001749 (n + 1)).toNat

end

end A317713.P3552566935416455294

/-! ## A317713.P8846831009800087296

`A324923(A062876(n+1))`
-/

namespace A317713.P8846831009800087296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (A062876 (n + 1)).toNat

end

end A317713.P8846831009800087296

/-! ## A317713.P16001810278653884721

`A324923(A072900(n+1))`
-/

namespace A317713.P16001810278653884721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (A072900 (n + 1)).toNat

end

end A317713.P16001810278653884721

/-! ## A317713.P3855132610753145563

`A324923(A120700(n+1))`
-/

namespace A317713.P3855132610753145563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (A120700 (n + 1)).toNat

end

end A317713.P3855132610753145563

/-! ## A317713.P16857985443421581590

`∑{e}[A324922(n+1), gcd(7, #)]+1`
-/

namespace A317713.P16857985443421581590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.gcd 7 (Nat.factorization (f1 n).natAbs p) + 1

end

end A317713.P16857985443421581590

/-! ## A317713.P15046996975094210172

`∑{p}[A324922(n+1), A001222(#)]+1`
-/

namespace A317713.P15046996975094210172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p + 1

end

end A317713.P15046996975094210172

/-! ## A317713.P7549878458447667318

`∑{p}[A324922(n+1), A008834(#)]+1`
-/

namespace A317713.P7549878458447667318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008834 p + 1

end

end A317713.P7549878458447667318

/-! ## A317713.P6265438920675338775

`A001222(∏{p}[A324922(n+1), #])+1`
-/

namespace A317713.P6265438920675338775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) + 1

end

end A317713.P6265438920675338775

/-! ## A317713.P11237804421808561147

`A001221(A285038(Δ[A007504(n)]))+1`
-/

namespace A317713.P11237804421808561147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A285038 (f1 (n + 1) - f1 n).toNat).toNat + 1

end

end A317713.P11237804421808561147

/-! ## A317713.P11473057246619002144

`A255121(∏{p}[A324922(n+1), A188581(#)])`
-/

namespace A317713.P11473057246619002144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255121 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A188581 p).toNat

end

end A317713.P11473057246619002144

/-! ## A317713.P10098524849423879842

`A324923(A033286(n+1))`
-/

namespace A317713.P10098524849423879842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (A033286 (n + 1)).toNat

end

end A317713.P10098524849423879842

/-! ## A317713.P4795831528282671382

`A001221(A324922(n+1))+1`
-/

namespace A317713.P4795831528282671382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A324922 (n + 1)).toNat + 1

end

end A317713.P4795831528282671382

/-! ## A317713.P11631637314606643596

`∑{d}[A324922(n+1), A010051(#)]+1`
-/

namespace A317713.P11631637314606643596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d + 1

end

end A317713.P11631637314606643596

/-! ## A317713.P9417741597890204904

`A324923(A383578(n+1))`
-/

namespace A317713.P9417741597890204904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (A383578 (n + 1)).toNat

end

end A317713.P9417741597890204904

/-!
# A317714: Chessboard rectangles sequence (see Comments), also A037270 interleaved with A163102.

The programs for A317714, the canonical program `A317714.P9060073659705425401` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317714 has offset 1).

The definition of A317714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317714.P9060073659705425401

`∑[floor(n/2)^3]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A317714

/-- `∑[floor(n/2)^3]` -/
def P9060073659705425401.Spec : Prop :=
  ∀ n, P9060073659705425401.a n = A317714 (n + 1)

theorem P9060073659705425401.correct : P9060073659705425401.Spec := by
  intro n
  simp only [A317714, Nat.add_sub_cancel]

end A317714

/-! ## A317714.P2856863827350370455

`a(n-1)+floor(n/2)^3` with `a(0)=0`
-/

namespace A317714.P2856863827350370455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℚ) / 2⌋ ^ 3

end

end A317714.P2856863827350370455

namespace A317714

/-- `a(n-1)+floor(n/2)^3` -/
def P2856863827350370455.Spec : Prop :=
  ∀ n, P2856863827350370455.a n = A317714 (n + 1)

end A317714

/-! ## A317714.P9611018653799895390

`floor(∑[∑[1-a(n-1)]^3])` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A317714.P9611018653799895390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317714.P9611018653799895390

namespace A317714

/-- `floor(∑[∑[1-a(n-1)]^3])` -/
def P9611018653799895390.Spec : Prop :=
  ∀ n, P9611018653799895390.a n = A317714 (n + 1)

end A317714

/-! ## A317714.P3009130561468277936

`A186707(n)-A212749(n)`
-/

namespace A317714.P3009130561468277936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186707 n - A212749 n

end

end A317714.P3009130561468277936

namespace A317714

/-- `A186707(n)-A212749(n)` -/
def P3009130561468277936.Spec : Prop :=
  ∀ n, P3009130561468277936.a n = A317714 (n + 1)

end A317714

/-! ## A317714.P2570014807872201175

`∑[A124093(n)]*A004526(n)`
-/

namespace A317714.P2570014807872201175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A004526 n

end

end A317714.P2570014807872201175

namespace A317714

/-- `∑[A124093(n)]*A004526(n)` -/
def P2570014807872201175.Spec : Prop :=
  ∀ n, P2570014807872201175.a n = A317714 (n + 1)

end A317714

/-! ## A317714.P18006691755952507808

`A002620(n)/2*A097066(n)`
-/

namespace A317714.P18006691755952507808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002620 n : ℚ) / 2 * (A097066 n : ℚ)

end

end A317714.P18006691755952507808

namespace A317714

/-- `A002620(n)/2*A097066(n)` -/
def P18006691755952507808.Spec : Prop :=
  ∀ n, P18006691755952507808.a n = (A317714 (n + 1) : ℚ)

end A317714

/-! ## A317714.P9392896737448157121

`lcm(∑[A004526(n)^3], A004526(n+1))`
-/

namespace A317714.P9392896737448157121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A004526 (n + 1))

end

end A317714.P9392896737448157121

namespace A317714

/-- `lcm(∑[A004526(n)^3], A004526(n+1))` -/
def P9392896737448157121.Spec : Prop :=
  ∀ n, (P9392896737448157121.a n : ℤ) = A317714 (n + 1)

end A317714

/-! ## A317714.P7318652470849205842

`A000217(A002620(n))+A123596(n)-A002620(n)`
-/

namespace A317714.P7318652470849205842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002620 n).toNat + (A123596 n - A002620 n)

end

end A317714.P7318652470849205842

namespace A317714

/-- `A000217(A002620(n))+A123596(n)-A002620(n)` -/
def P7318652470849205842.Spec : Prop :=
  ∀ n, P7318652470849205842.a n = A317714 (n + 1)

end A317714

/-! ## A317714.P11907800307109643007

`A001971(xor(1, ceil(n²/2)))`
-/

namespace A317714.P11907800307109643007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (Int.xor 1 ⌈(n ^ 2 : ℚ) / 2⌉).toNat

end

end A317714.P11907800307109643007

namespace A317714

/-- `A001971(xor(1, ceil(n²/2)))` -/
def P11907800307109643007.Spec : Prop :=
  ∀ n, P11907800307109643007.a n = A317714 (n + 1)

end A317714

/-! ## A317714.P11701093603643564066

`A001971(A097063(n))`
-/

namespace A317714.P11701093603643564066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A097063 n).toNat

end

end A317714.P11701093603643564066

namespace A317714

/-- `A001971(A097063(n))` -/
def P11701093603643564066.Spec : Prop :=
  ∀ n, P11701093603643564066.a n = A317714 (n + 1)

end A317714

/-! ## A317714.P1978222772438404093

`A130519(A007590(n)+gcd(2, n))`
-/

namespace A317714.P1978222772438404093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A007590 n + (Nat.gcd 2 n : ℤ)).toNat

end

end A317714.P1978222772438404093

namespace A317714

/-- `A130519(A007590(n)+gcd(2, n))` -/
def P1978222772438404093.Spec : Prop :=
  ∀ n, P1978222772438404093.a n = A317714 (n + 1)

end A317714

/-! ## A317714.P5097651383930887089

`A001971(∑[n]+or(1, n)-A007494(n))`
-/

namespace A317714.P5097651383930887089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (((∑ j ∈ Finset.range (n + 1), f1 j + Nat.lor 1 n : ℕ) : ℤ) - A007494 n).toNat

end

end A317714.P5097651383930887089

namespace A317714

/-- `A001971(∑[n]+or(1, n)-A007494(n))` -/
def P5097651383930887089.Spec : Prop :=
  ∀ n, P5097651383930887089.a n = A317714 (n + 1)

end A317714

/-! ## A317714.P16766409025408445475

`A130519(A267458(n)+∑[A267458(n)])`
-/

namespace A317714.P16766409025408445475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A267458 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A317714.P16766409025408445475

namespace A317714

/-- `A130519(A267458(n)+∑[A267458(n)])` -/
def P16766409025408445475.Spec : Prop :=
  ∀ n, P16766409025408445475.a n = A317714 (n + 1)

end A317714

/-! ## A317714.P13200064991968734495

`A002620(A097066(n)+A002620(n))/2`
-/

namespace A317714.P13200064991968734495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002620 (A097066 n + A002620 n).toNat : ℚ) / 2

end

end A317714.P13200064991968734495

namespace A317714

/-- `A002620(A097066(n)+A002620(n))/2` -/
def P13200064991968734495.Spec : Prop :=
  ∀ n, P13200064991968734495.a n = (A317714 (n + 1) : ℚ)

end A317714

/-! ## A317714.P15111573034372163311

`A001971(A057077(2*n)+A001971(2*n))`
-/

namespace A317714.P15111573034372163311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A057077 (2 * n) + A001971 (2 * n)).toNat

end

end A317714.P15111573034372163311

namespace A317714

/-- `A001971(A057077(2*n)+A001971(2*n))` -/
def P15111573034372163311.Spec : Prop :=
  ∀ n, P15111573034372163311.a n = A317714 (n + 1)

end A317714

/-! ## A317714.P17935804211502206528

`A002620(A130519(2*n+1))-A130519(A001971(2*n))`
-/

namespace A317714.P17935804211502206528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A130519 (2 * n + 1)).toNat - A130519 (A001971 (2 * n)).toNat

end

end A317714.P17935804211502206528

namespace A317714

/-- `A002620(A130519(2*n+1))-A130519(A001971(2*n))` -/
def P17935804211502206528.Spec : Prop :=
  ∀ n, P17935804211502206528.a n = A317714 (n + 1)

end A317714

/-! ## A317714.P4981580558474752461

`A001971(A028242(n²))`
-/

namespace A317714.P4981580558474752461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A028242 (n ^ 2)).toNat

end

end A317714.P4981580558474752461

namespace A317714

/-- `A001971(A028242(n²))` -/
def P4981580558474752461.Spec : Prop :=
  ∀ n, P4981580558474752461.a n = A317714 (n + 1)

end A317714

/-! ## A317714.P972256436562713132

`A130519(A028242(n²)+1)`
-/

namespace A317714.P972256436562713132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A028242 (n ^ 2) + 1).toNat

end

end A317714.P972256436562713132

namespace A317714

/-- `A130519(A028242(n²)+1)` -/
def P972256436562713132.Spec : Prop :=
  ∀ n, P972256436562713132.a n = A317714 (n + 1)

end A317714

/-! ## A317714.P403252383400151159

`A002620(A106249(n²))/2`
-/

namespace A317714.P403252383400151159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002620 (A106249 (n ^ 2)).toNat : ℚ) / 2

end

end A317714.P403252383400151159

namespace A317714

/-- `A002620(A106249(n²))/2` -/
def P403252383400151159.Spec : Prop :=
  ∀ n, P403252383400151159.a n = (A317714 (n + 1) : ℚ)

end A317714

/-! ## A317714.P754364145241249712

`A002620(A117572(n²))/2`
-/

namespace A317714.P754364145241249712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002620 (A117572 (n ^ 2)).toNat : ℚ) / 2

end

end A317714.P754364145241249712

namespace A317714

/-- `A002620(A117572(n²))/2` -/
def P754364145241249712.Spec : Prop :=
  ∀ n, P754364145241249712.a n = (A317714 (n + 1) : ℚ)

end A317714

/-!
# A317715: Number of ways to split an integer partition of n into consecutive subsequences with equal sums.

The programs for A317715, there is no canonical definition to state claims against.
-/

/-! ## A317715.P13434120627716950581

`A087061(A203318(n)*A302656(n+1))`
-/

namespace A317715.P13434120627716950581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (A203318 n * A302656 (n + 1)).toNat

end

end A317715.P13434120627716950581

/-!
# A317716: Square array A(n, k), read by antidiagonals downwards: k-th prime p such that cyclic digit shifts produce exactly n different primes.

The programs for A317716, there is no canonical definition to state claims against.
-/

/-! ## A317716.P8265317948602602329

`A090414(A092468(n+1))`
-/

namespace A317716.P8265317948602602329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090414 (A092468 (n + 1)).toNat

end

end A317716.P8265317948602602329

/-! ## A317716.P11175531200686632191

`A107811(A273011(a(n-1)))` with `a(0)=2`
-/

namespace A317716.P11175531200686632191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A107811 (A273011 (a (n - 1)).toNat).toNat

end

end A317716.P11175531200686632191

/-!
# A317717: Uniform relatively prime tree numbers. Matula-Goebel numbers of uniform relatively prime rooted trees.

The programs for A317717, there is no canonical definition to state claims against.
-/

/-! ## A317717.P14448281411977769984

`∩[A317710(n+1), comp[A317720(n+1)]]`
-/

namespace A317717.P14448281411977769984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317720 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A317717.P14448281411977769984

/-! ## A317717.P1191141467046976171

`∩[A317710(n+1), comp[A317789(n+1)]]`
-/

namespace A317717.P1191141467046976171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317789 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A317717.P1191141467046976171

/-! ## A317717.P10294189417848376865

`eq[char[A317720(n+1)], A151933(n)]`
-/

namespace A317717.P10294189417848376865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317720 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A317717.P10294189417848376865

/-! ## A317717.P14620869233066235443

`∩[A316502(n+1), A317710(n+1)]`
-/

namespace A317717.P14620869233066235443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317717.P14620869233066235443

/-! ## A317717.P17781119931633828153

`eq[char[A317720(n+1)], A151622(n)]`
-/

namespace A317717.P17781119931633828153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317720 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A317717.P17781119931633828153

/-!
# A317718: Number of uniform relatively prime rooted trees with n nodes.

The programs for A317718, there is no canonical definition to state claims against.
-/

/-! ## A317718.P13788594080077881317

`A112325(A160823(n))`
-/

namespace A317718.P13788594080077881317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A160823 n).toNat

end

end A317718.P13788594080077881317

/-! ## A317718.P6118066601154124862

`A325364(A024501(n))`
-/

namespace A317718.P6118066601154124862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (A024501 n).toNat

end

end A317718.P6118066601154124862

/-! ## A317718.P3273734989861167027

`A335944(A320736(n))`
-/

namespace A317718.P3273734989861167027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335944 (A320736 n).toNat

end

end A317718.P3273734989861167027

/-! ## A317718.P12214613986360362815

`A321698(A389121(n))`
-/

namespace A317718.P12214613986360362815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321698 (A389121 n).toNat

end

end A317718.P12214613986360362815

/-! ## A317718.P7599577316013433591

`A003056(A174988(n)+A129578(n))`
-/

namespace A317718.P7599577316013433591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A174988 n + A129578 n).toNat

end

end A317718.P7599577316013433591

/-!
# A317719: Numbers that are not powerful tree numbers.

The programs for A317719, there is no canonical definition to state claims against.
-/

/-! ## A317719.P12722356782616634287

`comp[∪[A318612(n+1), n²]]`
-/

namespace A317719.P12722356782616634287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A317719.P12722356782616634287

/-! ## A317719.P3071754694962622037

`eq[char[A318612(n+1)], A000122(n)]`
-/

namespace A317719.P3071754694962622037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A317719.P3071754694962622037

/-! ## A317719.P8393284568724251436

`eq[char[A318612(n+1)], A002448(n)]`
-/

namespace A317719.P8393284568724251436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A317719.P8393284568724251436

/-! ## A317719.P17626098800976525600

`comp[∪[A000290(n), A318612(n+1)]]`
-/

namespace A317719.P17626098800976525600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A317719.P17626098800976525600

/-! ## A317719.P9649909246485759745

`comp[∪[A318626(n), A318612(n+1)]]`
-/

namespace A317719.P9649909246485759745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318626 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A317719.P9649909246485759745

/-! ## A317719.P14005981085530058092

`comp[∪[A318627(n), A318612(n+1)]]`
-/

namespace A317719.P14005981085530058092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318627 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A317719.P14005981085530058092

/-! ## A317719.P13799612983098026206

`eq[char[A318612(n+1)], A151933(n)]`
-/

namespace A317719.P13799612983098026206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A317719.P13799612983098026206

/-!
# A317720: Numbers that are not uniform relatively prime tree numbers.

The programs for A317720, there is no canonical definition to state claims against.
-/

/-! ## A317720.P11201589727171957946

`comp[A317717(n+1)-1]+1`
-/

namespace A317720.P11201589727171957946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317717 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A317720.P11201589727171957946

/-! ## A317720.P10491393373357470438

`∪[A317711(n+1), A317789(n+1)]`
-/

namespace A317720.P10491393373357470438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317720.P10491393373357470438

/-! ## A317720.P11975411023855770613

`eq[char[A317717(n+1)], A135416(n+1)]`
-/

namespace A317720.P11975411023855770613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317717 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A317720.P11975411023855770613

/-! ## A317720.P5357353789353768067

`eq[char[A317717(n+1)], A151933(n)]`
-/

namespace A317720.P5357353789353768067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317717 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A317720.P5357353789353768067

/-!
# A317722: Number of connected graphs with n nodes and no node a member of more than one cycle.

The programs for A317722, there is no canonical definition to state claims against.
-/

/-! ## A317722.P10029997276115345781

`A051889(A059480(n))`
-/

namespace A317722.P10029997276115345781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A059480 n).toNat

end

end A317722.P10029997276115345781

/-! ## A317722.P8025007826555426307

`A106432(A201204(n)+1)`
-/

namespace A317722.P8025007826555426307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A201204 n + 1).toNat

end

end A317722.P8025007826555426307

/-! ## A317722.P9832504260257161548

`A334139(A174738(n)+A026698(n))`
-/

namespace A317722.P9832504260257161548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334139 (A174738 n + A026698 n).toNat

end

end A317722.P9832504260257161548

/-! ## A317722.P7622401774631955522

`A070939(A000088(n))*A221547(n)`
-/

namespace A317722.P7622401774631955522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000088 n).toNat * A221547 n

end

end A317722.P7622401774631955522

/-!
# A317723: Round-robin tournament numbers: number of possible point series for a tournament of n teams playing each other once, where n points are awarded to the winning team and 1 point to each team in the case of a tie. A team winning more games than another always has a higher point score.

The programs for A317723, there is no canonical definition to state claims against.
-/

/-! ## A317723.P12502419270352925532

`or(A001223(A286832(n)), A008608(n+1))`
-/

namespace A317723.P12502419270352925532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001223 (A286832 n).toNat) (A008608 (n + 1))

end

end A317723.P12502419270352925532

/-! ## A317723.P8343327168369123758

`or(A008608(n+1), A347457(A265501(n+1)))`
-/

namespace A317723.P8343327168369123758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008608 (n + 1)) (A347457 (A265501 (n + 1)).toNat)

end

end A317723.P8343327168369123758

/-!
# A317726: Length of runs of terms in A104381 which differ only in the last decimal place.

The programs for A317726, there is no canonical definition to state claims against.
-/

/-! ## A317726.P2246795027654014730

`or(A038800(n), A235168(A144553(2*(n+1))))`
-/

namespace A317726.P2246795027654014730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038800 n) (A235168 (A144553 (2 * (n + 1))).toNat)

end

end A317726.P2246795027654014730

/-! ## A317726.P12121192814117058061

`A287320(A100183(n+2))+A038800(n)`
-/

namespace A317726.P12121192814117058061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287320 (A100183 (n + 2)).toNat + A038800 n

end

end A317726.P12121192814117058061

/-! ## A317726.P9989764789027150661

`or(A038800(n), A038800(A203801(n)))`
-/

namespace A317726.P9989764789027150661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038800 n) (A038800 (A203801 n).toNat)

end

end A317726.P9989764789027150661

/-! ## A317726.P7720803910967898162

`or(A038800(n), A192977(A084637(n)))`
-/

namespace A317726.P7720803910967898162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038800 n) (A192977 (A084637 n).toNat)

end

end A317726.P7720803910967898162

/-! ## A317726.P14302717640961787398

`or(A038800(n), A253786(A049974(n+1)))`
-/

namespace A317726.P14302717640961787398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038800 n) (A253786 (A049974 (n + 1)).toNat)

end

end A317726.P14302717640961787398

/-!
# A317727: Number of n X n 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317727, there is no canonical definition to state claims against.
-/

/-! ## A317727.P15427275376558672883

`A317733(∑[4*n]+1)`
-/

namespace A317727.P15427275376558672883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317727.P15427275376558672883

/-! ## A317727.P10319349129782241651

`A317733(A001844(n))+A011737(n)`
-/

namespace A317727.P10319349129782241651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (A001844 n).toNat + A011737 n

end

end A317727.P10319349129782241651

/-! ## A317727.P16248469917837244977

`A317733(A001844(n))+A185238(n)`
-/

namespace A317727.P16248469917837244977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (A001844 n).toNat + A185238 n

end

end A317727.P16248469917837244977

/-! ## A317727.P5211649281914826664

`A057427(n)*A317733(A001844(n))`
-/

namespace A317727.P5211649281914826664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A317733 (A001844 n).toNat

end

end A317727.P5211649281914826664

/-! ## A317727.P5806067287326182308

`A096811(n)*A317733(A001844(n))`
-/

namespace A317727.P5806067287326182308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 n * A317733 (A001844 n).toNat

end

end A317727.P5806067287326182308

/-!
# A317728: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317728, there is no canonical definition to state claims against.
-/

/-! ## A317728.P8578185654736722336

`A317733(∑[n+2]+4)`
-/

namespace A317728.P8578185654736722336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317728.P8578185654736722336

/-! ## A317728.P4438109758222241979

`record[gcd(A303913(n), A317733(n+1))]`
-/

namespace A317728.P4438109758222241979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A317733 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317728.P4438109758222241979

/-! ## A317728.P11084475305525238948

`A317733(A167614(n+1))+A025469(n)`
-/

namespace A317728.P11084475305525238948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (A167614 (n + 1)).toNat + A025469 n

end

end A317728.P11084475305525238948

/-! ## A317728.P15444436001588359742

`lcm(A033999(n), A317733(A167614(n+1)))`
-/

namespace A317728.P15444436001588359742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A317733 (A167614 (n + 1)).toNat)

end

end A317728.P15444436001588359742

/-! ## A317728.P17082205448843235435

`and(A260196(n), A317733(A167614(n+1)))`
-/

namespace A317728.P17082205448843235435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A317733 (A167614 (n + 1)).toNat)

end

end A317728.P17082205448843235435

/-!
# A317729: Number of n X 4 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317729, there is no canonical definition to state claims against.
-/

/-! ## A317729.P14758996850613384274

`2*A304421(n+1)²`
-/

namespace A317729.P14758996850613384274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A304421 (n + 1) ^ 2

end

end A317729.P14758996850613384274

/-! ## A317729.P15462717864395935142

`2*A317733(∑[n+1]+2)²`
-/

namespace A317729.P15462717864395935142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317733 (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2

end

end A317729.P15462717864395935142

/-! ## A317729.P3850754864289288278

`A317733(A374004(n+1))`
-/

namespace A317729.P3850754864289288278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (A374004 (n + 1)).toNat

end

end A317729.P3850754864289288278

/-! ## A317729.P7703378655364117263

`A317733(A141214(n)+7)`
-/

namespace A317729.P7703378655364117263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (A141214 n + 7).toNat

end

end A317729.P7703378655364117263

/-! ## A317729.P7949365854778388435

`A317733(A055999(n)+10)`
-/

namespace A317729.P7949365854778388435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (A055999 n + 10).toNat

end

end A317729.P7949365854778388435

/-!
# A317730: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317730, there is no canonical definition to state claims against.
-/

/-! ## A317730.P864174912793874380

`A317733(A374005(n+1))`
-/

namespace A317730.P864174912793874380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (A374005 (n + 1)).toNat

end

end A317730.P864174912793874380

/-! ## A317730.P5161752569366447277

`A317733(A167499(n+3))`
-/

namespace A317730.P5161752569366447277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (A167499 (n + 3)).toNat

end

end A317730.P5161752569366447277

/-! ## A317730.P10529561985864730271

`A317733(A056000(n)+15)`
-/

namespace A317730.P10529561985864730271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (A056000 n + 15).toNat

end

end A317730.P10529561985864730271

/-! ## A317730.P5909876740032588413

`A317733(Δ[A264443(n)])`
-/

namespace A317730.P5909876740032588413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (f1 (n + 1) - f1 n).toNat

end

end A317730.P5909876740032588413

/-! ## A317730.P9121623997742729585

`A317733(A046691(n+3))`
-/

namespace A317730.P9121623997742729585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (A046691 (n + 3)).toNat

end

end A317730.P9121623997742729585

/-!
# A317731: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317731, there is no canonical definition to state claims against.
-/

/-! ## A317731.P750555448066942335

`A317733(A374007(n+1))`
-/

namespace A317731.P750555448066942335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (A374007 (n + 1)).toNat

end

end A317731.P750555448066942335

/-! ## A317731.P11795693523703565155

`A317733(A056115(n)+21)`
-/

namespace A317731.P11795693523703565155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (A056115 n + 21).toNat

end

end A317731.P11795693523703565155

/-! ## A317731.P17054761172492879613

`A317733(A052905(n+3))`
-/

namespace A317731.P17054761172492879613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (A052905 (n + 3)).toNat

end

end A317731.P17054761172492879613

/-! ## A317731.P4196771898607235141

`A317733(eq[3, A219347(n)])`
-/

namespace A317731.P4196771898607235141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317731.P4196771898607235141

/-! ## A317731.P14996385967166296071

`A317733(eq[5, A193592(n)])`
-/

namespace A317731.P14996385967166296071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317731.P14996385967166296071

/-!
# A317732: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317732, there is no canonical definition to state claims against.
-/

/-! ## A317732.P410180902700989316

`A317733(A374008(n+1))`
-/

namespace A317732.P410180902700989316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (A374008 (n + 1)).toNat

end

end A317732.P410180902700989316

/-! ## A317732.P12271984328902196015

`A317733(eq[8, A131818(n+1)])`
-/

namespace A317732.P12271984328902196015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317732.P12271984328902196015

/-! ## A317732.P9335529582286223105

`A317733(A055999(n+4))`
-/

namespace A317732.P9335529582286223105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (A055999 (n + 4)).toNat

end

end A317732.P9335529582286223105

/-! ## A317732.P144736787614978659

`A317733(eq[4, A219347(n)])`
-/

namespace A317732.P144736787614978659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317732.P144736787614978659

/-! ## A317732.P15694213448679319816

`A317733(eq[6, A193592(n)])`
-/

namespace A317732.P15694213448679319816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317732.P15694213448679319816

/-!
# A317733: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317733, there is no canonical definition to state claims against.
-/

/-! ## A317733.P11607553592302325011

`A228723(A316953(n+1)+A010894(2*n+3))`
-/

namespace A317733.P11607553592302325011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 (A316953 (n + 1) + A010894 (2 * n + 3 + 21)).toNat

end

end A317733.P11607553592302325011

/-! ## A317733.P5776182330113309774

`A316953(n+1)+A010894(A003401(n+1))`
-/

namespace A317733.P5776182330113309774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (n + 1) + A010894 ((A003401 (n + 1)).toNat + 21)

end

end A317733.P5776182330113309774

/-! ## A317733.P17494203745364888244

`A228723(A316953(n+1)%A196753(n+1))`
-/

namespace A317733.P17494203745364888244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 (Int.tmod (A316953 (n + 1)) (A196753 (n + 1))).toNat

end

end A317733.P17494203745364888244

/-! ## A317733.P5866573423852140544

`A316953(n+1)+A011737(A022171(n))`
-/

namespace A317733.P5866573423852140544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (n + 1) + A011737 (A022171 n).toNat

end

end A317733.P5866573423852140544

/-! ## A317733.P15620629950166552157

`A316953(n+1)+A025465(A022345(n))`
-/

namespace A317733.P15620629950166552157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (n + 1) + A025465 (A022345 n).toNat

end

end A317733.P15620629950166552157

/-!
# A317734: Number of nXn 0..1 arrays with every element unequal to 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317734, there is no canonical definition to state claims against.
-/

/-! ## A317734.P9138934959907759411

`A317741(∑[4*n]+1)`
-/

namespace A317734.P9138934959907759411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317734.P9138934959907759411

/-! ## A317734.P6804675649341902834

`A317741(A001844(n))+char[18]`
-/

namespace A317734.P6804675649341902834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317734.P6804675649341902834

/-! ## A317734.P6911522541924600795

`A057427(n)*A317741(A001844(n))`
-/

namespace A317734.P6911522541924600795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A317741 (A001844 n).toNat

end

end A317734.P6911522541924600795

/-! ## A317734.P4868642234484873601

`A317741(A001844(n))%A005055(n)`
-/

namespace A317734.P4868642234484873601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317741 (A001844 n).toNat) (A005055 n)

end

end A317734.P4868642234484873601

/-! ## A317734.P14878536974169148745

`A007318(∑[n])*A317741(A001844(n))`
-/

namespace A317734.P14878536974169148745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A317741 (A001844 n).toNat

end

end A317734.P14878536974169148745

/-!
# A317735: Number of nX2 0..1 arrays with every element unequal to 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317735, the canonical program `A317735.P76997309341970740` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317735 has offset 1).

The definition of A317735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317735.P76997309341970740

`2*a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=4, a(5)=9`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A317735

/-- `2*a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)-a(n-6)` -/
def P76997309341970740.Spec : Prop :=
  ∀ n, P76997309341970740.a n = A317735 (n + 1)

theorem P76997309341970740.correct : P76997309341970740.Spec := by
  intro n
  simp only [A317735, Nat.add_sub_cancel]

end A317735

/-! ## A317735.P11568586956258876646

`A317809(n+1)-1`
-/

namespace A317735.P11568586956258876646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317809 (n + 1) - 1

end

end A317735.P11568586956258876646

namespace A317735

/-- `A317809(n+1)-1` -/
def P11568586956258876646.Spec : Prop :=
  ∀ n, P11568586956258876646.a n = A317735 (n + 1)

end A317735

/-! ## A317735.P8354289250397355782

`A352764(Δ[A180123(n+1)])+A317809(n+1)`
-/

namespace A317735.P8354289250397355782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352764 (f1 (n + 1) - f1 n).toNat + A317809 (n + 1)

end

end A317735.P8354289250397355782

namespace A317735

/-- `A352764(Δ[A180123(n+1)])+A317809(n+1)` -/
def P8354289250397355782.Spec : Prop :=
  ∀ n, P8354289250397355782.a n = A317735 (n + 1)

end A317735

/-! ## A317735.P17031531091077295609

`A352764(A020639(2*(n+1)))+A317809(n+1)`
-/

namespace A317735.P17031531091077295609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352764 (A020639 (2 * (n + 1))).toNat + A317809 (n + 1)

end

end A317735.P17031531091077295609

namespace A317735

/-- `A352764(A020639(2*(n+1)))+A317809(n+1)` -/
def P17031531091077295609.Spec : Prop :=
  ∀ n, P17031531091077295609.a n = A317735 (n + 1)

end A317735

/-! ## A317735.P12599768759475200151

`A352764(Δ[A095117(3*n+1)])+A317809(n+1)`
-/

namespace A317735.P12599768759475200151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352764 (f1 (n + 1) - f1 n).toNat + A317809 (n + 1)

end

end A317735.P12599768759475200151

namespace A317735

/-- `A352764(Δ[A095117(3*n+1)])+A317809(n+1)` -/
def P12599768759475200151.Spec : Prop :=
  ∀ n, P12599768759475200151.a n = A317735 (n + 1)

end A317735

/-! ## A317735.P14010330518936697577

`A354347(A354368(n+1))+A317809(n+1)`
-/

namespace A317735.P14010330518936697577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (A354368 (n + 1)).toNat + A317809 (n + 1)

end

end A317735.P14010330518936697577

namespace A317735

/-- `A354347(A354368(n+1))+A317809(n+1)` -/
def P14010330518936697577.Spec : Prop :=
  ∀ n, P14010330518936697577.a n = A317735 (n + 1)

end A317735

/-! ## A317735.P17843472425942824237

`A352764(Δ[A175088(n+1)])+A317809(n+1)`
-/

namespace A317735.P17843472425942824237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352764 (f1 (n + 1) - f1 n).toNat + A317809 (n + 1)

end

end A317735.P17843472425942824237

namespace A317735

/-- `A352764(Δ[A175088(n+1)])+A317809(n+1)` -/
def P17843472425942824237.Spec : Prop :=
  ∀ n, P17843472425942824237.a n = A317735 (n + 1)

end A317735

/-!
# A317736: Number of nX3 0..1 arrays with every element unequal to 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317736, there is no canonical definition to state claims against.
-/

/-! ## A317736.P8525147099168796039

`A317741(∑[n+2]+4)`
-/

namespace A317736.P8525147099168796039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317736.P8525147099168796039

/-! ## A317736.P12741894484628163023

`or(char[1], A317741(A167614(n+1)))`
-/

namespace A317736.P12741894484628163023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A317741 (A167614 (n + 1)).toNat)

end

end A317736.P12741894484628163023

/-! ## A317736.P3598958556095431285

`A057427(n)*A317741(A167614(n+1))`
-/

namespace A317736.P3598958556095431285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A317741 (A167614 (n + 1)).toNat

end

end A317736.P3598958556095431285

/-! ## A317736.P17769057474970005165

`A317741(A167614(n+1))%A000079(n)`
-/

namespace A317736.P17769057474970005165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317741 (A167614 (n + 1)).toNat) (A000079 n)

end

end A317736.P17769057474970005165

/-! ## A317736.P7161078091237330930

`A377131(n+1)+A317741(A167614(n+1))`
-/

namespace A317736.P7161078091237330930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377131 (n + 1) + A317741 (A167614 (n + 1)).toNat

end

end A317736.P7161078091237330930

/-!
# A317737: Number of nX4 0..1 arrays with every element unequal to 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317737, there is no canonical definition to state claims against.
-/

/-! ## A317737.P9540455508270248835

`A317741(∑[n+3]+7)`
-/

namespace A317737.P9540455508270248835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317737.P9540455508270248835

/-! ## A317737.P6844834339173597032

`or(char[2], A317741(A167614(n+2)+1))`
-/

namespace A317737.P6844834339173597032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A317741 (A167614 (n + 2) + 1).toNat)

end

end A317737.P6844834339173597032

/-! ## A317737.P8237209814960619906

`A317741(A167614(n+2)+1)%A000041(6*n)`
-/

namespace A317737.P8237209814960619906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317741 (A167614 (n + 2) + 1).toNat) (A000041 (6 * n))

end

end A317737.P8237209814960619906

/-! ## A317737.P15951843616583679847

`A007318(C(2, n))*A317741(A167614(n+2)+1)`
-/

namespace A317737.P15951843616583679847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A317741 (A167614 (n + 2) + 1).toNat

end

end A317737.P15951843616583679847

/-! ## A317737.P12342923900882433430

`ceil(n/A000041(n))*A317741(A167614(n+2)+1)`
-/

namespace A317737.P12342923900882433430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A000041 n : ℚ)⌉ * A317741 (A167614 (n + 2) + 1).toNat

end

end A317737.P12342923900882433430

/-!
# A317738: Number of nX5 0..1 arrays with every element unequal to 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317738, there is no canonical definition to state claims against.
-/

/-! ## A317738.P10640314305448736004

`A317741(∑[n+4]+11)`
-/

namespace A317738.P10640314305448736004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A317738.P10640314305448736004

/-! ## A317738.P3062757594736203996

`A057427(n)*A317741(A167499(n+3))`
-/

namespace A317738.P3062757594736203996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A317741 (A167499 (n + 3)).toNat

end

end A317738.P3062757594736203996

/-! ## A317738.P1882188303801351545

`A317741(A167499(n+3))%A124799(n)`
-/

namespace A317738.P1882188303801351545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317741 (A167499 (n + 3)).toNat) (A124799 n)

end

end A317738.P1882188303801351545

/-! ## A317738.P3027252219170935505

`A317741(A000217(n+4)+5)+A297046(n+1)`
-/

namespace A317738.P3027252219170935505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (A000217 (n + 4) + 5).toNat + A297046 (n + 1)

end

end A317738.P3027252219170935505

/-! ## A317738.P16342839939718040911

`A000188(A294875(n+1))*A317741(A000217(n+4)+5)`
-/

namespace A317738.P16342839939718040911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A294875 (n + 1)).toNat * A317741 (A000217 (n + 4) + 5).toNat

end

end A317738.P16342839939718040911

/-!
# A317739: Number of nX6 0..1 arrays with every element unequal to 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317739, there is no canonical definition to state claims against.
-/

/-! ## A317739.P7273989624141324652

`A317741(∑[n+5]+16)`
-/

namespace A317739.P7273989624141324652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A317739.P7273989624141324652

/-! ## A317739.P11576843818326302607

`or(char[1], A317741(A000217(n+5)+6))`
-/

namespace A317739.P11576843818326302607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A317741 (A000217 (n + 5) + 6).toNat)

end

end A317739.P11576843818326302607

/-! ## A317739.P5780094741505095054

`char[A007318(n)]*A317741(A000217(n+5)+6)`
-/

namespace A317739.P5780094741505095054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A317741 (A000217 (n + 5) + 6).toNat

end

end A317739.P5780094741505095054

/-! ## A317739.P6917233357013218782

`A007318(C(2, n))*A317741(A000217(n+5)+6)`
-/

namespace A317739.P6917233357013218782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A317741 (A000217 (n + 5) + 6).toNat

end

end A317739.P6917233357013218782

/-! ## A317739.P13599575489170196127

`A317741(A000217(n+5)+6)%A000041(9*n)`
-/

namespace A317739.P13599575489170196127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317741 (A000217 (n + 5) + 6).toNat) (A000041 (9 * n))

end

end A317739.P13599575489170196127

/-!
# A317740: Number of nX7 0..1 arrays with every element unequal to 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317740, there is no canonical definition to state claims against.
-/

/-! ## A317740.P15350891638308706856

`A317741(A056119(n)+28)`
-/

namespace A317740.P15350891638308706856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (A056119 n + 28).toNat

end

end A317740.P15350891638308706856

/-! ## A317740.P16386679693083882309

`A317741(A166136(n+5)+1)`
-/

namespace A317740.P16386679693083882309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (A166136 (n + 5) + 1).toNat

end

end A317740.P16386679693083882309

/-! ## A317740.P10134843036979120932

`A317741(A000124(n+6)+6)`
-/

namespace A317740.P10134843036979120932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (A000124 (n + 6) + 6).toNat

end

end A317740.P10134843036979120932

/-! ## A317740.P9916981878915784545

`A317741(A000217(n+6)+7)`
-/

namespace A317740.P9916981878915784545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (A000217 (n + 6) + 7).toNat

end

end A317740.P9916981878915784545

/-! ## A317740.P17749366146168862764

`A317741(A152947(n+8)+6)`
-/

namespace A317740.P17749366146168862764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (A152947 (n + 8) + 6).toNat

end

end A317740.P17749366146168862764

/-!
# A317741: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317741, there is no canonical definition to state claims against.
-/

/-! ## A317741.P13903829832340364122

`A317902(n+1)%A294218(n+1)`
-/

namespace A317741.P13903829832340364122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317902 (n + 1)) (A294218 (n + 1))

end

end A317741.P13903829832340364122

/-! ## A317741.P308940336506644861

`dr(A001222(2^A317902(n+1)))`
-/

namespace A317741.P308940336506644861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A317902 (n + 1) : ℤ))).toNat)

end

end A317741.P308940336506644861

/-! ## A317741.P4732092006181726779

`dr(A317902(n+1)%A128554(n))`
-/

namespace A317741.P4732092006181726779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A317902 (n + 1)) (A128554 n))

end

end A317741.P4732092006181726779

/-! ## A317741.P18175574536489947117

`A007953(A317902(n+1))%A379298(n+1)`
-/

namespace A317741.P18175574536489947117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (A317902 (n + 1)).toNat) (A379298 (n + 1))

end

end A317741.P18175574536489947117

/-! ## A317741.P10016039617440474572

`A086068(2^A317902(n+1))`
-/

namespace A317741.P10016039617440474572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A317902 (n + 1) : ℤ))).toNat

end

end A317741.P10016039617440474572

/-!
# A317742: Let b(1) = b(2) = 1; for n >= 3, b(n) = b(t(n)) + b(n-t(n)) where t = A287422. a(n) = 2*b(n) - n.

The programs for A317742, there is no canonical definition to state claims against.
-/

/-! ## A317742.P17112604119720612248

`abs(A317854(n+1))`
-/

namespace A317742.P17112604119720612248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317854 (n + 1)|

end

end A317742.P17112604119720612248

/-! ## A317742.P16711202179527623780

`gcd(A000038(n), A317854(n+1))`
-/

namespace A317742.P16711202179527623780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A317854 (n + 1))

end

end A317742.P16711202179527623780

/-! ## A317742.P970625223035235206

`lcm(A000034(n), A317854(n+1))`
-/

namespace A317742.P970625223035235206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A317854 (n + 1))

end

end A317742.P970625223035235206

/-! ## A317742.P9541040497768037859

`∑{d}[A317854(n+1), A000010(#)]`
-/

namespace A317742.P9541040497768037859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A317742.P9541040497768037859

/-! ## A317742.P17270269622532175879

`sqrt(A317854(n+1)^(A036987(n)+2))`
-/

namespace A317742.P17270269622532175879
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A317854 (n + 1) : ℚ) ^ (A036987 n + 2 : ℤ) : ℝ)

end

end A317742.P17270269622532175879

/-! ## A317742.P17341219778079015871

`lcm(Δ[-A004074(n+1)], -A317854(n+1))`
-/

namespace A317742.P17341219778079015871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A004074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (-A317854 (n + 1))

end

end A317742.P17341219778079015871

/-! ## A317742.P2231428676579623422

`lcm(-A317854(n+1), A014963(∑[n+1]))`
-/

namespace A317742.P2231428676579623422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A317854 (n + 1)) (A014963 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A317742.P2231428676579623422

/-!
# A317743: Valleys in A064800: terms which are smaller than their neighbors.

The programs for A317743, there is no canonical definition to state claims against.
-/

/-! ## A317743.P15649857876480656444

`A064800(A319504(n+1))`
-/

namespace A317743.P15649857876480656444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (A319504 (n + 1)).toNat

end

end A317743.P15649857876480656444

/-! ## A317743.P4503839922738044519

`A319504(2*n+1-n)+A001222(A319504(n+1))`
-/

namespace A317743.P4503839922738044519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319504 (2 * n + 1 - n) + A001222 (A319504 (n + 1)).toNat

end

end A317743.P4503839922738044519

/-! ## A317743.P2296956439155855114

`A319504(n+1)+A001222(A319504(n+1))%A009012(n+3)`
-/

namespace A317743.P2296956439155855114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319504 (n + 1) + Int.tmod (A001222 (A319504 (n + 1)).toNat) (A009012 (n + 3))

end

end A317743.P2296956439155855114

/-! ## A317743.P11806136062730672792

`A064800(lt[A163465(n), A325836(n)])`
-/

namespace A317743.P11806136062730672792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163465 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A317743.P11806136062730672792

/-! ## A317743.P6908167590455350964

`A175088(lt[A175108(3*n+5), A006561(n+1)])`
-/

namespace A317743.P6908167590455350964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175108 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A317743.P6908167590455350964

/-!
# A317745: Square array T(n,k) (n >= 1, k >= 1) read by antidiagonals: first row and column are A085090, other entries equal sum of entries in first row and first column.

The programs for A317745, the canonical program `A317745.P4957751422514425376` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317745 has offset 1).

The definition of A317745 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085090, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A317745.P4957751422514425376

`A085090(col(n)+1)+A085090(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A317745

/-- `A085090(col(n)+1)+A085090(row(n)-col(n)+1)` -/
def P4957751422514425376.Spec : Prop :=
  ∀ n, P4957751422514425376.a n = A317745 (n + 1)

theorem P4957751422514425376.correct : P4957751422514425376.Spec := by
  intro n
  simp only [A317745, Nat.add_sub_cancel]

end A317745

/-! ## A317745.P6371821960905277444

`∑{e}[A036561(n), A061397(A005408(#))]`
-/

namespace A317745.P6371821960905277444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061397 (A005408 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A317745.P6371821960905277444

namespace A317745

/-- `∑{e}[A036561(n), A061397(A005408(#))]` -/
def P6371821960905277444.Spec : Prop :=
  ∀ n, P6371821960905277444.a n = A317745 (n + 1)

end A317745

/-! ## A317745.P11885196607024758737

`∑{e}[A036561(n), A061397(A037287(#))]`
-/

namespace A317745.P11885196607024758737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061397 (A037287 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A317745.P11885196607024758737

namespace A317745

/-- `∑{e}[A036561(n), A061397(A037287(#))]` -/
def P11885196607024758737.Spec : Prop :=
  ∀ n, P11885196607024758737.a n = A317745 (n + 1)

end A317745

/-! ## A317745.P691038151633841418

`∑{e}[A175840(n), A061397(A037287(#))]`
-/

namespace A317745.P691038151633841418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061397 (A037287 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A317745.P691038151633841418

namespace A317745

/-- `∑{e}[A175840(n), A061397(A037287(#))]` -/
def P691038151633841418.Spec : Prop :=
  ∀ n, P691038151633841418.a n = A317745 (n + 1)

end A317745

/-! ## A317745.P16994530073313240168

`A085090(A002260(n+1))+A085090(A004736(n+1))`
-/

namespace A317745.P16994530073313240168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (A002260 (n + 1)).toNat + A085090 (A004736 (n + 1)).toNat

end

end A317745.P16994530073313240168

namespace A317745

/-- `A085090(A002260(n+1))+A085090(A004736(n+1))` -/
def P16994530073313240168.Spec : Prop :=
  ∀ n, P16994530073313240168.a n = A317745 (n + 1)

end A317745

/-!
# A317746: Irregular triangle read by rows in which row n lists the divisors k of n such that k^n + n^k == 0 (mod k + n).

The programs for A317746, there is no canonical definition to state claims against.
-/

/-! ## A317746.P1651370959376416470

`A027750(A336109(n+1))+A000038(A000032(n))`
-/

namespace A317746.P1651370959376416470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A336109 (n + 1)).toNat + A000038 (A000032 n).toNat

end

end A317746.P1651370959376416470

/-! ## A317746.P15195236607562968754

`A121262(A000213(n))+A027750(A336109(n+1))`
-/

namespace A317746.P15195236607562968754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A000213 n).toNat + A027750 (A336109 (n + 1)).toNat

end

end A317746.P15195236607562968754

/-! ## A317746.P4150318595977550330

`A027750(lt[A363553(2*n+1), A383149(3*n)])`
-/

namespace A317746.P4150318595977550330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363553 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383149 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A317746.P4150318595977550330

/-! ## A317746.P10338048523667970857

`A077609(A160542(n+1)%A008986(n+2))`
-/

namespace A317746.P10338048523667970857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (Int.tmod (A160542 (n + 1)) (A008986 (n + 2))).toNat

end

end A317746.P10338048523667970857

/-! ## A317746.P12357724653985006132

`A222266(A094270(n+1))%A267304(3*(n+1))`
-/

namespace A317746.P12357724653985006132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222266 (A094270 (n + 1)).toNat) (A267304 (3 * (n + 1)))

end

end A317746.P12357724653985006132

/-!
# A317748: Irregular triangle where T(n,k) is the number of factorizations of n into factors > 1 with GCD d = A027750(n, k).

The programs for A317748, there is no canonical definition to state claims against.
-/

/-! ## A317748.P1643185337441593504

`A053735(A119466(3*n+1)%A390362(n+4))`
-/

namespace A317748.P1643185337441593504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (Int.tmod (A119466 (3 * n + 1)) (A390362 (n + 4))).toNat

end

end A317748.P1643185337441593504

/-! ## A317748.P14238451687331024594

`A292242(A080536(n)-1+n)`
-/

namespace A317748.P14238451687331024594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292242 (A080536 n - 1 + (n : ℤ)).toNat

end

end A317748.P14238451687331024594

/-! ## A317748.P6888944954635645758

`A292242(n-(1-A080536(n)))`
-/

namespace A317748.P6888944954635645758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292242 ((n : ℤ) - (1 - A080536 n)).toNat

end

end A317748.P6888944954635645758

/-! ## A317748.P15384283148457694262

`A069288(n+1)%A195164(A008574(n))`
-/

namespace A317748.P15384283148457694262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069288 (n + 1)) (A195164 (A008574 n).toNat)

end

end A317748.P15384283148457694262

/-! ## A317748.P4451728373918252350

`A131929(A020661(n+5)+A000043(n+1))`
-/

namespace A317748.P4451728373918252350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (A020661 (n + 5) + A000043 (n + 1)).toNat

end

end A317748.P4451728373918252350

/-!
# A317749: a(n+1) = d(n) + d(a(n)) with a(1)=1, where d(n) is the number of the divisors of n.

The programs for A317749, the canonical program `A317749.P10155020998431101795` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317749 has offset 1).

The definition of A317749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317749.P10155020998431101795

`A000005(n)+A000005(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A317749

/-- `A000005(n)+A000005(a(n-1))` -/
def P10155020998431101795.Spec : Prop :=
  ∀ n, P10155020998431101795.a n = A317749 (n + 1)

theorem P10155020998431101795.correct : P10155020998431101795.Spec := by
  intro n
  simp only [A317749, Nat.add_sub_cancel]

end A317749

/-! ## A317749.P13508803595936373123

`A334954(a(n-1))+A032741(n)` with `a(0)=1`
-/

namespace A317749.P13508803595936373123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A334954 (a (n - 1)).toNat + A032741 n

end

end A317749.P13508803595936373123

namespace A317749

/-- `A334954(a(n-1))+A032741(n)` -/
def P13508803595936373123.Spec : Prop :=
  ∀ n, P13508803595936373123.a n = A317749 (n + 1)

end A317749

/-! ## A317749.P15379956229493575883

`A032741(n)+A032741(a(n-1))+2` with `a(0)=1`
-/

namespace A317749.P15379956229493575883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032741 n + (A032741 (a (n - 1)).toNat + 2)

end

end A317749.P15379956229493575883

namespace A317749

/-- `A032741(n)+A032741(a(n-1))+2` -/
def P15379956229493575883.Spec : Prop :=
  ∀ n, P15379956229493575883.a n = A317749 (n + 1)

end A317749

/-! ## A317749.P6444114803955446919

`A000005(a(n-1))-(A000007(n)-A000005(n))` with `a(0)=1`
-/

namespace A317749.P6444114803955446919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (a (n - 1)).toNat - (A000007 n - A000005 n)

end

end A317749.P6444114803955446919

namespace A317749

/-- `A000005(a(n-1))-(A000007(n)-A000005(n))` -/
def P6444114803955446919.Spec : Prop :=
  ∀ n, P6444114803955446919.a n = A317749 (n + 1)

end A317749

/-!
# A317751: Number of divisors d of n such that there exists a factorization of n into factors > 1 with GCD d.

The programs for A317751, the canonical program `A317751.P3394042211911026629` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317751 has offset 1).

The definition of A317751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317751.P16134079962027469717

`A071325(n+1)+A001222(A088835(n+1))`
-/

namespace A317751.P16134079962027469717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (n + 1) + A001222 (A088835 (n + 1)).toNat

end

end A317751.P16134079962027469717

namespace A317751

/-- `A071325(n+1)+A001222(A088835(n+1))` -/
def P16134079962027469717.Spec : Prop :=
  ∀ n, P16134079962027469717.a n = A317751 (n + 1)

end A317751

/-! ## A317751.P3394042211911026629

`A219977(A034444(n+1))+A046951(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A317751

/-- `A219977(A034444(n+1))+A046951(n+1)` -/
def P3394042211911026629.Spec : Prop :=
  ∀ n, P3394042211911026629.a n = A317751 (n + 1)

theorem P3394042211911026629.correct : P3394042211911026629.Spec := by
  intro n
  simp only [A317751, Nat.add_sub_cancel]

end A317751

/-! ## A317751.P13890845870437164113

`A143731(n+1)+A046951(n+1)%A000124(n)`
-/

namespace A317751.P13890845870437164113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) + Int.tmod (A046951 (n + 1)) (A000124 n)

end

end A317751.P13890845870437164113

namespace A317751

/-- `A143731(n+1)+A046951(n+1)%A000124(n)` -/
def P13890845870437164113.Spec : Prop :=
  ∀ n, P13890845870437164113.a n = A317751 (n + 1)

end A317751

/-! ## A317751.P13212077563576015034

`A066882(A088835(n+1))+A032741(A000188(n+1))`
-/

namespace A317751.P13212077563576015034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (A088835 (n + 1)).toNat + A032741 (A000188 (n + 1)).toNat

end

end A317751.P13212077563576015034

namespace A317751

/-- `A066882(A088835(n+1))+A032741(A000188(n+1))` -/
def P13212077563576015034.Spec : Prop :=
  ∀ n, P13212077563576015034.a n = A317751 (n + 1)

end A317751

/-! ## A317751.P9480333163467407933

`A001222(A088835(n+1))+A001222(A293515(n+1))`
-/

namespace A317751.P9480333163467407933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A088835 (n + 1)).toNat + A001222 (A293515 (n + 1)).toNat

end

end A317751.P9480333163467407933

namespace A317751

/-- `A001222(A088835(n+1))+A001222(A293515(n+1))` -/
def P9480333163467407933.Spec : Prop :=
  ∀ n, P9480333163467407933.a n = A317751 (n + 1)

end A317751

/-! ## A317751.P2169606655048187720

`A001222(A088835(n+1)*A293515(n+1))`
-/

namespace A317751.P2169606655048187720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A088835 (n + 1) * A293515 (n + 1)).toNat

end

end A317751.P2169606655048187720

namespace A317751

/-- `A001222(A088835(n+1)*A293515(n+1))` -/
def P2169606655048187720.Spec : Prop :=
  ∀ n, P2169606655048187720.a n = A317751 (n + 1)

end A317751

/-! ## A317751.P2495072659203420126

`A071325(n+1)+A001221(A066048(n+1))`
-/

namespace A317751.P2495072659203420126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (n + 1) + A001221 (A066048 (n + 1)).toNat

end

end A317751.P2495072659203420126

namespace A317751

/-- `A071325(n+1)+A001221(A066048(n+1))` -/
def P2495072659203420126.Spec : Prop :=
  ∀ n, P2495072659203420126.a n = A317751 (n + 1)

end A317751

/-! ## A317751.P5345115805954844224

`A001221(A182863(A000005(A076078(n+1))))`
-/

namespace A317751.P5345115805954844224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A182863 (A000005 (A076078 (n + 1)).toNat).toNat).toNat

end

end A317751.P5345115805954844224

namespace A317751

/-- `A001221(A182863(A000005(A076078(n+1))))` -/
def P5345115805954844224.Spec : Prop :=
  ∀ n, P5345115805954844224.a n = A317751 (n + 1)

end A317751

/-! ## A317751.P6122494693054723556

`A371090(A294876(n+1))`
-/

namespace A317751.P6122494693054723556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371090 (A294876 (n + 1)).toNat

end

end A317751.P6122494693054723556

namespace A317751

/-- `A371090(A294876(n+1))` -/
def P6122494693054723556.Spec : Prop :=
  ∀ n, P6122494693054723556.a n = A317751 (n + 1)

end A317751

/-!
# A317752: Number of multiset partitions of normal multisets of size n such that the blocks have empty intersection.

The programs for A317752, there is no canonical definition to state claims against.
-/

/-! ## A317752.P3239998584994116056

`A002264(xor(A083880(n), A098520(n)))`
-/

namespace A317752.P3239998584994116056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.xor (A083880 n) (A098520 n)).toNat

end

end A317752.P3239998584994116056

/-! ## A317752.P14391452174391062134

`A172270(A100427(n)-A298204(n+1))`
-/

namespace A317752.P14391452174391062134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172270 (A100427 n - A298204 (n + 1)).toNat

end

end A317752.P14391452174391062134

/-!
# A317754: Let b(1) = b(2) = 1; for n >= 3, b(n) = n - b(t(n)) - b(n-t(n)) where t = A004001. a(n) = 2*b(n) - n.

The programs for A317754, there is no canonical definition to state claims against.
-/

/-! ## A317754.P7795374493761906899

`A317854(n+1)%A007504(A267553(n+14))`
-/

namespace A317754.P7795374493761906899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317854 (n + 1)) (A007504 (A267553 (n + 14)).toNat)

end

end A317754.P7795374493761906899

/-! ## A317754.P12040126647121705183

`A317854(n+1)%A309078(n+1)`
-/

namespace A317754.P12040126647121705183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317854 (n + 1)) (A309078 (n + 1))

end

end A317754.P12040126647121705183

/-! ## A317754.P17072312463393375498

`A317854(n+1)%A126759(A000125(n))`
-/

namespace A317754.P17072312463393375498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317854 (n + 1)) (A126759 (A000125 n).toNat)

end

end A317754.P17072312463393375498

/-! ## A317754.P14664966446670010114

`(A033999(A000523(n+1))*A317742(n+1))%A309078(n+1)`
-/

namespace A317754.P14664966446670010114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033999 (A000523 (n + 1)).toNat * A317742 (n + 1)) (A309078 (n + 1))

end

end A317754.P14664966446670010114

/-! ## A317754.P6308568865047982641

`A106465(A006241(n+1))*A317854(n+1)`
-/

namespace A317754.P6308568865047982641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106465 (A006241 (n + 1)).toNat * A317854 (n + 1)

end

end A317754.P6308568865047982641

/-!
# A317755: Number of multiset partitions of strongly normal multisets of size n such that the blocks have empty intersection.

The programs for A317755, there is no canonical definition to state claims against.
-/

/-! ## A317755.P7215065105673532990

`A194167(A149495(n+1))`
-/

namespace A317755.P7215065105673532990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194167 (A149495 (n + 1)).toNat

end

end A317755.P7215065105673532990

/-! ## A317755.P6099107948849465599

`∑[A091202(n)]*A322111(2*n)`
-/

namespace A317755.P6099107948849465599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A322111 (2 * n)

end

end A317755.P6099107948849465599

/-!
# A317756: Number of distinct primes obtained by cyclically shifting the decimal digits of the n-th prime.

The programs for A317756, there is no canonical definition to state claims against.
-/

/-! ## A317756.P3621637936173199791

`A262988(A000040(n+1))`
-/

namespace A317756.P3621637936173199791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (A000040 (n + 1)).toNat

end

end A317756.P3621637936173199791

/-! ## A317756.P18147857420124946860

`A262988(A063884(n+1))`
-/

namespace A317756.P18147857420124946860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (A063884 (n + 1)).toNat

end

end A317756.P18147857420124946860

/-! ## A317756.P6856716073936244680

`A262988(A063904(n+1))`
-/

namespace A317756.P6856716073936244680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (A063904 (n + 1)).toNat

end

end A317756.P6856716073936244680

/-! ## A317756.P18331544292011805276

`A262988(A008578(n+2))`
-/

namespace A317756.P18331544292011805276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (A008578 (n + 2)).toNat

end

end A317756.P18331544292011805276

/-! ## A317756.P5198814118390326068

`A262988(A182986(n+2))`
-/

namespace A317756.P5198814118390326068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (A182986 (n + 2)).toNat

end

end A317756.P5198814118390326068

/-! ## A317756.P10726332822781649333

`A262988(record[A006530(n+2)])`
-/

namespace A317756.P10726332822781649333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A317756.P10726332822781649333

/-! ## A317756.P8197438846595468878

`A262988(record[A014963(n+2)])`
-/

namespace A317756.P8197438846595468878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A317756.P8197438846595468878

/-! ## A317756.P2015564522146451307

`A262988(record[A020639(n+2)])`
-/

namespace A317756.P2015564522146451307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A317756.P2015564522146451307

/-! ## A317756.P5514060590396689723

`A262988(eq[1, A010051(n+1)]+1)`
-/

namespace A317756.P5514060590396689723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A317756.P5514060590396689723

/-! ## A317756.P4098182128152553548

`A262988(eq[3, A053475(n+1)]+1)`
-/

namespace A317756.P4098182128152553548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A317756.P4098182128152553548

/-!
# A317757: Number of non-isomorphic multiset partitions of size n such that the blocks have empty intersection.

The programs for A317757, there is no canonical definition to state claims against.
-/

/-! ## A317757.P10619655035636297985

`A008620(A091218(n+1))-A126760(n)`
-/

namespace A317757.P10619655035636297985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A091218 (n + 1)).toNat - A126760 n

end

end A317757.P10619655035636297985

/-! ## A317757.P2241707314737838131

`A320449(A225600(n))-A001222(n+1)`
-/

namespace A317757.P2241707314737838131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320449 (A225600 n).toNat - A001222 (n + 1)

end

end A317757.P2241707314737838131

/-!
# A317758: Number of nXn 0..1 arrays with every element unequal to 0, 1 or 2 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317758, there is no canonical definition to state claims against.
-/

/-! ## A317758.P14153150167957909190

`A317764(∑[4*n]+1)`
-/

namespace A317758.P14153150167957909190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317758.P14153150167957909190

/-! ## A317758.P16986934332177408733

`or(char[3], A317764(A001844(n)))`
-/

namespace A317758.P16986934332177408733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A317764 (A001844 n).toNat)

end

end A317758.P16986934332177408733

/-! ## A317758.P690102921846996209

`record[A003982(n)*A317764(n+1)]`
-/

namespace A317758.P690102921846996209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317758.P690102921846996209

/-! ## A317758.P8279312979478414907

`A015600(n)*A317764(A001844(n))`
-/

namespace A317758.P8279312979478414907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 n * A317764 (A001844 n).toNat

end

end A317758.P8279312979478414907

/-! ## A317758.P5631826913996924715

`A304042(n)*A317764(A001844(n))`
-/

namespace A317758.P5631826913996924715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n * A317764 (A001844 n).toNat

end

end A317758.P5631826913996924715

/-!
# A317759: Number of nX2 0..1 arrays with every element unequal to 0, 1 or 2 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317759, the canonical program `A317759.P17189046862264662736` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317759 has offset 1).

The definition of A317759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317759.P17189046862264662736

`record[-(a(n-3)+a(n-1))]+1` with `a(0)=1, a(1)=5, a(2)=0, a(3)=1, a(4)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A317759

/-- `record[-(a(n-3)+a(n-1))]+1` -/
def P17189046862264662736.Spec : Prop :=
  ∀ n, P17189046862264662736.a n = A317759 (n + 1)

theorem P17189046862264662736.correct : P17189046862264662736.Spec := by
  intro n
  simp only [A317759, Nat.add_sub_cancel]

end A317759

/-! ## A317759.P13486686410231471957

`2*a(n-1)+a(n-2)-a(n-3)-a(n-4)` with `a(0)=2, a(1)=6, a(2)=10, a(3)=20, a(4)=42, a(5)=89`
-/

namespace A317759.P13486686410231471957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 10, 20, 42, 89] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3) - a (n - 4)

end

end A317759.P13486686410231471957

namespace A317759

/-- `2*a(n-1)+a(n-2)-a(n-3)-a(n-4)` -/
def P13486686410231471957.Spec : Prop :=
  ∀ n, P13486686410231471957.a n = A317759 (n + 1)

end A317759

/-! ## A317759.P5491782472518052332

`A317764(∑[n+1]+2)`
-/

namespace A317759.P5491782472518052332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A317759.P5491782472518052332

namespace A317759

/-- `A317764(∑[n+1]+2)` -/
def P5491782472518052332.Spec : Prop :=
  ∀ n, P5491782472518052332.a n = A317759 (n + 1)

end A317759

/-! ## A317759.P12133331847063774215

`record[A317764(A038722(n+1)+2)]`
-/

namespace A317759.P12133331847063774215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A038722 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317759.P12133331847063774215

namespace A317759

/-- `record[A317764(A038722(n+1)+2)]` -/
def P12133331847063774215.Spec : Prop :=
  ∀ n, P12133331847063774215.a n = A317759 (n + 1)

end A317759

/-! ## A317759.P1327355862205284183

`record[A317764(A133263(A008616(n)))]`
-/

namespace A317759.P1327355862205284183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A133263 (A008616 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317759.P1327355862205284183

namespace A317759

/-- `record[A317764(A133263(A008616(n)))]` -/
def P1327355862205284183.Spec : Prop :=
  ∀ n, P1327355862205284183.a n = A317759 (n + 1)

end A317759

/-!
# A317760: Number of nX4 0..1 arrays with every element unequal to 0, 1 or 2 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317760, the canonical program `A317760.P4202327751994804811` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317760 has offset 1).

The definition of A317760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317760.P4202327751994804811

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=8, a(1)=20, a(2)=28, a(3)=43, a(4)=72, a(5)=127`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A317760

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P4202327751994804811.Spec : Prop :=
  ∀ n, P4202327751994804811.a n = A317760 (n + 1)

theorem P4202327751994804811.correct : P4202327751994804811.Spec := by
  intro n
  simp only [A317760, Nat.add_sub_cancel]

end A317760

/-! ## A317760.P16266733048828467840

`A301786(n+1)+11%A301787(n+1)`
-/

namespace A317760.P16266733048828467840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301786 (n + 1) + Int.tmod 11 (A301787 (n + 1))

end

end A317760.P16266733048828467840

namespace A317760

/-- `A301786(n+1)+11%A301787(n+1)` -/
def P16266733048828467840.Spec : Prop :=
  ∀ n, P16266733048828467840.a n = A317760 (n + 1)

end A317760

/-! ## A317760.P16743170905358879673

`A317764(A374004(n+1))`
-/

namespace A317760.P16743170905358879673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A374004 (n + 1)).toNat

end

end A317760.P16743170905358879673

namespace A317760

/-- `A317764(A374004(n+1))` -/
def P16743170905358879673.Spec : Prop :=
  ∀ n, P16743170905358879673.a n = A317760 (n + 1)

end A317760

/-! ## A317760.P15549153731511003788

`A317764(A055999(n)+10)`
-/

namespace A317760.P15549153731511003788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A055999 n + 10).toNat

end

end A317760.P15549153731511003788

namespace A317760

/-- `A317764(A055999(n)+10)` -/
def P15549153731511003788.Spec : Prop :=
  ∀ n, P15549153731511003788.a n = A317760 (n + 1)

end A317760

/-! ## A317760.P1099173656681890021

`A317764(A167614(n+2)+1)`
-/

namespace A317760.P1099173656681890021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A167614 (n + 2) + 1).toNat

end

end A317760.P1099173656681890021

namespace A317760

/-- `A317764(A167614(n+2)+1)` -/
def P1099173656681890021.Spec : Prop :=
  ∀ n, P1099173656681890021.a n = A317760 (n + 1)

end A317760

/-!
# A317761: Number of n X 5 0..1 arrays with every element unequal to 0, 1 or 2 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317761, the canonical program `A317761.P9477418155338960679` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317761 has offset 1).

The definition of A317761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317761.P9477418155338960679

`2*a(n-1)-a(n-4)` with `a(0)=16, a(1)=42, a(2)=52, a(3)=72, a(4)=109, a(5)=177`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A317761

/-- `2*a(n-1)-a(n-4)` -/
def P9477418155338960679.Spec : Prop :=
  ∀ n, P9477418155338960679.a n = A317761 (n + 1)

theorem P9477418155338960679.correct : P9477418155338960679.Spec := by
  intro n
  simp only [A317761, Nat.add_sub_cancel]

end A317761

/-! ## A317761.P18213340026652975990

`A317764(A374005(n+1))`
-/

namespace A317761.P18213340026652975990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A374005 (n + 1)).toNat

end

end A317761.P18213340026652975990

namespace A317761

/-- `A317764(A374005(n+1))` -/
def P18213340026652975990.Spec : Prop :=
  ∀ n, P18213340026652975990.a n = A317761 (n + 1)

end A317761

/-! ## A317761.P1818492090154565286

`A317764(A167499(n+3))`
-/

namespace A317761.P1818492090154565286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A167499 (n + 3)).toNat

end

end A317761.P1818492090154565286

namespace A317761

/-- `A317764(A167499(n+3))` -/
def P1818492090154565286.Spec : Prop :=
  ∀ n, P1818492090154565286.a n = A317761 (n + 1)

end A317761

/-! ## A317761.P639944731592984245

`A317764(A167614(n+3)+2)`
-/

namespace A317761.P639944731592984245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A167614 (n + 3) + 2).toNat

end

end A317761.P639944731592984245

namespace A317761

/-- `A317764(A167614(n+3)+2)` -/
def P639944731592984245.Spec : Prop :=
  ∀ n, P639944731592984245.a n = A317761 (n + 1)

end A317761

/-! ## A317761.P13636182168854050840

`A317764(A000124(n+4)+4)`
-/

namespace A317761.P13636182168854050840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A000124 (n + 4) + 4).toNat

end

end A317761.P13636182168854050840

namespace A317761

/-- `A317764(A000124(n+4)+4)` -/
def P13636182168854050840.Spec : Prop :=
  ∀ n, P13636182168854050840.a n = A317761 (n + 1)

end A317761

/-!
# A317762: Number of nX6 0..1 arrays with every element unequal to 0, 1 or 2 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317762, there is no canonical definition to state claims against.
-/

/-! ## A317762.P10489784953924740883

`A317764(A374007(n+1))`
-/

namespace A317762.P10489784953924740883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A374007 (n + 1)).toNat

end

end A317762.P10489784953924740883

/-! ## A317762.P16976799718294581683

`A317764(A000124(n+5)+5)`
-/

namespace A317762.P16976799718294581683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A000124 (n + 5) + 5).toNat

end

end A317762.P16976799718294581683

/-! ## A317762.P11698782590779969677

`A317764(A000096(n+4)+7)`
-/

namespace A317762.P11698782590779969677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A000096 (n + 4) + 7).toNat

end

end A317762.P11698782590779969677

/-! ## A317762.P8417660729560550557

`A317764(A000217(n+5)+6)`
-/

namespace A317762.P8417660729560550557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A000217 (n + 5) + 6).toNat

end

end A317762.P8417660729560550557

/-! ## A317762.P17980146862213534868

`A317764(Δ[A023545(n+1)]+10)`
-/

namespace A317762.P17980146862213534868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (f1 (n + 1) - f1 n + 10).toNat

end

end A317762.P17980146862213534868

/-!
# A317763: Number of nX7 0..1 arrays with every element unequal to 0, 1 or 2 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317763, there is no canonical definition to state claims against.
-/

/-! ## A317763.P16323151940691232561

`A317764(A374008(n+1))`
-/

namespace A317763.P16323151940691232561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A374008 (n + 1)).toNat

end

end A317763.P16323151940691232561

/-! ## A317763.P14160205767806273515

`A317764(A000124(n+6)+6)`
-/

namespace A317763.P14160205767806273515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A000124 (n + 6) + 6).toNat

end

end A317763.P14160205767806273515

/-! ## A317763.P15979678095610361553

`A317764(A000096(n+5)+8)`
-/

namespace A317763.P15979678095610361553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A000096 (n + 5) + 8).toNat

end

end A317763.P15979678095610361553

/-! ## A317763.P17092919016352585072

`A317764(A000217(n+6)+7)`
-/

namespace A317763.P17092919016352585072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A000217 (n + 6) + 7).toNat

end

end A317763.P17092919016352585072

/-! ## A317763.P6514383869410952397

`A317764(A055998(n+4)+10)`
-/

namespace A317763.P6514383869410952397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (A055998 (n + 4) + 10).toNat

end

end A317763.P6514383869410952397

/-!
# A317764: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1 or 2 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317764, there is no canonical definition to state claims against.
-/

/-! ## A317764.P16867424665198902986

`A318075(n+1)-A057498(A059922(n))`
-/

namespace A317764.P16867424665198902986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (n + 1) - A057498 (A059922 n).toNat

end

end A317764.P16867424665198902986

/-! ## A317764.P3037927465029201899

`A318343(n+1)-A184955(A054142(n))`
-/

namespace A317764.P3037927465029201899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (n + 1) - A184955 (A054142 n).toNat

end

end A317764.P3037927465029201899

/-! ## A317764.P3000997883920054590

`A318075(n+1)-A185044(A099608(n))`
-/

namespace A317764.P3000997883920054590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (n + 1) - A185044 (A099608 n).toNat

end

end A317764.P3000997883920054590

/-! ## A317764.P3587670204478141244

`A318075(n+1)-A174875(A168288(n))`
-/

namespace A317764.P3587670204478141244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (n + 1) - A174875 (A168288 n).toNat

end

end A317764.P3587670204478141244

/-! ## A317764.P5627442503897998387

`A318343(n+1)-A057498(A059922(n))²`
-/

namespace A317764.P5627442503897998387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (n + 1) - A057498 (A059922 n).toNat ^ 2

end

end A317764.P5627442503897998387

/-!
# A317765: Number of distinct subexpressions of the free pure symmetric multifunction (with empty expressions allowed) with e-number n.

The programs for A317765, there is no canonical definition to state claims against.
-/

/-! ## A317765.P5154892113381977883

`A317056(n+1)+1`
-/

namespace A317765.P5154892113381977883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317056 (n + 1) + 1

end

end A317765.P5154892113381977883

/-! ## A317765.P15787047568968430282

`A005496(A317056(n+1))`
-/

namespace A317765.P15787047568968430282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A317056 (n + 1)).toNat

end

end A317765.P15787047568968430282

/-! ## A317765.P7085466177809380658

`A005555(A317056(record[xor(1, n)]-n))`
-/

namespace A317765.P7085466177809380658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A317056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - n)).toNat

end

end A317765.P7085466177809380658

/-! ## A317765.P14651539572710579941

`A028242(2*A317056(record[xor(1, n)]-n))`
-/

namespace A317765.P14651539572710579941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A317056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - n)).toNat

end

end A317765.P14651539572710579941

/-! ## A317765.P13632855668043638762

`A008611(3*A317056(record[xor(1, n)]-n))`
-/

namespace A317765.P13632855668043638762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A317056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - n)).toNat

end

end A317765.P13632855668043638762

/-! ## A317765.P5695168259701150968

`A000005(2^A317056(record[xor(1, n)]-n))`
-/

namespace A317765.P5695168259701150968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A317056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - n) : ℤ))).toNat

end

end A317765.P5695168259701150968

/-! ## A317765.P11459733186660151733

`A317056(A007916(n+1))`
-/

namespace A317765.P11459733186660151733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317056 (A007916 (n + 1)).toNat

end

end A317765.P11459733186660151733

/-! ## A317765.P3151997012301649644

`A317056(A175082(n+2))`
-/

namespace A317765.P3151997012301649644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317056 (A175082 (n + 2)).toNat

end

end A317765.P3151997012301649644

/-!
# A317766: Number of nXn 0..1 arrays with every element unequal to 0, 1 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317766, there is no canonical definition to state claims against.
-/

/-! ## A317766.P3618860860334381734

`A317773(∑[4*n]+1)`
-/

namespace A317766.P3618860860334381734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317766.P3618860860334381734

/-! ## A317766.P143081518715630176

`or(char[1], A317773(A001844(n)))`
-/

namespace A317766.P143081518715630176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A317773 (A001844 n).toNat)

end

end A317766.P143081518715630176

/-! ## A317766.P14498124159400147436

`A317773(xor(1, ∑[4*n]))-A185264(n)`
-/

namespace A317766.P14498124159400147436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)) - A185264 n

end

end A317766.P14498124159400147436

/-! ## A317766.P8232693830532470913

`A317773(A001844(n))+A025466(n)`
-/

namespace A317766.P8232693830532470913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A001844 n).toNat + A025466 n

end

end A317766.P8232693830532470913

/-! ## A317766.P15681203131375616101

`A317773(A001844(n))%A087130(n)`
-/

namespace A317766.P15681203131375616101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317773 (A001844 n).toNat) (A087130 n)

end

end A317766.P15681203131375616101

/-!
# A317767: Number of nX2 0..1 arrays with every element unequal to 0, 1 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317767, the canonical program `A317767.P8183161042469190816` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317767 has offset 1).

The definition of A317767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 458 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317767.P8183161042469190816

`a(n-1)+2*a(n-3)-a(n-6)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7, a(4)=11, a(5)=18`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A317767

/-- `a(n-1)+2*a(n-3)-a(n-6)` -/
def P8183161042469190816.Spec : Prop :=
  ∀ n, P8183161042469190816.a n = A317767 (n + 1)

theorem P8183161042469190816.correct : P8183161042469190816.Spec := by
  intro n
  simp only [A317767, Nat.add_sub_cancel]

end A317767

/-! ## A317767.P5330351312889842581

`A317773(∑[n+1]+2)`
-/

namespace A317767.P5330351312889842581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A317767.P5330351312889842581

namespace A317767

/-- `A317773(∑[n+1]+2)` -/
def P5330351312889842581.Spec : Prop :=
  ∀ n, P5330351312889842581.a n = A317767 (n + 1)

end A317767

/-! ## A317767.P8051228814602546561

`record[A317773(A133263(abs(1-n)))]`
-/

namespace A317767.P8051228814602546561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317767.P8051228814602546561

namespace A317767

/-- `record[A317773(A133263(abs(1-n)))]` -/
def P8051228814602546561.Spec : Prop :=
  ∀ n, P8051228814602546561.a n = A317767 (n + 1)

end A317767

/-! ## A317767.P7028952918801597657

`A007318(C(2, n))*A317773(A133263(n+1))`
-/

namespace A317767.P7028952918801597657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A317773 (A133263 (n + 1)).toNat

end

end A317767.P7028952918801597657

namespace A317767

/-- `A007318(C(2, n))*A317773(A133263(n+1))` -/
def P7028952918801597657.Spec : Prop :=
  ∀ n, P7028952918801597657.a n = A317767 (n + 1)

end A317767

/-! ## A317767.P14674431903510102553

`A317773(A133263(n+1))/A007318(C(n, 2))`
-/

namespace A317767.P14674431903510102553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317773 (A133263 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A317767.P14674431903510102553

namespace A317767

/-- `A317773(A133263(n+1))/A007318(C(n, 2))` -/
def P14674431903510102553.Spec : Prop :=
  ∀ n, P14674431903510102553.a n = (A317767 (n + 1) : ℚ)

end A317767

/-!
# A317768: Number of nX3 0..1 arrays with every element unequal to 0, 1 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317768, there is no canonical definition to state claims against.
-/

/-! ## A317768.P1683966567867574519

`A317773(∑[n+2]+4)`
-/

namespace A317768.P1683966567867574519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317768.P1683966567867574519

/-! ## A317768.P14134687159490505446

`and(-1, A317773(A167614(n+1)))`
-/

namespace A317768.P14134687159490505446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A317773 (A167614 (n + 1)).toNat)

end

end A317768.P14134687159490505446

/-! ## A317768.P4405158091515450233

`(n%2)!*A317773(A167499(n)+n)`
-/

namespace A317768.P4405158091515450233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A317773 (A167499 n + (n : ℤ)).toNat

end

end A317768.P4405158091515450233

/-! ## A317768.P2715471449405541287

`gcd(n, n+1)*A317773(A046691(n)+7)`
-/

namespace A317768.P2715471449405541287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A317773 (A046691 n + 7).toNat

end

end A317768.P2715471449405541287

/-! ## A317768.P10261499718865996291

`A317773(A167614(n+1))+A025439(n)`
-/

namespace A317768.P10261499718865996291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A167614 (n + 1)).toNat + A025439 n

end

end A317768.P10261499718865996291

/-!
# A317769: Number of nX4 0..1 arrays with every element unequal to 0, 1 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317769, there is no canonical definition to state claims against.
-/

/-! ## A317769.P8709780038346165537

`A317773(∑[n+3]+7)`
-/

namespace A317769.P8709780038346165537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317769.P8709780038346165537

/-! ## A317769.P15129142346795747231

`or(char[11], A317773(A055999(n)+10))`
-/

namespace A317769.P15129142346795747231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A317773 (A055999 n + 10).toNat)

end

end A317769.P15129142346795747231

/-! ## A317769.P15822001030019248297

`gcd(7*char[1], A317773(A052905(n)+9))`
-/

namespace A317769.P15822001030019248297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((7 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) (A317773 (A052905 n + 9).toNat)

end

end A317769.P15822001030019248297

/-! ## A317769.P5677894726542084858

`A317773(A052905(n)+9)%A000045(n+6)`
-/

namespace A317769.P5677894726542084858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317773 (A052905 n + 9).toNat) (A000045 (n + 6))

end

end A317769.P5677894726542084858

/-! ## A317769.P10252772408919745428

`A007318(C(n, 2))*A317773(A052905(n)+9)`
-/

namespace A317769.P10252772408919745428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A317773 (A052905 n + 9).toNat

end

end A317769.P10252772408919745428

/-!
# A317770: Number of nX5 0..1 arrays with every element unequal to 0, 1 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317770, there is no canonical definition to state claims against.
-/

/-! ## A317770.P5109828120956893811

`A317773(A374005(n+1))`
-/

namespace A317770.P5109828120956893811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A374005 (n + 1)).toNat

end

end A317770.P5109828120956893811

/-! ## A317770.P5054844491635113839

`A317773(A167499(n+3))`
-/

namespace A317770.P5054844491635113839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A167499 (n + 3)).toNat

end

end A317770.P5054844491635113839

/-! ## A317770.P16024319313033170558

`A317773(A155212(n)+13)`
-/

namespace A317770.P16024319313033170558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A155212 n + 13).toNat

end

end A317770.P16024319313033170558

/-! ## A317770.P5935390982796602435

`A317773(A056000(n)+15)`
-/

namespace A317770.P5935390982796602435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A056000 n + 15).toNat

end

end A317770.P5935390982796602435

/-! ## A317770.P13277210698709463616

`A317773(A166136(n+3)-1)`
-/

namespace A317770.P13277210698709463616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A166136 (n + 3) - 1).toNat

end

end A317770.P13277210698709463616

/-!
# A317771: Number of nX6 0..1 arrays with every element unequal to 0, 1 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317771, there is no canonical definition to state claims against.
-/

/-! ## A317771.P5845804113157273076

`A317773(A374007(n+1))`
-/

namespace A317771.P5845804113157273076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A374007 (n + 1)).toNat

end

end A317771.P5845804113157273076

/-! ## A317771.P16128133611128007678

`A317773(A056115(n)+21)`
-/

namespace A317771.P16128133611128007678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A056115 n + 21).toNat

end

end A317771.P16128133611128007678

/-! ## A317771.P4468222968242274083

`A317773(A000124(n+5)+5)`
-/

namespace A317771.P4468222968242274083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A000124 (n + 5) + 5).toNat

end

end A317771.P4468222968242274083

/-! ## A317771.P16204154993708826942

`A317773(A000096(n+4)+7)`
-/

namespace A317771.P16204154993708826942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A000096 (n + 4) + 7).toNat

end

end A317771.P16204154993708826942

/-! ## A317771.P3897289247903587855

`A317773(A000217(n+5)+6)`
-/

namespace A317771.P3897289247903587855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A000217 (n + 5) + 6).toNat

end

end A317771.P3897289247903587855

/-!
# A317772: Number of nX7 0..1 arrays with every element unequal to 0, 1 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317772, there is no canonical definition to state claims against.
-/

/-! ## A317772.P16444032628471581038

`A317773(A374008(n+1))`
-/

namespace A317772.P16444032628471581038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A374008 (n + 1)).toNat

end

end A317772.P16444032628471581038

/-! ## A317772.P5942271172435457258

`A317773(A167487(n+5))`
-/

namespace A317772.P5942271172435457258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A167487 (n + 5)).toNat

end

end A317772.P5942271172435457258

/-! ## A317772.P2707070786850184840

`A317773(A056119(n)+28)`
-/

namespace A317772.P2707070786850184840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A056119 n + 28).toNat

end

end A317772.P2707070786850184840

/-! ## A317772.P5355435679726361950

`A317773(A167499(n+5)+2)`
-/

namespace A317772.P5355435679726361950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A167499 (n + 5) + 2).toNat

end

end A317772.P5355435679726361950

/-! ## A317772.P16673474324504969276

`A317773(A167614(n+5)+4)`
-/

namespace A317772.P16673474324504969276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (A167614 (n + 5) + 4).toNat

end

end A317772.P16673474324504969276

/-!
# A317773: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A317773, there is no canonical definition to state claims against.
-/

/-! ## A317773.P964072539286719476

`A318082(n+1)-A184945(A265080(n))`
-/

namespace A317773.P964072539286719476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (n + 1) - A184945 (A265080 n).toNat

end

end A317773.P964072539286719476

/-! ## A317773.P8807422934889256070

`A318082(n+1)-A309785(A331562(n))`
-/

namespace A317773.P8807422934889256070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (n + 1) - A309785 (A331562 n).toNat

end

end A317773.P8807422934889256070

/-! ## A317773.P3798951743408197823

`and(-A022166(A174546(n)), A318082(n+1))`
-/

namespace A317773.P3798951743408197823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A022166 (A174546 n).toNat) (A318082 (n + 1))

end

end A317773.P3798951743408197823

/-! ## A317773.P16634569027349688305

`A318082(n+1)-A102683(∑[A185044(n)])`
-/

namespace A317773.P16634569027349688305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (n + 1) - A102683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A317773.P16634569027349688305

/-! ## A317773.P5677273997379021789

`A318082(n+1)*A325169(A000040(n+1))`
-/

namespace A317773.P5677273997379021789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (n + 1) * A325169 (A000040 (n + 1)).toNat

end

end A317773.P5677273997379021789

/-!
# A317774: a(n) = A322667(n) + 1.

The programs for A317774, there is no canonical definition to state claims against.
-/

/-! ## A317774.P9197151359169935274

`A322667(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A317774.P9197151359169935274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322667 (n + 1) + 1

end

end A317774.P9197151359169935274

/-! ## A317774.P16176310940491285107

`ceil(A198971(n)+sqrt(A099150(n+1)))+1`
-/

namespace A317774.P16176310940491285107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198971 n : ℝ) + Real.sqrt (A099150 (n + 1) : ℝ)⌉ + 1

end

end A317774.P16176310940491285107

/-! ## A317774.P17586928977579821890

`A254313(2*(n+1))+char[A254325(n+1)]`
-/

namespace A317774.P17586928977579821890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254325 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254313 (2 * (n + 1)) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A317774.P17586928977579821890

/-! ## A317774.P2117596101705735994

`A254313(2*(n+1))+A000035(A288387(3*n+4))`
-/

namespace A317774.P2117596101705735994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254313 (2 * (n + 1)) + A000035 (A288387 (3 * n + 4)).toNat

end

end A317774.P2117596101705735994

/-! ## A317774.P9604451129607743555

`A254313(2*(n+1))+A121262(A010373(n+1))`
-/

namespace A317774.P9604451129607743555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254313 (2 * (n + 1)) + A121262 (A010373 (n + 1)).toNat

end

end A317774.P9604451129607743555

/-!
# A317775: Number of strict multiset partitions of strongly normal multisets of size n, where a multiset is strongly normal if it spans an initial interval of positive integers with weakly decreasing multiplicities.

The programs for A317775, there is no canonical definition to state claims against.
-/

/-! ## A317775.P4090397116972059515

`A129611(A069770(C(2^n+1, 2)))`
-/

namespace A317775.P4090397116972059515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129611 (A069770 (Nat.choose (2 ^ n + 1) 2)).toNat

end

end A317775.P4090397116972059515

/-! ## A317775.P12670418924011385010

`A107652(A000108(n))+A007582(n)`
-/

namespace A317775.P12670418924011385010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107652 (A000108 n).toNat + A007582 n

end

end A317775.P12670418924011385010

/-!
# A317776: Number of strict multiset partitions of normal multisets of size n, where a multiset is normal if it spans an initial interval of positive integers.

The programs for A317776, there is no canonical definition to state claims against.
-/

/-! ## A317776.P10184197786635658918

`A045979(A030101(a(n-1)))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A317776.P10184197786635658918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A045979 (A030101 (a (n - 1)).toNat).toNat

end

end A317776.P10184197786635658918

/-! ## A317776.P17829265999321488245

`or(A323631(n), A342517(A146456(n+1)))`
-/

namespace A317776.P17829265999321488245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A323631 n) (A342517 (A146456 (n + 1)).toNat)

end

end A317776.P17829265999321488245

/-! ## A317776.P4198464688455027025

`or(A323631(n), A342517(A146458(2*n+3)))`
-/

namespace A317776.P4198464688455027025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A323631 n) (A342517 (A146458 (2 * n + 3)).toNat)

end

end A317776.P4198464688455027025

/-!
# A317778: Starting with 1,2,3,4,5,6: a(n) is the next smallest number greater than a(n-1) such that a[i] + a[j] + a[k] != a[x] + a[y] + a[z] for 1 <= i,j,k,x,y,z <= n all distinct.

The programs for A317778, there is no canonical definition to state claims against.
-/

/-! ## A317778.P15434274475056216909

`A107686(A000383(n))+n`
-/

namespace A317778.P15434274475056216909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107686 (A000383 n).toNat + (n : ℤ)

end

end A317778.P15434274475056216909

/-! ## A317778.P15095084867729704730

`A322847(A196876(n+2))+n`
-/

namespace A317778.P15095084867729704730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322847 (A196876 (n + 2)).toNat + (n : ℤ)

end

end A317778.P15095084867729704730

/-! ## A317778.P14982526464973964741

`∑[A218452(∑[A353497(n+1)])]`
-/

namespace A317778.P14982526464973964741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353497 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218452 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317778.P14982526464973964741

/-! ## A317778.P2594943744380906756

`∑[A218452(A218442(comp[3*n]))]`
-/

namespace A317778.P2594943744380906756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218452 (A218442 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317778.P2594943744380906756

/-! ## A317778.P9379448237923067754

`A000196(or(A141214(n), A166896(n)))`
-/

namespace A317778.P9379448237923067754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (A141214 n) (A166896 n)).toNat

end

end A317778.P9379448237923067754

/-!
# A317779: Number of equivalence classes of binary words of length n for the set of subwords {010, 101, 10110}.

The programs for A317779, there is no canonical definition to state claims against.
-/

/-! ## A317779.P13460397043353778883

`A184415(A317884(n+1))`
-/

namespace A317779.P13460397043353778883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184415 (A317884 (n + 1)).toNat

end

end A317779.P13460397043353778883

/-! ## A317779.P12769245569659266934

`A202304(A304121(n)-A202304(n))`
-/

namespace A317779.P12769245569659266934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A304121 n - A202304 n).toNat

end

end A317779.P12769245569659266934

/-! ## A317779.P5063407181739231407

`A003056(A108626(n)-∑[n])`
-/

namespace A317779.P5063407181739231407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A108626 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A317779.P5063407181739231407

/-! ## A317779.P8462562281573006965

`A137735(A030186(n)-A002378(n))`
-/

namespace A317779.P8462562281573006965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A030186 n - A002378 n).toNat

end

end A317779.P8462562281573006965

/-! ## A317779.P7312195533109888541

`A248729(n)-A341591(A000110(n))`
-/

namespace A317779.P7312195533109888541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248729 n - A341591 (A000110 n).toNat

end

end A317779.P7312195533109888541

/-!
# A317780: Number of binary words of length n containing exactly one occurrence of the subword 01101.

The programs for A317780, there is no canonical definition to state claims against.
-/

/-! ## A317780.P2425032944602547455

`A277751(A167499(n)-A000212(n))`
-/

namespace A317780.P2425032944602547455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277751 (A167499 n - A000212 n).toNat

end

end A317780.P2425032944602547455

/-! ## A317780.P9967350983260421315

`A008617(xor(5, A048511(n)))`
-/

namespace A317780.P9967350983260421315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (Int.xor 5 (A048511 n)).toNat

end

end A317780.P9967350983260421315

/-! ## A317780.P14517203586663918107

`A008617(or(6, A048511(n)))`
-/

namespace A317780.P14517203586663918107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (Int.lor 6 (A048511 n)).toNat

end

end A317780.P14517203586663918107

/-!
# A317782: Number of 2n-step paths from (0,0) to (0,n) that stay in the first quadrant (but may touch the axes) consisting of steps (1,0), (0,1), (0,-1) and (-1,1).

The programs for A317782, there is no canonical definition to state claims against.
-/

/-! ## A317782.P12654032703474868579

`A199915(∑[4*n])`
-/

namespace A317782.P12654032703474868579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199915 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317782.P12654032703474868579

/-! ## A317782.P9380302650266369157

`or(char[1], A199915(A046092(n)))`
-/

namespace A317782.P9380302650266369157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A199915 (A046092 n).toNat)

end

end A317782.P9380302650266369157

/-! ## A317782.P4224213202221033754

`gcd(A000038(n), A199915(A046092(n)))`
-/

namespace A317782.P4224213202221033754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A199915 (A046092 n).toNat)

end

end A317782.P4224213202221033754

/-! ## A317782.P9621778010762279483

`A199915(A046092(n))+A000007(n+1)`
-/

namespace A317782.P9621778010762279483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199915 (A046092 n).toNat + A000007 (n + 1)

end

end A317782.P9621778010762279483

/-! ## A317782.P1196326733006957784

`A000034(2*n)*A199915(A046092(n))`
-/

namespace A317782.P1196326733006957784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A199915 (A046092 n).toNat

end

end A317782.P1196326733006957784

/-! ## A317782.P5419936644258354283

`or(A000007(n), A199915(A106232(n+1)))`
-/

namespace A317782.P5419936644258354283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A199915 (A106232 (n + 1)).toNat)

end

end A317782.P5419936644258354283

/-! ## A317782.P13349795127318472331

`A007318(C(2, n))*A199915(A046092(n))`
-/

namespace A317782.P13349795127318472331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A199915 (A046092 n).toNat

end

end A317782.P13349795127318472331

/-! ## A317782.P8062402535732924778

`A199915(A046092(n))/A007318(∑[n+1])`
-/

namespace A317782.P8062402535732924778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199915 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A317782.P8062402535732924778

/-! ## A317782.P17721053992857282587

`A001221((-1)^n+4)*A199915(A046092(n))`
-/

namespace A317782.P17721053992857282587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((-1) ^ n + 4).toNat * A199915 (A046092 n).toNat

end

end A317782.P17721053992857282587

/-!
# A317783: Number of equivalence classes of binary words of length n for the set of subwords {010, 101}.

The programs for A317783, the canonical program `A317783.P8318634166531968939` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317783 has offset 0).

The definition of A317783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317783.P8318634166531968939

`2*a(n-1)-a(n-2)+a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=7`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A317783

/-- `2*a(n-1)-a(n-2)+a(n-3)+a(n-5)` -/
def P8318634166531968939.Spec : Prop :=
  ∀ n, P8318634166531968939.a n = A317783 n

theorem P8318634166531968939.correct : P8318634166531968939.Spec := by
  intro n
  simp only [A317783]

end A317783

/-! ## A317783.P12815530999487387454

`A135491(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A317783.P12815530999487387454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A135491 (n - 1) - a (n - 3)

end

end A317783.P12815530999487387454

namespace A317783

/-- `A135491(n-1)-a(n-3)` -/
def P12815530999487387454.Spec : Prop :=
  ∀ n, P12815530999487387454.a n = A317783 n

end A317783

/-! ## A317783.P13787210210769863462

`A000213(n)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A317783.P13787210210769863462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000213 n + a (n - 1) - a (n - 2)

end

end A317783.P13787210210769863462

namespace A317783

/-- `A000213(n)+a(n-1)-a(n-2)` -/
def P13787210210769863462.Spec : Prop :=
  ∀ n, P13787210210769863462.a n = A317783 n

end A317783

/-! ## A317783.P16967852031039479433

`A275778(n)-A001590(n)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A317783.P16967852031039479433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A275778 n - A001590 n - (a (n - 2) - a (n - 1))

end

end A317783.P16967852031039479433

namespace A317783

/-- `A275778(n)-A001590(n)-(a(n-2)-a(n-1))` -/
def P16967852031039479433.Spec : Prop :=
  ∀ n, P16967852031039479433.a n = A317783 n

end A317783

/-! ## A317783.P16398863393767848279

`A089068(n)+1-A000073(n)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A317783.P16398863393767848279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A089068 n + (1 - A000073 n) - (a (n - 2) - a (n - 1))

end

end A317783.P16398863393767848279

namespace A317783

/-- `A089068(n)+1-A000073(n)-(a(n-2)-a(n-1))` -/
def P16398863393767848279.Spec : Prop :=
  ∀ n, P16398863393767848279.a n = A317783 n

end A317783

/-!
# A317784: Number of ascent sequences of length n avoiding the pattern 0000.

The programs for A317784, there is no canonical definition to state claims against.
-/

/-! ## A317784.P4348260519331857858

`A294220(∑[n+4]+2)`
-/

namespace A317784.P4348260519331857858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294220 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A317784.P4348260519331857858

/-! ## A317784.P17690471018472515747

`A294220(A046691(n+2))+A185255(n)`
-/

namespace A317784.P17690471018472515747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294220 (A046691 (n + 2)).toNat + A185255 n

end

end A317784.P17690471018472515747

/-! ## A317784.P184873728657996751

`A294220(A046691(n+2))+A185284(n)`
-/

namespace A317784.P184873728657996751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294220 (A046691 (n + 2)).toNat + A185284 n

end

end A317784.P184873728657996751

/-! ## A317784.P10791587899623467253

`gcd(A000038(n), A294220(A046691(n+2)))`
-/

namespace A317784.P10791587899623467253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A294220 (A046691 (n + 2)).toNat)

end

end A317784.P10791587899623467253

/-!
# A317785: Number of locally connected rooted trees with n nodes.

The programs for A317785, there is no canonical definition to state claims against.
-/

/-! ## A317785.P3936296476289404379

`A096268(A221714(n))+A002865(n)`
-/

namespace A317785.P3936296476289404379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A221714 n).toNat + A002865 n

end

end A317785.P3936296476289404379

/-! ## A317785.P11636407170514004400

`A036987(A216937(n+1))+A002865(n)`
-/

namespace A317785.P11636407170514004400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A216937 (n + 1)).toNat + A002865 n

end

end A317785.P11636407170514004400

/-! ## A317785.P11895762610149602357

`A025456(A232149(n+1))+A002865(n)`
-/

namespace A317785.P11895762610149602357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (A232149 (n + 1)).toNat + A002865 n

end

end A317785.P11895762610149602357

/-! ## A317785.P14998419526228056530

`A064911(A298299(3*n+2))+A002865(n)`
-/

namespace A317785.P14998419526228056530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A298299 (3 * n + 2)).toNat + A002865 n

end

end A317785.P14998419526228056530

/-! ## A317785.P11151891292742372239

`A188436(A188426(2*n+3))+A002865(n)`
-/

namespace A317785.P11151891292742372239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188436 (A188426 (2 * n + 3)).toNat + A002865 n

end

end A317785.P11151891292742372239

/-!
# A317786: Matula-Goebel numbers of locally connected rooted trees.

The programs for A317786, there is no canonical definition to state claims against.
-/

/-! ## A317786.P1660946151001530995

`∑[A000005(A297196(n))]`
-/

namespace A317786.P1660946151001530995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A297196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317786.P1660946151001530995

/-! ## A317786.P4460052968004648412

`eq[A122377(n+2), A124279(A101743(2*(n+1)))]`
-/

namespace A317786.P4460052968004648412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124279 (A101743 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317786.P4460052968004648412

/-! ## A317786.P13571926925394854198

`lt[A008288(A061765(2*n+5)), A256221(n+1)]`
-/

namespace A317786.P13571926925394854198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A061765 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317786.P13571926925394854198

/-!
# A317787: Number of locally nonintersecting rooted trees with n nodes.

The programs for A317787, there is no canonical definition to state claims against.
-/

/-! ## A317787.P15562912214740465528

`A226762(A001420(n+1))`
-/

namespace A317787.P15562912214740465528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A001420 (n + 1)).toNat

end

end A317787.P15562912214740465528

/-! ## A317787.P5792144605706250294

`A001462(A054515(n)-A000389(n))`
-/

namespace A317787.P5792144605706250294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A054515 n - A000389 n).toNat

end

end A317787.P5792144605706250294

/-! ## A317787.P252145497308397277

`A001462(A257561(n))-A332833(n)`
-/

namespace A317787.P252145497308397277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A257561 n).toNat - A332833 n

end

end A317787.P252145497308397277

/-!
# A317788: Lexicographically earliest infinite sequence of distinct positive terms such that for any n > 1, the binary representation of a(n) appears as a substring in the binary representation of Sum_{k=1..n-1} a(k).

The programs for A317788, there is no canonical definition to state claims against.
-/

/-! ## A317788.P5669204323065228982

`A370046(A181440(n+1))`
-/

namespace A317788.P5669204323065228982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370046 (A181440 (n + 1)).toNat

end

end A317788.P5669204323065228982

/-! ## A317788.P6928531404621381300

`A370046(n+1)+A154955(n+1)`
-/

namespace A317788.P6928531404621381300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370046 (n + 1) + A154955 (n + 1)

end

end A317788.P6928531404621381300

/-! ## A317788.P9087305941697271340

`A370046(n+1)+A247133(A004856(n+1))`
-/

namespace A317788.P9087305941697271340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370046 (n + 1) + A247133 (A004856 (n + 1)).toNat

end

end A317788.P9087305941697271340

/-! ## A317788.P10282435460417852941

`A370046(n+1)+A008683(A025613(n+1))`
-/

namespace A317788.P10282435460417852941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370046 (n + 1) + A008683 (A025613 (n + 1)).toNat

end

end A317788.P10282435460417852941

/-! ## A317788.P1209699319810970902

`A370046(n+1)+A121373(A022268(n))`
-/

namespace A317788.P1209699319810970902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370046 (n + 1) + A121373 (A022268 n).toNat

end

end A317788.P1209699319810970902

/-!
# A317790: a(n) = 2*a(n-1) - a(n-2) + a(n-4) - 2*(n-5) + a(n-6) for n>5, a(0)=a(1)=1, a(2)=a(3)=7, a(4)=13, a(5)=19.

The programs for A317790, the canonical program `A317790.P4726594028406157087` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317790 has offset 0).

The definition of A317790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317790.P4726594028406157087

`6*round(n²/8)+1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A317790

/-- `6*round(n²/8)+1` -/
def P4726594028406157087.Spec : Prop :=
  ∀ n, P4726594028406157087.a n = A317790 n

theorem P4726594028406157087.correct : P4726594028406157087.Spec := by
  intro n
  simp only [A317790]

end A317790

/-! ## A317790.P7904108183227731650

`or(1, 6*round(n²/8))`
-/

namespace A317790.P7904108183227731650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (6 * SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8))

end

end A317790.P7904108183227731650

namespace A317790

/-- `or(1, 6*round(n²/8))` -/
def P7904108183227731650.Spec : Prop :=
  ∀ n, P7904108183227731650.a n = A317790 n

end A317790

/-! ## A317790.P15914194452468520877

`∑[a(n-4)+6]` with `a(0)=1, a(1)=0, a(2)=6, a(3)=0, a(4)=6`
-/

namespace A317790.P15914194452468520877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 6, 0, 6] fun n f1 =>
  f1 (n - 4) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317790.P15914194452468520877

namespace A317790

/-- `∑[a(n-4)+6]` -/
def P15914194452468520877.Spec : Prop :=
  ∀ n, (P15914194452468520877.a n : ℤ) = A317790 n

end A317790

/-! ## A317790.P9569132705394685365

`A016921(A001971(n))`
-/

namespace A317790.P9569132705394685365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A001971 n).toNat

end

end A317790.P9569132705394685365

namespace A317790

/-- `A016921(A001971(n))` -/
def P9569132705394685365.Spec : Prop :=
  ∀ n, P9569132705394685365.a n = A317790 n

end A317790

/-! ## A317790.P14239724597557418026

`A016921(∑[A059169(n+1)])`
-/

namespace A317790.P14239724597557418026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A317790.P14239724597557418026

namespace A317790

/-- `A016921(∑[A059169(n+1)])` -/
def P14239724597557418026.Spec : Prop :=
  ∀ n, P14239724597557418026.a n = A317790 n

end A317790

/-! ## A317790.P12892232352360581837

`A016777(2*round(n²/8))`
-/

namespace A317790.P12892232352360581837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8)).toNat

end

end A317790.P12892232352360581837

namespace A317790

/-- `A016777(2*round(n²/8))` -/
def P12892232352360581837.Spec : Prop :=
  ∀ n, P12892232352360581837.a n = A317790 n

end A317790

/-! ## A317790.P16696756218668262275

`A016933(2*A001971(n))/2`
-/

namespace A317790.P16696756218668262275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016933 (2 * A001971 n).toNat : ℚ) / 2

end

end A317790.P16696756218668262275

namespace A317790

/-- `A016933(2*A001971(n))/2` -/
def P16696756218668262275.Spec : Prop :=
  ∀ n, P16696756218668262275.a n = (A317790 n : ℚ)

end A317790

/-! ## A317790.P15097763953315472042

`A168301(A033638(n))`
-/

namespace A317790.P15097763953315472042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168301 (A033638 n).toNat

end

end A317790.P15097763953315472042

namespace A317790

/-- `A168301(A033638(n))` -/
def P15097763953315472042.Spec : Prop :=
  ∀ n, P15097763953315472042.a n = A317790 n

end A317790

/-! ## A317790.P6520517710131073546

`A168301(A002620(n)+1)`
-/

namespace A317790.P6520517710131073546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168301 (A002620 n + 1).toNat

end

end A317790.P6520517710131073546

namespace A317790

/-- `A168301(A002620(n)+1)` -/
def P6520517710131073546.Spec : Prop :=
  ∀ n, P6520517710131073546.a n = A317790 n

end A317790

/-! ## A317790.P11102000361115583903

`A007310(2*A001971(n)+1)`
-/

namespace A317790.P11102000361115583903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (2 * A001971 n + 1).toNat

end

end A317790.P11102000361115583903

namespace A317790

/-- `A007310(2*A001971(n)+1)` -/
def P11102000361115583903.Spec : Prop :=
  ∀ n, P11102000361115583903.a n = A317790 n

end A317790

/-! ## A317790.P5791061148770433887

`A007310(A001971(n)+A001971(n)+1)`
-/

namespace A317790.P5791061148770433887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A001971 n + (A001971 n + 1)).toNat

end

end A317790.P5791061148770433887

namespace A317790

/-- `A007310(A001971(n)+A001971(n)+1)` -/
def P5791061148770433887.Spec : Prop :=
  ∀ n, P5791061148770433887.a n = A317790 n

end A317790

/-! ## A317790.P13682955853181888720

`A093178(n²-A214297(n))`
-/

namespace A317790.P13682955853181888720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 ((n ^ 2 : ℤ) - A214297 n).toNat

end

end A317790.P13682955853181888720

namespace A317790

/-- `A093178(n²-A214297(n))` -/
def P13682955853181888720.Spec : Prop :=
  ∀ n, P13682955853181888720.a n = A317790 n

end A317790

/-! ## A317790.P13359336907111384476

`A267873(A001971(n)+2*A001971(n))`
-/

namespace A317790.P13359336907111384476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (A001971 n + 2 * A001971 n).toNat

end

end A317790.P13359336907111384476

namespace A317790

/-- `A267873(A001971(n)+2*A001971(n))` -/
def P13359336907111384476.Spec : Prop :=
  ∀ n, P13359336907111384476.a n = A317790 n

end A317790

/-! ## A317790.P2905805651615021649

`A093178(A093178(n)-(A214297(n)-A289296(n)))`
-/

namespace A317790.P2905805651615021649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A093178 n - (A214297 n - A289296 n)).toNat

end

end A317790.P2905805651615021649

namespace A317790

/-- `A093178(A093178(n)-(A214297(n)-A289296(n)))` -/
def P2905805651615021649.Spec : Prop :=
  ∀ n, P2905805651615021649.a n = A317790 n

end A317790

/-! ## A317790.P14545421415879997156

`A016921(A059169(A000982(n+1)-n))`
-/

namespace A317790.P14545421415879997156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A059169 (A000982 (n + 1) - (n : ℤ)).toNat).toNat

end

end A317790.P14545421415879997156

namespace A317790

/-- `A016921(A059169(A000982(n+1)-n))` -/
def P14545421415879997156.Spec : Prop :=
  ∀ n, P14545421415879997156.a n = A317790 n

end A317790

/-! ## A317790.P17619579898076018660

`A283971(n²-A214297(n))`
-/

namespace A317790.P17619579898076018660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 ((n ^ 2 : ℤ) - A214297 n).toNat

end

end A317790.P17619579898076018660

namespace A317790

/-- `A283971(n²-A214297(n))` -/
def P17619579898076018660.Spec : Prop :=
  ∀ n, P17619579898076018660.a n = A317790 n

end A317790

/-! ## A317790.P3137783300034476404

`A037915(8*round(n²/8))`
-/

namespace A317790.P3137783300034476404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (8 * SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8)).toNat

end

end A317790.P3137783300034476404

namespace A317790

/-- `A037915(8*round(n²/8))` -/
def P3137783300034476404.Spec : Prop :=
  ∀ n, P3137783300034476404.a n = A317790 n

end A317790

/-!
# A317791: Number of non-isomorphic multiset partitions of the multiset of prime indices of n (row n of A112798).

The programs for A317791, there is no canonical definition to state claims against.
-/

/-! ## A317791.P1598674489358198479

`A318285(A181819(n+1))`
-/

namespace A317791.P1598674489358198479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318285 (A181819 (n + 1)).toNat

end

end A317791.P1598674489358198479

/-! ## A317791.P3891900542449786351

`A318285(∏{e}[n+1, A058853(#)])`
-/

namespace A317791.P3891900542449786351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318285 (∏ p ∈ Nat.primeFactors (f1 n), A058853 (Nat.factorization (f1 n) p)).toNat

end

end A317791.P3891900542449786351

/-! ## A317791.P10187599077251892640

`A318285(A329601(n+1)*A351944(n+1))`
-/

namespace A317791.P10187599077251892640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318285 (A329601 (n + 1) * A351944 (n + 1)).toNat

end

end A317791.P10187599077251892640

/-! ## A317791.P11368342948107968667

`Δ[A096276(n)]-and(2, A349797(n+1))`
-/

namespace A317791.P11368342948107968667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.land 2 (A349797 (n + 1))

end

end A317791.P11368342948107968667

/-! ## A317791.P9560573184685536839

`A001055(n+1)-and(2, A349797(n+1))`
-/

namespace A317791.P9560573184685536839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - Int.land 2 (A349797 (n + 1))

end

end A317791.P9560573184685536839

/-! ## A317791.P1168876141566212501

`A001055(n+1)-A332671(A306438(n+1))`
-/

namespace A317791.P1168876141566212501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A332671 (A306438 (n + 1)).toNat

end

end A317791.P1168876141566212501

/-! ## A317791.P563301096912449581

`A326334(n+1)-A326291(n+1)^A000041(n)`
-/

namespace A317791.P563301096912449581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326334 (n + 1) : ℚ) - (A326291 (n + 1) : ℚ) ^ (A000041 n : ℤ)

end

end A317791.P563301096912449581

/-! ## A317791.P6781741292759513227

`A326334(n+1)-A326291(n+1)^A000040(n+1)`
-/

namespace A317791.P6781741292759513227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326334 (n + 1) : ℚ) - (A326291 (n + 1) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A317791.P6781741292759513227

/-! ## A317791.P11245620369219231041

`A326334(n+1)-A326291(n+1)^A025487(n+1)`
-/

namespace A317791.P11245620369219231041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326334 (n + 1) : ℚ) - (A326291 (n + 1) : ℚ) ^ (A025487 (n + 1) : ℤ)

end

end A317791.P11245620369219231041

/-! ## A317791.P4027931358384042355

`A326334(n+1)-A326291(n+1)^A033833(n+1)`
-/

namespace A317791.P4027931358384042355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326334 (n + 1) : ℚ) - (A326291 (n + 1) : ℚ) ^ (A033833 (n + 1) : ℤ)

end

end A317791.P4027931358384042355

/-!
# A317792: Number of non-isomorphic multiset partitions, using normal multisets, of normal multisets of size n.

The programs for A317792, there is no canonical definition to state claims against.
-/

/-! ## A317792.P13788492358866045550

`A005041(A332339(n²))`
-/

namespace A317792.P13788492358866045550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A332339 (n ^ 2)).toNat

end

end A317792.P13788492358866045550

/-! ## A317792.P3180624894736796521

`A024317(A000142(n))+A000219(n)`
-/

namespace A317792.P3180624894736796521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (A000142 n).toNat + A000219 n

end

end A317792.P3180624894736796521

/-! ## A317792.P12263029936603168062

`A293732(n)+A248805(A336616(n))`
-/

namespace A317792.P12263029936603168062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293732 n + A248805 (A336616 n).toNat

end

end A317792.P12263029936603168062

/-! ## A317792.P7383766319635052874

`A293732(n)-A188037(A143550(n))`
-/

namespace A317792.P7383766319635052874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293732 n - A188037 (A143550 n).toNat

end

end A317792.P7383766319635052874

/-!
# A317793: a(n) = (4^n + (-3)^n + 2^n + (-1)^n)/2.

The programs for A317793, the canonical program `A317793.P13571452411284090734` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317793 has offset 1).

The definition of A317793 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4^(n+1)+(-3)^(n+1)+2^(n+1)+(-1)^(n+1))/2` (program `A317793.P18400556850851668548`, by `A317793.P18400556850851668548.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317793.P18400556850851668548

`(4^(n+1)+(-3)^(n+1)+2^(n+1)+(-1)^(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A317793.P18400556850851668548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 1) : ℤ) + (-3) ^ (n + 1) + (2 ^ (n + 1) : ℤ) + (-1) ^ (n + 1) : ℚ) / 2

end

end A317793.P18400556850851668548

namespace A317793

/-- `(4^(n+1)+(-3)^(n+1)+2^(n+1)+(-1)^(n+1))/2` -/
def P18400556850851668548.Spec : Prop :=
  ∀ n, P18400556850851668548.a n = (A317793 (n + 1) : ℚ)

theorem P18400556850851668548.correct : P18400556850851668548.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A317793, Nat.add_sub_cancel, A317793.P18400556850851668548.a, A317793.P13571452411284090734.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A317793, Nat.add_sub_cancel, A317793.P18400556850851668548.a, A317793.P13571452411284090734.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A317793

/-! ## A317793.P13571452411284090734

`2*a(n-1)+13*a(n-2)-14*a(n-3)-24*a(n-4)` with `a(0)=1, a(1)=15, a(2)=22, a(3)=177`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A317793

/-- `2*a(n-1)+13*a(n-2)-14*a(n-3)-24*a(n-4)` -/
def P13571452411284090734.Spec : Prop :=
  ∀ n, P13571452411284090734.a n = A317793 (n + 1)

theorem P13571452411284090734.correct : P13571452411284090734.Spec := by
  intro n
  simp only [A317793, Nat.add_sub_cancel]

end A317793

/-! ## A317793.P540566007972665578

`A007582(n+1)-A341463(n+1)`
-/

namespace A317793.P540566007972665578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (n + 1) - A341463 (n + 1)

end

end A317793.P540566007972665578

namespace A317793

/-- `A007582(n+1)-A341463(n+1)` -/
def P540566007972665578.Spec : Prop :=
  ∀ n, P540566007972665578.a n = A317793 (n + 1)

end A317793

/-! ## A317793.P3558637160374619206

`A000217(A000079(n+1))-A341463(n+1)`
-/

namespace A317793.P3558637160374619206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000079 (n + 1)).toNat - A341463 (n + 1)

end

end A317793.P3558637160374619206

namespace A317793

/-- `A000217(A000079(n+1))-A341463(n+1)` -/
def P3558637160374619206.Spec : Prop :=
  ∀ n, P3558637160374619206.a n = A317793 (n + 1)

end A317793

/-!
# A317794: Number of non-isomorphic set-systems on n vertices with no singletons.

The programs for A317794, there is no canonical definition to state claims against.
-/

/-! ## A317794.P7986603580024885540

`∑[A317795(n)]`
-/

namespace A317794.P7986603580024885540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317794.P7986603580024885540

/-! ## A317794.P14146981202111166883

`∑[A000618(n)]-A000370(n)`
-/

namespace A317794.P14146981202111166883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000370 n

end

end A317794.P14146981202111166883

/-! ## A317794.P641862440329316630

`A317795(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A317794.P641862440329316630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A317795 n + a (A023443 n).toNat

end

end A317794.P641862440329316630

/-! ## A317794.P13798888382457460595

`A317795(n)+a(A235049(n))` with `a(0)=1`
-/

namespace A317794.P13798888382457460595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A317795 n + a (A235049 n).toNat

end

end A317794.P13798888382457460595

/-!
# A317795: Number of non-isomorphic set-systems spanning n vertices with no singletons.

The programs for A317795, there is no canonical definition to state claims against.
-/

/-! ## A317795.P15352238437443897494

`A000618(n)-A001528(n)`
-/

namespace A317795.P15352238437443897494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000618 n - A001528 n

end

end A317795.P15352238437443897494

/-! ## A317795.P4010064330514817616

`A000618(n)+-A001528(n)%A000371(n)`
-/

namespace A317795.P4010064330514817616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000618 n + Int.tmod (-A001528 n) (A000371 n)

end

end A317795.P4010064330514817616

/-!
# A317797: Sum of the norm of divisors of n over Gaussian integers, with associated divisors counted only once.

The programs for A317797, the canonical program `A317797.P6848879990228861065` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317797 has offset 1).

The definition of A317797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317797.P17175238160917852515

`∑{d}[n+1, A000082(#)*A050457((n+1)/#)]`
-/

namespace A317797.P17175238160917852515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A050457 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317797.P17175238160917852515

namespace A317797

/-- `∑{d}[n+1, A000082(#)*A050457((n+1)/#)]` -/
def P17175238160917852515.Spec : Prop :=
  ∀ n, P17175238160917852515.a n = A317797 (n + 1)

end A317797

/-! ## A317797.P14714268345875819165

`∑{d}[n+1, A000203(#)*A115076((n+1)/#)]`
-/

namespace A317797.P14714268345875819165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A115076 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317797.P14714268345875819165

namespace A317797

/-- `∑{d}[n+1, A000203(#)*A115076((n+1)/#)]` -/
def P14714268345875819165.Spec : Prop :=
  ∀ n, P14714268345875819165.a n = A317797 (n + 1)

end A317797

/-! ## A317797.P6848879990228861065

`∑{d}[n+1, A034676(#)*A111938((n+1)/#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A317797

/-- `∑{d}[n+1, A034676(#)*A111938((n+1)/#)]` -/
def P6848879990228861065.Spec : Prop :=
  ∀ n, P6848879990228861065.a n = A317797 (n + 1)

theorem P6848879990228861065.correct : P6848879990228861065.Spec := by
  intro n
  simp only [A317797, Nat.add_sub_cancel]

end A317797

