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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A178000: Largest n-digit prime with the maximum number of digits equal to 2.

The programs for A178000, there is no canonical definition to state claims against.
-/

/-! ## A178000.P4860316371506681475

`A151799(xor(4, A173193(n+1)))`
-/

namespace A178000.P4860316371506681475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (Int.xor 4 (A173193 (n + 1))).toNat

end

end A178000.P4860316371506681475

/-!
# A178001: Largest n-digit prime with the most digits equal to 3.

The programs for A178001, there is no canonical definition to state claims against.
-/

/-! ## A178001.P9107239713715057936

`A268704(1+n)-A000038(n)²`
-/

namespace A178001.P9107239713715057936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268704 (1 + n) - A000038 n ^ 2

end

end A178001.P9107239713715057936

/-! ## A178001.P10452414797692750899

`xor(A000038(n)², A268704(n+1))`
-/

namespace A178001.P10452414797692750899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 n ^ 2) (A268704 (n + 1))

end

end A178001.P10452414797692750899

/-! ## A178001.P5345854533957419497

`A268704(n+1)-2*A000038(2*n)`
-/

namespace A178001.P5345854533957419497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268704 (n + 1) - 2 * A000038 (2 * n)

end

end A178001.P5345854533957419497

/-! ## A178001.P7620322656167926182

`A268704(n+1)%(A068692(n+1)-3)`
-/

namespace A178001.P7620322656167926182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268704 (n + 1)) (A068692 (n + 1) - 3)

end

end A178001.P7620322656167926182

/-! ## A178001.P972096084781884060

`A268704(n+1)-C(4, A054272(3*n+2))`
-/

namespace A178001.P972096084781884060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268704 (n + 1) - (Nat.choose 4 (A054272 (3 * n + 2)).toNat : ℤ)

end

end A178001.P972096084781884060

/-! ## A178001.P10522814775596968737

`A268704(n+1)-A000038(n)*A037067(n)`
-/

namespace A178001.P10522814775596968737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268704 (n + 1) - A000038 n * A037067 n

end

end A178001.P10522814775596968737

/-! ## A178001.P10987468291909398391

`A268704(n+1)-A000038(n)*A087131(n)`
-/

namespace A178001.P10987468291909398391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268704 (n + 1) - A000038 n * A087131 n

end

end A178001.P10987468291909398391

/-! ## A178001.P18275117949869115643

`A268704(n+1)-A000038(n)*A099662(n)`
-/

namespace A178001.P18275117949869115643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268704 (n + 1) - A000038 n * A099662 n

end

end A178001.P18275117949869115643

/-! ## A178001.P8188509373099522118

`A268704(n+1)%(A037069(n)+2)`
-/

namespace A178001.P8188509373099522118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268704 (n + 1)) (A037069 n + 2)

end

end A178001.P8188509373099522118

/-! ## A178001.P18219592486937166789

`A268704(n+1)%A268744(A311389(n))`
-/

namespace A178001.P18219592486937166789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268704 (n + 1)) (A268744 (A311389 n).toNat)

end

end A178001.P18219592486937166789

/-!
# A178002: Largest n-digit prime with the most digits equal to 4.

The programs for A178002, there is no canonical definition to state claims against.
-/

/-! ## A178002.P5315649914725156946

`p?[or(A098147(n+1), A099658(n))]`
-/

namespace A178002.P5315649914725156946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098147 (n + 1)) (A099658 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178002.P5315649914725156946

/-! ## A178002.P15296733135525067379

`p?[or(A099654(n+4), A099658(n))]`
-/

namespace A178002.P15296733135525067379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A099654 (n + 4)) (A099658 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178002.P15296733135525067379

/-!
# A178007: Largest n-digit prime with the most digits equal to 9.

The programs for A178007, there is no canonical definition to state claims against.
-/

/-! ## A178007.P980207835245715198

`A389720(10^n-1)`
-/

namespace A178007.P980207835245715198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389720 (10 ^ n - 1)

end

end A178007.P980207835245715198

/-!
# A178008: Number of permutations of 1..n with no element e[i>=2]<e[1+floor((i-2)/3)] (3-way heap).

The programs for A178008, there is no canonical definition to state claims against.
-/

/-! ## A178008.P1886122232636014020

`A273693(∑[4+n]+2)`
-/

namespace A178008.P1886122232636014020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A178008.P1886122232636014020

/-! ## A178008.P10120924045034376340

`A007672(A007661(n))`
-/

namespace A178008.P10120924045034376340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007672 (A007661 n).toNat

end

end A178008.P10120924045034376340

/-! ## A178008.P1431357498692507566

`A124773(A077947(n))`
-/

namespace A178008.P1431357498692507566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124773 (A077947 n).toNat

end

end A178008.P1431357498692507566

/-!
# A178009: Number of permutations of 1..n with no element e[i>=2]<e[1+floor((i-2)/4)] (4-way heap).

The programs for A178009, there is no canonical definition to state claims against.
-/

/-! ## A178009.P591132526071788696

`A273693(A052905(2+n))`
-/

namespace A178009.P591132526071788696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A052905 (2 + n)).toNat

end

end A178009.P591132526071788696

/-! ## A178009.P15072489976111522857

`A273693(eq[4, A025581(n)])`
-/

namespace A178009.P15072489976111522857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178009.P15072489976111522857

/-! ## A178009.P9561915608130185371

`A273693(A000217(n+5)-5)`
-/

namespace A178009.P9561915608130185371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A000217 (n + 5) - 5).toNat

end

end A178009.P9561915608130185371

/-! ## A178009.P2297497597891812668

`A273693(eq[5, A004736(n+1)])`
-/

namespace A178009.P2297497597891812668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178009.P2297497597891812668

/-! ## A178009.P17919738076793020925

`A273693(A166136(n+1)+A016777(n))`
-/

namespace A178009.P17919738076793020925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A166136 (n + 1) + A016777 n).toNat

end

end A178009.P17919738076793020925

/-! ## A178009.P12306578953633240462

`A273693(A167614(n+1)+A016777(n+1))`
-/

namespace A178009.P12306578953633240462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A167614 (n + 1) + A016777 (n + 1)).toNat

end

end A178009.P12306578953633240462

/-!
# A178010: Number of permutations of 1..n with no element e[i>=2]<e[1+floor((i-2)/5)] (5-way heap).

The programs for A178010, there is no canonical definition to state claims against.
-/

/-! ## A178010.P3983338874122349877

`A273693(A055999(3+n))`
-/

namespace A178010.P3983338874122349877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A055999 (3 + n)).toNat

end

end A178010.P3983338874122349877

/-! ## A178010.P15001917528216459920

`A273693(eq[5, A025581(n)])`
-/

namespace A178010.P15001917528216459920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178010.P15001917528216459920

/-! ## A178010.P12494894287613115020

`A273693(eq[7, A268820(n)])`
-/

namespace A178010.P12494894287613115020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178010.P12494894287613115020

/-! ## A178010.P8046992433064364554

`A273693(Δ[A026054(n+3)])`
-/

namespace A178010.P8046992433064364554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (f1 (n + 1) - f1 n).toNat

end

end A178010.P8046992433064364554

/-! ## A178010.P2785364088911952695

`A273693(A046691(n+4)-2)`
-/

namespace A178010.P2785364088911952695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A046691 (n + 4) - 2).toNat

end

end A178010.P2785364088911952695

/-! ## A178010.P181435289533235617

`A273693(A000217(n+6)-6)`
-/

namespace A178010.P181435289533235617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A000217 (n + 6) - 6).toNat

end

end A178010.P181435289533235617

/-! ## A178010.P3349794049050052324

`A273693(eq[6, A004736(n+1)])`
-/

namespace A178010.P3349794049050052324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178010.P3349794049050052324

/-! ## A178010.P2634714868882087011

`A273693(Δ[Δ[A006504(n+1)]]-1)`
-/

namespace A178010.P2634714868882087011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (f1 (n + 1) - f1 n - 1).toNat

end

end A178010.P2634714868882087011

/-! ## A178010.P8043557855860096975

`A273693(A167614(n+3)+2*(n+1))`
-/

namespace A178010.P8043557855860096975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A167614 (n + 3) + (2 * (n + 1) : ℤ)).toNat

end

end A178010.P8043557855860096975

/-!
# A178011: Number of permutations of 1..n with no element e[i>=2]<e[1+floor((i-2)/6)] (6-way heap).

The programs for A178011, there is no canonical definition to state claims against.
-/

/-! ## A178011.P8564163556087880906

`A273693(eq[6, A025581(n)])`
-/

namespace A178011.P8564163556087880906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178011.P8564163556087880906

/-! ## A178011.P4833037547242359712

`A273693(A052905(n+4)-2)`
-/

namespace A178011.P4833037547242359712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A052905 (n + 4) - 2).toNat

end

end A178011.P4833037547242359712

/-! ## A178011.P16815369228736295919

`A273693(A046691(5+n)-3)`
-/

namespace A178011.P16815369228736295919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A046691 (5 + n) - 3).toNat

end

end A178011.P16815369228736295919

/-! ## A178011.P6277759790393671231

`A273693(A000096(n+6)-6)`
-/

namespace A178011.P6277759790393671231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A000096 (n + 6) - 6).toNat

end

end A178011.P6277759790393671231

/-! ## A178011.P16356454764435238525

`A273693(A000217(n+7)-7)`
-/

namespace A178011.P16356454764435238525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A000217 (n + 7) - 7).toNat

end

end A178011.P16356454764435238525

/-! ## A178011.P8335037092141906431

`A273693(eq[7, A004736(n+1)])`
-/

namespace A178011.P8335037092141906431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178011.P8335037092141906431

/-! ## A178011.P12513226239069175656

`A273693(Δ[A026054(n+4)]-1)`
-/

namespace A178011.P12513226239069175656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (f1 (n + 1) - f1 n - 1).toNat

end

end A178011.P12513226239069175656

/-! ## A178011.P13421068028186507886

`A273693(eq[5, A002262(n)]+2*n+1)`
-/

namespace A178011.P13421068028186507886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (2 * n + 1))

end

end A178011.P13421068028186507886

/-!
# A178012: Number of permutations of 2 copies of 1..n with no element e[i>=2]<e[1+floor((i-2)/2)] (2-way heap).

The programs for A178012, there is no canonical definition to state claims against.
-/

/-! ## A178012.P14990348555071559912

`A087504(∏[Δ[n²]]+1)`
-/

namespace A178012.P14990348555071559912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087504 (∏ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A178012.P14990348555071559912

/-!
# A178013: Number of permutations of 2 copies of 1..n with no element e[i>=2]<e[1+floor((i-2)/3)] (3-way heap).

The programs for A178013, there is no canonical definition to state claims against.
-/

/-! ## A178013.P4237229346059605862

`∏[row(record[A215063(2*n)])]`
-/

namespace A178013.P4237229346059605862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215063 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A178013.P4237229346059605862

/-!
# A178014: Number of permutations of 2 copies of 1..n with no element e[i>=2]<e[1+floor((i-2)/4)] (4-way heap).

The programs for A178014, there is no canonical definition to state claims against.
-/

/-! ## A178014.P12765310164253150660

`A262869(∏[∑[n+1]+1]+n)`
-/

namespace A178014.P12765310164253150660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (∏ j ∈ Finset.range (n + 1), f1 j + n)

end

end A178014.P12765310164253150660

/-!
# A178015: Number of permutations of 2 copies of 1..n with no element e[i>=2]<e[1+floor((i-2)/5)] (5-way heap).

The programs for A178015, there is no canonical definition to state claims against.
-/

/-! ## A178015.P14834694256214794746

`A049417(A168550(n+1)*A385548(n))`
-/

namespace A178015.P14834694256214794746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (A168550 (n + 1) * A385548 n).toNat

end

end A178015.P14834694256214794746

/-!
# A178016: Number of permutations of 2 copies of 1..n with no element e[i>=2]<e[1+floor((i-2)/6)] (6-way heap).

The programs for A178016, there is no canonical definition to state claims against.
-/

/-! ## A178016.P11604611823404520492

`A008486(comp[2*(n+2)]*A121886(n))`
-/

namespace A178016.P11604611823404520492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A121886 n).toNat

end

end A178016.P11604611823404520492

/-!
# A178027: Multiples of 5291.

The programs for A178027, the canonical program `A178027.P10003575347542707748` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178027 has offset 0).

The definition of A178027 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A178027.anchor (n : ℕ) : A178027 n = 5291 * n` in `Proof.A178.A178027`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178027.P10003575347542707748

`11*13*37*n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178027

/-- `11*13*37*n` -/
def P10003575347542707748.Spec : Prop :=
  ∀ n, (P10003575347542707748.a n : ℤ) = A178027 n

theorem P10003575347542707748.correct : P10003575347542707748.Spec := by
  intro n
  simp only [A178027]

end A178027

/-!
# A178028: Numbers n dividing every cyclic permutation of n^2.

The programs for A178028, there is no canonical definition to state claims against.
-/

/-! ## A178028.P892206322662476708

`A177928(lt[A204848(2*n+1), A000351(n)])`
-/

namespace A178028.P892206322662476708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204848 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177928 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A178028.P892206322662476708

/-! ## A178028.P17918571429219742463

`A177928(lt[A204848(2*n+1), A049315(n)])`
-/

namespace A178028.P17918571429219742463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204848 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177928 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A178028.P17918571429219742463

/-! ## A178028.P1130718662757406797

`A177928(lt[A002962(n+1), A100995(2*n+1)])`
-/

namespace A178028.P1130718662757406797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177928 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A178028.P1130718662757406797

/-! ## A178028.P4263166402420113738

`A177928(∪[A038101(n+1), A177912(n+1)])`
-/

namespace A178028.P4263166402420113738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177912 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177928 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A178028.P4263166402420113738

/-!
# A178029: Numbers whose sum of divisors equals the sum of their anti-divisors.

The programs for A178029, there is no canonical definition to state claims against.
-/

/-! ## A178029.P3383281500686160091

`filter[A191581(n+2), A097325(#)]`
-/

namespace A178029.P3383281500686160091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191581 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A178029.P3383281500686160091

/-! ## A178029.P16985470664637031385

`filter[A191581(n+2), A294934(#)]`
-/

namespace A178029.P16985470664637031385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191581 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A178029.P16985470664637031385

/-! ## A178029.P429769765586919240

`filter[A191581(n+2), A356173(#)]`
-/

namespace A178029.P429769765586919240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191581 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A178029.P429769765586919240

/-! ## A178029.P8490828964376455973

`filter[A191581(n+2), A360128(#)]`
-/

namespace A178029.P8490828964376455973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191581 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A178029.P8490828964376455973

/-! ## A178029.P10095621777718034895

`filter[A191581(n+3), A294935(#)]`
-/

namespace A178029.P10095621777718034895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191581 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A178029.P10095621777718034895

/-!
# A178030: Array read by antidiagonals: T(0,m)=2, T(1,m)=1, T(n,m)=A000032(n) and recursively T(n,m)=( T(n-1,m)^2 + (4*m + 1)*(-1)^n) / T(n-2, m), n>=0, m>=1.

The programs for A178030, there is no canonical definition to state claims against.
-/

/-! ## A178030.P6325895939739405422

`A177862(A381571(n+1))`
-/

namespace A178030.P6325895939739405422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177862 (A381571 (n + 1)).toNat

end

end A178030.P6325895939739405422

/-! ## A178030.P12133497740910256995

`A177862(A396429(n+1))`
-/

namespace A178030.P12133497740910256995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177862 (A396429 (n + 1)).toNat

end

end A178030.P12133497740910256995

/-!
# A178031: Consider the Farey tree A049455/A049456; a(n) = row at which the denominator n first appears (assumes first row is labeled row 1).

The programs for A178031, there is no canonical definition to state claims against.
-/

/-! ## A178031.P1247808658521775496

`floor(log2(A020946(1+n)))+1`
-/

namespace A178031.P1247808658521775496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A020946 (1 + n)).toNat + 1

end

end A178031.P1247808658521775496

/-! ## A178031.P14582608893331605069

