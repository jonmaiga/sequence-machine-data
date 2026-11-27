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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C050
import Seq.B000.C052
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A304700: Number of nX4 0..1 arrays with every element unequal to 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304700, there is no canonical definition to state claims against.
-/

/-! ## A304700.P11257450004623644629

`A304704(∑[n+3]+7)`
-/

namespace A304700.P11257450004623644629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304700.P11257450004623644629

/-!
# A304701: Number of nX5 0..1 arrays with every element unequal to 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304701, there is no canonical definition to state claims against.
-/

/-! ## A304701.P4365210293393719275

`A304704(∑[n+4]+11)`
-/

namespace A304701.P4365210293393719275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A304701.P4365210293393719275

/-!
# A304702: Number of nX6 0..1 arrays with every element unequal to 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304702, there is no canonical definition to state claims against.
-/

/-! ## A304702.P11079109249292026293

`A304704(A374007(n+1))`
-/

namespace A304702.P11079109249292026293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (A374007 (n + 1)).toNat

end

end A304702.P11079109249292026293

/-!
# A304703: Number of nX7 0..1 arrays with every element unequal to 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304703, there is no canonical definition to state claims against.
-/

/-! ## A304703.P7210639178614508357

`A304704(A374008(n+1))`
-/

namespace A304703.P7210639178614508357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (A374008 (n + 1)).toNat

end

end A304703.P7210639178614508357

/-!
# A304704: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304704, there is no canonical definition to state claims against.
-/

/-! ## A304704.P12027056594890260317

`A305452(n+1)+A082858(A131235(n))`
-/

namespace A304704.P12027056594890260317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (n + 1) + A082858 (A131235 n).toNat

end

end A304704.P12027056594890260317

/-! ## A304704.P9786152216041134578

`A305452(n+1)+A170980(A099594(n))`
-/

namespace A304704.P9786152216041134578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (n + 1) + A170980 (A099594 n).toNat

end

end A304704.P9786152216041134578

/-! ## A304704.P18020680047754860783

`A305452(n+1)+A244415(A168549(n))`
-/

namespace A304704.P18020680047754860783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (n + 1) + A244415 (A168549 n).toNat

end

end A304704.P18020680047754860783

/-! ## A304704.P206735368629028376

`A305452(n+1)+A131809(A331277(n))`
-/

namespace A304704.P206735368629028376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (n + 1) + A131809 (A331277 n).toNat

end

end A304704.P206735368629028376

/-! ## A304704.P295701425138815164

`A305452(n+1)+A133723(A331562(n))`
-/

namespace A304704.P295701425138815164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (n + 1) + A133723 (A331562 n).toNat

end

end A304704.P295701425138815164

/-!
# A304705: Number of partitions (d1,d2,...,dm) of n such that d1/1 >= d2/2 >= ... >= dm/m and 0 < d1 <= d2 <= ... <= dm.

The programs for A304705, there is no canonical definition to state claims against.
-/

/-! ## A304705.P12168895699922548916

`A334043(n+1)+A005361(A006720(n))`
-/

namespace A304705.P12168895699922548916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334043 (n + 1) + A005361 (A006720 n).toNat

end

end A304705.P12168895699922548916

/-! ## A304705.P10326479117875397766

`A334043(n+1)+A326674(A287020(n))`
-/

namespace A304705.P10326479117875397766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334043 (n + 1) + A326674 (A287020 n).toNat

end

end A304705.P10326479117875397766

/-! ## A304705.P5681170498305440784

`A334043(n+1)+A157196(A329356(n+2))`
-/

namespace A304705.P5681170498305440784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334043 (n + 1) + A157196 (A329356 (n + 2)).toNat

end

end A304705.P5681170498305440784

/-! ## A304705.P4764006802330882380

`A225541(n+3)+n-A287170(A045924(n+1))`
-/

namespace A304705.P4764006802330882380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (n + 3) + ((n : ℤ) - A287170 (A045924 (n + 1)).toNat)

end

end A304705.P4764006802330882380

/-! ## A304705.P6145124902762452050

`A000120(A210964(n))+n-A287170(A045924(n+1))`
-/

namespace A304705.P6145124902762452050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A210964 n).toNat + ((n : ℤ) - A287170 (A045924 (n + 1)).toNat)

end

end A304705.P6145124902762452050

/-!
# A304706: Number of partitions (d1,d2,...,dm) of n such that d1/1 > d2/2 > ... > dm/m and 0 < d1 <= d2 <= ... <= dm.

The programs for A304706, there is no canonical definition to state claims against.
-/

/-! ## A304706.P8038981902294514165

`A262869(A276421(n)+A187829(n+1))`
-/

namespace A304706.P8038981902294514165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A276421 n + A187829 (n + 1)).toNat

end

end A304706.P8038981902294514165

/-! ## A304706.P13817543275217087001

`A000120(A319861(n)+A080610(n))`
-/

namespace A304706.P13817543275217087001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A319861 n + A080610 n).toNat

end

end A304706.P13817543275217087001

/-! ## A304706.P8803442842453925147

`A325356(n)+A212619(A000041(n))`
-/

namespace A304706.P8803442842453925147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325356 n + A212619 (A000041 n).toNat

end

end A304706.P8803442842453925147

/-! ## A304706.P6295715280414964287

`A337346(A001006(n))+A325356(n)`
-/

namespace A304706.P6295715280414964287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337346 (A001006 n).toNat + A325356 n

end

end A304706.P6295715280414964287

/-! ## A304706.P4839531051494528667

`A325356(n)+A305354(A137948(n))`
-/

namespace A304706.P4839531051494528667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325356 n + A305354 (A137948 n).toNat

end

end A304706.P4839531051494528667

/-!
# A304707: Number of partitions (d1,d2,...,dm) of n such that d1/1 >= d2/2 >= ... >= dm/m and d1 < d2 < ... < dm.

The programs for A304707, there is no canonical definition to state claims against.
-/

/-! ## A304707.P5468813983956239013

`A320387(n)+A082784(A121431(n+4))`
-/

namespace A304707.P5468813983956239013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320387 n + A082784 (A121431 (n + 4)).toNat

end

end A304707.P5468813983956239013

/-! ## A304707.P7150082040608654489

`xor(A008611(n), A064911(A103158(n+1)))`
-/

namespace A304707.P7150082040608654489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008611 n) (A064911 (A103158 (n + 1)).toNat)

end

end A304707.P7150082040608654489

/-! ## A304707.P9938924684074141791

`A057367(n)+A034931(A257621(n))`
-/

namespace A304707.P9938924684074141791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 n + A034931 (A257621 n).toNat

end

end A304707.P9938924684074141791

/-! ## A304707.P14779065649762319107

`A320387(n)+A010054(A305101(n+4))`
-/

namespace A304707.P14779065649762319107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320387 n + A010054 (A305101 (n + 4)).toNat

end

end A304707.P14779065649762319107

/-! ## A304707.P1693300413420173352

`A055642(A001045(n))+A025427(n)`
-/

namespace A304707.P1693300413420173352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A001045 n).toNat + A025427 n

end

end A304707.P1693300413420173352

/-!
# A304708: Number of partitions (d1,d2,...,dm) of n such that d1/1 > d2/2 > ... > dm/m and d1 < d2 < ... < dm.

The programs for A304708, there is no canonical definition to state claims against.
-/

/-! ## A304708.P11631200571934169609

`A007895(A395104(n+1))`
-/

namespace A304708.P11631200571934169609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A395104 (n + 1)).toNat

end

end A304708.P11631200571934169609

/-! ## A304708.P13951000731717828986

`A342739(A342739(n+1)+A252943(n+1))`
-/

namespace A304708.P13951000731717828986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342739 (A342739 (n + 1) + A252943 (n + 1)).toNat

end

end A304708.P13951000731717828986

/-!
# A304709: Number of integer partitions of n whose distinct parts are pairwise coprime.

The programs for A304709, there is no canonical definition to state claims against.
-/

/-! ## A304709.P6032159809737691221

`A304712(n+1)+1-A000005(n+1)`
-/

namespace A304709.P6032159809737691221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304712 (n + 1) + 1 - A000005 (n + 1)

end

end A304709.P6032159809737691221

/-! ## A304709.P17132811323728259802

`A304712(1+n)-A032741(n+1)`
-/

namespace A304709.P17132811323728259802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304712 (1 + n) - A032741 (n + 1)

end

end A304709.P17132811323728259802

/-! ## A304709.P16775127525554994621

`A304712(n+1)+1-A179942(n+1)`
-/

namespace A304709.P16775127525554994621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304712 (n + 1) + (1 - A179942 (n + 1))

end

end A304709.P16775127525554994621

/-! ## A304709.P11405806130276050203

`A304712(n+1)+A337665(n+1)-A337664(n+1)`
-/

namespace A304709.P11405806130276050203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304712 (n + 1) + (A337665 (n + 1) - A337664 (n + 1))

end

end A304709.P11405806130276050203

/-! ## A304709.P10504891563722465420

`A338315(n+1)+A304712(n)`
-/

namespace A304709.P10504891563722465420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338315 (n + 1) + A304712 n

end

end A304709.P10504891563722465420

/-! ## A304709.P8028433140369411151

`∑[A338317(n)+Δ[A338315(n)]]`
-/

namespace A304709.P8028433140369411151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338315 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338317 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304709.P8028433140369411151

/-! ## A304709.P1022567899891798715

`A338315(n+1)+∑[A338317(n)]`
-/

namespace A304709.P1022567899891798715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338315 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304709.P1022567899891798715

/-!
# A304710: Number of partitions of 2n whose Ferrers-Young diagram cannot be tiled with dominoes.

The programs for A304710, there is no canonical definition to state claims against.
-/

/-! ## A304710.P15987264863014143832

`A058696(n)-A000712(n)`
-/

namespace A304710.P15987264863014143832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A000712 n

end

end A304710.P15987264863014143832

/-! ## A304710.P17861820956119208361

`A000041(2*n)-A000712(n)`
-/

namespace A304710.P17861820956119208361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A000712 n

end

end A304710.P17861820956119208361

/-! ## A304710.P11543288463526631690

`A182616(n)-A122768(n)`
-/

namespace A304710.P11543288463526631690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 n - A122768 n

end

end A304710.P11543288463526631690

/-! ## A304710.P11815774925570539522

`A058696(n)-∑[A000990(n)]`
-/

namespace A304710.P11815774925570539522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304710.P11815774925570539522

/-! ## A304710.P11496033799180683964

`A000041(2*n)-∑[A000990(n)]`
-/

namespace A304710.P11496033799180683964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304710.P11496033799180683964

/-! ## A304710.P16500530562115651985

`A000065(A004277(n))-(A122768(n)+A000065(n))`
-/

namespace A304710.P16500530562115651985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A004277 n).toNat - (A122768 n + A000065 n)

end

end A304710.P16500530562115651985

/-! ## A304710.P15766295688642062106

`A035363(4*n)-A000712(n)`
-/

namespace A304710.P15766295688642062106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (4 * n) - A000712 n

end

end A304710.P15766295688642062106

/-! ## A304710.P18027039626857619145

`A000041(2*n)-A060850(A000096(n+1))`
-/

namespace A304710.P18027039626857619145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A060850 (A000096 (n + 1)).toNat

end

end A304710.P18027039626857619145

/-! ## A304710.P6402245750974272920

`A239830(A014105(n))-A000712(n)`
-/

namespace A304710.P6402245750974272920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A014105 n).toNat - A000712 n

end

end A304710.P6402245750974272920

/-! ## A304710.P8999311666486691562

`A103923(A000217(2*n))-A000712(n)`
-/

namespace A304710.P8999311666486691562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (A000217 (2 * n)).toNat - A000712 n

end

end A304710.P8999311666486691562

/-!
# A304711: Heinz numbers of integer partitions whose distinct parts are pairwise coprime.

The programs for A304711, there is no canonical definition to state claims against.
-/

/-! ## A304711.P14872665940329679322

`record[A327529(n+2)/A290105(n+2)]`
-/

