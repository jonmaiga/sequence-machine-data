import SequenceMachineLib
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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

/-!
# A281800: Number of nX6 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281800, there is no canonical definition to state claims against.
-/

/-! ## A281800.P4374697386117034871

`A281802(A052905(n+3))`
-/

namespace A281800.P4374697386117034871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A052905 (n + 3)).toNat

end

end A281800.P4374697386117034871

/-! ## A281800.P7068577739906702342

`A281802(A302537(n)+15)`
-/

namespace A281800.P7068577739906702342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A302537 n + 15).toNat

end

end A281800.P7068577739906702342

/-! ## A281800.P8829180385224431511

`A281802(A056119(n)+16)`
-/

namespace A281800.P8829180385224431511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A056119 n + 16).toNat

end

end A281800.P8829180385224431511

/-! ## A281800.P4989855977044614418

`A281802(eq[3, A219347(n)])`
-/

namespace A281800.P4989855977044614418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281800.P4989855977044614418

/-! ## A281800.P14986310429561227681

`A281802(eq[5, A193592(n)])`
-/

namespace A281800.P14986310429561227681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281800.P14986310429561227681

/-!
# A281801: Number of nX7 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281801, there is no canonical definition to state claims against.
-/

/-! ## A281801.P9871883901701214141

`A281802(A055999(n+4))`
-/

namespace A281801.P9871883901701214141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A055999 (n + 4)).toNat

end

end A281801.P9871883901701214141

/-! ## A281801.P9953164277699992911

`A281802(eq[4, A219347(n)])`
-/

namespace A281801.P9953164277699992911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281801.P9953164277699992911

/-! ## A281801.P3351693553287717473

`A281802(eq[5, A332954(n)])`
-/

namespace A281801.P3351693553287717473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281801.P3351693553287717473

/-! ## A281801.P6474084997843297383

`A281802(eq[6, A193592(n)])`
-/

namespace A281801.P6474084997843297383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281801.P6474084997843297383

/-! ## A281801.P12981489734929364545

`A281802(A052905(n+4)-1)`
-/

namespace A281801.P12981489734929364545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A052905 (n + 4) - 1).toNat

end

end A281801.P12981489734929364545

/-!
# A281803: Number of 2 X n 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281803, there is no canonical definition to state claims against.
-/

/-! ## A281803.P6119823893516064235

`A281802(∑[n+1]+2)`
-/

namespace A281803.P6119823893516064235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281803.P6119823893516064235

/-! ## A281803.P5089318446557888628

`A281802(A167499(n)-3)+char[17]`
-/

namespace A281803.P5089318446557888628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A167499 n - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281803.P5089318446557888628

/-! ## A281803.P1943667947850080366

`A007318(∑[n])*A281802(A167499(n)-3)`
-/

namespace A281803.P1943667947850080366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A281802 (A167499 n - 3).toNat

end

end A281803.P1943667947850080366

/-! ## A281803.P4612987239653828129

`char[A007318(n)]*A281802(A167499(n)-3)`
-/

namespace A281803.P4612987239653828129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A281802 (A167499 n - 3).toNat

end

end A281803.P4612987239653828129

/-! ## A281803.P11014142991556028212

`A000108(C(2, n))*A281802(A167499(n)-3)`
-/

namespace A281803.P11014142991556028212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A281802 (A167499 n - 3).toNat

end

end A281803.P11014142991556028212

/-!
# A281804: Number of 3Xn 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281804, there is no canonical definition to state claims against.
-/

/-! ## A281804.P628570325350087020

`A281802(∑[n+2]+4)`
-/

namespace A281804.P628570325350087020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281804.P628570325350087020

/-! ## A281804.P6454617560222540956

`A281802(A167614(n+1))+char[16]`
-/

namespace A281804.P6454617560222540956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281804.P6454617560222540956

/-! ## A281804.P9153466608661763491

`A281802(A167614(n+1))%A244303(n)`
-/

namespace A281804.P9153466608661763491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281802 (A167614 (n + 1)).toNat) (A244303 (n + 11))

end

end A281804.P9153466608661763491

/-! ## A281804.P7134432870600682948

`lcm(A011602(n), A281802(A167614(n+1)))`
-/

namespace A281804.P7134432870600682948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011602 n) (A281802 (A167614 (n + 1)).toNat)

end

end A281804.P7134432870600682948

/-! ## A281804.P5075435425345537393

`or(A025469(n), A281802(A167614(n+1)))`
-/

namespace A281804.P5075435425345537393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 n) (A281802 (A167614 (n + 1)).toNat)

end

end A281804.P5075435425345537393

/-!
# A281805: Number of 4Xn 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281805, there is no canonical definition to state claims against.
-/

/-! ## A281805.P2328237596786469035

`A281802(∑[n+3]+7)`
-/

namespace A281805.P2328237596786469035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A281805.P2328237596786469035

/-! ## A281805.P6673378070102876795

`A281802(A052905(n)+9)+char[16]`
-/

namespace A281805.P6673378070102876795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281805.P6673378070102876795

/-! ## A281805.P11682292018522926775

`A007318(C(n, 2))*A281802(A052905(n)+9)`
-/

namespace A281805.P11682292018522926775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A281802 (A052905 n + 9).toNat

end

end A281805.P11682292018522926775

/-! ## A281805.P13191235711270177977

`A281802(A052905(n)+9)%A000041(12*n)`
-/

namespace A281805.P13191235711270177977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281802 (A052905 n + 9).toNat) (A000041 (12 * n))

end

end A281805.P13191235711270177977

/-! ## A281805.P16958004285234958920

`and(1, A000040(n+1))*A281802(A052905(n)+9)`
-/

namespace A281805.P16958004285234958920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A281802 (A052905 n + 9).toNat

end

end A281805.P16958004285234958920

/-!
# A281806: Number of 5Xn 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281806, there is no canonical definition to state claims against.
-/

/-! ## A281806.P6730121774914888421

`A281802(A167499(n+3))`
-/

namespace A281806.P6730121774914888421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A167499 (n + 3)).toNat

end

end A281806.P6730121774914888421

/-! ## A281806.P191024192789588508

`A281802(A155212(n)+13)`
-/

namespace A281806.P191024192789588508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A155212 n + 13).toNat

end

end A281806.P191024192789588508

/-! ## A281806.P1077133291491786342

`A281802(A056000(n)+15)`
-/

namespace A281806.P1077133291491786342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A056000 n + 15).toNat

end

end A281806.P1077133291491786342

/-! ## A281806.P17680780422835545560

`A281802(eq[7, A066657(n)])`
-/

namespace A281806.P17680780422835545560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281806.P17680780422835545560

/-! ## A281806.P9203155298613244756

`A281802(A145018(n+5)+1)`
-/

namespace A281806.P9203155298613244756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A145018 (n + 5) + 1).toNat

end

end A281806.P9203155298613244756

/-!
# A281807: Number of 6Xn 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281807, there is no canonical definition to state claims against.
-/

/-! ## A281807.P14749254071930108338

`A281802(A166136(n+4))`
-/

namespace A281807.P14749254071930108338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A166136 (n + 4)).toNat

end

end A281807.P14749254071930108338

/-! ## A281807.P9851267730534079169

`A281802(A056115(n)+21)`
-/

namespace A281807.P9851267730534079169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A056115 n + 21).toNat

end

end A281807.P9851267730534079169

/-! ## A281807.P13027333453439247457

`A281802(A167499(n+4)+1)`
-/

namespace A281807.P13027333453439247457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A167499 (n + 4) + 1).toNat

end

end A281807.P13027333453439247457

/-! ## A281807.P3969984734973229952

`A281802(A167614(n+4)+3)`
-/

namespace A281807.P3969984734973229952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A167614 (n + 4) + 3).toNat

end

end A281807.P3969984734973229952

/-! ## A281807.P9652567242179703563

`A281802(A145018(n+6)+2)`
-/

namespace A281807.P9652567242179703563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A145018 (n + 6) + 2).toNat

end

end A281807.P9652567242179703563

/-!
# A281808: Number of 7 X n 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281808, there is no canonical definition to state claims against.
-/

/-! ## A281808.P15332722093588820876

`A281802(A167487(n+5))`
-/

namespace A281808.P15332722093588820876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A167487 (n + 5)).toNat

end

end A281808.P15332722093588820876

/-! ## A281808.P4509934782265473702

`A281802(eq[11, A066657(n)])`
-/

namespace A281808.P4509934782265473702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281808.P4509934782265473702

/-! ## A281808.P1899704746824737369

`A281802(A166136(n+5)+1)`
-/

namespace A281808.P1899704746824737369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A166136 (n + 5) + 1).toNat

end

end A281808.P1899704746824737369

/-! ## A281808.P33460399574779806

`A281802(A167499(n+5)+2)`
-/

namespace A281808.P33460399574779806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A167499 (n + 5) + 2).toNat

end

end A281808.P33460399574779806

/-! ## A281808.P10064203388202464761

`A281802(A077169(n+7)+2)`
-/

namespace A281808.P10064203388202464761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A077169 (n + 7) + 2).toNat

end

end A281808.P10064203388202464761

/-!
# A281809: Expansion of Sum_{i>=1} x^(i^3) / (1 - Sum_{j>=1} x^(j^3))^2.

The programs for A281809, there is no canonical definition to state claims against.
-/

/-! ## A281809.P2687780553610722099

`∑[A095791(A035080(n))]`
-/

namespace A281809.P2687780553610722099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (A035080 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281809.P2687780553610722099

/-! ## A281809.P16415788564766119633

`∑[∑[A107286(A145457(n))]]`
-/

namespace A281809.P16415788564766119633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A145457 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281809.P16415788564766119633

/-! ## A281809.P389711360719343367

`∑[A322405(A187829(n+1))]`
-/

namespace A281809.P389711360719343367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322405 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281809.P389711360719343367

/-! ## A281809.P2123820845402992504

`∑[A278044(A110148(n+2))]`
-/

namespace A281809.P2123820845402992504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278044 (A110148 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281809.P2123820845402992504

/-! ## A281809.P8220064339234368856

`∑[A035143(∏[A035441(n+1)])]`
-/

namespace A281809.P8220064339234368856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035441 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035143 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281809.P8220064339234368856

/-!
# A281810: Expansion of Sum_{i>=1} x^(i*(i+1)/2) / (1 - Sum_{j>=1} x^(j*(j+1)/2))^2.

The programs for A281810, there is no canonical definition to state claims against.
-/

/-! ## A281810.P9794253548514788367

`floor(A090473((∑[n+1]+1)*2^(n-1))^γ)`
-/

namespace A281810.P9794253548514788367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090473 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat : ℝ) ^ Real.eulerMascheroniConstant⌋

end

end A281810.P9794253548514788367

/-! ## A281810.P683305354922639121

`∑[A209900(A003229(n))]`
-/

namespace A281810.P683305354922639121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209900 (A003229 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281810.P683305354922639121

/-! ## A281810.P182167274065579105

`A206915(or(A248875(n), A348382(n)))`
-/

namespace A281810.P182167274065579105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206915 (Int.lor (A248875 n) (A348382 n)).toNat

end

end A281810.P182167274065579105

/-!
# A281811: Expansion of Sum_{i>=0} x^(2^i) / (1 - Sum_{j>=0} x^(2^j))^2.

The programs for A281811, there is no canonical definition to state claims against.
-/

/-! ## A281811.P10777197447264947426

`∑[∑[A003056(A380115(n))]]`
-/

namespace A281811.P10777197447264947426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A380115 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281811.P10777197447264947426

/-! ## A281811.P13390261833490081225

`∑[∑[A066660(n!)]]`
-/

namespace A281811.P13390261833490081225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281811.P13390261833490081225

/-! ## A281811.P6664993042297520137

`∑[∑[A064876(A001075(n))]]`
-/

namespace A281811.P6664993042297520137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A001075 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281811.P6664993042297520137

/-! ## A281811.P6251309288658582624

`∑[∑[A066660(A000142(n))]]`
-/

namespace A281811.P6251309288658582624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (A000142 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281811.P6251309288658582624

/-!
# A281812: Expansion of Sum_{i>=1} mu(i)^2*x^i / (1 - Sum_{j>=1} mu(j)^2*x^j)^2, where mu() is the Moebius function (A008683).

The programs for A281812, there is no canonical definition to state claims against.
-/

/-! ## A281812.P7560206475672263704

`A103221(A016432(n)+A003293(2*n+3))`
-/

namespace A281812.P7560206475672263704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A016432 n + A003293 (2 * n + 3)).toNat

end

end A281812.P7560206475672263704

/-! ## A281812.P1195617634076899003

`∑[∑[A003056(A150589(n))]]`
-/

namespace A281812.P1195617634076899003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A150589 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281812.P1195617634076899003

/-! ## A281812.P12586303530424166714

`∑[∑[A003056(A150609(n))]]`
-/

namespace A281812.P12586303530424166714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A150609 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281812.P12586303530424166714

/-! ## A281812.P15482476504933649719

`∑[∑[A003056(A150610(n))]]`
-/

namespace A281812.P15482476504933649719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A150610 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281812.P15482476504933649719

/-!
# A281813: a(0) = 3, a(n) = 8*n + 4 for n > 0.

The programs for A281813, the canonical program `A281813.P12714209972808603952` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281813 has offset 0).

The definition of A281813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281813.P12714209972808603952

`Δ[floor(2/acot(n))²]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281813

/-- `Δ[floor(2/acot(n))²]` -/
def P12714209972808603952.Spec : Prop :=
  ∀ n, P12714209972808603952.a n = A281813 n

theorem P12714209972808603952.correct : P12714209972808603952.Spec := by
  intro n
  simp only [A281813]

end A281813

/-!
# A281814: Expansion of f(x, x^8) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A281814, the canonical program `A281814.P4702231227547449` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281814 has offset 0).

The definition of A281814 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A281814.P4702231227547449

`A010052(72*n+49)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A281814

/-- `A010052(72*n+49)` -/
def P4702231227547449.Spec : Prop :=
  ∀ n, P4702231227547449.a n = A281814 n

theorem P4702231227547449.correct : P4702231227547449.Spec := by
  intro n
  simp only [A281814]

end A281814

/-! ## A281814.P12504933375775661647

`and(1, char[A195160(n)])`
-/

namespace A281814.P12504933375775661647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195160 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A281814.P12504933375775661647

namespace A281814

/-- `and(1, char[A195160(n)])` -/
def P12504933375775661647.Spec : Prop :=
  ∀ n, (P12504933375775661647.a n : ℤ) = A281814 n

end A281814

/-! ## A281814.P10466637336053140821

`A023531(A017221(n))`
-/

namespace A281814.P10466637336053140821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A017221 n).toNat

end

end A281814.P10466637336053140821

namespace A281814

/-- `A023531(A017221(n))` -/
def P10466637336053140821.Spec : Prop :=
  ∀ n, P10466637336053140821.a n = A281814 n

end A281814

/-! ## A281814.P7609252260173532041

`A003982(A379777(n))`
-/

namespace A281814.P7609252260173532041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A379777 n).toNat

end

end A281814.P7609252260173532041

namespace A281814

/-- `A003982(A379777(n))` -/
def P7609252260173532041.Spec : Prop :=
  ∀ n, P7609252260173532041.a n = A281814 n

end A281814

/-! ## A281814.P4961659828845591596

`A073424(1-A114327(n)+n)`
-/

namespace A281814.P4961659828845591596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (1 - A114327 n + (n : ℤ)).toNat

end

end A281814.P4961659828845591596

namespace A281814

/-- `A073424(1-A114327(n)+n)` -/
def P4961659828845591596.Spec : Prop :=
  ∀ n, P4961659828845591596.a n = A281814 n

end A281814

/-! ## A281814.P10863310297614512073

`A073424(1-(A114327(n)-n))`
-/

namespace A281814.P10863310297614512073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (1 - (A114327 n - (n : ℤ))).toNat

end

end A281814.P10863310297614512073

namespace A281814

/-- `A073424(1-(A114327(n)-n))` -/
def P10863310297614512073.Spec : Prop :=
  ∀ n, P10863310297614512073.a n = A281814 n

end A281814

/-! ## A281814.P16038059651739563292

`A023531(2*n-A061579(n))`
-/

namespace A281814.P16038059651739563292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 ((2 * n : ℤ) - A061579 n).toNat

end

end A281814.P16038059651739563292

namespace A281814

/-- `A023531(2*n-A061579(n))` -/
def P16038059651739563292.Spec : Prop :=
  ∀ n, P16038059651739563292.a n = A281814 n

end A281814

/-! ## A281814.P4886759279810603730

`A023531(n-A061579(n)+n)`
-/

namespace A281814.P4886759279810603730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 ((n : ℤ) - A061579 n + (n : ℤ)).toNat

end

end A281814.P4886759279810603730

namespace A281814

/-- `A023531(n-A061579(n)+n)` -/
def P4886759279810603730.Spec : Prop :=
  ∀ n, P4886759279810603730.a n = A281814 n

end A281814

/-! ## A281814.P12886152227607368408

`A023531(n-(A061579(n)-n))`
-/

namespace A281814.P12886152227607368408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 ((n : ℤ) - (A061579 n - (n : ℤ))).toNat

end

end A281814.P12886152227607368408

namespace A281814

/-- `A023531(n-(A061579(n)-n))` -/
def P12886152227607368408.Spec : Prop :=
  ∀ n, P12886152227607368408.a n = A281814 n

end A281814

/-! ## A281814.P11372323141653193454

`A255738(3*n+4)+char[A195160(n)]`
-/

namespace A281814.P11372323141653193454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195160 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (3 * n + 4) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281814.P11372323141653193454

namespace A281814

/-- `A255738(3*n+4)+char[A195160(n)]` -/
def P11372323141653193454.Spec : Prop :=
  ∀ n, P11372323141653193454.a n = A281814 n