`floor(log2(A020950(1+n)+1))+1`
-/

namespace A178031.P14582608893331605069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A020950 (1 + n) + 1).toNat + 1

end

end A178031.P14582608893331605069

/-! ## A178031.P12053915531047828277

`ceil(A000007(n)+log2(A020946(n+1)))`
-/

namespace A178031.P12053915531047828277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000007 n : ℝ) + Real.logb 2 (A020946 (n + 1) : ℝ)⌉

end

end A178031.P12053915531047828277

/-! ## A178031.P9784287163748286072

`A000005(xor(A020948(n+1), A020953(n+1)))`
-/

namespace A178031.P9784287163748286072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.xor (A020948 (n + 1)) (A020953 (n + 1))).toNat

end

end A178031.P9784287163748286072

/-! ## A178031.P18028591614590707208

`A070941(A359050(n+1))`
-/

namespace A178031.P18028591614590707208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A359050 (n + 1)).toNat

end

end A178031.P18028591614590707208

/-! ## A178031.P10354490798501495528

`A070939(A020946(n+1))`
-/

namespace A178031.P10354490798501495528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A020946 (n + 1)).toNat

end

end A178031.P10354490798501495528

/-! ## A178031.P5885535559960292624

`A070939(A020950(n+1))`
-/

namespace A178031.P5885535559960292624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A020950 (n + 1)).toNat

end

end A178031.P5885535559960292624

/-! ## A178031.P6769881133599622830

`A007456(A020946(n+1)+1)`
-/

namespace A178031.P6769881133599622830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (A020946 (n + 1) + 1).toNat

end

end A178031.P6769881133599622830

/-! ## A178031.P10910465423142441160

`A000523(A020950(n+1)+1)+1`
-/

namespace A178031.P10910465423142441160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A020950 (n + 1) + 1).toNat + 1

end

end A178031.P10910465423142441160

/-! ## A178031.P13793371272777542931

`A345380(A020946(n)+Δ[A020946(n)])`
-/

namespace A178031.P13793371272777542931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345380 (A020946 n + (f1 (n + 1) - f1 n)).toNat

end

end A178031.P13793371272777542931

/-! ## A178031.P9845892272225725622

`A000523(2*A020946(n+1))`
-/

namespace A178031.P9845892272225725622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A020946 (n + 1)).toNat

end

end A178031.P9845892272225725622

/-!
# A178032: Numbers n such that n, n+1, n+2 are all of the form p*q^2 for distinct primes p,q.

The programs for A178032, there is no canonical definition to state claims against.
-/

/-! ## A178032.P3742423615902326143

`∩[A074172(n+1), A074173(n+1)]`
-/

namespace A178032.P3742423615902326143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178032.P3742423615902326143

/-! ## A178032.P8125492734150843156

`∩[A074172(n+1), A356743(n+1)]`
-/

namespace A178032.P8125492734150843156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178032.P8125492734150843156

/-! ## A178032.P7542887385045415947

`∩[A074172(n+2)-1, A074172(n+2)]`
-/

namespace A178032.P7542887385045415947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074172 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074172 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178032.P7542887385045415947

/-! ## A178032.P1808185007560693129

`∩[A071319(n+1), A342029(n+1)]`
-/

namespace A178032.P1808185007560693129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178032.P1808185007560693129

/-! ## A178032.P392468333755877340

`∩[A071319(n+1), A368403(n+1)]`
-/

namespace A178032.P392468333755877340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178032.P392468333755877340

/-! ## A178032.P3110932136901471386

`∩[A038400(n+1), A052214(n+1)]`
-/

namespace A178032.P3110932136901471386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178032.P3110932136901471386

/-! ## A178032.P11646484133442944214

`∩[A049103(n+1), A052214(n+1)]`
-/

namespace A178032.P11646484133442944214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178032.P11646484133442944214

/-! ## A178032.P12566764332121177788

`∩[A052214(n+1), A074172(n+1)]`
-/

namespace A178032.P12566764332121177788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178032.P12566764332121177788

/-! ## A178032.P17828345045129008081

`∩[A052214(n+1), A074173(n+1)]`
-/

namespace A178032.P17828345045129008081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178032.P17828345045129008081

/-! ## A178032.P9159204696656299407

`∩[A052214(n+1), A348076(n+1)]`
-/

namespace A178032.P9159204696656299407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178032.P9159204696656299407

/-!
# A178034: a(n) = binomial(n*Omega(n),Omega(n)) / n.

The programs for A178034, the canonical program `A178034.P16898512593069456651` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178034 has offset 1).

The definition of A178034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178034.P16898512593069456651

`C((n+1)*A001222(n+1), A001222(n+1))/(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A178034

/-- `C((n+1)*A001222(n+1), A001222(n+1))/(n+1)` -/
def P16898512593069456651.Spec : Prop :=
  ∀ n, P16898512593069456651.a n = (A178034 (n + 1) : ℚ)

end A178034

/-! ## A178034.P7589591191965186128

`A336698(A152719(n)+A000162(n+1))`
-/

namespace A178034.P7589591191965186128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336698 (A152719 n + A000162 (n + 1)).toNat

end

end A178034.P7589591191965186128

namespace A178034

/-- `A336698(A152719(n)+A000162(n+1))` -/
def P7589591191965186128.Spec : Prop :=
  ∀ n, P7589591191965186128.a n = A178034 (n + 1)

end A178034

/-! ## A178034.P14503742127881587796

`A061095(n+3)%A286601(A114902(n))`
-/

namespace A178034.P14503742127881587796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061095 (n + 3)) (A286601 (A114902 n).toNat)

end

end A178034.P14503742127881587796

namespace A178034

/-- `A061095(n+3)%A286601(A114902(n))` -/
def P14503742127881587796.Spec : Prop :=
  ∀ n, P14503742127881587796.a n = A178034 (n + 1)

end A178034

/-! ## A178034.P11659449161657187880

`A154446(gcd(A001147(n), A128459(n+4)))`
-/

namespace A178034.P11659449161657187880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154446 (Int.gcd (A001147 n) (A128459 (n + 4)))

end

end A178034.P11659449161657187880

namespace A178034

/-- `A154446(gcd(A001147(n), A128459(n+4)))` -/
def P11659449161657187880.Spec : Prop :=
  ∀ n, P11659449161657187880.a n = A178034 (n + 1)

end A178034

/-!
# A178035: a(n) is the number of the two-sided n-step prudent walks ending on the top side of their box, avoiding both patterns Left^k and Down^k for k>=3.

The programs for A178035, there is no canonical definition to state claims against.
-/

/-! ## A178035.P14236305682477656545

`(A178037(n)+A178036(n))/2`
-/

namespace A178035.P14236305682477656545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178037 n + A178036 n : ℚ) / 2

end

end A178035.P14236305682477656545

/-! ## A178035.P16969256064940201628

`A001281(A178037(n)+A178036(n))`
-/

namespace A178035.P16969256064940201628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A178037 n + A178036 n).toNat

end

end A178035.P16969256064940201628

/-! ## A178035.P8437990935776263159

`A004525(A178037(n)+A178036(n))`
-/

namespace A178035.P8437990935776263159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A178037 n + A178036 n).toNat

end

end A178035.P8437990935776263159

/-! ## A178035.P10263854520103164638

`A004526(A178037(n)+A178036(n))`
-/

namespace A178035.P10263854520103164638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A178037 n + A178036 n).toNat

end

end A178035.P10263854520103164638

/-! ## A178035.P16120950804282500280

`A032742(A178037(n)+A178036(n))`
-/

namespace A178035.P16120950804282500280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A178037 n + A178036 n).toNat

end

end A178035.P16120950804282500280

/-!
# A178036: Number of two-sided n-step prudent walks ending on the northeast corner of their box, avoiding more than two consecutive west steps and more than two consecutive south steps.

The programs for A178036, there is no canonical definition to state claims against.
-/

/-! ## A178036.P2557596682871630819

`2*A178035(n)-A178037(n)`
-/

namespace A178036.P2557596682871630819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178035 n - A178037 n

end

end A178036.P2557596682871630819

/-! ## A178036.P14134103357380521076

`A004277(A178035(n))-A178037(n)`
-/

namespace A178036.P14134103357380521076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A178035 n).toNat - A178037 n

end

end A178036.P14134103357380521076

/-! ## A178036.P13453327047310549296

`A191625(n)-A102681(A111433(n))`
-/

namespace A178036.P13453327047310549296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191625 n - A102681 (A111433 n).toNat

end

end A178036.P13453327047310549296

/-! ## A178036.P10057991378210914045

`A191625(n)-A342721(A002572(n+1))`
-/

namespace A178036.P10057991378210914045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191625 n - A342721 (A002572 (n + 1)).toNat

end

end A178036.P10057991378210914045

/-! ## A178036.P3764173485464546090

`2*A191652(n)-A191605(n)-A102681(A111433(n))`
-/

namespace A178036.P3764173485464546090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191652 n - A191605 n - A102681 (A111433 n).toNat

end

end A178036.P3764173485464546090

/-!
# A178037: Number of two-sided n-step prudent walks ending on the top side or right side of their box, avoiding more than two consecutive west steps and more than two consecutive south steps.

The programs for A178037, there is no canonical definition to state claims against.
-/

/-! ## A178037.P16458967328759469839

`2*A178035(n)-A178036(n)`
-/

namespace A178037.P16458967328759469839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178035 n - A178036 n

end

end A178037.P16458967328759469839

/-! ## A178037.P1658140119448636912

`A004277(A178035(n))-A178036(n)`
-/

namespace A178037.P1658140119448636912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A178035 n).toNat - A178036 n

end

end A178037.P1658140119448636912

/-! ## A178037.P1487514973091865859

`A062108(A292232(n+7))`
-/

namespace A178037.P1487514973091865859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A292232 (n + 7)).toNat

end

end A178037.P1487514973091865859

/-!
# A178041: Number of ways to represent the n-th prime (which has a nonzero number of such representations) as the sum of 4 distinct primes.

The programs for A178041, there is no canonical definition to state claims against.
-/

/-! ## A178041.P14804879891576545735

`A125688(A224534(n+1)-2%(n+1))`
-/

namespace A178041.P14804879891576545735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A224534 (n + 1) - ((2 % (n + 1) : ℕ) : ℤ)).toNat

end

end A178041.P14804879891576545735

/-!
# A178042: Consider the weighted Farey tree A177405/A177407; a(n) = row at which the denominator 2n+1 first appears (assumes first row is labeled row 1).

The programs for A178042, there is no canonical definition to state claims against.
-/

/-! ## A178042.P16499156918173014246

`A177903(n)+1`
-/

namespace A178042.P16499156918173014246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 n + 1

end

end A178042.P16499156918173014246

/-! ## A178042.P8899572863824242682

`2-(A281871(∑[n])-A177903(n))`
-/

namespace A178042.P8899572863824242682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A281871 (∑ j ∈ Finset.range (n + 1), f1 j) - A177903 n)

end

end A178042.P8899572863824242682

/-! ## A178042.P6753698029542087448

`A000124(n)-(∑[n]-A177903(n))`
-/

namespace A178042.P6753698029542087448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A177903 n)

end

end A178042.P6753698029542087448

/-! ## A178042.P17331949774878328273

`abs(or(-1, A008619(n))-A177903(n))`
-/

namespace A178042.P17331949774878328273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (-1) (A008619 n) - A177903 n|

end

end A178042.P17331949774878328273

/-! ## A178042.P12591874760400867364

`∑[A028310(n)]-(∑[n]-A177903(n))`
-/

namespace A178042.P12591874760400867364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A177903 n)

end

end A178042.P12591874760400867364

/-! ## A178042.P8752431782425819235

`Δ[A004006(n)]-(∑[n]-A177903(n))`
-/

namespace A178042.P8752431782425819235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A177903 n)

end

end A178042.P8752431782425819235

/-! ## A178042.P14923681014023113062

`A001316(A001316(n))-(1-A177903(n))`
-/

namespace A178042.P14923681014023113062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat - (1 - A177903 n)

end

end A178042.P14923681014023113062

/-! ## A178042.P9867630954930967602

`1-(A135523(A004768(n))-A177903(n))`
-/

namespace A178042.P9867630954930967602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A135523 (A004768 n).toNat - A177903 n)

end

end A178042.P9867630954930967602

/-! ## A178042.P6597406030979392480

`2-(A072170(A072170(n))-A177903(n))`
-/

namespace A178042.P6597406030979392480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A072170 (A072170 n).toNat - A177903 n)

end

end A178042.P6597406030979392480

/-! ## A178042.P7987925517966845586

`2-(A008966(A328579(n))-A177903(n))`
-/

namespace A178042.P7987925517966845586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A008966 (A328579 n).toNat - A177903 n)

end

end A178042.P7987925517966845586

/-!
# A178043: n-th semiprime minus number of distinct transpositions of digits (zeros and units) in n-th semiprime written in base 2.

The programs for A178043, the canonical program `A178043.P16268124912105417950` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178043 has offset 1).

The definition of A178043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178043.P16268124912105417950

`A001358(n+1)-A178244(A001358(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A178043

/-- `A001358(n+1)-A178244(A001358(n+1))` -/
def P16268124912105417950.Spec : Prop :=
  ∀ n, P16268124912105417950.a n = A178043 (n + 1)

theorem P16268124912105417950.correct : P16268124912105417950.Spec := by
  intro n
  simp only [A178043, Nat.add_sub_cancel]

end A178043

/-! ## A178043.P12942066322077146725

`A176540(n+2)-A178244(A176540(n+2))`
-/

namespace A178043.P12942066322077146725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2) - A178244 (A176540 (n + 2)).toNat

end

end A178043.P12942066322077146725

namespace A178043

/-- `A176540(n+2)-A178244(A176540(n+2))` -/
def P12942066322077146725.Spec : Prop :=
  ∀ n, P12942066322077146725.a n = A178043 (n + 1)

end A178043

/-! ## A178043.P3453769380922156465

`A001358(n+1)-A090706(A075818(n+1)+1)`
-/

namespace A178043.P3453769380922156465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - A090706 (A075818 (n + 1) + 1).toNat

end

end A178043.P3453769380922156465

namespace A178043

/-- `A001358(n+1)-A090706(A075818(n+1)+1)` -/
def P3453769380922156465.Spec : Prop :=
  ∀ n, P3453769380922156465.a n = A178043 (n + 1)

end A178043

/-! ## A178043.P1470297391668823042

`sqrt(A074985(n+1))-A090706(A075818(n+1)+1)`
-/

namespace A178043.P1470297391668823042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ) - (A090706 (A075818 (n + 1) + 1).toNat : ℝ)

end

end A178043.P1470297391668823042

namespace A178043

/-- `sqrt(A074985(n+1))-A090706(A075818(n+1)+1)` -/
def P1470297391668823042.Spec : Prop :=
  ∀ n, P1470297391668823042.a n = (A178043 (n + 1) : ℝ)

end A178043

/-! ## A178043.P12160059024844910042

`A166133(A256563(n+1))-A090706(A075818(n+1)+1)`
-/

namespace A178043.P12160059024844910042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (A256563 (n + 1)).toNat - A090706 (A075818 (n + 1) + 1).toNat

end

end A178043.P12160059024844910042

namespace A178043

/-- `A166133(A256563(n+1))-A090706(A075818(n+1)+1)` -/
def P12160059024844910042.Spec : Prop :=
  ∀ n, P12160059024844910042.a n = A178043 (n + 1)

end A178043

/-! ## A178043.P4600043165722024445

`A001358(n+1)-A175520(n+1)`
-/

namespace A178043.P4600043165722024445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - A175520 (n + 1)

end

end A178043.P4600043165722024445

namespace A178043

/-- `A001358(n+1)-A175520(n+1)` -/
def P4600043165722024445.Spec : Prop :=
  ∀ n, P4600043165722024445.a n = A178043 (n + 1)

end A178043

/-! ## A178043.P11529500693181347268

`sqrt(A074985(n+1))-A175520(n+1)`
-/

namespace A178043.P11529500693181347268
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ) - (A175520 (n + 1) : ℝ)

