import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

/-!
# A082700: Numbers k such that (15*10^(k-1) - 51)/9 is a plateau prime.

The programs for A082700, there is no canonical definition to state claims against.
-/

/-! ## A082700.P6802922537512506809

`A056247(n+2)+2`
-/

namespace A082700.P6802922537512506809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056247 (n + 2) + 2

end

end A082700.P6802922537512506809

/-! ## A082700.P14222729003049510259

`A259118(n+2)+1`
-/

namespace A082700.P14222729003049510259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259118 (n + 2) + 1

end

end A082700.P14222729003049510259

/-! ## A082700.P840047428459000075

`A112276(A056247(n+2))`
-/

namespace A082700.P840047428459000075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112276 (A056247 (n + 2)).toNat

end

end A082700.P840047428459000075

/-!
# A082701: Numbers k such that (16*10^(k-1) - 61)/9 is a plateau prime.

The programs for A082701, there is no canonical definition to state claims against.
-/

/-! ## A082701.P11386153988696881747

`A056248(n+2)+2`
-/

namespace A082701.P11386153988696881747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056248 (n + 2) + 2

end

end A082701.P11386153988696881747

/-! ## A082701.P8793160594107055402

`A259121(n+2)+1`
-/

namespace A082701.P8793160594107055402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259121 (n + 2) + 1

end

end A082701.P8793160594107055402

/-!
# A082702: Numbers k such that (17*10^(k-1) - 71)/9 is a plateau prime.

The programs for A082702, there is no canonical definition to state claims against.
-/

/-! ## A082702.P10466536016120814760

`A056249(n+2)+2`
-/

namespace A082702.P10466536016120814760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056249 (n + 2) + 2

end

end A082702.P10466536016120814760

/-! ## A082702.P11035157108964876280

`A259119(n+2)+1`
-/

namespace A082702.P11035157108964876280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259119 (n + 2) + 1

end

end A082702.P11035157108964876280

/-!
# A082703: Numbers k such that (18*10^(k-1) - 81)/9 is a plateau prime.

The programs for A082703, there is no canonical definition to state claims against.
-/

/-! ## A082703.P15615330344935626036

`A056250(n+2)+2`
-/

namespace A082703.P15615330344935626036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056250 (n + 2) + 2

end

end A082703.P15615330344935626036

/-! ## A082703.P3405756048880290831

`A259120(n+2)+1`
-/

namespace A082703.P3405756048880290831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259120 (n + 2) + 1

end

end A082703.P3405756048880290831

/-! ## A082703.P7984801364623873762

`or(1, A259120(A030545(n)))`
-/

namespace A082703.P7984801364623873762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259120 (A030545 n).toNat)

end

end A082703.P7984801364623873762

/-! ## A082703.P12344982453676039749

`A065475(A259120(n+2))`
-/

namespace A082703.P12344982453676039749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A259120 (n + 2)).toNat

end

end A082703.P12344982453676039749

/-!
# A082704: Numbers k such that (28*10^(k-1) + 17)/9 is a depression prime.

The programs for A082704, there is no canonical definition to state claims against.
-/

/-! ## A082704.P9022713799168931563

`A056251(n+1)+2`
-/

namespace A082704.P9022713799168931563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056251 (n + 1) + 2

end

end A082704.P9022713799168931563

/-! ## A082704.P10997485372417117315

`A259128(n+2)+1`
-/

namespace A082704.P10997485372417117315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259128 (n + 2) + 1

end

end A082704.P10997485372417117315

/-! ## A082704.P3077179903834485415

`A009056(A056251(n+1))`
-/

namespace A082704.P3077179903834485415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A056251 (n + 1)).toNat

end

end A082704.P3077179903834485415

/-! ## A082704.P1034329921538254602

`eq[2, A329121(n)]+2`
-/

namespace A082704.P1034329921538254602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A082704.P1034329921538254602

/-!
# A082705: Numbers k such that (29*10^(k-1) + 7)/9 is a depression prime.

The programs for A082705, there is no canonical definition to state claims against.
-/

/-! ## A082705.P6919968494261537015

`A056252(n+1)+2`
-/

namespace A082705.P6919968494261537015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056252 (n + 1) + 2

end

end A082705.P6919968494261537015

/-!
# A082706: Numbers k such that (31*10^(k-1) - 13)/9 is a plateau prime.

The programs for A082706, there is no canonical definition to state claims against.
-/

/-! ## A082706.P11761631850458181773

`A056253(n+1)+2`
-/

namespace A082706.P11761631850458181773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056253 (n + 1) + 2

end

end A082706.P11761631850458181773

/-!
# A082707: Numbers k such that (32*10^(k-1) - 23)/9 is a plateau prime.

The programs for A082707, there is no canonical definition to state claims against.
-/

/-! ## A082707.P16677956542527221836

`A056254(n+1)+2`
-/

namespace A082707.P16677956542527221836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056254 (n + 1) + 2

end

end A082707.P16677956542527221836

/-! ## A082707.P9948098246844708566

`A259126(n+1)+1`
-/

namespace A082707.P9948098246844708566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259126 (n + 1) + 1

end

end A082707.P9948098246844708566

/-! ## A082707.P1822581555176758704

`or(1, A259126(A005496(n)))`
-/

namespace A082707.P1822581555176758704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259126 (A005496 n).toNat)

end

end A082707.P1822581555176758704

/-! ## A082707.P17952301232131653657

`or(1, A259126(A008729(n)))`
-/

namespace A082707.P17952301232131653657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259126 (A008729 n).toNat)

end

end A082707.P17952301232131653657

/-! ## A082707.P2886112118108782730

`or(1, A259126(A077168(n)))`
-/

namespace A082707.P2886112118108782730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259126 (A077168 n).toNat)

end

end A082707.P2886112118108782730

/-!
# A082708: Numbers k such that (34*10^(k-1) - 43)/9 is a plateau prime.

The programs for A082708, there is no canonical definition to state claims against.
-/

/-! ## A082708.P10636050250704182475

`A056255(n+1)+2`
-/

namespace A082708.P10636050250704182475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056255 (n + 1) + 2

end

end A082708.P10636050250704182475

/-! ## A082708.P16875031207912341066

`A259125(n+1)+1`
-/

namespace A082708.P16875031207912341066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259125 (n + 1) + 1

end

end A082708.P16875031207912341066

/-! ## A082708.P865035744214147374

`or(1, A259125(comp[42*n]))`
-/

namespace A082708.P865035744214147374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A082708.P865035744214147374

/-! ## A082708.P2268710390496597312

`xor(1, A259125(A291769(n)))`
-/

namespace A082708.P2268710390496597312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A259125 (A291769 n).toNat)

end

end A082708.P2268710390496597312

/-! ## A082708.P3196067246903400717

`xor(1, A259125(A348553(n)))`
-/

namespace A082708.P3196067246903400717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A259125 (A348553 n).toNat)

end

end A082708.P3196067246903400717

/-!
# A082709: Numbers k such that (35*10^(k-1) - 53)/9 is a plateau prime.

The programs for A082709, there is no canonical definition to state claims against.
-/

/-! ## A082709.P15692954842369877009

`A056256(n+1)+2`
-/

namespace A082709.P15692954842369877009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056256 (n + 1) + 2

end

end A082709.P15692954842369877009

/-! ## A082709.P3560380987882282063

`A259127(n+1)+1`
-/

namespace A082709.P3560380987882282063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259127 (n + 1) + 1

end

end A082709.P3560380987882282063

/-! ## A082709.P6902683069681751391

`A009056(A056256(n+1))`
-/

namespace A082709.P6902683069681751391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A056256 (n + 1)).toNat

end

end A082709.P6902683069681751391

/-! ## A082709.P11946780688801042939

`A004442(A259127(n+1))`
-/

namespace A082709.P11946780688801042939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A259127 (n + 1)).toNat

end

end A082709.P11946780688801042939

/-! ## A082709.P5615060888128849966

`or(1, A259127(A008729(n)))`
-/

namespace A082709.P5615060888128849966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259127 (A008729 n).toNat)

end

end A082709.P5615060888128849966

/-!
# A082711: Numbers k such that (65*10^(k-1) + 43)/9 is a depression prime.

The programs for A082711, there is no canonical definition to state claims against.
-/

/-! ## A082711.P356190240071941105

`A056257(n+1)+2`
-/

namespace A082711.P356190240071941105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056257 (n + 1) + 2

end

end A082711.P356190240071941105

/-! ## A082711.P17458288170866703058

`A259135(n+1)+1`
-/

namespace A082711.P17458288170866703058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259135 (n + 1) + 1

end

end A082711.P17458288170866703058

/-! ## A082711.P7969064277608470250

`or(1, A259135(A077168(n)))`
-/

namespace A082711.P7969064277608470250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259135 (A077168 n).toNat)

end

end A082711.P7969064277608470250

/-! ## A082711.P4835041945277129443

`or(1, A259135(A291766(n)))`
-/

namespace A082711.P4835041945277129443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259135 (A291766 n).toNat)

end

end A082711.P4835041945277129443

/-! ## A082711.P17250670187388212952

`or(1, A259135(A008729(n)))`
-/

namespace A082711.P17250670187388212952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259135 (A008729 n).toNat)

end

end A082711.P17250670187388212952

/-!
# A082712: Numbers k such that (67*10^(k-1) + 23)/9 is a depression prime.

The programs for A082712, there is no canonical definition to state claims against.
-/

/-! ## A082712.P15445588058427678145

`A056258(n+1)+2`
-/

namespace A082712.P15445588058427678145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056258 (n + 1) + 2

end

end A082712.P15445588058427678145

/-! ## A082712.P10026582003465981422

`A259136(n+1)+1`
-/

namespace A082712.P10026582003465981422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259136 (n + 1) + 1

end

end A082712.P10026582003465981422

/-!
# A082713: Numbers k such that (68*10^(k-1) + 13)/9 is a depression prime.

The programs for A082713, there is no canonical definition to state claims against.
-/

/-! ## A082713.P14758506769834965882

`A056259(n+1)+2`
-/

namespace A082713.P14758506769834965882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056259 (n + 1) + 2

end

end A082713.P14758506769834965882

/-! ## A082713.P14999780739772623651

`A259132(n+1)+1`
-/

namespace A082713.P14999780739772623651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259132 (n + 1) + 1

end

end A082713.P14999780739772623651

/-! ## A082713.P1912760143744997565

`xor(1, A259132(n-log2(1/2)))`
-/

namespace A082713.P1912760143744997565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A259132 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A082713.P1912760143744997565

/-! ## A082713.P18213593698403175470

`or(1, A259132(A348553(n)))`
-/

namespace A082713.P18213593698403175470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259132 (A348553 n).toNat)

end

end A082713.P18213593698403175470

/-!
# A082714: Numbers n such that 2*(10^n-1)/3+(10^(n-1)+1) or (69*10^(n-1)+3)/9 is a plateau or depression prime.

The programs for A082714, there is no canonical definition to state claims against.
-/

/-! ## A082714.P10674414434934299706

`A259133(n+1)+1`
-/

namespace A082714.P10674414434934299706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259133 (n + 1) + 1

end

end A082714.P10674414434934299706

/-! ## A082714.P4352589740285442513

`A056260(n+1)+2`
-/

namespace A082714.P4352589740285442513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056260 (n + 1) + 2

end

end A082714.P4352589740285442513

/-! ## A082714.P7046610956321046981

`or(1, A259133(A077168(n)))`
-/

namespace A082714.P7046610956321046981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259133 (A077168 n).toNat)

end

end A082714.P7046610956321046981

/-! ## A082714.P1709111733062914160

`or(1, A259133(A291769(n)))`
-/

namespace A082714.P1709111733062914160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259133 (A291769 n).toNat)

end

end A082714.P1709111733062914160

/-! ## A082714.P9275616426265394375

`or(1, A259133(A348553(n)))`
-/

namespace A082714.P9275616426265394375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259133 (A348553 n).toNat)

end

end A082714.P9275616426265394375

/-!
# A082715: Numbers k such that (71*10^(k-1) - 17)/9 is a plateau prime.

The programs for A082715, there is no canonical definition to state claims against.
-/

/-! ## A082715.P16850864628697440021

`A056262(n+1)+2`
-/

namespace A082715.P16850864628697440021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056262 (n + 1) + 2

end

end A082715.P16850864628697440021

/-! ## A082715.P1241420804263266170

`A259137(n+1)+1`
-/

namespace A082715.P1241420804263266170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259137 (n + 1) + 1

end

end A082715.P1241420804263266170

/-! ## A082715.P2320175819034573683

`or(1, A259137(A005496(n)))`
-/

namespace A082715.P2320175819034573683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259137 (A005496 n).toNat)

end

end A082715.P2320175819034573683

/-! ## A082715.P7897121597043444051

`or(1, A259137(A077168(n)))`
-/

namespace A082715.P7897121597043444051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259137 (A077168 n).toNat)

end

end A082715.P7897121597043444051

/-! ## A082715.P17691643162279085100

`or(1, A259137(A199343(n)))`
-/

namespace A082715.P17691643162279085100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259137 (A199343 n).toNat)

end

end A082715.P17691643162279085100

/-!
# A082716: Numbers k such that (72*10^(k-1) - 27)/9 is a plateau prime.

The programs for A082716, there is no canonical definition to state claims against.
-/

/-! ## A082716.P8975121474545807781

`A056263(n+1)+2`
-/

namespace A082716.P8975121474545807781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056263 (n + 1) + 2

end

end A082716.P8975121474545807781

/-! ## A082716.P3518614670319478282

`A259134(n+2)+1`
-/

namespace A082716.P3518614670319478282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259134 (n + 2) + 1

end

end A082716.P3518614670319478282

/-! ## A082716.P3723378341393444097

`A004442(A259134(n+2))`
-/

namespace A082716.P3723378341393444097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A259134 (n + 2)).toNat

end

end A082716.P3723378341393444097

/-!
# A082717: Numbers k such that (82*10^(k-1) + 71)/9 is a depression prime.

The programs for A082717, there is no canonical definition to state claims against.
-/

/-! ## A082717.P11280343032665822685

`A056264(n+1)+2`
-/

namespace A082717.P11280343032665822685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056264 (n + 1) + 2

end

end A082717.P11280343032665822685

/-!
# A082718: Numbers k such that (83*10^(k-1) + 61)/9 is a depression prime.

The programs for A082718, there is no canonical definition to state claims against.
-/

/-! ## A082718.P8340304824764439097

`A056265(n+1)+2`
-/

namespace A082718.P8340304824764439097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056265 (n + 1) + 2

end

end A082718.P8340304824764439097

/-! ## A082718.P267817345921080166

`A259140(n+1)+1`
-/

namespace A082718.P267817345921080166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259140 (n + 1) + 1

end

end A082718.P267817345921080166

/-!
# A082719: Numbers k such that (89*10^(k-1) + 1)/9 is a depression prime.

The programs for A082719, there is no canonical definition to state claims against.
-/

/-! ## A082719.P316940667314306928

`A259139(n+1)+1`
-/

namespace A082719.P316940667314306928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259139 (n + 1) + 1

end

end A082719.P316940667314306928

/-! ## A082719.P2873332649736727537

`A056266(n+1)+2`
-/

namespace A082719.P2873332649736727537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056266 (n + 1) + 2

end

end A082719.P2873332649736727537

/-! ## A082719.P511049236222461489

`or(1, A259139(A005496(n)))`
-/

namespace A082719.P511049236222461489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259139 (A005496 n).toNat)

end

end A082719.P511049236222461489

/-! ## A082719.P9653405441287218048

`or(1, A259139(A034894(n)))`
-/

namespace A082719.P9653405441287218048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259139 (A034894 n).toNat)

end

end A082719.P9653405441287218048

/-! ## A082719.P10259925408079853247

`or(1, A259139(A077168(n)))`
-/

namespace A082719.P10259925408079853247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259139 (A077168 n).toNat)

end

end A082719.P10259925408079853247

/-!
# A082720: Digit lengths for which there exist plateau or depression primes of the general form r*(10^m-1)/9 +- s*(10^(m-1)+1).

The programs for A082720, there is no canonical definition to state claims against.
-/

/-! ## A082720.P16867879051796371292

`record[A099375(A334139(n+1))]`
-/

namespace A082720.P16867879051796371292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A334139 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082720.P16867879051796371292

/-! ## A082720.P247133723626333232

`record[A131507(A200370(2*n+1))]`
-/

namespace A082720.P247133723626333232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A200370 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082720.P247133723626333232

/-! ## A082720.P7278878972169757104

`eq[1-A323439(2*(n+1)), A317241(n+1)]`
-/

namespace A082720.P7278878972169757104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A323439 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082720.P7278878972169757104

/-! ## A082720.P7949250297376145582

`∑[A174238(A276730(A000029(n)))]`
-/

