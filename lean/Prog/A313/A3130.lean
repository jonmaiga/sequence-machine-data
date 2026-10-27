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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
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
# A313000: Coordination sequence Gal.6.392.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313000, there is no canonical definition to state claims against.
-/

/-! ## A313000.P4196503986700173114

`A313004(n)-A309144(A102777(n+1))`
-/

namespace A313000.P4196503986700173114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313004 n - A309144 (A102777 (n + 1)).toNat

end

end A313000.P4196503986700173114

/-! ## A313000.P17607121442506886579

`A314192(A087051(n))-n`
-/

namespace A313000.P17607121442506886579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314192 (A087051 n).toNat - (n : ℤ)

end

end A313000.P17607121442506886579

/-! ## A313000.P4813155893923020292

`A314193(A227549(n+1))-n`
-/

namespace A313000.P4813155893923020292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314193 (A227549 (n + 1)).toNat - (n : ℤ)

end

end A313000.P4813155893923020292

/-! ## A313000.P10641507726433721464

`A301293(n)-A086008(A220337(n+1))`
-/

namespace A313000.P10641507726433721464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A086008 (A220337 (n + 1)).toNat

end

end A313000.P10641507726433721464

/-!
# A313001: Coordination sequence Gal.6.553.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313001, there is no canonical definition to state claims against.
-/

/-! ## A313001.P526950353249431387

`A193910(n+1)-A264990(A247620(n))`
-/

namespace A313001.P526950353249431387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193910 (n + 1) - A264990 (A247620 n).toNat

end

end A313001.P526950353249431387

/-! ## A313001.P12095126750720839146

`∑[A318928(A027992(n))]`
-/

namespace A313001.P12095126750720839146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (A027992 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313001.P12095126750720839146

/-! ## A313001.P13610005508583310293

`A111660(2*A313054(n))`
-/

namespace A313001.P13610005508583310293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A313054 n).toNat

end

end A313001.P13610005508583310293

/-! ## A313001.P1126339226588102120

`A005245(A055217(n))+n`
-/

namespace A313001.P1126339226588102120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (A055217 n).toNat + (n : ℤ)

end

end A313001.P1126339226588102120

/-! ## A313001.P18261517716523622301

`∑[A318928(∑[A053220(n+1)])]`
-/

namespace A313001.P18261517716523622301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313001.P18261517716523622301

/-!
# A313002: Coordination sequence Gal.6.553.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313002, there is no canonical definition to state claims against.
-/

/-! ## A313002.P17147782032806532480

`A312895(n)+A007814(A120588(n))`
-/

namespace A313002.P17147782032806532480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n + A007814 (A120588 n).toNat

end

end A313002.P17147782032806532480

/-! ## A313002.P4006343989461613477

`A311737(n)+A277143(A052545(n))`
-/

namespace A313002.P4006343989461613477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311737 n + A277143 (A052545 n).toNat

end

end A313002.P4006343989461613477

/-! ## A313002.P16378788299421484372

`A311261(n)+A021823(A042067(n))`
-/

namespace A313002.P16378788299421484372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311261 n + A021823 (A042067 n).toNat

end

end A313002.P16378788299421484372

/-! ## A313002.P12483025543326575739

`A356898(A368097(n))+A311349(n)`
-/

namespace A313002.P12483025543326575739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356898 (A368097 n).toNat + A311349 n

end

end A313002.P12483025543326575739

/-! ## A313002.P9000480082408739508

`A301293(n)-A007949(A275679(n))`
-/

namespace A313002.P9000480082408739508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A007949 (A275679 n).toNat

end

end A313002.P9000480082408739508

/-!
# A313003: Coordination sequence Gal.6.392.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313003, there is no canonical definition to state claims against.
-/

/-! ## A313003.P10971309417156165152

`A313004(n)-A295308(A092144(n+1))`
-/

namespace A313003.P10971309417156165152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313004 n - A295308 (A092144 (n + 1)).toNat

end

end A313003.P10971309417156165152

/-! ## A313003.P13819061373244483673

`A313004(n)-A172542(A016116(n))`
-/

namespace A313003.P13819061373244483673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313004 n - A172542 (A016116 n).toNat

end

end A313003.P13819061373244483673

/-! ## A313003.P6925368597756326831

`A314224(n)-record[A001222(A314940(n))]`
-/

namespace A313003.P6925368597756326831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A314940 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314224 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313003.P6925368597756326831

/-! ## A313003.P12418824301191233933

`A311950(n)+A014707(A000110(n))`
-/

namespace A313003.P12418824301191233933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311950 n + A014707 (A000110 n).toNat

end

end A313003.P12418824301191233933

/-!
# A313004: Coordination sequence Gal.6.213.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313004, there is no canonical definition to state claims against.
-/

/-! ## A313004.P10975631867885682393

`A313003(n)+A295308(A092144(n+1))`
-/

namespace A313004.P10975631867885682393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313003 n + A295308 (A092144 (n + 1)).toNat

end

end A313004.P10975631867885682393

/-! ## A313004.P9641486156837985703

`A313003(n)+A172542(A016116(n))`
-/

namespace A313004.P9641486156837985703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313003 n + A172542 (A016116 n).toNat

end

end A313004.P9641486156837985703

/-! ## A313004.P16961049435972417130

`A313003(n)+A266174(A020114(n))`
-/

namespace A313004.P16961049435972417130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313003 n + A266174 (A020114 n).toNat

end

end A313004.P16961049435972417130

/-! ## A313004.P16682520108635809000

`A313003(n)+A085979(A002805(n+1))`
-/

namespace A313004.P16682520108635809000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313003 n + A085979 (A002805 (n + 1)).toNat

end

end A313004.P16682520108635809000

/-! ## A313004.P2364335489121645306

`A286066(3*n+2)-A001221(A058396(n+3))`
-/

namespace A313004.P2364335489121645306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286066 (3 * n + 2) - A001221 (A058396 (n + 3)).toNat

end

end A313004.P2364335489121645306

/-!
# A313005: Coordination sequence Gal.5.252.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313005, there is no canonical definition to state claims against.
-/

/-! ## A313005.P17885143510710107289

`xor(A266982(A025530(n+1)), A312386(n))`
-/

namespace A313005.P17885143510710107289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A266982 (A025530 (n + 1)).toNat) (A312386 n)

end

end A313005.P17885143510710107289

/-! ## A313005.P10399593579368306547

`A344710(A313179(n))-char[A334296(n)+3]`
-/

namespace A313005.P10399593579368306547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334296 n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344710 (A313179 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A313005.P10399593579368306547

/-! ## A313005.P5209085297191398507

`A229302(3*(n+1))-A087204(A206659(n+1))`
-/

namespace A313005.P5209085297191398507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229302 (3 * (n + 1)) - A087204 (A206659 (n + 1)).toNat

end

end A313005.P5209085297191398507

/-! ## A313005.P17796336053121382619

`A344710(A313179(n))-A004525(A057354(n))`
-/

namespace A313005.P17796336053121382619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344710 (A313179 n).toNat - A004525 (A057354 n).toNat

end

end A313005.P17796336053121382619

/-! ## A313005.P7685652612101438779

`A313010(n)-A178798(A313010(2*n))`
-/

namespace A313005.P7685652612101438779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313010 n - A178798 (A313010 (2 * n)).toNat

end

end A313005.P7685652612101438779

/-!
# A313006: Coordination sequence Gal.6.388.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313006, there is no canonical definition to state claims against.
-/

/-! ## A313006.P2389691090486815909

`A315983(n)-A109925(A213292(n))`
-/

namespace A313006.P2389691090486815909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315983 n - A109925 (A213292 n).toNat

end

end A313006.P2389691090486815909

/-! ## A313006.P10818524185224298485

`A349797(A055999(n+2))+A301688(n)`
-/

namespace A313006.P10818524185224298485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (A055999 (n + 2)).toNat + A301688 n

end

end A313006.P10818524185224298485

/-! ## A313006.P6017997778258309407

`or(A109925(A256516(n+1)), A312295(n))`
-/

namespace A313006.P6017997778258309407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109925 (A256516 (n + 1)).toNat) (A312295 n)

end

end A313006.P6017997778258309407

/-!
# A313007: Coordination sequence Gal.6.458.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313007, there is no canonical definition to state claims against.
-/

/-! ## A313007.P7896299442539122440

`A313184(n)-A001222(A320921(n))`
-/

namespace A313007.P7896299442539122440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313184 n - A001222 (A320921 n).toNat

end

end A313007.P7896299442539122440

/-!
# A313008: Coordination sequence Gal.5.234.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313008, there is no canonical definition to state claims against.
-/

/-! ## A313008.P4332530161398780569

`A311738(n)+A109038(A126063(n))`
-/

namespace A313008.P4332530161398780569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311738 n + A109038 (A126063 n).toNat

end

end A313008.P4332530161398780569

/-! ## A313008.P17951646099909724221

`A319000(A313017(2*(n+1)))+A313007(n)`
-/

namespace A313008.P17951646099909724221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319000 (A313017 (2 * (n + 1))).toNat + A313007 n

end

end A313008.P17951646099909724221

/-! ## A313008.P11913488163812584836

`A109038(A126063(n))+A313184(n)-A001221(n!)`
-/

namespace A313008.P11913488163812584836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109038 (A126063 n).toNat + (A313184 n - A001221 (Nat.factorial n))

end

end A313008.P11913488163812584836

/-!
# A313009: Coordination sequence Gal.6.30.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313009, there is no canonical definition to state claims against.
-/

/-! ## A313009.P3922961886411701805

`A312328(n)-A056594(A151417(n))`
-/

namespace A313009.P3922961886411701805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312328 n - A056594 (A151417 n).toNat

end

end A313009.P3922961886411701805

/-! ## A313009.P3483081960533628860

`A313010(n)-A266174(A020114(n))`
-/

namespace A313009.P3483081960533628860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313010 n - A266174 (A020114 n).toNat

end

end A313009.P3483081960533628860

/-! ## A313009.P11796476623375609204

`A313010(n)-A210718(A137507(n))`
-/

namespace A313009.P11796476623375609204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313010 n - A210718 (A137507 n).toNat

end

end A313009.P11796476623375609204

/-! ## A313009.P10849054085786178562

`A313010(n)+A178798(A038878(n+1))`
-/

namespace A313009.P10849054085786178562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313010 n + A178798 (A038878 (n + 1)).toNat

end

end A313009.P10849054085786178562

/-! ## A313009.P16299271727779218711

`A250120(n)-A182797(A274451(3*n+4))`
-/

namespace A313009.P16299271727779218711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A182797 (A274451 (3 * n + 4)).toNat

end

end A313009.P16299271727779218711

/-!
# A313010: Coordination sequence Gal.6.476.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313010, there is no canonical definition to state claims against.
-/

/-! ## A313010.P4455220932194605375

`A313526(n)-A005171(A095499(n))`
-/

namespace A313010.P4455220932194605375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313526 n - A005171 (A095499 n).toNat

end

end A313010.P4455220932194605375

/-! ## A313010.P13507457822150252962

`A313062(n)-A073068(A176490(n)²)`
-/

namespace A313010.P13507457822150252962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313062 n - A073068 (A176490 n ^ 2).toNat

end

end A313010.P13507457822150252962

/-! ## A313010.P16094347327453939848

`A313526(n)-A356296(A105060(3*(n+1)))`
-/

namespace A313010.P16094347327453939848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313526 n - A356296 (A105060 (3 * (n + 1))).toNat

end

end A313010.P16094347327453939848

/-! ## A313010.P1567511001434175487

`A250120(n)-A355536(A003335(2*n+3))`
-/

namespace A313010.P1567511001434175487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A355536 (A003335 (2 * n + 3)).toNat

end

end A313010.P1567511001434175487

/-! ## A313010.P13512687413694314140

`A313078(n)-A001221(A047691(n))`
-/

namespace A313010.P13512687413694314140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313078 n - A001221 (A047691 n).toNat

end

end A313010.P13512687413694314140

/-!
# A313011: Coordination sequence Gal.6.465.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313011, there is no canonical definition to state claims against.
-/

/-! ## A313011.P739084459407726122

`A312905(n)+A034093(A005773(n))`
-/

namespace A313011.P739084459407726122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312905 n + A034093 (A005773 n).toNat

end

end A313011.P739084459407726122

/-! ## A313011.P17966734153141790311

`A311371(n)+A001221(A340355(n))`
-/

namespace A313011.P17966734153141790311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311371 n + A001221 (A340355 n).toNat

end

end A313011.P17966734153141790311

/-! ## A313011.P14056761607782390928

`A313217(n)-A001222(A141626(n))`
-/

namespace A313011.P14056761607782390928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313217 n - A001222 (A141626 n).toNat

end

end A313011.P14056761607782390928

/-! ## A313011.P11029963022489856560

`A313710(n)-A001221(A241775(n+5))`
-/

namespace A313011.P11029963022489856560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313710 n - A001221 (A241775 (n + 5)).toNat

end

end A313011.P11029963022489856560

/-!
# A313012: Coordination sequence Gal.6.315.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313012, there is no canonical definition to state claims against.
-/

/-! ## A313012.P6268702097650193906

`A301670(n)+A087436(A015446(n))`
-/

namespace A313012.P6268702097650193906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301670 n + A087436 (A015446 n).toNat

end

end A313012.P6268702097650193906

/-! ## A313012.P358265258430665694

`A312302(n)+A076869(A076112(n+1))`
-/

namespace A313012.P358265258430665694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312302 n + A076869 (A076112 (n + 1)).toNat

end

end A313012.P358265258430665694

/-! ## A313012.P7126766524450958651

`A250120(n)-A228716(A038613(2*(n+2)))`
-/

namespace A313012.P7126766524450958651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A228716 (A038613 (2 * (n + 2))).toNat

end

end A313012.P7126766524450958651

/-!
# A313013: Coordination sequence Gal.6.301.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313013, there is no canonical definition to state claims against.
-/

/-! ## A313013.P17607074760910744841

`∑[A272636(A002878(n))]`
-/

namespace A313013.P17607074760910744841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272636 (A002878 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313013.P17607074760910744841

/-! ## A313013.P4247728984550753371

`∑[A272636(sqrt(A081071(n)))]`
-/

namespace A313013.P4247728984550753371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272636 (SequenceMachineLib.roundAway (Real.sqrt (A081071 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313013.P4247728984550753371

/-! ## A313013.P477966544108483331

`∑[A272636(A000032(Δ[n²]))]`
-/

namespace A313013.P477966544108483331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272636 (A000032 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313013.P477966544108483331

/-! ## A313013.P1986617422278724782

`∑[A272636(Δ[A000032(2*n)])]`
-/

namespace A313013.P1986617422278724782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272636 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313013.P1986617422278724782

/-! ## A313013.P15991699026901344394

`∑[A272636(A000204(2*n+1))]`
-/

namespace A313013.P15991699026901344394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272636 (A000204 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313013.P15991699026901344394

/-!
# A313014: Coordination sequence Gal.6.358.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313014, there is no canonical definition to state claims against.
-/

/-! ## A313014.P6377316770244881994

`A311673(n)+A001222(A005191(n))`
-/

namespace A313014.P6377316770244881994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311673 n + A001222 (A005191 n).toNat

end

end A313014.P6377316770244881994

/-! ## A313014.P14208399726654214991

`A298024(n)+A057078(A032095(n+1))`
-/

namespace A313014.P14208399726654214991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + A057078 (A032095 (n + 1)).toNat

end

end A313014.P14208399726654214991

/-! ## A313014.P12621617656771005485

`A312916(n)-A016389(A312744(3*n))`
-/

namespace A313014.P12621617656771005485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312916 n - A016389 (A312744 (3 * n)).toNat

end

end A313014.P12621617656771005485

/-! ## A313014.P15372839424857091677

`xor(A286665(A224664(n+1)), A312708(n))`
-/

namespace A313014.P15372839424857091677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A286665 (A224664 (n + 1)).toNat) (A312708 n)

end

end A313014.P15372839424857091677

/-! ## A313014.P16073762108308958760

`lt[A331348(A013948(n+1)), A003842(n)]`
-/

namespace A313014.P16073762108308958760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331348 (A013948 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A313014.P16073762108308958760

/-!
# A313015: Coordination sequence Gal.6.365.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313015, there is no canonical definition to state claims against.
-/

/-! ## A313015.P17330744574660201556

`A313466(n)+A238468(2*n)`
-/

namespace A313015.P17330744574660201556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313466 n + A238468 (2 * n)

end

end A313015.P17330744574660201556

/-! ## A313015.P6916025942186998547

`A238468(A004277(n))+A313466(n)`
-/

namespace A313015.P6916025942186998547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238468 (A004277 n).toNat + A313466 n

end

end A313015.P6916025942186998547

/-!
# A313016: Coordination sequence Gal.5.189.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313016, there is no canonical definition to state claims against.
-/

/-! ## A313016.P4532396167574770068

`(A310391(n)+A301674(n))/2`
-/

namespace A313016.P4532396167574770068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310391 n + A301674 n : ℚ) / 2

end

end A313016.P4532396167574770068

/-! ## A313016.P7269466972043275594

`(A310391(n)+A301674(n))*2^A133574(gcd(n, n+1))`
-/

namespace A313016.P7269466972043275594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310391 n + A301674 n : ℚ) * (2 : ℚ) ^ (A133574 (Nat.gcd n (n + 1)) : ℤ)

end

end A313016.P7269466972043275594

/-! ## A313016.P2530889005604007024

`A301674(n)+A004525(A310391(n)-A301674(n))`
-/

namespace A313016.P2530889005604007024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301674 n + A004525 (A310391 n - A301674 n).toNat

end

end A313016.P2530889005604007024

/-! ## A313016.P13362992271026634819

`A301674(n)+A097140(A310391(n)-A301674(n))`
-/

namespace A313016.P13362992271026634819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301674 n + A097140 (A310391 n - A301674 n).toNat

end

end A313016.P13362992271026634819

/-! ## A313016.P5456727269245290438

`A004525(A310391(n)+A301674(n))`
-/

namespace A313016.P5456727269245290438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310391 n + A301674 n).toNat

end

end A313016.P5456727269245290438

/-! ## A313016.P15914179128249645273

`A097140(A310391(n)+A301674(n))`
-/

namespace A313016.P15914179128249645273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A310391 n + A301674 n).toNat

end

end A313016.P15914179128249645273

/-!
# A313017: Coordination sequence Gal.5.192.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313017, there is no canonical definition to state claims against.
-/

/-! ## A313017.P5848590672676167773

`A313016(n)+A185284(A213518(n+1))`
-/

namespace A313017.P5848590672676167773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313016 n + A185284 (A213518 (n + 1)).toNat

end

end A313017.P5848590672676167773

/-!
# A313018: Coordination sequence Gal.5.288.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313018, there is no canonical definition to state claims against.
-/

/-! ## A313018.P1259062020025506248

`A321177(n+1)+A066272(A003592(n+1))`
-/

namespace A313018.P1259062020025506248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321177 (n + 1) + A066272 (A003592 (n + 1)).toNat

end

end A313018.P1259062020025506248

/-! ## A313018.P12972270409954262556

`A313019(A087051(n))`
-/

namespace A313018.P12972270409954262556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313019 (A087051 n).toNat

end

end A313018.P12972270409954262556

/-! ## A313018.P17919791717023044596

`A313019(A227549(n+1))`
-/

namespace A313018.P17919791717023044596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313019 (A227549 (n + 1)).toNat

end

end A313018.P17919791717023044596

/-! ## A313018.P12254249876377282930

`A313019(A396204(n+1))`
-/

namespace A313018.P12254249876377282930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313019 (A396204 (n + 1)).toNat

end

end A313018.P12254249876377282930

/-! ## A313018.P5064820005864222324

`A313019(n^A213217(n))`
-/

namespace A313018.P5064820005864222324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313019 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A213217 n : ℤ))).toNat

end

end A313018.P5064820005864222324

/-!
# A313020: Coordination sequence Gal.5.146.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313020, there is no canonical definition to state claims against.
-/

/-! ## A313020.P17128110826787902544

`A314261(n)-A047263(n+1)`
-/

namespace A313020.P17128110826787902544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314261 n - A047263 (n + 1)

end

end A313020.P17128110826787902544

/-! ## A313020.P3221517938493003511

`A314261(n)-A004396(A265227(n+1))`
-/

namespace A313020.P3221517938493003511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314261 n - A004396 (A265227 (n + 1)).toNat

end

end A313020.P3221517938493003511

/-! ## A313020.P17037692769098640489

`A314261(n)-A057354(A033627(n+2))`
-/

namespace A313020.P17037692769098640489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314261 n - A057354 (A033627 (n + 2)).toNat

end

end A313020.P17037692769098640489

/-! ## A313020.P14574986131368193137

`A314261(n)-A059995(A017581(n))`
-/

namespace A313020.P14574986131368193137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314261 n - A059995 (A017581 n).toNat

end

end A313020.P14574986131368193137

/-! ## A313020.P13215973610569875928

`A314261(n)-A059995(A008574(3*n+1))`
-/

namespace A313020.P13215973610569875928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314261 n - A059995 (A008574 (3 * n + 1)).toNat

end

end A313020.P13215973610569875928

/-!
# A313021: Coordination sequence Gal.6.386.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313021, there is no canonical definition to state claims against.
-/

/-! ## A313021.P12855324283426037720

`A313167(n)-A003982(A163912(n))`
-/

namespace A313021.P12855324283426037720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313167 n - A003982 (A163912 n).toNat

end

end A313021.P12855324283426037720

/-! ## A313021.P4990471753085194346

`A313167(n)-A024326(A132407(n+1))`
-/

namespace A313021.P4990471753085194346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313167 n - A024326 (A132407 (n + 1)).toNat

end

end A313021.P4990471753085194346

/-! ## A313021.P16756929285794855425

`A313167(n)-A278701(A278698(n+1))`
-/

namespace A313021.P16756929285794855425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313167 n - A278701 (A278698 (n + 1)).toNat

end

end A313021.P16756929285794855425

/-! ## A313021.P8320079762113338878

`A313167(n)-A278701(A278699(n+1))`
-/

namespace A313021.P8320079762113338878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313167 n - A278701 (A278699 (n + 1)).toNat

end

end A313021.P8320079762113338878

/-!
# A313022: Coordination sequence Gal.6.375.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313022, there is no canonical definition to state claims against.
-/

/-! ## A313022.P811175071873300204

`A314875(n)-A343959(A258318(2*n+3))`
-/

namespace A313022.P811175071873300204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314875 n - A343959 (A258318 (2 * n + 3)).toNat

end

end A313022.P811175071873300204

/-! ## A313022.P12151655872210668014

`eq[A073058(n+1), A081086(A227690(n))]`
-/