end

end A178043.P11529500693181347268

namespace A178043

/-- `sqrt(A074985(n+1))-A175520(n+1)` -/
def P11529500693181347268.Spec : Prop :=
  ∀ n, P11529500693181347268.a n = (A178043 (n + 1) : ℝ)

end A178043

/-! ## A178043.P8269552151133134692

`record[A088739(n+1)]-A175520(n+1)`
-/

namespace A178043.P8269552151133134692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A175520 (n + 1)

end

end A178043.P8269552151133134692

namespace A178043

/-- `record[A088739(n+1)]-A175520(n+1)` -/
def P8269552151133134692.Spec : Prop :=
  ∀ n, P8269552151133134692.a n = A178043 (n + 1)

end A178043

/-! ## A178043.P15951306970692272465

`A186621(n+1)+1-A175520(n+1)`
-/

namespace A178043.P15951306970692272465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + (1 - A175520 (n + 1))

end

end A178043.P15951306970692272465

namespace A178043

/-- `A186621(n+1)+1-A175520(n+1)` -/
def P15951306970692272465.Spec : Prop :=
  ∀ n, P15951306970692272465.a n = A178043 (n + 1)

end A178043

/-! ## A178043.P11956658552157791589

`eq[1, A064911(n+1)]+1-A175520(n+1)`
-/

namespace A178043.P11956658552157791589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (1 - A175520 (n + 1))

end

end A178043.P11956658552157791589

namespace A178043

/-- `eq[1, A064911(n+1)]+1-A175520(n+1)` -/
def P11956658552157791589.Spec : Prop :=
  ∀ n, P11956658552157791589.a n = A178043 (n + 1)

end A178043

/-!
# A178044: Primes of the form k^3 - 13.

The programs for A178044, there is no canonical definition to state claims against.
-/

/-! ## A178044.P17412779215427734142

`p?[n^3-13]`
-/

namespace A178044.P17412779215427734142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178044.P17412779215427734142

/-! ## A178044.P6621564414890160879

`or(2, p?[(n+1)*(n+1)²-13])`
-/

namespace A178044.P6621564414890160879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 1) ^ 2 : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A178044.P6621564414890160879

/-!
# A178045: Numbers of semiprimes between consecutive even numbers that are not semiprimes.

The programs for A178045, there is no canonical definition to state claims against.
-/

/-! ## A178045.P4938841407012887167

`Δ[A072000(record[A256420(1+n)])]`
-/

namespace A178045.P4938841407012887167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256420 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178045.P4938841407012887167

/-!
# A178046: Triangle t(n, m) = 2*binomial(n,m)^2 -A008292(n+1,m+1)^2 read by rows.

The programs for A178046, the canonical program `A178046.P10055047951762112894` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178046 has offset 0).

The definition of A178046 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008292, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178046.P10055047951762112894

`2*C(row(n), col(n))²-A008292(C(row(n)+1, 2)+col(n)+1)²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A178046

/-- `2*C(row(n), col(n))²-A008292(C(row(n)+1, 2)+col(n)+1)²` -/
def P10055047951762112894.Spec : Prop :=
  ∀ n, P10055047951762112894.a n = A178046 n

theorem P10055047951762112894.correct : P10055047951762112894.Spec := by
  intro n
  simp only [A178046]

end A178046

/-! ## A178046.P2673688152977084916

`2*A008459(n)-A177823(n+1)`
-/

namespace A178046.P2673688152977084916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008459 n - A177823 (n + 1)

end

end A178046.P2673688152977084916

namespace A178046

/-- `2*A008459(n)-A177823(n+1)` -/
def P2673688152977084916.Spec : Prop :=
  ∀ n, P2673688152977084916.a n = A178046 n

end A178046

/-! ## A178046.P12579709160783731422

`2*A008459(n)-A008292(n+1)²`
-/

namespace A178046.P12579709160783731422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008459 n - A008292 (n + 1) ^ 2

end

end A178046.P12579709160783731422

namespace A178046

/-- `2*A008459(n)-A008292(n+1)²` -/
def P12579709160783731422.Spec : Prop :=
  ∀ n, P12579709160783731422.a n = A178046 n

end A178046

/-! ## A178046.P7372309268487833085

`2*A007318(n)²-A177823(n+1)`
-/

namespace A178046.P7372309268487833085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n ^ 2 - A177823 (n + 1)

end

end A178046.P7372309268487833085

namespace A178046

/-- `2*A007318(n)²-A177823(n+1)` -/
def P7372309268487833085.Spec : Prop :=
  ∀ n, P7372309268487833085.a n = A178046 n

end A178046

/-! ## A178046.P3282209444220320454

`A028326(n)²/2-A177823(n+1)`
-/

namespace A178046.P3282209444220320454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n ^ 2 : ℚ) / 2 - (A177823 (n + 1) : ℚ)

end

end A178046.P3282209444220320454

namespace A178046

/-- `A028326(n)²/2-A177823(n+1)` -/
def P3282209444220320454.Spec : Prop :=
  ∀ n, P3282209444220320454.a n = (A178046 n : ℚ)

end A178046

/-!
# A178047: Consider the Farey tree A049455/A049456; a(n) = row at which the denominator n first appears (assumes first row is labeled row 0).

The programs for A178047, there is no canonical definition to state claims against.
-/

/-! ## A178047.P3073698141781087280

`A178031(1+n)-1`
-/

namespace A178047.P3073698141781087280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178031 (1 + n) - 1

end

end A178047.P3073698141781087280

/-! ## A178047.P1333695985453137754

`floor(log2(A020946(1+n)))`
-/

namespace A178047.P1333695985453137754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A020946 (1 + n)).toNat

end

end A178047.P1333695985453137754

/-! ## A178047.P13175623855626413698

`floor(log2(A020950(1+n)+1))`
-/

namespace A178047.P13175623855626413698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A020950 (1 + n) + 1).toNat

end

end A178047.P13175623855626413698

/-! ## A178047.P1577532543922915235

`floor(log2(((A020948(n+1)+1)/2+1)/2))`
-/

namespace A178047.P1577532543922915235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (((A020948 (n + 1) + 1 : ℚ) / 2 + 1) / 2 : ℝ)⌋

end

end A178047.P1577532543922915235

/-! ## A178047.P782015179133178547

`A000523(A020946(n+1))`
-/

namespace A178047.P782015179133178547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A020946 (n + 1)).toNat

end

end A178047.P782015179133178547

/-! ## A178047.P4378934044421445431

`A063250(A020950(n+1))`
-/

namespace A178047.P4378934044421445431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063250 (A020950 (n + 1)).toNat

end

end A178047.P4378934044421445431

/-! ## A178047.P16225247921707736797

`A000401(A178031(n+1))`
-/

namespace A178047.P16225247921707736797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A178031 (n + 1)).toNat

end

end A178047.P16225247921707736797

/-! ## A178047.P16095447650383072230

`A000523(A020950(n+1)+1)`
-/

namespace A178047.P16095447650383072230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A020950 (n + 1) + 1).toNat

end

end A178047.P16095447650383072230

/-! ## A178047.P8736041010381210044

`A070941(A359050(n+1))-1`
-/

namespace A178047.P8736041010381210044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A359050 (n + 1)).toNat - 1

end

end A178047.P8736041010381210044

/-! ## A178047.P13369466851859632248

`A070198(n)%A178031(n+1)`
-/

namespace A178047.P13369466851859632248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A178031 (n + 1))

end

end A178047.P13369466851859632248

/-!
# A178048: Triangle T(n, m) = ( |-A008292(n+1,m+1)^2 + 2*binomial(n, m)^2| + A008292(n+1,m+1)*binomial(n, m) )/2 read by rows.

The programs for A178048, there is no canonical definition to state claims against.
-/

/-! ## A178048.P18226802096058600914

`(A141686(n+1)+abs(A178046(n)))/2`
-/

namespace A178048.P18226802096058600914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141686 (n + 1) + |A178046 n| : ℚ) / 2

end

end A178048.P18226802096058600914

/-! ## A178048.P713255364100767161

`A032742(A141686(n+1)+abs(A178046(n)))`
-/

namespace A178048.P713255364100767161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A141686 (n + 1) + |A178046 n|).toNat

end

end A178048.P713255364100767161

/-! ## A178048.P2048986250549088953

`A324698(A157211(n))-1`
-/

namespace A178048.P2048986250549088953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324698 (A157211 n).toNat - 1

end

end A178048.P2048986250549088953

/-! ## A178048.P4987509782634957638

`A363899(8^A276777(n))`
-/

namespace A178048.P4987509782634957638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363899 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A276777 n : ℤ))).toNat

end

end A178048.P4987509782634957638

/-! ## A178048.P2385807596861509187

`A091590(A091590(n)%A208945(n+1))`
-/

namespace A178048.P2385807596861509187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091590 (Int.tmod (A091590 n) (A208945 (n + 1))).toNat

end

end A178048.P2385807596861509187

/-!
# A178049: The number of iterations of the map x -> x + d(x) to reach a repdigit (cf. A010785), starting at n, where the decimals of d(x) are the first differences of the decimals of x.

The programs for A178049, there is no canonical definition to state claims against.
-/

/-! ## A178049.P17967659334727723614

`A064844(A073731(n))+1`
-/

namespace A178049.P17967659334727723614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064844 (A073731 (n + 10)).toNat + 1

end

end A178049.P17967659334727723614

/-! ## A178049.P7530809775241604720

`n-(A023443(n)-A064844(A073731(n)))`
-/

namespace A178049.P7530809775241604720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A064844 (A073731 (n + 10)).toNat)

end

end A178049.P7530809775241604720

/-! ## A178049.P11391702310058366517

`2-(and(1, A056220(n))-A064844(A073731(n)))`
-/

namespace A178049.P11391702310058366517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.land 1 (A056220 n) - A064844 (A073731 (n + 10)).toNat)

end

end A178049.P11391702310058366517

/-! ## A178049.P15373939829115155348

`1-(and(2, A153638(n))-A064844(A073731(n)))`
-/

namespace A178049.P15373939829115155348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.land 2 (A153638 n) - A064844 (A073731 (n + 10)).toNat)

end

end A178049.P15373939829115155348

/-! ## A178049.P9820654305086684742

`A008619(2*n)-(n-A064844(A073731(n)))`
-/

namespace A178049.P9820654305086684742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - ((n : ℤ) - A064844 (A073731 (n + 10)).toNat)

end

end A178049.P9820654305086684742

/-! ## A178049.P11694337878283719479

`A005408(n)-n-(n-A064844(A073731(n)))`
-/

namespace A178049.P11694337878283719479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) - ((n : ℤ) - A064844 (A073731 (n + 10)).toNat)

end

end A178049.P11694337878283719479

/-! ## A178049.P12121074046927806669

`A040000(A088932(n))-(1-A064844(A073731(n)))`
-/

namespace A178049.P12121074046927806669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A088932 n).toNat - (1 - A064844 (A073731 (n + 10)).toNat)

end

end A178049.P12121074046927806669

/-!
# A178050: n=x^2+17, n and n+2 are prime.

The programs for A178050, there is no canonical definition to state claims against.
-/

/-! ## A178050.P18021713868101189234

`p?[p?[n²+19]-2]`
-/

namespace A178050.P18021713868101189234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 19

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178050.P18021713868101189234

/-! ## A178050.P8623511528137210056

`p?[p?[A241847(2*n)]+2]-2`
-/

namespace A178050.P8623511528137210056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241847 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A178050.P8623511528137210056

/-!
# A178051: Peak values of mountain numbers (cf. A134941).

The programs for A178051, there is no canonical definition to state claims against.
-/

/-! ## A178051.P5466215027702913561

`A054055(A134941(1+n))`
-/

namespace A178051.P5466215027702913561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A134941 (1 + n)).toNat

end

end A178051.P5466215027702913561

/-! ## A178051.P10702859962556359668

`A115300(or(1, A134941(1+n)))`
-/

namespace A178051.P10702859962556359668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115300 (Int.lor 1 (A134941 (1 + n))).toNat

end

end A178051.P10702859962556359668

/-! ## A178051.P4853402780278097955

`A115300(root(A134941(1+n), 2)²)`
-/

namespace A178051.P4853402780278097955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115300 (SequenceMachineLib.roundAway (((A134941 (1 + n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A178051.P4853402780278097955

/-! ## A178051.P14647245436306118701

`A115300(A134941(n+1)+char[1])`
-/

namespace A178051.P14647245436306118701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115300 (A134941 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A178051.P14647245436306118701

/-! ## A178051.P4453409232928469833

`A037904(A134941(n+1)+1)+1`
-/

namespace A178051.P4453409232928469833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A134941 (n + 1) + 1).toNat + 1

end

end A178051.P4453409232928469833

/-! ## A178051.P14040124748967315542

`A115300(A134941(2*n+1-n))`
-/

namespace A178051.P14040124748967315542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115300 (A134941 (2 * n + 1 - n)).toNat

end

end A178051.P14040124748967315542

/-! ## A178051.P11154161480530875852

`10-A030076(A134941(n+1)+char[1])`
-/

namespace A178051.P11154161480530875852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A030076 (A134941 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A178051.P11154161480530875852

/-! ## A178051.P14567662294408756786

`A047813(A134941(n+1)+A057428(n))`
-/

namespace A178051.P14567662294408756786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A134941 (n + 1) + A057428 n).toNat

end

end A178051.P14567662294408756786

/-! ## A178051.P351573248501085821

`A115300(A178334(n)+A134941(n+1))`
-/

namespace A178051.P351573248501085821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115300 (A178334 n + A134941 (n + 1)).toNat

end

end A178051.P351573248501085821

/-! ## A178051.P1492322169407815002

`A047813(A134941(n+1)-A057427(n))`
-/

namespace A178051.P1492322169407815002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A134941 (n + 1) - A057427 n).toNat

end

end A178051.P1492322169407815002

/-!
# A178052: Digit sums of mountain numbers (cf. A134941).

The programs for A178052, there is no canonical definition to state claims against.
-/

/-! ## A178052.P8269122694804999544

`∑{digits}[A134941(n+1), #]`
-/

namespace A178052.P8269122694804999544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A178052.P8269122694804999544

/-! ## A178052.P2082470370379248695

`∑{digits}[record[A134941(A246694(n))], #]`
-/

namespace A178052.P2082470370379248695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A178052.P2082470370379248695

/-! ## A178052.P17465492802508174132

`∑{digits}[record[(5*n+1)*A178333(5*n+1)], #]`
-/

namespace A178052.P17465492802508174132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) * A178333 (5 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A178052.P17465492802508174132

/-! ## A178052.P8801957747623751827

`∑{digits}[record[A134941(A134478(n))], #]`
-/

namespace A178052.P8801957747623751827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A178052.P8801957747623751827

/-! ## A178052.P8864681005918845614

`∑{digits}[record[A134941(A028920(n))], #]`
-/

namespace A178052.P8864681005918845614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A178052.P8864681005918845614

/-! ## A178052.P15134500952226152230

`A007953(A134941(1+n))`
-/

namespace A178052.P15134500952226152230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A134941 (1 + n)).toNat

end

end A178052.P15134500952226152230

/-! ## A178052.P4374600174983660281

`A004092(5*A134941(n+1))`
-/

namespace A178052.P4374600174983660281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A134941 (n + 1)).toNat

end

end A178052.P4374600174983660281

/-!
# A178053: Digital roots of mountain numbers (cf. A134941).

The programs for A178053, there is no canonical definition to state claims against.
-/

/-! ## A178053.P7055938252478765786

`dr(A134941(1+n))`
-/

namespace A178053.P7055938252478765786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A134941 (1 + n))

end

end A178053.P7055938252478765786

/-! ## A178053.P17689242861168900825

`dr(A178052(n+1))`
-/

namespace A178053.P17689242861168900825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A178052 (n + 1))

end

end A178053.P17689242861168900825

/-! ## A178053.P10695399007033853211

`A007953(∑{digits}[A178052(1+n), #])`
-/