namespace A082720.P7949250297376145582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174238 (A276730 (A000029 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082720.P7949250297376145582

/-!
# A082721: There exist no palindromic hexagonals of length n.

The programs for A082721, there is no canonical definition to state claims against.
-/

/-! ## A082721.P13944697264036535617

`∪[A156695(2*(n+1)), A364123(A364146(n+4))]`
-/

namespace A082721.P13944697264036535617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156695 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364123 (A364146 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A082721.P13944697264036535617

/-!
# A082723: Palindromic nonagonal (or 9-gonal or enneagonal) numbers.

The programs for A082723, there is no canonical definition to state claims against.
-/

/-! ## A082723.P14361952131942605879

`A001106(A055560(n+1))`
-/

namespace A082723.P14361952131942605879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A055560 (n + 1)).toNat

end

end A082723.P14361952131942605879

/-! ## A082723.P18076983051496492923

`A174738(7*A055560(n+1))`
-/

namespace A082723.P18076983051496492923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (7 * A055560 (n + 1)).toNat

end

end A082723.P18076983051496492923

/-! ## A082723.P6346685527177511787

`A174738(lcm(7, A055560(n+1)))`
-/

namespace A082723.P6346685527177511787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (Int.lcm 7 (A055560 (n + 1)))

end

end A082723.P6346685527177511787

/-! ## A082723.P5970170770004224537

`∩[A032350(n+1), A001106(n)]`
-/

namespace A082723.P5970170770004224537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082723.P5970170770004224537

/-!
# A082724: a(n) = (3*11^n + 3^n)/4.

The programs for A082724, the canonical program `A082724.P12991483431964346056` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082724 has offset 0).

The definition of A082724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082724.P12991483431964346056

`(3*11^n+3^n)/4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082724

/-- `(3*11^n+3^n)/4` -/
def P12991483431964346056.Spec : Prop :=
  ∀ n, P12991483431964346056.a n = (A082724 n : ℚ)

end A082724

/-! ## A082724.P2516267064103842407

`14*a(n-1)-33*a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A082724.P2516267064103842407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  14 * a (n - 1) - 33 * a (n - 2)

end

end A082724.P2516267064103842407

namespace A082724

/-- `14*a(n-1)-33*a(n-2)` -/
def P2516267064103842407.Spec : Prop :=
  ∀ n, P2516267064103842407.a n = A082724 n

end A082724

/-! ## A082724.P3140248234434559976

`11*a(n-1)-A025192(n)` with `a(0)=1`
-/

namespace A082724.P3140248234434559976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  11 * a (n - 1) - A025192 n

end

end A082724.P3140248234434559976

namespace A082724

/-- `11*a(n-1)-A025192(n)` -/
def P3140248234434559976.Spec : Prop :=
  ∀ n, P3140248234434559976.a n = A082724 n

end A082724

/-! ## A082724.P5769089316215098798

`11*a(n-1)-A008776(n-1)` with `a(0)=1`
-/

namespace A082724.P5769089316215098798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  11 * a (n - 1) - A008776 (n - 1)

end

end A082724.P5769089316215098798

namespace A082724

/-- `11*a(n-1)-A008776(n-1)` -/
def P5769089316215098798.Spec : Prop :=
  ∀ n, P5769089316215098798.a n = A082724 n

end A082724

/-! ## A082724.P11784847943800880357

`11*a(n-1)-2*A133494(n)` with `a(0)=1`
-/

namespace A082724.P11784847943800880357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  11 * a (n - 1) - 2 * A133494 n

end

end A082724.P11784847943800880357

namespace A082724

/-- `11*a(n-1)-2*A133494(n)` -/
def P11784847943800880357.Spec : Prop :=
  ∀ n, P11784847943800880357.a n = A082724 n

end A082724

/-!
# A082725: a(n) = n/A100762(n).

The programs for A082725, there is no canonical definition to state claims against.
-/

/-! ## A082725.P15558378671378304665

`(n+1)/A100762(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082725.P15558378671378304665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A100762 (n + 1) : ℚ)

end

end A082725.P15558378671378304665

/-! ## A082725.P6980296610784823736

`(n+1)/gcd(n+1, A211776(n+1)²²)`
-/

namespace A082725.P6980296610784823736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) ((A211776 (n + 1) ^ 2) ^ 2) : ℚ)

end

end A082725.P6980296610784823736

/-! ## A082725.P12388027138372402352

`(n+1)*A100762(n+1)^A008683(A002146(n))`
-/

namespace A082725.P12388027138372402352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A100762 (n + 1) : ℚ) ^ (A008683 (A002146 n).toNat : ℤ)

end

end A082725.P12388027138372402352

/-! ## A082725.P1737547022833395554

`A010766(A100762(n+1)+∑[n])`
-/

namespace A082725.P1737547022833395554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A100762 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A082725.P1737547022833395554

/-! ## A082725.P15155804445862906397

`A051537(A100762(n+1)+∑[n])`
-/

namespace A082725.P15155804445862906397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A100762 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A082725.P15155804445862906397

/-! ## A082725.P11694764845335447271

`A126988(A100762(n+1)+∑[n])`
-/

namespace A082725.P11694764845335447271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A100762 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A082725.P11694764845335447271

/-! ## A082725.P8958169233816281199

`A054531(A100762(n+1)+A000217(n))`
-/

namespace A082725.P8958169233816281199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A100762 (n + 1) + A000217 n).toNat

end

end A082725.P8958169233816281199

/-! ## A082725.P1390349891233574782

`A048798(A048798(n+1)*A100762(n+1))`
-/

namespace A082725.P1390349891233574782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (A048798 (n + 1) * A100762 (n + 1)).toNat

end

end A082725.P1390349891233574782

/-!
# A082727: a(0)=1, a(n)=abs(n-2*a(n-1)).

The programs for A082727, the canonical program `A082727.P12942590579074773833` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082727 has offset 0).

The definition of A082727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(n-2*a(n-1))` (program `A082727.P12942590579074773833`, by `A082727.P12942590579074773833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082727.P12942590579074773833

`abs(n-2*a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082727

/-- `abs(n-2*a(n-1))` -/
def P12942590579074773833.Spec : Prop :=
  ∀ n, P12942590579074773833.a n = A082727 n

theorem P12942590579074773833.correct : P12942590579074773833.Spec := by
  intro n
  simp only [A082727]

end A082727

/-! ## A082727.P7171570718564562774

`abs(2*a(n-1)-n)` with `a(0)=1`
-/

namespace A082727.P7171570718564562774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |2 * a (n - 1) - (n : ℤ)|

end

end A082727.P7171570718564562774

namespace A082727

/-- `abs(2*a(n-1)-n)` -/
def P7171570718564562774.Spec : Prop :=
  ∀ n, P7171570718564562774.a n = A082727 n

end A082727

/-! ## A082727.P15010308450260046790

`abs(lcm(2, a(n-1)-n)-n)` with `a(0)=1`
-/

namespace A082727.P15010308450260046790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(Int.lcm 2 (a (n - 1) - (n : ℤ)) : ℤ) - (n : ℤ)|

end

end A082727.P15010308450260046790

namespace A082727

/-- `abs(lcm(2, a(n-1)-n)-n)` -/
def P15010308450260046790.Spec : Prop :=
  ∀ n, P15010308450260046790.a n = A082727 n

end A082727

/-! ## A082727.P15868912022325717957

`sqrt(floor((2*a(n-1)-n)²))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A082727.P15868912022325717957
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (⌊(2 * a (n - 1) - (n : ℝ)) ^ 2⌋ : ℝ)

end

end A082727.P15868912022325717957

namespace A082727

/-- `sqrt(floor((2*a(n-1)-n)²))` -/
def P15868912022325717957.Spec : Prop :=
  ∀ n, P15868912022325717957.a n = (A082727 n : ℝ)

end A082727

/-! ## A082727.P4256710699162903128

`sqrt(ceil((2*a(n-1)-n)²))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A082727.P4256710699162903128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (⌈(2 * a (n - 1) - (n : ℝ)) ^ 2⌉ : ℝ)

end

end A082727.P4256710699162903128

namespace A082727

/-- `sqrt(ceil((2*a(n-1)-n)²))` -/
def P4256710699162903128.Spec : Prop :=
  ∀ n, P4256710699162903128.a n = (A082727 n : ℝ)

end A082727

/-! ## A082727.P1679082637015044023

`sqrt(round((2*a(n-1)-n)²))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A082727.P1679082637015044023
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (SequenceMachineLib.roundAway ((2 * a (n - 1) - (n : ℝ)) ^ 2) : ℝ)

end

end A082727.P1679082637015044023

namespace A082727

/-- `sqrt(round((2*a(n-1)-n)²))` -/
def P1679082637015044023.Spec : Prop :=
  ∀ n, P1679082637015044023.a n = (A082727 n : ℝ)

end A082727

/-! ## A082727.P2248190609628423250

`abs(a(n-1)/sqrt(1/4)-n)` with `a(0)=1`
-/

namespace A082727.P2248190609628423250
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) / Real.sqrt ((1 : ℚ) / 4 : ℝ) - (n : ℝ)|

end

end A082727.P2248190609628423250

namespace A082727

/-- `abs(a(n-1)/sqrt(1/4)-n)` -/
def P2248190609628423250.Spec : Prop :=
  ∀ n, P2248190609628423250.a n = (A082727 n : ℝ)

end A082727

/-! ## A082727.P3552956717895066068

`lcm(2*a(n-1)-n, gcd(2, n))` with `a(0)=1`
-/

namespace A082727.P3552956717895066068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm ((2 * a (n - 1) : ℤ) - (n : ℤ)) (Nat.gcd 2 n : ℤ)

end

end A082727.P3552956717895066068

namespace A082727

/-- `lcm(2*a(n-1)-n, gcd(2, n))` -/
def P3552956717895066068.Spec : Prop :=
  ∀ n, (P3552956717895066068.a n : ℤ) = A082727 n

end A082727

/-! ## A082727.P11337537228011871053

`abs(a(n-1)+a(n-1)-n)` with `a(0)=1`
-/

namespace A082727.P11337537228011871053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) + (a (n - 1) - (n : ℤ))|

end

end A082727.P11337537228011871053

namespace A082727

/-- `abs(a(n-1)+a(n-1)-n)` -/
def P11337537228011871053.Spec : Prop :=
  ∀ n, P11337537228011871053.a n = A082727 n

end A082727

/-! ## A082727.P7696531413056742307

`abs(a(n-1)-(n-a(n-1)))` with `a(0)=1`
-/

namespace A082727.P7696531413056742307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - ((n : ℤ) - a (n - 1))|

end

end A082727.P7696531413056742307

namespace A082727

/-- `abs(a(n-1)-(n-a(n-1)))` -/
def P7696531413056742307.Spec : Prop :=
  ∀ n, P7696531413056742307.a n = A082727 n

end A082727

/-! ## A082727.P12979695723194959363

`gcd(2*a(n-1)-n, floor(1/n))` with `a(0)=1`
-/

namespace A082727.P12979695723194959363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd ((2 * a (n - 1) : ℤ) - (n : ℤ)) ⌊1 / (n : ℚ)⌋

end

end A082727.P12979695723194959363

namespace A082727

/-- `gcd(2*a(n-1)-n, floor(1/n))` -/
def P12979695723194959363.Spec : Prop :=
  ∀ n, (P12979695723194959363.a n : ℤ) = A082727 n

end A082727

/-! ## A082727.P2586254452485110752

`gcd(n-2*a(n-1), (2*n)%2)` with `a(0)=1`
-/

namespace A082727.P2586254452485110752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd ((n : ℤ) - (2 * a (n - 1) : ℤ)) ((2 * n % 2 : ℕ) : ℤ)

end

end A082727.P2586254452485110752

namespace A082727

/-- `gcd(n-2*a(n-1), (2*n)%2)` -/
def P2586254452485110752.Spec : Prop :=
  ∀ n, (P2586254452485110752.a n : ℤ) = A082727 n

end A082727

/-! ## A082727.P8483574150447522550

`gcd(a(n-1)-(n-a(n-1)), (2%n)%2)` with `a(0)=1`
-/

namespace A082727.P8483574150447522550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd ((a (n - 1) : ℤ) - ((n : ℤ) - (a (n - 1) : ℤ))) ((2 % n % 2 : ℕ) : ℤ)

end

end A082727.P8483574150447522550

namespace A082727

/-- `gcd(a(n-1)-(n-a(n-1)), (2%n)%2)` -/
def P8483574150447522550.Spec : Prop :=
  ∀ n, (P8483574150447522550.a n : ℤ) = A082727 n

end A082727

/-! ## A082727.P15926343404732580011

`gcd(a(n-1)+a(n-1)-n, floor(a(n-1)/n))` with `a(0)=1, a(1)=1`
-/

namespace A082727.P15926343404732580011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.gcd ((a (n - 1) : ℤ) + ((a (n - 1) : ℤ) - (n : ℤ))) ⌊(a (n - 1) : ℚ) / (n : ℚ)⌋

end

end A082727.P15926343404732580011

namespace A082727

/-- `gcd(a(n-1)+a(n-1)-n, floor(a(n-1)/n))` -/
def P15926343404732580011.Spec : Prop :=
  ∀ n, (P15926343404732580011.a n : ℤ) = A082727 n

end A082727

/-! ## A082727.P2565173402433248774

`gcd(floor(2*a(n-1))-n, a(n-1)-floor(a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A082727.P2565173402433248774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd ((2 * a (n - 1) : ℤ) - (n : ℤ)) ((a (n - 1) : ℤ) - (a (n - 1) : ℤ))

end

end A082727.P2565173402433248774

namespace A082727

/-- `gcd(floor(2*a(n-1))-n, a(n-1)-floor(a(n-1)))` -/
def P2565173402433248774.Spec : Prop :=
  ∀ n, (P2565173402433248774.a n : ℤ) = A082727 n

end A082727

/-! ## A082727.P5929162061565670662

`gcd(a(n-1)+floor(a(n-1))-n, floor(a(n-1))-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A082727.P5929162061565670662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd ((a (n - 1) + a (n - 1) : ℤ) - (n : ℤ)) ((a (n - 1) : ℤ) - (a (n - 1) : ℤ))

end

end A082727.P5929162061565670662

namespace A082727

/-- `gcd(a(n-1)+floor(a(n-1))-n, floor(a(n-1))-a(n-1))` -/
def P5929162061565670662.Spec : Prop :=
  ∀ n, (P5929162061565670662.a n : ℤ) = A082727 n

end A082727

/-! ## A082727.P14293810838542989101

`ceil(log(cosh(2*a(n-1)-n)))` with `a(0)=1`
-/

namespace A082727.P14293810838542989101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.log (Real.cosh (2 * a (n - 1) - (n : ℤ) : ℝ))⌉

end

end A082727.P14293810838542989101

namespace A082727

/-- `ceil(log(cosh(2*a(n-1)-n)))` -/
def P14293810838542989101.Spec : Prop :=
  ∀ n, P14293810838542989101.a n = A082727 n

end A082727

/-!
# A082728: Numbers expressible as a sum of 2 nonzero Fibonacci numbers in exactly 1 way.

The programs for A082728, the canonical program `A082728.P8463879847482110208` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082728 has offset 1).

The definition of A082728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082728.P8463879847482110208

`filter[A078643(n+3), A005614(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A082728

/-- `filter[A078643(n+3), A005614(#)]` -/
def P8463879847482110208.Spec : Prop :=
  ∀ n, P8463879847482110208.a n = A082728 (n + 1)

theorem P8463879847482110208.correct : P8463879847482110208.Spec := by
  intro n
  simp only [A082728, Nat.add_sub_cancel]

end A082728

/-!
# A082729: Least positive number that can be written using all divisors of n and the operations add and subtract.

The programs for A082729, there is no canonical definition to state claims against.
-/

/-! ## A082729.P15834644537969357586

`A103977(n+1)+2*A179527(n+1)`
-/

namespace A082729.P15834644537969357586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1) + 2 * A179527 (n + 1)

end

end A082729.P15834644537969357586

/-! ## A082729.P10085565042162800732

`abs(1-A103977(n+1))+1`
-/

namespace A082729.P10085565042162800732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A103977 (n + 1)| + 1

end

end A082729.P10085565042162800732

/-! ## A082729.P3964398035836461000

`abs(A023443(A103977(n+1)))+1`
-/

namespace A082729.P3964398035836461000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023443 (A103977 (n + 1)).toNat| + 1

end

end A082729.P3964398035836461000

/-! ## A082729.P6565070891078996998

`A179527(n+1)+A028310(A103977(n+1))`
-/

namespace A082729.P6565070891078996998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (n + 1) + A028310 (A103977 (n + 1)).toNat

end

end A082729.P6565070891078996998

/-! ## A082729.P8999964052251938586

`A134824(A103977(n+1)+1)+A103977(n+1)+1`
-/

namespace A082729.P8999964052251938586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A103977 (n + 1) + 1).toNat + (A103977 (n + 1) + 1)

end

end A082729.P8999964052251938586

/-! ## A082729.P14987954273083560131

`A103977(n+1)+A000038(A103977(n+1)+A000038(n))`
-/

namespace A082729.P14987954273083560131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1) + A000038 (A103977 (n + 1) + A000038 n).toNat

end

end A082729.P14987954273083560131

/-! ## A082729.P13906336265147409550

`A103977(n+1)+A000038(2*A103977(n+1))`
-/

namespace A082729.P13906336265147409550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1) + A000038 (2 * A103977 (n + 1)).toNat

end

end A082729.P13906336265147409550

/-! ## A082729.P5218914553460863387

`A103977(n+1)+A010673(A308605(n+1))`
-/

namespace A082729.P5218914553460863387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1) + A010673 (A308605 (n + 1)).toNat

end

end A082729.P5218914553460863387

/-! ## A082729.P2007978355440463873

`A103977(n+1)+A000038(A103977(n+1)²)`
-/

namespace A082729.P2007978355440463873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1) + A000038 (A103977 (n + 1) ^ 2).toNat

end

end A082729.P2007978355440463873

/-! ## A082729.P13959697065949547883

`gcd(A000038(A378600(n+1)²), A378600(n+1))`
-/

namespace A082729.P13959697065949547883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A378600 (n + 1) ^ 2).toNat) (A378600 (n + 1))

end

end A082729.P13959697065949547883

/-!
# A082732: a(1) = 1, a(2) = 3, a(n) = LCM of all the previous terms + 1.

The programs for A082732, there is no canonical definition to state claims against.
-/

/-! ## A082732.P14286489793990982633

`2*C(a(n-1), 2)+1` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A082732.P14286489793990982633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  2 * Nat.choose (a (n - 1)) 2 + 1

end

end A082732.P14286489793990982633

/-! ## A082732.P7964862500402632832

`ceil((1/2-a(n-1))²)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A082732.P7964862500402632832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  ⌈((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌉

end

end A082732.P7964862500402632832

/-! ## A082732.P6318830698397526035

`floor((1/2-a(n-1))²)+1` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A082732.P6318830698397526035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  ⌊((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌋ + 1

end

end A082732.P6318830698397526035

/-! ## A082732.P7387433010242994159

`a(n-1)+(1-a(n-1))²` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A082732.P7387433010242994159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 1) + (1 - a (n - 1)) ^ 2

end

end A082732.P7387433010242994159

/-! ## A082732.P17387706116314335221

`1-(a(n-1)-a(n-1)²)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A082732.P17387706116314335221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  1 - (a (n - 1) - a (n - 1) ^ 2)

end

end A082732.P17387706116314335221

/-!
# A082733: Sum of all entries in character table of the symmetric group S_n.

The programs for A082733, there is no canonical definition to state claims against.
-/

/-! ## A082733.P16388930136960143925

`A239841(n+1)/(n+1)!`
-/

namespace A082733.P16388930136960143925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239841 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A082733.P16388930136960143925

/-! ## A082733.P16680313823961055718

`A239841(n+1)/A000142(n+1)`
-/

namespace A082733.P16680313823961055718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239841 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A082733.P16680313823961055718

/-! ## A082733.P1041541040597559669

`A232218(n+1)*A239841(n+1)/A255440(n+1)`
-/

namespace A082733.P1041541040597559669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232218 (n + 1) * A239841 (n + 1) : ℚ) / (A255440 (n + 1) : ℚ)

end

end A082733.P1041541040597559669

/-! ## A082733.P3920578593151246514

`2*A241585(n+1)-A241584(n+1)`
-/

namespace A082733.P3920578593151246514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241585 (n + 1) - A241584 (n + 1)