namespace A313022.P12151655872210668014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081086 (A227690 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A313022.P12151655872210668014

/-! ## A313022.P18115198525091814041

`A332502(A076276(n))+A000201(2*n+1)`
-/

namespace A313022.P18115198525091814041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332502 (A076276 n).toNat + A000201 (2 * n + 1)

end

end A313022.P18115198525091814041

/-! ## A313022.P5438637357350934644

`eq[A073058(n+1), A078178(A240039(n+1))]`
-/

namespace A313022.P5438637357350934644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078178 (A240039 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A313022.P5438637357350934644

/-!
# A313023: Coordination sequence Gal.6.130.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313023, the canonical program `A313023.P12828604169227298714` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313023 has offset 0).

The definition of A313023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313023.P12828604169227298714

`A004525(A004396(n))+A313228(n)-A004396(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313023

/-- `A004525(A004396(n))+A313228(n)-A004396(n)` -/
def P12828604169227298714.Spec : Prop :=
  ∀ n, P12828604169227298714.a n = A313023 n

theorem P12828604169227298714.correct : P12828604169227298714.Spec := by
  intro n
  simp only [A313023]

end A313023

/-! ## A313023.P14464629262992091920

`A008458(n)+A008486(n)-A314726(n)`
-/

namespace A313023.P14464629262992091920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314726 n)

end

end A313023.P14464629262992091920

namespace A313023

/-- `A008458(n)+A008486(n)-A314726(n)` -/
def P14464629262992091920.Spec : Prop :=
  ∀ n, P14464629262992091920.a n = A313023 n

end A313023

/-! ## A313023.P211483378933184820

`A313729(n)-A004525(n)`
-/

namespace A313023.P211483378933184820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313729 n - A004525 n

end

end A313023.P211483378933184820

namespace A313023

/-- `A313729(n)-A004525(n)` -/
def P211483378933184820.Spec : Prop :=
  ∀ n, P211483378933184820.a n = A313023 n

end A313023

/-! ## A313023.P6637940052315293929

`A313693(n)-A004525(A128834(n)+n)`
-/

namespace A313023.P6637940052315293929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n - A004525 (A128834 n + (n : ℤ)).toNat

end

end A313023.P6637940052315293929

namespace A313023

/-- `A313693(n)-A004525(A128834(n)+n)` -/
def P6637940052315293929.Spec : Prop :=
  ∀ n, P6637940052315293929.a n = A313023 n

end A313023

/-! ## A313023.P17357301389054186321

`A313859(n)-A004396(n)`
-/

namespace A313023.P17357301389054186321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313859 n - A004396 n

end

end A313023.P17357301389054186321

namespace A313023

/-- `A313859(n)-A004396(n)` -/
def P17357301389054186321.Spec : Prop :=
  ∀ n, P17357301389054186321.a n = A313023 n

theorem P17357301389054186321.correct : P17357301389054186321.Spec := by
  intro n
  simp only [A313023, Nat.add_sub_cancel, A313023.P17357301389054186321.a, A313023.P12828604169227298714.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A313228, A313228.P2561284602986671939.a, A313859, A313859.P12307385577830529968.f1, A313859.P12307385577830529968.a, A021913, A021913.P3902253882929539198.a, A314884, A314884.P14768008204403589957.a, A008458, A008458.P10936398443463225625.a, A008576, A008576.P14557774928279059610.a, A311196, A311196.P10875495913881152623.a, A312896, A312896.P16473508619976293498.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313023

/-! ## A313023.P15585684104737731054

`A313859(n)-A002264(2*n+1)`
-/

namespace A313023.P15585684104737731054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313859 n - A002264 (2 * n + 1)

end

end A313023.P15585684104737731054

namespace A313023

/-- `A313859(n)-A002264(2*n+1)` -/
def P15585684104737731054.Spec : Prop :=
  ∀ n, P15585684104737731054.a n = A313023 n

theorem P15585684104737731054.correct : P15585684104737731054.Spec := by
  intro n
  simp only [A313023, Nat.add_sub_cancel, A313023.P15585684104737731054.a, A313023.P12828604169227298714.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A313228, A313228.P2561284602986671939.a, A313859, A313859.P12307385577830529968.f1, A313859.P12307385577830529968.a, A021913, A021913.P3902253882929539198.a, A314884, A314884.P14768008204403589957.a, A008458, A008458.P10936398443463225625.a, A008576, A008576.P14557774928279059610.a, A311196, A311196.P10875495913881152623.a, A312896, A312896.P16473508619976293498.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313023

/-! ## A313023.P13170992485767992314

`A313778(n)-A004396(2*A004525(n))`
-/

namespace A313023.P13170992485767992314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n - A004396 (2 * A004525 n).toNat

end

end A313023.P13170992485767992314

namespace A313023

/-- `A313778(n)-A004396(2*A004525(n))` -/
def P13170992485767992314.Spec : Prop :=
  ∀ n, P13170992485767992314.a n = A313023 n

end A313023

/-! ## A313023.P6926215802644063812

`A315675(n)-(A128834(n)+n)`
-/

namespace A313023.P6926215802644063812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315675 n - (A128834 n + (n : ℤ))

end

end A313023.P6926215802644063812

namespace A313023

/-- `A315675(n)-(A128834(n)+n)` -/
def P6926215802644063812.Spec : Prop :=
  ∀ n, P6926215802644063812.a n = A313023 n

end A313023

/-! ## A313023.P3204794146301009391

`A314208(n)-n`
-/

namespace A313023.P3204794146301009391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314208 n - (n : ℤ)

end

end A313023.P3204794146301009391

namespace A313023

/-- `A314208(n)-n` -/
def P3204794146301009391.Spec : Prop :=
  ∀ n, P3204794146301009391.a n = A313023 n

end A313023

/-! ## A313023.P994227394885964887

`A315744(n)-A047424(n+1)`
-/

namespace A313023.P994227394885964887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315744 n - A047424 (n + 1)

end

end A313023.P994227394885964887

namespace A313023

/-- `A315744(n)-A047424(n+1)` -/
def P994227394885964887.Spec : Prop :=
  ∀ n, P994227394885964887.a n = A313023 n

end A313023

/-! ## A313023.P3790235335888169538

`A008458(n)+A008574(n)-A315499(n)`
-/

namespace A313023.P3790235335888169538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315499 n)

end

end A313023.P3790235335888169538

namespace A313023

/-- `A008458(n)+A008574(n)-A315499(n)` -/
def P3790235335888169538.Spec : Prop :=
  ∀ n, P3790235335888169538.a n = A313023 n

end A313023

/-! ## A313023.P14999408117338185013

`A315768(n)-A047229(n+1)`
-/

namespace A313023.P14999408117338185013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315768 n - A047229 (n + 1)

end

end A313023.P14999408117338185013

namespace A313023

/-- `A315768(n)-A047229(n+1)` -/
def P14999408117338185013.Spec : Prop :=
  ∀ n, P14999408117338185013.a n = A313023 n

end A313023

/-! ## A313023.P3909331167448889767

`A315768(n)-(A004525(n)+n)`
-/

namespace A313023.P3909331167448889767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315768 n - (A004525 n + (n : ℤ))

end

end A313023.P3909331167448889767

namespace A313023

/-- `A315768(n)-(A004525(n)+n)` -/
def P3909331167448889767.Spec : Prop :=
  ∀ n, P3909331167448889767.a n = A313023 n

end A313023

/-! ## A313023.P169449056116977691

`A004396(A314108(n))+n`
-/

namespace A313023.P169449056116977691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314108 n).toNat + (n : ℤ)

end

end A313023.P169449056116977691

namespace A313023

/-- `A004396(A314108(n))+n` -/
def P169449056116977691.Spec : Prop :=
  ∀ n, P169449056116977691.a n = A313023 n

end A313023

/-! ## A313023.P8076520696000086678

`A004396(A315760(n)-A004396(n))+n`
-/

namespace A313023.P8076520696000086678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315760 n - A004396 n).toNat + (n : ℤ)

end

end A313023.P8076520696000086678

namespace A313023

/-- `A004396(A315760(n)-A004396(n))+n` -/
def P8076520696000086678.Spec : Prop :=
  ∀ n, P8076520696000086678.a n = A313023 n

end A313023

/-! ## A313023.P2795117154898817917

`A004396(A315741(n)-A004525(n))+n`
-/

namespace A313023.P2795117154898817917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315741 n - A004525 n).toNat + (n : ℤ)

end

end A313023.P2795117154898817917

namespace A313023

/-- `A004396(A315741(n)-A004525(n))+n` -/
def P2795117154898817917.Spec : Prop :=
  ∀ n, P2795117154898817917.a n = A313023 n

end A313023

/-! ## A313023.P8511548015068366028

`A004525(A315760(n)+n)+n`
-/

namespace A313023.P8511548015068366028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315760 n + (n : ℤ)).toNat + (n : ℤ)

end

end A313023.P8511548015068366028

namespace A313023

/-- `A004525(A315760(n)+n)+n` -/
def P8511548015068366028.Spec : Prop :=
  ∀ n, P8511548015068366028.a n = A313023 n

end A313023

/-!
# A313024: Coordination sequence Gal.6.119.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313024, the canonical program `A313024.P6898105506734600327` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313024 has offset 0).

The definition of A313024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313024.P14503311805871963150

`(A310491(n)+A008574(n))/2`
-/

namespace A313024.P14503311805871963150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310491 n + A008574 n : ℚ) / 2

end

end A313024.P14503311805871963150

namespace A313024

/-- `(A310491(n)+A008574(n))/2` -/
def P14503311805871963150.Spec : Prop :=
  ∀ n, P14503311805871963150.a n = (A313024 n : ℚ)

theorem P14503311805871963150.correct : P14503311805871963150.Spec := by
  intro n
  simp only [A313024, Nat.add_sub_cancel, A313024.P14503311805871963150.a, A313024.P6898105506734600327.a, A008574, A008574.P1300280032690682112.a, A310491, A310491.P553446308423443576.a, A315498, A315498.P13781612876162429386.a, A004525, A004525.P4158271949796742323.a, A008458, A008458.P10936398443463225625.a, A315277, A315277.P16077913648521142554.a, A315264, A315264.P7587987662611308662.a, A315340, A315340.P1423207088725425978.a, A310455, A310455.P786279696323869961.a, A314894, A314894.P7570080516091398476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313024

/-! ## A313024.P12817118885542525459

`A008574(n)+A001281(A310491(n)-A008574(n))`
-/

namespace A313024.P12817118885542525459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001281 (A310491 n - A008574 n).toNat

end

end A313024.P12817118885542525459

namespace A313024

/-- `A008574(n)+A001281(A310491(n)-A008574(n))` -/
def P12817118885542525459.Spec : Prop :=
  ∀ n, P12817118885542525459.a n = A313024 n

end A313024

/-! ## A313024.P15884418329011037905

`A008574(n)+A004525(A310491(n)-A008574(n))`
-/

namespace A313024.P15884418329011037905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A310491 n - A008574 n).toNat

end

end A313024.P15884418329011037905

namespace A313024

/-- `A008574(n)+A004525(A310491(n)-A008574(n))` -/
def P15884418329011037905.Spec : Prop :=
  ∀ n, P15884418329011037905.a n = A313024 n

end A313024

/-! ## A313024.P3020552115992713423

`A008574(n)+A006370(A310491(n)-A008574(n))`
-/

namespace A313024.P3020552115992713423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A006370 (A310491 n - A008574 n).toNat

end

end A313024.P3020552115992713423

namespace A313024

/-- `A008574(n)+A006370(A310491(n)-A008574(n))` -/
def P3020552115992713423.Spec : Prop :=
  ∀ n, P3020552115992713423.a n = A313024 n

end A313024

/-! ## A313024.P8717361162842470213

`A310491(n)-A004526(A310491(n)-A008574(n))`
-/

namespace A313024.P8717361162842470213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310491 n - A004526 (A310491 n - A008574 n).toNat

end

end A313024.P8717361162842470213

namespace A313024

/-- `A310491(n)-A004526(A310491(n)-A008574(n))` -/
def P8717361162842470213.Spec : Prop :=
  ∀ n, P8717361162842470213.a n = A313024 n

end A313024

/-! ## A313024.P6898105506734600327

`abs(10*n-A315498(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A313024

/-- `abs(10*n-A315498(n))` -/
def P6898105506734600327.Spec : Prop :=
  ∀ n, P6898105506734600327.a n = A313024 n

theorem P6898105506734600327.correct : P6898105506734600327.Spec := by
  intro n
  simp only [A313024]

end A313024

/-! ## A313024.P18417788977193995246

`A135042(2*n+1)-A315498(n)`
-/

namespace A313024.P18417788977193995246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315498 n

end

end A313024.P18417788977193995246

namespace A313024

/-- `A135042(2*n+1)-A315498(n)` -/
def P18417788977193995246.Spec : Prop :=
  ∀ n, P18417788977193995246.a n = A313024 n

end A313024

/-! ## A313024.P17084981435570014123

`A008458(n)+A008574(n)-A315498(n)`
-/

namespace A313024.P17084981435570014123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315498 n)

end

end A313024.P17084981435570014123

namespace A313024

/-- `A008458(n)+A008574(n)-A315498(n)` -/
def P17084981435570014123.Spec : Prop :=
  ∀ n, P17084981435570014123.a n = A313024 n

end A313024

/-! ## A313024.P13342708965603095086

`A005843(n)+A004525(A310491(n))`
-/

namespace A313024.P13342708965603095086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A310491 n).toNat

end

end A313024.P13342708965603095086

namespace A313024

/-- `A005843(n)+A004525(A310491(n))` -/
def P13342708965603095086.Spec : Prop :=
  ∀ n, P13342708965603095086.a n = A313024 n

end A313024

/-! ## A313024.P13513448223162060019

`A008619(A310491(n))+A004273(n)`
-/

namespace A313024.P13513448223162060019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A310491 n).toNat + A004273 n

end

end A313024.P13513448223162060019

namespace A313024

/-- `A008619(A310491(n))+A004273(n)` -/
def P13513448223162060019.Spec : Prop :=
  ∀ n, P13513448223162060019.a n = A313024 n

end A313024

/-! ## A313024.P9483067642206519006

`A004526(A310491(n))+A004277(n)`
-/

namespace A313024.P9483067642206519006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310491 n).toNat + A004277 n

end

end A313024.P9483067642206519006

namespace A313024

/-- `A004526(A310491(n))+A004277(n)` -/
def P9483067642206519006.Spec : Prop :=
  ∀ n, P9483067642206519006.a n = A313024 n

end A313024

/-! ## A313024.P8190874531329661286

`A004526(A310491(n))+A004275(n+1)`
-/

namespace A313024.P8190874531329661286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310491 n).toNat + A004275 (n + 1)

end

end A313024.P8190874531329661286

namespace A313024

/-- `A004526(A310491(n))+A004275(n+1)` -/
def P8190874531329661286.Spec : Prop :=
  ∀ n, P8190874531329661286.a n = A313024 n

end A313024

/-! ## A313024.P5226278618687705957

`A005843(A008458(n)-n)-A315498(n)`
-/

namespace A313024.P5226278618687705957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315498 n

end

end A313024.P5226278618687705957

namespace A313024

/-- `A005843(A008458(n)-n)-A315498(n)` -/
def P5226278618687705957.Spec : Prop :=
  ∀ n, P5226278618687705957.a n = A313024 n

end A313024

/-! ## A313024.P8183477685585284620

`A008458(n)+n-A004526(A315216(n))`
-/

namespace A313024.P8183477685585284620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A315216 n).toNat)

end

end A313024.P8183477685585284620

namespace A313024

/-- `A008458(n)+n-A004526(A315216(n))` -/
def P8183477685585284620.Spec : Prop :=
  ∀ n, P8183477685585284620.a n = A313024 n

end A313024

/-! ## A313024.P2322826370006429498

`A001281(A310491(n)+A008574(n))`
-/

namespace A313024.P2322826370006429498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A310491 n + A008574 n).toNat

end

end A313024.P2322826370006429498

namespace A313024

/-- `A001281(A310491(n)+A008574(n))` -/
def P2322826370006429498.Spec : Prop :=
  ∀ n, P2322826370006429498.a n = A313024 n

end A313024

/-! ## A313024.P4734070263328027072

`A004525(A310491(n)+A008574(n))`
-/

namespace A313024.P4734070263328027072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310491 n + A008574 n).toNat

end

end A313024.P4734070263328027072

namespace A313024

/-- `A004525(A310491(n)+A008574(n))` -/
def P4734070263328027072.Spec : Prop :=
  ∀ n, P4734070263328027072.a n = A313024 n

end A313024

/-! ## A313024.P17938179281618428696

`A004526(A310491(n)+A008574(n))`
-/

namespace A313024.P17938179281618428696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310491 n + A008574 n).toNat

end

end A313024.P17938179281618428696

namespace A313024

/-- `A004526(A310491(n)+A008574(n))` -/
def P17938179281618428696.Spec : Prop :=
  ∀ n, P17938179281618428696.a n = A313024 n

end A313024

/-! ## A313024.P12199434836412347452

`A006370(A310491(n)+A008574(n))`
-/

namespace A313024.P12199434836412347452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A310491 n + A008574 n).toNat

end

end A313024.P12199434836412347452

namespace A313024

/-- `A006370(A310491(n)+A008574(n))` -/
def P12199434836412347452.Spec : Prop :=
  ∀ n, P12199434836412347452.a n = A313024 n

end A313024

/-! ## A313024.P16407860654907993370

`A008458(A008458(n))-A313908(A008458(n))`
-/

namespace A313024.P16407860654907993370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008458 n).toNat - A313908 (A008458 n).toNat

end

end A313024.P16407860654907993370

namespace A313024

/-- `A008458(A008458(n))-A313908(A008458(n))` -/
def P16407860654907993370.Spec : Prop :=
  ∀ n, P16407860654907993370.a n = A313024 n

end A313024

/-!
# A313025: Coordination sequence Gal.5.65.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313025, the canonical program `A313025.P18246201174359200645` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313025 has offset 0).

The definition of A313025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313025.P18246201174359200645

`A301724(n)-(A330033(n)+n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313025

/-- `A301724(n)-(A330033(n)+n)` -/
def P18246201174359200645.Spec : Prop :=
  ∀ n, P18246201174359200645.a n = A313025 n

theorem P18246201174359200645.correct : P18246201174359200645.Spec := by
  intro n
  simp only [A313025]

end A313025

/-! ## A313025.P15455936280442393799

`A008574(n)+n-A004525(A151988(n))`
-/

namespace A313025.P15455936280442393799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A004525 (A151988 n).toNat)

end

end A313025.P15455936280442393799

namespace A313025

/-- `A008574(n)+n-A004525(A151988(n))` -/
def P15455936280442393799.Spec : Prop :=
  ∀ n, P15455936280442393799.a n = A313025 n

end A313025

/-! ## A313025.P865386336386192149

`A074232(A312892(n))-n`
-/

namespace A313025.P865386336386192149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (A312892 n).toNat - (n : ℤ)

end

end A313025.P865386336386192149

namespace A313025

/-- `A074232(A312892(n))-n` -/
def P865386336386192149.Spec : Prop :=
  ∀ n, P865386336386192149.a n = A313025 n

theorem P865386336386192149.correct : P865386336386192149.Spec := by
  intro n
  simp only [A313025, Nat.add_sub_cancel, A313025.P865386336386192149.a, A313025.P18246201174359200645.a, A074232, A074232.P14046966601635823854.f2, A074232.P14046966601635823854.f1, A074232.P14046966601635823854.a, A301724, A301724.P3038787070238484686.a, A312892, A312892.P8731984914629007574.a, A330033, A330033.P2038939147782472114.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A057354, A057354.P3759514669842217521.a, A080891, A080891.P13194012659492260228.a, A314209, A314209.P11294401320322084331.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A313025

/-! ## A313025.P16444955964934045692

`A312892(n)+A002266(n+2)`
-/

namespace A313025.P16444955964934045692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312892 n + A002266 (n + 2)

end

end A313025.P16444955964934045692

namespace A313025

/-- `A312892(n)+A002266(n+2)` -/
def P16444955964934045692.Spec : Prop :=
  ∀ n, P16444955964934045692.a n = A313025 n

end A313025

/-! ## A313025.P1872627436496453519

`A047263(n+1)+A312892(n)-n`
-/

namespace A313025.P1872627436496453519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A312892 n - (n : ℤ))

end

end A313025.P1872627436496453519

namespace A313025

/-- `A047263(n+1)+A312892(n)-n` -/
def P1872627436496453519.Spec : Prop :=
  ∀ n, P1872627436496453519.a n = A313025 n

end A313025

/-! ## A313025.P5695158986358531080

`A330025(n-A330025(n))+A311958(n)`
-/

namespace A313025.P5695158986358531080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A311958 n

end

end A313025.P5695158986358531080

namespace A313025

/-- `A330025(n-A330025(n))+A311958(n)` -/
def P5695158986358531080.Spec : Prop :=
  ∀ n, P5695158986358531080.a n = A313025 n

end A313025

/-! ## A313025.P9951154558155205722

`abs(A008591(n)-A314725(n))`
-/

namespace A313025.P9951154558155205722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A314725 n|

end

end A313025.P9951154558155205722

namespace A313025

/-- `abs(A008591(n)-A314725(n))` -/
def P9951154558155205722.Spec : Prop :=
  ∀ n, P9951154558155205722.a n = A313025 n

end A313025

/-! ## A313025.P3595074589735348475

`A005843(A008574(n))+n-A314725(n)`
-/

namespace A313025.P3595074589735348475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A314725 n)

end

end A313025.P3595074589735348475

namespace A313025

/-- `A005843(A008574(n))+n-A314725(n)` -/
def P3595074589735348475.Spec : Prop :=
  ∀ n, P3595074589735348475.a n = A313025 n

end A313025

/-! ## A313025.P7392861999608801714

`A008458(n)+A008486(n)-A314725(n)`
-/

namespace A313025.P7392861999608801714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314725 n)

end

end A313025.P7392861999608801714

namespace A313025

/-- `A008458(n)+A008486(n)-A314725(n)` -/
def P7392861999608801714.Spec : Prop :=
  ∀ n, P7392861999608801714.a n = A313025 n

end A313025

/-! ## A313025.P18266309780526513035

`(A310492(n)+A008574(n))/2`
-/

namespace A313025.P18266309780526513035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310492 n + A008574 n : ℚ) / 2

end

end A313025.P18266309780526513035

namespace A313025

/-- `(A310492(n)+A008574(n))/2` -/
def P18266309780526513035.Spec : Prop :=
  ∀ n, P18266309780526513035.a n = (A313025 n : ℚ)

end A313025

/-! ## A313025.P4498572274133760192

`A008676(A016777(n))+A314111(n)-n`
-/

namespace A313025.P4498572274133760192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A016777 n).toNat + (A314111 n - (n : ℤ))

end

end A313025.P4498572274133760192

namespace A313025

/-- `A008676(A016777(n))+A314111(n)-n` -/
def P4498572274133760192.Spec : Prop :=
  ∀ n, P4498572274133760192.a n = A313025 n

end A313025

/-! ## A313025.P2005085449009941207

`A253262(n)+A313295(n)-n`
-/

namespace A313025.P2005085449009941207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + (A313295 n - (n : ℤ))

end

end A313025.P2005085449009941207

namespace A313025

/-- `A253262(n)+A313295(n)-n` -/
def P2005085449009941207.Spec : Prop :=
  ∀ n, P2005085449009941207.a n = A313025 n

end A313025

/-! ## A313025.P9955938339633183702

`A315737(n)-(A330025(n)+n)`
-/

namespace A313025.P9955938339633183702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315737 n - (A330025 n + (n : ℤ))

end

end A313025.P9955938339633183702

namespace A313025

/-- `A315737(n)-(A330025(n)+n)` -/
def P9955938339633183702.Spec : Prop :=
  ∀ n, P9955938339633183702.a n = A313025 n

end A313025

/-! ## A313025.P12172539038861713886

`A314209(n)-n`
-/

namespace A313025.P12172539038861713886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314209 n - (n : ℤ)

end

end A313025.P12172539038861713886

namespace A313025

/-- `A314209(n)-n` -/
def P12172539038861713886.Spec : Prop :=
  ∀ n, P12172539038861713886.a n = A313025 n

theorem P12172539038861713886.correct : P12172539038861713886.Spec := by
  intro n
  simp only [A313025, Nat.add_sub_cancel, A313025.P12172539038861713886.a, A313025.P18246201174359200645.a, A301724, A301724.P3038787070238484686.a, A314209, A314209.P11294401320322084331.a, A330033, A330033.P2038939147782472114.a, A074232, A074232.P14046966601635823854.f2, A074232.P14046966601635823854.f1, A074232.P14046966601635823854.a, A080891, A080891.P13194012659492260228.a, A312892, A312892.P8731984914629007574.a, A330025, A330025.P16976327817596103196.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A011558, A011558.P14291727921269463220.a, A057354, A057354.P3759514669842217521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A313025

/-! ## A313025.P10401647771019756208

`abs(A008592(n)-A315496(n))`
-/

namespace A313025.P10401647771019756208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315496 n|

end

end A313025.P10401647771019756208

namespace A313025

/-- `abs(A008592(n)-A315496(n))` -/
def P10401647771019756208.Spec : Prop :=
  ∀ n, P10401647771019756208.a n = A313025 n

end A313025

/-! ## A313025.P3029396492642858740

`A008458(n)+A008574(n)-A315496(n)`
-/

namespace A313025.P3029396492642858740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315496 n)

end

end A313025.P3029396492642858740

namespace A313025

/-- `A008458(n)+A008574(n)-A315496(n)` -/
def P3029396492642858740.Spec : Prop :=
  ∀ n, P3029396492642858740.a n = A313025 n

end A313025

/-! ## A313025.P8799035128078533242

`A314220(n)-A151988(n)`
-/

namespace A313025.P8799035128078533242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 n - A151988 n

end

end A313025.P8799035128078533242

namespace A313025

/-- `A314220(n)-A151988(n)` -/
def P8799035128078533242.Spec : Prop :=
  ∀ n, P8799035128078533242.a n = A313025 n

end A313025

/-! ## A313025.P49693063181317529

`A315749(n)-A047363(n+1)`
-/

namespace A313025.P49693063181317529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315749 n - A047363 (n + 1)

end

end A313025.P49693063181317529

namespace A313025

/-- `A315749(n)-A047363(n+1)` -/
def P49693063181317529.Spec : Prop :=
  ∀ n, P49693063181317529.a n = A313025 n

end A313025

/-! ## A313025.P3778434886097655796

`A005843(A008458(n)-n)-A315496(n)`
-/

namespace A313025.P3778434886097655796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315496 n

end

end A313025.P3778434886097655796

namespace A313025

/-- `A005843(A008458(n)-n)-A315496(n)` -/
def P3778434886097655796.Spec : Prop :=
  ∀ n, P3778434886097655796.a n = A313025 n

end A313025

/-! ## A313025.P1987311004962837681

`A180004(A314111(n))-n`
-/

namespace A313025.P1987311004962837681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A314111 n).toNat - (n : ℤ)

end

end A313025.P1987311004962837681

namespace A313025

/-- `A180004(A314111(n))-n` -/
def P1987311004962837681.Spec : Prop :=
  ∀ n, P1987311004962837681.a n = A313025 n

end A313025

/-!
# A313026: Coordination sequence Gal.5.54.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313026, the canonical program `A313026.P11714630493594694704` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313026 has offset 0).

The definition of A313026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313026.P11714630493594694704

`A312893(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313026

/-- `A312893(n)+Δ[A011862(n)]` -/
def P11714630493594694704.Spec : Prop :=
  ∀ n, P11714630493594694704.a n = A313026 n

theorem P11714630493594694704.correct : P11714630493594694704.Spec := by
  intro n
  simp only [A313026]

end A313026

/-! ## A313026.P8656685312343726633

`A311816(n)+A004396(n-A004396(n))`
-/

namespace A313026.P8656685312343726633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313026.P8656685312343726633

namespace A313026

/-- `A311816(n)+A004396(n-A004396(n))` -/
def P8656685312343726633.Spec : Prop :=
  ∀ n, P8656685312343726633.a n = A313026 n

end A313026

/-! ## A313026.P18259176580418078242

`A312932(2*n)-4*n-A004396(A004396(n))`
-/

namespace A313026.P18259176580418078242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312932 (2 * n) - (4 * n : ℤ) - A004396 (A004396 n).toNat

end

end A313026.P18259176580418078242

namespace A313026

/-- `A312932(2*n)-4*n-A004396(A004396(n))` -/
def P18259176580418078242.Spec : Prop :=
  ∀ n, P18259176580418078242.a n = A313026 n

end A313026

/-! ## A313026.P3931352012481294552

`A004396(n)+A312893(n)-A004396(A004396(n))`
-/

namespace A313026.P3931352012481294552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A312893 n - A004396 (A004396 n).toNat)

end

end A313026.P3931352012481294552

namespace A313026

/-- `A004396(n)+A312893(n)-A004396(A004396(n))` -/
def P3931352012481294552.Spec : Prop :=
  ∀ n, P3931352012481294552.a n = A313026 n

end A313026

/-! ## A313026.P17086375458437783545

`A265187(A008706(n)+1-n)-A004396(A004396(n))`
-/

namespace A313026.P17086375458437783545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (A008706 n + (1 - (n : ℤ))).toNat - A004396 (A004396 n).toNat

end

end A313026.P17086375458437783545

namespace A313026

/-- `A265187(A008706(n)+1-n)-A004396(A004396(n))` -/
def P17086375458437783545.Spec : Prop :=
  ∀ n, P17086375458437783545.a n = A313026 n

end A313026

/-! ## A313026.P6649213889955193849

`A265187(1-(n-A008706(n)))-A004396(A004396(n))`
-/

namespace A313026.P6649213889955193849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (1 - ((n : ℤ) - A008706 n)).toNat - A004396 (A004396 n).toNat

end

end A313026.P6649213889955193849

namespace A313026

/-- `A265187(1-(n-A008706(n)))-A004396(A004396(n))` -/
def P6649213889955193849.Spec : Prop :=
  ∀ n, P6649213889955193849.a n = A313026 n

end A313026

/-! ## A313026.P15632477505467479929

`A265187(A004275(2*n+1)+1)-A004396(A004396(n))`
-/

namespace A313026.P15632477505467479929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (A004275 (2 * n + 1) + 1).toNat - A004396 (A004396 n).toNat

end

end A313026.P15632477505467479929

namespace A313026

/-- `A265187(A004275(2*n+1)+1)-A004396(A004396(n))` -/
def P15632477505467479929.Spec : Prop :=
  ∀ n, P15632477505467479929.a n = A313026 n

end A313026

/-! ## A313026.P16638039063333059890

`A313201(n)-Δ[A011862(n)]`
-/

namespace A313026.P16638039063333059890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313201 n - (f1 (n + 1) - f1 n)

end

end A313026.P16638039063333059890

namespace A313026

/-- `A313201(n)-Δ[A011862(n)]` -/
def P16638039063333059890.Spec : Prop :=
  ∀ n, P16638039063333059890.a n = A313026 n

theorem P16638039063333059890.correct : P16638039063333059890.Spec := by
  intro n
  simp only [A313026, Nat.add_sub_cancel, A313026.P16638039063333059890.f1, A313026.P16638039063333059890.a, A313026.P11714630493594694704.f1, A313026.P11714630493594694704.a, A011862, A011862.P9485299441699197278.a, A312893, A312893.P922128372979076951.a, A313201, A313201.P17274935370983792056.f1, A313201.P17274935370983792056.a, A004396, A004396.P17032557045289780609.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313026

/-! ## A313026.P5278765651899445744

`(A310493(n)+A008574(n))/2`
-/

namespace A313026.P5278765651899445744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310493 n + A008574 n : ℚ) / 2

end

end A313026.P5278765651899445744

namespace A313026

/-- `(A310493(n)+A008574(n))/2` -/
def P5278765651899445744.Spec : Prop :=
  ∀ n, P5278765651899445744.a n = (A313026 n : ℚ)

theorem P5278765651899445744.correct : P5278765651899445744.Spec := by
  intro n
  simp only [A313026, Nat.add_sub_cancel, A313026.P5278765651899445744.a, A313026.P11714630493594694704.f1, A313026.P11714630493594694704.a, A008574, A008574.P1300280032690682112.a, A011862, A011862.P9485299441699197278.a, A310493, A310493.P491155023743620947.a, A312893, A312893.P922128372979076951.a, A004396, A004396.P17032557045289780609.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313026

/-! ## A313026.P10328401068654661727

`A313721(n)-A004396(A004396(n))`
-/

namespace A313026.P10328401068654661727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n - A004396 (A004396 n).toNat

end

end A313026.P10328401068654661727

namespace A313026

/-- `A313721(n)-A004396(A004396(n))` -/
def P10328401068654661727.Spec : Prop :=
  ∀ n, P10328401068654661727.a n = A313026 n

end A313026

/-! ## A313026.P9890777463842082672

`A313860(n)-A004396(n)`
-/

namespace A313026.P9890777463842082672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313860 n - A004396 n

end

end A313026.P9890777463842082672

namespace A313026

/-- `A313860(n)-A004396(n)` -/
def P9890777463842082672.Spec : Prop :=
  ∀ n, P9890777463842082672.a n = A313026 n

theorem P9890777463842082672.correct : P9890777463842082672.Spec := by
  intro n
  simp only [A313026, Nat.add_sub_cancel, A313026.P9890777463842082672.a, A313026.P11714630493594694704.f1, A313026.P11714630493594694704.a, A004396, A004396.P17032557045289780609.a, A011862, A011862.P9485299441699197278.a, A312893, A312893.P922128372979076951.a, A313860, A313860.P2835934445111425257.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313026

/-! ## A313026.P17293687017115276891

`A315535(n)-(A004396(n)+A004396(A004396(n)))`
-/

namespace A313026.P17293687017115276891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315535 n - (A004396 n + A004396 (A004396 n).toNat)

end

end A313026.P17293687017115276891

namespace A313026

/-- `A315535(n)-(A004396(n)+A004396(A004396(n)))` -/
def P17293687017115276891.Spec : Prop :=
  ∀ n, P17293687017115276891.a n = A313026 n

end A313026

/-! ## A313026.P12562117191892627079

`abs(A008592(n)-A315495(n))`
-/

namespace A313026.P12562117191892627079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315495 n|

end

end A313026.P12562117191892627079

namespace A313026

/-- `abs(A008592(n)-A315495(n))` -/
def P12562117191892627079.Spec : Prop :=
  ∀ n, P12562117191892627079.a n = A313026 n

end A313026

/-! ## A313026.P17418342056616482583

`A314231(n)-A004396(A004396(n)+n)`
-/

namespace A313026.P17418342056616482583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314231 n - A004396 (A004396 n + (n : ℤ)).toNat

end

end A313026.P17418342056616482583

namespace A313026

/-- `A314231(n)-A004396(A004396(n)+n)` -/
def P17418342056616482583.Spec : Prop :=
  ∀ n, P17418342056616482583.a n = A313026 n

theorem P17418342056616482583.correct : P17418342056616482583.Spec := by
  intro n
  simp only [A313026, Nat.add_sub_cancel, A313026.P17418342056616482583.a, A313026.P11714630493594694704.f1, A313026.P11714630493594694704.a, A004396, A004396.P17032557045289780609.a, A011862, A011862.P9485299441699197278.a, A312893, A312893.P922128372979076951.a, A314231, A314231.P16998588149716495728.f1, A314231.P16998588149716495728.a, A298786, A298786.P14431482331037710348.a, A314141, A314141.P7118663094909511911.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313026

/-! ## A313026.P12229101807978883728

`A008458(n)+A008574(n)-A315495(n)`
-/

namespace A313026.P12229101807978883728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315495 n)

end

end A313026.P12229101807978883728

namespace A313026

/-- `A008458(n)+A008574(n)-A315495(n)` -/
def P12229101807978883728.Spec : Prop :=
  ∀ n, P12229101807978883728.a n = A313026 n

end A313026

/-! ## A313026.P10911843411887316831

`A004396(2*n)+A004396(A313201(n))`
-/

namespace A313026.P10911843411887316831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A313201 n).toNat

end

end A313026.P10911843411887316831

namespace A313026

/-- `A004396(2*n)+A004396(A313201(n))` -/
def P10911843411887316831.Spec : Prop :=
  ∀ n, P10911843411887316831.a n = A313026 n

end A313026

/-! ## A313026.P1990920559736209842

`A004526(A310493(n))+A004277(n)`
-/

namespace A313026.P1990920559736209842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310493 n).toNat + A004277 n

