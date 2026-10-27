import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C023

/-!
# A035837: Coordination sequence for A_11 lattice.

The programs for A035837, there is no canonical definition to state claims against.
-/

/-! ## A035837.P17910850595513026513

`A103881(A052905(n+8)-5)`
-/

namespace A035837.P17910850595513026513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A052905 (n + 8) - 5).toNat

end

end A035837.P17910850595513026513

/-! ## A035837.P6273989086255815255

`A103881(A000124(n+11)-11)`
-/

namespace A035837.P6273989086255815255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000124 (n + 11) - 11).toNat

end

end A035837.P6273989086255815255

/-! ## A035837.P3891957160134208646

`A103881(A000096(n+9)+n+2)`
-/

namespace A035837.P3891957160134208646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000096 (n + 9) + (n + 2 : ℤ)).toNat

end

end A035837.P3891957160134208646

/-! ## A035837.P3122036056271680605

`A103881(A000217(n+10)+n+1)`
-/

namespace A035837.P3122036056271680605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000217 (n + 10) + (n : ℤ) + 1).toNat

end

end A035837.P3122036056271680605

/-! ## A035837.P7042196739335167066

`A103881(A008593(n+5)+∑[n]+1)`
-/

namespace A035837.P7042196739335167066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A008593 (n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A035837.P7042196739335167066

/-!
# A035838: Coordination sequence for A_12 lattice.

The programs for A035838, there is no canonical definition to state claims against.
-/

/-! ## A035838.P5971706082486359467

`A103881(A052905(n+9)-6)`
-/

namespace A035838.P5971706082486359467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A052905 (n + 9) - 6).toNat

end

end A035838.P5971706082486359467

/-! ## A035838.P8141311246981643995

`A103881(A000124(n+12)-12)`
-/

namespace A035838.P8141311246981643995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000124 (n + 12) - 12).toNat

end

end A035838.P8141311246981643995

/-! ## A035838.P12770700132310303088

`A103881(A133263(n+8)+A016813(n+7))`
-/

namespace A035838.P12770700132310303088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A133263 (n + 8) + A016813 (n + 7)).toNat

end

end A035838.P12770700132310303088

/-! ## A035838.P2739456556313857374

`A103881(A034856(n+9)+A005843(n+7))`
-/

namespace A035838.P2739456556313857374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A034856 (n + 9) + A005843 (n + 7)).toNat

end

end A035838.P2739456556313857374

/-!
# A035839: Coordination sequence for A_13 lattice.

The programs for A035839, there is no canonical definition to state claims against.
-/

/-! ## A035839.P5379111688812211847

`A103881(eq[12, A193592(n)])`
-/

namespace A035839.P5379111688812211847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035839.P5379111688812211847

/-! ## A035839.P9665418928274544026

`A103881(A000124(n+12)+n)`
-/

namespace A035839.P9665418928274544026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000124 (n + 12) + (n : ℤ)).toNat

end

end A035839.P9665418928274544026

/-! ## A035839.P7873064616307979489

`A103881(A167614(n+10)+A005843(n+5))`
-/

namespace A035839.P7873064616307979489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A167614 (n + 10) + A005843 (n + 5)).toNat

end

end A035839.P7873064616307979489

/-! ## A035839.P18305386102773586294

`A103881(A004767(n+8)+A000096(n+8))`
-/

namespace A035839.P18305386102773586294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A004767 (n + 8) + A000096 (n + 8)).toNat

end

end A035839.P18305386102773586294

/-! ## A035839.P6834835898444042357

`A103881(A005408(n)+A000217(n+11)+12)`
-/

namespace A035839.P6834835898444042357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A005408 n + (A000217 (n + 11) + 12)).toNat

end

end A035839.P6834835898444042357

/-!
# A035840: Coordination sequence for A_14 lattice.

The programs for A035840, there is no canonical definition to state claims against.
-/

/-! ## A035840.P15355402129360816417

`A103881(eq[13, A193592(n)])`
-/

namespace A035840.P15355402129360816417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035840.P15355402129360816417

/-! ## A035840.P2247407334670211092

`A103881(A056121(n+8)-n)`
-/

namespace A035840.P2247407334670211092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A056121 (n + 8) - (n : ℤ)).toNat

end

end A035840.P2247407334670211092

/-! ## A035840.P10938515600808742298

`A103881(A000124(n+13)+n)`
-/

namespace A035840.P10938515600808742298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000124 (n + 13) + (n : ℤ)).toNat

end

end A035840.P10938515600808742298

/-! ## A035840.P5196969828806691783

`A103881(A005843(n+1)+A000096(n+12)-n)`
-/

namespace A035840.P5196969828806691783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A005843 (n + 1) + (A000096 (n + 12) - (n : ℤ))).toNat

end

end A035840.P5196969828806691783

/-!
# A035841: Coordination sequence for A_15 lattice.

The programs for A035841, there is no canonical definition to state claims against.
-/

/-! ## A035841.P15536586273248426768

`A103881(eq[14, A193592(n)])`
-/

namespace A035841.P15536586273248426768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035841.P15536586273248426768

/-! ## A035841.P10359762666860865604

`A103881(eq[22, A219347(n)])`
-/

namespace A035841.P10359762666860865604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035841.P10359762666860865604

/-! ## A035841.P13607464274080931633

`A103881(A056115(n+10)+1)`
-/

namespace A035841.P13607464274080931633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A056115 (n + 10) + 1).toNat

end

end A035841.P13607464274080931633