namespace A304711.P14872665940329679322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327529 (n + 2) : ℚ) / (A290105 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304711.P14872665940329679322

/-! ## A304711.P13726297173723400797

`record[A327529(A290105(n+1)+A028310(n))]`
-/

namespace A304711.P13726297173723400797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (A290105 (n + 1) + A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304711.P13726297173723400797

/-! ## A304711.P9347673051267035224

`record[A289509(n+1)/A290105(A289509(n+1))]`
-/

namespace A304711.P9347673051267035224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289509 (n + 1) : ℚ) / (A290105 (A289509 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304711.P9347673051267035224

/-! ## A304711.P5975100727648410314

`A336735(∑[A032548(or(n, n+1)+1)]+1)`
-/

namespace A304711.P5975100727648410314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (Nat.lor n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336735 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A304711.P5975100727648410314

/-! ## A304711.P3678988612728932623

`∩[A336735(n+1), A379313(n+1)]`
-/

namespace A304711.P3678988612728932623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304711.P3678988612728932623

/-!
# A304712: Number of integer partitions of n whose parts are all equal or whose distinct parts are pairwise coprime.

The programs for A304712, there is no canonical definition to state claims against.
-/

/-! ## A304712.P16088990013944605000

`∑[A338317(n)]`
-/

namespace A304712.P16088990013944605000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304712.P16088990013944605000

/-! ## A304712.P17346662291291150882

`A338317(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A304712.P17346662291291150882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338317 n + a (A023443 n).toNat

end

end A304712.P17346662291291150882

/-! ## A304712.P6594133089320061183

`A304709(round(acot(n)+n))+A032741(n)`
-/

namespace A304712.P6594133089320061183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304709 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A032741 n

end

end A304712.P6594133089320061183

/-! ## A304712.P12223436369235825897

`A304709(abs(n-1)+1)+A032741(n)`
-/

namespace A304712.P12223436369235825897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304709 (|(n : ℤ) - 1| + 1).toNat + A032741 n

end

end A304712.P12223436369235825897

/-! ## A304712.P14955242424235769461

`a(n-1)+A338317(n)+and(1, A053191(n+1))` with `a(0)=1`
-/

namespace A304712.P14955242424235769461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A338317 n + Int.land 1 (A053191 (n + 1)))

end

end A304712.P14955242424235769461

/-! ## A304712.P15006695911815854945

`A304709(n+1)-A338315(n+1)`
-/

namespace A304712.P15006695911815854945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304709 (n + 1) - A338315 (n + 1)

end

end A304712.P15006695911815854945

/-!
# A304713: Squarefree numbers whose prime indices are pairwise indivisible. Heinz numbers of strict integer partitions with pairwise indivisible parts.

The programs for A304713, there is no canonical definition to state claims against.
-/

/-! ## A304713.P1452437588980961359

`record[A007913(A316476(1+n))]`
-/

namespace A304713.P1452437588980961359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A316476 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304713.P1452437588980961359

/-! ## A304713.P3543105607556757889

`record[A007947(A316476(n+1))]`
-/

namespace A304713.P3543105607556757889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A316476 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304713.P3543105607556757889

/-! ## A304713.P9358232179095435821

`record[A327393(A005117(n+1))]`
-/

namespace A304713.P9358232179095435821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327393 (A005117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304713.P9358232179095435821

/-! ## A304713.P13659271205453822835

`filter[A316476(n+1), A000188(#)]`
-/

namespace A304713.P13659271205453822835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000188 (f1 j).toNat = 1) n)

end

end A304713.P13659271205453822835

/-! ## A304713.P1650942994174717529

`filter[A316476(n+1), A000189(#)]`
-/

namespace A304713.P1650942994174717529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000189 (f1 j).toNat = 1) n)

end

end A304713.P1650942994174717529

/-! ## A304713.P15000416592328575991

`filter[A316476(1+n), A000688(#)]`
-/

namespace A304713.P15000416592328575991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000688 (f1 j).toNat = 1) n)

end

end A304713.P15000416592328575991

/-! ## A304713.P9403810738083796733

`filter[A316476(n+1), A008966(#)]`
-/

namespace A304713.P9403810738083796733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A304713.P9403810738083796733

/-! ## A304713.P499923505956258299

`filter[A003968(n+1), A378442(#)]`
-/

namespace A304713.P499923505956258299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A304713.P499923505956258299

/-! ## A304713.P2767936228692488127

`filter[A005117(n+1), A378442(#)]`
-/

namespace A304713.P2767936228692488127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A304713.P2767936228692488127

/-! ## A304713.P13313647409474310941

`filter[A064594(n+1), A378442(#)]`
-/

namespace A304713.P13313647409474310941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A304713.P13313647409474310941

/-!
# A304714: Number of connected strict integer partitions of n.

The programs for A304714, there is no canonical definition to state claims against.
-/

/-! ## A304714.P16523474866929986665

`A322401(n+1)+A322337(n+1)`
-/

namespace A304714.P16523474866929986665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322401 (n + 1) + A322337 (n + 1)

end

end A304714.P16523474866929986665

/-! ## A304714.P16480280823477128970

`A000009(1+n)-A322369(n+1)`
-/

namespace A304714.P16480280823477128970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (1 + n) - A322369 (n + 1)

end

end A304714.P16480280823477128970

/-! ## A304714.P2347192840245328480

`A029169(n+1-A322338(5*(n+1)))`
-/

namespace A304714.P2347192840245328480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029169 ((n + 1 : ℤ) - A322338 (5 * (n + 1))).toNat

end

end A304714.P2347192840245328480

/-! ## A304714.P10840739355324017480

`A363822(A000961(n+1)-A000010(n+1))`
-/

namespace A304714.P10840739355324017480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363822 (A000961 (n + 1) - A000010 (n + 1)).toNat

end

end A304714.P10840739355324017480

/-!
# A304716: Number of integer partitions of n whose distinct parts are connected.

The programs for A304716, there is no canonical definition to state claims against.
-/

/-! ## A304716.P14654279573126085746

`A218970(n+1)+ceil(abs(sin(n)))`
-/

namespace A304716.P14654279573126085746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (n + 1) + ⌈|Real.sin (n : ℝ)|⌉

end

end A304716.P14654279573126085746

/-! ## A304716.P16892856791516331236

`A218970(-xor(n, -1))-(floor(acot(n))-1)`
-/

namespace A304716.P16892856791516331236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (-Int.xor (n : ℤ) (-1)).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A304716.P16892856791516331236

/-! ## A304716.P2693776536558976381

`A218970(1+n)+A057427(n)`
-/

namespace A304716.P2693776536558976381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (1 + n) + A057427 n

end

end A304716.P2693776536558976381

/-! ## A304716.P4167308799984494052

`A218970(n+1)+A178334(n)`
-/

namespace A304716.P4167308799984494052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (n + 1) + A178334 n

end

end A304716.P4167308799984494052

/-! ## A304716.P16181813405546039873

`A218970(n+1)-A057428(n)`
-/

namespace A304716.P16181813405546039873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (n + 1) - A057428 n

end

end A304716.P16181813405546039873

/-! ## A304716.P3736754950122024976

`A218970(n+1)+A002828(n²)`
-/

namespace A304716.P3736754950122024976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (n + 1) + A002828 (n ^ 2)

end

end A304716.P3736754950122024976

/-! ## A304716.P11817351410444681863

`A218970(n+1)%A000032(n+1)+1`
-/

namespace A304716.P11817351410444681863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218970 (n + 1)) (A000032 (n + 1)) + 1

end

end A304716.P11817351410444681863

/-! ## A304716.P17846190886794481408

`A218970(n+1)+A000040(n+1)%2`
-/

namespace A304716.P17846190886794481408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A304716.P17846190886794481408

/-! ## A304716.P3915880651495377884

`A218970(n+1)+record[A020639(n+2)]%2`
-/

namespace A304716.P3915880651495377884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (n + 1) + Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A304716.P3915880651495377884

/-! ## A304716.P9669660855480165459

`A322401(A305079(n+1))+A218970(n+1)`
-/

namespace A304716.P9669660855480165459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322401 (A305079 (n + 1)).toNat + A218970 (n + 1)

end

end A304716.P9669660855480165459

/-!
# A304717: Number of connected strict integer partitions of n with pairwise indivisible parts.

The programs for A304717, there is no canonical definition to state claims against.
-/

/-! ## A304717.P18275906796133317253

`A037477(A304382(n+1)%A121992(2*n+1))`
-/

namespace A304717.P18275906796133317253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A304382 (n + 1)) (A121992 (2 * n + 1))).toNat

end

end A304717.P18275906796133317253

/-!
# A304718: Number T(n,k) of domino tilings of Ferrers-Young diagrams of partitions of 2n using exactly k horizontally oriented dominoes; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A304718, there is no canonical definition to state claims against.
-/

/-! ## A304718.P3176938310103194972

`A057428(A051767(n+1))+A036355(n)`
-/

namespace A304718.P3176938310103194972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A051767 (n + 1)).toNat + A036355 n

end

end A304718.P3176938310103194972

/-! ## A304718.P17027709131958007824

`A008615(A000196(A238255(n+1)+n))`
-/

namespace A304718.P17027709131958007824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A000196 (A238255 (n + 1) + (n : ℤ)).toNat).toNat

end

end A304718.P17027709131958007824

/-! ## A304718.P3248388502217495207

`A178779(A298320(n+1))+A036355(n)`
-/

namespace A304718.P3248388502217495207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178779 (A298320 (n + 1)).toNat + A036355 n

end

end A304718.P3248388502217495207

/-! ## A304718.P14096129918767985668

`A036355(n)-A102683(A100683(n+1))`
-/

namespace A304718.P14096129918767985668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 n - A102683 (A100683 (n + 1)).toNat

end

end A304718.P14096129918767985668

/-! ## A304718.P13347107378752679808

`A079025(n)-A001222(A212943(n+1))`
-/

namespace A304718.P13347107378752679808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 n - A001222 (A212943 (n + 1)).toNat

end

end A304718.P13347107378752679808

/-!
# A304719: Number of domino tilings of Ferrers-Young diagrams of partitions of 2n using exactly floor(n/2) horizontally oriented dominoes.

The programs for A304719, there is no canonical definition to state claims against.
-/

/-! ## A304719.P12757355999220591808

`A304718(C(n+1, 2)+floor(n/2))`
-/

namespace A304719.P12757355999220591808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304718 ((Nat.choose (n + 1) 2 : ℤ) + ⌊(n : ℚ) / 2⌋).toNat

end

end A304719.P12757355999220591808

/-! ## A304719.P6145543592840460758

`A304718(∑[or(1, n)]-1)`
-/

namespace A304719.P6145543592840460758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304718 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A304719.P6145543592840460758

/-!
# A304720: Number of nonnegative integers k such that n - (4^k - k) is positive and squarefree.

The programs for A304720, there is no canonical definition to state claims against.
-/

/-! ## A304720.P5242347891469068565

`A072273(A000463(A218320(n+1)+A207305(n+1)))`
-/

namespace A304720.P5242347891469068565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (A000463 (A218320 (n + 1) + A207305 (n + 1)).toNat).toNat

end

end A304720.P5242347891469068565

/-! ## A304720.P46867193658269636

`A362613(record[Δ[A360241(2*n+1)]])`
-/

namespace A304720.P46867193658269636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360241 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362613 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A304720.P46867193658269636

/-! ## A304720.P10082113276244540628

`A001222(∑[A278162(A036596(n))])`
-/

namespace A304720.P10082113276244540628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 (A036596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304720.P10082113276244540628

/-! ## A304720.P10840443209239690925

`A071625(lcm(A080513(n), A272769(n)))`
-/

namespace A304720.P10840443209239690925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (Int.lcm (A080513 n) (A272769 n))

end

end A304720.P10840443209239690925

/-! ## A304720.P13430339065130895527

`A001221(or(A096199(n+1), A282067(n)))`
-/

namespace A304720.P13430339065130895527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A096199 (n + 1)) (A282067 n)).toNat

end

end A304720.P13430339065130895527

/-!
# A304721: Numbers m with A304720(m) = 1.

The programs for A304721, there is no canonical definition to state claims against.
-/

/-! ## A304721.P10586754499003469771

`eq[1, A304720(n+1)]+1`
-/

namespace A304721.P10586754499003469771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A304721.P10586754499003469771

/-! ## A304721.P8505202304418446650

`eq[5, A271008(a(A304720(n)))]` with `a(0)=0`
-/