end

end A082733.P3920578593151246514

/-!
# A082738: Diagonal of triangle in A082737.

The programs for A082738, there is no canonical definition to state claims against.
-/

/-! ## A082738.P14186263391507188588

`A082737(∑[n+1])`
-/

namespace A082738.P14186263391507188588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082737 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082738.P14186263391507188588

/-!
# A082739: First column of triangle A082737.

The programs for A082739, there is no canonical definition to state claims against.
-/

/-! ## A082739.P16174294187554742640

`A082737(∑[n]+1)`
-/

namespace A082739.P16174294187554742640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082737 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A082739.P16174294187554742640

/-! ## A082739.P18035068974629587957

`∏{d}[A082737(A000124(n)), #]`
-/

namespace A082739.P18035068974629587957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082737 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A082739.P18035068974629587957

/-! ## A082739.P8786817537698152163

`record[A010054(n)*A082737(n+1)]`
-/

namespace A082739.P8786817537698152163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A082737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082739.P8786817537698152163

/-!
# A082741: Numbers that have digits consisting only of line segments or both line segments and curves (base 10 digits are 1, 2, 4, 5, 7).

The programs for A082741, the canonical program `A082741.P5603460643145783783` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082741 has offset 1).

The definition of A082741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2655 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082741.P5603460643145783783

