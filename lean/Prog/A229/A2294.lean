import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
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

/-!
# A229400: Number of n X 6 0..2 arrays with top left element 0, horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and antidiagonal differences never 0.

The programs for A229400, there is no canonical definition to state claims against.
-/

/-! ## A229400.P2776593017865245465

`A229402(A374007(n+1))`
-/

namespace A229400.P2776593017865245465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A374007 (n + 1)).toNat

end

end A229400.P2776593017865245465

/-! ## A229400.P12492390020100728750

`A229402(A167614(n+4)+3)`
-/

namespace A229400.P12492390020100728750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A167614 (n + 4) + 3).toNat

end

end A229400.P12492390020100728750

/-! ## A229400.P3151660787134357057

`A229402(A000124(n+5)+5)`
-/

namespace A229400.P3151660787134357057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A000124 (n + 5) + 5).toNat

end

end A229400.P3151660787134357057

/-! ## A229400.P681221125613365775

`A229402(A000217(n+5)+6)`
-/

namespace A229400.P681221125613365775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A000217 (n + 5) + 6).toNat

end

end A229400.P681221125613365775

/-! ## A229400.P17707988185371475023

`A229402(Δ[A023545(n+1)]+10)`
-/

namespace A229400.P17707988185371475023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (f1 (n + 1) - f1 n + 10).toNat

end

end A229400.P17707988185371475023

/-!
# A229401: Number of nX7 0..2 arrays with top left element 0, horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and antidiagonal differences never 0.

The programs for A229401, there is no canonical definition to state claims against.
-/

/-! ## A229401.P14322131106918612702

`A229402(A374008(n+1))`
-/

namespace A229401.P14322131106918612702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A374008 (n + 1)).toNat

end

end A229401.P14322131106918612702

/-! ## A229401.P8996085192229747495

`A229402(eq[8, A131818(n+1)])`
-/

namespace A229401.P8996085192229747495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229401.P8996085192229747495

/-! ## A229401.P13813978727128701748

`A229402(A000124(n+7)-(n+1))`
-/

namespace A229401.P13813978727128701748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A229401.P13813978727128701748

/-! ## A229401.P3479894112893948403

`A229402(A055999(n+4))`
-/

namespace A229401.P3479894112893948403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A055999 (n + 4)).toNat

end

end A229401.P3479894112893948403

/-! ## A229401.P12040580716675858799

`A229402(eq[6, A193592(n)])`
-/

namespace A229401.P12040580716675858799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229401.P12040580716675858799

/-!
# A229402: T(n,k)=Number of nXk 0..2 arrays with top left element 0, horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and antidiagonal differences never 0.

The programs for A229402, there is no canonical definition to state claims against.
-/

/-! ## A229402.P9346474531478365222

`A318024(n+1)-A289508(A132318(n))`
-/

namespace A229402.P9346474531478365222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (n + 1) - A289508 (A132318 n).toNat

end

end A229402.P9346474531478365222

/-! ## A229402.P8309793756942455161

`A320409(n+1)-A324966(A132318(n))`
-/

namespace A229402.P8309793756942455161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (n + 1) - A324966 (A132318 n).toNat

end

end A229402.P8309793756942455161

/-! ## A229402.P11343088516012527486

`A252938(n+1)-A016389(A156820(n))`
-/

namespace A229402.P11343088516012527486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (n + 1) - A016389 (A156820 n).toNat

end

end A229402.P11343088516012527486

/-! ## A229402.P17873775589843510480

`A318024(n+1)-A000035(A204492(n+1))`
-/

namespace A229402.P17873775589843510480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (n + 1) - A000035 (A204492 (n + 1)).toNat

end

end A229402.P17873775589843510480

/-! ## A229402.P7668268142430901592

`A252938(n+1)+A051731(A262723(n+5))`
-/

namespace A229402.P7668268142430901592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (n + 1) + A051731 (A262723 (n + 5)).toNat

end

end A229402.P7668268142430901592

/-!
# A229403: Number of n-node rooted identity trees of height 9.

The programs for A229403, there is no canonical definition to state claims against.
-/

/-! ## A229403.P8101611503232455849

`A227819(A000124(n+9)+9)`
-/

namespace A229403.P8101611503232455849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000124 (n + 9) + 9).toNat

end

end A229403.P8101611503232455849

/-! ## A229403.P16980593741584407306

`A227819(A000096(n+8)+11)`
-/

namespace A229403.P16980593741584407306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000096 (n + 8) + 11).toNat

end

end A229403.P16980593741584407306

/-! ## A229403.P10748491601873558988

`A227819(A000217(n+9)+10)`
-/

namespace A229403.P10748491601873558988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000217 (n + 9) + 10).toNat

end

end A229403.P10748491601873558988

/-! ## A229403.P9985193585865659288

`A227819(eq[11, A131818(n+1)])`
-/

namespace A229403.P9985193585865659288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229403.P9985193585865659288

/-! ## A229403.P9617712583876217473

`A227819(A055998(n+9)-8-2*n)`
-/

namespace A229403.P9617712583876217473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A055998 (n + 9) - 8 - (2 * n : ℤ)).toNat

end

end A229403.P9617712583876217473

/-!
# A229404: Number of n-node rooted identity trees of height 10.

The programs for A229404, there is no canonical definition to state claims against.
-/

/-! ## A229404.P15365361138009236519

`A227819(A167499(n+9)+6)`
-/

namespace A229404.P15365361138009236519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A167499 (n + 9) + 6).toNat

end

end A229404.P15365361138009236519

/-! ## A229404.P13699676984650133781

`A227819(A167614(n+9)+8)`
-/

namespace A229404.P13699676984650133781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A167614 (n + 9) + 8).toNat

end

end A229404.P13699676984650133781

/-! ## A229404.P18026559954396033102

`A227819(A000096(n+9)+12)`
-/

namespace A229404.P18026559954396033102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000096 (n + 9) + 12).toNat

end

end A229404.P18026559954396033102

/-! ## A229404.P16201791315913695288

`A227819(eq[10, A002262(n)]+1)`
-/

namespace A229404.P16201791315913695288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229404.P16201791315913695288

/-! ## A229404.P14816207732768648478

`A227819(eq[12, A131818(n+1)])`
-/

namespace A229404.P14816207732768648478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229404.P14816207732768648478

/-!
# A229405: Number of n X n 0..3 arrays avoiding 11 horizontally, 22 vertically, 33 antidiagonally and 00 diagonally.

The programs for A229405, there is no canonical definition to state claims against.
-/

/-! ## A229405.P12833052998489847043

`A229412((n+1)²+n²)`
-/

namespace A229405.P12833052998489847043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229412 ((n + 1) ^ 2 + n ^ 2)

end

end A229405.P12833052998489847043

/-!
# A229406: Number of n X 2 0..3 arrays avoiding 11 horizontally, 22 vertically, 33 antidiagonally and 00 diagonally.

The programs for A229406, there is no canonical definition to state claims against.
-/

/-! ## A229406.P14061788366041133408

`A229412(∑[n+1]+2)`
-/

namespace A229406.P14061788366041133408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229412 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229406.P14061788366041133408

/-! ## A229406.P13039919510063084641

`record[root(A229412(n+2), A128235(n))]`
-/

namespace A229406.P13039919510063084641
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A229412 (n + 2) : ℝ) ^ (1 / (A128235 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229406.P13039919510063084641

/-! ## A229406.P17883922464362927180

`record[gcd(A180662(n), A229412(n+2))]`
-/

namespace A229406.P17883922464362927180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180662 n) (A229412 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229406.P17883922464362927180

/-! ## A229406.P10479013013987906169

`record[root(A229412(n+2), A340156(n+2))]`
-/

namespace A229406.P10479013013987906169
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A229412 (n + 2) : ℝ) ^ (1 / (A340156 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229406.P10479013013987906169

/-! ## A229406.P7534456260738651434

`record[A229412(Δ[A003453(n+5)])]`
-/

namespace A229406.P7534456260738651434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229412 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229406.P7534456260738651434

/-!
# A229407: Number of nX3 0..3 arrays avoiding 11 horizontally, 22 vertically, 33 antidiagonally and 00 diagonally.

The programs for A229407, there is no canonical definition to state claims against.
-/

/-! ## A229407.P8759896762091813236

`A229412(∑[n+2]+4)`
-/

namespace A229407.P8759896762091813236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229412 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229407.P8759896762091813236

/-! ## A229407.P1607326078641143296

`or(A000007(n), A229412(A167614(n+1)))`
-/

namespace A229407.P1607326078641143296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A229412 (A167614 (n + 1)).toNat)

end

end A229407.P1607326078641143296

/-! ## A229407.P17827493236369875753

`A229412(A167614(n+1))%A229408(n+1)`
-/

namespace A229407.P17827493236369875753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229412 (A167614 (n + 1)).toNat) (A229408 (n + 1))

end

end A229407.P17827493236369875753

/-! ## A229407.P8181579043263208839

`lcm(A051700(n+1), A229412(A167614(n+1)))`
-/

namespace A229407.P8181579043263208839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051700 (n + 1)) (A229412 (A167614 (n + 1)).toNat)

end

end A229407.P8181579043263208839

/-! ## A229407.P1607284685837587505

`A229412(A167614(n+1))^-A057428(A340156(n+2))`
-/

namespace A229407.P1607284685837587505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229412 (A167614 (n + 1)).toNat : ℚ) ^ (-A057428 (A340156 (n + 2)).toNat : ℤ)

end

end A229407.P1607284685837587505

/-!
# A229408: Number of nX4 0..3 arrays avoiding 11 horizontally, 22 vertically, 33 antidiagonally and 00 diagonally.

The programs for A229408, there is no canonical definition to state claims against.
-/

/-! ## A229408.P17674381221167961941

`A229412(A374004(n+1))`
-/

namespace A229408.P17674381221167961941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229412 (A374004 (n + 1)).toNat

end

end A229408.P17674381221167961941

/-! ## A229408.P2708611501001650421

`A229412(A052905(n)+9)`
-/

namespace A229408.P2708611501001650421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229412 (A052905 n + 9).toNat

end

end A229408.P2708611501001650421

/-! ## A229408.P4596942338186695845

`A229412(A055999(n)+10)`
-/

namespace A229408.P4596942338186695845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229412 (A055999 n + 10).toNat

end

end A229408.P4596942338186695845

/-! ## A229408.P4184426342158636458

`A229412(A167614(n+2)+1)`
-/

namespace A229408.P4184426342158636458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229412 (A167614 (n + 2) + 1).toNat

end

end A229408.P4184426342158636458

/-! ## A229408.P2173569449542014073

`A229412(Δ[A023545(n+1)-n²])`
-/

namespace A229408.P2173569449542014073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229412 (f1 (n + 1) - f1 n).toNat

end

end A229408.P2173569449542014073

/-!
# A229409: Number of nX5 0..3 arrays avoiding 11 horizontally, 22 vertically, 33 antidiagonally and 00 diagonally.

The programs for A229409, there is no canonical definition to state claims against.
-/

/-! ## A229409.P13522701933624896981

`A229412(A374005(n+1))`
-/

namespace A229409.P13522701933624896981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229412 (A374005 (n + 1)).toNat

end

end A229409.P13522701933624896981

/-! ## A229409.P2169951994367786843

`A229412(A167499(n+3))`
-/

namespace A229409.P2169951994367786843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229412 (A167499 (n + 3)).toNat

end

end A229409.P2169951994367786843

/-! ## A229409.P7073164544539772987

`A229412(Δ[A023545(n+1)])`
-/

namespace A229409.P7073164544539772987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229412 (f1 (n + 1) - f1 n).toNat

end

end A229409.P7073164544539772987

/-!
# A229410: Number of nX6 0..3 arrays avoiding 11 horizontally, 22 vertically, 33 antidiagonally and 00 diagonally.

The programs for A229410, there is no canonical definition to state claims against.
-/

/-! ## A229410.P5599140461636615628

`A229412(A374007(n+1))`
-/

namespace A229410.P5599140461636615628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229412 (A374007 (n + 1)).toNat

end

end A229410.P5599140461636615628

/-! ## A229410.P11261671935475787673

`A229412(Δ[A023545(n+1)]+10)`
-/

namespace A229410.P11261671935475787673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229412 (f1 (n + 1) - f1 n + 10).toNat

end

end A229410.P11261671935475787673

/-! ## A229410.P2597179096976105645

`A229412(eq[6, A200370(n+1)])`
-/

namespace A229410.P2597179096976105645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229410.P2597179096976105645

/-!
# A229412: T(n,k)=Number of nXk 0..3 arrays avoiding 11 horizontally, 22 vertically, 33 antidiagonally and 00 diagonally.

The programs for A229412, there is no canonical definition to state claims against.
-/

/-! ## A229412.P8459813879820508242

`xor(1, A167201(A197465(n+1)))`
-/

namespace A229412.P8459813879820508242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A167201 (A197465 (n + 1)).toNat)

end

end A229412.P8459813879820508242

/-!
# A229413: Number of set partitions of {1,...,3n} into sets of size at most n.

The programs for A229413, there is no canonical definition to state claims against.
-/

/-! ## A229413.P3508391930812552694

`A229223(A062725(n))`
-/

namespace A229413.P3508391930812552694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229223 (A062725 n).toNat

end

end A229413.P3508391930812552694

/-! ## A229413.P9860932055467042320

`A229223(eq[A002262(n), A114327(n)])`
-/

namespace A229413.P9860932055467042320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229223 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A229413.P9860932055467042320

/-! ## A229413.P6493124450246860087

`A108947(A139276(n))`
-/

namespace A229413.P6493124450246860087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A139276 n).toNat

end

end A229413.P6493124450246860087

/-! ## A229413.P5125061554838460387

`A108947(A236267(n)-1)`
-/

namespace A229413.P5125061554838460387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A236267 n - 1).toNat

end

end A229413.P5125061554838460387

/-! ## A229413.P3363949622027250687

`A108947(A033586(n)-n)`
-/

namespace A229413.P3363949622027250687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A033586 n - (n : ℤ)).toNat

end

end A229413.P3363949622027250687

/-!
# A229414: Number of set partitions of {1,...,3n} into sets of size at most 3.

The programs for A229414, the canonical program `A229414.P18002182896284813355` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229414 has offset 0).

The definition of A229414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229414.P18002182896284813355