/-! ## A035841.P1325407232580401189

`A103881(A000124(n+14)+n)`
-/

namespace A035841.P1325407232580401189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000124 (n + 14) + (n : ℤ)).toNat

end

end A035841.P1325407232580401189

/-! ## A035841.P14106600709776243649

`A103881(A056121(n+9)-(n+2))`
-/

namespace A035841.P14106600709776243649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A056121 (n + 9) - (n + 2 : ℤ)).toNat

end

end A035841.P14106600709776243649

/-!
# A035842: Coordination sequence for A_16 lattice.

The programs for A035842, there is no canonical definition to state claims against.
-/

/-! ## A035842.P11049568970205723468

`A103881(A056115(n+11))`
-/

namespace A035842.P11049568970205723468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A056115 (n + 11)).toNat

end

end A035842.P11049568970205723468

/-! ## A035842.P6184908439528446862

`A103881(eq[15, A193592(n)])`
-/

namespace A035842.P6184908439528446862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035842.P6184908439528446862

/-! ## A035842.P5240953226229047564

`A103881(eq[27, A219347(n)])`
-/

namespace A035842.P5240953226229047564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035842.P5240953226229047564

/-! ## A035842.P2837247213180434504

`A103881(A000124(n+15)+n)`
-/

namespace A035842.P2837247213180434504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000124 (n + 15) + (n : ℤ)).toNat

end

end A035842.P2837247213180434504

/-! ## A035842.P8686802918201534796

`A103881(A133263(n+12)+A016813(n+10))`
-/

namespace A035842.P8686802918201534796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A133263 (n + 12) + A016813 (n + 10)).toNat

end

end A035842.P8686802918201534796

/-!
# A035843: Coordination sequence for A_17 lattice.

The programs for A035843, there is no canonical definition to state claims against.
-/

/-! ## A035843.P4293364750380701868

`A103881(eq[16, A193592(n)])`
-/

namespace A035843.P4293364750380701868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035843.P4293364750380701868

/-! ## A035843.P10648697974394990021

`A103881(eq[32, A219347(n)])`
-/

namespace A035843.P10648697974394990021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035843.P10648697974394990021

/-! ## A035843.P6607043148494652538

`A103881(eq[30, A185782(n+1)])`
-/

namespace A035843.P6607043148494652538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035843.P6607043148494652538

/-! ## A035843.P379575382116544698

`A103881(A002378(n+13)-A161680(n+10))`
-/

namespace A035843.P379575382116544698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A002378 (n + 13) - A161680 (n + 10)).toNat

end

end A035843.P379575382116544698

/-!
# A035844: Coordination sequence for A_18 lattice.

The programs for A035844, there is no canonical definition to state claims against.
-/

/-! ## A035844.P5296203919972380546

`A103881(eq[17, A193592(n)])`
-/

namespace A035844.P5296203919972380546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035844.P5296203919972380546

/-! ## A035844.P12260479625858188527

`A103881(eq[32, A185782(n+1)])`
-/

namespace A035844.P12260479625858188527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035844.P12260479625858188527

/-!
# A035845: Coordination sequence for A_19 lattice.

The programs for A035845, there is no canonical definition to state claims against.
-/

/-! ## A035845.P16127748879214369688

`A103881(eq[18, A193592(n)])`
-/

namespace A035845.P16127748879214369688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035845.P16127748879214369688

/-!
# A035846: Coordination sequence for A_20 lattice.

The programs for A035846, there is no canonical definition to state claims against.
-/

/-! ## A035846.P7005174840386496553

`A103881(eq[19, A193592(n)])`
-/

namespace A035846.P7005174840386496553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035846.P7005174840386496553

/-!
# A035847: Coordination sequence for A_21 lattice.

The programs for A035847, there is no canonical definition to state claims against.
-/

/-! ## A035847.P8420225482221626083

`A103881(eq[20, A193592(n)])`
-/

namespace A035847.P8420225482221626083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035847.P8420225482221626083

/-! ## A035847.P9649902423154057900

`A103881(eq[64, A219347(n)])`
-/

namespace A035847.P9649902423154057900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035847.P9649902423154057900

/-!
# A035848: Coordination sequence for A_22 lattice.

The programs for A035848, there is no canonical definition to state claims against.
-/

/-! ## A035848.P15800567313448054635

`A103881(eq[21, A193592(n)])`
-/

namespace A035848.P15800567313448054635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035848.P15800567313448054635

/-!
# A035851: Coordination sequence for A_25 lattice.

The programs for A035851, there is no canonical definition to state claims against.
-/

/-! ## A035851.P17832502154293875781

`A103881(eq[24, A193592(n)])`
-/

namespace A035851.P17832502154293875781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035851.P17832502154293875781

/-!
# A035852: Coordination sequence for A_26 lattice.

The programs for A035852, there is no canonical definition to state claims against.
-/

/-! ## A035852.P2382158408359210386

`A103881(eq[25, A193592(n)])`
-/

namespace A035852.P2382158408359210386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035852.P2382158408359210386

/-! ## A035852.P13091355142833793613

`A103881(eq[48, A185782(n+1)])`
-/

namespace A035852.P13091355142833793613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035852.P13091355142833793613

/-!
# A035854: Coordination sequence for A_28 lattice.

The programs for A035854, there is no canonical definition to state claims against.
-/

/-! ## A035854.P12245957483711652948

`A103881(eq[27, A193592(n)])`
-/

namespace A035854.P12245957483711652948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035854.P12245957483711652948