namespace A304721.P8505202304418446650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A271008 (f2 (A304720 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304721.P8505202304418446650

/-! ## A304721.P9286073708081212981

`eq[1, A000122(a(A304720(n)))]` with `a(0)=5`
-/

namespace A304721.P9286073708081212981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A000122 (f2 (A304720 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304721.P9286073708081212981

/-! ## A304721.P6224375632483486939

`eq[5, A000040(a(A304720(n)))]` with `a(0)=2`
-/

namespace A304721.P6224375632483486939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A000040 (f2 (A304720 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304721.P6224375632483486939

/-! ## A304721.P3908011770005773706

`eq[a(A304720(n))-3, A040000(n)]` with `a(0)=0, a(1)=5`
-/

namespace A304721.P3908011770005773706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (A304720 n).toNat - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304721.P3908011770005773706

/-!
# A304723: a(n) = 5^(n-1)*(3^n - 1)/2.

The programs for A304723, the canonical program `A304723.P2874601475340002666` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304723 has offset 0).

The definition of A304723 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^(n-1)*(3^n-1)/2` (program `A304723.P18410265432855699756`, by `A304723.P18410265432855699756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304723.P4788175035616471696

`ogf(x/(1-20x+75x^2))`
-/

namespace A304723.P4788175035616471696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -20, 75] n

end

end A304723.P4788175035616471696

namespace A304723

/-- `ogf(x/(1-20x+75x^2))` -/
def P4788175035616471696.Spec : Prop :=
  ∀ n, P4788175035616471696.a n = A304723 n

end A304723

/-! ## A304723.P18410265432855699756

`5^(n-1)*(3^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304723.P18410265432855699756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((3 ^ n : ℤ) - 1 : ℚ) / 2

end

end A304723.P18410265432855699756

namespace A304723

/-- `5^(n-1)*(3^n-1)/2` -/
def P18410265432855699756.Spec : Prop :=
  ∀ n, P18410265432855699756.a n = (A304723 n : ℚ)

theorem P18410265432855699756.correct : P18410265432855699756.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A304723, Nat.add_sub_cancel, A304723.P18410265432855699756.a, A304723.P2874601475340002666.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A304723, Nat.add_sub_cancel, A304723.P18410265432855699756.a, A304723.P2874601475340002666.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A304723

/-! ## A304723.P2874601475340002666

`20*a(n-1)-75*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A304723

/-- `20*a(n-1)-75*a(n-2)` -/
def P2874601475340002666.Spec : Prop :=
  ∀ n, P2874601475340002666.a n = A304723 n

theorem P2874601475340002666.correct : P2874601475340002666.Spec := by
  intro n
  simp only [A304723]

end A304723

/-! ## A304723.P2953550789331101548

`∑[3*a(n-1)]*5^(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A304723.P2953550789331101548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A304723.P2953550789331101548

namespace A304723

/-- `∑[3*a(n-1)]*5^(n-1)` -/
def P2953550789331101548.Spec : Prop :=
  ∀ n, P2953550789331101548.a n = (A304723 n : ℚ)

end A304723

/-! ## A304723.P13280829156894233582

`5^(n-1)*A003462(n)`
-/

namespace A304723.P13280829156894233582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A003462 n : ℚ)

end

end A304723.P13280829156894233582

namespace A304723

/-- `5^(n-1)*A003462(n)` -/
def P13280829156894233582.Spec : Prop :=
  ∀ n, P13280829156894233582.a n = (A304723 n : ℚ)

end A304723

/-! ## A304723.P14382902618653650516

`(A115098(n)-2)*5^(n-1)`
-/

namespace A304723.P14382902618653650516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115098 n - 2 : ℚ) * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A304723.P14382902618653650516

namespace A304723

/-- `(A115098(n)-2)*5^(n-1)` -/
def P14382902618653650516.Spec : Prop :=
  ∀ n, P14382902618653650516.a n = (A304723 n : ℚ)

end A304723

/-! ## A304723.P18235871441018587980

`abs(record[A152572(n)]*A003462(n))`
-/

namespace A304723.P18235871441018587980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A003462 n|

end

end A304723.P18235871441018587980

namespace A304723

/-- `abs(record[A152572(n)]*A003462(n))` -/
def P18235871441018587980.Spec : Prop :=
  ∀ n, P18235871441018587980.a n = A304723 n

end A304723

/-!
# A304724: Primes congruent to {7, 16, 20, 23, 24, 25} mod 29.

The programs for A304724, there is no canonical definition to state claims against.
-/

/-! ## A304724.P14088263414842831178

`A325371(A194271(n+2)+A054770(n+1))`
-/

namespace A304724.P14088263414842831178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325371 (A194271 (n + 2) + A054770 (n + 1)).toNat

end

end A304724.P14088263414842831178

/-!
# A304725: a(n) = n^4 + 8*n^3 + 20*n^2 + 16*n + 2.

The programs for A304725, the canonical program `A304725.P7536248727379043506` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304725 has offset 0).

The definition of A304725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+8*n^3+20*n²+16*n+2` (program `A304725.P7536248727379043506`, by `A304725.P7536248727379043506.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304725.P3973235623733481357

`ogf((2+37x-21x^2+7x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A304725.P3973235623733481357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 37, -21, 7, -1] [1, -5, 10, -10, 5, -1] n

end

end A304725.P3973235623733481357

namespace A304725

/-- `ogf((2+37x-21x^2+7x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P3973235623733481357.Spec : Prop :=
  ∀ n, P3973235623733481357.a n = A304725 n

end A304725

/-! ## A304725.P7536248727379043506

`n^4+8*n^3+20*n²+16*n+2`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A304725

/-- `n^4+8*n^3+20*n²+16*n+2` -/
def P7536248727379043506.Spec : Prop :=
  ∀ n, (P7536248727379043506.a n : ℤ) = A304725 n

theorem P7536248727379043506.correct : P7536248727379043506.Spec := by
  intro n
  simp only [A304725]

end A304725

/-! ## A304725.P13473819584419020179

`record[(2-n²)²-2]`
-/

namespace A304725.P13473819584419020179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n ^ 2 : ℤ)) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304725.P13473819584419020179

namespace A304725

/-- `record[(2-n²)²-2]` -/
def P13473819584419020179.Spec : Prop :=
  ∀ n, P13473819584419020179.a n = A304725 n

end A304725

/-! ## A304725.P6683337491859394529

`or(2, (n+4)*n)²-2`
-/

namespace A304725.P6683337491859394529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 ((n + 4) * n) ^ 2 : ℤ) - 2

end

end A304725.P6683337491859394529

namespace A304725

/-- `or(2, (n+4)*n)²-2` -/
def P6683337491859394529.Spec : Prop :=
  ∀ n, P6683337491859394529.a n = A304725 n

end A304725

/-! ## A304725.P6825652694948582276

`or(2, (n+4)*n)^2-2`
-/

namespace A304725.P6825652694948582276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 ((n + 4) * n) ^ 2 : ℤ) - 2

end

end A304725.P6825652694948582276

namespace A304725

/-- `or(2, (n+4)*n)^2-2` -/
def P6825652694948582276.Spec : Prop :=
  ∀ n, P6825652694948582276.a n = A304725 n

end A304725

/-! ## A304725.P893930399851346682

`((xor(n, -1)-1)²-2)²-2`
-/

namespace A304725.P893930399851346682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.xor (n : ℤ) (-1) - 1) ^ 2 - 2) ^ 2 - 2

end

end A304725.P893930399851346682

namespace A304725

/-- `((xor(n, -1)-1)²-2)²-2` -/
def P893930399851346682.Spec : Prop :=
  ∀ n, P893930399851346682.a n = A304725 n

end A304725

/-! ## A304725.P7207783751083894790

`(A269607(n+1)+A269410(n+1))%A269436(n+1)`
-/

namespace A304725.P7207783751083894790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269607 (n + 1) + A269410 (n + 1)) (A269436 (n + 1))

end

end A304725.P7207783751083894790

namespace A304725

/-- `(A269607(n+1)+A269410(n+1))%A269436(n+1)` -/
def P7207783751083894790.Spec : Prop :=
  ∀ n, P7207783751083894790.a n = A304725 n

end A304725

/-! ## A304725.P10271192288343726685

`(A269607(n+1)+A253724(n+2))%A269436(n+1)`
-/

namespace A304725.P10271192288343726685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269607 (n + 1) + A253724 (n + 2)) (A269436 (n + 1))

end

end A304725.P10271192288343726685

namespace A304725

/-- `(A269607(n+1)+A253724(n+2))%A269436(n+1)` -/
def P10271192288343726685.Spec : Prop :=
  ∀ n, P10271192288343726685.a n = A304725 n

end A304725

/-! ## A304725.P10724926350498917338

`abs(1-record[A033596(n)])`
-/

namespace A304725.P10724926350498917338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A304725.P10724926350498917338

namespace A304725

/-- `abs(1-record[A033596(n)])` -/
def P10724926350498917338.Spec : Prop :=
  ∀ n, P10724926350498917338.a n = A304725 n

end A304725

/-! ## A304725.P13457625737469343471

`fp[sqrt(n+3)-2]²-2`
-/

namespace A304725.P13457625737469343471
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 3 : ℝ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0 ^ 2 : ℤ) - 2

end

end A304725.P13457625737469343471

namespace A304725

/-- `fp[sqrt(n+3)-2]²-2` -/
def P13457625737469343471.Spec : Prop :=
  ∀ n, P13457625737469343471.a n = A304725 n

end A304725

/-!
# A304726: a(n) = n^4 + 4*n^2 + 3.

The programs for A304726, the canonical program `A304726.P3688958258049521962` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304726 has offset 0).

The definition of A304726 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+4*n²+3` (program `A304726.P3688958258049521962`, by `A304726.P3688958258049521962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304726.P10205898176267591837

`(n²+2)²-1`
-/

namespace A304726.P10205898176267591837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 2) ^ 2 : ℤ) - 1

end

end A304726.P10205898176267591837

namespace A304726

/-- `(n²+2)²-1` -/
def P10205898176267591837.Spec : Prop :=
  ∀ n, P10205898176267591837.a n = A304726 n

theorem P10205898176267591837.correct : P10205898176267591837.Spec := by
  intro n
  simp only [A304726, Nat.add_sub_cancel, A304726.P10205898176267591837.a, A304726.P3688958258049521962.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A304726

/-! ## A304726.P3688958258049521962

`n^4+4*n²+3`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A304726

/-- `n^4+4*n²+3` -/
def P3688958258049521962.Spec : Prop :=
  ∀ n, (P3688958258049521962.a n : ℤ) = A304726 n

theorem P3688958258049521962.correct : P3688958258049521962.Spec := by
  intro n
  simp only [A304726]

end A304726

/-! ## A304726.P14009166009266519795

`ogf((3-7x+25x^2-5x^3+8x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A304726.P14009166009266519795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -7, 25, -5, 8] [1, -5, 10, -10, 5, -1] n

end

end A304726.P14009166009266519795

namespace A304726

/-- `ogf((3-7x+25x^2-5x^3+8x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14009166009266519795.Spec : Prop :=
  ∀ n, P14009166009266519795.a n = A304726 n

end A304726

/-! ## A304726.P3669496033987551016

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=8, a(2)=35, a(3)=120, a(4)=323`
-/

namespace A304726.P3669496033987551016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8, 35, 120, 323] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A304726.P3669496033987551016

namespace A304726

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3669496033987551016.Spec : Prop :=
  ∀ n, P3669496033987551016.a n = A304726 n

theorem P3669496033987551016.correct : P3669496033987551016.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A304726, Nat.add_sub_cancel, A304726.P3669496033987551016.a, A304726.P3688958258049521962.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A304726, Nat.add_sub_cancel, A304726.P3669496033987551016.a, A304726.P3688958258049521962.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [h1, h2, h3, h4, h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A304726

/-! ## A304726.P10659856788931691766

`A002522(n)*A117950(n)`
-/

namespace A304726.P10659856788931691766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A117950 n

end

end A304726.P10659856788931691766

namespace A304726

/-- `A002522(n)*A117950(n)` -/
def P10659856788931691766.Spec : Prop :=
  ∀ n, P10659856788931691766.a n = A304726 n

theorem P10659856788931691766.correct : P10659856788931691766.Spec := by
  intro n
  simp only [A304726, Nat.add_sub_cancel, A304726.P10659856788931691766.a, A304726.P3688958258049521962.a, A002522, A002522.P3778392011853271743.a, A117950, A117950.P14722515508371885867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304726

/-! ## A304726.P2208490249530502247

`abs(1-or(2, n²)²)`
-/

namespace A304726.P2208490249530502247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lor 2 (n ^ 2) ^ 2 : ℤ)|

end

end A304726.P2208490249530502247

namespace A304726

/-- `abs(1-or(2, n²)²)` -/
def P2208490249530502247.Spec : Prop :=
  ∀ n, P2208490249530502247.a n = A304726 n

end A304726

/-! ## A304726.P6751506646177373638

`abs(1-xor(2, n²)²)`
-/

namespace A304726.P6751506646177373638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.xor 2 (n ^ 2) ^ 2 : ℤ)|

end

end A304726.P6751506646177373638

namespace A304726

/-- `abs(1-xor(2, n²)²)` -/
def P6751506646177373638.Spec : Prop :=
  ∀ n, P6751506646177373638.a n = A304726 n

end A304726

/-! ## A304726.P14837971325805709932

`xor(4, (n²+2)²+3)`
-/

namespace A304726.P14837971325805709932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 ((n ^ 2 + 2) ^ 2 + 3)

end

end A304726.P14837971325805709932

namespace A304726

/-- `xor(4, (n²+2)²+3)` -/
def P14837971325805709932.Spec : Prop :=
  ∀ n, (P14837971325805709932.a n : ℤ) = A304726 n

end A304726

/-! ## A304726.P7407318184625599856

`(∑[a(n-1)-2]-3)²-1` with `a(0)=1`
-/

namespace A304726.P7407318184625599856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 3) ^ 2 - 1

end

end A304726.P7407318184625599856

namespace A304726

/-- `(∑[a(n-1)-2]-3)²-1` -/
def P7407318184625599856.Spec : Prop :=
  ∀ n, P7407318184625599856.a n = A304726 n

end A304726

/-! ## A304726.P12204643245911372581

`(n²+3)*A002522(n)`
-/

namespace A304726.P12204643245911372581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 3 : ℤ) * A002522 n

end

end A304726.P12204643245911372581

namespace A304726

/-- `(n²+3)*A002522(n)` -/
def P12204643245911372581.Spec : Prop :=
  ∀ n, P12204643245911372581.a n = A304726 n

theorem P12204643245911372581.correct : P12204643245911372581.Spec := by
  intro n
  simp only [A304726, Nat.add_sub_cancel, A304726.P12204643245911372581.a, A304726.P3688958258049521962.a, A002522, A002522.P3778392011853271743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304726

/-! ## A304726.P5890865131893698381

`(A000290(n)+1)*(n²+3)`
-/

namespace A304726.P5890865131893698381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000290 n + 1) * (n ^ 2 + 3 : ℤ)

end

end A304726.P5890865131893698381

namespace A304726

/-- `(A000290(n)+1)*(n²+3)` -/
def P5890865131893698381.Spec : Prop :=
  ∀ n, P5890865131893698381.a n = A304726 n

theorem P5890865131893698381.correct : P5890865131893698381.Spec := by
  intro n
  simp only [A304726, Nat.add_sub_cancel, A304726.P5890865131893698381.a, A304726.P3688958258049521962.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304726

/-! ## A304726.P6106326966383175467

`(n²+1)*(A000027(n²+1)+2)`
-/

namespace A304726.P6106326966383175467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * (A000027 (n ^ 2 + 1) + 2)

end

end A304726.P6106326966383175467

namespace A304726

/-- `(n²+1)*(A000027(n²+1)+2)` -/
def P6106326966383175467.Spec : Prop :=
  ∀ n, P6106326966383175467.a n = A304726 n

theorem P6106326966383175467.correct : P6106326966383175467.Spec := by
  intro n
  simp only [A304726, Nat.add_sub_cancel, A304726.P6106326966383175467.a, A304726.P3688958258049521962.a, A000027, A000027.P10331202704469894836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304726

/-! ## A304726.P17602590342966382413

`(n²+3)*fp[sqrt(n)]`
-/

namespace A304726.P17602590342966382413
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 3) * SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A304726.P17602590342966382413

namespace A304726

/-- `(n²+3)*fp[sqrt(n)]` -/
def P17602590342966382413.Spec : Prop :=
  ∀ n, (P17602590342966382413.a n : ℤ) = A304726 n

end A304726

/-! ## A304726.P2286569169518614764

`ceil(A268581(n²)/2)`
-/

namespace A304726.P2286569169518614764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268581 (n ^ 2) : ℚ) / 2⌉

end

end A304726.P2286569169518614764

namespace A304726

/-- `ceil(A268581(n²)/2)` -/
def P2286569169518614764.Spec : Prop :=
  ∀ n, P2286569169518614764.a n = A304726 n

end A304726

/-! ## A304726.P9264569307915479135

`A005563(fp[sqrt(n)])`
-/

namespace A304726.P9264569307915479135
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0)

end

end A304726.P9264569307915479135

namespace A304726

/-- `A005563(fp[sqrt(n)])` -/
def P9264569307915479135.Spec : Prop :=
  ∀ n, P9264569307915479135.a n = A304726 n

end A304726

/-! ## A304726.P5380375821711606971

`A132411(n²+2)`
-/

namespace A304726.P5380375821711606971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 (n ^ 2 + 2)

end

end A304726.P5380375821711606971

namespace A304726

/-- `A132411(n²+2)` -/
def P5380375821711606971.Spec : Prop :=
  ∀ n, P5380375821711606971.a n = A304726 n

end A304726

/-! ## A304726.P985036670337758761

`A067998(n²+3)`
-/

namespace A304726.P985036670337758761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (n ^ 2 + 3)

end

end A304726.P985036670337758761

namespace A304726

/-- `A067998(n²+3)` -/
def P985036670337758761.Spec : Prop :=
  ∀ n, P985036670337758761.a n = A304726 n

theorem P985036670337758761.correct : P985036670337758761.Spec := by
  intro n
  simp only [A304726, Nat.add_sub_cancel, A304726.P985036670337758761.a, A304726.P3688958258049521962.a, A067998, A067998.P12062298001294777272.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304726

/-! ## A304726.P8272873401118738304

`A106230(n²+3)`
-/

namespace A304726.P8272873401118738304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106230 (n ^ 2 + 3)

end

end A304726.P8272873401118738304

namespace A304726

/-- `A106230(n²+3)` -/
def P8272873401118738304.Spec : Prop :=
  ∀ n, P8272873401118738304.a n = A304726 n

end A304726

/-! ## A304726.P3500297417764171922

`abs(A258837(n²+2))`
-/

namespace A304726.P3500297417764171922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258837 (n ^ 2 + 2)|

end

end A304726.P3500297417764171922

namespace A304726

/-- `abs(A258837(n²+2))` -/
def P3500297417764171922.Spec : Prop :=
  ∀ n, P3500297417764171922.a n = A304726 n

end A304726

/-! ## A304726.P3651736775353323743

`sqrt(A099761(n²+1))`
-/

namespace A304726.P3651736775353323743
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A099761 (n ^ 2 + 1) : ℝ)

end

end A304726.P3651736775353323743

namespace A304726

/-- `sqrt(A099761(n²+1))` -/
def P3651736775353323743.Spec : Prop :=
  ∀ n, P3651736775353323743.a n = (A304726 n : ℝ)

end A304726

/-!
# A304727: a(0) = 0, a(1) = 1, a(n) = n! * a(n-1) + a(n-2).

The programs for A304727, the canonical program `A304727.P4826387328517984759` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304727 has offset 0).

The definition of A304727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*a(n-1)+a(n-2)` (program `A304727.P4826387328517984759`, by `A304727.P4826387328517984759.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304727.P4826387328517984759

`n!*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A304727

/-- `n!*a(n-1)+a(n-2)` -/
def P4826387328517984759.Spec : Prop :=
  ∀ n, (P4826387328517984759.a n : ℤ) = A304727 n

theorem P4826387328517984759.correct : P4826387328517984759.Spec := by
  intro n
  simp only [A304727]

end A304727

/-! ## A304727.P2538409373942835464

`a(n-2)+a(n-1)*A000142(n)` with `a(0)=0, a(1)=1`
-/

namespace A304727.P2538409373942835464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) * A000142 n

end

end A304727.P2538409373942835464

namespace A304727

/-- `a(n-2)+a(n-1)*A000142(n)` -/
def P2538409373942835464.Spec : Prop :=
  ∀ n, P2538409373942835464.a n = A304727 n

end A304727

/-!
# A304733: The largest prime factor of the n-th term of EKG-sequence: a(n) = A006530(A064413(n)).

The programs for A304733, there is no canonical definition to state claims against.
-/

/-! ## A304733.P9232582548597328649

`A006530(A064413(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304733.P9232582548597328649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A064413 (n + 1)).toNat

end

end A304733.P9232582548597328649

/-! ## A304733.P39772402362218932

`A006530(Δ[A065057(n)])`
-/

namespace A304733.P39772402362218932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A304733.P39772402362218932

/-! ## A304733.P10143672630722804201

`A008578(A064741(n+1)+1)`
-/

namespace A304733.P10143672630722804201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064741 (n + 1) + 1).toNat

end

end A304733.P10143672630722804201

/-! ## A304733.P11973314333722088553

`A085392(2*A064413(n+1))`
-/

namespace A304733.P11973314333722088553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A064413 (n + 1)).toNat

end

end A304733.P11973314333722088553

/-! ## A304733.P4419256856387340650

`A085392(A064413(n+1)²)`
-/

namespace A304733.P4419256856387340650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A064413 (n + 1) ^ 2).toNat

end

end A304733.P4419256856387340650

/-! ## A304733.P7100695049782116252

`A217581(A064413(n+1)²)`
-/

namespace A304733.P7100695049782116252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A064413 (n + 1) ^ 2).toNat