end A281814

/-! ## A281814.P721436093266227391

`A010054((3*n+1)%∑[char[∑[n]]]²+1)`
-/

namespace A281814.P721436093266227391
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((3 * n + 1) % (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1)

end

end A281814.P721436093266227391

namespace A281814

/-- `A010054((3*n+1)%∑[char[∑[n]]]²+1)` -/
def P721436093266227391.Spec : Prop :=
  ∀ n, P721436093266227391.a n = A281814 n

end A281814

/-! ## A281814.P6191366176776602812

`A010054(2*n+1-A061579(n))`
-/

namespace A281814.P6191366176776602812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((2 * n + 1 : ℤ) - A061579 n).toNat

end

end A281814.P6191366176776602812

namespace A281814

/-- `A010054(2*n+1-A061579(n))` -/
def P6191366176776602812.Spec : Prop :=
  ∀ n, P6191366176776602812.a n = A281814 n

end A281814

/-! ## A281814.P701121375042971814

`A010054(A020703(2*(n+1))-(n+1))`
-/

namespace A281814.P701121375042971814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A020703 (2 * (n + 1)) - (n + 1 : ℤ)).toNat

end

end A281814.P701121375042971814

namespace A281814

/-- `A010054(A020703(2*(n+1))-(n+1))` -/
def P701121375042971814.Spec : Prop :=
  ∀ n, P701121375042971814.a n = A281814 n

end A281814

/-! ## A281814.P10009503086608933013

`A214263(A220508(n))`
-/

namespace A281814.P10009503086608933013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214263 (A220508 n).toNat

end

end A281814.P10009503086608933013

namespace A281814

/-- `A214263(A220508(n))` -/
def P10009503086608933013.Spec : Prop :=
  ∀ n, P10009503086608933013.a n = A281814 n

end A281814

/-! ## A281814.P8644865959611517673

`A010054(A196199(2*n+1)+n+1)`
-/

namespace A281814.P8644865959611517673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A196199 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A281814.P8644865959611517673

namespace A281814

/-- `A010054(A196199(2*n+1)+n+1)` -/
def P8644865959611517673.Spec : Prop :=
  ∀ n, P8644865959611517673.a n = A281814 n

end A281814

/-! ## A281814.P5632532517380503733

`A023531(A016777(2*n)+A016777(n+1))`
-/

namespace A281814.P5632532517380503733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A016777 (2 * n) + A016777 (n + 1)).toNat

end

end A281814.P5632532517380503733

namespace A281814

/-- `A023531(A016777(2*n)+A016777(n+1))` -/
def P5632532517380503733.Spec : Prop :=
  ∀ n, P5632532517380503733.a n = A281814 n

end A281814

/-! ## A281814.P17781554692114993378

`A080995(3*n+2)`
-/

namespace A281814.P17781554692114993378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 (3 * n + 2)

end

end A281814.P17781554692114993378

namespace A281814

/-- `A080995(3*n+2)` -/
def P17781554692114993378.Spec : Prop :=
  ∀ n, P17781554692114993378.a n = A281814 n

end A281814

/-! ## A281814.P15722425441087598424

`abs(A010815(3*n+2))`
-/

namespace A281814.P15722425441087598424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010815 (3 * n + 2)|

end

end A281814.P15722425441087598424

namespace A281814

/-- `abs(A010815(3*n+2))` -/
def P15722425441087598424.Spec : Prop :=
  ∀ n, P15722425441087598424.a n = A281814 n

end A281814

/-!
# A281815: Expansion of f(x, x^10) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A281815, the canonical program `A281815.P14093454000393158051` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281815 has offset 0).

The definition of A281815 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A281815.P14093454000393158051

`A010052(88*n+81)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A281815

/-- `A010052(88*n+81)` -/
def P14093454000393158051.Spec : Prop :=
  ∀ n, P14093454000393158051.a n = A281815 n

theorem P14093454000393158051.correct : P14093454000393158051.Spec := by
  intro n
  simp only [A281815]

end A281815

/-! ## A281815.P6050278625740793222

`and(1, char[A195313(n)])`
-/

namespace A281815.P6050278625740793222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195313 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A281815.P6050278625740793222

namespace A281815

/-- `and(1, char[A195313(n)])` -/
def P6050278625740793222.Spec : Prop :=
  ∀ n, (P6050278625740793222.a n : ℤ) = A281815 n

end A281815

/-! ## A281815.P13156557380953563741

`A000007(n)+char[A195313(n+1)]`
-/

namespace A281815.P13156557380953563741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195313 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281815.P13156557380953563741

namespace A281815

/-- `A000007(n)+char[A195313(n+1)]` -/
def P13156557380953563741.Spec : Prop :=
  ∀ n, P13156557380953563741.a n = A281815 n

end A281815

/-! ## A281815.P3863552609836339930

`char[A195313(n)]*A080278(n+1)`
-/

namespace A281815.P3863552609836339930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195313 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A080278 (n + 1)

end

end A281815.P3863552609836339930

namespace A281815

/-- `char[A195313(n)]*A080278(n+1)` -/
def P3863552609836339930.Spec : Prop :=
  ∀ n, P3863552609836339930.a n = A281815 n

end A281815

/-! ## A281815.P11576076400995766146

`A360113(2*(n+3))+char[A195313(n)]`
-/

namespace A281815.P11576076400995766146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195313 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360113 (2 * (n + 3)) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281815.P11576076400995766146

namespace A281815

/-- `A360113(2*(n+3))+char[A195313(n)]` -/
def P11576076400995766146.Spec : Prop :=
  ∀ n, P11576076400995766146.a n = A281815 n

end A281815

/-! ## A281815.P8832206621690576450

`A023531(A017497(n))`
-/

namespace A281815.P8832206621690576450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A017497 n).toNat

end

end A281815.P8832206621690576450

namespace A281815

/-- `A023531(A017497(n))` -/
def P8832206621690576450.Spec : Prop :=
  ∀ n, P8832206621690576450.a n = A281815 n

end A281815

/-! ## A281815.P16695301227804826150

`A000122(3*n+2)+char[A195313(n)]`
-/

namespace A281815.P16695301227804826150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195313 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (3 * n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281815.P16695301227804826150

namespace A281815

/-- `A000122(3*n+2)+char[A195313(n)]` -/
def P16695301227804826150.Spec : Prop :=
  ∀ n, P16695301227804826150.a n = A281815 n

end A281815

/-! ## A281815.P14106366688920338546

`A073424(11*n+10)`
-/

namespace A281815.P14106366688920338546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (11 * n + 10)

end

end A281815.P14106366688920338546

namespace A281815

/-- `A073424(11*n+10)` -/
def P14106366688920338546.Spec : Prop :=
  ∀ n, P14106366688920338546.a n = A281815 n

end A281815

/-! ## A281815.P3532981348628504697

`A097806(3*n+8*(n+1))`
-/

namespace A281815.P3532981348628504697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (3 * n + 8 * (n + 1))

end

end A281815.P3532981348628504697

namespace A281815

/-- `A097806(3*n+8*(n+1))` -/
def P3532981348628504697.Spec : Prop :=
  ∀ n, P3532981348628504697.a n = A281815 n

end A281815

/-! ## A281815.P3974098719927266642

`A103451(A016861(2*n+1)+n+3)`
-/

namespace A281815.P3974098719927266642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (A016861 (2 * n + 1) + (n + 3 : ℤ)).toNat

end

end A281815.P3974098719927266642

namespace A281815

/-- `A103451(A016861(2*n+1)+n+3)` -/
def P3974098719927266642.Spec : Prop :=
  ∀ n, P3974098719927266642.a n = A281815 n

end A281815

/-! ## A281815.P12277696131649098158

`C(2, A002262(11*n+10))`
-/

namespace A281815.P12277696131649098158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A002262 (11 * n + 10)).toNat

end

end A281815.P12277696131649098158

namespace A281815

/-- `C(2, A002262(11*n+10))` -/
def P12277696131649098158.Spec : Prop :=
  ∀ n, (P12277696131649098158.a n : ℤ) = A281815 n

end A281815

/-! ## A281815.P18083805090395930352

`A185917(8*(n+1)+3*n+2)`
-/

namespace A281815.P18083805090395930352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185917 (8 * (n + 1) + (3 * n + 2))

end

end A281815.P18083805090395930352

namespace A281815

/-- `A185917(8*(n+1)+3*n+2)` -/
def P18083805090395930352.Spec : Prop :=
  ∀ n, P18083805090395930352.a n = A281815 n

end A281815

/-! ## A281815.P6558713270829012811

`A010054(A017509(n))`
-/

namespace A281815.P6558713270829012811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A017509 n).toNat

end

end A281815.P6558713270829012811

namespace A281815

/-- `A010054(A017509(n))` -/
def P6558713270829012811.Spec : Prop :=
  ∀ n, P6558713270829012811.a n = A281815 n

end A281815

/-! ## A281815.P7506475484203298992

`A122431(A017461(n))`
-/

namespace A281815.P7506475484203298992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122431 (A017461 n).toNat

end

end A281815.P7506475484203298992

namespace A281815

/-- `A122431(A017461(n))` -/
def P7506475484203298992.Spec : Prop :=
  ∀ n, P7506475484203298992.a n = A281815 n

end A281815

/-! ## A281815.P15858283185199804265

`A185018(A017473(n))`
-/

namespace A281815.P15858283185199804265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 (A017473 n).toNat

end

end A281815.P15858283185199804265

namespace A281815

/-- `A185018(A017473(n))` -/
def P15858283185199804265.Spec : Prop :=
  ∀ n, P15858283185199804265.a n = A281815 n

end A281815

/-! ## A281815.P16919892655511553346

`A326822(A008593(n+1))`
-/

namespace A281815.P16919892655511553346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326822 (A008593 (n + 1)).toNat

end

end A281815.P16919892655511553346

namespace A281815

/-- `A326822(A008593(n+1))` -/
def P16919892655511553346.Spec : Prop :=
  ∀ n, P16919892655511553346.a n = A281815 n

end A281815

/-! ## A281815.P1048200316760845355

`A010054(A017485(n)+2)`
-/

namespace A281815.P1048200316760845355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A017485 n + 2).toNat

end

end A281815.P1048200316760845355

namespace A281815

/-- `A010054(A017485(n)+2)` -/
def P1048200316760845355.Spec : Prop :=
  ∀ n, P1048200316760845355.a n = A281815 n

end A281815

/-! ## A281815.P12087278887610990343

`A010054(A008591(n+1)+2*n+1)`
-/

namespace A281815.P12087278887610990343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A008591 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A281815.P12087278887610990343

namespace A281815

/-- `A010054(A008591(n+1)+2*n+1)` -/
def P12087278887610990343.Spec : Prop :=
  ∀ n, P12087278887610990343.a n = A281815 n

end A281815

/-! ## A281815.P17120684125802043475

`A010054(A297469(2*n+1)+n+3)`
-/

namespace A281815.P17120684125802043475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A297469 (2 * n + 1) + (n + 3 : ℤ)).toNat

end

end A281815.P17120684125802043475

namespace A281815

/-- `A010054(A297469(2*n+1)+n+3)` -/
def P17120684125802043475.Spec : Prop :=
  ∀ n, P17120684125802043475.a n = A281815 n

end A281815

/-!
# A281817: a(n) = 2*Sum_{k odd} k!*Stirling2(n,k)/(k + 1).

The programs for A281817, there is no canonical definition to state claims against.
-/

/-! ## A281817.P6787037426322883733

`A049615(Δ[n!]+n+1)`
-/

namespace A281817.P6787037426322883733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)).toNat

end

end A281817.P6787037426322883733

/-! ## A281817.P12624929593809087740

`∑[A330626(n)-A261719(n)]`
-/

namespace A281817.P12624929593809087740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330626 n - A261719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281817.P12624929593809087740

/-! ## A281817.P17863794074910473599

`A049615(A001563(n)+n+1)`
-/

namespace A281817.P17863794074910473599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (A001563 n + (n + 1 : ℤ)).toNat

end

end A281817.P17863794074910473599

/-!
# A281819: Even numbers k such that half the sum of the even divisors equals the sum of the odd divisors and both are (the same) square.

The programs for A281819, there is no canonical definition to state claims against.
-/

/-! ## A281819.P10047870586341076811

`A195690(eq[2, A195690(n+1)%4]+1)`
-/

namespace A281819.P10047870586341076811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195690 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A281819.P10047870586341076811

/-! ## A281819.P10145264097966570807

`filter[A195690(n+1), A359374(#)]`
-/

namespace A281819.P10145264097966570807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A281819.P10145264097966570807

/-! ## A281819.P17864982372802253807

`filter[A195690(n+1), A359820(#)]`
-/

namespace A281819.P17864982372802253807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A281819.P17864982372802253807

/-! ## A281819.P14357155525734812250

`∩[A195690(n+1), A016825(n)]`
-/

namespace A281819.P14357155525734812250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281819.P14357155525734812250

/-! ## A281819.P14828860356602977636

`filter[A195690(n+1), A166486(#)]`
-/

namespace A281819.P14828860356602977636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A281819.P14828860356602977636

/-! ## A281819.P9309549754022102420

`filter[A195690(n+1), A391844(#)]`
-/

namespace A281819.P9309549754022102420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A281819.P9309549754022102420

/-! ## A281819.P2028575864210697060

`∩[A195690(n+1), A130824(n)]`
-/

namespace A281819.P2028575864210697060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281819.P2028575864210697060

/-! ## A281819.P10438909338886404363

`record[2*A093178(A006532(n+1))]`
-/

namespace A281819.P10438909338886404363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093178 (A006532 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281819.P10438909338886404363

/-! ## A281819.P5395347522439690505

`∩[A111284(n+1), A195690(n+1)]`
-/

namespace A281819.P5395347522439690505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281819.P5395347522439690505

/-! ## A281819.P14835452127336080404

`∩[A139544(n+1), A195690(n+1)]`
-/

namespace A281819.P14835452127336080404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281819.P14835452127336080404

/-! ## A281819.P4234436670917135691

`∩[A102212(n+1), A195690(n+1)]`
-/

namespace A281819.P4234436670917135691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281819.P4234436670917135691

/-! ## A281819.P12116838736308753794

`∩[A195690(n+1), A385723(n+1)]`
-/

namespace A281819.P12116838736308753794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281819.P12116838736308753794

/-! ## A281819.P11437664937426970856

`∩[A195690(n+1), A391845(n+1)]`
-/

namespace A281819.P11437664937426970856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281819.P11437664937426970856

/-! ## A281819.P9926872581431167021

`∩[A047396(n+1), A195690(n+1)]`
-/

namespace A281819.P9926872581431167021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281819.P9926872581431167021

/-! ## A281819.P2611863389864690471

`∩[A047402(n+1), A195690(n+1)]`
-/

namespace A281819.P2611863389864690471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281819.P2611863389864690471

/-! ## A281819.P18262163000239871670

`∩[A047440(n+1), A195690(n+1)]`
-/

namespace A281819.P18262163000239871670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281819.P18262163000239871670

/-! ## A281819.P9286293618679088982

`∩[A047552(n+1), A195690(n+1)]`
-/

namespace A281819.P9286293618679088982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281819.P9286293618679088982

/-! ## A281819.P14758622575143035577

`∩[A195690(n+1), A273324(n+1)]`
-/

namespace A281819.P14758622575143035577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281819.P14758622575143035577

/-! ## A281819.P10553220430557777545

`∩[A195690(n+1), A053438(n)]`
-/

namespace A281819.P10553220430557777545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281819.P10553220430557777545

/-! ## A281819.P7372175801803999652

`A005843(record[A093178(A006532(n+1))])`
-/

namespace A281819.P7372175801803999652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A006532 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A281819.P7372175801803999652

/-!
# A281821: Denominator of Sum_{k=1..n} (30k-11)/(4*(2k-1)*k^3*binomial(2k,k)^2).

The programs for A281821, there is no canonical definition to state claims against.
-/

/-! ## A281821.P15795714050500308561

`A033431(2*A119634(n))`
-/

namespace A281821.P15795714050500308561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (2 * A119634 n).toNat

end

end A281821.P15795714050500308561

/-!
# A281823: Least number k such that (k-n)^2 contains k as a substring.

The programs for A281823, there is no canonical definition to state claims against.
-/

/-! ## A281823.P2143111009703555040

`A337103(a(n-1))` with `a(0)=1, a(1)=12, a(2)=1, a(3)=16`
-/

namespace A281823.P2143111009703555040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 1, 16] fun n a =>
  A337103 (a (n - 1)).toNat

end

end A281823.P2143111009703555040

/-!
# A281824: Numbers that are the sum of 6 consecutive semiprimes.

The programs for A281824, the canonical program `A281824.P1008752639434888392` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281824 has offset 1).

The definition of A281824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281824.P1008752639434888392

`A118717(n+1)+A118717(n+3)+A118717(n+5)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A281824

/-- `A118717(n+1)+A118717(n+3)+A118717(n+5)` -/
def P1008752639434888392.Spec : Prop :=
  ∀ n, P1008752639434888392.a n = A281824 (n + 1)

theorem P1008752639434888392.correct : P1008752639434888392.Spec := by
  intro n
  simp only [A281824, Nat.add_sub_cancel]

end A281824

/-! ## A281824.P5979208877356605631

`A110208(n+6)-A110208(n)`
-/

namespace A281824.P5979208877356605631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110208 (n + 6) - A110208 n

end

end A281824.P5979208877356605631

namespace A281824

/-- `A110208(n+6)-A110208(n)` -/
def P5979208877356605631.Spec : Prop :=
  ∀ n, P5979208877356605631.a n = A281824 (n + 1)

end A281824

/-!
# A281825: Numerators of the binomial transform of A198631(n)/A006519(n+1) with A198631(1) = -1 instead of 1.

The programs for A281825, there is no canonical definition to state claims against.
-/

/-! ## A281825.P6441944664054557591

`A143074(n)-n*A006519(n+1)`
-/

namespace A281825.P6441944664054557591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143074 n - (n : ℤ) * A006519 (n + 1)

end

end A281825.P6441944664054557591

/-! ## A281825.P16454842636075449911

`A143074(n)-n*A000010(xor(n, n+1)+1)`
-/

namespace A281825.P16454842636075449911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143074 n - (n : ℤ) * A000010 (Nat.xor n (n + 1) + 1)

end

end A281825.P16454842636075449911

/-! ## A281825.P15386670398980497864

`A143074(n)-n*∏{d}[n+1, A014963(2*#)]/2`
-/

namespace A281825.P15386670398980497864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143074 n : ℚ) - (n : ℚ) * (((∏ d ∈ Nat.divisors (f1 n), A014963 (2 * d) : ℤ) : ℚ) / 2)

end

end A281825.P15386670398980497864

/-! ## A281825.P16488917307985030235

`A171977(n+1)-A198631(n)-n*(or(n, n+1)-n)`
-/

namespace A281825.P16488917307985030235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (n + 1) - A198631 n - (n : ℤ) * ((Nat.lor n (n + 1) : ℤ) - (n : ℤ))

end

end A281825.P16488917307985030235

/-! ## A281825.P6778356189098645878

`A171977(n+1)-A198631(n)-n*A000010(xor(n, n+1)+1)`
-/

namespace A281825.P6778356189098645878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (n + 1) - A198631 n - (n : ℤ) * A000010 (Nat.xor n (n + 1) + 1)

end

end A281825.P6778356189098645878

/-!
# A281827: Least number k such that k is the sum of two primes in exactly n ways, where both primes are of the form x^2 + y^2, or -1 if no such k exists.

The programs for A281827, there is no canonical definition to state claims against.
-/

/-! ## A281827.P9288297477051631993

`A259934(A066408(n+1))%A299256(A027836(n))`
-/

namespace A281827.P9288297477051631993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259934 (A066408 (n + 1)).toNat) (A299256 (A027836 n).toNat)

end

end A281827.P9288297477051631993

/-!
# A281830: Number of n X n 0..1 arrays with no element equal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281830, there is no canonical definition to state claims against.
-/

/-! ## A281830.P11007226960224867039

`A281837(∑[4*n]+1)`
-/

namespace A281830.P11007226960224867039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281830.P11007226960224867039

/-! ## A281830.P4494370852252622764

`record[gcd(A037012(n), A281837(n+1))]`
-/

namespace A281830.P4494370852252622764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A281837 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281830.P4494370852252622764

/-! ## A281830.P16176792106849533630

`lcm(A014427(n), A281837(A001844(n)))`
-/

namespace A281830.P16176792106849533630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014427 n) (A281837 (A001844 n).toNat)