/-!
# A035856: Coordination sequence for A_30 lattice.

The programs for A035856, there is no canonical definition to state claims against.
-/

/-! ## A035856.P7548518222698793008

`A103881(eq[29, A193592(n)])`
-/

namespace A035856.P7548518222698793008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035856.P7548518222698793008

/-!
# A035877: Number of points of l_1 norm n in the "diamond" lattice D^+_2, i. e. the rectangular lattice generated by vectors (1, 1) and (-1/2, 1/2).

The programs for A035877, the canonical program `A035877.P158235201964085113` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035877 has offset 0).

The definition of A035877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035877.P158235201964085113

`n*(and(2, a(n-1))²+2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035877

/-- `n*(and(2, a(n-1))²+2)` -/
def P158235201964085113.Spec : Prop :=
  ∀ n, (P158235201964085113.a n : ℤ) = A035877 n

theorem P158235201964085113.correct : P158235201964085113.Spec := by
  intro n
  simp only [A035877]

end A035877

/-! ## A035877.P3574017179627879448

`n*(a((n+1)%2)+1)!` with `a(0)=1`
-/

namespace A035877.P3574017179627879448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * Nat.factorial (a ((n + 1) % 2) + 1)

end

end A035877.P3574017179627879448

namespace A035877

/-- `n*(a((n+1)%2)+1)!` -/
def P3574017179627879448.Spec : Prop :=
  ∀ n, (P3574017179627879448.a n : ℤ) = A035877 n

end A035877

/-! ## A035877.P4461033315199715727

`a(n-2)/(1-2/n)` with `a(0)=1, a(1)=2, a(2)=12`
-/

namespace A035877.P4461033315199715727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 12] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A035877.P4461033315199715727

namespace A035877

/-- `a(n-2)/(1-2/n)` -/
def P4461033315199715727.Spec : Prop :=
  ∀ n, P4461033315199715727.a n = (A035877 n : ℚ)

end A035877

/-! ## A035877.P6076131832181749280

`(and(2, a(n-1))+1)*2*n` with `a(0)=1`
-/

namespace A035877.P6076131832181749280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.land 2 (a (n - 1)) + 1) * (2 * n)

end

end A035877.P6076131832181749280

namespace A035877

/-- `(and(2, a(n-1))+1)*2*n` -/
def P6076131832181749280.Spec : Prop :=
  ∀ n, (P6076131832181749280.a n : ℤ) = A035877 n

end A035877

/-! ## A035877.P7520919791152075695

`2*n*(a(n-1)+1)%4` with `a(0)=1, a(1)=2`
-/

namespace A035877.P7520919791152075695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (n * ((a (n - 1) + 1) % 4))

end

end A035877.P7520919791152075695

namespace A035877

/-- `2*n*(a(n-1)+1)%4` -/
def P7520919791152075695.Spec : Prop :=
  ∀ n, (P7520919791152075695.a n : ℤ) = A035877 n

end A035877

/-! ## A035877.P11723911969012978365

`floor(A040008(n)/acot(n))`
-/

namespace A035877.P11723911969012978365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A040008 n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋

end

end A035877.P11723911969012978365

namespace A035877

/-- `floor(A040008(n)/acot(n))` -/
def P11723911969012978365.Spec : Prop :=
  ∀ n, P11723911969012978365.a n = A035877 n

end A035877

/-! ## A035877.P13240262253262255396

`A064200(n)/a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A035877.P13240262253262255396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A064200 n : ℚ) / a (n - 1)

end

end A035877.P13240262253262255396

namespace A035877

/-- `A064200(n)/a(n-1)` -/
def P13240262253262255396.Spec : Prop :=
  ∀ n, P13240262253262255396.a n = (A035877 n : ℚ)

end A035877

/-! ## A035877.P9941788839745335255

`(n+2)²-3-A014681(n)²`
-/

namespace A035877.P9941788839745335255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 3 - A014681 n ^ 2

end

end A035877.P9941788839745335255

namespace A035877

/-- `(n+2)²-3-A014681(n)²` -/
def P9941788839745335255.Spec : Prop :=
  ∀ n, P9941788839745335255.a n = A035877 n

end A035877

/-! ## A035877.P1792542659827426233

`2*n*A000032(a(and(1, n+1)))` with `a(0)=1`
-/

namespace A035877.P1792542659827426233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) * A000032 (a (Nat.land 1 (n + 1))).toNat

end

end A035877.P1792542659827426233

namespace A035877

/-- `2*n*A000032(a(and(1, n+1)))` -/
def P1792542659827426233.Spec : Prop :=
  ∀ n, P1792542659827426233.a n = A035877 n

end A035877

/-! ## A035877.P7129603903009551449

`2*n*A000203(a(and(1, n+1)))` with `a(0)=1`
-/

namespace A035877.P7129603903009551449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) * A000203 (a (Nat.land 1 (n + 1))).toNat

end

end A035877.P7129603903009551449

namespace A035877

/-- `2*n*A000203(a(and(1, n+1)))` -/
def P7129603903009551449.Spec : Prop :=
  ∀ n, P7129603903009551449.a n = A035877 n

end A035877

/-! ## A035877.P11654082116739751453

`2*n*A000005(a(and(1, n+1))²)` with `a(0)=1`
-/

namespace A035877.P11654082116739751453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) * A000005 (a (Nat.land 1 (n + 1)) ^ 2).toNat

end

end A035877.P11654082116739751453

namespace A035877