end

end A304733.P7100695049782116252

/-!
# A304735: a(n) = A048675(A064413(n)).

The programs for A304735, there is no canonical definition to state claims against.
-/

/-! ## A304735.P6519516670412972252

`A048675(A064413(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304735.P6519516670412972252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A064413 (n + 1)).toNat

end

end A304735.P6519516670412972252

/-! ## A304735.P18059386631497606101

`A048675(Δ[A065057(n)])`
-/

namespace A304735.P18059386631497606101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (f1 (n + 1) - f1 n).toNat

end

end A304735.P18059386631497606101

/-! ## A304735.P2683023511355968850

`∑{d}[A064413(n+1), A297108(#)]`
-/

namespace A304735.P2683023511355968850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d

end

end A304735.P2683023511355968850

/-! ## A304735.P1291125876930626415

`A053830(A064743(n+1))`
-/

namespace A304735.P1291125876930626415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A064743 (n + 1)).toNat

end

end A304735.P1291125876930626415

/-! ## A304735.P5160213272502967866

`A028897(A064743(n+1))`
-/

namespace A304735.P5160213272502967866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A064743 (n + 1)).toNat

end

end A304735.P5160213272502967866

/-!
# A304736: Restricted growth sequence transform of A048675(A064413(n)).

The programs for A304736, there is no canonical definition to state claims against.
-/

/-! ## A304736.P10408014756574042782

`A072339(A036349(2^n)+1)`
-/

namespace A304736.P10408014756574042782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072339 (A036349 (2 ^ n) + 1).toNat

end

end A304736.P10408014756574042782

/-!
# A304737: Restricted growth sequence transform of A278222(A064413(n)).

The programs for A304737, there is no canonical definition to state claims against.
-/

/-! ## A304737.P7572033746737977453

`A132399(3*A153792(A305294(n+1)))`
-/

namespace A304737.P7572033746737977453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132399 (3 * A153792 (A305294 (n + 1)).toNat).toNat

end

end A304737.P7572033746737977453

/-! ## A304737.P10733301249365152837

`A000120(lcm(A064413(n+1), A305294(n+1))²)`
-/

namespace A304737.P10733301249365152837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A064413 (n + 1)) (A305294 (n + 1)) ^ 2)

end

end A304737.P10733301249365152837

/-! ## A304737.P17960669837222198967

`A304735(A305294(n+1))+A035214(A108732(n))`
-/

namespace A304737.P17960669837222198967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304735 (A305294 (n + 1)).toNat + A035214 (A108732 n).toNat

end

end A304737.P17960669837222198967

/-! ## A304737.P5169023533227215236

`A304735(A305294(n+1))+A007318(A245794(n))`
-/

namespace A304737.P5169023533227215236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304735 (A305294 (n + 1)).toNat + A007318 (A245794 n).toNat

end

end A304737.P5169023533227215236

/-!
# A304739: a(n) = A056239(A064413(n)).

The programs for A304739, there is no canonical definition to state claims against.
-/

/-! ## A304739.P4008510771276862762

`A056239(A064413(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304739.P4008510771276862762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A064413 (n + 1)).toNat

end

end A304739.P4008510771276862762

/-! ## A304739.P14829263191870645869

`∑{d}[A064413(n+1), A297109(#)]`
-/

namespace A304739.P14829263191870645869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297109 d

end

end A304739.P14829263191870645869

/-! ## A304739.P13509039627392160560

`A056239(Δ[A065057(n)])`
-/

namespace A304739.P13509039627392160560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (n + 1) - f1 n).toNat

end

end A304739.P13509039627392160560

/-! ## A304739.P10336129547962580089

`∑{d}[A064413(n+1), A000720(A014963(#))]`
-/

namespace A304739.P10336129547962580089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 (A014963 d).toNat

end

end A304739.P10336129547962580089

/-! ## A304739.P15307640639794581486

`A334201(A064413(n+1)²)-A334201(A064413(n+1))`
-/

namespace A304739.P15307640639794581486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334201 (A064413 (n + 1) ^ 2).toNat - A334201 (A064413 (n + 1)).toNat

end

end A304739.P15307640639794581486

/-! ## A304739.P10375994395357761494

`A346698(A104125(n+1))`
-/

namespace A304739.P10375994395357761494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A104125 (n + 1)).toNat

end

end A304739.P10375994395357761494

/-! ## A304739.P1177739091099872151

`A334201(A008578(n+1)*A064413(n+1))`
-/

namespace A304739.P1177739091099872151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334201 (A008578 (n + 1) * A064413 (n + 1)).toNat

end

end A304739.P1177739091099872151

/-! ## A304739.P11549795213307711999

`A346697(A104125(n+1))`
-/

namespace A304739.P11549795213307711999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346697 (A104125 (n + 1)).toNat

end

end A304739.P11549795213307711999

/-!
# A304741: Inverse permutation to A280866.

The programs for A304741, there is no canonical definition to state claims against.
-/

/-! ## A304741.P8160634848694958142

`A280741(1+n)-A372064(n+1)`
-/

namespace A304741.P8160634848694958142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (1 + n) - A372064 (n + 1)

end

end A304741.P8160634848694958142

/-! ## A304741.P12982422770097262754

`fo[A280866(n+1)-1]+1`
-/

namespace A304741.P12982422770097262754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280866 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A304741.P12982422770097262754

/-!
# A304742: Restricted growth sequence transform of A246277(A280866(n)).

The programs for A304742, there is no canonical definition to state claims against.
-/

/-! ## A304742.P6574292457317654770

`A300248(A280864(n+1)%A304756(3*n+2))`
-/

namespace A304742.P6574292457317654770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300248 (Int.tmod (A280864 (n + 1)) (A304756 (3 * n + 2))).toNat

end

end A304742.P6574292457317654770

/-! ## A304742.P7971590579825656100

`A179953(A057829(n+2))`
-/

namespace A304742.P7971590579825656100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179953 (A057829 (n + 2)).toNat

end

end A304742.P7971590579825656100

/-! ## A304742.P6918873710490871935

`A087117(lcm(A097210(n+2), A119357(n+1)))`
-/

namespace A304742.P6918873710490871935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (Int.lcm (A097210 (n + 2)) (A119357 (n + 1)))

end

end A304742.P6918873710490871935

/-!
# A304746: Restricted growth sequence transform of A291760(n), formed from 2-digits in ternary representation of A254103(n).

The programs for A304746, there is no canonical definition to state claims against.
-/

/-! ## A304746.P2201533420372404214

`A117407(A291760(n)^A290092(n))`
-/

namespace A304746.P2201533420372404214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117407 (SequenceMachineLib.roundAway ((A291760 n : ℚ) ^ (A290092 n : ℤ))).toNat

end

end A304746.P2201533420372404214

/-! ## A304746.P9167969293524811460

`A304748(A028310(gcd(n, A184955(n))))`
-/

namespace A304746.P9167969293524811460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304748 (A028310 (Int.gcd (n : ℤ) (A184955 n))).toNat

end

end A304746.P9167969293524811460

/-! ## A304746.P13509261280328034279

`A304748(A028310(n))%A036061(A081580(n))`
-/

namespace A304746.P13509261280328034279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304748 (A028310 n).toNat) (A036061 (A081580 n).toNat)

end

end A304746.P13509261280328034279

/-! ## A304746.P8652778115798276193

`A375568(A141551(n+1))`
-/

namespace A304746.P8652778115798276193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375568 (A141551 (n + 1)).toNat

end

end A304746.P8652778115798276193

/-!
# A304747: May code shown in binary: a(n) = A007088(A303767(n)).

The programs for A304747, the canonical program `A304747.P1643141648960474` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304747 has offset 0).

The definition of A304747 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A303767, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304747.P1643141648960474