namespace A178053.P10695399007033853211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178052 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A178053.P10695399007033853211

/-! ## A178053.P11193218532377067986

`A010888(A178052(2*n+1-n))`
-/

namespace A178053.P11193218532377067986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A178052 (2 * n + 1 - n)).toNat

end

end A178053.P11193218532377067986

/-! ## A178053.P10108269092450647217

`A010888(A178052(n+1)+n-A010888(n))`
-/

namespace A178053.P10108269092450647217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A178052 (n + 1) + ((n : ℤ) - A010888 n)).toNat

end

end A178053.P10108269092450647217

/-! ## A178053.P9769671942055403427

`dr(record[A134941(A082854(n))])`
-/

namespace A178053.P9769671942055403427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (A082854 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A178053.P9769671942055403427

/-! ## A178053.P1061292961322561382

`dr(record[A134941(A134478(n))])`
-/

namespace A178053.P1061292961322561382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (A134478 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A178053.P1061292961322561382

/-! ## A178053.P12481796706130942239

`dr(record[A134941(A028920(n))])`
-/

namespace A178053.P12481796706130942239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (A028920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A178053.P12481796706130942239

/-! ## A178053.P3335217998260071365

`A010888(A134941(n+1))`
-/

namespace A178053.P3335217998260071365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A134941 (n + 1)).toNat

end

end A178053.P3335217998260071365

/-! ## A178053.P780818897703198793

`A279816(3*A134941(n+1))`
-/

namespace A178053.P780818897703198793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279816 (3 * A134941 (n + 1)).toNat

end

end A178053.P780818897703198793

/-!
# A178054: Numbers representing the index of the day of week for the first day of the month in the Gregorian calendar.

The programs for A178054, there is no canonical definition to state claims against.
-/

/-! ## A178054.P6354144895235265970

`A134158(A073305(n))%7`
-/

namespace A178054.P6354144895235265970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134158 (A073305 n).toNat) 7

end

end A178054.P6354144895235265970

/-! ## A178054.P5963938601348302438

`(A189916(n+1)+6)%7`
-/

namespace A178054.P5963938601348302438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189916 (n + 1) + 6) 7

end

end A178054.P5963938601348302438

/-!
# A178055: Numbers representing the number of days in a month in the Gregorian calendar (modulus 7).

The programs for A178055, there is no canonical definition to state claims against.
-/

/-! ## A178055.P13382065012094621336

`A031350(A069796(n+1))`
-/

namespace A178055.P13382065012094621336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031350 (A069796 (n + 1)).toNat

end

end A178055.P13382065012094621336

/-! ## A178055.P5709304638899701423

`A194449(A036073(n)+6)`
-/

namespace A178055.P5709304638899701423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194449 (A036073 n + 6).toNat

end

end A178055.P5709304638899701423

/-! ## A178055.P10099571917600759019

`A307200(A005897(n)+1-char[1])`
-/

namespace A178055.P10099571917600759019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307200 (A005897 n + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))).toNat

end

end A178055.P10099571917600759019

/-! ## A178055.P145577345382804288

`A194822(3*A100026(2*n+5))`
-/

namespace A178055.P145577345382804288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194822 (3 * A100026 (2 * n + 5)).toNat

end

end A178055.P145577345382804288

/-! ## A178055.P9436437960767116217

`ceil(ratio[A224613(A127687(3*n+5))])`
-/

namespace A178055.P9436437960767116217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224613 (A127687 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A178055.P9436437960767116217

/-!
# A178057: Smallest prime number > a(n-1) that contains the n-th semiprime number as a substring.

The programs for A178057, there is no canonical definition to state claims against.
-/

/-! ## A178057.P14818683770398318046

`A045468(lt[A288053(n), 1])`
-/

namespace A178057.P14818683770398318046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288053 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A178057.P14818683770398318046

/-!
# A178058: Number of 1's in the Gray code for binomial(n,m).

The programs for A178058, the canonical program `A178058.P1320891361642740791` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178058 has offset 0).

The definition of A178058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178058.P1320891361642740791

`A005811(C(row(n), col(n)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A178058

/-- `A005811(C(row(n), col(n)))` -/
def P1320891361642740791.Spec : Prop :=
  ∀ n, P1320891361642740791.a n = A178058 n

theorem P1320891361642740791.correct : P1320891361642740791.Spec := by
  intro n
  simp only [A178058]

end A178058

/-! ## A178058.P3891613458442291309

`A088748(C(row(n), col(n)))-1`
-/

namespace A178058.P3891613458442291309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)) - 1

end

end A178058.P3891613458442291309

namespace A178058

/-- `A088748(C(row(n), col(n)))-1` -/
def P3891613458442291309.Spec : Prop :=
  ∀ n, P3891613458442291309.a n = A178058 n

theorem P3891613458442291309.correct : P3891613458442291309.Spec := by
  intro n
  simp only [A178058, Nat.add_sub_cancel, A178058.P3891613458442291309.a, A178058.P1320891361642740791.a, A005811, A005811.P8696411420205566785.a, A088748, A088748.P405959534239069085.a, A000120, A000120.P2816527436160941581.a, A003188, A003188.P10544524695508875182.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178058

/-! ## A178058.P7326720485471441886

`A005811(C(∑[char[∑[n+1]]], n-C(∑[char[∑[n]]], 2)))`
-/

namespace A178058.P7326720485471441886
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat)

end

end A178058.P7326720485471441886

namespace A178058

/-- `A005811(C(∑[char[∑[n+1]]], n-C(∑[char[∑[n]]], 2)))` -/
def P7326720485471441886.Spec : Prop :=
  ∀ n, P7326720485471441886.a n = A178058 n

end A178058

/-! ## A178058.P12809671071552463488

`A005811(A007318(n))`
-/

namespace A178058.P12809671071552463488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A007318 n).toNat

end

end A178058.P12809671071552463488

namespace A178058

/-- `A005811(A007318(n))` -/
def P12809671071552463488.Spec : Prop :=
  ∀ n, P12809671071552463488.a n = A178058 n

end A178058

/-! ## A178058.P18201273525161648974

`A000120(A143261(n))`
-/

namespace A178058.P18201273525161648974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A143261 n).toNat

end

end A178058.P18201273525161648974

namespace A178058

/-- `A000120(A143261(n))` -/
def P18201273525161648974.Spec : Prop :=
  ∀ n, P18201273525161648974.a n = A178058 n

end A178058

/-! ## A178058.P16829308962284335221

`A005811(A152236(n))`
-/

namespace A178058.P16829308962284335221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A152236 n).toNat

end

end A178058.P16829308962284335221

namespace A178058

/-- `A005811(A152236(n))` -/
def P16829308962284335221.Spec : Prop :=
  ∀ n, P16829308962284335221.a n = A178058 n

end A178058

/-! ## A178058.P18215789201305525599

`A005811(abs(A108086(n)))`
-/

namespace A178058.P18215789201305525599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 |A108086 n|.toNat

end

end A178058.P18215789201305525599

namespace A178058

/-- `A005811(abs(A108086(n)))` -/
def P18215789201305525599.Spec : Prop :=
  ∀ n, P18215789201305525599.a n = A178058 n

end A178058

/-! ## A178058.P15529970348652916940

`A005811(abs(A117440(n)))`
-/

namespace A178058.P15529970348652916940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 |A117440 n|.toNat

end

end A178058.P15529970348652916940

namespace A178058

/-- `A005811(abs(A117440(n)))` -/
def P15529970348652916940.Spec : Prop :=
  ∀ n, P15529970348652916940.a n = A178058 n

end A178058

/-! ## A178058.P17002610446577955582

`A000120(A143214(n+1))`
-/

namespace A178058.P17002610446577955582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A143214 (n + 1)).toNat

end

end A178058.P17002610446577955582

namespace A178058

/-- `A000120(A143214(n+1))` -/
def P17002610446577955582.Spec : Prop :=
  ∀ n, P17002610446577955582.a n = A178058 n

end A178058

/-! ## A178058.P16806194314965987304

`dr(A014550(abs(1-A007318(n))+1))`
-/

namespace A178058.P16806194314965987304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014550 (|1 - A007318 n| + 1).toNat)

end

end A178058.P16806194314965987304

namespace A178058

/-- `dr(A014550(abs(1-A007318(n))+1))` -/
def P16806194314965987304.Spec : Prop :=
  ∀ n, (P16806194314965987304.a n : ℤ) = A178058 n

end A178058

/-!
# A178059: Triangle read by rows: Number of 1's in the Gray code of Eulerian(n,m), 1<=m<=n.

The programs for A178059, the canonical program `A178059.P15288762009250662244` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178059 has offset 1).

The definition of A178059 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008292, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178059.P15288762009250662244

`A005811(A008292(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A178059

/-- `A005811(A008292(n+1))` -/
def P15288762009250662244.Spec : Prop :=
  ∀ n, P15288762009250662244.a n = A178059 (n + 1)

theorem P15288762009250662244.correct : P15288762009250662244.Spec := by
  intro n
  simp only [A178059, Nat.add_sub_cancel]

end A178059

/-! ## A178059.P3646465024038952768

`A088748(A123125(comp[∑[n]]))-1`
-/

namespace A178059.P3646465024038952768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat - 1

end

end A178059.P3646465024038952768

namespace A178059

/-- `A088748(A123125(comp[∑[n]]))-1` -/
def P3646465024038952768.Spec : Prop :=
  ∀ n, P3646465024038952768.a n = A178059 (n + 1)

end A178059

/-! ## A178059.P6115480293577323751

`A088748(ceil(A176200(n)/2))-1`
-/

namespace A178059.P6115480293577323751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 ⌈(A176200 n : ℚ) / 2⌉.toNat - 1

end

end A178059.P6115480293577323751

namespace A178059

/-- `A088748(ceil(A176200(n)/2))-1` -/
def P6115480293577323751.Spec : Prop :=
  ∀ n, P6115480293577323751.a n = A178059 (n + 1)

end A178059

/-! ## A178059.P2180765308657232505

`∑{e}[A278219(ceil(A176200(n)/2)), #]`
-/

namespace A178059.P2180765308657232505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 ⌈(A176200 n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A178059.P2180765308657232505

namespace A178059

/-- `∑{e}[A278219(ceil(A176200(n)/2)), #]` -/
def P2180765308657232505.Spec : Prop :=
  ∀ n, (P2180765308657232505.a n : ℤ) = A178059 (n + 1)

end A178059

/-! ## A178059.P15038510530509541142

`A088748((A176204(n)+3)/4)-1`
-/

namespace A178059.P15038510530509541142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (SequenceMachineLib.roundAway ((A176204 n + 3 : ℚ) / 4)).toNat - 1

end

end A178059.P15038510530509541142

namespace A178059

/-- `A088748((A176204(n)+3)/4)-1` -/
def P15038510530509541142.Spec : Prop :=
  ∀ n, P15038510530509541142.a n = A178059 (n + 1)

end A178059

/-!
# A178061: Number of distinct cycles without repeated edges on the multigraph consisting of two vertices joined by n edges.

The programs for A178061, there is no canonical definition to state claims against.
-/

/-! ## A178061.P17690075188558112487

`(∑[n]+A263102(n)-n)/2`
-/

namespace A178061.P17690075188558112487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A263102 n - (n : ℤ)) : ℚ) / 2

end

end A178061.P17690075188558112487

/-! ## A178061.P14096239971061103198

`(A263102(n)+A161680(n))/2`
-/

namespace A178061.P14096239971061103198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263102 n + A161680 n : ℚ) / 2

end

end A178061.P14096239971061103198

/-! ## A178061.P8727803141927727103

`round((A000217(n)+A263102(n)-n)/2)`
-/

namespace A178061.P8727803141927727103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000217 n + (A263102 n - (n : ℤ)) : ℚ) / 2)

end

end A178061.P8727803141927727103

/-! ## A178061.P6703512106859633243

`(A000124(n)+A263102(n)-n-1)/2`
-/

namespace A178061.P6703512106859633243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 n + (A263102 n - (n : ℤ)) - 1 : ℚ) / 2

end

end A178061.P6703512106859633243

/-! ## A178061.P8548537019334250187

`(A263102(n)+A161680(n))*A000005(A059308(n+1))^-1`
-/

namespace A178061.P8548537019334250187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263102 n + A161680 n : ℚ) * (A000005 (A059308 (n + 1)).toNat : ℚ) ^ (-1 : ℤ)

end

end A178061.P8548537019334250187

/-!
# A178062: Triangle t(n,m) = -A000396(n)+A000396(m)+A000396(n-m) read by rows.

The programs for A178062, there is no canonical definition to state claims against.
-/

/-! ## A178062.P13102139723601009133

`A370904(and(A142459(n+1), A329420(n+4)))`
-/

namespace A178062.P13102139723601009133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370904 (Int.land (A142459 (n + 1)) (A329420 (n + 4))).toNat

end

end A178062.P13102139723601009133

/-! ## A178062.P12603960195768662734

`A232774(A241090(2*(n+1)))%A056450(n+2)`
-/

namespace A178062.P12603960195768662734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232774 (A241090 (2 * (n + 1))).toNat) (A056450 (n + 2))

end

end A178062.P12603960195768662734

/-!
# A178063: Partial sums of A007464.

The programs for A178063, there is no canonical definition to state claims against.
-/

/-! ## A178063.P10135026113024973310

`∑[A007464(n)]`
-/

namespace A178063.P10135026113024973310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178063.P10135026113024973310

/-! ## A178063.P15438820856940102170

`A007464(A000038(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A178063.P15438820856940102170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007464 (A000038 n + (n : ℤ)).toNat + a (n - 1)

end

end A178063.P15438820856940102170

/-! ## A178063.P3164315094540317667

`a(n-1)+A007464(n)/A001222(A006005(n+1))` with `a(0)=1`
-/

namespace A178063.P3164315094540317667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A007464 n : ℚ) / (A001222 (A006005 (n + 1)).toNat : ℚ)

end

end A178063.P3164315094540317667

/-! ## A178063.P13086558914430743671

`a(n-1)+A007464(n)%A000041(n+5)` with `a(0)=1`
-/

namespace A178063.P13086558914430743671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A007464 n) (A000041 (n + 5))

end

end A178063.P13086558914430743671

/-! ## A178063.P408241641203550171

`A304481(a(n-1))+A007464(n)` with `a(0)=1`
-/

namespace A178063.P408241641203550171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304481 (a (n - 1)).toNat + A007464 n

end

end A178063.P408241641203550171

/-! ## A178063.P9779954246792194067

`a(n-1)+A063667(A091580(n))+A007464(n)` with `a(0)=1`
-/

namespace A178063.P9779954246792194067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A063667 (A091580 n).toNat + A007464 n)

end

end A178063.P9779954246792194067

/-!
# A178064: Number of 0's in binary representation of n-th semiprime.

The programs for A178064, the canonical program `A178064.P10920969294093378439` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178064 has offset 1).

The definition of A178064 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178064.P10920969294093378439

`A023416(A001358(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A178064

/-- `A023416(A001358(n+1))` -/
def P10920969294093378439.Spec : Prop :=
  ∀ n, P10920969294093378439.a n = A178064 (n + 1)

theorem P10920969294093378439.correct : P10920969294093378439.Spec := by
  intro n
  simp only [A178064, Nat.add_sub_cancel]

end A178064

/-! ## A178064.P14188601604740913430

`A080791(eq[2, ∑{e}[n, #]])`
-/

namespace A178064.P14188601604740913430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A178064.P14188601604740913430

namespace A178064

/-- `A080791(eq[2, ∑{e}[n, #]])` -/
def P14188601604740913430.Spec : Prop :=
  ∀ n, P14188601604740913430.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P18095676823311134433

`A080791(A001358(1+n))`
-/

namespace A178064.P18095676823311134433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A001358 (1 + n)).toNat

end

end A178064.P18095676823311134433

namespace A178064

/-- `A080791(A001358(1+n))` -/
def P18095676823311134433.Spec : Prop :=
  ∀ n, P18095676823311134433.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P9934727921057374552

`A023416(A176540(n+2))`
-/

namespace A178064.P9934727921057374552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A176540 (n + 2)).toNat