/-- `2*n*A000005(a(and(1, n+1))²)` -/
def P11654082116739751453.Spec : Prop :=
  ∀ n, P11654082116739751453.a n = A035877 n

end A035877

/-! ## A035877.P4348265218105503945

`2*n*A000045(a(and(1, n+1))²)` with `a(0)=1`
-/

namespace A035877.P4348265218105503945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) * A000045 (a (Nat.land 1 (n + 1)) ^ 2).toNat

end

end A035877.P4348265218105503945

namespace A035877

/-- `2*n*A000045(a(and(1, n+1))²)` -/
def P4348265218105503945.Spec : Prop :=
  ∀ n, P4348265218105503945.a n = A035877 n

end A035877

/-! ## A035877.P11214298182605187545

`2*n*A000032(a(and(1, n-1)²))` with `a(0)=1`
-/

namespace A035877.P11214298182605187545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) * A000032 (a (Int.land 1 ((n : ℤ) - 1) ^ 2).toNat).toNat

end

end A035877.P11214298182605187545

namespace A035877

/-- `2*n*A000032(a(and(1, n-1)²))` -/
def P11214298182605187545.Spec : Prop :=
  ∀ n, P11214298182605187545.a n = A035877 n

end A035877

/-! ## A035877.P12368457555264380940

`2*n*A000203(a(and(1, n-1)²))` with `a(0)=1`
-/

namespace A035877.P12368457555264380940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) * A000203 (a (Int.land 1 ((n : ℤ) - 1) ^ 2).toNat).toNat

end

end A035877.P12368457555264380940

namespace A035877

/-- `2*n*A000203(a(and(1, n-1)²))` -/
def P12368457555264380940.Spec : Prop :=
  ∀ n, P12368457555264380940.a n = A035877 n

end A035877

/-! ## A035877.P7157676601676224780

`2*n*A000045(gcd(2-a(n-1), 2*n))` with `a(0)=1`
-/

namespace A035877.P7157676601676224780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) * A000045 (Int.gcd (2 - a (n - 1)) (2 * n : ℤ))

end

end A035877.P7157676601676224780

namespace A035877

/-- `2*n*A000045(gcd(2-a(n-1), 2*n))` -/
def P7157676601676224780.Spec : Prop :=
  ∀ n, P7157676601676224780.a n = A035877 n

end A035877

/-! ## A035877.P2918603257170338715

`2*n*A000032(gcd(a(n-1)-(n+2), n-2))` with `a(0)=1`
-/

namespace A035877.P2918603257170338715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) * A000032 (Int.gcd (a (n - 1) - (n + 2 : ℤ)) ((n : ℤ) - 2))

end

end A035877.P2918603257170338715

namespace A035877

/-- `2*n*A000032(gcd(a(n-1)-(n+2), n-2))` -/
def P2918603257170338715.Spec : Prop :=
  ∀ n, P2918603257170338715.a n = A035877 n

end A035877

/-! ## A035877.P9792048493825835807

`A195817(A028310(n))+n`
-/

namespace A035877.P9792048493825835807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195817 (A028310 n).toNat + (n : ℤ)

end

end A035877.P9792048493825835807

namespace A035877

/-- `A195817(A028310(n))+n` -/
def P9792048493825835807.Spec : Prop :=
  ∀ n, P9792048493825835807.a n = A035877 n

end A035877

/-! ## A035877.P10954001155874509771

`A257088(n)+A195161(n)`
-/

namespace A035877.P10954001155874509771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n + A195161 n

end

end A035877.P10954001155874509771

namespace A035877

/-- `A257088(n)+A195161(n)` -/
def P10954001155874509771.Spec : Prop :=
  ∀ n, P10954001155874509771.a n = A035877 n

end A035877

/-! ## A035877.P4084684611543359672

`A257143(n)+A195312(n)`
-/

namespace A035877.P4084684611543359672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n + A195312 n

end

end A035877.P4084684611543359672

namespace A035877

/-- `A257143(n)+A195312(n)` -/
def P4084684611543359672.Spec : Prop :=
  ∀ n, P4084684611543359672.a n = A035877 n

end A035877

/-! ## A035877.P923744046918022733

`A008458(n)/A010684(n)`
-/

namespace A035877.P923744046918022733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n : ℚ) / (A010684 n : ℚ)

end

end A035877.P923744046918022733

namespace A035877

/-- `A008458(n)/A010684(n)` -/
def P923744046918022733.Spec : Prop :=
  ∀ n, P923744046918022733.a n = (A035877 n : ℚ)

end A035877

/-!
# A035878: Number of points of l_1 norm n in the "diamond" lattice D^+_4.

The programs for A035878, there is no canonical definition to state claims against.
-/

/-! ## A035878.P5184318139698240679

`and(A007426(A359489(n)), A061955(2*n+5))`
-/

namespace A035878.P5184318139698240679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007426 (A359489 n).toNat) (A061955 (2 * n + 5))

end

end A035878.P5184318139698240679

/-!
# A035881: Coordination sequence for diamond structure D^+_10. (Edges defined by l_1 norm = 1.)

The programs for A035881, there is no canonical definition to state claims against.
-/

/-! ## A035881.P1122241206829945045

`A102392(A008420(n))`
-/

namespace A035881.P1122241206829945045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102392 (A008420 n).toNat

end

end A035881.P1122241206829945045

/-!
# A035882: Coordination sequence for diamond structure D^+_12. (Edges defined by l_1 norm = 1.)

The programs for A035882, there is no canonical definition to state claims against.
-/