`A001680(3*n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A229414

/-- `A001680(3*n)` -/
def P18002182896284813355.Spec : Prop :=
  ∀ n, P18002182896284813355.a n = A229414 n

theorem P18002182896284813355.correct : P18002182896284813355.Spec := by
  intro n
  simp only [A229414]

end A229414

/-! ## A229414.P16270442630498363968

`record[A001680(n)^A049347(n)]`
-/

namespace A229414.P16270442630498363968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001680 n : ℚ) ^ (A049347 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229414.P16270442630498363968

namespace A229414

/-- `record[A001680(n)^A049347(n)]` -/
def P16270442630498363968.Spec : Prop :=
  ∀ n, P16270442630498363968.a n = (A229414 n : ℚ)

end A229414

/-! ## A229414.P4802122219826027675

`record[A001680(n)/A049347(n²)]`
-/

namespace A229414.P4802122219826027675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001680 n : ℚ) / (A049347 (n ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229414.P4802122219826027675

namespace A229414

/-- `record[A001680(n)/A049347(n²)]` -/
def P4802122219826027675.Spec : Prop :=
  ∀ n, P4802122219826027675.a n = (A229414 n : ℚ)

end A229414

/-! ## A229414.P1388356400117513206

`A229243(A167614(n+2))`
-/

namespace A229414.P1388356400117513206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229243 (A167614 (n + 2)).toNat

end

end A229414.P1388356400117513206

namespace A229414

/-- `A229243(A167614(n+2))` -/
def P1388356400117513206.Spec : Prop :=
  ∀ n, P1388356400117513206.a n = A229414 n

end A229414

/-! ## A229414.P5314420789650654452

`A229243(A141214(n)+6)`
-/

namespace A229414.P5314420789650654452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229243 (A141214 n + 6).toNat

end

end A229414.P5314420789650654452

namespace A229414

/-- `A229243(A141214(n)+6)` -/
def P5314420789650654452.Spec : Prop :=
  ∀ n, P5314420789650654452.a n = A229414 n

end A229414

/-!
# A229415: Number of n X n 0..2 zero-diagonal arrays with corresponding row and column sums equal.

The programs for A229415, there is no canonical definition to state claims against.
-/

/-! ## A229415.P10512155642359238684

`A229417(∑[n+2])`
-/

namespace A229415.P10512155642359238684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229417 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229415.P10512155642359238684

/-! ## A229415.P414502692171208862

`record[A229417(A193974(n))]`
-/

namespace A229415.P414502692171208862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229417 (A193974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229415.P414502692171208862

/-! ## A229415.P9575178824728048191

`record[A229417(A198455(n+1))]`
-/

namespace A229415.P9575178824728048191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229417 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229415.P9575178824728048191

/-!
# A229416: Number of n X n 0..3 zero-diagonal arrays with corresponding row and column sums equal.

The programs for A229416, there is no canonical definition to state claims against.
-/

/-! ## A229416.P8232213629848717057

`A229417(∑[n+3]+1)`
-/

namespace A229416.P8232213629848717057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229417 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229416.P8232213629848717057

/-! ## A229416.P12609101151071003927

`record[A229417(A198455(n+1)-1)]`
-/

namespace A229416.P12609101151071003927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229417 (A198455 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229416.P12609101151071003927

/-!
# A229417: T(n,k) = number of n X n 0..k zero-diagonal arrays with corresponding row and column sums equal.

The programs for A229417, there is no canonical definition to state claims against.
-/

/-! ## A229417.P14752474011652463887

`A254667(A229870(n+1))/A269583(n+1)`
-/

namespace A229417.P14752474011652463887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254667 (A229870 (n + 1)).toNat : ℚ) / (A269583 (n + 1) : ℚ)

end

end A229417.P14752474011652463887

/-! ## A229417.P2675222525504582049

`A112318(A212267(n+1))`
-/

namespace A229417.P2675222525504582049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A212267 (n + 1)).toNat

end

end A229417.P2675222525504582049

/-! ## A229417.P11616073617605328967

`A064375(A080852(n))-A080852(n)`
-/

namespace A229417.P11616073617605328967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064375 (A080852 n).toNat - A080852 n

end

end A229417.P11616073617605328967

/-! ## A229417.P18137063863097282135

`A002024(A013919(n+1)^A049600(n))`
-/

namespace A229417.P18137063863097282135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.roundAway ((A013919 (n + 1) : ℚ) ^ (A049600 n : ℤ))).toNat

end

end A229417.P18137063863097282135

/-! ## A229417.P11253250383947962423

`A123578(A059589(n+1)^A139600(n))`
-/

namespace A229417.P11253250383947962423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (SequenceMachineLib.roundAway ((A059589 (n + 1) : ℚ) ^ (A139600 n : ℤ))).toNat

end

end A229417.P11253250383947962423

/-!
# A229418: Number of 4X4 0..n zero-diagonal arrays with corresponding row and column sums equal.

The programs for A229418, there is no canonical definition to state claims against.
-/

/-! ## A229418.P2539379516604572026

`A229871(n+1)/(n+2)²²`
-/

namespace A229418.P2539379516604572026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229871 (n + 1) : ℚ) / (((n + 2) ^ 2) ^ 2 : ℚ)

end

end A229418.P2539379516604572026

/-! ## A229418.P12222641800507803437

`A187408(∑[n+2]+4)`
-/

namespace A229418.P12222641800507803437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187408 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229418.P12222641800507803437

/-! ## A229418.P5664678097506126125

`A217657(n)+A187408(A167614(n+1))`
-/

namespace A229418.P5664678097506126125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 n + A187408 (A167614 (n + 1)).toNat

end

end A229418.P5664678097506126125

/-! ## A229418.P14670183686517622553

`A187408(A167614(n+1))+A037833(n+1)`
-/

namespace A229418.P14670183686517622553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187408 (A167614 (n + 1)).toNat + A037833 (n + 1)

end

end A229418.P14670183686517622553

/-! ## A229418.P17595696086000144678

`A187408(A167614(n+1))%A229871(n+1)`
-/

namespace A229418.P17595696086000144678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187408 (A167614 (n + 1)).toNat) (A229871 (n + 1))

end

end A229418.P17595696086000144678

/-!
# A229419: Number of 5X5 0..n zero-diagonal arrays with corresponding row and column sums equal.

The programs for A229419, there is no canonical definition to state claims against.
-/

/-! ## A229419.P238850868809266609

`A229872(n+1)/(n+2)^5`
-/

namespace A229419.P238850868809266609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229872 (n + 1) : ℚ) / ((n + 2) ^ 5 : ℚ)

end

end A229419.P238850868809266609

/-!
# A229421: Number of n X n 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, rows lexicographically nondecreasing, and columns lexicographically nonincreasing.

The programs for A229421, there is no canonical definition to state claims against.
-/

/-! ## A229421.P8906136587865131482

`A252813(n+1)+A000984(n+1)`
-/

namespace A229421.P8906136587865131482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252813 (n + 1) + A000984 (n + 1)

end

end A229421.P8906136587865131482

/-! ## A229421.P6026662748541998712

`A030662(n+1)+A252813(n+1)+1`
-/

namespace A229421.P6026662748541998712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030662 (n + 1) + (A252813 (n + 1) + 1)

end

end A229421.P6026662748541998712

/-! ## A229421.P15477907495385564474

`A115112(n+1)+A252813(n+1)+2`
-/

namespace A229421.P15477907495385564474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115112 (n + 1) + (A252813 (n + 1) + 2)

end

end A229421.P15477907495385564474

/-! ## A229421.P14877386715600393985

`A252820(A001844(n))+A000984(n+1)`
-/

namespace A229421.P14877386715600393985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (A001844 n).toNat + A000984 (n + 1)

end

end A229421.P14877386715600393985

/-! ## A229421.P8890158072023085408

`A229428(∑[4*n]+1)`
-/

namespace A229421.P8890158072023085408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229428 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229421.P8890158072023085408

/-!
# A229422: Number of n X 2 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, rows lexicographically nondecreasing, and columns lexicographically nonincreasing.

The programs for A229422, the canonical program `A229422.P15871147756061992568` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229422 has offset 1).

The definition of A229422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229422.P15871147756061992568

`C(n+5, 4)-n*(n+2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229422

/-- `C(n+5, 4)-n*(n+2)` -/
def P15871147756061992568.Spec : Prop :=
  ∀ n, P15871147756061992568.a n = A229422 (n + 1)

theorem P15871147756061992568.correct : P15871147756061992568.Spec := by
  intro n
  simp only [A229422, Nat.add_sub_cancel]

end A229422

/-! ## A229422.P15556638110998296814

`∑[∑[∑[n+2]-1]+2]+2`
-/

namespace A229422.P15556638110998296814
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A229422.P15556638110998296814

namespace A229422

/-- `∑[∑[∑[n+2]-1]+2]+2` -/
def P15556638110998296814.Spec : Prop :=
  ∀ n, P15556638110998296814.a n = A229422 (n + 1)

end A229422

/-! ## A229422.P16351904101518411163

`∑[A027965(n+2)+A000038(n)]`
-/

namespace A229422.P16351904101518411163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027965 (n + 2) + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229422.P16351904101518411163

namespace A229422

/-- `∑[A027965(n+2)+A000038(n)]` -/
def P16351904101518411163.Spec : Prop :=
  ∀ n, P16351904101518411163.a n = A229422 (n + 1)

end A229422

/-! ## A229422.P9385202624888231726

`Δ[A027967(n+3)+n]`
-/

namespace A229422.P9385202624888231726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027967 (n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229422.P9385202624888231726

namespace A229422

/-- `Δ[A027967(n+3)+n]` -/
def P9385202624888231726.Spec : Prop :=
  ∀ n, P9385202624888231726.a n = A229422 (n + 1)

end A229422

/-! ## A229422.P6587864958124085512

`Δ[A051745(n+1)-A000330(n)]`
-/

namespace A229422.P6587864958124085512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051745 (n + 1) - A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229422.P6587864958124085512

namespace A229422

/-- `Δ[A051745(n+1)-A000330(n)]` -/
def P6587864958124085512.Spec : Prop :=
  ∀ n, P6587864958124085512.a n = A229422 (n + 1)

end A229422

/-! ## A229422.P3593795625009324220

`Δ[Δ[A027968(n+3)]+n]`
-/

namespace A229422.P3593795625009324220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027968 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229422.P3593795625009324220

namespace A229422

/-- `Δ[Δ[A027968(n+3)]+n]` -/
def P3593795625009324220.Spec : Prop :=
  ∀ n, P3593795625009324220.a n = A229422 (n + 1)

end A229422

/-! ## A229422.P6913780581397340230

`Δ[A154322(n+2)-A056520(n)]`
-/

namespace A229422.P6913780581397340230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154322 (n + 2) - A056520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229422.P6913780581397340230

namespace A229422

/-- `Δ[A154322(n+2)-A056520(n)]` -/
def P6913780581397340230.Spec : Prop :=
  ∀ n, P6913780581397340230.a n = A229422 (n + 1)

end A229422

/-!
# A229423: Number of n X 3 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, rows lexicographically nondecreasing, and columns lexicographically nonincreasing.

The programs for A229423, the canonical program `A229423.P15058870928533988016` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229423 has offset 1).

The definition of A229423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229423.P15058870928533988016

`A252815(n+1)+A062748(n)+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A229423

/-- `A252815(n+1)+A062748(n)+1` -/
def P15058870928533988016.Spec : Prop :=
  ∀ n, P15058870928533988016.a n = A229423 (n + 1)

theorem P15058870928533988016.correct : P15058870928533988016.Spec := by
  intro n
  simp only [A229423, Nat.add_sub_cancel]

end A229423

/-! ## A229423.P1776605633930426036

`A252815(n+1)+A000292(n+2)`
-/

namespace A229423.P1776605633930426036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) + A000292 (n + 2)

end

end A229423.P1776605633930426036

namespace A229423

/-- `A252815(n+1)+A000292(n+2)` -/
def P1776605633930426036.Spec : Prop :=
  ∀ n, P1776605633930426036.a n = A229423 (n + 1)

end A229423

/-! ## A229423.P10659789064834239365

`A252815(n+1)+Δ[A027800(n)/(n+1)]`
-/

namespace A229423.P10659789064834239365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027800 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252815 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A229423.P10659789064834239365

namespace A229423

/-- `A252815(n+1)+Δ[A027800(n)/(n+1)]` -/
def P10659789064834239365.Spec : Prop :=
  ∀ n, P10659789064834239365.a n = (A229423 (n + 1) : ℚ)

end A229423

/-! ## A229423.P9854202766243003329

`A202752(n+2)+(n²-n)/2+A062748(n)+1`
-/

namespace A229423.P9854202766243003329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202752 (n + 2) : ℚ) + ((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2 + (A062748 n + 1 : ℚ)

end

end A229423.P9854202766243003329

namespace A229423

/-- `A202752(n+2)+(n²-n)/2+A062748(n)+1` -/
def P9854202766243003329.Spec : Prop :=
  ∀ n, P9854202766243003329.a n = (A229423 (n + 1) : ℚ)

end A229423

/-! ## A229423.P15753113949375083774

`A252815(n+1)+Δ[A000332(n+4)]`
-/

namespace A229423.P15753113949375083774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) + (f1 (n + 1) - f1 n)

end

end A229423.P15753113949375083774

namespace A229423

/-- `A252815(n+1)+Δ[A000332(n+4)]` -/
def P15753113949375083774.Spec : Prop :=
  ∀ n, P15753113949375083774.a n = A229423 (n + 1)

end A229423

/-! ## A229423.P15859701757376965801

`A252815(n+1)+A074909(A055998(n+2))`
-/

namespace A229423.P15859701757376965801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) + A074909 (A055998 (n + 2)).toNat

end

end A229423.P15859701757376965801

namespace A229423

/-- `A252815(n+1)+A074909(A055998(n+2))` -/
def P15859701757376965801.Spec : Prop :=
  ∀ n, P15859701757376965801.a n = A229423 (n + 1)

end A229423

/-! ## A229423.P12771585362409176014

`A252815(n+1)+A074909(A167614(n+2))`
-/

namespace A229423.P12771585362409176014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) + A074909 (A167614 (n + 2)).toNat

end

end A229423.P12771585362409176014

namespace A229423

/-- `A252815(n+1)+A074909(A167614(n+2))` -/
def P12771585362409176014.Spec : Prop :=
  ∀ n, P12771585362409176014.a n = A229423 (n + 1)

end A229423

/-! ## A229423.P5521860611204311474

`A252815(n+1)+A014410(A000096(n+2))`
-/

namespace A229423.P5521860611204311474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) + A014410 (A000096 (n + 2)).toNat

end

end A229423.P5521860611204311474

namespace A229423

/-- `A252815(n+1)+A014410(A000096(n+2))` -/
def P5521860611204311474.Spec : Prop :=
  ∀ n, P5521860611204311474.a n = A229423 (n + 1)

end A229423

/-! ## A229423.P455251815399620598

`A252815(n+1)+A135278(A046691(n+2))`
-/

namespace A229423.P455251815399620598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) + A135278 (A046691 (n + 2)).toNat

end

end A229423.P455251815399620598

namespace A229423

/-- `A252815(n+1)+A135278(A046691(n+2))` -/
def P455251815399620598.Spec : Prop :=
  ∀ n, P455251815399620598.a n = A229423 (n + 1)

end A229423

/-!
# A229424: Number of n X 4 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, rows lexicographically nondecreasing, and columns lexicographically nonincreasing.

The programs for A229424, there is no canonical definition to state claims against.
-/

/-! ## A229424.P6547246269612727551

`A252816(n+1)+A063258(n)+1`
-/

namespace A229424.P6547246269612727551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252816 (n + 1) + (A063258 n + 1)

end

end A229424.P6547246269612727551

/-! ## A229424.P6991522005024592222

`A166805(n+1)+A252816(n+1)+2`
-/

namespace A229424.P6991522005024592222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166805 (n + 1) + (A252816 (n + 1) + 2)

end

end A229424.P6991522005024592222

/-! ## A229424.P1835260370372394631

`A252816(n+1)+A000332(n+5)`
-/

namespace A229424.P1835260370372394631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252816 (n + 1) + A000332 (n + 5)

end

end A229424.P1835260370372394631

/-! ## A229424.P488525482206573141

`A252816(n+1)+A007318(A052905(n+3))`
-/

namespace A229424.P488525482206573141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252816 (n + 1) + A007318 (A052905 (n + 3)).toNat

end

end A229424.P488525482206573141

/-! ## A229424.P13534873889162650528

`A252816(n+1)+A007318(A027379(n+4)-2)`
-/

namespace A229424.P13534873889162650528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252816 (n + 1) + A007318 (A027379 (n + 4) - 2).toNat

end

end A229424.P13534873889162650528

/-! ## A229424.P369555481737576624

`A252816(n+1)+A007318(A056115(n+1)+10)`
-/

namespace A229424.P369555481737576624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252816 (n + 1) + A007318 (A056115 (n + 1) + 10).toNat

end

end A229424.P369555481737576624

/-!
# A229425: Number of n X 5 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, rows lexicographically nondecreasing, and columns lexicographically nonincreasing.

The programs for A229425, there is no canonical definition to state claims against.
-/

/-! ## A229425.P7223555931933029411

`A252817(n+1)+A062988(n)+1`
-/

namespace A229425.P7223555931933029411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252817 (n + 1) + (A062988 n + 1)

end

end A229425.P7223555931933029411

/-! ## A229425.P14452200674773301419

`A252817(n+1)+Δ[A062989(n)]+1`
-/

namespace A229425.P14452200674773301419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252817 (n + 1) + (f1 (n + 1) - f1 n + 1)

end

end A229425.P14452200674773301419

/-! ## A229425.P14129006819244585981

`A252817(n+1)+Δ[A124089(n+6)]`
-/

namespace A229425.P14129006819244585981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252817 (n + 1) + (f1 (n + 1) - f1 n)

end

end A229425.P14129006819244585981

/-! ## A229425.P2358939262127277334

`A252873(n+1)+A062988(n)+Δ[A124089(n+6)]`
-/

namespace A229425.P2358939262127277334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252873 (n + 1) + (A062988 n + (f1 (n + 1) - f1 n))

end

end A229425.P2358939262127277334

/-! ## A229425.P13963446255908128845

`A252825(n+1)+Δ[A124089(n+6)]-A252973(n+1)`
-/

namespace A229425.P13963446255908128845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252825 (n + 1) + (f1 (n + 1) - f1 n - A252973 (n + 1))

end

end A229425.P13963446255908128845

/-! ## A229425.P5591294896822986710

`A252817(n+1)+A007318(A055999(n+4))`
-/

namespace A229425.P5591294896822986710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252817 (n + 1) + A007318 (A055999 (n + 4)).toNat

end

end A229425.P5591294896822986710

/-! ## A229425.P4882988595987829167

`A252820(A167499(n+3))+Δ[A124089(n+6)]`
-/

namespace A229425.P4882988595987829167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (A167499 (n + 3)).toNat + (f1 (n + 1) - f1 n)

end

end A229425.P4882988595987829167

/-!
# A229426: Number of n X 6 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, rows lexicographically nondecreasing, and columns lexicographically nonincreasing.

The programs for A229426, there is no canonical definition to state claims against.
-/

/-! ## A229426.P14576907816192761082

`A252818(n+1)+Δ[A000580(n+7)]`
-/

namespace A229426.P14576907816192761082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252818 (n + 1) + (f1 (n + 1) - f1 n)

end

end A229426.P14576907816192761082

/-! ## A229426.P3618896385342661213

`A252818(n+1)+Δ[A124090(n+7)]`
-/

namespace A229426.P3618896385342661213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124090 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252818 (n + 1) + (f1 (n + 1) - f1 n)

end

end A229426.P3618896385342661213

/-! ## A229426.P17933081218873995299

`A252826(n+1)+Δ[A000580(n+7)]-A252974(n+1)`
-/

namespace A229426.P17933081218873995299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252826 (n + 1) + (f1 (n + 1) - f1 n - A252974 (n + 1))

end

end A229426.P17933081218873995299

/-! ## A229426.P17573249826268435783

`A252826(n+1)+Δ[A124090(n+7)]-A252974(n+1)`
-/

namespace A229426.P17573249826268435783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124090 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252826 (n + 1) + (f1 (n + 1) - f1 n - A252974 (n + 1))

end

end A229426.P17573249826268435783

/-! ## A229426.P8624645313000371864

`Δ[A000580(n+7)]+A166810(n+1)+A252874(n+1)+1`
-/

namespace A229426.P8624645313000371864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A166810 (n + 1) + (A252874 (n + 1) + 1))

end

end A229426.P8624645313000371864

/-! ## A229426.P722805665554381706

`Δ[A124090(n+7)]+A166810(n+1)+A252874(n+1)+1`
-/

namespace A229426.P722805665554381706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124090 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A166810 (n + 1) + (A252874 (n + 1) + 1))

end

end A229426.P722805665554381706

/-!
# A229427: Number of nX7 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, rows lexicographically nondecreasing, and columns lexicographically nonincreasing.

The programs for A229427, there is no canonical definition to state claims against.
-/

/-! ## A229427.P3068100038816620565

`A252819(n+1)+Δ[A165618(n)]`
-/

namespace A229427.P3068100038816620565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252819 (n + 1) + (f1 (n + 1) - f1 n)

end

end A229427.P3068100038816620565

/-! ## A229427.P10593268148768442554

`A252819(n+1)+Δ[A000581(n+8)]`
-/

namespace A229427.P10593268148768442554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252819 (n + 1) + (f1 (n + 1) - f1 n)

end

end A229427.P10593268148768442554

/-! ## A229427.P2281917328264970731

`Δ[A165618(n)]+A166812(n+1)+A252875(n+1)+1`
-/

namespace A229427.P2281917328264970731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A166812 (n + 1) + (A252875 (n + 1) + 1))

end

end A229427.P2281917328264970731

/-! ## A229427.P14135437739983628669

`A229428(A374008(n+1))`
-/

namespace A229427.P14135437739983628669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229428 (A374008 (n + 1)).toNat

end

end A229427.P14135437739983628669

/-! ## A229427.P3882139111148930918

`A229428(A166136(n+5)+1)`
-/

namespace A229427.P3882139111148930918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229428 (A166136 (n + 5) + 1).toNat

end

end A229427.P3882139111148930918

/-!
# A229428: T(n,k) = Number of n X k 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, rows lexicographically nondecreasing, and columns lexicographically nonincreasing.

The programs for A229428, there is no canonical definition to state claims against.
-/

/-! ## A229428.P17620002594426057079

`A252820(n+1)+A014430(n)+1`
-/

namespace A229428.P17620002594426057079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (n + 1) + (A014430 n + 1)

end

end A229428.P17620002594426057079

/-! ## A229428.P3046613617261412940

`A252820(n+1)+A014410(n+2)`
-/

namespace A229428.P3046613617261412940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (n + 1) + A014410 (n + 2)

end

end A229428.P3046613617261412940

/-! ## A229428.P11705507055720607443

`A252820(n+1)+sqrt(A014719(n+2))`
-/

namespace A229428.P11705507055720607443
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252820 (n + 1) : ℝ) + Real.sqrt (A014719 (n + 2) : ℝ)

end

end A229428.P11705507055720607443

/-! ## A229428.P3579281569579861723

`A252820(n+1)+A074909(A014132(n+1))`
-/

namespace A229428.P3579281569579861723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (n + 1) + A074909 (A014132 (n + 1)).toNat

end

end A229428.P3579281569579861723

/-! ## A229428.P15074750652608600448

`A252820(n+1)+A135278(A007401(n+1))`
-/

namespace A229428.P15074750652608600448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (n + 1) + A135278 (A007401 (n + 1)).toNat

end

end A229428.P15074750652608600448

/-! ## A229428.P13423121461969073184

`A252876(n+1)+A014430(n)+A014410(n+2)`
-/

namespace A229428.P13423121461969073184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (n + 1) + (A014430 n + A014410 (n + 2))

end

end A229428.P13423121461969073184

/-! ## A229428.P651875627556256165

`A252828(n+1)+A014410(n+2)-A252976(n+1)`
-/

namespace A229428.P651875627556256165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (n + 1) + (A014410 (n + 2) - A252976 (n + 1))

end

end A229428.P651875627556256165

/-!
# A229430: Number of ways to label the cells of a 2 X n grid such that no (orthogonally) adjacent cells have adjacent labels.

The programs for A229430, there is no canonical definition to state claims against.
-/

/-! ## A229430.P17493402117383756532

`A229429(∑[n+3])`
-/

namespace A229430.P17493402117383756532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229429 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229430.P17493402117383756532

/-! ## A229430.P6014703808761817022

`A229429(A141214(n))+A011731(n)`
-/

namespace A229430.P6014703808761817022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229429 (A141214 n).toNat + A011731 n

end

end A229430.P6014703808761817022

/-! ## A229430.P10536780345512110528

`A229429(A141214(n))*A229429(n)`
-/

namespace A229430.P10536780345512110528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229429 (A141214 n).toNat * A229429 n

end

end A229430.P10536780345512110528

/-!
# A229431: 

The programs for A229431, there is no canonical definition to state claims against.
-/

/-! ## A229431.P4281027651365265939

`A229437((n+1)²+n²)`
-/

namespace A229431.P4281027651365265939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 ((n + 1) ^ 2 + n ^ 2)

end

end A229431.P4281027651365265939

/-!
# A229432: Number of n X 2 0..6 arrays of the sum of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 3 0..2 array.

The programs for A229432, there is no canonical definition to state claims against.
-/

/-! ## A229432.P6974031888885045390

`A229437(∑[n+1]+2)`
-/

namespace A229432.P6974031888885045390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229432.P6974031888885045390

/-! ## A229432.P349648501082337008

`record[A229437(lt[A157156(n), n])]`
-/

namespace A229432.P349648501082337008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157156 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229432.P349648501082337008

/-! ## A229432.P5149661315874857719

`record[A229437(Δ[A003453(n+5)])]`
-/

namespace A229432.P5149661315874857719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229432.P5149661315874857719

/-! ## A229432.P1933739496975672910

`A229437(A000096(n+1))+C(n, 64)²`
-/

namespace A229432.P1933739496975672910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (A000096 (n + 1)).toNat + (Nat.choose n 64 ^ 2 : ℤ)

end

end A229432.P1933739496975672910

/-! ## A229432.P17521008308756089772

`lcm(A229437(A000096(n+1)), A308778(n²))`
-/

namespace A229432.P17521008308756089772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A229437 (A000096 (n + 1)).toNat) (A308778 (n ^ 2))

end

end A229432.P17521008308756089772

/-!
# A229433: Number of nX3 0..6 arrays of the sum of the corresponding element, the element to the east and the element to the south in a larger (n+1)X4 0..2 array.

The programs for A229433, there is no canonical definition to state claims against.
-/

/-! ## A229433.P3619693461798859466

`A229437(∑[n+2]+4)`
-/

namespace A229433.P3619693461798859466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229433.P3619693461798859466

/-! ## A229433.P579258791492688253

`or(1, A229437(A167614(n+1)))`
-/

namespace A229433.P579258791492688253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A229437 (A167614 (n + 1)).toNat)

end

end A229433.P579258791492688253

/-! ## A229433.P5452658146148927392

`A229437(A167614(n+1))+A025442(n)`
-/

namespace A229433.P5452658146148927392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (A167614 (n + 1)).toNat + A025442 n

end

end A229433.P5452658146148927392

/-! ## A229433.P8008404968236788098

`A229437(A167614(n+1))+A185284(n)`
-/

namespace A229433.P8008404968236788098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (A167614 (n + 1)).toNat + A185284 n

end

end A229433.P8008404968236788098

/-! ## A229433.P6625783467037663877

`A229437(A167614(n+1))+A161267(n+1)`
-/

namespace A229433.P6625783467037663877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (A167614 (n + 1)).toNat + A161267 (n + 1)

end

end A229433.P6625783467037663877

/-!
# A229434: Number of n X 4 0..6 arrays of the sum of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 5 0..2 array.

The programs for A229434, there is no canonical definition to state claims against.
-/

/-! ## A229434.P12129250460389882211

`A229437(A141214(n)+7)`
-/

namespace A229434.P12129250460389882211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (A141214 n + 7).toNat

end

end A229434.P12129250460389882211

/-! ## A229434.P18068121414123875762

`A229437(A167614(n+2)+1)`
-/

namespace A229434.P18068121414123875762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (A167614 (n + 2) + 1).toNat

end

end A229434.P18068121414123875762

/-! ## A229434.P2185074225378316152

`A229437(eq[5, A131818(n+1)])`
-/

namespace A229434.P2185074225378316152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229434.P2185074225378316152

/-! ## A229434.P5492530604506766852

`A229437(A155212(n)+5)`
-/

namespace A229434.P5492530604506766852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (A155212 n + 5).toNat

end

end A229434.P5492530604506766852

/-! ## A229434.P12166966529079799031

`A229437(eq[2, A152157(n)])`
-/

namespace A229434.P12166966529079799031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229434.P12166966529079799031

/-!
# A229435: 

The programs for A229435, there is no canonical definition to state claims against.
-/

/-! ## A229435.P17898605483923575617

`A229437(eq[6, A131818(n+1)])`
-/

namespace A229435.P17898605483923575617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229435.P17898605483923575617

/-! ## A229435.P752889666379275265

`A229437(eq[3, A152157(n)])`
-/

namespace A229435.P752889666379275265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229435.P752889666379275265

/-! ## A229435.P11787144859091490207

`A229437(Δ[A023545(n+1)])`
-/

namespace A229435.P11787144859091490207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (f1 (n + 1) - f1 n).toNat

end

end A229435.P11787144859091490207

/-! ## A229435.P14540857110266917364

`A229437(eq[8, A057728(n+1)])`
-/

namespace A229435.P14540857110266917364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229435.P14540857110266917364

/-!
# A229436: 

The programs for A229436, there is no canonical definition to state claims against.
-/

/-! ## A229436.P15127193904288151355

`A229437(eq[7, A131818(n+1)])`
-/

namespace A229436.P15127193904288151355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229436.P15127193904288151355

/-! ## A229436.P10157776664884137647

`A229437(A000217(n+6)-5)`
-/

namespace A229436.P10157776664884137647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (A000217 (n + 6) - 5).toNat

end

end A229436.P10157776664884137647

/-! ## A229436.P5886374737971227721

`A229437(eq[16, A057728(n+1)])`
-/

namespace A229436.P5886374737971227721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229436.P5886374737971227721

/-!
# A229438: Number of n X n 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and rows and columns lexicographically nondecreasing.

The programs for A229438, there is no canonical definition to state claims against.
-/

/-! ## A229438.P13061272674533046253

`A229445(∑[4*n]+1)`
-/

namespace A229438.P13061272674533046253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229438.P13061272674533046253

/-! ## A229438.P2540326878785909169

`record[A229445(Δ[A235355(n)])]`
-/

namespace A229438.P2540326878785909169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229438.P2540326878785909169

/-! ## A229438.P13152484949191262215

`record[A229445(A330613(n+1))]`
-/

namespace A229438.P13152484949191262215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229438.P13152484949191262215

/-! ## A229438.P9871239082749070375

`A229445(A001844(n))+char[16]`
-/

namespace A229438.P9871239082749070375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A229438.P9871239082749070375

/-! ## A229438.P573393512747604526

`record[gcd(A037012(n), A229445(n+1))]`
-/

namespace A229438.P573393512747604526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A229445 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229438.P573393512747604526

/-!
# A229439: Number of n X 2 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and rows and columns lexicographically nondecreasing.

The programs for A229439, the canonical program `A229439.P3133838386614860187` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229439 has offset 1).

The definition of A229439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229439.P3133838386614860187

`∑[∑[∑[n]]+2]+2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229439

/-- `∑[∑[∑[n]]+2]+2` -/
def P3133838386614860187.Spec : Prop :=
  ∀ n, (P3133838386614860187.a n : ℤ) = A229439 (n + 1)

theorem P3133838386614860187.correct : P3133838386614860187.Spec := by
  intro n
  simp only [A229439, Nat.add_sub_cancel]

end A229439

/-! ## A229439.P16126130000170096777

`∑[∑[n²-a(n-1)]]` with `a(0)=4, a(1)=-1, a(2)=3`
-/

namespace A229439.P16126130000170096777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, -1, 3] fun n f2 =>
  (n ^ 2 : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229439.P16126130000170096777

namespace A229439

/-- `∑[∑[n²-a(n-1)]]` -/
def P16126130000170096777.Spec : Prop :=
  ∀ n, P16126130000170096777.a n = A229439 (n + 1)

end A229439

/-! ## A229439.P8696558550640202326

`Δ[(n+1)²+C(n+3, 5)+n]`
-/

namespace A229439.P8696558550640202326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + (Nat.choose (n + 3) 5 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A229439.P8696558550640202326

namespace A229439

/-- `Δ[(n+1)²+C(n+3, 5)+n]` -/
def P8696558550640202326.Spec : Prop :=
  ∀ n, P8696558550640202326.a n = A229439 (n + 1)

end A229439

/-! ## A229439.P16450583679259031341

`Δ[A154322(n)+(n+1)²]`
-/

namespace A229439.P16450583679259031341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154322 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229439.P16450583679259031341

namespace A229439

/-- `Δ[A154322(n)+(n+1)²]` -/
def P16450583679259031341.Spec : Prop :=
  ∀ n, P16450583679259031341.a n = A229439 (n + 1)

end A229439

/-! ## A229439.P787841860945011000

`Δ[A353232(n+2)]`
-/

namespace A229439.P787841860945011000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353232 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229439.P787841860945011000

namespace A229439

/-- `Δ[A353232(n+2)]` -/
def P787841860945011000.Spec : Prop :=
  ∀ n, P787841860945011000.a n = A229439 (n + 1)

end A229439

/-! ## A229439.P10799906348053096686

`Δ[A161701(n+2)+(n+1)²]`
-/

namespace A229439.P10799906348053096686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 (n + 2) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229439.P10799906348053096686

namespace A229439

/-- `Δ[A161701(n+2)+(n+1)²]` -/
def P10799906348053096686.Spec : Prop :=
  ∀ n, P10799906348053096686.a n = A229439 (n + 1)

end A229439

/-! ## A229439.P12205393112264320018

`Δ[A188555(n+1)+A000389(n+2)]`
-/

namespace A229439.P12205393112264320018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188555 (n + 1) + A000389 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229439.P12205393112264320018

namespace A229439

/-- `Δ[A188555(n+1)+A000389(n+2)]` -/
def P12205393112264320018.Spec : Prop :=
  ∀ n, P12205393112264320018.a n = A229439 (n + 1)

end A229439

/-!
# A229440: Number of n X 3 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and rows and columns lexicographically nondecreasing.

The programs for A229440, there is no canonical definition to state claims against.
-/

/-! ## A229440.P5550290293321830520

`A229445(∑[n+3]+1)`
-/

namespace A229440.P5550290293321830520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229440.P5550290293321830520

/-! ## A229440.P2122265414153915093

`or(char[3], A229445(A034856(n+2)))`
-/

namespace A229440.P2122265414153915093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A229445 (A034856 (n + 2)).toNat)

end

end A229440.P2122265414153915093

/-! ## A229440.P5139205535317389520

`A264668(n)+A229445(A034856(n+2))`
-/

namespace A229440.P5139205535317389520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A229445 (A034856 (n + 2)).toNat

end

end A229440.P5139205535317389520

/-! ## A229440.P7367349901512586926

`A229445(A034856(n+2))+A000038(n+1)`
-/

namespace A229440.P7367349901512586926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A034856 (n + 2)).toNat + A000038 (n + 1)

