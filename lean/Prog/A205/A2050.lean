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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A205000: Least k such that n divides s(k)-s(j) for some j satisfying 1<=j

The programs for A205000, there is no canonical definition to state claims against.
-/

/-! ## A205000.P14158169980845122593

`A002024(A205106(n+1))+1`
-/

namespace A205000.P14158169980845122593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205106 (n + 1)).toNat + 1

end

end A205000.P14158169980845122593

/-! ## A205000.P15657890370513291339

`A003057(A205106(n+1)+1)`
-/

namespace A205000.P15657890370513291339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205106 (n + 1) + 1).toNat

end

end A205000.P15657890370513291339

/-! ## A205000.P5363933884166497340

`A002024(A014132(A205106(n+1)))`
-/

namespace A205000.P5363933884166497340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A014132 (A205106 (n + 1)).toNat).toNat

end

end A205000.P5363933884166497340

/-! ## A205000.P5294029516715796467

`A060762(A131507(A205106(n+1)-1))`
-/

namespace A205000.P5294029516715796467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060762 (A131507 (A205106 (n + 1) - 1).toNat).toNat

end

end A205000.P5294029516715796467

/-! ## A205000.P11470399979124962758

`(A123578(A205106(n+1))+1)%(A000040(n+1)+2)`
-/

namespace A205000.P11470399979124962758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123578 (A205106 (n + 1)).toNat + 1) (A000040 (n + 1) + 2)

end

end A205000.P11470399979124962758

/-! ## A205000.P15081681635379877369

`A000194(2*A205106(n+1))+1`
-/

namespace A205000.P15081681635379877369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A205106 (n + 1)).toNat + 1

end

end A205000.P15081681635379877369

/-! ## A205000.P11418601554542343677

`A020725(A000194(2*A205106(n+1)))`
-/

namespace A205000.P11418601554542343677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A000194 (2 * A205106 (n + 1)).toNat).toNat

end

end A205000.P11418601554542343677

/-! ## A205000.P142613217392242347

`A000194(A205106(n+1)+A205106(n+1))+1`
-/

namespace A205000.P142613217392242347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A205106 (n + 1) + A205106 (n + 1)).toNat + 1

end

end A205000.P142613217392242347

/-!
# A205001: Least k such that n divides the k-th difference between distinct triangular numbers.

The programs for A205001, there is no canonical definition to state claims against.
-/

/-! ## A205001.P9246319573560887082

`A205003(n+1)+A000217(A205002(n+1)-2)`
-/

namespace A205001.P9246319573560887082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205003 (n + 1) + A000217 (A205002 (n + 1) - 2).toNat

end

end A205001.P9246319573560887082

/-! ## A205001.P4627529485662736169

`A205017(2*(n+1))`
-/

namespace A205001.P4627529485662736169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205017 (2 * (n + 1))

end

end A205001.P4627529485662736169

/-! ## A205001.P9049835860586606677

`A205017(A103517(n))%(∑[n+2]+4)`
-/

namespace A205001.P9049835860586606677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205017 (A103517 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℤ)

end

end A205001.P9049835860586606677

/-! ## A205001.P14874028137840512931

`A205017(A103517(n))+A019590(A053226(n+1))`
-/

namespace A205001.P14874028137840512931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205017 (A103517 n).toNat + A019590 (A053226 (n + 1)).toNat

end

end A205001.P14874028137840512931

/-! ## A205001.P10841741768037835626

`A205017(A103517(n))+A019590(A265350(n+1))`
-/

namespace A205001.P10841741768037835626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205017 (A103517 n).toNat + A019590 (A265350 (n + 1)).toNat

end

end A205001.P10841741768037835626

/-! ## A205001.P18108592139915315319

`A205017(A103517(n))/A001222(A045333(n+1))`
-/

namespace A205001.P18108592139915315319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205017 (A103517 n).toNat : ℚ) / (A001222 (A045333 (n + 1)).toNat : ℚ)

end

end A205001.P18108592139915315319

/-! ## A205001.P15789715621105687687

`A205017(A103517(n))+A019590(A045574(n+5))`
-/

namespace A205001.P15789715621105687687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205017 (A103517 n).toNat + A019590 (A045574 (n + 5)).toNat

end

end A205001.P15789715621105687687

/-! ## A205001.P13523514233764562580

`A205017(A103517(n))+A019590(A136090(n+1))`
-/

namespace A205001.P13523514233764562580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205017 (A103517 n).toNat + A019590 (A136090 (n + 1)).toNat

end

end A205001.P13523514233764562580

/-! ## A205001.P276523734922664342

`A297238(A384781(n+1)+1)+A205017(A103517(n))`
-/

namespace A205001.P276523734922664342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297238 (A384781 (n + 1) + 1).toNat + A205017 (A103517 n).toNat

end

end A205001.P276523734922664342

/-!
# A205002: Least k such that n divides s(k)-s(j) for some j satisfying 1<=j

The programs for A205002, there is no canonical definition to state claims against.
-/

/-! ## A205002.P1831996122511739958

`A205018(2*(n+1))`
-/

namespace A205002.P1831996122511739958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205018 (2 * (n + 1))

end

end A205002.P1831996122511739958

/-! ## A205002.P8648977048105277275

`A000027(A205018(n+2+n))`
-/

namespace A205002.P8648977048105277275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A205018 (n + 2 + n)).toNat

end

end A205002.P8648977048105277275

/-! ## A205002.P9695892175720205818

`floor(sqrt(A205029(2*(n+1))))`
-/

namespace A205002.P9695892175720205818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A205029 (2 * (n + 1)))

end

end A205002.P9695892175720205818

/-! ## A205002.P509471202589111873

`A138796(A205006(n+1))`
-/

namespace A205002.P509471202589111873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138796 (A205006 (n + 1)).toNat

end

end A205002.P509471202589111873

/-! ## A205002.P13650065698757296671

`A138796((n+1)*A205007(n+1))`
-/

namespace A205002.P13650065698757296671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138796 ((n + 1 : ℤ) * A205007 (n + 1)).toNat

end

end A205002.P13650065698757296671

/-! ## A205002.P5116779432714351084

`A002024(A205004(n+1))`
-/

namespace A205002.P5116779432714351084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205004 (n + 1)).toNat

end

end A205002.P5116779432714351084

/-! ## A205002.P2775370575585960092

`A007318(A205004(n+1)+1)`
-/

namespace A205002.P2775370575585960092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A205004 (n + 1) + 1).toNat

end

end A205002.P2775370575585960092

/-! ## A205002.P8663711273423666038

`A169803(A205004(n+1)+1)`
-/

namespace A205002.P8663711273423666038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 (A205004 (n + 1) + 1).toNat

end

end A205002.P8663711273423666038

/-! ## A205002.P16090039260114104582

`A014430(A205004(n+1)-1)`
-/

namespace A205002.P16090039260114104582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 (A205004 (n + 1) - 1).toNat

end

end A205002.P16090039260114104582

/-! ## A205002.P5451095520876615692

`A014410(A205004(n+1)+1)-1`
-/

namespace A205002.P5451095520876615692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (A205004 (n + 1) + 1).toNat - 1

end

end A205002.P5451095520876615692

/-! ## A205002.P11595900066292080756

`A193973(A205001(n+1)-A205003(n+1))`
-/

namespace A205002.P11595900066292080756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193973 (A205001 (n + 1) - A205003 (n + 1)).toNat

end

end A205002.P11595900066292080756

/-! ## A205002.P12340330974697961737

`A000196(2*A205004(n+1))`
-/

namespace A205002.P12340330974697961737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A205004 (n + 1)).toNat

end

end A205002.P12340330974697961737

/-! ## A205002.P592988351290395290

`A000194(A205029(2*(n+1)))`
-/

namespace A205002.P592988351290395290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A205029 (2 * (n + 1))).toNat

end

end A205002.P592988351290395290

/-! ## A205002.P5365020761341607944

`A002260(2*A205029(2*(n+1)))`
-/

namespace A205002.P5365020761341607944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A205029 (2 * (n + 1))).toNat

end

end A205002.P5365020761341607944

/-! ## A205002.P14127545340248372796

`A000196(A205004(n+1)+A205004(n+1)+1)`
-/

namespace A205002.P14127545340248372796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A205004 (n + 1) + (A205004 (n + 1) + 1)).toNat

end

end A205002.P14127545340248372796

/-!
# A205003: The index j

The programs for A205003, there is no canonical definition to state claims against.
-/

/-! ## A205003.P16743769164097950099

`floor(sqrt(A205030(2*(n+1))))`
-/

namespace A205003.P16743769164097950099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A205030 (2 * (n + 1)))

end

end A205003.P16743769164097950099

/-! ## A205003.P18078829442389829937

`A000027(round(sqrt(A205030(2*(n+1)))))`
-/

namespace A205003.P18078829442389829937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A205030 (2 * (n + 1)) : ℝ))).toNat

end

end A205003.P18078829442389829937

/-! ## A205003.P2601239953332604627

`A205028(A022998(n+1))`
-/

namespace A205003.P2601239953332604627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205028 (A022998 (n + 1)).toNat

end

end A205003.P2601239953332604627

/-! ## A205003.P11715109210140963849

`A205028(A257088(n+1))`
-/

namespace A205003.P11715109210140963849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205028 (A257088 (n + 1)).toNat

end

end A205003.P11715109210140963849

/-! ## A205003.P17271060172169835300

`A205028((n+1)*A205032(n+2))`
-/

namespace A205003.P17271060172169835300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205028 ((n + 1 : ℤ) * A205032 (n + 2)).toNat

end

end A205003.P17271060172169835300

/-! ## A205003.P1447067985313536840

`A205028(2*(n+1))`
-/

namespace A205003.P1447067985313536840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205028 (2 * (n + 1))

end

end A205003.P1447067985313536840

/-! ## A205003.P5681721935460906910

`A205028(A103517(n))%(∑[n+2]+4)`
-/

namespace A205003.P5681721935460906910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205028 (A103517 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℤ)

end

end A205003.P5681721935460906910

/-! ## A205003.P9201909866356641406

`A002024(A205005(n+1))`
-/

namespace A205003.P9201909866356641406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205005 (n + 1)).toNat

end

end A205003.P9201909866356641406

/-! ## A205003.P1380773662442812134

`A002260(A205001(n+1))`
-/

namespace A205003.P1380773662442812134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205001 (n + 1)).toNat

end

end A205003.P1380773662442812134

/-! ## A205003.P16323099783785003215

`A007318(A205005(n+1)+1)`
-/

namespace A205003.P16323099783785003215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A205005 (n + 1) + 1).toNat

end

end A205003.P16323099783785003215

/-! ## A205003.P2149700787650156467

`A318274(A205005(n+1)+1)`
-/

namespace A205003.P2149700787650156467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 (A205005 (n + 1) + 1).toNat

end

end A205003.P2149700787650156467

/-! ## A205003.P4643264549298301183

`A131830(A205005(n+1)-1)`
-/

namespace A205003.P4643264549298301183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131830 (A205005 (n + 1) - 1).toNat

end

end A205003.P4643264549298301183

/-! ## A205003.P12899185380887971277

`A002260(A205017(2*(n+1)))`
-/

namespace A205003.P12899185380887971277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205017 (2 * (n + 1))).toNat

end

end A205003.P12899185380887971277

/-! ## A205003.P807769036651185201

`A131830(xor(1, A205005(n+1)))`
-/

namespace A205003.P807769036651185201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131830 (Int.xor 1 (A205005 (n + 1))).toNat

end

end A205003.P807769036651185201

/-! ## A205003.P4308973916728971292

`A002262(A205005(n+1)-1)+1`
-/

namespace A205003.P4308973916728971292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A205005 (n + 1) - 1).toNat + 1

end

end A205003.P4308973916728971292

/-! ## A205003.P12720379489956726564

`A000194(2*A205005(n+1))`
-/

namespace A205003.P12720379489956726564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A205005 (n + 1)).toNat

end

end A205003.P12720379489956726564

/-! ## A205003.P13497396370116869029

`A000196(2*A205005(n+1))`
-/

namespace A205003.P13497396370116869029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A205005 (n + 1)).toNat

end

end A205003.P13497396370116869029

/-! ## A205003.P5271323936018901915

`A000194(A205030(2*(n+1)))`
-/

namespace A205003.P5271323936018901915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A205030 (2 * (n + 1))).toNat

end

end A205003.P5271323936018901915

/-! ## A205003.P16296801092891538983

`A002262(4*A205005(n+1))`
-/

namespace A205003.P16296801092891538983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (4 * A205005 (n + 1)).toNat

end

end A205003.P16296801092891538983

/-! ## A205003.P16070003080835863153

`A351995(A205005(n+1)+1)+1`
-/

namespace A205003.P16070003080835863153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351995 (A205005 (n + 1) + 1).toNat + 1

end

end A205003.P16070003080835863153

/-!
# A205004: Least k(k+1)/2 such that n divides k(k+1)/2-j(j+1)/2 for some j

The programs for A205004, there is no canonical definition to state claims against.
-/

/-! ## A205004.P7250837891383669459

`C(A205002(n+1)+1, 2)`
-/

namespace A205004.P7250837891383669459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A205002 (n + 1) + 1).toNat 2

end

end A205004.P7250837891383669459

/-! ## A205004.P14095386372083429154

`A000217(A205002(n+1))`
-/

namespace A205004.P14095386372083429154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A205002 (n + 1)).toNat

end

end A205004.P14095386372083429154

/-! ## A205004.P17683425125437540122

`A161680(A205002(n+1)+1)`
-/

namespace A205004.P17683425125437540122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A205002 (n + 1) + 1).toNat

end

end A205004.P17683425125437540122

/-! ## A205004.P11253915803951312973

`A179865(A205002(n+1)+1)`
-/

namespace A205004.P11253915803951312973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A205002 (n + 1) + 1).toNat

end

end A205004.P11253915803951312973

/-! ## A205004.P1651137816879195485

`A205006(n+1)+A205005(n+1)`
-/

namespace A205004.P1651137816879195485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205006 (n + 1) + A205005 (n + 1)

end

end A205004.P1651137816879195485

/-! ## A205004.P9796373888958107499

`A205006(n+1)+A000217(A205003(n+1))`
-/

namespace A205004.P9796373888958107499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205006 (n + 1) + A000217 (A205003 (n + 1)).toNat

end

end A205004.P9796373888958107499

/-! ## A205004.P9455765364706611138

`A000217(A205018(2*(n+1)))`
-/

namespace A205004.P9455765364706611138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A205018 (2 * (n + 1))).toNat

end

end A205004.P9455765364706611138

/-! ## A205004.P12759360837691869314

`A002378(A205018(2*n+2))/2`
-/

namespace A205004.P12759360837691869314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A205018 (2 * n + 2)).toNat : ℚ) / 2

end

end A205004.P12759360837691869314

/-! ## A205004.P2937705650281893524

`(A205031(2*(n+1))+A205030(2*(n+1)))/2`
-/

namespace A205004.P2937705650281893524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205031 (2 * (n + 1)) + A205030 (2 * (n + 1)) : ℚ) / 2

end

end A205004.P2937705650281893524

/-! ## A205004.P1531666229776435907

`A205029(2*(n+1))/2`
-/

namespace A205004.P1531666229776435907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205029 (2 * (n + 1)) : ℚ) / 2

end

end A205004.P1531666229776435907

/-! ## A205004.P14488117847899133493

`A000037(A205018(2*(n+1))²)/2`
-/

namespace A205004.P14488117847899133493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (A205018 (2 * (n + 1)) ^ 2).toNat : ℚ) / 2

end

end A205004.P14488117847899133493

/-! ## A205004.P18433507325714602268

`A026741(A205002(n+1)+A205002(n+1)²)`
-/

namespace A205004.P18433507325714602268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A205002 (n + 1) + A205002 (n + 1) ^ 2).toNat

end

end A205004.P18433507325714602268

/-! ## A205004.P1073225591057674169

`A026741((A205002(n+1)+1)*A205002(n+1))`
-/

namespace A205004.P1073225591057674169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((A205002 (n + 1) + 1) * A205002 (n + 1)).toNat

end

end A205004.P1073225591057674169

/-!
# A205005: The triangular number T(j) such that n divides T(k)-T(j)>0, where k is the least positive integer for which such a j exists.

The programs for A205005, there is no canonical definition to state claims against.
-/

/-! ## A205005.P4760608104774537561

`A205004(n+1)-A205006(n+1)`
-/

namespace A205005.P4760608104774537561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205004 (n + 1) - A205006 (n + 1)

end

end A205005.P4760608104774537561

/-! ## A205005.P3247022942768301969

`A000217(A205002(n+1))-A205006(n+1)`
-/

namespace A205005.P3247022942768301969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A205002 (n + 1)).toNat - A205006 (n + 1)

end

end A205005.P3247022942768301969

/-! ## A205005.P9015058063171607989

`A000217(A205003(n+1))`
-/

namespace A205005.P9015058063171607989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A205003 (n + 1)).toNat

end

end A205005.P9015058063171607989

/-! ## A205005.P7585325175600786339

`A161680(A205003(n+1)+1)`
-/

namespace A205005.P7585325175600786339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A205003 (n + 1) + 1).toNat

end

end A205005.P7585325175600786339

/-! ## A205005.P3694514901137036397

`A179865(A205003(n+1)+1)`
-/

namespace A205005.P3694514901137036397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A205003 (n + 1) + 1).toNat

end

end A205005.P3694514901137036397

/-! ## A205005.P7729704185728342448

`A160791(2*A205003(n+1))`
-/

namespace A205005.P7729704185728342448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (2 * A205003 (n + 1)).toNat

end

end A205005.P7729704185728342448

/-! ## A205005.P9096274744648043854

`A205030(2*(n+1))/2`
-/

namespace A205005.P9096274744648043854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205030 (2 * (n + 1)) : ℚ) / 2

end

end A205005.P9096274744648043854

/-! ## A205005.P6536326551817597691

`A000217(A205028(2*(n+1)))`
-/

namespace A205005.P6536326551817597691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A205028 (2 * (n + 1))).toNat

end

end A205005.P6536326551817597691

/-! ## A205005.P14277887721455746773

`A002378(A205028(2*n+2))/2`
-/

namespace A205005.P14277887721455746773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A205028 (2 * n + 2)).toNat : ℚ) / 2

end

end A205005.P14277887721455746773

/-! ## A205005.P14169134459051202907

`(A205029(2*(n+1))-A205031(2*(n+1)))/2`
-/

namespace A205005.P14169134459051202907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205029 (2 * (n + 1)) - A205031 (2 * (n + 1)) : ℚ) / 2

end

end A205005.P14169134459051202907

/-! ## A205005.P1916163772442510020

`A000037(A205003(n+1)²)/2`
-/

namespace A205005.P1916163772442510020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (A205003 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A205005.P1916163772442510020

/-! ## A205005.P9511721062967888081

`A000037(A205028(2*(n+1))²)/2`
-/

namespace A205005.P9511721062967888081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (A205028 (2 * (n + 1)) ^ 2).toNat : ℚ) / 2

end

end A205005.P9511721062967888081

/-! ## A205005.P11614831109216816397

`A028392(A205028(2*(n+1))²)/2`
-/

namespace A205005.P11614831109216816397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028392 (A205028 (2 * (n + 1)) ^ 2).toNat : ℚ) / 2

end

end A205005.P11614831109216816397

/-! ## A205005.P880474545793098585

`A026741(A205003(n+1)+A205003(n+1)²)`
-/

namespace A205005.P880474545793098585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A205003 (n + 1) + A205003 (n + 1) ^ 2).toNat

end

end A205005.P880474545793098585

/-! ## A205005.P8078386967554071751

`A026741((A205003(n+1)+1)*A205003(n+1))`
-/

namespace A205005.P8078386967554071751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((A205003 (n + 1) + 1) * A205003 (n + 1)).toNat

end

end A205005.P8078386967554071751

/-!
# A205006: a(n) = s(k)-s(j), where (s(k),s(j)) is the least pair of distinct triangular numbers for which n divides their difference.

The programs for A205006, there is no canonical definition to state claims against.
-/

/-! ## A205006.P6639578857575231867

`(n+1)*A205007(n+1)`
-/

namespace A205006.P6639578857575231867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205007 (n + 1)

end

end A205006.P6639578857575231867

/-! ## A205006.P4236924305244800801

`floor(A205007(n+1)/acot(A000027(n+1)))`
-/

namespace A205006.P4236924305244800801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A205007 (n + 1) : ℝ) / SequenceMachineLib.acot (A000027 (n + 1) : ℝ)⌋

end

end A205006.P4236924305244800801

/-! ## A205006.P15742095608390907153

`A205004(n+1)-A205005(n+1)`
-/