end

end A313026.P1990920559736209842

namespace A313026

/-- `A004526(A310493(n))+A004277(n)` -/
def P1990920559736209842.Spec : Prop :=
  ∀ n, P1990920559736209842.a n = A313026 n

end A313026

/-! ## A313026.P11981237195110368171

`A005843(n)+A004525(A310493(n))`
-/

namespace A313026.P11981237195110368171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A310493 n).toNat

end

end A313026.P11981237195110368171

namespace A313026

/-- `A005843(n)+A004525(A310493(n))` -/
def P11981237195110368171.Spec : Prop :=
  ∀ n, P11981237195110368171.a n = A313026 n

end A313026

/-! ## A313026.P14365681200200586655

`A005843(A008458(n)-n)-A315495(n)`
-/

namespace A313026.P14365681200200586655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315495 n

end

end A313026.P14365681200200586655

namespace A313026

/-- `A005843(A008458(n)-n)-A315495(n)` -/
def P14365681200200586655.Spec : Prop :=
  ∀ n, P14365681200200586655.a n = A313026 n

end A313026

/-! ## A313026.P13848443911828327719

`A065502(A314205(n))/2`
-/

namespace A313026.P13848443911828327719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065502 (A314205 n).toNat : ℚ) / 2

end

end A313026.P13848443911828327719

namespace A313026

/-- `A065502(A314205(n))/2` -/
def P13848443911828327719.Spec : Prop :=
  ∀ n, P13848443911828327719.a n = (A313026 n : ℚ)

end A313026

/-!
# A313027: Coordination sequence Gal.6.311.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313027, there is no canonical definition to state claims against.
-/

/-! ## A313027.P16719715700822967952

`A311170(n)+A001221(A122920(n))`
-/

namespace A313027.P16719715700822967952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311170 n + A001221 (A122920 n).toNat

end

end A313027.P16719715700822967952

/-! ## A313027.P13788370392697411260

`A312477(n)+A102683(A163129(n))`
-/

namespace A313027.P13788370392697411260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312477 n + A102683 (A163129 n).toNat

end

end A313027.P13788370392697411260

/-! ## A313027.P17946743292078988662

`A322393(A251703(n))+A311837(n)`
-/

namespace A313027.P17946743292078988662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322393 (A251703 n).toNat + A311837 n

end

end A313027.P17946743292078988662

/-! ## A313027.P4197826518748487856

`A313685(n)-A060128(A057148(n+1))`
-/

namespace A313027.P4197826518748487856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n - A060128 (A057148 (n + 1)).toNat

end

end A313027.P4197826518748487856

/-! ## A313027.P10817939995705125196

`A314835(n)-A079978(A055622(n+1))`
-/

namespace A313027.P10817939995705125196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314835 n - A079978 (A055622 (n + 1)).toNat

end

end A313027.P10817939995705125196

/-!
# A313028: Coordination sequence Gal.6.417.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313028, there is no canonical definition to state claims against.
-/

/-! ## A313028.P12116708038075505767

`A313029(n)-A234323(A066290(A128564(n)))`
-/

namespace A313028.P12116708038075505767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313029 n - A234323 (A066290 (A128564 n).toNat).toNat

end

end A313028.P12116708038075505767

/-! ## A313028.P9669772675248994014

`A313029(n)-A011745(A018009(n))`
-/

namespace A313028.P9669772675248994014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313029 n - A011745 (A018009 n).toNat

end

end A313028.P9669772675248994014

/-! ## A313028.P16914724270463189285

`A313029(n)-A322217(A156766(n))`
-/

namespace A313028.P16914724270463189285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313029 n - A322217 (A156766 n).toNat

end

end A313028.P16914724270463189285

/-! ## A313028.P9898140241384011781

`A313029(n)-A185238(A239746(n+1))`
-/

namespace A313028.P9898140241384011781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313029 n - A185238 (A239746 (n + 1)).toNat

end

end A313028.P9898140241384011781

/-! ## A313028.P9804615147143823285

`A313029(A062399(n))`
-/

namespace A313028.P9804615147143823285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313029 (A062399 n).toNat

end

end A313028.P9804615147143823285

/-!
# A313029: Coordination sequence Gal.6.416.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313029, there is no canonical definition to state claims against.
-/

/-! ## A313029.P2425835224260758901

`A313028(n)+A011745(A018009(n))`
-/

namespace A313029.P2425835224260758901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313028 n + A011745 (A018009 n).toNat

end

end A313029.P2425835224260758901

/-! ## A313029.P6320105979187935680

`A322217(A156766(n))+A313028(n)`
-/

namespace A313029.P6320105979187935680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322217 (A156766 n).toNat + A313028 n

end

end A313029.P6320105979187935680

/-! ## A313029.P12042772513266815885

`A313028(n)+A185284(A003309(n+1))`
-/

namespace A313029.P12042772513266815885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313028 n + A185284 (A003309 (n + 1)).toNat

end

end A313029.P12042772513266815885

/-! ## A313029.P7314443236323746586

`A313028(n)+A219463(A099999(n+1))`
-/

namespace A313029.P7314443236323746586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313028 n + A219463 (A099999 (n + 1)).toNat

end

end A313029.P7314443236323746586

/-! ## A313029.P4936679840841105931

`A313028(n)+A185238(A239746(n+1))`
-/

namespace A313029.P4936679840841105931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313028 n + A185238 (A239746 (n + 1)).toNat

end

end A313029.P4936679840841105931

/-!
# A313030: Coordination sequence Gal.6.266.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313030, there is no canonical definition to state claims against.
-/

/-! ## A313030.P4646552122734630040

`A301293(n)+A235145(A342172(n+1))`
-/

namespace A313030.P4646552122734630040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A235145 (A342172 (n + 1)).toNat

end

end A313030.P4646552122734630040

/-! ## A313030.P8842094776964444668

`A301293(n)+A025466(A006017(n))`
-/

namespace A313030.P8842094776964444668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A025466 (A006017 n).toNat

end

end A313030.P8842094776964444668

/-! ## A313030.P13939224721283301263

`A301293(n)+A072401(A056040(n))`
-/

namespace A313030.P13939224721283301263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A072401 (A056040 n).toNat

end

end A313030.P13939224721283301263

/-! ## A313030.P337131554502485155

`A301293(n)+A185053(n)%A062756(n)!`
-/

namespace A313030.P337131554502485155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + Int.tmod (A185053 n) (Nat.factorial (A062756 n).toNat : ℤ)

end

end A313030.P337131554502485155

/-! ## A313030.P6167798071753974590

`A353481(A147343(2*(n+1)))+A301293(n)`
-/

namespace A313030.P6167798071753974590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (A147343 (2 * (n + 1))).toNat + A301293 n

end

end A313030.P6167798071753974590

/-!
# A313031: Coordination sequence Gal.6.258.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313031, the canonical program `A313031.P10383754605991792452` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313031 has offset 0).

The definition of A313031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313031.P10383754605991792452

`abs(A008592(n)-A315492(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A313031

/-- `abs(A008592(n)-A315492(n))` -/
def P10383754605991792452.Spec : Prop :=
  ∀ n, P10383754605991792452.a n = A313031 n

theorem P10383754605991792452.correct : P10383754605991792452.Spec := by
  intro n
  simp only [A313031]

end A313031

/-! ## A313031.P18194651056556810565

`2*A008706(n)-A315492(n)`
-/

namespace A313031.P18194651056556810565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315492 n

end

end A313031.P18194651056556810565

namespace A313031

/-- `2*A008706(n)-A315492(n)` -/
def P18194651056556810565.Spec : Prop :=
  ∀ n, P18194651056556810565.a n = A313031 n

end A313031

/-! ## A313031.P7826565503669592095

`A135042(2*n+1)-A315492(n)`
-/

namespace A313031.P7826565503669592095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315492 n

end

end A313031.P7826565503669592095

namespace A313031

/-- `A135042(2*n+1)-A315492(n)` -/
def P7826565503669592095.Spec : Prop :=
  ∀ n, P7826565503669592095.a n = A313031 n

end A313031

/-! ## A313031.P3382442067281976945

`A008458(n)+A008574(n)-A315492(n)`
-/

namespace A313031.P3382442067281976945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315492 n)

end

end A313031.P3382442067281976945

namespace A313031

/-- `A008458(n)+A008574(n)-A315492(n)` -/
def P3382442067281976945.Spec : Prop :=
  ∀ n, P3382442067281976945.a n = A313031 n

end A313031

/-! ## A313031.P2164720294502266644

`A315492(n)-A005843(A315492(n)-A008706(n))`
-/

namespace A313031.P2164720294502266644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315492 n - A005843 (A315492 n - A008706 n).toNat

end

end A313031.P2164720294502266644

namespace A313031

/-- `A315492(n)-A005843(A315492(n)-A008706(n))` -/
def P2164720294502266644.Spec : Prop :=
  ∀ n, P2164720294502266644.a n = A313031 n

end A313031

/-! ## A313031.P3624869591323191681

`A184418(A008574(n))-A315492(n)`
-/

namespace A313031.P3624869591323191681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315492 n

end

end A313031.P3624869591323191681

namespace A313031

/-- `A184418(A008574(n))-A315492(n)` -/
def P3624869591323191681.Spec : Prop :=
  ∀ n, P3624869591323191681.a n = A313031 n

end A313031

/-! ## A313031.P15077834689042082434

`A310438(n)-A004525(A310438(n)-A311481(n))`
-/

namespace A313031.P15077834689042082434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310438 n - A004525 (A310438 n - A311481 n).toNat

end

end A313031.P15077834689042082434

namespace A313031

/-- `A310438(n)-A004525(A310438(n)-A311481(n))` -/
def P15077834689042082434.Spec : Prop :=
  ∀ n, P15077834689042082434.a n = A313031 n

end A313031

/-! ## A313031.P14968919906245006281

`2*A313696(n)-A315454(n)`
-/

namespace A313031.P14968919906245006281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313696 n - A315454 n

end

end A313031.P14968919906245006281

namespace A313031

/-- `2*A313696(n)-A315454(n)` -/
def P14968919906245006281.Spec : Prop :=
  ∀ n, P14968919906245006281.a n = A313031 n

end A313031

/-! ## A313031.P7722070047198559289

`A315454(n)-A005843(A315454(n)-A313696(n))`
-/

namespace A313031.P7722070047198559289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315454 n - A005843 (A315454 n - A313696 n).toNat

end

end A313031.P7722070047198559289

namespace A313031

/-- `A315454(n)-A005843(A315454(n)-A313696(n))` -/
def P7722070047198559289.Spec : Prop :=
  ∀ n, P7722070047198559289.a n = A313031 n

end A313031

/-! ## A313031.P585367753091880479

`2*A313738(n)-A315498(n)`
-/

namespace A313031.P585367753091880479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313738 n - A315498 n

end

end A313031.P585367753091880479

namespace A313031

/-- `2*A313738(n)-A315498(n)` -/
def P585367753091880479.Spec : Prop :=
  ∀ n, P585367753091880479.a n = A313031 n

end A313031

/-! ## A313031.P11849291809321496085

`A315498(n)-A005843(A315498(n)-A313738(n))`
-/

namespace A313031.P11849291809321496085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315498 n - A005843 (A315498 n - A313738 n).toNat

end

end A313031.P11849291809321496085

namespace A313031

/-- `A315498(n)-A005843(A315498(n)-A313738(n))` -/
def P11849291809321496085.Spec : Prop :=
  ∀ n, P11849291809321496085.a n = A313031 n

end A313031

/-! ## A313031.P15580454552526233035

`A005843(A313696(n))-A315454(n)`
-/

namespace A313031.P15580454552526233035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313696 n).toNat - A315454 n

end

end A313031.P15580454552526233035

namespace A313031

/-- `A005843(A313696(n))-A315454(n)` -/
def P15580454552526233035.Spec : Prop :=
  ∀ n, P15580454552526233035.a n = A313031 n

end A313031

/-! ## A313031.P4170400730129900296

`A005843(A008706(n))-A315492(n)`
-/

namespace A313031.P4170400730129900296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315492 n

end

end A313031.P4170400730129900296

namespace A313031

/-- `A005843(A008706(n))-A315492(n)` -/
def P4170400730129900296.Spec : Prop :=
  ∀ n, P4170400730129900296.a n = A313031 n

end A313031

/-! ## A313031.P1300699674052467743

`A005843(A313738(n))-A315498(n)`
-/

namespace A313031.P1300699674052467743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313738 n).toNat - A315498 n

end

end A313031.P1300699674052467743

namespace A313031

/-- `A005843(A313738(n))-A315498(n)` -/
def P1300699674052467743.Spec : Prop :=
  ∀ n, P1300699674052467743.a n = A313031 n

end A313031

/-! ## A313031.P1500466813224001668

`A065502(A008458(n))-A315492(n)`
-/

namespace A313031.P1500466813224001668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315492 n

end

end A313031.P1500466813224001668

namespace A313031

/-- `A065502(A008458(n))-A315492(n)` -/
def P1500466813224001668.Spec : Prop :=
  ∀ n, P1500466813224001668.a n = A313031 n

end A313031

/-! ## A313031.P8135469458670204506

`A315321(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A313031.P8135469458670204506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315321 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A313031.P8135469458670204506

namespace A313031

/-- `A315321(2*n)+A008458(n+1)-(12*n+6)` -/
def P8135469458670204506.Spec : Prop :=
  ∀ n, P8135469458670204506.a n = A313031 n

end A313031

/-! ## A313031.P15795643485792669398

`A233583(A017281(n))-A315492(n)`
-/

namespace A313031.P15795643485792669398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315492 n

end

end A313031.P15795643485792669398

namespace A313031

/-- `A233583(A017281(n))-A315492(n)` -/
def P15795643485792669398.Spec : Prop :=
  ∀ n, P15795643485792669398.a n = A313031 n

end A313031

/-!
# A313032: Coordination sequence Gal.5.248.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313032, there is no canonical definition to state claims against.
-/

/-! ## A313032.P2192043236481796944

`A024317(A227133(n+1))+A008574(n)`
-/

namespace A313032.P2192043236481796944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (A227133 (n + 1)).toNat + A008574 n

end

end A313032.P2192043236481796944

/-! ## A313032.P17185254427476842260

`A313115(n)-A005087(A051292(n))`
-/

namespace A313032.P17185254427476842260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n - A005087 (A051292 n).toNat

end

end A313032.P17185254427476842260

/-! ## A313032.P3609384822000522069

`A301293(n)+A131735(A283330(n+1))`
-/

namespace A313032.P3609384822000522069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A131735 (A283330 (n + 1)).toNat

end

end A313032.P3609384822000522069

/-! ## A313032.P1758126196196655906

`A341258(A326701(n+4))+A301293(n)`
-/

namespace A313032.P1758126196196655906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341258 (A326701 (n + 4)).toNat + A301293 n

end

end A313032.P1758126196196655906

/-! ## A313032.P9250743368959703323

`A311225(n)+A001221(A232981(n))`
-/

namespace A313032.P9250743368959703323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311225 n + A001221 (A232981 n).toNat

end

end A313032.P9250743368959703323

/-!
# A313033: Coordination sequence Gal.5.247.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313033, there is no canonical definition to state claims against.
-/

/-! ## A313033.P5197751585376831866

`A172329(n)-A016336(A027379(n))`
-/

namespace A313033.P5197751585376831866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172329 n - A016336 (A027379 n).toNat

end

end A313033.P5197751585376831866

/-! ## A313033.P10880883505257498308

`A010462(n+1)+∑[A332447(n+1)+1]`
-/

namespace A313033.P10880883505257498308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332447 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010462 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313033.P10880883505257498308

/-! ## A313033.P5742867712908209231

`A250120(n)-A037805(A022816(n+1))`
-/

namespace A313033.P5742867712908209231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A037805 (A022816 (n + 1)).toNat

end

end A313033.P5742867712908209231

/-! ## A313033.P15157052810961643608

`A313032(n)+A010894(A311674(n))`
-/

namespace A313033.P15157052810961643608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313032 n + A010894 ((A311674 n).toNat + 21)

end

end A313033.P15157052810961643608

/-! ## A313033.P15940292842963720258

`A313032(n)+A010894(A313018(n))`
-/

namespace A313033.P15940292842963720258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313032 n + A010894 ((A313018 n).toNat + 21)

end

end A313033.P15940292842963720258

/-!
# A313034: Coordination sequence Gal.4.102.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313034, there is no canonical definition to state claims against.
-/

/-! ## A313034.P2784092042129886122

`A311896(n)+A287170(A131428(n))`
-/

namespace A313034.P2784092042129886122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311896 n + A287170 (A131428 n).toNat

end

end A313034.P2784092042129886122

/-! ## A313034.P7212363367783348280

`A302931(A336416(n))+A301293(n)`
-/

namespace A313034.P7212363367783348280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302931 (A336416 n).toNat + A301293 n

end

end A313034.P7212363367783348280

/-! ## A313034.P12425499165446325569

`A314879(n)-A285666(A017927(n))`
-/

namespace A313034.P12425499165446325569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314879 n - A285666 (A017927 n).toNat

end

end A313034.P12425499165446325569

/-! ## A313034.P2984020552595281037

`A301293(n)+A054899(A018261(n+1))`
-/

namespace A313034.P2984020552595281037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A054899 (A018261 (n + 1)).toNat

end

end A313034.P2984020552595281037

/-! ## A313034.P1316365249186104098

`A039960(A329422(n))-A047412(n+1)`
-/

namespace A313034.P1316365249186104098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 (A329422 n).toNat - A047412 (n + 1)

end

end A313034.P1316365249186104098

/-!
# A313035: Coordination sequence Gal.6.583.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313035, there is no canonical definition to state claims against.
-/

/-! ## A313035.P12723219978062881448

`A226207(A156303(n))+A202822(n+1)`
-/

namespace A313035.P12723219978062881448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226207 (A156303 n).toNat + A202822 (n + 1)

end

end A313035.P12723219978062881448

/-! ## A313035.P7315916484672727174

`A311371(n)+A000989(A038328(n))`
-/

namespace A313035.P7315916484672727174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311371 n + A000989 (A038328 n).toNat

end

end A313035.P7315916484672727174

/-! ## A313035.P4417797180564465565

`A301293(n)+A084888(A282263(n))`
-/

namespace A313035.P4417797180564465565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A084888 (A282263 n).toNat

end

end A313035.P4417797180564465565

/-! ## A313035.P14787645095772345882

`A250120(n)-A007814(A038078(n))`
-/

namespace A313035.P14787645095772345882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A007814 (A038078 n).toNat

end

end A313035.P14787645095772345882

/-! ## A313035.P5451218861509385891

`and(A094267(A059826(n)), A313036(n))`
-/

namespace A313035.P5451218861509385891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094267 (A059826 n).toNat) (A313036 n)

end

end A313035.P5451218861509385891

/-!
# A313036: Coordination sequence Gal.5.187.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313036, there is no canonical definition to state claims against.
-/

/-! ## A313036.P11236476541865694662

`A314727(n)-A101455(n)`
-/

namespace A313036.P11236476541865694662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314727 n - A101455 n

end

end A313036.P11236476541865694662

/-! ## A313036.P5844513430145700715

`A314727(n)+A056594(n+1)`
-/

namespace A313036.P5844513430145700715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314727 n + A056594 (n + 1)

end

end A313036.P5844513430145700715

/-! ## A313036.P8192320079684220061

`A314727(n)+A110161(3*n+4)`
-/

namespace A313036.P8192320079684220061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314727 n + A110161 (3 * n + 4)

end

end A313036.P8192320079684220061

/-! ## A313036.P15686485522249596225

`A250120(n)-A292598(A001792(n))`
-/

namespace A313036.P15686485522249596225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A292598 (A001792 n).toNat

end

end A313036.P15686485522249596225

/-! ## A313036.P16665518561474026794

`A301293(n)+A031346(A110132(n))`
-/

namespace A313036.P16665518561474026794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A031346 (A110132 n).toNat

end

end A313036.P16665518561474026794

/-!
# A313037: Coordination sequence Gal.6.446.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313037, there is no canonical definition to state claims against.
-/

/-! ## A313037.P11073554875726814986

`A313033(n)+A115861(A280431(n+1))`
-/

namespace A313037.P11073554875726814986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313033 n + A115861 (A280431 (n + 1)).toNat

end

end A313037.P11073554875726814986

/-! ## A313037.P17205313684572563672

`A313038(n)-A352594(A000043(n+1))`
-/

namespace A313037.P17205313684572563672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313038 n - A352594 (A000043 (n + 1)).toNat

end

end A313037.P17205313684572563672

/-! ## A313037.P8872739700780538420

`A078175(3*n+1)-A080843(A000108(n))`
-/

namespace A313037.P8872739700780538420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (3 * n + 1) - A080843 (A000108 n).toNat

end

end A313037.P8872739700780538420

/-! ## A313037.P16764088786041300193

`A340988(A340775(n))+A313036(n)`
-/

namespace A313037.P16764088786041300193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A340775 n).toNat + 91) + A313036 n

end

end A313037.P16764088786041300193

/-! ## A313037.P7410389379397971103

`A005117(3*n+1)-A374113(A072474(n+4))`
-/

namespace A313037.P7410389379397971103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 1) - A374113 (A072474 (n + 4)).toNat

end

end A313037.P7410389379397971103

/-!
# A313038: Coordination sequence Gal.6.485.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313038, there is no canonical definition to state claims against.
-/

/-! ## A313038.P888715697620921265

`A313037(n)+A178780(A002062(n))`
-/

namespace A313038.P888715697620921265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313037 n + A178780 (A002062 n).toNat

end

end A313038.P888715697620921265

/-! ## A313038.P13237001552419687513

`A313037(n)+A185284(A250124(n))`
-/

namespace A313038.P13237001552419687513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313037 n + A185284 (A250124 n).toNat

end

end A313038.P13237001552419687513

/-! ## A313038.P10754423183436907207

`A250120(n)-A335699(∑[∑{d}[n, #]]+1)`
-/

namespace A313038.P10754423183436907207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A335699 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A313038.P10754423183436907207

/-! ## A313038.P8800587878730712125

`A311892(n)+A001221(A084058(n))`
-/

namespace A313038.P8800587878730712125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311892 n + A001221 (A084058 n).toNat

end

end A313038.P8800587878730712125

/-! ## A313038.P7932625001362591768

`A340988(A340775(n))+A313037(n)`
-/

namespace A313038.P7932625001362591768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A340775 n).toNat + 91) + A313037 n

end

end A313038.P7932625001362591768

/-!
# A313039: Coordination sequence Gal.5.216.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313039, there is no canonical definition to state claims against.
-/

/-! ## A313039.P13799871070911371011

`∑[A001222(A356429(round((n-1)/2)+2))]`
-/

namespace A313039.P13799871070911371011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A356429 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313039.P13799871070911371011

/-! ## A313039.P5578094709598640032

`a(n-1)+or(2, n+2)-A001221(n!)` with `a(0)=1`
-/

namespace A313039.P5578094709598640032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((Nat.lor 2 (n + 2) : ℤ) - A001221 (Nat.factorial n))

end

end A313039.P5578094709598640032

/-! ## A313039.P13630097458763033694

`A312873(n)+A059939(A148470(n))`
-/

namespace A313039.P13630097458763033694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312873 n + A059939 (A148470 n).toNat

end

end A313039.P13630097458763033694

/-! ## A313039.P2084054473540271756

`A261445(n)+A232548(A133103(n+1))`
-/

namespace A313039.P2084054473540271756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261445 n + A232548 (A133103 (n + 1)).toNat

end

end A313039.P2084054473540271756

/-! ## A313039.P2137513698279653255

`A313036(n)+A052439(A283331(n+1))`
-/

namespace A313039.P2137513698279653255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313036 n + A052439 (A283331 (n + 1)).toNat

end

end A313039.P2137513698279653255

/-!
# A313041: Coordination sequence Gal.6.377.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313041, there is no canonical definition to state claims against.
-/

/-! ## A313041.P13211208349794021896

`A312367(n)+A288858(A163087(n))`
-/

namespace A313041.P13211208349794021896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312367 n + A288858 (A163087 n).toNat

end

end A313041.P13211208349794021896

/-! ## A313041.P16810203922898858834

`∑[A182731(∑[A380246(n+1)])]`
-/

namespace A313041.P16810203922898858834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380246 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182731 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313041.P16810203922898858834

/-! ## A313041.P387722393022232100

`A313705(n)-A001221(A328257(n+1))`
-/

namespace A313041.P387722393022232100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313705 n - A001221 (A328257 (n + 1)).toNat

end

end A313041.P387722393022232100

/-!
# A313042: Coordination sequence Gal.5.194.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313042, there is no canonical definition to state claims against.
-/

/-! ## A313042.P13491192912834682343

`xor(A000035(A023110(n+1)), A315000(n))`
-/

namespace A313042.P13491192912834682343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A023110 (n + 1)).toNat) (A315000 n)

end

end A313042.P13491192912834682343

/-! ## A313042.P12682747286846307935

`A051903(A260146(n))+A008574(n)`
-/

namespace A313042.P12682747286846307935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A260146 n).toNat + A008574 n

end

end A313042.P12682747286846307935

/-! ## A313042.P3709581298633881362

`A311163(n)+A001221(A155069(n))`
-/

namespace A313042.P3709581298633881362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311163 n + A001221 (A155069 n).toNat

end

end A313042.P3709581298633881362

/-! ## A313042.P5340496268681467943

`A310456(n)-A001221(A149545(n))`
-/

namespace A313042.P5340496268681467943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310456 n - A001221 (A149545 n).toNat

end

end A313042.P5340496268681467943

/-! ## A313042.P9735711705996567300

`A310456(n)-A001221(A149546(n))`
-/

namespace A313042.P9735711705996567300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310456 n - A001221 (A149546 n).toNat

end

end A313042.P9735711705996567300

/-!
# A313043: Coordination sequence Gal.5.195.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313043, there is no canonical definition to state claims against.
-/

/-! ## A313043.P12277591073182752777

`record[A189659(n+1)-(A063708(n)+1)]`
-/