/-! ## A035882.P15779748621665717411

`A008683(A016256(n))*A035707(n)`
-/

namespace A035882.P15779748621665717411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A016256 n).toNat * A035707 n

end

end A035882.P15779748621665717411

/-!
# A035883: Coordination sequence for diamond structure D^+_14. (Edges defined by l_1 norm = 1.)

The programs for A035883, there is no canonical definition to state claims against.
-/

/-! ## A035883.P12210845921427670697

`A000005(2*a(n-1)+9)%2*A035709(n)` with `a(0)=1`
-/

namespace A035883.P12210845921427670697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A000005 (2 * a (n - 1) + 9).toNat) 2 * A035709 n

end

end A035883.P12210845921427670697

/-!
# A035884: Coordination sequence for diamond structure D^+_16. (Edges defined by l_1 norm = 1.)

The programs for A035884, there is no canonical definition to state claims against.
-/

/-! ## A035884.P10536520678510282422

`A035711(n)*A080846(A003500(n))`
-/

namespace A035884.P10536520678510282422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035711 n * A080846 (A003500 n).toNat

end

end A035884.P10536520678510282422

/-! ## A035884.P11759761013547240893

`and(A014674(A081135(n)), A035711(n))`
-/

namespace A035884.P11759761013547240893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014674 (A081135 n).toNat) (A035711 n)

end

end A035884.P11759761013547240893

/-! ## A035884.P2861789517635603817

`and(A035711(n), A059285(A153294(n)))`
-/

namespace A035884.P2861789517635603817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035711 n) (A059285 (A153294 n).toNat)

end

end A035884.P2861789517635603817

/-!
# A035885: Coordination sequence for diamond structure D^+_18. (Edges defined by l_1 norm = 1.).

The programs for A035885, there is no canonical definition to state claims against.
-/

/-! ## A035885.P17747148349127480065

`A035185(A000244(n))*A035478(n)`
-/

namespace A035885.P17747148349127480065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A000244 n).toNat * A035478 n

end

end A035885.P17747148349127480065

/-! ## A035885.P4410611293049048154

`A035185(A000244(n))*A035713(n)`
-/

namespace A035885.P4410611293049048154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A000244 n).toNat * A035713 n

end

end A035885.P4410611293049048154

/-! ## A035885.P6293570699020902010

`A000035(A180483(n))*A035478(n)`
-/

namespace A035885.P6293570699020902010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A180483 n).toNat * A035478 n

end

end A035885.P6293570699020902010

/-! ## A035885.P17935146953595774506

`A000035(A180483(n))*A035713(n)`
-/

namespace A035885.P17935146953595774506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A180483 n).toNat * A035713 n

end

end A035885.P17935146953595774506

/-!
# A035886: Coordination sequence for diamond structure D^+_20. (Edges defined by l_1 norm = 1.).

The programs for A035886, there is no canonical definition to state claims against.
-/

/-! ## A035886.P14061477901375744445

`A035609(n)*A046978(A034472(n))`
-/

namespace A035886.P14061477901375744445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035609 n * A046978 (A034472 n).toNat

end

end A035886.P14061477901375744445

/-! ## A035886.P8208144971640171217

`A035715(n)*A046978(A034472(n))`
-/

namespace A035886.P8208144971640171217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035715 n * A046978 (A034472 n).toNat

end

end A035886.P8208144971640171217

/-! ## A035886.P8628600023266176488

`and(A035609(n), A105812(A291484(n)))`
-/

namespace A035886.P8628600023266176488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035609 n) (A105812 (A291484 n).toNat)

end

end A035886.P8628600023266176488

/-! ## A035886.P10466220236567952282

`and(A035715(n), A105812(A291484(n)))`
-/

namespace A035886.P10466220236567952282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035715 n) (A105812 (A291484 n).toNat)

end

end A035886.P10466220236567952282

/-! ## A035886.P16377623618350794087

`A035609(n)*A049240(A018782(n+2))`
-/

namespace A035886.P16377623618350794087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035609 n * A049240 (A018782 (n + 2)).toNat

end

end A035886.P16377623618350794087

/-!
# A035887: Coordination sequence for diamond structure D^+_22. (Edges defined by l_1 norm = 1.).

The programs for A035887, there is no canonical definition to state claims against.
-/

/-! ## A035887.P8191063182572880123

`A035717(n)^gcd(11, n)*char[2*n]`
-/

namespace A035887.P8191063182572880123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035717 n ^ Nat.gcd 11 n * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A035887.P8191063182572880123

/-! ## A035887.P3720016451522729583

`char[2*n]*A035717(A062399(n))`
-/

namespace A035887.P3720016451522729583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A035717 (A062399 n).toNat

end

end A035887.P3720016451522729583

/-! ## A035887.P9495410733503611034

`A000035(3*n+1)*A035611(A062399(n))`
-/

namespace A035887.P9495410733503611034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (3 * n + 1) * A035611 (A062399 n).toNat

end

end A035887.P9495410733503611034

/-! ## A035887.P4972879084675960221

`A035717(n)^A007318(A022168(n))*char[2*n]`
-/

namespace A035887.P4972879084675960221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035717 n : ℚ) ^ (A007318 (A022168 n).toNat : ℤ) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)

end

end A035887.P4972879084675960221

/-! ## A035887.P4801204911985438878

`A035717(n)^A007318(A097331(n))*char[2*n]`
-/

namespace A035887.P4801204911985438878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035717 n : ℚ) ^ (A007318 (A097331 n).toNat : ℤ) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)