end

end A281830.P16176792106849533630

/-! ## A281830.P17766056377189469906

`A007318(∑[n])*A281837(A001844(n))`
-/

namespace A281830.P17766056377189469906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A281837 (A001844 n).toNat

end

end A281830.P17766056377189469906

/-! ## A281830.P8781572460384076178

`A281837(A001844(n))/A007318(3^C(n, 64)²)`
-/

namespace A281830.P8781572460384076178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281837 (A001844 n).toNat : ℚ) / (A007318 (3 ^ Nat.choose n 64 ^ 2) : ℚ)

end

end A281830.P8781572460384076178

/-!
# A281831: Number of nX2 0..1 arrays with no element equal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281831, the canonical program `A281831.P11588993459314845537` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281831 has offset 1).

The definition of A281831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281831.P4217143225925306922

`ogf((2+2x+x^2)/(1-3x-3x^2-2x^3))`
-/

namespace A281831.P4217143225925306922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 1] [1, -3, -3, -2] n

end

end A281831.P4217143225925306922

namespace A281831

/-- `ogf((2+2x+x^2)/(1-3x-3x^2-2x^3))` -/
def P4217143225925306922.Spec : Prop :=
  ∀ n, P4217143225925306922.a n = A281831 (n + 1)

end A281831

/-! ## A281831.P11588993459314845537

`3*a(n-1)+3*a(n-2)+2*a(n-3)` with `a(0)=2, a(1)=8, a(2)=31`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281831

/-- `3*a(n-1)+3*a(n-2)+2*a(n-3)` -/
def P11588993459314845537.Spec : Prop :=
  ∀ n, (P11588993459314845537.a n : ℤ) = A281831 (n + 1)

theorem P11588993459314845537.correct : P11588993459314845537.Spec := by
  intro n
  simp only [A281831, Nat.add_sub_cancel]

end A281831

/-! ## A281831.P9277488748174385415

`Δ[A077822(n)]-2*a(n-1)` with `a(0)=2`
-/

namespace A281831.P9277488748174385415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077822 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (n + 1) - f1 n - 2 * a (n - 1)

end

end A281831.P9277488748174385415

namespace A281831

/-- `Δ[A077822(n)]-2*a(n-1)` -/
def P9277488748174385415.Spec : Prop :=
  ∀ n, P9277488748174385415.a n = A281831 (n + 1)

end A281831

/-! ## A281831.P16141687521545732040

`A281837(∑[n+1]+2)`
-/

namespace A281831.P16141687521545732040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281831.P16141687521545732040

namespace A281831

/-- `A281837(∑[n+1]+2)` -/
def P16141687521545732040.Spec : Prop :=
  ∀ n, P16141687521545732040.a n = A281831 (n + 1)

end A281831

/-! ## A281831.P3356951735221441601

`A299001(∑[n+1]+2)`
-/

namespace A281831.P3356951735221441601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281831.P3356951735221441601

namespace A281831

/-- `A299001(∑[n+1]+2)` -/
def P3356951735221441601.Spec : Prop :=
  ∀ n, P3356951735221441601.a n = A281831 (n + 1)

end A281831

/-!
# A281832: Number of n X 3 0..1 arrays with no element equal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281832, there is no canonical definition to state claims against.
-/

/-! ## A281832.P15259226671716425405

`A281837(∑[n+2]+4)`
-/

namespace A281832.P15259226671716425405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281832.P15259226671716425405

/-! ## A281832.P14625339684023737627

`A281837(A167614(n+1))+A185294(n)`
-/

namespace A281832.P14625339684023737627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A167614 (n + 1)).toNat + A185294 n

end

end A281832.P14625339684023737627

/-! ## A281832.P17195612868763511174

`A014910(n)*A281837(A167614(n+1))`
-/

namespace A281832.P17195612868763511174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014910 n * A281837 (A167614 (n + 1)).toNat

end

end A281832.P17195612868763511174

/-! ## A281832.P5959876730619415147

`A281837(A167614(n+1))%A017011(n)`
-/

namespace A281832.P5959876730619415147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281837 (A167614 (n + 1)).toNat) (A017011 n)

end

end A281832.P5959876730619415147

/-! ## A281832.P1908690098776100732

`or(A098108(n), A281837(A167614(n+1)))`
-/

namespace A281832.P1908690098776100732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098108 n) (A281837 (A167614 (n + 1)).toNat)

end

end A281832.P1908690098776100732

/-!
# A281833: Number of nX4 0..1 arrays with no element equal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281833, there is no canonical definition to state claims against.
-/

/-! ## A281833.P14819105812385482518

`A281837(A374004(n+1))`
-/

namespace A281833.P14819105812385482518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A374004 (n + 1)).toNat

end

end A281833.P14819105812385482518

/-! ## A281833.P10652295140199380521

`A281837(A141214(n)+7)`
-/

namespace A281833.P10652295140199380521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A141214 n + 7).toNat

end

end A281833.P10652295140199380521

/-! ## A281833.P127043981342459606

`A281837(A052905(n)+9)`
-/

namespace A281833.P127043981342459606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A052905 n + 9).toNat

end

end A281833.P127043981342459606

/-! ## A281833.P2791950322677187460

`A281837(Δ[A008778(n)]+6)`
-/

namespace A281833.P2791950322677187460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (f1 (n + 1) - f1 n + 6).toNat

end

end A281833.P2791950322677187460

/-! ## A281833.P442205741648584182

`A281837(A167614(n+2)+1)`
-/

namespace A281833.P442205741648584182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A167614 (n + 2) + 1).toNat

end

end A281833.P442205741648584182

/-!
# A281834: Number of n X 5 0..1 arrays with no element equal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281834, there is no canonical definition to state claims against.
-/

/-! ## A281834.P110781459593888539

`A281837(A374005(n+1))`
-/

namespace A281834.P110781459593888539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A374005 (n + 1)).toNat

end

end A281834.P110781459593888539

/-! ## A281834.P1110108555063800396

`A281837(A155212(n)+13)`
-/

namespace A281834.P1110108555063800396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A155212 n + 13).toNat

end

end A281834.P1110108555063800396

/-! ## A281834.P252136876726581312

`A281837(A056000(n)+15)`
-/

namespace A281834.P252136876726581312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A056000 n + 15).toNat

end

end A281834.P252136876726581312

/-! ## A281834.P3853134280144855259

`A281837(A167614(n+3)+2)`
-/

namespace A281834.P3853134280144855259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A167614 (n + 3) + 2).toNat

end

end A281834.P3853134280144855259

/-! ## A281834.P7257069244939457936

`A281837(A034856(n+3)+7)`
-/

namespace A281834.P7257069244939457936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A034856 (n + 3) + 7).toNat

end

end A281834.P7257069244939457936

/-!
# A281835: Number of n X 6 0..1 arrays with no element equal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281835, there is no canonical definition to state claims against.
-/

/-! ## A281835.P4380734666246828113

`A281837(A374007(n+1))`
-/

namespace A281835.P4380734666246828113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A374007 (n + 1)).toNat

end

end A281835.P4380734666246828113

/-! ## A281835.P1063580571540065166

`A281837(eq[7, A131818(n+1)])`
-/

namespace A281835.P1063580571540065166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281835.P1063580571540065166

/-! ## A281835.P4624296097915459022

`A281837(eq[3, A219347(n)])`
-/

namespace A281835.P4624296097915459022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281835.P4624296097915459022

/-! ## A281835.P12517817655880718742

`A281837(eq[5, A193592(n)])`
-/

namespace A281835.P12517817655880718742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281835.P12517817655880718742

/-! ## A281835.P11033024818236687680

`A281837(A046691(n+4)-1)`
-/

namespace A281835.P11033024818236687680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A046691 (n + 4) - 1).toNat

end

end A281835.P11033024818236687680

/-!
# A281836: Number of nX7 0..1 arrays with no element equal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281836, there is no canonical definition to state claims against.
-/

/-! ## A281836.P4194885824526436206

`A281837(A374008(n+1))`
-/

namespace A281836.P4194885824526436206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A374008 (n + 1)).toNat

end

end A281836.P4194885824526436206

/-! ## A281836.P5186576721754341319

`A281837(A056119(n)+28)`
-/

namespace A281836.P5186576721754341319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A056119 n + 28).toNat

end

end A281836.P5186576721754341319

/-! ## A281836.P17983074906230677324

`A281837(eq[8, A131818(n+1)])`
-/

namespace A281836.P17983074906230677324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281836.P17983074906230677324

/-! ## A281836.P14122139368895424931

`A281837(A055999(n+4))`
-/

namespace A281836.P14122139368895424931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (A055999 (n + 4)).toNat

end

end A281836.P14122139368895424931

/-! ## A281836.P10358363553611511065

`A281837(eq[4, A219347(n)])`
-/

namespace A281836.P10358363553611511065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281836.P10358363553611511065

/-!
# A281837: T(n,k)=Number of nXk 0..1 arrays with no element equal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281837, there is no canonical definition to state claims against.
-/

/-! ## A281837.P10249640890257038920

`A299081(n+1)-A014376(A174544(n))`
-/

namespace A281837.P10249640890257038920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (n + 1) - A014376 (A174544 n).toNat

end

end A281837.P10249640890257038920

/-! ## A281837.P2768564754166121228

`A299844(n+1)-A014376(A174544(n))`
-/

namespace A281837.P2768564754166121228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (n + 1) - A014376 (A174544 n).toNat

end

end A281837.P2768564754166121228

/-! ## A281837.P16990395459730968495

`A299081(n+1)+A014027(A299740(n+1))`
-/

namespace A281837.P16990395459730968495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (n + 1) + A014027 (A299740 (n + 1)).toNat

end

end A281837.P16990395459730968495

/-! ## A281837.P15233652471728352526

`A299844(n+1)+A014027(A299740(n+1))`
-/

namespace A281837.P15233652471728352526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (n + 1) + A014027 (A299740 (n + 1)).toNat

end

end A281837.P15233652471728352526

/-! ## A281837.P4402921857264390715

`A299081(n+1)-A185284(2*n+3)`
-/

namespace A281837.P4402921857264390715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (n + 1) - A185284 (2 * n + 3)

end

end A281837.P4402921857264390715

/-!
# A281839: Numbers k such that 5*10^k + 21 is prime.

The programs for A281839, there is no canonical definition to state claims against.
-/

/-! ## A281839.P4646748481987863785

`record[A273404(A125128(n+1)-A028310(n))]`
-/

namespace A281839.P4646748481987863785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273404 (A125128 (n + 1) - A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281839.P4646748481987863785

/-! ## A281839.P14960200952788290027

`record[A331545(n)]-A331534(A331527(n+1))`
-/

namespace A281839.P14960200952788290027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A331534 (A331527 (n + 1)).toNat

end

end A281839.P14960200952788290027

/-! ## A281839.P10707643428313626991

`lt[A261139(2*(n+1)), A346632(A261139(n))]`
-/

namespace A281839.P10707643428313626991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261139 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346632 (A261139 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281839.P10707643428313626991

/-! ## A281839.P8165789334276707864

`eq[A020639(A144048(2*(n+1))), A281680(n+4)]`
-/

namespace A281839.P8165789334276707864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A144048 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281839.P8165789334276707864

/-!
# A281840: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 401", based on the 5-celled von Neumann neighborhood.

The programs for A281840, there is no canonical definition to state claims against.
-/

/-! ## A281840.P8492916942961654088

`A007088(A281842(n))`
-/

namespace A281840.P8492916942961654088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281842 n).toNat

end

end A281840.P8492916942961654088

/-! ## A281840.P17931589118950018722

`A007088(floor(A267147(n)/A000079(n)))`
-/

namespace A281840.P17931589118950018722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A267147 n : ℚ) / (A000079 n : ℚ)⌋.toNat

end

end A281840.P17931589118950018722

/-! ## A281840.P6046085560020609177

`A185544(2*A281842(n))`
-/

namespace A281840.P6046085560020609177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281842 n).toNat

end

end A281840.P6046085560020609177

/-! ## A281840.P3822824106790269573

`A185544(2*floor(A267147(n)/A000079(n)))`
-/

namespace A281840.P3822824106790269573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * ⌊(A267147 n : ℚ) / (A000079 n : ℚ)⌋).toNat

end

end A281840.P3822824106790269573

/-! ## A281840.P6960983906666808480

`A282065(A280823(n+1))`
-/

namespace A281840.P6960983906666808480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282065 (A280823 (n + 1)).toNat

end

end A281840.P6960983906666808480

/-!
# A281841: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 401", based on the 5-celled von Neumann neighborhood.

The programs for A281841, there is no canonical definition to state claims against.
-/

/-! ## A281841.P15132578066005650324

`A007088(A281843(n))`
-/

namespace A281841.P15132578066005650324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281843 n).toNat

end

end A281841.P15132578066005650324

/-! ## A281841.P445509751048190279

`A007088(A267147(n)%A198633(n))`
-/

namespace A281841.P445509751048190279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A267147 n) (A198633 n)).toNat

end

end A281841.P445509751048190279

/-! ## A281841.P5197232691097560454

`A007088(and(A126646(n), A267147(n)))`
-/

namespace A281841.P5197232691097560454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A126646 n) (A267147 n)).toNat

end

end A281841.P5197232691097560454

/-! ## A281841.P3353701161939824337

`A007088(and(A267147(n), A281482(n)))`
-/

namespace A281841.P3353701161939824337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A267147 n) (A281482 n)).toNat

end

end A281841.P3353701161939824337

/-! ## A281841.P3637682135712660918

`A007088(and(A000203(2^n), A267147(n)))`
-/

namespace A281841.P3637682135712660918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A000203 (2 ^ n)) (A267147 n)).toNat

end

end A281841.P3637682135712660918

/-!
# A281842: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 401", based on the 5-celled von Neumann neighborhood.

The programs for A281842, the canonical program `A281842.P12528366148186742293` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281842 has offset 0).

The definition of A281842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281842.P12528366148186742293