namespace A313043.P12277591073182752777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189659 (n + 1) - (A063708 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313043.P12277591073182752777

/-! ## A313043.P2102640702639138168

`A311994(n)-A057078(A005637(n))`
-/

namespace A313043.P2102640702639138168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311994 n - A057078 (A005637 n).toNat

end

end A313043.P2102640702639138168

/-! ## A313043.P11494666378139301012

`A313959(n)-A032741(A230647(n+1))`
-/

namespace A313043.P11494666378139301012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313959 n - A032741 (A230647 (n + 1)).toNat

end

end A313043.P11494666378139301012

/-! ## A313043.P11706610399912625687

`A313174(n)-A316717(A029804(n+1))`
-/

namespace A313043.P11706610399912625687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313174 n - A316717 (A029804 (n + 1)).toNat

end

end A313043.P11706610399912625687

/-!
# A313044: Coordination sequence Gal.6.257.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313044, there is no canonical definition to state claims against.
-/

/-! ## A313044.P13234251975707049634

`A313108(n)-A230093(A002426(n))`
-/

namespace A313044.P13234251975707049634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313108 n - A230093 (A002426 n).toNat

end

end A313044.P13234251975707049634

/-! ## A313044.P17674519166430405870

`A313108(n)-A157928(A198324(n))`
-/

namespace A313044.P17674519166430405870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313108 n - A157928 (A198324 n).toNat

end

end A313044.P17674519166430405870

/-! ## A313044.P13983661672903492238

`A311155(n)+A001221(A053617(n))`
-/

namespace A313044.P13983661672903492238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311155 n + A001221 (A053617 n).toNat

end

end A313044.P13983661672903492238

/-! ## A313044.P16548909462941188694

`A313768(n)-A001221(A052936(n))`
-/

namespace A313044.P16548909462941188694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313768 n - A001221 (A052936 n).toNat

end

end A313044.P16548909462941188694

/-! ## A313044.P11911637861725562847

`A313053(n)-A056975(A316980(n))`
-/

namespace A313044.P11911637861725562847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n - A056975 (A316980 n).toNat

end

end A313044.P11911637861725562847

/-!
# A313045: Coordination sequence Gal.6.258.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313045, the canonical program `A313045.P11830860627486211470` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313045 has offset 0).

The definition of A313045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313045.P6427027432206203525

`A312927(n)+Δ[A011864(n)]`
-/

namespace A313045.P6427027432206203525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312927 n + (f1 (n + 1) - f1 n)

end

end A313045.P6427027432206203525

namespace A313045

/-- `A312927(n)+Δ[A011864(n)]` -/
def P6427027432206203525.Spec : Prop :=
  ∀ n, P6427027432206203525.a n = A313045 n

theorem P6427027432206203525.correct : P6427027432206203525.Spec := by
  intro n
  simp only [A313045, Nat.add_sub_cancel, A313045.P6427027432206203525.f1, A313045.P6427027432206203525.a, A313045.P11830860627486211470.f1, A313045.P11830860627486211470.a, A008458, A008458.P10936398443463225625.a, A011864, A011864.P3547417513882699266.a, A047486, A047486.P6506762595393263252.a, A312927, A312927.P540762951115705510.f1, A312927.P540762951115705510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313045

/-! ## A313045.P8626531977987118374

`(A310501(n)+A008574(n))/2`
-/

namespace A313045.P8626531977987118374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310501 n + A008574 n : ℚ) / 2

end

end A313045.P8626531977987118374

namespace A313045

/-- `(A310501(n)+A008574(n))/2` -/
def P8626531977987118374.Spec : Prop :=
  ∀ n, P8626531977987118374.a n = (A313045 n : ℚ)

theorem P8626531977987118374.correct : P8626531977987118374.Spec := by
  intro n
  simp only [A313045, Nat.add_sub_cancel, A313045.P8626531977987118374.a, A313045.P11830860627486211470.f1, A313045.P11830860627486211470.a, A008458, A008458.P10936398443463225625.a, A008574, A008574.P1300280032690682112.a, A047486, A047486.P6506762595393263252.a, A310501, A310501.P8756319467982132797.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313045

/-! ## A313045.P11830860627486211470

`A008458(n)-comp[A047486(2*(n+1))]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313045

/-- `A008458(n)-comp[A047486(2*(n+1))]` -/
def P11830860627486211470.Spec : Prop :=
  ∀ n, P11830860627486211470.a n = A313045 n

theorem P11830860627486211470.correct : P11830860627486211470.Spec := by
  intro n
  simp only [A313045]

end A313045

/-! ## A313045.P2197429338790601555

`A008574(n)+A001281(A310501(n)-A008574(n))`
-/

namespace A313045.P2197429338790601555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001281 (A310501 n - A008574 n).toNat

end

end A313045.P2197429338790601555

namespace A313045

/-- `A008574(n)+A001281(A310501(n)-A008574(n))` -/
def P2197429338790601555.Spec : Prop :=
  ∀ n, P2197429338790601555.a n = A313045 n

end A313045

/-! ## A313045.P7453981893414474633

`A008574(n)+A004525(A310501(n)-A008574(n))`
-/

namespace A313045.P7453981893414474633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A310501 n - A008574 n).toNat

end

end A313045.P7453981893414474633

namespace A313045

/-- `A008574(n)+A004525(A310501(n)-A008574(n))` -/
def P7453981893414474633.Spec : Prop :=
  ∀ n, P7453981893414474633.a n = A313045 n

end A313045

/-! ## A313045.P1725585102192013062

`abs(10*n-A315491(n))`
-/

namespace A313045.P1725585102192013062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315491 n|

end

end A313045.P1725585102192013062

namespace A313045

/-- `abs(10*n-A315491(n))` -/
def P1725585102192013062.Spec : Prop :=
  ∀ n, P1725585102192013062.a n = A313045 n

end A313045

/-! ## A313045.P10965180153452438673

`A008458(n)+A008574(n)-A315491(n)`
-/

namespace A313045.P10965180153452438673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315491 n)

end

end A313045.P10965180153452438673

namespace A313045

/-- `A008458(n)+A008574(n)-A315491(n)` -/
def P10965180153452438673.Spec : Prop :=
  ∀ n, P10965180153452438673.a n = A313045 n

end A313045

/-! ## A313045.P11719004283509478665

`∑{d}[A008592(n)-A315491(n), A000010(#)]`
-/

namespace A313045.P11719004283509478665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313045.P11719004283509478665

namespace A313045

/-- `∑{d}[A008592(n)-A315491(n), A000010(#)]` -/
def P11719004283509478665.Spec : Prop :=
  ∀ n, P11719004283509478665.a n = A313045 n

end A313045

/-! ## A313045.P14892626426084786567

`A008458(n)+n-A004526(A315208(n))`
-/

namespace A313045.P14892626426084786567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A315208 n).toNat)

end

end A313045.P14892626426084786567

namespace A313045

/-- `A008458(n)+n-A004526(A315208(n))` -/
def P14892626426084786567.Spec : Prop :=
  ∀ n, P14892626426084786567.a n = A313045 n

end A313045

/-! ## A313045.P6831704738689453356

`A005843(A008458(n)-n)-A315491(n)`
-/

namespace A313045.P6831704738689453356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315491 n

end

end A313045.P6831704738689453356

namespace A313045

/-- `A005843(A008458(n)-n)-A315491(n)` -/
def P6831704738689453356.Spec : Prop :=
  ∀ n, P6831704738689453356.a n = A313045 n

end A313045

/-! ## A313045.P7335457718553696512

`A004525(A310499(n))+2*n`
-/

namespace A313045.P7335457718553696512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310499 n).toNat + (2 * n : ℤ)

end

end A313045.P7335457718553696512

namespace A313045

/-- `A004525(A310499(n))+2*n` -/
def P7335457718553696512.Spec : Prop :=
  ∀ n, P7335457718553696512.a n = A313045 n

end A313045

/-! ## A313045.P7900883986493393662

`A004526(A310501(n))+A004277(n)`
-/

namespace A313045.P7900883986493393662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310501 n).toNat + A004277 n

end

end A313045.P7900883986493393662

namespace A313045

/-- `A004526(A310501(n))+A004277(n)` -/
def P7900883986493393662.Spec : Prop :=
  ∀ n, P7900883986493393662.a n = A313045 n

end A313045

/-! ## A313045.P11181388389689132807

`A005843(n)+A004525(A310499(n))`
-/

namespace A313045.P11181388389689132807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A310499 n).toNat

end

end A313045.P11181388389689132807

namespace A313045

/-- `A005843(n)+A004525(A310499(n))` -/
def P11181388389689132807.Spec : Prop :=
  ∀ n, P11181388389689132807.a n = A313045 n

end A313045

/-! ## A313045.P206105998544160698

`A005843(n)+A004525(A310501(n))`
-/

namespace A313045.P206105998544160698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A310501 n).toNat

end

end A313045.P206105998544160698

namespace A313045

/-- `A005843(n)+A004525(A310501(n))` -/
def P206105998544160698.Spec : Prop :=
  ∀ n, P206105998544160698.a n = A313045 n

end A313045

/-! ## A313045.P5521089374200844781

`A008619(A310501(n))+A004273(n)`
-/

namespace A313045.P5521089374200844781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A310501 n).toNat + A004273 n

end

end A313045.P5521089374200844781

namespace A313045

/-- `A008619(A310501(n))+A004273(n)` -/
def P5521089374200844781.Spec : Prop :=
  ∀ n, P5521089374200844781.a n = A313045 n

end A313045

/-! ## A313045.P15545899728974906443

`A313876(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A313045.P15545899728974906443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313876 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A313045.P15545899728974906443

namespace A313045

/-- `A313876(2*n)+A008458(n+1)-(12*n+6)` -/
def P15545899728974906443.Spec : Prop :=
  ∀ n, P15545899728974906443.a n = A313045 n

end A313045

/-! ## A313045.P2842011175123981394

`A004525(A312507(2*n))`
-/

namespace A313045.P2842011175123981394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312507 (2 * n)).toNat

end

end A313045.P2842011175123981394

namespace A313045

/-- `A004525(A312507(2*n))` -/
def P2842011175123981394.Spec : Prop :=
  ∀ n, P2842011175123981394.a n = A313045 n

end A313045

/-! ## A313045.P11425071460817321948

`A004525(A310501(n)+A008574(n))`
-/

namespace A313045.P11425071460817321948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310501 n + A008574 n).toNat

end

end A313045.P11425071460817321948

namespace A313045

/-- `A004525(A310501(n)+A008574(n))` -/
def P11425071460817321948.Spec : Prop :=
  ∀ n, P11425071460817321948.a n = A313045 n

end A313045

/-! ## A313045.P14243983436729975716

`A004526(A312507(2*n)+1)`
-/

namespace A313045.P14243983436729975716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312507 (2 * n) + 1).toNat

end

end A313045.P14243983436729975716

namespace A313045

/-- `A004526(A312507(2*n)+1)` -/
def P14243983436729975716.Spec : Prop :=
  ∀ n, P14243983436729975716.a n = A313045 n

end A313045

/-! ## A313045.P1036014420540673576

`A001281(A310501(n)+A008574(n))`
-/

namespace A313045.P1036014420540673576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A310501 n + A008574 n).toNat

end

end A313045.P1036014420540673576

namespace A313045

/-- `A001281(A310501(n)+A008574(n))` -/
def P1036014420540673576.Spec : Prop :=
  ∀ n, P1036014420540673576.a n = A313045 n

end A313045

/-!
# A313046: Coordination sequence Gal.6.454.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313046, the canonical program `A313046.P8828103927133743341` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313046 has offset 0).

The definition of A313046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313046.P17854332575041426013

`A313051(n)+A238469(A237420(n))`
-/

namespace A313046.P17854332575041426013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313051 n + A238469 (A237420 n).toNat

end

end A313046.P17854332575041426013

namespace A313046

/-- `A313051(n)+A238469(A237420(n))` -/
def P17854332575041426013.Spec : Prop :=
  ∀ n, P17854332575041426013.a n = A313046 n

end A313046

/-! ## A313046.P8828103927133743341

`A314838(n)-A238470(A266303(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313046

/-- `A314838(n)-A238470(A266303(n))` -/
def P8828103927133743341.Spec : Prop :=
  ∀ n, P8828103927133743341.a n = A313046 n

theorem P8828103927133743341.correct : P8828103927133743341.Spec := by
  intro n
  simp only [A313046]

end A313046

/-! ## A313046.P4380290617510106528

`A301298(n)-A097795(A209492(n))`
-/

namespace A313046.P4380290617510106528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A097795 (A209492 n).toNat

end

end A313046.P4380290617510106528

namespace A313046

/-- `A301298(n)-A097795(A209492(n))` -/
def P4380290617510106528.Spec : Prop :=
  ∀ n, P4380290617510106528.a n = A313046 n

end A313046

/-! ## A313046.P9491445981923087710

`A346151(A008574(n)-A163379(n+1))`
-/

namespace A313046.P9491445981923087710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346151 (A008574 n - A163379 (n + 1)).toNat

end

end A313046.P9491445981923087710

namespace A313046

/-- `A346151(A008574(n)-A163379(n+1))` -/
def P9491445981923087710.Spec : Prop :=
  ∀ n, P9491445981923087710.a n = A313046 n

end A313046

/-! ## A313046.P1664314448082192269

`A095861(A004277(2*n)*A313782(2*n+1))`
-/

namespace A313046.P1664314448082192269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A004277 (2 * n) * A313782 (2 * n + 1)).toNat

end

end A313046.P1664314448082192269

namespace A313046

/-- `A095861(A004277(2*n)*A313782(2*n+1))` -/
def P1664314448082192269.Spec : Prop :=
  ∀ n, P1664314448082192269.a n = A313046 n

end A313046

/-!
# A313047: Coordination sequence Gal.6.477.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313047, there is no canonical definition to state claims against.
-/

/-! ## A313047.P2260264673799813598

`A313057(n)-A178798(A141214(n))`
-/

namespace A313047.P2260264673799813598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n - A178798 (A141214 n).toNat

end

end A313047.P2260264673799813598

/-! ## A313047.P16156672032431420131

`A353684(3*n+1)+val(A353765(2*(n+1)), 11)`
-/

namespace A313047.P16156672032431420131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353684 (3 * n + 1) + (SequenceMachineLib.valuation (A353765 (2 * (n + 1))).toNat 11 : ℤ)

end

end A313047.P16156672032431420131

/-! ## A313047.P9920204909068642100

`A311786(n)+A240314(A024656(n))`
-/

namespace A313047.P9920204909068642100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311786 n + A240314 (A024656 n).toNat

end

end A313047.P9920204909068642100

/-! ## A313047.P12620495930326795820

`A087118(3*n+1)-A244895(A001158(2*(n+2)))`
-/

namespace A313047.P12620495930326795820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087118 (3 * n + 1) - A244895 (A001158 (2 * (n + 2))).toNat

end

end A313047.P12620495930326795820

/-!
# A313048: Coordination sequence Gal.6.485.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313048, there is no canonical definition to state claims against.
-/

/-! ## A313048.P15103914092235685599

`A304800(A247157(n+1))-2`
-/

namespace A313048.P15103914092235685599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304800 (A247157 (n + 1)).toNat - 2

end

end A313048.P15103914092235685599

/-! ## A313048.P10741006240000447166

`A313502(n)-A266786(A086622(n))`
-/

namespace A313048.P10741006240000447166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313502 n - A266786 (A086622 n).toNat

end

end A313048.P10741006240000447166

/-! ## A313048.P5202148902765343857

`A311827(n)+A001221(A049189(n+1))`
-/

namespace A313048.P5202148902765343857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311827 n + A001221 (A049189 (n + 1)).toNat

end

end A313048.P5202148902765343857

/-! ## A313048.P7391913618803240040

`A311828(n)+A001221(A049189(n+1))`
-/

namespace A313048.P7391913618803240040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311828 n + A001221 (A049189 (n + 1)).toNat

end

end A313048.P7391913618803240040

/-! ## A313048.P8150361761554680267

`xor(A341026(A299473(n)), A353684(3*n+1))`
-/

namespace A313048.P8150361761554680267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A341026 ((A299473 n).toNat + 165)) (A353684 (3 * n + 1))

end

end A313048.P8150361761554680267

/-!
# A313049: Coordination sequence Gal.6.538.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313049, there is no canonical definition to state claims against.
-/

/-! ## A313049.P12074488973769371389

`A314507(n)-A102283(n)`
-/

namespace A313049.P12074488973769371389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314507 n - A102283 n

end

end A313049.P12074488973769371389

/-! ## A313049.P16441543243410096770

`A314507(n)-A049347(n+2)`
-/

namespace A313049.P16441543243410096770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314507 n - A049347 (n + 2)

end

end A313049.P16441543243410096770

/-! ## A313049.P18237337659919878816

`A314507(n)-A131736(2*n)`
-/

namespace A313049.P18237337659919878816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314507 n - A131736 (2 * n)

end

end A313049.P18237337659919878816

/-! ## A313049.P7663252829133927728

`A314507(n)+A010892(A017329(n))`
-/

namespace A313049.P7663252829133927728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314507 n + A010892 (A017329 n).toNat

end

end A313049.P7663252829133927728

/-! ## A313049.P2287319289640034116

`xor(A001221(A001256(n)), A313085(n))`
-/

namespace A313049.P2287319289640034116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A001256 n).toNat) (A313085 n)

end

end A313049.P2287319289640034116

/-!
# A313050: Coordination sequence Gal.6.213.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313050, there is no canonical definition to state claims against.
-/

/-! ## A313050.P15918306310851255182

`A313051(n)-A122924(A065530(n))`
-/

namespace A313050.P15918306310851255182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313051 n - A122924 (A065530 n).toNat

end

end A313050.P15918306310851255182

/-! ## A313050.P5655817160904156317

`A106028(A097212(n+1))+A008574(n)`
-/

namespace A313050.P5655817160904156317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106028 (A097212 (n + 1)).toNat + A008574 n

end

end A313050.P5655817160904156317

/-! ## A313050.P9173338522154087324

`A027861(2*(n+1))-A358680(A289404(n))`
-/

namespace A313050.P9173338522154087324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (2 * (n + 1)) - A358680 (A289404 n).toNat

end

end A313050.P9173338522154087324

/-! ## A313050.P4693293197979765163

`A303024(2*(n+1))-A090822(A002805(n+1))`
-/

namespace A313050.P4693293197979765163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303024 (2 * (n + 1)) - A090822 (A002805 (n + 1)).toNat

end

end A313050.P4693293197979765163

/-! ## A313050.P12863435212905906207

`∑[(A226366(n+1)-A324524(2*(n+2)))%4+2]`
-/

namespace A313050.P12863435212905906207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226366 (n + 1) - A324524 (2 * (n + 2))) 4 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313050.P12863435212905906207

/-!
# A313051: Coordination sequence Gal.3.33.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313051, the canonical program `A313051.P5280053628599878746` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313051 has offset 0).

The definition of A313051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313051.P5280053628599878746

`A312549(n)+A238470(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313051

/-- `A312549(n)+A238470(n)` -/
def P5280053628599878746.Spec : Prop :=
  ∀ n, P5280053628599878746.a n = A313051 n

theorem P5280053628599878746.correct : P5280053628599878746.Spec := by
  intro n
  simp only [A313051]

end A313051

/-! ## A313051.P412019442863329613

`A314838(n)-A238469(n)`
-/

namespace A313051.P412019442863329613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314838 n - A238469 n

end

end A313051.P412019442863329613

namespace A313051

/-- `A314838(n)-A238469(n)` -/
def P412019442863329613.Spec : Prop :=
  ∀ n, P412019442863329613.a n = A313051 n

end A313051

/-! ## A313051.P16468111701062202972

`(A310503(n)+A008574(n))/2`
-/

namespace A313051.P16468111701062202972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310503 n + A008574 n : ℚ) / 2

end

end A313051.P16468111701062202972

namespace A313051

/-- `(A310503(n)+A008574(n))/2` -/
def P16468111701062202972.Spec : Prop :=
  ∀ n, P16468111701062202972.a n = (A313051 n : ℚ)

end A313051

/-! ## A313051.P13350082585805534949

`A312974(n)-A238469(2*n)`
-/

namespace A313051.P13350082585805534949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n - A238469 (2 * n)

end

end A313051.P13350082585805534949

namespace A313051

/-- `A312974(n)-A238469(2*n)` -/
def P13350082585805534949.Spec : Prop :=
  ∀ n, P13350082585805534949.a n = A313051 n

end A313051

/-! ## A313051.P14527309508270715754

`A314838(n)-A238470(2*n)`
-/

namespace A313051.P14527309508270715754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314838 n - A238470 (2 * n)

end

end A313051.P14527309508270715754

namespace A313051

/-- `A314838(n)-A238470(2*n)` -/
def P14527309508270715754.Spec : Prop :=
  ∀ n, P14527309508270715754.a n = A313051 n

end A313051

/-! ## A313051.P391981324516994802

`record[A257088(n)+Δ[A011860(n)]]`
-/

namespace A313051.P391981324516994802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313051.P391981324516994802

namespace A313051

/-- `record[A257088(n)+Δ[A011860(n)]]` -/
def P391981324516994802.Spec : Prop :=
  ∀ n, P391981324516994802.a n = A313051 n

end A313051

/-! ## A313051.P4850150892624182640

`2*A008574(2*n)-A315701(2*n)`
-/

namespace A313051.P4850150892624182640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315701 (2 * n)

end

end A313051.P4850150892624182640

namespace A313051

/-- `2*A008574(2*n)-A315701(2*n)` -/
def P4850150892624182640.Spec : Prop :=
  ∀ n, P4850150892624182640.a n = A313051 n

end A313051

/-! ## A313051.P11830893684976250561

`A312974(n)-A238468(A238468(n)+n)`
-/

namespace A313051.P11830893684976250561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n - A238468 (A238468 n + (n : ℤ)).toNat

end

end A313051.P11830893684976250561

namespace A313051

/-- `A312974(n)-A238468(A238468(n)+n)` -/
def P11830893684976250561.Spec : Prop :=
  ∀ n, P11830893684976250561.a n = A313051 n

end A313051

/-! ## A313051.P15257852407225409825

`A047588(2*(n+1))+A047588(A004277(n))`
-/

namespace A313051.P15257852407225409825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (2 * (n + 1)) + A047588 (A004277 n).toNat

end

end A313051.P15257852407225409825

namespace A313051

/-- `A047588(2*(n+1))+A047588(A004277(n))` -/
def P15257852407225409825.Spec : Prop :=
  ∀ n, P15257852407225409825.a n = A313051 n

end A313051

/-! ## A313051.P9095278917311761418

`A047588(2*(n+1))+A047588(A004275(n+1))`
-/

namespace A313051.P9095278917311761418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (2 * (n + 1)) + A047588 (A004275 (n + 1)).toNat

end

end A313051.P9095278917311761418

namespace A313051

/-- `A047588(2*(n+1))+A047588(A004275(n+1))` -/
def P9095278917311761418.Spec : Prop :=
  ∀ n, P9095278917311761418.a n = A313051 n

end A313051

/-! ## A313051.P5656422497057246193

`A011860(2*n+1)+A257088(2*n)-A011860(2*n)`
-/

namespace A313051.P5656422497057246193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 (2 * n + 1) + (A257088 (2 * n) - A011860 (2 * n))

end

end A313051.P5656422497057246193

namespace A313051

/-- `A011860(2*n+1)+A257088(2*n)-A011860(2*n)` -/
def P5656422497057246193.Spec : Prop :=
  ∀ n, P5656422497057246193.a n = A313051 n

end A313051

/-! ## A313051.P4846792855639367690

`A004275(2*n+1)+A011860(2*n+1)-A011860(2*n)`
-/

namespace A313051.P4846792855639367690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n + 1) + (A011860 (2 * n + 1) - A011860 (2 * n))

end

end A313051.P4846792855639367690

namespace A313051

/-- `A004275(2*n+1)+A011860(2*n+1)-A011860(2*n)` -/
def P4846792855639367690.Spec : Prop :=
  ∀ n, P4846792855639367690.a n = A313051 n

end A313051

/-! ## A313051.P2496892596469782204

`A310372(n)-A238470(n)`
-/

namespace A313051.P2496892596469782204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n - A238470 n

end

end A313051.P2496892596469782204

namespace A313051

/-- `A310372(n)-A238470(n)` -/
def P2496892596469782204.Spec : Prop :=
  ∀ n, P2496892596469782204.a n = A313051 n

end A313051

/-! ## A313051.P7011532123163110618

`abs(A008592(n)-A315490(n))`
-/

namespace A313051.P7011532123163110618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315490 n|

end

end A313051.P7011532123163110618

namespace A313051

/-- `abs(A008592(n)-A315490(n))` -/
def P7011532123163110618.Spec : Prop :=
  ∀ n, P7011532123163110618.a n = A313051 n

end A313051

/-! ## A313051.P77817804184337320

`A008458(n)+A008574(n)-A315490(n)`
-/

namespace A313051.P77817804184337320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315490 n)

end

end A313051.P77817804184337320

namespace A313051

/-- `A008458(n)+A008574(n)-A315490(n)` -/
def P77817804184337320.Spec : Prop :=
  ∀ n, P77817804184337320.a n = A313051 n

end A313051

/-! ## A313051.P1583737626279767831

`(A008592(n)-A315490(n))^A000108(C(2, 2*n+1))`
-/

namespace A313051.P1583737626279767831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A315490 n : ℚ) ^ (A000108 (Nat.choose 2 (2 * n + 1)) : ℤ)

end

end A313051.P1583737626279767831

namespace A313051

/-- `(A008592(n)-A315490(n))^A000108(C(2, 2*n+1))` -/
def P1583737626279767831.Spec : Prop :=
  ∀ n, P1583737626279767831.a n = (A313051 n : ℚ)

end A313051

/-! ## A313051.P7842712016605531431

`A314249(n)-A047588(n+1)`
-/

namespace A313051.P7842712016605531431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314249 n - A047588 (n + 1)

end

end A313051.P7842712016605531431

namespace A313051

/-- `A314249(n)-A047588(n+1)` -/
def P7842712016605531431.Spec : Prop :=
  ∀ n, P7842712016605531431.a n = A313051 n

end A313051

/-! ## A313051.P842921693004598184

`round(A008576(A313836(n))/3)`
-/

namespace A313051.P842921693004598184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008576 (A313836 n).toNat : ℚ) / 3)

end

end A313051.P842921693004598184

namespace A313051

/-- `round(A008576(A313836(n))/3)` -/
def P842921693004598184.Spec : Prop :=
  ∀ n, P842921693004598184.a n = A313051 n

end A313051

/-! ## A313051.P17684697980754450726

`A110654(A301680(n))+2*n`
-/

namespace A313051.P17684697980754450726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A301680 n).toNat + (2 * n : ℤ)

end

end A313051.P17684697980754450726

namespace A313051

/-- `A110654(A301680(n))+2*n` -/
def P17684697980754450726.Spec : Prop :=
  ∀ n, P17684697980754450726.a n = A313051 n

end A313051

/-! ## A313051.P8131384869907985706

`abs(8*n-A004396(A315423(n)))`
-/

namespace A313051.P8131384869907985706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 * n : ℤ) - A004396 (A315423 n).toNat|

end

end A313051.P8131384869907985706

namespace A313051

/-- `abs(8*n-A004396(A315423(n)))` -/
def P8131384869907985706.Spec : Prop :=
  ∀ n, P8131384869907985706.a n = A313051 n

end A313051

/-!
# A313052: Coordination sequence Gal.6.469.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313052, there is no canonical definition to state claims against.
-/

/-! ## A313052.P17363295233518314370

`A313051(n)+A004247(A309863(n))`
-/

namespace A313052.P17363295233518314370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313051 n + A004247 (A309863 n).toNat

end

end A313052.P17363295233518314370

/-! ## A313052.P17548124212884116263

`A341025(A000383(n))+A313051(n)`
-/

namespace A313052.P17548124212884116263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 ((A000383 n).toNat + 120) + A313051 n

end

end A313052.P17548124212884116263

/-!
# A313053: Coordination sequence Gal.5.114.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313053, the canonical program `A313053.P8254110359425895258` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313053 has offset 0).

The definition of A313053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313053.P4149864755547906207

`A313682(n)-A330025(n)`
-/

namespace A313053.P4149864755547906207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313682 n - A330025 n

end

end A313053.P4149864755547906207

namespace A313053

/-- `A313682(n)-A330025(n)` -/
def P4149864755547906207.Spec : Prop :=
  ∀ n, P4149864755547906207.a n = A313053 n

end A313053

/-! ## A313053.P8254110359425895258

`A312903(n)+A002266(n+2)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313053

/-- `A312903(n)+A002266(n+2)` -/
def P8254110359425895258.Spec : Prop :=
  ∀ n, P8254110359425895258.a n = A313053 n

theorem P8254110359425895258.correct : P8254110359425895258.Spec := by
  intro n
  simp only [A313053]

end A313053

/-! ## A313053.P8349612411084452248

`(A310504(n)+A008574(n))/2`
-/

namespace A313053.P8349612411084452248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310504 n + A008574 n : ℚ) / 2

end

end A313053.P8349612411084452248

namespace A313053

/-- `(A310504(n)+A008574(n))/2` -/
def P8349612411084452248.Spec : Prop :=
  ∀ n, P8349612411084452248.a n = (A313053 n : ℚ)

theorem P8349612411084452248.correct : P8349612411084452248.Spec := by
  intro n
  simp only [A313053, Nat.add_sub_cancel, A313053.P8349612411084452248.a, A313053.P8254110359425895258.a, A002266, A002266.P12055520221930490546.a, A008574, A008574.P1300280032690682112.a, A310504, A310504.P464538820079187203.a, A312903, A312903.P5186887365123370171.a, A311384, A311384.P2354907441128154650.a, A330025, A330025.P16976327817596103196.a, A008486, A008486.P11623131867527198563.a, A011558, A011558.P14291727921269463220.a, A047363, A047363.P7486090247302327639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A313053

/-! ## A313053.P17187163986518252177

`A151988(n)+A313025(n)-n`
-/

namespace A313053.P17187163986518252177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A313025 n - (n : ℤ))

end

end A313053.P17187163986518252177

namespace A313053

/-- `A151988(n)+A313025(n)-n` -/
def P17187163986518252177.Spec : Prop :=
  ∀ n, P17187163986518252177.a n = A313053 n