end

end A035887.P4801204911985438878

/-!
# A035888: Coordination sequence for diamond structure D^+_24. (Edges defined by l_1 norm = 1.).

The programs for A035888, there is no canonical definition to state claims against.
-/

/-! ## A035888.P2711236594254872633

`A035719(n)*A071032(A001535(n))`
-/

namespace A035888.P2711236594254872633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035719 n * A071032 (A001535 n).toNat

end

end A035888.P2711236594254872633

/-! ## A035888.P10337678061348094980

`A035797(n)*A071032(A001535(n))`
-/

namespace A035888.P10337678061348094980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035797 n * A071032 (A001535 n).toNat

end

end A035888.P10337678061348094980

/-! ## A035888.P187814266301094033

`floor((A007318(A133221(n))*A035797(n))^(-1)^n)`
-/

namespace A035888.P187814266301094033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (A133221 n).toNat * A035797 n : ℚ) ^ ((-1) ^ n : ℤ)⌋

end

end A035888.P187814266301094033

/-! ## A035888.P10323099088816952937

`∑[(-1)^n]*record[A035797(A001222(2*n+1))]`
-/

namespace A035888.P10323099088816952937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035797 (A001222 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A035888.P10323099088816952937

/-!
# A035889: Coordination sequence for diamond structure D^+_26. (Edges defined by l_1 norm = 1.).

The programs for A035889, there is no canonical definition to state claims against.
-/

/-! ## A035889.P11658442269043233344

`A035721(n)*A133872(A278595(n))`
-/

namespace A035889.P11658442269043233344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035721 n * A133872 (A278595 n).toNat

end

end A035889.P11658442269043233344

/-! ## A035889.P12003405821634682048

`A035798(n)*A133872(A278595(n))`
-/

namespace A035889.P12003405821634682048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035798 n * A133872 (A278595 n).toNat

end

end A035889.P12003405821634682048

/-! ## A035889.P12235523988055563076

`lcm(A035721(n), A163805(A077741(n+1)))`
-/

namespace A035889.P12235523988055563076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035721 n) (A163805 (A077741 (n + 1)).toNat)

end

end A035889.P12235523988055563076

/-! ## A035889.P2700547434553423221

`and(A033999(A077741(n+1)), A035798(n))`
-/

namespace A035889.P2700547434553423221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A077741 (n + 1)).toNat) (A035798 n)

end

end A035889.P2700547434553423221

/-! ## A035889.P17867550331757092940

`and(A035721(n), A106400(A294205(n+1)))`
-/

namespace A035889.P17867550331757092940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035721 n) (A106400 (A294205 (n + 1)).toNat)

end

end A035889.P17867550331757092940

/-!
# A035890: Coordination sequence for diamond structure D^+_28. (Edges defined by l_1 norm = 1.).

The programs for A035890, there is no canonical definition to state claims against.
-/

/-! ## A035890.P17676611605287751116

`and(A035799(n), A280560(2^n-1+n))`
-/

namespace A035890.P17676611605287751116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035799 n) (A280560 ((2 ^ n : ℤ) - 1 + (n : ℤ)).toNat)

end

end A035890.P17676611605287751116

/-! ## A035890.P9964726428659580500

`A010052(A000079(n))*A035723(n)`
-/

namespace A035890.P9964726428659580500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000079 n).toNat * A035723 n

end

end A035890.P9964726428659580500

/-! ## A035890.P12595463975977348804

`A010052(A000079(n))*A035799(n)`
-/

namespace A035890.P12595463975977348804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000079 n).toNat * A035799 n

end

end A035890.P12595463975977348804

/-! ## A035890.P14987853340077825214

`A000035(A077168(n))*A035723(n)`
-/

namespace A035890.P14987853340077825214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A077168 n).toNat * A035723 n

end

end A035890.P14987853340077825214

/-! ## A035890.P1363243395701341125

`A000035(A077168(n))*A035799(n)`
-/

namespace A035890.P1363243395701341125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A077168 n).toNat * A035799 n

end

end A035890.P1363243395701341125

/-!
# A035891: Coordination sequence for diamond structure D^+_30. (Edges defined by l_1 norm = 1.).

The programs for A035891, there is no canonical definition to state claims against.
-/

/-! ## A035891.P12094048701491058894

`A000035(A187829(n+1))*A035725(n)`
-/

namespace A035891.P12094048701491058894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A187829 (n + 1)).toNat * A035725 n

end

end A035891.P12094048701491058894

/-! ## A035891.P3431753337662529041

`A000035(A187829(n+1))*A035800(n)`
-/

namespace A035891.P3431753337662529041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A187829 (n + 1)).toNat * A035800 n

end

end A035891.P3431753337662529041

/-! ## A035891.P8623608226316337841

`and(A033999(A187829(n+1)²), A035725(n))`
-/

namespace A035891.P8623608226316337841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A187829 (n + 1) ^ 2).toNat) (A035725 n)

end

end A035891.P8623608226316337841

/-! ## A035891.P13572045367416869199

`and(A033999(A187829(n+1)²), A035800(n))`
-/

namespace A035891.P13572045367416869199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A187829 (n + 1) ^ 2).toNat) (A035800 n)

end

end A035891.P13572045367416869199

/-! ## A035891.P5523681924775675611

`A035725(n)*A059841(A000975(n))`
-/

namespace A035891.P5523681924775675611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035725 n * A059841 (A000975 n).toNat

end

end A035891.P5523681924775675611