`xor(A077896(A053438(n)), A289768(2*n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A281842

/-- `xor(A077896(A053438(n)), A289768(2*n))` -/
def P12528366148186742293.Spec : Prop :=
  ∀ n, P12528366148186742293.a n = A281842 n

theorem P12528366148186742293.correct : P12528366148186742293.Spec := by
  intro n
  simp only [A281842]

end A281842

/-! ## A281842.P7032271137206792359

`xor(A077896(A266303(n)), A289768(2*n))`
-/

namespace A281842.P7032271137206792359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A266303 n).toNat) (A289768 (2 * n))

end

end A281842.P7032271137206792359

namespace A281842

/-- `xor(A077896(A266303(n)), A289768(2*n))` -/
def P7032271137206792359.Spec : Prop :=
  ∀ n, P7032271137206792359.a n = A281842 n

end A281842

/-! ## A281842.P13490323145452619197

`xor(A077896(A042963(n+1)), A289768(2*n))`
-/

namespace A281842.P13490323145452619197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A042963 (n + 1)).toNat) (A289768 (2 * n))

end

end A281842.P13490323145452619197

namespace A281842

/-- `xor(A077896(A042963(n+1)), A289768(2*n))` -/
def P13490323145452619197.Spec : Prop :=
  ∀ n, P13490323145452619197.a n = A281842 n

end A281842

/-! ## A281842.P8608828955743037892

`and(A126646(n), A288129(A014601(n)))`
-/

namespace A281842.P8608828955743037892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A288129 (A014601 n).toNat)

end

end A281842.P8608828955743037892

namespace A281842

/-- `and(A126646(n), A288129(A014601(n)))` -/
def P8608828955743037892.Spec : Prop :=
  ∀ n, P8608828955743037892.a n = A281842 n

end A281842

/-! ## A281842.P6252446500784599621

`and(A283523(n), A288129(A014601(n)))`
-/

namespace A281842.P6252446500784599621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A283523 n) (A288129 (A014601 n).toNat)

end

end A281842.P6252446500784599621

namespace A281842

/-- `and(A283523(n), A288129(A014601(n)))` -/
def P6252446500784599621.Spec : Prop :=
  ∀ n, P6252446500784599621.a n = A281842 n

end A281842

/-! ## A281842.P7999508035007760788

`and(A284405(n), A288129(A014601(n)))`
-/

namespace A281842.P7999508035007760788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284405 n) (A288129 (A014601 n).toNat)

end

end A281842.P7999508035007760788

namespace A281842

/-- `and(A284405(n), A288129(A014601(n)))` -/
def P7999508035007760788.Spec : Prop :=
  ∀ n, P7999508035007760788.a n = A281842 n

end A281842

/-! ## A281842.P5181406693358744850

`and(A284481(n), A288129(A014601(n)))`
-/

namespace A281842.P5181406693358744850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284481 n) (A288129 (A014601 n).toNat)

end

end A281842.P5181406693358744850

namespace A281842

/-- `and(A284481(n), A288129(A014601(n)))` -/
def P5181406693358744850.Spec : Prop :=
  ∀ n, P5181406693358744850.a n = A281842 n

end A281842

/-! ## A281842.P17130268992531237700

`A288129(A014601(n))%(A290194(n)+2)`
-/

namespace A281842.P17130268992531237700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288129 (A014601 n).toNat) (A290194 n + 2)

end

end A281842.P17130268992531237700

namespace A281842

/-- `A288129(A014601(n))%(A290194(n)+2)` -/
def P17130268992531237700.Spec : Prop :=
  ∀ n, P17130268992531237700.a n = A281842 n

end A281842

/-! ## A281842.P5423588300070509853

`floor(A267147(n)/A000079(n))`
-/

namespace A281842.P5423588300070509853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267147 n : ℚ) / (A000079 n : ℚ)⌋

end

end A281842.P5423588300070509853

namespace A281842

/-- `floor(A267147(n)/A000079(n))` -/
def P5423588300070509853.Spec : Prop :=
  ∀ n, P5423588300070509853.a n = A281842 n

end A281842

/-!
# A281843: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 401", based on the 5-celled von Neumann neighborhood.

The programs for A281843, there is no canonical definition to state claims against.
-/

/-! ## A281843.P10506329357284386273

`A267147(n)%A198633(n)`
-/

namespace A281843.P10506329357284386273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267147 n) (A198633 n)

end

end A281843.P10506329357284386273

/-! ## A281843.P10668012971883299244

`and(A126646(n), A267147(n))`
-/

namespace A281843.P10668012971883299244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A267147 n)

end

end A281843.P10668012971883299244

/-! ## A281843.P2055229810050691821

`and(A267147(n), A281482(n))`
-/

namespace A281843.P2055229810050691821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A281482 n)

end

end A281843.P2055229810050691821

/-! ## A281843.P11666697378724897374

`and(A267147(n), A283506(n))`
-/

namespace A281843.P11666697378724897374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A283506 n)

end

end A281843.P11666697378724897374

/-! ## A281843.P9264356954005757728

`and(A267147(n), A283523(n))`
-/

namespace A281843.P9264356954005757728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A283523 n)

end

end A281843.P9264356954005757728

/-! ## A281843.P2117598037869159608

`and(A267147(n), A284353(n))`
-/

namespace A281843.P2117598037869159608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A284353 n)

end

end A281843.P2117598037869159608

/-! ## A281843.P17457279218177353897

`and(A267147(n), A284405(n))`
-/

namespace A281843.P17457279218177353897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A284405 n)

end

end A281843.P17457279218177353897

/-! ## A281843.P7147181944463386159

`and(A267147(n), A284481(n))`
-/

namespace A281843.P7147181944463386159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A284481 n)

end

end A281843.P7147181944463386159

/-! ## A281843.P17801779662098692634

`and(A267147(n), A284482(n))`
-/

namespace A281843.P17801779662098692634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A284482 n)

end

end A281843.P17801779662098692634

/-! ## A281843.P2388876352426102837

`and(A267147(n), A286521(n))`
-/

namespace A281843.P2388876352426102837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A286521 n)

end

end A281843.P2388876352426102837

/-! ## A281843.P16691776608485973090

`and(A267147(n), A289098(n))`
-/

namespace A281843.P16691776608485973090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A289098 n)

end

end A281843.P16691776608485973090

/-! ## A281843.P1269867053973890317

`and(A267147(n), A289099(n))`
-/

namespace A281843.P1269867053973890317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A289099 n)

end

end A281843.P1269867053973890317

/-! ## A281843.P12175405037655331886

`and(A267147(n), A290073(n))`
-/

namespace A281843.P12175405037655331886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A290073 n)

end

end A281843.P12175405037655331886

/-! ## A281843.P7796293569534626538

`and(A267147(n), A290113(n))`
-/

namespace A281843.P7796293569534626538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A290113 n)

end

end A281843.P7796293569534626538

/-! ## A281843.P17102776871001287616

`and(A267147(n), A290230(n))`
-/

namespace A281843.P17102776871001287616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A290230 n)

end

end A281843.P17102776871001287616

/-! ## A281843.P780654910786111764

`and(A267147(n), A290231(n))`
-/

namespace A281843.P780654910786111764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A290231 n)

end

end A281843.P780654910786111764

/-! ## A281843.P16012086151970686585

`and(A267147(n), A290662(n))`
-/

namespace A281843.P16012086151970686585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A290662 n)

end

end A281843.P16012086151970686585

/-! ## A281843.P12183804944813319060

`and(A267147(n), A290682(n))`
-/

namespace A281843.P12183804944813319060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A290682 n)

end

end A281843.P12183804944813319060

/-! ## A281843.P13153729728429715872

`and(A267147(n), A290683(n))`
-/

namespace A281843.P13153729728429715872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267147 n) (A290683 n)

end

end A281843.P13153729728429715872

/-!
# A281844: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 403", based on the 5-celled von Neumann neighborhood.

The programs for A281844, there is no canonical definition to state claims against.
-/

/-! ## A281844.P1527479670577646257

`A007088(A281846(n))`
-/

namespace A281844.P1527479670577646257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281846 n).toNat

end

end A281844.P1527479670577646257

/-! ## A281844.P6115035238544800784

`A185544(2*A281846(n))`
-/

namespace A281844.P6115035238544800784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281846 n).toNat

end

end A281844.P6115035238544800784

/-!
# A281845: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 403", based on the 5-celled von Neumann neighborhood.

The programs for A281845, there is no canonical definition to state claims against.
-/

/-! ## A281845.P12117268827097160675

`A007088(A281847(n))`
-/

namespace A281845.P12117268827097160675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281847 n).toNat

end

end A281845.P12117268827097160675

/-! ## A281845.P2959899326919001105

`A185544(2*A281847(n))`
-/

namespace A281845.P2959899326919001105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281847 n).toNat

end

end A281845.P2959899326919001105

/-!
# A281848: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 405", based on the 5-celled von Neumann neighborhood.

The programs for A281848, there is no canonical definition to state claims against.
-/

/-! ## A281848.P13642483537928608589

`A007088(A281850(n))`
-/

namespace A281848.P13642483537928608589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281850 n).toNat

end

end A281848.P13642483537928608589

/-! ## A281848.P15732022543006690588

`A185544(2*A281850(n))`
-/

namespace A281848.P15732022543006690588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281850 n).toNat

end

end A281848.P15732022543006690588

/-! ## A281848.P1074483670138061500

`A185544(A281850(n)+A281850(n)+A185284(n))`
-/

namespace A281848.P1074483670138061500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A281850 n + (A281850 n + A185284 n)).toNat

end

end A281848.P1074483670138061500

/-! ## A281848.P17923519923844816393

`A185544(A281850(n)-(A185284(n)-A281850(n)))`
-/

namespace A281848.P17923519923844816393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A281850 n - (A185284 n - A281850 n)).toNat

end

end A281848.P17923519923844816393

/-!
# A281849: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 405", based on the 5-celled von Neumann neighborhood.

The programs for A281849, there is no canonical definition to state claims against.
-/

/-! ## A281849.P16378498840721578901

`A007088(A281851(n))`
-/

namespace A281849.P16378498840721578901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281851 n).toNat

end

end A281849.P16378498840721578901

/-! ## A281849.P18057688295817362751

`A185544(2*A281851(n))`
-/

namespace A281849.P18057688295817362751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281851 n).toNat

end

end A281849.P18057688295817362751

/-! ## A281849.P5960559949151402301

`∏{e}[7^n, A282215(#)]`
-/

namespace A281849.P5960559949151402301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A282215 (Nat.factorization (f1 n) p)

end

end A281849.P5960559949151402301

/-! ## A281849.P2855951202654297730

`A282215(A004902(n+1))`
-/

namespace A281849.P2855951202654297730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282215 (A004902 (n + 1)).toNat

end

end A281849.P2855951202654297730

/-!
# A281850: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 405", based on the 5-celled von Neumann neighborhood.

The programs for A281850, there is no canonical definition to state claims against.
-/

/-! ## A281850.P2590534517454459007

`∏{e}[7^n, A282216(#)]`
-/

namespace A281850.P2590534517454459007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A282216 (Nat.factorization (f1 n) p)

end

end A281850.P2590534517454459007

/-! ## A281850.P10077621663038544186

`A282216(A004891(n+1))`
-/

namespace A281850.P10077621663038544186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282216 (A004891 (n + 1)).toNat

end

end A281850.P10077621663038544186

/-! ## A281850.P9992011851518318894

`A282216(A004902(n+1))`
-/

namespace A281850.P9992011851518318894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282216 (A004902 (n + 1)).toNat

end

end A281850.P9992011851518318894

/-! ## A281850.P4851348929884518573

`A282216(A004913(n+1))`
-/

namespace A281850.P4851348929884518573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282216 (A004913 (n + 1)).toNat

end

end A281850.P4851348929884518573

/-!
# A281851: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 405", based on the 5-celled von Neumann neighborhood.

The programs for A281851, there is no canonical definition to state claims against.
-/

/-! ## A281851.P10031646568309792642

`∏{e}[7^n, A282217(#)]`
-/

namespace A281851.P10031646568309792642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A282217 (Nat.factorization (f1 n) p)

end

end A281851.P10031646568309792642

/-! ## A281851.P17339959599797885211

`A109680(A282217(n))`
-/

namespace A281851.P17339959599797885211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A282217 n).toNat

end

end A281851.P17339959599797885211

/-! ## A281851.P16097442167565259489

`A329888(A282217(n)²)`
-/

namespace A281851.P16097442167565259489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A282217 n ^ 2).toNat

end

end A281851.P16097442167565259489

/-! ## A281851.P4347322876732623620

`A282217(A004891(n+1))`
-/

namespace A281851.P4347322876732623620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282217 (A004891 (n + 1)).toNat

end

end A281851.P4347322876732623620

/-!
# A281852: Expansion of Sum_{p prime, i>=1} x^(p^i) / (1 - Sum_{p prime, j>=1} x^(p^j))^2.

The programs for A281852, there is no canonical definition to state claims against.
-/

/-! ## A281852.P16516592403725504285

`A307298(n)+A056847(A320921(n))`
-/

namespace A281852.P16516592403725504285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307298 n + A056847 (A320921 n).toNat

end

end A281852.P16516592403725504285

/-! ## A281852.P2990923630945383307

`A303235(A303224(n)+A097331(n))`
-/

namespace A281852.P2990923630945383307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303235 (A303224 n + A097331 n).toNat

end

end A281852.P2990923630945383307

/-! ## A281852.P18370803668338460585

`A135660(A004277(n*A104434(n)))`
-/

namespace A281852.P18370803668338460585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A004277 ((n : ℤ) * A104434 n).toNat).toNat

end

end A281852.P18370803668338460585

/-! ## A281852.P9855553873430697934

`A089850(A006498(n+2)-A384055(n+1))`
-/

namespace A281852.P9855553873430697934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A006498 (n + 2) - A384055 (n + 1)).toNat

end

end A281852.P9855553873430697934

/-!
# A281853: Expansion of Sum_{k>=2} x^prime(k) / (1 - Sum_{k>=2} x^prime(k))^2.

The programs for A281853, there is no canonical definition to state claims against.
-/

/-! ## A281853.P6392015516309536101

`A002125(n+1)-A002124(n+1)`
-/

namespace A281853.P6392015516309536101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002125 (n + 1) - A002124 (n + 1)

end

end A281853.P6392015516309536101

/-!
# A281854: Irregular triangle read by rows. Row n gives the orders of the cyclic groups appearing as factors in the direct product decomposition of the abelian non-cyclic multiplicative groups of integers modulo A033949(n).

The programs for A281854, there is no canonical definition to state claims against.
-/

/-! ## A281854.P5754330584705425890

`3-A008683(A336471(A004731(n)))`
-/

namespace A281854.P5754330584705425890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A008683 (A336471 (A004731 n).toNat).toNat

end

end A281854.P5754330584705425890

/-! ## A281854.P3144788939796927608

`A126305(A000040(or(2, A134735(n+1))))`
-/

namespace A281854.P3144788939796927608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126305 (A000040 (Int.lor 2 (A134735 (n + 1))).toNat).toNat

end

end A281854.P3144788939796927608

/-! ## A281854.P15060027059293585712

`A174550(A287483(n)+1)`
-/

namespace A281854.P15060027059293585712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174550 (A287483 n + 1).toNat

end

end A281854.P15060027059293585712

/-!
# A281855: Number of cyclic group factors in the total decomposition of the abelian non-cyclic group (Z/A033949(n) Z)^x. Row lengths of A281854.

The programs for A281855, there is no canonical definition to state claims against.
-/

/-! ## A281855.P15312325404344101007

`A282625(A033949(n+1))`
-/

namespace A281855.P15312325404344101007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282625 (A033949 (n + 1)).toNat

end

end A281855.P15312325404344101007

/-! ## A281855.P2308556698106057356

`A282625(A175594(n+2))`
-/

namespace A281855.P2308556698106057356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282625 (A175594 (n + 2)).toNat

end

end A281855.P2308556698106057356

/-! ## A281855.P15831796589088847213

`A282625(A180634(n+3))`
-/

namespace A281855.P15831796589088847213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282625 (A180634 (n + 3)).toNat

end

end A281855.P15831796589088847213

/-! ## A281855.P15850836925331239345

`A282625(A354109(n+4))`
-/

namespace A281855.P15850836925331239345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282625 (A354109 (n + 4)).toNat

end

end A281855.P15850836925331239345

/-! ## A281855.P202179028778853169

`A282625(A277915(∑[n+1]))`
-/

namespace A281855.P202179028778853169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282625 (A277915 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A281855.P202179028778853169

/-! ## A281855.P11114343234423733100

`A282625(eq[A045534(n), A046145(n)])`
-/

namespace A281855.P11114343234423733100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282625 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A281855.P11114343234423733100

/-! ## A281855.P18073710951219190037

`A282625(eq[A045534(n), A046146(n)])`
-/

namespace A281855.P18073710951219190037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282625 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A281855.P18073710951219190037

/-! ## A281855.P16055827527341460444

`A282625(eq[A045534(n), A103309(n)])`
-/

namespace A281855.P16055827527341460444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282625 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A281855.P16055827527341460444

/-! ## A281855.P16719983920669058587

`A282625(eq[A019590(n+1), A046145(n)])`
-/

namespace A281855.P16719983920669058587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282625 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A281855.P16719983920669058587

/-! ## A281855.P16165836621491012777

`A282625(eq[A019590(n+1), A046146(n)])`
-/

namespace A281855.P16165836621491012777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282625 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A281855.P16165836621491012777

/-!
# A281856: One fourth of the order of the abelian non-cyclic groups (Z/A033949(n)*Z)^x.

The programs for A281856, the canonical program `A281856.P11104635091588111363` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281856 has offset 1).

The definition of A281856 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033949, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A281856.P11104635091588111363

`A000010(A033949(n+1))/4`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A281856

/-- `A000010(A033949(n+1))/4` -/
def P11104635091588111363.Spec : Prop :=
  ∀ n, P11104635091588111363.a n = (A281856 (n + 1) : ℚ)

end A281856

/-! ## A281856.P11757989099491694259

`A000010(lt[A211487(n+2), 1]+2)/4`
-/

namespace A281856.P11757989099491694259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2) : ℚ) / 4

end

end A281856.P11757989099491694259

namespace A281856

/-- `A000010(lt[A211487(n+2), 1]+2)/4` -/
def P11757989099491694259.Spec : Prop :=
  ∀ n, P11757989099491694259.a n = (A281856 (n + 1) : ℚ)

end A281856

/-! ## A281856.P18282043771816098360

`A000010(A175594(n+2))/4`
-/

