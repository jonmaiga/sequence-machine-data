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
import Seq.B000.C031
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A252801: Primes whose trajectories under the map x -> A039951(x) enter the cycle {2, 1093}.

The programs for A252801, there is no canonical definition to state claims against.
-/

/-! ## A252801.P10119531019240014590

`p?[comp[xor(10, n²)]]`
-/

namespace A252801.P10119531019240014590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 10 (n ^ 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A252801.P10119531019240014590

/-!
# A252803: Number of (n+2)X(n+2) 0..4 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252803, there is no canonical definition to state claims against.
-/

/-! ## A252803.P8340418227593021912

`A252811(∑[4*n]+1)`
-/

namespace A252803.P8340418227593021912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252803.P8340418227593021912

/-! ## A252803.P9794085474640052364

`or(char[1], A252811(A001844(n)))`
-/

namespace A252803.P9794085474640052364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252811 (A001844 n).toNat)

end

end A252803.P9794085474640052364

/-! ## A252803.P10297541382460653040

`A326681(n)+A252811(A001844(n))`
-/

namespace A252803.P10297541382460653040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326681 n + A252811 (A001844 n).toNat

end

end A252803.P10297541382460653040

/-! ## A252803.P15496441802347243716

`A252811(A001844(n))%A052392(n+4)`
-/

namespace A252803.P15496441802347243716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252811 (A001844 n).toNat) (A052392 (n + 4))

end

end A252803.P15496441802347243716

/-! ## A252803.P13173896870201738080

`A007318(C(2, n))*A252811(A001844(n))`
-/

namespace A252803.P13173896870201738080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252811 (A001844 n).toNat

end

end A252803.P13173896870201738080

/-!
# A252804: Number of (n+2)X(1+2) 0..4 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252804, there is no canonical definition to state claims against.
-/

/-! ## A252804.P6488331355305471313

`A252811(∑[n]+1)`
-/

namespace A252804.P6488331355305471313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252804.P6488331355305471313

/-! ## A252804.P3929551319403323859

`record[A252811(n+1)]`
-/

namespace A252804.P3929551319403323859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252804.P3929551319403323859

/-! ## A252804.P10990383351519657179

`or(char[1], A252811(A000124(n)))`
-/

namespace A252804.P10990383351519657179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252811 (A000124 n).toNat)

end

end A252804.P10990383351519657179

/-! ## A252804.P11764798395595127670

`A007318(∑[n])*A252811(A000124(n))`
-/

namespace A252804.P11764798395595127670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A252811 (A000124 n).toNat

end

end A252804.P11764798395595127670

/-! ## A252804.P7654955231762278562

`A252811(A000124(n))+A091684(3*n)`
-/

namespace A252804.P7654955231762278562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A000124 n).toNat + A091684 (3 * n)

end

end A252804.P7654955231762278562

/-!
# A252805: Number of (n+2) X (2+2) 0..4 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252805, there is no canonical definition to state claims against.
-/

/-! ## A252805.P9354377634196666822

`A252811(∑[n+1]+2)`
-/

namespace A252805.P9354377634196666822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252805.P9354377634196666822

/-! ## A252805.P3982441214402287547

`or(char[1], A252811(A000096(n+1)))`
-/

namespace A252805.P3982441214402287547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252811 (A000096 (n + 1)).toNat)

end

end A252805.P3982441214402287547

/-! ## A252805.P12264918445069810729

`A007318(C(n, 2))*A252811(A000096(n+1))`
-/

namespace A252805.P12264918445069810729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A252811 (A000096 (n + 1)).toNat

end

end A252805.P12264918445069810729

/-! ## A252805.P18310847305591948131

`A007318(and(1, -n))*A252811(A000096(n+1))`
-/

namespace A252805.P18310847305591948131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A252811 (A000096 (n + 1)).toNat

end

end A252805.P18310847305591948131

/-! ## A252805.P4265296332630027199

`A252811(A000096(n+1))+char[A252811(n+2)]`
-/

namespace A252805.P4265296332630027199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A252805.P4265296332630027199

/-!
# A252806: Number of (n+2)X(3+2) 0..4 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252806, there is no canonical definition to state claims against.
-/

/-! ## A252806.P1415103108851245977

`A252811(∑[n+2]+4)`
-/

namespace A252806.P1415103108851245977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252806.P1415103108851245977

/-! ## A252806.P8297458736451760137

`or(char[2], A252811(A167614(n+1)))`
-/

namespace A252806.P8297458736451760137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252811 (A167614 (n + 1)).toNat)

end

end A252806.P8297458736451760137

/-! ## A252806.P1772572492600544431

`abs(A033999(n)*A252811(A167614(n+1)))`
-/

namespace A252806.P1772572492600544431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A252811 (A167614 (n + 1)).toNat|

end

end A252806.P1772572492600544431

/-! ## A252806.P9925673335711459962

`A028920(2*n)*A252811(A167614(n+1))`
-/

namespace A252806.P9925673335711459962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (2 * n) * A252811 (A167614 (n + 1)).toNat

end

end A252806.P9925673335711459962

/-! ## A252806.P11507639948500246131

`A252811(A167614(n+1))%A038451(n+1)`
-/

namespace A252806.P11507639948500246131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252811 (A167614 (n + 1)).toNat) (A038451 (n + 1))

end

end A252806.P11507639948500246131

/-!
# A252807: Number of (n+2) X (4+2) 0..4 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252807, there is no canonical definition to state claims against.
-/

/-! ## A252807.P12797272934908124846

`A252811(A374004(n+1))`
-/

namespace A252807.P12797272934908124846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A374004 (n + 1)).toNat

end

end A252807.P12797272934908124846

/-! ## A252807.P16479698144041068172

`A252811(A141214(n)+7)`
-/

namespace A252807.P16479698144041068172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A141214 n + 7).toNat

end

end A252807.P16479698144041068172

/-! ## A252807.P2503190099913883646

`A252811(A052905(n)+9)`
-/

namespace A252807.P2503190099913883646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A052905 n + 9).toNat

end

end A252807.P2503190099913883646

/-! ## A252807.P6180209811690860440

`A252811(A055999(n)+10)`
-/

namespace A252807.P6180209811690860440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A055999 n + 10).toNat

end

end A252807.P6180209811690860440

/-! ## A252807.P3326412175408741784

`A252811(Δ[A008778(n)]+6)`
-/

namespace A252807.P3326412175408741784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (f1 (n + 1) - f1 n + 6).toNat

end

end A252807.P3326412175408741784

/-!
# A252808: Number of (n+2)X(5+2) 0..4 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252808, there is no canonical definition to state claims against.
-/

/-! ## A252808.P6874902118772709918

`A252811(A374005(n+1))`
-/

namespace A252808.P6874902118772709918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A374005 (n + 1)).toNat

end

end A252808.P6874902118772709918

/-! ## A252808.P12321593600878593895

`A252811(A167499(n+3))`
-/

namespace A252808.P12321593600878593895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A167499 (n + 3)).toNat

end

end A252808.P12321593600878593895

/-! ## A252808.P6452020350521924228

`A252811(A155212(n)+13)`
-/

namespace A252808.P6452020350521924228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A155212 n + 13).toNat

end

end A252808.P6452020350521924228

/-! ## A252808.P17322085931994302864

`A252811(A056000(n)+15)`
-/

namespace A252808.P17322085931994302864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A056000 n + 15).toNat

end

end A252808.P17322085931994302864

/-! ## A252808.P1671756872558092922

`A252811(∑[A020705(n)]+11)`
-/

namespace A252808.P1671756872558092922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A252808.P1671756872558092922

/-!
# A252809: Number of (n+2) X (6+2) 0..4 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252809, there is no canonical definition to state claims against.
-/

/-! ## A252809.P7427242607885491041

`A252811(A374007(n+1))`
-/

namespace A252809.P7427242607885491041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A374007 (n + 1)).toNat

end

end A252809.P7427242607885491041

/-! ## A252809.P17674994624290933836

`A252811(A167499(n+4)+1)`
-/

namespace A252809.P17674994624290933836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A167499 (n + 4) + 1).toNat

end

end A252809.P17674994624290933836

/-! ## A252809.P4108688233327922470

`A252811(A167487(n+4)-1)`
-/

namespace A252809.P4108688233327922470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A167487 (n + 4) - 1).toNat

end

end A252809.P4108688233327922470

/-! ## A252809.P15266326708030490557

`A252811(A000124(n+5)+5)`
-/

namespace A252809.P15266326708030490557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A000124 (n + 5) + 5).toNat

end

end A252809.P15266326708030490557

/-! ## A252809.P2253819273278020800

`A252811(A000096(n+4)+7)`
-/

namespace A252809.P2253819273278020800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A000096 (n + 4) + 7).toNat

end

end A252809.P2253819273278020800

/-!
# A252810: Number of (n+2)X(7+2) 0..4 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252810, there is no canonical definition to state claims against.
-/

/-! ## A252810.P5819553941054291538

`A252811(A374008(n+1))`
-/

namespace A252810.P5819553941054291538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A374008 (n + 1)).toNat

end

end A252810.P5819553941054291538

/-! ## A252810.P2427830976974801966

`A252811(A056119(n)+28)`
-/

namespace A252810.P2427830976974801966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A056119 n + 28).toNat

end

end A252810.P2427830976974801966

/-! ## A252810.P10462377833438852402

`A252811(A166136(n+5)+1)`
-/

namespace A252810.P10462377833438852402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A166136 (n + 5) + 1).toNat

end

end A252810.P10462377833438852402

/-! ## A252810.P2159358235613621278

`A252811(A167499(n+5)+2)`
-/

namespace A252810.P2159358235613621278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A167499 (n + 5) + 2).toNat

end

end A252810.P2159358235613621278

/-! ## A252810.P3966585397712663744

`A252811(A000124(n+6)+6)`
-/

namespace A252810.P3966585397712663744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252811 (A000124 (n + 6) + 6).toNat

end

end A252810.P3966585397712663744

/-!
# A252813: Number of n X n nonnegative integer arrays with upper left 0 and every value within 2 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252813, there is no canonical definition to state claims against.
-/

/-! ## A252813.P13209847532005470807

`A229421(n+1)-A000984(n+1)`
-/

namespace A252813.P13209847532005470807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229421 (n + 1) - A000984 (n + 1)

end

end A252813.P13209847532005470807

/-! ## A252813.P12840071810808671830

`A252876(A001844(n))+A030662(n+1)`
-/

namespace A252813.P12840071810808671830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A001844 n).toNat + A030662 (n + 1)

end

end A252813.P12840071810808671830

/-! ## A252813.P4576730559313510670

`A252820(∑[4*n]+1)`
-/

namespace A252813.P4576730559313510670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252813.P4576730559313510670

/-! ## A252813.P6273864007560679089

`A252869(n+1)+A030662(n+1)`
-/

namespace A252813.P6273864007560679089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252869 (n + 1) + A030662 (n + 1)

end

end A252813.P6273864007560679089

/-! ## A252813.P11867577548701179040

`A115112(n+1)+A252869(n+1)+1`
-/

namespace A252813.P11867577548701179040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115112 (n + 1) + (A252869 (n + 1) + 1)

end

end A252813.P11867577548701179040

/-!
# A252814: Number of n X 2 nonnegative integer arrays with upper left 0 and every value within 2 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252814, the canonical program `A252814.P13042484664632392877` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252814 has offset 1).

The definition of A252814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252814.P13042484664632392877