namespace A205006.P15742095608390907153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205004 (n + 1) - A205005 (n + 1)

end

end A205006.P15742095608390907153

/-! ## A205006.P811164059976050972

`A000217(A205002(n+1))-A205005(n+1)`
-/

namespace A205006.P811164059976050972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A205002 (n + 1)).toNat - A205005 (n + 1)

end

end A205006.P811164059976050972

/-! ## A205006.P6628349337409839361

`A205004(n+1)-A000217(A205003(n+1))`
-/

namespace A205006.P6628349337409839361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205004 (n + 1) - A000217 (A205003 (n + 1)).toNat

end

end A205006.P6628349337409839361

/-! ## A205006.P17777557934920867942

`A000217(A205002(n+1))-A000217(A205003(n+1))`
-/

namespace A205006.P17777557934920867942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A205002 (n + 1)).toNat - A000217 (A205003 (n + 1)).toNat

end

end A205006.P17777557934920867942

/-! ## A205006.P15535537109209382556

`(n+1)*A205032(2*(n+1))`
-/

namespace A205006.P15535537109209382556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205032 (2 * (n + 1))

end

end A205006.P15535537109209382556

/-! ## A205006.P11851202366473113404

`A205031(2*(n+1))/2`
-/

namespace A205006.P11851202366473113404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205031 (2 * (n + 1)) : ℚ) / 2

end

end A205006.P11851202366473113404

/-! ## A205006.P11501804451832173640

`(A205029(2*(n+1))-A205030(2*(n+1)))/2`
-/

namespace A205006.P11501804451832173640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205029 (2 * (n + 1)) - A205030 (2 * (n + 1)) : ℚ) / 2

end

end A205006.P11501804451832173640

/-! ## A205006.P8850387921780316711

`A004526(A205031(2*(n+1)))`
-/

namespace A205006.P8850387921780316711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A205031 (2 * (n + 1))).toNat

end

end A205006.P8850387921780316711

/-! ## A205006.P9448768106418828976

`A193974(A205001(n+1)-1)`
-/

namespace A205006.P9448768106418828976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 (A205001 (n + 1) - 1).toNat

end

end A205006.P9448768106418828976

/-! ## A205006.P10038268764288932447

`A205016(A205017(2*(n+1)))/2`
-/

namespace A205006.P10038268764288932447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205016 (A205017 (2 * (n + 1))).toNat : ℚ) / 2

end

end A205006.P10038268764288932447

/-!
# A205007: a(n) = (1/n)*A205006(n), where A205006(n) = s(k)-s(j), with (s(k),s(j)) the least pair of distinct triangular numbers for which n divides their difference.

The programs for A205007, there is no canonical definition to state claims against.
-/

/-! ## A205007.P2599520741091705030

`1/(n+1)*A205006(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205007.P2599520741091705030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205006 (n + 1) : ℚ)

end

end A205007.P2599520741091705030

/-! ## A205007.P8972238154744339029

`A205006(n+1)/(n+1)`
-/

namespace A205007.P8972238154744339029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205006 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205007.P8972238154744339029

/-! ## A205007.P10270621981452938211

`A205003(A193974(A205006(n+1)-n))`
-/

namespace A205007.P10270621981452938211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205003 (A193974 (A205006 (n + 1) - (n : ℤ)).toNat).toNat

end

end A205007.P10270621981452938211

/-! ## A205007.P10344574946098096633

`A205032(A205006(n*A205032(n+2)+1)+1)`
-/

namespace A205007.P10344574946098096633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205032 (A205006 ((n : ℤ) * A205032 (n + 2) + 1).toNat + 1).toNat

end

end A205007.P10344574946098096633

/-! ## A205007.P6275426436277417401

`A205032(2*(n+1))`
-/

namespace A205007.P6275426436277417401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205032 (2 * (n + 1))

end

end A205007.P6275426436277417401

/-! ## A205007.P13263652628007939291

`gcd(2, A205032(n+2+n))`
-/

namespace A205007.P13263652628007939291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A205032 (n + 2 + n))

end

end A205007.P13263652628007939291

/-! ## A205007.P17215872657145050806

`A205032(Δ[A002378(n)])%3`
-/

namespace A205007.P17215872657145050806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205032 (f1 (n + 1) - f1 n).toNat) 3

end

end A205007.P17215872657145050806

/-! ## A205007.P16973903339332631645

`A205031(2*(n+1))/Δ[A002378(n)]`
-/

namespace A205007.P16973903339332631645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205031 (2 * (n + 1)) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A205007.P16973903339332631645

/-! ## A205007.P3903141104237937418

`A062557(A005369(A002620(n))+2*n)`
-/

namespace A205007.P3903141104237937418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062557 (A005369 (A002620 n).toNat + (2 * n : ℤ)).toNat

end

end A205007.P3903141104237937418

/-! ## A205007.P10948174068802603300

`A010052(A025581(n)+A002620(n+1))+1`
-/

namespace A205007.P10948174068802603300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A025581 n + A002620 (n + 1)).toNat + 1

end

end A205007.P10948174068802603300

/-! ## A205007.P13116985288640158463

`A062557(A130404(A093178(n+1))+2*n)`
-/

namespace A205007.P13116985288640158463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062557 (A130404 (A093178 (n + 1)).toNat + (2 * n : ℤ)).toNat

end

end A205007.P13116985288640158463

/-! ## A205007.P3008270952836241111

`A035214(A381534(n+1))`
-/

namespace A205007.P3008270952836241111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A381534 (n + 1)).toNat

end

end A205007.P3008270952836241111

/-! ## A205007.P3246267931564818031

`gcd(A004013(∑[n])+1+n, A035214(n+1))`
-/

namespace A205007.P3246267931564818031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004013 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)) (A035214 (n + 1))

end

end A205007.P3246267931564818031

/-! ## A205007.P15767541175796210867

`A035214(A025581(n)+n*A008619(n))`
-/

namespace A205007.P15767541175796210867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A025581 n + (n : ℤ) * A008619 n).toNat

end

end A205007.P15767541175796210867

/-! ## A205007.P8944502893534531894

`A040001(A040001(n)+or(n+1, A173787(n+1)))`
-/

namespace A205007.P8944502893534531894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A040001 n + Int.lor (n + 1 : ℤ) (A173787 (n + 1))).toNat

end

end A205007.P8944502893534531894

/-! ## A205007.P17527093557937326809

`A002260(A131231(A002623(A131231(n+2))))`
-/

namespace A205007.P17527093557937326809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A131231 (A002623 (A131231 (n + 2)).toNat).toNat).toNat

end

end A205007.P17527093557937326809

/-! ## A205007.P5587084722128651860

`gcd(A049332(n), A275015(n+1))`
-/

namespace A205007.P5587084722128651860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049332 n) (A275015 (n + 1))

end

end A205007.P5587084722128651860

/-! ## A205007.P11419063072657209495

`A000034(A040001(n)*A130321(n))`
-/

namespace A205007.P11419063072657209495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A040001 n * A130321 n).toNat

end

end A205007.P11419063072657209495

/-! ## A205007.P10369541889285992434

`A000034(lcm(A040001(n), A130321(n)))`
-/

namespace A205007.P10369541889285992434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Int.lcm (A040001 n) (A130321 n))

end

end A205007.P10369541889285992434

/-! ## A205007.P10333413886159738540

`A062557(A062557(n²)*A266220(n))`
-/

namespace A205007.P10333413886159738540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062557 (A062557 (n ^ 2) * A266220 n).toNat

end

end A205007.P10333413886159738540

/-!
# A205008: Ordered differences of central binomial coefficients.

The programs for A205008, the canonical program `A205008.P13998729903812751376` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205008 has offset 1).

The definition of A205008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205008.P13998729903812751376

`A000984(A002024(n+1))-A000984(A002262(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A205008

/-- `A000984(A002024(n+1))-A000984(A002262(n))` -/
def P13998729903812751376.Spec : Prop :=
  ∀ n, P13998729903812751376.a n = A205008 (n + 1)

theorem P13998729903812751376.correct : P13998729903812751376.Spec := by
  intro n
  simp only [A205008, Nat.add_sub_cancel]

end A205008

/-! ## A205008.P11443968202392305709

`A000984(A003056(n)+1)-A000984(A002262(n))`
-/

namespace A205008.P11443968202392305709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A003056 n + 1).toNat - A000984 (A002262 n).toNat

end

end A205008.P11443968202392305709

namespace A205008

/-- `A000984(A003056(n)+1)-A000984(A002262(n))` -/
def P11443968202392305709.Spec : Prop :=
  ∀ n, P11443968202392305709.a n = A205008 (n + 1)

end A205008

/-! ## A205008.P6214181062235817191

`A106187(A127739(n+1))-A106187(A061579(n))`
-/

namespace A205008.P6214181062235817191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106187 (A127739 (n + 1)).toNat - A106187 (A061579 n).toNat

end

end A205008.P6214181062235817191

namespace A205008

/-- `A106187(A127739(n+1))-A106187(A061579(n))` -/
def P6214181062235817191.Spec : Prop :=
  ∀ n, P6214181062235817191.a n = A205008 (n + 1)

end A205008

/-!
# A205010: Least k such that n divides s(k)-s(j) for some j satisfying 1<=j

The programs for A205010, there is no canonical definition to state claims against.
-/

/-! ## A205010.P14686844620738466528

`1+A002024(A205009(n+1))`
-/

namespace A205010.P14686844620738466528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002024 (A205009 (n + 1)).toNat

end

end A205010.P14686844620738466528

/-! ## A205010.P5749498337468811744

`A003057(A205009(n+1)+1)`
-/

namespace A205010.P5749498337468811744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205009 (n + 1) + 1).toNat

end

end A205010.P5749498337468811744

/-! ## A205010.P15800417216289095764

`A002024(A014132(A205009(n+1)))`
-/

namespace A205010.P15800417216289095764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A014132 (A205009 (n + 1)).toNat).toNat

end

end A205010.P15800417216289095764

/-! ## A205010.P11240986079935042159

`A123578(A205009(n+1))+A014963(A248020(n+1))`
-/

namespace A205010.P11240986079935042159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205009 (n + 1)).toNat + A014963 (A248020 (n + 1)).toNat

end

end A205010.P11240986079935042159

/-! ## A205010.P12198673090885837008

`A123578(A205009(n+1))+A003557(A000040(n+1))`
-/

namespace A205010.P12198673090885837008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205009 (n + 1)).toNat + A003557 (A000040 (n + 1)).toNat

end

end A205010.P12198673090885837008

/-! ## A205010.P877442626872265926

`A097285(2*A205009(n+1))`
-/

namespace A205010.P877442626872265926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205009 (n + 1)).toNat

end

end A205010.P877442626872265926

/-! ## A205010.P3096787067458971253

`A123578(A205009(n+1))-A008683(A110581(n+1))`
-/

namespace A205010.P3096787067458971253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205009 (n + 1)).toNat - A008683 (A110581 (n + 1)).toNat

end

end A205010.P3096787067458971253

/-! ## A205010.P11628673608653920033

`A123578(A205009(n+1))+A014963(A044377(n+1))`
-/

namespace A205010.P11628673608653920033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205009 (n + 1)).toNat + A014963 (A044377 (n + 1)).toNat

end

end A205010.P11628673608653920033

/-!
# A205011: The index j

The programs for A205011, there is no canonical definition to state claims against.
-/

/-! ## A205011.P504008425966570502

`A002260(A205009(n+1))`
-/

namespace A205011.P504008425966570502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205009 (n + 1)).toNat

end

end A205011.P504008425966570502

/-! ## A205011.P4235575631789400204

`A131818(A205009(n+1)+1)-1`
-/

namespace A205011.P4235575631789400204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A205009 (n + 1) + 1).toNat - 1

end

end A205011.P4235575631789400204

/-! ## A205011.P2944969388908239999

`A000720(p?[A037126(A205009(n+1))])`
-/

namespace A205011.P2944969388908239999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A205009 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A205011.P2944969388908239999

/-! ## A205011.P4584995865655295571

`A130270(A205010(n+1)+A205009(n+1))`
-/

namespace A205011.P4584995865655295571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (A205010 (n + 1) + A205009 (n + 1)).toNat

end

end A205011.P4584995865655295571

/-! ## A205011.P7334296853929284432

`gcd(A131818(A205009(n+1)), A205013(n+1))`
-/

namespace A205011.P7334296853929284432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131818 (A205009 (n + 1)).toNat) (A205013 (n + 1))

end

end A205011.P7334296853929284432

/-! ## A205011.P5695552588061860020

`A097285(2*A205009(n+1)-1)`
-/

namespace A205011.P5695552588061860020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205009 (n + 1) - 1).toNat

end

end A205011.P5695552588061860020

/-! ## A205011.P11178716815309895253

`A097285(A205009(n+1)+A205009(n+1)-1)`
-/

namespace A205011.P11178716815309895253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205009 (n + 1) + (A205009 (n + 1) - 1)).toNat

end

end A205011.P11178716815309895253

/-!
# A205012: Least s(k) such that n divides s(k)-s(j) for some j

The programs for A205012, there is no canonical definition to state claims against.
-/

/-! ## A205012.P4912725675868347836

`A000984(A205010(n+1)-1)`
-/

namespace A205012.P4912725675868347836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A205010 (n + 1) - 1).toNat

end

end A205012.P4912725675868347836

/-! ## A205012.P18276643034155100217

`A205014(n+1)+A205013(n+1)`
-/

namespace A205012.P18276643034155100217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205014 (n + 1) + A205013 (n + 1)

end

end A205012.P18276643034155100217

/-! ## A205012.P12172771914700611010

`A205013(n+1)+(n+1)*A205015(n+1)`
-/

namespace A205012.P12172771914700611010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205013 (n + 1) + (n + 1 : ℤ) * A205015 (n + 1)

end

end A205012.P12172771914700611010

/-! ## A205012.P12864636467770425459

`A000984(A123578(A205009(n+1)))`
-/

namespace A205012.P12864636467770425459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A123578 (A205009 (n + 1)).toNat).toNat

end

end A205012.P12864636467770425459

/-! ## A205012.P18101773032380160521

`A205013(n+1)+A205008(A205009(n+1))`
-/

namespace A205012.P18101773032380160521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205013 (n + 1) + A205008 (A205009 (n + 1)).toNat

end

end A205012.P18101773032380160521

/-! ## A205012.P3692141692051037571

`A097805(2*A205010(n+1)²)`
-/

namespace A205012.P3692141692051037571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (2 * A205010 (n + 1) ^ 2).toNat

end

end A205012.P3692141692051037571

/-! ## A205012.P15145656900750493391

`A097805(2*A205010(n+1)*A205010(n+1))`
-/

namespace A205012.P15145656900750493391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (2 * A205010 (n + 1) * A205010 (n + 1)).toNat

end

end A205012.P15145656900750493391

/-!
# A205013: The number s(j)=C(2j-2,j-1) such that n divides s(k)-s(j)>0, where k is the least positive integer for which such a j exists.

The programs for A205013, there is no canonical definition to state claims against.
-/

/-! ## A205013.P1797191964326159215

`A000984(A205011(n+1)-1)`
-/

namespace A205013.P1797191964326159215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A205011 (n + 1) - 1).toNat

end

end A205013.P1797191964326159215

/-! ## A205013.P13299696075517109917

`A191529(2*A205011(n+1))`
-/

namespace A205013.P13299696075517109917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (2 * A205011 (n + 1)).toNat

end

end A205013.P13299696075517109917

/-! ## A205013.P2274753154252256930

`A205012(n+1)-A205014(n+1)`
-/

namespace A205013.P2274753154252256930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205012 (n + 1) - A205014 (n + 1)

end

end A205013.P2274753154252256930

/-! ## A205013.P16495396444791595597

`A205012(n+1)-A205008(A205009(n+1))`
-/

namespace A205013.P16495396444791595597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205012 (n + 1) - A205008 (A205009 (n + 1)).toNat

end

end A205013.P16495396444791595597

/-! ## A205013.P5699840264152882225

`A097805(2*A205011(n+1)²)`
-/

namespace A205013.P5699840264152882225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (2 * A205011 (n + 1) ^ 2).toNat

end

end A205013.P5699840264152882225

/-! ## A205013.P12860540507099155510

`A097805(A005843(A205011(n+1)²))`
-/

namespace A205013.P12860540507099155510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A005843 (A205011 (n + 1) ^ 2).toNat).toNat

end

end A205013.P12860540507099155510

/-! ## A205013.P9493395496060368846

`A097805(2*A205011(n+1)*A205011(n+1))`
-/

namespace A205013.P9493395496060368846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (2 * A205011 (n + 1) * A205011 (n + 1)).toNat

end

end A205013.P9493395496060368846

/-! ## A205013.P10851470612154501825

`A007318(2*(A205011(n+1)²-A205011(n+1)))`
-/

namespace A205013.P10851470612154501825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * (A205011 (n + 1) ^ 2 - A205011 (n + 1))).toNat

end

end A205013.P10851470612154501825

/-!
# A205014: s(k)-s(j), where (s(k),s(j)) is the least pair of central binomial coefficients for which n divides their difference.

The programs for A205014, there is no canonical definition to state claims against.
-/

/-! ## A205014.P9536956273754040766

`(n+1)*A205015(n+1)`
-/

namespace A205014.P9536956273754040766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205015 (n + 1)

end

end A205014.P9536956273754040766

/-! ## A205014.P11956976387889638002

`A205012(n+1)-A205013(n+1)`
-/

namespace A205014.P11956976387889638002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205012 (n + 1) - A205013 (n + 1)

end

end A205014.P11956976387889638002

/-! ## A205014.P7779071828586328437

`A000984(A205010(n+1)-1)-A205013(n+1)`
-/

namespace A205014.P7779071828586328437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A205010 (n + 1) - 1).toNat - A205013 (n + 1)

end

end A205014.P7779071828586328437

/-! ## A205014.P9453566680916567762

`A205012(n+1)-A000984(A205011(n+1)-1)`
-/

namespace A205014.P9453566680916567762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205012 (n + 1) - A000984 (A205011 (n + 1) - 1).toNat

end

end A205014.P9453566680916567762

/-! ## A205014.P11203001285495059719

`A205012(n+1)-A191529(2*A205011(n+1))`
-/

namespace A205014.P11203001285495059719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205012 (n + 1) - A191529 (2 * A205011 (n + 1)).toNat

end

end A205014.P11203001285495059719

/-! ## A205014.P13485823423455365866

`A205008(A205009(n+1))`
-/

namespace A205014.P13485823423455365866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205008 (A205009 (n + 1)).toNat

end

end A205014.P13485823423455365866

/-! ## A205014.P12116644047760015875

`A097805(2*A205010(n+1)²)-A205013(n+1)`
-/

namespace A205014.P12116644047760015875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (2 * A205010 (n + 1) ^ 2).toNat - A205013 (n + 1)

end

end A205014.P12116644047760015875

/-! ## A205014.P12682396951299755498

`A205012(n+1)-A097805(2*A205011(n+1)²)`
-/

namespace A205014.P12682396951299755498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205012 (n + 1) - A097805 (2 * A205011 (n + 1) ^ 2).toNat

end

end A205014.P12682396951299755498

/-!
# A205015: (1/n)*A205014(n).

The programs for A205015, there is no canonical definition to state claims against.
-/

/-! ## A205015.P11376566668058261070

`1/(n+1)*A205014(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205015.P11376566668058261070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205014 (n + 1) : ℚ)

end

end A205015.P11376566668058261070

/-! ## A205015.P11560378926881151538

`A205014(n+1)/(n+1)`
-/

namespace A205015.P11560378926881151538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205014 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205015.P11560378926881151538

/-! ## A205015.P5722579438424024448

`(A205012(n+1)-A205013(n+1))/(n+1)`
-/

namespace A205015.P5722579438424024448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205012 (n + 1) - A205013 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205015.P5722579438424024448

/-! ## A205015.P8021371279019347834

`(A000984(A205010(n+1)-1)-A205013(n+1))/(n+1)`
-/

namespace A205015.P8021371279019347834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (A205010 (n + 1) - 1).toNat - A205013 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205015.P8021371279019347834

/-! ## A205015.P12912427824100982033

`(A205012(n+1)-A191529(2*A205011(n+1)))/(n+1)`
-/

namespace A205015.P12912427824100982033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205012 (n + 1) - A191529 (2 * A205011 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205015.P12912427824100982033

/-! ## A205015.P1051242408721469806

`A205008(A205009(n+1))/(n+1)`
-/

namespace A205015.P1051242408721469806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205008 (A205009 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205015.P1051242408721469806

/-! ## A205015.P8431112460957162229

`(A205012(n+1)-A097805(2*A205011(n+1)²))/(n+1)`
-/

namespace A205015.P8431112460957162229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205012 (n + 1) - A097805 (2 * A205011 (n + 1) ^ 2).toNat : ℚ) / (n + 1 : ℚ)

end

end A205015.P8431112460957162229

/-!
# A205016: Ordered differences of oblong numbers.

The programs for A205016, the canonical program `A205016.P2286842531164054448` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205016 has offset 1).

The definition of A205016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205016.P2286842531164054448

`2*A193974(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A205016

/-- `2*A193974(n)` -/
def P2286842531164054448.Spec : Prop :=
  ∀ n, P2286842531164054448.a n = A205016 (n + 1)

theorem P2286842531164054448.correct : P2286842531164054448.Spec := by
  intro n
  simp only [A205016, Nat.add_sub_cancel]

end A205016

/-! ## A205016.P10519908307482829846

`2*(A131783(n+1)+1)`
-/

namespace A205016.P10519908307482829846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131783 (n + 1) + 1)