`∩[A001729(n+1), A307913(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A082741

/-- `∩[A001729(n+1), A307913(n+1)]` -/
def P5603460643145783783.Spec : Prop :=
  ∀ n, (P5603460643145783783.a n : ℤ) = A082741 (n + 1)

theorem P5603460643145783783.correct : P5603460643145783783.Spec := by
  intro n
  simp only [A082741, Nat.add_sub_cancel]

end A082741

/-! ## A082741.P9943945725284068452

`∩[A214677(n+1), A307913(n+1)]`
-/

namespace A082741.P9943945725284068452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082741.P9943945725284068452

namespace A082741

/-- `∩[A214677(n+1), A307913(n+1)]` -/
def P9943945725284068452.Spec : Prop :=
  ∀ n, (P9943945725284068452.a n : ℤ) = A082741 (n + 1)

end A082741

/-! ## A082741.P15349004153278800999

`∩[A001729(n+1), A039114(n+1)]`
-/

namespace A082741.P15349004153278800999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082741.P15349004153278800999

namespace A082741

/-- `∩[A001729(n+1), A039114(n+1)]` -/
def P15349004153278800999.Spec : Prop :=
  ∀ n, (P15349004153278800999.a n : ℤ) = A082741 (n + 1)

end A082741

/-! ## A082741.P10272209139125711167

`∩[A001729(n+1), A039137(n+1)]`
-/

namespace A082741.P10272209139125711167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082741.P10272209139125711167

namespace A082741

/-- `∩[A001729(n+1), A039137(n+1)]` -/
def P10272209139125711167.Spec : Prop :=
  ∀ n, (P10272209139125711167.a n : ℤ) = A082741 (n + 1)

end A082741

/-! ## A082741.P6822094708103477608

`∩[A001729(n+1), A039139(n+1)]`
-/

namespace A082741.P6822094708103477608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082741.P6822094708103477608

namespace A082741

/-- `∩[A001729(n+1), A039139(n+1)]` -/
def P6822094708103477608.Spec : Prop :=
  ∀ n, (P6822094708103477608.a n : ℤ) = A082741 (n + 1)

end A082741

/-! ## A082741.P7173860485641066907

`∩[A001729(n+1), A039140(n+1)]`
-/

namespace A082741.P7173860485641066907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082741.P7173860485641066907

namespace A082741

/-- `∩[A001729(n+1), A039140(n+1)]` -/
def P7173860485641066907.Spec : Prop :=
  ∀ n, (P7173860485641066907.a n : ℤ) = A082741 (n + 1)

end A082741

/-! ## A082741.P4732913330805463954

`∩[A001729(n+1), A052405(n+1)]`
-/

namespace A082741.P4732913330805463954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082741.P4732913330805463954

namespace A082741

/-- `∩[A001729(n+1), A052405(n+1)]` -/
def P4732913330805463954.Spec : Prop :=
  ∀ n, (P4732913330805463954.a n : ℤ) = A082741 (n + 1)

end A082741

/-! ## A082741.P8586221837665110293

`A222234(A001742(n+1))`
-/

namespace A082741.P8586221837665110293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A001742 (n + 1)).toNat

end

end A082741.P8586221837665110293

namespace A082741

/-- `A222234(A001742(n+1))` -/
def P8586221837665110293.Spec : Prop :=
  ∀ n, P8586221837665110293.a n = A082741 (n + 1)

end A082741

/-! ## A082741.P10191123755217537246

`A222234(eq[0, A064692(n)])`
-/

namespace A082741.P10191123755217537246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082741.P10191123755217537246

namespace A082741

/-- `A222234(eq[0, A064692(n)])` -/
def P10191123755217537246.Spec : Prop :=
  ∀ n, P10191123755217537246.a n = A082741 (n + 1)

end A082741

/-! ## A082741.P7408516460407627496

`eq[1, A329792(A222237(n))]`
-/

namespace A082741.P7408516460407627496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329792 (A222237 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082741.P7408516460407627496

namespace A082741

/-- `eq[1, A329792(A222237(n))]` -/
def P7408516460407627496.Spec : Prop :=
  ∀ n, (P7408516460407627496.a n : ℤ) = A082741 (n + 1)

end A082741

/-! ## A082741.P8988713766318188973

`record[A222234(A001729(n+1))]`
-/

namespace A082741.P8988713766318188973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A001729 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082741.P8988713766318188973

namespace A082741

/-- `record[A222234(A001729(n+1))]` -/
def P8988713766318188973.Spec : Prop :=
  ∀ n, P8988713766318188973.a n = A082741 (n + 1)

end A082741

/-! ## A082741.P1328760337389188046

`eq[1, ∏{digits}[n, A000925(A025852(#))]]`
-/

namespace A082741.P1328760337389188046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => A000925 (A025852 x).toNat).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082741.P1328760337389188046

namespace A082741

/-- `eq[1, ∏{digits}[n, A000925(A025852(#))]]` -/
def P1328760337389188046.Spec : Prop :=
  ∀ n, (P1328760337389188046.a n : ℤ) = A082741 (n + 1)

end A082741

/-! ## A082741.P15858223034120835300

`eq[n, A222238(A064532(n)+n)]`
-/

namespace A082741.P15858223034120835300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A064532 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082741.P15858223034120835300

namespace A082741

/-- `eq[n, A222238(A064532(n)+n)]` -/
def P15858223034120835300.Spec : Prop :=
  ∀ n, (P15858223034120835300.a n : ℤ) = A082741 (n + 1)

end A082741

/-! ## A082741.P569277673246015809

`eq[n*A316864(n), A064532(n)]`
-/

namespace A082741.P569277673246015809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082741.P569277673246015809

namespace A082741

/-- `eq[n*A316864(n), A064532(n)]` -/
def P569277673246015809.Spec : Prop :=
  ∀ n, (P569277673246015809.a n : ℤ) = A082741 (n + 1)

end A082741

/-! ## A082741.P12331364760575418636

`eq[n, A222239(A222217(A222215(n)))]`
-/

namespace A082741.P12331364760575418636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A222217 (A222215 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082741.P12331364760575418636

namespace A082741

/-- `eq[n, A222239(A222217(A222215(n)))]` -/
def P12331364760575418636.Spec : Prop :=
  ∀ n, (P12331364760575418636.a n : ℤ) = A082741 (n + 1)

end A082741

/-! ## A082741.P10289925704110739427

`eq[n, A222254(A222215(A222212(n)))]`
-/

namespace A082741.P10289925704110739427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222215 (A222212 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082741.P10289925704110739427

namespace A082741

/-- `eq[n, A222254(A222215(A222212(n)))]` -/
def P10289925704110739427.Spec : Prop :=
  ∀ n, (P10289925704110739427.a n : ℤ) = A082741 (n + 1)

end A082741

/-! ## A082741.P13505494458717024543

`eq[A222212(n), A222251(A222250(n))]`
-/

namespace A082741.P13505494458717024543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222250 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082741.P13505494458717024543

namespace A082741

/-- `eq[A222212(n), A222251(A222250(n))]` -/
def P13505494458717024543.Spec : Prop :=
  ∀ n, (P13505494458717024543.a n : ℤ) = A082741 (n + 1)

end A082741

/-! ## A082741.P14146955051118022290

`eq[A222212(n), A222254(A222251(n))]`
-/

namespace A082741.P14146955051118022290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082741.P14146955051118022290

namespace A082741

/-- `eq[A222212(n), A222254(A222251(n))]` -/
def P14146955051118022290.Spec : Prop :=
  ∀ n, (P14146955051118022290.a n : ℤ) = A082741 (n + 1)

end A082741

/-! ## A082741.P17586430311926777388

`eq[A222212(n), A222250(A222254(n))]`
-/

namespace A082741.P17586430311926777388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082741.P17586430311926777388

namespace A082741

/-- `eq[A222212(n), A222250(A222254(n))]` -/
def P17586430311926777388.Spec : Prop :=
  ∀ n, (P17586430311926777388.a n : ℤ) = A082741 (n + 1)

end A082741

/-! ## A082741.P14914699500863776077

`eq[A064532(n)/A004155(n), A316864(n)]`
-/

namespace A082741.P14914699500863776077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064532 n : ℚ) / (A004155 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A082741.P14914699500863776077

namespace A082741

/-- `eq[A064532(n)/A004155(n), A316864(n)]` -/
def P14914699500863776077.Spec : Prop :=
  ∀ n, (P14914699500863776077.a n : ℤ) = A082741 (n + 1)

end A082741

/-!
# A082742: Indices of occurrences of 2 in A004738.

The programs for A082742, the canonical program `A082742.P3759816296504135577` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082742 has offset 1).

The definition of A082742 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134519, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082742.P3759816296504135577

`2*A134519(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082742

/-- `2*A134519(n+1)` -/
def P3759816296504135577.Spec : Prop :=
  ∀ n, P3759816296504135577.a n = A082742 (n + 1)

theorem P3759816296504135577.correct : P3759816296504135577.Spec := by
  intro n
  simp only [A082742, Nat.add_sub_cancel]

end A082742

/-! ## A082742.P9657614195680095290

`∑[gcd(1-n, n%2)+1]`
-/

namespace A082742.P9657614195680095290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ((n % 2 : ℕ) : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082742.P9657614195680095290

namespace A082742

/-- `∑[gcd(1-n, n%2)+1]` -/
def P9657614195680095290.Spec : Prop :=
  ∀ n, (P9657614195680095290.a n : ℤ) = A082742 (n + 1)

end A082742

/-! ## A082742.P2248172018151705036

`∑[gcd(n-1, and(1, n))+1]`
-/

namespace A082742.P2248172018151705036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (Nat.land 1 n : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082742.P2248172018151705036

namespace A082742

/-- `∑[gcd(n-1, and(1, n))+1]` -/
def P2248172018151705036.Spec : Prop :=
  ∀ n, (P2248172018151705036.a n : ℤ) = A082742 (n + 1)

end A082742

/-! ## A082742.P15625990249846640970

`∑[(3*n)%or(1, n)+2]`
-/

namespace A082742.P15625990249846640970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n % Nat.lor 1 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082742.P15625990249846640970

namespace A082742

/-- `∑[(3*n)%or(1, n)+2]` -/
def P15625990249846640970.Spec : Prop :=
  ∀ n, (P15625990249846640970.a n : ℤ) = A082742 (n + 1)

end A082742

/-! ## A082742.P4353609138033601259

`or(1, ∑[C(or(1, n), n)])+1`
-/

namespace A082742.P4353609138033601259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A082742.P4353609138033601259

namespace A082742

/-- `or(1, ∑[C(or(1, n), n)])+1` -/
def P4353609138033601259.Spec : Prop :=
  ∀ n, (P4353609138033601259.a n : ℤ) = A082742 (n + 1)

end A082742

/-! ## A082742.P15603201520860893226

`2*(∑[gcd(n, floor(n/2))]+1)`
-/

namespace A082742.P15603201520860893226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A082742.P15603201520860893226

namespace A082742

/-- `2*(∑[gcd(n, floor(n/2))]+1)` -/
def P15603201520860893226.Spec : Prop :=
  ∀ n, (P15603201520860893226.a n : ℤ) = A082742 (n + 1)

end A082742

/-! ## A082742.P7353254443201247698

`a(n-2)+or(1, n)+1` with `a(0)=2, a(1)=4`
-/

namespace A082742.P7353254443201247698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) + (Nat.lor 1 n + 1)

end

end A082742.P7353254443201247698

namespace A082742

/-- `a(n-2)+or(1, n)+1` -/
def P7353254443201247698.Spec : Prop :=
  ∀ n, (P7353254443201247698.a n : ℤ) = A082742 (n + 1)

end A082742

/-! ## A082742.P7110121367101443613

`∑[gcd(or(1, n)-1, 2*n)]+2`
-/

namespace A082742.P7110121367101443613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((Nat.lor 1 n : ℤ) - 1) (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A082742.P7110121367101443613

namespace A082742

/-- `∑[gcd(or(1, n)-1, 2*n)]+2` -/
def P7110121367101443613.Spec : Prop :=
  ∀ n, (P7110121367101443613.a n : ℤ) = A082742 (n + 1)

end A082742

/-! ## A082742.P3851004639411422974

`∑[lcm(2, n^and(1, n+1))]+2`
-/

namespace A082742.P3851004639411422974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n ^ Nat.land 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A082742.P3851004639411422974

namespace A082742

/-- `∑[lcm(2, n^and(1, n+1))]+2` -/
def P3851004639411422974.Spec : Prop :=
  ∀ n, (P3851004639411422974.a n : ℤ) = A082742 (n + 1)

end A082742

/-! ## A082742.P11296958318934353507

`∑[2*floor(n/a(n-1))]` with `a(0)=2, a(1)=2`
-/

namespace A082742.P11296958318934353507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 * ⌊(n : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082742.P11296958318934353507

namespace A082742

/-- `∑[2*floor(n/a(n-1))]` -/
def P11296958318934353507.Spec : Prop :=
  ∀ n, P11296958318934353507.a n = A082742 (n + 1)

end A082742

/-! ## A082742.P17865071056489365471

`∑[n-(n-2)%a(n-1)]` with `a(0)=2`
-/

namespace A082742.P17865071056489365471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) - Int.tmod ((n : ℤ) - 2) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082742.P17865071056489365471

namespace A082742

/-- `∑[n-(n-2)%a(n-1)]` -/
def P17865071056489365471.Spec : Prop :=
  ∀ n, P17865071056489365471.a n = A082742 (n + 1)

end A082742

/-! ## A082742.P124411151769792134

`∑[abs(1-n*char[2*n])+1]`
-/

namespace A082742.P124411151769792134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((n * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082742.P124411151769792134

namespace A082742

/-- `∑[abs(1-n*char[2*n])+1]` -/
def P124411151769792134.Spec : Prop :=
  ∀ n, P124411151769792134.a n = A082742 (n + 1)

end A082742

/-! ## A082742.P14035612275069595996

`∪[∑[2*n], n*(n+3)]+2`
-/

namespace A082742.P14035612275069595996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n + 2

end

end A082742.P14035612275069595996

namespace A082742

/-- `∪[∑[2*n], n*(n+3)]+2` -/
def P14035612275069595996.Spec : Prop :=
  ∀ n, (P14035612275069595996.a n : ℤ) = A082742 (n + 1)

end A082742

/-! ## A082742.P7205945311980169720

`a(n-2)+and(n+2, -2)` with `a(0)=2, a(1)=4`
-/

namespace A082742.P7205945311980169720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) + Int.land (n + 2 : ℤ) (-2)

end

end A082742.P7205945311980169720

namespace A082742

/-- `a(n-2)+and(n+2, -2)` -/
def P7205945311980169720.Spec : Prop :=
  ∀ n, P7205945311980169720.a n = A082742 (n + 1)

end A082742

/-! ## A082742.P2429882839841011720

`∑[(n-1)^and(1, n+1)]+n+3`
-/

namespace A082742.P2429882839841011720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)

end

end A082742.P2429882839841011720

namespace A082742

/-- `∑[(n-1)^and(1, n+1)]+n+3` -/
def P2429882839841011720.Spec : Prop :=
  ∀ n, P2429882839841011720.a n = A082742 (n + 1)

end A082742

/-! ## A082742.P18055459860754013642

`∑[lcm(n-2, and(1, n+1))]+2*n`
-/

namespace A082742.P18055459860754013642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 2) (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n

end

end A082742.P18055459860754013642

namespace A082742

/-- `∑[lcm(n-2, and(1, n+1))]+2*n` -/
def P18055459860754013642.Spec : Prop :=
  ∀ n, (P18055459860754013642.a n : ℤ) = A082742 (n + 1)

end A082742

/-! ## A082742.P7021453772799117472

`∪[(n+1)*(n+2), n²+2+n]`
-/

namespace A082742.P7021453772799117472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A082742.P7021453772799117472

namespace A082742

/-- `∪[(n+1)*(n+2), n²+2+n]` -/
def P7021453772799117472.Spec : Prop :=
  ∀ n, (P7021453772799117472.a n : ℤ) = A082742 (n + 1)

end A082742

/-! ## A082742.P5134062932779027932

`∑[∑[2-a(n-1)]]+2-a(n-1)` with `a(0)=2`
-/

namespace A082742.P5134062932779027932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - a (n - 1))

end

end A082742.P5134062932779027932

namespace A082742

/-- `∑[∑[2-a(n-1)]]+2-a(n-1)` -/
def P5134062932779027932.Spec : Prop :=
  ∀ n, P5134062932779027932.a n = A082742 (n + 1)

end A082742

/-! ## A082742.P7925436206377660384

`2-(a(n-1)-∑[∑[2-a(n-1)]])` with `a(0)=2`
-/

namespace A082742.P7925436206377660384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - (a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082742.P7925436206377660384

namespace A082742

/-- `2-(a(n-1)-∑[∑[2-a(n-1)]])` -/
def P7925436206377660384.Spec : Prop :=
  ∀ n, P7925436206377660384.a n = A082742 (n + 1)

end A082742

/-! ## A082742.P10234877779854990684

`A264754(n)+1`
-/

namespace A082742.P10234877779854990684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264754 n + 1

end

end A082742.P10234877779854990684

namespace A082742

/-- `A264754(n)+1` -/
def P10234877779854990684.Spec : Prop :=
  ∀ n, P10234877779854990684.a n = A082742 (n + 1)

end A082742

/-!
# A082743: a(0)=1, a(1)=2; for n >= 2, a(n) is smallest palindrome greater than 1 which is congruent to 1 (mod n).

The programs for A082743, there is no canonical definition to state claims against.
-/

/-! ## A082743.P14982119726040956184

`n*A082744(C(2, n)+n)+1`
-/

namespace A082743.P14982119726040956184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A082744 (Nat.choose 2 n + n) + 1

end

end A082743.P14982119726040956184

/-! ## A082743.P14148250584649414227

`n*A082744(floor(acot(n)+n))+1`
-/

namespace A082743.P14148250584649414227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A082744 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1

end

end A082743.P14148250584649414227

/-! ## A082743.P7561813335895001008

`n*A082744(abs(1-n)+1)+1`
-/

namespace A082743.P7561813335895001008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A082744 (|1 - (n : ℤ)| + 1).toNat + 1

end

end A082743.P7561813335895001008

/-! ## A082743.P12027282639289680773

`1+n*A082744(A028310(n))`
-/

namespace A082743.P12027282639289680773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (n : ℤ) * A082744 (A028310 n).toNat

end

end A082743.P12027282639289680773

/-!
# A082744: Smallest k such that n*k + 1 is a palindrome.

The programs for A082744, there is no canonical definition to state claims against.
-/

/-! ## A082744.P10027169801429339384

`(A082743(n+1)-1)/(n+1)`
-/

namespace A082744.P10027169801429339384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082743 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A082744.P10027169801429339384

/-!
# A082746: For n odd, a(n) is the least positive integer not already used. For n even, a(n) is the least positive integer not already used that is coprime to a(n/2).

The programs for A082746, there is no canonical definition to state claims against.
-/

/-! ## A082746.P416740310229652215

`A098311(n+1)-A025469(A007661(n))`
-/

namespace A082746.P416740310229652215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098311 (n + 1) - A025469 (A007661 n).toNat

end

end A082746.P416740310229652215

/-! ## A082746.P11423710019184574041

`A098313(n+1)-A025469(A007661(n))`
-/

namespace A082746.P11423710019184574041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098313 (n + 1) - A025469 (A007661 n).toNat

end

end A082746.P11423710019184574041

/-! ## A082746.P4714073909531072276

`A098311(n+1)-A025469(A112840(n))`
-/

namespace A082746.P4714073909531072276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098311 (n + 1) - A025469 (A112840 n).toNat

end

end A082746.P4714073909531072276

/-! ## A082746.P14769440328578531038

`A098311(A077168(n))`
-/

namespace A082746.P14769440328578531038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098311 (A077168 n).toNat

end

end A082746.P14769440328578531038

/-! ## A082746.P15721317936662089368

`A098311(n+1)%A371375(3*n+2)`
-/

namespace A082746.P15721317936662089368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098311 (n + 1)) (A371375 (3 * n + 2))

end

end A082746.P15721317936662089368

/-!
# A082747: a(n) is the least k such that k*Mrs(n)*Mrs(n+1)*Mrs(n+2) + 1 is prime, where Mrs(n) is the n-th Mersenne prime.

The programs for A082747, there is no canonical definition to state claims against.
-/

/-! ## A082747.P14848180763634249985

`lcm(A287745(n), A347865(A290423(n)²))`
-/

namespace A082747.P14848180763634249985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A287745 n) (A347865 (A290423 n ^ 2).toNat)

end

end A082747.P14848180763634249985

/-! ## A082747.P974846228753581222

`A241477(A191891(n+1)+A002851(n))`
-/

namespace A082747.P974846228753581222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241477 (A191891 (n + 1) + A002851 n).toNat

end

end A082747.P974846228753581222

/-!
# A082749: Difference between the sum of next prime(n) natural numbers and the sum of next n primes.

The programs for A082749, there is no canonical definition to state claims against.
-/

/-! ## A082749.P6343493794274824994

`(A061802(n)+1)*A000040(n+1)/2-A007468(n+1)`
-/

namespace A082749.P6343493794274824994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A061802 n + 1) * A000040 (n + 1) : ℚ) / 2 - (A007468 (n + 1) : ℚ)

end

end A082749.P6343493794274824994

/-! ## A082749.P12490411718414895508

`A034956(n+1)-A007468(n+1)`
-/

namespace A082749.P12490411718414895508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) - A007468 (n + 1)

end

end A082749.P12490411718414895508

/-! ## A082749.P8913085398724735248

`A034956(n+1)-Δ[A007504(∑[n])]`
-/

namespace A082749.P8913085398724735248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) - (f1 (n + 1) - f1 n)

end

end A082749.P8913085398724735248

/-! ## A082749.P13615095912790653049

`A034956(n+1)-Δ[A014284(∑[n]+1)]`
-/

namespace A082749.P13615095912790653049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) - (f1 (n + 1) - f1 n)

end

end A082749.P13615095912790653049

/-! ## A082749.P15821141639434790291

`A034956(n+1)-Δ[A036439(∑[n]+1)]`
-/

namespace A082749.P15821141639434790291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) - (f1 (n + 1) - f1 n)

end

end A082749.P15821141639434790291

/-! ## A082749.P518134270278053547

`A034956(n+1)-Δ[A175965(∑[n]+2)]`
-/

namespace A082749.P518134270278053547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) - (f1 (n + 1) - f1 n)

end

end A082749.P518134270278053547

/-!
# A082754: Triangle read by rows: T(n, k) = abs(n^k-k^n), 1<=k<=n.

The programs for A082754, the canonical program `A082754.P265240365781171277` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082754 has offset 1).

The definition of A082754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082754.P9675527521574851764

`abs(A075363(n+1)-A089072(n+1))`
-/

namespace A082754.P9675527521574851764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075363 (n + 1) - A089072 (n + 1)|

end

end A082754.P9675527521574851764

namespace A082754

/-- `abs(A075363(n+1)-A089072(n+1))` -/
def P9675527521574851764.Spec : Prop :=
  ∀ n, P9675527521574851764.a n = A082754 (n + 1)

end A082754

/-! ## A082754.P265240365781171277

`abs(A076014(A014132(n+1))-A075363(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A082754

/-- `abs(A076014(A014132(n+1))-A075363(n+1))` -/
def P265240365781171277.Spec : Prop :=
  ∀ n, P265240365781171277.a n = A082754 (n + 1)

theorem P265240365781171277.correct : P265240365781171277.Spec := by
  intro n
  simp only [A082754, Nat.add_sub_cancel]

end A082754

/-! ## A082754.P4594217514952824236

`abs(A220417(A245300(n)+1))`
-/

namespace A082754.P4594217514952824236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A220417 (A245300 n + 1).toNat|

end

end A082754.P4594217514952824236

namespace A082754

/-- `abs(A220417(A245300(n)+1))` -/
def P4594217514952824236.Spec : Prop :=
  ∀ n, P4594217514952824236.a n = A082754 (n + 1)

end A082754

/-! ## A082754.P8202382873548756454

`lcm(A020985(n), A220417(A245300(n)+1))`
-/

namespace A082754.P8202382873548756454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A220417 (A245300 n + 1).toNat)

end

end A082754.P8202382873548756454

namespace A082754

/-- `lcm(A020985(n), A220417(A245300(n)+1))` -/
def P8202382873548756454.Spec : Prop :=
  ∀ n, (P8202382873548756454.a n : ℤ) = A082754 (n + 1)

end A082754

/-! ## A082754.P1717084458910735291

`lcm(-A220417(A245300(n)+1), A087960(n)²)`
-/

namespace A082754.P1717084458910735291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A220417 (A245300 n + 1).toNat) (A087960 n ^ 2)

end

end A082754.P1717084458910735291

namespace A082754

/-- `lcm(-A220417(A245300(n)+1), A087960(n)²)` -/
def P1717084458910735291.Spec : Prop :=
  ∀ n, (P1717084458910735291.a n : ℤ) = A082754 (n + 1)

end A082754

/-!
# A082755: Smaller of a pair of consecutive primes having only prime digits.

The programs for A082755, there is no canonical definition to state claims against.
-/

/-! ## A082755.P15682731101750298615

`A008578(A000720(p?[A082756(n+1)]))`
-/

namespace A082755.P15682731101750298615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A082755.P15682731101750298615

/-! ## A082755.P2806055824272220589

`A008578(A061395(p?[A082756(n+1)]))`
-/

namespace A082755.P2806055824272220589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A082755.P2806055824272220589

/-! ## A082755.P16166739823807317036

`A008578(∑{p}[A082756(n+1), A000720(#)])`
-/

namespace A082755.P16166739823807317036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A082755.P16166739823807317036

/-! ## A082755.P1781497229480027103

`A008578(∑{p}[A082756(n+1), A061395(#)])`
-/

namespace A082755.P1781497229480027103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p).toNat

end

end A082755.P1781497229480027103

/-!
# A082756: Larger of a pair of consecutive primes having only prime digits.

The programs for A082756, there is no canonical definition to state claims against.
-/

/-! ## A082756.P11488547441366603060

`A151800(A082755(n+1))`
-/

namespace A082756.P11488547441366603060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A082755 (n + 1)).toNat

end

end A082756.P11488547441366603060

/-! ## A082756.P13826069730202703867

`∩[A019546(n+1), A151800(A019546(n+1))]`
-/

namespace A082756.P13826069730202703867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A019546 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082756.P13826069730202703867

/-! ## A082756.P279314838162460994

`A003961(p?[A082755(n+1)])`
-/

namespace A082756.P279314838162460994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082756.P279314838162460994

/-! ## A082756.P15208174089759074116

`A045965(p?[A082755(n+1)])`
-/

namespace A082756.P15208174089759074116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082756.P15208174089759074116

/-! ## A082756.P3123717714400023427

`A117366(p?[A082755(n+1)])`
-/

namespace A082756.P3123717714400023427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082756.P3123717714400023427

/-!
# A082757: Possible integer ratios of A/B, where A and B have no 0 in their decimal representation, all decimal digits of A and B are different and each digit is used only once.

The programs for A082757, there is no canonical definition to state claims against.
-/

/-! ## A082757.P9454027758026580778

`lt[0, A054383(n+1)]+1`
-/

namespace A082757.P9454027758026580778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054383 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A082757.P9454027758026580778

/-! ## A082757.P1746535284291260855

`lt[0, A054383(A028310(n))]`
-/

namespace A082757.P1746535284291260855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054383 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A082757.P1746535284291260855

/-! ## A082757.P204738934843916299

`A020725(lt[0, A054383(n+1)])`
-/

namespace A082757.P204738934843916299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A082757.P204738934843916299

/-! ## A082757.P7809455650480179331

`lt[A252464(A116931(n+1)), A004086(n)]`
-/

namespace A082757.P7809455650480179331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A116931 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082757.P7809455650480179331

/-! ## A082757.P1611078659204687364

`lt[A262923(A241035(n)), A031347(n)]`
-/

namespace A082757.P1611078659204687364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262923 (A241035 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082757.P1611078659204687364

/-!
# A082758: Sum of the squares of the trinomial coefficients (A027907).

The programs for A082758, the canonical program `A082758.P14985198981559143875` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082758 has offset 0).

The definition of A082758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082758.P14985198981559143875

`A002426(2*n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082758

/-- `A002426(2*n)` -/
def P14985198981559143875.Spec : Prop :=
  ∀ n, P14985198981559143875.a n = A082758 n

theorem P14985198981559143875.correct : P14985198981559143875.Spec := by
  intro n
  simp only [A082758]

end A082758

/-! ## A082758.P16442917465720526740

`A273020(2*n)`
-/

namespace A082758.P16442917465720526740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273020 (2 * n)

end

end A082758.P16442917465720526740

namespace A082758

/-- `A273020(2*n)` -/
def P16442917465720526740.Spec : Prop :=
  ∀ n, P16442917465720526740.a n = A082758 n

end A082758

/-! ## A082758.P11261133208546911292

`A005213(4*n)`
-/

namespace A082758.P11261133208546911292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (4 * n)

end

end A082758.P11261133208546911292

namespace A082758

/-- `A005213(4*n)` -/
def P11261133208546911292.Spec : Prop :=
  ∀ n, P11261133208546911292.a n = A082758 n

end A082758

/-! ## A082758.P12477363753900494669

`record[∑[A085455(n)]]`
-/

namespace A082758.P12477363753900494669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085455 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082758.P12477363753900494669

namespace A082758

/-- `record[∑[A085455(n)]]` -/
def P12477363753900494669.Spec : Prop :=
  ∀ n, P12477363753900494669.a n = A082758 n

end A082758

/-! ## A082758.P15291508912146300467

`∑[A105696(2*n)]`
-/

namespace A082758.P15291508912146300467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105696 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082758.P15291508912146300467

namespace A082758

/-- `∑[A105696(2*n)]` -/
def P15291508912146300467.Spec : Prop :=
  ∀ n, P15291508912146300467.a n = A082758 n

end A082758

/-! ## A082758.P8965384512365657219

`record[Δ[n*A099323(n)]]`
-/

namespace A082758.P8965384512365657219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082758.P8965384512365657219

namespace A082758

/-- `record[Δ[n*A099323(n)]]` -/
def P8965384512365657219.Spec : Prop :=
  ∀ n, P8965384512365657219.a n = A082758 n

end A082758

/-! ## A082758.P11877105510617145491

`2*A097861(2*n)+1`
-/

namespace A082758.P11877105510617145491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097861 (2 * n) + 1

end

end A082758.P11877105510617145491

namespace A082758

/-- `2*A097861(2*n)+1` -/
def P11877105510617145491.Spec : Prop :=
  ∀ n, P11877105510617145491.a n = A082758 n

end A082758

/-! ## A082758.P8453055885758472045

`2*A246437(2*n)-1`
-/

namespace A082758.P8453055885758472045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246437 (2 * n) - 1

end

end A082758.P8453055885758472045

namespace A082758

/-- `2*A246437(2*n)-1` -/
def P8453055885758472045.Spec : Prop :=
  ∀ n, P8453055885758472045.a n = A082758 n

end A082758

/-! ## A082758.P10573401508839609509

`2*A257520(2*n)-1`
-/

namespace A082758.P10573401508839609509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257520 (2 * n) - 1

end

end A082758.P10573401508839609509

namespace A082758

/-- `2*A257520(2*n)-1` -/
def P10573401508839609509.Spec : Prop :=
  ∀ n, P10573401508839609509.a n = A082758 n

end A082758

/-! ## A082758.P4221853174268209402

`record[A002426(n)/(-1)^n]`
-/

namespace A082758.P4221853174268209402
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002426 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082758.P4221853174268209402

namespace A082758

/-- `record[A002426(n)/(-1)^n]` -/
def P4221853174268209402.Spec : Prop :=
  ∀ n, P4221853174268209402.a n = (A082758 n : ℚ)

end A082758

/-! ## A082758.P9462021241070423070

`record[A002426(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A082758.P9462021241070423070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A002426 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082758.P9462021241070423070

namespace A082758

/-- `record[A002426(C(n, a(n-1)))]` -/
def P9462021241070423070.Spec : Prop :=
  ∀ n, P9462021241070423070.a n = A082758 n

end A082758

/-! ## A082758.P3936499920241569862

`record[A002426(A014681(n))]`
-/

namespace A082758.P3936499920241569862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082758.P3936499920241569862

namespace A082758

/-- `record[A002426(A014681(n))]` -/
def P3936499920241569862.Spec : Prop :=
  ∀ n, P3936499920241569862.a n = A082758 n

end A082758

/-! ## A082758.P2621353327723358377

`record[A002426(A029578(n))]`
-/

namespace A082758.P2621353327723358377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082758.P2621353327723358377

namespace A082758

/-- `record[A002426(A029578(n))]` -/
def P2621353327723358377.Spec : Prop :=
  ∀ n, P2621353327723358377.a n = A082758 n

end A082758

/-! ## A082758.P7371623875680004062

`record[A005213(A042948(n))]`
-/

namespace A082758.P7371623875680004062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082758.P7371623875680004062

namespace A082758

/-- `record[A005213(A042948(n))]` -/
def P7371623875680004062.Spec : Prop :=
  ∀ n, P7371623875680004062.a n = A082758 n

end A082758

/-! ## A082758.P5827576515257596307

`record[A002426(A230641(n))]`
-/

namespace A082758.P5827576515257596307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (A230641 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082758.P5827576515257596307

namespace A082758

/-- `record[A002426(A230641(n))]` -/
def P5827576515257596307.Spec : Prop :=
  ∀ n, P5827576515257596307.a n = A082758 n

end A082758

/-! ## A082758.P15931018978968025372

`or(1, A002426(A004277(n)))`
-/

namespace A082758.P15931018978968025372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002426 (A004277 n).toNat)

end

end A082758.P15931018978968025372

namespace A082758

/-- `or(1, A002426(A004277(n)))` -/
def P15931018978968025372.Spec : Prop :=
  ∀ n, P15931018978968025372.a n = A082758 n

end A082758

/-! ## A082758.P6529506026002829923

`A372342(2*n+1)+A372342(2*n)`
-/

namespace A082758.P6529506026002829923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372342 (2 * n + 1) + A372342 (2 * n)

end

end A082758.P6529506026002829923

namespace A082758

/-- `A372342(2*n+1)+A372342(2*n)` -/
def P6529506026002829923.Spec : Prop :=
  ∀ n, P6529506026002829923.a n = A082758 n

end A082758

/-! ## A082758.P7383878390043615812

`A005717(2*n+1)-A005774(2*n)`
-/

namespace A082758.P7383878390043615812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (2 * n + 1) - A005774 (2 * n)

end

end A082758.P7383878390043615812

namespace A082758

/-- `A005717(2*n+1)-A005774(2*n)` -/
def P7383878390043615812.Spec : Prop :=
  ∀ n, P7383878390043615812.a n = A082758 n

end A082758

/-! ## A082758.P9106348706634914027

`A092690(2*n)-A132894(2*n)`
-/

namespace A082758.P9106348706634914027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092690 (2 * n) - A132894 (2 * n)

end

end A082758.P9106348706634914027

namespace A082758

/-- `A092690(2*n)-A132894(2*n)` -/
def P9106348706634914027.Spec : Prop :=
  ∀ n, P9106348706634914027.a n = A082758 n

end A082758

/-! ## A082758.P6823414879835740827

`2*A027914(2*n)-A000244(n)²`
-/

namespace A082758.P6823414879835740827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027914 (2 * n) - A000244 n ^ 2

end

end A082758.P6823414879835740827

namespace A082758

/-- `2*A027914(2*n)-A000244(n)²` -/
def P6823414879835740827.Spec : Prop :=
  ∀ n, P6823414879835740827.a n = A082758 n

end A082758

/-!
# A082759: a(n) = Sum_{k = 0..n} binomial(n,k)*trinomial(n,k), where trinomial(n,k) = trinomial coefficients.

The programs for A082759, there is no canonical definition to state claims against.
-/

/-! ## A082759.P16401361369768683564

`A099602(∑[4*n])`
-/

namespace A082759.P16401361369768683564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099602 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082759.P16401361369768683564

/-! ## A082759.P824508549191765297

`A115990(∑[4*n])`
-/

namespace A082759.P824508549191765297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082759.P824508549191765297

/-! ## A082759.P1811994000657753428

`or(char[3], A115990(A046092(n)))`
-/

namespace A082759.P1811994000657753428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A115990 (A046092 n).toNat)

end

end A082759.P1811994000657753428

/-! ## A082759.P15879276983330477660

`gcd(A000038(n), A115990(A046092(n)))`
-/

namespace A082759.P15879276983330477660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A115990 (A046092 n).toNat)

end

end A082759.P15879276983330477660

/-! ## A082759.P9643767816316964760

`A115990(A046092(n))%Δ[A002893(n)]`
-/

namespace A082759.P9643767816316964760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115990 (A046092 n).toNat) (f1 (n + 1) - f1 n)

end

end A082759.P9643767816316964760

/-! ## A082759.P12541521451799228726

`A052409(A020639(n+2))*A115990(A046092(n))`
-/

namespace A082759.P12541521451799228726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A020639 (n + 2)).toNat * A115990 (A046092 n).toNat