namespace A281856.P18282043771816098360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A175594 (n + 2)).toNat : ℚ) / 4

end

end A281856.P18282043771816098360

namespace A281856

/-- `A000010(A175594(n+2))/4` -/
def P18282043771816098360.Spec : Prop :=
  ∀ n, P18282043771816098360.a n = (A281856 (n + 1) : ℚ)

end A281856

/-! ## A281856.P4576578830667494020

`A002265(A000010(A033949(n+1)))`
-/

namespace A281856.P4576578830667494020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000010 (A033949 (n + 1)).toNat).toNat

end

end A281856.P4576578830667494020

namespace A281856

/-- `A002265(A000010(A033949(n+1)))` -/
def P4576578830667494020.Spec : Prop :=
  ∀ n, P4576578830667494020.a n = A281856 (n + 1)

end A281856

/-! ## A281856.P5741386727194129312

`A023022(A180634(n+3))/2`
-/

namespace A281856.P5741386727194129312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023022 (A180634 (n + 3)).toNat : ℚ) / 2

end

end A281856.P5741386727194129312

namespace A281856

/-- `A023022(A180634(n+3))/2` -/
def P5741386727194129312.Spec : Prop :=
  ∀ n, P5741386727194129312.a n = (A281856 (n + 1) : ℚ)

end A281856

/-! ## A281856.P3335030758526201679

`A000010(lt[1, A155828(n+1)]+1)/4`
-/

namespace A281856.P3335030758526201679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155828 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℚ) / 4

end

end A281856.P3335030758526201679

namespace A281856

/-- `A000010(lt[1, A155828(n+1)]+1)/4` -/
def P3335030758526201679.Spec : Prop :=
  ∀ n, P3335030758526201679.a n = (A281856 (n + 1) : ℚ)

end A281856

/-! ## A281856.P10654050868878613817

`A000010(A277915(∑[n+1]))/4`
-/

namespace A281856.P10654050868878613817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A277915 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ) / 4

end

end A281856.P10654050868878613817

namespace A281856

/-- `A000010(A277915(∑[n+1]))/4` -/
def P10654050868878613817.Spec : Prop :=
  ∀ n, P10654050868878613817.a n = (A281856 (n + 1) : ℚ)

end A281856

/-! ## A281856.P16268888380387990509

`A000010(A354109(n+4))/4`
-/

namespace A281856.P16268888380387990509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A354109 (n + 4)).toNat : ℚ) / 4

end

end A281856.P16268888380387990509

namespace A281856

/-- `A000010(A354109(n+4))/4` -/
def P16268888380387990509.Spec : Prop :=
  ∀ n, P16268888380387990509.a n = (A281856 (n + 1) : ℚ)

end A281856

/-!
# A281857: Numbers occurring in a curious cubic identity.

The programs for A281857, the canonical program `A281857.P5655171418334684755` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281857 has offset 1).

The definition of A281857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281857.P5655171418334684755

`((10^(n+1)-4)/6)^3+(10^(n+1)/2)^3+((10^(n+1)-1)/3)^3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281857

/-- `((10^(n+1)-4)/6)^3+(10^(n+1)/2)^3+((10^(n+1)-1)/3)^3` -/
def P5655171418334684755.Spec : Prop :=
  ∀ n, P5655171418334684755.a n = (A281857 (n + 1) : ℚ)

end A281857

/-! ## A281857.P16294381000204892515

`A133201(3*(n+1))*A199685(A187829(2*n+1))`
-/

namespace A281857.P16294381000204892515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133201 (3 * (n + 1)) * A199685 (A187829 (2 * n + 1)).toNat

end

end A281857.P16294381000204892515

namespace A281857

/-- `A133201(3*(n+1))*A199685(A187829(2*n+1))` -/
def P16294381000204892515.Spec : Prop :=
  ∀ n, P16294381000204892515.a n = A281857 (n + 1)

end A281857

/-!
# A281858: Curious cubic identities based on the Armstrong number 370.

The programs for A281858, the canonical program `A281858.P9936916005371477950` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281858 has offset 1).

The definition of A281858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281858.P9936916005371477950

`10^(n+1)*(1+10^(n+1)+100^(n+1))/3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281858

/-- `10^(n+1)*(1+10^(n+1)+100^(n+1))/3` -/
def P9936916005371477950.Spec : Prop :=
  ∀ n, P9936916005371477950.a n = (A281858 (n + 1) : ℚ)

end A281858

/-! ## A281858.P870536308615969834

`A281860(n+1)-1`
-/

namespace A281858.P870536308615969834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281860 (n + 1) - 1

end

end A281858.P870536308615969834

namespace A281858

/-- `A281860(n+1)-1` -/
def P870536308615969834.Spec : Prop :=
  ∀ n, P870536308615969834.a n = A281858 (n + 1)

end A281858

/-! ## A281858.P549892910592319397

`10^(n+1)*A074992(n+1)`
-/

namespace A281858.P549892910592319397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) * A074992 (n + 1)

end

end A281858.P549892910592319397

namespace A281858

/-- `10^(n+1)*A074992(n+1)` -/
def P549892910592319397.Spec : Prop :=
  ∀ n, P549892910592319397.a n = A281858 (n + 1)

end A281858

/-!
# A281859: Curious identities based on the Armstrong number 407 = A005188(13).

The programs for A281859, the canonical program `A281859.P15233000182421024723` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281859 has offset 1).

The definition of A281859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281859.P15233000182421024723

`(1+2^(1+n+1)*5^(n+1)+2^(1+2*(n+1))*25^(n+1)+1000^(n+1))/3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281859

/-- `(1+2^(1+n+1)*5^(n+1)+2^(1+2*(n+1))*25^(n+1)+1000^(n+1))/3` -/
def P15233000182421024723.Spec : Prop :=
  ∀ n, P15233000182421024723.a n = (A281859 (n + 1) : ℚ)

end A281859

/-! ## A281859.P4021909201647549780

`A000533(n+1)*A074992(n+1)`
-/

namespace A281859.P4021909201647549780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (n + 1) * A074992 (n + 1)

end

end A281859.P4021909201647549780

namespace A281859

/-- `A000533(n+1)*A074992(n+1)` -/
def P4021909201647549780.Spec : Prop :=
  ∀ n, P4021909201647549780.a n = A281859 (n + 1)

end A281859

/-! ## A281859.P1044160244318192233

`(A011557(n+1)+1)*A074992(n+1)`
-/

namespace A281859.P1044160244318192233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011557 (n + 1) + 1) * A074992 (n + 1)

end

end A281859.P1044160244318192233

namespace A281859

/-- `(A011557(n+1)+1)*A074992(n+1)` -/
def P1044160244318192233.Spec : Prop :=
  ∀ n, P1044160244318192233.a n = A281859 (n + 1)

end A281859

/-! ## A281859.P6905813144169094004

`A093137(n+1)*A133384(2*n+1)-1`
-/

namespace A281859.P6905813144169094004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 (n + 1) * A133384 (2 * n + 1) - 1

end

end A281859.P6905813144169094004

namespace A281859

/-- `A093137(n+1)*A133384(2*n+1)-1` -/
def P6905813144169094004.Spec : Prop :=
  ∀ n, P6905813144169094004.a n = A281859 (n + 1)

end A281859

/-!
# A281860: Curious identities based on the Armstrong number 371 = A005188(12).

The programs for A281860, the canonical program `A281860.P7900045399767730167` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281860 has offset 1).

The definition of A281860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281860.P7900045399767730167

`(3+10^(n+1)+100^(n+1)+1000^(n+1))/3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281860

/-- `(3+10^(n+1)+100^(n+1)+1000^(n+1))/3` -/
def P7900045399767730167.Spec : Prop :=
  ∀ n, P7900045399767730167.a n = (A281860 (n + 1) : ℚ)

end A281860

/-! ## A281860.P7029557132617442822

`A281858(n+1)+1`
-/

namespace A281860.P7029557132617442822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281858 (n + 1) + 1

end

end A281860.P7029557132617442822

namespace A281860

/-- `A281858(n+1)+1` -/
def P7029557132617442822.Spec : Prop :=
  ∀ n, P7029557132617442822.a n = A281860 (n + 1)

end A281860

/-! ## A281860.P10062804773931841569

`A011557(n+1)*A074992(n+1)+1`
-/

namespace A281860.P10062804773931841569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) * A074992 (n + 1) + 1

end

end A281860.P10062804773931841569

namespace A281860

/-- `A011557(n+1)*A074992(n+1)+1` -/
def P10062804773931841569.Spec : Prop :=
  ∀ n, P10062804773931841569.a n = A281860 (n + 1)

end A281860

/-! ## A281860.P9229137846213566480

`A093137(A008585(n+1))+A074992(n+1)`
-/

namespace A281860.P9229137846213566480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 (A008585 (n + 1)).toNat + A074992 (n + 1)

end

end A281860.P9229137846213566480

namespace A281860

/-- `A093137(A008585(n+1))+A074992(n+1)` -/
def P9229137846213566480.Spec : Prop :=
  ∀ n, P9229137846213566480.a n = A281860 (n + 1)

end A281860

/-!
# A281861: Riordan transform of the Fibonacci sequence with the Riordan matrix A053121.

The programs for A281861, there is no canonical definition to state claims against.
-/

/-! ## A281861.P13580672009256526626

`Δ[A098615(n)/2]`
-/

namespace A281861.P13580672009256526626
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098615 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281861.P13580672009256526626

/-! ## A281861.P12619588103676179744

`Δ[(A126869(n)+A100095(n))/2]`
-/

namespace A281861.P12619588103676179744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126869 n + A100095 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281861.P12619588103676179744

/-! ## A281861.P17807231073853833631

`(A098615(n+1)-A098615(n))/2`
-/

namespace A281861.P17807231073853833631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098615 (n + 1) - A098615 n : ℚ) / 2

end

end A281861.P17807231073853833631

/-! ## A281861.P2018760328646988350

`Δ[(A108044(∑[n])+A100095(n))/2]`
-/

namespace A281861.P2018760328646988350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108044 (∑ j ∈ Finset.range (n + 1), f2 j) + A100095 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281861.P2018760328646988350

/-! ## A281861.P15137108691605776449

`Δ[(A116389(∑[n])+A100095(n))/2]`
-/

namespace A281861.P15137108691605776449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116389 (∑ j ∈ Finset.range (n + 1), f2 j) + A100095 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281861.P15137108691605776449

/-!
# A281862: Riordan transform of the triangular number sequence A000217 with the Chebyshev S matrix A049310.

The programs for A281862, the canonical program `A281862.P6329816750450541601` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281862 has offset 0).

The definition of A281862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281862.P6329816750450541601

`A165202(n)-A104555(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A281862

/-- `A165202(n)-A104555(n+1)` -/
def P6329816750450541601.Spec : Prop :=
  ∀ n, P6329816750450541601.a n = A281862 n

theorem P6329816750450541601.correct : P6329816750450541601.Spec := by
  intro n
  simp only [A281862]

end A281862

/-! ## A281862.P7861245354311223908

`∑[A100050(n+1)]-A104555(n+1)`
-/

namespace A281862.P7861245354311223908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A104555 (n + 1)

end

end A281862.P7861245354311223908

namespace A281862

/-- `∑[A100050(n+1)]-A104555(n+1)` -/
def P7861245354311223908.Spec : Prop :=
  ∀ n, P7861245354311223908.a n = A281862 n

end A281862

/-! ## A281862.P6436713033979496910

`∑[(n+1)*A163806(n+1)]-A104555(n+1)`
-/

namespace A281862.P6436713033979496910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A163806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A104555 (n + 1)

end

end A281862.P6436713033979496910

namespace A281862

/-- `∑[(n+1)*A163806(n+1)]-A104555(n+1)` -/
def P6436713033979496910.Spec : Prop :=
  ∀ n, P6436713033979496910.a n = A281862 n

end A281862

/-! ## A281862.P4849904501459738349

`A164965(n)+A110666(n)-A104555(n+1)`
-/

namespace A281862.P4849904501459738349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 n + A110666 n - A104555 (n + 1)

end

end A281862.P4849904501459738349

namespace A281862

/-- `A164965(n)+A110666(n)-A104555(n+1)` -/
def P4849904501459738349.Spec : Prop :=
  ∀ n, P4849904501459738349.a n = A281862 n

end A281862

/-! ## A281862.P8596625119492824881

`xor(A011655(n), A187307(n))-A104555(n+1)`
-/

namespace A281862.P8596625119492824881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011655 n) (A187307 n) - A104555 (n + 1)

end

end A281862.P8596625119492824881

namespace A281862

/-- `xor(A011655(n), A187307(n))-A104555(n+1)` -/
def P8596625119492824881.Spec : Prop :=
  ∀ n, P8596625119492824881.a n = A281862 n

end A281862

/-! ## A281862.P7758801506926789153

`∑[A110665(n)+A010892(n)]-A104555(n+1)`
-/

namespace A281862.P7758801506926789153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110665 n + A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A104555 (n + 1)

end

end A281862.P7758801506926789153

namespace A281862

/-- `∑[A110665(n)+A010892(n)]-A104555(n+1)` -/
def P7758801506926789153.Spec : Prop :=
  ∀ n, P7758801506926789153.a n = A281862 n

end A281862

/-! ## A281862.P5556109840048073636

`A165202(n)-A147843(A211004(n+1))`
-/

namespace A281862.P5556109840048073636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 n - A147843 (A211004 (n + 1)).toNat

end

end A281862.P5556109840048073636

namespace A281862

/-- `A165202(n)-A147843(A211004(n+1))` -/
def P5556109840048073636.Spec : Prop :=
  ∀ n, P5556109840048073636.a n = A281862 n

end A281862

/-!
# A281863: Alternating powers of 60 and 10 times powers of 60.

The programs for A281863, the canonical program `A281863.P10363674398025035946` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281863 has offset 0).

The definition of A281863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281863.P10363674398025035946

`60*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281863

/-- `60*a(n-2)` -/
def P10363674398025035946.Spec : Prop :=
  ∀ n, (P10363674398025035946.a n : ℤ) = A281863 n

theorem P10363674398025035946.correct : P10363674398025035946.Spec := by
  intro n
  simp only [A281863]

end A281863

/-! ## A281863.P6779535664523510837

`∏[abs(a(n-2))]` with `a(0)=1, a(1)=10, a(2)=6`
-/

namespace A281863.P6779535664523510837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281863.P6779535664523510837

namespace A281863

/-- `∏[abs(a(n-2))]` -/
def P6779535664523510837.Spec : Prop :=
  ∀ n, (P6779535664523510837.a n : ℤ) = A281863 n

end A281863

/-! ## A281863.P16961826921887345650

`∏[floor(a(n-2))]` with `a(0)=1, a(1)=10, a(2)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A281863.P16961826921887345650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281863.P16961826921887345650

namespace A281863

/-- `∏[floor(a(n-2))]` -/
def P16961826921887345650.Spec : Prop :=
  ∀ n, (P16961826921887345650.a n : ℤ) = A281863 n

end A281863

/-! ## A281863.P6741146356849597016

`∏[ceil(a(n-2))]` with `a(0)=1, a(1)=10, a(2)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A281863.P6741146356849597016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281863.P6741146356849597016

namespace A281863

/-- `∏[ceil(a(n-2))]` -/
def P6741146356849597016.Spec : Prop :=
  ∀ n, (P6741146356849597016.a n : ℤ) = A281863 n

end A281863

/-! ## A281863.P8267487578448834272

`∏[round(a(n-2))]` with `a(0)=1, a(1)=10, a(2)=6`

`round` is left out, it is the identity on integers.
-/

namespace A281863.P8267487578448834272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281863.P8267487578448834272

namespace A281863

/-- `∏[round(a(n-2))]` -/
def P8267487578448834272.Spec : Prop :=
  ∀ n, (P8267487578448834272.a n : ℤ) = A281863 n

end A281863

/-! ## A281863.P6169531007137243309

`2^n*A101553(n)`
-/

namespace A281863.P6169531007137243309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A101553 n

end

end A281863.P6169531007137243309

namespace A281863

/-- `2^n*A101553(n)` -/
def P6169531007137243309.Spec : Prop :=
  ∀ n, P6169531007137243309.a n = A281863 n

end A281863

/-! ## A281863.P15387066586556661341

`A056451(n)*A176710(n)`
-/

namespace A281863.P15387066586556661341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 n * A176710 n

end

end A281863.P15387066586556661341

namespace A281863

/-- `A056451(n)*A176710(n)` -/
def P15387066586556661341.Spec : Prop :=
  ∀ n, P15387066586556661341.a n = A281863 n

end A281863

/-! ## A281863.P6717222219793594815

`A026549(n)*A268100(n)`
-/

namespace A281863.P6717222219793594815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 n * A268100 n

end

end A281863.P6717222219793594815

namespace A281863

/-- `A026549(n)*A268100(n)` -/
def P6717222219793594815.Spec : Prop :=
  ∀ n, P6717222219793594815.a n = A281863 n

end A281863

/-! ## A281863.P3450816433121928211

`lcm(A000079(n), A101553(n))`
-/

namespace A281863.P3450816433121928211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A101553 n)

end

end A281863.P3450816433121928211

namespace A281863

/-- `lcm(A000079(n), A101553(n))` -/
def P3450816433121928211.Spec : Prop :=
  ∀ n, (P3450816433121928211.a n : ℤ) = A281863 n

end A281863

/-! ## A281863.P7598555110617735343

`A004643(n)*A166023(n+1)`
-/

namespace A281863.P7598555110617735343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 n * A166023 (n + 1)

end

end A281863.P7598555110617735343

namespace A281863

/-- `A004643(n)*A166023(n+1)` -/
def P7598555110617735343.Spec : Prop :=
  ∀ n, P7598555110617735343.a n = A281863 n