`A007088(A303767(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A304747

/-- `A007088(A303767(n))` -/
def P1643141648960474.Spec : Prop :=
  ∀ n, P1643141648960474.a n = A304747 n

theorem P1643141648960474.correct : P1643141648960474.Spec := by
  intro n
  simp only [A304747]

end A304747

/-! ## A304747.P10214243807036606257

`A185544(2*A303767(n))`
-/

namespace A304747.P10214243807036606257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A303767 n).toNat

end

end A304747.P10214243807036606257

namespace A304747

/-- `A185544(2*A303767(n))` -/
def P10214243807036606257.Spec : Prop :=
  ∀ n, P10214243807036606257.a n = A304747 n

end A304747

/-! ## A304747.P17319237427838152437

`A007089(A005836(A303767(n)+1))`
-/

namespace A304747.P17319237427838152437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A005836 (A303767 n + 1).toNat).toNat

end

end A304747.P17319237427838152437

namespace A304747

/-- `A007089(A005836(A303767(n)+1))` -/
def P17319237427838152437.Spec : Prop :=
  ∀ n, P17319237427838152437.a n = A304747 n

end A304747

/-! ## A304747.P4046064650923443377

`∑{p}[A303760(n), A054841(#)]`
-/

namespace A304747.P4046064650923443377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A054841 p

end

end A304747.P4046064650923443377

namespace A304747

/-- `∑{p}[A303760(n), A054841(#)]` -/
def P4046064650923443377.Spec : Prop :=
  ∀ n, P4046064650923443377.a n = A304747 n

end A304747

/-! ## A304747.P12529649442379310866

`A182979(A303771(n))`
-/

namespace A304747.P12529649442379310866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182979 (A303771 n).toNat

end

end A304747.P12529649442379310866

namespace A304747

/-- `A182979(A303771(n))` -/
def P12529649442379310866.Spec : Prop :=
  ∀ n, P12529649442379310866.a n = A304747 n

end A304747

/-!
# A304748: Restricted growth sequence transform of A291759(n), formed from 2-digits in ternary representation of A048673(n).

The programs for A304748, there is no canonical definition to state claims against.
-/

/-! ## A304748.P4127104665093533708

`A304746(A077168(n))`
-/

namespace A304748.P4127104665093533708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304746 (A077168 n).toNat

end

end A304748.P4127104665093533708

/-!
# A304749: A303769 shown in binary.

The programs for A304749, there is no canonical definition to state claims against.
-/

/-! ## A304749.P5885237303099826998

`A007088(A303769(n))`
-/

namespace A304749.P5885237303099826998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A303769 n).toNat

end

end A304749.P5885237303099826998

/-! ## A304749.P17814687182977201338

`A185544(2*A303769(n))`
-/

namespace A304749.P17814687182977201338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A303769 n).toNat

end

end A304749.P17814687182977201338

/-! ## A304749.P2186125374485914040

`∑{p}[A303762(n), A054841(#)]`
-/

namespace A304749.P2186125374485914040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A054841 p

end

end A304749.P2186125374485914040

/-! ## A304749.P2394461426433070152

`A007089(A005836(A303769(n)+1))`
-/

namespace A304749.P2394461426433070152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A005836 (A303769 n + 1).toNat).toNat

end

end A304749.P2394461426433070152

/-!
# A304750: Restricted growth sequence transform of A292240(n), formed from 0-digits in ternary representation of A254103(n).

The programs for A304750, there is no canonical definition to state claims against.
-/

/-! ## A304750.P629125350347871038

`A000120(A008658(A292240(n)))`
-/

namespace A304750.P629125350347871038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008658 (A292240 n).toNat).toNat

end

end A304750.P629125350347871038

/-! ## A304750.P11831598324981883771

`A130790(A099920(A292240(n)+2))`
-/

namespace A304750.P11831598324981883771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130790 (A099920 (A292240 n + 2).toNat).toNat

end

end A304750.P11831598324981883771

/-!
# A304751: Filter sequence: Restricted growth sequence transform of function that gives the least natural number with the same prime signature that (0,1)-polynomial encoded in the binary expansion of n has when it is factored over Q.

The programs for A304751, there is no canonical definition to state claims against.
-/

/-! ## A304751.P16963678834117981384

`∏{e}[A193551(n+1)², A181819(#)]`
-/

namespace A304751.P16963678834117981384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193551 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A181819 (Nat.factorization (f1 n).natAbs p)

end

end A304751.P16963678834117981384

/-! ## A304751.P13805737823949950247

`A050377(A003961(2*(n+1))²)/2`
-/

namespace A304751.P13805737823949950247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050377 (A003961 (2 * (n + 1)) ^ 2).toNat : ℚ) / 2

end

end A304751.P13805737823949950247

/-! ## A304751.P10315424213529917899

`A050377(A008486(20*(n+1)²))/2`
-/

namespace A304751.P10315424213529917899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050377 (A008486 (20 * (n + 1) ^ 2)).toNat : ℚ) / 2

end

end A304751.P10315424213529917899

/-! ## A304751.P5713299590642055070

`A117658(A083434(n+1))`
-/

namespace A304751.P5713299590642055070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117658 (A083434 (n + 1)).toNat

end

end A304751.P5713299590642055070

/-!
# A304753: Permutation of natural numbers: a(1) = 1; a(n) = A064413(1+A064664(n-1)).

The programs for A304753, there is no canonical definition to state claims against.
-/

/-! ## A304753.P4194798174105848503

`A064413(∑{d}[n, A304526(#)]+1)`
-/

namespace A304753.P4194798174105848503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (∑ d ∈ Nat.divisors (f1 n), A304526 d + 1).toNat

end

end A304753.P4194798174105848503

/-! ## A304753.P11985725597049689332

`fo[A304754(n+1)-1]+1`
-/

namespace A304753.P11985725597049689332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304754 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A304753.P11985725597049689332

/-!
# A304754: Permutation of natural numbers: a(1) = 1; a(n) = 1+A064413(A064664(n)-1).

The programs for A304754, there is no canonical definition to state claims against.
-/

/-! ## A304754.P903128684127852732

`fo[A304753(n+1)-1]+1`
-/

namespace A304754.P903128684127852732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304753 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A304754.P903128684127852732

/-!
# A304756: Inverse of A304755: if A304755(k) = n, a(n) = k, or 0 if n does not occur in A304755.

The programs for A304756, there is no canonical definition to state claims against.
-/

/-! ## A304756.P6393910944393188443

`fo[A304755(n+1)-1]+1`
-/

namespace A304756.P6393910944393188443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304755 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A304756.P6393910944393188443

/-!
# A304759: Binary encoding of 1-digits in ternary representation of A048673(n).

The programs for A304759, the canonical program `A304759.P343480758352222515` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304759 has offset 1).

The definition of A304759 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304759.P343480758352222515

`A289813(A048673(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A304759

/-- `A289813(A048673(n+1))` -/
def P343480758352222515.Spec : Prop :=
  ∀ n, P343480758352222515.a n = A304759 (n + 1)

theorem P343480758352222515.correct : P343480758352222515.Spec := by
  intro n
  simp only [A304759, Nat.add_sub_cancel]

end A304759

/-! ## A304759.P13186090129149743383

`A304760(A254115(n+1))`
-/

namespace A304759.P13186090129149743383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304760 (A254115 (n + 1)).toNat

end

end A304759.P13186090129149743383

namespace A304759

/-- `A304760(A254115(n+1))` -/
def P13186090129149743383.Spec : Prop :=
  ∀ n, P13186090129149743383.a n = A304759 (n + 1)

end A304759

/-! ## A304759.P18011117765591719975

`A305295(A243071(n+1))`
-/

namespace A304759.P18011117765591719975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305295 (A243071 (n + 1)).toNat

end

end A304759.P18011117765591719975

namespace A304759

/-- `A305295(A243071(n+1))` -/
def P18011117765591719975.Spec : Prop :=
  ∀ n, P18011117765591719975.a n = A304759 (n + 1)

end A304759

/-!
# A304760: Binary encoding of 1-digits in ternary representation of A254103(n).

The programs for A304760, there is no canonical definition to state claims against.
-/

/-! ## A304760.P3421862973033180572

`A289813(A254103(n))`
-/

namespace A304760.P3421862973033180572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A254103 n).toNat

end

end A304760.P3421862973033180572

/-! ## A304760.P13128661103138421879

`A289831(A254103(n))-A291760(n)`
-/

namespace A304760.P13128661103138421879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A254103 n).toNat - A291760 n

end

end A304760.P13128661103138421879

/-! ## A304760.P12878213634423386563

`A289831(A254103(n))-(3*n+1)%A037445(A094980(n))`
-/

namespace A304760.P12878213634423386563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A254103 n).toNat - Int.tmod (3 * n + 1 : ℤ) (A037445 (A094980 n).toNat)

end

end A304760.P12878213634423386563

/-!
# A304761: Number of n X n 0..1 arrays with every element unequal to 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304761, there is no canonical definition to state claims against.
-/

/-! ## A304761.P827351980620436622

`A304767(∑[4*n]+1)`
-/

namespace A304761.P827351980620436622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304767 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304761.P827351980620436622

/-! ## A304761.P10978805618984128387

`record[A003982(n)*A304767(n+1)]`
-/

namespace A304761.P10978805618984128387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304761.P10978805618984128387

/-!
# A304762: Number of nX3 0..1 arrays with every element unequal to 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304762, there is no canonical definition to state claims against.
-/

/-! ## A304762.P4075184845244393002

`A304767(∑[n+2]+4)`
-/

namespace A304762.P4075184845244393002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304767 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304762.P4075184845244393002

/-! ## A304762.P4710934497430609665

`A316511(∑[n+2]+4)`
-/

namespace A304762.P4710934497430609665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304762.P4710934497430609665

/-!
# A304763: Number of nX4 0..1 arrays with every element unequal to 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304763, there is no canonical definition to state claims against.
-/

/-! ## A304763.P636468023368714268

`A304767(A374004(n+1))`
-/

namespace A304763.P636468023368714268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304767 (A374004 (n + 1)).toNat

end

end A304763.P636468023368714268

/-! ## A304763.P10782060350329611623

`A316511(A141214(n)+7)`
-/

namespace A304763.P10782060350329611623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (A141214 n + 7).toNat

end

end A304763.P10782060350329611623

/-! ## A304763.P10176892965923563532

`A304767(A141214(n+1))`
-/

namespace A304763.P10176892965923563532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304767 (A141214 (n + 1)).toNat

end

end A304763.P10176892965923563532

/-!
# A304764: Number of nX5 0..1 arrays with every element unequal to 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304764, there is no canonical definition to state claims against.
-/

/-! ## A304764.P14683073114240660643

`A304767(A374005(n+1))`
-/

namespace A304764.P14683073114240660643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304767 (A374005 (n + 1)).toNat

end

end A304764.P14683073114240660643

/-! ## A304764.P12675312004187297713

`A304767(Δ[A264443(n)])`
-/

namespace A304764.P12675312004187297713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304767 (f1 (n + 1) - f1 n).toNat

end

end A304764.P12675312004187297713

/-!
# A304765: Number of nX6 0..1 arrays with every element unequal to 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304765, there is no canonical definition to state claims against.
-/

/-! ## A304765.P15135573014246190943

`A304767(A374007(n+1))`
-/

namespace A304765.P15135573014246190943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304767 (A374007 (n + 1)).toNat

end

end A304765.P15135573014246190943

/-!
# A304766: Number of nX7 0..1 arrays with every element unequal to 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304766, there is no canonical definition to state claims against.
-/

/-! ## A304766.P17599034563885217527

`A304767(A374008(n+1))`
-/

namespace A304766.P17599034563885217527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304767 (A374008 (n + 1)).toNat

end

end A304766.P17599034563885217527

/-!
# A304768: Augmented integer conjugate of n. a(n) = (1/n) * A007947(n)^(1 + A051903(n)) where A007947 is squarefree kernel and A051903 is maximum prime exponent.

The programs for A304768, the canonical program `A304768.P12049838083210092088` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304768 has offset 1).

The definition of A304768 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304768.P12049838083210092088

`1/(n+1)*A007947(n+1)^(1+A051903(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A304768

/-- `1/(n+1)*A007947(n+1)^(1+A051903(n+1))` -/
def P12049838083210092088.Spec : Prop :=
  ∀ n, P12049838083210092088.a n = (A304768 (n + 1) : ℚ)

end A304768

/-! ## A304768.P2380246104517899535

`∏{p}[n+1, #]*A066636(ceil(sqrt(n²+4)))`
-/

namespace A304768.P2380246104517899535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A066636 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat

end

end A304768.P2380246104517899535

namespace A304768

/-- `∏{p}[n+1, #]*A066636(ceil(sqrt(n²+4)))` -/
def P2380246104517899535.Spec : Prop :=
  ∀ n, P2380246104517899535.a n = A304768 (n + 1)

end A304768

/-! ## A304768.P4859639051139935382

`A066638(n+1)/floor((n+1)/∏{p}[n+1, #])`
-/

namespace A304768.P4859639051139935382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (n + 1) : ℚ) / (⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋ : ℚ)

end

end A304768.P4859639051139935382

namespace A304768

/-- `A066638(n+1)/floor((n+1)/∏{p}[n+1, #])` -/
def P4859639051139935382.Spec : Prop :=
  ∀ n, P4859639051139935382.a n = (A304768 (n + 1) : ℚ)

end A304768

/-! ## A304768.P7372402620613157674

`A295417(A304776(n+1))`
-/

namespace A304768.P7372402620613157674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295417 (A304776 (n + 1)).toNat

end

end A304768.P7372402620613157674

namespace A304768

/-- `A295417(A304776(n+1))` -/
def P7372402620613157674.Spec : Prop :=
  ∀ n, P7372402620613157674.a n = A304768 (n + 1)

end A304768

/-! ## A304768.P8214500492709220043

`A007947(n+1)*A066636(n+1)`
-/

namespace A304768.P8214500492709220043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A066636 (n + 1)

end

end A304768.P8214500492709220043

namespace A304768

/-- `A007947(n+1)*A066636(n+1)` -/
def P8214500492709220043.Spec : Prop :=
  ∀ n, P8214500492709220043.a n = A304768 (n + 1)

end A304768

/-! ## A304768.P12230508743130969028

`A066638(n+1)/A003557(n+1)`
-/

namespace A304768.P12230508743130969028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A304768.P12230508743130969028

namespace A304768

/-- `A066638(n+1)/A003557(n+1)` -/
def P12230508743130969028.Spec : Prop :=
  ∀ n, P12230508743130969028.a n = (A304768 (n + 1) : ℚ)

end A304768

/-! ## A304768.P14348567638133009251

`A295417(n+1)/A354090(n+1)`
-/

namespace A304768.P14348567638133009251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295417 (n + 1) : ℚ) / (A354090 (n + 1) : ℚ)