end A313053

/-! ## A313053.P6780403816881926031

`abs(A008592(n)-(A314708(n)+n))`
-/

namespace A313053.P6780403816881926031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A314708 n + (n : ℤ))|

end

end A313053.P6780403816881926031

namespace A313053

/-- `abs(A008592(n)-(A314708(n)+n))` -/
def P6780403816881926031.Spec : Prop :=
  ∀ n, P6780403816881926031.a n = A313053 n

end A313053

/-! ## A313053.P8273503692132128747

`A047263(n+1)+A312903(n)-n`
-/

namespace A313053.P8273503692132128747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A312903 n - (n : ℤ))

end

end A313053.P8273503692132128747

namespace A313053

/-- `A047263(n+1)+A312903(n)-n` -/
def P8273503692132128747.Spec : Prop :=
  ∀ n, P8273503692132128747.a n = A313053 n

end A313053

/-! ## A313053.P6904046369354742233

`A005843(A008574(n))+n-A314708(n)`
-/

namespace A313053.P6904046369354742233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A314708 n)

end

end A313053.P6904046369354742233

namespace A313053

/-- `A005843(A008574(n))+n-A314708(n)` -/
def P6904046369354742233.Spec : Prop :=
  ∀ n, P6904046369354742233.a n = A313053 n

end A313053

/-! ## A313053.P4863019013925531596

`A008458(n)+A008486(n)-A314708(n)`
-/

namespace A313053.P4863019013925531596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314708 n)

end

end A313053.P4863019013925531596

namespace A313053

/-- `A008458(n)+A008486(n)-A314708(n)` -/
def P4863019013925531596.Spec : Prop :=
  ∀ n, P4863019013925531596.a n = A313053 n

end A313053

/-! ## A313053.P8491703613019606223

`A008574(n)+A151988(n)-A004525(A151988(n))`
-/

namespace A313053.P8491703613019606223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A151988 n - A004525 (A151988 n).toNat)

end

end A313053.P8491703613019606223

namespace A313053

/-- `A008574(n)+A151988(n)-A004525(A151988(n))` -/
def P8491703613019606223.Spec : Prop :=
  ∀ n, P8491703613019606223.a n = A313053 n

end A313053

/-! ## A313053.P8823007931962866383

`A047263(n+1)+A008574(n)-A004525(A047263(n+1))`
-/

namespace A313053.P8823007931962866383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A008574 n - A004525 (A047263 (n + 1)).toNat)

end

end A313053.P8823007931962866383

namespace A313053

/-- `A047263(n+1)+A008574(n)-A004525(A047263(n+1))` -/
def P8823007931962866383.Spec : Prop :=
  ∀ n, P8823007931962866383.a n = A313053 n

end A313053

/-! ## A313053.P4769054626706275684

`abs(A008593(n)-(A315489(n)+n))`
-/

namespace A313053.P4769054626706275684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A315489 n + (n : ℤ))|

end

end A313053.P4769054626706275684

namespace A313053

/-- `abs(A008593(n)-(A315489(n)+n))` -/
def P4769054626706275684.Spec : Prop :=
  ∀ n, P4769054626706275684.a n = A313053 n

end A313053

/-! ## A313053.P10700718163132056436

`A008458(n)+A008574(n)-A315489(n)`
-/

namespace A313053.P10700718163132056436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315489 n)

end

end A313053.P10700718163132056436

namespace A313053

/-- `A008458(n)+A008574(n)-A315489(n)` -/
def P10700718163132056436.Spec : Prop :=
  ∀ n, P10700718163132056436.a n = A313053 n

end A313053

/-! ## A313053.P17293403718862761850

`A314220(n)-n`
-/

namespace A313053.P17293403718862761850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 n - (n : ℤ)

end

end A313053.P17293403718862761850

namespace A313053

/-- `A314220(n)-n` -/
def P17293403718862761850.Spec : Prop :=
  ∀ n, P17293403718862761850.a n = A313053 n

theorem P17293403718862761850.correct : P17293403718862761850.Spec := by
  intro n
  simp only [A313053, Nat.add_sub_cancel, A313053.P17293403718862761850.a, A313053.P8254110359425895258.a, A002266, A002266.P12055520221930490546.a, A312903, A312903.P5186887365123370171.a, A314220, A314220.P5659571598859034226.a, A311384, A311384.P2354907441128154650.a, A330025, A330025.P16976327817596103196.a, A008486, A008486.P11623131867527198563.a, A011558, A011558.P14291727921269463220.a, A047363, A047363.P7486090247302327639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A313053

/-! ## A313053.P11826962328214987409

`A315742(n)-(A330025(n)+n)`
-/

namespace A313053.P11826962328214987409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315742 n - (A330025 n + (n : ℤ))

end

end A313053.P11826962328214987409

namespace A313053

/-- `A315742(n)-(A330025(n)+n)` -/
def P11826962328214987409.Spec : Prop :=
  ∀ n, P11826962328214987409.a n = A313053 n

end A313053

/-! ## A313053.P17177860296997281266

`A008486(n)+A312561(n)-A004396(A312561(n))`
-/

namespace A313053.P17177860296997281266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A312561 n - A004396 (A312561 n).toNat)

end

end A313053.P17177860296997281266

namespace A313053

/-- `A008486(n)+A312561(n)-A004396(A312561(n))` -/
def P17177860296997281266.Spec : Prop :=
  ∀ n, P17177860296997281266.a n = A313053 n

end A313053

/-! ## A313053.P15436674690430373009

`A004396(A313898(n))+n`
-/

namespace A313053.P15436674690430373009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313898 n).toNat + (n : ℤ)

end

end A313053.P15436674690430373009

namespace A313053

/-- `A004396(A313898(n))+n` -/
def P15436674690430373009.Spec : Prop :=
  ∀ n, P15436674690430373009.a n = A313053 n

end A313053

/-! ## A313053.P668835230510866940

`A004396(A301726(n))+n`
-/

namespace A313053.P668835230510866940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301726 n).toNat + (n : ℤ)

end

end A313053.P668835230510866940

namespace A313053

/-- `A004396(A301726(n))+n` -/
def P668835230510866940.Spec : Prop :=
  ∀ n, P668835230510866940.a n = A313053 n

end A313053

/-! ## A313053.P6820969642241499538

`A004396(A314191(n))+n`
-/

namespace A313053.P6820969642241499538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314191 n).toNat + (n : ℤ)

end

end A313053.P6820969642241499538

namespace A313053

/-- `A004396(A314191(n))+n` -/
def P6820969642241499538.Spec : Prop :=
  ∀ n, P6820969642241499538.a n = A313053 n

end A313053

/-! ## A313053.P11820149581455624625

`A004396(A312903(n)+n)+n`
-/

namespace A313053.P11820149581455624625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312903 n + (n : ℤ)).toNat + (n : ℤ)

end

end A313053.P11820149581455624625

namespace A313053

/-- `A004396(A312903(n)+n)+n` -/
def P11820149581455624625.Spec : Prop :=
  ∀ n, P11820149581455624625.a n = A313053 n

end A313053

/-!
# A313054: Coordination sequence Gal.6.318.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313054, there is no canonical definition to state claims against.
-/

/-! ## A313054.P226651156337111278

`A072154(n)+A313238(n)-A008576(n)`
-/

namespace A313054.P226651156337111278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + (A313238 n - A008576 n)

end

end A313054.P226651156337111278

/-! ## A313054.P11584385972854984497

`A313238(n)+A004525(A315187(n))-A008576(n)`
-/

namespace A313054.P11584385972854984497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313238 n + (A004525 (A315187 n).toNat - A008576 n)

end

end A313054.P11584385972854984497

/-! ## A313054.P8213576640499444848

`A004525(A330025(n)+A312561(n))+A313238(n)-A008576(n)`
-/

namespace A313054.P8213576640499444848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A330025 n + A312561 n).toNat + (A313238 n - A008576 n)

end

end A313054.P8213576640499444848

/-! ## A313054.P13512149248802134005

`A004525(A315303(n)-A330025(n))+A313238(n)-A008576(n)`
-/

namespace A313054.P13512149248802134005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315303 n - A330025 n).toNat + (A313238 n - A008576 n)

end

end A313054.P13512149248802134005

/-! ## A313054.P4994407770194447866

`A004525(A022144(n)-A047486(2*n+1))+A313238(n)-A008576(n)`
-/

namespace A313054.P4994407770194447866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A022144 n - A047486 (2 * n + 1)).toNat + (A313238 n - A008576 n)

end

end A313054.P4994407770194447866

/-! ## A313054.P9347382629141798833

`A004525(A047363(2*n+1)+A028310(2*n))+A313238(n)-A008576(n)`
-/

namespace A313054.P9347382629141798833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047363 (2 * n + 1) + A028310 (2 * n)).toNat + (A313238 n - A008576 n)

end

end A313054.P9347382629141798833

/-! ## A313054.P6236606343462959273

`A004525(A004525(A315303(2*n)))+A313238(n)-A008576(n)`
-/

namespace A313054.P6236606343462959273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 (A315303 (2 * n)).toNat).toNat + (A313238 n - A008576 n)

end

end A313054.P6236606343462959273

/-!
# A313055: Coordination sequence Gal.5.128.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313055, there is no canonical definition to state claims against.
-/

/-! ## A313055.P13372560729552585661

`A311734(n)+A001221(A022493(n))`
-/

namespace A313055.P13372560729552585661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311734 n + A001221 (A022493 n).toNat

end

end A313055.P13372560729552585661

/-! ## A313055.P15608179730021479905

`A301293(n)+A089311(A322118(n))`
-/

namespace A313055.P15608179730021479905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A089311 (A322118 n).toNat

end

end A313055.P15608179730021479905

/-! ## A313055.P9154359531414367301

`A313053(n)+A168068(A331884(n))`
-/

namespace A313055.P9154359531414367301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n + A168068 (A331884 n).toNat

end

end A313055.P9154359531414367301

/-! ## A313055.P1941418815120979200

`A160755(or(A310398(n), A312160(n)))`
-/

namespace A313055.P1941418815120979200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (Int.lor (A310398 n) (A312160 n)).toNat

end

end A313055.P1941418815120979200

/-! ## A313055.P2772680508805123219

`or(A124762(A367932(n+1)), A392709(3*n+1))`
-/

namespace A313055.P2772680508805123219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124762 (A367932 (n + 1)).toNat) (A392709 (3 * n + 1))

end

end A313055.P2772680508805123219

/-!
# A313056: Coordination sequence Gal.6.466.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313056, there is no canonical definition to state claims against.
-/

/-! ## A313056.P10938710702807759175

`A312945(n)+A003849(A172435(n+1))`
-/

namespace A313056.P10938710702807759175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312945 n + A003849 (A172435 (n + 1)).toNat

end

end A313056.P10938710702807759175

/-! ## A313056.P379330248793658413

`abs(A008574(2*n)-A273872(A187829(n+1)))`
-/

namespace A313056.P379330248793658413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008574 (2 * n) - A273872 (A187829 (n + 1)).toNat|

end

end A313056.P379330248793658413

/-! ## A313056.P4424599120301064325

`A313053(n)+A267050(A289530(n))`
-/

namespace A313056.P4424599120301064325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n + A267050 (A289530 n).toNat

end

end A313056.P4424599120301064325

/-! ## A313056.P1172614263475822410

`A313053(n)+A288314(A288334(n))`
-/

namespace A313056.P1172614263475822410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n + A288314 (A288334 n).toNat

end

end A313056.P1172614263475822410

/-! ## A313056.P802067627305793792

`A311710(n)+A001221(A001790(n))`
-/

namespace A313056.P802067627305793792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311710 n + A001221 (A001790 n).toNat

end

end A313056.P802067627305793792

/-!
# A313057: Coordination sequence Gal.6.132.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313057, the canonical program `A313057.P2669330518983403707` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313057 has offset 0).

The definition of A313057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313057.P15321462018942734587

`round(A311861(n)+n/3)`
-/

namespace A313057.P15321462018942734587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A311861 n : ℚ) + (n : ℚ) / 3)

end

end A313057.P15321462018942734587

namespace A313057

/-- `round(A311861(n)+n/3)` -/
def P15321462018942734587.Spec : Prop :=
  ∀ n, P15321462018942734587.a n = A313057 n

end A313057

/-! ## A313057.P18382378408041699992

`A311861(n)+n-A004396(n)`
-/

namespace A313057.P18382378408041699992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n + ((n : ℤ) - A004396 n)

end

end A313057.P18382378408041699992

namespace A313057

/-- `A311861(n)+n-A004396(n)` -/
def P18382378408041699992.Spec : Prop :=
  ∀ n, P18382378408041699992.a n = A313057 n

theorem P18382378408041699992.correct : P18382378408041699992.Spec := by
  intro n
  simp only [A313057, Nat.add_sub_cancel, A313057.P18382378408041699992.a, A313057.P2669330518983403707.a, A004396, A004396.P17032557045289780609.a, A047273, A047273.P5050912492785340480.a, A311257, A311257.P2429482415252635039.a, A311861, A311861.P8116900546318081513.a, A002264, A002264.P5647656940077635922.a, A047588, A047588.P5089271559851880253.a, A311687, A311687.P12525606551040496369.a, A312909, A312909.P9930151025395677949.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313057

/-! ## A313057.P10380727928177829689

`A042965(n+1)+A311861(n)-n`
-/

namespace A313057.P10380727928177829689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + (A311861 n - (n : ℤ))

end

end A313057.P10380727928177829689

namespace A313057

/-- `A042965(n+1)+A311861(n)-n` -/
def P10380727928177829689.Spec : Prop :=
  ∀ n, P10380727928177829689.a n = A313057 n

end A313057

/-! ## A313057.P2669330518983403707

`A047273(n+1)+A311257(n)-n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313057

/-- `A047273(n+1)+A311257(n)-n` -/
def P2669330518983403707.Spec : Prop :=
  ∀ n, P2669330518983403707.a n = A313057 n

theorem P2669330518983403707.correct : P2669330518983403707.Spec := by
  intro n
  simp only [A313057]

end A313057

/-! ## A313057.P956843805215150945

`A311924(n)+A004396(n-A004525(n))`
-/

namespace A313057.P956843805215150945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313057.P956843805215150945

namespace A313057

/-- `A311924(n)+A004396(n-A004525(n))` -/
def P956843805215150945.Spec : Prop :=
  ∀ n, P956843805215150945.a n = A313057 n

end A313057

/-! ## A313057.P9345635744110557915

`A008486(n)+A311861(n)-A008576(n)`
-/

namespace A313057.P9345635744110557915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A311861 n - A008576 n)

end

end A313057.P9345635744110557915

namespace A313057

/-- `A008486(n)+A311861(n)-A008576(n)` -/
def P9345635744110557915.Spec : Prop :=
  ∀ n, P9345635744110557915.a n = A313057 n

end A313057

/-! ## A313057.P12932710207780913454

`A008458(n)+A008486(n)-A314706(n)`
-/

namespace A313057.P12932710207780913454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314706 n)

end

end A313057.P12932710207780913454

namespace A313057

/-- `A008458(n)+A008486(n)-A314706(n)` -/
def P12932710207780913454.Spec : Prop :=
  ∀ n, P12932710207780913454.a n = A313057 n

end A313057

/-! ## A313057.P5337565398357267854

`A313698(n)-A004525(A004396(n))`
-/

namespace A313057.P5337565398357267854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n - A004525 (A004396 n).toNat

end

end A313057.P5337565398357267854

namespace A313057

/-- `A313698(n)-A004525(A004396(n))` -/
def P5337565398357267854.Spec : Prop :=
  ∀ n, P5337565398357267854.a n = A313057 n

end A313057

/-! ## A313057.P3672486243466891813

`A310444(n)-A002264(n+1)`
-/

namespace A313057.P3672486243466891813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310444 n - A002264 (n + 1)

end

end A313057.P3672486243466891813

namespace A313057

/-- `A310444(n)-A002264(n+1)` -/
def P3672486243466891813.Spec : Prop :=
  ∀ n, P3672486243466891813.a n = A313057 n

end A313057

/-! ## A313057.P862728295278844793

`A004396(n)+A310444(n)-n`
-/

namespace A313057.P862728295278844793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A310444 n - (n : ℤ))

end

end A313057.P862728295278844793

namespace A313057

/-- `A004396(n)+A310444(n)-n` -/
def P862728295278844793.Spec : Prop :=
  ∀ n, P862728295278844793.a n = A313057 n

end A313057

/-! ## A313057.P14680496070536326853

`A008576(n)+A310444(n)-A008486(n)`
-/

namespace A313057.P14680496070536326853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A310444 n - A008486 n)

end

end A313057.P14680496070536326853

namespace A313057

/-- `A008576(n)+A310444(n)-A008486(n)` -/
def P14680496070536326853.Spec : Prop :=
  ∀ n, P14680496070536326853.a n = A313057 n

end A313057

/-! ## A313057.P7561417661978948411

`A313707(n)-A004396(A004525(n))`
-/

namespace A313057.P7561417661978948411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 n - A004396 (A004525 n).toNat

end

end A313057.P7561417661978948411

namespace A313057

/-- `A313707(n)-A004396(A004525(n))` -/
def P7561417661978948411.Spec : Prop :=
  ∀ n, P7561417661978948411.a n = A313057 n

end A313057

/-! ## A313057.P6241336539262115139

`A313747(n)-A004525(n)`
-/

namespace A313057.P6241336539262115139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313747 n - A004525 n

end

end A313057.P6241336539262115139

namespace A313057

/-- `A313747(n)-A004525(n)` -/
def P6241336539262115139.Spec : Prop :=
  ∀ n, P6241336539262115139.a n = A313057 n

end A313057

/-! ## A313057.P17281721099598805279

`A008458(n)+A008574(n)-A315488(n)`
-/

namespace A313057.P17281721099598805279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315488 n)

end

end A313057.P17281721099598805279

namespace A313057

/-- `A008458(n)+A008574(n)-A315488(n)` -/
def P17281721099598805279.Spec : Prop :=
  ∀ n, P17281721099598805279.a n = A313057 n

end A313057

/-! ## A313057.P6490794408648295348

`Δ[A011865(n)]+A314151(n)-n`
-/

namespace A313057.P6490794408648295348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A314151 n - (n : ℤ))

end

end A313057.P6490794408648295348

namespace A313057

/-- `Δ[A011865(n)]+A314151(n)-n` -/
def P6490794408648295348.Spec : Prop :=
  ∀ n, P6490794408648295348.a n = A313057 n

end A313057

/-! ## A313057.P15884989770756215950

`A313879(n)-A004396(n)`
-/

namespace A313057.P15884989770756215950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n - A004396 n

end

end A313057.P15884989770756215950

namespace A313057

/-- `A313879(n)-A004396(n)` -/
def P15884989770756215950.Spec : Prop :=
  ∀ n, P15884989770756215950.a n = A313057 n

end A313057

/-! ## A313057.P7022875588574706745

`∑[A022003(n)]+A313879(n)-n`
-/

namespace A313057.P7022875588574706745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A313879 n - (n : ℤ))

end

end A313057.P7022875588574706745

namespace A313057

/-- `∑[A022003(n)]+A313879(n)-n` -/
def P7022875588574706745.Spec : Prop :=
  ∀ n, P7022875588574706745.a n = A313057 n

end A313057

/-! ## A313057.P12346918665266654618

`A313879(n)-A002264(2*n+1)`
-/

namespace A313057.P12346918665266654618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n - A002264 (2 * n + 1)

end

end A313057.P12346918665266654618

namespace A313057

/-- `A313879(n)-A002264(2*n+1)` -/
def P12346918665266654618.Spec : Prop :=
  ∀ n, P12346918665266654618.a n = A313057 n

end A313057

/-! ## A313057.P9157543636760166157

`A314222(n)-n`
-/

namespace A313057.P9157543636760166157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314222 n - (n : ℤ)

end

end A313057.P9157543636760166157

namespace A313057

/-- `A314222(n)-n` -/
def P9157543636760166157.Spec : Prop :=
  ∀ n, P9157543636760166157.a n = A313057 n

end A313057

/-! ## A313057.P10123390455135189466

`A004396(2*n)+A004396(A315053(n))`
-/

namespace A313057.P10123390455135189466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A315053 n).toNat

end

end A313057.P10123390455135189466

namespace A313057

/-- `A004396(2*n)+A004396(A315053(n))` -/
def P10123390455135189466.Spec : Prop :=
  ∀ n, P10123390455135189466.a n = A313057 n

end A313057

/-!
# A313058: Coordination sequence Gal.6.381.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313058, there is no canonical definition to state claims against.
-/

/-! ## A313058.P7589297172807655331

`A250120(n)-A011584(A089064(n))`
-/

namespace A313058.P7589297172807655331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A011584 (A089064 n).toNat

end

end A313058.P7589297172807655331

/-! ## A313058.P17149113080690100752

`A313126(n)-A037801(A048470(n))`
-/

namespace A313058.P17149113080690100752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313126 n - A037801 (A048470 n).toNat

end

end A313058.P17149113080690100752

/-! ## A313058.P11631594159613627509

`A313064(n)-A091480(A342457(n))`
-/

namespace A313058.P11631594159613627509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313064 n - A091480 (A342457 n).toNat

end

end A313058.P11631594159613627509

/-! ## A313058.P3951374568241694293

`A250120(n)+A010892(A173271(n+1))`
-/

namespace A313058.P3951374568241694293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A010892 (A173271 (n + 1)).toNat

end

end A313058.P3951374568241694293

/-! ## A313058.P10345381300031359105

`A346130(A311256(n))`
-/

namespace A313058.P10345381300031359105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A311256 n).toNat

end

end A313058.P10345381300031359105

/-!
# A313059: Coordination sequence Gal.4.99.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313059, there is no canonical definition to state claims against.
-/

/-! ## A313059.P16514194980271948169

`A313078(n)-A033665(A189600(n+1))`
-/

namespace A313059.P16514194980271948169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313078 n - A033665 (A189600 (n + 1)).toNat

end

end A313059.P16514194980271948169

/-! ## A313059.P11958359311862689617

`A301293(n)+A115861(A115856(n+1))`
-/

namespace A313059.P11958359311862689617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A115861 (A115856 (n + 1)).toNat

end

end A313059.P11958359311862689617

/-! ## A313059.P2966339624431265645

`A313078(n)-A033665(A115856(n+1))`
-/

namespace A313059.P2966339624431265645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313078 n - A033665 (A115856 (n + 1)).toNat

end

end A313059.P2966339624431265645

/-! ## A313059.P5529992615189247301

`A028951(lt[A001223(n+1), A003131(2*n+1)])`
-/

namespace A313059.P5529992615189247301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003131 (2 * n + 1 + 54)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028951 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A313059.P5529992615189247301

/-! ## A313059.P960642404224440738

`A312506(n)+A267676(A000110(n))`
-/

namespace A313059.P960642404224440738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312506 n + A267676 (A000110 n).toNat

end

end A313059.P960642404224440738

/-!
# A313060: Coordination sequence Gal.6.458.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313060, there is no canonical definition to state claims against.
-/

/-! ## A313060.P16737370082900721538

`A312943(n)+A001822(A191825(n))`
-/

namespace A313060.P16737370082900721538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A001822 (A191825 n).toNat

end

end A313060.P16737370082900721538

/-! ## A313060.P12378763569567184333

`A250120(n)-A280737(A001792(n))`
-/

namespace A313060.P12378763569567184333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A280737 (A001792 n).toNat

end

end A313060.P12378763569567184333

/-! ## A313060.P3403251998429443435

`A250120(n)-A269249(A205541(n))`
-/

namespace A313060.P3403251998429443435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A269249 (A205541 n).toNat

end

end A313060.P3403251998429443435

/-! ## A313060.P5771212372029032414

`A250120(n)-A033264(A147760(n+1))`
-/

namespace A313060.P5771212372029032414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A033264 (A147760 (n + 1)).toNat

end

end A313060.P5771212372029032414

/-!
# A313061: Coordination sequence Gal.5.177.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313061, there is no canonical definition to state claims against.
-/

/-! ## A313061.P6395096465911031281

`A311222(n)+A001221(n!)`
-/

namespace A313061.P6395096465911031281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311222 n + A001221 (Nat.factorial n)

end

end A313061.P6395096465911031281

/-! ## A313061.P1677112522292518410

`A311223(n)+A001221(n!)`
-/

namespace A313061.P1677112522292518410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311223 n + A001221 (Nat.factorial n)

end

end A313061.P1677112522292518410

/-! ## A313061.P11931404743397861995

`A311222(n)+A001221(A000142(n))`
-/

namespace A313061.P11931404743397861995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311222 n + A001221 (A000142 n).toNat

end

end A313061.P11931404743397861995

/-! ## A313061.P10467539152568277094

`A311223(n)+A001221(A000142(n))`
-/

namespace A313061.P10467539152568277094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311223 n + A001221 (A000142 n).toNat

end

end A313061.P10467539152568277094

/-! ## A313061.P13687797934298669307

`A311222(n)+A001221(A061602(n))`
-/

namespace A313061.P13687797934298669307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311222 n + A001221 (A061602 n).toNat

end

end A313061.P13687797934298669307

/-!
# A313062: Coordination sequence Gal.6.154.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313062, the canonical program `A313062.P7455441757488067714` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313062 has offset 0).

The definition of A313062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2459 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313062.P7455441757488067714

`A312935(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A313062

/-- `A312935(n)+Δ[A011864(n)]` -/
def P7455441757488067714.Spec : Prop :=
  ∀ n, P7455441757488067714.a n = A313062 n

theorem P7455441757488067714.correct : P7455441757488067714.Spec := by
  intro n
  simp only [A313062]

end A313062

/-! ## A313062.P17048705697224828627

`abs(A008592(n)-A315486(n))`
-/

namespace A313062.P17048705697224828627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315486 n|

end

end A313062.P17048705697224828627

namespace A313062

/-- `abs(A008592(n)-A315486(n))` -/
def P17048705697224828627.Spec : Prop :=
  ∀ n, P17048705697224828627.a n = A313062 n

end A313062

/-! ## A313062.P6437417589653920620

`2*A008706(n)-A315486(n)`
-/

namespace A313062.P6437417589653920620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315486 n

end

end A313062.P6437417589653920620

namespace A313062

/-- `2*A008706(n)-A315486(n)` -/
def P6437417589653920620.Spec : Prop :=
  ∀ n, P6437417589653920620.a n = A313062 n

end A313062

/-! ## A313062.P2671369207586132817

`A008458(n)+A008574(n)-A315486(n)`
-/

namespace A313062.P2671369207586132817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315486 n)

end

end A313062.P2671369207586132817

namespace A313062

/-- `A008458(n)+A008574(n)-A315486(n)` -/
def P2671369207586132817.Spec : Prop :=
  ∀ n, P2671369207586132817.a n = A313062 n

end A313062

/-! ## A313062.P3285055897958698837

`A315486(n)-A005843(A315486(n)-A008706(n))`
-/

namespace A313062.P3285055897958698837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315486 n - A005843 (A315486 n - A008706 n).toNat

end

end A313062.P3285055897958698837

namespace A313062

/-- `A315486(n)-A005843(A315486(n)-A008706(n))` -/
def P3285055897958698837.Spec : Prop :=
  ∀ n, P3285055897958698837.a n = A313062 n

end A313062

/-! ## A313062.P2869570425344380029

`(A312507(n)+A310380(n))/2`
-/

namespace A313062.P2869570425344380029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312507 n + A310380 n : ℚ) / 2

end

end A313062.P2869570425344380029

namespace A313062

/-- `(A312507(n)+A310380(n))/2` -/
def P2869570425344380029.Spec : Prop :=
  ∀ n, P2869570425344380029.a n = (A313062 n : ℚ)

end A313062

/-! ## A313062.P3390725993405017315

`A005843(A008706(n))-A315486(n)`
-/

namespace A313062.P3390725993405017315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315486 n

end

end A313062.P3390725993405017315

namespace A313062

/-- `A005843(A008706(n))-A315486(n)` -/
def P3390725993405017315.Spec : Prop :=
  ∀ n, P3390725993405017315.a n = A313062 n

end A313062

/-!
# A313063: Coordination sequence Gal.6.488.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313063, there is no canonical definition to state claims against.
-/

/-! ## A313063.P11211927094167716497

`A213259(A001845(2*n+1))+A213259(2*(n+1))`
-/

namespace A313063.P11211927094167716497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213259 (A001845 (2 * n + 1)).toNat + A213259 (2 * (n + 1))

end

end A313063.P11211927094167716497

/-! ## A313063.P16979591620247153817

`A057354(A004277(n))+A311211(n)-A298428(n+1)%2`
-/

namespace A313063.P16979591620247153817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A004277 n).toNat + (A311211 n - Int.tmod (A298428 (n + 1)) 2)

end

end A313063.P16979591620247153817

/-! ## A313063.P9289512261727933520

`A106744(A314195(n))`
-/