`∑[∑[∑[n]+1]+n²]+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A252814

/-- `∑[∑[∑[n]+1]+n²]+1` -/
def P13042484664632392877.Spec : Prop :=
  ∀ n, (P13042484664632392877.a n : ℤ) = A252814 (n + 1)

theorem P13042484664632392877.correct : P13042484664632392877.Spec := by
  intro n
  simp only [A252814, Nat.add_sub_cancel]

end A252814

/-! ## A252814.P95004836490826560

`∑[∑[∑[n]+1]+n^(2%(n+1))]`
-/

namespace A252814.P95004836490826560
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ (2 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252814.P95004836490826560

namespace A252814

/-- `∑[∑[∑[n]+1]+n^(2%(n+1))]` -/
def P95004836490826560.Spec : Prop :=
  ∀ n, (P95004836490826560.a n : ℤ) = A252814 (n + 1)

end A252814

/-! ## A252814.P13804909952511337281

`∑[a(n-1)+n*((n+1)/2+2)]` with `a(0)=2, a(1)=4`
-/

namespace A252814.P13804909952511337281
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) + (n : ℚ) * ((n + 1 : ℚ) / 2 + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252814.P13804909952511337281

namespace A252814

/-- `∑[a(n-1)+n*((n+1)/2+2)]` -/
def P13804909952511337281.Spec : Prop :=
  ∀ n, P13804909952511337281.a n = (A252814 (n + 1) : ℚ)

end A252814

/-! ## A252814.P4881069302895732957

`∑[n-1+a(n-1)+C(n+2, 2)]` with `a(0)=2, a(1)=4`
-/

namespace A252814.P4881069302895732957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  (n : ℤ) - 1 + (f1 (n - 1) + (Nat.choose (n + 2) 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252814.P4881069302895732957

namespace A252814

/-- `∑[n-1+a(n-1)+C(n+2, 2)]` -/
def P4881069302895732957.Spec : Prop :=
  ∀ n, P4881069302895732957.a n = A252814 (n + 1)

end A252814

/-! ## A252814.P206938318493777665

`∑[ceil(acot(n))*A027378(n)]`
-/

namespace A252814.P206938318493777665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A027378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252814.P206938318493777665

namespace A252814

/-- `∑[ceil(acot(n))*A027378(n)]` -/
def P206938318493777665.Spec : Prop :=
  ∀ n, P206938318493777665.a n = A252814 (n + 1)

end A252814

/-! ## A252814.P18105364238760511120

`∑[A003600(n)+n²+1]`
-/

namespace A252814.P18105364238760511120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 n + (n ^ 2 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252814.P18105364238760511120

namespace A252814

/-- `∑[A003600(n)+n²+1]` -/
def P18105364238760511120.Spec : Prop :=
  ∀ n, P18105364238760511120.a n = A252814 (n + 1)

end A252814

/-! ## A252814.P8157430104530093948

`∑[A006503(n)+ceil(2/(n+1))]`
-/

namespace A252814.P8157430104530093948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n + ⌈2 / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252814.P8157430104530093948

namespace A252814

/-- `∑[A006503(n)+ceil(2/(n+1))]` -/
def P8157430104530093948.Spec : Prop :=
  ∀ n, P8157430104530093948.a n = A252814 (n + 1)

end A252814

/-! ## A252814.P7437660297423814036

`∑[A027378(n)+A000007(n)]`
-/

namespace A252814.P7437660297423814036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027378 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252814.P7437660297423814036

namespace A252814

/-- `∑[A027378(n)+A000007(n)]` -/
def P7437660297423814036.Spec : Prop :=
  ∀ n, P7437660297423814036.a n = A252814 (n + 1)

end A252814

/-! ## A252814.P5183381280979583729

`∑[A054977(n)+A006503(n)]`
-/

namespace A252814.P5183381280979583729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252814.P5183381280979583729

namespace A252814

/-- `∑[A054977(n)+A006503(n)]` -/
def P5183381280979583729.Spec : Prop :=
  ∀ n, P5183381280979583729.a n = A252814 (n + 1)

end A252814

/-! ## A252814.P1243222018808420361

`∑[A000007(n)+∑[A027379(n)]]`
-/

namespace A252814.P1243222018808420361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252814.P1243222018808420361

namespace A252814

/-- `∑[A000007(n)+∑[A027379(n)]]` -/
def P1243222018808420361.Spec : Prop :=
  ∀ n, P1243222018808420361.a n = A252814 (n + 1)

end A252814

/-! ## A252814.P14549956726647890609

`abs(A005582(n+1)-A005563(n))`
-/

namespace A252814.P14549956726647890609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005582 (n + 1) - A005563 n|

end

end A252814.P14549956726647890609

namespace A252814

/-- `abs(A005582(n+1)-A005563(n))` -/
def P14549956726647890609.Spec : Prop :=
  ∀ n, P14549956726647890609.a n = A252814 (n + 1)

end A252814

/-! ## A252814.P813347807756694001

`∑[(A008778(n)-n)*A054977(n)]`
-/

namespace A252814.P813347807756694001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008778 n - (n : ℤ)) * A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252814.P813347807756694001

namespace A252814

/-- `∑[(A008778(n)-n)*A054977(n)]` -/
def P813347807756694001.Spec : Prop :=
  ∀ n, P813347807756694001.a n = A252814 (n + 1)

end A252814

/-! ## A252814.P10184109804756644451

`∑[∑[A000124(n)]+A028310(n)²]`
-/

namespace A252814.P10184109804756644451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + A028310 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252814.P10184109804756644451

namespace A252814

/-- `∑[∑[A000124(n)]+A028310(n)²]` -/
def P10184109804756644451.Spec : Prop :=
  ∀ n, P10184109804756644451.a n = A252814 (n + 1)

end A252814

/-! ## A252814.P2852434362717336462

`Δ[A145127(n)+A000332(n+1)]`
-/

namespace A252814.P2852434362717336462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145127 n + A000332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A252814.P2852434362717336462

namespace A252814

/-- `Δ[A145127(n)+A000332(n+1)]` -/
def P2852434362717336462.Spec : Prop :=
  ∀ n, P2852434362717336462.a n = A252814 (n + 1)

end A252814

/-!
# A252815: Number of n X 3 nonnegative integer arrays with upper left 0 and every value within 2 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252815, the canonical program `A252815.P8172004683234130111` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252815 has offset 1).

The definition of A252815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252815.P14185611938594351352

`A252871(n+1)+A062748(n)`
-/

namespace A252815.P14185611938594351352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252871 (n + 1) + A062748 n

end

end A252815.P14185611938594351352

namespace A252815

/-- `A252871(n+1)+A062748(n)` -/
def P14185611938594351352.Spec : Prop :=
  ∀ n, P14185611938594351352.a n = A252815 (n + 1)

end A252815

/-! ## A252815.P12920783054343801603

`A229423(n+1)-(A062748(n)+1)`
-/

namespace A252815.P12920783054343801603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229423 (n + 1) - (A062748 n + 1)

end

end A252815.P12920783054343801603

namespace A252815

/-- `A229423(n+1)-(A062748(n)+1)` -/
def P12920783054343801603.Spec : Prop :=
  ∀ n, P12920783054343801603.a n = A252815 (n + 1)

theorem P12920783054343801603.correct : P12920783054343801603.Spec := by
  intro n
  simp only [A252815, Nat.add_sub_cancel, A252815.P12920783054343801603.a, A252815.P8172004683234130111.a, A062748, A062748.P14956383250975312494.a, A202752, A202752.P17958664207444159430.f4, A202752.P17958664207444159430.f3, A202752.P17958664207444159430.f2, A202752.P17958664207444159430.f1, A202752.P17958664207444159430.a, A229423, A229423.P15058870928533988016.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A252815

/-! ## A252815.P13107256617734789497

`A252823(n+1)-A252971(n+1)`
-/

namespace A252815.P13107256617734789497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252823 (n + 1) - A252971 (n + 1)

end

end A252815.P13107256617734789497

namespace A252815

/-- `A252823(n+1)-A252971(n+1)` -/
def P13107256617734789497.Spec : Prop :=
  ∀ n, P13107256617734789497.a n = A252815 (n + 1)

end A252815

/-! ## A252815.P123078185937840204

`A252871(n+1)+∑[A000217(n+2)]`
-/

namespace A252815.P123078185937840204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252871 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252815.P123078185937840204

namespace A252815

/-- `A252871(n+1)+∑[A000217(n+2)]` -/
def P123078185937840204.Spec : Prop :=
  ∀ n, P123078185937840204.a n = A252815 (n + 1)

theorem P123078185937840204.correct : P123078185937840204.Spec := by
  intro n
  simp only [A252815, Nat.add_sub_cancel, A252815.P123078185937840204.f1, A252815.P123078185937840204.a, A252815.P8172004683234130111.a, A000217, A000217.P10269402890581615239.a, A202752, A202752.P17958664207444159430.f4, A202752.P17958664207444159430.f3, A202752.P17958664207444159430.f2, A202752.P17958664207444159430.f1, A202752.P17958664207444159430.a, A252871, A252871.P6032531055172696839.f1, A252871.P6032531055172696839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A252815

/-! ## A252815.P8172004683234130111

`A202752(n+2)+C(n, 2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A252815

/-- `A202752(n+2)+C(n, 2)` -/
def P8172004683234130111.Spec : Prop :=
  ∀ n, P8172004683234130111.a n = A252815 (n + 1)

theorem P8172004683234130111.correct : P8172004683234130111.Spec := by
  intro n
  simp only [A252815, Nat.add_sub_cancel]

end A252815

/-! ## A252815.P13355464530176683410

`A202752(n+2)+A161680(n)`
-/

namespace A252815.P13355464530176683410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202752 (n + 2) + A161680 n

end

end A252815.P13355464530176683410

namespace A252815

/-- `A202752(n+2)+A161680(n)` -/
def P13355464530176683410.Spec : Prop :=
  ∀ n, P13355464530176683410.a n = A252815 (n + 1)

end A252815

/-! ## A252815.P1631058210152608171

`A229423(n+1)-A000292(n+2)`
-/

namespace A252815.P1631058210152608171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229423 (n + 1) - A000292 (n + 2)

end

end A252815.P1631058210152608171

namespace A252815

/-- `A229423(n+1)-A000292(n+2)` -/
def P1631058210152608171.Spec : Prop :=
  ∀ n, P1631058210152608171.a n = A252815 (n + 1)

theorem P1631058210152608171.correct : P1631058210152608171.Spec := by
  intro n
  simp only [A252815, Nat.add_sub_cancel, A252815.P1631058210152608171.a, A252815.P8172004683234130111.a, A000292, A000292.P18322089543142633594.a, A202752, A202752.P17958664207444159430.f4, A202752.P17958664207444159430.f3, A202752.P17958664207444159430.f2, A202752.P17958664207444159430.f1, A202752.P17958664207444159430.a, A229423, A229423.P15058870928533988016.a, A062748, A062748.P14956383250975312494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A252815

/-! ## A252815.P565127034040231774

`A202752(n+2)+A000217(n)-n`
-/

namespace A252815.P565127034040231774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202752 (n + 2) + (A000217 n - (n : ℤ))

end

end A252815.P565127034040231774

namespace A252815

/-- `A202752(n+2)+A000217(n)-n` -/
def P565127034040231774.Spec : Prop :=
  ∀ n, P565127034040231774.a n = A252815 (n + 1)

theorem P565127034040231774.correct : P565127034040231774.Spec := by
  intro n
  simp only [A252815, Nat.add_sub_cancel, A252815.P565127034040231774.a, A252815.P8172004683234130111.a, A000217, A000217.P10269402890581615239.a, A202752, A202752.P17958664207444159430.f4, A202752.P17958664207444159430.f3, A202752.P17958664207444159430.f2, A202752.P17958664207444159430.f1, A202752.P17958664207444159430.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A252815

/-! ## A252815.P17089526266049398632

`A202752(n+2)+A000124(n)-(n+1)`
-/

namespace A252815.P17089526266049398632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202752 (n + 2) + (A000124 n - (n + 1 : ℤ))

end

end A252815.P17089526266049398632

namespace A252815

/-- `A202752(n+2)+A000124(n)-(n+1)` -/
def P17089526266049398632.Spec : Prop :=
  ∀ n, P17089526266049398632.a n = A252815 (n + 1)

end A252815

/-! ## A252815.P383302093692911737

`A202752(n+2)+A055998(n)-3*n`
-/

namespace A252815.P383302093692911737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202752 (n + 2) + (A055998 n - (3 * n : ℤ))

end

end A252815.P383302093692911737

namespace A252815

/-- `A202752(n+2)+A055998(n)-3*n` -/
def P383302093692911737.Spec : Prop :=
  ∀ n, P383302093692911737.a n = A252815 (n + 1)

end A252815

/-!
# A252816: Number of n X 4 nonnegative integer arrays with upper left 0 and every value within 2 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252816, there is no canonical definition to state claims against.
-/

/-! ## A252816.P2554650505559604826

`A252872(n+1)+A063258(n)`
-/

namespace A252816.P2554650505559604826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252872 (n + 1) + A063258 n

end

end A252816.P2554650505559604826

/-! ## A252816.P5024103516797639852

`A229424(n+1)-(A063258(n)+1)`
-/

namespace A252816.P5024103516797639852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229424 (n + 1) - (A063258 n + 1)

end

end A252816.P5024103516797639852

/-! ## A252816.P4200587372836445892

`A252824(n+1)-A252972(n+1)`
-/

namespace A252816.P4200587372836445892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252824 (n + 1) - A252972 (n + 1)

end

end A252816.P4200587372836445892

/-! ## A252816.P8984345183257632848

`A166805(n+1)+A252872(n+1)+1`
-/

namespace A252816.P8984345183257632848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166805 (n + 1) + (A252872 (n + 1) + 1)

end

end A252816.P8984345183257632848

/-! ## A252816.P5563887944153794330

`A229424(n+1)-A000332(n+5)`
-/

namespace A252816.P5563887944153794330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229424 (n + 1) - A000332 (n + 5)

end

end A252816.P5563887944153794330

/-! ## A252816.P1573940559941666618

`A252820(∑[n+3]+7)`
-/

namespace A252816.P1573940559941666618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252816.P1573940559941666618

/-! ## A252816.P17566715569719188081

`A252820(A046691(n+2)+1)%A252929(n+1)`
-/

namespace A252816.P17566715569719188081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252820 (A046691 (n + 2) + 1).toNat) (A252929 (n + 1))

end

end A252816.P17566715569719188081

/-!
# A252817: Number of n X 5 nonnegative integer arrays with upper left 0 and every value within 2 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252817, there is no canonical definition to state claims against.
-/

/-! ## A252817.P11507668460363139900

`A252873(n+1)+A062988(n)`
-/

namespace A252817.P11507668460363139900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252873 (n + 1) + A062988 n

end

end A252817.P11507668460363139900

/-! ## A252817.P6046985819531746107

`A229425(n+1)-(A062988(n)+1)`
-/

namespace A252817.P6046985819531746107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229425 (n + 1) - (A062988 n + 1)

end

end A252817.P6046985819531746107

/-! ## A252817.P16868755867689062692

`A252825(n+1)-A252973(n+1)`
-/

namespace A252817.P16868755867689062692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252825 (n + 1) - A252973 (n + 1)

end

end A252817.P16868755867689062692

/-! ## A252817.P12960958419385821573

`A252873(n+1)+Δ[A062989(n)]`
-/

namespace A252817.P12960958419385821573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252873 (n + 1) + (f1 (n + 1) - f1 n)

end

end A252817.P12960958419385821573

/-! ## A252817.P14303050593527146628

`A229425(n+1)-Δ[A124089(n+6)]`
-/

namespace A252817.P14303050593527146628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229425 (n + 1) - (f1 (n + 1) - f1 n)

end

end A252817.P14303050593527146628

/-! ## A252817.P1499767430507051587

`A252873(n+1)+Δ[A124089(n+6)]-1`
-/

namespace A252817.P1499767430507051587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252873 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A252817.P1499767430507051587

/-! ## A252817.P9480468344874472556

`A252820(A167499(n+3))`
-/

namespace A252817.P9480468344874472556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (A167499 (n + 3)).toNat

end

end A252817.P9480468344874472556

/-! ## A252817.P4629821714564933540

`A252820(A000217(n+4)+5)`
-/

namespace A252817.P4629821714564933540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (A000217 (n + 4) + 5).toNat

end

end A252817.P4629821714564933540

/-! ## A252817.P11577223797249895096

`A252820(∑[n+5]+6)`
-/

namespace A252817.P11577223797249895096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A252817.P11577223797249895096

/-!
# A252818: Number of n X 6 nonnegative integer arrays with upper left 0 and every value within 2 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252818, there is no canonical definition to state claims against.
-/

/-! ## A252818.P15305505647451893151

`A229426(n+1)-C(n+7, 6)`
-/

namespace A252818.P15305505647451893151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229426 (n + 1) - (Nat.choose (n + 7) 6 : ℤ)

end

end A252818.P15305505647451893151

/-! ## A252818.P8794892761574315283

`A252826(n+1)-A252974(n+1)`
-/

namespace A252818.P8794892761574315283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252826 (n + 1) - A252974 (n + 1)

end

end A252818.P8794892761574315283

/-! ## A252818.P16696304720688953333

`A166810(n+1)+A252874(n+1)+1`
-/

namespace A252818.P16696304720688953333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 (n + 1) + (A252874 (n + 1) + 1)

end

end A252818.P16696304720688953333

/-! ## A252818.P14534214711823623665

`A229426(n+1)-Δ[A000580(n+7)]`
-/

namespace A252818.P14534214711823623665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229426 (n + 1) - (f1 (n + 1) - f1 n)

end

end A252818.P14534214711823623665

/-! ## A252818.P3340728388177966044

`A229426(n+1)-Δ[A124090(n+7)]`
-/

namespace A252818.P3340728388177966044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124090 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229426 (n + 1) - (f1 (n + 1) - f1 n)

end

end A252818.P3340728388177966044

/-! ## A252818.P14385888778394601519

`A252874(n+1)+Δ[A000580(n+7)]-1`
-/

namespace A252818.P14385888778394601519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252874 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A252818.P14385888778394601519

/-! ## A252818.P9707055146214293297

`A252874(n+1)+Δ[A124090(n+7)]-1`
-/

namespace A252818.P9707055146214293297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124090 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252874 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A252818.P9707055146214293297

/-! ## A252818.P8663378070962848256

`A252820(A000124(n+5)+5)`
-/

namespace A252818.P8663378070962848256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (A000124 (n + 5) + 5).toNat

end

end A252818.P8663378070962848256

/-! ## A252818.P17300095969302161956

`A252820(A055998(n)+A008585(n+7))`
-/

namespace A252818.P17300095969302161956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (A055998 n + A008585 (n + 7)).toNat

end

end A252818.P17300095969302161956

/-! ## A252818.P8917022110229880630

`A252820(A034856(n+4)+8)+A000038(n+1)`
-/

namespace A252818.P8917022110229880630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (A034856 (n + 4) + 8).toNat + A000038 (n + 1)

end

end A252818.P8917022110229880630

/-!
# A252819: Number of nX7 nonnegative integer arrays with upper left 0 and every value within 2 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252819, there is no canonical definition to state claims against.
-/

/-! ## A252819.P10027552849635505026

`A166812(n+1)+A252875(n+1)+1`
-/

namespace A252819.P10027552849635505026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166812 (n + 1) + (A252875 (n + 1) + 1)

end

end A252819.P10027552849635505026

/-! ## A252819.P13744610193940471532

`A229427(n+1)-Δ[A165618(n)]`
-/

namespace A252819.P13744610193940471532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229427 (n + 1) - (f1 (n + 1) - f1 n)

end

end A252819.P13744610193940471532

/-! ## A252819.P18444117014344800465

`A252875(n+1)+Δ[A165618(n)]-1`
-/

namespace A252819.P18444117014344800465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252875 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A252819.P18444117014344800465

/-! ## A252819.P2882711536349059024

`A229427(n+1)-Δ[A000581(n+8)]`
-/

namespace A252819.P2882711536349059024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229427 (n + 1) - (f1 (n + 1) - f1 n)

end

end A252819.P2882711536349059024

/-! ## A252819.P4717729325055739103

`A252820(A000124(n+6)+6)`
-/

namespace A252819.P4717729325055739103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (A000124 (n + 6) + 6).toNat

end

end A252819.P4717729325055739103

/-! ## A252819.P13986165173308886773

`A252820(A000217(n+6)+7)`
-/

namespace A252819.P13986165173308886773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (A000217 (n + 6) + 7).toNat

end

end A252819.P13986165173308886773

/-! ## A252819.P13435163404581188110

`A252820(A374008(n+1))`
-/

namespace A252819.P13435163404581188110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (A374008 (n + 1)).toNat

end

end A252819.P13435163404581188110

/-! ## A252819.P13661380537118728368

`A252820(A055999(n+4))`
-/

namespace A252819.P13661380537118728368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (A055999 (n + 4)).toNat

end

end A252819.P13661380537118728368

/-! ## A252819.P2224632880276454895

`A252820(Δ[A023551(n+2)])`
-/

namespace A252819.P2224632880276454895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (f1 (n + 1) - f1 n).toNat

end

end A252819.P2224632880276454895

/-! ## A252819.P18259331506806819007

`A252820(A000096(n+6)-5)`
-/

namespace A252819.P18259331506806819007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (A000096 (n + 6) - 5).toNat

end

end A252819.P18259331506806819007

/-!
# A252820: T(n,k)=Number of nXk nonnegative integer arrays with upper left 0 and every value within 2 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252820, there is no canonical definition to state claims against.
-/

/-! ## A252820.P7750308710057399803

`A252876(n+1)+A014430(n)`
-/

namespace A252820.P7750308710057399803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (n + 1) + A014430 n

end

end A252820.P7750308710057399803

/-! ## A252820.P6460729640058620909

`A252876(n+1)+A014410(n+2)-1`
-/

namespace A252820.P6460729640058620909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (n + 1) + (A014410 (n + 2) - 1)

end

end A252820.P6460729640058620909

/-! ## A252820.P9460105254551210031

`A252876(n+1)+A051597(n)+A014473(n)`
-/

namespace A252820.P9460105254551210031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (n + 1) + (A051597 n + A014473 n)

end

end A252820.P9460105254551210031

/-! ## A252820.P6423374648514319284

`A229428(n+1)-(A014430(n)+1)`
-/

namespace A252820.P6423374648514319284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229428 (n + 1) - (A014430 n + 1)

end

end A252820.P6423374648514319284

/-! ## A252820.P5526101309574580537

`A229428(n+1)-A014410(n+2)`
-/

namespace A252820.P5526101309574580537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229428 (n + 1) - A014410 (n + 2)

end

end A252820.P5526101309574580537

/-! ## A252820.P2000623325435420166

`A229428(n+1)-sqrt(A014719(n+2))`
-/

namespace A252820.P2000623325435420166
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A229428 (n + 1) : ℝ) - Real.sqrt (A014719 (n + 2) : ℝ)

end

end A252820.P2000623325435420166

/-! ## A252820.P4655609952246912758

`A229428(n+1)-A074909(A014132(n+1))`
-/

namespace A252820.P4655609952246912758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229428 (n + 1) - A074909 (A014132 (n + 1)).toNat

end

end A252820.P4655609952246912758

/-! ## A252820.P1203924618436343402

`A229428(n+1)-A135278(A007401(n+1))`
-/

namespace A252820.P1203924618436343402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229428 (n + 1) - A135278 (A007401 (n + 1)).toNat

end

end A252820.P1203924618436343402

/-! ## A252820.P11901123839756932963

`A252828(n+1)-A252976(n+1)`
-/

namespace A252820.P11901123839756932963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (n + 1) - A252976 (n + 1)

end

end A252820.P11901123839756932963

/-!
# A252821: Number of n X n nonnegative integer arrays with upper left 0 and every value within 3 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252821, there is no canonical definition to state claims against.
-/

/-! ## A252821.P15465283709949907766

`A252828((n+1)²+n²)`
-/

namespace A252821.P15465283709949907766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 ((n + 1) ^ 2 + n ^ 2)

end

end A252821.P15465283709949907766

/-! ## A252821.P7242747781904324169

`record[A003982(n)*A252828(n+1)]`
-/

namespace A252821.P7242747781904324169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252821.P7242747781904324169

/-! ## A252821.P16384258119480174892

`gcd(A010894(n), A252828(A001844(n)))`
-/

namespace A252821.P16384258119480174892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A252828 (A001844 n).toNat)