end

end A082759.P12541521451799228726

/-! ## A082759.P8518017276405822336

`record[A115990(A057979(n²))]`
-/

namespace A082759.P8518017276405822336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 (A057979 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082759.P8518017276405822336

/-!
# A082761: Trinomial transform of the Fibonacci numbers (A000045).

The programs for A082761, the canonical program `A082761.P12374787569396649815` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082761 has offset 0).

The definition of A082761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082761.P12374787569396649815

`6*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082761

/-- `6*a(n-1)-4*a(n-2)` -/
def P12374787569396649815.Spec : Prop :=
  ∀ n, P12374787569396649815.a n = A082761 n

theorem P12374787569396649815.correct : P12374787569396649815.Spec := by
  intro n
  simp only [A082761]

end A082761

/-! ## A082761.P7610213346787839108

`2^n*A001519(n+1)`
-/

namespace A082761.P7610213346787839108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001519 (n + 1)

end

end A082761.P7610213346787839108

namespace A082761

/-- `2^n*A001519(n+1)` -/
def P7610213346787839108.Spec : Prop :=
  ∀ n, P7610213346787839108.a n = A082761 n

end A082761

/-! ## A082761.P15612120427247257365

`((1+sqrt(5))*(3+sqrt(5))^n-(1-sqrt(5))*(3-sqrt(5))^n)/(2*sqrt(5))`
-/

namespace A082761.P15612120427247257365
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (5 : ℝ)) * (3 + Real.sqrt (5 : ℝ)) ^ n - (1 - Real.sqrt (5 : ℝ)) * (3 - Real.sqrt (5 : ℝ)) ^ n) / (2 * Real.sqrt (5 : ℝ))

end

end A082761.P15612120427247257365

namespace A082761

/-- `((1+sqrt(5))*(3+sqrt(5))^n-(1-sqrt(5))*(3-sqrt(5))^n)/(2*sqrt(5))` -/
def P15612120427247257365.Spec : Prop :=
  ∀ n, P15612120427247257365.a n = (A082761 n : ℝ)

end A082761

/-! ## A082761.P14593214578679367496

`ogf((1-2x)/(1-6x+4x^2))`
-/

namespace A082761.P14593214578679367496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -6, 4] n

end

end A082761.P14593214578679367496

namespace A082761

/-- `ogf((1-2x)/(1-6x+4x^2))` -/
def P14593214578679367496.Spec : Prop :=
  ∀ n, P14593214578679367496.a n = A082761 n

end A082761

/-! ## A082761.P9599333413958217953

`2*floor(ϕ²*a(n-1))` with `a(0)=1`
-/

namespace A082761.P9599333413958217953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋

end

end A082761.P9599333413958217953

namespace A082761

/-- `2*floor(ϕ²*a(n-1))` -/
def P9599333413958217953.Spec : Prop :=
  ∀ n, P9599333413958217953.a n = A082761 n

end A082761

/-! ## A082761.P17553972343172295761

`2*floor(ϕ*ϕ*a(n-1))` with `a(0)=1`
-/

namespace A082761.P17553972343172295761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ⌊Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A082761.P17553972343172295761

namespace A082761

/-- `2*floor(ϕ*ϕ*a(n-1))` -/
def P17553972343172295761.Spec : Prop :=
  ∀ n, P17553972343172295761.a n = A082761 n

end A082761

/-! ## A082761.P3736206588091441977

`A099603(2*n)`
-/

namespace A082761.P3736206588091441977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099603 (2 * n)

end

end A082761.P3736206588091441977

namespace A082761

/-- `A099603(2*n)` -/
def P3736206588091441977.Spec : Prop :=
  ∀ n, P3736206588091441977.a n = A082761 n

end A082761

/-! ## A082761.P16719227855103112967

`A080878(Δ[n²])`
-/

namespace A082761.P16719227855103112967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080878 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A082761.P16719227855103112967

namespace A082761

/-- `A080878(Δ[n²])` -/
def P16719227855103112967.Spec : Prop :=
  ∀ n, P16719227855103112967.a n = A082761 n

end A082761

/-! ## A082761.P14732255474424330387

`2^n*A122367(n)`
-/

namespace A082761.P14732255474424330387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A122367 n

end

end A082761.P14732255474424330387

namespace A082761

/-- `2^n*A122367(n)` -/
def P14732255474424330387.Spec : Prop :=
  ∀ n, P14732255474424330387.a n = A082761 n

end A082761

/-! ## A082761.P6315721125479198028

`2^n*A000045(Δ[n²])`
-/

namespace A082761.P6315721125479198028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A082761.P6315721125479198028

namespace A082761

/-- `2^n*A000045(Δ[n²])` -/
def P6315721125479198028.Spec : Prop :=
  ∀ n, P6315721125479198028.a n = A082761 n

end A082761

/-! ## A082761.P2874011852219180038

`2^n*Δ[A000045(2*n)]`
-/

namespace A082761.P2874011852219180038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A082761.P2874011852219180038

namespace A082761

/-- `2^n*Δ[A000045(2*n)]` -/
def P2874011852219180038.Spec : Prop :=
  ∀ n, P2874011852219180038.a n = A082761 n

end A082761

/-! ## A082761.P2985774370770679903

`2^(n-1)*A052995(n+1)`
-/

namespace A082761.P2985774370770679903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A052995 (n + 1) : ℚ)

end

end A082761.P2985774370770679903

namespace A082761

/-- `2^(n-1)*A052995(n+1)` -/
def P2985774370770679903.Spec : Prop :=
  ∀ n, P2985774370770679903.a n = (A082761 n : ℚ)

end A082761

/-! ## A082761.P1981542889485486072

`2^(n-1)*A055819(n+1)`
-/

namespace A082761.P1981542889485486072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A055819 (n + 1) : ℚ)

end

end A082761.P1981542889485486072

namespace A082761

/-- `2^(n-1)*A055819(n+1)` -/
def P1981542889485486072.Spec : Prop :=
  ∀ n, P1981542889485486072.a n = (A082761 n : ℚ)

end A082761

/-! ## A082761.P10937505119965804268

`2^n*record[A000045(n^(n%2))]`
-/

namespace A082761.P10937505119965804268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082761.P10937505119965804268

namespace A082761

/-- `2^n*record[A000045(n^(n%2))]` -/
def P10937505119965804268.Spec : Prop :=
  ∀ n, P10937505119965804268.a n = A082761 n

end A082761

/-! ## A082761.P16136224770687526913

`A098648(n)+A084326(n)`
-/

namespace A082761.P16136224770687526913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098648 n + A084326 n

end

end A082761.P16136224770687526913

namespace A082761

/-- `A098648(n)+A084326(n)` -/
def P16136224770687526913.Spec : Prop :=
  ∀ n, P16136224770687526913.a n = A082761 n

end A082761

/-! ## A082761.P3994976257666518487

`A011782(n)*A126358(n)`
-/

namespace A082761.P3994976257666518487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A126358 n

end

end A082761.P3994976257666518487

namespace A082761

/-- `A011782(n)*A126358(n)` -/
def P3994976257666518487.Spec : Prop :=
  ∀ n, P3994976257666518487.a n = A082761 n

end A082761

/-! ## A082761.P14950035347865027861

`A099496(n)*A122803(n)`
-/

namespace A082761.P14950035347865027861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n * A122803 n

end

end A082761.P14950035347865027861

namespace A082761

/-- `A099496(n)*A122803(n)` -/
def P14950035347865027861.Spec : Prop :=
  ∀ n, P14950035347865027861.a n = A082761 n

end A082761

/-! ## A082761.P15760792252164401428

`lcm(A099496(n), A137717(n))`
-/

namespace A082761.P15760792252164401428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099496 n) (A137717 n)

end

end A082761.P15760792252164401428

namespace A082761

/-- `lcm(A099496(n), A137717(n))` -/
def P15760792252164401428.Spec : Prop :=
  ∀ n, (P15760792252164401428.a n : ℤ) = A082761 n

end A082761

/-! ## A082761.P12917630654869622120

`A154626(n)+2*A084326(n)`
-/

namespace A082761.P12917630654869622120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154626 n + 2 * A084326 n

end

end A082761.P12917630654869622120

namespace A082761

/-- `A154626(n)+2*A084326(n)` -/
def P12917630654869622120.Spec : Prop :=
  ∀ n, P12917630654869622120.a n = A082761 n

end A082761

/-! ## A082761.P8748759948969588349

`A001519(n+1)*A011782(n+1)`
-/

namespace A082761.P8748759948969588349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) * A011782 (n + 1)

end

end A082761.P8748759948969588349

namespace A082761

/-- `A001519(n+1)*A011782(n+1)` -/
def P8748759948969588349.Spec : Prop :=
  ∀ n, P8748759948969588349.a n = A082761 n

end A082761

/-!
# A082762: Trinomial transform of Lucas numbers (A000032).

The programs for A082762, the canonical program `A082762.P2252837519886206108` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082762 has offset 0).

The definition of A082762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082762.P2252837519886206108

`2^n*A002878(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082762

/-- `2^n*A002878(n)` -/
def P2252837519886206108.Spec : Prop :=
  ∀ n, P2252837519886206108.a n = A082762 n

theorem P2252837519886206108.correct : P2252837519886206108.Spec := by
  intro n
  simp only [A082762]

end A082762

/-! ## A082762.P5589992980998957372

`ogf((1+2x)/(1-6x+4x^2))`
-/

namespace A082762.P5589992980998957372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -6, 4] n

end

end A082762.P5589992980998957372

namespace A082762

/-- `ogf((1+2x)/(1-6x+4x^2))` -/
def P5589992980998957372.Spec : Prop :=
  ∀ n, P5589992980998957372.a n = A082762 n

end A082762

/-! ## A082762.P8507301333481326350

`2^n*Δ[floor((ϕ^n)²)]`
-/

namespace A082762.P8507301333481326350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A082762.P8507301333481326350

namespace A082762

/-- `2^n*Δ[floor((ϕ^n)²)]` -/
def P8507301333481326350.Spec : Prop :=
  ∀ n, P8507301333481326350.a n = A082762 n

end A082762

/-! ## A082762.P5658309608114674473

`6*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A082762.P5658309608114674473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  6 * a (n - 1) - 4 * a (n - 2)

end

end A082762.P5658309608114674473

namespace A082762

/-- `6*a(n-1)-4*a(n-2)` -/
def P5658309608114674473.Spec : Prop :=
  ∀ n, P5658309608114674473.a n = A082762 n

end A082762

/-! ## A082762.P2738803288883972240

`A000032(2*n+1)/2^-n`
-/

namespace A082762.P2738803288883972240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + 1) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A082762.P2738803288883972240

namespace A082762

/-- `A000032(2*n+1)/2^-n` -/
def P2738803288883972240.Spec : Prop :=
  ∀ n, P2738803288883972240.a n = (A082762 n : ℚ)

end A082762

/-! ## A082762.P4505442838798920736

`Δ[A098648(n)]-A098648(n)`
-/

namespace A082762.P4505442838798920736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A098648 n

end

end A082762.P4505442838798920736

namespace A082762

/-- `Δ[A098648(n)]-A098648(n)` -/
def P4505442838798920736.Spec : Prop :=
  ∀ n, P4505442838798920736.a n = A082762 n

end A082762

/-! ## A082762.P6219703256016628500

`A084326(n+1)+2*A084326(n)`
-/

namespace A082762.P6219703256016628500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084326 (n + 1) + 2 * A084326 n

end

end A082762.P6219703256016628500

namespace A082762

/-- `A084326(n+1)+2*A084326(n)` -/
def P6219703256016628500.Spec : Prop :=
  ∀ n, P6219703256016628500.a n = A082762 n

end A082762

/-! ## A082762.P13141549736227439087

`A098648(n+1)-2*A098648(n)`
-/

namespace A082762.P13141549736227439087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098648 (n + 1) - 2 * A098648 n

end

end A082762.P13141549736227439087

namespace A082762

/-- `A098648(n+1)-2*A098648(n)` -/
def P13141549736227439087.Spec : Prop :=
  ∀ n, P13141549736227439087.a n = A082762 n

end A082762

/-! ## A082762.P3957667369736972159

`Δ[A080878(2*n)]-A080878(2*n)`
-/

namespace A082762.P3957667369736972159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080878 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A080878 (2 * n)

end

end A082762.P3957667369736972159

namespace A082762

/-- `Δ[A080878(2*n)]-A080878(2*n)` -/
def P3957667369736972159.Spec : Prop :=
  ∀ n, P3957667369736972159.a n = A082762 n

end A082762

/-! ## A082762.P12957006882132431472

`A099603(2*n+1)-A099603(2*n)`
-/

namespace A082762.P12957006882132431472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099603 (2 * n + 1) - A099603 (2 * n)

end

end A082762.P12957006882132431472

namespace A082762

/-- `A099603(2*n+1)-A099603(2*n)` -/
def P12957006882132431472.Spec : Prop :=
  ∀ n, P12957006882132431472.a n = A082762 n

end A082762

/-! ## A082762.P18075921960505533862

`Δ[A080877(2*n+1)]-A080877(2*n+1)`
-/

namespace A082762.P18075921960505533862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080877 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A080877 (2 * n + 1)

end

end A082762.P18075921960505533862

namespace A082762

/-- `Δ[A080877(2*n+1)]-A080877(2*n+1)` -/
def P18075921960505533862.Spec : Prop :=
  ∀ n, P18075921960505533862.a n = A082762 n

end A082762

/-! ## A082762.P959885691006525904

`A000032(2*n+1)*A029744(2*(n+1))/2`
-/

namespace A082762.P959885691006525904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + 1) * A029744 (2 * (n + 1)) : ℚ) / 2

end

end A082762.P959885691006525904

namespace A082762

/-- `A000032(2*n+1)*A029744(2*(n+1))/2` -/
def P959885691006525904.Spec : Prop :=
  ∀ n, P959885691006525904.a n = (A082762 n : ℚ)

end A082762

/-! ## A082762.P18310292109175375343

`A000032(2*n+1)*A072946(2*n+1)/2`
-/

namespace A082762.P18310292109175375343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + 1) * A072946 (2 * n + 1) : ℚ) / 2

end

end A082762.P18310292109175375343

namespace A082762

/-- `A000032(2*n+1)*A072946(2*n+1)/2` -/
def P18310292109175375343.Spec : Prop :=
  ∀ n, P18310292109175375343.a n = (A082762 n : ℚ)

end A082762

/-! ## A082762.P10772586979939943321

`A000051(n)*A002878(n)-A002878(n)`
-/

namespace A082762.P10772586979939943321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A002878 n - A002878 n

end

end A082762.P10772586979939943321

namespace A082762

/-- `A000051(n)*A002878(n)-A002878(n)` -/
def P10772586979939943321.Spec : Prop :=
  ∀ n, P10772586979939943321.a n = A082762 n

end A082762

/-! ## A082762.P237910529532781224

`A000079(n)*A122367(n+1)-A154626(n)`
-/

namespace A082762.P237910529532781224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A122367 (n + 1) - A154626 n

end

end A082762.P237910529532781224

namespace A082762

/-- `A000079(n)*A122367(n+1)-A154626(n)` -/
def P237910529532781224.Spec : Prop :=
  ∀ n, P237910529532781224.a n = A082762 n

end A082762

/-! ## A082762.P10382826894158080679

`A000032(2*n+1)*A084057(n+1)/A000032(n+1)`
-/

namespace A082762.P10382826894158080679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + 1) * A084057 (n + 1) : ℚ) / (A000032 (n + 1) : ℚ)

end

end A082762.P10382826894158080679

namespace A082762

/-- `A000032(2*n+1)*A084057(n+1)/A000032(n+1)` -/
def P10382826894158080679.Spec : Prop :=
  ∀ n, P10382826894158080679.a n = (A082762 n : ℚ)

end A082762

/-!
# A082763: Roman numeral contains an asymmetric symbol (L).

The programs for A082763, the canonical program `A082763.P3931876668098821293` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082763 has offset 1).

The definition of A082763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082763.P3931876668098821293

`floor(n/50)*100+40+n%50`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082763

/-- `floor(n/50)*100+40+n%50` -/
def P3931876668098821293.Spec : Prop :=
  ∀ n, P3931876668098821293.a n = A082763 (n + 1)

theorem P3931876668098821293.correct : P3931876668098821293.Spec := by
  intro n
  simp only [A082763, Nat.add_sub_cancel]

end A082763

/-! ## A082763.P11725687826365345135

`record[A118759(n+1)-a(n-1)]+20` with `a(0)=20`
-/

namespace A082763.P11725687826365345135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20] fun n f1 =>
  A118759 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 20

end

end A082763.P11725687826365345135

namespace A082763

/-- `record[A118759(n+1)-a(n-1)]+20` -/
def P11725687826365345135.Spec : Prop :=
  ∀ n, P11725687826365345135.a n = A082763 (n + 1)

end A082763

/-! ## A082763.P9495128398426164662

`A090461(n+20)`
-/

namespace A082763.P9495128398426164662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090461 (n + 20)

end

end A082763.P9495128398426164662

namespace A082763

/-- `A090461(n+20)` -/
def P9495128398426164662.Spec : Prop :=
  ∀ n, P9495128398426164662.a n = A082763 (n + 1)

end A082763

/-! ## A082763.P10179434834292578765

`40%A255581(n+5)+n`
-/

namespace A082763.P10179434834292578765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 40 (A255581 (n + 5)) + (n : ℤ)

end

end A082763.P10179434834292578765

namespace A082763

/-- `40%A255581(n+5)+n` -/
def P10179434834292578765.Spec : Prop :=
  ∀ n, P10179434834292578765.a n = A082763 (n + 1)

end A082763

/-!
# A082764: Trinomial transform of the Pell numbers (A000129).

The programs for A082764, the canonical program `A082764.P3512331866996801376` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082764 has offset 0).

The definition of A082764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082764.P395447900145348363

`ogf((1-2x)/(1-10x+7x^2))`
-/

namespace A082764.P395447900145348363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -10, 7] n

end

end A082764.P395447900145348363

namespace A082764

/-- `ogf((1-2x)/(1-10x+7x^2))` -/
def P395447900145348363.Spec : Prop :=
  ∀ n, P395447900145348363.a n = A082764 n

end A082764

/-! ## A082764.P3512331866996801376

`10*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082764