namespace A313063.P9289512261727933520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A314195 n).toNat

end

end A313063.P9289512261727933520

/-! ## A313063.P523725139602563021

`A311230(n)+A001221(n!)`
-/

namespace A313063.P523725139602563021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311230 n + A001221 (Nat.factorial n)

end

end A313063.P523725139602563021

/-! ## A313063.P6804410198006647862

`A311229(n)+A001221(A000142(n))`
-/

namespace A313063.P6804410198006647862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311229 n + A001221 (A000142 n).toNat

end

end A313063.P6804410198006647862

/-!
# A313064: Coordination sequence Gal.6.195.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313064, the canonical program `A313064.P10281981631680228567` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313064 has offset 0).

The definition of A313064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313064.P10281981631680228567

`A311312(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313064

/-- `A311312(n)+∑[A021913(n)]` -/
def P10281981631680228567.Spec : Prop :=
  ∀ n, P10281981631680228567.a n = A313064 n

theorem P10281981631680228567.correct : P10281981631680228567.Spec := by
  intro n
  simp only [A313064]

end A313064

/-! ## A313064.P1231324323013956182

`A311312(n)+Δ[A011848(n)]`
-/

namespace A313064.P1231324323013956182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + (f1 (n + 1) - f1 n)

end

end A313064.P1231324323013956182

namespace A313064

/-- `A311312(n)+Δ[A011848(n)]` -/
def P1231324323013956182.Spec : Prop :=
  ∀ n, P1231324323013956182.a n = A313064 n

end A313064

/-! ## A313064.P15228831622986079728

`A311312(n)+A004524(n+1)`
-/

namespace A313064.P15228831622986079728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + A004524 (n + 1)

end

end A313064.P15228831622986079728

namespace A313064

/-- `A311312(n)+A004524(n+1)` -/
def P15228831622986079728.Spec : Prop :=
  ∀ n, P15228831622986079728.a n = A313064 n

end A313064

/-! ## A313064.P6377190500462296729

`A311312(n)+n-A004525(n)`
-/

namespace A313064.P6377190500462296729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + ((n : ℤ) - A004525 n)

end

end A313064.P6377190500462296729

namespace A313064

/-- `A311312(n)+n-A004525(n)` -/
def P6377190500462296729.Spec : Prop :=
  ∀ n, P6377190500462296729.a n = A313064 n

end A313064

/-! ## A313064.P2804844172745214690

`A311312(n)+n-Δ[A054925(n)]`
-/

namespace A313064.P2804844172745214690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313064.P2804844172745214690

namespace A313064

/-- `A311312(n)+n-Δ[A054925(n)]` -/
def P2804844172745214690.Spec : Prop :=
  ∀ n, P2804844172745214690.a n = A313064 n

end A313064

/-! ## A313064.P8478110856452213570

`A313693(n)-A128834(A004525(A128834(n)+n))`
-/

namespace A313064.P8478110856452213570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n - A128834 (A004525 (A128834 n + (n : ℤ)).toNat).toNat

end

end A313064.P8478110856452213570

namespace A313064

/-- `A313693(n)-A128834(A004525(A128834(n)+n))` -/
def P8478110856452213570.Spec : Prop :=
  ∀ n, P8478110856452213570.a n = A313064 n

end A313064

/-! ## A313064.P17438920409511879790

`abs(A008592(n)-A315485(n))`
-/

namespace A313064.P17438920409511879790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315485 n|

end

end A313064.P17438920409511879790

namespace A313064

/-- `abs(A008592(n)-A315485(n))` -/
def P17438920409511879790.Spec : Prop :=
  ∀ n, P17438920409511879790.a n = A313064 n

end A313064

/-! ## A313064.P10096136550903588767

`2*A008706(n)-A315485(n)`
-/

namespace A313064.P10096136550903588767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315485 n

end

end A313064.P10096136550903588767

namespace A313064

/-- `2*A008706(n)-A315485(n)` -/
def P10096136550903588767.Spec : Prop :=
  ∀ n, P10096136550903588767.a n = A313064 n

end A313064

/-! ## A313064.P6146081963431428001

`A008458(n)+A008574(n)-A315485(n)`
-/

namespace A313064.P6146081963431428001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315485 n)

end

end A313064.P6146081963431428001

namespace A313064

/-- `A008458(n)+A008574(n)-A315485(n)` -/
def P6146081963431428001.Spec : Prop :=
  ∀ n, P6146081963431428001.a n = A313064 n

end A313064

/-! ## A313064.P3551699744017038388

`A315485(n)-A005843(A315485(n)-A008706(n))`
-/

namespace A313064.P3551699744017038388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315485 n - A005843 (A315485 n - A008706 n).toNat

end

end A313064.P3551699744017038388

namespace A313064

/-- `A315485(n)-A005843(A315485(n)-A008706(n))` -/
def P3551699744017038388.Spec : Prop :=
  ∀ n, P3551699744017038388.a n = A313064 n

end A313064

/-! ## A313064.P13515386640427594491

`A313754(n)-A004525(n)`
-/

namespace A313064.P13515386640427594491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313754 n - A004525 n

end

end A313064.P13515386640427594491

namespace A313064

/-- `A313754(n)-A004525(n)` -/
def P13515386640427594491.Spec : Prop :=
  ∀ n, P13515386640427594491.a n = A313064 n

end A313064

/-! ## A313064.P16755969931373106422

`∑[A021913(n)]+A313754(n)-n`
-/

namespace A313064.P16755969931373106422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A313754 n - (n : ℤ))

end

end A313064.P16755969931373106422

namespace A313064

/-- `∑[A021913(n)]+A313754(n)-n` -/
def P16755969931373106422.Spec : Prop :=
  ∀ n, P16755969931373106422.a n = A313064 n

end A313064

/-! ## A313064.P8311137887159964913

`Δ[A011848(n)]+A313754(n)-n`
-/

namespace A313064.P8311137887159964913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313754 n - (n : ℤ))

end

end A313064.P8311137887159964913

namespace A313064

/-- `Δ[A011848(n)]+A313754(n)-n` -/
def P8311137887159964913.Spec : Prop :=
  ∀ n, P8311137887159964913.a n = A313064 n

end A313064

/-! ## A313064.P13423558556480110283

`A314737(n)-A101455(n)`
-/

namespace A313064.P13423558556480110283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314737 n - A101455 n

end

end A313064.P13423558556480110283

namespace A313064

/-- `A314737(n)-A101455(n)` -/
def P13423558556480110283.Spec : Prop :=
  ∀ n, P13423558556480110283.a n = A313064 n

end A313064

/-! ## A313064.P9651758311380125710

`A314737(n)-A046978(2*n)`
-/

namespace A313064.P9651758311380125710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314737 n - A046978 (2 * n)

end

end A313064.P9651758311380125710

namespace A313064

/-- `A314737(n)-A046978(2*n)` -/
def P9651758311380125710.Spec : Prop :=
  ∀ n, P9651758311380125710.a n = A313064 n

end A313064

/-! ## A313064.P8347020498514544955

`A005843(A008706(n))-A315485(n)`
-/

namespace A313064.P8347020498514544955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315485 n

end

end A313064.P8347020498514544955

namespace A313064

/-- `A005843(A008706(n))-A315485(n)` -/
def P8347020498514544955.Spec : Prop :=
  ∀ n, P8347020498514544955.a n = A313064 n

end A313064

/-!
# A313065: Coordination sequence Gal.6.592.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313065, there is no canonical definition to state claims against.
-/

/-! ## A313065.P14814196689565291137

`A313066(n)-A240351(A087783(n+1))`
-/

namespace A313065.P14814196689565291137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313066 n - A240351 (A087783 (n + 1)).toNat

end

end A313065.P14814196689565291137

/-! ## A313065.P15633666840743395993

`A313066(n)+A010815(A324460(3*n+1))`
-/

namespace A313065.P15633666840743395993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313066 n + A010815 (A324460 (3 * n + 1)).toNat

end

end A313065.P15633666840743395993

/-! ## A313065.P8055978263398664288

`A313066(n^gcd(11, n))`
-/

namespace A313065.P8055978263398664288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313066 (n ^ Nat.gcd 11 n)

end

end A313065.P8055978263398664288

/-! ## A313065.P13558193488332969114

`A313066(A062399(n))`
-/

namespace A313065.P13558193488332969114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313066 (A062399 n).toNat

end

end A313065.P13558193488332969114

/-! ## A313065.P7563134528674652893

`A313066(A120126(n))`
-/

namespace A313065.P7563134528674652893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313066 (A120126 n).toNat

end

end A313065.P7563134528674652893

/-!
# A313068: Coordination sequence Gal.5.262.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313068, there is no canonical definition to state claims against.
-/

/-! ## A313068.P2713732218004279366

`xor(A250120(n), A265435(A032559(n+1)))`
-/

namespace A313068.P2713732218004279366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A250120 n) (A265435 (A032559 (n + 1)).toNat)

end

end A313068.P2713732218004279366

/-! ## A313068.P7456138025446996087

`xor(A072154(2*n), A265435(A032559(n+1)))`
-/

namespace A313068.P7456138025446996087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A072154 (2 * n)) (A265435 (A032559 (n + 1)).toNat)

end

end A313068.P7456138025446996087

/-!
# A313069: Coordination sequence Gal.6.544.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313069, there is no canonical definition to state claims against.
-/

/-! ## A313069.P11391876155803013735

`A313183(n)-A033665(A033818(n+1))`
-/

namespace A313069.P11391876155803013735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313183 n - A033665 (A033818 (n + 1)).toNat

end

end A313069.P11391876155803013735

/-! ## A313069.P11668715340155906480

`A335716(A335717(n+2))+A312536(n)`
-/

namespace A313069.P11668715340155906480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335716 (A335717 (n + 2)).toNat + A312536 n

end

end A313069.P11668715340155906480

/-!
# A313070: Coordination sequence Gal.6.460.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313070, the canonical program `A313070.P12498649127613810780` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313070 has offset 0).

The definition of A313070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313070.P12498649127613810780

`A315541(n)-(A004396(n)+A004396(A004396(n)))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313070

/-- `A315541(n)-(A004396(n)+A004396(A004396(n)))` -/
def P12498649127613810780.Spec : Prop :=
  ∀ n, P12498649127613810780.a n = A313070 n

theorem P12498649127613810780.correct : P12498649127613810780.Spec := by
  intro n
  simp only [A313070]

end A313070

/-! ## A313070.P6664770628503171069

`A298024(n)-A059648(A038251(n))`
-/

namespace A313070.P6664770628503171069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A059648 (A038251 n).toNat

end

end A313070.P6664770628503171069

namespace A313070

/-- `A298024(n)-A059648(A038251(n))` -/
def P6664770628503171069.Spec : Prop :=
  ∀ n, P6664770628503171069.a n = A313070 n

end A313070

/-! ## A313070.P8356363808600457128

`A298024(n)-A328712(A033484(n))`
-/

namespace A313070.P8356363808600457128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A328712 (A033484 n).toNat

end

end A313070.P8356363808600457128

namespace A313070

/-- `A298024(n)-A328712(A033484(n))` -/
def P8356363808600457128.Spec : Prop :=
  ∀ n, P8356363808600457128.a n = A313070 n

end A313070

/-! ## A313070.P1177893221136242375

`A298024(n)-A341602(A307464(n))`
-/

namespace A313070.P1177893221136242375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A341602 (A307464 n).toNat

end

end A313070.P1177893221136242375

namespace A313070

/-- `A298024(n)-A341602(A307464(n))` -/
def P1177893221136242375.Spec : Prop :=
  ∀ n, P1177893221136242375.a n = A313070 n

end A313070

/-! ## A313070.P10221190504394724166

`A314098(n)-A001221(A053156(n+1))`
-/

namespace A313070.P10221190504394724166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314098 n - A001221 (A053156 (n + 1)).toNat

end

end A313070.P10221190504394724166

namespace A313070

/-- `A314098(n)-A001221(A053156(n+1))` -/
def P10221190504394724166.Spec : Prop :=
  ∀ n, P10221190504394724166.a n = A313070 n

end A313070

/-!
# A313071: Coordination sequence Gal.5.205.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313071, there is no canonical definition to state claims against.
-/

/-! ## A313071.P532735578351519683

`A311954(n)+A039997(A110490(n))`
-/

namespace A313071.P532735578351519683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311954 n + A039997 (A110490 n).toNat

end

end A313071.P532735578351519683

/-! ## A313071.P13777761128051787943

`A250120(n)-A031286(A038315(n))`
-/

namespace A313071.P13777761128051787943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A031286 (A038315 n).toNat

end

end A313071.P13777761128051787943

/-! ## A313071.P7591154404465862233

`A250120(n)-A052344(A113392(n))`
-/

namespace A313071.P7591154404465862233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A052344 (A113392 n).toNat

end

end A313071.P7591154404465862233

/-! ## A313071.P12088742188397879381

`A250120(n)-A033264(A132875(n))`
-/

namespace A313071.P12088742188397879381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A033264 (A132875 n).toNat

end

end A313071.P12088742188397879381

/-! ## A313071.P18066640495026798608

`A250120(n)-A178687(A111418(n))`
-/

namespace A313071.P18066640495026798608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A178687 (A111418 n).toNat

end

end A313071.P18066640495026798608

/-!
# A313072: Coordination sequence Gal.5.268.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313072, there is no canonical definition to state claims against.
-/

/-! ## A313072.P18146048601725348080

`(A310385(n)+A008579(n))/2`
-/

namespace A313072.P18146048601725348080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310385 n + A008579 n : ℚ) / 2

end

end A313072.P18146048601725348080

/-! ## A313072.P8826862026650118750

`A008579(n)+A001281(A310385(n)-A008579(n))`
-/

namespace A313072.P8826862026650118750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A001281 (A310385 n - A008579 n).toNat

end

end A313072.P8826862026650118750

/-! ## A313072.P6849762480431770422

`A008579(n)+A004525(A310385(n)-A008579(n))`
-/

namespace A313072.P6849762480431770422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A004525 (A310385 n - A008579 n).toNat

end

end A313072.P6849762480431770422

/-! ## A313072.P13290060324322509630

`A025480(A310385(n)-A008579(n))+A008579(n)`
-/

namespace A313072.P13290060324322509630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A310385 n - A008579 n).toNat + A008579 n

end

end A313072.P13290060324322509630

/-! ## A313072.P9804238878114943984

`A038572(A310385(n)-A008579(n))+A008579(n)`
-/

namespace A313072.P9804238878114943984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A310385 n - A008579 n).toNat + A008579 n

end

end A313072.P9804238878114943984

/-! ## A313072.P18405097706382298474

`A142150(A310385(n)-A008579(n))+A008579(n)`
-/

namespace A313072.P18405097706382298474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A310385 n - A008579 n).toNat + A008579 n

end

end A313072.P18405097706382298474

/-! ## A313072.P5351142404942582182

`A310385(n)-A004526(A310385(n)-A008579(n))`
-/

namespace A313072.P5351142404942582182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310385 n - A004526 (A310385 n - A008579 n).toNat

end

end A313072.P5351142404942582182

/-! ## A313072.P9873296161676283657

`A008458(n)+A008579(n)-A315564(n)`
-/

namespace A313072.P9873296161676283657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A315564 n)

end

end A313072.P9873296161676283657

/-! ## A313072.P17572671053976086717

`A038572(A310385(n)+A008579(n))`
-/

namespace A313072.P17572671053976086717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A310385 n + A008579 n).toNat

end

end A313072.P17572671053976086717

/-! ## A313072.P1662491607222751377

`A004525(A310385(n)+A008579(n))`
-/

namespace A313072.P1662491607222751377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310385 n + A008579 n).toNat

end

end A313072.P1662491607222751377

/-! ## A313072.P8159321300545617024

`A025480(A310385(n)+A008579(n))`
-/

namespace A313072.P8159321300545617024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A310385 n + A008579 n).toNat

end

end A313072.P8159321300545617024

/-! ## A313072.P4486041923594177363

`A008619(A008579(n)+A310385(n)-1)`
-/

namespace A313072.P4486041923594177363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008579 n + (A310385 n - 1)).toNat

end

end A313072.P4486041923594177363

/-! ## A313072.P9013870217832652030

`A065033(A008579(n)+A310385(n)-1)`
-/

namespace A313072.P9013870217832652030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008579 n + (A310385 n - 1)).toNat

end

end A313072.P9013870217832652030

/-! ## A313072.P17709415360151818436

`A008619(A008579(n)-(1-A310385(n)))`
-/

namespace A313072.P17709415360151818436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008579 n - (1 - A310385 n)).toNat

end

end A313072.P17709415360151818436

/-! ## A313072.P16697189089055206816

`A065033(A008579(n)-(1-A310385(n)))`
-/

namespace A313072.P16697189089055206816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008579 n - (1 - A310385 n)).toNat

end

end A313072.P16697189089055206816

/-! ## A313072.P2129379301871728251

`A001281(A310385(n)+A008579(n))`
-/

namespace A313072.P2129379301871728251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A310385 n + A008579 n).toNat

end

end A313072.P2129379301871728251

/-! ## A313072.P6869404741702525651

`A004526(A310385(n)+A008579(n))`
-/

namespace A313072.P6869404741702525651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310385 n + A008579 n).toNat

end

end A313072.P6869404741702525651

/-! ## A313072.P13458973837607972890

`A065033(A310385(n)+A008579(n))`
-/

namespace A313072.P13458973837607972890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A310385 n + A008579 n).toNat

end

end A313072.P13458973837607972890

/-! ## A313072.P16557562506625042934

`A142150(A310385(n)+A008579(n))`
-/

namespace A313072.P16557562506625042934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A310385 n + A008579 n).toNat

end

end A313072.P16557562506625042934

/-!
# A313073: Coordination sequence Gal.5.199.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313073, there is no canonical definition to state claims against.
-/

/-! ## A313073.P10064567580831483567

`A311488(n)+A001222(A149651(n))`
-/

namespace A313073.P10064567580831483567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311488 n + A001222 (A149651 n).toNat

end

end A313073.P10064567580831483567

/-! ## A313073.P9822895242167674582

`A359674(A080715(n+1))+A003159(2*n+1)`
-/

namespace A313073.P9822895242167674582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359674 (A080715 (n + 1)).toNat + A003159 (2 * n + 1)

end

end A313073.P9822895242167674582

/-! ## A313073.P10909444474316777896

`A312133(n)+A059841(A106228(n))`
-/

namespace A313073.P10909444474316777896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312133 n + A059841 (A106228 n).toNat

end

end A313073.P10909444474316777896

/-! ## A313073.P7666133716537434310

`A311270(n)+A001221(A263929(n))`
-/

namespace A313073.P7666133716537434310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311270 n + A001221 (A263929 n).toNat

end

end A313073.P7666133716537434310

/-!
# A313074: Coordination sequence Gal.5.152.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313074, there is no canonical definition to state claims against.
-/

/-! ## A313074.P18276999524041093977

`A250120(n)-A005614(A116426(n))`
-/

namespace A313074.P18276999524041093977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A005614 (A116426 n).toNat

end

end A313074.P18276999524041093977

/-! ## A313074.P15014193339538867986

`A008706(n)-A305054(A112714(n+1))`
-/

namespace A313074.P15014193339538867986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A305054 (A112714 (n + 1)).toNat

end

end A313074.P15014193339538867986

/-! ## A313074.P12744980332408164383

`A250120(n)-A040051(A255736(n+1))`
-/

namespace A313074.P12744980332408164383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A040051 (A255736 (n + 1)).toNat

end

end A313074.P12744980332408164383

/-! ## A313074.P11622939059429253168

`A250120(n)-A285277(A051797(n)+1)`
-/

namespace A313074.P11622939059429253168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A285277 (A051797 n + 1).toNat

end

end A313074.P11622939059429253168

/-! ## A313074.P11919239680612052033

`A250120(n)-A362240(A004800(n+1))`
-/

namespace A313074.P11919239680612052033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A362240 (A004800 (n + 1)).toNat

end

end A313074.P11919239680612052033

/-!
# A313075: Coordination sequence Gal.6.456.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313075, there is no canonical definition to state claims against.
-/

/-! ## A313075.P6067177274264742613

`A250120(n)-A010060(A000957(n))`
-/

namespace A313075.P6067177274264742613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A010060 (A000957 n).toNat

end

end A313075.P6067177274264742613

/-! ## A313075.P1307328379960189825

`A250120(n)-A118249(A000995(n))`
-/

namespace A313075.P1307328379960189825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A118249 (A000995 n).toNat

end

end A313075.P1307328379960189825

/-! ## A313075.P12507236031976426248

`A250120(n)-A083035(A162694(n+1))`
-/

namespace A313075.P12507236031976426248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A083035 (A162694 (n + 1)).toNat

end

end A313075.P12507236031976426248

/-! ## A313075.P16875586028191853850

`A250120(n)-A266514(A266521(n+1))`
-/

namespace A313075.P16875586028191853850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A266514 (A266521 (n + 1)).toNat

end

end A313075.P16875586028191853850

/-! ## A313075.P9871855569054688416

`A250120(n)-A156728(A082894(n+2))`
-/

namespace A313075.P9871855569054688416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A156728 (A082894 (n + 2)).toNat

end

end A313075.P9871855569054688416

/-!
# A313076: Coordination sequence Gal.6.156.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313076, the canonical program `A313076.P9761117632768940615` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313076 has offset 0).

The definition of A313076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313076.P9761117632768940615