end

end A178064.P9934727921057374552

namespace A178064

/-- `A023416(A176540(n+2))` -/
def P9934727921057374552.Spec : Prop :=
  ∀ n, P9934727921057374552.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P13381222830710119769

`A023416(lt[1, A105700(n)])`
-/

namespace A178064.P13381222830710119769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A178064.P13381222830710119769

namespace A178064

/-- `A023416(lt[1, A105700(n)])` -/
def P13381222830710119769.Spec : Prop :=
  ∀ n, P13381222830710119769.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P16626883968948726155

`A023416(eq[2, A105700(n)])`
-/

namespace A178064.P16626883968948726155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178064.P16626883968948726155

namespace A178064

/-- `A023416(eq[2, A105700(n)])` -/
def P16626883968948726155.Spec : Prop :=
  ∀ n, P16626883968948726155.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P3455376287260424777

`A080791(lt[1, A105700(n)])`
-/

namespace A178064.P3455376287260424777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A178064.P3455376287260424777

namespace A178064

/-- `A080791(lt[1, A105700(n)])` -/
def P3455376287260424777.Spec : Prop :=
  ∀ n, P3455376287260424777.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P7590582346401306034

`A080791(eq[2, A105700(n)])`
-/

namespace A178064.P7590582346401306034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178064.P7590582346401306034

namespace A178064

/-- `A080791(eq[2, A105700(n)])` -/
def P7590582346401306034.Spec : Prop :=
  ∀ n, P7590582346401306034.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P13336894961943345280

`A023416(eq[2, A226378(n)])`
-/

namespace A178064.P13336894961943345280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178064.P13336894961943345280

namespace A178064

/-- `A023416(eq[2, A226378(n)])` -/
def P13336894961943345280.Spec : Prop :=
  ∀ n, P13336894961943345280.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P7860536844690386731

`A080791(eq[2, A226378(n)])`
-/

namespace A178064.P7860536844690386731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178064.P7860536844690386731

namespace A178064

/-- `A080791(eq[2, A226378(n)])` -/
def P7860536844690386731.Spec : Prop :=
  ∀ n, P7860536844690386731.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P12488370696169022772

`A023416(eq[2, A284289(n)])`
-/

namespace A178064.P12488370696169022772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178064.P12488370696169022772

namespace A178064

/-- `A023416(eq[2, A284289(n)])` -/
def P12488370696169022772.Spec : Prop :=
  ∀ n, P12488370696169022772.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P13424854317452593294

`A080791(eq[2, A284289(n)])`
-/

namespace A178064.P13424854317452593294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178064.P13424854317452593294

namespace A178064

/-- `A080791(eq[2, A284289(n)])` -/
def P13424854317452593294.Spec : Prop :=
  ∀ n, P13424854317452593294.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P9092810614171360610

`A023416(sqrt(A074985(n+1)))`
-/

namespace A178064.P9092810614171360610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A178064.P9092810614171360610

namespace A178064

/-- `A023416(sqrt(A074985(n+1)))` -/
def P9092810614171360610.Spec : Prop :=
  ∀ n, P9092810614171360610.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P17030426912017026187

`A023416(A088707(n+1)-1)`
-/

namespace A178064.P17030426912017026187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A088707 (n + 1) - 1).toNat

end

end A178064.P17030426912017026187

namespace A178064

/-- `A023416(A088707(n+1)-1)` -/
def P17030426912017026187.Spec : Prop :=
  ∀ n, P17030426912017026187.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P2418951759697859717

`A080791(A088707(n+1)-1)`
-/

namespace A178064.P2418951759697859717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A088707 (n + 1) - 1).toNat

end

end A178064.P2418951759697859717

namespace A178064

/-- `A080791(A088707(n+1)-1)` -/
def P2418951759697859717.Spec : Prop :=
  ∀ n, P2418951759697859717.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P16389833644711401656

`A023416(A075818(n+1)/2)`
-/

namespace A178064.P16389833644711401656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A178064.P16389833644711401656

namespace A178064

/-- `A023416(A075818(n+1)/2)` -/
def P16389833644711401656.Spec : Prop :=
  ∀ n, P16389833644711401656.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P15571518024319988012

`A080791(eq[1, A252736(n+1)]+1)`
-/

namespace A178064.P15571518024319988012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178064.P15571518024319988012

namespace A178064

/-- `A080791(eq[1, A252736(n+1)]+1)` -/
def P15571518024319988012.Spec : Prop :=
  ∀ n, P15571518024319988012.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P7434819739552667500

`A023416(eq[2, A001222(n+1)]+1)`
-/

namespace A178064.P7434819739552667500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178064.P7434819739552667500

namespace A178064

/-- `A023416(eq[2, A001222(n+1)]+1)` -/
def P7434819739552667500.Spec : Prop :=
  ∀ n, P7434819739552667500.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P4309970208309768137

`A080791(eq[2, A001222(n+1)]+1)`
-/

namespace A178064.P4309970208309768137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178064.P4309970208309768137

namespace A178064

/-- `A080791(eq[2, A001222(n+1)]+1)` -/
def P4309970208309768137.Spec : Prop :=
  ∀ n, P4309970208309768137.a n = A178064 (n + 1)

end A178064

/-! ## A178064.P7631526266620651406

`A080791(eq[9, A165824(n+1)]+1)`
-/

namespace A178064.P7631526266620651406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178064.P7631526266620651406

namespace A178064

/-- `A080791(eq[9, A165824(n+1)]+1)` -/
def P7631526266620651406.Spec : Prop :=
  ∀ n, P7631526266620651406.a n = A178064 (n + 1)

end A178064

/-!
# A178065: Number of 1's in binary representation of n-th semiprime.

The programs for A178065, the canonical program `A178065.P9534081807058897111` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178065 has offset 1).

The definition of A178065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178065.P3589079697729873562

`∑{digits}[A122466(n+1), #]`
-/

namespace A178065.P3589079697729873562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A178065.P3589079697729873562

namespace A178065

/-- `∑{digits}[A122466(n+1), #]` -/
def P3589079697729873562.Spec : Prop :=
  ∀ n, (P3589079697729873562.a n : ℤ) = A178065 (n + 1)

end A178065

/-! ## A178065.P9534081807058897111

`val(A001316(A001358(n+1)), 2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A178065

/-- `val(A001316(A001358(n+1)), 2)` -/
def P9534081807058897111.Spec : Prop :=
  ∀ n, (P9534081807058897111.a n : ℤ) = A178065 (n + 1)

theorem P9534081807058897111.correct : P9534081807058897111.Spec := by
  intro n
  simp only [A178065, Nat.add_sub_cancel]

end A178065

/-! ## A178065.P11281560915313583892

`val(A001316(eq[2, A008481(n+1)]+1), 2)`
-/

namespace A178065.P11281560915313583892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)).toNat 2

end

end A178065.P11281560915313583892

namespace A178065

/-- `val(A001316(eq[2, A008481(n+1)]+1), 2)` -/
def P11281560915313583892.Spec : Prop :=
  ∀ n, (P11281560915313583892.a n : ℤ) = A178065 (n + 1)

end A178065

/-! ## A178065.P4357750368082070049

`A356876(A176193(1+n))`
-/

namespace A178065.P4357750368082070049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356876 (A176193 (1 + n)).toNat

end

end A178065.P4357750368082070049

namespace A178065

/-- `A356876(A176193(1+n))` -/
def P4357750368082070049.Spec : Prop :=
  ∀ n, P4357750368082070049.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P8109958736068304974

`A000120(Δ[A110208(n)])`
-/

namespace A178065.P8109958736068304974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (n + 1) - f1 n).toNat

end

end A178065.P8109958736068304974

namespace A178065

/-- `A000120(Δ[A110208(n)])` -/
def P8109958736068304974.Spec : Prop :=
  ∀ n, P8109958736068304974.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P11233840776637742361

`A000120(A001358(1+n))`
-/

namespace A178065.P11233840776637742361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001358 (1 + n)).toNat

end

end A178065.P11233840776637742361

namespace A178065

/-- `A000120(A001358(1+n))` -/
def P11233840776637742361.Spec : Prop :=
  ∀ n, P11233840776637742361.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P10232759823549190971

`A000120(A176540(2+n))`
-/

namespace A178065.P10232759823549190971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A176540 (2 + n)).toNat

end

end A178065.P10232759823549190971

namespace A178065

/-- `A000120(A176540(2+n))` -/
def P10232759823549190971.Spec : Prop :=
  ∀ n, P10232759823549190971.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P541419311310269258

`A000120(lt[1, A105700(n)])`
-/

namespace A178065.P541419311310269258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A178065.P541419311310269258

namespace A178065

/-- `A000120(lt[1, A105700(n)])` -/
def P541419311310269258.Spec : Prop :=
  ∀ n, P541419311310269258.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P2438036045114491809

`A000120(eq[2, A105700(n)])`
-/

namespace A178065.P2438036045114491809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178065.P2438036045114491809

namespace A178065

/-- `A000120(eq[2, A105700(n)])` -/
def P2438036045114491809.Spec : Prop :=
  ∀ n, P2438036045114491809.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P11475669155082459014

`A000120(eq[2, A226378(n)])`
-/

namespace A178065.P11475669155082459014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178065.P11475669155082459014

namespace A178065

/-- `A000120(eq[2, A226378(n)])` -/
def P11475669155082459014.Spec : Prop :=
  ∀ n, P11475669155082459014.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P13018079446811065528

`A000120(eq[2, A284289(n)])`
-/

namespace A178065.P13018079446811065528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178065.P13018079446811065528

namespace A178065

/-- `A000120(eq[2, A284289(n)])` -/
def P13018079446811065528.Spec : Prop :=
  ∀ n, P13018079446811065528.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P2402308384992130350

`A000120(sqrt(A074985(n+1)))`
-/

namespace A178065.P2402308384992130350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A178065.P2402308384992130350

namespace A178065

/-- `A000120(sqrt(A074985(n+1)))` -/
def P2402308384992130350.Spec : Prop :=
  ∀ n, P2402308384992130350.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P1503290086085284487

`A000120(A088707(n+1)-1)`
-/

namespace A178065.P1503290086085284487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A088707 (n + 1) - 1).toNat

end

end A178065.P1503290086085284487

namespace A178065

/-- `A000120(A088707(n+1)-1)` -/
def P1503290086085284487.Spec : Prop :=
  ∀ n, P1503290086085284487.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P6125964551524756872

`A000120(A129767(2*(n+1)))`
-/

namespace A178065.P6125964551524756872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A129767 (2 * (n + 1))).toNat

end

end A178065.P6125964551524756872

namespace A178065

/-- `A000120(A129767(2*(n+1)))` -/
def P6125964551524756872.Spec : Prop :=
  ∀ n, P6125964551524756872.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P10243605158779276544

`A000120(A075818(n+1)/2)`
-/

namespace A178065.P10243605158779276544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A178065.P10243605158779276544

namespace A178065

/-- `A000120(A075818(n+1)/2)` -/
def P10243605158779276544.Spec : Prop :=
  ∀ n, P10243605158779276544.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P2738293074998134185

`A000120(eq[1, A252736(n+1)]+1)`
-/

namespace A178065.P2738293074998134185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178065.P2738293074998134185

namespace A178065

/-- `A000120(eq[1, A252736(n+1)]+1)` -/
def P2738293074998134185.Spec : Prop :=
  ∀ n, P2738293074998134185.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P5154869585503932093

`A000120(eq[2, A001055(n+1)]+1)`
-/

namespace A178065.P5154869585503932093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178065.P5154869585503932093

namespace A178065

/-- `A000120(eq[2, A001055(n+1)]+1)` -/
def P5154869585503932093.Spec : Prop :=
  ∀ n, P5154869585503932093.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P11965021339518980412

`A000120(eq[2, A001222(n+1)]+1)`
-/

namespace A178065.P11965021339518980412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178065.P11965021339518980412

namespace A178065

/-- `A000120(eq[2, A001222(n+1)]+1)` -/
def P11965021339518980412.Spec : Prop :=
  ∀ n, P11965021339518980412.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P12578157750219532486

`A000120(eq[2, A086436(n+1)]+1)`
-/

namespace A178065.P12578157750219532486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178065.P12578157750219532486

namespace A178065

/-- `A000120(eq[2, A086436(n+1)]+1)` -/
def P12578157750219532486.Spec : Prop :=
  ∀ n, P12578157750219532486.a n = A178065 (n + 1)

end A178065

/-! ## A178065.P16847754149577657248

`A000120(record[n/a(A001222(n))])` with `a(0)=4, a(1)=2`
-/

namespace A178065.P16847754149577657248
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A178065.P16847754149577657248

namespace A178065

/-- `A000120(record[n/a(A001222(n))])` -/
def P16847754149577657248.Spec : Prop :=
  ∀ n, P16847754149577657248.a n = A178065 (n + 1)

end A178065

/-!
# A178067: Triangle read by rows: T(n,k) = (n^2 + k)*(n - k + 1)/2.

The programs for A178067, the canonical program `A178067.P9341501526283460798` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178067 has offset 1).

The definition of A178067 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A178067.anchor (n : ℕ) : (A178067 (n + 1) : ℚ) = (((SequenceMachineLib.triRow n + 1) ^ 2 + (SequenceMachineLib.triCol n + 1) : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1) : ℚ) / 2` in `Proof.A178.A178067`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178067.P9341501526283460798