end

end A304768.P14348567638133009251

namespace A304768

/-- `A295417(n+1)/A354090(n+1)` -/
def P14348567638133009251.Spec : Prop :=
  ∀ n, P14348567638133009251.a n = (A304768 (n + 1) : ℚ)

end A304768

/-! ## A304768.P17103394653682078687

`A015052(A015052(n+1))*A066636(n+1)`
-/

namespace A304768.P17103394653682078687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1)).toNat * A066636 (n + 1)

end

end A304768.P17103394653682078687

namespace A304768

/-- `A015052(A015052(n+1))*A066636(n+1)` -/
def P17103394653682078687.Spec : Prop :=
  ∀ n, P17103394653682078687.a n = A304768 (n + 1)

end A304768

/-! ## A304768.P13104461531054053997

`A015053(A015053(n+1))*A066636(n+1)`
-/

namespace A304768.P13104461531054053997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1)).toNat * A066636 (n + 1)

end

end A304768.P13104461531054053997

namespace A304768

/-- `A015053(A015053(n+1))*A066636(n+1)` -/
def P13104461531054053997.Spec : Prop :=
  ∀ n, P13104461531054053997.a n = A304768 (n + 1)

end A304768

/-! ## A304768.P870665082377943483

`A066638(A304776(n+1))/A062760(n+1)`
-/

namespace A304768.P870665082377943483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (A304776 (n + 1)).toNat : ℚ) / (A062760 (n + 1) : ℚ)

end

end A304768.P870665082377943483

namespace A304768

/-- `A066638(A304776(n+1))/A062760(n+1)` -/
def P870665082377943483.Spec : Prop :=
  ∀ n, P870665082377943483.a n = (A304768 (n + 1) : ℚ)

end A304768

/-! ## A304768.P12095906974224311474

`A066636(n+1)/A062760(n+1)*A304776(n+1)`
-/

namespace A304768.P12095906974224311474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066636 (n + 1) : ℚ) / (A062760 (n + 1) : ℚ) * (A304776 (n + 1) : ℚ)

end

end A304768.P12095906974224311474

namespace A304768

/-- `A066636(n+1)/A062760(n+1)*A304776(n+1)` -/
def P12095906974224311474.Spec : Prop :=
  ∀ n, P12095906974224311474.a n = (A304768 (n + 1) : ℚ)

end A304768

/-! ## A304768.P1980668289738724736

`A007947(n+1)/A062760(n+1)*A373703(n+1)`
-/

namespace A304768.P1980668289738724736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A062760 (n + 1) : ℚ) * (A373703 (n + 1) : ℚ)

end

end A304768.P1980668289738724736

namespace A304768

/-- `A007947(n+1)/A062760(n+1)*A373703(n+1)` -/
def P1980668289738724736.Spec : Prop :=
  ∀ n, P1980668289738724736.a n = (A304768 (n + 1) : ℚ)

end A304768

/-! ## A304768.P4444250264234794048

`A304776(A295417(n+1))`
-/

namespace A304768.P4444250264234794048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304776 (A295417 (n + 1)).toNat

end

end A304768.P4444250264234794048

namespace A304768

/-- `A304776(A295417(n+1))` -/
def P4444250264234794048.Spec : Prop :=
  ∀ n, P4444250264234794048.a n = A304768 (n + 1)

end A304768

/-! ## A304768.P2870010291185351450

`A066636(n+1)*A304776(A066638(n+1))`
-/

namespace A304768.P2870010291185351450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (n + 1) * A304776 (A066638 (n + 1)).toNat

end

end A304768.P2870010291185351450

namespace A304768

/-- `A066636(n+1)*A304776(A066638(n+1))` -/
def P2870010291185351450.Spec : Prop :=
  ∀ n, P2870010291185351450.a n = A304768 (n + 1)

end A304768

/-! ## A304768.P8521669825277466005

`A066638(A064549(n+1))/(n+1)`
-/

namespace A304768.P8521669825277466005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (A064549 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A304768.P8521669825277466005

namespace A304768

/-- `A066638(A064549(n+1))/(n+1)` -/
def P8521669825277466005.Spec : Prop :=
  ∀ n, P8521669825277466005.a n = (A304768 (n + 1) : ℚ)

end A304768

/-!
# A304769: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 3 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304769, there is no canonical definition to state claims against.
-/

/-! ## A304769.P17644434047654229062

`A304775(∑[4*n]+1)`
-/

namespace A304769.P17644434047654229062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304775 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304769.P17644434047654229062

/-! ## A304769.P5716134124536717830

`record[A003982(n)*A304775(n+1)]`
-/

namespace A304769.P5716134124536717830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304769.P5716134124536717830

/-! ## A304769.P10492667323394319811

`record[gcd(A231713(n), A304775(n+1))]`
-/

namespace A304769.P10492667323394319811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231713 n) (A304775 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304769.P10492667323394319811

/-! ## A304769.P8498706795032191593

`record[A203994(n+1)*A304775(n+1)]`
-/

namespace A304769.P8498706795032191593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A304775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304769.P8498706795032191593

/-!
# A304770: Number of n X 3 0..1 arrays with every element unequal to 0, 1, 2, 3 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304770, there is no canonical definition to state claims against.
-/

/-! ## A304770.P16696932908368492248

`A304775(∑[n+2]+4)`
-/

namespace A304770.P16696932908368492248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304775 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304770.P16696932908368492248

/-!
# A304771: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304771, there is no canonical definition to state claims against.
-/

/-! ## A304771.P15908916633231828200

`A304775(∑[n+3]+7)`
-/

namespace A304771.P15908916633231828200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304775 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304771.P15908916633231828200

/-!
# A304772: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304772, there is no canonical definition to state claims against.
-/

/-! ## A304772.P3592193795779529688

`A304775(A374005(n+1))`
-/

namespace A304772.P3592193795779529688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304775 (A374005 (n + 1)).toNat

end

end A304772.P3592193795779529688

/-!
# A304773: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304773, there is no canonical definition to state claims against.
-/

/-! ## A304773.P7854326434342183114

`A304775(A374007(n+1))`
-/

namespace A304773.P7854326434342183114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304775 (A374007 (n + 1)).toNat

end

end A304773.P7854326434342183114

/-!
# A304774: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304774, there is no canonical definition to state claims against.
-/

/-! ## A304774.P224137910711563588

`A304775(A374008(n+1))`
-/

namespace A304774.P224137910711563588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304775 (A374008 (n + 1)).toNat

end

end A304774.P224137910711563588

/-!
# A304775: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304775, there is no canonical definition to state claims against.
-/

/-! ## A304775.P14318382168878210647

`A316518(n+1)-A186745(A306100(n))`
-/

namespace A304775.P14318382168878210647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (n + 1) - A186745 (A306100 n).toNat

end

end A304775.P14318382168878210647

/-! ## A304775.P11689066603044546578

`A316518(n+1)+A016389(A022166(n))`
-/

namespace A304775.P11689066603044546578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (n + 1) + A016389 (A022166 n).toNat

end

end A304775.P11689066603044546578

/-! ## A304775.P1637662306815040719

`A316518(n+1)+A016389(A027336(n))`
-/

namespace A304775.P1637662306815040719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (n + 1) + A016389 (A027336 n).toNat

end

end A304775.P1637662306815040719

/-! ## A304775.P11425268584903793216

`A316518(n+1)+A290531(A056940(n))`
-/

namespace A304775.P11425268584903793216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (n + 1) + A290531 (A056940 n).toNat

end

end A304775.P11425268584903793216

/-! ## A304775.P1385558966686586443

`A326291(A146987(n))+A305230(n+1)`
-/

namespace A304775.P1385558966686586443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A146987 n).toNat + A305230 (n + 1)

end

end A304775.P1385558966686586443

/-!
# A304776: A weakening function. a(n) = n / A007947(n)^(A051904(n) - 1) where A007947 is squarefree kernel and A051904 is minimum prime exponent.

The programs for A304776, the canonical program `A304776.P16093337773244760738` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304776 has offset 1).

The definition of A304776 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051904, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304776.P8080244933396516704

`(n+1)/A354090(n+1)`
-/

namespace A304776.P8080244933396516704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A354090 (n + 1) : ℚ)

end

end A304776.P8080244933396516704

namespace A304776

/-- `(n+1)/A354090(n+1)` -/
def P8080244933396516704.Spec : Prop :=
  ∀ n, P8080244933396516704.a n = (A304776 (n + 1) : ℚ)

end A304776

/-! ## A304776.P16093337773244760738

`(n+1)/A007947(n+1)^(A051904(n+1)-1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A304776

/-- `(n+1)/A007947(n+1)^(A051904(n+1)-1)` -/
def P16093337773244760738.Spec : Prop :=
  ∀ n, P16093337773244760738.a n = (A304776 (n + 1) : ℚ)

end A304776

/-! ## A304776.P10080835893353457101

`A062760(n+1)*∏{p}[n+1, #]`
-/

namespace A304776.P10080835893353457101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (n + 1) * ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A304776.P10080835893353457101

namespace A304776

/-- `A062760(n+1)*∏{p}[n+1, #]` -/
def P10080835893353457101.Spec : Prop :=
  ∀ n, P10080835893353457101.a n = A304776 (n + 1)

end A304776

/-! ## A304776.P14837256975324601374

`A007947(n+1)*A062760(n+1)`
-/

namespace A304776.P14837256975324601374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A062760 (n + 1)

end

end A304776.P14837256975324601374

namespace A304776

/-- `A007947(n+1)*A062760(n+1)` -/
def P14837256975324601374.Spec : Prop :=
  ∀ n, P14837256975324601374.a n = A304776 (n + 1)

end A304776

/-! ## A304776.P8960408059149716917

`(n+1)/A003557(A062759(n+1))`
-/

namespace A304776.P8960408059149716917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (A062759 (n + 1)).toNat : ℚ)

end

end A304776.P8960408059149716917

namespace A304776

/-- `(n+1)/A003557(A062759(n+1))` -/
def P8960408059149716917.Spec : Prop :=
  ∀ n, P8960408059149716917.a n = (A304776 (n + 1) : ℚ)

end A304776

/-! ## A304776.P7654965542398321671

`A064549(n+1)/A062759(n+1)`
-/

namespace A304776.P7654965542398321671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A062759 (n + 1) : ℚ)

end

end A304776.P7654965542398321671

namespace A304776

/-- `A064549(n+1)/A062759(n+1)` -/
def P7654965542398321671.Spec : Prop :=
  ∀ n, P7654965542398321671.a n = (A304776 (n + 1) : ℚ)

end A304776

/-! ## A304776.P4735469432825674809

`A015052(A015052(n+1))*A062760(n+1)`
-/

namespace A304776.P4735469432825674809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1)).toNat * A062760 (n + 1)

end

end A304776.P4735469432825674809

namespace A304776

/-- `A015052(A015052(n+1))*A062760(n+1)` -/
def P4735469432825674809.Spec : Prop :=
  ∀ n, P4735469432825674809.a n = A304776 (n + 1)

end A304776

/-! ## A304776.P610705768857748691

`A015053(A015053(n+1))*A062760(n+1)`
-/

namespace A304776.P610705768857748691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1)).toNat * A062760 (n + 1)

end

end A304776.P610705768857748691

namespace A304776

/-- `A015053(A015053(n+1))*A062760(n+1)` -/
def P610705768857748691.Spec : Prop :=
  ∀ n, P610705768857748691.a n = A304776 (n + 1)

end A304776

/-! ## A304776.P17624900365254010078

`A062760(n+1)*A304768(A062759(n+1))`
-/

namespace A304776.P17624900365254010078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (n + 1) * A304768 (A062759 (n + 1)).toNat

end

end A304776.P17624900365254010078

namespace A304776

/-- `A062760(n+1)*A304768(A062759(n+1))` -/
def P17624900365254010078.Spec : Prop :=
  ∀ n, P17624900365254010078.a n = A304776 (n + 1)

end A304776

/-! ## A304776.P10431177895143995606

`A007947(n+1)/A066636(n+1)*A373703(n+1)`
-/

namespace A304776.P10431177895143995606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A066636 (n + 1) : ℚ) * (A373703 (n + 1) : ℚ)

end

end A304776.P10431177895143995606

namespace A304776

/-- `A007947(n+1)/A066636(n+1)*A373703(n+1)` -/
def P10431177895143995606.Spec : Prop :=
  ∀ n, P10431177895143995606.a n = (A304776 (n + 1) : ℚ)

end A304776

/-! ## A304776.P5693638749042545745

`A304768(A295417(n+1))`
-/

namespace A304776.P5693638749042545745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304768 (A295417 (n + 1)).toNat

end

end A304776.P5693638749042545745

namespace A304776

/-- `A304768(A295417(n+1))` -/
def P5693638749042545745.Spec : Prop :=
  ∀ n, P5693638749042545745.a n = A304776 (n + 1)

end A304776

/-!
# A304777: Number of partitions p of n such that the sequence of level steps (when interpreted as ascents) and descents of p forms a Dyck path.