/-!
# A035892: Coordination sequence for diamond structure D^+_32. (Edges defined by l_1 norm = 1.).

The programs for A035892, there is no canonical definition to state claims against.
-/

/-! ## A035892.P9561410598612391963

`and(A033999((n+1)*Δ[n^3]), A035801(n))`
-/

namespace A035892.P9561410598612391963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat) (A035801 n)

end

end A035892.P9561410598612391963

/-! ## A035892.P5488475967766850182

`floor(A035801(A187829(n+1)-1)^(-1)^n)`
-/

namespace A035892.P5488475967766850182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035801 (A187829 (n + 1) - 1).toNat : ℚ) ^ ((-1) ^ n : ℤ)⌋

end

end A035892.P5488475967766850182

/-! ## A035892.P6428712155136610367

`lcm(A035727(n), A057078(A131577(n)))`
-/

namespace A035892.P6428712155136610367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035727 n) (A057078 (A131577 n).toNat)

end

end A035892.P6428712155136610367

/-! ## A035892.P3929124273779097394

`and(A035801(n), A057078(A131577(n)))`
-/

namespace A035892.P3929124273779097394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035801 n) (A057078 (A131577 n).toNat)

end

end A035892.P3929124273779097394

/-!
# A035893: Coordination sequence for diamond structure D^+_34. (Edges defined by l_1 norm = 1.).

The programs for A035893, there is no canonical definition to state claims against.
-/

/-! ## A035893.P1748109381668722102

`A035263(2^n)*A035729(n)`
-/

namespace A035893.P1748109381668722102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 ^ n) * A035729 n

end

end A035893.P1748109381668722102

/-! ## A035893.P2259361050565473517

`and(A033999(A038754(n)), A035729(n))`
-/

namespace A035893.P2259361050565473517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A038754 n).toNat) (A035729 n)

end

end A035893.P2259361050565473517

/-! ## A035893.P4686212451017592812

`A035729(n)*A343029(abs(ceil((-2)^(n-2))))`
-/

namespace A035893.P4686212451017592812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035729 n * A343029 |⌈(-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉|.toNat

end

end A035893.P4686212451017592812

/-! ## A035893.P1799063885502807654

`and(A011594(ceil(2^(n-1))), A035729(n))`
-/

namespace A035893.P1799063885502807654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011594 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A035729 n)

end

end A035893.P1799063885502807654

/-! ## A035893.P15292619395161997428

`A035729(n)*A322308(A318651(n+1))`
-/

namespace A035893.P15292619395161997428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035729 n * A322308 (A318651 (n + 1)).toNat

end

end A035893.P15292619395161997428

/-!
# A035894: Coordination sequence for diamond structure D^+_36. (Edges defined by l_1 norm = 1.).

The programs for A035894, there is no canonical definition to state claims against.
-/

/-! ## A035894.P10528119852524039647

`A000035(A254006(n))*A035731(n)`
-/

namespace A035894.P10528119852524039647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A254006 n).toNat * A035731 n

end

end A035894.P10528119852524039647

/-! ## A035894.P14046390924170296955

`lcm(A035731(n), A309970(A160724(n)))`
-/

namespace A035894.P14046390924170296955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035731 n) (A309970 (A160724 n).toNat)

end

end A035894.P14046390924170296955

/-! ## A035894.P5024959526652688020

`A035731(n)*A309970(n*A160724(n))`
-/

namespace A035894.P5024959526652688020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035731 n * A309970 ((n : ℤ) * A160724 n).toNat

end

end A035894.P5024959526652688020

/-! ## A035894.P15647868089674785127

`A035263(2^n)*A035731(n)`
-/

namespace A035894.P15647868089674785127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 ^ n) * A035731 n

end

end A035894.P15647868089674785127

/-! ## A035894.P1504708848276304065

`A000035(A051293(n+1))*A035731(n)`
-/

namespace A035894.P1504708848276304065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A051293 (n + 1)).toNat * A035731 n

end

end A035894.P1504708848276304065

/-!
# A035895: Coordination sequence for diamond structure D^+_38. (Edges defined by l_1 norm = 1.).

The programs for A035895, there is no canonical definition to state claims against.
-/

/-! ## A035895.P5108971067941924264

`A035263(2^n)*A035733(n)`
-/

namespace A035895.P5108971067941924264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 ^ n) * A035733 n

end

end A035895.P5108971067941924264

/-! ## A035895.P4814503096706850398

`A000035(A187829(n+1))*A035733(n)`
-/

namespace A035895.P4814503096706850398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A187829 (n + 1)).toNat * A035733 n

end

end A035895.P4814503096706850398

/-! ## A035895.P8600422869004556057

`(A035733(n)-A103222(10^A193739(n))²)*char[2*n]`
-/

namespace A035895.P8600422869004556057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035733 n - A103222 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A193739 n : ℤ))).toNat ^ 2) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A035895.P8600422869004556057

/-! ## A035895.P3466145458656349671

`A000035(A077168(n))*A035733(n)`
-/

namespace A035895.P3466145458656349671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A077168 n).toNat * A035733 n

end

end A035895.P3466145458656349671

/-! ## A035895.P10200750887338562005

`A035733(n)*A056594(A084639(n))`
-/

namespace A035895.P10200750887338562005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035733 n * A056594 (A084639 n).toNat

end

end A035895.P10200750887338562005

/-!
# A035896: Coordination sequence for diamond structure D^+_40. (Edges defined by l_1 norm = 1.).