end

end A229440.P7367349901512586926

/-! ## A229440.P3765235278369274860

`A229445(A034856(n+2))%A000051(n+4)`
-/

namespace A229440.P3765235278369274860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229445 (A034856 (n + 2)).toNat) (A000051 (n + 4))

end

end A229440.P3765235278369274860

/-!
# A229441: Number of n X 4 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and rows and columns lexicographically nondecreasing.

The programs for A229441, there is no canonical definition to state claims against.
-/

/-! ## A229441.P4940496514314622526

`A229445(∑[n+4]+3)`
-/

namespace A229441.P4940496514314622526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A229441.P4940496514314622526

/-! ## A229441.P12552710611538263665

`or(char[2], A229445(A141214(n+1)))`
-/

namespace A229441.P12552710611538263665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A229445 (A141214 (n + 1)).toNat)

end

end A229441.P12552710611538263665

/-! ## A229441.P15333028558929888683

`A229445(A141214(n+1))%(A000040(n+1)^5)`
-/

namespace A229441.P15333028558929888683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229445 (A141214 (n + 1)).toNat) (A000040 (n + 1) ^ 5)

end

end A229441.P15333028558929888683

/-!
# A229442: Number of n X 5 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and rows and columns lexicographically nondecreasing.

The programs for A229442, there is no canonical definition to state claims against.
-/