end

end A252821.P16384258119480174892

/-! ## A252821.P8095688262968244030

`A252828(A001844(n))+A034449(n+1)`
-/

namespace A252821.P8095688262968244030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (A001844 n).toNat + A034449 (n + 1)

end

end A252821.P8095688262968244030

/-! ## A252821.P6543445760880806621

`lcm(A184848(n+1), A252828(A001844(n)))`
-/

namespace A252821.P6543445760880806621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A184848 (n + 1)) (A252828 (A001844 n).toNat)

end

end A252821.P6543445760880806621

/-!
# A252822: Number of n X 2 nonnegative integer arrays with upper left 0 and every value within 3 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252822, the canonical program `A252822.P3302283567831736258` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252822 has offset 1).

The definition of A252822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252822.P3302283567831736258

`∑[A056078(n+1)+∑[∑[n+1]]]+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A252822

/-- `∑[A056078(n+1)+∑[∑[n+1]]]+1` -/
def P3302283567831736258.Spec : Prop :=
  ∀ n, P3302283567831736258.a n = A252822 (n + 1)

theorem P3302283567831736258.correct : P3302283567831736258.Spec := by
  intro n
  simp only [A252822, Nat.add_sub_cancel]

end A252822

/-! ## A252822.P4183209174843050349

`A252970(n+1)+∑[∑[∑[n]+1]+n²]+1`
-/

namespace A252822.P4183209174843050349
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252970 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A252822.P4183209174843050349

namespace A252822

/-- `A252970(n+1)+∑[∑[∑[n]+1]+n²]+1` -/
def P4183209174843050349.Spec : Prop :=
  ∀ n, P4183209174843050349.a n = A252822 (n + 1)

end A252822

/-! ## A252822.P14081406695222150655

`A005584(n+1)-(A000096(n)+n*A008778(n))`
-/

namespace A252822.P14081406695222150655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005584 (n + 1) - (A000096 n + (n : ℤ) * A008778 n)

end

end A252822.P14081406695222150655

namespace A252822

/-- `A005584(n+1)-(A000096(n)+n*A008778(n))` -/
def P14081406695222150655.Spec : Prop :=
  ∀ n, P14081406695222150655.a n = A252822 (n + 1)

end A252822

/-! ## A252822.P2500273055932298002

`∑[A005583(n+1)]-(A000096(n)+n*A008778(n))`
-/

namespace A252822.P2500273055932298002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A000096 n + (n : ℤ) * A008778 n)

end

end A252822.P2500273055932298002

namespace A252822

/-- `∑[A005583(n+1)]-(A000096(n)+n*A008778(n))` -/
def P2500273055932298002.Spec : Prop :=
  ∀ n, P2500273055932298002.a n = A252822 (n + 1)

end A252822

/-! ## A252822.P13496639147835895308

`Δ[A056005(n)]+C(n+4, 4)+1`
-/

namespace A252822.P13496639147835895308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose (n + 4) 4 + 1 : ℤ)

end

end A252822.P13496639147835895308

namespace A252822

/-- `Δ[A056005(n)]+C(n+4, 4)+1` -/
def P13496639147835895308.Spec : Prop :=
  ∀ n, P13496639147835895308.a n = A252822 (n + 1)

end A252822

/-! ## A252822.P3014852750404904351

`A252814(n+1)+Δ[A056005(n)-A000332(n+1)]`
-/

namespace A252822.P3014852750404904351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056005 n - A000332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252814 (n + 1) + (f1 (n + 1) - f1 n)

end

end A252822.P3014852750404904351

namespace A252822

/-- `A252814(n+1)+Δ[A056005(n)-A000332(n+1)]` -/
def P3014852750404904351.Spec : Prop :=
  ∀ n, P3014852750404904351.a n = A252822 (n + 1)

end A252822

/-! ## A252822.P3686690010384462441

`Δ[A055216(A167614(n+6)+4)]`
-/

namespace A252822.P3686690010384462441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055216 (A167614 (n + 6) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A252822.P3686690010384462441

namespace A252822

/-- `Δ[A055216(A167614(n+6)+4)]` -/
def P3686690010384462441.Spec : Prop :=
  ∀ n, P3686690010384462441.a n = A252822 (n + 1)

end A252822

/-!
# A252823: Number of n X 3 nonnegative integer arrays with upper left 0 and every value within 3 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252823, there is no canonical definition to state claims against.
-/

/-! ## A252823.P1904248568862739843

`A252971(n+1)+A252815(n+1)`
-/

namespace A252823.P1904248568862739843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252971 (n + 1) + A252815 (n + 1)

end

end A252823.P1904248568862739843

/-! ## A252823.P11376745886635250176

`A252871(n+1)+A252971(n+1)+A062748(n)`
-/

namespace A252823.P11376745886635250176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252871 (n + 1) + (A252971 (n + 1) + A062748 n)

end

end A252823.P11376745886635250176

/-! ## A252823.P15531312599634238082

`A252971(n+1)+A252871(n+1)+∑[A000217(n+2)]`
-/

namespace A252823.P15531312599634238082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252971 (n + 1) + (A252871 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252823.P15531312599634238082

/-! ## A252823.P10253565791399717128

`A252971(n+1)+A202752(n+2)+C(n, 2)`
-/

namespace A252823.P10253565791399717128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252971 (n + 1) + (A202752 (n + 2) + (Nat.choose n 2 : ℤ))

end

end A252823.P10253565791399717128

/-! ## A252823.P14168912899093307225

`A252971(n+1)+A202752(n+2)+A161680(n)`
-/

namespace A252823.P14168912899093307225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252971 (n + 1) + (A202752 (n + 2) + A161680 n)

end

end A252823.P14168912899093307225

/-! ## A252823.P1421195259374509487

`A252971(n+1)+A229423(n+1)-A000292(n+2)`
-/

namespace A252823.P1421195259374509487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252971 (n + 1) + (A229423 (n + 1) - A000292 (n + 2))

end

end A252823.P1421195259374509487

/-! ## A252823.P481778806272387499

`A252971(n+1)+A202752(n+2)+A000217(n)-n`
-/

namespace A252823.P481778806272387499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252971 (n + 1) + (A202752 (n + 2) + (A000217 n - (n : ℤ)))

end

end A252823.P481778806272387499

/-! ## A252823.P13571099116638541640

`A252971(n+1)+A202752(n+2)+A055998(n)-3*n`
-/

namespace A252823.P13571099116638541640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252971 (n + 1) + (A202752 (n + 2) + (A055998 n - (3 * n : ℤ)))

end

end A252823.P13571099116638541640

/-!
# A252824: Number of n X 4 nonnegative integer arrays with upper left 0 and every value within 3 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252824, there is no canonical definition to state claims against.
-/

/-! ## A252824.P7218096469272312618

`A252972(n+1)+A252816(n+1)`
-/

namespace A252824.P7218096469272312618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252972 (n + 1) + A252816 (n + 1)

end

end A252824.P7218096469272312618

/-! ## A252824.P10931873700127888204

`A252872(n+1)+A252972(n+1)+A063258(n)`
-/

namespace A252824.P10931873700127888204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252872 (n + 1) + (A252972 (n + 1) + A063258 n)

end

end A252824.P10931873700127888204

/-! ## A252824.P17566950779003482471

`A252972(n+1)+A229424(n+1)-(A063258(n)+1)`
-/

namespace A252824.P17566950779003482471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252972 (n + 1) + (A229424 (n + 1) - (A063258 n + 1))

end

end A252824.P17566950779003482471

/-! ## A252824.P12486246411832321904

`A252828(A055999(n)+10)`
-/

namespace A252824.P12486246411832321904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (A055999 n + 10).toNat

end

end A252824.P12486246411832321904

/-! ## A252824.P4731249007834866501

`A252828(Δ[A008778(n)]+6)`
-/

namespace A252824.P4731249007834866501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (f1 (n + 1) - f1 n + 6).toNat

end

end A252824.P4731249007834866501

/-!
# A252825: Number of nX5 nonnegative integer arrays with upper left 0 and every value within 3 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252825, there is no canonical definition to state claims against.
-/

/-! ## A252825.P8061591195397410884

`A252973(n+1)+A252817(n+1)`
-/

namespace A252825.P8061591195397410884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252973 (n + 1) + A252817 (n + 1)

end

end A252825.P8061591195397410884

/-! ## A252825.P7259393663469295303

`A252873(n+1)+A252973(n+1)+A062988(n)`
-/

namespace A252825.P7259393663469295303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252873 (n + 1) + (A252973 (n + 1) + A062988 n)

end

end A252825.P7259393663469295303

/-! ## A252825.P5596109319160635534

`A252973(n+1)+A229425(n+1)-(A062988(n)+1)`
-/

namespace A252825.P5596109319160635534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252973 (n + 1) + (A229425 (n + 1) - (A062988 n + 1))

end

end A252825.P5596109319160635534

/-! ## A252825.P14480652856676946050

`A252873(n+1)+A252973(n+1)+Δ[A062989(n)]`
-/

namespace A252825.P14480652856676946050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252873 (n + 1) + (A252973 (n + 1) + (f1 (n + 1) - f1 n))

end

end A252825.P14480652856676946050

/-! ## A252825.P1775438763007398694

`A229425(n+1)+A252973(n+1)-Δ[A124089(n+6)]`
-/

namespace A252825.P1775438763007398694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229425 (n + 1) + (A252973 (n + 1) - (f1 (n + 1) - f1 n))

end

end A252825.P1775438763007398694

/-!
# A252826: Number of nX6 nonnegative integer arrays with upper left 0 and every value within 3 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252826, there is no canonical definition to state claims against.
-/

/-! ## A252826.P15990608742998908752

`A252974(n+1)+A252818(n+1)`
-/

namespace A252826.P15990608742998908752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252974 (n + 1) + A252818 (n + 1)

end

end A252826.P15990608742998908752

/-! ## A252826.P330070062095417089

`A252828(A000124(n+5)+5)`
-/

namespace A252826.P330070062095417089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (A000124 (n + 5) + 5).toNat

end

end A252826.P330070062095417089

/-! ## A252826.P7995114821608547756

`A252828(Δ[A023545(n+1)]+10)`
-/

namespace A252826.P7995114821608547756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (f1 (n + 1) - f1 n + 10).toNat

end

end A252826.P7995114821608547756

/-! ## A252826.P11684269731571478393

`A252828(A374007(n+1))`
-/

namespace A252826.P11684269731571478393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (A374007 (n + 1)).toNat

end

end A252826.P11684269731571478393

/-! ## A252826.P9149643860349349389

`A252828(Δ[Δ[A006504(n+1)]])`
-/

namespace A252826.P9149643860349349389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (f1 (n + 1) - f1 n).toNat

end

end A252826.P9149643860349349389

/-!
# A252827: Number of n X 7 nonnegative integer arrays with upper left 0 and every value within 3 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252827, there is no canonical definition to state claims against.
-/

/-! ## A252827.P2843210886095498043

`A252828(A167614(n+5)+4)`
-/

namespace A252827.P2843210886095498043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (A167614 (n + 5) + 4).toNat

end

end A252827.P2843210886095498043

/-! ## A252827.P16042695886970959253

`A252828(A000217(n+6)+7)`
-/

namespace A252827.P16042695886970959253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (A000217 (n + 6) + 7).toNat

end

end A252827.P16042695886970959253

/-! ## A252827.P4131240432311426781

`A252828(A374008(n+1))`
-/

namespace A252827.P4131240432311426781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (A374008 (n + 1)).toNat

end

end A252827.P4131240432311426781

/-! ## A252827.P10976051421581643994

`A252828(A055999(n+4))`
-/

namespace A252827.P10976051421581643994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (A055999 (n + 4)).toNat

end

end A252827.P10976051421581643994

/-! ## A252827.P5609602025043402232

`A252828(Δ[A023551(n+2)])`
-/

namespace A252827.P5609602025043402232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (f1 (n + 1) - f1 n).toNat

end

end A252827.P5609602025043402232

/-!
# A252828: T(n,k)=Number of nXk nonnegative integer arrays with upper left 0 and every value within 3 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

The programs for A252828, there is no canonical definition to state claims against.
-/

/-! ## A252828.P5570690784617786967

`A252976(n+1)+A252820(n+1)`
-/

namespace A252828.P5570690784617786967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252976 (n + 1) + A252820 (n + 1)

end

end A252828.P5570690784617786967

/-! ## A252828.P599047022332073395

`A252876(n+1)+A252976(n+1)+A014430(n)`
-/

namespace A252828.P599047022332073395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (n + 1) + (A252976 (n + 1) + A014430 n)

end

end A252828.P599047022332073395

/-! ## A252828.P9682704051263442951

`A252976(n+1)+A229428(n+1)-(A014430(n)+1)`
-/

namespace A252828.P9682704051263442951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252976 (n + 1) + (A229428 (n + 1) - (A014430 n + 1))

end

end A252828.P9682704051263442951

/-! ## A252828.P16076005799284233738

`A229428(n+1)+A252976(n+1)-A014410(n+2)`
-/

namespace A252828.P16076005799284233738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229428 (n + 1) + (A252976 (n + 1) - A014410 (n + 2))

end

end A252828.P16076005799284233738

/-! ## A252828.P10936854625050423055

`A229428(n+1)+A252976(n+1)-sqrt(A014719(n+2))`
-/

namespace A252828.P10936854625050423055
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A229428 (n + 1) : ℝ) + ((A252976 (n + 1) : ℝ) - Real.sqrt (A014719 (n + 2) : ℝ))

end

end A252828.P10936854625050423055

/-! ## A252828.P353379552053932179

`A252976(n+1)+A252876(n+1)+A014410(n+2)-1`
-/

namespace A252828.P353379552053932179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252976 (n + 1) + (A252876 (n + 1) + (A014410 (n + 2) - 1))

end

end A252828.P353379552053932179

/-! ## A252828.P9617170483327020896

`A252976(n+1)+A252876(n+1)+A051597(n)+A014473(n)`
-/

namespace A252828.P9617170483327020896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252976 (n + 1) + (A252876 (n + 1) + (A051597 n + A014473 n))

end

end A252828.P9617170483327020896

/-!
# A252829: T(n,k)=Number of nXk nonnegative integer arrays with upper left 0 and every value within 1 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252829, there is no canonical definition to state claims against.
-/

/-! ## A252829.P10208420789423741981

`A253026(comp[floor((n²-1)/2)]+1)`
-/

namespace A252829.P10208420789423741981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) - 1 : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253026 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A252829.P10208420789423741981

/-! ## A252829.P14866561803530728242

`A253026(n+1)+A152716(n)`
-/

namespace A252829.P14866561803530728242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253026 (n + 1) + A152716 n

end

end A252829.P14866561803530728242

/-! ## A252829.P1786325867809299033

`A253026(n+1)+A144464(n)²`
-/

namespace A252829.P1786325867809299033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253026 (n + 1) + A144464 n ^ 2

end

end A252829.P1786325867809299033

/-! ## A252829.P5837253933473535035

`A253026(n+1)+4^A004197(n)`
-/

namespace A252829.P5837253933473535035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253026 (n + 1) : ℚ) + (4 : ℚ) ^ (A004197 n : ℤ)

end

end A252829.P5837253933473535035

/-! ## A252829.P11243086326805675404

`A253026(n+1)+4^val(A036561(n), 6)`
-/

namespace A252829.P11243086326805675404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253026 (n + 1) + (4 ^ SequenceMachineLib.valuation (A036561 n).toNat 6 : ℤ)

end

end A252829.P11243086326805675404

/-! ## A252829.P4074355432380605712

`A253026(n+1)+4^(A003983(n+1)-1)`
-/

namespace A252829.P4074355432380605712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253026 (n + 1) : ℚ) + (4 : ℚ) ^ (A003983 (n + 1) - 1 : ℤ)

end

end A252829.P4074355432380605712

/-! ## A252829.P16778435365655256785

`A253026(n+1)+A000079(A157454(n+1)-1)`
-/

namespace A252829.P16778435365655256785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253026 (n + 1) + A000079 (A157454 (n + 1) - 1).toNat

end

end A252829.P16778435365655256785

/-! ## A252829.P16009745226812655268

`A253026(n+1)+A122803(A157454(n+1)-1)`
-/

namespace A252829.P16009745226812655268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253026 (n + 1) + A122803 (A157454 (n + 1) - 1).toNat

end

end A252829.P16009745226812655268

/-! ## A252829.P7199699941904516959

`A253026(n+1)+4^A001222(A152714(n))`
-/

namespace A252829.P7199699941904516959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253026 (n + 1) : ℚ) + (4 : ℚ) ^ (A001222 (A152714 n).toNat : ℤ)

end

end A252829.P7199699941904516959

/-! ## A252829.P6398810904713572213

`A253026(n+1)+A000010(2^A157454(n+1))`
-/

namespace A252829.P6398810904713572213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253026 (n + 1) + A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A157454 (n + 1) : ℤ))).toNat

end

end A252829.P6398810904713572213

/-!
# A252830: Number of n X n nonnegative integer arrays with upper left 0 and every value within 2 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252830, there is no canonical definition to state claims against.
-/

/-! ## A252830.P1448094345658273231

`A252836((n+1)²+n²)`
-/

namespace A252830.P1448094345658273231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 ((n + 1) ^ 2 + n ^ 2)

end

end A252830.P1448094345658273231

/-! ## A252830.P11794119519850644492

`record[A003982(n)*A252836(n+1)]`
-/

namespace A252830.P11794119519850644492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252830.P11794119519850644492

/-! ## A252830.P1910984456231185312

`record[gcd(A231713(n), A252836(n+1))]`
-/

namespace A252830.P1910984456231185312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231713 n) (A252836 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252830.P1910984456231185312

/-! ## A252830.P761243110569620260

`A252836(A001844(n))+A000035(2*n)`
-/

namespace A252830.P761243110569620260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A001844 n).toNat + A000035 (2 * n)

end

end A252830.P761243110569620260

/-! ## A252830.P15274850666391265462

`A000034(2*n)*A252836(A001844(n))`
-/

namespace A252830.P15274850666391265462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A252836 (A001844 n).toNat

end

end A252830.P15274850666391265462

/-!
# A252831: Number of n X 3 nonnegative integer arrays with upper left 0 and every value within 2 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252831, the canonical program `A252831.P6569211134516797358` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252831 has offset 1).

The definition of A252831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252831.P6569211134516797358

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=4, a(1)=13, a(2)=44, a(3)=127, a(4)=288, a(5)=529`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A252831

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P6569211134516797358.Spec : Prop :=
  ∀ n, P6569211134516797358.a n = A252831 (n + 1)