/-- `10*a(n-1)-7*a(n-2)` -/
def P3512331866996801376.Spec : Prop :=
  ∀ n, P3512331866996801376.a n = A082764 n

theorem P3512331866996801376.correct : P3512331866996801376.Spec := by
  intro n
  simp only [A082764]

end A082764

/-! ## A082764.P1777748480899905248

`Δ[A190989(n)]-A190989(n)`
-/

namespace A082764.P1777748480899905248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A190989 n

end

end A082764.P1777748480899905248

namespace A082764

/-- `Δ[A190989(n)]-A190989(n)` -/
def P1777748480899905248.Spec : Prop :=
  ∀ n, P1777748480899905248.a n = A082764 n

end A082764

/-! ## A082764.P15730749027949188732

`A190989(n+1)-2*A190989(n)`
-/

namespace A082764.P15730749027949188732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190989 (n + 1) - 2 * A190989 n

end

end A082764.P15730749027949188732

namespace A082764

/-- `A190989(n+1)-2*A190989(n)` -/
def P15730749027949188732.Spec : Prop :=
  ∀ n, P15730749027949188732.a n = A082764 n

end A082764

/-!
# A082765: Trinomial transform of the factorial numbers (A000142).

The programs for A082765, there is no canonical definition to state claims against.
-/

/-! ## A082765.P6591433348313834738

`∑{d}[A061742(n), A001222(#)!]`
-/

namespace A082765.P6591433348313834738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061742 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.factorial (A001222 d).toNat

end

end A082765.P6591433348313834738

/-!
# A082766: Series ratios converge alternately to sqrt(2) and 1+sqrt(1/2).

The programs for A082766, the canonical program `A082766.P9013044853944898316` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082766 has offset 1).

The definition of A082766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082766.P9013044853944898316

`a(n-4)+2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082766

/-- `a(n-4)+2*a(n-2)` -/
def P9013044853944898316.Spec : Prop :=
  ∀ n, (P9013044853944898316.a n : ℤ) = A082766 (n + 1)

theorem P9013044853944898316.correct : P9013044853944898316.Spec := by
  intro n
  simp only [A082766, Nat.add_sub_cancel]

end A082766

/-! ## A082766.P1779358123484536847

`a(n-2)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A082766.P1779358123484536847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3, 4] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 4))

end

end A082766.P1779358123484536847

namespace A082766

/-- `a(n-2)+a(n-2)+a(n-4)` -/
def P1779358123484536847.Spec : Prop :=
  ∀ n, (P1779358123484536847.a n : ℤ) = A082766 (n + 1)

end A082766

/-! ## A082766.P4632041861266954076

`A119016(ceil(abs(sin(n)))+n)`
-/

namespace A082766.P4632041861266954076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (⌈|Real.sin (n : ℝ)|⌉ + (n : ℤ)).toNat

end

end A082766.P4632041861266954076

namespace A082766

/-- `A119016(ceil(abs(sin(n)))+n)` -/
def P4632041861266954076.Spec : Prop :=
  ∀ n, P4632041861266954076.a n = A082766 (n + 1)

end A082766

/-! ## A082766.P7329453918047516264

`A097564(comp[3*(n+1)]+1)`
-/

namespace A082766.P7329453918047516264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A082766.P7329453918047516264

namespace A082766

/-- `A097564(comp[3*(n+1)]+1)` -/
def P7329453918047516264.Spec : Prop :=
  ∀ n, P7329453918047516264.a n = A082766 (n + 1)

end A082766

/-! ## A082766.P14054445207051822612

`A119016((n+1)%(2*n+1))`
-/

namespace A082766.P14054445207051822612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 ((n + 1) % (2 * n + 1))

end

end A082766.P14054445207051822612

namespace A082766

/-- `A119016((n+1)%(2*n+1))` -/
def P14054445207051822612.Spec : Prop :=
  ∀ n, P14054445207051822612.a n = A082766 (n + 1)

end A082766

/-! ## A082766.P14207218174259091646

`A119016(A028310(n)+1)`
-/

namespace A082766.P14207218174259091646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A028310 n + 1).toNat

end

end A082766.P14207218174259091646

namespace A082766

/-- `A119016(A028310(n)+1)` -/
def P14207218174259091646.Spec : Prop :=
  ∀ n, P14207218174259091646.a n = A082766 (n + 1)

end A082766

/-! ## A082766.P1940214566717163682

`A119016(A087156(n+1))`
-/

namespace A082766.P1940214566717163682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A087156 (n + 1)).toNat

end

end A082766.P1940214566717163682

namespace A082766

/-- `A119016(A087156(n+1))` -/
def P1940214566717163682.Spec : Prop :=
  ∀ n, P1940214566717163682.a n = A082766 (n + 1)

end A082766

/-! ## A082766.P15795076316094179851

`A119016(A254667(n+1))`
-/

namespace A082766.P15795076316094179851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A254667 (n + 1)).toNat

end

end A082766.P15795076316094179851

namespace A082766

/-- `A119016(A254667(n+1))` -/
def P15795076316094179851.Spec : Prop :=
  ∀ n, P15795076316094179851.a n = A082766 (n + 1)

end A082766

/-! ## A082766.P7980176912361947816

`A119016(A199969(n+2))`
-/

namespace A082766.P7980176912361947816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A199969 (n + 2)).toNat

end

end A082766.P7980176912361947816

namespace A082766

/-- `A119016(A199969(n+2))` -/
def P7980176912361947816.Spec : Prop :=
  ∀ n, P7980176912361947816.a n = A082766 (n + 1)

end A082766

/-! ## A082766.P7822942356079434345

`A249576(A097482(n+2))`
-/

namespace A082766.P7822942356079434345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A097482 (n + 2)).toNat

end

end A082766.P7822942356079434345

namespace A082766

/-- `A249576(A097482(n+2))` -/
def P7822942356079434345.Spec : Prop :=
  ∀ n, P7822942356079434345.a n = A082766 (n + 1)

end A082766

/-! ## A082766.P8628783790704851305

`A119016(A233583(n+2))`
-/

namespace A082766.P8628783790704851305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A233583 (n + 2)).toNat

end

end A082766.P8628783790704851305

namespace A082766

/-- `A119016(A233583(n+2))` -/
def P8628783790704851305.Spec : Prop :=
  ∀ n, P8628783790704851305.a n = A082766 (n + 1)

end A082766

/-! ## A082766.P9786520689986815014

`A249576(A133223(n+2))`
-/

namespace A082766.P9786520689986815014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A133223 (n + 2)).toNat

end

end A082766.P9786520689986815014

namespace A082766

/-- `A249576(A133223(n+2))` -/
def P9786520689986815014.Spec : Prop :=
  ∀ n, P9786520689986815014.a n = A082766 (n + 1)

end A082766

/-! ## A082766.P7201695367600828269

`A249576(comp[record[A266286(n)]])`
-/

namespace A082766.P7201695367600828269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266286 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A082766.P7201695367600828269

namespace A082766

/-- `A249576(comp[record[A266286(n)]])` -/
def P7201695367600828269.Spec : Prop :=
  ∀ n, P7201695367600828269.a n = A082766 (n + 1)

end A082766

/-! ## A082766.P4675394295858956051

`A119016(A004273(n)+2-n)`
-/

namespace A082766.P4675394295858956051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A004273 n + (2 - (n : ℤ))).toNat

end

end A082766.P4675394295858956051

namespace A082766

/-- `A119016(A004273(n)+2-n)` -/
def P4675394295858956051.Spec : Prop :=
  ∀ n, P4675394295858956051.a n = A082766 (n + 1)

end A082766

/-! ## A082766.P7581923738862479533

`A119016(2-(n-A004273(n)))`
-/

namespace A082766.P7581923738862479533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (2 - ((n : ℤ) - A004273 n)).toNat

end

end A082766.P7581923738862479533

namespace A082766

/-- `A119016(2-(n-A004273(n)))` -/
def P7581923738862479533.Spec : Prop :=
  ∀ n, P7581923738862479533.a n = A082766 (n + 1)

end A082766

/-! ## A082766.P5400091631822277474

`A135246(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A082766.P5400091631822277474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A135246 (n - 1) - a (n - 1)

end

end A082766.P5400091631822277474

namespace A082766

/-- `A135246(n-1)-a(n-1)` -/
def P5400091631822277474.Spec : Prop :=
  ∀ n, P5400091631822277474.a n = A082766 (n + 1)

end A082766

/-! ## A082766.P4229359703038781507

`A152113(n+1)+A152113(n+2)-A143607(n+1)`
-/

namespace A082766.P4229359703038781507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (n + 1) + (A152113 (n + 2) - A143607 (n + 1))

end

end A082766.P4229359703038781507

namespace A082766

/-- `A152113(n+1)+A152113(n+2)-A143607(n+1)` -/
def P4229359703038781507.Spec : Prop :=
  ∀ n, P4229359703038781507.a n = A082766 (n + 1)

end A082766

/-!
# A082767: Number of edges in the prime graph.

The programs for A082767, the canonical program `A082767.P14883845158574178506` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082767 has offset 1).

The definition of A082767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082767.P14883845158574178506

`∑[∑{p}[n+1, gcd(n, #)]+1]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082767

/-- `∑[∑{p}[n+1, gcd(n, #)]+1]` -/
def P14883845158574178506.Spec : Prop :=
  ∀ n, (P14883845158574178506.a n : ℤ) = A082767 (n + 1)

theorem P14883845158574178506.correct : P14883845158574178506.Spec := by
  intro n
  simp only [A082767, Nat.add_sub_cancel]

end A082767

/-! ## A082767.P17047027195394183142

`∑[∑{e}[∏{p}[n+1, #], #]+1]`
-/

namespace A082767.P17047027195394183142
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P17047027195394183142

namespace A082767

/-- `∑[∑{e}[∏{p}[n+1, #], #]+1]` -/
def P17047027195394183142.Spec : Prop :=
  ∀ n, (P17047027195394183142.a n : ℤ) = A082767 (n + 1)

end A082767

/-! ## A082767.P15121779881057787261

`∑[A083399(n+1)]`
-/

namespace A082767.P15121779881057787261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P15121779881057787261

namespace A082767

/-- `∑[A083399(n+1)]` -/
def P15121779881057787261.Spec : Prop :=
  ∀ n, P15121779881057787261.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P9145334283004496019

`A082186(n+1)+n`
-/

namespace A082767.P9145334283004496019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (n + 1) + (n : ℤ)

end

end A082767.P9145334283004496019

namespace A082767

/-- `A082186(n+1)+n` -/
def P9145334283004496019.Spec : Prop :=
  ∀ n, P9145334283004496019.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P16858266802004394240

`∑[A001221(n+1)+1]`
-/

namespace A082767.P16858266802004394240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P16858266802004394240

namespace A082767

/-- `∑[A001221(n+1)+1]` -/
def P16858266802004394240.Spec : Prop :=
  ∀ n, P16858266802004394240.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P13856692864767133254

`∑[A229109(n+1)-n]`
-/

namespace A082767.P13856692864767133254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P13856692864767133254

namespace A082767

/-- `∑[A229109(n+1)-n]` -/
def P13856692864767133254.Spec : Prop :=
  ∀ n, P13856692864767133254.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P1320883910573877180

`n+1+A013939(n+1)`
-/

namespace A082767.P1320883910573877180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A013939 (n + 1)

end

end A082767.P1320883910573877180

namespace A082767

/-- `n+1+A013939(n+1)` -/
def P1320883910573877180.Spec : Prop :=
  ∀ n, P1320883910573877180.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P14632841691770670464

`∑[abs(A158210(n+1))+1]`
-/

namespace A082767.P14632841691770670464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158210 (n + 1)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P14632841691770670464

namespace A082767

/-- `∑[abs(A158210(n+1))+1]` -/
def P14632841691770670464.Spec : Prop :=
  ∀ n, P14632841691770670464.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P10130737269547314265

`∑[log2(A034444(n+1))+1]`
-/

namespace A082767.P10130737269547314265
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A034444 (n + 1) : ℝ) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P10130737269547314265

namespace A082767

/-- `∑[log2(A034444(n+1))+1]` -/
def P10130737269547314265.Spec : Prop :=
  ∀ n, P10130737269547314265.a n = (A082767 (n + 1) : ℝ)

end A082767

/-! ## A082767.P2575280379517542303

`A355538(n+1)+Δ[n²]`
-/

namespace A082767.P2575280379517542303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355538 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A082767.P2575280379517542303

namespace A082767

/-- `A355538(n+1)+Δ[n²]` -/
def P2575280379517542303.Spec : Prop :=
  ∀ n, P2575280379517542303.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P13683180735274925176

`∑[∑{p}[n+1, A001222(#)]+1]`
-/

namespace A082767.P13683180735274925176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A001222 p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P13683180735274925176

namespace A082767

/-- `∑[∑{p}[n+1, A001222(#)]+1]` -/
def P13683180735274925176.Spec : Prop :=
  ∀ n, P13683180735274925176.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P13996488225275530746

`∑[A001222(∏{p}[n+1, #])+1]`
-/

namespace A082767.P13996488225275530746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P13996488225275530746

namespace A082767

/-- `∑[A001222(∏{p}[n+1, #])+1]` -/
def P13996488225275530746.Spec : Prop :=
  ∀ n, P13996488225275530746.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P11923406545995479421

`∑[1-∑{p}[n+1, A008683(#)]]`
-/

namespace A082767.P11923406545995479421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ p ∈ Nat.primeFactors (f2 n), A008683 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P11923406545995479421

namespace A082767

/-- `∑[1-∑{p}[n+1, A008683(#)]]` -/
def P11923406545995479421.Spec : Prop :=
  ∀ n, P11923406545995479421.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P2716819547142187147

`∑[A000005(A034444(n+1))]`
-/

namespace A082767.P2716819547142187147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A034444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P2716819547142187147

namespace A082767

/-- `∑[A000005(A034444(n+1))]` -/
def P2716819547142187147.Spec : Prop :=
  ∀ n, P2716819547142187147.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P7035698687594648108

`∑[A000005(A074816(n+1))]`
-/

namespace A082767.P7035698687594648108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A074816 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P7035698687594648108

namespace A082767

/-- `∑[A000005(A074816(n+1))]` -/
def P7035698687594648108.Spec : Prop :=
  ∀ n, P7035698687594648108.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P12970188179266947635

`∑[A001221(A079892(n+1))]`
-/

namespace A082767.P12970188179266947635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A079892 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P12970188179266947635

namespace A082767

/-- `∑[A001221(A079892(n+1))]` -/
def P12970188179266947635.Spec : Prop :=
  ∀ n, P12970188179266947635.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P11439386390083761997

`∑[A000005(A082476(n+1))]`
-/

namespace A082767.P11439386390083761997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A082476 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P11439386390083761997

namespace A082767

/-- `∑[A000005(A082476(n+1))]` -/
def P11439386390083761997.Spec : Prop :=
  ∀ n, P11439386390083761997.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P17693643807450136765

`∑[A001222(A007947(n+1))+1]`
-/

namespace A082767.P17693643807450136765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P17693643807450136765

namespace A082767

/-- `∑[A001222(A007947(n+1))+1]` -/
def P17693643807450136765.Spec : Prop :=
  ∀ n, P17693643807450136765.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P8718754088564237470

`∑[A001222(A061389(n+1))+1]`
-/

namespace A082767.P8718754088564237470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061389 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P8718754088564237470

namespace A082767

/-- `∑[A001222(A061389(n+1))+1]` -/
def P8718754088564237470.Spec : Prop :=
  ∀ n, P8718754088564237470.a n = A082767 (n + 1)

end A082767

/-! ## A082767.P7040324507361593966

`∑[A001222(A073184(n+1))+1]`
-/

namespace A082767.P7040324507361593966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A073184 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082767.P7040324507361593966

namespace A082767

/-- `∑[A001222(A073184(n+1))+1]` -/
def P7040324507361593966.Spec : Prop :=
  ∀ n, P7040324507361593966.a n = A082767 (n + 1)

end A082767

/-!
# A082768: Numbers that begin with 1, 3, 7 or 9.

The programs for A082768, there is no canonical definition to state claims against.
-/

/-! ## A082768.P6430205096284813534

`eq[1, gcd(20, A004086(n))]`
-/

namespace A082768.P6430205096284813534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 20 (A004086 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082768.P6430205096284813534

/-! ## A082768.P11314883238500294094

`eq[1, gcd(10, A000030(n))]`
-/

namespace A082768.P11314883238500294094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A000030 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082768.P11314883238500294094

/-! ## A082768.P10147307345602044305

`eq[1, A010211(A004086(n))]`
-/

namespace A082768.P10147307345602044305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010211 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082768.P10147307345602044305

/-! ## A082768.P9681414176741913902

`eq[1, A010211(A032762(n))]`
-/

namespace A082768.P9681414176741913902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010211 (A032762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082768.P9681414176741913902

/-! ## A082768.P15342392939967613587

`eq[1, A040639(A056964(n)-n)]`
-/

namespace A082768.P15342392939967613587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040639 (A056964 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082768.P15342392939967613587

/-! ## A082768.P13619677112041485015

`eq[1, gcd(A032762(n), A040020(n))]`
-/

namespace A082768.P13619677112041485015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032762 n) (A040020 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082768.P13619677112041485015

/-! ## A082768.P16470613121797818765

`lt[A000005(A182324(n)+4-n), 3]`
-/

namespace A082768.P16470613121797818765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A182324 n + (4 - (n : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A082768.P16470613121797818765

/-! ## A082768.P16289352327822900354

`eq[1, gcd(50, A056142(n))]`
-/

namespace A082768.P16289352327822900354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 50 (A056142 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082768.P16289352327822900354

/-! ## A082768.P12283746203380027026

`eq[1, A040639(A056964(10*n))]`
-/

namespace A082768.P12283746203380027026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040639 (A056964 (10 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082768.P12283746203380027026

/-!
# A082769: a(n) = smallest palindromic prime that begins with A082768(n), or 0 if no such number exists.

The programs for A082769, there is no canonical definition to state claims against.
-/

/-! ## A082769.P881783778784784674

`A089744(∑[char[A005814(n)]+1])`
-/

namespace A082769.P881783778784784674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005814 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089744 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082769.P881783778784784674

/-! ## A082769.P14440195796230739459

`A089744(2*n+1-A289207(n))`
-/

namespace A082769.P14440195796230739459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089744 ((2 * n + 1 : ℤ) - A289207 n).toNat

end

end A082769.P14440195796230739459

/-! ## A082769.P6592114524215530685

`p?[Δ[A078923(n+1)]*A089744(n+1)]`
-/

namespace A082769.P6592114524215530685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078923 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A089744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082769.P6592114524215530685

/-! ## A082769.P6060858586833076899

`A089744(A016777(n)-A004275(n))`
-/

namespace A082769.P6060858586833076899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089744 (A016777 n - A004275 n).toNat

end

end A082769.P6060858586833076899

/-! ## A082769.P15224196201299733553

`A083968(n)`
-/

namespace A082769.P15224196201299733553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083968 n

end

end A082769.P15224196201299733553

/-!
# A082770: a(n) = smallest palindromic prime that begins with A082768(n) and contains more than twice the number of digits in A082768(n), or 0 if no such number exists.

The programs for A082770, there is no canonical definition to state claims against.
-/

/-! ## A082770.P1764758094155601617

`A229107(A057716(2*n+3)%A099969(3*n+4))`
-/

namespace A082770.P1764758094155601617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229107 (Int.tmod (A057716 (2 * n + 3)) (A099969 (3 * n + 4))).toNat

end

end A082770.P1764758094155601617

/-!
# A082771: Triangular array, read by rows: T(n,k) = Sum_{d|n} d^k, 0 <= k < n.

The programs for A082771, the canonical program `A082771.P10430934721500492141` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082771 has offset 1).

The definition of A082771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082771.P10430934721500492141

`∑{d}[∑[A010054(n)], #^A002262(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082771

/-- `∑{d}[∑[A010054(n)], #^A002262(n)]` -/
def P10430934721500492141.Spec : Prop :=
  ∀ n, P10430934721500492141.a n = (A082771 (n + 1) : ℚ)

end A082771

/-! ## A082771.P8032812029018201815

`∑{d}[A002024(n+1), #^A002262(n)]`
-/

namespace A082771.P8032812029018201815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A002262 n : ℤ)

end

end A082771.P8032812029018201815

namespace A082771

/-- `∑{d}[A002024(n+1), #^A002262(n)]` -/
def P8032812029018201815.Spec : Prop :=
  ∀ n, P8032812029018201815.a n = (A082771 (n + 1) : ℚ)

end A082771

/-! ## A082771.P10626474103007513655

`∑{d}[A000194(2*(n+1)), #^A002262(n)]`
-/

namespace A082771.P10626474103007513655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A002262 n : ℤ)

end

end A082771.P10626474103007513655

namespace A082771

/-- `∑{d}[A000194(2*(n+1)), #^A002262(n)]` -/
def P10626474103007513655.Spec : Prop :=
  ∀ n, P10626474103007513655.a n = (A082771 (n + 1) : ℚ)

end A082771

/-! ## A082771.P16445468836350592169

`∑{d}[A002024(n+1), #^(A002024(n+1)-A004736(n+1))]`
-/

namespace A082771.P16445468836350592169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A002024 (n + 1) - A004736 (n + 1) : ℤ)

end

end A082771.P16445468836350592169

namespace A082771

/-- `∑{d}[A002024(n+1), #^(A002024(n+1)-A004736(n+1))]` -/
def P16445468836350592169.Spec : Prop :=
  ∀ n, P16445468836350592169.a n = (A082771 (n + 1) : ℚ)

end A082771

/-! ## A082771.P2722117958171075394

`A109974(A245300(n))`
-/

namespace A082771.P2722117958171075394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (A245300 n).toNat

end

end A082771.P2722117958171075394

namespace A082771

/-- `A109974(A245300(n))` -/
def P2722117958171075394.Spec : Prop :=
  ∀ n, P2722117958171075394.a n = A082771 (n + 1)

end A082771

/-!
# A082772: Integers n such that there exists at least one divisor d of n, 1 < d < n, such that d divides n and d+1 divides n+1.

The programs for A082772, there is no canonical definition to state claims against.
-/

/-! ## A082772.P6455306274995905298

`A136410(n+1)-1`
-/

namespace A082772.P6455306274995905298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136410 (n + 1) - 1

end

end A082772.P6455306274995905298

/-! ## A082772.P5413938915977437632

`∪[A082773(n+1), A082867(n+1)]`
-/

namespace A082772.P5413938915977437632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A082772.P5413938915977437632

/-! ## A082772.P6592255676399905098

`A280193(2*n+1)+A136410(n+1)`
-/

namespace A082772.P6592255676399905098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A136410 (n + 1)

end

end A082772.P6592255676399905098

/-! ## A082772.P3843570039192907848

`A023443(A136410(n+1))`
-/

namespace A082772.P3843570039192907848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A136410 (n + 1)).toNat

end

end A082772.P3843570039192907848

/-! ## A082772.P7209008762819849378

`A289207(A136410(n+1)+1)`
-/

namespace A082772.P7209008762819849378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A136410 (n + 1) + 1).toNat

end

end A082772.P7209008762819849378

/-! ## A082772.P10815329058616437656

`A046667(2*A136410(n+1))`
-/

namespace A082772.P10815329058616437656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A136410 (n + 1)).toNat

end

end A082772.P10815329058616437656

/-! ## A082772.P9198888490984211493

`A328455(A136410(n+1)+2)+A136410(n+1)`
-/

namespace A082772.P9198888490984211493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328455 (A136410 (n + 1) + 2).toNat + A136410 (n + 1)

end

end A082772.P9198888490984211493

/-! ## A082772.P12720298307036133482

`A209615(A125254(n+1))+A136410(n+1)`
-/

namespace A082772.P12720298307036133482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A125254 (n + 1)).toNat + A136410 (n + 1)

end

end A082772.P12720298307036133482

/-! ## A082772.P13715649418698202797

`A328455(A023707(n+1))+A136410(n+1)`
-/

namespace A082772.P13715649418698202797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328455 (A023707 (n + 1)).toNat + A136410 (n + 1)

end

end A082772.P13715649418698202797

/-! ## A082772.P9964959648097248606

`A157128(A165824(n+1))+A136410(n+1)`
-/

namespace A082772.P9964959648097248606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157128 (A165824 (n + 1)).toNat + A136410 (n + 1)

end

end A082772.P9964959648097248606

/-! ## A082772.P15154736582683928839

`A233583(A136410(n+1)%A017114(n))`
-/

namespace A082772.P15154736582683928839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.tmod (A136410 (n + 1)) (A017114 n)).toNat

end

end A082772.P15154736582683928839

/-! ## A082772.P4596687897330257388

`A233583(A000034(2*n)*A136410(n+1))`
-/

namespace A082772.P4596687897330257388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A000034 (2 * n) * A136410 (n + 1)).toNat

end

end A082772.P4596687897330257388

/-!
# A082774: a(n) = floor(cot(2*Pi/prime(n))).

The programs for A082774, there is no canonical definition to state claims against.
-/

/-! ## A082774.P2230265240756674429

`A067100(A000040(A102352(n+1)))`
-/

namespace A082774.P2230265240756674429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067100 (A000040 (A102352 (n + 1)).toNat).toNat

end

end A082774.P2230265240756674429

/-! ## A082774.P13429374717311367326

`∑[A220962(Δ[A069675(n+2)])]`
-/

namespace A082774.P13429374717311367326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069675 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220962 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082774.P13429374717311367326

/-! ## A082774.P11192236952262143903

`A074239(n+1)%A114538(n+1)`
-/

namespace A082774.P11192236952262143903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074239 (n + 1)) (A114538 (n + 1))