/-! ## A229442.P10706948506373532742

`A229445(∑[n+5]+6)`
-/

namespace A229442.P10706948506373532742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A229442.P10706948506373532742

/-! ## A229442.P13802460724227238486

`A229445(A046691(n+3))%A268634(n+1)`
-/

namespace A229442.P13802460724227238486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229445 (A046691 (n + 3)).toNat) (A268634 (n + 1))

end

end A229442.P13802460724227238486

/-! ## A229442.P10199429551015043037

`A057427(2*(n+2))*A229445(A046691(n+3))`
-/

namespace A229442.P10199429551015043037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 2)) * A229445 (A046691 (n + 3)).toNat

end

end A229442.P10199429551015043037

/-!
# A229443: Number of nX6 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and rows and columns lexicographically nondecreasing.

The programs for A229443, there is no canonical definition to state claims against.
-/

/-! ## A229443.P341555741245127036

`A229445(A052905(n+3))`
-/

namespace A229443.P341555741245127036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A052905 (n + 3)).toNat

end

end A229443.P341555741245127036

/-! ## A229443.P10991274088360556282

`A229445(A056119(n)+16)`
-/

namespace A229443.P10991274088360556282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A056119 n + 16).toNat

end

end A229443.P10991274088360556282

/-! ## A229443.P1825902926433438949

`A229445(eq[3, A219347(n)])`
-/

namespace A229443.P1825902926433438949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229443.P1825902926433438949

/-! ## A229443.P3378483146065952099

`A229445(eq[5, A193592(n)])`
-/

namespace A229443.P3378483146065952099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229443.P3378483146065952099

/-! ## A229443.P6860715110163139964

`A229445(A055999(n+3)+1)`
-/

namespace A229443.P6860715110163139964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A055999 (n + 3) + 1).toNat

end

end A229443.P6860715110163139964

/-!
# A229444: Number of n X 7 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and rows and columns lexicographically nondecreasing.

The programs for A229444, there is no canonical definition to state claims against.
-/

/-! ## A229444.P11697468458788641512

`A229445(A055999(n+4))`
-/

namespace A229444.P11697468458788641512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A055999 (n + 4)).toNat

end

end A229444.P11697468458788641512

/-! ## A229444.P12150435534651555767

`A229445(eq[4, A219347(n)])`
-/

namespace A229444.P12150435534651555767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229444.P12150435534651555767

/-! ## A229444.P15784634437858810582

`A229445(eq[6, A193592(n)])`
-/

namespace A229444.P15784634437858810582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229444.P15784634437858810582

/-! ## A229444.P13998595261722871721

`A229445(Δ[A023551(n+2)])`
-/

namespace A229444.P13998595261722871721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (f1 (n + 1) - f1 n).toNat

end

end A229444.P13998595261722871721

/-! ## A229444.P6385218259119928191

`A229445(A052905(n+4)-1)`
-/

namespace A229444.P6385218259119928191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A052905 (n + 4) - 1).toNat

end

end A229444.P6385218259119928191

/-!
# A229446: Number of 3 X n 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and rows and columns lexicographically nondecreasing.

The programs for A229446, the canonical program `A229446.P16053955037318881876` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229446 has offset 1).

The definition of A229446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229446.P16053955037318881876

`∑[∑[2*n]+3]+5`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229446

/-- `∑[∑[2*n]+3]+5` -/
def P16053955037318881876.Spec : Prop :=
  ∀ n, (P16053955037318881876.a n : ℤ) = A229446 (n + 1)

theorem P16053955037318881876.correct : P16053955037318881876.Spec := by
  intro n
  simp only [A229446, Nat.add_sub_cancel]

end A229446

/-! ## A229446.P2897770920149751107

`∑[a(n-1)+n+n]` with `a(0)=8, a(1)=5`
-/

namespace A229446.P2897770920149751107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 5] fun n f1 =>
  f1 (n - 1) + (n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229446.P2897770920149751107

namespace A229446

/-- `∑[a(n-1)+n+n]` -/
def P2897770920149751107.Spec : Prop :=
  ∀ n, (P2897770920149751107.a n : ℤ) = A229446 (n + 1)

end A229446

/-! ## A229446.P12881022295302327733

`floor(a(n-1)+n²+3+n)` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A229446.P12881022295302327733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + (n ^ 2 + 3 + n)

end

end A229446.P12881022295302327733

namespace A229446

/-- `floor(a(n-1)+n²+3+n)` -/
def P12881022295302327733.Spec : Prop :=
  ∀ n, (P12881022295302327733.a n : ℤ) = A229446 (n + 1)

end A229446

/-! ## A229446.P7485221843185404166

`Δ[A006007(n)+(n+3)²]`
-/

namespace A229446.P7485221843185404166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006007 n + ((n + 3) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229446.P7485221843185404166

namespace A229446

/-- `Δ[A006007(n)+(n+3)²]` -/
def P7485221843185404166.Spec : Prop :=
  ∀ n, P7485221843185404166.a n = A229446 (n + 1)

end A229446

/-! ## A229446.P5079484001263213349

`(A033547(n+1)+n+6)%A154670(n+1)`
-/

namespace A229446.P5079484001263213349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033547 (n + 1) + (n + 6 : ℤ)) (A154670 (n + 1))

end

end A229446.P5079484001263213349

namespace A229446

/-- `(A033547(n+1)+n+6)%A154670(n+1)` -/
def P5079484001263213349.Spec : Prop :=
  ∀ n, P5079484001263213349.a n = A229446 (n + 1)

end A229446

/-! ## A229446.P11569974809268976162

`record[A218035(n+5)]`
-/

namespace A229446.P11569974809268976162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218035 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229446.P11569974809268976162

namespace A229446

/-- `record[A218035(n+5)]` -/
def P11569974809268976162.Spec : Prop :=
  ∀ n, P11569974809268976162.a n = A229446 (n + 1)

end A229446

/-! ## A229446.P15206009996707923961

`A218035(2*n+5)`
-/

namespace A229446.P15206009996707923961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218035 (2 * n + 5)

end

end A229446.P15206009996707923961

namespace A229446

/-- `A218035(2*n+5)` -/
def P15206009996707923961.Spec : Prop :=
  ∀ n, P15206009996707923961.a n = A229446 (n + 1)

end A229446

/-! ## A229446.P5764363713389535735

`A307717(A004766(n+2))`
-/

namespace A229446.P5764363713389535735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307717 (A004766 (n + 2)).toNat

end

end A229446.P5764363713389535735

namespace A229446

/-- `A307717(A004766(n+2))` -/
def P5764363713389535735.Spec : Prop :=
  ∀ n, P5764363713389535735.a n = A229446 (n + 1)

end A229446

/-! ## A229446.P16757706393706123955

`A000027(A167499(n)+∑[n²+2])`
-/

namespace A229446.P16757706393706123955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A167499 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A229446.P16757706393706123955

namespace A229446

/-- `A000027(A167499(n)+∑[n²+2])` -/
def P16757706393706123955.Spec : Prop :=
  ∀ n, P16757706393706123955.a n = A229446 (n + 1)

end A229446

/-!
# A229447: Number of 4 X n 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and rows and columns lexicographically nondecreasing.

The programs for A229447, the canonical program `A229447.P5427171376724109288` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229447 has offset 1).

The definition of A229447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229447.P5427171376724109288