theorem P6569211134516797358.correct : P6569211134516797358.Spec := by
  intro n
  simp only [A252831, Nat.add_sub_cancel]

end A252831

/-! ## A252831.P43248257971814233

`A252836(∑[n+2]+4)`
-/

namespace A252831.P43248257971814233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252831.P43248257971814233

namespace A252831

/-- `A252836(∑[n+2]+4)` -/
def P43248257971814233.Spec : Prop :=
  ∀ n, P43248257971814233.a n = A252831 (n + 1)

end A252831

/-! ## A252831.P7161591831035627862

`A252836(A167614(n+1))%(3^(n+4))`
-/

namespace A252831.P7161591831035627862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252836 (A167614 (n + 1)).toNat) (3 ^ (n + 4) : ℤ)

end

end A252831.P7161591831035627862

namespace A252831

/-- `A252836(A167614(n+1))%(3^(n+4))` -/
def P7161591831035627862.Spec : Prop :=
  ∀ n, P7161591831035627862.a n = A252831 (n + 1)

end A252831

/-! ## A252831.P1740418513878598930

`lcm(A033999(n), A252836(A167614(n+1)))`
-/

namespace A252831.P1740418513878598930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252836 (A167614 (n + 1)).toNat)

end

end A252831.P1740418513878598930

namespace A252831

/-- `lcm(A033999(n), A252836(A167614(n+1)))` -/
def P1740418513878598930.Spec : Prop :=
  ∀ n, (P1740418513878598930.a n : ℤ) = A252831 (n + 1)

end A252831

/-! ## A252831.P6892472437642924816

`A001222(A005145(n+1))*A252836(A167614(n+1))`
-/

namespace A252831.P6892472437642924816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005145 (n + 1)).toNat * A252836 (A167614 (n + 1)).toNat

end

end A252831.P6892472437642924816

namespace A252831

/-- `A001222(A005145(n+1))*A252836(A167614(n+1))` -/
def P6892472437642924816.Spec : Prop :=
  ∀ n, P6892472437642924816.a n = A252831 (n + 1)

end A252831

/-!
# A252832: Number of n X 4 nonnegative integer arrays with upper left 0 and every value within 2 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252832, there is no canonical definition to state claims against.
-/

/-! ## A252832.P8866979613692394479

`A252836(∑[n+3]+7)`
-/

namespace A252832.P8866979613692394479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252832.P8866979613692394479

/-! ## A252832.P11977721475523666806

`A252836(A052905(n)+9)+A000035(2*n)`
-/

namespace A252832.P11977721475523666806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A052905 n + 9).toNat + A000035 (2 * n)

end

end A252832.P11977721475523666806

/-! ## A252832.P12256289137170759306

`A014963(A005101(n+1))*A252836(A052905(n)+9)`
-/

namespace A252832.P12256289137170759306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005101 (n + 1)).toNat * A252836 (A052905 n + 9).toNat

end

end A252832.P12256289137170759306

/-! ## A252832.P11041301044809669464

`A014963(A006039(n+1))*A252836(A052905(n)+9)`
-/

namespace A252832.P11041301044809669464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006039 (n + 1)).toNat * A252836 (A052905 n + 9).toNat

end

end A252832.P11041301044809669464

/-! ## A252832.P13594101477028988964

`A001065(A006530(n+2))*A252836(A052905(n)+9)`
-/

namespace A252832.P13594101477028988964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A006530 (n + 2)).toNat * A252836 (A052905 n + 9).toNat

end

end A252832.P13594101477028988964

/-!
# A252833: Number of n X 5 nonnegative integer arrays with upper left 0 and every value within 2 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252833, there is no canonical definition to state claims against.
-/

/-! ## A252833.P6356077397098968241

`A252836(A167499(n+3))`
-/

namespace A252833.P6356077397098968241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A167499 (n + 3)).toNat

end

end A252833.P6356077397098968241

/-! ## A252833.P16168162899194117276

`A252836(A000124(n+4)+4)`
-/

namespace A252833.P16168162899194117276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A000124 (n + 4) + 4).toNat

end

end A252833.P16168162899194117276

/-! ## A252833.P2086802559603875603

`A252836(A000217(n+4)+5)`
-/

namespace A252833.P2086802559603875603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A000217 (n + 4) + 5).toNat

end

end A252833.P2086802559603875603

/-! ## A252833.P5060070184499646197

`A252836(Δ[A008778(n)]+n+11)`
-/

namespace A252833.P5060070184499646197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (f1 (n + 1) - f1 n + (n + 11 : ℤ)).toNat

end

end A252833.P5060070184499646197

/-! ## A252833.P16398080571948271974

`A252836(A055999(n+3)-2*n)`
-/

namespace A252833.P16398080571948271974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A252833.P16398080571948271974

/-!
# A252834: Number of n X 6 nonnegative integer arrays with upper left 0 and every value within 2 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252834, there is no canonical definition to state claims against.
-/

/-! ## A252834.P12180947456484511443

`A252836(A000124(n+5)+5)`
-/

namespace A252834.P12180947456484511443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A000124 (n + 5) + 5).toNat

end

end A252834.P12180947456484511443

/-! ## A252834.P9910148119534589122

`A252836(A000096(n+4)+7)`
-/

namespace A252834.P9910148119534589122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A000096 (n + 4) + 7).toNat

end

end A252834.P9910148119534589122

/-! ## A252834.P4455813185919062948

`A252836(A000217(n+5)+6)`
-/

namespace A252834.P4455813185919062948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A000217 (n + 5) + 6).toNat

end

end A252834.P4455813185919062948

/-! ## A252834.P17931961020548412037

`A252836(A022856(n+9)+4)`
-/

namespace A252834.P17931961020548412037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A022856 (n + 9) + 4).toNat

end

end A252834.P17931961020548412037

/-! ## A252834.P12850865094709154176

`A252836(A167499(n+3)+n+6)`
-/

namespace A252834.P12850865094709154176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A167499 (n + 3) + (n + 6 : ℤ)).toNat

end

end A252834.P12850865094709154176

/-!
# A252835: Number of nX7 nonnegative integer arrays with upper left 0 and every value within 2 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252835, there is no canonical definition to state claims against.
-/

/-! ## A252835.P14658575516129412238

`A252836(A000124(n+6)+6)`
-/

namespace A252835.P14658575516129412238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A000124 (n + 6) + 6).toNat

end

end A252835.P14658575516129412238

/-! ## A252835.P8576303307383101842

`A252836(A000096(n+5)+8)`
-/

namespace A252835.P8576303307383101842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A000096 (n + 5) + 8).toNat

end

end A252835.P8576303307383101842

/-! ## A252835.P16448761751583964536

`A252836(A000217(n+6)+7)`
-/

namespace A252835.P16448761751583964536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A000217 (n + 6) + 7).toNat

end

end A252835.P16448761751583964536

/-! ## A252835.P14275795389386465263

`A252836(A022856(n+8)+A004275(n+9))`
-/

namespace A252835.P14275795389386465263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A022856 (n + 8) + A004275 (n + 9)).toNat

end

end A252835.P14275795389386465263

/-! ## A252835.P12682070069064334163

`A252836(A374008(n+1))`
-/

namespace A252835.P12682070069064334163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (A374008 (n + 1)).toNat

end

end A252835.P12682070069064334163

/-!
# A252836: T(n,k)=Number of nXk nonnegative integer arrays with upper left 0 and every value within 2 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252836, there is no canonical definition to state claims against.
-/

/-! ## A252836.P15324651737342948075

`A057944(n)+A003173(A132731(n))`
-/

namespace A252836.P15324651737342948075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A003173 (A132731 n).toNat

end

end A252836.P15324651737342948075

/-! ## A252836.P2992933951863009934

`A296834(n+1)-A351202(A032020(n))`
-/

namespace A252836.P2992933951863009934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (n + 1) - A351202 (A032020 n).toNat

end

end A252836.P2992933951863009934

/-! ## A252836.P17484773422160024981

`A296834(n+1)-A000034(A154382(n+1))`
-/

namespace A252836.P17484773422160024981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (n + 1) - A000034 (A154382 (n + 1)).toNat

end

end A252836.P17484773422160024981

/-!
# A252841: Number of (n+2) X (1+2) 0..3 arrays with every consecutive three elements in every row and diagonal having one or two distinct values, and in every column and antidiagonal having two or three distinct values, and new values 0 upwards introduced in row major order.

The programs for A252841, there is no canonical definition to state claims against.
-/

/-! ## A252841.P15325035267798837529

`A252844(∑[n+1])`
-/

namespace A252841.P15325035267798837529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252841.P15325035267798837529

/-! ## A252841.P4226023753207723330

`record[A252844(C(val(n+1, 2)+2, 2))]`
-/

namespace A252841.P4226023753207723330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (Nat.choose (SequenceMachineLib.valuation (n + 1) 2 + 2) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252841.P4226023753207723330

/-! ## A252841.P17510969923113047067

`record[A252844(A133825(n))]`
-/

namespace A252841.P17510969923113047067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252841.P17510969923113047067

/-! ## A252841.P10679379665875696559

`record[A252844(abs(A145063(n)))]`
-/

namespace A252841.P10679379665875696559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 |A145063 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252841.P10679379665875696559

/-!
# A252842: Number of (n+2)X(2+2) 0..3 arrays with every consecutive three elements in every row and diagonal having one or two distinct values, and in every column and antidiagonal having two or three distinct values, and new values 0 upwards introduced in row major order.

The programs for A252842, there is no canonical definition to state claims against.
-/

/-! ## A252842.P12877324730960258437

`A252844(∑[n+2])`
-/

namespace A252842.P12877324730960258437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252842.P12877324730960258437

/-! ## A252842.P12044926809416473825

`A252844(A000096(n+1))+A080224(n+1)`
-/

namespace A252842.P12044926809416473825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (A000096 (n + 1)).toNat + A080224 (n + 1)

end

end A252842.P12044926809416473825

/-! ## A252842.P9447419651028677407

`A252844(A000096(n+1))+A217153(n+1)`
-/

namespace A252842.P9447419651028677407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (A000096 (n + 1)).toNat + A217153 (n + 1)

end

end A252842.P9447419651028677407

/-!
# A252843: Number of (n+2)X(3+2) 0..3 arrays with every consecutive three elements in every row and diagonal having one or two distinct values, and in every column and antidiagonal having two or three distinct values, and new values 0 upwards introduced in row major order.

The programs for A252843, there is no canonical definition to state claims against.
-/

/-! ## A252843.P6450792499669410522

`A252844(∑[n+3]+1)`
-/

namespace A252843.P6450792499669410522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252843.P6450792499669410522

/-!
# A252845: Number of (1+2)X(n+2) 0..3 arrays with every consecutive three elements in every row and diagonal having one or two distinct values, and in every column and antidiagonal having two or three distinct values, and new values 0 upwards introduced in row major order.

The programs for A252845, there is no canonical definition to state claims against.
-/

/-! ## A252845.P9342927872417476062

`A252844(∑[n]+1)`
-/

namespace A252845.P9342927872417476062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252845.P9342927872417476062

/-! ## A252845.P10987179859818142391

`∑{digits}[n, A252844(A000124(#))]`
-/

namespace A252845.P10987179859818142391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A252844 (A000124 x).toNat).sum

end

end A252845.P10987179859818142391

/-! ## A252845.P10833900891139585181

`record[A252844(A112367(n)+1)]`
-/

namespace A252845.P10833900891139585181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (A112367 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252845.P10833900891139585181

/-! ## A252845.P2261920176937072309

`A252844(A000124(n))+char[11]`
-/

namespace A252845.P2261920176937072309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252845.P2261920176937072309

/-! ## A252845.P1901192501140574056

`record[A010054(n)*A252844(n+1)]`
-/

namespace A252845.P1901192501140574056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252845.P1901192501140574056

/-!
# A252846: Number of (2+2)X(n+2) 0..3 arrays with every consecutive three elements in every row and diagonal having one or two distinct values, and in every column and antidiagonal having two or three distinct values, and new values 0 upwards introduced in row major order.

The programs for A252846, there is no canonical definition to state claims against.
-/

/-! ## A252846.P13355761031555507958

`A252844(∑[n+1]+2)`
-/

namespace A252846.P13355761031555507958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252846.P13355761031555507958

/-! ## A252846.P14469115746656068158

`record[A252844(A133825(n)+2)]`
-/

namespace A252846.P14469115746656068158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (A133825 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252846.P14469115746656068158

/-! ## A252846.P10356722209877057595

`A252844(A238531(n+2))+A185225(n)`
-/

namespace A252846.P10356722209877057595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (A238531 (n + 2)).toNat + A185225 n

end

end A252846.P10356722209877057595

/-! ## A252846.P11617419122296851259

`A252844(A238531(n+2))+A194186(n+1)`
-/

namespace A252846.P11617419122296851259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (A238531 (n + 2)).toNat + A194186 (n + 1)

end

end A252846.P11617419122296851259

/-!
# A252847: Number of (3+2)X(n+2) 0..3 arrays with every consecutive three elements in every row and diagonal having one or two distinct values, and in every column and antidiagonal having two or three distinct values, and new values 0 upwards introduced in row major order.

The programs for A252847, there is no canonical definition to state claims against.
-/

/-! ## A252847.P10225124395747805497

`A252844(∑[n+2]+4)`
-/

namespace A252847.P10225124395747805497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252847.P10225124395747805497

/-! ## A252847.P9207074815339972894

`A252844(A167614(n+1))+A056965(n)`
-/

namespace A252847.P9207074815339972894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (A167614 (n + 1)).toNat + A056965 n

end

end A252847.P9207074815339972894

/-! ## A252847.P8944796878260042617

`A252844(A167614(n+1))+A185035(n)`
-/

namespace A252847.P8944796878260042617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252844 (A167614 (n + 1)).toNat + A185035 n

end

end A252847.P8944796878260042617

/-!
# A252849: Numbers with an even number of square divisors.

The programs for A252849, there is no canonical definition to state claims against.
-/

/-! ## A252849.P1031188809817994856

`∪[A336593(n+1), A336594(n+1)]`
-/

namespace A252849.P1031188809817994856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A252849.P1031188809817994856

/-! ## A252849.P4024239878263054387

`lt[1, A335324(n+1)]+1`
-/

namespace A252849.P4024239878263054387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A252849.P4024239878263054387

/-! ## A252849.P12141279757655948754

`eq[0, A219009(n+3)]+3`
-/

namespace A252849.P12141279757655948754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A252849.P12141279757655948754

/-! ## A252849.P5510904817291133953

`eq[2, and(2, A320908(n)-1)]`
-/

namespace A252849.P5510904817291133953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A320908 n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A252849.P5510904817291133953

/-! ## A252849.P7137776890673141971

`lt[A007425(n+1)%2, 1]+1`
-/

namespace A252849.P7137776890673141971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007425 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A252849.P7137776890673141971

/-! ## A252849.P11493483493772630191

`eq[2, gcd(2, A046951(n+2))]+2`
-/

namespace A252849.P11493483493772630191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A046951 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A252849.P11493483493772630191

/-! ## A252849.P11676447595912120851

`lt[1, A007913(A000188(n+1))]+1`
-/

namespace A252849.P11676447595912120851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000188 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A252849.P11676447595912120851

/-! ## A252849.P3337678292159509694

`eq[2, A107286(∑{d}[n, A000005(#)]+2)]`
-/

namespace A252849.P3337678292159509694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (∑ d ∈ Nat.divisors (f3 n), A000005 d + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A252849.P3337678292159509694

/-! ## A252849.P9117178566896348447

`eq[1, A006519(A007425(n+1)+1)]+1`
-/

namespace A252849.P9117178566896348447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A007425 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A252849.P9117178566896348447

/-! ## A252849.P4812832119855282468

`eq[1, A062356(A046951(n+1)+1)]+1`
-/

namespace A252849.P4812832119855282468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062356 (A046951 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A252849.P4812832119855282468

/-! ## A252849.P10934955687205676275

`eq[1, A316665(A046951(n+1)+1)]+1`
-/

namespace A252849.P10934955687205676275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (A046951 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A252849.P10934955687205676275

/-! ## A252849.P10895593186775239888

`lt[A007814(A007425(n+1)+1), 1]+1`
-/

namespace A252849.P10895593186775239888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A007425 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A252849.P10895593186775239888

/-! ## A252849.P3484386818038724550

`lt[2, A020639(A007425(n+1)+1)]+1`
-/

namespace A252849.P3484386818038724550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007425 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A252849.P3484386818038724550

/-!
# A252853: Number of (n+2)X(n+2) 0..2 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252853, there is no canonical definition to state claims against.
-/

/-! ## A252853.P17337079918786685060

`A252861(∑[4*n]+1)`
-/

namespace A252853.P17337079918786685060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252853.P17337079918786685060

/-! ## A252853.P1377371138733537811

`lcm(3, A252861(A001844(n)))`
-/

namespace A252853.P1377371138733537811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A252861 (A001844 n).toNat)

end

end A252853.P1377371138733537811

/-! ## A252853.P12536035503319510128

`record[A003982(n)*A252861(n+1)]`
-/

namespace A252853.P12536035503319510128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252853.P12536035503319510128

/-! ## A252853.P14582760481994420109

`record[A214505(n)*A252861(n+1)]`
-/

namespace A252853.P14582760481994420109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A252861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252853.P14582760481994420109

/-! ## A252853.P8927939475906855749

`A252861(A001844(n))+A025466(n)`
-/

namespace A252853.P8927939475906855749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A001844 n).toNat + A025466 n

end

end A252853.P8927939475906855749

/-!
# A252854: Number of (n+2) X (1+2) 0..2 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252854, there is no canonical definition to state claims against.
-/

/-! ## A252854.P16017020533761645092

`A252861(∑[n]+1)`
-/

namespace A252854.P16017020533761645092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252854.P16017020533761645092

/-! ## A252854.P16049784982683706072

`record[A252861(n+1)]`
-/

namespace A252854.P16049784982683706072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252854.P16049784982683706072

/-! ## A252854.P13363639291882251362

`lcm(3, A252861(A000124(n)))`
-/

namespace A252854.P13363639291882251362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A252861 (A000124 n).toNat)

end

end A252854.P13363639291882251362

/-! ## A252854.P9837073912028184380

`A252861(A000124(n))+A025466(n)`
-/

namespace A252854.P9837073912028184380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A000124 n).toNat + A025466 n

end

end A252854.P9837073912028184380

/-! ## A252854.P7238733412456964300

`A252861(A000124(n))+A185246(n)`
-/

namespace A252854.P7238733412456964300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A000124 n).toNat + A185246 n