end

end A082774.P11192236952262143903

/-! ## A082774.P17870137053726899032

`∑[A106002(n+2)]%A116641(2*n+3)`
-/

namespace A082774.P17870137053726899032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106002 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A116641 (2 * n + 3))

end

end A082774.P17870137053726899032

/-! ## A082774.P2677495883232404905

`lcm(A062157(A270339(n+4)), A074239(n+1))`
-/

namespace A082774.P2677495883232404905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 (A270339 (n + 4)).toNat) (A074239 (n + 1))

end

end A082774.P2677495883232404905

/-!
# A082775: Convolution of natural numbers >= 2 and the partition numbers (A000041).

The programs for A082775, there is no canonical definition to state claims against.
-/

/-! ## A082775.P913432986883257576

`a(n-1)+A000041(n)+A000070(n)` with `a(0)=2`
-/

namespace A082775.P913432986883257576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A000041 n + A000070 n

end

end A082775.P913432986883257576

/-! ## A082775.P17646422722457115045

`A000070(n)+A014153(n)`
-/

namespace A082775.P17646422722457115045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + A014153 n

end

end A082775.P17646422722457115045

/-! ## A082775.P13654630997906379203

`∑[A000070(n)+A000041(n)]`
-/

namespace A082775.P13654630997906379203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082775.P13654630997906379203

/-! ## A082775.P8107775503630315547

`A014153(n)+∑[A000041(n)]`
-/

namespace A082775.P8107775503630315547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082775.P8107775503630315547

/-! ## A082775.P14383823142672297710

`∑[A000070(n)+∑[A002865(n)]]`
-/

namespace A082775.P14383823142672297710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082775.P14383823142672297710

/-! ## A082775.P15788551774685038870

`∑[A000070(n)+A139582(n)/2]`
-/

namespace A082775.P15788551774685038870
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000070 n : ℚ) + (A139582 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082775.P15788551774685038870

/-! ## A082775.P8034843981190878578

`A014153(n+1)-A000041(n+1)`
-/

namespace A082775.P8034843981190878578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 (n + 1) - A000041 (n + 1)

end

end A082775.P8034843981190878578

/-! ## A082775.P2885274861155934308

`A093695(n+2)+A024786(n+1)`
-/

namespace A082775.P2885274861155934308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093695 (n + 2) + A024786 (n + 1)

end

end A082775.P2885274861155934308

/-! ## A082775.P6489542670865240928

`A024786(n+1)+2*A000097(n)`
-/

namespace A082775.P6489542670865240928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1) + 2 * A000097 n

end

end A082775.P6489542670865240928

/-! ## A082775.P770421964628740355

`∑[A000070(n)+∑[A085811(n+3)]]`
-/

namespace A082775.P770421964628740355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082775.P770421964628740355

/-! ## A082775.P14817658910908810284

`A000070(n)+∑[A216053(n+1)-1]`
-/

namespace A082775.P14817658910908810284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216053 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082775.P14817658910908810284

/-! ## A082775.P1321453957742616580

`∑[∑[A002865(n)]+A216053(n+1)-1]`
-/

namespace A082775.P1321453957742616580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (A216053 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082775.P1321453957742616580

/-! ## A082775.P10384452993783385708

`∑[A139582(n)/2+A216053(n+1)-1]`
-/

namespace A082775.P10384452993783385708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 + (A216053 (n + 1) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082775.P10384452993783385708

/-! ## A082775.P6418816410991748100

`A216053(n+1)-1+a(n-1)+A000041(n)` with `a(0)=2`
-/

namespace A082775.P6418816410991748100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A216053 (n + 1) - 1 + (a (n - 1) + A000041 n)

end

end A082775.P6418816410991748100

/-! ## A082775.P604542123304606253

`∑[A000070(n)+A047967(n)+A000009(n)]`
-/

namespace A082775.P604542123304606253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + (A047967 n + A000009 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082775.P604542123304606253

/-! ## A082775.P2118481915036725803

`∑[A000070(n)+A295341(n)+A000726(n)]`
-/

namespace A082775.P2118481915036725803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + (A295341 n + A000726 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082775.P2118481915036725803

/-! ## A082775.P6469167281114824267

`A000097(n+1)+A000097(n)-A000041(n+1)`
-/

namespace A082775.P6469167281114824267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 (n + 1) + (A000097 n - A000041 (n + 1))

end

end A082775.P6469167281114824267

/-! ## A082775.P5610779557453220487

`A000097(n+1)+A000291(n)-A000070(n+1)`
-/

namespace A082775.P5610779557453220487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 (n + 1) + (A000291 n - A000070 (n + 1))

end

end A082775.P5610779557453220487

/-! ## A082775.P18075198395456875838

`A014153(n+1)-(A087787(n+1)+A087787(n))`
-/

namespace A082775.P18075198395456875838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 (n + 1) - (A087787 (n + 1) + A087787 n)

end

end A082775.P18075198395456875838

/-! ## A082775.P11441325228792421576

`A000412(n)-A000098(n)`
-/

namespace A082775.P11441325228792421576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000412 n - A000098 n

end

end A082775.P11441325228792421576

/-!
# A082776: a(1) = 1, a(n) = smallest palindromic multiple of a(n-1) obtained by inserting digits anywhere in a(n-1).

The programs for A082776, there is no canonical definition to state claims against.
-/

/-! ## A082776.P12021133907728859130

`∏[A088771(n+1)]/A088771(n+1)`
-/

namespace A082776.P12021133907728859130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088771 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A088771 (n + 1) : ℚ)

end

end A082776.P12021133907728859130

/-! ## A082776.P2678649001982554510

`∏[A109613(record[A332795(n+1)])]`
-/

namespace A082776.P2678649001982554510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332795 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082776.P2678649001982554510

/-!
# A082778: a(1) = 3; for n>1, a(n) = smallest palindromic multiple of a(n-1) obtained by inserting digits anywhere in a(n-1).

The programs for A082778, there is no canonical definition to state claims against.
-/

/-! ## A082778.P15439986784197996921

`3*A082776(∑{p}[n+1, #]^∑{e}[n+1, #])`
-/

namespace A082778.P15439986784197996921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A082776 ((∑ p ∈ Nat.primeFactors (f1 n), p) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A082778.P15439986784197996921

/-!
# A082779: a(1) = 4, a(n) = smallest palindromic multiple of a(n-1) obtained by inserting digits anywhere in a(n-1).

The programs for A082779, there is no canonical definition to state claims against.
-/

/-! ## A082779.P17040726718600372834

`a(n-1)*A088774(n)` with `a(0)=4`
-/

namespace A082779.P17040726718600372834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) * A088774 n

end

end A082779.P17040726718600372834

/-!
# A082780: a(1) = 5, a(n) = smallest palindromic multiple of a(n-1) obtained by inserting digits anywhere in a(n-1).

The programs for A082780, there is no canonical definition to state claims against.
-/

/-! ## A082780.P10920666069519165758

`5/8*A082783(n+1)`
-/

namespace A082780.P10920666069519165758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 8 * (A082783 (n + 1) : ℚ)

end

end A082780.P10920666069519165758

/-! ## A082780.P1989381858200679612

`(A088780(n+1)+A082781(n+1))/3`
-/

namespace A082780.P1989381858200679612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088780 (n + 1) + A082781 (n + 1) : ℚ) / 3

end

end A082780.P1989381858200679612

/-! ## A082780.P17923367193180336660

`A088780(n+1)-A082783(n+1)/2`
-/

namespace A082780.P17923367193180336660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088780 (n + 1) : ℚ) - (A082783 (n + 1) : ℚ) / 2

end

end A082780.P17923367193180336660

/-!
# A082781: a(1) = 6, a(n) = smallest palindromic multiple of a(n-1) obtained by inserting digits anywhere in a(n-1).

The programs for A082781, there is no canonical definition to state claims against.
-/

/-! ## A082781.P3416674053748354781

`2/3*A088780(n+1)`
-/

namespace A082781.P3416674053748354781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A088780 (n + 1) : ℚ)

end

end A082781.P3416674053748354781

/-! ## A082781.P16238337428974401638

`3/4*A082783(n+1)`
-/

namespace A082781.P16238337428974401638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A082783 (n + 1) : ℚ)

end

end A082781.P16238337428974401638

/-!
# A082782: a(1) = 7, a(n) = smallest palindromic multiple of a(n-1) obtained by inserting digits anywhere in a(n-1).

The programs for A082782, there is no canonical definition to state claims against.
-/

/-! ## A082782.P15898049162412123567

`A342347(A253565(n))`
-/

namespace A082782.P15898049162412123567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342347 (A253565 n).toNat

end

end A082782.P15898049162412123567

/-!
# A082783: a(1) = 8, a(n) = smallest palindromic multiple of a(n-1) obtained by inserting digits anywhere in a(n-1).

The programs for A082783, there is no canonical definition to state claims against.
-/

/-! ## A082783.P13987867304088794573

`4/3*A082781(n+1)`
-/

namespace A082783.P13987867304088794573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A082781 (n + 1) : ℚ)

end

end A082783.P13987867304088794573

/-!
# A082784: Characteristic function of multiples of 7.

The programs for A082784, the canonical program `A082784.P13357688651719004354` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082784 has offset 0).

The definition of A082784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082784.P13357688651719004354