`A311964(n)+∑[A022003(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313076

/-- `A311964(n)+∑[A022003(n)]` -/
def P9761117632768940615.Spec : Prop :=
  ∀ n, P9761117632768940615.a n = A313076 n

theorem P9761117632768940615.correct : P9761117632768940615.Spec := by
  intro n
  simp only [A313076]

end A313076

/-! ## A313076.P2878367926850816474

`A312950(n)+Δ[A011865(n)]`
-/

namespace A313076.P2878367926850816474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + (f1 (n + 1) - f1 n)

end

end A313076.P2878367926850816474

namespace A313076

/-- `A312950(n)+Δ[A011865(n)]` -/
def P2878367926850816474.Spec : Prop :=
  ∀ n, P2878367926850816474.a n = A313076 n

end A313076

/-! ## A313076.P1945935361944785260

`A311964(n)+A002264(n+1)`
-/

namespace A313076.P1945935361944785260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 n + A002264 (n + 1)

end

end A313076.P1945935361944785260

namespace A313076

/-- `A311964(n)+A002264(n+1)` -/
def P1945935361944785260.Spec : Prop :=
  ∀ n, P1945935361944785260.a n = A313076 n

end A313076

/-! ## A313076.P11909885363074474301

`A311964(n)+n-A004396(n)`
-/

namespace A313076.P11909885363074474301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 n + ((n : ℤ) - A004396 n)

end

end A313076.P11909885363074474301

namespace A313076

/-- `A311964(n)+n-A004396(n)` -/
def P11909885363074474301.Spec : Prop :=
  ∀ n, P11909885363074474301.a n = A313076 n

end A313076

/-! ## A313076.P12011545716225419953

`A311964(n)+A008615(2*n+1)`
-/

namespace A313076.P12011545716225419953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 n + A008615 (2 * n + 1)

end

end A313076.P12011545716225419953

namespace A313076

/-- `A311964(n)+A008615(2*n+1)` -/
def P12011545716225419953.Spec : Prop :=
  ∀ n, P12011545716225419953.a n = A313076 n

end A313076

/-! ## A313076.P14855140300776780153

`A008486(n)+A311964(n)-A008576(n)`
-/

namespace A313076.P14855140300776780153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A311964 n - A008576 n)

end

end A313076.P14855140300776780153

namespace A313076

/-- `A008486(n)+A311964(n)-A008576(n)` -/
def P14855140300776780153.Spec : Prop :=
  ∀ n, P14855140300776780153.a n = A313076 n

end A313076

/-! ## A313076.P786280074245516846

`A128834(n)+A313246(n)-A128834(A004525(n))`
-/

namespace A313076.P786280074245516846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A313246 n - A128834 (A004525 n).toNat)

end

end A313076.P786280074245516846

namespace A313076

/-- `A128834(n)+A313246(n)-A128834(A004525(n))` -/
def P786280074245516846.Spec : Prop :=
  ∀ n, P786280074245516846.a n = A313076 n

end A313076

/-! ## A313076.P9586477245912572430

`A313693(n)-A128834(A004525(n))`
-/

namespace A313076.P9586477245912572430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n - A128834 (A004525 n).toNat

end

end A313076.P9586477245912572430

namespace A313076

/-- `A313693(n)-A128834(A004525(n))` -/
def P9586477245912572430.Spec : Prop :=
  ∀ n, P9586477245912572430.a n = A313076 n

end A313076

/-! ## A313076.P10672695285525847816

`abs(A008592(n)-A315482(n))`
-/

namespace A313076.P10672695285525847816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315482 n|

end

end A313076.P10672695285525847816

namespace A313076

/-- `abs(A008592(n)-A315482(n))` -/
def P10672695285525847816.Spec : Prop :=
  ∀ n, P10672695285525847816.a n = A313076 n

end A313076

/-! ## A313076.P7658392719854671415

`A008458(n)+A008574(n)-A315482(n)`
-/

namespace A313076.P7658392719854671415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315482 n)

end

end A313076.P7658392719854671415

namespace A313076

/-- `A008458(n)+A008574(n)-A315482(n)` -/
def P7658392719854671415.Spec : Prop :=
  ∀ n, P7658392719854671415.a n = A313076 n

end A313076

/-! ## A313076.P9139590791807497634

`∑{d}[A008592(n)-A315482(n), A000010(#)]`
-/

namespace A313076.P9139590791807497634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313076.P9139590791807497634

namespace A313076

/-- `∑{d}[A008592(n)-A315482(n), A000010(#)]` -/
def P9139590791807497634.Spec : Prop :=
  ∀ n, P9139590791807497634.a n = A313076 n

end A313076

/-! ## A313076.P10037966376372272264

`A313900(n)-A004396(n)`
-/

namespace A313076.P10037966376372272264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313900 n - A004396 n

end

end A313076.P10037966376372272264

namespace A313076

/-- `A313900(n)-A004396(n)` -/
def P10037966376372272264.Spec : Prop :=
  ∀ n, P10037966376372272264.a n = A313076 n

end A313076

/-! ## A313076.P97267925661265066

`A313900(n)+1-A004523(n+2)`
-/

namespace A313076.P97267925661265066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313900 n + 1 - A004523 (n + 2)

end

end A313076.P97267925661265066

namespace A313076

/-- `A313900(n)+1-A004523(n+2)` -/
def P97267925661265066.Spec : Prop :=
  ∀ n, P97267925661265066.a n = A313076 n

end A313076

/-! ## A313076.P6169445003460986007

`A313900(n)-A002264(2*n+1)`
-/

namespace A313076.P6169445003460986007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313900 n - A002264 (2 * n + 1)

end

end A313076.P6169445003460986007

namespace A313076

/-- `A313900(n)-A002264(2*n+1)` -/
def P6169445003460986007.Spec : Prop :=
  ∀ n, P6169445003460986007.a n = A313076 n

end A313076

/-! ## A313076.P4539943408970197849

`A313900(n)-A004525(A004773(n))`
-/

namespace A313076.P4539943408970197849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313900 n - A004525 (A004773 n).toNat

end

end A313076.P4539943408970197849

namespace A313076

/-- `A313900(n)-A004525(A004773(n))` -/
def P4539943408970197849.Spec : Prop :=
  ∀ n, P4539943408970197849.a n = A313076 n

end A313076

/-!
# A313078: Coordination sequence Gal.5.67.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313078, the canonical program `A313078.P17380493994389403351` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313078 has offset 0).

The definition of A313078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313078.P17380493994389403351

`A313692(n)-A330025(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313078

/-- `A313692(n)-A330025(n)` -/
def P17380493994389403351.Spec : Prop :=
  ∀ n, P17380493994389403351.a n = A313078 n

theorem P17380493994389403351.correct : P17380493994389403351.Spec := by
  intro n
  simp only [A313078]

end A313078

/-! ## A313078.P10173149107475603799

`A330025(n+5)+A313692(n)`
-/

namespace A313078.P10173149107475603799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (n + 5) + A313692 n

end

end A313078.P10173149107475603799

namespace A313078

/-- `A330025(n+5)+A313692(n)` -/
def P10173149107475603799.Spec : Prop :=
  ∀ n, P10173149107475603799.a n = A313078 n

end A313078

/-! ## A313078.P3183620486721791834

`A315445(n)-2*A330025(n)`
-/

namespace A313078.P3183620486721791834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315445 n - 2 * A330025 n

end

end A313078.P3183620486721791834

namespace A313078

/-- `A315445(n)-2*A330025(n)` -/
def P3183620486721791834.Spec : Prop :=
  ∀ n, P3183620486721791834.a n = A313078 n

end A313078

/-! ## A313078.P1762773194814459822

`A310439(n)-A330025(n-A330025(n))`
-/

namespace A313078.P1762773194814459822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310439 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A313078.P1762773194814459822

namespace A313078

/-- `A310439(n)-A330025(n-A330025(n))` -/
def P1762773194814459822.Spec : Prop :=
  ∀ n, P1762773194814459822.a n = A313078 n

end A313078

/-! ## A313078.P2485286212132739793

`A310464(n)-Δ[A011858(n)]`
-/

namespace A313078.P2485286212132739793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310464 n - (f1 (n + 1) - f1 n)

end

end A313078.P2485286212132739793

namespace A313078

/-- `A310464(n)-Δ[A011858(n)]` -/
def P2485286212132739793.Spec : Prop :=
  ∀ n, P2485286212132739793.a n = A313078 n

end A313078

/-! ## A313078.P13274944170986504768

`A310464(n)-A057354(n+1)`
-/

namespace A313078.P13274944170986504768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310464 n - A057354 (n + 1)

end

end A313078.P13274944170986504768

namespace A313078

/-- `A310464(n)-A057354(n+1)` -/
def P13274944170986504768.Spec : Prop :=
  ∀ n, P13274944170986504768.a n = A313078 n

end A313078

/-! ## A313078.P4830445120510478805

`abs(A008592(n)-A315481(n))`
-/

namespace A313078.P4830445120510478805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315481 n|

end

end A313078.P4830445120510478805

namespace A313078

/-- `abs(A008592(n)-A315481(n))` -/
def P4830445120510478805.Spec : Prop :=
  ∀ n, P4830445120510478805.a n = A313078 n

end A313078

/-! ## A313078.P2808197907293941011

`2*A008706(n)-A315481(n)`
-/

namespace A313078.P2808197907293941011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315481 n

end

end A313078.P2808197907293941011

namespace A313078

/-- `2*A008706(n)-A315481(n)` -/
def P2808197907293941011.Spec : Prop :=
  ∀ n, P2808197907293941011.a n = A313078 n

end A313078

/-! ## A313078.P7849926256406634531

`A008458(n)+A008574(n)-A315481(n)`
-/

namespace A313078.P7849926256406634531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315481 n)

end

end A313078.P7849926256406634531

namespace A313078

/-- `A008458(n)+A008574(n)-A315481(n)` -/
def P7849926256406634531.Spec : Prop :=
  ∀ n, P7849926256406634531.a n = A313078 n

end A313078

/-! ## A313078.P3382123556761463440

`A315481(n)-A005843(A315481(n)-A008706(n))`
-/

namespace A313078.P3382123556761463440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315481 n - A005843 (A315481 n - A008706 n).toNat

end

end A313078.P3382123556761463440

namespace A313078

/-- `A315481(n)-A005843(A315481(n)-A008706(n))` -/
def P3382123556761463440.Spec : Prop :=
  ∀ n, P3382123556761463440.a n = A313078 n

end A313078

/-! ## A313078.P3269423083417754000

`A064429(A314740(n)+A000007(n))`
-/

namespace A313078.P3269423083417754000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A314740 n + A000007 n).toNat

end

end A313078.P3269423083417754000

namespace A313078

/-- `A064429(A314740(n)+A000007(n))` -/
def P3269423083417754000.Spec : Prop :=
  ∀ n, P3269423083417754000.a n = A313078 n

end A313078

/-! ## A313078.P243356234596428548

`A005843(A008706(n))-A315481(n)`
-/

namespace A313078.P243356234596428548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315481 n

end

end A313078.P243356234596428548

namespace A313078

/-- `A005843(A008706(n))-A315481(n)` -/
def P243356234596428548.Spec : Prop :=
  ∀ n, P243356234596428548.a n = A313078 n

end A313078

/-! ## A313078.P10236013312998920624

`A151988(n)+A004396(A301726(n))`
-/

namespace A313078.P10236013312998920624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + A004396 (A301726 n).toNat

end

end A313078.P10236013312998920624

namespace A313078

/-- `A151988(n)+A004396(A301726(n))` -/
def P10236013312998920624.Spec : Prop :=
  ∀ n, P10236013312998920624.a n = A313078 n

end A313078

/-!
# A313079: Coordination sequence Gal.6.380.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313079, there is no canonical definition to state claims against.
-/

/-! ## A313079.P2406793768810050839

`A312954(n)+A033665(A033818(n+1))`
-/

namespace A313079.P2406793768810050839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312954 n + A033665 (A033818 (n + 1)).toNat

end

end A313079.P2406793768810050839

/-!
# A313080: Coordination sequence Gal.6.368.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313080, there is no canonical definition to state claims against.
-/

/-! ## A313080.P3549565877476977833

`A311994(n)+A001221(A049152(n))`
-/

namespace A313080.P3549565877476977833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311994 n + A001221 (A049152 n).toNat

end

end A313080.P3549565877476977833

/-! ## A313080.P10556787143462749808

`A301301(n)+A007814(A289501(n))`
-/

namespace A313080.P10556787143462749808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A007814 (A289501 n).toNat

end

end A313080.P10556787143462749808

/-! ## A313080.P14921917758089895109

`A312567(n)+A188432(A190050(n))`
-/

namespace A313080.P14921917758089895109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312567 n + A188432 (A190050 n).toNat

end

end A313080.P14921917758089895109

/-! ## A313080.P6294053394686046396

`A312556(n)+A284905(A147704(n))`
-/

namespace A313080.P6294053394686046396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312556 n + A284905 (A147704 n).toNat

end

end A313080.P6294053394686046396

/-! ## A313080.P14855370850283508726

`A315014(n)-A010051(A006134(n))`
-/

namespace A313080.P14855370850283508726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315014 n - A010051 (A006134 n).toNat

end

end A313080.P14855370850283508726

/-!
# A313081: Coordination sequence Gal.6.267.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313081, there is no canonical definition to state claims against.
-/

/-! ## A313081.P7324651740874007374

`A313522(n)+A238468(2*n)`
-/

namespace A313081.P7324651740874007374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313522 n + A238468 (2 * n)

end

end A313081.P7324651740874007374

/-! ## A313081.P17755170200799411225

`A313051(n)+A046698(A074357(n))`
-/

namespace A313081.P17755170200799411225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313051 n + A046698 (A074357 n).toNat

end

end A313081.P17755170200799411225

/-! ## A313081.P11573700316961542428

`A312912(n)+A051659(A312920(n))`
-/

namespace A313081.P11573700316961542428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312912 n + A051659 (A312920 n).toNat

end

end A313081.P11573700316961542428

/-! ## A313081.P2215215588874833702

`A312160(n)+A054521(A108540(n+1))`
-/

namespace A313081.P2215215588874833702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n + A054521 (A108540 (n + 1)).toNat

end

end A313081.P2215215588874833702

/-! ## A313081.P8579314838849380282

`A352516(A191669(n+1))+A312160(n)`
-/

namespace A313081.P8579314838849380282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 (A191669 (n + 1)).toNat + A312160 n

end

end A313081.P8579314838849380282

/-!
# A313082: Coordination sequence Gal.5.250.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313082, there is no canonical definition to state claims against.
-/

/-! ## A313082.P15967597540455553115

`A250120(n)-A242869(A345405(n+3))`
-/

namespace A313082.P15967597540455553115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A242869 (A345405 (n + 3)).toNat

end

end A313082.P15967597540455553115

/-! ## A313082.P3649573457346333191

`or(A255327(A064636(n)), A312434(n))`
-/

namespace A313082.P3649573457346333191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A255327 (A064636 n).toNat) (A312434 n)

end

end A313082.P3649573457346333191

/-! ## A313082.P9214558083762254576

`or(A288670(A067649(n)), A312434(n))`
-/

namespace A313082.P9214558083762254576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A288670 (A067649 n).toNat) (A312434 n)

end

end A313082.P9214558083762254576

/-!
# A313083: Coordination sequence Gal.6.309.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313083, there is no canonical definition to state claims against.
-/

/-! ## A313083.P17630535150439281158

`A312440(n)+A124761(A032820(n+1))`
-/

namespace A313083.P17630535150439281158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312440 n + A124761 (A032820 (n + 1)).toNat

end

end A313083.P17630535150439281158

/-! ## A313083.P3275669119893115012

`A334109(A000081(n+3))+A310257(n)`
-/

namespace A313083.P3275669119893115012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334109 (A000081 (n + 3)).toNat + A310257 n

end

end A313083.P3275669119893115012

/-! ## A313083.P3985126256404008080

`∑[A335424(A196158(n+1)!)]`
-/

namespace A313083.P3985126256404008080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (Nat.factorial (A196158 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313083.P3985126256404008080

/-! ## A313083.P10153488491172495657

`∑[A329317(∑[A111807(n+1)])]`
-/

namespace A313083.P10153488491172495657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111807 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329317 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313083.P10153488491172495657

/-!
# A313084: Coordination sequence Gal.6.545.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313084, there is no canonical definition to state claims against.
-/

/-! ## A313084.P32979800914378938

`A138363(n+1)+A008579(A087051(n))`
-/

namespace A313084.P32979800914378938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138363 (n + 1) + A008579 (A087051 n).toNat

end

end A313084.P32979800914378938

/-! ## A313084.P4088022260252360929

`A312456(n)+A255124(A070743(n+1))`
-/

namespace A313084.P4088022260252360929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312456 n + A255124 (A070743 (n + 1)).toNat

end

end A313084.P4088022260252360929

/-! ## A313084.P15702190171706025748

`A250120(n)-A127325(A002113(2*(n+1)))`
-/

namespace A313084.P15702190171706025748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A127325 (A002113 (2 * (n + 1))).toNat

end

end A313084.P15702190171706025748

/-! ## A313084.P7194279783304095501

`or((A182299(3*n+5)%(n+1))², A008579(n))`
-/

namespace A313084.P7194279783304095501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A182299 (3 * n + 5)) (n + 1 : ℤ) ^ 2) (A008579 n)

end

end A313084.P7194279783304095501

/-! ## A313084.P381159836821801995

`A010051(A003470(n))+A008579(n)`
-/

namespace A313084.P381159836821801995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A003470 n).toNat + A008579 n

end

end A313084.P381159836821801995

/-!
# A313085: Coordination sequence Gal.6.554.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313085, there is no canonical definition to state claims against.
-/

/-! ## A313085.P5810142273169652918

`xor(A001221(A001256(n)), A313049(n))`
-/

namespace A313085.P5810142273169652918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A001256 n).toNat) (A313049 n)

end

end A313085.P5810142273169652918

/-! ## A313085.P12434678210646999383

`A110582(A081587(n))+1-A110582(n)`
-/

namespace A313085.P12434678210646999383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110582 (A081587 n).toNat + (1 - A110582 n)

end

end A313085.P12434678210646999383

/-! ## A313085.P10823781248878238154

`A310231(n)+A001222(A340388(n+1))`
-/

namespace A313085.P10823781248878238154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310231 n + A001222 (A340388 (n + 1)).toNat

end

end A313085.P10823781248878238154

/-! ## A313085.P10433710093665948264

`A173633(A313832(n))+A001222(A340388(n+1))`
-/

namespace A313085.P10433710093665948264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173633 (A313832 n).toNat + A001222 (A340388 (n + 1)).toNat

end

end A313085.P10433710093665948264

/-! ## A313085.P17399115237421377935

`A312007(n)+A001221(A000088(n))`
-/

namespace A313085.P17399115237421377935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312007 n + A001221 (A000088 n).toNat

end

end A313085.P17399115237421377935

/-!
# A313086: Coordination sequence Gal.6.478.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313086, there is no canonical definition to state claims against.
-/

/-! ## A313086.P17361129655132401427

`A190434(A125152(∑[n+1]))`
-/

namespace A313086.P17361129655132401427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190434 (A125152 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A313086.P17361129655132401427

/-! ## A313086.P12903747108311440597

`A008574(n)+A001222(A135069(n+1))`
-/

namespace A313086.P12903747108311440597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A135069 (n + 1)).toNat

end

end A313086.P12903747108311440597

/-!
# A313087: Coordination sequence Gal.6.310.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313087, there is no canonical definition to state claims against.
-/

/-! ## A313087.P6634032151537090463

`A310456(n)-A001221(A149567(n))`
-/

namespace A313087.P6634032151537090463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310456 n - A001221 (A149567 n).toNat

end

end A313087.P6634032151537090463

/-! ## A313087.P15759510740508706140

`xor(A244735(A007837(n)), A301293(n))`
-/

namespace A313087.P15759510740508706140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A244735 (A007837 n).toNat) (A301293 n)

end

end A313087.P15759510740508706140

/-! ## A313087.P7222860609762620226

`A313096(n)-A326753(A000579(n)²)`
-/

namespace A313087.P7222860609762620226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313096 n - A326753 (A000579 n ^ 2).toNat

end

end A313087.P7222860609762620226

/-! ## A313087.P8450735838200547606

`A008574(n)+A001222(A063415(∑[n]))`
-/

namespace A313087.P8450735838200547606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A063415 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A313087.P8450735838200547606

/-! ## A313087.P14655583238005937283

`A008574(n)+A001222(A063179(n+1))`
-/

namespace A313087.P14655583238005937283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A063179 (n + 1)).toNat

end

end A313087.P14655583238005937283

/-!
# A313088: Coordination sequence Gal.6.120.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313088, the canonical program `A313088.P8261115150776480095` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313088 has offset 0).

The definition of A313088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313088.P16335990327372634479

`A313485(n)-A128834(n)`
-/

namespace A313088.P16335990327372634479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n - A128834 n

end

end A313088.P16335990327372634479

namespace A313088

/-- `A313485(n)-A128834(n)` -/
def P16335990327372634479.Spec : Prop :=
  ∀ n, P16335990327372634479.a n = A313088 n

end A313088

/-! ## A313088.P8552755361820409229

`A315687(n)-(A128834(n)+n)`
-/

namespace A313088.P8552755361820409229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315687 n - (A128834 n + (n : ℤ))

end

end A313088.P8552755361820409229

namespace A313088

/-- `A315687(n)-(A128834(n)+n)` -/
def P8552755361820409229.Spec : Prop :=
  ∀ n, P8552755361820409229.a n = A313088 n

end A313088

/-! ## A313088.P6132277357222405987

`abs(A008592(n)-(A314688(n)+n))`
-/

namespace A313088.P6132277357222405987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A314688 n + (n : ℤ))|

end

end A313088.P6132277357222405987

namespace A313088

/-- `abs(A008592(n)-(A314688(n)+n))` -/
def P6132277357222405987.Spec : Prop :=
  ∀ n, P6132277357222405987.a n = A313088 n

end A313088

/-! ## A313088.P8261115150776480095

`A047513(n+1)+A312890(n)-n`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313088

/-- `A047513(n+1)+A312890(n)-n` -/
def P8261115150776480095.Spec : Prop :=
  ∀ n, P8261115150776480095.a n = A313088 n

theorem P8261115150776480095.correct : P8261115150776480095.Spec := by
  intro n
  simp only [A313088]

end A313088

/-! ## A313088.P10969864616043974197

`A315687(n)+A010892(n+2)-n`
-/

namespace A313088.P10969864616043974197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315687 n + A010892 (n + 2) - (n : ℤ)

end

end A313088.P10969864616043974197

namespace A313088

/-- `A315687(n)+A010892(n+2)-n` -/
def P10969864616043974197.Spec : Prop :=
  ∀ n, P10969864616043974197.a n = A313088 n

end A313088

/-! ## A313088.P9643581545463735283

`A313485(n)-A046978(A004396(2*n))`
-/

namespace A313088.P9643581545463735283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n - A046978 (A004396 (2 * n)).toNat

end

end A313088.P9643581545463735283

namespace A313088

/-- `A313485(n)-A046978(A004396(2*n))` -/
def P9643581545463735283.Spec : Prop :=
  ∀ n, P9643581545463735283.a n = A313088 n

end A313088

/-! ## A313088.P3084627935256667743

`A008706(n)-A004525(A128834(n)+n)`
-/

namespace A313088.P3084627935256667743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A004525 (A128834 n + (n : ℤ)).toNat

end

end A313088.P3084627935256667743

namespace A313088

/-- `A008706(n)-A004525(A128834(n)+n)` -/
def P3084627935256667743.Spec : Prop :=
  ∀ n, P3084627935256667743.a n = A313088 n

end A313088

/-! ## A313088.P10929342101650286099

`A008458(n)+A008486(n)-A314688(n)`
-/

namespace A313088.P10929342101650286099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314688 n)

end

end A313088.P10929342101650286099

namespace A313088

/-- `A008458(n)+A008486(n)-A314688(n)` -/
def P10929342101650286099.Spec : Prop :=
  ∀ n, P10929342101650286099.a n = A313088 n

end A313088

/-! ## A313088.P9332284792638797902

`A004396(A004525(n))+A313136(n)-A004525(n)`
-/

namespace A313088.P9332284792638797902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313136 n - A004525 n)

end

end A313088.P9332284792638797902

namespace A313088

/-- `A004396(A004525(n))+A313136(n)-A004525(n)` -/
def P9332284792638797902.Spec : Prop :=
  ∀ n, P9332284792638797902.a n = A313088 n

end A313088

/-! ## A313088.P4340257067762969355

`A310452(n)-A004396(n-A004525(n))`
-/

namespace A313088.P4340257067762969355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310452 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A313088.P4340257067762969355

namespace A313088

/-- `A310452(n)-A004396(n-A004525(n))` -/
def P4340257067762969355.Spec : Prop :=
  ∀ n, P4340257067762969355.a n = A313088 n

end A313088

/-! ## A313088.P13400634976894929212

`A313778(n)-A004525(n)`
-/

namespace A313088.P13400634976894929212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n - A004525 n

end

end A313088.P13400634976894929212

namespace A313088

/-- `A313778(n)-A004525(n)` -/
def P13400634976894929212.Spec : Prop :=
  ∀ n, P13400634976894929212.a n = A313088 n

theorem P13400634976894929212.correct : P13400634976894929212.Spec := by
  intro n
  simp only [A313088, Nat.add_sub_cancel, A313088.P13400634976894929212.a, A313088.P8261115150776480095.a, A004525, A004525.P4158271949796742323.a, A047513, A047513.P16955071387491425171.f1, A047513.P16955071387491425171.a, A312890, A312890.P5869710039852604831.a, A313778, A313778.P4235496493182944354.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313088

/-! ## A313088.P17487628449841746310

`Δ[A011848(n)]+A313778(n)-n`
-/

namespace A313088.P17487628449841746310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313778 n - (n : ℤ))

end

end A313088.P17487628449841746310

namespace A313088

/-- `Δ[A011848(n)]+A313778(n)-n` -/
def P17487628449841746310.Spec : Prop :=
  ∀ n, P17487628449841746310.a n = A313088 n

end A313088

/-! ## A313088.P13601044994371688379

`A315488(n)-(A004525(A004396(n))+A004525(n))`
-/

namespace A313088.P13601044994371688379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315488 n - (A004525 (A004396 n).toNat + A004525 n)

end

end A313088.P13601044994371688379

namespace A313088

/-- `A315488(n)-(A004525(A004396(n))+A004525(n))` -/
def P13601044994371688379.Spec : Prop :=
  ∀ n, P13601044994371688379.a n = A313088 n

end A313088

/-! ## A313088.P15086240633496925619

`A315534(n)-(A134667(n)+n)`
-/

namespace A313088.P15086240633496925619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315534 n - (A134667 n + (n : ℤ))

end

end A313088.P15086240633496925619

namespace A313088

/-- `A315534(n)-(A134667(n)+n)` -/
def P15086240633496925619.Spec : Prop :=
  ∀ n, P15086240633496925619.a n = A313088 n

end A313088

/-! ## A313088.P16800759722458585630

`abs(A008592(n)-A315479(n))`
-/

namespace A313088.P16800759722458585630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315479 n|

end

end A313088.P16800759722458585630

namespace A313088

/-- `abs(A008592(n)-A315479(n))` -/
def P16800759722458585630.Spec : Prop :=
  ∀ n, P16800759722458585630.a n = A313088 n

end A313088

/-! ## A313088.P3601571624625321992

`A008458(n)+A008574(n)-A315479(n)`
-/

namespace A313088.P3601571624625321992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315479 n)

end

end A313088.P3601571624625321992

namespace A313088

/-- `A008458(n)+A008574(n)-A315479(n)` -/
def P3601571624625321992.Spec : Prop :=
  ∀ n, P3601571624625321992.a n = A313088 n

end A313088

/-! ## A313088.P13319325618547989139

`A314236(n)-n`
-/

namespace A313088.P13319325618547989139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314236 n - (n : ℤ)

end

end A313088.P13319325618547989139

namespace A313088

/-- `A314236(n)-n` -/
def P13319325618547989139.Spec : Prop :=
  ∀ n, P13319325618547989139.a n = A313088 n

theorem P13319325618547989139.correct : P13319325618547989139.Spec := by
  intro n
  simp only [A313088, Nat.add_sub_cancel, A313088.P13319325618547989139.a, A313088.P8261115150776480095.a, A047513, A047513.P16955071387491425171.f1, A047513.P16955071387491425171.a, A312890, A312890.P5869710039852604831.a, A314236, A314236.P11197453166256301907.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313088

/-! ## A313088.P14389814314431095369

`A315763(n)-A047424(n+1)`
-/

namespace A313088.P14389814314431095369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - A047424 (n + 1)

end

end A313088.P14389814314431095369

namespace A313088

/-- `A315763(n)-A047424(n+1)` -/
def P14389814314431095369.Spec : Prop :=
  ∀ n, P14389814314431095369.a n = A313088 n

end A313088

/-! ## A313088.P1611393836940809690

`A004525(A313803(2*n))-n`
-/

namespace A313088.P1611393836940809690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313803 (2 * n)).toNat - (n : ℤ)

end

end A313088.P1611393836940809690

namespace A313088

/-- `A004525(A313803(2*n))-n` -/
def P1611393836940809690.Spec : Prop :=
  ∀ n, P1611393836940809690.a n = A313088 n

end A313088

/-! ## A313088.P3885336356823951713

`A004525(A313900(2*n))-n`
-/

namespace A313088.P3885336356823951713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313900 (2 * n)).toNat - (n : ℤ)

end

end A313088.P3885336356823951713

namespace A313088

/-- `A004525(A313900(2*n))-n` -/
def P3885336356823951713.Spec : Prop :=
  ∀ n, P3885336356823951713.a n = A313088 n

end A313088

/-!
# A313089: Coordination sequence Gal.6.221.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313089, the canonical program `A313089.P10705222389675751159` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313089 has offset 0).

The definition of A313089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313089.P10705222389675751159

`abs(A008592(n)-A315478(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313089

/-- `abs(A008592(n)-A315478(n))` -/
def P10705222389675751159.Spec : Prop :=
  ∀ n, P10705222389675751159.a n = A313089 n

theorem P10705222389675751159.correct : P10705222389675751159.Spec := by
  intro n
  simp only [A313089]

end A313089

/-! ## A313089.P10652363236734110461

`A313212(n)-Δ[A011864(n)]`
-/

namespace A313089.P10652363236734110461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313212 n - (f1 (n + 1) - f1 n)

end

end A313089.P10652363236734110461

namespace A313089

/-- `A313212(n)-Δ[A011864(n)]` -/
def P10652363236734110461.Spec : Prop :=
  ∀ n, P10652363236734110461.a n = A313089 n

end A313089

/-! ## A313089.P8432574788229918621

`A008458(n)+n-A004526(A315188(n))`
-/

namespace A313089.P8432574788229918621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A315188 n).toNat)

end

end A313089.P8432574788229918621

namespace A313089

/-- `A008458(n)+n-A004526(A315188(n))` -/
def P8432574788229918621.Spec : Prop :=
  ∀ n, P8432574788229918621.a n = A313089 n

end A313089

/-! ## A313089.P8065865066945717807

`A008458(n)+A008574(n)-A315478(n)`
-/

namespace A313089.P8065865066945717807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315478 n)

end

end A313089.P8065865066945717807

namespace A313089

/-- `A008458(n)+A008574(n)-A315478(n)` -/
def P8065865066945717807.Spec : Prop :=
  ∀ n, P8065865066945717807.a n = A313089 n

end A313089

/-! ## A313089.P13163384277370547095

`A005843(A008458(n)-n)-A315478(n)`
-/

namespace A313089.P13163384277370547095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315478 n

end

end A313089.P13163384277370547095

namespace A313089

/-- `A005843(A008458(n)-n)-A315478(n)` -/
def P13163384277370547095.Spec : Prop :=
  ∀ n, P13163384277370547095.a n = A313089 n

end A313089

/-! ## A313089.P2437755464804438473

`A065502(A314234(n))/2`
-/

namespace A313089.P2437755464804438473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065502 (A314234 n).toNat : ℚ) / 2

end

end A313089.P2437755464804438473

namespace A313089

/-- `A065502(A314234(n))/2` -/
def P2437755464804438473.Spec : Prop :=
  ∀ n, P2437755464804438473.a n = (A313089 n : ℚ)

end A313089

/-! ## A313089.P5268224389975877499

`(A310517(n)+A008574(n))/2`
-/

namespace A313089.P5268224389975877499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310517 n + A008574 n : ℚ) / 2

end

end A313089.P5268224389975877499

namespace A313089

/-- `(A310517(n)+A008574(n))/2` -/
def P5268224389975877499.Spec : Prop :=
  ∀ n, P5268224389975877499.a n = (A313089 n : ℚ)

end A313089

/-! ## A313089.P6296202279278290101

`(A310517(n)+record[A257088(n)])/2`
-/

namespace A313089.P6296202279278290101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310517 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A313089.P6296202279278290101

namespace A313089

/-- `(A310517(n)+record[A257088(n)])/2` -/
def P6296202279278290101.Spec : Prop :=
  ∀ n, P6296202279278290101.a n = (A313089 n : ℚ)

end A313089

/-! ## A313089.P8926919431415454643

`A004526(A310517(n))+A004277(n)`
-/

namespace A313089.P8926919431415454643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310517 n).toNat + A004277 n

end

end A313089.P8926919431415454643

namespace A313089

/-- `A004526(A310517(n))+A004277(n)` -/
def P8926919431415454643.Spec : Prop :=
  ∀ n, P8926919431415454643.a n = A313089 n

end A313089

/-! ## A313089.P5922373606574153050

`A005843(n)+A004525(A310517(n))`
-/

namespace A313089.P5922373606574153050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A310517 n).toNat

end

end A313089.P5922373606574153050

namespace A313089

/-- `A005843(n)+A004525(A310517(n))` -/
def P5922373606574153050.Spec : Prop :=
  ∀ n, P5922373606574153050.a n = A313089 n

end A313089

/-! ## A313089.P1311457097513033315

`A008619(A310517(n))+A004273(n)`
-/

namespace A313089.P1311457097513033315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A310517 n).toNat + A004273 n

end

end A313089.P1311457097513033315

namespace A313089

/-- `A008619(A310517(n))+A004273(n)` -/
def P1311457097513033315.Spec : Prop :=
  ∀ n, P1311457097513033315.a n = A313089 n

end A313089

/-! ## A313089.P17743399719832274579

`A008574(n)+A001281(A310517(n)-A008574(n))`
-/

namespace A313089.P17743399719832274579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001281 (A310517 n - A008574 n).toNat

end

end A313089.P17743399719832274579

namespace A313089

/-- `A008574(n)+A001281(A310517(n)-A008574(n))` -/
def P17743399719832274579.Spec : Prop :=
  ∀ n, P17743399719832274579.a n = A313089 n

end A313089

/-! ## A313089.P18067885263056083179

`A008574(n)+A004525(A310517(n)-A008574(n))`
-/

namespace A313089.P18067885263056083179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A310517 n - A008574 n).toNat

end

end A313089.P18067885263056083179

namespace A313089

/-- `A008574(n)+A004525(A310517(n)-A008574(n))` -/
def P18067885263056083179.Spec : Prop :=
  ∀ n, P18067885263056083179.a n = A313089 n

end A313089

/-! ## A313089.P17385072433256808406

`A310517(n)-A004526(A310517(n)-A008574(n))`
-/

namespace A313089.P17385072433256808406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310517 n - A004526 (A310517 n - A008574 n).toNat

end

end A313089.P17385072433256808406

namespace A313089

/-- `A310517(n)-A004526(A310517(n)-A008574(n))` -/
def P17385072433256808406.Spec : Prop :=
  ∀ n, P17385072433256808406.a n = A313089 n

end A313089

/-! ## A313089.P11955835358657924743

`A311613(2*n)/A020639(A311613(n))`
-/

namespace A313089.P11955835358657924743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311613 (2 * n) : ℚ) / (A020639 (A311613 n).toNat : ℚ)

end

end A313089.P11955835358657924743

namespace A313089

/-- `A311613(2*n)/A020639(A311613(n))` -/
def P11955835358657924743.Spec : Prop :=
  ∀ n, P11955835358657924743.a n = (A313089 n : ℚ)

end A313089

/-! ## A313089.P10740127056022911293

`A004278(A017005(n))-A313689(2*n)`
-/