end

end A205016.P10519908307482829846

namespace A205016

/-- `2*(A131783(n+1)+1)` -/
def P10519908307482829846.Spec : Prop :=
  ∀ n, P10519908307482829846.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P13719950585193201558

`A141429(n+1)+A063929(n+1)`
-/

namespace A205016.P13719950585193201558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141429 (n + 1) + A063929 (n + 1)

end

end A205016.P13719950585193201558

namespace A205016

/-- `A141429(n+1)+A063929(n+1)` -/
def P13719950585193201558.Spec : Prop :=
  ∀ n, P13719950585193201558.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P10797597197098237330

`A120070(n+2)+A004736(n+1)`
-/

namespace A205016.P10797597197098237330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) + A004736 (n + 1)

end

end A205016.P10797597197098237330

namespace A205016

/-- `A120070(n+2)+A004736(n+1)` -/
def P10797597197098237330.Spec : Prop :=
  ∀ n, P10797597197098237330.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P3931886514684224693

`A144650(n+1)-A057105(n+1)`
-/

namespace A205016.P3931886514684224693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) - A057105 (n + 1)

end

end A205016.P3931886514684224693

namespace A205016

/-- `A144650(n+1)-A057105(n+1)` -/
def P3931886514684224693.Spec : Prop :=
  ∀ n, P3931886514684224693.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P18062074442758407480

`A205128(n+1)-A094728(n+1)`
-/

namespace A205016.P18062074442758407480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205128 (n + 1) - A094728 (n + 1)

end

end A205016.P18062074442758407480

namespace A205016

/-- `A205128(n+1)-A094728(n+1)` -/
def P18062074442758407480.Spec : Prop :=
  ∀ n, P18062074442758407480.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P5604633389967189437

`2*(A158822(n)+A143595(n+1))`
-/

namespace A205016.P5604633389967189437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158822 n + A143595 (n + 1))

end

end A205016.P5604633389967189437

namespace A205016

/-- `2*(A158822(n)+A143595(n+1))` -/
def P5604633389967189437.Spec : Prop :=
  ∀ n, P5604633389967189437.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P17320136994273105041

`2*(A193592(n)+A131819(n+1))`
-/

namespace A205016.P17320136994273105041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A193592 n + A131819 (n + 1))

end

end A205016.P17320136994273105041

namespace A205016

/-- `2*(A193592(n)+A131819(n+1))` -/
def P17320136994273105041.Spec : Prop :=
  ∀ n, P17320136994273105041.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P1421103854994677029

`2*(A329854(n)+A131914(n+1))`
-/

namespace A205016.P1421103854994677029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A329854 n + A131914 (n + 1))

end

end A205016.P1421103854994677029

namespace A205016

/-- `2*(A329854(n)+A131914(n+1))` -/
def P1421103854994677029.Spec : Prop :=
  ∀ n, P1421103854994677029.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P392714246446929127

`(A051162(n)+4)*A004736(n+1)`
-/

namespace A205016.P392714246446929127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 4) * A004736 (n + 1)

end

end A205016.P392714246446929127

namespace A205016

/-- `(A051162(n)+4)*A004736(n+1)` -/
def P392714246446929127.Spec : Prop :=
  ∀ n, P392714246446929127.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P13268113258552910049

`A004736(n+1)+sqrt(A165447(n+2))`
-/

namespace A205016.P13268113258552910049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℝ) + Real.sqrt (A165447 (n + 2) : ℝ)

end

end A205016.P13268113258552910049

namespace A205016

/-- `A004736(n+1)+sqrt(A165447(n+2))` -/
def P13268113258552910049.Spec : Prop :=
  ∀ n, P13268113258552910049.a n = (A205016 (n + 1) : ℝ)

end A205016

/-! ## A205016.P2697017820636962068

`ceil(A120070(n+2)+A099375(n)/2)`
-/

namespace A205016.P2697017820636962068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120070 (n + 2) : ℚ) + (A099375 n : ℚ) / 2⌉

end

end A205016.P2697017820636962068

namespace A205016

/-- `ceil(A120070(n+2)+A099375(n)/2)` -/
def P2697017820636962068.Spec : Prop :=
  ∀ n, P2697017820636962068.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P8593499581438594884

`2*(A049777(n+1)+A004736(n+1))`
-/

namespace A205016.P8593499581438594884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049777 (n + 1) + A004736 (n + 1))

end

end A205016.P8593499581438594884

namespace A205016

/-- `2*(A049777(n+1)+A004736(n+1))` -/
def P8593499581438594884.Spec : Prop :=
  ∀ n, P8593499581438594884.a n = A205016 (n + 1)

theorem P8593499581438594884.correct : P8593499581438594884.Spec := by
  intro n
  simp only [A205016, Nat.add_sub_cancel, A205016.P8593499581438594884.a, A205016.P2286842531164054448.a, A004736, A004736.P10337537277358081527.a, A049777, A049777.P827072266685734770.a, A193974, A193974.P14269232743332111222.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A112367, A112367.P5378126856570841990.a, A127739, A127739.P6291269565293973198.a, A131783, A131783.P16711198060458241591.a, A003057, A003057.P16308936517940939054.a, A025581, A025581.P420762180635059694.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A205016

/-! ## A205016.P12644421344892147013

`2*(A049777(n+1)+A025581(n)+1)`
-/

namespace A205016.P12644421344892147013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049777 (n + 1) + (A025581 n + 1))

end

end A205016.P12644421344892147013

namespace A205016

/-- `2*(A049777(n+1)+A025581(n)+1)` -/
def P12644421344892147013.Spec : Prop :=
  ∀ n, P12644421344892147013.a n = A205016 (n + 1)

theorem P12644421344892147013.correct : P12644421344892147013.Spec := by
  intro n
  simp only [A205016, Nat.add_sub_cancel, A205016.P12644421344892147013.a, A205016.P2286842531164054448.a, A025581, A025581.P420762180635059694.a, A049777, A049777.P827072266685734770.a, A193974, A193974.P14269232743332111222.a, A004736, A004736.P10337537277358081527.a, A112367, A112367.P5378126856570841990.a, A127739, A127739.P6291269565293973198.a, A131783, A131783.P16711198060458241591.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A205016

/-! ## A205016.P12292519617346051915

`(A108872(n+1)+2)*A004736(n+1)`
-/

namespace A205016.P12292519617346051915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) + 2) * A004736 (n + 1)

end

end A205016.P12292519617346051915

namespace A205016

/-- `(A108872(n+1)+2)*A004736(n+1)` -/
def P12292519617346051915.Spec : Prop :=
  ∀ n, P12292519617346051915.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P18159709626268441229

`A095832(n+1)+2*A141429(n+1)`
-/

namespace A205016.P18159709626268441229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (n + 1) + 2 * A141429 (n + 1)

end

end A205016.P18159709626268441229

namespace A205016

/-- `A095832(n+1)+2*A141429(n+1)` -/
def P18159709626268441229.Spec : Prop :=
  ∀ n, P18159709626268441229.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P12711958989233122910

`(A094727(n+1)+3)*A004736(n+1)`
-/

namespace A205016.P12711958989233122910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094727 (n + 1) + 3) * A004736 (n + 1)

end

end A205016.P12711958989233122910

namespace A205016

/-- `(A094727(n+1)+3)*A004736(n+1)` -/
def P12711958989233122910.Spec : Prop :=
  ∀ n, P12711958989233122910.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P2552340056763445571

`2*A063929(n+1)-A095832(n+1)`
-/

namespace A205016.P2552340056763445571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063929 (n + 1) - A095832 (n + 1)

end

end A205016.P2552340056763445571

namespace A205016

/-- `2*A063929(n+1)-A095832(n+1)` -/
def P2552340056763445571.Spec : Prop :=
  ∀ n, P2552340056763445571.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P12206995371069924018

`2*(A120070(n+2)-A049777(n+1))`
-/

namespace A205016.P12206995371069924018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A120070 (n + 2) - A049777 (n + 1))

end

end A205016.P12206995371069924018

namespace A205016

/-- `2*(A120070(n+2)-A049777(n+1))` -/
def P12206995371069924018.Spec : Prop :=
  ∀ n, P12206995371069924018.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P17226619174238691720

`A004277(A193974(n))`
-/

namespace A205016.P17226619174238691720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A193974 n).toNat

end

end A205016.P17226619174238691720

namespace A205016

/-- `A004277(A193974(n))` -/
def P17226619174238691720.Spec : Prop :=
  ∀ n, P17226619174238691720.a n = A205016 (n + 1)

end A205016

/-!
# A205017: Least k such that n divides the k-th difference between distinct oblong numbers.

The programs for A205017, there is no canonical definition to state claims against.
-/

/-! ## A205017.P3468783721736102717

`A205001(gcd(n+1, ∑[n]))`
-/

namespace A205017.P3468783721736102717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205001 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A205017.P3468783721736102717

/-! ## A205017.P1292442843376290306

`A205001(Δ[A001318(n)])`
-/

namespace A205017.P1292442843376290306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205001 (f1 (n + 1) - f1 n).toNat

end

end A205017.P1292442843376290306

/-! ## A205017.P5194368779480654249

`A205001(Δ[A319390(n)])`
-/

namespace A205017.P5194368779480654249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205001 (f1 (n + 1) - f1 n).toNat

end

end A205017.P5194368779480654249

/-! ## A205017.P115903751159007392

`A205001(A026741(n+1))`
-/

namespace A205017.P115903751159007392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205001 (A026741 (n + 1)).toNat

end

end A205017.P115903751159007392

/-! ## A205017.P8317090565165040535

`A205001(A029579(xor(1, n)))`
-/

namespace A205017.P8317090565165040535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205001 (A029579 (Nat.xor 1 n)).toNat

end

end A205017.P8317090565165040535

/-! ## A205017.P1897214044883503971

`A205001(∑[1-A001057(n)])`
-/

namespace A205017.P1897214044883503971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205001 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A205017.P1897214044883503971

/-! ## A205017.P17233372744896559965

`A205001((n+1)/A000034(n))`
-/

namespace A205017.P17233372744896559965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A205017.P17233372744896559965

/-! ## A205017.P2768075903375423692

`A205001(∑[A001057(A004442(n))])`
-/

namespace A205017.P2768075903375423692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205001 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A205017.P2768075903375423692

/-! ## A205017.P1935705905134671217

`A205001(A001318(n+1)-A001318(n))`
-/

namespace A205017.P1935705905134671217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205001 (A001318 (n + 1) - A001318 n).toNat

end

end A205017.P1935705905134671217

/-! ## A205017.P7286981253464451154

`A205001(A319390(n+1)-A319390(n))`
-/

namespace A205017.P7286981253464451154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205001 (A319390 (n + 1) - A319390 n).toNat

end

end A205017.P7286981253464451154

/-! ## A205017.P13687163563766426047

`A205001(A205031(n+1)/2)`
-/

namespace A205017.P13687163563766426047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205001 (SequenceMachineLib.roundAway ((A205031 (n + 1) : ℚ) / 2)).toNat

end

end A205017.P13687163563766426047

/-!
# A205018: Least k such that n divides s(k)-s(j) for some j satisfying 1<=j

The programs for A205018, there is no canonical definition to state claims against.
-/

/-! ## A205018.P9601083469355406351

`A205002(gcd(n+1, ∑[n]))`
-/

namespace A205018.P9601083469355406351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205002 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A205018.P9601083469355406351

/-! ## A205018.P7321566802663309141

`A205002(Δ[A001318(n)])`
-/

namespace A205018.P7321566802663309141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205002 (f1 (n + 1) - f1 n).toNat

end

end A205018.P7321566802663309141

/-! ## A205018.P8768562883052696254

`A205002(Δ[A319390(n)])`
-/

namespace A205018.P8768562883052696254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205002 (f1 (n + 1) - f1 n).toNat

end

end A205018.P8768562883052696254

/-! ## A205018.P7156786788996675252

`A205002(A026741(n+1))`
-/

namespace A205018.P7156786788996675252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205002 (A026741 (n + 1)).toNat

end

end A205018.P7156786788996675252

/-! ## A205018.P169071388548224304

`A205002(A109043(n+1)/2)`
-/

namespace A205018.P169071388548224304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205002 (SequenceMachineLib.roundAway ((A109043 (n + 1) : ℚ) / 2)).toNat

end

end A205018.P169071388548224304

/-! ## A205018.P15498753416024636899

`A205002((n+1)/A000034(n))`
-/

namespace A205018.P15498753416024636899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205002 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A205018.P15498753416024636899

/-! ## A205018.P2906528966976375455

`A205002(A001318(n+1)-A001318(n))`
-/

namespace A205018.P2906528966976375455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205002 (A001318 (n + 1) - A001318 n).toNat

end

end A205018.P2906528966976375455

/-! ## A205018.P3852026768786071790

`A205002(A319390(n+1)-A319390(n))`
-/

namespace A205018.P3852026768786071790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205002 (A319390 (n + 1) - A319390 n).toNat

end

end A205018.P3852026768786071790

/-! ## A205018.P3384711247244082826

`A205002(A205031(n+1)/2)`
-/

namespace A205018.P3384711247244082826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205002 (SequenceMachineLib.roundAway ((A205031 (n + 1) : ℚ) / 2)).toNat

end

end A205018.P3384711247244082826

/-! ## A205018.P6185794416818377416

`floor(sqrt(A205029(n+1)))`
-/

namespace A205018.P6185794416818377416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A205029 (n + 1))

end

end A205018.P6185794416818377416

/-! ## A205018.P18110701120775225830

`A002260(A205029(n+1)/2)`
-/

namespace A205018.P18110701120775225830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway ((A205029 (n + 1) : ℚ) / 2)).toNat

end

end A205018.P18110701120775225830

/-! ## A205018.P3642831990079157706

`A000194(A205029(n+1))`
-/

namespace A205018.P3642831990079157706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A205029 (n + 1)).toNat

end

end A205018.P3642831990079157706

/-! ## A205018.P14054165723203400923

`A002260(2*A205029(n+1))`
-/

namespace A205018.P14054165723203400923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A205029 (n + 1)).toNat

end

end A205018.P14054165723203400923

/-!
# A205019: Number of (n+1)X(n+1) 0..3 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205019, there is no canonical definition to state claims against.
-/

/-! ## A205019.P13464537847359034013

`A205027(∑[4*n]+1)`
-/

namespace A205019.P13464537847359034013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205019.P13464537847359034013

/-! ## A205019.P10404743366190120298

`record[gcd(A205027(n+1), A214292(n))]`
-/

namespace A205019.P10404743366190120298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205027 (n + 1)) (A214292 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205019.P10404743366190120298

/-! ## A205019.P13336494729138206116

`lcm(A205027(A001844(n)), A294605(n))`
-/

namespace A205019.P13336494729138206116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A205027 (A001844 n).toNat) (A294605 n)

end

end A205019.P13336494729138206116

/-! ## A205019.P2260825434526414412

`A205027(A001844(n))+A034522(n+1)`
-/

namespace A205019.P2260825434526414412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A001844 n).toNat + A034522 (n + 1)

end

end A205019.P2260825434526414412

/-!
# A205020: Number of (n+1)X2 0..3 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205020, there is no canonical definition to state claims against.
-/

/-! ## A205020.P2475742639799198433

`A205027(∑[n]+1)`
-/

namespace A205020.P2475742639799198433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205020.P2475742639799198433

/-! ## A205020.P10990663319726408035

`record[root(A205027(n+1), A007318(n))]`
-/

namespace A205020.P10990663319726408035
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205027 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205020.P10990663319726408035

/-! ## A205020.P13506909515181700891

`record[root(A205027(n+1), A054143(n))]`
-/

namespace A205020.P13506909515181700891
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205027 (n + 1) : ℝ) ^ (1 / (A054143 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205020.P13506909515181700891

/-! ## A205020.P14799129353422773080

`record[gcd(A002262(n), A205027(n+1))]`
-/

namespace A205020.P14799129353422773080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205020.P14799129353422773080

/-! ## A205020.P3932963577344608561

`record[lcm(A103452(n), A205027(n+1))]`
-/

namespace A205020.P3932963577344608561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103452 n) (A205027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205020.P3932963577344608561

/-!
# A205021: Number of (n+1)X3 0..3 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205021, there is no canonical definition to state claims against.
-/

/-! ## A205021.P3721485013895508093

`A205027(∑[n+1]+2)`
-/

namespace A205021.P3721485013895508093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205021.P3721485013895508093

/-! ## A205021.P11343515703832757075

`record[root(A205027(n+2), A054143(n))]`
-/

namespace A205021.P11343515703832757075
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205027 (n + 2) : ℝ) ^ (1 / (A054143 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205021.P11343515703832757075

/-! ## A205021.P10728179366976719197

`record[gcd(A002262(n), A205027(n+2))]`
-/

namespace A205021.P10728179366976719197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205027 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205021.P10728179366976719197

/-! ## A205021.P13629230559076749683

`record[root(A205027(n+2), A205003(n+2))]`
-/

namespace A205021.P13629230559076749683
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205027 (n + 2) : ℝ) ^ (1 / (A205003 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205021.P13629230559076749683

/-! ## A205021.P11851357045072750404

`record[root(A205027(n+2), A205005(n+2))]`
-/

namespace A205021.P11851357045072750404
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205027 (n + 2) : ℝ) ^ (1 / (A205005 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205021.P11851357045072750404

/-!
# A205022: Number of (n+1)X4 0..3 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205022, there is no canonical definition to state claims against.
-/

/-! ## A205022.P9060511612121075822

`A205027(∑[n+2]+4)`
-/

namespace A205022.P9060511612121075822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205022.P9060511612121075822

/-! ## A205022.P3981885010163789734

`A205027(A167614(n+1))+A192541(n)`
-/

namespace A205022.P3981885010163789734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A167614 (n + 1)).toNat + A192541 n

end

end A205022.P3981885010163789734

/-! ## A205022.P11829838120671238753

`A015216(n)*A205027(A167614(n+1))`
-/

namespace A205022.P11829838120671238753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015216 n * A205027 (A167614 (n + 1)).toNat

end

end A205022.P11829838120671238753

/-! ## A205022.P2185754395829258020

`A297246(n+1)+A205027(A167614(n+1))`
-/

namespace A205022.P2185754395829258020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (n + 1) + A205027 (A167614 (n + 1)).toNat

end

end A205022.P2185754395829258020

/-! ## A205022.P10588735313815864263

`A326291(n+1)+A205027(A167614(n+1))`
-/

namespace A205022.P10588735313815864263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A205027 (A167614 (n + 1)).toNat

end

end A205022.P10588735313815864263

/-!
# A205023: Number of (n+1)X5 0..3 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205023, there is no canonical definition to state claims against.
-/

/-! ## A205023.P14119567207698319615

`A205027(A052905(n)+9)`
-/

namespace A205023.P14119567207698319615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A052905 n + 9).toNat

end

end A205023.P14119567207698319615

/-! ## A205023.P3221501668226060593

`A205027(A055999(n)+10)`
-/

namespace A205023.P3221501668226060593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A055999 n + 10).toNat

end

end A205023.P3221501668226060593

/-! ## A205023.P14280193772702377868

`A205027(A167614(n+2)+1)`
-/

namespace A205023.P14280193772702377868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A167614 (n + 2) + 1).toNat

end

end A205023.P14280193772702377868

/-! ## A205023.P1742033053388811567

`A205027(A141214(n+1))`
-/

namespace A205023.P1742033053388811567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A141214 (n + 1)).toNat

end

end A205023.P1742033053388811567

/-! ## A205023.P4196876241273030026

`A205027(A374004(n+1))`
-/

namespace A205023.P4196876241273030026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A374004 (n + 1)).toNat

end

end A205023.P4196876241273030026

/-!
# A205024: Number of (n+1)X6 0..3 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205024, there is no canonical definition to state claims against.
-/

/-! ## A205024.P8622302914312976997