end

end A252854.P7238733412456964300

/-!
# A252855: Number of (n+2) X (2+2) 0..2 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252855, there is no canonical definition to state claims against.
-/

/-! ## A252855.P17899528441147576743

`A252861(∑[n+1]+2)`
-/

namespace A252855.P17899528441147576743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252855.P17899528441147576743

/-! ## A252855.P10482221202498512509

`record[A252861(A008795(n)+2)]`
-/

namespace A252855.P10482221202498512509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252855.P10482221202498512509

/-! ## A252855.P12644387775358490555

`lcm(3, A252861(A133263(n+1)))`
-/

namespace A252855.P12644387775358490555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A252861 (A133263 (n + 1)).toNat)

end

end A252855.P12644387775358490555

/-! ## A252855.P3344698003560976840

`record[A252861(n+2)/A193842(n)]`
-/

namespace A252855.P3344698003560976840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252861 (n + 2) : ℚ) / (A193842 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252855.P3344698003560976840

/-! ## A252855.P10441035139718991266

`record[root(A252861(n+2), A059268(n))]`
-/

namespace A252855.P10441035139718991266
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252861 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252855.P10441035139718991266

/-!
# A252856: Number of (n+2) X (3+2) 0..2 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252856, there is no canonical definition to state claims against.
-/

/-! ## A252856.P8251435276424864812

`A252861(∑[n+2]+4)`
-/

namespace A252856.P8251435276424864812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252856.P8251435276424864812

/-! ## A252856.P11695417587214082315

`record[A252861(A008795(n)+3)]`
-/

namespace A252856.P11695417587214082315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252856.P11695417587214082315

/-! ## A252856.P1214902738083571827

`lcm(3, A252861(A167614(n+1)))`
-/

namespace A252856.P1214902738083571827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A252861 (A167614 (n + 1)).toNat)

end

end A252856.P1214902738083571827

/-! ## A252856.P17163609050805428520

`lcm(9, A252861(A167499(n)+n))`
-/

namespace A252856.P17163609050805428520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (A252861 (A167499 n + (n : ℤ)).toNat)

end

end A252856.P17163609050805428520

/-! ## A252856.P13190847467191987222

`A252861(A167614(n+1))+A034526(n+1)`
-/

namespace A252856.P13190847467191987222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A167614 (n + 1)).toNat + A034526 (n + 1)

end

end A252856.P13190847467191987222

/-!
# A252857: Number of (n+2) X (4+2) 0..2 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252857, there is no canonical definition to state claims against.
-/

/-! ## A252857.P4210012594264793800

`A252861(∑[n+3]+7)`
-/

namespace A252857.P4210012594264793800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252857.P4210012594264793800

/-! ## A252857.P14507134905677723922

`lcm(3, A252861(Δ[A008778(n)]+6))`
-/

namespace A252857.P14507134905677723922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A252861 (f1 (n + 1) - f1 n + 6).toNat)

end

end A252857.P14507134905677723922

/-! ## A252857.P5670084641462948132

`A057427(n+2)*A252861(A052905(n)+9)`
-/

namespace A252857.P5670084641462948132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A252861 (A052905 n + 9).toNat

end

end A252857.P5670084641462948132

/-! ## A252857.P15270845657304127350

`A252861(A052905(n)+9)+(A196222(n)-1)%3`
-/

namespace A252857.P15270845657304127350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A052905 n + 9).toNat + Int.tmod (A196222 n - 1) 3

end

end A252857.P15270845657304127350

/-!
# A252858: Number of (n+2)X(5+2) 0..2 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252858, there is no canonical definition to state claims against.
-/

/-! ## A252858.P14673605416584341767

`A252861(∑[n+4]+11)`
-/

namespace A252858.P14673605416584341767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A252858.P14673605416584341767

/-! ## A252858.P8339465068094924990

`lcm(3, A252861(A056000(n)+15))`
-/

namespace A252858.P8339465068094924990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A252861 (A056000 n + 15).toNat)

end

end A252858.P8339465068094924990

/-! ## A252858.P17874614561144964340

`A007318(C(2, n))*A252861(A056000(n)+15)`
-/

namespace A252858.P17874614561144964340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252861 (A056000 n + 15).toNat

end

end A252858.P17874614561144964340

/-! ## A252858.P13148203841912441512

`A252861(A056000(n)+15)+A008683(12*(n+1))`
-/

namespace A252858.P13148203841912441512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A056000 n + 15).toNat + A008683 (12 * (n + 1))

end

end A252858.P13148203841912441512

/-! ## A252858.P13430537980212371573

`A252861(A056000(n)+15)+(2*A000045(n))%2`
-/

namespace A252858.P13430537980212371573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A056000 n + 15).toNat + Int.tmod (2 * A000045 n) 2

end

end A252858.P13430537980212371573

/-!
# A252859: Number of (n+2)X(6+2) 0..2 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252859, there is no canonical definition to state claims against.
-/

/-! ## A252859.P9847816199813497370

`A252861(A374007(n+1))`
-/

namespace A252859.P9847816199813497370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A374007 (n + 1)).toNat

end

end A252859.P9847816199813497370

/-! ## A252859.P16739666812113769284

`A252861(A056115(n)+21)`
-/

namespace A252859.P16739666812113769284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A056115 n + 21).toNat

end

end A252859.P16739666812113769284

/-! ## A252859.P7924684476050645337

`A252861(A167499(n+4)+1)`
-/

namespace A252859.P7924684476050645337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A167499 (n + 4) + 1).toNat

end

end A252859.P7924684476050645337

/-! ## A252859.P15900133167442714546

`A252861(A133263(n+5)+4)`
-/

namespace A252859.P15900133167442714546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A133263 (n + 5) + 4).toNat

end

end A252859.P15900133167442714546

/-! ## A252859.P9524012169226972970

`A252861(A000124(n+5)+5)`
-/

namespace A252859.P9524012169226972970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A000124 (n + 5) + 5).toNat

end

end A252859.P9524012169226972970

/-!
# A252860: Number of (n+2)X(7+2) 0..2 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252860, there is no canonical definition to state claims against.
-/

/-! ## A252860.P2538215595781839821

`A252861(A374008(n+1))`
-/

namespace A252860.P2538215595781839821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A374008 (n + 1)).toNat

end

end A252860.P2538215595781839821

/-! ## A252860.P16039812711299803003

`A252861(A056119(n)+28)`
-/

namespace A252860.P16039812711299803003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A056119 n + 28).toNat

end

end A252860.P16039812711299803003

/-! ## A252860.P17774347836013737044

`A252861(eq[11, A066657(n)])`
-/

namespace A252860.P17774347836013737044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252860.P17774347836013737044

/-! ## A252860.P12281693499592046099

`A252861(A166136(n+5)+1)`
-/

namespace A252860.P12281693499592046099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A166136 (n + 5) + 1).toNat

end

end A252860.P12281693499592046099

/-! ## A252860.P10848603103029829975

`A252861(A167499(n+5)+2)`
-/

namespace A252860.P10848603103029829975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252861 (A167499 (n + 5) + 2).toNat

end

end A252860.P10848603103029829975

/-!
# A252862: Initial members of prime sextuples (n, n+2, n+6, n+8, n+18, n+20).

The programs for A252862, there is no canonical definition to state claims against.
-/

/-! ## A252862.P178912682613199335

`∩[A007530(n+1), A079304(n+1)]`
-/

namespace A252862.P178912682613199335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252862.P178912682613199335

/-! ## A252862.P15785981231152411350

`∩[A079304(n+1), A125855(n+1)+1]`
-/

namespace A252862.P15785981231152411350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125855 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252862.P15785981231152411350

/-! ## A252862.P11642403032867776502

`∩[A079304(n+1), A136720(n+1)-2]`
-/

namespace A252862.P11642403032867776502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136720 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252862.P11642403032867776502

/-! ## A252862.P13596777626542413747

`∩[A079304(n+1), A173037(n+1)-4]`
-/

namespace A252862.P13596777626542413747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252862.P13596777626542413747

/-! ## A252862.P11084310034216042128

`∩[A136721(n+1)-6, A079304(n+1)]`
-/

namespace A252862.P11084310034216042128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136721 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252862.P11084310034216042128

/-! ## A252862.P3016223093014019926

`∩[A064974(n+1)-9, A079304(n+1)]`
-/

namespace A252862.P3016223093014019926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064974 (n + 1) - 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252862.P3016223093014019926

/-! ## A252862.P13348892420793833223

`∩[3*A173092(n+1)-4, A079304(n+1)]`
-/

namespace A252862.P13348892420793833223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A173092 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252862.P13348892420793833223

/-! ## A252862.P1942970742703775045

`∩[A007530(n+1), A079292(n+1)-6]`
-/

namespace A252862.P1942970742703775045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079292 (n + 1) - 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252862.P1942970742703775045

/-! ## A252862.P4683835027862495371

`∩[A136162(4*n+1), A079304(n+1)]`
-/

namespace A252862.P4683835027862495371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252862.P4683835027862495371

/-! ## A252862.P9809842290804526253

`∩[A007530(n+1), A140567(4*n+1)]`
-/

namespace A252862.P9809842290804526253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140567 (4 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252862.P9809842290804526253

/-!
# A252863: Number of Eulerian paths in a lattice graph bounded by the four equations x+y=1, x+y=2n, x-y=2, and x-y=-2.

The programs for A252863, there is no canonical definition to state claims against.
-/

/-! ## A252863.P13604585832875758712

`ogf((1-4x)/(1-20x+16x^2))`
-/

namespace A252863.P13604585832875758712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -20, 16] n

end

end A252863.P13604585832875758712

/-! ## A252863.P9606358876111775124

`20*a(n-1)-16*a(n-2)` with `a(0)=1, a(1)=16`
-/

namespace A252863.P9606358876111775124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 16] fun n a =>
  20 * a (n - 1) - 16 * a (n - 2)

end

end A252863.P9606358876111775124

/-! ## A252863.P7483996695673601700

`4^n*A004253(n+1)`
-/

namespace A252863.P7483996695673601700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A004253 (n + 1)

end

end A252863.P7483996695673601700

/-! ## A252863.P17961029777486896977

`Δ[A004254(n)]*A000302(n)`
-/

namespace A252863.P17961029777486896977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000302 n

end

end A252863.P17961029777486896977

/-! ## A252863.P16384905565044215734

`A000079(n)²*Δ[A004254(n)]`
-/

namespace A252863.P16384905565044215734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A252863.P16384905565044215734

/-! ## A252863.P9314373506049744559

`Δ[A004254(n)]*A000079(2*n)`
-/

namespace A252863.P9314373506049744559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 (2 * n)

end

end A252863.P9314373506049744559

/-! ## A252863.P330721986026088652

`A004253(n+1)*A051437(2*n)`
-/

namespace A252863.P330721986026088652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1) * A051437 (2 * n)

end

end A252863.P330721986026088652

/-! ## A252863.P1388899802880799384

`A004253(n+1)*A131577(n+1)²`
-/

namespace A252863.P1388899802880799384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1) * A131577 (n + 1) ^ 2

end

end A252863.P1388899802880799384

/-! ## A252863.P16658559705839497012

`A004253(n+1)*A131577(2*n+1)`
-/

namespace A252863.P16658559705839497012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1) * A131577 (2 * n + 1)

end

end A252863.P16658559705839497012

/-! ## A252863.P5853304741988193344

`(A004254(n+1)-A004254(n))*A000302(n)`
-/

namespace A252863.P5853304741988193344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004254 (n + 1) - A004254 n) * A000302 n

end

end A252863.P5853304741988193344

/-!
# A252864: Number of pairs in generation n of the tree T defined in Comments.

The programs for A252864, there is no canonical definition to state claims against.
-/

/-! ## A252864.P15447504531541963498

`A065680(n+1)+A003059(A105476(n))`
-/

namespace A252864.P15447504531541963498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065680 (n + 1) + A003059 (A105476 n).toNat

end

end A252864.P15447504531541963498

/-! ## A252864.P2790922037221271917

`xor(∑[A326152(n)], A328085(n+1))`
-/

namespace A252864.P2790922037221271917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A328085 (n + 1))

end

end A252864.P2790922037221271917

/-! ## A252864.P12216565192388761472

`A318028(n)+A173667(A113370(n))`
-/

namespace A252864.P12216565192388761472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318028 n + A173667 (A113370 n).toNat

end

end A252864.P12216565192388761472

/-! ## A252864.P11451381150234475651

`A373296(n)+A100821(A006578(n+1))`
-/

namespace A252864.P11451381150234475651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373296 n + A100821 (A006578 (n + 1)).toNat

end

end A252864.P11451381150234475651

/-! ## A252864.P13190477581347123452

`A373296(n)+A373264(A373276(n+1))`
-/

namespace A252864.P13190477581347123452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373296 n + A373264 (A373276 (n + 1)).toNat

end

end A252864.P13190477581347123452

/-!
# A252867: a(n) = n if n <= 2, otherwise the smallest number not occurring earlier having in its binary representation at least one bit in common with a(n-2), but none with a(n-1).

The programs for A252867, there is no canonical definition to state claims against.
-/

/-! ## A252867.P18001703249410640698

`∑{p}[A252868(n+1), A048675(#)]`
-/

namespace A252867.P18001703249410640698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A252867.P18001703249410640698

/-! ## A252867.P5462656836446658582

`∑{p}[A252868(n+1), A011782(A049084(#))]`
-/

namespace A252867.P5462656836446658582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A011782 (A049084 p).toNat

end

end A252867.P5462656836446658582

/-! ## A252867.P1860300191065684872

`∑{p}[A252868(n+1), A011782(A061395(#))]`
-/

namespace A252867.P1860300191065684872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A011782 (A061395 p).toNat

end

end A252867.P1860300191065684872

/-! ## A252867.P15217414109607615728

`∑{p}[A252868(n+1), A320487(A048865(#))]`
-/

namespace A252867.P15217414109607615728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A320487 (A048865 p).toNat

end

end A252867.P15217414109607615728

/-! ## A252867.P3312945615582112365

`∑{d}[A252868(n+1), A048675(A014963(#))]`
-/

namespace A252867.P3312945615582112365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A048675 (A014963 d).toNat

end

end A252867.P3312945615582112365

/-! ## A252867.P18096585826657376491

`A048675(A252868(n+1))`
-/

namespace A252867.P18096585826657376491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A252868 (n + 1)).toNat

end

end A252867.P18096585826657376491

/-!
# A252868: Squarefree version of A252867.

The programs for A252868, there is no canonical definition to state claims against.
-/

/-! ## A252868.P15899230777304709430

`A019565(A252867(n))`
-/

namespace A252868.P15899230777304709430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A252867 n).toNat

end

end A252868.P15899230777304709430

/-! ## A252868.P16965059965252372434

`A339809(A252867(n))+abs(A033999(n+1))`
-/

namespace A252868.P16965059965252372434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A252867 n).toNat + |A033999 (n + 1)|

end

end A252868.P16965059965252372434

/-! ## A252868.P10170288114468652580

`A339809(A252867(n))+A001221(A065312(n+1))`
-/

namespace A252868.P10170288114468652580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A252867 n).toNat + A001221 (A065312 (n + 1)).toNat

end

end A252868.P10170288114468652580

/-! ## A252868.P1071358497084838428

`A339809(A252867(n))+char[A001281(n)]`
-/

namespace A252868.P1071358497084838428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A252867 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A252868.P1071358497084838428

/-! ## A252868.P6271372770910919430

`A339809(A252867(n))+char[A003602(n+1)-2]`
-/

namespace A252868.P6271372770910919430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A252867 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A252868.P6271372770910919430

/-! ## A252868.P3335244057606705136

`A339809(A252867(n))-A110514(A016813(n))`
-/

namespace A252868.P3335244057606705136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A252867 n).toNat - A110514 (A016813 n).toNat

end

end A252868.P3335244057606705136