`((row(n)+1)²+col(n)+1)*(row(n)+1-(col(n)+1)+1)/2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178067

/-- `((row(n)+1)²+col(n)+1)*(row(n)+1-(col(n)+1)+1)/2` -/
def P9341501526283460798.Spec : Prop :=
  ∀ n, P9341501526283460798.a n = (A178067 (n + 1) : ℚ)

end A178067

/-! ## A178067.P4640205406675433675

`C(row(n)-col(n)+2+n, 2)-∑[n]`
-/

namespace A178067.P4640205406675433675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2 + (n : ℤ)).toNat 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178067.P4640205406675433675

namespace A178067

/-- `C(row(n)-col(n)+2+n, 2)-∑[n]` -/
def P4640205406675433675.Spec : Prop :=
  ∀ n, P4640205406675433675.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P3291338074159449779

`A000217(C(row(n)+2, 2))-∑[n]`
-/

namespace A178067.P3291338074159449779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.choose (SequenceMachineLib.triRow n + 2) 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178067.P3291338074159449779

namespace A178067

/-- `A000217(C(row(n)+2, 2))-∑[n]` -/
def P3291338074159449779.Spec : Prop :=
  ∀ n, P3291338074159449779.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P10564037561444094341

`A000217(A127739(1+n))-∑[n]`
-/

namespace A178067.P10564037561444094341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A127739 (1 + n)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178067.P10564037561444094341

namespace A178067

/-- `A000217(A127739(1+n))-∑[n]` -/
def P10564037561444094341.Spec : Prop :=
  ∀ n, P10564037561444094341.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P11515302086370506458

`A002817(row(n)+1)-A000217(n)`
-/

namespace A178067.P11515302086370506458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (SequenceMachineLib.triRow n + 1) - A000217 n

end

end A178067.P11515302086370506458

namespace A178067

/-- `A002817(row(n)+1)-A000217(n)` -/
def P11515302086370506458.Spec : Prop :=
  ∀ n, P11515302086370506458.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P11593963398579971836

`A000217(A004736(n+1)+n)-∑[n]`
-/

namespace A178067.P11593963398579971836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004736 (n + 1) + (n : ℤ)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178067.P11593963398579971836

namespace A178067

/-- `A000217(A004736(n+1)+n)-∑[n]` -/
def P11593963398579971836.Spec : Prop :=
  ∀ n, P11593963398579971836.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P12931612000021787005

`A000217(C(2+row(n), 2))-A000217(n)`
-/

namespace A178067.P12931612000021787005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.choose (2 + SequenceMachineLib.triRow n) 2) - A000217 n

end

end A178067.P12931612000021787005

namespace A178067

/-- `A000217(C(2+row(n), 2))-A000217(n)` -/
def P12931612000021787005.Spec : Prop :=
  ∀ n, P12931612000021787005.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P803983819582013287

`A002817(A002024(n+1))-A000217(n)`
-/

namespace A178067.P803983819582013287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (A002024 (n + 1)).toNat - A000217 n

end

end A178067.P803983819582013287

namespace A178067

/-- `A002817(A002024(n+1))-A000217(n)` -/
def P803983819582013287.Spec : Prop :=
  ∀ n, P803983819582013287.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P18150523997668486834

`A000217(A025581(n)+1+n)-A000217(n)`
-/

namespace A178067.P18150523997668486834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A025581 n + 1 + (n : ℤ)).toNat - A000217 n

end

end A178067.P18150523997668486834

namespace A178067

/-- `A000217(A025581(n)+1+n)-A000217(n)` -/
def P18150523997668486834.Spec : Prop :=
  ∀ n, P18150523997668486834.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P433906295889364865

`A000217(A064801(n+1)-n)-A000217(n)`
-/

namespace A178067.P433906295889364865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A064801 (n + 1) - (n : ℤ)).toNat - A000217 n

end

end A178067.P433906295889364865

namespace A178067

/-- `A000217(A064801(n+1)-n)-A000217(n)` -/
def P433906295889364865.Spec : Prop :=
  ∀ n, P433906295889364865.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P18339440109192158016

`A000217(A025581(n))+(n+1)*A004736(n+1)`
-/

namespace A178067.P18339440109192158016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A025581 n).toNat + (n + 1 : ℤ) * A004736 (n + 1)

end

end A178067.P18339440109192158016

namespace A178067

/-- `A000217(A025581(n))+(n+1)*A004736(n+1)` -/
def P18339440109192158016.Spec : Prop :=
  ∀ n, P18339440109192158016.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P9228262412254715596

`A000217(A038722(n+1)+A002262(n))-A000217(n)`
-/

namespace A178067.P9228262412254715596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A038722 (n + 1) + A002262 n).toNat - A000217 n

end

end A178067.P9228262412254715596

namespace A178067

/-- `A000217(A038722(n+1)+A002262(n))-A000217(n)` -/
def P9228262412254715596.Spec : Prop :=
  ∀ n, P9228262412254715596.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P4362378699937700965

`A000217(A057944(n)+A002024(n+1))-A000217(n)`
-/

namespace A178067.P4362378699937700965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A057944 n + A002024 (n + 1)).toNat - A000217 n

end

end A178067.P4362378699937700965

namespace A178067

/-- `A000217(A057944(n)+A002024(n+1))-A000217(n)` -/
def P4362378699937700965.Spec : Prop :=
  ∀ n, P4362378699937700965.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P1912691796890829131

`A000217(A061579(n)+A002260(n+1))-A000217(n)`
-/

namespace A178067.P1912691796890829131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A061579 n + A002260 (n + 1)).toNat - A000217 n

end

end A178067.P1912691796890829131

namespace A178067

/-- `A000217(A061579(n)+A002260(n+1))-A000217(n)` -/
def P1912691796890829131.Spec : Prop :=
  ∀ n, P1912691796890829131.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P997675031652283215

`A000217(A007401(n+1)-A002262(n))-A000217(n)`
-/

namespace A178067.P997675031652283215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007401 (n + 1) - A002262 n).toNat - A000217 n

end

end A178067.P997675031652283215

namespace A178067

/-- `A000217(A007401(n+1)-A002262(n))-A000217(n)` -/
def P997675031652283215.Spec : Prop :=
  ∀ n, P997675031652283215.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P13469481264679782076

`A000217(A014132(n+1)-A002260(n+1))-A000217(n)`
-/

namespace A178067.P13469481264679782076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A014132 (n + 1) - A002260 (n + 1)).toNat - A000217 n

end

end A178067.P13469481264679782076

namespace A178067

/-- `A000217(A014132(n+1)-A002260(n+1))-A000217(n)` -/
def P13469481264679782076.Spec : Prop :=
  ∀ n, P13469481264679782076.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P8839407118952147957

`A000217(A127777(n+1)/A002260(n+1))-A000217(n)`
-/

namespace A178067.P8839407118952147957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A127777 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ))).toNat - A000217 n

end

end A178067.P8839407118952147957

namespace A178067

/-- `A000217(A127777(n+1)/A002260(n+1))-A000217(n)` -/
def P8839407118952147957.Spec : Prop :=
  ∀ n, P8839407118952147957.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P541358662106429205

`A000124(C(2+row(n), 2))-A000124(n)`
-/

namespace A178067.P541358662106429205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (Nat.choose (2 + SequenceMachineLib.triRow n) 2) - A000124 n

end

end A178067.P541358662106429205

namespace A178067

/-- `A000124(C(2+row(n), 2))-A000124(n)` -/
def P541358662106429205.Spec : Prop :=
  ∀ n, P541358662106429205.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P424761017069846547

`A000124(A127739(n+1))-A000124(n)`
-/

namespace A178067.P424761017069846547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A127739 (n + 1)).toNat - A000124 n

end

end A178067.P424761017069846547

namespace A178067

/-- `A000124(A127739(n+1))-A000124(n)` -/
def P424761017069846547.Spec : Prop :=
  ∀ n, P424761017069846547.a n = A178067 (n + 1)

end A178067

/-! ## A178067.P12458798409029459750

`(A002378(A127739(n+1))-A002378(n))/2`
-/

namespace A178067.P12458798409029459750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A127739 (n + 1)).toNat - A002378 n : ℚ) / 2

end

end A178067.P12458798409029459750

namespace A178067

/-- `(A002378(A127739(n+1))-A002378(n))/2` -/
def P12458798409029459750.Spec : Prop :=
  ∀ n, P12458798409029459750.a n = (A178067 (n + 1) : ℚ)

end A178067

/-!
# A178068: Primes p such that 2p+1, 3p+2 and 5p-2 are also primes.

The programs for A178068, there is no canonical definition to state claims against.
-/

/-! ## A178068.P13307227512780469500

`∩[A067256(n+1), A158318(n+1)]`
-/

namespace A178068.P13307227512780469500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178068.P13307227512780469500

/-! ## A178068.P8373587770680294038

`∩[2*A124486(n+1)-1, A158318(n+1)]`
-/

namespace A178068.P8373587770680294038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124486 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178068.P8373587770680294038

/-! ## A178068.P7650791254492115683

`∩[A024896(n+1), A067256(n+1)]`
-/

namespace A178068.P7650791254492115683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178068.P7650791254492115683

/-!
# A178069: a(n) = 12345679 * A001651(n).

The programs for A178069, there is no canonical definition to state claims against.
-/

/-! ## A178069.P6911975149134568708

`A070189(A001651(n+1))`
-/

namespace A178069.P6911975149134568708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070189 (A001651 (n + 1)).toNat

end

end A178069.P6911975149134568708

/-! ## A178069.P16764891272659254944

`A070189(A008619(n))+A070189(n)`
-/

namespace A178069.P16764891272659254944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070189 (A008619 n).toNat + A070189 n

end

end A178069.P16764891272659254944

/-! ## A178069.P8593807925238903766

`A172525(record[A038502(n+1)])/9`
-/

namespace A178069.P8593807925238903766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 9

end

end A178069.P8593807925238903766

/-! ## A178069.P15665363735006337127

`A070189(comp[A008585(n)])`
-/

namespace A178069.P15665363735006337127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070189 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A178069.P15665363735006337127

/-! ## A178069.P12998501054790983696

`A070189(A032766(n)+1)`
-/

namespace A178069.P12998501054790983696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070189 (A032766 n + 1).toNat

end

end A178069.P12998501054790983696

/-! ## A178069.P12321756319508943351

`A070189(A008619(n)+n)`
-/

namespace A178069.P12321756319508943351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070189 (A008619 n + (n : ℤ)).toNat

end

end A178069.P12321756319508943351

/-! ## A178069.P7298394430499839794

`A070189(A004526(n)+1+n)`
-/

namespace A178069.P7298394430499839794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070189 (A004526 n + 1 + (n : ℤ)).toNat

end

end A178069.P7298394430499839794

/-! ## A178069.P5059665682712375727

`A070189(A008619(3*n))`
-/

namespace A178069.P5059665682712375727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070189 (A008619 (3 * n)).toNat

end

end A178069.P5059665682712375727

/-!
# A178070: Primes dividing repunits R(10^n) for some n.

The programs for A178070, there is no canonical definition to state claims against.
-/

/-! ## A178070.P16261208234332543227

`A278835(3+n)`
-/

namespace A178070.P16261208234332543227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278835 (3 + n)

end

end A178070.P16261208234332543227

/-! ## A178070.P6936959151171685009

`record[A278835(A185585(n))]`
-/

namespace A178070.P6936959151171685009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278835 (A185585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178070.P6936959151171685009

/-! ## A178070.P3282040094511172431

`record[A278835(A052938(xor(1, n)))]`
-/

namespace A178070.P3282040094511172431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278835 (A052938 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178070.P3282040094511172431

/-! ## A178070.P8308847590737652798

`record[A278835(A052938(A008624(n)))]`
-/

namespace A178070.P8308847590737652798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278835 (A052938 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178070.P8308847590737652798

/-! ## A178070.P13955249065216412335

`record[A278835(A052938(A034887(n)))]`
-/

namespace A178070.P13955249065216412335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278835 (A052938 (A034887 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178070.P13955249065216412335

/-! ## A178070.P14667240422479704008

`record[A278835(A052938(A052938(n)))]`
-/

namespace A178070.P14667240422479704008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278835 (A052938 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178070.P14667240422479704008

/-! ## A178070.P15346587866589907409

`A278835(A052938(Δ[n²]))%A001703(n)²`
-/

namespace A178070.P15346587866589907409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278835 (A052938 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat) (A001703 n ^ 2)

end

end A178070.P15346587866589907409

/-! ## A178070.P9652639485672807156

`A000034(2*n)*A278835(A052938(Δ[n²]))`
-/

namespace A178070.P9652639485672807156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A278835 (A052938 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A178070.P9652639485672807156

/-! ## A178070.P2340920280546077411

`(A000041(n)%2)!*A278835(A052938(Δ[n²]))`
-/

namespace A178070.P2340920280546077411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A278835 (A052938 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A178070.P2340920280546077411

/-!
# A178071: Numbers k such that exactly one d, 2 <= d <= k/2, exists which divides binomial(k-d-1, d-1) and is not coprime to k.

The programs for A178071, there is no canonical definition to state claims against.
-/

/-! ## A178071.P13683551316190238822

`eq[1, A178101(n+1)]+1`
-/

namespace A178071.P13683551316190238822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A178071.P13683551316190238822

/-! ## A178071.P2672807551120852542

`eq[1, A178101(A028310(n))]`
-/

namespace A178071.P2672807551120852542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178071.P2672807551120852542

/-! ## A178071.P7578651191682827904

`A020725(eq[1, A178101(n+1)])`
-/

namespace A178071.P7578651191682827904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178071.P7578651191682827904

/-! ## A178071.P16686869426364425523

`A065475(eq[1, A178101(n+1)])`
-/

namespace A178071.P16686869426364425523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178071.P16686869426364425523

/-! ## A178071.P2570970645925508537

`eq[1, A159285(a(A178101(n)))]` with `a(0)=3, a(1)=0`
-/

namespace A178071.P2570970645925508537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f2 =>
  A159285 (f2 (A178101 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178071.P2570970645925508537

/-!
# A178073: Partial sums of sequence A177342.

The programs for A178073, the canonical program `A178073.P10066677840681365396` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178073 has offset 1).

The definition of A178073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178073.P4235235289145299353

`ogf((1+5x+x^2+x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A178073.P4235235289145299353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 1, 1] [1, -5, 10, -10, 5, -1] n

end

end A178073.P4235235289145299353

namespace A178073

/-- `ogf((1+5x+x^2+x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P4235235289145299353.Spec : Prop :=
  ∀ n, P4235235289145299353.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P1286152714854078545

`(n+1)*((n+1)^3+(n+1)²+2*(n+1)-1)/3`
-/

namespace A178073.P1286152714854078545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (((n + 1) ^ 3 + (n + 1) ^ 2 + 2 * (n + 1) : ℤ) - 1) : ℚ) / 3

end

end A178073.P1286152714854078545

namespace A178073

/-- `(n+1)*((n+1)^3+(n+1)²+2*(n+1)-1)/3` -/
def P1286152714854078545.Spec : Prop :=
  ∀ n, P1286152714854078545.a n = (A178073 (n + 1) : ℚ)

theorem P1286152714854078545.correct : P1286152714854078545.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A178073, Nat.add_sub_cancel, A178073.P1286152714854078545.a, A178073.P10066677840681365396.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A178073, Nat.add_sub_cancel, A178073.P1286152714854078545.a, A178073.P10066677840681365396.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A178073

/-! ## A178073.P10066677840681365396

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=10, a(2)=41, a(3)=116, a(4)=265`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178073

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10066677840681365396.Spec : Prop :=
  ∀ n, P10066677840681365396.a n = A178073 (n + 1)

theorem P10066677840681365396.correct : P10066677840681365396.Spec := by
  intro n
  simp only [A178073, Nat.add_sub_cancel]

end A178073

/-! ## A178073.P16181150233116030492

`∑[C(2*n+3, 3)-n²]`
-/

namespace A178073.P16181150233116030492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 3) 3 : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178073.P16181150233116030492

namespace A178073

/-- `∑[C(2*n+3, 3)-n²]` -/
def P16181150233116030492.Spec : Prop :=
  ∀ n, P16181150233116030492.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P2949160598377824602

`∑[∑[or(1, (2*n+1)²)]-n²]`
-/