`lcm(A034851(n), A205027(A167499(n+3)))`
-/

namespace A205024.P8622302914312976997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034851 n) (A205027 (A167499 (n + 3)).toNat)

end

end A205024.P8622302914312976997

/-! ## A205024.P6082203158228739767

`A205027(A374005(n+1))`
-/

namespace A205024.P6082203158228739767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A374005 (n + 1)).toNat

end

end A205024.P6082203158228739767

/-! ## A205024.P1202610085947673693

`A205027(eq[2, A092921(n)])`
-/

namespace A205024.P1202610085947673693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205024.P1202610085947673693

/-! ## A205024.P9223275345087887649

`A205027(Δ[A023545(n+1)])`
-/

namespace A205024.P9223275345087887649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (f1 (n + 1) - f1 n).toNat

end

end A205024.P9223275345087887649

/-!
# A205025: Number of (n+1)X7 0..3 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205025, there is no canonical definition to state claims against.
-/

/-! ## A205025.P9734676456569996796

`A205027(A167499(n+4)+1)`
-/

namespace A205025.P9734676456569996796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A167499 (n + 4) + 1).toNat

end

end A205025.P9734676456569996796

/-! ## A205025.P11156899972526125082

`A205027(A374007(n+1))`
-/

namespace A205025.P11156899972526125082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A374007 (n + 1)).toNat

end

end A205025.P11156899972526125082

/-! ## A205025.P7872213530264207968

`A205027(A052905(n+3))`
-/

namespace A205025.P7872213530264207968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A052905 (n + 3)).toNat

end

end A205025.P7872213530264207968

/-! ## A205025.P15381808517426295597

`A205027(eq[6, A195079(n+1)])`
-/

namespace A205025.P15381808517426295597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205025.P15381808517426295597

/-!
# A205028: The index j

The programs for A205028, there is no canonical definition to state claims against.
-/

/-! ## A205028.P15935259022570494787

`floor(sqrt(A205030(n+1)))`
-/

namespace A205028.P15935259022570494787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A205030 (n + 1))

end

end A205028.P15935259022570494787

/-! ## A205028.P16414003173807373462

`A000027(round(sqrt(A205030(n+1))))`
-/

namespace A205028.P16414003173807373462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A205030 (n + 1) : ℝ))).toNat

end

end A205028.P16414003173807373462

/-! ## A205028.P3791084339510032667

`A205003(gcd(n+1, ∑[n]))`
-/

namespace A205028.P3791084339510032667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205003 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A205028.P3791084339510032667

/-! ## A205028.P14827528966961021369

`A205003(lcm(2, n+1)/2)`
-/

namespace A205028.P14827528966961021369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205003 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat

end

end A205028.P14827528966961021369

/-! ## A205028.P6766660716178331183

`A205003(Δ[A001318(n)])`
-/

namespace A205028.P6766660716178331183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205003 (f1 (n + 1) - f1 n).toNat

end

end A205028.P6766660716178331183

/-! ## A205028.P2254349506783729506

`A205003(Δ[A319390(n)])`
-/

namespace A205028.P2254349506783729506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205003 (f1 (n + 1) - f1 n).toNat

end

end A205028.P2254349506783729506

/-! ## A205028.P15232736121149347228

`A205003(A026741(n+1))`
-/

namespace A205028.P15232736121149347228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205003 (A026741 (n + 1)).toNat

end

end A205028.P15232736121149347228

/-! ## A205028.P13851946292761488739

`A205003(A205031(n+1)/2)`
-/

namespace A205028.P13851946292761488739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205003 (SequenceMachineLib.roundAway ((A205031 (n + 1) : ℚ) / 2)).toNat

end

end A205028.P13851946292761488739

/-! ## A205028.P9631808953612587836

`A205003((n+1)/A000034(n))`
-/

namespace A205028.P9631808953612587836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A205028.P9631808953612587836

/-! ## A205028.P11346234472431403675

`A205003(A001318(n+1)-A001318(n))`
-/

namespace A205028.P11346234472431403675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205003 (A001318 (n + 1) - A001318 n).toNat

end

end A205028.P11346234472431403675

/-! ## A205028.P10023316849818224317

`A205003(A319390(n+1)-A319390(n))`
-/

namespace A205028.P10023316849818224317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205003 (A319390 (n + 1) - A319390 n).toNat

end

end A205028.P10023316849818224317

/-! ## A205028.P1537732926158425482

`A002260(A205017(n+1))`
-/

namespace A205028.P1537732926158425482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205017 (n + 1)).toNat

end

end A205028.P1537732926158425482

/-! ## A205028.P2797877753912580077

`A025581(A205030(n+1)/2)`
-/

namespace A205028.P2797877753912580077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway ((A205030 (n + 1) : ℚ) / 2)).toNat

end

end A205028.P2797877753912580077

/-! ## A205028.P11503266414372784025

`A000194(A205030(n+1))`
-/

namespace A205028.P11503266414372784025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A205030 (n + 1)).toNat

end

end A205028.P11503266414372784025

/-! ## A205028.P5144312076093738981

`A025581(2*A205030(n+1))`
-/

namespace A205028.P5144312076093738981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A205030 (n + 1)).toNat

end

end A205028.P5144312076093738981

/-!
# A205029: Least s(k) such that n divides s(k)-s(j) for some j

The programs for A205029, there is no canonical definition to state claims against.
-/

/-! ## A205029.P11645095824184636597

`A002378(A205018(n+1))`
-/

namespace A205029.P11645095824184636597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A205018 (n + 1)).toNat

end

end A205029.P11645095824184636597

/-! ## A205029.P7440128989502923976

`A103505(A205018(n+1)+1)`
-/

namespace A205029.P7440128989502923976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (A205018 (n + 1) + 1).toNat

end

end A205029.P7440128989502923976

/-! ## A205029.P17762223270442722651

`A110660(2*A205018(n+1))`
-/

namespace A205029.P17762223270442722651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (2 * A205018 (n + 1)).toNat

end

end A205029.P17762223270442722651

/-! ## A205029.P3518910883848362049

`A205031(n+1)+A205030(n+1)`
-/

namespace A205029.P3518910883848362049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205031 (n + 1) + A205030 (n + 1)

end

end A205029.P3518910883848362049

/-! ## A205029.P13815915712826281199

`A002378(A205002((n+1)/A000034(n)))`
-/

namespace A205029.P13815915712826281199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A205002 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat).toNat

end

end A205029.P13815915712826281199

/-! ## A205029.P13410838820518510125

`A205018(A000027(n+1))+A205018(n+1)²`
-/

namespace A205029.P13410838820518510125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205018 (A000027 (n + 1)).toNat + A205018 (n + 1) ^ 2

end

end A205029.P13410838820518510125

/-! ## A205029.P17247128204525245474

`A110660(A205018(n+1)+A205018(n+1)+1)`
-/

namespace A205029.P17247128204525245474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (A205018 (n + 1) + (A205018 (n + 1) + 1)).toNat

end

end A205029.P17247128204525245474

/-! ## A205029.P13294339044791299726

`A205028(n+1)+A205031(n+1)+A205028(n+1)²`
-/

namespace A205029.P13294339044791299726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205028 (n + 1) + (A205031 (n + 1) + A205028 (n + 1) ^ 2)

end

end A205029.P13294339044791299726

/-! ## A205029.P13129085078680765932

`A205018(n+1)+A205018(A205031(n+1))²`
-/

namespace A205029.P13129085078680765932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205018 (n + 1) + A205018 (A205031 (n + 1)).toNat ^ 2

end

end A205029.P13129085078680765932

/-! ## A205029.P17276814086320741818

`A205030(n+1)+A205016(A205017(n+1))`
-/

namespace A205029.P17276814086320741818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205030 (n + 1) + A205016 (A205017 (n + 1)).toNat

end

end A205029.P17276814086320741818

/-! ## A205029.P17350241793681377802

`A000037(A205018(n+1)²)`
-/

namespace A205029.P17350241793681377802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A205018 (n + 1) ^ 2).toNat

end

end A205029.P17350241793681377802

/-!
# A205030: The number s(j)=j*(j+1) such that n divides s(k)-s(j)>0, where k is the least positive integer for which such a j exists.

The programs for A205030, there is no canonical definition to state claims against.
-/

/-! ## A205030.P10631469799035558278

`2*A205005(Δ[A001318(n)])`
-/

namespace A205030.P10631469799035558278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205005 (f1 (n + 1) - f1 n).toNat

end

end A205030.P10631469799035558278

/-! ## A205030.P18370391585130382757

`A002378(A205018(n+1))-A205031(n+1)`
-/

namespace A205030.P18370391585130382757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A205018 (n + 1)).toNat - A205031 (n + 1)

end

end A205030.P18370391585130382757

/-! ## A205030.P12760253707248950625

`A002378(A205028(n+1))`
-/

namespace A205030.P12760253707248950625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A205028 (n + 1)).toNat

end

end A205030.P12760253707248950625

/-! ## A205030.P1125812481409202041

`A087811(2*A205028(n+1))`
-/

namespace A205030.P1125812481409202041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (2 * A205028 (n + 1)).toNat

end

end A205030.P1125812481409202041

/-! ## A205030.P7187145921002560060

`A205029(n+1)-A205031(n+1)`
-/

namespace A205030.P7187145921002560060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205029 (n + 1) - A205031 (n + 1)

end

end A205030.P7187145921002560060

/-! ## A205030.P8093943043811247059

`A002378(A205003((n+1)/A000034(n)))`
-/

namespace A205030.P8093943043811247059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A205003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat).toNat

end

end A205030.P8093943043811247059

/-! ## A205030.P16487304491406891771

`A205028(n+1)+A205028(A205031(n+1))²`
-/

namespace A205030.P16487304491406891771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205028 (n + 1) + A205028 (A205031 (n + 1)).toNat ^ 2

end

end A205030.P16487304491406891771

/-! ## A205030.P990492444752045961

`A002260(A205017(n+1))+A002260(A205017(n+1))²`
-/

namespace A205030.P990492444752045961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205017 (n + 1)).toNat + A002260 (A205017 (n + 1)).toNat ^ 2

end

end A205030.P990492444752045961

/-! ## A205030.P10873700374936328032

`A005843(A205005(Δ[A001318(n)]))`
-/

namespace A205030.P10873700374936328032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A205005 (f1 (n + 1) - f1 n).toNat).toNat

end

end A205030.P10873700374936328032

/-! ## A205030.P1495565864115856365

`A205029(n+1)-A205016(A205017(n+1))`
-/

namespace A205030.P1495565864115856365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205029 (n + 1) - A205016 (A205017 (n + 1)).toNat

end

end A205030.P1495565864115856365

/-! ## A205030.P18009900133043934399

`A000037(A205028(n+1)²)`
-/

namespace A205030.P18009900133043934399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A205028 (n + 1) ^ 2).toNat

end

end A205030.P18009900133043934399

/-! ## A205030.P16091109849851099597

`A028392(A205028(n+1)²)`
-/

namespace A205030.P16091109849851099597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (A205028 (n + 1) ^ 2).toNat

end

end A205030.P16091109849851099597

/-!
# A205031: s(k)-s(j), where (s(k),s(j)) is the least pair of oblong numbers for which n divides their difference.

The programs for A205031, there is no canonical definition to state claims against.
-/

/-! ## A205031.P14361038663524017150

`(n+1)*A205032(n+1)`
-/

namespace A205031.P14361038663524017150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205032 (n + 1)

end

end A205031.P14361038663524017150

/-! ## A205031.P4943435419876103175

`2*A205006(gcd(n+1, ∑[n]))`
-/

namespace A205031.P4943435419876103175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205006 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A205031.P4943435419876103175

/-! ## A205031.P6087284908694461003

`2*A205006(Δ[A001318(n)])`
-/

namespace A205031.P6087284908694461003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205006 (f1 (n + 1) - f1 n).toNat

end

end A205031.P6087284908694461003

/-! ## A205031.P1456469119352205886

`2*A205006(Δ[A319390(n)])`
-/

namespace A205031.P1456469119352205886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205006 (f1 (n + 1) - f1 n).toNat

end

end A205031.P1456469119352205886

/-! ## A205031.P10831106531740394940

`A005843(A205006(gcd(n+1, ∑[n])))`
-/

namespace A205031.P10831106531740394940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A205006 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A205031.P10831106531740394940

/-! ## A205031.P17171403796356543617

`A005843(A205006(Δ[A001318(n)]))`
-/

namespace A205031.P17171403796356543617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A205006 (f1 (n + 1) - f1 n).toNat).toNat

end

end A205031.P17171403796356543617

/-! ## A205031.P8417984728915137604

`A205029(n+1)-A205030(n+1)`
-/

namespace A205031.P8417984728915137604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205029 (n + 1) - A205030 (n + 1)

end

end A205031.P8417984728915137604

/-! ## A205031.P3183728094593789581

`A205029(n+1)-(A205028(n+1)+A205028(n+1)²)`
-/

namespace A205031.P3183728094593789581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205029 (n + 1) - (A205028 (n + 1) + A205028 (n + 1) ^ 2)

end

end A205031.P3183728094593789581

/-! ## A205031.P536862264581203408

`2*A205006(A060819(2*(n+1)))`
-/

namespace A205031.P536862264581203408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205006 (A060819 (2 * (n + 1))).toNat

end

end A205031.P536862264581203408

/-! ## A205031.P5240237889312046346

`A205016(A205017(n+1))`
-/

namespace A205031.P5240237889312046346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205016 (A205017 (n + 1)).toNat

end

end A205031.P5240237889312046346

/-!
# A205032: a(n) = (s(k)-s(j))/n, where (s(k),s(j)) is the least pair of oblong numbers (A002378) for which n divides their difference; a(n) = (1/n)*A205031(n).

The programs for A205032, there is no canonical definition to state claims against.
-/

/-! ## A205032.P9467803178422290244