/-! ## A252868.P4279091958537912627

`A339809(A252867(n))+A001221(A259730(n+1))`
-/

namespace A252868.P4279091958537912627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A252867 n).toNat + A001221 (A259730 (n + 1)).toNat

end

end A252868.P4279091958537912627

/-!
# A252869: Number of n X n nonnegative integer arrays with upper left 0 and lower right 2n-4 and value increasing by 0 or 1 with every step right or down.

The programs for A252869, there is no canonical definition to state claims against.
-/

/-! ## A252869.P4159911931952221337

`A252876(∑[4*n]+1)`
-/

namespace A252869.P4159911931952221337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252869.P4159911931952221337

/-! ## A252869.P2524270195352255371

`or(char[1], A252876(A001844(n)))`
-/

namespace A252869.P2524270195352255371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252876 (A001844 n).toNat)

end

end A252869.P2524270195352255371

/-! ## A252869.P9069234838622491847

`A252813(n+1)-A030662(n+1)`
-/

namespace A252869.P9069234838622491847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252813 (n + 1) - A030662 (n + 1)

end

end A252869.P9069234838622491847

/-! ## A252869.P12605316014973075569

`A252813(n+1)-(A115112(n+1)+1)`
-/

namespace A252869.P12605316014973075569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252813 (n + 1) - (A115112 (n + 1) + 1)

end

end A252869.P12605316014973075569

/-! ## A252869.P18368210810405784153

`A252876(A001844(n))+A000007(n+1)`
-/

namespace A252869.P18368210810405784153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A001844 n).toNat + A000007 (n + 1)

end

end A252869.P18368210810405784153

/-!
# A252870: Number of n X 2 nonnegative integer arrays with upper left 0 and lower right n+2-4 and value increasing by 0 or 1 with every step right or down.

The programs for A252870, the canonical program `A252870.P7753488232557334425` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252870 has offset 1).

The definition of A252870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252870.P7753488232557334425

`∑[∑[∑[n]]+n²]-n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A252870

/-- `∑[∑[∑[n]]+n²]-n` -/
def P7753488232557334425.Spec : Prop :=
  ∀ n, P7753488232557334425.a n = A252870 (n + 1)

theorem P7753488232557334425.correct : P7753488232557334425.Spec := by
  intro n
  simp only [A252870, Nat.add_sub_cancel]

end A252870

/-! ## A252870.P10851541176660945704

`abs(C(n, 4)+n^3-C(n, 3))`
-/

namespace A252870.P10851541176660945704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n 4 : ℤ) + ((n ^ 3 : ℤ) - (Nat.choose n 3 : ℤ))|

end

end A252870.P10851541176660945704

namespace A252870

/-- `abs(C(n, 4)+n^3-C(n, 3))` -/
def P10851541176660945704.Spec : Prop :=
  ∀ n, P10851541176660945704.a n = A252870 (n + 1)

end A252870

/-! ## A252870.P7459886710235238318

`∑[∑[∑[a(n-1)+1]]]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=5`
-/

namespace A252870.P7459886710235238318
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 5] fun n f3 =>
  f3 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252870.P7459886710235238318

namespace A252870

/-- `∑[∑[∑[a(n-1)+1]]]` -/
def P7459886710235238318.Spec : Prop :=
  ∀ n, (P7459886710235238318.a n : ℤ) = A252870 (n + 1)

end A252870

/-! ## A252870.P17132248143649936127

`∑[∑[∑[n+2]-3]+C(2, n+2)]`
-/

namespace A252870.P17132248143649936127
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252870.P17132248143649936127

namespace A252870

/-- `∑[∑[∑[n+2]-3]+C(2, n+2)]` -/
def P17132248143649936127.Spec : Prop :=
  ∀ n, P17132248143649936127.a n = A252870 (n + 1)

end A252870

/-! ## A252870.P1267120198032857018

`∑[∑[∑[4*n]]%(n*(∑[n]+1)+1)]`
-/

namespace A252870.P1267120198032857018
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n * (∑ j ∈ Finset.range (n + 1), f4 j + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252870.P1267120198032857018

namespace A252870

/-- `∑[∑[∑[4*n]]%(n*(∑[n]+1)+1)]` -/
def P1267120198032857018.Spec : Prop :=
  ∀ n, (P1267120198032857018.a n : ℤ) = A252870 (n + 1)

end A252870

/-! ## A252870.P3837720199190469517

`∑[a(n-1)+A046691(n)]` with `a(0)=0, a(1)=1`
-/

namespace A252870.P3837720199190469517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + A046691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252870.P3837720199190469517

namespace A252870

/-- `∑[a(n-1)+A046691(n)]` -/
def P3837720199190469517.Spec : Prop :=
  ∀ n, P3837720199190469517.a n = A252870 (n + 1)

end A252870

/-! ## A252870.P5919207426825097638

`∑[∑[∑[n+2]-1]-A103517(n)]`
-/

namespace A252870.P5919207426825097638
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252870.P5919207426825097638

namespace A252870

/-- `∑[∑[∑[n+2]-1]-A103517(n)]` -/
def P5919207426825097638.Spec : Prop :=
  ∀ n, P5919207426825097638.a n = A252870 (n + 1)

end A252870

/-! ## A252870.P7291200860185535512

`∑[A000007(n)+∑[∑[n+2]-3]]`
-/

namespace A252870.P7291200860185535512
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252870.P7291200860185535512

namespace A252870

/-- `∑[A000007(n)+∑[∑[n+2]-3]]` -/
def P7291200860185535512.Spec : Prop :=
  ∀ n, P7291200860185535512.a n = A252870 (n + 1)

end A252870

/-! ## A252870.P7125050591848268934

`∑[A000292(n)+floor(n^3*acot(n))]`
-/

namespace A252870.P7125050591848268934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + ⌊(n ^ 3 : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252870.P7125050591848268934

namespace A252870

/-- `∑[A000292(n)+floor(n^3*acot(n))]` -/
def P7125050591848268934.Spec : Prop :=
  ∀ n, P7125050591848268934.a n = A252870 (n + 1)

end A252870

/-! ## A252870.P9598819353583233461

`abs((n+1)²-(A014309(n+1)+2))`
-/

namespace A252870.P9598819353583233461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 2 : ℤ) - (A014309 (n + 1) + 2)|

end

end A252870.P9598819353583233461

namespace A252870

/-- `abs((n+1)²-(A014309(n+1)+2))` -/
def P9598819353583233461.Spec : Prop :=
  ∀ n, P9598819353583233461.a n = A252870 (n + 1)

end A252870

/-! ## A252870.P3086322263935708637

`abs(A000096(n)-∑[A006503(n)])`
-/

namespace A252870.P3086322263935708637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000096 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A252870.P3086322263935708637

namespace A252870

/-- `abs(A000096(n)-∑[A006503(n)])` -/
def P3086322263935708637.Spec : Prop :=
  ∀ n, P3086322263935708637.a n = A252870 (n + 1)

end A252870

/-! ## A252870.P13926204199936291530

`∑[∑[A046691(n)]*A057427(n)]`
-/

namespace A252870.P13926204199936291530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252870.P13926204199936291530

namespace A252870

/-- `∑[∑[A046691(n)]*A057427(n)]` -/
def P13926204199936291530.Spec : Prop :=
  ∀ n, P13926204199936291530.a n = A252870 (n + 1)

end A252870

/-! ## A252870.P8911625710218590800

`abs(A022815(n+1)-A005286(n))`
-/

namespace A252870.P8911625710218590800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022815 (n + 1) - A005286 n|

end

end A252870.P8911625710218590800

namespace A252870

/-- `abs(A022815(n+1)-A005286(n))` -/
def P8911625710218590800.Spec : Prop :=
  ∀ n, P8911625710218590800.a n = A252870 (n + 1)

end A252870

/-! ## A252870.P14513245709589037848

`abs(A005712(n+2)-A028387(n))`
-/

namespace A252870.P14513245709589037848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005712 (n + 2) - A028387 n|

end

end A252870.P14513245709589037848

namespace A252870

/-- `abs(A005712(n+2)-A028387(n))` -/
def P14513245709589037848.Spec : Prop :=
  ∀ n, P14513245709589037848.a n = A252870 (n + 1)

end A252870

/-! ## A252870.P737713392800520244

`∑[A027378(n)-A065475(n+1)]`
-/

namespace A252870.P737713392800520244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027378 n - A065475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252870.P737713392800520244

namespace A252870

/-- `∑[A027378(n)-A065475(n+1)]` -/
def P737713392800520244.Spec : Prop :=
  ∀ n, P737713392800520244.a n = A252870 (n + 1)

end A252870

/-! ## A252870.P18252119175063926751

`∑[A006503(n)-A087156(n+1)]`
-/

namespace A252870.P18252119175063926751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n - A087156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252870.P18252119175063926751

namespace A252870

/-- `∑[A006503(n)-A087156(n+1)]` -/
def P18252119175063926751.Spec : Prop :=
  ∀ n, P18252119175063926751.a n = A252870 (n + 1)

end A252870

/-! ## A252870.P15565869060831925271

`∑[A000040(n+1)%2*∑[A046691(n)]]`
-/

namespace A252870.P15565869060831925271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252870.P15565869060831925271

namespace A252870

/-- `∑[A000040(n+1)%2*∑[A046691(n)]]` -/
def P15565869060831925271.Spec : Prop :=
  ∀ n, P15565869060831925271.a n = A252870 (n + 1)

end A252870

/-! ## A252870.P4116329402576350615

`∑[record[A190718(n)-(n+1)]]`
-/

namespace A252870.P4116329402576350615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190718 n - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252870.P4116329402576350615

namespace A252870

/-- `∑[record[A190718(n)-(n+1)]]` -/
def P4116329402576350615.Spec : Prop :=
  ∀ n, P4116329402576350615.a n = A252870 (n + 1)

end A252870

/-!
# A252871: Number of nX3 nonnegative integer arrays with upper left 0 and lower right n+3-4 and value increasing by 0 or 1 with every step right or down.

The programs for A252871, the canonical program `A252871.P6032531055172696839` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252871 has offset 1).

The definition of A252871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252871.P6032531055172696839

`A252815(n+1)-∑[C(n+3, 2)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A252871

/-- `A252815(n+1)-∑[C(n+3, 2)]` -/
def P6032531055172696839.Spec : Prop :=
  ∀ n, P6032531055172696839.a n = A252871 (n + 1)

theorem P6032531055172696839.correct : P6032531055172696839.Spec := by
  intro n
  simp only [A252871, Nat.add_sub_cancel]

end A252871

/-! ## A252871.P9294346751298322609

`A252815(n+1)-A062748(n)`
-/

namespace A252871.P9294346751298322609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) - A062748 n

end

end A252871.P9294346751298322609

namespace A252871

/-- `A252815(n+1)-A062748(n)` -/
def P9294346751298322609.Spec : Prop :=
  ∀ n, P9294346751298322609.a n = A252871 (n + 1)

end A252871

/-! ## A252871.P4049148791526543702

`A252815(n+1)-∑[A000217(n+2)]`
-/

namespace A252871.P4049148791526543702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252871.P4049148791526543702

namespace A252871

/-- `A252815(n+1)-∑[A000217(n+2)]` -/
def P4049148791526543702.Spec : Prop :=
  ∀ n, P4049148791526543702.a n = A252871 (n + 1)

theorem P4049148791526543702.correct : P4049148791526543702.Spec := by
  intro n
  simp only [A252871, Nat.add_sub_cancel, A252871.P4049148791526543702.f1, A252871.P4049148791526543702.a, A252871.P6032531055172696839.f1, A252871.P6032531055172696839.a, A000217, A000217.P10269402890581615239.a, A252815, A252815.P8172004683234130111.a, A202752, A202752.P17958664207444159430.f4, A202752.P17958664207444159430.f3, A202752.P17958664207444159430.f2, A202752.P17958664207444159430.f1, A202752.P17958664207444159430.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A252871

/-! ## A252871.P17897872273193573017

`A252815(n+1)-∑[A046691(n)+4]`
-/

namespace A252871.P17897872273193573017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252871.P17897872273193573017

namespace A252871

/-- `A252815(n+1)-∑[A046691(n)+4]` -/
def P17897872273193573017.Spec : Prop :=
  ∀ n, P17897872273193573017.a n = A252871 (n + 1)

theorem P17897872273193573017.correct : P17897872273193573017.Spec := by
  intro n
  simp only [A252871, Nat.add_sub_cancel, A252871.P17897872273193573017.f1, A252871.P17897872273193573017.a, A252871.P6032531055172696839.f1, A252871.P6032531055172696839.a, A046691, A046691.P4440521238781218067.a, A252815, A252815.P8172004683234130111.a, A202752, A202752.P17958664207444159430.f4, A202752.P17958664207444159430.f3, A202752.P17958664207444159430.f2, A202752.P17958664207444159430.f1, A202752.P17958664207444159430.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A252871

/-! ## A252871.P8607270991353589852

`A252815(n+1)-A000292(n+2)+1`
-/

namespace A252871.P8607270991353589852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) - A000292 (n + 2) + 1

end

end A252871.P8607270991353589852

namespace A252871

/-- `A252815(n+1)-A000292(n+2)+1` -/
def P8607270991353589852.Spec : Prop :=
  ∀ n, P8607270991353589852.a n = A252871 (n + 1)

end A252871

/-! ## A252871.P9584273868482439866

`A202752(n+2)+C(n, 2)-A062748(n)`
-/

namespace A252871.P9584273868482439866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202752 (n + 2) + (Nat.choose n 2 : ℤ) - A062748 n

end

end A252871.P9584273868482439866

namespace A252871

/-- `A202752(n+2)+C(n, 2)-A062748(n)` -/
def P9584273868482439866.Spec : Prop :=
  ∀ n, P9584273868482439866.a n = A252871 (n + 1)

end A252871

/-! ## A252871.P16958089402820312442

`A202752(n+2)+A161680(n)-A062748(n)`
-/

namespace A252871.P16958089402820312442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202752 (n + 2) + A161680 n - A062748 n

end

end A252871.P16958089402820312442

namespace A252871

/-- `A202752(n+2)+A161680(n)-A062748(n)` -/
def P16958089402820312442.Spec : Prop :=
  ∀ n, P16958089402820312442.a n = A252871 (n + 1)

end A252871

/-! ## A252871.P4044741359275917596

`A252815(n+1)+A000124(n)-A027378(n+1)`
-/

namespace A252871.P4044741359275917596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) + (A000124 n - A027378 (n + 1))

end

end A252871.P4044741359275917596

namespace A252871

/-- `A252815(n+1)+A000124(n)-A027378(n+1)` -/
def P4044741359275917596.Spec : Prop :=
  ∀ n, P4044741359275917596.a n = A252871 (n + 1)

end A252871

/-! ## A252871.P13800388499501199952

`A229423(n+1)-A000292(n+2)-A062748(n)`
-/

namespace A252871.P13800388499501199952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229423 (n + 1) - A000292 (n + 2) - A062748 n

end

end A252871.P13800388499501199952

namespace A252871

/-- `A229423(n+1)-A000292(n+2)-A062748(n)` -/
def P13800388499501199952.Spec : Prop :=
  ∀ n, P13800388499501199952.a n = A252871 (n + 1)

end A252871

/-! ## A252871.P7717112438724544300

`A202752(n+2)+A055998(n)-3*n-A062748(n)`
-/

namespace A252871.P7717112438724544300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202752 (n + 2) + (A055998 n - (3 * n : ℤ)) - A062748 n

end

end A252871.P7717112438724544300

namespace A252871

/-- `A202752(n+2)+A055998(n)-3*n-A062748(n)` -/
def P7717112438724544300.Spec : Prop :=
  ∀ n, P7717112438724544300.a n = A252871 (n + 1)

end A252871

/-! ## A252871.P7382791253110431024

`A252815(n+1)-∑[A161680(n+3)]`
-/

namespace A252871.P7382791253110431024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252871.P7382791253110431024

namespace A252871

/-- `A252815(n+1)-∑[A161680(n+3)]` -/
def P7382791253110431024.Spec : Prop :=
  ∀ n, P7382791253110431024.a n = A252871 (n + 1)

theorem P7382791253110431024.correct : P7382791253110431024.Spec := by
  intro n
  simp only [A252871, Nat.add_sub_cancel, A252871.P7382791253110431024.f1, A252871.P7382791253110431024.a, A252871.P6032531055172696839.f1, A252871.P6032531055172696839.a, A161680, A161680.P17206074215489759881.a, A252815, A252815.P8172004683234130111.a, A202752, A202752.P17958664207444159430.f4, A202752.P17958664207444159430.f3, A202752.P17958664207444159430.f2, A202752.P17958664207444159430.f1, A202752.P17958664207444159430.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A252871

/-!
# A252872: Number of n X 4 nonnegative integer arrays with upper left 0 and lower right n+4-4 and value increasing by 0 or 1 with every step right or down.

The programs for A252872, there is no canonical definition to state claims against.
-/

/-! ## A252872.P8559016669658530883

`A252816(n+1)-A063258(n)`
-/

namespace A252872.P8559016669658530883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252816 (n + 1) - A063258 n

end

end A252872.P8559016669658530883

/-! ## A252872.P14684564876754319282

`A252816(n+1)-(A166805(n+1)+1)`
-/

namespace A252872.P14684564876754319282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252816 (n + 1) - (A166805 (n + 1) + 1)

end

end A252872.P14684564876754319282

/-! ## A252872.P14817982846576663115

`A252824(n+1)-(A252972(n+1)+A063258(n))`
-/

namespace A252872.P14817982846576663115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252824 (n + 1) - (A252972 (n + 1) + A063258 n)

end

end A252872.P14817982846576663115

/-! ## A252872.P14079065520622198029

`A229424(n+1)-(A063258(n)+1)-A063258(n)`
-/

namespace A252872.P14079065520622198029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229424 (n + 1) - (A063258 n + 1) - A063258 n

end

end A252872.P14079065520622198029

/-! ## A252872.P13839202529220006892

`A252876(∑[n+4]+3)`
-/

namespace A252872.P13839202529220006892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A252872.P13839202529220006892

/-! ## A252872.P16847216449956266216

`lcm(A033999(n), A252876(A046691(n+2)+1))`
-/

namespace A252872.P16847216449956266216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252876 (A046691 (n + 2) + 1).toNat)