`∑[∑[n+5]+n*n²+n]+7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229447

/-- `∑[∑[n+5]+n*n²+n]+7` -/
def P5427171376724109288.Spec : Prop :=
  ∀ n, (P5427171376724109288.a n : ℤ) = A229447 (n + 1)

theorem P5427171376724109288.correct : P5427171376724109288.Spec := by
  intro n
  simp only [A229447, Nat.add_sub_cancel]

end A229447

/-! ## A229447.P906294143916031557

`A229445(C(2*n+5-n, 2)-n)`
-/

namespace A229447.P906294143916031557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (Nat.choose ((2 * n + 5 : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A229447.P906294143916031557

namespace A229447

/-- `A229445(C(2*n+5-n, 2)-n)` -/
def P906294143916031557.Spec : Prop :=
  ∀ n, P906294143916031557.a n = A229447 (n + 1)

end A229447

/-! ## A229447.P11691275363662279924

`A229445(A145018(n+4))`
-/

namespace A229447.P11691275363662279924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A145018 (n + 4)).toNat

end

end A229447.P11691275363662279924

namespace A229447

/-- `A229445(A145018(n+4))` -/
def P11691275363662279924.Spec : Prop :=
  ∀ n, P11691275363662279924.a n = A229447 (n + 1)

end A229447

/-! ## A229447.P10531916245896611292

`A229445(A052905(n)+9)`
-/

namespace A229447.P10531916245896611292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A052905 n + 9).toNat

end

end A229447.P10531916245896611292

namespace A229447

/-- `A229445(A052905(n)+9)` -/
def P10531916245896611292.Spec : Prop :=
  ∀ n, P10531916245896611292.a n = A229447 (n + 1)

end A229447

/-! ## A229447.P15435117962669382943

`A229445(A166136(n+2)-2)`
-/

namespace A229447.P15435117962669382943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A166136 (n + 2) - 2).toNat

end

end A229447.P15435117962669382943

namespace A229447

/-- `A229445(A166136(n+2)-2)` -/
def P15435117962669382943.Spec : Prop :=
  ∀ n, P15435117962669382943.a n = A229447 (n + 1)

end A229447

/-!
# A229448: Number of 5 X n 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and rows and columns lexicographically nondecreasing.

The programs for A229448, there is no canonical definition to state claims against.
-/

/-! ## A229448.P14218204380232014618

`A229445(A167499(n+3))`
-/

namespace A229448.P14218204380232014618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A167499 (n + 3)).toNat

end

end A229448.P14218204380232014618

/-! ## A229448.P5498290118879793989

`A229445(A155212(n)+13)`
-/

namespace A229448.P5498290118879793989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A155212 n + 13).toNat

end

end A229448.P5498290118879793989

/-! ## A229448.P6026840649070341132

`A229445(A056000(n)+15)`
-/

namespace A229448.P6026840649070341132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A056000 n + 15).toNat

end

end A229448.P6026840649070341132

/-! ## A229448.P3352034993313698021

`A229445(∑[A020705(n)]+11)`
-/

namespace A229448.P3352034993313698021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A229448.P3352034993313698021

/-! ## A229448.P13873571342460714941

`A229445(A166136(n+3)-1)`
-/

namespace A229448.P13873571342460714941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A166136 (n + 3) - 1).toNat

end

end A229448.P13873571342460714941

/-!
# A229449: Number of 6 X n 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and rows and columns lexicographically nondecreasing.

The programs for A229449, there is no canonical definition to state claims against.
-/

/-! ## A229449.P11848934566154150606

`A229445(∑[n+5]+16)`
-/

namespace A229449.P11848934566154150606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A229449.P11848934566154150606

/-! ## A229449.P11435919186560489692

`or(char[3], A229445(A055998(n+3)+9))`
-/

namespace A229449.P11435919186560489692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A229445 (A055998 (n + 3) + 9).toNat)

end

end A229449.P11435919186560489692

/-! ## A229449.P12799457179786749496

`A229445(A000217(n+5)+6)+2-4/2`
-/

namespace A229449.P12799457179786749496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229445 (A000217 (n + 5) + 6).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A229449.P12799457179786749496

/-! ## A229449.P2458860815650506854

`A007318(C(n, 2))*A229445(A055998(n+3)+9)`
-/

namespace A229449.P2458860815650506854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A229445 (A055998 (n + 3) + 9).toNat

end

end A229449.P2458860815650506854

/-! ## A229449.P12233563506261584935

`A000041(round(n/39))*A229445(A055998(n+3)+9)`
-/

namespace A229449.P12233563506261584935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((n : ℚ) / 39)).toNat * A229445 (A055998 (n + 3) + 9).toNat

end

end A229449.P12233563506261584935

/-!
# A229450: Number of 7 X n 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and rows and columns lexicographically nondecreasing.

The programs for A229450, there is no canonical definition to state claims against.
-/

/-! ## A229450.P15305896442940220208

`A229445(A056119(n)+28)`
-/

namespace A229450.P15305896442940220208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A056119 n + 28).toNat

end

end A229450.P15305896442940220208

/-! ## A229450.P17274582254748482659

`A229445(A166136(n+5)+1)`
-/

namespace A229450.P17274582254748482659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A166136 (n + 5) + 1).toNat

end

end A229450.P17274582254748482659

/-! ## A229450.P1547521262936471093

`A229445(A000124(n+6)+6)`
-/

namespace A229450.P1547521262936471093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A000124 (n + 6) + 6).toNat

end

end A229450.P1547521262936471093

/-! ## A229450.P5887256197909894842

`A229445(A000096(n+5)+8)`
-/

namespace A229450.P5887256197909894842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A000096 (n + 5) + 8).toNat

end

end A229450.P5887256197909894842

/-! ## A229450.P6721212017513332161

`A229445(A000217(n+6)+7)`
-/

namespace A229450.P6721212017513332161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229445 (A000217 (n + 6) + 7).toNat

end

end A229450.P6721212017513332161

/-!
# A229452: G.f.: exp( Sum_{n>=1} (3*n)!/(3!*n!^3) * x^n/n ).

The programs for A229452, there is no canonical definition to state claims against.
-/

/-! ## A229452.P888543853799037673

`xor(5, A311780(A259919(n)))`
-/

namespace A229452.P888543853799037673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A311780 (A259919 n).toNat)

end

end A229452.P888543853799037673

/-!
# A229453: Number of defective 3-colorings of an n X n 0..2 array connected horizontally and vertically with exactly one mistake and colors introduced in row-major 0..2 order.

The programs for A229453, there is no canonical definition to state claims against.
-/

/-! ## A229453.P12642949935924452630

`A268632(n+1)/6`
-/

namespace A229453.P12642949935924452630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268632 (n + 1) : ℚ) / 6

end

end A229453.P12642949935924452630

/-! ## A229453.P6749922622766265299

`A229460(∑[4*n]+1)`
-/

namespace A229453.P6749922622766265299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229453.P6749922622766265299

/-! ## A229453.P8689068920517832967

`A268639(A001844(n))/6`
-/

namespace A229453.P8689068920517832967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268639 (A001844 n).toNat : ℚ) / 6

end

end A229453.P8689068920517832967

/-! ## A229453.P17676260248195087174

`A268639(A046092(n)+1)/6`
-/

namespace A229453.P17676260248195087174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268639 (A046092 n + 1).toNat : ℚ) / 6

end

end A229453.P17676260248195087174

/-! ## A229453.P7462733741883682194

`record[A003982(n)*A229460(n+1)]`
-/

namespace A229453.P7462733741883682194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A229460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229453.P7462733741883682194

/-!
# A229454: Number of defective 3-colorings of an n X 3 0..2 array connected horizontally and vertically with exactly one mistake and colors introduced in row-major 0..2 order.

The programs for A229454, the canonical program `A229454.P15708321647769474842` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229454 has offset 1).

The definition of A229454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229454.P15708321647769474842

`10*a(n-1)-29*a(n-2)+20*a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=20, a(2)=140, a(3)=863`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229454

/-- `10*a(n-1)-29*a(n-2)+20*a(n-3)-4*a(n-4)` -/
def P15708321647769474842.Spec : Prop :=
  ∀ n, P15708321647769474842.a n = A229454 (n + 1)

theorem P15708321647769474842.correct : P15708321647769474842.Spec := by
  intro n
  simp only [A229454, Nat.add_sub_cancel]

end A229454

/-! ## A229454.P11049611354439794989

`A268634(n+1)/6`
-/

namespace A229454.P11049611354439794989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268634 (n + 1) : ℚ) / 6

end

end A229454.P11049611354439794989

namespace A229454

/-- `A268634(n+1)/6` -/
def P11049611354439794989.Spec : Prop :=
  ∀ n, P11049611354439794989.a n = (A229454 (n + 1) : ℚ)

end A229454

/-! ## A229454.P16027530547369531240

`6^A008683(A181758(n+1))*A268634(n+1)`
-/

namespace A229454.P16027530547369531240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ) * (A268634 (n + 1) : ℚ)

end

end A229454.P16027530547369531240

namespace A229454

/-- `6^A008683(A181758(n+1))*A268634(n+1)` -/
def P16027530547369531240.Spec : Prop :=
  ∀ n, P16027530547369531240.a n = (A229454 (n + 1) : ℚ)

end A229454

/-! ## A229454.P18443256748684643599

`A229460(∑[n+2]+4)`
-/

namespace A229454.P18443256748684643599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229454.P18443256748684643599

namespace A229454

/-- `A229460(∑[n+2]+4)` -/
def P18443256748684643599.Spec : Prop :=
  ∀ n, P18443256748684643599.a n = A229454 (n + 1)

end A229454

/-! ## A229454.P9816960624838191407

`A268639(A167614(n+1))/6`
-/

namespace A229454.P9816960624838191407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268639 (A167614 (n + 1)).toNat : ℚ) / 6

end

end A229454.P9816960624838191407

namespace A229454

/-- `A268639(A167614(n+1))/6` -/
def P9816960624838191407.Spec : Prop :=
  ∀ n, P9816960624838191407.a n = (A229454 (n + 1) : ℚ)

end A229454

/-!
# A229455: Number of defective 3-colorings of an n X 4 0..2 array connected horizontally and vertically with exactly one mistake and colors introduced in row-major 0..2 order.

The programs for A229455, there is no canonical definition to state claims against.
-/

/-! ## A229455.P7828195243592894721

`A268635(n+1)/6`
-/

namespace A229455.P7828195243592894721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268635 (n + 1) : ℚ) / 6

end

end A229455.P7828195243592894721

/-! ## A229455.P3339163149300108432

`A229460(A374004(n+1))`
-/

namespace A229455.P3339163149300108432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (A374004 (n + 1)).toNat

end

end A229455.P3339163149300108432

/-! ## A229455.P15348925929755761800

`A229460(A052905(n)+9)`
-/

namespace A229455.P15348925929755761800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (A052905 n + 9).toNat

end

end A229455.P15348925929755761800

/-! ## A229455.P587060676715026422

`A229460(A055999(n)+10)`
-/

namespace A229455.P587060676715026422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (A055999 n + 10).toNat

end

end A229455.P587060676715026422

/-! ## A229455.P13756471892919894040

`A229460(A167614(n+2)+1)`
-/

namespace A229455.P13756471892919894040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (A167614 (n + 2) + 1).toNat

end

end A229455.P13756471892919894040

/-!
# A229456: Number of defective 3-colorings of an n X 5 0..2 array connected horizontally and vertically with exactly one mistake and colors introduced in row-major 0..2 order.

The programs for A229456, there is no canonical definition to state claims against.
-/

/-! ## A229456.P15342892171720201682

`A268636(n+1)/6`
-/

namespace A229456.P15342892171720201682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268636 (n + 1) : ℚ) / 6

end

end A229456.P15342892171720201682

/-! ## A229456.P10990570762151128643

`A229460(A374005(n+1))`
-/

namespace A229456.P10990570762151128643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (A374005 (n + 1)).toNat

end

end A229456.P10990570762151128643

/-! ## A229456.P2618908071606703981

`A229460(A167499(n+3))`
-/

namespace A229456.P2618908071606703981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (A167499 (n + 3)).toNat

end

end A229456.P2618908071606703981

/-! ## A229456.P6141549813302753263

`A268639(A155212(n)+13)/6`
-/

namespace A229456.P6141549813302753263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268639 (A155212 n + 13).toNat : ℚ) / 6

end

end A229456.P6141549813302753263

/-! ## A229456.P9657754410775617939

`A229460(C(n+5, 2)+n+1)`
-/

namespace A229456.P9657754410775617939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (Nat.choose (n + 5) 2 + n + 1)

end

end A229456.P9657754410775617939

/-!
# A229457: Number of defective 3-colorings of an nX6 0..2 array connected horizontally and vertically with exactly one mistake and colors introduced in row-major 0..2 order.

The programs for A229457, there is no canonical definition to state claims against.
-/

/-! ## A229457.P11634586153814536379

`A268637(n+1)/6`
-/

namespace A229457.P11634586153814536379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268637 (n + 1) : ℚ) / 6

end

end A229457.P11634586153814536379

/-! ## A229457.P5136019658632681199

`A229460(A374007(n+1))`
-/

namespace A229457.P5136019658632681199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (A374007 (n + 1)).toNat

end

end A229457.P5136019658632681199

/-! ## A229457.P5357648392553027167

`A229460(A166136(n+4))`
-/

namespace A229457.P5357648392553027167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (A166136 (n + 4)).toNat

end

end A229457.P5357648392553027167

/-! ## A229457.P6597857283362808057

`A229460(eq[7, A131818(n+1)])`
-/

namespace A229457.P6597857283362808057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229457.P6597857283362808057

/-! ## A229457.P18113971455601354944

`A229460(A052905(n+3))`
-/

namespace A229457.P18113971455601354944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (A052905 (n + 3)).toNat

end

end A229457.P18113971455601354944

/-!
# A229458: Number of defective 3-colorings of an n X 7 0..2 array connected horizontally and vertically with exactly one mistake and colors introduced in row-major 0..2 order.

The programs for A229458, there is no canonical definition to state claims against.
-/

/-! ## A229458.P14896093638895879400

`A268638(n+1)/6`
-/

namespace A229458.P14896093638895879400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268638 (n + 1) : ℚ) / 6

end

end A229458.P14896093638895879400

/-! ## A229458.P14950064878984295951

`A229460(A374008(n+1))`
-/

namespace A229458.P14950064878984295951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (A374008 (n + 1)).toNat

end

end A229458.P14950064878984295951

/-! ## A229458.P14207079180285347790

`A229460(eq[8, A131818(n+1)])`
-/

namespace A229458.P14207079180285347790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229458.P14207079180285347790

/-! ## A229458.P1044580650782218820

`A229460(A055999(n+4))`
-/

namespace A229458.P1044580650782218820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (A055999 (n + 4)).toNat

end

end A229458.P1044580650782218820

/-! ## A229458.P9046408336453776215

`A229460(eq[4, A219347(n)])`
-/

namespace A229458.P9046408336453776215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229458.P9046408336453776215

/-!
# A229459: Number of defective 3-colorings of an n X 8 0..2 array connected horizontally and vertically with exactly one mistake and colors introduced in row-major 0..2 order.

The programs for A229459, there is no canonical definition to state claims against.
-/

/-! ## A229459.P7404243125775845170

`A229460(A374009(n+1))`
-/

namespace A229459.P7404243125775845170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (A374009 (n + 1)).toNat

end

end A229459.P7404243125775845170

/-! ## A229459.P10189451331667757467

`A229460(eq[9, A131818(n+1)])`
-/

namespace A229459.P10189451331667757467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229459.P10189451331667757467

/-! ## A229459.P13680955248186629984

`A229460(eq[5, A219347(n)])`
-/

namespace A229459.P13680955248186629984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229459.P13680955248186629984

/-! ## A229459.P12015439480598930892

`A229460(eq[7, A193592(n)])`
-/

namespace A229459.P12015439480598930892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229459.P12015439480598930892

/-! ## A229459.P3483696348770016851

`A229460(eq[8, A348422(n+1)])`
-/

namespace A229459.P3483696348770016851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229459.P3483696348770016851

/-!
# A229460: T(n,k) = number of defective 3-colorings of an n X k 0..2 array connected horizontally and vertically with exactly one mistake and colors introduced in row-major 0..2 order.

The programs for A229460, there is no canonical definition to state claims against.
-/

/-! ## A229460.P17717743363593876484

`ceil(A268639(n+1)/6)`
-/

namespace A229460.P17717743363593876484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268639 (n + 1) : ℚ) / 6⌉

end

end A229460.P17717743363593876484

/-! ## A229460.P11592198519122467546

`round(A268639(n+1)/A040006(n))`
-/

namespace A229460.P11592198519122467546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A268639 (n + 1) : ℚ) / (A040006 n : ℚ))

end

end A229460.P11592198519122467546

/-! ## A229460.P16431409543525311288

`round(n*A268639(n+1)/A008458(n))`
-/

namespace A229460.P16431409543525311288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * ((A268639 (n + 1) : ℚ) / (A008458 n : ℚ)))

end

end A229460.P16431409543525311288

/-! ## A229460.P11050255950476501225

`round(A268639(n+1)/A267884(A008458(n)))`
-/

namespace A229460.P11050255950476501225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A268639 (n + 1) : ℚ) / (A267884 (A008458 n).toNat : ℚ))

end

end A229460.P11050255950476501225

/-! ## A229460.P17009992483102841524

`round(A268639(n+1)/6)%A000079(n)`
-/

namespace A229460.P17009992483102841524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A268639 (n + 1) : ℚ) / 6)) (A000079 n)

end

end A229460.P17009992483102841524

/-!
# A229461: Numbers k such that there is no convex pentagon that can be decomposed into k pairwise congruent regular equilateral triangles.

The programs for A229461, there is no canonical definition to state claims against.
-/

/-! ## A229461.P10427906188632366819

`filter[A000926(n+1), A071374(#)]`
-/

namespace A229461.P10427906188632366819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A229461.P10427906188632366819

/-! ## A229461.P13965766427366224647

`∩[A000378(n+1), A000926(n+1)]`
-/

namespace A229461.P13965766427366224647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229461.P13965766427366224647

/-! ## A229461.P8427615434490820177

`∩[eq[0, A290870(n+1)]+1, A000378(n+1)]`
-/

namespace A229461.P8427615434490820177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A229461.P8427615434490820177

/-! ## A229461.P4783959648378576471

`∩[A000926(n+1), comp[A229462(n+1)]]`
-/

namespace A229461.P4783959648378576471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229462 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A229461.P4783959648378576471

/-! ## A229461.P18016568689424704995

`A026501(A032798(n+1)%A122232(n+1))`
-/

namespace A229461.P18016568689424704995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026501 (Int.tmod (A032798 (n + 1)) (A122232 (n + 1))).toNat

end

end A229461.P18016568689424704995

/-!
# A229462: Idoneal numbers (A000926) that are not pentagon exception numbers (A229461).

The programs for A229462, there is no canonical definition to state claims against.
-/

/-! ## A229462.P13549314728311799056

`ogf((7+15x)/(1-4x^2))`
-/

namespace A229462.P13549314728311799056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 15] [1, 0, -4] n

end

end A229462.P13549314728311799056

/-!
# A229463: Expansion of g.f. 1/((1-x)^2*(1-26*x)).

The programs for A229463, the canonical program `A229463.P6364016933948918802` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229463 has offset 0).

The definition of A229463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-28x+53x^2-26x^3))` (program `A229463.P6364016933948918802`, by `A229463.P6364016933948918802.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229463.P6364016933948918802

`ogf(1/(1-28x+53x^2-26x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229463

/-- `ogf(1/(1-28x+53x^2-26x^3))` -/
def P6364016933948918802.Spec : Prop :=
  ∀ n, P6364016933948918802.a n = A229463 n

theorem P6364016933948918802.correct : P6364016933948918802.Spec := by
  intro n
  simp only [A229463]

end A229463

/-! ## A229463.P17995149532216201545

`28*a(n-1)-53*a(n-2)+26*a(n-3)` with `a(0)=1, a(1)=28, a(2)=731`
-/

namespace A229463.P17995149532216201545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 28, 731] fun n a =>
  28 * a (n - 1) - 53 * a (n - 2) + 26 * a (n - 3)

end

end A229463.P17995149532216201545

namespace A229463

/-- `28*a(n-1)-53*a(n-2)+26*a(n-3)` -/
def P17995149532216201545.Spec : Prop :=
  ∀ n, P17995149532216201545.a n = A229463 n

end A229463

/-! ## A229463.P269696204883303341

`(26^(n+2)-25*n-51)/625`
-/

namespace A229463.P269696204883303341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((26 ^ (n + 2) : ℤ) - (25 * n : ℤ) - 51 : ℚ) / 625

end

end A229463.P269696204883303341

namespace A229463

/-- `(26^(n+2)-25*n-51)/625` -/
def P269696204883303341.Spec : Prop :=
  ∀ n, P269696204883303341.a n = (A229463 n : ℚ)

end A229463

/-! ## A229463.P6654973413194902728

`∑[∑[26*a(n-1)]]` with `a(0)=1`
-/

namespace A229463.P6654973413194902728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  26 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229463.P6654973413194902728

namespace A229463

/-- `∑[∑[26*a(n-1)]]` -/
def P6654973413194902728.Spec : Prop :=
  ∀ n, (P6654973413194902728.a n : ℤ) = A229463 n

end A229463

/-! ## A229463.P17358101751118809745

`26*a(n-1)+1+n` with `a(0)=1`
-/

namespace A229463.P17358101751118809745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  26 * a (n - 1) + 1 + n

end

end A229463.P17358101751118809745

namespace A229463

/-- `26*a(n-1)+1+n` -/
def P17358101751118809745.Spec : Prop :=
  ∀ n, (P17358101751118809745.a n : ℤ) = A229463 n

end A229463

/-! ## A229463.P2424234295472227005

`∑[lcm(26, a(n-1))+1]-1` with `a(0)=2`
-/

namespace A229463.P2424234295472227005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.lcm 26 (f1 (n - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A229463.P2424234295472227005

namespace A229463

/-- `∑[lcm(26, a(n-1))+1]-1` -/
def P2424234295472227005.Spec : Prop :=
  ∀ n, P2424234295472227005.a n = A229463 n

end A229463

/-! ## A229463.P9132251993802434597

`∑[∑[A009970(n)]]`
-/

namespace A229463.P9132251993802434597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009970 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229463.P9132251993802434597

namespace A229463

/-- `∑[∑[A009970(n)]]` -/
def P9132251993802434597.Spec : Prop :=
  ∀ n, P9132251993802434597.a n = A229463 n

end A229463

/-! ## A229463.P8158292255803124602

`∑[A218729(n+1)]`
-/

namespace A229463.P8158292255803124602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229463.P8158292255803124602

namespace A229463

/-- `∑[A218729(n+1)]` -/
def P8158292255803124602.Spec : Prop :=
  ∀ n, P8158292255803124602.a n = A229463 n

end A229463

/-!
# A229464: Binomial transform of (2*n + 1)!.

The programs for A229464, the canonical program `A229464.P7696846720306367887` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229464 has offset 0).

The definition of A229464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229464.P7696846720306367887

`1+2*n*(2*n+1)*a(n-1)-2*n*(2*n-2)*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229464

/-- `1+2*n*(2*n+1)*a(n-1)-2*n*(2*n-2)*a(n-2)` -/
def P7696846720306367887.Spec : Prop :=
  ∀ n, P7696846720306367887.a n = A229464 n

theorem P7696846720306367887.correct : P7696846720306367887.Spec := by
  intro n
  simp only [A229464]

end A229464

/-! ## A229464.P16973180983832484454

`A286038(n+1)/(n+1)+1`
-/

namespace A229464.P16973180983832484454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286038 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A229464.P16973180983832484454

namespace A229464

/-- `A286038(n+1)/(n+1)+1` -/
def P16973180983832484454.Spec : Prop :=
  ∀ n, P16973180983832484454.a n = (A229464 n : ℚ)

end A229464

/-!
# A229465: Number of lattice paths from {2}^n to {0}^n using steps that decrement one component or all components by the same positive integer.

The programs for A229465, there is no canonical definition to state claims against.
-/

/-! ## A229465.P8740077522570914743

`A229345(∑[n+2]+3)`
-/

namespace A229465.P8740077522570914743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229345 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A229465.P8740077522570914743

/-! ## A229465.P17153945604221302267

`record[gcd(A097805(n), A229345(n+2))]`
-/