end A281863

/-! ## A281863.P3132468574982639822

`∏[A091084(2*n)+A091084(2*n+1)²]`
-/

namespace A281863.P3132468574982639822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091084 (2 * n) + A091084 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281863.P3132468574982639822

namespace A281863

/-- `∏[A091084(2*n)+A091084(2*n+1)²]` -/
def P3132468574982639822.Spec : Prop :=
  ∀ n, P3132468574982639822.a n = A281863 n

end A281863

/-! ## A281863.P16238807519187493903

`A000079(n)*A056451(n)*A108411(n)`
-/

namespace A281863.P16238807519187493903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A056451 n * A108411 n

end

end A281863.P16238807519187493903

namespace A281863

/-- `A000079(n)*A056451(n)*A108411(n)` -/
def P16238807519187493903.Spec : Prop :=
  ∀ n, P16238807519187493903.a n = A281863 n

end A281863

/-! ## A281863.P3294627741915709492

`A074872(n+2)*A108411(n)*A000079(n)`
-/

namespace A281863.P3294627741915709492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 2) * A108411 n * A000079 n

end

end A281863.P3294627741915709492

namespace A281863

/-- `A074872(n+2)*A108411(n)*A000079(n)` -/
def P3294627741915709492.Spec : Prop :=
  ∀ n, P3294627741915709492.a n = A281863 n

end A281863

/-! ## A281863.P9303580314707976945

`∏[A010726(n)]/6`
-/

namespace A281863.P9303580314707976945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010726 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 6

end

end A281863.P9303580314707976945

namespace A281863

/-- `∏[A010726(n)]/6` -/
def P9303580314707976945.Spec : Prop :=
  ∀ n, P9303580314707976945.a n = (A281863 n : ℚ)

end A281863

/-!
# A281864: Number of sets of exactly four positive integers <= n having a square element sum.

The programs for A281864, there is no canonical definition to state claims against.
-/

/-! ## A281864.P5380504286429131365

`A281871(A155212(n)+12)`
-/

namespace A281864.P5380504286429131365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A155212 n + 12).toNat

end

end A281864.P5380504286429131365

/-! ## A281864.P14528885559148784370

`A281871(A056000(n)+14)`
-/

namespace A281864.P14528885559148784370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A056000 n + 14).toNat

end

end A281864.P14528885559148784370

/-! ## A281864.P3507918186758124067

`A281871(A000124(n+4)+3)`
-/

namespace A281864.P3507918186758124067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000124 (n + 4) + 3).toNat

end

end A281864.P3507918186758124067

/-! ## A281864.P16926091376404890831

`A281871(A000096(n+3)+5)`
-/

namespace A281864.P16926091376404890831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000096 (n + 3) + 5).toNat

end

end A281864.P16926091376404890831

/-! ## A281864.P324777206561674898

`A281871(A000217(n+4)+4)`
-/

namespace A281864.P324777206561674898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 (n + 4) + 4).toNat

end

end A281864.P324777206561674898

/-! ## A281864.P5926067304093614516

`A281871(A055999(n+3)-A005408(n))`
-/

namespace A281864.P5926067304093614516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A055999 (n + 3) - A005408 n).toNat

end

end A281864.P5926067304093614516

/-!
# A281865: Number of sets of exactly five positive integers <= n having a square element sum.

The programs for A281865, there is no canonical definition to state claims against.
-/

/-! ## A281865.P10335770695046701242

`A281871(A167499(n+4))`
-/

namespace A281865.P10335770695046701242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A167499 (n + 4)).toNat

end

end A281865.P10335770695046701242

/-! ## A281865.P7668506675470415557

`record[A281871(A000124(n)+4)]`
-/

namespace A281865.P7668506675470415557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000124 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281865.P7668506675470415557

/-! ## A281865.P7013780423064179099

`record[A281871(A000217(n)+5)]`
-/

namespace A281865.P7013780423064179099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281865.P7013780423064179099

/-! ## A281865.P3971496097842216973

`A281871(A000217(n+5)+5)`
-/

namespace A281865.P3971496097842216973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 (n + 5) + 5).toNat

end

end A281865.P3971496097842216973

/-! ## A281865.P8431908579784840167

`record[A281871(A167614(n+1)-A008574(n))]`
-/

namespace A281865.P8431908579784840167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A167614 (n + 1) - A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281865.P8431908579784840167

/-!
# A281866: Number of sets of exactly six positive integers <= n having a square element sum.

The programs for A281866, there is no canonical definition to state claims against.
-/

/-! ## A281866.P2412243029142909709

`A281871(A133263(n+6)+4)`
-/

namespace A281866.P2412243029142909709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A133263 (n + 6) + 4).toNat

end

end A281866.P2412243029142909709

/-! ## A281866.P11207710680013523282

`A281871(A000124(n+6)+5)`
-/

namespace A281866.P11207710680013523282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000124 (n + 6) + 5).toNat

end

end A281866.P11207710680013523282

/-! ## A281866.P6210868172416083078

`A281871(A134869(n+6)+5)`
-/

namespace A281866.P6210868172416083078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A134869 (n + 6) + 5).toNat

end

end A281866.P6210868172416083078

/-! ## A281866.P8397779632870915434

`A281871(A000096(n+5)+7)`
-/

namespace A281866.P8397779632870915434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000096 (n + 5) + 7).toNat

end

end A281866.P8397779632870915434

/-! ## A281866.P12071710350868655710

`A281871(A000217(n+6)+6)`
-/

namespace A281866.P12071710350868655710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 (n + 6) + 6).toNat

end

end A281866.P12071710350868655710

/-! ## A281866.P10980716095492307263

`A281871(A034856(n+6)-(n-1))`
-/

namespace A281866.P10980716095492307263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A034856 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A281866.P10980716095492307263

/-! ## A281866.P18241437517258576898

`A281871(A087475(n+5)-A052905(n)-1)`
-/

namespace A281866.P18241437517258576898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A087475 (n + 5) - A052905 n - 1).toNat

end

end A281866.P18241437517258576898

/-! ## A281866.P5884954694350720066

`A281871(A046691(n+11)-A017029(n+8))`
-/

namespace A281866.P5884954694350720066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A046691 (n + 11) - A017029 (n + 8)).toNat

end

end A281866.P5884954694350720066

/-!
# A281867: Number of sets of exactly seven positive integers <= n having a square element sum.

The programs for A281867, there is no canonical definition to state claims against.
-/

/-! ## A281867.P12595391317182657754

`A281871(A167499(n+6)+2)`
-/

namespace A281867.P12595391317182657754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A167499 (n + 6) + 2).toNat

end

end A281867.P12595391317182657754

/-! ## A281867.P10649342303480856326

`A281871(A000096(n+6)+8)`
-/

namespace A281867.P10649342303480856326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000096 (n + 6) + 8).toNat

end

end A281867.P10649342303480856326

/-! ## A281867.P11719240906156366309

`A281871(A000217(n+7)+7)`
-/

namespace A281867.P11719240906156366309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 (n + 7) + 7).toNat

end

end A281867.P11719240906156366309

/-! ## A281867.P301207493689286411

`A281871(A020705(n+9)+A000124(n+6))`
-/

namespace A281867.P301207493689286411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A020705 (n + 9) + A000124 (n + 6)).toNat

end

end A281867.P301207493689286411

/-! ## A281867.P2951172349468942717

`A281871(A000124(n+10)-A008486(n+7))`
-/

namespace A281867.P2951172349468942717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000124 (n + 10) - A008486 (n + 7)).toNat

end

end A281867.P2951172349468942717

/-!
# A281868: Number of sets of exactly eight positive integers <= n having a square element sum.

The programs for A281868, there is no canonical definition to state claims against.
-/

/-! ## A281868.P2338660689460027667

`A281871(A000096(n+7)+9)`
-/

namespace A281868.P2338660689460027667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000096 (n + 7) + 9).toNat

end

end A281868.P2338660689460027667

/-! ## A281868.P60596356642223851

`A281871(A000217(n+8)+8)`
-/

namespace A281868.P60596356642223851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 (n + 8) + 8).toNat

end

end A281868.P60596356642223851

/-! ## A281868.P560410544638379333

`A281871(A167499(n+6)+n+11)`
-/

namespace A281868.P560410544638379333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A167499 (n + 6) + (n + 11 : ℤ)).toNat

end

end A281868.P560410544638379333

/-! ## A281868.P10168970514487271757

`A281871(A055999(n+7)-A005408(n+2))`
-/

namespace A281868.P10168970514487271757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A055999 (n + 7) - A005408 (n + 2)).toNat

end

end A281868.P10168970514487271757

/-! ## A281868.P11168683538407622817

`A281871(A133263(n+6)+A020742(n+7))`
-/

namespace A281868.P11168683538407622817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A133263 (n + 6) + A020742 (n + 7)).toNat

end

end A281868.P11168683538407622817

/-! ## A281868.P17678363611510878383

`A281871(A020705(n+11)+A000124(n+7))`
-/

namespace A281868.P17678363611510878383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A020705 (n + 11) + A000124 (n + 7)).toNat

end

end A281868.P17678363611510878383

/-!
# A281869: Number of sets of exactly nine positive integers <= n having a square element sum.

The programs for A281869, there is no canonical definition to state claims against.
-/

/-! ## A281869.P8866849611828835361

`A281871(A167499(n+8)+4)`
-/

namespace A281869.P8866849611828835361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A167499 (n + 8) + 4).toNat

end

end A281869.P8866849611828835361

/-! ## A281869.P3788848351776968887

`A281871(A000096(n+8)+10)`
-/

namespace A281869.P3788848351776968887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000096 (n + 8) + 10).toNat

end

end A281869.P3788848351776968887

/-! ## A281869.P13377079355195494290

`A281871(A000217(n+9)+9)`
-/

namespace A281869.P13377079355195494290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 (n + 9) + 9).toNat

end

end A281869.P13377079355195494290

/-! ## A281869.P2364431071480473716

`A281871(A161680(n+11)-(n+1))`
-/

namespace A281869.P2364431071480473716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A161680 (n + 11) - (n + 1 : ℤ)).toNat

end

end A281869.P2364431071480473716

/-! ## A281869.P331037620608692259

`A281871(A133263(n+7)+A004277(n+12))`
-/

namespace A281869.P331037620608692259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A133263 (n + 7) + A004277 (n + 12)).toNat

end

end A281869.P331037620608692259

/-! ## A281869.P15465959950954617774

`A281871(A000384(n+12)%A046691(n+10))`
-/

namespace A281869.P15465959950954617774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (Int.tmod (A000384 (n + 12)) (A046691 (n + 10))).toNat

end

end A281869.P15465959950954617774

/-!
# A281870: Number of sets of exactly ten positive integers <= n having a square element sum.

The programs for A281870, there is no canonical definition to state claims against.
-/

/-! ## A281870.P7497163604310145470

`A281871(A000124(n+10)+9)`
-/

namespace A281870.P7497163604310145470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000124 (n + 10) + 9).toNat

end

end A281870.P7497163604310145470

/-! ## A281870.P11836750819088108739

`A281871(A000096(n+9)+11)`
-/

namespace A281870.P11836750819088108739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000096 (n + 9) + 11).toNat

end

end A281870.P11836750819088108739

/-! ## A281870.P6130844615142412468

`A281871(A000217(n+10)+10)`
-/

namespace A281870.P6130844615142412468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 (n + 10) + 10).toNat

end

end A281870.P6130844615142412468

/-! ## A281870.P307516989203925153

`A281871(A055999(n+9)-A005408(n+3))`
-/

namespace A281870.P307516989203925153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A055999 (n + 9) - A005408 (n + 3)).toNat

end

end A281870.P307516989203925153

/-! ## A281870.P11410560754240567596

`A281871(A133263(n+8)+A020742(n+10))`
-/

namespace A281870.P11410560754240567596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A133263 (n + 8) + A020742 (n + 10)).toNat

end

end A281870.P11410560754240567596

/-!
# A281871: Number T(n,k) of k-element subsets of [n] having a square element sum; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A281871, there is no canonical definition to state claims against.
-/

/-! ## A281871.P14146359085574566635

`A344612((n+1)%A321722(n))`
-/

namespace A281871.P14146359085574566635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (Int.tmod (n + 1 : ℤ) (A321722 n)).toNat

end

end A281871.P14146359085574566635

/-! ## A281871.P15247335262910989841

`A241299(A210391(n)^A257564(n))`
-/

namespace A281871.P15247335262910989841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241299 (SequenceMachineLib.roundAway ((A210391 n : ℚ) ^ (A257564 n : ℤ))).toNat

end

end A281871.P15247335262910989841

/-! ## A281871.P3514918548440846994

`A344612(n+1)+A010052(A299269(n))`
-/

namespace A281871.P3514918548440846994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (n + 1) + A010052 (A299269 n).toNat

end

end A281871.P3514918548440846994

/-! ## A281871.P10893456370525021675

`A357187(A088617(n))+A298963(n+1)`
-/

namespace A281871.P10893456370525021675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357187 (A088617 n).toNat + A298963 (n + 1)

end

end A281871.P10893456370525021675

/-! ## A281871.P15981143516659601055

`A124766(A124731(n+1)*A215703(n))`
-/

namespace A281871.P15981143516659601055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A124731 (n + 1) * A215703 n).toNat

end

end A281871.P15981143516659601055

/-!
# A281872: Number of sets of exactly n positive integers <= 2n having a square element sum.

The programs for A281872, there is no canonical definition to state claims against.
-/

/-! ## A281872.P2846198012532283322

`A281871(∑[4*n])`
-/

namespace A281872.P2846198012532283322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281872.P2846198012532283322

/-! ## A281872.P12065320080154298669

`gcd(n, n+1)*A281871(A046092(n))`
-/

namespace A281872.P12065320080154298669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A281871 (A046092 n).toNat

end

end A281872.P12065320080154298669

/-! ## A281872.P895930500497760272

`gcd(A000038(n), A281871(A046092(n)))`
-/

namespace A281872.P895930500497760272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A281871 (A046092 n).toNat)

end

end A281872.P895930500497760272

/-! ## A281872.P13097781107851600987

`lcm(A020985(n), A281871(A046092(n)))`
-/

namespace A281872.P13097781107851600987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A281871 (A046092 n).toNat)

end

end A281872.P13097781107851600987

/-! ## A281872.P17575173926043376566

`or(A000007(n), A281871(A046092(n)))`
-/

namespace A281872.P17575173926043376566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A281871 (A046092 n).toNat)

end

end A281872.P17575173926043376566

/-! ## A281872.P13234548734411227315

`A281871(A046092(n))+A000035(2*n)`
-/

namespace A281872.P13234548734411227315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A046092 n).toNat + A000035 (2 * n)

end

end A281872.P13234548734411227315

/-! ## A281872.P13257769108972764536

`A281871(A046092(n))%A000302(n+1)`
-/

namespace A281872.P13257769108972764536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281871 (A046092 n).toNat) (A000302 (n + 1))

end

end A281872.P13257769108972764536

/-!
# A281873: a(n+1) is the smallest number greater than a(n) such that Sum_{j=1..n+1} 1/a(j) <= 4, a(1) = 1.

The programs for A281873, there is no canonical definition to state claims against.
-/

/-! ## A281873.P9530188549396487636

`A029880(A185255(n))+n`
-/

namespace A281873.P9530188549396487636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029880 (A185255 n).toNat + (n : ℤ)

end

end A281873.P9530188549396487636

/-! ## A281873.P16322864518725272160

`A000048(A185255(n)+2)+n`
-/

namespace A281873.P16322864518725272160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (A185255 n + 2).toNat + (n : ℤ)

end

end A281873.P16322864518725272160

/-! ## A281873.P2875990143095790219

`A300763(A034518(n+1)!)+n`
-/

namespace A281873.P2875990143095790219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (Nat.factorial (A034518 (n + 1)).toNat) + (n : ℤ)

end

end A281873.P2875990143095790219

/-! ## A281873.P15184475975305190607

`A123217(A185246(2*n+1))+n`
-/

namespace A281873.P15184475975305190607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123217 (A185246 (2 * n + 1)).toNat + (n : ℤ)

end

end A281873.P15184475975305190607

/-! ## A281873.P3425094412537323049

`A024493(A082289(C(n, 30)+4))+n`
-/

namespace A281873.P3425094412537323049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (A082289 (Nat.choose n 30 + 4)).toNat + (n : ℤ)

end

end A281873.P3425094412537323049

/-!
# A281874: Number of Dyck paths of semilength n with distinct peak heights.

The programs for A281874, there is no canonical definition to state claims against.
-/

/-! ## A281874.P12117735338296680390

`A288108(∑[char[1]+n])`
-/

namespace A281874.P12117735338296680390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281874.P12117735338296680390

/-! ## A281874.P685583313078585732

`or(1, A288108(A000124(n)))`
-/

namespace A281874.P685583313078585732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A288108 (A000124 n).toNat)

end

end A281874.P685583313078585732

/-! ## A281874.P14189536901711909037

`or(1, A288108(A000217(n)+1))`
-/

namespace A281874.P14189536901711909037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A288108 (A000217 n + 1).toNat)

end

end A281874.P14189536901711909037

/-! ## A281874.P2632922185146692851

`A287847(∑[n+2]-1)`
-/

namespace A281874.P2632922185146692851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A281874.P2632922185146692851

/-! ## A281874.P16375614040462902544

`A287822(∑[n]+ceil(sin(n)²))`
-/

namespace A281874.P16375614040462902544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A281874.P16375614040462902544

/-! ## A281874.P8092021389572024388

`A287822(∑[n]-(floor(acot(n))-1))`
-/

namespace A281874.P8092021389572024388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A281874.P8092021389572024388

/-! ## A281874.P6147264725570906677