namespace A313089.P10740127056022911293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A017005 n).toNat - A313689 (2 * n)

end

end A313089.P10740127056022911293

namespace A313089

/-- `A004278(A017005(n))-A313689(2*n)` -/
def P10740127056022911293.Spec : Prop :=
  ∀ n, P10740127056022911293.a n = A313089 n

end A313089

/-! ## A313089.P6772409589854316005

`A313788(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A313089.P6772409589854316005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313788 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A313089.P6772409589854316005

namespace A313089

/-- `A313788(2*n)+A008458(n+1)-(12*n+6)` -/
def P6772409589854316005.Spec : Prop :=
  ∀ n, P6772409589854316005.a n = A313089 n

end A313089

/-! ## A313089.P2909895980860840381

`A004525(A311541(2*n))`
-/

namespace A313089.P2909895980860840381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311541 (2 * n)).toNat

end

end A313089.P2909895980860840381

namespace A313089

/-- `A004525(A311541(2*n))` -/
def P2909895980860840381.Spec : Prop :=
  ∀ n, P2909895980860840381.a n = A313089 n

end A313089

/-! ## A313089.P4675543782111625880

`A004525(A311613(2*n))`
-/

namespace A313089.P4675543782111625880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311613 (2 * n)).toNat

end

end A313089.P4675543782111625880

namespace A313089

/-- `A004525(A311613(2*n))` -/
def P4675543782111625880.Spec : Prop :=
  ∀ n, P4675543782111625880.a n = A313089 n

end A313089

/-! ## A313089.P8248627834766786102

`A004525(A310517(n)+A008574(n))`
-/

namespace A313089.P8248627834766786102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310517 n + A008574 n).toNat

end

end A313089.P8248627834766786102

namespace A313089

/-- `A004525(A310517(n)+A008574(n))` -/
def P8248627834766786102.Spec : Prop :=
  ∀ n, P8248627834766786102.a n = A313089 n

end A313089

/-!
# A313090: Coordination sequence Gal.5.114.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313090, the canonical program `A313090.P5828089164501002712` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313090 has offset 0).

The definition of A313090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313090.P5828089164501002712

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=5, a(4)=5, a(5)=4, a(6)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A313090

/-- `∑[floor(a(n-5))]` -/
def P5828089164501002712.Spec : Prop :=
  ∀ n, (P5828089164501002712.a n : ℤ) = A313090 n

theorem P5828089164501002712.correct : P5828089164501002712.Spec := by
  intro n
  simp only [A313090]

end A313090

/-! ## A313090.P5456271701722242110

`abs(7*n-A072154(n))`
-/

namespace A313090.P5456271701722242110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 * n : ℤ) - A072154 n|

end

end A313090.P5456271701722242110

namespace A313090

/-- `abs(7*n-A072154(n))` -/
def P5456271701722242110.Spec : Prop :=
  ∀ n, P5456271701722242110.a n = A313090 n

end A313090

/-! ## A313090.P801800662544445218

`A250120(2*n)-5*n`
-/

namespace A313090.P801800662544445218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (2 * n) - (5 * n : ℤ)

end

end A313090.P801800662544445218

namespace A313090

/-- `A250120(2*n)-5*n` -/
def P801800662544445218.Spec : Prop :=
  ∀ n, P801800662544445218.a n = A313090 n

end A313090

/-! ## A313090.P6230823550578447549

`A047486(n+1)+floor(3/acot(n))`
-/

namespace A313090.P6230823550578447549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A313090.P6230823550578447549

namespace A313090

/-- `A047486(n+1)+floor(3/acot(n))` -/
def P6230823550578447549.Spec : Prop :=
  ∀ n, P6230823550578447549.a n = A313090 n

end A313090

/-! ## A313090.P5775868952432305944

`A047486(n+1)+A008486(n)`
-/

namespace A313090.P5775868952432305944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + A008486 n

end

end A313090.P5775868952432305944

namespace A313090

/-- `A047486(n+1)+A008486(n)` -/
def P5775868952432305944.Spec : Prop :=
  ∀ n, P5775868952432305944.a n = A313090 n

end A313090

/-! ## A313090.P8347308891278635768

`A008458(n)-A047363(n+1)`
-/

namespace A313090.P8347308891278635768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047363 (n + 1)

end

end A313090.P8347308891278635768

namespace A313090

/-- `A008458(n)-A047363(n+1)` -/
def P8347308891278635768.Spec : Prop :=
  ∀ n, P8347308891278635768.a n = A313090 n

end A313090

/-! ## A313090.P5109018498498427137

`A271114(n)-A047309(n+1)`
-/

namespace A313090.P5109018498498427137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A047309 (n + 1)

end

end A313090.P5109018498498427137

namespace A313090

/-- `A271114(n)-A047309(n+1)` -/
def P5109018498498427137.Spec : Prop :=
  ∀ n, P5109018498498427137.a n = A313090 n

end A313090

/-! ## A313090.P13294193084642914110

`(A310518(n)+A008574(n))/2`
-/

namespace A313090.P13294193084642914110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310518 n + A008574 n : ℚ) / 2

end

end A313090.P13294193084642914110

namespace A313090

/-- `(A310518(n)+A008574(n))/2` -/
def P13294193084642914110.Spec : Prop :=
  ∀ n, P13294193084642914110.a n = (A313090 n : ℚ)

end A313090

/-! ## A313090.P673908769573337864

`A310532(n)+A330025(n)-n`
-/

namespace A313090.P673908769573337864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310532 n + (A330025 n - (n : ℤ))

end

end A313090.P673908769573337864

namespace A313090

/-- `A310532(n)+A330025(n)-n` -/
def P673908769573337864.Spec : Prop :=
  ∀ n, P673908769573337864.a n = A313090 n

end A313090

/-! ## A313090.P13399608727864341217

`A008486(2*n)-A047363(n+1)`
-/

namespace A313090.P13399608727864341217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A047363 (n + 1)

end

end A313090.P13399608727864341217

namespace A313090

/-- `A008486(2*n)-A047363(n+1)` -/
def P13399608727864341217.Spec : Prop :=
  ∀ n, P13399608727864341217.a n = A313090 n

end A313090

/-! ## A313090.P17236950791761255326

`A047486(n+1)+A004277(n)+n`
-/

namespace A313090.P17236950791761255326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A004277 n + (n : ℤ))

end

end A313090.P17236950791761255326

namespace A313090

/-- `A047486(n+1)+A004277(n)+n` -/
def P17236950791761255326.Spec : Prop :=
  ∀ n, P17236950791761255326.a n = A313090 n

end A313090

/-! ## A313090.P11060528354148098387

`A047486(n+1)+A008574(n)-n`
-/

namespace A313090.P11060528354148098387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A008574 n - (n : ℤ))

end

end A313090.P11060528354148098387

namespace A313090

/-- `A047486(n+1)+A008574(n)-n` -/
def P11060528354148098387.Spec : Prop :=
  ∀ n, P11060528354148098387.a n = A313090 n

end A313090

/-! ## A313090.P631369504901711595

`A047299(n+1)+A311807(n)-n`
-/

namespace A313090.P631369504901711595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + (A311807 n - (n : ℤ))

end

end A313090.P631369504901711595

namespace A313090

/-- `A047299(n+1)+A311807(n)-n` -/
def P631369504901711595.Spec : Prop :=
  ∀ n, P631369504901711595.a n = A313090 n

end A313090

/-! ## A313090.P2236132764679116330

`A047263(n+1)+A312928(n)-n`
-/

namespace A313090.P2236132764679116330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A312928 n - (n : ℤ))

end

end A313090.P2236132764679116330

namespace A313090

/-- `A047263(n+1)+A312928(n)-n` -/
def P2236132764679116330.Spec : Prop :=
  ∀ n, P2236132764679116330.a n = A313090 n

end A313090

/-! ## A313090.P16578964331306804444

`n+1+A047486(n+1)+A004273(n)`
-/

namespace A313090.P16578964331306804444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A047486 (n + 1) + A004273 n)

end

end A313090.P16578964331306804444

namespace A313090

/-- `n+1+A047486(n+1)+A004273(n)` -/
def P16578964331306804444.Spec : Prop :=
  ∀ n, P16578964331306804444.a n = A313090 n

end A313090

/-! ## A313090.P1738282557251891580

`A008486(n)+A008574(n)-A072154(n)`
-/

namespace A313090.P1738282557251891580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A008574 n - A072154 n)

end

end A313090.P1738282557251891580

namespace A313090

/-- `A008486(n)+A008574(n)-A072154(n)` -/
def P1738282557251891580.Spec : Prop :=
  ∀ n, P1738282557251891580.a n = A313090 n

end A313090

/-! ## A313090.P11413179268607769290

`A022144(n)-(A047363(n+1)+A005843(n))`
-/

namespace A313090.P11413179268607769290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - (A047363 (n + 1) + A005843 n)

end

end A313090.P11413179268607769290

namespace A313090

/-- `A022144(n)-(A047363(n+1)+A005843(n))` -/
def P11413179268607769290.Spec : Prop :=
  ∀ n, P11413179268607769290.a n = A313090 n

end A313090

/-! ## A313090.P7065419126116748341

`A313116(n)+n-A151988(n)`
-/

namespace A313090.P7065419126116748341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n + ((n : ℤ) - A151988 n)

end

end A313090.P7065419126116748341

namespace A313090

/-- `A313116(n)+n-A151988(n)` -/
def P7065419126116748341.Spec : Prop :=
  ∀ n, P7065419126116748341.a n = A313090 n

end A313090

/-! ## A313090.P1505154316929280148

`A315755(n)-(A330025(n)+n)`
-/

namespace A313090.P1505154316929280148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315755 n - (A330025 n + (n : ℤ))

end

end A313090.P1505154316929280148

namespace A313090

/-- `A315755(n)-(A330025(n)+n)` -/
def P1505154316929280148.Spec : Prop :=
  ∀ n, P1505154316929280148.a n = A313090 n

end A313090

/-! ## A313090.P7520257874905216367

`A301718(n)-n`
-/

namespace A313090.P7520257874905216367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - (n : ℤ)

end

end A313090.P7520257874905216367

namespace A313090

/-- `A301718(n)-n` -/
def P7520257874905216367.Spec : Prop :=
  ∀ n, P7520257874905216367.a n = A313090 n

theorem P7520257874905216367.correct : P7520257874905216367.Spec := by
  intro n
  simp only [A313090, Nat.add_sub_cancel, A313090.P7520257874905216367.a, A313090.P5828089164501002712.f1, A313090.P5828089164501002712.a, A301718, A301718.P12470946639720229977.f1, A301718.P12470946639720229977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313090

/-!
# A313091: Coordination sequence Gal.6.312.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313091, there is no canonical definition to state claims against.
-/

/-! ## A313091.P1221116766153236660

`A313719(n)-A127245(A181170(n))`
-/

namespace A313091.P1221116766153236660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n - A127245 (A181170 n).toNat

end

end A313091.P1221116766153236660

/-! ## A313091.P17889315583082778580

`A313137(n)-A285208(A265928(n+1))`
-/

namespace A313091.P17889315583082778580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313137 n - A285208 (A265928 (n + 1)).toNat

end

end A313091.P17889315583082778580

/-! ## A313091.P8609354527347097558

`A313139(n)-A021913(A004529(n))`
-/

namespace A313091.P8609354527347097558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313139 n - A021913 (A004529 n).toNat

end

end A313091.P8609354527347097558

/-! ## A313091.P7946636267342584679

`A313113(n)-A125117(A321405(n))`
-/

namespace A313091.P7946636267342584679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313113 n - A125117 (A321405 n).toNat

end

end A313091.P7946636267342584679

/-! ## A313091.P2680092140561419550

`A313561(n)-A071981(A136182(n+1))`
-/

namespace A313091.P2680092140561419550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n - A071981 (A136182 (n + 1)).toNat

end

end A313091.P2680092140561419550

/-!
# A313092: Coordination sequence Gal.5.125.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313092, there is no canonical definition to state claims against.
-/

/-! ## A313092.P6663468686531124975

`abs(A039999(A266373(n))+1-5*n)`
-/

namespace A313092.P6663468686531124975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039999 (A266373 n).toNat + 1 - (5 * n : ℤ)|

end

end A313092.P6663468686531124975

/-! ## A313092.P17661420847252407679

`A313099(n)-A257927(A032020(n))`
-/

namespace A313092.P17661420847252407679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n - A257927 (A032020 n).toNat

end

end A313092.P17661420847252407679

/-! ## A313092.P4474966213037998045

`A248559(3*n+1)+A001221(A214238(n+1))`
-/

namespace A313092.P4474966213037998045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248559 (3 * n + 1) + A001221 (A214238 (n + 1)).toNat

end

end A313092.P4474966213037998045

/-! ## A313092.P8018165489079708455

`A301676(n)+A225654(n²)`
-/

namespace A313092.P8018165489079708455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A225654 (n ^ 2)

end

end A313092.P8018165489079708455

/-! ## A313092.P16377610721388610688

`A311443(n)+A001221(A007116(n))`
-/

namespace A313092.P16377610721388610688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311443 n + A001221 (A007116 n).toNat

end

end A313092.P16377610721388610688

/-!
# A313093: Coordination sequence Gal.5.124.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313093, there is no canonical definition to state claims against.
-/

/-! ## A313093.P663248400752129785

`A314761(n)-A101455(n)`
-/

namespace A313093.P663248400752129785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314761 n - A101455 n

end

end A313093.P663248400752129785

/-! ## A313093.P468668573519864998

`A314761(n)+A056594(n+1)`
-/

namespace A313093.P468668573519864998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314761 n + A056594 (n + 1)

end

end A313093.P468668573519864998

/-! ## A313093.P2721638794188584389

`A314761(n)-A046978(2*n)`
-/

namespace A313093.P2721638794188584389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314761 n - A046978 (2 * n)

end

end A313093.P2721638794188584389

/-! ## A313093.P13540307770927517706

`A314761(n)-A132380(2*n)`
-/

namespace A313093.P13540307770927517706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314761 n - A132380 (2 * n)

end

end A313093.P13540307770927517706

/-! ## A313093.P13701465802053485165

`A313100(n)-A049320(A353401(2*n))`
-/

namespace A313093.P13701465802053485165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n - A049320 (A353401 (2 * n)).toNat

end

end A313093.P13701465802053485165

/-!
# A313094: Coordination sequence Gal.6.313.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313094, there is no canonical definition to state claims against.
-/

/-! ## A313094.P7223482587059338160

`A313093(n)+A185284(A193096(3*n+2))`
-/

namespace A313094.P7223482587059338160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313093 n + A185284 (A193096 (3 * n + 2)).toNat

end

end A313094.P7223482587059338160

/-! ## A313094.P5380792148704377186

`A313093(n)+A185284(A222254(3*n+4))`
-/

namespace A313094.P5380792148704377186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313093 n + A185284 (A222254 (3 * n + 4)).toNat

end

end A313094.P5380792148704377186

/-! ## A313094.P12812009379518262040

`A313201(n)-A285139(A026531(n))`
-/

namespace A313094.P12812009379518262040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313201 n - A285139 (A026531 n).toNat

end

end A313094.P12812009379518262040

/-!
# A313095: Coordination sequence Gal.6.400.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313095, there is no canonical definition to state claims against.
-/

/-! ## A313095.P10597276796661306093

`A313096(n)-A185284(A016777(n))`
-/

namespace A313095.P10597276796661306093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313096 n - A185284 (A016777 n).toNat

end

end A313095.P10597276796661306093

/-! ## A313095.P17587640318974053798

`A313096(n)-A025466(A163271(n+1))`
-/

namespace A313095.P17587640318974053798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313096 n - A025466 (A163271 (n + 1)).toNat

end

end A313095.P17587640318974053798

/-! ## A313095.P11636201924202154760

`A313096(n)-A025466(A338029(n+1))`
-/

namespace A313095.P11636201924202154760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313096 n - A025466 (A338029 (n + 1)).toNat

end

end A313095.P11636201924202154760

/-! ## A313095.P713835722626718742

`A313096(A062399(n))`
-/

namespace A313095.P713835722626718742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313096 (A062399 n).toNat

end

end A313095.P713835722626718742

/-!
# A313096: Coordination sequence Gal.6.399.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313096, there is no canonical definition to state claims against.
-/

/-! ## A313096.P16018826389844572151

`A177151(A313709(n))+A047486(n+1)`
-/

namespace A313096.P16018826389844572151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A313709 n).toNat + A047486 (n + 1)

end

end A313096.P16018826389844572151

/-! ## A313096.P14556273791607906205

`or(A130633(A052551(n)), A301293(n))`
-/

namespace A313096.P14556273791607906205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130633 (A052551 n).toNat) (A301293 n)

end

end A313096.P14556273791607906205

/-! ## A313096.P16276315974546400491

`A313095(n)+A025466(A163271(n+1))`
-/

namespace A313096.P16276315974546400491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313095 n + A025466 (A163271 (n + 1)).toNat

end

end A313096.P16276315974546400491

/-! ## A313096.P9339804944544593835

`A313095(n)+A185034(A282377(n+1))`
-/

namespace A313096.P9339804944544593835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313095 n + A185034 (A282377 (n + 1)).toNat

end

end A313096.P9339804944544593835

/-!
# A313097: Coordination sequence Gal.5.195.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313097, there is no canonical definition to state claims against.
-/

/-! ## A313097.P384923349583856177

`A286059(A048488(n))+A008579(n)`
-/

namespace A313097.P384923349583856177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286059 (A048488 n).toNat + A008579 n

end

end A313097.P384923349583856177

/-! ## A313097.P6442198842403714746

`A267605(A239080(n))+A008579(n)`
-/

namespace A313097.P6442198842403714746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 (A239080 n).toNat + A008579 n

end

end A313097.P6442198842403714746

/-! ## A313097.P18077191858958586272

`A030190(A187705(n+1))+A008579(n)`
-/

namespace A313097.P18077191858958586272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A187705 (n + 1)).toNat + A008579 n

end

end A313097.P18077191858958586272

/-! ## A313097.P13393626068744754048

`A008966(A210883(3*n+2))+A008579(n)`
-/

namespace A313097.P13393626068744754048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A210883 (3 * n + 2)).toNat + A008579 n

end

end A313097.P13393626068744754048

/-! ## A313097.P1961815125910328534

`A323512(A216294(3*n+4))+A008579(n)`
-/

namespace A313097.P1961815125910328534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323512 (A216294 (3 * n + 4)).toNat + A008579 n

end

end A313097.P1961815125910328534

/-!
# A313098: Coordination sequence Gal.5.194.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313098, there is no canonical definition to state claims against.
-/

/-! ## A313098.P11455395849834746014

`A250120(n)-A228085(A279031(2*n))`
-/

namespace A313098.P11455395849834746014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A228085 (A279031 (2 * n)).toNat

end

end A313098.P11455395849834746014

/-! ## A313098.P13260940740678237328

`A047363(2*n+1)+A004277(n)-A228085(A279031(2*n))`
-/

namespace A313098.P13260940740678237328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (2 * n + 1) + A004277 n - A228085 (A279031 (2 * n)).toNat

end

end A313098.P13260940740678237328

/-! ## A313098.P11240287048570700790

`A022144(n)-A047486(2*n+1)-A228085(A279031(2*n))`
-/

namespace A313098.P11240287048570700790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A047486 (2 * n + 1) - A228085 (A279031 (2 * n)).toNat

end

end A313098.P11240287048570700790

/-! ## A313098.P7690021360266019460

`A322007(A029967(n+1))+A008574(n)`
-/

namespace A313098.P7690021360266019460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322007 (A029967 (n + 1)).toNat + A008574 n

end

end A313098.P7690021360266019460

/-! ## A313098.P12794401245824237812

`A250120(n)-A354512(A283877(n+1))`
-/

namespace A313098.P12794401245824237812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A354512 (A283877 (n + 1)).toNat

end

end A313098.P12794401245824237812

/-!
# A313099: Coordination sequence Gal.6.259.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313099, the canonical program `A313099.P14754823964277209654` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313099 has offset 0).

The definition of A313099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313099.P14754823964277209654

`A047273(n+1)+A311426(n)-n`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313099

/-- `A047273(n+1)+A311426(n)-n` -/
def P14754823964277209654.Spec : Prop :=
  ∀ n, P14754823964277209654.a n = A313099 n

theorem P14754823964277209654.correct : P14754823964277209654.Spec := by
  intro n
  simp only [A313099]

end A313099

/-! ## A313099.P9877624587037191782

`A047513(n+1)+A312896(n)-n`
-/

namespace A313099.P9877624587037191782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + (A312896 n - (n : ℤ))

end

end A313099.P9877624587037191782

namespace A313099

/-- `A047513(n+1)+A312896(n)-n` -/
def P9877624587037191782.Spec : Prop :=
  ∀ n, P9877624587037191782.a n = A313099 n

end A313099

/-! ## A313099.P17784714224391238312

`A008706(n)-A004396(A004525(n))`
-/

namespace A313099.P17784714224391238312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A004396 (A004525 n).toNat

end

end A313099.P17784714224391238312

namespace A313099

/-- `A008706(n)-A004396(A004525(n))` -/
def P17784714224391238312.Spec : Prop :=
  ∀ n, P17784714224391238312.a n = A313099 n

end A313099

/-! ## A313099.P4083448724644092609

`A313494(n)-A128834(n)`
-/

namespace A313099.P4083448724644092609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313494 n - A128834 n

end

end A313099.P4083448724644092609

namespace A313099

/-- `A313494(n)-A128834(n)` -/
def P4083448724644092609.Spec : Prop :=
  ∀ n, P4083448724644092609.a n = A313099 n

theorem P4083448724644092609.correct : P4083448724644092609.Spec := by
  intro n
  simp only [A313099, Nat.add_sub_cancel, A313099.P4083448724644092609.a, A313099.P14754823964277209654.a, A047273, A047273.P5050912492785340480.a, A128834, A128834.P16779687439637953687.a, A311426, A311426.P12408021461851380809.a, A313494, A313494.P14635809210881396952.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A010892, A010892.P14408744864468695543.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313099

/-! ## A313099.P16594550803004303955

`abs(A008592(n)-(A314683(n)+n))`
-/

namespace A313099.P16594550803004303955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A314683 n + (n : ℤ))|

end

end A313099.P16594550803004303955

namespace A313099

/-- `abs(A008592(n)-(A314683(n)+n))` -/
def P16594550803004303955.Spec : Prop :=
  ∀ n, P16594550803004303955.a n = A313099 n

end A313099

/-! ## A313099.P5244587420934048893

`A008458(n)+A008486(n)-A314683(n)`
-/

namespace A313099.P5244587420934048893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314683 n)

end

end A313099.P5244587420934048893

namespace A313099

/-- `A008458(n)+A008486(n)-A314683(n)` -/
def P5244587420934048893.Spec : Prop :=
  ∀ n, P5244587420934048893.a n = A313099 n

end A313099

/-! ## A313099.P15894609166262856826

`A310457(n)-A002264(n+1)`
-/

namespace A313099.P15894609166262856826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310457 n - A002264 (n + 1)

end

end A313099.P15894609166262856826

namespace A313099

/-- `A310457(n)-A002264(n+1)` -/
def P15894609166262856826.Spec : Prop :=
  ∀ n, P15894609166262856826.a n = A313099 n

end A313099

/-! ## A313099.P11540206517868563190

`A004396(n)+A310457(n)-n`
-/

namespace A313099.P11540206517868563190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A310457 n - (n : ℤ))

end

end A313099.P11540206517868563190

namespace A313099

/-- `A004396(n)+A310457(n)-n` -/
def P11540206517868563190.Spec : Prop :=
  ∀ n, P11540206517868563190.a n = A313099 n

end A313099

/-! ## A313099.P17431027156028566483

`A008576(n)+A310457(n)-A008486(n)`
-/

namespace A313099.P17431027156028566483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A310457 n - A008486 n)

end

end A313099.P17431027156028566483

namespace A313099

/-- `A008576(n)+A310457(n)-A008486(n)` -/
def P17431027156028566483.Spec : Prop :=
  ∀ n, P17431027156028566483.a n = A313099 n

end A313099

/-! ## A313099.P5241722865283863570

`A313781(n)-A004525(n)`
-/

namespace A313099.P5241722865283863570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n - A004525 n

end

end A313099.P5241722865283863570

namespace A313099

/-- `A313781(n)-A004525(n)` -/
def P5241722865283863570.Spec : Prop :=
  ∀ n, P5241722865283863570.a n = A313099 n

end A313099

/-! ## A313099.P4758951816263348015

`Δ[A011848(n)]+A313781(n)-n`
-/

namespace A313099.P4758951816263348015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313781 n - (n : ℤ))

end

end A313099.P4758951816263348015

namespace A313099

/-- `Δ[A011848(n)]+A313781(n)-n` -/
def P4758951816263348015.Spec : Prop :=
  ∀ n, P4758951816263348015.a n = A313099 n

end A313099

/-! ## A313099.P7173405910923141966

`2*A008706(n)-A315476(n)`
-/

namespace A313099.P7173405910923141966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315476 n

end

end A313099.P7173405910923141966

namespace A313099

/-- `2*A008706(n)-A315476(n)` -/
def P7173405910923141966.Spec : Prop :=
  ∀ n, P7173405910923141966.a n = A313099 n

end A313099

/-! ## A313099.P7081433110069040600

`abs(A008593(n)-(A315476(n)+n))`
-/

namespace A313099.P7081433110069040600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A315476 n + (n : ℤ))|

end

end A313099.P7081433110069040600

namespace A313099

/-- `abs(A008593(n)-(A315476(n)+n))` -/
def P7081433110069040600.Spec : Prop :=
  ∀ n, P7081433110069040600.a n = A313099 n

end A313099

/-! ## A313099.P9393914104886811215

`A314240(n)-n`
-/

namespace A313099.P9393914104886811215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 n - (n : ℤ)

end

end A313099.P9393914104886811215

namespace A313099

/-- `A314240(n)-n` -/
def P9393914104886811215.Spec : Prop :=
  ∀ n, P9393914104886811215.a n = A313099 n

theorem P9393914104886811215.correct : P9393914104886811215.Spec := by
  intro n
  simp only [A313099, Nat.add_sub_cancel, A313099.P9393914104886811215.a, A313099.P14754823964277209654.a, A047273, A047273.P5050912492785340480.a, A311426, A311426.P12408021461851380809.a, A314240, A314240.P18428589485690285850.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313099

/-! ## A313099.P10966954660697238788

`A004525(A310524(n))+2*n`
-/

namespace A313099.P10966954660697238788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310524 n).toNat + (2 * n : ℤ)

end

end A313099.P10966954660697238788

namespace A313099

/-- `A004525(A310524(n))+2*n` -/
def P10966954660697238788.Spec : Prop :=
  ∀ n, P10966954660697238788.a n = A313099 n

end A313099

/-! ## A313099.P15142301071954896982

`A004396(A301710(n))+n`
-/

namespace A313099.P15142301071954896982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301710 n).toNat + (n : ℤ)

end

end A313099.P15142301071954896982

namespace A313099

/-- `A004396(A301710(n))+n` -/
def P15142301071954896982.Spec : Prop :=
  ∀ n, P15142301071954896982.a n = A313099 n

end A313099

/-! ## A313099.P12610810024155795939

`A004396(A314151(n))+n`
-/

namespace A313099.P12610810024155795939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314151 n).toNat + (n : ℤ)

end

end A313099.P12610810024155795939

namespace A313099

/-- `A004396(A314151(n))+n` -/
def P12610810024155795939.Spec : Prop :=
  ∀ n, P12610810024155795939.a n = A313099 n

end A313099

/-! ## A313099.P8237344458784898578

`A004396(A301293(n)+n)+n`
-/

namespace A313099.P8237344458784898578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301293 n + (n : ℤ)).toNat + (n : ℤ)

end

end A313099.P8237344458784898578

namespace A313099

/-- `A004396(A301293(n)+n)+n` -/
def P8237344458784898578.Spec : Prop :=
  ∀ n, P8237344458784898578.a n = A313099 n

end A313099

/-! ## A313099.P3088957971433799554

`A004396(A312101(n)+n)+n`
-/

namespace A313099.P3088957971433799554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312101 n + (n : ℤ)).toNat + (n : ℤ)

end

end A313099.P3088957971433799554

namespace A313099

/-- `A004396(A312101(n)+n)+n` -/
def P3088957971433799554.Spec : Prop :=
  ∀ n, P3088957971433799554.a n = A313099 n

end A313099

/-! ## A313099.P10883008896882694590

`A004396(A312933(n)+n)+n`
-/

namespace A313099.P10883008896882694590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312933 n + (n : ℤ)).toNat + (n : ℤ)

end

end A313099.P10883008896882694590

namespace A313099

/-- `A004396(A312933(n)+n)+n` -/
def P10883008896882694590.Spec : Prop :=
  ∀ n, P10883008896882694590.a n = A313099 n

end A313099