namespace A229465.P17153945604221302267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097805 n) (A229345 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229465.P17153945604221302267

/-! ## A229465.P5568179744603820924

`record[gcd(A210472(n), A229345(n+3))]`
-/

namespace A229465.P5568179744603820924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210472 n) (A229345 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229465.P5568179744603820924

/-! ## A229465.P17237868396478171369

`record[A229345(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A229465.P17237868396478171369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229345 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229465.P17237868396478171369

/-!
# A229466: Numbers k such that the period of Fibonacci numbers mod k is 3*(k+10).

The programs for A229466, there is no canonical definition to state claims against.
-/

/-! ## A229466.P3748285920341414200

`10*A106151(A160039(n))`
-/

namespace A229466.P3748285920341414200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A106151 (A160039 n).toNat

end

end A229466.P3748285920341414200

/-! ## A229466.P9170968629723643425

`10*A194062(A002219(n+1))`
-/

namespace A229466.P9170968629723643425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A194062 (A002219 (n + 1)).toNat

end

end A229466.P9170968629723643425

/-!
# A229469: Numbers k such that T(k) + S(k) + 1 is prime, where T(k) and S(k) are the k-th triangular and square numbers.

The programs for A229469, there is no canonical definition to state claims against.
-/

/-! ## A229469.P15191826273008439892

`floor(sqrt(2*A229080(n+1)/3))`
-/

namespace A229469.P15191826273008439892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * ((A229080 (n + 1) : ℚ) / 3) : ℝ)⌋

end

end A229469.P15191826273008439892

/-! ## A229469.P2803760376699092896

`eq[1, ∑{e}[A104249(n), #]]`
-/

namespace A229469.P2803760376699092896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229469.P2803760376699092896

/-! ## A229469.P11956649568181030807

`eq[1, A001222(∑[3*n+2]+1)]+1`
-/

namespace A229469.P11956649568181030807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229469.P11956649568181030807

/-! ## A229469.P2574719330589300817

`eq[1, A001222(C(n+1, 2)+n²+1)]`
-/

namespace A229469.P2574719330589300817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (n + 1) 2 + (n ^ 2 + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229469.P2574719330589300817

/-! ## A229469.P9316395308160087456

`eq[2, A000005(C(n+1, 2)+n²+1)]`
-/

namespace A229469.P9316395308160087456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (n + 1) 2 + (n ^ 2 + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229469.P9316395308160087456

/-!
# A229470: Positions of 2 in decimal expansion of 0.1231232331232332333..., whose definition is given below.

The programs for A229470, there is no canonical definition to state claims against.
-/

/-! ## A229470.P6933255373540838378

`∑[1-C(∑[char[∑[n]]], 2)+n]+C(comp[∑[n]]-n, 2)`
-/

namespace A229470.P6933255373540838378
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) + (n : ℤ)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A229470.P6933255373540838378

/-! ## A229470.P10698322079981400226

`A014370(comp[∑[n]])`
-/

namespace A229470.P10698322079981400226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014370 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A229470.P10698322079981400226

/-! ## A229470.P9500119332800425145

`∑[A131818(comp[∑[n]])]`
-/

namespace A229470.P9500119332800425145
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229470.P9500119332800425145

/-! ## A229470.P15987395502325765679

`eq[1, A056558(n+1)]`
-/

namespace A229470.P15987395502325765679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229470.P15987395502325765679

/-! ## A229470.P2493212490473284939

`eq[1, A228132(n+1)]`
-/

namespace A229470.P2493212490473284939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228132 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229470.P2493212490473284939

/-! ## A229470.P16199502918333708939

`eq[1, A056558(n)]-1`
-/

namespace A229470.P16199502918333708939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A229470.P16199502918333708939

/-! ## A229470.P532494480085032876

`eq[1, dr(A038479(n+1))]`
-/

namespace A229470.P532494480085032876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A038479 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229470.P532494480085032876

/-! ## A229470.P11448328826773835208

`eq[1, val(A014311(n+2), 2)]`
-/

namespace A229470.P11448328826773835208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014311 (n + 2)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229470.P11448328826773835208

/-!
# A229471: Number of defective 4-colorings of an n X n 0..3 array connected horizontally, antidiagonally and vertically with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229471, there is no canonical definition to state claims against.
-/

/-! ## A229471.P14598107540525901351

`A229479(∑[4*n]+1)`
-/

namespace A229471.P14598107540525901351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229471.P14598107540525901351

/-! ## A229471.P12356880882191519247

`lcm(2, A229479(A001844(n)))`
-/

namespace A229471.P12356880882191519247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229479 (A001844 n).toNat)

end

end A229471.P12356880882191519247

/-! ## A229471.P6385822210009053211

`record[A003982(n)*A229479(n+1)]`
-/

namespace A229471.P6385822210009053211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A229479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229471.P6385822210009053211

/-! ## A229471.P8272121650960970854

`A000041(C(2, n+2))*A229479(A001844(n))`
-/

namespace A229471.P8272121650960970854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A229479 (A001844 n).toNat

end

end A229471.P8272121650960970854

/-! ## A229471.P18411960356569504815

`A229479(A001844(n))/A007318(ceil(n/(n+1)))`
-/

namespace A229471.P18411960356569504815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229479 (A001844 n).toNat : ℚ) / (A007318 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A229471.P18411960356569504815

/-!
# A229472: Number of defective 4-colorings of an n X 1 0..3 array connected horizontally, antidiagonally and vertically with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229472, the canonical program `A229472.P467993927969406548` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229472 has offset 1).

The definition of A229472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229472.P467993927969406548

`n*ceil(3^n/18)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229472

/-- `n*ceil(3^n/18)` -/
def P467993927969406548.Spec : Prop :=
  ∀ n, P467993927969406548.a n = A229472 (n + 1)

theorem P467993927969406548.correct : P467993927969406548.Spec := by
  intro n
  simp only [A229472, Nat.add_sub_cancel]

end A229472

/-! ## A229472.P3637300613339015543

`n*A003462(A289207(n))+n`
-/

namespace A229472.P3637300613339015543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003462 (A289207 n).toNat + (n : ℤ)

end

end A229472.P3637300613339015543

namespace A229472

/-- `n*A003462(A289207(n))+n` -/
def P3637300613339015543.Spec : Prop :=
  ∀ n, P3637300613339015543.a n = A229472 (n + 1)

end A229472

/-! ## A229472.P16231352274863295613

`8*a(n-1)-22*a(n-2)+24*a(n-3)-9*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6, a(4)=20, a(5)=70`
-/

namespace A229472.P16231352274863295613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 6, 20, 70] fun n a =>
  8 * a (n - 1) - 22 * a (n - 2) + 24 * a (n - 3) - 9 * a (n - 4)

end

end A229472.P16231352274863295613

namespace A229472

/-- `8*a(n-1)-22*a(n-2)+24*a(n-3)-9*a(n-4)` -/
def P16231352274863295613.Spec : Prop :=
  ∀ n, P16231352274863295613.a n = A229472 (n + 1)

end A229472

/-! ## A229472.P11444672558100872277

`2*A229665(n+2)/(n+1)`
-/

namespace A229472.P11444672558100872277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A229665 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A229472.P11444672558100872277

namespace A229472

/-- `2*A229665(n+2)/(n+1)` -/
def P11444672558100872277.Spec : Prop :=
  ∀ n, P11444672558100872277.a n = (A229472 (n + 1) : ℚ)

end A229472

/-! ## A229472.P7314843581680284783

`n*(sqrt(A001019(n-ceil(atan(n))))+1)/2`
-/

namespace A229472.P7314843581680284783
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (Real.sqrt (A001019 ((n : ℤ) - ⌈Real.arctan (n : ℝ)⌉).toNat : ℝ) + 1) / 2

end

end A229472.P7314843581680284783

namespace A229472

/-- `n*(sqrt(A001019(n-ceil(atan(n))))+1)/2` -/
def P7314843581680284783.Spec : Prop :=
  ∀ n, P7314843581680284783.a n = (A229472 (n + 1) : ℝ)

end A229472

/-!
# A229473: Number of defective 4-colorings of an n X 2 0..3 array connected horizontally, antidiagonally and vertically with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229473, the canonical program `A229473.P15385143365646390287` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229473 has offset 1).

The definition of A229473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229473.P10847275018275256895

`A133086(A004273(n))+A002699(n)`
-/

namespace A229473.P10847275018275256895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133086 (A004273 n).toNat + A002699 n

end

end A229473.P10847275018275256895

namespace A229473

/-- `A133086(A004273(n))+A002699(n)` -/
def P10847275018275256895.Spec : Prop :=
  ∀ n, P10847275018275256895.a n = A229473 (n + 1)

end A229473

/-! ## A229473.P7824890107333659115

`A269822(n+1)+A011782(A004275(n))`
-/

namespace A229473.P7824890107333659115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269822 (n + 1) + A011782 (A004275 n).toNat

end

end A229473.P7824890107333659115

namespace A229473

/-- `A269822(n+1)+A011782(A004275(n))` -/
def P7824890107333659115.Spec : Prop :=
  ∀ n, P7824890107333659115.a n = A229473 (n + 1)

end A229473

/-! ## A229473.P15385143365646390287

`A133086(A004277(n)-1)+A002699(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A229473

/-- `A133086(A004277(n)-1)+A002699(n)` -/
def P15385143365646390287.Spec : Prop :=
  ∀ n, P15385143365646390287.a n = A229473 (n + 1)

theorem P15385143365646390287.correct : P15385143365646390287.Spec := by
  intro n
  simp only [A229473, Nat.add_sub_cancel]

end A229473

/-! ## A229473.P7854848895852581360

`8*a(n-1)-16*a(n-2)` with `a(0)=1, a(1)=6, a(2)=42, a(3)=248`
-/

namespace A229473.P7854848895852581360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 42, 248] fun n a =>
  8 * a (n - 1) - 16 * a (n - 2)

end

end A229473.P7854848895852581360

namespace A229473

/-- `8*a(n-1)-16*a(n-2)` -/
def P7854848895852581360.Spec : Prop :=
  ∀ n, P7854848895852581360.a n = A229473 (n + 1)

end A229473

/-! ## A229473.P7117205312405205760

`A229479(∑[n+1]+2)`
-/

namespace A229473.P7117205312405205760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229473.P7117205312405205760

namespace A229473

/-- `A229479(∑[n+1]+2)` -/
def P7117205312405205760.Spec : Prop :=
  ∀ n, P7117205312405205760.a n = A229473 (n + 1)

end A229473

/-!
# A229474: Number of defective 4-colorings of an n X 3 0..3 array connected horizontally, antidiagonally and vertically with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229474, there is no canonical definition to state claims against.
-/

/-! ## A229474.P70722997022333814

`A229479(∑[n+2]+4)`
-/

namespace A229474.P70722997022333814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229474.P70722997022333814

/-! ## A229474.P10128553252172195187

`lcm(2, A229479(A167614(n+1)))`
-/

namespace A229474.P10128553252172195187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229479 (A167614 (n + 1)).toNat)

end

end A229474.P10128553252172195187

/-! ## A229474.P17236213636885641473

`A229479(A167614(n+1))+A185284(n)`
-/

namespace A229474.P17236213636885641473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (A167614 (n + 1)).toNat + A185284 n

end

end A229474.P17236213636885641473

/-! ## A229474.P812578271760848110

`A229479(A167614(n+1))%A205087(n)`
-/

namespace A229474.P812578271760848110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229479 (A167614 (n + 1)).toNat) (A205087 n)

end

end A229474.P812578271760848110

/-! ## A229474.P12976383487931570572

`gcd(A000038(n), A229479(A167614(n+1)))`
-/

namespace A229474.P12976383487931570572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A229479 (A167614 (n + 1)).toNat)

end

end A229474.P12976383487931570572

/-!
# A229475: Number of defective 4-colorings of an n X 4 0..3 array connected horizontally, antidiagonally and vertically with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229475, there is no canonical definition to state claims against.
-/

/-! ## A229475.P9290887502919340747

`A229479(A374004(n+1))`
-/

namespace A229475.P9290887502919340747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (A374004 (n + 1)).toNat

end

end A229475.P9290887502919340747

/-! ## A229475.P5041966445987410378

`A229479(A141214(n)+7)`
-/

namespace A229475.P5041966445987410378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (A141214 n + 7).toNat

end

end A229475.P5041966445987410378

/-! ## A229475.P8925573357269208472

`A229479(A052905(n)+9)`
-/

namespace A229475.P8925573357269208472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (A052905 n + 9).toNat

end

end A229475.P8925573357269208472

/-! ## A229475.P16288874132097336945

`A229479(A055999(n)+10)`
-/

namespace A229475.P16288874132097336945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (A055999 n + 10).toNat

end

end A229475.P16288874132097336945

/-! ## A229475.P15737397487271169278

`A229479(A167614(n+2)+1)`
-/

namespace A229475.P15737397487271169278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (A167614 (n + 2) + 1).toNat

end

end A229475.P15737397487271169278

/-!
# A229476: Number of defective 4-colorings of an n X 5 0..3 array connected horizontally, antidiagonally and vertically with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229476, there is no canonical definition to state claims against.
-/

/-! ## A229476.P9469260795843628994

`A229479(A374005(n+1))`
-/

namespace A229476.P9469260795843628994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (A374005 (n + 1)).toNat

end

end A229476.P9469260795843628994

/-! ## A229476.P16964572098160795723

`A229479(A052905(n+3)-(2*n+1))`
-/

namespace A229476.P16964572098160795723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A229476.P16964572098160795723

/-! ## A229476.P14722629672165216742

`A229479(Δ[A264443(n)])`
-/

namespace A229476.P14722629672165216742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (f1 (n + 1) - f1 n).toNat

end

end A229476.P14722629672165216742

/-! ## A229476.P914400269730154252

`A229479(A046691(n+3))`
-/

namespace A229476.P914400269730154252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (A046691 (n + 3)).toNat

end

end A229476.P914400269730154252

/-! ## A229476.P5758606195195896966

`A229479(A056115(n)+11)`
-/

namespace A229476.P5758606195195896966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (A056115 n + 11).toNat

end

end A229476.P5758606195195896966

/-!
# A229477: Number of defective 4-colorings of an n X 6 0..3 array connected horizontally, antidiagonally and vertically with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229477, there is no canonical definition to state claims against.
-/

/-! ## A229477.P15884559361363239057

`A229479(A374007(n+1))`
-/

namespace A229477.P15884559361363239057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (A374007 (n + 1)).toNat

end

end A229477.P15884559361363239057

/-! ## A229477.P16312421196455399812

`A229479(A167614(n+4)+3)`
-/

namespace A229477.P16312421196455399812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (A167614 (n + 4) + 3).toNat

end

end A229477.P16312421196455399812

/-! ## A229477.P7193742456559521113

`A229479(eq[7, A131818(n+1)])`
-/

namespace A229477.P7193742456559521113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229477.P7193742456559521113

/-! ## A229477.P17465350482310838472

`A229479(A052905(n+3))`
-/

namespace A229477.P17465350482310838472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (A052905 (n + 3)).toNat

end

end A229477.P17465350482310838472

/-! ## A229477.P1472688226045548732

`A229479(eq[3, A219347(n)])`
-/

namespace A229477.P1472688226045548732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229477.P1472688226045548732

/-!
# A229478: Number of defective 4-colorings of an n X 7 0..3 array connected horizontally, antidiagonally and vertically with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229478, there is no canonical definition to state claims against.
-/

/-! ## A229478.P9395622603622114868

`A229479(A374008(n+1))`
-/

namespace A229478.P9395622603622114868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (A374008 (n + 1)).toNat

end

end A229478.P9395622603622114868

/-! ## A229478.P17253224305055721441

`A229479(eq[8, A131818(n+1)])`
-/

namespace A229478.P17253224305055721441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229478.P17253224305055721441

/-! ## A229478.P12044827459226005770

`A229479(eq[4, A219347(n)])`
-/

namespace A229478.P12044827459226005770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229478.P12044827459226005770

/-! ## A229478.P10303879415466649681

`A229479(eq[6, A193592(n)])`
-/

namespace A229478.P10303879415466649681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229478.P10303879415466649681

/-! ## A229478.P17786184295839215244

`A229479(eq[7, A200370(n+1)])`
-/

namespace A229478.P17786184295839215244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229478.P17786184295839215244

/-!
# A229479: T(n,k) = number of defective 4-colorings of an n X k 0..3 array connected horizontally, antidiagonally and vertically with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229479, there is no canonical definition to state claims against.
-/

/-! ## A229479.P15164459491259298779

`∑{p}[A344229(n)+1, #%2]*A151944(n+1)`
-/

namespace A229479.P15164459491259298779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344229 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p % 2 : ℕ) : ℤ) * A151944 (n + 1)

end

end A229479.P15164459491259298779

/-! ## A229479.P2905962306949692822

`A006928(A018047(n))*A151944(n+1)`
-/

namespace A229479.P2905962306949692822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A018047 n).toNat * A151944 (n + 1)

end

end A229479.P2905962306949692822

/-! ## A229479.P2228859766793162787

`A003056(n)*A198654(A001104(n+1))`
-/

namespace A229479.P2228859766793162787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A198654 (A001104 (n + 1)).toNat

end

end A229479.P2228859766793162787

/-! ## A229479.P2424456100011425717

`A037806(A014787(n))*A151944(n+1)`
-/

namespace A229479.P2424456100011425717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (A014787 n).toNat * A151944 (n + 1)

end

end A229479.P2424456100011425717

/-! ## A229479.P6228907951937160328

`A003796(A222894(n+1)%A299381(2*(n+1)))`
-/

namespace A229479.P6228907951937160328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003796 (Int.tmod (A222894 (n + 1)) (A299381 (2 * (n + 1)))).toNat

end

end A229479.P6228907951937160328

/-!
# A229481: Final digit of 1^n + 2^n + ... + n^n.

The programs for A229481, there is no canonical definition to state claims against.
-/

/-! ## A229481.P143475830840658606

`A215078(A000096(n))%10`
-/

namespace A229481.P143475830840658606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215078 (A000096 n).toNat) 10

end

end A229481.P143475830840658606

/-!
# A229482: Number of lattice paths from {n}^3 to {0}^3 using steps that decrement one component or all components by the same positive integer.

The programs for A229482, there is no canonical definition to state claims against.
-/

/-! ## A229482.P521703587441156046

`A229345(∑[n+3]+n+3)`
-/

namespace A229482.P521703587441156046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229345 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A229482.P521703587441156046

/-! ## A229482.P7802048498307332016

`record[gcd(A225094(n+2), A229345(n))]`
-/

namespace A229482.P7802048498307332016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A225094 (n + 2)) (A229345 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229482.P7802048498307332016

/-!
# A229483: Squarefree numbers whose indices are lucky numbers.

The programs for A229483, there is no canonical definition to state claims against.
-/

/-! ## A229483.P4010649394007736425

`A005117(A000959(n+1))`
-/

namespace A229483.P4010649394007736425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A000959 (n + 1)).toNat