`1/(n+1)*A205031(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205032.P9467803178422290244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205031 (n + 1) : ℚ)

end

end A205032.P9467803178422290244

/-! ## A205032.P9814810767068067922

`2/(n+1)*A205006(Δ[A319390(n)])`
-/

namespace A205032.P9814810767068067922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A205006 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A205032.P9814810767068067922

/-! ## A205032.P1500749311839321441

`A205007(A057979(n+2))+A000038(n)`
-/

namespace A205032.P1500749311839321441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205007 (A057979 (n + 2)).toNat + A000038 n

end

end A205032.P1500749311839321441

/-! ## A205032.P15772671354967030866

`A054977(n)*A205007(A057979(n+2))`
-/

namespace A205032.P15772671354967030866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A205007 (A057979 (n + 2)).toNat

end

end A205032.P15772671354967030866

/-! ## A205032.P4991198950633261190

`A205007(A057979(n+2))^A205007(n+1)`
-/

namespace A205032.P4991198950633261190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205007 (A057979 (n + 2)).toNat : ℚ) ^ (A205007 (n + 1) : ℤ)

end

end A205032.P4991198950633261190

/-! ## A205032.P17976141710903152203

`A205031(n+1)/(n+1)`
-/

namespace A205032.P17976141710903152203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205031 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205032.P17976141710903152203

/-! ## A205032.P151665951836746873

`val(A205031(n+1)², Δ[A002378(n)])`
-/

namespace A205032.P151665951836746873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A205031 (n + 1) ^ 2).toNat (f1 (n + 1) - f1 n).toNat

end

end A205032.P151665951836746873

/-! ## A205032.P5079580544368090042

`A014963(A017113(n))*A205007(A057979(n+2))`
-/

namespace A205032.P5079580544368090042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017113 n).toNat * A205007 (A057979 (n + 2)).toNat

end

end A205032.P5079580544368090042

/-! ## A205032.P9076665768936505824

`A205016(A205017(n+1))/(n+1)`
-/

namespace A205032.P9076665768936505824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205016 (A205017 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205032.P9076665768936505824

/-! ## A205032.P15725472296963392525

`A014963(∑[4*(n+2)])*A205007(A057979(n+2))`
-/

namespace A205032.P15725472296963392525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A205007 (A057979 (n + 2)).toNat

end

end A205032.P15725472296963392525

/-!
# A205033: Number of (n+1)X2 0..3 arrays with permanents of 2X2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205033, there is no canonical definition to state claims against.
-/

/-! ## A205033.P2517439247183117214

`A205037(∑[n]+1)`
-/

namespace A205033.P2517439247183117214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205033.P2517439247183117214

/-! ## A205033.P16149436723736193720

`record[A205037(A114091(n+1))]`
-/

namespace A205033.P16149436723736193720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205033.P16149436723736193720

/-! ## A205033.P14338625838385731353

`record[A205037(A286235(n+1))]`
-/

namespace A205033.P14338625838385731353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205033.P14338625838385731353

/-! ## A205033.P5361741853207072130

`A205037(A000124(n))+char[9]`
-/

namespace A205033.P5361741853207072130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A205033.P5361741853207072130

/-! ## A205033.P3037270137753956920

`record[A010054(n)*A205037(n+1)]`
-/

namespace A205033.P3037270137753956920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205033.P3037270137753956920

/-!
# A205034: Number of (n+1)X3 0..3 arrays with permanents of 2X2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205034, there is no canonical definition to state claims against.
-/

/-! ## A205034.P6324425381696600164

`A205037(∑[n+1]+2)`
-/

namespace A205034.P6324425381696600164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205034.P6324425381696600164

/-! ## A205034.P12300906350648070671

`record[A205037(A114091(n+1)+1)]`
-/

namespace A205034.P12300906350648070671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205034.P12300906350648070671

/-! ## A205034.P2151282352015010116

`record[A205037(A286235(n+1)+1)]`
-/

namespace A205034.P2151282352015010116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205034.P2151282352015010116

/-! ## A205034.P3818527771798342944

`record[gcd(A002262(n), A205037(n+2))]`
-/

namespace A205034.P3818527771798342944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205037 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205034.P3818527771798342944

/-!
# A205035: Number of (n+1)X4 0..3 arrays with permanents of 2X2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205035, there is no canonical definition to state claims against.
-/

/-! ## A205035.P18348441810724647889

`A205037(A167614(n+1))`
-/

namespace A205035.P18348441810724647889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (A167614 (n + 1)).toNat

end

end A205035.P18348441810724647889

/-! ## A205035.P14400555513431055431

`A205037(A020752(n)-1)`
-/

namespace A205035.P14400555513431055431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (A020752 n - 1).toNat

end

end A205035.P14400555513431055431

/-!
# A205036: Number of (n+1)X5 0..3 arrays with permanents of 2X2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205036, there is no canonical definition to state claims against.
-/

/-! ## A205036.P6727823116281176211

`A205037(A020752(n+1))`
-/

namespace A205036.P6727823116281176211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (A020752 (n + 1)).toNat

end

end A205036.P6727823116281176211

/-! ## A205036.P85518620635765742

`A205037(A167614(n+2)+1)`
-/

namespace A205036.P85518620635765742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (A167614 (n + 2) + 1).toNat

end

end A205036.P85518620635765742

/-!
# A205038: Number of (n+1)X(n+1) 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205038, there is no canonical definition to state claims against.
-/

/-! ## A205038.P2864439185292866191

`A205046(∑[4*n]+1)`
-/

namespace A205038.P2864439185292866191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205038.P2864439185292866191

/-!
# A205039: Number of (n+1)X2 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205039, there is no canonical definition to state claims against.
-/

/-! ## A205039.P12296431610097595466

`A205046(∑[n]+1)`
-/

namespace A205039.P12296431610097595466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205039.P12296431610097595466

/-! ## A205039.P9444871990422375187

`lcm(2, A205046(A000124(n)))`
-/

namespace A205039.P9444871990422375187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205046 (A000124 n).toNat)

end

end A205039.P9444871990422375187

/-! ## A205039.P10670478848273314184

`record[A010054(n)*A205046(n+1)]`
-/

namespace A205039.P10670478848273314184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205039.P10670478848273314184

/-! ## A205039.P8457467065664178459

`record[root(A205046(n+1), A002260(n+1))]`
-/

namespace A205039.P8457467065664178459
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205046 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205039.P8457467065664178459

/-! ## A205039.P13298039365098314126

`record[root(A205046(n+1), A196863(n+1))]`
-/

namespace A205039.P13298039365098314126
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205046 (n + 1) : ℝ) ^ (1 / (A196863 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205039.P13298039365098314126

/-!
# A205040: Number of (n+1)X3 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205040, there is no canonical definition to state claims against.
-/

/-! ## A205040.P17429553507071383220

`A205046(∑[n+1]+2)`
-/

namespace A205040.P17429553507071383220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205040.P17429553507071383220

/-! ## A205040.P6400725194260095029

`record[A010054(n)*A205046(n+2)]`
-/

namespace A205040.P6400725194260095029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205046 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205040.P6400725194260095029

/-! ## A205040.P6286465421995919411

`record[root(A205046(n+2), A002260(n+1))]`
-/

namespace A205040.P6286465421995919411
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205046 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205040.P6286465421995919411

/-! ## A205040.P458580125343283126

`record[gcd(A174624(n+1), A205046(n+2))]`
-/

namespace A205040.P458580125343283126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174624 (n + 1)) (A205046 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205040.P458580125343283126

/-! ## A205040.P6059795221455067000

`record[root(A205046(n+2), A196863(n+3))]`
-/

namespace A205040.P6059795221455067000
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205046 (n + 2) : ℝ) ^ (1 / (A196863 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205040.P6059795221455067000

/-!
# A205041: Number of (n+1)X4 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205041, there is no canonical definition to state claims against.
-/

/-! ## A205041.P11837670805745870417

`A205046(∑[n+2]+4)`
-/

namespace A205041.P11837670805745870417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205041.P11837670805745870417

/-! ## A205041.P10987896208819496501

`lcm(2, A205046(A167614(n+1)))`
-/

namespace A205041.P10987896208819496501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205046 (A167614 (n + 1)).toNat)

end

end A205041.P10987896208819496501

/-! ## A205041.P7226587402466283500

`A205046(A167614(n+1))+A025443(n)`
-/

namespace A205041.P7226587402466283500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A167614 (n + 1)).toNat + A025443 n

end

end A205041.P7226587402466283500

/-! ## A205041.P14968350035819723811

`A205046(A167614(n+1))+A084904(n)`
-/

namespace A205041.P14968350035819723811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A167614 (n + 1)).toNat + A084904 n

end

end A205041.P14968350035819723811

/-! ## A205041.P217372511313164776

`A205046(A167614(n+1))+A185245(n)`
-/

namespace A205041.P217372511313164776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A167614 (n + 1)).toNat + A185245 n

end

end A205041.P217372511313164776

/-!
# A205042: Number of (n+1)X5 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205042, there is no canonical definition to state claims against.
-/

/-! ## A205042.P9249690017119373180

`A205046(A374004(n+1))`
-/

namespace A205042.P9249690017119373180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A374004 (n + 1)).toNat

end

end A205042.P9249690017119373180

/-! ## A205042.P10377213453732853204

`A205046(A141214(n)+7)`
-/

namespace A205042.P10377213453732853204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A141214 n + 7).toNat

end

end A205042.P10377213453732853204

/-! ## A205042.P14619102765495924970

`A205046(A052905(n)+9)`
-/

namespace A205042.P14619102765495924970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A052905 n + 9).toNat

end

end A205042.P14619102765495924970

/-! ## A205042.P13103947631152933406

`A205046(A055999(n)+10)`
-/

namespace A205042.P13103947631152933406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A055999 n + 10).toNat

end

end A205042.P13103947631152933406

/-! ## A205042.P5062974793576971795

`A205046(A167614(n+2)+1)`
-/

namespace A205042.P5062974793576971795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A167614 (n + 2) + 1).toNat

end

end A205042.P5062974793576971795

/-!
# A205043: Number of (n+1)X6 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205043, there is no canonical definition to state claims against.
-/

/-! ## A205043.P3979028722734659795

`A205046(A374005(n+1))`
-/

namespace A205043.P3979028722734659795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A374005 (n + 1)).toNat

end

end A205043.P3979028722734659795

/-! ## A205043.P12504163224327931233

`A205046(A155212(n)+13)`
-/

namespace A205043.P12504163224327931233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A155212 n + 13).toNat

end

end A205043.P12504163224327931233

/-! ## A205043.P17446129262859139238

`A205046(eq[7, A066657(n)])`
-/

namespace A205043.P17446129262859139238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205043.P17446129262859139238

/-! ## A205043.P2253629542189818530

`A205046(A167614(n+3)+2)`
-/

namespace A205043.P2253629542189818530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A167614 (n + 3) + 2).toNat

end

end A205043.P2253629542189818530

/-! ## A205043.P1824586617731545071

`A205046(A052905(n+1)+10)`
-/

namespace A205043.P1824586617731545071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A052905 (n + 1) + 10).toNat

end

end A205043.P1824586617731545071

/-!
# A205044: Number of (n+1)X7 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205044, there is no canonical definition to state claims against.
-/

/-! ## A205044.P5490691595978356871

`A205046(A374007(n+1))`
-/

namespace A205044.P5490691595978356871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A374007 (n + 1)).toNat

end

end A205044.P5490691595978356871

/-! ## A205044.P11739911259195722690

`A205046(A052905(n+3))`
-/

namespace A205044.P11739911259195722690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A052905 (n + 3)).toNat

end

end A205044.P11739911259195722690

/-! ## A205044.P1405423386790520593

`A205046(eq[5, A193592(n)])`
-/

namespace A205044.P1405423386790520593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205044.P1405423386790520593

/-!
# A205045: Number of (n+1)X8 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205045, there is no canonical definition to state claims against.
-/

/-! ## A205045.P14862242865390651352

`A205046(A374008(n+1))`
-/

namespace A205045.P14862242865390651352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A374008 (n + 1)).toNat

end

end A205045.P14862242865390651352

/-!
# A205047: Number of (n+1)X(n+1) 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205047, there is no canonical definition to state claims against.
-/

/-! ## A205047.P9314880289169307405

`A205055((n+1)²+n²)`
-/

namespace A205047.P9314880289169307405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 ((n + 1) ^ 2 + n ^ 2)

end

end A205047.P9314880289169307405

/-! ## A205047.P8521245770348401273

`record[A003982(n)*A205055(n+1)]`
-/

namespace A205047.P8521245770348401273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A205055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205047.P8521245770348401273

/-! ## A205047.P9974585158482599968

`record[gcd(A003987(n), A205055(n+1))]`
-/

namespace A205047.P9974585158482599968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A205055 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205047.P9974585158482599968

/-! ## A205047.P1139053048298734470

`record[root(A205055(n+1), A286157(n+1))]`
-/

namespace A205047.P1139053048298734470
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205055 (n + 1) : ℝ) ^ (1 / (A286157 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205047.P1139053048298734470

/-! ## A205047.P13661751366441441777

`or(A112315(n), A205055(A001844(n)))`
-/

namespace A205047.P13661751366441441777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112315 n) (A205055 (A001844 n).toNat)

end

end A205047.P13661751366441441777

/-!
# A205048: Number of (n+1)X2 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205048, there is no canonical definition to state claims against.
-/

/-! ## A205048.P1465390766882924225

`A205055(∑[n]+1)`
-/

namespace A205048.P1465390766882924225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205048.P1465390766882924225

/-! ## A205048.P5624253912400563113

`lcm((-1)^∑[n], A205055(A000124(n)))`
-/

namespace A205048.P5624253912400563113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)) (A205055 (A000124 n).toNat)

end

end A205048.P5624253912400563113

/-! ## A205048.P6618428280808668768

`record[gcd(A205055(n+1), A221524(n+1))]`
-/

namespace A205048.P6618428280808668768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205055 (n + 1)) (A221524 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205048.P6618428280808668768

/-! ## A205048.P5425694338329214550

`record[A205055(A286157(n+1))]`
-/

namespace A205048.P5425694338329214550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A286157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205048.P5425694338329214550

/-! ## A205048.P4448754610601592452

`record[root(A205055(n+1), A124575(n))]`
-/

namespace A205048.P4448754610601592452
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205055 (n + 1) : ℝ) ^ (1 / (A124575 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205048.P4448754610601592452

/-!
# A205049: Number of (n+1)X3 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205049, there is no canonical definition to state claims against.
-/

/-! ## A205049.P16480431055080563570

`A205055(∑[n+1]+2)`
-/

namespace A205049.P16480431055080563570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205049.P16480431055080563570

/-! ## A205049.P4040675854929060181

`record[A205055(A286157(n+1)+2)]`
-/

namespace A205049.P4040675854929060181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A286157 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205049.P4040675854929060181

/-! ## A205049.P14759183733013550340

`record[A205055(Δ[A003453(n+5)])]`
-/

namespace A205049.P14759183733013550340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205049.P14759183733013550340

/-! ## A205049.P18313959479539934913

`record[A107727(n+2)*A205055(n+2)]`
-/

namespace A205049.P18313959479539934913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107727 (n + 2) * A205055 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205049.P18313959479539934913

/-!
# A205050: Number of (n+1)X4 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205050, there is no canonical definition to state claims against.
-/

/-! ## A205050.P7138973028536476567

`A205055(∑[n+2]+4)`
-/

namespace A205050.P7138973028536476567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205050.P7138973028536476567

/-! ## A205050.P2001746116921235738

`or(A000007(n), A205055(A167614(n+1)))`
-/

namespace A205050.P2001746116921235738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A205055 (A167614 (n + 1)).toNat)

end

end A205050.P2001746116921235738

/-! ## A205050.P3834950975296982591

`or(A000038(n), A205055(A167614(n+1)))`
-/

namespace A205050.P3834950975296982591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A205055 (A167614 (n + 1)).toNat)

end

end A205050.P3834950975296982591

/-! ## A205050.P13172708170816052548

`A205055(A167614(n+1))%A205040(n+1)`
-/

namespace A205050.P13172708170816052548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205055 (A167614 (n + 1)).toNat) (A205040 (n + 1))

end

end A205050.P13172708170816052548

/-! ## A205050.P15551697827167634034

`A205055(A034856(n+2))%A205040(n+1)`
-/

namespace A205050.P15551697827167634034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205055 (A034856 (n + 2)).toNat) (A205040 (n + 1))

end

end A205050.P15551697827167634034

/-!
# A205051: Number of (n+1)X5 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205051, there is no canonical definition to state claims against.
-/

/-! ## A205051.P1330242664778586507

`A205055(A374004(n+1))`
-/

namespace A205051.P1330242664778586507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A374004 (n + 1)).toNat

end

end A205051.P1330242664778586507

/-! ## A205051.P4410882151997722224

`A205055(A141214(n)+7)`
-/

namespace A205051.P4410882151997722224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A141214 n + 7).toNat

end

end A205051.P4410882151997722224

/-! ## A205051.P6582183045024271518

`A205055(A052905(n)+9)`
-/

namespace A205051.P6582183045024271518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A052905 n + 9).toNat

end

end A205051.P6582183045024271518

/-! ## A205051.P963073236271312140

`A205055(A055999(n)+10)`
-/

namespace A205051.P963073236271312140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A055999 n + 10).toNat

end

end A205051.P963073236271312140

/-! ## A205051.P3594123729593359939

`A205055(A167614(n+2)+1)`
-/

namespace A205051.P3594123729593359939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A167614 (n + 2) + 1).toNat

end

end A205051.P3594123729593359939

/-!
# A205052: Number of (n+1)X6 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205052, there is no canonical definition to state claims against.
-/

/-! ## A205052.P4687229692948621998

`A205055(A374005(n+1))`
-/

namespace A205052.P4687229692948621998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A374005 (n + 1)).toNat

end

end A205052.P4687229692948621998

/-! ## A205052.P14846122258100998935

`A205055(A155212(n)+13)`
-/

namespace A205052.P14846122258100998935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A155212 n + 13).toNat

end

end A205052.P14846122258100998935

/-! ## A205052.P1665618843899047942

`A205055(eq[6, A131818(n+1)])`
-/

namespace A205052.P1665618843899047942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205052.P1665618843899047942

/-! ## A205052.P1955454731078800074

`A205055(Δ[A264443(n)])`
-/

namespace A205052.P1955454731078800074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (f1 (n + 1) - f1 n).toNat

end

end A205052.P1955454731078800074

/-! ## A205052.P3833387174094448664

`A205055(eq[4, A193592(n)])`
-/

namespace A205052.P3833387174094448664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205052.P3833387174094448664

/-!
# A205053: Number of (n+1)X7 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205053, there is no canonical definition to state claims against.
-/

/-! ## A205053.P17117283698125376433

`A205055(A374007(n+1))`
-/

namespace A205053.P17117283698125376433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A374007 (n + 1)).toNat

end

end A205053.P17117283698125376433

/-! ## A205053.P2061068426305507026

`A205055(A000124(n+5)+5)`
-/

namespace A205053.P2061068426305507026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A000124 (n + 5) + 5).toNat

end

end A205053.P2061068426305507026

/-! ## A205053.P10674178917591513101

`A205055(eq[7, A131818(n+1)])`
-/

namespace A205053.P10674178917591513101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205053.P10674178917591513101

/-! ## A205053.P18015399089997452846

`A205055(A052905(n+3))`
-/

namespace A205053.P18015399089997452846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A052905 (n + 3)).toNat

end

end A205053.P18015399089997452846

/-! ## A205053.P4041147271890771056

`A205055(eq[3, A219347(n)])`
-/

namespace A205053.P4041147271890771056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205053.P4041147271890771056

/-!
# A205054: Number of (n+1)X8 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205054, there is no canonical definition to state claims against.
-/

/-! ## A205054.P13874679440578661948

`A205055(A374008(n+1))`
-/

namespace A205054.P13874679440578661948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A374008 (n + 1)).toNat

end

end A205054.P13874679440578661948

/-! ## A205054.P13175560742852332377

`A205055(eq[8, A131818(n+1)])`
-/

namespace A205054.P13175560742852332377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205054.P13175560742852332377

/-! ## A205054.P6654447064576078050

`A205055(eq[4, A219347(n)])`
-/

namespace A205054.P6654447064576078050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205054.P6654447064576078050

/-! ## A205054.P17068210412233668429

`A205055(eq[6, A193592(n)])`
-/

namespace A205054.P17068210412233668429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205054.P17068210412233668429

/-! ## A205054.P13877809951658673192

`A205055(eq[10, A185782(n+1)])`
-/

namespace A205054.P13877809951658673192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205054.P13877809951658673192

/-!
# A205056: Number of (n+1)X(n+1) 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A205056, there is no canonical definition to state claims against.
-/

/-! ## A205056.P17217393667873690298

`A205063(∑[4*n]+1)`
-/

namespace A205056.P17217393667873690298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205056.P17217393667873690298

/-!
# A205057: Number of (n+1)X2 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A205057, there is no canonical definition to state claims against.
-/

/-! ## A205057.P10225734135113735482

`A205206(∑[n]+1)`
-/

namespace A205057.P10225734135113735482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205057.P10225734135113735482

/-! ## A205057.P12979763594491535572

`record[A010054(n)*A205206(n+1)]`
-/

namespace A205057.P12979763594491535572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205057.P12979763594491535572

/-! ## A205057.P17631977980930829697

`record[A205206(n+1)/A168549(n)]`
-/

namespace A205057.P17631977980930829697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205206 (n + 1) : ℚ) / (A168549 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205057.P17631977980930829697

/-! ## A205057.P1242406719998175671

`record[root(A205206(n+1), A074909(n))]`
-/

namespace A205057.P1242406719998175671
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205206 (n + 1) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205057.P1242406719998175671

/-! ## A205057.P6885737112841718650

`record[root(A205206(n+1), A076110(n+1))]`
-/

namespace A205057.P6885737112841718650
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205206 (n + 1) : ℝ) ^ (1 / (A076110 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205057.P6885737112841718650

/-!
# A205058: Number of (n+1)X3 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A205058, there is no canonical definition to state claims against.
-/

/-! ## A205058.P5442843549587892650

`A205063(∑[n+1]+2)`
-/

namespace A205058.P5442843549587892650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205058.P5442843549587892650

/-! ## A205058.P8475622404507847265

`record[A010054(n)*A205063(n+2)]`
-/

namespace A205058.P8475622404507847265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205063 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205058.P8475622404507847265

/-! ## A205058.P10830571507913753763

`record[A205063(A101881(n)+1)]`
-/

namespace A205058.P10830571507913753763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205058.P10830571507913753763

/-! ## A205058.P13633973476276215945

`record[A205063(A101881(n^(n%2)))]`
-/

namespace A205058.P13633973476276215945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (A101881 (n ^ (n % 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205058.P13633973476276215945

/-!
# A205059: Number of (n+1)X4 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A205059, there is no canonical definition to state claims against.
-/

/-! ## A205059.P16817676147537373170

`A205063(∑[n+2]+4)`
-/

namespace A205059.P16817676147537373170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205059.P16817676147537373170

/-! ## A205059.P7918518803994479780

`A205063(A167614(n+1))+A185245(n)`
-/

namespace A205059.P7918518803994479780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (A167614 (n + 1)).toNat + A185245 n

end

end A205059.P7918518803994479780

/-! ## A205059.P209151340510539886

`A205063(A167614(n+1))+A185284(n)`
-/

namespace A205059.P209151340510539886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (A167614 (n + 1)).toNat + A185284 n

end

end A205059.P209151340510539886

/-! ## A205059.P7869175938490905161

`A205063(A167614(n+1))+A000007(n+1)`
-/

namespace A205059.P7869175938490905161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A205059.P7869175938490905161

/-! ## A205059.P4487614775983908740

`A205063(A167614(n+1))*A215887(n+1)`
-/

namespace A205059.P4487614775983908740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (A167614 (n + 1)).toNat * A215887 (n + 1)

end

end A205059.P4487614775983908740

/-!
# A205060: Number of (n+1)X5 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A205060, there is no canonical definition to state claims against.
-/

/-! ## A205060.P15813341326234067603

`A205063(∑[n+3]+7)`
-/

namespace A205060.P15813341326234067603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A205060.P15813341326234067603

/-!
# A205061: Number of (n+1)X6 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A205061, there is no canonical definition to state claims against.
-/

/-! ## A205061.P1738151194660027984

`A205063(A374005(n+1))`
-/

namespace A205061.P1738151194660027984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (A374005 (n + 1)).toNat

end

end A205061.P1738151194660027984

/-!
# A205064: Number of (n+1) X (n+1) 0..1 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205064, there is no canonical definition to state claims against.
-/

/-! ## A205064.P1299889906100000188

`A205072(∑[4*n]+1)`
-/

namespace A205064.P1299889906100000188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205064.P1299889906100000188

/-! ## A205064.P11026258024272669710

`lcm(2, A205072(A001844(n)))`
-/

namespace A205064.P11026258024272669710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205072 (A001844 n).toNat)

end

end A205064.P11026258024272669710

/-! ## A205064.P4713217327701633501

`record[A003982(n)*A205072(n+1)]`
-/

namespace A205064.P4713217327701633501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A205072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205064.P4713217327701633501

/-! ## A205064.P1377004579256218555

`record[root(A205072(n+1), A331886(n))]`
-/

namespace A205064.P1377004579256218555
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205072 (n + 1) : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205064.P1377004579256218555

/-! ## A205064.P3069327849023815457

`record[gcd(A114327(n), A205072(n+1))]`
-/

namespace A205064.P3069327849023815457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A205072 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205064.P3069327849023815457

/-!
# A205065: Number of (n+1) X 2 0..1 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205065, there is no canonical definition to state claims against.
-/

/-! ## A205065.P10309356370315351784

`A205072(∑[n]+1)`
-/

namespace A205065.P10309356370315351784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205065.P10309356370315351784

/-! ## A205065.P15664435700934248613

`record[A205072(n+1)]`
-/

namespace A205065.P15664435700934248613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205065.P15664435700934248613

/-! ## A205065.P6399340679006161002

`lcm(2, A205072(A000124(n)))`
-/

namespace A205065.P6399340679006161002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205072 (A000124 n).toNat)

end

end A205065.P6399340679006161002

/-! ## A205065.P15875941771812517879

`A205072(A000124(n))+A000007(n+1)`
-/

namespace A205065.P15875941771812517879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A000124 n).toNat + A000007 (n + 1)

end

end A205065.P15875941771812517879

/-! ## A205065.P7116561475580455199

`A205072(A000124(n))+A047486(((-1)^n)²)`
-/

namespace A205065.P7116561475580455199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A000124 n).toNat + A047486 (((-1) ^ n) ^ 2).toNat

end

end A205065.P7116561475580455199

/-! ## A205065.P3344114724312521381

`A205072(A000124(n))+A057354(((-1)^n)²)`
-/

namespace A205065.P3344114724312521381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A000124 n).toNat + A057354 (((-1) ^ n) ^ 2).toNat

end

end A205065.P3344114724312521381

/-! ## A205065.P15825213456348383894

`A000120(((-1)^n)²)*A205072(A000124(n))`
-/

namespace A205065.P15825213456348383894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (((-1) ^ n) ^ 2).toNat * A205072 (A000124 n).toNat

end

end A205065.P15825213456348383894

/-! ## A205065.P10322376954457411597

`A001790(((-1)^n)²)*A205072(A000124(n))`
-/

namespace A205065.P10322376954457411597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (((-1) ^ n) ^ 2).toNat * A205072 (A000124 n).toNat

end

end A205065.P10322376954457411597

/-! ## A205065.P7670490538826233650

`A205072(A000124(n))+A008683(A273412(n))`
-/

namespace A205065.P7670490538826233650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A000124 n).toNat + A008683 (A273412 n).toNat

end

end A205065.P7670490538826233650

/-! ## A205065.P5683250539285879938

`A051340(A124796(n+1))*A205072(A000124(n))`
-/

namespace A205065.P5683250539285879938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A124796 (n + 1)).toNat * A205072 (A000124 n).toNat

end

end A205065.P5683250539285879938

/-!
# A205066: Number of (n+1) X 3 0..1 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205066, there is no canonical definition to state claims against.
-/

/-! ## A205066.P17655414783694873581

`A205072(∑[n+1]+2)`
-/

namespace A205066.P17655414783694873581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205066.P17655414783694873581

/-! ## A205066.P6446250168480130783

`lcm(2, A205072(A000096(n)+3))`
-/

namespace A205066.P6446250168480130783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205072 (A000096 n + 3).toNat)

end

end A205066.P6446250168480130783

/-! ## A205066.P15996692525857492734

`record[A010054(n)*A205072(n+2)]`
-/

namespace A205066.P15996692525857492734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205072 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205066.P15996692525857492734

/-! ## A205066.P1189568481658678101

`A205072(A000096(n+1))+A000007(n+1)`
-/

namespace A205066.P1189568481658678101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A205066.P1189568481658678101

/-! ## A205066.P8476913582775549584

`A018252(gcd(n, n+1))*A205072(A000096(n+1))`
-/

namespace A205066.P8476913582775549584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.gcd n (n + 1)) * A205072 (A000096 (n + 1)).toNat

end

end A205066.P8476913582775549584

/-!
# A205067: Number of (n+1)X4 0..1 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205067, there is no canonical definition to state claims against.
-/

/-! ## A205067.P16369108797525410820

`A205072(A167614(n+1))`
-/

namespace A205067.P16369108797525410820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A167614 (n + 1)).toNat

end

end A205067.P16369108797525410820

/-! ## A205067.P11290358903946961368

`A205072(A373663(n+1))`
-/

namespace A205067.P11290358903946961368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A373663 (n + 1)).toNat

end

end A205067.P11290358903946961368

/-! ## A205067.P16362375941521313926

`A205072(A055998(n)+6)`
-/

namespace A205067.P16362375941521313926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A055998 n + 6).toNat

end

end A205067.P16362375941521313926

/-! ## A205067.P11446935555021760458

`A205072(A046691(n)+7)`
-/

namespace A205067.P11446935555021760458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A046691 n + 7).toNat

end

end A205067.P11446935555021760458

/-! ## A205067.P7561273684351309142

`A205072(A167499(n)+n)`
-/

namespace A205067.P7561273684351309142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A167499 n + (n : ℤ)).toNat

end

end A205067.P7561273684351309142

/-!
# A205068: Number of (n+1)X5 0..1 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205068, there is no canonical definition to state claims against.
-/

/-! ## A205068.P8622115841331665246

`A205072(∑[n+3]+7)`
-/

namespace A205068.P8622115841331665246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A205068.P8622115841331665246

/-! ## A205068.P10881416588302758675

`and(1, A107464(n))*A205072(A167614(n+2)+1)`
-/

namespace A205068.P10881416588302758675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A107464 n) * A205072 (A167614 (n + 2) + 1).toNat

end

end A205068.P10881416588302758675

/-! ## A205068.P2843851732776786387

`lcm(2, A205072(A027379(n+2)))`
-/

namespace A205068.P2843851732776786387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205072 (A027379 (n + 2)).toNat)

end

end A205068.P2843851732776786387

/-! ## A205068.P2617360740092424754

`A205072(A056000(n)+7)+A025439(n)`
-/

namespace A205068.P2617360740092424754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A056000 n + 7).toNat + A025439 n

end

end A205068.P2617360740092424754

/-! ## A205068.P16167959445664963404

`and(1, A107464(n))*A205072(A155212(n)+5)`
-/

namespace A205068.P16167959445664963404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A107464 n) * A205072 (A155212 n + 5).toNat

end

end A205068.P16167959445664963404

/-!
# A205069: Number of (n+1)X6 0..1 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205069, there is no canonical definition to state claims against.
-/

/-! ## A205069.P5867843857973764889

`A205072(A374005(n+1))`
-/

namespace A205069.P5867843857973764889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A374005 (n + 1)).toNat

end

end A205069.P5867843857973764889

/-! ## A205069.P8325698709409979450

`A205072(A167499(n+3))`
-/

namespace A205069.P8325698709409979450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A167499 (n + 3)).toNat

end

end A205069.P8325698709409979450

/-! ## A205069.P16198605972464047079

`A205072(A155212(n)+13)`
-/

namespace A205069.P16198605972464047079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A155212 n + 13).toNat

end

end A205069.P16198605972464047079

/-! ## A205069.P17498881521345489975

`A205072(A056000(n)+15)`
-/

namespace A205069.P17498881521345489975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A056000 n + 15).toNat

end

end A205069.P17498881521345489975

/-! ## A205069.P14711208150987693271

`A205072(A000217(n+4)+5)`
-/

namespace A205069.P14711208150987693271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A000217 (n + 4) + 5).toNat

end

end A205069.P14711208150987693271

/-!
# A205070: Number of (n+1)X7 0..1 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205070, there is no canonical definition to state claims against.
-/

/-! ## A205070.P2737826041085682930

`A205072(A374007(n+1))`
-/

namespace A205070.P2737826041085682930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A374007 (n + 1)).toNat

end

end A205070.P2737826041085682930

/-! ## A205070.P13118497979964355418

`A205072(A167614(n+4)+3)`
-/

namespace A205070.P13118497979964355418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A167614 (n + 4) + 3).toNat

end

end A205070.P13118497979964355418

/-! ## A205070.P11343681499916038265

`A205072(A000124(n+5)+5)`
-/

namespace A205070.P11343681499916038265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A000124 (n + 5) + 5).toNat

end

end A205070.P11343681499916038265

/-! ## A205070.P8177721928764934404

`A205072(A000217(n+5)+6)`
-/

namespace A205070.P8177721928764934404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A000217 (n + 5) + 6).toNat

end

end A205070.P8177721928764934404

/-! ## A205070.P11177515568476018581

`A205072(Δ[A023545(n+1)]+10)`
-/

namespace A205070.P11177515568476018581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (f1 (n + 1) - f1 n + 10).toNat

end

end A205070.P11177515568476018581

/-!
# A205071: Number of (n+1)X8 0..1 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205071, there is no canonical definition to state claims against.
-/

/-! ## A205071.P18182178436280109174

`A205072(A374008(n+1))`
-/

namespace A205071.P18182178436280109174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A374008 (n + 1)).toNat

end

end A205071.P18182178436280109174

/-! ## A205071.P4617056537945624365

`A205072(A167487(n+5))`
-/

namespace A205071.P4617056537945624365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A167487 (n + 5)).toNat

end

end A205071.P4617056537945624365

/-! ## A205071.P17611341379931370274

`A205072(A167499(n+5)+2)`
-/

namespace A205071.P17611341379931370274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A167499 (n + 5) + 2).toNat

end

end A205071.P17611341379931370274

/-! ## A205071.P16194074602862210401

`A205072(A000217(n+6)+7)`
-/

namespace A205071.P16194074602862210401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A000217 (n + 6) + 7).toNat

end

end A205071.P16194074602862210401

/-! ## A205071.P16315341957823731258

`A205072(A052905(n+3)+12)`
-/

namespace A205071.P16315341957823731258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A052905 (n + 3) + 12).toNat

end

end A205071.P16315341957823731258

/-!
# A205073: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,6,2,0,0,0,1 for x=0,1,2,3,4,5,6.

The programs for A205073, there is no canonical definition to state claims against.
-/

/-! ## A205073.P7108497272011101015

`∑[A081598(A317354(n))]`
-/

namespace A205073.P7108497272011101015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081598 (A317354 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205073.P7108497272011101015

/-!
# A205074: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,4,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A205074, there is no canonical definition to state claims against.
-/

/-! ## A205074.P8006450081825335910

`A321517(a(n-1))` with `a(0)=1, a(1)=4, a(2)=1, a(3)=5`
-/

namespace A205074.P8006450081825335910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 1, 5] fun n a =>
  A321517 (a (n - 1)).toNat

end

end A205074.P8006450081825335910

/-!
# A205076: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,6,2,0,1,0,1 for x=0,1,2,3,4,5,6.

The programs for A205076, there is no canonical definition to state claims against.
-/

/-! ## A205076.P7866748308041224587

`ceil(sqrt(A117142(3^n*n!)))`
-/

namespace A205076.P7866748308041224587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A117142 (3 ^ n * Nat.factorial n) : ℝ)⌉

end

end A205076.P7866748308041224587

/-!
# A205078: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,0,0,1,1,0,1 for x=0,1,2,3,4,5,6.

The programs for A205078, there is no canonical definition to state claims against.
-/

/-! ## A205078.P17248748900350444739

`A062968(A098752(n+1)+A050353(n))`
-/

namespace A205078.P17248748900350444739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (A098752 (n + 1) + A050353 n).toNat

end

end A205078.P17248748900350444739

/-!
# A205081: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 0,0,1,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A205081, there is no canonical definition to state claims against.
-/

/-! ## A205081.P4473306165304742983

`A047427(∑[A047799(n)])`
-/

namespace A205081.P4473306165304742983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A205081.P4473306165304742983

/-!
# A205082: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 1,3,2,1,2,0,0 for x=0,1,2,3,4,5,6.

The programs for A205082, there is no canonical definition to state claims against.
-/

/-! ## A205082.P17182101462646037393

`∑[A161815(A052810(n+2))]`
-/

namespace A205082.P17182101462646037393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161815 (A052810 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205082.P17182101462646037393

/-! ## A205082.P13754978638376542701

`∑[A161815(2*A052810(n))]`
-/

namespace A205082.P13754978638376542701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161815 (2 * A052810 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205082.P13754978638376542701

/-!
# A205083: Parity of A070885.

The programs for A205083, there is no canonical definition to state claims against.
-/

/-! ## A205083.P13922690043766887935

`A304273(n+1)^n`
-/

namespace A205083.P13922690043766887935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1) ^ n

end

end A205083.P13922690043766887935

/-! ## A205083.P11547184433474463506

`A304273(a(a(n-1))+n)` with `a(0)=1, a(1)=1`
-/

namespace A205083.P11547184433474463506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A304273 (a (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A205083.P11547184433474463506

/-! ## A205083.P14936780031679079269

`A304273(A054977(n)+n)`
-/

namespace A205083.P14936780031679079269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (A054977 n + (n : ℤ)).toNat

end

end A205083.P14936780031679079269

/-! ## A205083.P13090113926656791590

`A304273(A000007(n)+1+n)`
-/

namespace A205083.P13090113926656791590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (A000007 n + 1 + (n : ℤ)).toNat

end

end A205083.P13090113926656791590

/-! ## A205083.P3776007681677571900

`A304273(n+1)-A000038(n)/2`
-/

namespace A205083.P3776007681677571900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304273 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A205083.P3776007681677571900

/-! ## A205083.P11691626570366399686

`ceil(A304273(n+1)/(A304233(n+1)+1))`
-/

namespace A205083.P11691626570366399686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304273 (n + 1) : ℚ) / (A304233 (n + 1) + 1 : ℚ)⌉

end

end A205083.P11691626570366399686

/-! ## A205083.P9497629239113426994

`ceil(A304273(n+1)/(A304247(n+1)+2))`
-/

namespace A205083.P9497629239113426994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304273 (n + 1) : ℚ) / (A304247 (n + 1) + 2 : ℚ)⌉

end

end A205083.P9497629239113426994

/-! ## A205083.P3475866080385658441

`A304273(A254667(n+1))`
-/

namespace A205083.P3475866080385658441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (A254667 (n + 1)).toNat

end

end A205083.P3475866080385658441

/-! ## A205083.P5999515885320306438

`A304273(A233583(n+2))`
-/

namespace A205083.P5999515885320306438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (A233583 (n + 2)).toNat

end

end A205083.P5999515885320306438

/-! ## A205083.P7580794730629129540

`A304273(n+1)-A061007(A017569(n)-1)`
-/

namespace A205083.P7580794730629129540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1) - A061007 (A017569 n - 1).toNat

end

end A205083.P7580794730629129540

/-! ## A205083.P9069306393604248959

`ceil(A304273(n+1)/(A304232(n+1)+1))`
-/

namespace A205083.P9069306393604248959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304273 (n + 1) : ℚ) / (A304232 (n + 1) + 1 : ℚ)⌉

end

end A205083.P9069306393604248959

/-! ## A205083.P18032968531824430585

`ceil(A304273(n+1)/A304232(n+3))`
-/

namespace A205083.P18032968531824430585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304273 (n + 1) : ℚ) / (A304232 (n + 3) : ℚ)⌉

end

end A205083.P18032968531824430585

/-! ## A205083.P1917138738892016680

`A000045(A081848(n+1)-A061419(n+1))`
-/

namespace A205083.P1917138738892016680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A081848 (n + 1) - A061419 (n + 1)).toNat

end

end A205083.P1917138738892016680

/-! ## A205083.P2662882587081491339

`A070885(n+1)%2`
-/

namespace A205083.P2662882587081491339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070885 (n + 1)) 2

end

end A205083.P2662882587081491339

/-! ## A205083.P3566073206016782462

`and(A070885(n+1), A158388(n))`
-/

namespace A205083.P3566073206016782462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070885 (n + 1)) (A158388 n)

end

end A205083.P3566073206016782462

/-! ## A205083.P11241247010852601458

`A305498(n+1)-A070885(n+1)`
-/

namespace A205083.P11241247010852601458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305498 (n + 1) - A070885 (n + 1)

end

end A205083.P11241247010852601458

/-! ## A205083.P4577562729848460549

`2*A061419(n+1)-A070885(n+1)`
-/

namespace A205083.P4577562729848460549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061419 (n + 1) - A070885 (n + 1)

end

end A205083.P4577562729848460549

/-! ## A205083.P2590564838927814705

`A061418(n+1)+A006999(n)-A070885(n+1)`
-/

namespace A205083.P2590564838927814705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1) + (A006999 n - A070885 (n + 1))

end

end A205083.P2590564838927814705

/-! ## A205083.P16221299638612727783

`ceil(A304273(n+1)/(A304230(n+1)+1))`
-/

namespace A205083.P16221299638612727783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304273 (n + 1) : ℚ) / (A304230 (n + 1) + 1 : ℚ)⌉

end

end A205083.P16221299638612727783

/-!
# A205084: a(n) = n 4's sandwiched between two 1's.

The programs for A205084, the canonical program `A205084.P5125241667533846105` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205084 has offset 0).

The definition of A205084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205084.P5125241667533846105

`10*a(n-1)+31` with `a(0)=11`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A205084

/-- `10*a(n-1)+31` -/
def P5125241667533846105.Spec : Prop :=
  ∀ n, (P5125241667533846105.a n : ℤ) = A205084 n

theorem P5125241667533846105.correct : P5125241667533846105.Spec := by
  intro n
  simp only [A205084]

end A205084

/-! ## A205084.P7161138276817372812

`(130*10^n-31)/9`
-/

namespace A205084.P7161138276817372812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((130 * 10 ^ n : ℤ) - 31 : ℚ) / 9

end

end A205084.P7161138276817372812

namespace A205084

/-- `(130*10^n-31)/9` -/
def P7161138276817372812.Spec : Prop :=
  ∀ n, P7161138276817372812.a n = (A205084 n : ℚ)

theorem P7161138276817372812.correct : P7161138276817372812.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A205084, Nat.add_sub_cancel, A205084.P7161138276817372812.a, A205084.P5125241667533846105.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A205084, Nat.add_sub_cancel, A205084.P7161138276817372812.a, A205084.P5125241667533846105.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A205084

/-! ## A205084.P13869827173960503468

`ogf((11+20x)/(1-11x+10x^2))`
-/

namespace A205084.P13869827173960503468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 20] [1, -11, 10] n

end

end A205084.P13869827173960503468

namespace A205084

/-- `ogf((11+20x)/(1-11x+10x^2))` -/
def P13869827173960503468.Spec : Prop :=
  ∀ n, P13869827173960503468.a n = A205084 n

end A205084

/-! ## A205084.P13776123423659559732

`∑[10*a(n-1)]-2` with `a(0)=13`
-/

namespace A205084.P13776123423659559732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A205084.P13776123423659559732

namespace A205084

/-- `∑[10*a(n-1)]-2` -/
def P13776123423659559732.Spec : Prop :=
  ∀ n, P13776123423659559732.a n = A205084 n

end A205084

/-! ## A205084.P8963729056843469750

`A094620(Δ[n²])`
-/

namespace A205084.P8963729056843469750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094620 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A205084.P8963729056843469750

namespace A205084

/-- `A094620(Δ[n²])` -/
def P8963729056843469750.Spec : Prop :=
  ∀ n, P8963729056843469750.a n = A205084 n

end A205084

/-! ## A205084.P6508776160765579374

`A094621(Δ[n²])`
-/

namespace A205084.P6508776160765579374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094621 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A205084.P6508776160765579374

namespace A205084

/-- `A094621(Δ[n²])` -/
def P6508776160765579374.Spec : Prop :=
  ∀ n, P6508776160765579374.a n = A205084 n

end A205084

/-! ## A205084.P14886584140656222579

`A094622(Δ[n²])`
-/

namespace A205084.P14886584140656222579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094622 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A205084.P14886584140656222579

namespace A205084

/-- `A094622(Δ[n²])` -/
def P14886584140656222579.Spec : Prop :=
  ∀ n, P14886584140656222579.a n = A205084 n

end A205084

/-! ## A205084.P11345035006299187165

`A099914(n+1)-3`
-/

namespace A205084.P11345035006299187165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099914 (n + 1) - 3

end

end A205084.P11345035006299187165

namespace A205084

/-- `A099914(n+1)-3` -/
def P11345035006299187165.Spec : Prop :=
  ∀ n, P11345035006299187165.a n = A205084 n

end A205084

/-! ## A205084.P15299201805398482500

`A094621(2*(n+1))-2`
-/

namespace A205084.P15299201805398482500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094621 (2 * (n + 1)) - 2

end

end A205084.P15299201805398482500

namespace A205084

/-- `A094621(2*(n+1))-2` -/
def P15299201805398482500.Spec : Prop :=
  ∀ n, P15299201805398482500.a n = A205084 n

end A205084

/-! ## A205084.P3268926433373518773

`A094627(2*(n+1))-3`
-/

namespace A205084.P3268926433373518773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094627 (2 * (n + 1)) - 3

end

end A205084.P3268926433373518773

namespace A205084

/-- `A094627(2*(n+1))-3` -/
def P3268926433373518773.Spec : Prop :=
  ∀ n, P3268926433373518773.a n = A205084 n

end A205084

/-!
# A205085: a(n) = n 5's sandwiched between two 1's.

The programs for A205085, the canonical program `A205085.P16090276885922125530` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205085 has offset 0).

The definition of A205085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205085.P16090276885922125530

`10*a(n-1)+41` with `a(0)=11`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A205085

/-- `10*a(n-1)+41` -/
def P16090276885922125530.Spec : Prop :=
  ∀ n, (P16090276885922125530.a n : ℤ) = A205085 n

theorem P16090276885922125530.correct : P16090276885922125530.Spec := by
  intro n
  simp only [A205085]

end A205085

/-! ## A205085.P3605877796860117288

`(140*10^n-41)/9`
-/

namespace A205085.P3605877796860117288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((140 * 10 ^ n : ℤ) - 41 : ℚ) / 9

end

end A205085.P3605877796860117288

namespace A205085

/-- `(140*10^n-41)/9` -/
def P3605877796860117288.Spec : Prop :=
  ∀ n, P3605877796860117288.a n = (A205085 n : ℚ)

theorem P3605877796860117288.correct : P3605877796860117288.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A205085, Nat.add_sub_cancel, A205085.P3605877796860117288.a, A205085.P16090276885922125530.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A205085, Nat.add_sub_cancel, A205085.P3605877796860117288.a, A205085.P16090276885922125530.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A205085

/-! ## A205085.P17725689690876914856

`∑[10*a(n-1)]-3` with `a(0)=14`
-/

namespace A205085.P17725689690876914856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A205085.P17725689690876914856

namespace A205085

/-- `∑[10*a(n-1)]-3` -/
def P17725689690876914856.Spec : Prop :=
  ∀ n, P17725689690876914856.a n = A205085 n

end A205085

/-! ## A205085.P5557284901177338054

`A099915(n+1)-4`
-/

namespace A205085.P5557284901177338054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099915 (n + 1) - 4

end

end A205085.P5557284901177338054

namespace A205085

/-- `A099915(n+1)-4` -/
def P5557284901177338054.Spec : Prop :=
  ∀ n, P5557284901177338054.a n = A205085 n

end A205085

/-! ## A205085.P6090885336810425788

`or(1, 10*A099915(n))`
-/

namespace A205085.P6090885336810425788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (10 * A099915 n)

end

end A205085.P6090885336810425788

namespace A205085

/-- `or(1, 10*A099915(n))` -/
def P6090885336810425788.Spec : Prop :=
  ∀ n, P6090885336810425788.a n = A205085 n

end A205085

/-! ## A205085.P2443263576319995473

`2*A173807(n+1)+5`
-/

namespace A205085.P2443263576319995473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173807 (n + 1) + 5

end

end A205085.P2443263576319995473

namespace A205085

/-- `2*A173807(n+1)+5` -/
def P2443263576319995473.Spec : Prop :=
  ∀ n, P2443263576319995473.a n = A205085 n

end A205085

/-! ## A205085.P2813310679665668682

`2*∑[A196662(n+1)]-3`
-/

namespace A205085.P2813310679665668682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 3

end

end A205085.P2813310679665668682

namespace A205085

/-- `2*∑[A196662(n+1)]-3` -/
def P2813310679665668682.Spec : Prop :=
  ∀ n, P2813310679665668682.a n = A205085 n

end A205085

/-! ## A205085.P278407360246911170

`or(1, A173808(n+1)+A173806(n+1))`
-/

namespace A205085.P278407360246911170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A173808 (n + 1) + A173806 (n + 1))

end

end A205085.P278407360246911170

namespace A205085

/-- `or(1, A173808(n+1)+A173806(n+1))` -/
def P278407360246911170.Spec : Prop :=
  ∀ n, P278407360246911170.a n = A205085 n

end A205085

/-! ## A205085.P18316603311595595686

`xor(3, A173812(n+1)+A173805(n+1))`
-/

namespace A205085.P18316603311595595686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A173812 (n + 1) + A173805 (n + 1))

end

end A205085.P18316603311595595686

namespace A205085

/-- `xor(3, A173812(n+1)+A173805(n+1))` -/
def P18316603311595595686.Spec : Prop :=
  ∀ n, P18316603311595595686.a n = A205085 n

end A205085

/-! ## A205085.P11479397769611620750

`A173804(n+1)+A173804(n+1)+A173776(n+1)`
-/

namespace A205085.P11479397769611620750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173804 (n + 1) + (A173804 (n + 1) + A173776 (n + 1))

end

end A205085.P11479397769611620750

namespace A205085

/-- `A173804(n+1)+A173804(n+1)+A173776(n+1)` -/
def P11479397769611620750.Spec : Prop :=
  ∀ n, P11479397769611620750.a n = A205085 n

end A205085

/-!
# A205086: a(n) = n 6's sandwiched between two 1's.

The programs for A205086, the canonical program `A205086.P16433775854259049731` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205086 has offset 0).

The definition of A205086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205086.P16433775854259049731

`10*a(n-1)+51` with `a(0)=11`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A205086

/-- `10*a(n-1)+51` -/
def P16433775854259049731.Spec : Prop :=
  ∀ n, (P16433775854259049731.a n : ℤ) = A205086 n

theorem P16433775854259049731.correct : P16433775854259049731.Spec := by
  intro n
  simp only [A205086]

end A205086

/-! ## A205086.P1588049558396056914

`3*(50*10^n-17)/9`
-/

namespace A205086.P1588049558396056914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((50 * 10 ^ n : ℤ) - 17) : ℚ) / 9

end

end A205086.P1588049558396056914

namespace A205086

/-- `3*(50*10^n-17)/9` -/
def P1588049558396056914.Spec : Prop :=
  ∀ n, P1588049558396056914.a n = (A205086 n : ℚ)

theorem P1588049558396056914.correct : P1588049558396056914.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A205086, Nat.add_sub_cancel, A205086.P1588049558396056914.a, A205086.P16433775854259049731.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A205086, Nat.add_sub_cancel, A205086.P1588049558396056914.a, A205086.P16433775854259049731.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A205086

/-! ## A205086.P3053116463394389458

`∑[10*a(n-1)]-4` with `a(0)=15`
-/

namespace A205086.P3053116463394389458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A205086.P3053116463394389458

namespace A205086

/-- `∑[10*a(n-1)]-4` -/
def P3053116463394389458.Spec : Prop :=
  ∀ n, P3053116463394389458.a n = A205086 n

end A205086

/-! ## A205086.P16680686222143873966

`A246057(n+1)-5`
-/

namespace A205086.P16680686222143873966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246057 (n + 1) - 5

end

end A205086.P16680686222143873966

namespace A205086

/-- `A246057(n+1)-5` -/
def P16680686222143873966.Spec : Prop :=
  ∀ n, P16680686222143873966.a n = A205086 n

end A205086

/-! ## A205086.P10381673226928508755

`A126109(n+1)-6`
-/

namespace A205086.P10381673226928508755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126109 (n + 1) - 6

end

end A205086.P10381673226928508755

namespace A205086

/-- `A126109(n+1)-6` -/
def P10381673226928508755.Spec : Prop :=
  ∀ n, P10381673226928508755.a n = A205086 n

end A205086

/-! ## A205086.P16043367570592092028

`floor(A177079(n+1)/3)`
-/

namespace A205086.P16043367570592092028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A177079 (n + 1) : ℚ) / 3⌋

end

end A205086.P16043367570592092028

namespace A205086

/-- `floor(A177079(n+1)/3)` -/
def P16043367570592092028.Spec : Prop :=
  ∀ n, P16043367570592092028.a n = A205086 n

end A205086

/-! ## A205086.P11679904123886452723

`3*A173802(n+1)+2`
-/

namespace A205086.P11679904123886452723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A173802 (n + 1) + 2

end

end A205086.P11679904123886452723

namespace A205086

/-- `3*A173802(n+1)+2` -/
def P11679904123886452723.Spec : Prop :=
  ∀ n, P11679904123886452723.a n = A205086 n

end A205086

/-! ## A205086.P13715754705061035966

`A086944(n+1)/3-3`
-/

namespace A205086.P13715754705061035966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086944 (n + 1) : ℚ) / 3 - 3

end

end A205086.P13715754705061035966

namespace A205086

/-- `A086944(n+1)/3-3` -/
def P13715754705061035966.Spec : Prop :=
  ∀ n, P13715754705061035966.a n = (A205086 n : ℚ)

theorem P13715754705061035966.correct : P13715754705061035966.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A205086, Nat.add_sub_cancel, A205086.P13715754705061035966.a, A205086.P16433775854259049731.a, A086944, A086944.P12679133145832439248.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A205086, Nat.add_sub_cancel, A205086.P13715754705061035966.a, A205086.P16433775854259049731.a, A086944, A086944.P12679133145832439248.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A205086

/-! ## A205086.P2900961167970249679

`A002279(n+1)+A173804(n+1)+A002279(n+1)`
-/

namespace A205086.P2900961167970249679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 (n + 1) + (A173804 (n + 1) + A002279 (n + 1))

end

end A205086.P2900961167970249679

namespace A205086

/-- `A002279(n+1)+A173804(n+1)+A002279(n+1)` -/
def P2900961167970249679.Spec : Prop :=
  ∀ n, P2900961167970249679.a n = A205086 n

end A205086

/-!
# A205087: a(n) = n 7's sandwiched between two 1's.

The programs for A205087, the canonical program `A205087.P7361980200027743896` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205087 has offset 0).

The definition of A205087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205087.P7361980200027743896

`10*a(n-1)+61` with `a(0)=11`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A205087

/-- `10*a(n-1)+61` -/
def P7361980200027743896.Spec : Prop :=
  ∀ n, (P7361980200027743896.a n : ℤ) = A205087 n

theorem P7361980200027743896.correct : P7361980200027743896.Spec := by
  intro n
  simp only [A205087]

end A205087

/-! ## A205087.P16786150613924261743

`(160*10^n-61)/9`
-/

namespace A205087.P16786150613924261743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((160 * 10 ^ n : ℤ) - 61 : ℚ) / 9

end

end A205087.P16786150613924261743

namespace A205087

/-- `(160*10^n-61)/9` -/
def P16786150613924261743.Spec : Prop :=
  ∀ n, P16786150613924261743.a n = (A205087 n : ℚ)

theorem P16786150613924261743.correct : P16786150613924261743.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A205087, Nat.add_sub_cancel, A205087.P16786150613924261743.a, A205087.P7361980200027743896.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A205087, Nat.add_sub_cancel, A205087.P16786150613924261743.a, A205087.P7361980200027743896.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A205087

/-! ## A205087.P14587039482278881422

`∑[10*a(n-1)]-5` with `a(0)=16`
-/

namespace A205087.P14587039482278881422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 5

end

end A205087.P14587039482278881422

namespace A205087

/-- `∑[10*a(n-1)]-5` -/
def P14587039482278881422.Spec : Prop :=
  ∀ n, P14587039482278881422.a n = A205087 n

end A205087

/-! ## A205087.P15750706005712374100

`A246058(n+1)-6`
-/

namespace A205087.P15750706005712374100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246058 (n + 1) - 6

end

end A205087.P15750706005712374100

namespace A205087

/-- `A246058(n+1)-6` -/
def P15750706005712374100.Spec : Prop :=
  ∀ n, P15750706005712374100.a n = A205087 n

end A205087

/-! ## A205087.P320994121454688564

`10*A246058(n)+1`
-/

namespace A205087.P320994121454688564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A246058 n + 1

end

end A205087.P320994121454688564

namespace A205087

/-- `10*A246058(n)+1` -/
def P320994121454688564.Spec : Prop :=
  ∀ n, P320994121454688564.a n = A205087 n

end A205087

/-! ## A205087.P7391798418191102381

`4*A173770(n+1)-1`
-/

namespace A205087.P7391798418191102381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A173770 (n + 1) - 1

end

end A205087.P7391798418191102381

namespace A205087

/-- `4*A173770(n+1)-1` -/
def P7391798418191102381.Spec : Prop :=
  ∀ n, P7391798418191102381.a n = A205087 n

end A205087

/-! ## A205087.P16841670393707599897

`2*A173812(n+1)-3`
-/

namespace A205087.P16841670393707599897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173812 (n + 1) - 3

end

end A205087.P16841670393707599897

namespace A205087

/-- `2*A173812(n+1)-3` -/
def P16841670393707599897.Spec : Prop :=
  ∀ n, P16841670393707599897.a n = A205087 n

end A205087

/-! ## A205087.P444609934907440665

`2*A173811(n+1)+5`
-/

namespace A205087.P444609934907440665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173811 (n + 1) + 5

end

end A205087.P444609934907440665

namespace A205087

/-- `2*A173811(n+1)+5` -/
def P444609934907440665.Spec : Prop :=
  ∀ n, P444609934907440665.a n = A205087 n

end A205087

/-! ## A205087.P15184426123652109259

`A228158(2*(n+1))-5`
-/

namespace A205087.P15184426123652109259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228158 (2 * (n + 1)) - 5

end

end A205087.P15184426123652109259

namespace A205087

/-- `A228158(2*(n+1))-5` -/
def P15184426123652109259.Spec : Prop :=
  ∀ n, P15184426123652109259.a n = A205087 n

end A205087

/-! ## A205087.P1454755912140891495

`16*A000042(n+1)-5`
-/

namespace A205087.P1454755912140891495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A000042 (n + 1) - 5

end

end A205087.P1454755912140891495

namespace A205087

/-- `16*A000042(n+1)-5` -/
def P1454755912140891495.Spec : Prop :=
  ∀ n, P1454755912140891495.a n = A205087 n

end A205087

/-!
# A205088: a(n) = n 8's sandwiched between two 1's.

The programs for A205088, the canonical program `A205088.P16678014646405826387` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205088 has offset 0).

The definition of A205088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205088.P16678014646405826387

`10*a(n-1)+71` with `a(0)=11`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A205088

/-- `10*a(n-1)+71` -/
def P16678014646405826387.Spec : Prop :=
  ∀ n, (P16678014646405826387.a n : ℤ) = A205088 n

theorem P16678014646405826387.correct : P16678014646405826387.Spec := by
  intro n
  simp only [A205088]

end A205088

/-! ## A205088.P7630358601268891970

`(170*10^n-71)/9`
-/

namespace A205088.P7630358601268891970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((170 * 10 ^ n : ℤ) - 71 : ℚ) / 9

end

end A205088.P7630358601268891970

namespace A205088

/-- `(170*10^n-71)/9` -/
def P7630358601268891970.Spec : Prop :=
  ∀ n, P7630358601268891970.a n = (A205088 n : ℚ)

theorem P7630358601268891970.correct : P7630358601268891970.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A205088, Nat.add_sub_cancel, A205088.P7630358601268891970.a, A205088.P16678014646405826387.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A205088, Nat.add_sub_cancel, A205088.P7630358601268891970.a, A205088.P16678014646405826387.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A205088

/-! ## A205088.P14478303054041296288

`∑[10*a(n-1)]-6` with `a(0)=17`
-/

namespace A205088.P14478303054041296288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 6

end

end A205088.P14478303054041296288

namespace A205088

/-- `∑[10*a(n-1)]-6` -/
def P14478303054041296288.Spec : Prop :=
  ∀ n, P14478303054041296288.a n = A205088 n

end A205088

/-! ## A205088.P3804944420682320806

`A246059(n+1)-7`
-/

namespace A205088.P3804944420682320806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246059 (n + 1) - 7

end

end A205088.P3804944420682320806

namespace A205088

/-- `A246059(n+1)-7` -/
def P3804944420682320806.Spec : Prop :=
  ∀ n, P3804944420682320806.a n = A205088 n

end A205088

/-! ## A205088.P8451286263908783791

`10*A246059(n)+1`
-/

namespace A205088.P8451286263908783791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A246059 n + 1

end

end A205088.P8451286263908783791

namespace A205088

/-- `10*A246059(n)+1` -/
def P8451286263908783791.Spec : Prop :=
  ∀ n, P8451286263908783791.a n = A205088 n

end A205088

/-! ## A205088.P7540678303179688636

`17*A000042(n+1)-6`
-/

namespace A205088.P7540678303179688636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A000042 (n + 1) - 6

end

end A205088.P7540678303179688636

namespace A205088

/-- `17*A000042(n+1)-6` -/
def P7540678303179688636.Spec : Prop :=
  ∀ n, P7540678303179688636.a n = A205088 n

end A205088

/-! ## A205088.P15295364972274117330

`A173810(n+1)+10^(n+1)`
-/

namespace A205088.P15295364972274117330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173810 (n + 1) + (10 ^ (n + 1) : ℤ)

end

end A205088.P15295364972274117330

namespace A205088

/-- `A173810(n+1)+10^(n+1)` -/
def P15295364972274117330.Spec : Prop :=
  ∀ n, P15295364972274117330.a n = A205088 n

end A205088

/-! ## A205088.P13975951071983884866

`2*A205086(n)-A205084(n)`
-/

namespace A205088.P13975951071983884866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205086 n - A205084 n

end

end A205088.P13975951071983884866

namespace A205088

/-- `2*A205086(n)-A205084(n)` -/
def P13975951071983884866.Spec : Prop :=
  ∀ n, P13975951071983884866.a n = A205088 n

end A205088

/-! ## A205088.P15906116742916023852

`A086948(n+1)-∑[A011557(n)]`
-/

namespace A205088.P15906116742916023852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086948 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205088.P15906116742916023852

namespace A205088

/-- `A086948(n+1)-∑[A011557(n)]` -/
def P15906116742916023852.Spec : Prop :=
  ∀ n, P15906116742916023852.a n = A205088 n

end A205088

/-! ## A205088.P1492065196363370957

`A173811(n+1)+A173833(n+1)+1`
-/

namespace A205088.P1492065196363370957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173811 (n + 1) + (A173833 (n + 1) + 1)

end

end A205088.P1492065196363370957

namespace A205088

/-- `A173811(n+1)+A173833(n+1)+1` -/
def P1492065196363370957.Spec : Prop :=
  ∀ n, P1492065196363370957.a n = A205088 n

end A205088

/-!
# A205089: Number of (n+1)X(n+1) 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205089, there is no canonical definition to state claims against.
-/

/-! ## A205089.P17197547836683315151

`A205097((n+1)²+n²)`
-/

namespace A205089.P17197547836683315151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 ((n + 1) ^ 2 + n ^ 2)

end

end A205089.P17197547836683315151

/-!
# A205090: Number of (n+1)X2 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205090, there is no canonical definition to state claims against.
-/

/-! ## A205090.P3098608046603338604

`A205097(∑[n]+1)`
-/

namespace A205090.P3098608046603338604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205090.P3098608046603338604

/-! ## A205090.P15595470539552088007

`record[A103451(n)*A205097(n+1)]`
-/

namespace A205090.P15595470539552088007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A205097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205090.P15595470539552088007

/-! ## A205090.P7217612086333053210

`record[root(A205097(n+1), A074909(n))]`
-/

namespace A205090.P7217612086333053210
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205097 (n + 1) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205090.P7217612086333053210

/-! ## A205090.P12172801116112327851

`record[root(A205097(n+1), A308500(n))]`
-/

namespace A205090.P12172801116112327851
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205097 (n + 1) : ℝ) ^ (1 / (A308500 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205090.P12172801116112327851

/-! ## A205090.P9752963531163876963

`record[root(A205097(n+1), A308502(n+1))]`
-/

namespace A205090.P9752963531163876963
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205097 (n + 1) : ℝ) ^ (1 / (A308502 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205090.P9752963531163876963

/-!
# A205091: Number of (n+1)X3 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205091, there is no canonical definition to state claims against.
-/

/-! ## A205091.P8270777957825970809

`A205097(∑[n+1]+2)`
-/

namespace A205091.P8270777957825970809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205091.P8270777957825970809

/-! ## A205091.P3780658049314727607

`record[root(A205097(n+2), A074909(n))]`
-/

namespace A205091.P3780658049314727607
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205097 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205091.P3780658049314727607

/-! ## A205091.P12568016888314284645

`record[root(A205097(n+2), A308500(n))]`
-/

namespace A205091.P12568016888314284645
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205097 (n + 2) : ℝ) ^ (1 / (A308500 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205091.P12568016888314284645

/-! ## A205091.P3306126641328971084

`record[root(A205097(n+2), A308502(n+1))]`
-/

namespace A205091.P3306126641328971084
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205097 (n + 2) : ℝ) ^ (1 / (A308502 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205091.P3306126641328971084

/-! ## A205091.P241186398394180699

`record[root(A205097(n+2), A308504(n+1))]`
-/

namespace A205091.P241186398394180699
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205097 (n + 2) : ℝ) ^ (1 / (A308504 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205091.P241186398394180699

/-!
# A205092: Number of (n+1) X 4 0..3 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205092, there is no canonical definition to state claims against.
-/

/-! ## A205092.P16581066480685442194

`A205097(∑[n+2]+4)`
-/

namespace A205092.P16581066480685442194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205092.P16581066480685442194

/-! ## A205092.P7601231758005515765

`A205097(A167614(n+1))+A185245(n)`
-/

namespace A205092.P7601231758005515765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A167614 (n + 1)).toNat + A185245 n

end

end A205092.P7601231758005515765

/-! ## A205092.P6743712629444935656

`A205097(A167614(n+1))+A185284(n)`
-/

namespace A205092.P6743712629444935656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A167614 (n + 1)).toNat + A185284 n

end

end A205092.P6743712629444935656

/-! ## A205092.P10470729740869215671

`A205097(A167614(n+1))+A000038(n+1)`
-/

namespace A205092.P10470729740869215671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A205092.P10470729740869215671

/-!
# A205093: Number of (n+1)X5 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205093, there is no canonical definition to state claims against.
-/

/-! ## A205093.P11920130234962120279

`A205097(A374004(n+1))`
-/

namespace A205093.P11920130234962120279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A374004 (n + 1)).toNat

end

end A205093.P11920130234962120279

/-! ## A205093.P1369448225983775589

`A205097(A141214(n)+7)`
-/

namespace A205093.P1369448225983775589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A141214 n + 7).toNat

end

end A205093.P1369448225983775589

/-! ## A205093.P18028270105582346479

`A205097(A052905(n)+9)`
-/

namespace A205093.P18028270105582346479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A052905 n + 9).toNat

end

end A205093.P18028270105582346479

/-! ## A205093.P7090071954854587917

`A205097(A055999(n)+10)`
-/

namespace A205093.P7090071954854587917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A055999 n + 10).toNat

end

end A205093.P7090071954854587917

/-! ## A205093.P1084273488179214375

`A205097(A167614(n+2)+1)`
-/

namespace A205093.P1084273488179214375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A167614 (n + 2) + 1).toNat

end

end A205093.P1084273488179214375

/-!
# A205094: Number of (n+1)X6 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205094, there is no canonical definition to state claims against.
-/

/-! ## A205094.P7250192792478398201

`A205097(A374005(n+1))`
-/

namespace A205094.P7250192792478398201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A374005 (n + 1)).toNat

end

end A205094.P7250192792478398201

/-! ## A205094.P16559567596615674557

`A205097(A155212(n)+13)`
-/

namespace A205094.P16559567596615674557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A155212 n + 13).toNat

end

end A205094.P16559567596615674557

/-! ## A205094.P9487335017097736980

`A205097(A056000(n)+15)`
-/

namespace A205094.P9487335017097736980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A056000 n + 15).toNat

end

end A205094.P9487335017097736980

/-! ## A205094.P12567134581192466710

`A205097(eq[7, A066657(n)])`
-/

namespace A205094.P12567134581192466710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205094.P12567134581192466710

/-! ## A205094.P11330041942171631541

`A205097(A052905(n+1)+10)`
-/

namespace A205094.P11330041942171631541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A052905 (n + 1) + 10).toNat

end

end A205094.P11330041942171631541

/-!
# A205095: Number of (n+1)X7 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205095, there is no canonical definition to state claims against.
-/

/-! ## A205095.P5236239240436401291

`A205097(A374007(n+1))`
-/

namespace A205095.P5236239240436401291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A374007 (n + 1)).toNat

end

end A205095.P5236239240436401291

/-! ## A205095.P12026475370924831476

`A205097(A000124(n+5)+5)`
-/

namespace A205095.P12026475370924831476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A000124 (n + 5) + 5).toNat

end

end A205095.P12026475370924831476

/-! ## A205095.P7762914461304626798

`A205097(A155212(n+1)+14)`
-/

namespace A205095.P7762914461304626798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A155212 (n + 1) + 14).toNat

end

end A205095.P7762914461304626798

/-! ## A205095.P5099370021686942969

`A205097(A052905(n+3))`
-/

namespace A205095.P5099370021686942969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A052905 (n + 3)).toNat

end

end A205095.P5099370021686942969

/-! ## A205095.P18132652669806626002

`A205097(eq[5, A193592(n)])`
-/

namespace A205095.P18132652669806626002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205095.P18132652669806626002

/-!
# A205096: 

The programs for A205096, there is no canonical definition to state claims against.
-/

/-! ## A205096.P8912537056154407795

`A205097(A167487(n+5))`
-/

namespace A205096.P8912537056154407795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A167487 (n + 5)).toNat

end

end A205096.P8912537056154407795

/-!
# A205098: Sum of proper divisors (A001065) of abundant numbers (A005101).

The programs for A205098, the canonical program `A205098.P10471539786565330894` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205098 has offset 1).

The definition of A205098 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A204822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A205098.P10471539786565330894

`A204822(n+1)-A005101(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A205098

/-- `A204822(n+1)-A005101(n+1)` -/
def P10471539786565330894.Spec : Prop :=
  ∀ n, P10471539786565330894.a n = A205098 (n + 1)

theorem P10471539786565330894.correct : P10471539786565330894.Spec := by
  intro n
  simp only [A205098, Nat.add_sub_cancel]

end A205098

/-! ## A205098.P1026427709232284260

`A001065(A005101(n+1))`
-/

namespace A205098.P1026427709232284260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A005101 (n + 1)).toNat