end

end A252872.P16847216449956266216

/-! ## A252872.P5604157502123359075

`A252876(A046691(n+2)+1)%A138439(n+1)`
-/

namespace A252872.P5604157502123359075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252876 (A046691 (n + 2) + 1).toNat) (A138439 (n + 1))

end

end A252872.P5604157502123359075

/-!
# A252873: Number of n X 5 nonnegative integer arrays with upper left 0 and lower right n+5-4 and value increasing by 0 or 1 with every step right or down.

The programs for A252873, there is no canonical definition to state claims against.
-/

/-! ## A252873.P4973470043449103765

`A252817(n+1)-A062988(n)`
-/

namespace A252873.P4973470043449103765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252817 (n + 1) - A062988 n

end

end A252873.P4973470043449103765

/-! ## A252873.P4816161979768654645

`A229425(n+1)-(A062988(n)+1)-A062988(n)`
-/

namespace A252873.P4816161979768654645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229425 (n + 1) - (A062988 n + 1) - A062988 n

end

end A252873.P4816161979768654645

/-! ## A252873.P17467318615604060645

`A252817(n+1)-Δ[A062989(n)]`
-/

namespace A252873.P17467318615604060645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252817 (n + 1) - (f1 (n + 1) - f1 n)

end

end A252873.P17467318615604060645

/-! ## A252873.P16913646719443501673

`A252817(n+1)+1-Δ[A124089(n+6)]`
-/

namespace A252873.P16913646719443501673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252817 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A252873.P16913646719443501673

/-! ## A252873.P7753896467237245341

`A252876(∑[n+5]+6)`
-/

namespace A252873.P7753896467237245341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A252873.P7753896467237245341

/-! ## A252873.P1056606566607723316

`lcm(A033999(n), A252876(A046691(n+3)))`
-/

namespace A252873.P1056606566607723316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252876 (A046691 (n + 3)).toNat)

end

end A252873.P1056606566607723316

/-! ## A252873.P16307918375873734478

`A057427(n+1)*A252876(A046691(n+3))`
-/

namespace A252873.P16307918375873734478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A252876 (A046691 (n + 3)).toNat

end

end A252873.P16307918375873734478

/-! ## A252873.P11156394121384467053

`or(A122840(n+5), A252876(A046691(n+3)))`
-/

namespace A252873.P11156394121384467053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122840 (n + 5)) (A252876 (A046691 (n + 3)).toNat)

end

end A252873.P11156394121384467053

/-! ## A252873.P12278197188105232238

`A001222(A208241(n+1))*A252876(A046691(n+3))`
-/

namespace A252873.P12278197188105232238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A208241 (n + 1)).toNat * A252876 (A046691 (n + 3)).toNat

end

end A252873.P12278197188105232238

/-! ## A252873.P1496812710924335384

`A001222(A068831(n+1))*A252876(A046691(n+3))`
-/

namespace A252873.P1496812710924335384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A068831 (n + 1)).toNat * A252876 (A046691 (n + 3)).toNat

end

end A252873.P1496812710924335384

/-!
# A252874: Number of n X 6 nonnegative integer arrays with upper left 0 and lower right n+6-4 and value increasing by 0 or 1 with every step right or down.

The programs for A252874, there is no canonical definition to state claims against.
-/

/-! ## A252874.P3588016929039144770

`A252818(n+1)+1-Δ[A000580(n+7)]`
-/

namespace A252874.P3588016929039144770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252818 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A252874.P3588016929039144770

/-! ## A252874.P10699003716370425957

`A252818(n+1)+1-Δ[A124090(n+7)]`
-/

namespace A252874.P10699003716370425957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124090 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252818 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A252874.P10699003716370425957

/-! ## A252874.P3523828218302724160

`A252876(A374007(n+1))`
-/

namespace A252874.P3523828218302724160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A374007 (n + 1)).toNat

end

end A252874.P3523828218302724160

/-! ## A252874.P5067749725432130397

`A252876(A052905(n+3))`
-/

namespace A252874.P5067749725432130397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A052905 (n + 3)).toNat

end

end A252874.P5067749725432130397

/-! ## A252874.P12914357423136748614

`A252876(A155212(n+2)+3)`
-/

namespace A252874.P12914357423136748614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A155212 (n + 2) + 3).toNat

end

end A252874.P12914357423136748614

/-! ## A252874.P7575552309517150619

`A252876(A027379(n+4)-2)`
-/

namespace A252874.P7575552309517150619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A027379 (n + 4) - 2).toNat

end

end A252874.P7575552309517150619

/-! ## A252874.P17665426963538532009

`A252876(A000096(n+5)-4)`
-/

namespace A252874.P17665426963538532009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A000096 (n + 5) - 4).toNat

end

end A252874.P17665426963538532009

/-! ## A252874.P437691326518878116

`A252876(A000217(n+5)+6)`
-/

namespace A252874.P437691326518878116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A000217 (n + 5) + 6).toNat

end

end A252874.P437691326518878116

/-! ## A252874.P13041071102143881870

`A252876(A020705(n)²-A000096(n))`
-/

namespace A252874.P13041071102143881870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A020705 n ^ 2 - A000096 n).toNat

end

end A252874.P13041071102143881870

/-! ## A252874.P5768763501641237848

`A252876(A167499(n+7)-A016789(n+6))`
-/

namespace A252874.P5768763501641237848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A167499 (n + 7) - A016789 (n + 6)).toNat

end

end A252874.P5768763501641237848

/-!
# A252875: Number of nX7 nonnegative integer arrays with upper left 0 and lower right n+7-4 and value increasing by 0 or 1 with every step right or down.

The programs for A252875, there is no canonical definition to state claims against.
-/

/-! ## A252875.P9727466263498772799

`A252819(n+1)+1-Δ[A165618(n)]`
-/

namespace A252875.P9727466263498772799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252819 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A252875.P9727466263498772799

/-! ## A252875.P14019553326402261637

`A252819(n+1)+1-Δ[A000581(n+8)]`
-/

namespace A252875.P14019553326402261637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252819 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A252875.P14019553326402261637

/-! ## A252875.P16995883430056360037

`A252876(A374008(n+1))`
-/

namespace A252875.P16995883430056360037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A374008 (n + 1)).toNat

end

end A252875.P16995883430056360037

/-! ## A252875.P4717050752691265462

`A252876(A055999(n+4))`
-/

namespace A252875.P4717050752691265462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A055999 (n + 4)).toNat

end

end A252875.P4717050752691265462

/-! ## A252875.P9632827703612770464

`A252876(A167499(n+5)+2)`
-/

namespace A252875.P9632827703612770464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A167499 (n + 5) + 2).toNat

end

end A252875.P9632827703612770464

/-! ## A252875.P2599806397671704228

`A252876(A000217(n+6)+7)`
-/

namespace A252875.P2599806397671704228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A000217 (n + 6) + 7).toNat

end

end A252875.P2599806397671704228

/-! ## A252875.P3223413670423246474

`A252876(A179865(n+7)+7)`
-/

namespace A252875.P3223413670423246474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A179865 (n + 7) + 7).toNat

end

end A252875.P3223413670423246474

/-! ## A252875.P15724530694535554175

`A252876(A020705(n)²-A000096(n)+12)`
-/

namespace A252875.P15724530694535554175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252876 (A020705 n ^ 2 - A000096 n + 12).toNat

end

end A252875.P15724530694535554175

/-!
# A252876: T(n,k) = Number of n X k nonnegative integer arrays with upper left 0 and lower right n+k-4 and value increasing by 0 or 1 with every step right or down.

The programs for A252876, there is no canonical definition to state claims against.
-/

/-! ## A252876.P11481032123105527928

`A252820(n+1)-A014430(n)`
-/

namespace A252876.P11481032123105527928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (n + 1) - A014430 n

end

end A252876.P11481032123105527928

/-! ## A252876.P6138404068523905386

`A252820(n+1)+1-A014410(n+2)`
-/

namespace A252876.P6138404068523905386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (n + 1) + (1 - A014410 (n + 2))

end

end A252876.P6138404068523905386

/-! ## A252876.P26302613803681155

`A252820(n+1)+1-sqrt(A014719(n+2))`
-/

namespace A252876.P26302613803681155
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252820 (n + 1) : ℝ) + (1 - Real.sqrt (A014719 (n + 2) : ℝ))

end

end A252876.P26302613803681155

/-! ## A252876.P777322185069195520

`A252820(n+1)-(A051597(n)+A014473(n))`
-/

namespace A252876.P777322185069195520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (n + 1) - (A051597 n + A014473 n)

end

end A252876.P777322185069195520

/-! ## A252876.P17456309457956859267

`A252820(n+1)+1-A074909(A014132(n+1))`
-/

namespace A252876.P17456309457956859267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (n + 1) + (1 - A074909 (A014132 (n + 1)).toNat)

end

end A252876.P17456309457956859267

/-! ## A252876.P17239976558622799377

`A252820(n+1)+1-A135278(A007401(n+1))`
-/

namespace A252876.P17239976558622799377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252820 (n + 1) + (1 - A135278 (A007401 (n + 1)).toNat)

end

end A252876.P17239976558622799377

/-! ## A252876.P15247019033256350545

`A229428(n+1)-(A014430(n)+A014410(n+2))`
-/

namespace A252876.P15247019033256350545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229428 (n + 1) - (A014430 n + A014410 (n + 2))

end

end A252876.P15247019033256350545

/-! ## A252876.P17487773031214089909

`A252828(n+1)-(A252976(n+1)+A014430(n))`
-/

namespace A252876.P17487773031214089909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (n + 1) - (A252976 (n + 1) + A014430 n)

end

end A252876.P17487773031214089909

/-! ## A252876.P7955774014214456191

`A229428(n+1)-A005408(A014430(n))`
-/

namespace A252876.P7955774014214456191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229428 (n + 1) - A005408 (A014430 n).toNat

end

end A252876.P7955774014214456191

/-! ## A252876.P4770199950206598095

`A229428(n+1)-A004273(A014410(n+2))`
-/

namespace A252876.P4770199950206598095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229428 (n + 1) - A004273 (A014410 (n + 2)).toNat

end

end A252876.P4770199950206598095

/-!
# A252877: Number of (n+2)X(1+2) 0..2 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252877, there is no canonical definition to state claims against.
-/

/-! ## A252877.P480007049049180077

`A252882(∑[n+1])`
-/

namespace A252877.P480007049049180077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252877.P480007049049180077

/-! ## A252877.P15107741514120634283

`record[A252882(A133825(n))]`
-/

namespace A252877.P15107741514120634283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252877.P15107741514120634283

/-! ## A252877.P9055005981419851937

`record[A252882(abs(A145063(n)))]`
-/

namespace A252877.P9055005981419851937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 |A145063 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252877.P9055005981419851937

/-! ## A252877.P9920124171397984661

`record[A252882(A106255(n+1))]`
-/

namespace A252877.P9920124171397984661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A106255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252877.P9920124171397984661

/-! ## A252877.P6080658191557329259

`record[A252882(A130270(n+1))]`
-/

namespace A252877.P6080658191557329259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252877.P6080658191557329259

/-!
# A252878: Number of (n+2)X(2+2) 0..2 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252878, there is no canonical definition to state claims against.
-/

/-! ## A252878.P8470948031032883358

`A252882(∑[n+2])`
-/

namespace A252878.P8470948031032883358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252878.P8470948031032883358

/-! ## A252878.P13965327253179808907

`record[gcd(A122286(n+2), A252882(n+2))]`
-/

namespace A252878.P13965327253179808907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122286 (n + 2)) (A252882 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252878.P13965327253179808907

/-! ## A252878.P8707583479263105420

`A252882(A000096(n+1))+A102683(n)`
-/

namespace A252878.P8707583479263105420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A000096 (n + 1)).toNat + A102683 n

end

end A252878.P8707583479263105420

/-! ## A252878.P11387889656392470728

`A252882(A000096(n+1))%A089698(n+5)`
-/

namespace A252878.P11387889656392470728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252882 (A000096 (n + 1)).toNat) (A089698 (n + 5))

end

end A252878.P11387889656392470728

/-! ## A252878.P15680386932755278435

`A185114(2*(n+2))*A252882(A000096(n+1))`
-/

namespace A252878.P15680386932755278435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 (2 * (n + 2)) * A252882 (A000096 (n + 1)).toNat

end

end A252878.P15680386932755278435

/-!
# A252879: Number of (n+2)X(3+2) 0..2 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252879, there is no canonical definition to state claims against.
-/

/-! ## A252879.P5828783287742650731

`A252882(∑[n+3]+1)`
-/

namespace A252879.P5828783287742650731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252879.P5828783287742650731

/-! ## A252879.P16782187492058461575

`A005710(n)*A252882(A034856(n+2))`
-/

namespace A252879.P16782187492058461575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 n * A252882 (A034856 (n + 2)).toNat

end

end A252879.P16782187492058461575

/-! ## A252879.P6909078433752591258

`lcm(A033999(n), A252882(A034856(n+2)))`
-/

namespace A252879.P6909078433752591258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252882 (A034856 (n + 2)).toNat)

end

end A252879.P6909078433752591258

/-! ## A252879.P1116423537134077582

`A252882(A034856(n+2))*A351065(n+1)`
-/

namespace A252879.P1116423537134077582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A034856 (n + 2)).toNat * A351065 (n + 1)

end

end A252879.P1116423537134077582

/-!
# A252880: Number of (n+2)X(4+2) 0..2 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252880, there is no canonical definition to state claims against.
-/

/-! ## A252880.P2735491588660837445

`A252882(∑[n+4]+3)`
-/

namespace A252880.P2735491588660837445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A252880.P2735491588660837445

/-! ## A252880.P815187674202740853

`A326152(n)+A252882(A055998(n+2))`
-/

namespace A252880.P815187674202740853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326152 n + A252882 (A055998 (n + 2)).toNat

end

end A252880.P815187674202740853

/-! ## A252880.P6778584606628801298

`A008406(n+1)*A252882(A055998(n+2))`
-/

namespace A252880.P6778584606628801298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (n + 1) * A252882 (A055998 (n + 2)).toNat

end

end A252880.P6778584606628801298

/-!
# A252881: Number of (n+2)X(5+2) 0..2 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252881, there is no canonical definition to state claims against.
-/

/-! ## A252881.P11820899697191178951

`A252882(∑[n+5]+6)`
-/

namespace A252881.P11820899697191178951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A252881.P11820899697191178951

/-!
# A252883: Number of (1+2)X(n+2) 0..2 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252883, there is no canonical definition to state claims against.
-/

/-! ## A252883.P6221705032032794446

`A252882(∑[n]+1)`
-/

namespace A252883.P6221705032032794446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252883.P6221705032032794446

/-! ## A252883.P14411703919811471015

`record[A252882(∑[A057979(n)])]`
-/

namespace A252883.P14411703919811471015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252883.P14411703919811471015

/-! ## A252883.P13660626868192170069

`record[A252882(record[A114220(n)])]`
-/

namespace A252883.P13660626868192170069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252883.P13660626868192170069

/-! ## A252883.P18221742037307282207

`and(-1, A252882(A000124(n)))`
-/

namespace A252883.P18221742037307282207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252882 (A000124 n).toNat)

end

end A252883.P18221742037307282207

/-! ## A252883.P15091707444407954203

`record[A252882(A134519(n+1))]`
-/

namespace A252883.P15091707444407954203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A134519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252883.P15091707444407954203

/-!
# A252884: Number of (2+2)X(n+2) 0..2 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252884, there is no canonical definition to state claims against.
-/

/-! ## A252884.P12450693307599854129

`A252882(∑[n+1]+2)`
-/

namespace A252884.P12450693307599854129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252884.P12450693307599854129

/-! ## A252884.P9677482737743058123

`record[A252882(n+3)/A048882(n)]`
-/

namespace A252884.P9677482737743058123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252882 (n + 3) : ℚ) / (A048882 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252884.P9677482737743058123

/-!
# A252885: Number of (3+2)X(n+2) 0..2 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252885, there is no canonical definition to state claims against.
-/

/-! ## A252885.P6302720999223228353

`A252882(∑[n+2]+4)`
-/

namespace A252885.P6302720999223228353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252885.P6302720999223228353

/-! ## A252885.P8257295062775885426

`A252882(A167614(n+1))+A033665(n)`
-/

namespace A252885.P8257295062775885426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A167614 (n + 1)).toNat + A033665 n

end

end A252885.P8257295062775885426

/-! ## A252885.P12105626179620174378

`A252882(A167614(n+1))+A036633(n)`
-/

namespace A252885.P12105626179620174378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A167614 (n + 1)).toNat + A036633 n

end

end A252885.P12105626179620174378

/-! ## A252885.P14317595754479551762

`A252882(A167614(n+1))+A059995(n)`
-/

namespace A252885.P14317595754479551762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A167614 (n + 1)).toNat + A059995 n

end

end A252885.P14317595754479551762

/-! ## A252885.P9105813723441271458

`A252882(A167614(n+1))+A185044(n)`
-/

namespace A252885.P9105813723441271458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A167614 (n + 1)).toNat + A185044 n

end

end A252885.P9105813723441271458

/-!
# A252886: Number of (4+2)X(n+2) 0..2 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252886, there is no canonical definition to state claims against.
-/

/-! ## A252886.P3386139760129131910

`A252882(A141214(n)+7)`
-/