end

end A229483.P4010649394007736425

/-! ## A229483.P11008038246721566648

`A005117(A139269(n+1)/2)`
-/

namespace A229483.P11008038246721566648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.roundAway ((A139269 (n + 1) : ℚ) / 2)).toNat

end

end A229483.P11008038246721566648

/-! ## A229483.P9045731215727617555

`record[A005117(n+1)*A145649(n+1)]`
-/

namespace A229483.P9045731215727617555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) * A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229483.P9045731215727617555

/-! ## A229483.P6567025157386501987

`A005117(A032600(n+1)+A000040(n+1))`
-/

namespace A229483.P6567025157386501987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A032600 (n + 1) + A000040 (n + 1)).toNat

end

end A229483.P6567025157386501987

/-! ## A229483.P8783415786011798546

`A005117(A032601(n+1)/A000040(n+1))`
-/

namespace A229483.P8783415786011798546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.roundAway ((A032601 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))).toNat

end

end A229483.P8783415786011798546

/-! ## A229483.P5270110469165017823

`A005117(A032598(n+1)%A139269(n+1))`
-/

namespace A229483.P5270110469165017823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Int.tmod (A032598 (n + 1)) (A139269 (n + 1))).toNat

end

end A229483.P5270110469165017823

/-! ## A229483.P9119901754548120360

`A005117(∪[A031157(n+1), A031879(n+1)])`
-/

namespace A229483.P9119901754548120360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A229483.P9119901754548120360

/-! ## A229483.P12291681057907452141

`A099822(A049781(n+1))`
-/

namespace A229483.P12291681057907452141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099822 (A049781 (n + 1)).toNat

end

end A229483.P12291681057907452141

/-! ## A229483.P3283763823755269053

`A133466(A139269(n+1)/2)/4`
-/

namespace A229483.P3283763823755269053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133466 (SequenceMachineLib.roundAway ((A139269 (n + 1) : ℚ) / 2)).toNat : ℚ) / 4

end

end A229483.P3283763823755269053

/-! ## A229483.P10907739709831366467

`record[sqrt(A062503(n+1))/(A264940(n+1)+1)]`
-/

namespace A229483.P10907739709831366467
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062503 (n + 1) : ℝ) / (A264940 (n + 1) + 1 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229483.P10907739709831366467

/-! ## A229483.P5023025755353605011

`record[A133466(n+1)/A133466(A260429(n+1))]`
-/

namespace A229483.P5023025755353605011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133466 (n + 1) : ℚ) / (A133466 (A260429 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229483.P5023025755353605011

/-! ## A229483.P16125821639899313329

`A088610(A139269(n+1)-1)`
-/

namespace A229483.P16125821639899313329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A139269 (n + 1) - 1).toNat

end

end A229483.P16125821639899313329

/-! ## A229483.P12611974334141419601

`A088610(xor(3, A139269(n+1)))`
-/

namespace A229483.P12611974334141419601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (Int.xor 3 (A139269 (n + 1))).toNat

end

end A229483.P12611974334141419601

/-!
# A229485: Numbers m such that there is a k with 2^m/(m+1) < binomial(m,k) <= 2^m/m and k < m/2.

The programs for A229485, there is no canonical definition to state claims against.
-/

/-! ## A229485.P11674797319883657635

`A229484(Δ[n²])`
-/

namespace A229485.P11674797319883657635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229484 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A229485.P11674797319883657635

/-! ## A229485.P9478599222023094512

`record[A229484(n+1)]`
-/

namespace A229485.P9478599222023094512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229485.P9478599222023094512

/-! ## A229485.P15976724852445776656

`or(char[2], A229484(2*n+1))`
-/

namespace A229485.P15976724852445776656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A229484 (2 * n + 1))

end

end A229485.P15976724852445776656

/-! ## A229485.P9481612980927012032

`A000027(A229484(comp[2*n]))`
-/

namespace A229485.P9481612980927012032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A229484 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A229485.P9481612980927012032

/-! ## A229485.P7825400515531161090

`gcd(A000038(n), A229484(2*n+1))`
-/

namespace A229485.P7825400515531161090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A229484 (2 * n + 1))

end

end A229485.P7825400515531161090

/-! ## A229485.P621414508470422535

`lcm(A033999(n), A229484(2*n+1))`
-/

namespace A229485.P621414508470422535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A229484 (2 * n + 1))

end

end A229485.P621414508470422535

/-! ## A229485.P14881318293533615341

`∑{d}[A229484(2*n+1), A000010(#)]`
-/

namespace A229485.P14881318293533615341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229484 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A229485.P14881318293533615341

/-! ## A229485.P3213826174259859614

`A229484(2*n+1)+char[A063433(n)]`
-/

namespace A229485.P3213826174259859614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063433 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229484 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A229485.P3213826174259859614

/-! ## A229485.P15914939189491076755

`char[A163358(n)]*A229484(2*n+1)`
-/

namespace A229485.P15914939189491076755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A229484 (2 * n + 1)

end

end A229485.P15914939189491076755

/-! ## A229485.P1596503314891066301

`A229484(2*n+1)+A000007(n+1)`
-/

namespace A229485.P1596503314891066301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229484 (2 * n + 1) + A000007 (n + 1)

end

end A229485.P1596503314891066301

/-! ## A229485.P10864052392889679018

`A229484(2*n+1)+A000038(n+1)`
-/

namespace A229485.P10864052392889679018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229484 (2 * n + 1) + A000038 (n + 1)

end

end A229485.P10864052392889679018

/-! ## A229485.P13563603960054114935

`A000034(2*n)*A229484(2*n+1)`
-/

namespace A229485.P13563603960054114935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A229484 (2 * n + 1)

end

end A229485.P13563603960054114935

/-! ## A229485.P16122717740340849683

`A033999(2*n)*A229484(2*n+1)`
-/

namespace A229485.P16122717740340849683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A229484 (2 * n + 1)

end

end A229485.P16122717740340849683

/-! ## A229485.P1608331767036240602

`gcd(2, A000040(n+2))*A229484(2*n+1)`
-/

namespace A229485.P1608331767036240602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A229484 (2 * n + 1)

end

end A229485.P1608331767036240602

/-! ## A229485.P1737821818725371242

`A229484(2*n+1)+C(2, A005408(n+1))`
-/

namespace A229485.P1737821818725371242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229484 (2 * n + 1) + (Nat.choose 2 (A005408 (n + 1)).toNat : ℤ)

end

end A229485.P1737821818725371242

/-! ## A229485.P9254389897926745864

`A229484(2*n+1)+C(n, A000108(n+1))`
-/

namespace A229485.P9254389897926745864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229484 (2 * n + 1) + (Nat.choose n (A000108 (n + 1)).toNat : ℤ)

end

end A229485.P9254389897926745864

/-! ## A229485.P4352954867723565684

`A229484(A005408(n))/A033999(n)²`
-/

namespace A229485.P4352954867723565684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229484 (A005408 n).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A229485.P4352954867723565684

/-! ## A229485.P9500708640411280105

`A229484(A005408(n))%A000040(n+2)²`
-/

namespace A229485.P9500708640411280105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229484 (A005408 n).toNat) (A000040 (n + 2) ^ 2)

end

end A229485.P9500708640411280105

/-!
# A229486: Numbers k such that there is a m with 2^m/(m+1) < binomial(m,k) <= 2^m/m and k < m/2.

The programs for A229486, there is no canonical definition to state claims against.
-/

/-! ## A229486.P8644721650803433121

`A229484(2*(n+1))`
-/

namespace A229486.P8644721650803433121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229484 (2 * (n + 1))

end

end A229486.P8644721650803433121

/-! ## A229486.P1876025254481003197

`lcm(A033999(n), A229484(A005408(n)+1))`
-/

namespace A229486.P1876025254481003197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A229484 (A005408 n + 1).toNat)

end

end A229486.P1876025254481003197

/-!
# A229487: Conjectured greatest number that converges to prime(n) under the iteration x -> phi(x) + 1, where phi is Euler's totient function.

The programs for A229487, there is no canonical definition to state claims against.
-/

/-! ## A229487.P7243415630728079046

`A274640(A165311(n)*A274640(n))`
-/

namespace A229487.P7243415630728079046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A165311 n * A274640 n).toNat

end

end A229487.P7243415630728079046

/-! ## A229487.P5536233081463892578

`A131821(n+1)*A331995(A240513(n+1))`
-/

namespace A229487.P5536233081463892578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) * A331995 (A240513 (n + 1)).toNat

end

end A229487.P5536233081463892578

/-!
# A229488: Conjecturally, possible differences between prime(k)^2 and the previous prime for some k.

The programs for A229488, there is no canonical definition to state claims against.
-/

/-! ## A229488.P10338551885529572717

`comp[(n+1)*(A123565(n+1)+1)]+1`
-/