The programs for A304777, there is no canonical definition to state claims against.
-/

/-! ## A304777.P6372968330753266451

`A000120(A326753(3*n+2)+A003179(n))`
-/

namespace A304777.P6372968330753266451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A326753 (3 * n + 2) + A003179 n).toNat

end

end A304777.P6372968330753266451

/-! ## A304777.P95846986013684889

`A178487(A046661(n+1)%A323188(n+1))`
-/

namespace A304777.P95846986013684889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (Int.tmod (A046661 (n + 1)) (A323188 (n + 1))).toNat

end

end A304777.P95846986013684889

/-!
# A304778: Number of Carlitz compositions c of n such that the sequence of ascents and descents of c forms a Dyck path.

The programs for A304778, there is no canonical definition to state claims against.
-/

/-! ## A304778.P11808822770040011328

`A273493(ceil(2^(n-1)))-floor(11^(n/5))`
-/

namespace A304778.P11808822770040011328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273493 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - ⌊(11 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋

end

end A304778.P11808822770040011328

/-! ## A304778.P15187835941964385733

`A000196(A056362(n)+A037213(n))`
-/

namespace A304778.P15187835941964385733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A056362 n + A037213 n).toNat

end

end A304778.P15187835941964385733

/-! ## A304778.P13649179377881230146

`A102683(n)+A000196(A056362(n))`
-/

namespace A304778.P13649179377881230146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n + A000196 (A056362 n).toNat

end

end A304778.P13649179377881230146

/-! ## A304778.P10996301486644161126

`A363678(A344491(n))`
-/

namespace A304778.P10996301486644161126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363678 (A344491 n).toNat

end

end A304778.P10996301486644161126

/-! ## A304778.P2707792056672924603

`A105224(A124791(n+1))`
-/

namespace A304778.P2707792056672924603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A124791 (n + 1)).toNat

end

end A304778.P2707792056672924603

/-!
# A304779: The "rootless" zeta function. Dirichlet inverse of the function defined by r(n) = (-1)^Omega(n) if n is 1 or not a perfect power and r(n) = 0 otherwise.

The programs for A304779, there is no canonical definition to state claims against.
-/

/-! ## A304779.P8541267343443576814

`∑{d}[1+n, A304820(#)]`
-/

namespace A304779.P8541267343443576814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304820 d

end

end A304779.P8541267343443576814

/-! ## A304779.P10378342100969254027

`A000120(A199248(A335487(n+1)))`
-/

namespace A304779.P10378342100969254027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A199248 (A335487 (n + 1)).toNat).toNat

end

end A304779.P10378342100969254027

/-! ## A304779.P2080576468487563347

`A045778(A318670(A286518(n+1)))`
-/

namespace A304779.P2080576468487563347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A318670 (A286518 (n + 1)).toNat).toNat

end

end A304779.P2080576468487563347

/-! ## A304779.P9044983965533218647

`A304713(A000009(A285572(n+1)))%7`
-/

namespace A304779.P9044983965533218647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304713 (A000009 (A285572 (n + 1)).toNat).toNat) 7

end

end A304779.P9044983965533218647

/-! ## A304779.P5190353811850076041

`A305254(A325446(n+1)^A049419(n+1))`
-/

namespace A304779.P5190353811850076041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305254 (SequenceMachineLib.roundAway ((A325446 (n + 1) : ℚ) ^ (A049419 (n + 1) : ℤ))).toNat

end

end A304779.P5190353811850076041

/-! ## A304779.P13086460214674418135

`A027746(A333175(n+1)^A335460(n+1))`
-/

namespace A304779.P13086460214674418135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (SequenceMachineLib.roundAway ((A333175 (n + 1) : ℚ) ^ (A335460 (n + 1) : ℤ))).toNat

end

end A304779.P13086460214674418135

/-!
# A304780: Consider a triangle whose first row is {1,2} and, for n > 1, has as its n-th row the integers k through 2k where k is the sum of the numbers in the (n-1)th row. Then a(n) is the first number in the n-th row.

The programs for A304780, the canonical program `A304780.P16251158927598053295` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304780 has offset 1).

The definition of A304780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304780.P16251158927598053295

`3*a(n-1)*(a(n-1)+1)/2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A304780

/-- `3*a(n-1)*(a(n-1)+1)/2` -/
def P16251158927598053295.Spec : Prop :=
  ∀ n, P16251158927598053295.a n = (A304780 (n + 1) : ℚ)

end A304780

/-! ## A304780.P1369734269191800696

`3*C(a(n-1)+1, 2)` with `a(0)=1`
-/

namespace A304780.P1369734269191800696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * Nat.choose (a (n - 1) + 1) 2

end

end A304780.P1369734269191800696

namespace A304780

/-- `3*C(a(n-1)+1, 2)` -/
def P1369734269191800696.Spec : Prop :=
  ∀ n, (P1369734269191800696.a n : ℤ) = A304780 (n + 1)

end A304780

/-! ## A304780.P12426347758888835100

`3*(a(n-1)+a(n-1)²)/2` with `a(0)=1`
-/

namespace A304780.P12426347758888835100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((a (n - 1) + a (n - 1) ^ 2) / 2)

end

end A304780.P12426347758888835100

namespace A304780

/-- `3*(a(n-1)+a(n-1)²)/2` -/
def P12426347758888835100.Spec : Prop :=
  ∀ n, P12426347758888835100.a n = (A304780 (n + 1) : ℚ)

end A304780

/-! ## A304780.P453458921434158529

`(2-((1-a(n-1))/2-a(n-1)))*a(n-1)` with `a(0)=1`
-/

namespace A304780.P453458921434158529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 - ((1 - a (n - 1)) / 2 - a (n - 1))) * a (n - 1)

end

end A304780.P453458921434158529

namespace A304780

/-- `(2-((1-a(n-1))/2-a(n-1)))*a(n-1)` -/
def P453458921434158529.Spec : Prop :=
  ∀ n, P453458921434158529.a n = (A304780 (n + 1) : ℚ)

end A304780

/-! ## A304780.P11859430643548951687

`floor(A013589(n)/3)`
-/

namespace A304780.P11859430643548951687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A013589 n : ℚ) / 3⌋

end

end A304780.P11859430643548951687

namespace A304780

/-- `floor(A013589(n)/3)` -/
def P11859430643548951687.Spec : Prop :=
  ∀ n, P11859430643548951687.a n = A304780 (n + 1)

end A304780

/-!
# A304781: a(n) = [x^n] (1/(1 - x)^n)*Product_{k>=1} (1 + x^k).

The programs for A304781, there is no canonical definition to state claims against.
-/

/-! ## A304781.P7022982733062950008

`A077467(A047127(n))`
-/

namespace A304781.P7022982733062950008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077467 (A047127 n).toNat

end

end A304781.P7022982733062950008

/-! ## A304781.P3990119988280776906

`A195177(A047017(n+1))`
-/

namespace A304781.P3990119988280776906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A047017 (n + 1)).toNat

end

end A304781.P3990119988280776906

/-! ## A304781.P4251713089976342133

`Δ[A109785(Δ[A007141(n+1)])]`
-/

namespace A304781.P4251713089976342133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007141 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109785 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304781.P4251713089976342133

/-!
# A304782: a(n) = [x^n] (1/(1 - x))*Product_{k>=1} (1 + n*x^k).

The programs for A304782, there is no canonical definition to state claims against.
-/

/-! ## A304782.P9104801846230885333

`∑{#}[n, A286957(C(#+n+1, 2)+#)]`
-/

namespace A304782.P9104801846230885333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A286957 (Nat.choose (k + n + 1) 2 + k)

end

end A304782.P9104801846230885333

/-! ## A304782.P5638686127266253372

`A126102(A079227(n+1))`
-/

namespace A304782.P5638686127266253372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126102 (A079227 (n + 1)).toNat

end

end A304782.P5638686127266253372

/-!
# A304784: Expansion of Product_{k>=1} 1/(1 + x^k)^p(k), where p(k) = number of partitions of k (A000041).

The programs for A304784, there is no canonical definition to state claims against.
-/

/-! ## A304784.P8211425231797362969

`∑{#}[n, (-1)^#*A061260(C(n+1, 2)+#)]`
-/

namespace A304784.P8211425231797362969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A061260 (Nat.choose (n + 1) 2 + k)

end

end A304784.P8211425231797362969

/-! ## A304784.P1185597298026511529

`A001970(n)-2*A358837(n)`
-/

namespace A304784.P1185597298026511529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001970 n - 2 * A358837 n

end

end A304784.P1185597298026511529

/-!
# A304787: Expansion of Product_{k>=1} (1 + x^k)^(binomial(2*k,k)/(k+1)).

The programs for A304787, there is no canonical definition to state claims against.
-/

/-! ## A304787.P7384084969886532498

`A226510(n+1)+A077267(A000772(n))`
-/

namespace A304787.P7384084969886532498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226510 (n + 1) + A077267 (A000772 n).toNat

end

end A304787.P7384084969886532498

/-! ## A304787.P10305986657272797176

`A226510(n+1)+A014707(A071723(n))`
-/

namespace A304787.P10305986657272797176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226510 (n + 1) + A014707 (A071723 n).toNat

end

end A304787.P10305986657272797176

/-! ## A304787.P12050045610075819133

`A226510(n+1)+A003849(A190944(n))`
-/

namespace A304787.P12050045610075819133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226510 (n + 1) + A003849 (A190944 n).toNat

end

end A304787.P12050045610075819133

/-! ## A304787.P1233004219959779310

`A226510(n+1)+A226474(A053404(n))`
-/

namespace A304787.P1233004219959779310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226510 (n + 1) + A226474 (A053404 n).toNat

end

end A304787.P1233004219959779310

/-!
# A304788: Expansion of e.g.f. exp(Sum_{k>=1} binomial(2*k,k)*x^k/(k + 1)!).

The programs for A304788, there is no canonical definition to state claims against.
-/

/-! ## A304788.P16699268884815525721

`A008619(A381023(n)+A073596(n))`
-/

namespace A304788.P16699268884815525721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A381023 n + A073596 n).toNat

end

end A304788.P16699268884815525721

/-! ## A304788.P4388269256744893174

`or(A004736(A196708(n+1)), A196710(n+1))`
-/

namespace A304788.P4388269256744893174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004736 (A196708 (n + 1)).toNat) (A196710 (n + 1))

end

end A304788.P4388269256744893174

/-! ## A304788.P2932888754284568015

`or(A004736(A196708(n+1)), A196711(n+1))`
-/

namespace A304788.P2932888754284568015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004736 (A196708 (n + 1)).toNat) (A196711 (n + 1))

end

end A304788.P2932888754284568015

/-!
# A304790: The maximal number of different domino tilings allowed by the Ferrers-Young diagram of a single partition of 2n.

The programs for A304790, there is no canonical definition to state claims against.
-/

/-! ## A304790.P12495962602569789244