`A287822(A133263(n)-1)`
-/

namespace A281874.P6147264725570906677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A133263 n - 1).toNat

end

end A281874.P6147264725570906677

/-! ## A281874.P16711179540668869621

`A287822(A253145(n)-n)`
-/

namespace A281874.P16711179540668869621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A253145 n - (n : ℤ)).toNat

end

end A281874.P16711179540668869621

/-! ## A281874.P3587191927674448329

`A287822(eq[1, A130270(n+1)])`
-/

namespace A281874.P3587191927674448329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281874.P3587191927674448329

/-! ## A281874.P13447897540415052321

`A287822(eq[n, n*A002262(n)])`
-/

namespace A281874.P13447897540415052321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281874.P13447897540415052321

/-! ## A281874.P7849778850326791986

`A287822(A000124(n)%A000125(n))`
-/

namespace A281874.P7849778850326791986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (Int.tmod (A000124 n) (A000125 n)).toNat

end

end A281874.P7849778850326791986

/-! ## A281874.P1098195569206619071

`A287822(A000124(A287822(∑[n])+n))`
-/

namespace A281874.P1098195569206619071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000124 (A287822 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat).toNat

end

end A281874.P1098195569206619071

/-! ## A281874.P13619527583148836552

`A287822(A000124(n)-A287822(∑[n]))`
-/

namespace A281874.P13619527583148836552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000124 n - A287822 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A281874.P13619527583148836552

/-!
# A281877: Numbers that are a primitive sum of two squares in more than 2 ways.

The programs for A281877, there is no canonical definition to state claims against.
-/

/-! ## A281877.P14662470273827962899

`A097102(lt[A347462(n), A069602(n+1)])`
-/

namespace A281877.P14662470273827962899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097102 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A281877.P14662470273827962899

/-! ## A281877.P6164532993394138372

`record[A089384(2*A025305(n+1))]`
-/

namespace A281877.P6164532993394138372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089384 (2 * A025305 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281877.P6164532993394138372

/-! ## A281877.P6690292966451647402

`record[A089384(A005843(A025305(n+1)))]`
-/

namespace A281877.P6690292966451647402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089384 (A005843 (A025305 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281877.P6690292966451647402

/-! ## A281877.P181272577197725934

`A097102(lt[A357581(3*n+4), A229815(n+1)])`
-/

namespace A281877.P181272577197725934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357581 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097102 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A281877.P181272577197725934

/-! ## A281877.P7748563053048847831

`A097102(lt[A035441(2*n+1), A005940(n+1)])`
-/

namespace A281877.P7748563053048847831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035441 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097102 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A281877.P7748563053048847831

/-!
# A281879: Non-palindromic numbers k such that sigma(k) | sigma(R(k)), where R(k) is the digit reversal of k.

The programs for A281879, there is no canonical definition to state claims against.
-/

/-! ## A281879.P8662358361540024041

`eq[A017053(A085393(n+1)), A054861(n)]`
-/

namespace A281879.P8662358361540024041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (A085393 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281879.P8662358361540024041

/-!
# A281881: Triangle read by rows: T(n,k) (n>=1, 2<=k<=n+1) is the number of k-sequences of balls colored with at most n colors such that exactly one ball is of a color seen previously in the sequence.

The programs for A281881, the canonical program `A281881.P16857394866510108787` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281881 has offset 1).

The definition of A281881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281881.P16857394866510108787

`∑[A010054(n)]*A267849(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A281881

/-- `∑[A010054(n)]*A267849(n)` -/
def P16857394866510108787.Spec : Prop :=
  ∀ n, P16857394866510108787.a n = A281881 (n + 1)

theorem P16857394866510108787.correct : P16857394866510108787.Spec := by
  intro n
  simp only [A281881, Nat.add_sub_cancel]

end A281881

/-! ## A281881.P6449985134770460551

`A008279(n)*A143219(n+1)`
-/

namespace A281881.P6449985134770460551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A143219 (n + 1)

end

end A281881.P6449985134770460551

namespace A281881

/-- `A008279(n)*A143219(n+1)` -/
def P6449985134770460551.Spec : Prop :=
  ∀ n, P6449985134770460551.a n = A281881 (n + 1)

end A281881

/-! ## A281881.P8618762212586844290

`A002024(n+1)*A267849(n)`
-/

namespace A281881.P8618762212586844290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A267849 n

end

end A281881.P8618762212586844290

namespace A281881

/-- `A002024(n+1)*A267849(n)` -/
def P8618762212586844290.Spec : Prop :=
  ∀ n, P8618762212586844290.a n = A281881 (n + 1)

end A281881

/-! ## A281881.P12523098702309651174

`A124932(n+1)*A166350(n+1)`
-/

namespace A281881.P12523098702309651174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124932 (n + 1) * A166350 (n + 1)

end

end A281881.P12523098702309651174

namespace A281881

/-- `A124932(n+1)*A166350(n+1)` -/
def P12523098702309651174.Spec : Prop :=
  ∀ n, P12523098702309651174.a n = A281881 (n + 1)

end A281881

/-! ## A281881.P12990729468360411410

`A127779(n+1)*A181511(n+1)`
-/

namespace A281881.P12990729468360411410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127779 (n + 1) * A181511 (n + 1)

end

end A281881.P12990729468360411410

namespace A281881

/-- `A127779(n+1)*A181511(n+1)` -/
def P12990729468360411410.Spec : Prop :=
  ∀ n, P12990729468360411410.a n = A281881 (n + 1)

end A281881

/-! ## A281881.P11009632642691770080

`A002260(n+1)!*A124932(n+1)`
-/

namespace A281881.P11009632642691770080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A124932 (n + 1)

end

end A281881.P11009632642691770080

namespace A281881

/-- `A002260(n+1)!*A124932(n+1)` -/
def P11009632642691770080.Spec : Prop :=
  ∀ n, P11009632642691770080.a n = A281881 (n + 1)

end A281881

/-! ## A281881.P4596783503712712073

`(1-A049780(n)+n)*A068424(n+1)`
-/

namespace A281881.P4596783503712712073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A049780 n + (n : ℤ)) * A068424 (n + 1)

end

end A281881.P4596783503712712073

namespace A281881

/-- `(1-A049780(n)+n)*A068424(n+1)` -/
def P4596783503712712073.Spec : Prop :=
  ∀ n, P4596783503712712073.a n = A281881 (n + 1)

end A281881

/-! ## A281881.P15813585209046173638

`A135278(n)*A180119(A002260(n+1))`
-/

namespace A281881.P15813585209046173638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A180119 (A002260 (n + 1)).toNat

end

end A281881.P15813585209046173638

namespace A281881

/-- `A135278(n)*A180119(A002260(n+1))` -/
def P15813585209046173638.Spec : Prop :=
  ∀ n, P15813585209046173638.a n = A281881 (n + 1)

end A281881

/-! ## A281881.P13945259133082056220

`A000217(A002260(n+1))*A068424(n+1)`
-/

namespace A281881.P13945259133082056220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A068424 (n + 1)

end

end A281881.P13945259133082056220

namespace A281881

/-- `A000217(A002260(n+1))*A068424(n+1)` -/
def P13945259133082056220.Spec : Prop :=
  ∀ n, P13945259133082056220.a n = A281881 (n + 1)

end A281881

/-! ## A281881.P13736708089236694459

`A001222(A140513(n))*A267849(n)`
-/

namespace A281881.P13736708089236694459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A140513 n).toNat * A267849 n

end

end A281881.P13736708089236694459

namespace A281881

/-- `A001222(A140513(n))*A267849(n)` -/
def P13736708089236694459.Spec : Prop :=
  ∀ n, P13736708089236694459.a n = A281881 (n + 1)

end A281881

/-! ## A281881.P4939902315326791116

`A068424(n+1)*A286595(A059268(n))`
-/

namespace A281881.P4939902315326791116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068424 (n + 1) * A286595 (A059268 n).toNat

end

end A281881.P4939902315326791116

namespace A281881

/-- `A068424(n+1)*A286595(A059268(n))` -/
def P4939902315326791116.Spec : Prop :=
  ∀ n, P4939902315326791116.a n = A281881 (n + 1)

end A281881

/-!
# A281882: Numbers n such that the number of divisors of sum of divisors of n is prime.

The programs for A281882, there is no canonical definition to state claims against.
-/

/-! ## A281882.P10135946278186470401

`A020725(eq[2, A163107(n+1)])`
-/

namespace A281882.P10135946278186470401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281882.P10135946278186470401

/-! ## A281882.P7285708622269884273

`∩[A071114(n+1), A135571(n+1)]`
-/

namespace A281882.P7285708622269884273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281882.P7285708622269884273

/-! ## A281882.P13764009443616784221

`A364131(n+1)+A036987(A000142(n))`
-/

namespace A281882.P13764009443616784221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364131 (n + 1) + A036987 (A000142 n).toNat

end

end A281882.P13764009443616784221

/-! ## A281882.P7920427386862653908

`A364131(n+1)+A193356(A001472(n))`
-/

namespace A281882.P7920427386862653908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364131 (n + 1) + A193356 (A001472 n).toNat

end

end A281882.P7920427386862653908

/-! ## A281882.P17964770788467997350

`A364131(n+1)-A010815(A001835(n))`
-/

namespace A281882.P17964770788467997350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364131 (n + 1) - A010815 (A001835 n).toNat

end

end A281882.P17964770788467997350

/-!
# A281883: Number of n X 3 0..1 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281883, there is no canonical definition to state claims against.
-/

/-! ## A281883.P17196370545869836541

`A281888(∑[n+2]+4)`
-/

namespace A281883.P17196370545869836541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281883.P17196370545869836541

/-! ## A281883.P10247156685925350406

`A281888(A167614(n+1))+A185255(n)`
-/

namespace A281883.P10247156685925350406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (A167614 (n + 1)).toNat + A185255 n

end

end A281883.P10247156685925350406

/-! ## A281883.P13731594712373674854

`A057427(n)*A281888(A167614(n+1))`
-/

namespace A281883.P13731594712373674854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A281888 (A167614 (n + 1)).toNat

end

end A281883.P13731594712373674854

/-! ## A281883.P11844198322135046165

`A281888(A167614(n+1))%A025949(n)`
-/

namespace A281883.P11844198322135046165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281888 (A167614 (n + 1)).toNat) (A025949 n)

end

end A281883.P11844198322135046165

/-! ## A281883.P5470186695128342910

`lcm(A000034(n), A281888(A167614(n+1)))`
-/

namespace A281883.P5470186695128342910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A281888 (A167614 (n + 1)).toNat)

end

end A281883.P5470186695128342910

/-!
# A281884: Number of nX4 0..1 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281884, there is no canonical definition to state claims against.
-/

/-! ## A281884.P8398039153978822393

`A281888(A374004(n+1))`
-/

namespace A281884.P8398039153978822393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (A374004 (n + 1)).toNat

end

end A281884.P8398039153978822393

/-! ## A281884.P5272470502310320260

`A281888(A141214(n)+7)`
-/

namespace A281884.P5272470502310320260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (A141214 n + 7).toNat

end

end A281884.P5272470502310320260

/-! ## A281884.P680303274591376534

`A281888(A052905(n)+9)`
-/

namespace A281884.P680303274591376534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (A052905 n + 9).toNat

end

end A281884.P680303274591376534

/-! ## A281884.P4849355541519347673

`A281888(A055999(n)+10)`
-/

namespace A281884.P4849355541519347673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (A055999 n + 10).toNat

end

end A281884.P4849355541519347673

/-! ## A281884.P12919950667955922197

`A281888(A167614(n+2)+1)`
-/

namespace A281884.P12919950667955922197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (A167614 (n + 2) + 1).toNat

end

end A281884.P12919950667955922197

/-!
# A281885: Number of nX5 0..1 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281885, there is no canonical definition to state claims against.
-/

/-! ## A281885.P14901820172941143643

`A281888(A374005(n+1))`
-/

namespace A281885.P14901820172941143643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (A374005 (n + 1)).toNat

end

end A281885.P14901820172941143643

/-! ## A281885.P11388016639306039363

`A281888(A167499(n+3))`
-/

namespace A281885.P11388016639306039363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (A167499 (n + 3)).toNat

end

end A281885.P11388016639306039363

/-! ## A281885.P11034327442758880736

`A281888(A056000(n)+15)`
-/

namespace A281885.P11034327442758880736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (A056000 n + 15).toNat

end

end A281885.P11034327442758880736

/-! ## A281885.P4267254748419689893

`A281888(eq[7, A066657(n)])`
-/

namespace A281885.P4267254748419689893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281885.P4267254748419689893

/-! ## A281885.P4013676171029776712

`A281888(eq[6, A131818(n+1)])`
-/

namespace A281885.P4013676171029776712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281885.P4013676171029776712

/-!
# A281886: Number of nX6 0..1 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281886, there is no canonical definition to state claims against.
-/

/-! ## A281886.P3530534348196176695

`A281888(A374007(n+1))`
-/

namespace A281886.P3530534348196176695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (A374007 (n + 1)).toNat

end

end A281886.P3530534348196176695

/-! ## A281886.P17243337357859873221

`A281888(eq[7, A131818(n+1)])`
-/

namespace A281886.P17243337357859873221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281886.P17243337357859873221

/-! ## A281886.P13988380242087773512

`A281888(A052905(n+3))`
-/

namespace A281886.P13988380242087773512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (A052905 (n + 3)).toNat

end

end A281886.P13988380242087773512

/-! ## A281886.P15483101693498380053

`A281888(eq[3, A219347(n)])`
-/

namespace A281886.P15483101693498380053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281886.P15483101693498380053

/-! ## A281886.P16766068620429731386

`A281888(eq[5, A193592(n)])`
-/

namespace A281886.P16766068620429731386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281886.P16766068620429731386

/-!
# A281887: Number of nX7 0..1 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281887, there is no canonical definition to state claims against.
-/

/-! ## A281887.P5209797116421011876

`A281888(A374008(n+1))`
-/

namespace A281887.P5209797116421011876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (A374008 (n + 1)).toNat

end

end A281887.P5209797116421011876

/-! ## A281887.P4601063254720329366

`A281888(eq[11, A066657(n)])`
-/

namespace A281887.P4601063254720329366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281887.P4601063254720329366

/-! ## A281887.P15994478355260113010

`A281888(eq[8, A131818(n+1)])`
-/

namespace A281887.P15994478355260113010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281887.P15994478355260113010

/-! ## A281887.P3887123939497665192

`A281888(A055999(n+4))`
-/

namespace A281887.P3887123939497665192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (A055999 (n + 4)).toNat

end

end A281887.P3887123939497665192

/-! ## A281887.P14383507758662043902

`A281888(eq[4, A219347(n)])`
-/

namespace A281887.P14383507758662043902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281887.P14383507758662043902

/-!
# A281888: T(n,k)=Number of nXk 0..1 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281888, there is no canonical definition to state claims against.
-/

/-! ## A281888.P169718806458376389

`A282338(n+1)-A185255(A068670(n))`
-/

namespace A281888.P169718806458376389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (n + 1) - A185255 (A068670 n).toNat

end

end A281888.P169718806458376389

/-! ## A281888.P5826629608124419807

`A222234(A274105(n)*A282338(n+1))`
-/

namespace A281888.P5826629608124419807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A274105 n * A282338 (n + 1)).toNat

end

end A281888.P5826629608124419807

/-! ## A281888.P573613251194241604

`A222234(A282338(n+1)^A064693(n))`
-/

namespace A281888.P573613251194241604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (SequenceMachineLib.roundAway ((A282338 (n + 1) : ℚ) ^ (A064693 n : ℤ))).toNat

end

end A281888.P573613251194241604

/-! ## A281888.P5825223796204213099

`A222234(A282338(n+1)^A274105(n))`
-/

namespace A281888.P5825223796204213099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (SequenceMachineLib.roundAway ((A282338 (n + 1) : ℚ) ^ (A274105 n : ℤ))).toNat

end

end A281888.P5825223796204213099

/-! ## A281888.P4152991224122683068

`A222234(C(A282338(n+1), A064693(n)))`
-/

namespace A281888.P4152991224122683068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (Nat.choose (A282338 (n + 1)).toNat (A064693 n).toNat)

end

end A281888.P4152991224122683068

/-!
# A281890: Square array A(n,k): number of integers having prime(n) as k-th factor when written as product of primes in nondecreasing order, in any interval of primorial(n)^k positive integers.

The programs for A281890, there is no canonical definition to state claims against.
-/

/-! ## A281890.P10422208498788593873

`A104725(A011185(n+1)^A002262(n))`
-/

namespace A281890.P10422208498788593873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (SequenceMachineLib.roundAway ((A011185 (n + 1) : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A281890.P10422208498788593873

/-! ## A281890.P4245061489545917816

`A154983(n)+A094556(A198317(3*(n+1)))`
-/

namespace A281890.P4245061489545917816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154983 n + A094556 (A198317 (3 * (n + 1))).toNat

end

end A281890.P4245061489545917816

/-! ## A281890.P13956747587675987691

`A160406(A144084(n))-A021913(A160786(2*n))`
-/

namespace A281890.P13956747587675987691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160406 (A144084 n).toNat - A021913 (A160786 (2 * n)).toNat

end

end A281890.P13956747587675987691

/-!
# A281891: Square array A(n,k): number of integers having k or more factors less than prime(n+1) in their prime factorization, within any interval of primorial(n)^k positive integers.

The programs for A281891, there is no canonical definition to state claims against.
-/

/-! ## A281891.P11251503642623481793

`A175027(lcm(2, A058710(n)))`
-/

namespace A281891.P11251503642623481793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175027 (Int.lcm 2 (A058710 n))

end

end A281891.P11251503642623481793

/-! ## A281891.P16141367105334821943

`∑{d}[A211399(n), A137512(#)]`
-/

namespace A281891.P16141367105334821943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A137512 d

end

end A281891.P16141367105334821943

/-! ## A281891.P8656138931924439395

`∑{d}[A048993(n), A319619(#)]`
-/

namespace A281891.P8656138931924439395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A319619 d

end

end A281891.P8656138931924439395

/-! ## A281891.P15033430687581037569

`A175027(gcd(2, n+1)*A058710(n))`
-/

namespace A281891.P15033430687581037569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175027 ((Nat.gcd 2 (n + 1) : ℤ) * A058710 n).toNat

end

end A281891.P15033430687581037569

/-! ## A281891.P8146320516846783987

`A060773(A151509(n))*A103631(n)`
-/

namespace A281891.P8146320516846783987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060773 (A151509 n).toNat * A103631 n

end

end A281891.P8146320516846783987

/-!
# A281892: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 406", based on the 5-celled von Neumann neighborhood.

The programs for A281892, there is no canonical definition to state claims against.
-/

/-! ## A281892.P14959021140198508297

`A095121(n)+1-A283220(n)`
-/

namespace A281892.P14959021140198508297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A283220 n)

end

end A281892.P14959021140198508297

/-! ## A281892.P16308829172224465801

`A281893(n)+A283221(n)-A283220(n)`
-/

namespace A281892.P16308829172224465801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281893 n + (A283221 n - A283220 n)

end

end A281892.P16308829172224465801

/-! ## A281892.P7538437768269496394

`A288699(n)+A289098(n)-A283220(n)`
-/

namespace A281892.P7538437768269496394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288699 n + (A289098 n - A283220 n)

end

end A281892.P7538437768269496394

/-! ## A281892.P11213627200453857333

`A126646(n)-A283220(n)%A051049(n)`
-/

namespace A281892.P11213627200453857333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283220 n) (A051049 n)

end

end A281892.P11213627200453857333

/-! ## A281892.P4871348277733304555

`or(A000225(n), A052531(n))-A283220(n)`
-/

namespace A281892.P4871348277733304555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A283220 n

end

end A281892.P4871348277733304555

/-!
# A281893: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 406", based on the 5-celled von Neumann neighborhood.

The programs for A281893, there is no canonical definition to state claims against.
-/

/-! ## A281893.P13589106598099704669

`A095121(n)+1-A283221(n)`
-/

namespace A281893.P13589106598099704669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A283221 n)

end

end A281893.P13589106598099704669

/-! ## A281893.P16552992554881159096

`A126646(n)-A283221(A028310(n))`
-/

namespace A281893.P16552992554881159096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A283221 (A028310 n).toNat

end

end A281893.P16552992554881159096

/-! ## A281893.P16710677123643959042

`A126646(n)-A283221(A065033(2*n))`
-/

namespace A281893.P16710677123643959042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A283221 (A065033 (2 * n)).toNat

end

end A281893.P16710677123643959042

/-! ## A281893.P12338155115273817210

`A288699(n)+A289098(n)-A283221(n)`
-/

namespace A281893.P12338155115273817210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288699 n + (A289098 n - A283221 n)

end

end A281893.P12338155115273817210

/-! ## A281893.P17701839472839324933

`A057428(n)*A283221(n)-(1-A000079(n+1))`
-/

namespace A281893.P17701839472839324933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A283221 n - (1 - A000079 (n + 1))

end

end A281893.P17701839472839324933

/-!
# A281894: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 411", based on the 5-celled von Neumann neighborhood.

The programs for A281894, there is no canonical definition to state claims against.
-/

/-! ## A281894.P12482196156726938330

`A007088(A281896(n))`
-/

namespace A281894.P12482196156726938330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281896 n).toNat

end

end A281894.P12482196156726938330

/-! ## A281894.P14266664469373830226

`A282103(A062003(n))`
-/

namespace A281894.P14266664469373830226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282103 (A062003 n).toNat

end

end A281894.P14266664469373830226

/-! ## A281894.P16629478260425520835

`A282103(A004873(n+1))`
-/

namespace A281894.P16629478260425520835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282103 (A004873 (n + 1)).toNat

end

end A281894.P16629478260425520835

/-! ## A281894.P1291000418571483583

`A094840(A141056(n))*A282103(n)`
-/

namespace A281894.P1291000418571483583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094840 (A141056 n).toNat * A282103 n

end

end A281894.P1291000418571483583

/-! ## A281894.P16688806432665901853

`A282103(n)^A008958(A027907(n))`
-/

namespace A281894.P16688806432665901853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282103 n : ℚ) ^ (A008958 (A027907 n).toNat : ℤ)