end

end A205098.P1026427709232284260

namespace A205098

/-- `A001065(A005101(n+1))` -/
def P1026427709232284260.Spec : Prop :=
  ∀ n, P1026427709232284260.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P16154407115458376454

`A033881(n+1)+A005101(n+1)`
-/

namespace A205098.P16154407115458376454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033881 (n + 1) + A005101 (n + 1)

end

end A205098.P16154407115458376454

namespace A205098

/-- `A033881(n+1)+A005101(n+1)` -/
def P16154407115458376454.Spec : Prop :=
  ∀ n, P16154407115458376454.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P5655480918924989873

`∑{d}[A005101(n+1), #-A000010(#)]`
-/

namespace A205098.P5655480918924989873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A000010 d)

end

end A205098.P5655480918924989873

namespace A205098

/-- `∑{d}[A005101(n+1), #-A000010(#)]` -/
def P5655480918924989873.Spec : Prop :=
  ∀ n, P5655480918924989873.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P18093851462066971927

`(A204822(n+1)+A033881(n+1))/2`
-/

namespace A205098.P18093851462066971927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204822 (n + 1) + A033881 (n + 1) : ℚ) / 2

end

end A205098.P18093851462066971927

namespace A205098

/-- `(A204822(n+1)+A033881(n+1))/2` -/
def P18093851462066971927.Spec : Prop :=
  ∀ n, P18093851462066971927.a n = (A205098 (n + 1) : ℚ)