The programs for A035896, there is no canonical definition to state claims against.
-/

/-! ## A035896.P9028170484764635385

`lcm(A035735(n), A292371(A000079(n)))`
-/

namespace A035896.P9028170484764635385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035735 n) (A292371 (A000079 n).toNat)

end

end A035896.P9028170484764635385

/-! ## A035896.P12876554746561290323

`A000035(A187829(n+1))*A035735(n)`
-/

namespace A035896.P12876554746561290323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A187829 (n + 1)).toNat * A035735 n

end

end A035896.P12876554746561290323

/-! ## A035896.P4171370500811864797

`A010059(A000225(n))*A035735(n)`
-/

namespace A035896.P4171370500811864797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A000225 n).toNat * A035735 n

end

end A035896.P4171370500811864797

/-! ## A035896.P13171017372374437066

`A035735(n)*A316524(A000079(n+1))`
-/

namespace A035896.P13171017372374437066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035735 n * A316524 (A000079 (n + 1)).toNat

end

end A035896.P13171017372374437066

/-! ## A035896.P7708624385750893549

`A011655(A286521(n))*A035735(n)`
-/

namespace A035896.P7708624385750893549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A286521 n).toNat * A035735 n

end

end A035896.P7708624385750893549

/-!
# A035897: Coordination sequence for diamond structure D^+_42. (Edges defined by l_1 norm = 1.).

The programs for A035897, there is no canonical definition to state claims against.
-/

/-! ## A035897.P10812167171813899965

`A000035(A016994(n))*A035737(n)`
-/

namespace A035897.P10812167171813899965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A016994 n).toNat * A035737 n

end

end A035897.P10812167171813899965

/-! ## A035897.P3835689533874684111

`A010060(∑[2^n])*A035737(n)`
-/

namespace A035897.P3835689533874684111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (∑ j ∈ Finset.range (n + 1), f1 j) * A035737 n

end

end A035897.P3835689533874684111

/-! ## A035897.P5635155839920027153

`A000035(abs(∑[(-2)^n])+n)*A035737(n)`
-/

namespace A035897.P5635155839920027153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (|∑ j ∈ Finset.range (n + 1), f1 j| + (n : ℤ)).toNat * A035737 n

end

end A035897.P5635155839920027153

/-! ## A035897.P9683014178631661623

`A035737(n)*A165560(A033429(3*(n+1)))`
-/

namespace A035897.P9683014178631661623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035737 n * A165560 (A033429 (3 * (n + 1))).toNat

end

end A035897.P9683014178631661623

/-! ## A035897.P7649393745695210504

`A035737(n)*(1-A037845(A007283(n)))`
-/

namespace A035897.P7649393745695210504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035737 n * (1 - A037845 (A007283 n).toNat)

end

end A035897.P7649393745695210504

/-!
# A035898: Coordination sequence for diamond structure D^+_44. (Edges defined by l_1 norm = 1.).

The programs for A035898, there is no canonical definition to state claims against.
-/

/-! ## A035898.P908580984656501835

`and(A035739(n), A087960(A016886(n)))`
-/

namespace A035898.P908580984656501835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035739 n) (A087960 (A016886 n).toNat)

end

end A035898.P908580984656501835

/-! ## A035898.P3990557356375682161

`A000035(A016994(n))*A035739(n)`
-/

namespace A035898.P3990557356375682161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A016994 n).toNat * A035739 n

end

end A035898.P3990557356375682161

/-! ## A035898.P6038019713860041973

`A035203(A000079(n))*A035739(n)`
-/

namespace A035898.P6038019713860041973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035203 (A000079 n).toNat * A035739 n

end

end A035898.P6038019713860041973

/-! ## A035898.P13741478531766792882

`A035739(n)*A068716(A014551(n))`
-/

namespace A035898.P13741478531766792882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035739 n * A068716 (A014551 n).toNat

end

end A035898.P13741478531766792882

/-! ## A035898.P10520685364446786876

`A035739(n)*A151666(A097163(n))`
-/

namespace A035898.P10520685364446786876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035739 n * A151666 (A097163 n).toNat

end

end A035898.P10520685364446786876

/-!
# A035899: Coordination sequence for diamond structure D^+_46. (Edges defined by l_1 norm = 1.).

The programs for A035899, there is no canonical definition to state claims against.
-/

/-! ## A035899.P17136960972168437263

`and(A005590(A070875(n)), A035741(n))`
-/

namespace A035899.P17136960972168437263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005590 (A070875 n).toNat) (A035741 n)

end

end A035899.P17136960972168437263

/-! ## A035899.P601183434696797592

`A035741(n)*A039982(A246677(3*(n+1)))`
-/

namespace A035899.P601183434696797592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035741 n * A039982 (A246677 (3 * (n + 1))).toNat

end

end A035899.P601183434696797592

/-! ## A035899.P14786462071257444186

`A000035(A035522(n))*A035741(n)`
-/

namespace A035899.P14786462071257444186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A035522 n).toNat * A035741 n

end

end A035899.P14786462071257444186

/-! ## A035899.P15243769524345933750

`and(1, A341515(2^n+1))*A035741(n)`
-/

namespace A035899.P15243769524345933750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A341515 (2 ^ n + 1)) * A035741 n

end

end A035899.P15243769524345933750

/-! ## A035899.P1459369589849383943

`A010059(A000225(n))*A035741(n)`
-/

namespace A035899.P1459369589849383943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A000225 n).toNat * A035741 n

end

end A035899.P1459369589849383943