namespace A178073.P2949160598377824602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((2 * n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178073.P2949160598377824602

namespace A178073

/-- `∑[∑[or(1, (2*n+1)²)]-n²]` -/
def P2949160598377824602.Spec : Prop :=
  ∀ n, P2949160598377824602.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P2413198416775341263

`∑[Δ[n^3]+C(Δ[n²], 3)+n]`
-/

namespace A178073.P2413198416775341263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (Nat.choose ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat 3 : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178073.P2413198416775341263

namespace A178073

/-- `∑[Δ[n^3]+C(Δ[n²], 3)+n]` -/
def P2413198416775341263.Spec : Prop :=
  ∀ n, P2413198416775341263.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P5805036502231962066

`(n+1)²+(n+2)*∑[lcm(n, n+1)]`
-/

namespace A178073.P5805036502231962066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + (n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178073.P5805036502231962066

namespace A178073

/-- `(n+1)²+(n+2)*∑[lcm(n, n+1)]` -/
def P5805036502231962066.Spec : Prop :=
  ∀ n, (P5805036502231962066.a n : ℤ) = A178073 (n + 1)

end A178073

/-! ## A178073.P1313795572220438731

`∑[∑[lcm(2*n+1, 2*n)+2]]-(n+1)`
-/

namespace A178073.P1313795572220438731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A178073.P1313795572220438731

namespace A178073

/-- `∑[∑[lcm(2*n+1, 2*n)+2]]-(n+1)` -/
def P1313795572220438731.Spec : Prop :=
  ∀ n, P1313795572220438731.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P12221784570086547211

`(n+2)*∑[a(n-1)+2*n]-(n+1)` with `a(0)=1`
-/

namespace A178073.P12221784570086547211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A178073.P12221784570086547211

namespace A178073

/-- `(n+2)*∑[a(n-1)+2*n]-(n+1)` -/
def P12221784570086547211.Spec : Prop :=
  ∀ n, P12221784570086547211.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P10645330486843709823

`∑[A177342(n+1)]`
-/

namespace A178073.P10645330486843709823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178073.P10645330486843709823

namespace A178073

/-- `∑[A177342(n+1)]` -/
def P10645330486843709823.Spec : Prop :=
  ∀ n, P10645330486843709823.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P15864804960128643874

`∑[A100178(n+1)+n]`
-/

namespace A178073.P15864804960128643874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100178 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178073.P15864804960128643874

namespace A178073

/-- `∑[A100178(n+1)+n]` -/
def P15864804960128643874.Spec : Prop :=
  ∀ n, P15864804960128643874.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P15125699953396131699

`(n+2)*A145069(n)+1`
-/

namespace A178073.P15125699953396131699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A145069 n + 1

end

end A178073.P15125699953396131699

namespace A178073

/-- `(n+2)*A145069(n)+1` -/
def P15125699953396131699.Spec : Prop :=
  ∀ n, P15125699953396131699.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P9557193612424940708

`2*A332697(n)+n+1`
-/

namespace A178073.P9557193612424940708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332697 n + (n + 1 : ℤ)

end

end A178073.P9557193612424940708

namespace A178073

/-- `2*A332697(n)+n+1` -/
def P9557193612424940708.Spec : Prop :=
  ∀ n, P9557193612424940708.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P14817154259084508148

`A006007(n)+∑[n+1]²`
-/

namespace A178073.P14817154259084508148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006007 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A178073.P14817154259084508148

namespace A178073

/-- `A006007(n)+∑[n+1]²` -/
def P14817154259084508148.Spec : Prop :=
  ∀ n, P14817154259084508148.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P4377209957160174979

`∑[A050533(n)+(n+1)²]`
-/

namespace A178073.P4377209957160174979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050533 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178073.P4377209957160174979

namespace A178073

/-- `∑[A050533(n)+(n+1)²]` -/
def P4377209957160174979.Spec : Prop :=
  ∀ n, P4377209957160174979.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P3827565911048615735

`A006324(n+1)-∑[n²]`
-/

namespace A178073.P3827565911048615735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178073.P3827565911048615735

namespace A178073

/-- `A006324(n+1)-∑[n²]` -/
def P3827565911048615735.Spec : Prop :=
  ∀ n, P3827565911048615735.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P15215434869131336540

`(n+2)*A167875(n)-(n+1)`
-/

namespace A178073.P15215434869131336540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A167875 n - (n + 1 : ℤ)

end

end A178073.P15215434869131336540

namespace A178073

/-- `(n+2)*A167875(n)-(n+1)` -/
def P15215434869131336540.Spec : Prop :=
  ∀ n, P15215434869131336540.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P1071394910754663644

`∑[A135036(n+1)]+(n+1)²`
-/

namespace A178073.P1071394910754663644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A178073.P1071394910754663644

namespace A178073

/-- `∑[A135036(n+1)]+(n+1)²` -/
def P1071394910754663644.Spec : Prop :=
  ∀ n, P1071394910754663644.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P4618109068847504010

`A071238(n)+A051662(n)`
-/

namespace A178073.P4618109068847504010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n + A051662 n

end

end A178073.P4618109068847504010

namespace A178073

/-- `A071238(n)+A051662(n)` -/
def P4618109068847504010.Spec : Prop :=
  ∀ n, P4618109068847504010.a n = A178073 (n + 1)

end A178073

/-! ## A178073.P12624536502091060166

`A132366(n)+A033488(n)`
-/

namespace A178073.P12624536502091060166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132366 n + A033488 n

end

end A178073.P12624536502091060166

namespace A178073

/-- `A132366(n)+A033488(n)` -/
def P12624536502091060166.Spec : Prop :=
  ∀ n, P12624536502091060166.a n = A178073 (n + 1)

end A178073

/-!
# A178075: A (1,2) Somos-4 sequence.

The programs for A178075, the canonical program `A178075.P7311592410946067771` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178075 has offset 0).

The definition of A178075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178075.P7311592410946067771

`(a(n-1)*a(n-3)+2*a(n-2)²)/a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=-2, a(4)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178075

/-- `(a(n-1)*a(n-3)+2*a(n-2)²)/a(n-4)` -/
def P7311592410946067771.Spec : Prop :=
  ∀ n, P7311592410946067771.a n = (A178075 n : ℚ)

end A178075

/-!
# A178077: A (4,-8) Somos-4 sequence.

The programs for A178077, the canonical program `A178077.P618978112963222659` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178077 has offset 0).

The definition of A178077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178077.P618978112963222659

`(4*a(n-1)*a(n-3)-8*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=-16`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178077

/-- `(4*a(n-1)*a(n-3)-8*a(n-2)²)/a(n-4)` -/
def P618978112963222659.Spec : Prop :=
  ∀ n, P618978112963222659.a n = (A178077 n : ℚ)

end A178077

/-!
# A178078: Sequence with a (1,-1) Somos-4 Hankel transform.

The programs for A178078, there is no canonical definition to state claims against.
-/

/-! ## A178078.P2561705882530542816

`A081753(A242622(n)+Δ[A135310(n)])`
-/

namespace A178078.P2561705882530542816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A242622 n + (f1 (n + 1) - f1 n)).toNat

end

end A178078.P2561705882530542816

/-! ## A178078.P8527913535170702175

`A081753(A279561(n)+Δ[A135310(n)])`
-/

namespace A178078.P8527913535170702175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A279561 n + (f1 (n + 1) - f1 n)).toNat

end

end A178078.P8527913535170702175

/-! ## A178078.P6595379952437620924

`A008616(A261478(n)+A048116(n+1))`
-/

namespace A178078.P6595379952437620924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A261478 n + A048116 (n + 1)).toNat

end

end A178078.P6595379952437620924

/-! ## A178078.P6203556053787905623

`A033183(n*A220699(n+3))`
-/

namespace A178078.P6203556053787905623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 ((n : ℤ) * A220699 (n + 3)).toNat

end

end A178078.P6203556053787905623

/-!
# A178079: A (1,-1) Somos-4 sequence.

The programs for A178079, the canonical program `A178079.P14321163241974905582` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178079 has offset 0).

The definition of A178079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178079.P14321163241974905582

`(a(n-1)*a(n-3)-a(n-2)²)/a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178079

/-- `(a(n-1)*a(n-3)-a(n-2)²)/a(n-4)` -/
def P14321163241974905582.Spec : Prop :=
  ∀ n, P14321163241974905582.a n = (A178079 n : ℚ)

end A178079

/-! ## A178079.P10659296583040939632

`-A174400(1+n)`
-/

namespace A178079.P10659296583040939632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A174400 (1 + n)

end

end A178079.P10659296583040939632

namespace A178079

/-- `-A174400(1+n)` -/
def P10659296583040939632.Spec : Prop :=
  ∀ n, P10659296583040939632.a n = A178079 n

end A178079

/-! ## A178079.P14985307752107623867

`A178333(n+3)-A174400(n+1)`
-/

namespace A178079.P14985307752107623867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (n + 3) - A174400 (n + 1)

end

end A178079.P14985307752107623867

namespace A178079

/-- `A178333(n+3)-A174400(n+1)` -/
def P14985307752107623867.Spec : Prop :=
  ∀ n, P14985307752107623867.a n = A178079 n

end A178079

/-! ## A178079.P2704018544501948933

`and(1, A054880(n))-A174400(n+1)`
-/

namespace A178079.P2704018544501948933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A054880 n) - A174400 (n + 1)

end

end A178079.P2704018544501948933

namespace A178079

/-- `and(1, A054880(n))-A174400(n+1)` -/
def P2704018544501948933.Spec : Prop :=
  ∀ n, P2704018544501948933.a n = A178079 n

end A178079

/-! ## A178079.P1677313749071058553

`and(1, A054883(n))-A174400(n+1)`
-/

namespace A178079.P1677313749071058553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A054883 n) - A174400 (n + 1)

end

end A178079.P1677313749071058553

namespace A178079

/-- `and(1, A054883(n))-A174400(n+1)` -/
def P1677313749071058553.Spec : Prop :=
  ∀ n, P1677313749071058553.a n = A178079 n

end A178079

/-! ## A178079.P15777385316759666331

`and(1, A054885(n))-A174400(n+1)`
-/

namespace A178079.P15777385316759666331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A054885 n) - A174400 (n + 1)

end

end A178079.P15777385316759666331

namespace A178079

/-- `and(1, A054885(n))-A174400(n+1)` -/
def P15777385316759666331.Spec : Prop :=
  ∀ n, P15777385316759666331.a n = A178079 n

end A178079

/-! ## A178079.P10658749434537467555

`and(2, A025469(n))-A174400(n+1)`
-/

namespace A178079.P10658749434537467555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A025469 n) - A174400 (n + 1)

end

end A178079.P10658749434537467555

namespace A178079

/-- `and(2, A025469(n))-A174400(n+1)` -/
def P10658749434537467555.Spec : Prop :=
  ∀ n, P10658749434537467555.a n = A178079 n

end A178079

/-! ## A178079.P9792563891606040649

`and(2, A054881(n))-A174400(n+1)`
-/

namespace A178079.P9792563891606040649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A054881 n) - A174400 (n + 1)

end

end A178079.P9792563891606040649

namespace A178079

/-- `and(2, A054881(n))-A174400(n+1)` -/
def P9792563891606040649.Spec : Prop :=
  ∀ n, P9792563891606040649.a n = A178079 n

end A178079

/-! ## A178079.P11890683830244302872

`char[A279042(n+1)]-A174400(n+1)`
-/

namespace A178079.P11890683830244302872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279042 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A174400 (n + 1)

end

end A178079.P11890683830244302872

namespace A178079

/-- `char[A279042(n+1)]-A174400(n+1)` -/
def P11890683830244302872.Spec : Prop :=
  ∀ n, P11890683830244302872.a n = A178079 n

end A178079

/-! ## A178079.P4755325145276815070

`and(1, A234184(n+1))-A174400(n+1)`
-/

namespace A178079.P4755325145276815070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A234184 (n + 1)) - A174400 (n + 1)

end

end A178079.P4755325145276815070

namespace A178079

/-- `and(1, A234184(n+1))-A174400(n+1)` -/
def P4755325145276815070.Spec : Prop :=
  ∀ n, P4755325145276815070.a n = A178079 n

end A178079

/-!
# A178081: A (1,1) Somos-4 sequence.

The programs for A178081, the canonical program `A178081.P15244808008822459504` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178081 has offset 0).

The definition of A178081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178081.P15244808008822459504