end A205098

/-! ## A205098.P17910551346916437427

`A033881(n+1)+A224907(n+1)/2`
-/

namespace A205098.P17910551346916437427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033881 (n + 1) : ℚ) + (A224907 (n + 1) : ℚ) / 2

end

end A205098.P17910551346916437427

namespace A205098

/-- `A033881(n+1)+A224907(n+1)/2` -/
def P17910551346916437427.Spec : Prop :=
  ∀ n, P17910551346916437427.a n = (A205098 (n + 1) : ℚ)

end A205098

/-! ## A205098.P2030234859203588442

`A204822(n+1)-A224907(n+1)/2`
-/

namespace A205098.P2030234859203588442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204822 (n + 1) : ℚ) - (A224907 (n + 1) : ℚ) / 2

end

end A205098.P2030234859203588442

namespace A205098

/-- `A204822(n+1)-A224907(n+1)/2` -/
def P2030234859203588442.Spec : Prop :=
  ∀ n, P2030234859203588442.a n = (A205098 (n + 1) : ℚ)

theorem P2030234859203588442.correct : P2030234859203588442.Spec := by
  intro n
  simp only [A205098, Nat.add_sub_cancel, A205098.P2030234859203588442.a, A205098.P10471539786565330894.a, A005101, A005101.P6705997063366613997.f1, A005101.P6705997063366613997.f2, A005101.P6705997063366613997.a, A204822, A204822.P986191513022326355.a, A224907, A224907.P17184024121669876912.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A205098

/-! ## A205098.P4430104473970702180

`A000203(A224907(n+1)/2)-A005101(n+1)`
-/

namespace A205098.P4430104473970702180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A224907 (n + 1) : ℚ) / 2)).toNat - A005101 (n + 1)