namespace A252886.P3386139760129131910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A141214 n + 7).toNat

end

end A252886.P3386139760129131910

/-! ## A252886.P12679383105717457755

`A252882(A052905(n)+9)`
-/

namespace A252886.P12679383105717457755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A052905 n + 9).toNat

end

end A252886.P12679383105717457755

/-! ## A252886.P6474971752716130484

`A252882(A055999(n)+10)`
-/

namespace A252886.P6474971752716130484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A055999 n + 10).toNat

end

end A252886.P6474971752716130484

/-! ## A252886.P2665345256985291937

`A252882(eq[5, A066657(n)])`
-/

namespace A252886.P2665345256985291937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252886.P2665345256985291937

/-!
# A252887: Number of (5+2) X (n+2) 0..2 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252887, there is no canonical definition to state claims against.
-/

/-! ## A252887.P11007120566469750404

`A252882(A167499(n+3))`
-/

namespace A252887.P11007120566469750404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A167499 (n + 3)).toNat

end

end A252887.P11007120566469750404

/-! ## A252887.P4333144083086022720

`A252882(A155212(n)+13)`
-/

namespace A252887.P4333144083086022720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A155212 n + 13).toNat

end

end A252887.P4333144083086022720

/-! ## A252887.P4999682106938930577

`A252882(A056000(n)+15)`
-/

namespace A252887.P4999682106938930577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252882 (A056000 n + 15).toNat

end

end A252887.P4999682106938930577

/-!
# A252888: Number of n X n nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 1 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252888, there is no canonical definition to state claims against.
-/

/-! ## A252888.P4039232261065482655

`A252889(∑[4*n]+1)`
-/

namespace A252888.P4039232261065482655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252889 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252888.P4039232261065482655

/-! ## A252888.P3772772659094935047

`record[A003982(n)*A252889(n+1)]`
-/

namespace A252888.P3772772659094935047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252888.P3772772659094935047

/-! ## A252888.P17971784835456440082

`A252889(A001844(n))+A185238(n)`
-/

namespace A252888.P17971784835456440082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252889 (A001844 n).toNat + A185238 n

end

end A252888.P17971784835456440082

/-! ## A252888.P10707255991551106837

`A326681(n)+A252889(A001844(n))`
-/

namespace A252888.P10707255991551106837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326681 n + A252889 (A001844 n).toNat

end

end A252888.P10707255991551106837

/-! ## A252888.P12981469769633459243

`record[gcd(A025581(n), A323848(n+1))]`
-/

namespace A252888.P12981469769633459243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A323848 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252888.P12981469769633459243

/-!
# A252889: T(n,k)=Number of nXk nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 1 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252889, there is no canonical definition to state claims against.
-/

/-! ## A252889.P15566910916780706774

`A226762(A207785(n+1))%A096510(n)`
-/

namespace A252889.P15566910916780706774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226762 (A207785 (n + 1)).toNat) (A096510 n)

end

end A252889.P15566910916780706774

/-! ## A252889.P13677833625512664052

`A341839(n)^A007318(A049872(n))`
-/

namespace A252889.P13677833625512664052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341839 n : ℚ) ^ (A007318 (A049872 n).toNat : ℤ)

end

end A252889.P13677833625512664052

/-! ## A252889.P12238748358762838195

`A374249(A051125(n+1)^A034851(n))`
-/

namespace A252889.P12238748358762838195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (SequenceMachineLib.roundAway ((A051125 (n + 1) : ℚ) ^ (A034851 n : ℤ))).toNat

end

end A252889.P12238748358762838195

/-! ## A252889.P2308635674931837065

`A007953(A335678(n+1)^A132823(n))`
-/

namespace A252889.P2308635674931837065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A335678 (n + 1) : ℚ) ^ (A132823 n : ℤ))).toNat

end

end A252889.P2308635674931837065

/-!
# A252890: Number of times the greatest prime factor of n^2 + 1 is a factor in all numbers <= n.

The programs for A252890, there is no canonical definition to state claims against.
-/

/-! ## A252890.P123279583337600015

`val(∏[A002522(n+1)], A014442(n+1))`
-/

namespace A252890.P123279583337600015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (A014442 (n + 1)).toNat

end

end A252890.P123279583337600015

/-! ## A252890.P4126669590797479269

`A242012(n+1)+A177063(A270613(n+1))`
-/

namespace A252890.P4126669590797479269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242012 (n + 1) + A177063 (A270613 (n + 1)).toNat

end

end A252890.P4126669590797479269

/-! ## A252890.P15316028385505383736

`A353639(A068921(n))+A242012(n+1)`
-/

namespace A252890.P15316028385505383736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353639 (A068921 n).toNat + A242012 (n + 1)

end

end A252890.P15316028385505383736

/-! ## A252890.P14867346775164209511

`round(root(A255135(n+1), A014442(n+1)))`
-/

namespace A252890.P14867346775164209511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A255135 (n + 1) : ℝ) ^ (1 / (A014442 (n + 1) : ℝ)))

end

end A252890.P14867346775164209511

/-! ## A252890.P7406252029496277253

`A242012(n+1)+A216230(A317292(n+3))`
-/

namespace A252890.P7406252029496277253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242012 (n + 1) + A216230 (A317292 (n + 3)).toNat

end

end A252890.P7406252029496277253

/-!
# A252892: Primes p such that sigma(p) = 1 + p is a partition number (sorted increasingly).

The programs for A252892, there is no canonical definition to state claims against.
-/

/-! ## A252892.P1970875061956261556

`p?[A000065(n)]`
-/

namespace A252892.P1970875061956261556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252892.P1970875061956261556

/-! ## A252892.P11983185222681108501

`p?[Δ[A058682(n)]]`
-/

namespace A252892.P11983185222681108501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252892.P11983185222681108501

/-! ## A252892.P3122072480804601720

`p?[A252891(n+1)]`
-/

namespace A252892.P3122072480804601720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252892.P3122072480804601720

/-! ## A252892.P17919733095648285092

`p?[A000041(n)-1]`
-/

namespace A252892.P17919733095648285092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252892.P17919733095648285092

/-! ## A252892.P395936597444405280

`p?[A035363(n)-1]`
-/

namespace A252892.P395936597444405280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252892.P395936597444405280

/-!
# A252893: Primes congruent to 11 mod 111.

The programs for A252893, the canonical program `A252893.P10954994435886160219` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252893 has offset 1).

The definition of A252893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1086 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252893.P10954994435886160219

`p?[3*37*n+11]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A252893

/-- `p?[3*37*n+11]` -/
def P10954994435886160219.Spec : Prop :=
  ∀ n, (P10954994435886160219.a n : ℤ) = A252893 (n + 1)

theorem P10954994435886160219.correct : P10954994435886160219.Spec := by
  intro n
  simp only [A252893, Nat.add_sub_cancel]

end A252893

/-! ## A252893.P11231620040510004550

`A000027(p?[A139611(n)+A004526(n)])`
-/

namespace A252893.P11231620040510004550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A252893.P11231620040510004550

namespace A252893

/-- `A000027(p?[A139611(n)+A004526(n)])` -/
def P11231620040510004550.Spec : Prop :=
  ∀ n, P11231620040510004550.a n = A252893 (n + 1)

end A252893

/-! ## A252893.P2474408179641229098

`∩[A003627(n+1), A142120(n+1)]`
-/

namespace A252893.P2474408179641229098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252893.P2474408179641229098

namespace A252893

/-- `∩[A003627(n+1), A142120(n+1)]` -/
def P2474408179641229098.Spec : Prop :=
  ∀ n, (P2474408179641229098.a n : ℤ) = A252893 (n + 1)

end A252893

/-! ## A252893.P10562759511733850994

`record[A020639(3*37*n+11)]`
-/

namespace A252893.P10562759511733850994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (37 * n) + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252893.P10562759511733850994

namespace A252893

/-- `record[A020639(3*37*n+11)]` -/
def P10562759511733850994.Spec : Prop :=
  ∀ n, P10562759511733850994.a n = A252893 (n + 1)

end A252893

/-! ## A252893.P14229859810031577412

`A007947(p?[A139611(n)+A004526(n)])`
-/

namespace A252893.P14229859810031577412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A252893.P14229859810031577412

namespace A252893

/-- `A007947(p?[A139611(n)+A004526(n)])` -/
def P14229859810031577412.Spec : Prop :=
  ∀ n, P14229859810031577412.a n = A252893 (n + 1)

end A252893

/-!
# A252895: Numbers with an odd number of square divisors.

The programs for A252895, the canonical program `A252895.P12324510163407338421` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252895 has offset 1).

The definition of A252895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8784 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252895.P11694585172740765942

`filter[A390441(n+1), A353519(#)]`
-/

namespace A252895.P11694585172740765942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A252895.P11694585172740765942

namespace A252895

/-- `filter[A390441(n+1), A353519(#)]` -/
def P11694585172740765942.Spec : Prop :=
  ∀ n, P11694585172740765942.a n = A252895 (n + 1)

end A252895

/-! ## A252895.P10970105841026366530

`filter[A336222(n+1), A353519(#)]`
-/

namespace A252895.P10970105841026366530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A252895.P10970105841026366530

namespace A252895

/-- `filter[A336222(n+1), A353519(#)]` -/
def P10970105841026366530.Spec : Prop :=
  ∀ n, P10970105841026366530.a n = A252895 (n + 1)

end A252895

/-! ## A252895.P14103313072401394700

`filter[A336222(n+1), A353628(#)]`
-/

namespace A252895.P14103313072401394700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A252895.P14103313072401394700

namespace A252895

/-- `filter[A336222(n+1), A353628(#)]` -/
def P14103313072401394700.Spec : Prop :=
  ∀ n, P14103313072401394700.a n = A252895 (n + 1)

end A252895

/-! ## A252895.P12324510163407338421

`filter[A337050(n+1), A353519(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A252895

/-- `filter[A337050(n+1), A353519(#)]` -/
def P12324510163407338421.Spec : Prop :=
  ∀ n, P12324510163407338421.a n = A252895 (n + 1)

theorem P12324510163407338421.correct : P12324510163407338421.Spec := by
  intro n
  simp only [A252895, Nat.add_sub_cancel]

end A252895

/-! ## A252895.P3613353684920286770

`filter[A353511(n+1), A353519(#)]`
-/

namespace A252895.P3613353684920286770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A252895.P3613353684920286770

namespace A252895

/-- `filter[A353511(n+1), A353519(#)]` -/
def P3613353684920286770.Spec : Prop :=
  ∀ n, P3613353684920286770.a n = A252895 (n + 1)

end A252895

/-! ## A252895.P9387585818843097190

`filter[A047588(n+2), A353519(#)]`
-/

namespace A252895.P9387585818843097190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A252895.P9387585818843097190

namespace A252895

/-- `filter[A047588(n+2), A353519(#)]` -/
def P9387585818843097190.Spec : Prop :=
  ∀ n, P9387585818843097190.a n = A252895 (n + 1)

end A252895

/-! ## A252895.P10362951215118048991

`filter[A336592(n+1), A353519(#)]`
-/

namespace A252895.P10362951215118048991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A252895.P10362951215118048991

namespace A252895

/-- `filter[A336592(n+1), A353519(#)]` -/
def P10362951215118048991.Spec : Prop :=
  ∀ n, P10362951215118048991.a n = A252895 (n + 1)

end A252895

/-! ## A252895.P11274365703867517718

`filter[A386799(n+1), A353519(#)]`
-/

namespace A252895.P11274365703867517718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A252895.P11274365703867517718

namespace A252895

/-- `filter[A386799(n+1), A353519(#)]` -/
def P11274365703867517718.Spec : Prop :=
  ∀ n, P11274365703867517718.a n = A252895 (n + 1)

end A252895

/-! ## A252895.P12783535397626144109

`eq[A008833(n+1), A008835(A008833(n+1))]+1`
-/

namespace A252895.P12783535397626144109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (A008833 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A252895.P12783535397626144109

namespace A252895

/-- `eq[A008833(n+1), A008835(A008833(n+1))]+1` -/
def P12783535397626144109.Spec : Prop :=
  ∀ n, (P12783535397626144109.a n : ℤ) = A252895 (n + 1)

end A252895

/-! ## A252895.P4193083466743682464

`filter[A213367(n+1), A353519(#)]`
-/

namespace A252895.P4193083466743682464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A252895.P4193083466743682464

namespace A252895

/-- `filter[A213367(n+1), A353519(#)]` -/
def P4193083466743682464.Spec : Prop :=
  ∀ n, P4193083466743682464.a n = A252895 (n + 1)

end A252895

/-! ## A252895.P1614778006114314250

`eq[2, and(2, A320908(n))]`
-/

namespace A252895.P1614778006114314250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A320908 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A252895.P1614778006114314250

namespace A252895

/-- `eq[2, and(2, A320908(n))]` -/
def P1614778006114314250.Spec : Prop :=
  ∀ n, (P1614778006114314250.a n : ℤ) = A252895 (n + 1)

end A252895

/-! ## A252895.P9535938314368283702

`filter[n+1, A353519(#)]`
-/

namespace A252895.P9535938314368283702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j) = 1) n)

end

end A252895.P9535938314368283702

namespace A252895

/-- `filter[n+1, A353519(#)]` -/
def P9535938314368283702.Spec : Prop :=
  ∀ n, (P9535938314368283702.a n : ℤ) = A252895 (n + 1)

end A252895

/-! ## A252895.P4856463418585447649

`lt[A335324(n+1), 2]+1`
-/

namespace A252895.P4856463418585447649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335324 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A252895.P4856463418585447649

namespace A252895

/-- `lt[A335324(n+1), 2]+1` -/
def P4856463418585447649.Spec : Prop :=
  ∀ n, (P4856463418585447649.a n : ℤ) = A252895 (n + 1)

end A252895

/-! ## A252895.P8436865329869069023

`eq[1, A219009(n+1)²]+1`
-/

namespace A252895.P8436865329869069023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A252895.P8436865329869069023

namespace A252895

/-- `eq[1, A219009(n+1)²]+1` -/
def P8436865329869069023.Spec : Prop :=
  ∀ n, (P8436865329869069023.a n : ℤ) = A252895 (n + 1)

end A252895

/-! ## A252895.P16448788108137974415

`eq[1, A062367(n+1)%2]+1`
-/

namespace A252895.P16448788108137974415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062367 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A252895.P16448788108137974415

namespace A252895

/-- `eq[1, A062367(n+1)%2]+1` -/
def P16448788108137974415.Spec : Prop :=
  ∀ n, (P16448788108137974415.a n : ℤ) = A252895 (n + 1)

end A252895

/-! ## A252895.P14982028189858351999

`lt[val(A007425(n+1), 2), 1]+1`
-/

namespace A252895.P14982028189858351999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007425 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A252895.P14982028189858351999

namespace A252895

/-- `lt[val(A007425(n+1), 2), 1]+1` -/
def P14982028189858351999.Spec : Prop :=
  ∀ n, (P14982028189858351999.a n : ℤ) = A252895 (n + 1)

end A252895

/-! ## A252895.P436036349979423579

`lt[val(A046951(n+1), 2), 1]+1`
-/

namespace A252895.P436036349979423579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046951 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A252895.P436036349979423579

namespace A252895

/-- `lt[val(A046951(n+1), 2), 1]+1` -/
def P436036349979423579.Spec : Prop :=
  ∀ n, (P436036349979423579.a n : ℤ) = A252895 (n + 1)

end A252895

/-! ## A252895.P4726730386249186386

`eq[or(2, A103265(n)), A103265(n)]`
-/

namespace A252895.P4726730386249186386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A103265 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252895.P4726730386249186386

namespace A252895

/-- `eq[or(2, A103265(n)), A103265(n)]` -/
def P4726730386249186386.Spec : Prop :=
  ∀ n, (P4726730386249186386.a n : ℤ) = A252895 (n + 1)

end A252895

/-! ## A252895.P15459962389062305398

`eq[1, A007913(A000188(n+1))]+1`
-/

namespace A252895.P15459962389062305398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000188 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A252895.P15459962389062305398

namespace A252895

/-- `eq[1, A007913(A000188(n+1))]+1` -/
def P15459962389062305398.Spec : Prop :=
  ∀ n, (P15459962389062305398.a n : ℤ) = A252895 (n + 1)

end A252895

/-!
# A252898: Decimal expansion of lim_{n->infinity} -FractionalPart[Zeta'(1+1/n)] or -FractionalPart[Zeta'(1-1/n)], where Zeta' is the first derivative of the Riemann zeta function.

The programs for A252898, there is no canonical definition to state claims against.
-/

/-! ## A252898.P456098800448189576

`9-A082633(n)`
-/

namespace A252898.P456098800448189576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A082633 n

end

end A252898.P456098800448189576

/-!
# A252899: Number of (n+2)X(1+2) 0..3 arrays with every consecutive three elements in every row and column having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252899, there is no canonical definition to state claims against.
-/

/-! ## A252899.P13653023201485530232

`A252904(∑[n]+1)`
-/

namespace A252899.P13653023201485530232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252904 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252899.P13653023201485530232

/-! ## A252899.P5317697132753067819

`lcm(3, A252904(A000124(n)))`
-/

namespace A252899.P5317697132753067819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A252904 (A000124 n).toNat)

end

end A252899.P5317697132753067819

/-! ## A252899.P9219627691582700467

`record[A252904(A254052(n+1))]`
-/

namespace A252899.P9219627691582700467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252904 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252899.P9219627691582700467

/-! ## A252899.P5607271402001712584

`record[A252904(A267104(n+1))]`
-/

namespace A252899.P5607271402001712584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252904 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252899.P5607271402001712584

/-! ## A252899.P2317058782760183333

`record[A252904(A286235(n+1))]`
-/

namespace A252899.P2317058782760183333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252904 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252899.P2317058782760183333