`(gcd(n, 7)-1)/6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082784

/-- `(gcd(n, 7)-1)/6` -/
def P13357688651719004354.Spec : Prop :=
  ∀ n, P13357688651719004354.a n = (A082784 n : ℚ)

end A082784

/-!
# A082785: Number of ways n can be written as the sum of a brilliant number and a prime.

The programs for A082785, there is no canonical definition to state claims against.
-/

/-! ## A082785.P16310304195656931987

`A100949(n+1)-A025850(Δ[A193175(n+1)])`
-/

namespace A082785.P16310304195656931987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (n + 1) - A025850 (f1 (n + 1) - f1 n).toNat

end

end A082785.P16310304195656931987

/-! ## A082785.P13913984148570601963

`A100949(n+1)-A100949(Δ[A193175(n+1)])`
-/

namespace A082785.P13913984148570601963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (n + 1) - A100949 (f1 (n + 1) - f1 n).toNat

end

end A082785.P13913984148570601963

/-! ## A082785.P5933424202448430274

`A100949(n+1)-A344415(2*(n+2))%A227349(n)`
-/

namespace A082785.P5933424202448430274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (n + 1) - Int.tmod (A344415 (2 * (n + 2))) (A227349 n)

end

end A082785.P5933424202448430274

/-! ## A082785.P9422823065695387341

`A100949(n+1)-A086483(A058343(n))`
-/

namespace A082785.P9422823065695387341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (n + 1) - A086483 (A058343 n).toNat

end

end A082785.P9422823065695387341

/-! ## A082785.P6041412454302731062

`A100949(n+1)/A382857(A330785(n+2))`
-/

namespace A082785.P6041412454302731062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100949 (n + 1) : ℚ) / (A382857 (A330785 (n + 2)).toNat : ℚ)

end

end A082785.P6041412454302731062

/-!
# A082786: Triangle, read by rows, of exponents of primes in canonical prime factorization of n: T(n,k) = greatest number such that prime(k)^T(n,k) divides n, 1 <= k <= n.

The programs for A082786, the canonical program `A082786.P11135334232585507456` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082786 has offset 1).

The definition of A082786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082786.P13685662224515448657

`val(∑[char[∑[n]]], A037126(n+1))`
-/

namespace A082786.P13685662224515448657
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) (A037126 (n + 1)).toNat

end

end A082786.P13685662224515448657

namespace A082786

/-- `val(∑[char[∑[n]]], A037126(n+1))` -/
def P13685662224515448657.Spec : Prop :=
  ∀ n, (P13685662224515448657.a n : ℤ) = A082786 (n + 1)

end A082786

/-! ## A082786.P13228607701344776562

`val(∑[char[∑[n]]], A000040(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A082786.P13228607701344776562
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ)).toNat).toNat

end

end A082786.P13228607701344776562

namespace A082786

/-- `val(∑[char[∑[n]]], A000040(1-C(∑[char[∑[n]]], 2)+n))` -/
def P13228607701344776562.Spec : Prop :=
  ∀ n, (P13228607701344776562.a n : ℤ) = A082786 (n + 1)

end A082786

/-! ## A082786.P2976275100936498878

`val(∑[char[∑[n]]], A000040(A002260(n+1)))`
-/

namespace A082786.P2976275100936498878
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (A002260 (n + 1)).toNat).toNat

end

end A082786.P2976275100936498878

namespace A082786

/-- `val(∑[char[∑[n]]], A000040(A002260(n+1)))` -/
def P2976275100936498878.Spec : Prop :=
  ∀ n, (P2976275100936498878.a n : ℤ) = A082786 (n + 1)

end A082786

/-! ## A082786.P6452123316360512404

`val(A051537(n+1), A000040(A128227(n)))`
-/

namespace A082786.P6452123316360512404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051537 (n + 1)).toNat (A000040 (A128227 n).toNat).toNat

end

end A082786.P6452123316360512404

namespace A082786

/-- `val(A051537(n+1), A000040(A128227(n)))` -/
def P6452123316360512404.Spec : Prop :=
  ∀ n, (P6452123316360512404.a n : ℤ) = A082786 (n + 1)

end A082786

/-! ## A082786.P8248763778182590777

`val(A054531(n+1), A000040(A128227(n)))`
-/

namespace A082786.P8248763778182590777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054531 (n + 1)).toNat (A000040 (A128227 n).toNat).toNat

end

end A082786.P8248763778182590777

namespace A082786

/-- `val(A054531(n+1), A000040(A128227(n)))` -/
def P8248763778182590777.Spec : Prop :=
  ∀ n, (P8248763778182590777.a n : ℤ) = A082786 (n + 1)

end A082786

/-! ## A082786.P11135334232585507456

`val(A002024(n+1), A000040(A002262(n)+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082786

/-- `val(A002024(n+1), A000040(A002262(n)+1))` -/
def P11135334232585507456.Spec : Prop :=
  ∀ n, (P11135334232585507456.a n : ℤ) = A082786 (n + 1)

theorem P11135334232585507456.correct : P11135334232585507456.Spec := by
  intro n
  simp only [A082786, Nat.add_sub_cancel]

end A082786

/-! ## A082786.P7960692585955490234

`val(A003056(n)+1, A000040(A002262(n)+1))`
-/

namespace A082786.P7960692585955490234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003056 n + 1).toNat (A000040 (A002262 n + 1).toNat).toNat

end

end A082786.P7960692585955490234

namespace A082786

/-- `val(A003056(n)+1, A000040(A002262(n)+1))` -/
def P7960692585955490234.Spec : Prop :=
  ∀ n, (P7960692585955490234.a n : ℤ) = A082786 (n + 1)

end A082786

/-! ## A082786.P2716863802632866463

`val(∑[char[∑[n]]], A104887(∑[char[∑[n]]]²-n))`
-/

namespace A082786.P2716863802632866463
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) (A104887 ((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 - n)).toNat

end

end A082786.P2716863802632866463

namespace A082786

/-- `val(∑[char[∑[n]]], A104887(∑[char[∑[n]]]²-n))` -/
def P2716863802632866463.Spec : Prop :=
  ∀ n, (P2716863802632866463.a n : ℤ) = A082786 (n + 1)

end A082786

/-! ## A082786.P4294158434217202699

`val(∑[char[∑[n]]], A000040(A349520(2*n+1)))`
-/

namespace A082786.P4294158434217202699
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (A349520 (2 * n + 1)).toNat).toNat

end

end A082786.P4294158434217202699

namespace A082786

/-- `val(∑[char[∑[n]]], A000040(A349520(2*n+1)))` -/
def P4294158434217202699.Spec : Prop :=
  ∀ n, (P4294158434217202699.a n : ℤ) = A082786 (n + 1)

end A082786

/-! ## A082786.P3858312000774785825

`val(∑[char[∑[n]]], A000040(A097285(2*n+1)))`
-/

namespace A082786.P3858312000774785825
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (A097285 (2 * n + 1)).toNat).toNat

end

end A082786.P3858312000774785825

namespace A082786

/-- `val(∑[char[∑[n]]], A000040(A097285(2*n+1)))` -/
def P3858312000774785825.Spec : Prop :=
  ∀ n, (P3858312000774785825.a n : ℤ) = A082786 (n + 1)

end A082786

/-! ## A082786.P247613106269784656

`val(A002024(n+1), A020639(A083221(n+2)))`
-/

namespace A082786.P247613106269784656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002024 (n + 1)).toNat (A020639 (A083221 (n + 2)).toNat).toNat

end

end A082786.P247613106269784656

namespace A082786

/-- `val(A002024(n+1), A020639(A083221(n+2)))` -/
def P247613106269784656.Spec : Prop :=
  ∀ n, (P247613106269784656.a n : ℤ) = A082786 (n + 1)

end A082786

/-! ## A082786.P1043408340405895309

`val(∑[char[∑[n]]], A000040(A141539(n)))`
-/

namespace A082786.P1043408340405895309
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (A141539 n).toNat).toNat

end

end A082786.P1043408340405895309

namespace A082786

/-- `val(∑[char[∑[n]]], A000040(A141539(n)))` -/
def P1043408340405895309.Spec : Prop :=
  ∀ n, (P1043408340405895309.a n : ℤ) = A082786 (n + 1)

end A082786

/-! ## A082786.P7591684836157174861

`val(A002024(n+1), A020639(A246278(n+2)))`
-/

namespace A082786.P7591684836157174861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002024 (n + 1)).toNat (A020639 (A246278 (n + 2)).toNat).toNat

end

end A082786.P7591684836157174861

namespace A082786

/-- `val(A002024(n+1), A020639(A246278(n+2)))` -/
def P7591684836157174861.Spec : Prop :=
  ∀ n, (P7591684836157174861.a n : ℤ) = A082786 (n + 1)

end A082786

/-!
# A082787: a(n) = (2/3)*(2*n-1)!*binomial(3*n,2*n).

The programs for A082787, the canonical program `A082787.P16578791724663449814` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082787 has offset 1).

The definition of A082787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082787.P16578791724663449814

`2*(2*(n+1)-1)!*C(3*(n+1), 2*(n+1))/3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082787

/-- `2*(2*(n+1)-1)!*C(3*(n+1), 2*(n+1))/3` -/
def P16578791724663449814.Spec : Prop :=
  ∀ n, P16578791724663449814.a n = (A082787 (n + 1) : ℚ)

end A082787

/-! ## A082787.P12603886506944337022

`2/3*(2*(n+1)-1)!*C(3*(n+1), 2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082787.P12603886506944337022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (Nat.factorial ((2 * (n + 1) : ℤ) - 1).toNat : ℚ) * (Nat.choose (3 * (n + 1)) (2 * (n + 1)) : ℚ)

end

end A082787.P12603886506944337022

namespace A082787

/-- `2/3*(2*(n+1)-1)!*C(3*(n+1), 2*(n+1))` -/
def P12603886506944337022.Spec : Prop :=
  ∀ n, P12603886506944337022.a n = (A082787 (n + 1) : ℚ)

end A082787

/-! ## A082787.P8708465382630774751

`(2*n+1)!*C(3*n+2, n+1)`
-/

namespace A082787.P8708465382630774751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n + 1) * Nat.choose (3 * n + 2) (n + 1)

end

end A082787.P8708465382630774751

namespace A082787

/-- `(2*n+1)!*C(3*n+2, n+1)` -/
def P8708465382630774751.Spec : Prop :=
  ∀ n, (P8708465382630774751.a n : ℤ) = A082787 (n + 1)

end A082787

/-! ## A082787.P4418363914176806615

`∏[n+2]*A205824(n+1)`
-/

namespace A082787.P4418363914176806615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A205824 (n + 1)

end

end A082787.P4418363914176806615

namespace A082787

/-- `∏[n+2]*A205824(n+1)` -/
def P4418363914176806615.Spec : Prop :=
  ∀ n, P4418363914176806615.a n = A082787 (n + 1)

end A082787

/-! ## A082787.P11467588949447508011

`A005408(n)!*A165817(n+1)`
-/

namespace A082787.P11467588949447508011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A005408 n).toNat : ℤ) * A165817 (n + 1)

end

end A082787.P11467588949447508011

namespace A082787

/-- `A005408(n)!*A165817(n+1)` -/
def P11467588949447508011.Spec : Prop :=
  ∀ n, P11467588949447508011.a n = A082787 (n + 1)

end A082787

/-!
# A082789: Number of nonisomorphic configurations of n triples in Steiner triple systems.

The programs for A082789, there is no canonical definition to state claims against.
-/

/-! ## A082789.P11214670066094112183

`∑[A028900((n+1)^(n-1))]`
-/

namespace A082789.P11214670066094112183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082789.P11214670066094112183

/-! ## A082789.P9199066115875571232

`A255350(C(floor((n+1)*sqrt(10)), n))`
-/

namespace A082789.P9199066115875571232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255350 (Nat.choose ⌊(n + 1 : ℝ) * Real.sqrt (10 : ℝ)⌋.toNat n)

end

end A082789.P9199066115875571232

/-!
# A082790: Number of nonisomorphic configurations of degree >= 2 (or generators) of n triples in Steiner triple systems.

The programs for A082790, there is no canonical definition to state claims against.
-/

/-! ## A082790.P18140661659410947923

`A325459(A277847(n!))`
-/

namespace A082790.P18140661659410947923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (A277847 (Nat.factorial n)).toNat

end

end A082790.P18140661659410947923

/-! ## A082790.P576326213091321831

`A030603(∏[A000930(n)])`
-/

namespace A082790.P576326213091321831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030603 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082790.P576326213091321831

/-! ## A082790.P16663010060980259681

`A373070(A274233(n+1))`
-/

namespace A082790.P16663010060980259681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373070 (A274233 (n + 1)).toNat

end

end A082790.P16663010060980259681

/-! ## A082790.P16674648940574721831

`A008612(2*A000568(n))`
-/

namespace A082790.P16674648940574721831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (2 * A000568 n).toNat

end

end A082790.P16674648940574721831

/-!
# A082791: Smallest k such that k*n begins with 2: a(n) = A082811(n)/n.

The programs for A082791, there is no canonical definition to state claims against.
-/

/-! ## A082791.P185120627413578678

`A082811(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082791.P185120627413578678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082811 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A082791.P185120627413578678

/-! ## A082791.P5152486991098738792

`A008574(A082811(n+1))%A004767(n)`
-/

namespace A082791.P5152486991098738792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A082811 (n + 1)).toNat) (A004767 n)

end

end A082791.P5152486991098738792

/-! ## A082791.P17770232891926344678

`A008458(A082811(n+1))%A016969(n)`
-/

namespace A082791.P17770232891926344678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 (A082811 (n + 1)).toNat) (A016969 n)

end

end A082791.P17770232891926344678

/-! ## A082791.P16467358355954737099

`A008706(A082811(n+1))%A016897(n)`
-/

namespace A082791.P16467358355954737099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 (A082811 (n + 1)).toNat) (A016897 n)

end

end A082791.P16467358355954737099

/-! ## A082791.P14101743934672536786

`gcd(A082811(A030665(n+1)), A082811(n+1))`
-/

namespace A082791.P14101743934672536786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082811 (A030665 (n + 1)).toNat) (A082811 (n + 1))

end

end A082791.P14101743934672536786

/-! ## A082791.P10916573140248393366

`A082811(A158128(n+1))%25`
-/

namespace A082791.P10916573140248393366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082811 (A158128 (n + 1)).toNat) 25

end

end A082791.P10916573140248393366

/-!
# A082792: Smallest multiple of n beginning with 3.

The programs for A082792, there is no canonical definition to state claims against.
-/

/-! ## A082792.P15135326335773213768

`A295430(n+1)%A187090(A118759(3*(n+1)))`
-/

namespace A082792.P15135326335773213768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295430 (n + 1)) (A187090 (A118759 (3 * (n + 1))).toNat)

end

end A082792.P15135326335773213768

/-! ## A082792.P7047522718916308983

`A295430(n+1)%A004769(A143095(n))`
-/

namespace A082792.P7047522718916308983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295430 (n + 1)) (A004769 (A143095 n).toNat)

end

end A082792.P7047522718916308983

/-! ## A082792.P15600812304775237855

`gcd(A061397(A252501(n)), A295430(n+1))`
-/

namespace A082792.P15600812304775237855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061397 (A252501 n).toNat) (A295430 (n + 1))

end

end A082792.P15600812304775237855

/-! ## A082792.P17296037750835771374

`A295430(gcd(A055672(n), A187829(n+1)))`
-/

namespace A082792.P17296037750835771374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295430 (Int.gcd (A055672 n) (A187829 (n + 1)))

end

end A082792.P17296037750835771374

/-!
# A082793: A tribonacci triangle in which the top two northeast and southeast diagonals consist of tribonacci numbers.

The programs for A082793, there is no canonical definition to state claims against.
-/

/-! ## A082793.P10573038017681803674

`A351655(A036561(n))`
-/

namespace A082793.P10573038017681803674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351655 (A036561 n).toNat

end

end A082793.P10573038017681803674

/-! ## A082793.P5162265971240759380

`A351655(A082234(n+1))`
-/

namespace A082793.P5162265971240759380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351655 (A082234 (n + 1)).toNat

end

end A082793.P5162265971240759380

/-! ## A082793.P10518663809681848982

`A351655(A175840(n))`
-/

namespace A082793.P10518663809681848982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351655 (A175840 n).toNat

end

end A082793.P10518663809681848982

/-! ## A082793.P18066417998074529574

`A351655(A120027(n))`
-/

namespace A082793.P18066417998074529574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351655 (A120027 n).toNat

end

end A082793.P18066417998074529574

/-! ## A082793.P16349421946457322993

`A351655(A232646(n+1))`
-/

namespace A082793.P16349421946457322993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351655 (A232646 (n + 1)).toNat

end

end A082793.P16349421946457322993

/-!
# A082799: Smallest multiple of 3 beginning with n.

The programs for A082799, the canonical program `A082799.P4089817534158944190` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082799 has offset 1).

The definition of A082799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082799.P4089817534158944190

`2*a(n-3)-a(n-6)` with `a(0)=12, a(1)=21, a(2)=3, a(3)=42, a(4)=51, a(5)=6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082799

/-- `2*a(n-3)-a(n-6)` -/
def P4089817534158944190.Spec : Prop :=
  ∀ n, P4089817534158944190.a n = A082799 (n + 1)

theorem P4089817534158944190.correct : P4089817534158944190.Spec := by
  intro n
  simp only [A082799, Nat.add_sub_cancel]

end A082799

/-! ## A082799.P4375397703768393045

`A082801(2*(n+1))/2`
-/

namespace A082799.P4375397703768393045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082801 (2 * (n + 1)) : ℚ) / 2

end

end A082799.P4375397703768393045

namespace A082799

/-- `A082801(2*(n+1))/2` -/
def P4375397703768393045.Spec : Prop :=
  ∀ n, P4375397703768393045.a n = (A082799 (n + 1) : ℚ)

end A082799

/-! ## A082799.P10626018690841167340

`A082804(3*(n+1))/3`
-/

namespace A082799.P10626018690841167340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082804 (3 * (n + 1)) : ℚ) / 3

end

end A082799.P10626018690841167340

namespace A082799

/-- `A082804(3*(n+1))/3` -/
def P10626018690841167340.Spec : Prop :=
  ∀ n, P10626018690841167340.a n = (A082799 (n + 1) : ℚ)

end A082799

/-! ## A082799.P9781934118108802651

`A082804(3*(n+1))-A082801(2*(n+1))`
-/

namespace A082799.P9781934118108802651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082804 (3 * (n + 1)) - A082801 (2 * (n + 1))

end

end A082799.P9781934118108802651

namespace A082799

/-- `A082804(3*(n+1))-A082801(2*(n+1))` -/
def P9781934118108802651.Spec : Prop :=
  ∀ n, P9781934118108802651.a n = A082799 (n + 1)

end A082799

/-! ## A082799.P1049997502740257096

`A004525(A082801(2*(n+1)))`
-/

namespace A082799.P1049997502740257096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A082801 (2 * (n + 1))).toNat

end

end A082799.P1049997502740257096

namespace A082799

/-- `A004525(A082801(2*(n+1)))` -/
def P1049997502740257096.Spec : Prop :=
  ∀ n, P1049997502740257096.a n = A082799 (n + 1)

end A082799

/-! ## A082799.P7342124057162382593

`A110654(A082801(2*(n+1))-1)`
-/

namespace A082799.P7342124057162382593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A082801 (2 * (n + 1)) - 1).toNat

end

end A082799.P7342124057162382593

namespace A082799

/-- `A110654(A082801(2*(n+1))-1)` -/
def P7342124057162382593.Spec : Prop :=
  ∀ n, P7342124057162382593.a n = A082799 (n + 1)

end A082799