`(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=-1, a(4)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178081

/-- `(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` -/
def P15244808008822459504.Spec : Prop :=
  ∀ n, P15244808008822459504.a n = (A178081 n : ℚ)

end A178081

/-!
# A178082: Numbers k for which 5*k-4, 5*k-2, 5*k+2, and 5*k+4 are primes.

The programs for A178082, there is no canonical definition to state claims against.
-/

/-! ## A178082.P3385292846719721589

`A173037(n+2)/5`
-/

namespace A178082.P3385292846719721589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173037 (n + 2) : ℚ) / 5

end

end A178082.P3385292846719721589

/-! ## A178082.P3501635821788876697

`3*A112540(n+1)`
-/

namespace A178082.P3501635821788876697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A112540 (n + 1)

end

end A178082.P3501635821788876697

/-! ## A178082.P18149670332681988910

`1+2*A007811(n+1)`
-/

namespace A178082.P18149670332681988910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A007811 (n + 1)

end

end A178082.P18149670332681988910

/-! ## A178082.P3545814287429954753

`2*A064975(n+1)-1`
-/

namespace A178082.P3545814287429954753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064975 (n + 1) - 1

end

end A178082.P3545814287429954753

/-! ## A178082.P18363416493661373175

`6*A014561(n+1)+3`
-/

namespace A178082.P18363416493661373175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A014561 (n + 1) + 3

end

end A178082.P18363416493661373175

/-! ## A178082.P13319959401330830981

`A064975(n+1)+A007811(n+1)`
-/

namespace A178082.P13319959401330830981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064975 (n + 1) + A007811 (n + 1)

end

end A178082.P13319959401330830981

/-! ## A178082.P13336257321909315619

`A007811(n+1)+A007811(n+1)-A057428(A028310(n))`
-/

namespace A178082.P13336257321909315619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007811 (n + 1) + (A007811 (n + 1) - A057428 (A028310 n).toNat)

end

end A178082.P13336257321909315619

/-! ## A178082.P9211123317476236794

`floor(A090258(n+2)/5)`
-/

namespace A178082.P9211123317476236794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090258 (n + 2) : ℚ) / 5⌋

end

end A178082.P9211123317476236794

/-! ## A178082.P3380736266309879182

`ceil(A007530(n+2)/5)`
-/

namespace A178082.P3380736266309879182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007530 (n + 2) : ℚ) / 5⌉

end

end A178082.P3380736266309879182

/-! ## A178082.P8247485871807299553

`2*A115095(n+2)-1`
-/

namespace A178082.P8247485871807299553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115095 (n + 2) - 1

end

end A178082.P8247485871807299553

/-! ## A178082.P18059556580237763078

`A064974(n+2)/5-1`
-/

namespace A178082.P18059556580237763078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064974 (n + 2) : ℚ) / 5 - 1

end

end A178082.P18059556580237763078

/-! ## A178082.P3241406744043697573

`A115095(n+2)+A007811(n+1)`
-/

namespace A178082.P3241406744043697573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115095 (n + 2) + A007811 (n + 1)

end

end A178082.P3241406744043697573

/-! ## A178082.P15011289740110949476

`A173092(n+2)-A112540(n+1)-A112540(n+1)`
-/

namespace A178082.P15011289740110949476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173092 (n + 2) - A112540 (n + 1) - A112540 (n + 1)

end

end A178082.P15011289740110949476

/-! ## A178082.P17758591599068735424

`A007811(n+1)+A010051(A078494(n+1))+A007811(n+1)`
-/

namespace A178082.P17758591599068735424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007811 (n + 1) + (A010051 (A078494 (n + 1)).toNat + A007811 (n + 1))

end

end A178082.P17758591599068735424

/-! ## A178082.P3510522120720105561

`A007811(n+1)+A010051(A022004(n+1))+A007811(n+1)`
-/

namespace A178082.P3510522120720105561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007811 (n + 1) + (A010051 (A022004 (n + 1)).toNat + A007811 (n + 1))

end

end A178082.P3510522120720105561

/-! ## A178082.P11219839061063029812

`A000265(A007811(n+1)+A007811(n+1)+1)`
-/

namespace A178082.P11219839061063029812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A007811 (n + 1) + (A007811 (n + 1) + 1)).toNat

end

end A178082.P11219839061063029812

/-!
# A178083: Numbers k for which 10k+1, 10k+3, 10k+7, 10k+9, 10k+13 and 10k+19 are primes.

The programs for A178083, there is no canonical definition to state claims against.
-/

/-! ## A178083.P7092601122882165446

`21*A182282(1+n)+1`
-/

namespace A178083.P7092601122882165446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A182282 (1 + n) + 1

end

end A178083.P7092601122882165446

/-! ## A178083.P2514618673656952210

`ceil(A222961(2+n)/5)`
-/

namespace A178083.P2514618673656952210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222961 (2 + n) : ℚ) / 5⌉

end

end A178083.P2514618673656952210

/-! ## A178083.P5040730685452635608

`round(A222961(n+2)/5)`
-/

namespace A178083.P5040730685452635608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A222961 (n + 2) : ℚ) / 5)

end

end A178083.P5040730685452635608

/-! ## A178083.P3871684546393804064

`floor(A057427(2*n+1)+A222961(n+2)/5)`
-/

namespace A178083.P3871684546393804064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 (2 * n + 1) : ℚ) + (A222961 (n + 2) : ℚ) / 5⌋

end

end A178083.P3871684546393804064

/-! ## A178083.P5376194298453029408

`A215146(A182282(n+1))`
-/

namespace A178083.P5376194298453029408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 (A182282 (n + 1)).toNat

end

end A178083.P5376194298453029408

/-!
# A178084: Numbers k for which 10k + 1, 10k + 3, 10k + 7, 10k + 9 and 10k + 13 are primes.

The programs for A178084, there is no canonical definition to state claims against.
-/

/-! ## A178084.P6019268839539808991

`floor(A022006(2+n)/10)`
-/

namespace A178084.P6019268839539808991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022006 (2 + n) : ℚ) / 10⌋

end

end A178084.P6019268839539808991

/-! ## A178084.P5950142642479675279

`round(A000007(n+1)+A022006(n+2)/10)`
-/

namespace A178084.P5950142642479675279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℚ) + (A022006 (n + 2) : ℚ) / 10)

end

end A178084.P5950142642479675279

/-! ## A178084.P11462102144274343656

`ceil(A022006(n+2)/10-A000035(2*n+1))`
-/

namespace A178084.P11462102144274343656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022006 (n + 2) : ℚ) / 10 - (A000035 (2 * n + 1) : ℚ)⌉

end

end A178084.P11462102144274343656

/-! ## A178084.P1061285480424059177

`3*A182279(n+1)+1`
-/

namespace A178084.P1061285480424059177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A182279 (n + 1) + 1

end

end A178084.P1061285480424059177

/-! ## A178084.P1647207227960125794

`A245304(n+2)/10`
-/

namespace A178084.P1647207227960125794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245304 (n + 2) : ℚ) / 10

end

end A178084.P1647207227960125794

/-! ## A178084.P4359892834674821664

`round(A209229(A160656(n+2))+A022006(n+2)/10)`
-/

namespace A178084.P4359892834674821664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A209229 (A160656 (n + 2)).toNat : ℚ) + (A022006 (n + 2) : ℚ) / 10)

end

end A178084.P4359892834674821664

/-!
# A178085: Triangle t(n,m) = 1 - phi(n) + phi(m) + phi(n - m) read by rows, 0<=m<=n.

The programs for A178085, there is no canonical definition to state claims against.
-/

/-! ## A178085.P15913730274910953915

`val(A052486(A111636(n)), 4)`
-/

namespace A178085.P15913730274910953915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A052486 (A111636 n).toNat).toNat 4

end

end A178085.P15913730274910953915

/-! ## A178085.P7675151831008124576

`A008441(A298177(n+1)^A053261(n))`
-/

namespace A178085.P7675151831008124576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (SequenceMachineLib.roundAway ((A298177 (n + 1) : ℚ) ^ (A053261 n : ℤ))).toNat

end

end A178085.P7675151831008124576

/-! ## A178085.P2524930548379773353

`A004198(A298177(n+1)^A053261(n)+11)`
-/

namespace A178085.P2524930548379773353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (SequenceMachineLib.roundAway ((A298177 (n + 1) : ℚ) ^ (A053261 n : ℤ) + 11)).toNat

end

end A178085.P2524930548379773353

/-! ## A178085.P7682980827379015937

`A122190(A156584(n))`
-/

namespace A178085.P7682980827379015937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122190 (A156584 n).toNat

end

end A178085.P7682980827379015937

/-! ## A178085.P12902542880187092854

`A135523(A342890(n))`
-/

namespace A178085.P12902542880187092854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (A342890 n).toNat

end

end A178085.P12902542880187092854

/-!
# A178086: Triangle T(n,m) = - phi(n+1) + phi(m+1) + phi(n-m+1), 0<=m<=n, where phi = A000010 is Euler's totient.

The programs for A178086, the canonical program `A178086.P8331180815501630969` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178086 has offset 0).

The definition of A178086 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-A000010(row(n)+1)+A000010(col(n)+1)+A000010(row(n)-col(n)+1)` (program `A178086.P8331180815501630969`, by `A178086.P8331180815501630969.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178086.P8331180815501630969

`-A000010(row(n)+1)+A000010(col(n)+1)+A000010(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A178086

/-- `-A000010(row(n)+1)+A000010(col(n)+1)+A000010(row(n)-col(n)+1)` -/
def P8331180815501630969.Spec : Prop :=
  ∀ n, P8331180815501630969.a n = A178086 n

theorem P8331180815501630969.correct : P8331180815501630969.Spec := by
  intro n
  simp only [A178086]

end A178086

/-! ## A178086.P14475779468857946538

`A109037(A222666(n+1))-A025581(A325820(n))`
-/

namespace A178086.P14475779468857946538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109037 (A222666 (n + 1)).toNat - A025581 (A325820 n).toNat

end

end A178086.P14475779468857946538

namespace A178086

/-- `A109037(A222666(n+1))-A025581(A325820(n))` -/
def P14475779468857946538.Spec : Prop :=
  ∀ n, P14475779468857946538.a n = A178086 n

end A178086

/-! ## A178086.P11937351950319856354

`A010873(A147069(n+1))-A065040(n)`
-/

namespace A178086.P11937351950319856354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A147069 (n + 1)).toNat - A065040 n

end

end A178086.P11937351950319856354

namespace A178086

/-- `A010873(A147069(n+1))-A065040(n)` -/
def P11937351950319856354.Spec : Prop :=
  ∀ n, P11937351950319856354.a n = A178086 n

end A178086

/-!
# A178087: G.f. satisfies: A(x) = Sum_{n>=0} x^n * Product_{k=1..n} A(k*x).

The programs for A178087, there is no canonical definition to state claims against.
-/

/-! ## A178087.P5712284180855662145

`A143917(n)+A056654(A000322(n))`
-/

namespace A178087.P5712284180855662145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143917 n + A056654 (A000322 n).toNat

end

end A178087.P5712284180855662145

/-! ## A178087.P16832229122786994570

`A352146(n+1)+A212632(A059927(n))`
-/

namespace A178087.P16832229122786994570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352146 (n + 1) + A212632 (A059927 n).toNat

end

end A178087.P16832229122786994570

/-! ## A178087.P10802414348064881440

`A352146(n+1)+A334184(A090245(n))`
-/

namespace A178087.P10802414348064881440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352146 (n + 1) + A334184 (A090245 n).toNat

end

end A178087.P10802414348064881440

/-!
# A178088: Let Sn=p1+....+pn and zn=Sn/pn. (zn) is not increasing; we have z1<z2<...<z30 then zn<zn-1 for the first time for p31=127, the second time for p35=149 and so on...

The programs for A178088, there is no canonical definition to state claims against.
-/

/-! ## A178088.P5084997830693379752

`A277718(A001096(n)+7)`
-/

namespace A178088.P5084997830693379752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277718 (A001096 n + 7).toNat

end

end A178088.P5084997830693379752

/-! ## A178088.P17201502876799453703

`A144105(A001096(n)+9)`
-/

namespace A178088.P17201502876799453703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144105 (A001096 n + 9).toNat

end

end A178088.P17201502876799453703

/-!
# A178089: G.f. satisfies: A(x) = Sum_{n>=0} x^n * Product_{k=0..n-1} A(2^k*x).

The programs for A178089, there is no canonical definition to state claims against.
-/

/-! ## A178089.P9494167142324968675

`A007457(A088717(n)+A023431(n))`
-/

namespace A178089.P9494167142324968675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007457 (A088717 n + A023431 n).toNat

end

end A178089.P9494167142324968675

/-! ## A178089.P246090936693175797

`A307082(n)+A083910(A307082(n))`
-/

namespace A178089.P246090936693175797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307082 n + A083910 (A307082 n).toNat

end

end A178089.P246090936693175797

/-! ## A178089.P16095312058617391832

`A307082(n)+A182441(A326249(n))`
-/

namespace A178089.P16095312058617391832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307082 n + A182441 (A326249 n).toNat

end

end A178089.P16095312058617391832

/-!
# A178090: Coefficient array for orthogonal polynomials P(n,x)=x*P(n-1,x)-floor((n-1)/2)*P(n-2,x), P(0,x)=1,P(1,x)=x.

The programs for A178090, there is no canonical definition to state claims against.
-/

/-! ## A178090.P11011103187873568397

`A101979(A111594(n))*A130194(n+1)`
-/

namespace A178090.P11011103187873568397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101979 (A111594 n).toNat * A130194 (n + 1)

end

end A178090.P11011103187873568397

/-! ## A178090.P13400123651046846516

`A030216(A101030(n+2))`
-/

namespace A178090.P13400123651046846516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030216 (A101030 (n + 2)).toNat

end

end A178090.P13400123651046846516

/-! ## A178090.P2944879729274422680

`A164677(A013622(n))*A342770(n)`
-/

namespace A178090.P2944879729274422680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164677 (A013622 n).toNat * A342770 n

end

end A178090.P2944879729274422680

/-! ## A178090.P15259304261341271267

`(A339207(A001222(2^n))%(n+3))%3`
-/

namespace A178090.P15259304261341271267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A339207 (A001222 (2 ^ n)).toNat) (n + 3 : ℤ)) 3

end

end A178090.P15259304261341271267

/-! ## A178090.P15333256143743791907

`A339207(A001222(2^n))%A062491(A059143(n))`
-/

namespace A178090.P15333256143743791907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339207 (A001222 (2 ^ n)).toNat) (A062491 (A059143 n).toNat)

end

end A178090.P15333256143743791907

/-!
# A178091: Emirps whose digital sums are also emirps.

The programs for A178091, there is no canonical definition to state claims against.
-/

/-! ## A178091.P9942353772574585600

`∪[A178092(n+1), A178093(n+1)]`
-/

namespace A178091.P9942353772574585600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178091.P9942353772574585600

/-! ## A178091.P9426010214732531996

`∩[A230255(n+1), A140282(n)]`
-/

namespace A178091.P9426010214732531996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140282 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178091.P9426010214732531996

/-! ## A178091.P3130675024500742029

`filter[A230255(n+1), A144596(#)]`
-/

namespace A178091.P3130675024500742029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144596 (f1 j).toNat = 1) n)

end

end A178091.P3130675024500742029

/-! ## A178091.P12893962321178704405

`filter[A167631(n+1), A144596(#)]`
-/

namespace A178091.P12893962321178704405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144596 (f1 j).toNat = 1) n)

end

end A178091.P12893962321178704405

/-!
# A178092: Lesser of emirp pairs whose digital sums are also emirps (A178091).

The programs for A178092, there is no canonical definition to state claims against.
-/

/-! ## A178092.P11557032886600031469

`∩[A109308(n+1), A178091(n+1)]`
-/

namespace A178092.P11557032886600031469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178092.P11557032886600031469

/-! ## A178092.P9591162312715965877

`∩[A141263(n+1), A178091(n+1)]`
-/

namespace A178092.P9591162312715965877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178092.P9591162312715965877

/-!
# A178093: Larger of emirp pairs whose digital sums are also emirps (A178091).

The programs for A178093, there is no canonical definition to state claims against.
-/

/-! ## A178093.P4775824397856594893

`∩[A099180(n+1), A178091(n+1)]`
-/

namespace A178093.P4775824397856594893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178093.P4775824397856594893

/-! ## A178093.P14328301524113897230

`∩[A109309(1+n), A178091(n+1)]`
-/

namespace A178093.P14328301524113897230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109309 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178093.P14328301524113897230

/-!
# A178094: a(1)=a(2)=1; thereafter a(n) = lpf(a(n-1)+a(n-2)), where lpf = "least prime factor".

The programs for A178094, there is no canonical definition to state claims against.
-/

/-! ## A178094.P6400043161914621919

`A020639(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178094.P6400043161914621919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A020639 (a (n - 1) + a (n - 2)).toNat

end

end A178094.P6400043161914621919

/-!
# A178095: a(1)=a(2)=a(3)=1; thereafter a(n) = lpf(a(n-1)+a(n-2)+a(n-3)), where lpf = "least prime factor".

The programs for A178095, there is no canonical definition to state claims against.
-/

/-! ## A178095.P9279919247391150056

`A020639(a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178095.P9279919247391150056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A020639 (a (n - 1) + a (n - 2) + a (n - 3)).toNat

end

end A178095.P9279919247391150056

/-! ## A178095.P1456760029781039348

`A096015(a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A178095.P1456760029781039348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A096015 (a (n - 1) + (a (n - 2) + a (n - 3))).toNat

end

end A178095.P1456760029781039348

/-!
# A178096: Cube of n is equal to sum of four positive distinct squares; n^3=a^2+b^2+c^2+d^2; a>b>c>d>0.

The programs for A178096, there is no canonical definition to state claims against.
-/

/-! ## A178096.P6608353671757916994

`comp[4*T(n-2,k)]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A178096.P6608353671757916994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  4 * SequenceMachineLib.triUp2 f1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A178096.P6608353671757916994

/-! ## A178096.P8259866656768686068

`comp[4*T(n-2,k-1)]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A178096.P8259866656768686068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  4 * SequenceMachineLib.triUp2Left f1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A178096.P8259866656768686068

/-! ## A178096.P9435104392184767521

`comp[4*T(n-1,k-1)]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A178096.P9435104392184767521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f1 =>
  4 * SequenceMachineLib.triUpLeft f1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A178096.P9435104392184767521

/-! ## A178096.P12238695411845079098

`comp[4*T(n-1,k)]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A178096.P12238695411845079098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1, 2, 3] fun n f1 =>
  4 * SequenceMachineLib.triUp f1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A178096.P12238695411845079098

/-! ## A178096.P16826853314567048998

`comp[4*a(n-3)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A178096.P16826853314567048998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f1 =>
  4 * f1 (n - 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A178096.P16826853314567048998

/-!
# A178097: Partial sums of A038034.

The programs for A178097, there is no canonical definition to state claims against.
-/

/-! ## A178097.P16864217540376667850

`∑[A038034(1+n)]`
-/

namespace A178097.P16864217540376667850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038034 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178097.P16864217540376667850

/-! ## A178097.P15566607616364638366

`∑[∑[A092667(n+1)]]`
-/

namespace A178097.P15566607616364638366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092667 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178097.P15566607616364638366

/-! ## A178097.P15924152777815453598

`A038034(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A178097.P15924152777815453598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038034 (n + 1) + a (n - 1)

end

end A178097.P15924152777815453598

/-! ## A178097.P8294400643193435637

`∑[record[A038034(A028920(n))]]`
-/

namespace A178097.P8294400643193435637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038034 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178097.P8294400643193435637

/-! ## A178097.P6616383209571991612

`∑[record[A038034(A065648(n))]]`
-/

namespace A178097.P6616383209571991612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038034 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178097.P6616383209571991612

/-!
# A178098: Numbers n such that exactly two positive d in the range d <= n/2 exist which divide binomial(n-d-1, d-1) and which are not coprime to n.

The programs for A178098, there is no canonical definition to state claims against.
-/

/-! ## A178098.P935427562765597973

`eq[2, A178101(n+1)]+1`
-/

namespace A178098.P935427562765597973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A178098.P935427562765597973

/-! ## A178098.P7457925476664665438

`eq[2, A178101(A028310(n))]`
-/

namespace A178098.P7457925476664665438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178098.P7457925476664665438

/-! ## A178098.P2472785303840340964

`A020725(eq[2, A178101(n+1)])`
-/

namespace A178098.P2472785303840340964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178098.P2472785303840340964

/-! ## A178098.P17900712842324044065

`eq[2, A178101(A060000(n+1))]`
-/

namespace A178098.P17900712842324044065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178098.P17900712842324044065

/-! ## A178098.P342205463183959962

`A065475(eq[2, A178101(n+1)])`
-/

namespace A178098.P342205463183959962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178098.P342205463183959962

/-!
# A178099: Numbers k such that exactly three d in the range d <= k/2 exist which divide binomial(k-d-1,d-1) and which are not coprime to k.

The programs for A178099, there is no canonical definition to state claims against.
-/

/-! ## A178099.P7383224336327862772

`eq[3, A178101(n+1)]+1`
-/

namespace A178099.P7383224336327862772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A178099.P7383224336327862772

/-! ## A178099.P7378921409704497020

`eq[3, A178101(A028310(n))]`
-/

namespace A178099.P7378921409704497020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178099.P7378921409704497020

/-! ## A178099.P9053788373389722805

`A020725(eq[3, A178101(n+1)])`
-/

namespace A178099.P9053788373389722805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178099.P9053788373389722805

/-! ## A178099.P13235825583954982585

`A065475(eq[3, A178101(n+1)])`
-/

namespace A178099.P13235825583954982585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178099.P13235825583954982585

/-! ## A178099.P10439320293049554273

`eq[3, A178101(A138153(n+1))]`
-/

namespace A178099.P10439320293049554273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178099.P10439320293049554273