end

end A205098.P4430104473970702180

namespace A205098

/-- `A000203(A224907(n+1)/2)-A005101(n+1)` -/
def P4430104473970702180.Spec : Prop :=
  ∀ n, P4430104473970702180.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P8003055801769562255

`A204822(n+1)-A224907(n+1)+eq[1, A082551(n+1)]+1`
-/

namespace A205098.P8003055801769562255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - A224907 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A205098.P8003055801769562255

namespace A205098

/-- `A204822(n+1)-A224907(n+1)+eq[1, A082551(n+1)]+1` -/
def P8003055801769562255.Spec : Prop :=
  ∀ n, P8003055801769562255.a n = A205098 (n + 1)

theorem P8003055801769562255.correct : P8003055801769562255.Spec := by
  intro n
  simp only [A205098, Nat.add_sub_cancel, A205098.P8003055801769562255.f1, A205098.P8003055801769562255.f2, A205098.P8003055801769562255.a, A205098.P10471539786565330894.a, A005101, A005101.P6705997063366613997.f1, A005101.P6705997063366613997.f2, A005101.P6705997063366613997.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, A204822, A204822.P986191513022326355.a, A224907, A224907.P17184024121669876912.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A205098

/-! ## A205098.P9355204435480270196

`A000203(lt[2*(n+1), A000203(n+1)]+1)-A005101(n+1)`
-/

namespace A205098.P9355204435480270196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - A005101 (n + 1)

end

end A205098.P9355204435480270196

namespace A205098

/-- `A000203(lt[2*(n+1), A000203(n+1)]+1)-A005101(n+1)` -/
def P9355204435480270196.Spec : Prop :=
  ∀ n, P9355204435480270196.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P14288288555070449180

`A000203(lt[2*(n+1), A000203(n+1)]+1)-A224907(n+1)/2`
-/

namespace A205098.P14288288555070449180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℚ) - (A224907 (n + 1) : ℚ) / 2

end

end A205098.P14288288555070449180

namespace A205098

/-- `A000203(lt[2*(n+1), A000203(n+1)]+1)-A224907(n+1)/2` -/
def P14288288555070449180.Spec : Prop :=
  ∀ n, P14288288555070449180.a n = (A205098 (n + 1) : ℚ)

end A205098

/-! ## A205098.P14163188593002802483

`A204822(n+1)-A224907(n+1)+lt[2*(n+1), A000203(n+1)]+1`
-/

namespace A205098.P14163188593002802483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - A224907 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A205098.P14163188593002802483

namespace A205098

/-- `A204822(n+1)-A224907(n+1)+lt[2*(n+1), A000203(n+1)]+1` -/
def P14163188593002802483.Spec : Prop :=
  ∀ n, P14163188593002802483.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P7992077560465394396

`A000203(lt[2, A000203(n+2)/(n+2)]+2)-(lt[2, A000203(n+2)/(n+2)]+2)`
-/

namespace A205098.P7992077560465394396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2) : ℚ) / (n + 2 : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 2) - (SequenceMachineLib.nth (fun j => (f3 j : ℚ) < f4 j) n + 2 : ℤ)

end

end A205098.P7992077560465394396

namespace A205098

/-- `A000203(lt[2, A000203(n+2)/(n+2)]+2)-(lt[2, A000203(n+2)/(n+2)]+2)` -/
def P7992077560465394396.Spec : Prop :=
  ∀ n, P7992077560465394396.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P5923533738365077159

`A204822(n+1)-A224907(n+1)+lt[n, A326146(n+1)]+1`
-/

namespace A205098.P5923533738365077159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - A224907 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A205098.P5923533738365077159

namespace A205098

/-- `A204822(n+1)-A224907(n+1)+lt[n, A326146(n+1)]+1` -/
def P5923533738365077159.Spec : Prop :=
  ∀ n, P5923533738365077159.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P13836457198102922312

`A204822(n+1)-A224907(n+1)+eq[1, A294937(n+1)]+1`
-/

namespace A205098.P13836457198102922312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - A224907 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A205098.P13836457198102922312

namespace A205098

/-- `A204822(n+1)-A224907(n+1)+eq[1, A294937(n+1)]+1` -/
def P13836457198102922312.Spec : Prop :=
  ∀ n, P13836457198102922312.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P1204040284442841796

`A001065(A224907(n+1)/2)`
-/

namespace A205098.P1204040284442841796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((A224907 (n + 1) : ℚ) / 2)).toNat

end

end A205098.P1204040284442841796

namespace A205098

/-- `A001065(A224907(n+1)/2)` -/
def P1204040284442841796.Spec : Prop :=
  ∀ n, P1204040284442841796.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P11537431021272923770

`A001065(lt[2*(n+1), A000203(n+1)]+1)`
-/

namespace A205098.P11537431021272923770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A205098.P11537431021272923770

namespace A205098

/-- `A001065(lt[2*(n+1), A000203(n+1)]+1)` -/
def P11537431021272923770.Spec : Prop :=
  ∀ n, P11537431021272923770.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P9138041079955365729

`A173455(lt[2*(n+1), A000203(n+1)]+1)`
-/

namespace A205098.P9138041079955365729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A205098.P9138041079955365729

namespace A205098

/-- `A173455(lt[2*(n+1), A000203(n+1)]+1)` -/
def P9138041079955365729.Spec : Prop :=
  ∀ n, P9138041079955365729.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P2778290601386318566

`A001065(lt[2, A000203(n+1)/(n+1)]+1)`
-/

namespace A205098.P2778290601386318566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1)

end

end A205098.P2778290601386318566

namespace A205098

/-- `A001065(lt[2, A000203(n+1)/(n+1)]+1)` -/
def P2778290601386318566.Spec : Prop :=
  ∀ n, P2778290601386318566.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P9824954865282813330

`A173455(lt[2, A000203(n+2)/(n+2)]+2)`
-/

namespace A205098.P9824954865282813330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 2)

end

end A205098.P9824954865282813330

namespace A205098

/-- `A173455(lt[2, A000203(n+2)/(n+2)]+2)` -/
def P9824954865282813330.Spec : Prop :=
  ∀ n, P9824954865282813330.a n = A205098 (n + 1)

end A205098

/-!
# A205099: Sum of proper divisors (A001065) of deficient numbers (A005100).

The programs for A205099, the canonical program `A205099.P16915794968075742101` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205099 has offset 1).

The definition of A205099 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, A204823, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A205099.P16915794968075742101

`A204823(n+1)-A005100(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A205099

/-- `A204823(n+1)-A005100(n+1)` -/
def P16915794968075742101.Spec : Prop :=
  ∀ n, P16915794968075742101.a n = A205099 (n + 1)

theorem P16915794968075742101.correct : P16915794968075742101.Spec := by
  intro n
  simp only [A205099, Nat.add_sub_cancel]

end A205099

/-! ## A205099.P157779477867293464

`A001065(A005100(n+1))`
-/

namespace A205099.P157779477867293464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A005100 (n + 1)).toNat

end

end A205099.P157779477867293464

namespace A205099

/-- `A001065(A005100(n+1))` -/
def P157779477867293464.Spec : Prop :=
  ∀ n, P157779477867293464.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P5253648653513575949

`A005100(n+1)-A033884(n+1)`
-/

namespace A205099.P5253648653513575949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1) - A033884 (n + 1)

end

end A205099.P5253648653513575949

namespace A205099

/-- `A005100(n+1)-A033884(n+1)` -/
def P5253648653513575949.Spec : Prop :=
  ∀ n, P5253648653513575949.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P10822491170763850188

`A294886(A005100(2*n+1-n))`
-/

namespace A205099.P10822491170763850188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (A005100 (2 * n + 1 - n)).toNat

end

end A205099.P10822491170763850188

namespace A205099

/-- `A294886(A005100(2*n+1-n))` -/
def P10822491170763850188.Spec : Prop :=
  ∀ n, P10822491170763850188.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P13483170492060911550

`∑{d}[A005100(n+1), #-A000010(#)]`
-/

namespace A205099.P13483170492060911550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A000010 d)

end

end A205099.P13483170492060911550

namespace A205099

/-- `∑{d}[A005100(n+1), #-A000010(#)]` -/
def P13483170492060911550.Spec : Prop :=
  ∀ n, P13483170492060911550.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P8794978624879236317

`(A204823(n+1)-A033884(n+1))/2`
-/

namespace A205099.P8794978624879236317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204823 (n + 1) - A033884 (n + 1) : ℚ) / 2

end

end A205099.P8794978624879236317

namespace A205099

/-- `(A204823(n+1)-A033884(n+1))/2` -/
def P8794978624879236317.Spec : Prop :=
  ∀ n, P8794978624879236317.a n = (A205099 (n + 1) : ℚ)

end A205099

/-! ## A205099.P8376622574750891587

`A225241(n+1)/2-A033884(n+1)`
-/

namespace A205099.P8376622574750891587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225241 (n + 1) : ℚ) / 2 - (A033884 (n + 1) : ℚ)

end

end A205099.P8376622574750891587

namespace A205099

/-- `A225241(n+1)/2-A033884(n+1)` -/
def P8376622574750891587.Spec : Prop :=
  ∀ n, P8376622574750891587.a n = (A205099 (n + 1) : ℚ)

end A205099

/-! ## A205099.P9214135864750116543

`A204823(n+1)-A225241(n+1)/2`
-/

namespace A205099.P9214135864750116543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204823 (n + 1) : ℚ) - (A225241 (n + 1) : ℚ) / 2

end

end A205099.P9214135864750116543

namespace A205099

/-- `A204823(n+1)-A225241(n+1)/2` -/
def P9214135864750116543.Spec : Prop :=
  ∀ n, P9214135864750116543.a n = (A205099 (n + 1) : ℚ)

theorem P9214135864750116543.correct : P9214135864750116543.Spec := by
  intro n
  simp only [A205099, Nat.add_sub_cancel, A205099.P9214135864750116543.a, A205099.P16915794968075742101.a, A005100, A005100.P5902118993367235572.f1, A005100.P5902118993367235572.a, A204823, A204823.P4919634814112807220.f1, A204823.P4919634814112807220.a, A225241, A225241.P5113222394722278636.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A205099

/-! ## A205099.P7898717453499383375

`A204823(n+1)-(lt[A341620(n+1), 1]+1)`
-/

namespace A205099.P7898717453499383375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ)

end

end A205099.P7898717453499383375

namespace A205099

/-- `A204823(n+1)-(lt[A341620(n+1), 1]+1)` -/
def P7898717453499383375.Spec : Prop :=
  ∀ n, P7898717453499383375.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P12023951950732635422

`A204823(n+1)-(comp[A023196(n+1)-1]+1)`
-/

namespace A205099.P12023951950732635422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A205099.P12023951950732635422

namespace A205099

/-- `A204823(n+1)-(comp[A023196(n+1)-1]+1)` -/
def P12023951950732635422.Spec : Prop :=
  ∀ n, P12023951950732635422.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P13769884695137645

`A204823(n+1)-lt[A000203(abs(1-n)+1), 2*n]`
-/

namespace A205099.P13769884695137645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A205099.P13769884695137645

namespace A205099

/-- `A204823(n+1)-lt[A000203(abs(1-n)+1), 2*n]` -/
def P13769884695137645.Spec : Prop :=
  ∀ n, P13769884695137645.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P4011413493578123289

`A204823(n+1)-(lt[A000203(n+1), 2*(n+1)]+1)`
-/

namespace A205099.P4011413493578123289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ)

end

end A205099.P4011413493578123289

namespace A205099

/-- `A204823(n+1)-(lt[A000203(n+1), 2*(n+1)]+1)` -/
def P4011413493578123289.Spec : Prop :=
  ∀ n, P4011413493578123289.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P4868627080009689456

`A001065(A225241(n+1)/2)`
-/

namespace A205099.P4868627080009689456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((A225241 (n + 1) : ℚ) / 2)).toNat

end

end A205099.P4868627080009689456

namespace A205099

/-- `A001065(A225241(n+1)/2)` -/
def P4868627080009689456.Spec : Prop :=
  ∀ n, P4868627080009689456.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P9645517497747814911

`A001065(lt[A237588(n+1), 1]+1)`
-/

namespace A205099.P9645517497747814911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A205099.P9645517497747814911

namespace A205099

/-- `A001065(lt[A237588(n+1), 1]+1)` -/
def P9645517497747814911.Spec : Prop :=
  ∀ n, P9645517497747814911.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P18315967588586644963

`A001065(lt[A341620(n+1), 1]+1)`
-/

namespace A205099.P18315967588586644963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A205099.P18315967588586644963

namespace A205099

/-- `A001065(lt[A341620(n+1), 1]+1)` -/
def P18315967588586644963.Spec : Prop :=
  ∀ n, P18315967588586644963.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P13864373059257277374

`A294888(lt[A237588(n+1), 1]+1)`
-/

namespace A205099.P13864373059257277374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A205099.P13864373059257277374

namespace A205099

/-- `A294888(lt[A237588(n+1), 1]+1)` -/
def P13864373059257277374.Spec : Prop :=
  ∀ n, P13864373059257277374.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P6190143800855191888

`A001065(lt[A001065(n+1), n+1]+1)`
-/

namespace A205099.P6190143800855191888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A205099.P6190143800855191888

namespace A205099

/-- `A001065(lt[A001065(n+1), n+1]+1)` -/
def P6190143800855191888.Spec : Prop :=
  ∀ n, P6190143800855191888.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P17909184784710655835

`A001065(eq[A001065(n+1), A054024(n+1)]+1)`
-/

namespace A205099.P17909184784710655835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A205099.P17909184784710655835

namespace A205099

/-- `A001065(eq[A001065(n+1), A054024(n+1)]+1)` -/
def P17909184784710655835.Spec : Prop :=
  ∀ n, P17909184784710655835.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P1103937724625469831

`A319699(A225241(n+1))`
-/

namespace A205099.P1103937724625469831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (A225241 (n + 1)).toNat

end

end A205099.P1103937724625469831

namespace A205099

/-- `A319699(A225241(n+1))` -/
def P1103937724625469831.Spec : Prop :=
  ∀ n, P1103937724625469831.a n = A205099 (n + 1)

end A205099