`A102452(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A304790.P12495962602569789244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A102452 (a (n - 1)).toNat + a (n - 2)

end

end A304790.P12495962602569789244

/-! ## A304790.P17123058496860888616

`A146565(A146574(n+1))+A000071(n+1)`
-/

namespace A304790.P17123058496860888616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146565 (A146574 (n + 1)).toNat + A000071 (n + 1)

end

end A304790.P17123058496860888616

/-! ## A304790.P8212393626247626205

`A392050(A392042(n+2))+A000071(n+1)`
-/

namespace A304790.P8212393626247626205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392050 (A392042 (n + 2)).toNat + A000071 (n + 1)

end

end A304790.P8212393626247626205

/-! ## A304790.P366630803826066429

`A071773(A000358(2*n+5))+A000071(n+1)`
-/

namespace A304790.P366630803826066429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (A000358 (2 * n + 5)).toNat + A000071 (n + 1)

end

end A304790.P366630803826066429

/-! ## A304790.P5886993436100115098

`A306293(n)-record[A357316(n)]`
-/

namespace A304790.P5886993436100115098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306293 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304790.P5886993436100115098

/-!
# A304792: Number of subset-sums of integer partitions of n.

The programs for A304792, there is no canonical definition to state claims against.
-/

/-! ## A304792.P2451283808966530262

`A301856(A000079(n))+A000041(n)`
-/

namespace A304792.P2451283808966530262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301856 (A000079 n).toNat + A000041 n

end

end A304792.P2451283808966530262

/-! ## A304792.P15235640470707592808

`A055086(A277243(n)-A327769(n))`
-/

namespace A304792.P15235640470707592808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A277243 n - A327769 n).toNat

end

end A304792.P15235640470707592808

/-! ## A304792.P4404503456038548143

`A317081(2*(n+1))-A020987(A132835(n))`
-/

namespace A304792.P4404503456038548143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317081 (2 * (n + 1)) - A020987 (A132835 n).toNat

end

end A304792.P4404503456038548143

/-! ## A304792.P12711579555221443877

`A000009(3*n+1)+A001222(A152480(n+1))`
-/

namespace A304792.P12711579555221443877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (3 * n + 1) + A001222 (A152480 (n + 1)).toNat

end

end A304792.P12711579555221443877

/-! ## A304792.P17486605194280898561

`A343609(A090581(n+1))+A032559(A032559(n+1))`
-/

namespace A304792.P17486605194280898561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A090581 (n + 1)).toNat + A032559 (A032559 (n + 1)).toNat

end

end A304792.P17486605194280898561

/-!
# A304793: Number of distinct positive subset-sums of the integer partition with Heinz number n.

The programs for A304793, there is no canonical definition to state claims against.
-/

/-! ## A304793.P4462436764172543494

`A299701(1+n)-1`
-/

namespace A304793.P4462436764172543494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (1 + n) - 1

end

end A304793.P4462436764172543494

/-! ## A304793.P17661046587578826368

`row(C(A299701(n+1), 2))`
-/

namespace A304793.P17661046587578826368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Nat.choose (A299701 (n + 1)).toNat 2)

end

end A304793.P17661046587578826368

/-! ## A304793.P17781232376905261275

`A002837(A299701(n+1))`
-/

namespace A304793.P17781232376905261275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A299701 (n + 1)).toNat

end

end A304793.P17781232376905261275

/-! ## A304793.P1291138727526374694

`A273882(A299701(1+n))`
-/

namespace A304793.P1291138727526374694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273882 (A299701 (1 + n)).toNat

end

end A304793.P1291138727526374694

/-! ## A304793.P1967138589300453386

`A057918(A299701(n+1)²)`
-/

namespace A304793.P1967138589300453386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A299701 (n + 1) ^ 2).toNat

end

end A304793.P1967138589300453386

/-! ## A304793.P3350619836237473583

`A259361(A299701(n+1)²)`
-/

namespace A304793.P3350619836237473583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A299701 (n + 1) ^ 2).toNat

end

end A304793.P3350619836237473583

/-! ## A304793.P14204452585988148079

`A023444(A299701(n+1)+1)`
-/

namespace A304793.P14204452585988148079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A299701 (n + 1) + 1).toNat

end

end A304793.P14204452585988148079

/-! ## A304793.P4041244505385572468

`A023445(A299701(n+1)+2)`
-/

namespace A304793.P4041244505385572468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A299701 (n + 1) + 2).toNat

end

end A304793.P4041244505385572468

/-! ## A304793.P17060128214525364862

`Δ[A006218(n)]-(A325801(n+1)+1)`
-/

namespace A304793.P17060128214525364862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A325801 (n + 1) + 1)

end

end A304793.P17060128214525364862

/-! ## A304793.P16535377387367108630

`A000005(n+1)-(A325801(n+1)+1)`
-/

namespace A304793.P16535377387367108630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A325801 (n + 1) + 1)

end

end A304793.P16535377387367108630

/-! ## A304793.P17120220256608557851

`A301957(n+1)+A301979(n+1)-1`
-/

namespace A304793.P17120220256608557851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301957 (n + 1) + (A301979 (n + 1) - 1)

end

end A304793.P17120220256608557851

/-! ## A304793.P3366541151328300145

`A056239(A105555(n+1))-(A325801(n+1)+1)`
-/

namespace A304793.P3366541151328300145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A105555 (n + 1)).toNat - (A325801 (n + 1) + 1)

end

end A304793.P3366541151328300145

/-! ## A304793.P3664668724413803591

`A058197(n+1)%A299701(n+1)`
-/

namespace A304793.P3664668724413803591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A299701 (n + 1))

end

end A304793.P3664668724413803591

/-! ## A304793.P15051551127602971753

`A117010(n+1)%A299701(n+1)`
-/

namespace A304793.P15051551127602971753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A299701 (n + 1))

end

end A304793.P15051551127602971753

/-! ## A304793.P15315975196154304694

`A195150(2^A299701(n+1))`
-/

namespace A304793.P15315975196154304694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A299701 (n + 1) : ℤ))).toNat

end

end A304793.P15315975196154304694

/-! ## A304793.P11522338670913729521

`A070198(n)%A299701(n+1)`
-/

namespace A304793.P11522338670913729521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A299701 (n + 1))

end

end A304793.P11522338670913729521

/-! ## A304793.P7416191001112357151

`A079782(n+1)%A299701(n+1)`
-/

namespace A304793.P7416191001112357151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A299701 (n + 1))

end

end A304793.P7416191001112357151

/-! ## A304793.P1923526926351865890

`A083685(n+1)%A299701(n+1)`
-/

namespace A304793.P1923526926351865890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A299701 (n + 1))

end

end A304793.P1923526926351865890

/-! ## A304793.P14382596614234707315

`A121934(n+1)%A299701(n+1)`
-/

namespace A304793.P14382596614234707315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A299701 (n + 1))

end

end A304793.P14382596614234707315

/-! ## A304793.P11290451046509876947

`A030494(n+1)%A299701(n+1)`
-/

namespace A304793.P11290451046509876947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A299701 (n + 1))

end

end A304793.P11290451046509876947

/-!
# A304794: a(n) is the least possible difference between the greatest and the smallest prime in any partition of prime(n) into three primes p+q+r (p <= q <= r); n >= 4.

The programs for A304794, there is no canonical definition to state claims against.
-/

/-! ## A304794.P10486084635701905271

`A302756(n+4)-A164024(p?[A020742(n)])`
-/

namespace A304794.P10486084635701905271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302756 (n + 4) - A164024 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A304794.P10486084635701905271

/-! ## A304794.P9366901899139180619

`A302756(n+4)-A164024(p?[A267873(n)])`
-/

namespace A304794.P9366901899139180619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302756 (n + 4) - A164024 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A304794.P9366901899139180619

/-! ## A304794.P13367865940147548013

`A302756(n+4)-A164024(A090417(n+1))`
-/

namespace A304794.P13367865940147548013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302756 (n + 4) - A164024 (A090417 (n + 1)).toNat

end

end A304794.P13367865940147548013

/-! ## A304794.P10729846831492730688

`A302756(n+4)-A164024(A004139(n+2))`
-/

namespace A304794.P10729846831492730688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302756 (n + 4) - A164024 (A004139 (n + 2)).toNat

end

end A304794.P10729846831492730688

/-! ## A304794.P11660490881806137638

`A302756(n+4)-A164024(A066047(n+2))`
-/

namespace A304794.P11660490881806137638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302756 (n + 4) - A164024 (A066047 (n + 2)).toNat

end

end A304794.P11660490881806137638

/-!
# A304795: Number of positive special sums of the integer partition with Heinz number n.

The programs for A304795, there is no canonical definition to state claims against.
-/

/-! ## A304795.P948547646680909834

`A301855(1+n)-1`
-/

namespace A304795.P948547646680909834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301855 (1 + n) - 1

end

end A304795.P948547646680909834

/-! ## A304795.P15132521630667227273

`A056561(A301855(n+1))`
-/

namespace A304795.P15132521630667227273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (A301855 (n + 1)).toNat

end

end A304795.P15132521630667227273

/-! ## A304795.P8878095538868516714

`A259361(A301855(1+n)²)`
-/

namespace A304795.P8878095538868516714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A301855 (1 + n) ^ 2).toNat

end

end A304795.P8878095538868516714

/-! ## A304795.P1811497359810256496

`A023445(2+A301855(1+n))`
-/

namespace A304795.P1811497359810256496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (2 + A301855 (1 + n)).toNat

end

end A304795.P1811497359810256496

/-! ## A304795.P422772596967831980

`A023448(A301855(n+1)+5)`
-/

namespace A304795.P422772596967831980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A301855 (n + 1) + 5).toNat

end

end A304795.P422772596967831980

/-! ## A304795.P12298556799280493128

`(A301855(n+1)+n+1)%A000720(A000040(n+2)+1)`
-/

namespace A304795.P12298556799280493128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301855 (n + 1) + (n + 1 : ℤ)) (A000720 (A000040 (n + 2) + 1).toNat)

end

end A304795.P12298556799280493128

/-! ## A304795.P9197144782979100671

`A299701(n+1)+A304793(n+1)-A299701(A100577(n+1))`
-/

namespace A304795.P9197144782979100671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (n + 1) + (A304793 (n + 1) - A299701 (A100577 (n + 1)).toNat)

end

end A304795.P9197144782979100671

/-!
# A304796: Number of special sums of integer partitions of n.

The programs for A304796, there is no canonical definition to state claims against.
-/

/-! ## A304796.P1243050900462312604

`A325124(round(sqrt(A000041(3*n+1))))`
-/

namespace A304796.P1243050900462312604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325124 (SequenceMachineLib.roundAway (Real.sqrt (A000041 (3 * n + 1) : ℝ))).toNat

end

end A304796.P1243050900462312604

/-!
# A304797: Expansion of x * (d/dx) Sum_{k>=0} k!*x^(k*(k+1)/2)/Product_{j=1..k} (1 - x^j).

The programs for A304797, there is no canonical definition to state claims against.
-/

/-! ## A304797.P13905582863869895655

`n*A032020(n)`
-/

namespace A304797.P13905582863869895655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032020 n

end

end A304797.P13905582863869895655

/-! ## A304797.P17752293452320572191

`n*(A216695(n)+1)`
-/

namespace A304797.P17752293452320572191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A216695 n + 1)

end

end A304797.P17752293452320572191

/-! ## A304797.P1266463834536022332

`∑{d}[n, n*A332004(#)]`
-/

namespace A304797.P1266463834536022332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A332004 d

end

end A304797.P1266463834536022332

/-! ## A304797.P8725193466319320082

`n*(A332305(n)+A332304(n))`
-/

namespace A304797.P8725193466319320082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A332305 n + A332304 n)

end

end A304797.P8725193466319320082

/-! ## A304797.P15141181517233016057

`n*(A333149(n)+A333147(n))`
-/

namespace A304797.P15141181517233016057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A333149 n + A333147 n)

end

end A304797.P15141181517233016057

/-! ## A304797.P536246210346363508

`n*(A072707(n)+A072706(n))`
-/

namespace A304797.P536246210346363508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A072707 n + A072706 n)

end

end A304797.P536246210346363508

/-! ## A304797.P11660640448240254355

`n*(2*A032058(n)-1)`
-/

namespace A304797.P11660640448240254355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 * A032058 n - 1)

end

end A304797.P11660640448240254355

/-! ## A304797.P16553866785773882156

`n*(A000045(n)-A282694(n))`
-/

namespace A304797.P16553866785773882156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n - A282694 n)

end

end A304797.P16553866785773882156

/-! ## A304797.P5672530534147545175

`n*(A324969(n+1)-A282694(n))`
-/

namespace A304797.P5672530534147545175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A324969 (n + 1) - A282694 n)

end

end A304797.P5672530534147545175

/-! ## A304797.P1193335390495845677

`n*(A003242(n)-A285981(n))`
-/

namespace A304797.P1193335390495845677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A003242 n - A285981 n)

end

end A304797.P1193335390495845677

/-! ## A304797.P17885894745974480912

`n*(A011782(n)-A261982(n))`
-/

namespace A304797.P17885894745974480912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A011782 n - A261982 n)

end

end A304797.P17885894745974480912

/-! ## A304797.P17641413266548416882

`n*A242447(∑[n]+1)`
-/

namespace A304797.P17641413266548416882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A242447 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304797.P17641413266548416882

/-! ## A304797.P4853354406905275518

`n*A243081(∑[n+2]-1)`
-/

namespace A304797.P4853354406905275518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A243081 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A304797.P4853354406905275518

/-! ## A304797.P18012946367461588198

`n*A261835(A027379(n)+1)`
-/

namespace A304797.P18012946367461588198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A261835 (A027379 n + 1).toNat

end

end A304797.P18012946367461588198

/-! ## A304797.P16893206745283831021

`n*A261835(A034856(n+1))`
-/

namespace A304797.P16893206745283831021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A261835 (A034856 (n + 1)).toNat

end

end A304797.P16893206745283831021

/-! ## A304797.P12255319307089157295

`n*A261835(A055998(n)+1)`
-/

namespace A304797.P12255319307089157295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A261835 (A055998 n + 1).toNat

end

end A304797.P12255319307089157295

/-! ## A304797.P219085016778770435

`n*A261835(A046691(n)+2)`
-/

namespace A304797.P219085016778770435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A261835 (A046691 n + 2).toNat

end

end A304797.P219085016778770435

/-! ## A304797.P4171181225307728264

`n*A261835(eq[1, A025581(n)])`
-/

namespace A304797.P4171181225307728264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A261835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304797.P4171181225307728264

/-! ## A304797.P5918562090326621730

`n*A261835(A052905(n)-n)`
-/

namespace A304797.P5918562090326621730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A261835 (A052905 n - (n : ℤ)).toNat

end

end A304797.P5918562090326621730

/-! ## A304797.P17876156271005152646

`n*A261835(A165157(2*n+1))`
-/

namespace A304797.P17876156271005152646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A261835 (A165157 (2 * n + 1)).toNat

end

end A304797.P17876156271005152646

/-!
# A304799: Solution (a(n)) of the complementary equation a(n) = b(n) + b(2n); see Comments.

The programs for A304799, there is no canonical definition to state claims against.
-/

/-! ## A304799.P15640332153785485108

`A304800(2*n)+A304800(n)`
-/

namespace A304799.P15640332153785485108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304800 (2 * n) + A304800 n

end

end A304799.P15640332153785485108

/-! ## A304799.P61424712150682796

`A156351(A156246(3*n+2)+A156246(n+1))`
-/

namespace A304799.P61424712150682796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (A156246 (3 * n + 2) + A156246 (n + 1)).toNat

end

end A304799.P61424712150682796

/-! ## A304799.P11711781712685963062

`A285250(2*(n+1))-A267708(A201145(n+1))`
-/

namespace A304799.P11711781712685963062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 (2 * (n + 1)) - A267708 (A201145 (n + 1)).toNat

end

end A304799.P11711781712685963062

/-! ## A304799.P13991597113502511195

`A285250(2*(n+1))-A172542(A172543(n+1))`
-/

namespace A304799.P13991597113502511195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 (2 * (n + 1)) - A172542 (A172543 (n + 1)).toNat

end

end A304799.P13991597113502511195

/-! ## A304799.P72167344268367856

`eq[A158122(n), A285249(n+1)]`
-/

namespace A304799.P72167344268367856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304799.P72167344268367856