end

end A281894.P16688806432665901853

/-!
# A281895: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 411", based on the 5-celled von Neumann neighborhood.

The programs for A281895, there is no canonical definition to state claims against.
-/

/-! ## A281895.P11627942318382540488

`A007088(A281897(n))`
-/

namespace A281895.P11627942318382540488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281897 n).toNat

end

end A281895.P11627942318382540488

/-! ## A281895.P7347179121370358938

`A185544(2*A281897(n))`
-/

namespace A281895.P7347179121370358938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281897 n).toNat

end

end A281895.P7347179121370358938

/-! ## A281895.P11140286348205023683

`A282104(A004873(n+1))`
-/

namespace A281895.P11140286348205023683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282104 (A004873 (n + 1)).toNat

end

end A281895.P11140286348205023683

/-! ## A281895.P17836709358682912749

`A124794(A293663(3*n+2))*A282104(n)`
-/

namespace A281895.P17836709358682912749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A293663 (3 * n + 2)).toNat * A282104 n

end

end A281895.P17836709358682912749

/-! ## A281895.P8890702932610619817

`A282104(n)*A322885(A059242(n+1))`
-/

namespace A281895.P8890702932610619817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282104 n * A322885 (A059242 (n + 1)).toNat

end

end A281895.P8890702932610619817

/-!
# A281896: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 411", based on the 5-celled von Neumann neighborhood.

The programs for A281896, there is no canonical definition to state claims against.
-/

/-! ## A281896.P11103555753240338083

`A282105(A004895(n+1))`
-/

namespace A281896.P11103555753240338083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282105 (A004895 (n + 1)).toNat

end

end A281896.P11103555753240338083

/-! ## A281896.P8624664597814914776

`A282105(A004906(n+1))`
-/

namespace A281896.P8624664597814914776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282105 (A004906 (n + 1)).toNat

end

end A281896.P8624664597814914776

/-! ## A281896.P7146297438661464667

`A282105(A004917(n+1))`
-/

namespace A281896.P7146297438661464667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282105 (A004917 (n + 1)).toNat

end

end A281896.P7146297438661464667

/-! ## A281896.P8209624301291769645

`A004526(2*A282105(n))`
-/

namespace A281896.P8209624301291769645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A282105 n).toNat

end

end A281896.P8209624301291769645

/-! ## A281896.P3604392844015464414

`A032742(2*A282105(n))`
-/

namespace A281896.P3604392844015464414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * A282105 n).toNat

end

end A281896.P3604392844015464414

/-!
# A281897: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 411", based on the 5-celled von Neumann neighborhood.

The programs for A281897, there is no canonical definition to state claims against.
-/

/-! ## A281897.P13176072696632474878

`A282106(A004895(n+1))`
-/

namespace A281897.P13176072696632474878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282106 (A004895 (n + 1)).toNat

end

end A281897.P13176072696632474878

/-! ## A281897.P1451282480057296136

`A282106(A004906(n+1))`
-/

namespace A281897.P1451282480057296136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282106 (A004906 (n + 1)).toNat

end

end A281897.P1451282480057296136

/-! ## A281897.P12959311708024495498

`A282106(A004917(n+1))`
-/

namespace A281897.P12959311708024495498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282106 (A004917 (n + 1)).toNat

end

end A281897.P12959311708024495498

/-!
# A281898: Numbers k such that k - floor(sqrt(k))^2 and 2k - floor(sqrt(2k))^2 are both squares.

The programs for A281898, there is no canonical definition to state claims against.
-/

/-! ## A281898.P6940847727775132699

`A183873(n+1)-A007306(A011782(n))`
-/

namespace A281898.P6940847727775132699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183873 (n + 1) - A007306 (A011782 n).toNat

end

end A281898.P6940847727775132699

/-! ## A281898.P14707980533613053685

`A085577(n+1)-A023533(A019310(n+1))`
-/

namespace A281898.P14707980533613053685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085577 (n + 1) - A023533 (A019310 (n + 1)).toNat

end

end A281898.P14707980533613053685

/-! ## A281898.P43069314223359488

`A121900(A061316(n)+n²)`
-/

namespace A281898.P43069314223359488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A061316 n + (n ^ 2 : ℤ)).toNat

end

end A281898.P43069314223359488

/-! ## A281898.P1040127904250338575

`A183873(n+1)-A152201(floor((n/2)²))`
-/

namespace A281898.P1040127904250338575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183873 (n + 1) - A152201 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

end

end A281898.P1040127904250338575

/-! ## A281898.P1636158506279001703

`A183873(n+1)-A070939(A024493(n+1))`
-/

namespace A281898.P1636158506279001703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183873 (n + 1) - A070939 (A024493 (n + 1)).toNat

end

end A281898.P1636158506279001703

/-!
# A281899: a(n) = n + 6*floor(n/3).

The programs for A281899, the canonical program `A281899.P381689269348683146` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281899 has offset 0).

The definition of A281899 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+6*floor(n/3)` (program `A281899.P381689269348683146`, by `A281899.P381689269348683146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281899.P381689269348683146

`n+6*floor(n/3)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281899

/-- `n+6*floor(n/3)` -/
def P381689269348683146.Spec : Prop :=
  ∀ n, P381689269348683146.a n = A281899 n

theorem P381689269348683146.correct : P381689269348683146.Spec := by
  intro n
  simp only [A281899]

end A281899

/-! ## A281899.P5201149046670035880

`lt[n%9+n, n+3]`
-/

namespace A281899.P5201149046670035880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 9 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281899.P5201149046670035880

namespace A281899

/-- `lt[n%9+n, n+3]` -/
def P5201149046670035880.Spec : Prop :=
  ∀ n, (P5201149046670035880.a n : ℤ) = A281899 n

end A281899

/-! ## A281899.P7105003654879090322

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A281899.P7105003654879090322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 7] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281899.P7105003654879090322

namespace A281899

/-- `∑[floor(a(n-3))]` -/
def P7105003654879090322.Spec : Prop :=
  ∀ n, (P7105003654879090322.a n : ℤ) = A281899 n

end A281899

/-! ## A281899.P9250319788372128414

`lt[n*(dr(n+1)-3), 1]`
-/

namespace A281899.P9250319788372128414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A281899.P9250319788372128414

namespace A281899

/-- `lt[n*(dr(n+1)-3), 1]` -/
def P9250319788372128414.Spec : Prop :=
  ∀ n, (P9250319788372128414.a n : ℤ) = A281899 n

end A281899

/-! ## A281899.P15487776431127669988

`lt[dr(n+1)+n, n+4]`
-/

namespace A281899.P15487776431127669988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 1 : ℤ) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281899.P15487776431127669988

namespace A281899

/-- `lt[dr(n+1)+n, n+4]` -/
def P15487776431127669988.Spec : Prop :=
  ∀ n, (P15487776431127669988.a n : ℤ) = A281899 n

end A281899

/-! ## A281899.P11360508850929958882

`∑[a(n-3)%8]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=7`
-/

namespace A281899.P11360508850929958882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 7] fun n f1 =>
  f1 (n - 3) % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281899.P11360508850929958882

namespace A281899

/-- `∑[a(n-3)%8]` -/
def P11360508850929958882.Spec : Prop :=
  ∀ n, (P11360508850929958882.a n : ℤ) = A281899 n

end A281899

/-! ## A281899.P1023233842504209978

`∑[∑[ogf((x+x^2+7x^3)/(1+x+x^2))]]`
-/

namespace A281899.P1023233842504209978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 7] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281899.P1023233842504209978

namespace A281899

/-- `∑[∑[ogf((x+x^2+7x^3)/(1+x+x^2))]]` -/
def P1023233842504209978.Spec : Prop :=
  ∀ n, P1023233842504209978.a n = A281899 n

end A281899

/-! ## A281899.P8170141833629784553

`eq[0, C(n, a(n-3)²)]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A281899.P8170141833629784553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  Nat.choose n (f2 (n - 3) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281899.P8170141833629784553

namespace A281899

/-- `eq[0, C(n, a(n-3)²)]` -/
def P8170141833629784553.Spec : Prop :=
  ∀ n, (P8170141833629784553.a n : ℤ) = A281899 n

end A281899

/-! ## A281899.P3983067419501083275

`lt[n, (dr(2-n)-5)*(n-3)]`
-/

namespace A281899.P3983067419501083275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (2 - (n : ℤ)) : ℤ) - 5) * ((n : ℤ) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A281899.P3983067419501083275

namespace A281899

/-- `lt[n, (dr(2-n)-5)*(n-3)]` -/
def P3983067419501083275.Spec : Prop :=
  ∀ n, (P3983067419501083275.a n : ℤ) = A281899 n

end A281899

/-! ## A281899.P7376604469645975226

`3*(a(n-3)/3+3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A281899.P7376604469645975226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  3 * (a (n - 3) / 3 + 3)

end

end A281899.P7376604469645975226

namespace A281899

/-- `3*(a(n-3)/3+3)` -/
def P7376604469645975226.Spec : Prop :=
  ∀ n, P7376604469645975226.a n = (A281899 n : ℚ)

end A281899

/-! ## A281899.P2974208740792940811

`record[(n-2)%(dr(1-n)-(n+2))]`
-/

namespace A281899.P2974208740792940811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 2) ((SequenceMachineLib.digitalRoot (1 - (n : ℤ)) : ℤ) - (n + 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281899.P2974208740792940811

namespace A281899

/-- `record[(n-2)%(dr(1-n)-(n+2))]` -/
def P2974208740792940811.Spec : Prop :=
  ∀ n, P2974208740792940811.a n = A281899 n

end A281899

/-! ## A281899.P6040044124071505748

`∑[a(n-3)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=7`
-/

namespace A281899.P6040044124071505748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 7] fun n f1 =>
  f1 (n - 3) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281899.P6040044124071505748

namespace A281899

/-- `∑[a(n-3)^a(n-1)]` -/
def P6040044124071505748.Spec : Prop :=
  ∀ n, (P6040044124071505748.a n : ℤ) = A281899 n

end A281899

/-! ## A281899.P4498982766698636557

`floor(3*gcd(3, n)+a(n-1)-2)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A281899.P4498982766698636557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (3 * Nat.gcd 3 n : ℤ) + (a (n - 1) - 2)

end

end A281899.P4498982766698636557

namespace A281899

/-- `floor(3*gcd(3, n)+a(n-1)-2)` -/
def P4498982766698636557.Spec : Prop :=
  ∀ n, P4498982766698636557.a n = A281899 n

end A281899

/-! ## A281899.P13085947229047431155

`∑[8-a(n-1)*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A281899.P13085947229047431155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  8 - f1 (n - 1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281899.P13085947229047431155

namespace A281899

/-- `∑[8-a(n-1)*a(n-2)]` -/
def P13085947229047431155.Spec : Prop :=
  ∀ n, P13085947229047431155.a n = A281899 n

end A281899

/-! ## A281899.P9671147043412596843

`∑[(8-a(n-1))/a(n-2)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A281899.P9671147043412596843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  (8 - f1 (n - 1)) / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281899.P9671147043412596843

namespace A281899

/-- `∑[(8-a(n-1))/a(n-2)]` -/
def P9671147043412596843.Spec : Prop :=
  ∀ n, P9671147043412596843.a n = (A281899 n : ℚ)

end A281899

/-! ## A281899.P6205368366799762272

`(A267711(n+1)+n)/2`
-/

namespace A281899.P6205368366799762272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267711 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A281899.P6205368366799762272

namespace A281899

/-- `(A267711(n+1)+n)/2` -/
def P6205368366799762272.Spec : Prop :=
  ∀ n, P6205368366799762272.a n = (A281899 n : ℚ)

end A281899

/-! ## A281899.P18187990809742825748

`A008595(n)%A063087(n+1)`
-/

namespace A281899.P18187990809742825748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008595 n) (A063087 (n + 1))

end

end A281899.P18187990809742825748

namespace A281899

/-- `A008595(n)%A063087(n+1)` -/
def P18187990809742825748.Spec : Prop :=
  ∀ n, P18187990809742825748.a n = A281899 n

end A281899

/-! ## A281899.P10314106415629010280

`A008601(n)%A063089(n+1)`
-/

namespace A281899.P10314106415629010280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008601 n) (A063089 (n + 1))

end

end A281899.P10314106415629010280

namespace A281899

/-- `A008601(n)%A063089(n+1)` -/
def P10314106415629010280.Spec : Prop :=
  ∀ n, P10314106415629010280.a n = A281899 n

end A281899

/-! ## A281899.P1888795083792803605

`A135631(n)%A063117(n+1)`
-/

namespace A281899.P1888795083792803605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135631 n) (A063117 (n + 1))

end

end A281899.P1888795083792803605

namespace A281899

/-- `A135631(n)%A063117(n+1)` -/
def P1888795083792803605.Spec : Prop :=
  ∀ n, P1888795083792803605.a n = A281899 n

end A281899

/-! ## A281899.P7528985927252397679

`∪[A090570(n+1), A017185(n)]`
-/

namespace A281899.P7528985927252397679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A281899.P7528985927252397679

namespace A281899

/-- `∪[A090570(n+1), A017185(n)]` -/
def P7528985927252397679.Spec : Prop :=
  ∀ n, (P7528985927252397679.a n : ℤ) = A281899 n

end A281899