namespace A229488.P10338551885529572717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A123565 (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A229488.P10338551885529572717

/-! ## A229488.P11434926382650783158

`comp[A285109(n+1)-(lcm(2, n+1)-1)]`
-/

namespace A229488.P11434926382650783158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285109 (n + 1) - ((Nat.lcm 2 (n + 1) : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A229488.P11434926382650783158

/-! ## A229488.P17184002121614959406

`eq[abs(A117907(n)), A056926(n)]`
-/

namespace A229488.P17184002121614959406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117907 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229488.P17184002121614959406

/-! ## A229488.P14520631124501461415

`eq[A100051(n), A267866(n)]+1`
-/

namespace A229488.P14520631124501461415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A229488.P14520631124501461415

/-! ## A229488.P1489534704879043055

`eq[A214920(n+2), A361253(n)]`
-/

namespace A229488.P1489534704879043055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214920 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229488.P1489534704879043055

/-! ## A229488.P2512480820653178935

`eq[A056926(4*n), A057079(n)]`
-/

namespace A229488.P2512480820653178935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229488.P2512480820653178935

/-! ## A229488.P15054353914848607267

`record[or(A002448(n), A302551(n+1))]`
-/

namespace A229488.P15054353914848607267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002448 n) (A302551 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229488.P15054353914848607267

/-! ## A229488.P17853635130418292920

`record[or(A028629(n), A302551(n+1))]`
-/

namespace A229488.P17853635130418292920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028629 n) (A302551 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229488.P17853635130418292920

/-! ## A229488.P9746316900600618783

`eq[(n+1)*(A059126(n)-1), A000122(n)]`
-/

namespace A229488.P9746316900600618783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A059126 n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229488.P9746316900600618783

/-! ## A229488.P2773041113927623490

`eq[A010052(2*n), A259748(2*(n+1))]/2`
-/

namespace A229488.P2773041113927623490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259748 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A229488.P2773041113927623490

/-!
# A229489: Conjecturally, possible differences between prime(k)^2 and the next prime for some k.

The programs for A229489, there is no canonical definition to state claims against.
-/

/-! ## A229489.P2504495146915451507

`a(n-2)+6` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A229489.P2504495146915451507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  a (n - 2) + 6

end

end A229489.P2504495146915451507

/-! ## A229489.P9754549323316668071

`∑[2*a(gcd(2, n))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A229489.P9754549323316668071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  2 * f1 (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229489.P9754549323316668071

/-! ## A229489.P7129651919358869087

`record[or(1, n)+sqrt(dr(n^6))]`
-/

namespace A229489.P7129651919358869087
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℝ) + Real.sqrt (SequenceMachineLib.digitalRoot (n ^ 6 : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229489.P7129651919358869087

/-! ## A229489.P8307746160980768248

`record[(-1)^n+lcm(12, n)/12]`
-/

namespace A229489.P8307746160980768248
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) + (Nat.lcm 12 n : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229489.P8307746160980768248

/-! ## A229489.P848213649965531216

`∑[6-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A229489.P848213649965531216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229489.P848213649965531216

/-! ## A229489.P7403055524920800308

`record[ceil((n+1)/gcd(6, n+2))]`
-/

namespace A229489.P7403055524920800308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (Nat.gcd 6 (n + 2) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229489.P7403055524920800308

/-! ## A229489.P6594144045172074305

`ogf((1+x+x^2+x^3+2x^4)/(1-x-x^2+x^3))`
-/

namespace A229489.P6594144045172074305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1, 2] [1, -1, -1, 1] n

end

end A229489.P6594144045172074305

/-! ## A229489.P8520173101812042739

`eq[n, floor(n/a(n-3))]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A229489.P8520173101812042739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n f2 =>
  ⌊(n : ℚ) / (f2 (n - 3) : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229489.P8520173101812042739

/-! ## A229489.P5320865382029479911

`record[2*n-a(n-3)]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=4`
-/

namespace A229489.P5320865382029479911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0, 4] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229489.P5320865382029479911

/-! ## A229489.P12459159928851253867

`∪[or(1, n+2)+2*n+1, (n+1)!]`
-/

namespace A229489.P12459159928851253867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 2) + (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A229489.P12459159928851253867

/-!
# A229490: The smallest Lucas number having exactly n distinct prime factors.

The programs for A229490, there is no canonical definition to state claims against.
-/

/-! ## A229490.P12796598637825864695

`A000032(A229491(n))`
-/

namespace A229490.P12796598637825864695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A229491 n).toNat

end

end A229490.P12796598637825864695

/-! ## A229490.P16752407711272090482

`A127218(2*A229491(n))`
-/

namespace A229490.P16752407711272090482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * A229491 n).toNat

end

end A229490.P16752407711272090482

/-! ## A229490.P14618327465160694115

`A001612(A229491(n))-A014712(n)`
-/

namespace A229490.P14618327465160694115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (A229491 n).toNat - A014712 n

end

end A229490.P14618327465160694115

/-! ## A229490.P1885411044784774558

`A001612(A229491(n))-((-1)^A018252(n+1))²`
-/

namespace A229490.P1885411044784774558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001612 (A229491 n).toNat : ℚ) - ((-1 : ℚ) ^ (A018252 (n + 1) : ℤ)) ^ 2

end

end A229490.P1885411044784774558

/-! ## A229490.P17062755982889215526

`A001612(A229491(n))-A005089(A084646(n+1))`
-/

namespace A229490.P17062755982889215526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (A229491 n).toNat - A005089 (A084646 (n + 1)).toNat

end

end A229490.P17062755982889215526

/-!
# A229492: Conjectured number of positive even numbers having exactly n representations as the unordered sum of two odd primes.

The programs for A229492, there is no canonical definition to state claims against.
-/

/-! ## A229492.P6919294743538577058

`A240352(n)+A000974(n)`
-/

namespace A229492.P6919294743538577058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240352 n + A000974 n

end

end A229492.P6919294743538577058

/-! ## A229492.P5685967020471696105

`A240354(n)+A000974(n)`
-/

namespace A229492.P5685967020471696105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240354 n + A000974 n

end

end A229492.P5685967020471696105

/-! ## A229492.P15469875968198624786

`A240356(n)+A000974(n)`
-/

namespace A229492.P15469875968198624786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240356 n + A000974 n

end

end A229492.P15469875968198624786

/-! ## A229492.P11087672056591839612

`A154955(n+1)+A000974(n)`
-/

namespace A229492.P11087672056591839612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1) + A000974 n

end

end A229492.P11087672056591839612

/-! ## A229492.P10019299168644443358

`A000974(n)+A008683(A004166(n))`
-/

namespace A229492.P10019299168644443358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000974 n + A008683 (A004166 n).toNat

end

end A229492.P10019299168644443358

/-! ## A229492.P14301266022699250180

`A000974(n)+A008683(A006501(n))`
-/

namespace A229492.P14301266022699250180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000974 n + A008683 (A006501 n).toNat

end

end A229492.P14301266022699250180

/-! ## A229492.P15013002432746470990

`A000974(n)+A008683(A062383(n))`
-/

namespace A229492.P15013002432746470990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000974 n + A008683 (A062383 n).toNat

end

end A229492.P15013002432746470990

/-! ## A229492.P12041933844774809520

`A000974(n)+A008683(A118029(n))`
-/

namespace A229492.P12041933844774809520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000974 n + A008683 (A118029 n).toNat

end

end A229492.P12041933844774809520

/-! ## A229492.P5578973061806610037

`A008683(A069050(n+1))+A000974(n)`
-/

namespace A229492.P5578973061806610037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A069050 (n + 1)).toNat + A000974 n

end

end A229492.P5578973061806610037

/-!
# A229494: Lucky numbers generated from noncomposite numbers.

The programs for A229494, there is no canonical definition to state claims against.
-/

/-! ## A229494.P103032268602231108

`A006005(∑{e}[A020707(n), A307699(#)])`
-/

namespace A229494.P103032268602231108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A307699 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A229494.P103032268602231108

/-! ## A229494.P1364780111393580866

`A000265(A158780(2*n+1))*A006005(A229488(n+1))`
-/

namespace A229494.P1364780111393580866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A158780 (2 * n + 1)).toNat * A006005 (A229488 (n + 1)).toNat

end

end A229494.P1364780111393580866

/-! ## A229494.P15228906875794443714

`A000040(A229488(n+1)%A337268(n))^(A000040(n+1)%2)`
-/

namespace A229494.P15228906875794443714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (Int.tmod (A229488 (n + 1)) (A337268 n)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A229494.P15228906875794443714

/-! ## A229494.P7360195513690912397

`A000040(A229488(n+1))-A210709(2*n)`
-/

namespace A229494.P7360195513690912397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A229488 (n + 1)).toNat - A210709 (2 * n)

end

end A229494.P7360195513690912397

/-! ## A229494.P6689955731209556636

`A008578(A047241(n+1)^A285337(3*n+4))`
-/

namespace A229494.P6689955731209556636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.roundAway ((A047241 (n + 1) : ℚ) ^ (A285337 (3 * n + 4) : ℤ))).toNat

end

end A229494.P6689955731209556636

/-!
# A229496: Primes p of the form prime(n+1)^2-prime(n)^2+1.

The programs for A229496, the canonical program `A229496.P8914308033381578582` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229496 has offset 1).

The definition of A229496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229496.P8914308033381578582

`p?[A069482(n+1)+1]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A229496

/-- `p?[A069482(n+1)+1]` -/
def P8914308033381578582.Spec : Prop :=
  ∀ n, P8914308033381578582.a n = A229496 (n + 1)

theorem P8914308033381578582.correct : P8914308033381578582.Spec := by
  intro n
  simp only [A229496, Nat.add_sub_cancel]

end A229496

/-! ## A229496.P9918981415171850086

`p?[4*A062046(n+1)+1]`
-/

namespace A229496.P9918981415171850086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A062046 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P9918981415171850086

namespace A229496

/-- `p?[4*A062046(n+1)+1]` -/
def P9918981415171850086.Spec : Prop :=
  ∀ n, P9918981415171850086.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P9534412975883700682

`p?[Δ[A000040(n+1)²]+1]`
-/

namespace A229496.P9534412975883700682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P9534412975883700682

namespace A229496

/-- `p?[Δ[A000040(n+1)²]+1]` -/
def P9534412975883700682.Spec : Prop :=
  ∀ n, P9534412975883700682.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P7511855882550187811

`p?[Δ[A008578(n+1)²]+1]`
-/

namespace A229496.P7511855882550187811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P7511855882550187811

namespace A229496

/-- `p?[Δ[A008578(n+1)²]+1]` -/
def P7511855882550187811.Spec : Prop :=
  ∀ n, P7511855882550187811.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P2831958344640820781

`p?[Δ[A065091(n+1)²]+1]`
-/

namespace A229496.P2831958344640820781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P2831958344640820781

namespace A229496

/-- `p?[Δ[A065091(n+1)²]+1]` -/
def P2831958344640820781.Spec : Prop :=
  ∀ n, P2831958344640820781.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P14713919633925986596

`p?[Δ[record[A006530(n+1)²]]+1]`
-/

namespace A229496.P14713919633925986596
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P14713919633925986596

namespace A229496

/-- `p?[Δ[record[A006530(n+1)²]]+1]` -/
def P14713919633925986596.Spec : Prop :=
  ∀ n, P14713919633925986596.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P14890783421897314882

`p?[Δ[record[A020639(n+1)²]]+1]`
-/

namespace A229496.P14890783421897314882
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P14890783421897314882

namespace A229496

/-- `p?[Δ[record[A020639(n+1)²]]+1]` -/
def P14890783421897314882.Spec : Prop :=
  ∀ n, P14890783421897314882.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P13609313566150483560

`p?[Δ[record[A025473(n+1)²]+n]]`
-/

namespace A229496.P13609313566150483560
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P13609313566150483560

namespace A229496

/-- `p?[Δ[record[A025473(n+1)²]+n]]` -/
def P13609313566150483560.Spec : Prop :=
  ∀ n, P13609313566150483560.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P8994225298241865008

`p?[Δ[(A175216(n+1)-1)²]+1]`
-/

namespace A229496.P8994225298241865008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175216 (n + 1) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P8994225298241865008

namespace A229496

/-- `p?[Δ[(A175216(n+1)-1)²]+1]` -/
def P8994225298241865008.Spec : Prop :=
  ∀ n, P8994225298241865008.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P10884601937459382572

`p?[A066872(n+1)-A008578(n+1)²]`
-/

namespace A229496.P10884601937459382572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - A008578 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P10884601937459382572

namespace A229496

/-- `p?[A066872(n+1)-A008578(n+1)²]` -/
def P10884601937459382572.Spec : Prop :=
  ∀ n, P10884601937459382572.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P4798356580916708762

`p?[A045344(n+1)²-A084920(n+1)]`
-/

namespace A229496.P4798356580916708762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) ^ 2 - A084920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P4798356580916708762

namespace A229496

/-- `p?[A045344(n+1)²-A084920(n+1)]` -/
def P4798356580916708762.Spec : Prop :=
  ∀ n, P4798356580916708762.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P1203969671465044342

`p?[A065091(n+1)²-A084920(n+1)]`
-/

namespace A229496.P1203969671465044342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) ^ 2 - A084920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P1203969671465044342

namespace A229496

/-- `p?[A065091(n+1)²-A084920(n+1)]` -/
def P1203969671465044342.Spec : Prop :=
  ∀ n, P1203969671465044342.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P9211428066490524264

`p?[A001043(n+1)*A001223(n+1)+1]`
-/

namespace A229496.P9211428066490524264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) * A001223 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P9211428066490524264

namespace A229496

/-- `p?[A001043(n+1)*A001223(n+1)+1]` -/
def P9211428066490524264.Spec : Prop :=
  ∀ n, P9211428066490524264.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P10636424565977288583

`p?[A061725(n+2)+1-A061725(n+1)]`
-/

namespace A229496.P10636424565977288583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 2) + (1 - A061725 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P10636424565977288583

namespace A229496

/-- `p?[A061725(n+2)+1-A061725(n+1)]` -/
def P10636424565977288583.Spec : Prop :=
  ∀ n, P10636424565977288583.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P15382972969741798080

`p?[A084920(n+2)+1-A084920(n+1)]`
-/

namespace A229496.P15382972969741798080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 2) + (1 - A084920 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P15382972969741798080

namespace A229496

/-- `p?[A084920(n+2)+1-A084920(n+1)]` -/
def P15382972969741798080.Spec : Prop :=
  ∀ n, P15382972969741798080.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P10107188020059990972

`p?[1-(A001248(n+1)-A001248(n+2))]`
-/

namespace A229496.P10107188020059990972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001248 (n + 1) - A001248 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P10107188020059990972

namespace A229496

/-- `p?[1-(A001248(n+1)-A001248(n+2))]` -/
def P10107188020059990972.Spec : Prop :=
  ∀ n, P10107188020059990972.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P6511269457828033485

`p?[Δ[A051697(n)²]+1]`
-/

namespace A229496.P6511269457828033485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P6511269457828033485

namespace A229496

/-- `p?[Δ[A051697(n)²]+1]` -/
def P6511269457828033485.Spec : Prop :=
  ∀ n, P6511269457828033485.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P2602676169271701409

`p?[Δ[A151800(n)²]+1]`
-/

namespace A229496.P2602676169271701409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P2602676169271701409

namespace A229496

/-- `p?[Δ[A151800(n)²]+1]` -/
def P2602676169271701409.Spec : Prop :=
  ∀ n, P2602676169271701409.a n = A229496 (n + 1)

end A229496

/-! ## A229496.P10691621606172950306

`p?[Δ[record[A014963(n+2)²]]+1]`
-/

namespace A229496.P10691621606172950306
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P10691621606172950306

namespace A229496

/-- `p?[Δ[record[A014963(n+2)²]]+1]` -/
def P10691621606172950306.Spec : Prop :=
  ∀ n, P10691621606172950306.a n = A229496 (n + 1)

end A229496

/-!
# A229497: Product between n-th prime and next perfect square.

The programs for A229497, the canonical program `A229497.P2706809178029199216` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229497 has offset 1).

The definition of A229497 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A145445, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229497.P2706809178029199216

`A000040(n+1)*A145445(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A229497

/-- `A000040(n+1)*A145445(n+1)` -/
def P2706809178029199216.Spec : Prop :=
  ∀ n, P2706809178029199216.a n = A229497 (n + 1)

theorem P2706809178029199216.correct : P2706809178029199216.Spec := by
  intro n
  simp only [A229497, Nat.add_sub_cancel]

end A229497

/-! ## A229497.P5815013299973463621

`A104103(n+1)²*Δ[A007504(n)]`
-/

namespace A229497.P5815013299973463621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1) ^ 2 * (f1 (n + 1) - f1 n)

end

end A229497.P5815013299973463621

namespace A229497

/-- `A104103(n+1)²*Δ[A007504(n)]` -/
def P5815013299973463621.Spec : Prop :=
  ∀ n, P5815013299973463621.a n = A229497 (n + 1)

end A229497

/-! ## A229497.P8942173487509814720

`A000040(n+1)*A104103(n+1)²`
-/

namespace A229497.P8942173487509814720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A104103 (n + 1) ^ 2

end

end A229497.P8942173487509814720

namespace A229497

/-- `A000040(n+1)*A104103(n+1)²` -/
def P8942173487509814720.Spec : Prop :=
  ∀ n, P8942173487509814720.a n = A229497 (n + 1)

end A229497

/-! ## A229497.P6510254835508606205

`A104103(n+1)²*sqrt(A001248(n+1))`
-/

namespace A229497.P6510254835508606205
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A104103 (n + 1) ^ 2 : ℝ) * Real.sqrt (A001248 (n + 1) : ℝ)

end

end A229497.P6510254835508606205

namespace A229497

/-- `A104103(n+1)²*sqrt(A001248(n+1))` -/
def P6510254835508606205.Spec : Prop :=
  ∀ n, P6510254835508606205.a n = (A229497 (n + 1) : ℝ)

end A229497

/-! ## A229497.P15595504605770027578

`A104103(n+1)²*∑[A054541(n+1)]`
-/

namespace A229497.P15595504605770027578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229497.P15595504605770027578

namespace A229497

/-- `A104103(n+1)²*∑[A054541(n+1)]` -/
def P15595504605770027578.Spec : Prop :=
  ∀ n, P15595504605770027578.a n = A229497 (n + 1)

end A229497

/-! ## A229497.P6671499564207022893

`(A000006(n+1)+1)²*A000040(n+1)`
-/

namespace A229497.P6671499564207022893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000006 (n + 1) + 1) ^ 2 * A000040 (n + 1)

end

end A229497.P6671499564207022893

namespace A229497

/-- `(A000006(n+1)+1)²*A000040(n+1)` -/
def P6671499564207022893.Spec : Prop :=
  ∀ n, P6671499564207022893.a n = A229497 (n + 1)

end A229497

/-! ## A229497.P8012665751945109992

`(A008864(n+1)-1)*A104103(n+1)²`
-/

namespace A229497.P8012665751945109992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A104103 (n + 1) ^ 2

end

end A229497.P8012665751945109992

namespace A229497

/-- `(A008864(n+1)-1)*A104103(n+1)²` -/
def P8012665751945109992.Spec : Prop :=
  ∀ n, P8012665751945109992.a n = A229497 (n + 1)

end A229497

/-! ## A229497.P184706702630226966

`(A229067(n+1)-A000040(n+1))*A000040(n+1)`
-/

namespace A229497.P184706702630226966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A229067 (n + 1) - A000040 (n + 1)) * A000040 (n + 1)

end

end A229497.P184706702630226966

namespace A229497

/-- `(A229067(n+1)-A000040(n+1))*A000040(n+1)` -/
def P184706702630226966.Spec : Prop :=
  ∀ n, P184706702630226966.a n = A229497 (n + 1)

end A229497

/-! ## A229497.P4424338362487052645

`(A229067(n+1)-A145445(n+1))*A145445(n+1)`
-/

namespace A229497.P4424338362487052645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A229067 (n + 1) - A145445 (n + 1)) * A145445 (n + 1)

end

end A229497.P4424338362487052645

namespace A229497

/-- `(A229067(n+1)-A145445(n+1))*A145445(n+1)` -/
def P4424338362487052645.Spec : Prop :=
  ∀ n, P4424338362487052645.a n = A229497 (n + 1)

end A229497

/-! ## A229497.P10837450313333693467

`(A000040(n+1)-A165994(n+1))²*A000040(n+1)`
-/

namespace A229497.P10837450313333693467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A165994 (n + 1)) ^ 2 * A000040 (n + 1)

end

end A229497.P10837450313333693467

namespace A229497

/-- `(A000040(n+1)-A165994(n+1))²*A000040(n+1)` -/
def P10837450313333693467.Spec : Prop :=
  ∀ n, P10837450313333693467.a n = A229497 (n + 1)

end A229497

/-! ## A229497.P2423946022963407445

`A104103(n+1)²*A008578(n+2)`
-/

namespace A229497.P2423946022963407445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1) ^ 2 * A008578 (n + 2)

end

end A229497.P2423946022963407445

namespace A229497

/-- `A104103(n+1)²*A008578(n+2)` -/
def P2423946022963407445.Spec : Prop :=
  ∀ n, P2423946022963407445.a n = A229497 (n + 1)

end A229497

/-! ## A229497.P3858373803222376865

`record[A003059(n+2)²*A014963(n+2)]`
-/

namespace A229497.P3858373803222376865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 2) ^ 2 * A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229497.P3858373803222376865

namespace A229497

/-- `record[A003059(n+2)²*A014963(n+2)]` -/
def P3858373803222376865.Spec : Prop :=
  ∀ n, P3858373803222376865.a n = A229497 (n + 1)

end A229497

/-! ## A229497.P1644800592743312547

`record[A003059(n+2)²*A020639(n+2)]`
-/

namespace A229497.P1644800592743312547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 2) ^ 2 * A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229497.P1644800592743312547

namespace A229497

/-- `record[A003059(n+2)²*A020639(n+2)]` -/
def P1644800592743312547.Spec : Prop :=
  ∀ n, P1644800592743312547.a n = A229497 (n + 1)

end A229497

/-! ## A229497.P8267682078161649472

`record[A006530(n+2)*A048761(A006530(n+2))]`
-/

namespace A229497.P8267682078161649472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) * A048761 (A006530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229497.P8267682078161649472

namespace A229497

/-- `record[A006530(n+2)*A048761(A006530(n+2))]` -/
def P8267682078161649472.Spec : Prop :=
  ∀ n, P8267682078161649472.a n = A229497 (n + 1)

end A229497

/-! ## A229497.P5550587004255392378

`A000040(n+1)*A048761(A000040(n+1)+1)`
-/

namespace A229497.P5550587004255392378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A048761 (A000040 (n + 1) + 1).toNat

end

end A229497.P5550587004255392378

namespace A229497

/-- `A000040(n+1)*A048761(A000040(n+1)+1)` -/
def P5550587004255392378.Spec : Prop :=
  ∀ n, P5550587004255392378.a n = A229497 (n + 1)

end A229497

/-! ## A229497.P6350994173856526692

`A000196(A145826(n+1))²*A000040(n+1)`
-/

namespace A229497.P6350994173856526692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A145826 (n + 1)).toNat ^ 2 * A000040 (n + 1)

end

end A229497.P6350994173856526692

namespace A229497

/-- `A000196(A145826(n+1))²*A000040(n+1)` -/
def P6350994173856526692.Spec : Prop :=
  ∀ n, P6350994173856526692.a n = A229497 (n + 1)

end A229497

/-! ## A229497.P15105886914578993098

`(A106044(n+1)+A000040(n+1))*A000040(n+1)`
-/

namespace A229497.P15105886914578993098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106044 (n + 1) + A000040 (n + 1)) * A000040 (n + 1)

end

end A229497.P15105886914578993098

namespace A229497

/-- `(A106044(n+1)+A000040(n+1))*A000040(n+1)` -/
def P15105886914578993098.Spec : Prop :=
  ∀ n, P15105886914578993098.a n = A229497 (n + 1)

end A229497

/-! ## A229497.P9320134785308531529

`(A145445(n+1)-A106044(n+1))*A145445(n+1)`
-/

namespace A229497.P9320134785308531529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145445 (n + 1) - A106044 (n + 1)) * A145445 (n + 1)

end

end A229497.P9320134785308531529

namespace A229497

/-- `(A145445(n+1)-A106044(n+1))*A145445(n+1)` -/
def P9320134785308531529.Spec : Prop :=
  ∀ n, P9320134785308531529.a n = A229497 (n + 1)

end A229497

/-!
# A229499: Palindromic prime numbers == 4 (mod 9).

The programs for A229499, there is no canonical definition to state claims against.
-/

/-! ## A229499.P14868882962354239986

`A002385(eq[4, dr(A002385(n+1))]+1)`
-/

namespace A229499.P14868882962354239986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002385 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A229499.P14868882962354239986

/-! ## A229499.P4370631906230963489

`A002385(eq[4, dr(A069217(n+1))])`
-/

namespace A229499.P4370631906230963489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A069217 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A229499.P4370631906230963489

