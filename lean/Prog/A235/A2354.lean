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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A235402: Mode of maximal "prime gaps" in Cramer's model with n urns.

The programs for A235402, there is no canonical definition to state claims against.
-/

/-! ## A235402.P10876363978552770818

`ceil(∑[24/A210666(n+1)])`
-/

namespace A235402.P10876363978552770818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  24 / (A210666 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A235402.P10876363978552770818

/-! ## A235402.P11959547661090596793

`A257639(∑[A107456(abs(1-n))])`
-/

namespace A235402.P11959547661090596793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107456 (|1 - (n : ℤ)|.toNat + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235402.P11959547661090596793

/-! ## A235402.P9271461944770844404

`A172263(A215781(A023533(n)+n))`
-/

namespace A235402.P9271461944770844404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A215781 (A023533 n + (n : ℤ)).toNat).toNat

end

end A235402.P9271461944770844404

/-! ## A235402.P16250367771296130321

`A002024(A097950(∑[A286487(n+1)]))`
-/

namespace A235402.P16250367771296130321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A097950 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A235402.P16250367771296130321

/-! ## A235402.P17708905326293839082

`floor(A006093(A023598(n+1))^(1/5))`
-/

namespace A235402.P17708905326293839082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (A023598 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋

end

end A235402.P17708905326293839082

/-! ## A235402.P17813021067229234427

`A000196(A232012(n+1)-A072491(n))`
-/

namespace A235402.P17813021067229234427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A232012 (n + 1) - A072491 n).toNat

end

end A235402.P17813021067229234427

/-! ## A235402.P1803023536827738999

`A081604(∑[A055807(n+2)])`
-/

namespace A235402.P1803023536827738999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235402.P1803023536827738999

/-! ## A235402.P2728420132539787906

`A230501(A027587(n))`
-/

namespace A235402.P2728420132539787906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230501 (A027587 n).toNat

end

end A235402.P2728420132539787906

/-! ## A235402.P11368834414454174720

`A163291(A015753(n+1))`
-/

namespace A235402.P11368834414454174720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163291 (A015753 (n + 1)).toNat

end

end A235402.P11368834414454174720

/-!
# A235403: Number of (n+1)X(2+1) 0..2 arrays with 2X2 subblock sums lexicographically nondecreasing columnwise and rowwise.

The programs for A235403, there is no canonical definition to state claims against.
-/

/-! ## A235403.P11382870915389624705

`A235406(∑[n+1]+2)`
-/

namespace A235403.P11382870915389624705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235406 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235403.P11382870915389624705

/-! ## A235403.P9178138902996215694

`record[A010054(n)*A235406(n+2)]`
-/

namespace A235403.P9178138902996215694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235406 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235403.P9178138902996215694

/-! ## A235403.P2943675667597062237

`record[A235406(n+3)/A039621(n+1)]`
-/

namespace A235403.P2943675667597062237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235406 (n + 3) : ℚ) / (A039621 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235403.P2943675667597062237

/-! ## A235403.P7498960381103418796

`record[A235406(A165157(n)+2)]`
-/

namespace A235403.P7498960381103418796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235406 (A165157 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235403.P7498960381103418796

/-! ## A235403.P18195055375621702891

`record[A235406(A237519(n+1)+1)]`
-/

namespace A235403.P18195055375621702891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235406 (A237519 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235403.P18195055375621702891

/-!
# A235404: Number of (n+1)X(3+1) 0..2 arrays with 2X2 subblock sums lexicographically nondecreasing columnwise and rowwise.

The programs for A235404, there is no canonical definition to state claims against.
-/

/-! ## A235404.P2649793323743222400

`A235406(∑[n+2]+4)`
-/

namespace A235404.P2649793323743222400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235406 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235404.P2649793323743222400

/-! ## A235404.P10984750437619004705

`A235406(A167614(n+1))+A025469(n)`
-/

namespace A235404.P10984750437619004705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235406 (A167614 (n + 1)).toNat + A025469 n

end

end A235404.P10984750437619004705

/-! ## A235404.P4921986497387698731

`A235406(A167614(n+1))+A055967(n)`
-/

namespace A235404.P4921986497387698731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235406 (A167614 (n + 1)).toNat + A055967 n

end

end A235404.P4921986497387698731

/-! ## A235404.P12540998243162264945

`A015760(n)*A235406(A167614(n+1))`
-/

namespace A235404.P12540998243162264945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015760 n * A235406 (A167614 (n + 1)).toNat

end

end A235404.P12540998243162264945

/-! ## A235404.P10594063929492918766

`A108358(n)*A235406(A167614(n+1))`
-/

namespace A235404.P10594063929492918766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108358 n * A235406 (A167614 (n + 1)).toNat

end

end A235404.P10594063929492918766

/-!
# A235405: Number of (n+1)X(4+1) 0..2 arrays with 2X2 subblock sums lexicographically nondecreasing columnwise and rowwise.

The programs for A235405, there is no canonical definition to state claims against.
-/

/-! ## A235405.P5040100691480420553

`A235406(∑[n+3]+7)`
-/

namespace A235405.P5040100691480420553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235406 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235405.P5040100691480420553

/-! ## A235405.P8043822417760725509

`A050334(2*n+1)*A235406(A027379(n+2))`
-/

namespace A235405.P8043822417760725509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (2 * n + 1) * A235406 (A027379 (n + 2)).toNat

end

end A235405.P8043822417760725509

/-! ## A235405.P1159431389107719922

`A235406(A027379(n+2))+A000007(3*n+4)`
-/

namespace A235405.P1159431389107719922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235406 (A027379 (n + 2)).toNat + A000007 (3 * n + 4)

end

end A235405.P1159431389107719922

/-!
# A235407: Number of (n+1)X(2+1) 0..1 arrays with 2X2 subblock sums lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235407, there is no canonical definition to state claims against.
-/

/-! ## A235407.P15863698070544074844

`A235413(∑[n+1]+2)`
-/

namespace A235407.P15863698070544074844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235407.P15863698070544074844

/-! ## A235407.P11886823306151356278

`A235413(A000096(n)+3)+char[17]`
-/

namespace A235407.P11886823306151356278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A235407.P11886823306151356278

/-! ## A235407.P6726443727149558767

`gcd(n, n+1)*A235413(A167499(n)-3)`
-/

namespace A235407.P6726443727149558767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A235413 (A167499 n - 3).toNat

end

end A235407.P6726443727149558767

/-! ## A235407.P382830005203439822

`A007318(val(n+1, 5))*A235413(A000096(n)+3)`
-/

namespace A235407.P382830005203439822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 5) * A235413 (A000096 n + 3).toNat

end

end A235407.P382830005203439822

/-! ## A235407.P10535416488878268432

`A014963(A000217(n+6))*A235413(A000096(n)+3)`
-/

namespace A235407.P10535416488878268432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat * A235413 (A000096 n + 3).toNat

end

end A235407.P10535416488878268432

/-!
# A235408: Number of (n+1)X(3+1) 0..1 arrays with 2X2 subblock sums lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235408, there is no canonical definition to state claims against.
-/

/-! ## A235408.P13215726034981997659

`A235413(∑[n+2]+4)`
-/

namespace A235408.P13215726034981997659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235408.P13215726034981997659

/-! ## A235408.P8988801933225334983

`A235413(A167614(n+1))+A181838(n)`
-/

namespace A235408.P8988801933225334983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A167614 (n + 1)).toNat + A181838 n

end

end A235408.P8988801933225334983

/-! ## A235408.P10993426320722131815

`lcm(A033999(n), A235413(A167614(n+1)))`
-/

namespace A235408.P10993426320722131815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A235413 (A167614 (n + 1)).toNat)

end

end A235408.P10993426320722131815

/-! ## A235408.P9742049739432969695

`or(A000007(n), A235413(A167614(n+1)))`
-/

namespace A235408.P9742049739432969695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A235413 (A167614 (n + 1)).toNat)

end

end A235408.P9742049739432969695

/-! ## A235408.P17978739497815482317

`or(A112315(n), A235413(A167614(n+1)))`
-/

namespace A235408.P17978739497815482317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112315 n) (A235413 (A167614 (n + 1)).toNat)

end

end A235408.P17978739497815482317

/-!
# A235409: Number of (n+1)X(4+1) 0..1 arrays with 2X2 subblock sums lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235409, there is no canonical definition to state claims against.
-/

/-! ## A235409.P11296114929086605628

`A235413(A374004(n+1))`
-/

namespace A235409.P11296114929086605628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A374004 (n + 1)).toNat

end

end A235409.P11296114929086605628

/-! ## A235409.P9570722638822394619

`A235413(A141214(n)+7)`
-/

namespace A235409.P9570722638822394619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A141214 n + 7).toNat

end

end A235409.P9570722638822394619

/-! ## A235409.P4024533006519540888

`A235413(A052905(n)+9)`
-/

namespace A235409.P4024533006519540888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A052905 n + 9).toNat

end

end A235409.P4024533006519540888

/-! ## A235409.P16821235624180097939

`A235413(A055999(n)+10)`
-/

namespace A235409.P16821235624180097939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A055999 n + 10).toNat

end

end A235409.P16821235624180097939

/-! ## A235409.P2877829328355382728

`A235413(A167614(n+2)+1)`
-/

namespace A235409.P2877829328355382728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A167614 (n + 2) + 1).toNat

end

end A235409.P2877829328355382728

/-!
# A235410: Number of (n+1)X(5+1) 0..1 arrays with 2X2 subblock sums lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235410, there is no canonical definition to state claims against.
-/

/-! ## A235410.P12159770930269075450

`A235413(A374005(n+1))`
-/

namespace A235410.P12159770930269075450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A374005 (n + 1)).toNat

end

end A235410.P12159770930269075450

/-! ## A235410.P4803845112641731075

`A235413(A167499(n+3))`
-/

namespace A235410.P4803845112641731075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A167499 (n + 3)).toNat

end

end A235410.P4803845112641731075

/-! ## A235410.P349412388436369811

`A235413(A056000(n)+15)`
-/

namespace A235410.P349412388436369811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A056000 n + 15).toNat

end

end A235410.P349412388436369811

/-! ## A235410.P615230808822574430

`A235413(eq[7, A066657(n)])`
-/

namespace A235410.P615230808822574430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235410.P615230808822574430

/-! ## A235410.P16235097763685582165

`A235413(eq[6, A131818(n+1)])`
-/

namespace A235410.P16235097763685582165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235410.P16235097763685582165

/-!
# A235411: Number of (n+1)X(6+1) 0..1 arrays with 2X2 subblock sums lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235411, there is no canonical definition to state claims against.
-/

/-! ## A235411.P12905366337366613233

`A235413(A374007(n+1))`
-/

namespace A235411.P12905366337366613233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A374007 (n + 1)).toNat

end

end A235411.P12905366337366613233

/-! ## A235411.P2842707475700904517

`A235413(A166136(n+4))`
-/

namespace A235411.P2842707475700904517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A166136 (n + 4)).toNat

end

end A235411.P2842707475700904517

/-! ## A235411.P1349127437427055762

`A235413(A056115(n)+21)`
-/

namespace A235411.P1349127437427055762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A056115 n + 21).toNat

end

end A235411.P1349127437427055762

/-! ## A235411.P11597227748661548923

`A235413(A055999(n+2)+12)`
-/

namespace A235411.P11597227748661548923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A055999 (n + 2) + 12).toNat

end

end A235411.P11597227748661548923

/-! ## A235411.P12542107661490963284

`A235413(eq[7, A131818(n+1)])`
-/

namespace A235411.P12542107661490963284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235411.P12542107661490963284

/-!
# A235412: Number of (n+1)X(7+1) 0..1 arrays with 2X2 subblock sums lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235412, there is no canonical definition to state claims against.
-/

/-! ## A235412.P2882724191409473587

`A235413(A374008(n+1))`
-/

namespace A235412.P2882724191409473587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A374008 (n + 1)).toNat

end

end A235412.P2882724191409473587

/-! ## A235412.P7973982007084199780

`A235413(eq[8, A131818(n+1)])`
-/

namespace A235412.P7973982007084199780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235412.P7973982007084199780

/-! ## A235412.P3855180549198390549

`A235413(eq[8, A185782(n+1)]+12)`
-/

namespace A235412.P3855180549198390549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 12)

end

end A235412.P3855180549198390549

/-! ## A235412.P14526886707047224237

`A235413(A055999(n+4))`
-/

namespace A235412.P14526886707047224237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (A055999 (n + 4)).toNat

end

end A235412.P14526886707047224237

/-! ## A235412.P8088023202752738592

`A235413(eq[4, A219347(n)])`
-/

namespace A235412.P8088023202752738592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235412.P8088023202752738592

/-!
# A235413: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with 2X2 subblock sums lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235413, there is no canonical definition to state claims against.
-/

/-! ## A235413.P1060954683144167861

`or(A004016(A107464(n)), A204039(n+1))`
-/

namespace A235413.P1060954683144167861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004016 (A107464 n).toNat) (A204039 (n + 1))

end

end A235413.P1060954683144167861

/-! ## A235413.P9037029935089877234

`or(A126696(A257617(n)), A204039(n+1))`
-/

namespace A235413.P9037029935089877234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126696 (A257617 n).toNat) (A204039 (n + 1))

end

end A235413.P9037029935089877234

/-! ## A235413.P4267399675385521820

`A303933(A001263(n+1))+A204039(n+1)`
-/

namespace A235413.P4267399675385521820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303933 (A001263 (n + 1)).toNat + A204039 (n + 1)

end

end A235413.P4267399675385521820

/-!
# A235414: Number of (n+1)X(2+1) 0..3 arrays with 2X2 subblock sums lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235414, there is no canonical definition to state claims against.
-/

/-! ## A235414.P2895552892322838902

`A235416(∑[n+1]+2)`
-/

namespace A235414.P2895552892322838902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235416 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235414.P2895552892322838902

/-! ## A235414.P16809316119902296215

`record[A010054(n)*A235416(n+2)]`
-/

namespace A235414.P16809316119902296215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235414.P16809316119902296215

/-! ## A235414.P14687203854499293542

`record[A235416(abs(A201163(n)))]`
-/

namespace A235414.P14687203854499293542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235416 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235414.P14687203854499293542

/-! ## A235414.P10912905055544523430

`record[A235416(Δ[A003453(n+5)])]`
-/

namespace A235414.P10912905055544523430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235416 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235414.P10912905055544523430

/-!
# A235415: Number of (n+1)X(3+1) 0..3 arrays with 2X2 subblock sums lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235415, there is no canonical definition to state claims against.
-/

/-! ## A235415.P5674028769906741332

`A235416(∑[n+2]+4)`
-/

namespace A235415.P5674028769906741332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235416 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235415.P5674028769906741332

/-! ## A235415.P14332220772516616045

`A235416(A167614(n+1))+A025439(n)`
-/

namespace A235415.P14332220772516616045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235416 (A167614 (n + 1)).toNat + A025439 n

end

end A235415.P14332220772516616045

/-! ## A235415.P3300180079042920057

`A235416(A167614(n+1))+A025469(n)`
-/

namespace A235415.P3300180079042920057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235416 (A167614 (n + 1)).toNat + A025469 n

end

end A235415.P3300180079042920057

/-! ## A235415.P10648281560139967614

`A235416(A167614(n+1))+A054908(n)`
-/

namespace A235415.P10648281560139967614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235416 (A167614 (n + 1)).toNat + A054908 n

end

end A235415.P10648281560139967614

/-!
# A235417: Number of (n+1)X(1+1) 0..2 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235417, there is no canonical definition to state claims against.
-/

/-! ## A235417.P11237206263820384085

`A235421(∑[n]+1)`
-/

namespace A235417.P11237206263820384085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235417.P11237206263820384085

/-! ## A235417.P62392913863937499

`A236282(∑[n]+1)`
-/

namespace A235417.P62392913863937499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236282 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235417.P62392913863937499

/-! ## A235417.P11018597676039697223

`record[A235421(A114091(n+1))]`
-/

namespace A235417.P11018597676039697223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235417.P11018597676039697223

/-! ## A235417.P5716803648425647011

`record[A235421(A286234(n+1))]`
-/

namespace A235417.P5716803648425647011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235417.P5716803648425647011

/-! ## A235417.P15137541807303182588

`record[A010054(n)*A235421(n+1)]`
-/

namespace A235417.P15137541807303182588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235417.P15137541807303182588

/-!
# A235418: Number of (n+1)X(2+1) 0..2 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235418, there is no canonical definition to state claims against.
-/

/-! ## A235418.P10887476832076948441

`A235421(∑[n+2])`
-/

namespace A235418.P10887476832076948441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235418.P10887476832076948441

/-! ## A235418.P5303659021800931786

`record[A235421(A198455(n+1))]`
-/

namespace A235418.P5303659021800931786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235418.P5303659021800931786

/-! ## A235418.P6765723706524585388

`record[root(A235421(n+2), A022168(n+2))]`
-/

namespace A235418.P6765723706524585388
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235421 (n + 2) : ℝ) ^ (1 / (A022168 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235418.P6765723706524585388

/-! ## A235418.P5868560107744091292

`record[root(A235421(n+2), A193592(n+2))]`
-/

namespace A235418.P5868560107744091292
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235421 (n + 2) : ℝ) ^ (1 / (A193592 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235418.P5868560107744091292

/-! ## A235418.P7121556278408477890

`A137794(A005940(n+1))*A235421(A000096(n+1))`
-/

namespace A235418.P7121556278408477890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137794 (A005940 (n + 1)).toNat * A235421 (A000096 (n + 1)).toNat

end

end A235418.P7121556278408477890

/-!
# A235419: Number of (n+1)X(3+1) 0..2 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235419, there is no canonical definition to state claims against.
-/

/-! ## A235419.P1627051452317873935

`A235421(∑[n+3]+1)`
-/

namespace A235419.P1627051452317873935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235419.P1627051452317873935

/-! ## A235419.P8634990412953548787

`A235421(A034856(n+2))+A025439(n)`
-/

namespace A235419.P8634990412953548787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (A034856 (n + 2)).toNat + A025439 n

end

end A235419.P8634990412953548787

/-! ## A235419.P4509486334667581514

`A235421(A034856(n+2))+A025465(n)`
-/

namespace A235419.P4509486334667581514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (A034856 (n + 2)).toNat + A025465 n

end

end A235419.P4509486334667581514

/-! ## A235419.P15742865827655484044

`A025792(n)*A235421(A034856(n+2))`
-/

namespace A235419.P15742865827655484044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025792 n * A235421 (A034856 (n + 2)).toNat

end

end A235419.P15742865827655484044

/-!
# A235420: Number of (n+1)X(4+1) 0..2 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235420, there is no canonical definition to state claims against.
-/

/-! ## A235420.P2060687390907147682

`A235421(A141214(n+1))`
-/

namespace A235420.P2060687390907147682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (A141214 (n + 1)).toNat

end

end A235420.P2060687390907147682

/-! ## A235420.P685144638473496731

`A235421(A055998(n+2))`
-/

namespace A235420.P685144638473496731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (A055998 (n + 2)).toNat

end

end A235420.P685144638473496731

/-! ## A235420.P3433739806552201600

`A235421(A155212(n)+5)`
-/

namespace A235420.P3433739806552201600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (A155212 n + 5).toNat

end

end A235420.P3433739806552201600

/-!
# A235421: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235421, there is no canonical definition to state claims against.
-/

/-! ## A235421.P13146538519630403068

`A236282(n+1)-A193581(A260620(n))`
-/

namespace A235421.P13146538519630403068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236282 (n + 1) - A193581 (A260620 n).toNat

end

end A235421.P13146538519630403068

/-!
# A235422: Number of (2+1)X(n+1) 0..2 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235422, there is no canonical definition to state claims against.
-/

/-! ## A235422.P12929656419992419443

`A235421(∑[n+1]+2)`
-/

namespace A235422.P12929656419992419443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235422.P12929656419992419443

/-! ## A235422.P11423857095257552465

`record[A235421(A114091(n+1)+1)]`
-/

namespace A235422.P11423857095257552465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235422.P11423857095257552465

/-! ## A235422.P3854511255109901477

`record[A235421(A286234(n+5)+1)]`
-/

namespace A235422.P3854511255109901477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (A286234 (n + 5) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235422.P3854511255109901477

/-! ## A235422.P4218374760653214944

`record[A010054(n)*A235421(n+2)]`
-/

namespace A235422.P4218374760653214944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235421 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235422.P4218374760653214944

/-! ## A235422.P11257588527571173202

`record[A235421(n+3)^A110330(n)]`
-/

namespace A235422.P11257588527571173202
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235421 (n + 3) : ℚ) ^ (A110330 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235422.P11257588527571173202

/-!
# A235423: Number of (3+1)X(n+1) 0..2 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235423, there is no canonical definition to state claims against.
-/

/-! ## A235423.P9254354305079649810

`A235421(∑[n+2]+4)`
-/

namespace A235423.P9254354305079649810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235423.P9254354305079649810

/-! ## A235423.P2495851139135561603

`record[gcd(A025581(n), A235421(n+4))]`
-/

namespace A235423.P2495851139135561603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A235421 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235423.P2495851139135561603

/-! ## A235423.P16966748854420199535

`A235421(A167614(n+1))+n-∑{digits}[n, #]`
-/

namespace A235423.P16966748854420199535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (A167614 (n + 1)).toNat + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A235423.P16966748854420199535

/-! ## A235423.P4339014224102523550

`A235421(A167614(n+1))+A011731(n)`
-/

namespace A235423.P4339014224102523550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (A167614 (n + 1)).toNat + A011731 n

end

end A235423.P4339014224102523550

/-! ## A235423.P16852379501291222227

`A235421(A167614(n+1))+A025439(n)`
-/

namespace A235423.P16852379501291222227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (A167614 (n + 1)).toNat + A025439 n

end

end A235423.P16852379501291222227

/-!
# A235424: Number of (4+1)X(n+1) 0..2 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235424, there is no canonical definition to state claims against.
-/

/-! ## A235424.P472450684488530413

`A235421(∑[n+3]+7)`
-/

namespace A235424.P472450684488530413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235424.P472450684488530413

/-!
# A235425: Numbers k such that between k and the next prime there are gpf(k) numbers, where gpf(k) denotes the largest prime factor of k.

The programs for A235425, there is no canonical definition to state claims against.
-/

/-! ## A235425.P12827932143225883598

`A175086(A180200(n+1)+2*n+1)`
-/

namespace A235425.P12827932143225883598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175086 (A180200 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A235425.P12827932143225883598

/-!
# A235426: Number of (n+1)X(1+1) 0..3 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235426, there is no canonical definition to state claims against.
-/

/-! ## A235426.P4263501828361210842

`A235665(∑[n]+1)`
-/

namespace A235426.P4263501828361210842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235665 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235426.P4263501828361210842

/-! ## A235426.P5072452371475671804

`record[A235665(n+1)/A157640(n)]`
-/

namespace A235426.P5072452371475671804
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235665 (n + 1) : ℚ) / (A157640 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235426.P5072452371475671804

/-! ## A235426.P8251986924751083226

`record[A235665(n+1)/A157641(n)]`
-/

namespace A235426.P8251986924751083226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235665 (n + 1) : ℚ) / (A157641 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235426.P8251986924751083226

/-! ## A235426.P9984409417377877105

`record[root(A235665(n+1), A013619(n))]`
-/

namespace A235426.P9984409417377877105
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235665 (n + 1) : ℝ) ^ (1 / (A013619 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235426.P9984409417377877105

/-! ## A235426.P12803392835878252953

`record[lcm(A103452(n), A235665(n+1))]`
-/

namespace A235426.P12803392835878252953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103452 n) (A235665 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235426.P12803392835878252953

/-!
# A235427: Number of (n+1)X(2+1) 0..3 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235427, there is no canonical definition to state claims against.
-/

/-! ## A235427.P15151768295800673643

`A235430(∑[n+1]+2)`
-/

namespace A235427.P15151768295800673643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235430 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235427.P15151768295800673643

/-! ## A235427.P5147128502823823863

`record[root(A235430(n+2), A013619(n))]`
-/

namespace A235427.P5147128502823823863
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235430 (n + 2) : ℝ) ^ (1 / (A013619 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235427.P5147128502823823863

/-! ## A235427.P3819362585116512420

`record[A235430(abs(A201163(n)))]`
-/

namespace A235427.P3819362585116512420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235430 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235427.P3819362585116512420

/-!
# A235428: Number of (n+1)X(3+1) 0..3 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235428, there is no canonical definition to state claims against.
-/

/-! ## A235428.P2768713594668039349

`A235430(A167614(n+1))`
-/

namespace A235428.P2768713594668039349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235430 (A167614 (n + 1)).toNat

end

end A235428.P2768713594668039349

/-! ## A235428.P6820122033383525736

`A235430(A020752(n)-1)`
-/

namespace A235428.P6820122033383525736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235430 (A020752 n - 1).toNat

end

end A235428.P6820122033383525736

/-!
# A235429: Number of (n+1)X(4+1) 0..3 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235429, there is no canonical definition to state claims against.
-/

/-! ## A235429.P16697342515393726443

`A235430(A020752(n+1))`
-/

namespace A235429.P16697342515393726443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235430 (A020752 (n + 1)).toNat

end

end A235429.P16697342515393726443

/-! ## A235429.P5730767217171315964

`A235430(A167614(n+2)+1)`
-/

namespace A235429.P5730767217171315964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235430 (A167614 (n + 2) + 1).toNat

end

end A235429.P5730767217171315964

/-!
# A235431: The smallest positive number that must be added to or subtracted from the sum of the first n primes in order to get a prime.

The programs for A235431, there is no canonical definition to state claims against.
-/

/-! ## A235431.P2309689982553698439

`A051700(∑[p?[xor(1, n)]])`
-/

namespace A235431.P2309689982553698439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235431.P2309689982553698439

/-! ## A235431.P17745599784988633375

`A051700(∑[p?[a(n-1)+2]-1]+n+1)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A235431.P17745599784988633375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1).toNat

end

end A235431.P17745599784988633375

/-! ## A235431.P6497988889804693756

`A051700(A007504(n+1))`
-/

namespace A235431.P6497988889804693756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A007504 (n + 1)).toNat

end

end A235431.P6497988889804693756

/-! ## A235431.P4223974994608268441

`A051700(∑[record[A051698(n)]])`
-/

namespace A235431.P4223974994608268441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235431.P4223974994608268441

/-! ## A235431.P15003408294492564802

`A051700(∑[p?[A001057(n)]])`
-/

namespace A235431.P15003408294492564802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235431.P15003408294492564802

/-! ## A235431.P13446321445186873184

`A051700(∑[A000040(n+1)])`
-/

namespace A235431.P13446321445186873184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235431.P13446321445186873184

/-! ## A235431.P9526883020968700100

`A051700(∑[sqrt(A001248(n+1))])`
-/

namespace A235431.P9526883020968700100
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A235431.P9526883020968700100

/-! ## A235431.P2874677206785307810

`A051700(∑[record[A006530(n+2)]])`
-/

namespace A235431.P2874677206785307810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235431.P2874677206785307810

/-! ## A235431.P8571239065314646945

`A051700(∑[record[A014963(n+2)]])`
-/

namespace A235431.P8571239065314646945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235431.P8571239065314646945

/-! ## A235431.P4420792346873006947

`A051700(∑[record[A020639(n+2)]])`
-/

namespace A235431.P4420792346873006947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235431.P4420792346873006947

/-!
# A235432: Number of (n+1) X (1+1) 0..2 arrays with the difference between each 2 X 2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235432, there is no canonical definition to state claims against.
-/

/-! ## A235432.P9298475001794129799

`A236490(∑[n]+1)`
-/

namespace A235432.P9298475001794129799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235432.P9298475001794129799

/-! ## A235432.P11891711011359236157

`record[A010054(n)*A236490(n+1)]`
-/

namespace A235432.P11891711011359236157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235432.P11891711011359236157

/-! ## A235432.P7960823024640129560

`record[root(A236490(n+1), A059268(n))]`
-/

namespace A235432.P7960823024640129560
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236490 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235432.P7960823024640129560

/-! ## A235432.P16775626597513755539

`record[gcd(A136431(n), A236490(n+1))]`
-/

namespace A235432.P16775626597513755539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A136431 n) (A236490 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235432.P16775626597513755539

/-! ## A235432.P15004768426086147859

`record[A236490(n+1)/A215474(n+1)²]`
-/

namespace A235432.P15004768426086147859
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236490 (n + 1) : ℚ) / (A215474 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235432.P15004768426086147859

/-!
# A235433: Number of (n+1) X (2+1) 0..2 arrays with the difference between each 2 X 2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235433, there is no canonical definition to state claims against.
-/

/-! ## A235433.P2901196553665668179

`A235437(∑[n+1]+2)`
-/

namespace A235433.P2901196553665668179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235437 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235433.P2901196553665668179

/-! ## A235433.P579096152045376409

`record[root(A235437(n+2), A002260(n+1))]`
-/

namespace A235433.P579096152045376409
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235437 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235433.P579096152045376409

/-! ## A235433.P36621479204225475

`A235437(A373662(n+1))%A030629(n+1)`
-/

namespace A235433.P36621479204225475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235437 (A373662 (n + 1)).toNat) (A030629 (n + 1))

end

end A235433.P36621479204225475

/-! ## A235433.P15485587183214871477

`record[root(A235437(n+2), A132625(n+1))]`
-/

namespace A235433.P15485587183214871477
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235437 (n + 2) : ℝ) ^ (1 / (A132625 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235433.P15485587183214871477

/-!
# A235434: Number of (n+1)X(3+1) 0..2 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235434, there is no canonical definition to state claims against.
-/

/-! ## A235434.P17345277212699378841

`A235437(∑[n+2]+4)`
-/

namespace A235434.P17345277212699378841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235437 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235434.P17345277212699378841

/-! ## A235434.P774646845456408566

`or(1, A235437(A167614(n+1)))`
-/

namespace A235434.P774646845456408566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235437 (A167614 (n + 1)).toNat)

end

end A235434.P774646845456408566

/-! ## A235434.P8466769783406728011

`A235437(A167614(n+1))+A025442(n)`
-/

namespace A235434.P8466769783406728011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235437 (A167614 (n + 1)).toNat + A025442 n

end

end A235434.P8466769783406728011

/-! ## A235434.P1596209871755912588

`A235437(A167614(n+1))+A185284(n)`
-/

namespace A235434.P1596209871755912588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235437 (A167614 (n + 1)).toNat + A185284 n

end

end A235434.P1596209871755912588

/-! ## A235434.P15565085571040614823

`A235437(A167614(n+1))*A287384(n)`
-/

namespace A235434.P15565085571040614823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235437 (A167614 (n + 1)).toNat * A287384 n

end

end A235434.P15565085571040614823

/-!
# A235435: Number of (n+1)X(4+1) 0..2 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235435, there is no canonical definition to state claims against.
-/

/-! ## A235435.P12609639001898948909

`A235437(A141214(n)+7)`
-/

namespace A235435.P12609639001898948909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235437 (A141214 n + 7).toNat

end

end A235435.P12609639001898948909

/-! ## A235435.P1581645925208685115

`A235437(A052905(n)+9)`
-/

namespace A235435.P1581645925208685115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235437 (A052905 n + 9).toNat

end

end A235435.P1581645925208685115

/-! ## A235435.P2141193449505368955

`A235437(A055999(n)+10)`
-/

namespace A235435.P2141193449505368955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235437 (A055999 n + 10).toNat

end

end A235435.P2141193449505368955

/-! ## A235435.P14157174614148139652

`A235437(A167614(n+2)+1)`
-/

namespace A235435.P14157174614148139652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235437 (A167614 (n + 2) + 1).toNat

end

end A235435.P14157174614148139652

/-!
# A235436: Number of (n+1)X(5+1) 0..2 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235436, there is no canonical definition to state claims against.
-/

/-! ## A235436.P17573670742695776421

`A235437(A374005(n+1))`
-/

namespace A235436.P17573670742695776421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235437 (A374005 (n + 1)).toNat

end

end A235436.P17573670742695776421

/-! ## A235436.P12451539433638896759

`A235437(Δ[A023545(n+1)])`
-/

namespace A235436.P12451539433638896759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235437 (f1 (n + 1) - f1 n).toNat

end

end A235436.P12451539433638896759

/-!
# A235437: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235437, there is no canonical definition to state claims against.
-/

/-! ## A235437.P6118072666796611525

`A236490(n+1)+A081157(A007579(n))`
-/

namespace A235437.P6118072666796611525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (n + 1) + A081157 (A007579 n).toNat

end

end A235437.P6118072666796611525

/-!
# A235438: Number of (n+1)X(2+1) 0..2 arrays with 2X2 subblock sums lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235438, there is no canonical definition to state claims against.
-/

/-! ## A235438.P9217287689578949391

`A235441(∑[n+1]+2)`
-/

namespace A235438.P9217287689578949391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235441 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235438.P9217287689578949391

/-! ## A235438.P3207106893346297305

`record[A235441(A114091(n+1)+1)]`
-/

namespace A235438.P3207106893346297305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235441 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235438.P3207106893346297305

/-! ## A235438.P10624521738418470598

`record[A010054(n)*A235441(n+2)]`
-/

namespace A235438.P10624521738418470598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235441 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235438.P10624521738418470598

/-! ## A235438.P13519192190943157134

`record[gcd(A002262(n), A235441(n+2))]`
-/

namespace A235438.P13519192190943157134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235441 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235438.P13519192190943157134

/-! ## A235438.P5204930990931622686

`record[root(A235441(n+2), A204201(n+1))]`
-/

namespace A235438.P5204930990931622686
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235441 (n + 2) : ℝ) ^ (1 / (A204201 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235438.P5204930990931622686

/-!
# A235439: Number of (n+1)X(3+1) 0..2 arrays with 2X2 subblock sums lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235439, there is no canonical definition to state claims against.
-/

/-! ## A235439.P13743976678131490468

`A235441(∑[n+2]+4)`
-/

namespace A235439.P13743976678131490468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235441 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235439.P13743976678131490468

/-! ## A235439.P14097655930739670600

`A235441(A167614(n+1))+A011744(n)`
-/

namespace A235439.P14097655930739670600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235441 (A167614 (n + 1)).toNat + A011744 n

end

end A235439.P14097655930739670600

/-! ## A235439.P15230671045213185116

`A235441(A167614(n+1))+A025439(n)`
-/

namespace A235439.P15230671045213185116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235441 (A167614 (n + 1)).toNat + A025439 n

end

end A235439.P15230671045213185116

/-! ## A235439.P1170715529873585455

`A235441(A167614(n+1))+A025469(n)`
-/

namespace A235439.P1170715529873585455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235441 (A167614 (n + 1)).toNat + A025469 n

end

end A235439.P1170715529873585455

/-!
# A235440: Number of (n+1)X(4+1) 0..2 arrays with 2X2 subblock sums lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235440, there is no canonical definition to state claims against.
-/

/-! ## A235440.P11843754286052079614

`A235441(A374004(n+1))`
-/

namespace A235440.P11843754286052079614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235441 (A374004 (n + 1)).toNat

end

end A235440.P11843754286052079614

/-! ## A235440.P12608523319302829196

`A235441(A141214(n)+7)`
-/

namespace A235440.P12608523319302829196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235441 (A141214 n + 7).toNat

end

end A235440.P12608523319302829196

/-! ## A235440.P1235782736224726295

`A235441(A052905(n)+9)`
-/

namespace A235440.P1235782736224726295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235441 (A052905 n + 9).toNat

end

end A235440.P1235782736224726295

/-! ## A235440.P2435028044483715170

`A235441(A055999(n)+10)`
-/

namespace A235440.P2435028044483715170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235441 (A055999 n + 10).toNat

end

end A235440.P2435028044483715170

/-!
# A235442: Number of (n+1)X(n+1) 0..1 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235442, there is no canonical definition to state claims against.
-/

/-! ## A235442.P18424103360368201139

`A235449((n+1)²+n²)`
-/

namespace A235442.P18424103360368201139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 ((n + 1) ^ 2 + n ^ 2)

end

end A235442.P18424103360368201139

/-!
# A235443: Number of (n+1) X (2+1) 0..1 arrays with the difference between each 2 X 2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235443, there is no canonical definition to state claims against.
-/

/-! ## A235443.P2668169964943059660

`A235449(∑[n+1]+2)`
-/

namespace A235443.P2668169964943059660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235443.P2668169964943059660

/-! ## A235443.P17529829048286992696

`record[A235449(A008795(n)+2)]`
-/

namespace A235443.P17529829048286992696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235443.P17529829048286992696

/-! ## A235443.P3747877339901077651

`record[root(A235449(n+2), A200370(n+1))]`
-/

namespace A235443.P3747877339901077651
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235449 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235443.P3747877339901077651

/-! ## A235443.P11340964273072931084

`record[root(A235449(n+2), A302367(n+1))]`
-/

namespace A235443.P11340964273072931084
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235449 (n + 2) : ℝ) ^ (1 / (A302367 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235443.P11340964273072931084

/-! ## A235443.P9032571444485966654

`record[A235449(A238531(n)+A000007(n))]`
-/

namespace A235443.P9032571444485966654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A238531 n + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235443.P9032571444485966654

/-!
# A235444: Number of (n+1) X (3+1) 0..1 arrays with the difference between each 2 X 2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235444, there is no canonical definition to state claims against.
-/

/-! ## A235444.P14344142427827888132

`A235449(∑[n+2]+4)`
-/

namespace A235444.P14344142427827888132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235444.P14344142427827888132

/-! ## A235444.P10013252536579405573

`lcm(2, A235449(A167614(n+1)))`
-/

namespace A235444.P10013252536579405573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235449 (A167614 (n + 1)).toNat)

end

end A235444.P10013252536579405573

/-! ## A235444.P9386945765062987555

`A235449(A167614(n+1))+A025443(n)`
-/

namespace A235444.P9386945765062987555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A167614 (n + 1)).toNat + A025443 n

end

end A235444.P9386945765062987555

/-! ## A235444.P3949517790986823707

`or(A005871(n), A235449(A167614(n+1)))`
-/

namespace A235444.P3949517790986823707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005871 n) (A235449 (A167614 (n + 1)).toNat)

end

end A235444.P3949517790986823707

/-! ## A235444.P7984245049375433777

`A235449(A167614(n+1))%A235678(n+1)`
-/

namespace A235444.P7984245049375433777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235449 (A167614 (n + 1)).toNat) (A235678 (n + 1))

end

end A235444.P7984245049375433777

/-!
# A235445: Number of (n+1)X(4+1) 0..1 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235445, there is no canonical definition to state claims against.
-/

/-! ## A235445.P13518757249008022375

`A235449(A374004(n+1))`
-/

namespace A235445.P13518757249008022375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A374004 (n + 1)).toNat

end

end A235445.P13518757249008022375

/-! ## A235445.P9052230015905291690

`A235449(A052905(n)+9)`
-/

namespace A235445.P9052230015905291690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A052905 n + 9).toNat

end

end A235445.P9052230015905291690

/-! ## A235445.P3969127282725047909

`A235449(A055999(n)+10)`
-/

namespace A235445.P3969127282725047909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A055999 n + 10).toNat

end

end A235445.P3969127282725047909

/-! ## A235445.P7388537282630727248

`A235449(A167614(n+2)+1)`
-/

namespace A235445.P7388537282630727248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A167614 (n + 2) + 1).toNat

end

end A235445.P7388537282630727248

/-! ## A235445.P18190343113643135263

`A235449(A141214(n+1))`
-/

namespace A235445.P18190343113643135263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A141214 (n + 1)).toNat

end

end A235445.P18190343113643135263

/-!
# A235446: Number of (n+1)X(5+1) 0..1 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235446, there is no canonical definition to state claims against.
-/

/-! ## A235446.P17570430185663457959

`A235449(A374005(n+1))`
-/

namespace A235446.P17570430185663457959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A374005 (n + 1)).toNat

end

end A235446.P17570430185663457959

/-! ## A235446.P9039776964614981908

`A235449(A167499(n+3))`
-/

namespace A235446.P9039776964614981908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A167499 (n + 3)).toNat

end

end A235446.P9039776964614981908

/-! ## A235446.P6321609286630340930

`A235449(A155212(n)+13)`
-/

namespace A235446.P6321609286630340930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A155212 n + 13).toNat

end

end A235446.P6321609286630340930

/-! ## A235446.P1514673434652347057

`A235449(A056000(n)+15)`
-/

namespace A235446.P1514673434652347057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A056000 n + 15).toNat

end

end A235446.P1514673434652347057

/-! ## A235446.P17105701099140538168

`A235449(eq[7, A066657(n)])`
-/

namespace A235446.P17105701099140538168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235446.P17105701099140538168

/-!
# A235447: Number of (n+1) X (6+1) 0..1 arrays with the difference between each 2 X 2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235447, there is no canonical definition to state claims against.
-/

/-! ## A235447.P17550061221368781111

`A235449(A374007(n+1))`
-/

namespace A235447.P17550061221368781111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A374007 (n + 1)).toNat

end

end A235447.P17550061221368781111

/-! ## A235447.P15598812272666960338

`A235449(A052905(n+3))`
-/

namespace A235447.P15598812272666960338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A052905 (n + 3)).toNat

end

end A235447.P15598812272666960338

/-! ## A235447.P15893313953116743164

`A235449(A056119(n)+16)`
-/

namespace A235447.P15893313953116743164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A056119 n + 16).toNat

end

end A235447.P15893313953116743164

/-! ## A235447.P17436335667742142661

`A235449(eq[5, A193592(n)])`
-/

namespace A235447.P17436335667742142661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235447.P17436335667742142661

/-! ## A235447.P11124088941520307657

`A235449(eq[6, A200370(n+1)])`
-/

namespace A235447.P11124088941520307657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235447.P11124088941520307657

/-!
# A235448: Number of (n+1)X(7+1) 0..1 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235448, there is no canonical definition to state claims against.
-/

/-! ## A235448.P18289700974080170704

`A235449(A374008(n+1))`
-/

namespace A235448.P18289700974080170704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (A374008 (n + 1)).toNat

end

end A235448.P18289700974080170704

/-! ## A235448.P10900013705877246361

`A235449(eq[6, A193592(n)])`
-/

namespace A235448.P10900013705877246361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235448.P10900013705877246361

/-! ## A235448.P17751670829323516030

`A235449(eq[7, A200370(n+1)])`
-/

namespace A235448.P17751670829323516030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235448.P17751670829323516030

/-! ## A235448.P10334214156671417772

`A235449(eq[10, A185782(n+1)])`
-/

namespace A235448.P10334214156671417772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235448.P10334214156671417772

/-!
# A235449: T(n,k) = Number of (n+1) X (k+1) 0..1 arrays with the difference between each 2 X 2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235449, there is no canonical definition to state claims against.
-/

/-! ## A235449.P15072469119584848860

`A235679(n+1)+A037913(A010683(n))`
-/

namespace A235449.P15072469119584848860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (n + 1) + A037913 (A010683 n).toNat

end

end A235449.P15072469119584848860

/-! ## A235449.P14049410821178819837

`A235679(n+1)+A000122(A076044(n))`
-/

namespace A235449.P14049410821178819837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (n + 1) + A000122 (A076044 n).toNat

end

end A235449.P14049410821178819837

/-! ## A235449.P12730569861042531624

`A241454(A157211(n))+A235679(n+1)`
-/

namespace A235449.P12730569861042531624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241454 (A157211 n).toNat + A235679 (n + 1)

end

end A235449.P12730569861042531624

/-!
# A235450: A strong divisibility sequence associated with the algebraic integer 2 + 3*sqrt(3).

The programs for A235450, there is no canonical definition to state claims against.
-/

/-! ## A235450.P17387549387298388491

`A051953(A249952(n+1))-A180813(3*n+4)`
-/

namespace A235450.P17387549387298388491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A249952 (n + 1)).toNat - A180813 (3 * n + 4)

end

end A235450.P17387549387298388491

/-!
# A235451: Number of length n words on alphabet {0,1,2} of the form 0^(i)1^(j)2^(k) such that i=j or j=k.

The programs for A235451, the canonical program `A235451.P10391140467246484441` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235451 has offset 0).

The definition of A235451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235451.P10391140467246484441

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3, a(4)=6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A235451

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P10391140467246484441.Spec : Prop :=
  ∀ n, P10391140467246484441.a n = A235451 n

theorem P10391140467246484441.correct : P10391140467246484441.Spec := by
  intro n
  simp only [A235451]

end A235451

/-! ## A235451.P9549949500904842261

`or(1, n²)%3+n`
-/

namespace A235451.P9549949500904842261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2) % 3 + n

end

end A235451.P9549949500904842261

namespace A235451

/-- `or(1, n²)%3+n` -/
def P9549949500904842261.Spec : Prop :=
  ∀ n, (P9549949500904842261.a n : ℤ) = A235451 n

end A235451

/-! ## A235451.P9517631189188960630

`(gcd(6, n)%5)%3+n`
-/

namespace A235451.P9517631189188960630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 n % 5 % 3 + n

end

end A235451.P9517631189188960630

namespace A235451

/-- `(gcd(6, n)%5)%3+n` -/
def P9517631189188960630.Spec : Prop :=
  ∀ n, (P9517631189188960630.a n : ℤ) = A235451 n

end A235451

/-! ## A235451.P1894004379817407693

`char[comp[3*n]]+or(1, n)`
-/

namespace A235451.P1894004379817407693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.lor 1 n

end

end A235451.P1894004379817407693

namespace A235451

/-- `char[comp[3*n]]+or(1, n)` -/
def P1894004379817407693.Spec : Prop :=
  ∀ n, (P1894004379817407693.a n : ℤ) = A235451 n

end A235451

/-! ## A235451.P9883788059896705743

`or(1, n)-char[3*n]+1`
-/

namespace A235451.P9883788059896705743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1

end

end A235451.P9883788059896705743

namespace A235451

/-- `or(1, n)-char[3*n]+1` -/
def P9883788059896705743.Spec : Prop :=
  ∀ n, P9883788059896705743.a n = A235451 n

end A235451

/-! ## A235451.P7244218539095137260

`or(1, n)-(char[3*n]-1)`
-/

namespace A235451.P7244218539095137260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1)

end

end A235451.P7244218539095137260

namespace A235451

/-- `or(1, n)-(char[3*n]-1)` -/
def P7244218539095137260.Spec : Prop :=
  ∀ n, P7244218539095137260.a n = A235451 n

end A235451

/-! ## A235451.P8090687014650721348

`∑[(2*n)%3+(-1)^n]`
-/

namespace A235451.P8090687014650721348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n % 3 : ℕ) : ℤ) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235451.P8090687014650721348

namespace A235451

/-- `∑[(2*n)%3+(-1)^n]` -/
def P8090687014650721348.Spec : Prop :=
  ∀ n, P8090687014650721348.a n = A235451 n

end A235451

/-! ## A235451.P4752442832480552679

`∑[∑[ogf((1+2x+3x^2)/(1+2x+2x^2+x^3))]]`
-/

namespace A235451.P4752442832480552679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, 2, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235451.P4752442832480552679

namespace A235451

/-- `∑[∑[ogf((1+2x+3x^2)/(1+2x+2x^2+x^3))]]` -/
def P4752442832480552679.Spec : Prop :=
  ∀ n, P4752442832480552679.a n = A235451 n

end A235451

/-! ## A235451.P8822039826185680842

`(a(n-2)+1)%3+n` with `a(0)=1, a(1)=2`
-/

namespace A235451.P8822039826185680842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 2) + 1) % 3 + n

end

end A235451.P8822039826185680842

namespace A235451

/-- `(a(n-2)+1)%3+n` -/
def P8822039826185680842.Spec : Prop :=
  ∀ n, (P8822039826185680842.a n : ℤ) = A235451 n

end A235451

/-! ## A235451.P16879052173781305742

`n²%3+n+1-n%2`
-/

namespace A235451.P16879052173781305742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 % 3 + (n + 1) : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A235451.P16879052173781305742

namespace A235451

/-- `n²%3+n+1-n%2` -/
def P16879052173781305742.Spec : Prop :=
  ∀ n, P16879052173781305742.a n = A235451 n

end A235451

/-! ## A235451.P6989577827233635433

`round(2/gcd(n+3, 2*n)+n)`
-/

namespace A235451.P6989577827233635433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (Nat.gcd (n + 3) (2 * n) : ℚ) + (n : ℚ))

end

end A235451.P6989577827233635433

namespace A235451

/-- `round(2/gcd(n+3, 2*n)+n)` -/
def P6989577827233635433.Spec : Prop :=
  ∀ n, P6989577827233635433.a n = A235451 n

end A235451

/-! ## A235451.P2953599325808981357

`n+2-∑{p}[n+3, floor(3/#)]`
-/

namespace A235451.P2953599325808981357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n), ⌊3 / (p : ℚ)⌋

end

end A235451.P2953599325808981357

namespace A235451

/-- `n+2-∑{p}[n+3, floor(3/#)]` -/
def P2953599325808981357.Spec : Prop :=
  ∀ n, P2953599325808981357.a n = A235451 n

end A235451

/-! ## A235451.P14489723791238965356

`n-(2-a(n-2))%3` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A235451.P14489723791238965356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (n : ℤ) - Int.tmod (2 - a (n - 2)) 3

end

end A235451.P14489723791238965356

namespace A235451

/-- `n-(2-a(n-2))%3` -/
def P14489723791238965356.Spec : Prop :=
  ∀ n, P14489723791238965356.a n = A235451 n

end A235451

/-! ## A235451.P1808164774224192703

`∑[floor(a(n-2))]-a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A235451.P1808164774224192703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1) - a (n - 2)

end

end A235451.P1808164774224192703

namespace A235451

/-- `∑[floor(a(n-2))]-a(n-1)-a(n-2)` -/
def P1808164774224192703.Spec : Prop :=
  ∀ n, P1808164774224192703.a n = A235451 n

end A235451

/-! ## A235451.P13925017392463796877

`A117447(n)+n`
-/

namespace A235451.P13925017392463796877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117447 n + (n : ℤ)

end

end A235451.P13925017392463796877

namespace A235451

/-- `A117447(n)+n` -/
def P13925017392463796877.Spec : Prop :=
  ∀ n, P13925017392463796877.a n = A235451 n

end A235451

/-! ## A235451.P1534497305568144244

`n+3-A083039(n+3)`
-/

namespace A235451.P1534497305568144244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A083039 (n + 3)

end

end A235451.P1534497305568144244

namespace A235451

/-- `n+3-A083039(n+3)` -/
def P1534497305568144244.Spec : Prop :=
  ∀ n, P1534497305568144244.a n = A235451 n

end A235451

/-! ## A235451.P1432441416886802459

`n+2-A001221(gcd(n-3, 4*n))`
-/

namespace A235451.P1432441416886802459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A001221 (Int.gcd ((n : ℤ) - 3) (4 * n : ℤ))

end

end A235451.P1432441416886802459

namespace A235451

/-- `n+2-A001221(gcd(n-3, 4*n))` -/
def P1432441416886802459.Spec : Prop :=
  ∀ n, P1432441416886802459.a n = A235451 n

end A235451

/-! ## A235451.P223336765962592499

`2*n-(a(n-1)-A000005(gcd(n+1, n-2)))` with `a(0)=1`
-/

namespace A235451.P223336765962592499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - (a (n - 1) - A000005 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 2)))

end

end A235451.P223336765962592499

namespace A235451

/-- `2*n-(a(n-1)-A000005(gcd(n+1, n-2)))` -/
def P223336765962592499.Spec : Prop :=
  ∀ n, P223336765962592499.a n = A235451 n

end A235451

/-! ## A235451.P16342460678732835891

`A105637(n)+A008619(n)`
-/

namespace A235451.P16342460678732835891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105637 n + A008619 n

end

end A235451.P16342460678732835891

namespace A235451

/-- `A105637(n)+A008619(n)` -/
def P16342460678732835891.Spec : Prop :=
  ∀ n, P16342460678732835891.a n = A235451 n

end A235451

/-! ## A235451.P13208506813662915183

`A109613(n)+A011655(n)`
-/

namespace A235451.P13208506813662915183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A011655 n

end

end A235451.P13208506813662915183

namespace A235451

/-- `A109613(n)+A011655(n)` -/
def P13208506813662915183.Spec : Prop :=
  ∀ n, P13208506813662915183.a n = A235451 n

end A235451

/-!
# A235452: Take the union of all the sequences Collatz(i) for i <= n. The number a(n) is the largest of consecutive numbers beginning with 1.

The programs for A235452, there is no canonical definition to state claims against.
-/

/-! ## A235452.P12060097600368695235

`A263716(A395127(n+1))-1`
-/

namespace A235452.P12060097600368695235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263716 (A395127 (n + 1)).toNat - 1

end

end A235452.P12060097600368695235

/-! ## A235452.P15376764483117677694

`A263716(∑[A222118(n+1)])-1`
-/

namespace A235452.P15376764483117677694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263716 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A235452.P15376764483117677694

/-!
# A235454: Number of non-equivalent (mod D_4) ways to arrange 3 points on an n X n square grid so that they are not collinear.

The programs for A235454, there is no canonical definition to state claims against.
-/

/-! ## A235454.P12890242613964731398

`A235453((n+2)²-(n-1))`
-/

namespace A235454.P12890242613964731398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235453 (((n + 2) ^ 2 : ℤ) - ((n : ℤ) - 1)).toNat

end

end A235454.P12890242613964731398

/-! ## A235454.P14212280888043772931

`record[gcd(A048994(n), A235453(2*n+3))]`
-/

namespace A235454.P14212280888043772931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048994 n) (A235453 (2 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235454.P14212280888043772931

/-!
# A235455: Number of non-equivalent (mod D_4) ways to arrange 4 points on an n X n square grid so that no three points are collinear.

The programs for A235455, there is no canonical definition to state claims against.
-/

/-! ## A235455.P836918715704004940

`A235453((n+2)²-(n-2))`
-/

namespace A235455.P836918715704004940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235453 (((n + 2) ^ 2 : ℤ) - ((n : ℤ) - 2)).toNat

end

end A235455.P836918715704004940

/-!
# A235456: Number of non-equivalent (mod D_4) ways to arrange 5 points on an n X n square grid so that no three points are collinear.

The programs for A235456, there is no canonical definition to state claims against.
-/

/-! ## A235456.P1975726020880318260

`A235453((n+3)²-(n-2))`
-/

namespace A235456.P1975726020880318260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235453 (((n + 3) ^ 2 : ℤ) - ((n : ℤ) - 2)).toNat

end

end A235456.P1975726020880318260

/-!
# A235457: Number of non-equivalent (mod D_4) ways to arrange 6 points on an n X n square grid so that no three points are collinear.

The programs for A235457, there is no canonical definition to state claims against.
-/

/-! ## A235457.P16311106918705221106

`A235453(2*(∑[n+2]+4))`
-/

namespace A235457.P16311106918705221106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235453 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 4))

end

end A235457.P16311106918705221106

/-!
# A235458: Number of non-equivalent (mod D_4) ways to arrange 7 points on an n X n square grid so that no three points are collinear.

The programs for A235458, there is no canonical definition to state claims against.
-/

/-! ## A235458.P8385005935986849455

`A235453(A028387(n+2)+8)`
-/

namespace A235458.P8385005935986849455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235453 (A028387 (n + 2) + 8).toNat

end

end A235458.P8385005935986849455

/-! ## A235458.P7014433043572680986

`A235453(A007635(n+1)+6*n+2)`
-/

namespace A235458.P7014433043572680986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235453 (A007635 (n + 1) + (6 * n + 2 : ℤ)).toNat

end

end A235458.P7014433043572680986

/-! ## A235458.P16291666799030869780

`A235453(A167614(n+1)+A167614(n+3))`
-/

namespace A235458.P16291666799030869780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235453 (A167614 (n + 1) + A167614 (n + 3)).toNat

end

end A235458.P16291666799030869780

/-!
# A235459: Number of facets of the correlation polytope of degree n.

The programs for A235459, there is no canonical definition to state claims against.
-/

/-! ## A235459.P3527426772330745398

`A000224(∏[A285160(n+2)])`
-/

namespace A235459.P3527426772330745398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235459.P3527426772330745398

/-!
# A235461: Primes whose base-4 representation also is the base 2-representation of a prime.

The programs for A235461, the canonical program `A235461.P18008410030691594039` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235461 has offset 1).

The definition of A235461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235461.P17852060142164674871

`A000695(A152079(n+1))`
-/

namespace A235461.P17852060142164674871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A152079 (n + 1)).toNat

end

end A235461.P17852060142164674871

namespace A235461

/-- `A000695(A152079(n+1))` -/
def P17852060142164674871.Spec : Prop :=
  ∀ n, P17852060142164674871.a n = A235461 (n + 1)

end A235461

/-! ## A235461.P18008410030691594039

`∩[A000695(A008578(n+1)), A077718(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A235461

/-- `∩[A000695(A008578(n+1)), A077718(n+1)]` -/
def P18008410030691594039.Spec : Prop :=
  ∀ n, (P18008410030691594039.a n : ℤ) = A235461 (n + 1)

theorem P18008410030691594039.correct : P18008410030691594039.Spec := by
  intro n
  simp only [A235461, Nat.add_sub_cancel]

end A235461

/-! ## A235461.P759759612589026675

`p?[A000695(A000040(n+1))]`
-/

namespace A235461.P759759612589026675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235461.P759759612589026675

namespace A235461

/-- `p?[A000695(A000040(n+1))]` -/
def P759759612589026675.Spec : Prop :=
  ∀ n, P759759612589026675.a n = A235461 (n + 1)

end A235461

/-! ## A235461.P1520631918861129710

`p?[A000695(A006005(n+1))]`
-/

namespace A235461.P1520631918861129710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A006005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235461.P1520631918861129710

namespace A235461

/-- `p?[A000695(A006005(n+1))]` -/
def P1520631918861129710.Spec : Prop :=
  ∀ n, P1520631918861129710.a n = A235461 (n + 1)

end A235461

/-! ## A235461.P13832398671087309819

`p?[A000695(A055977(n+1))]`
-/

namespace A235461.P13832398671087309819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A055977 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235461.P13832398671087309819

namespace A235461

/-- `p?[A000695(A055977(n+1))]` -/
def P13832398671087309819.Spec : Prop :=
  ∀ n, P13832398671087309819.a n = A235461 (n + 1)

end A235461

/-!
# A235462: Primes whose base-5 representation also is the base-2 representation of a prime.

The programs for A235462, there is no canonical definition to state claims against.
-/

/-! ## A235462.P1530141782559969421

`A033042(A235475(n+1))`
-/

namespace A235462.P1530141782559969421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A235475 (n + 1)).toNat

end

end A235462.P1530141782559969421

/-! ## A235462.P561375198522031247

`p?[A033042(p?[xor(1, n)+1])]`
-/

namespace A235462.P561375198522031247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235462.P561375198522031247

/-! ## A235462.P10447946336096344806

`p?[A033042(p?[n-(-1)^n])]`
-/

namespace A235462.P10447946336096344806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235462.P10447946336096344806

/-! ## A235462.P5508135289847236466

`p?[A033042(A130008(n))]`
-/

namespace A235462.P5508135289847236466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A130008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235462.P5508135289847236466

/-! ## A235462.P6281012559935072173

`p?[A033042(A260442(n))]`
-/

namespace A235462.P6281012559935072173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A260442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235462.P6281012559935072173

/-!
# A235463: Primes whose base-6 representation also is the base-2 representation of a prime.

The programs for A235463, there is no canonical definition to state claims against.
-/

/-! ## A235463.P16927828200768100539

`A033043(A235476(n+1))`
-/

namespace A235463.P16927828200768100539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A235476 (n + 1)).toNat

end

end A235463.P16927828200768100539

/-! ## A235463.P10688457710282104447

`A077720(lt[A077764(n+1), n+1])`
-/

namespace A235463.P10688457710282104447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077764 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077720 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A235463.P10688457710282104447

/-! ## A235463.P13023447800367757474

`p?[A033043(p?[xor(1, n)])]`
-/

namespace A235463.P13023447800367757474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235463.P13023447800367757474

/-! ## A235463.P18167789245467854163

`p?[A033043(p?[2*n+1])]`
-/

namespace A235463.P18167789245467854163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235463.P18167789245467854163

/-! ## A235463.P17211544499898545708

`p?[A033043(A000040(n+1))]`
-/

namespace A235463.P17211544499898545708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235463.P17211544499898545708

/-!
# A235464: Primes whose base-7 representation also is the base-2 representation of a prime.

The programs for A235464, there is no canonical definition to state claims against.
-/

/-! ## A235464.P13841860778325403269

`A033044(A235477(n+1)+1)`
-/

namespace A235464.P13841860778325403269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A235477 (n + 1) + 1).toNat

end

end A235464.P13841860778325403269

/-! ## A235464.P1274096393798358377

`p?[A033044(A028815(n))]`
-/

namespace A235464.P1274096393798358377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A028815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235464.P1274096393798358377

/-! ## A235464.P17213666857394854453

`p?[A033044(A045718(n))]`
-/

namespace A235464.P17213666857394854453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A045718 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235464.P17213666857394854453

/-! ## A235464.P437882359725537160

`p?[A033044(A000040(n+1)+1)]`
-/

namespace A235464.P437882359725537160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235464.P437882359725537160

/-! ## A235464.P7922872990746064691

`p?[A033044(C(A006530(n+1), n)+1)]`
-/

namespace A235464.P7922872990746064691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (Nat.choose (A006530 (n + 1)).toNat n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235464.P7922872990746064691

/-!
# A235465: Primes whose base-8 representation also is the base-2 representation of a prime.

The programs for A235465, there is no canonical definition to state claims against.
-/

/-! ## A235465.P6514677902838239198

`A033045(A235478(n+1))`
-/

namespace A235465.P6514677902838239198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (A235478 (n + 1)).toNat

end

end A235465.P6514677902838239198

/-! ## A235465.P14950730345262046343

`∩[A033045(A000040(n+1)), A077722(n+1)]`
-/

namespace A235465.P14950730345262046343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235465.P14950730345262046343

/-!
# A235466: Primes whose base-9 representation also is the base-2 representation of a prime.

The programs for A235466, there is no canonical definition to state claims against.
-/

/-! ## A235466.P4228701969939003206

`A033046(A235479(n+1))`
-/

namespace A235466.P4228701969939003206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (A235479 (n + 1)).toNat

end

end A235466.P4228701969939003206

/-! ## A235466.P2071019927035016870

`∩[A033046(A000040(n+1)), A077723(n+1)]`
-/

namespace A235466.P2071019927035016870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235466.P2071019927035016870

/-! ## A235466.P17645058380802204398

`∩[A033046(A014688(n+1)-(n+1)), A077723(n+1)]`
-/

namespace A235466.P17645058380802204398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (A014688 (n + 1) - (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235466.P17645058380802204398

/-!
# A235467: Primes whose base-4 representation also is the base-3 representation of a prime.

The programs for A235467, the canonical program `A235467.P16967607584721991000` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235467 has offset 1).

The definition of A235467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235467.P17174961917350618836

`A023717(A235473(n+1))`
-/

namespace A235467.P17174961917350618836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A235473 (n + 1)).toNat

end

end A235467.P17174961917350618836

namespace A235467

/-- `A023717(A235473(n+1))` -/
def P17174961917350618836.Spec : Prop :=
  ∀ n, P17174961917350618836.a n = A235467 (n + 1)

end A235467

/-! ## A235467.P7480889330134194207

`p?[A023717(p?[A260442(n)])]`
-/

namespace A235467.P7480889330134194207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235467.P7480889330134194207

namespace A235467

/-- `p?[A023717(p?[A260442(n)])]` -/
def P7480889330134194207.Spec : Prop :=
  ∀ n, P7480889330134194207.a n = A235467 (n + 1)

end A235467

/-! ## A235467.P16967607584721991000

`p?[A023717(A000040(n+1))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A235467

/-- `p?[A023717(A000040(n+1))]` -/
def P16967607584721991000.Spec : Prop :=
  ∀ n, P16967607584721991000.a n = A235467 (n + 1)

theorem P16967607584721991000.correct : P16967607584721991000.Spec := by
  intro n
  simp only [A235467, Nat.add_sub_cancel]

end A235467

/-! ## A235467.P1046009127114486094

`p?[A023717(A008578(n+1))]`
-/

namespace A235467.P1046009127114486094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235467.P1046009127114486094

namespace A235467

/-- `p?[A023717(A008578(n+1))]` -/
def P1046009127114486094.Spec : Prop :=
  ∀ n, P1046009127114486094.a n = A235467 (n + 1)

end A235467

/-! ## A235467.P6684352969028542004

`p?[A023717(A033946(n+1))]`
-/

namespace A235467.P6684352969028542004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A033946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235467.P6684352969028542004

namespace A235467

/-- `p?[A023717(A033946(n+1))]` -/
def P6684352969028542004.Spec : Prop :=
  ∀ n, P6684352969028542004.a n = A235467 (n + 1)

end A235467

/-! ## A235467.P12126677762830532479

`p?[A023717(sqrt(A001248(n+1)))]`
-/

namespace A235467.P12126677762830532479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235467.P12126677762830532479

namespace A235467

/-- `p?[A023717(sqrt(A001248(n+1)))]` -/
def P12126677762830532479.Spec : Prop :=
  ∀ n, P12126677762830532479.a n = A235467 (n + 1)

end A235467

/-! ## A235467.P16061284330313649863

`p?[A023717(record[A006530(n+1)])]`
-/

namespace A235467.P16061284330313649863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235467.P16061284330313649863

namespace A235467

/-- `p?[A023717(record[A006530(n+1)])]` -/
def P16061284330313649863.Spec : Prop :=
  ∀ n, P16061284330313649863.a n = A235467 (n + 1)

end A235467

/-! ## A235467.P2661921920827229896

`p?[A023717(A006093(n+1)+1)]`
-/

namespace A235467.P2661921920827229896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235467.P2661921920827229896

namespace A235467

/-- `p?[A023717(A006093(n+1)+1)]` -/
def P2661921920827229896.Spec : Prop :=
  ∀ n, P2661921920827229896.a n = A235467 (n + 1)

theorem P2661921920827229896.correct : P2661921920827229896.Spec := by
  intro n
  simp only [A235467, Nat.add_sub_cancel, A235467.P2661921920827229896.f1, A235467.P2661921920827229896.a, A235467.P16967607584721991000.f1, A235467.P16967607584721991000.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A023717, A023717.P4302381330862949890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235467

/-! ## A235467.P8079326189093097030

`p?[A023717(A008864(n+1)-1)]`
-/

namespace A235467.P8079326189093097030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A008864 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235467.P8079326189093097030

namespace A235467

/-- `p?[A023717(A008864(n+1)-1)]` -/
def P8079326189093097030.Spec : Prop :=
  ∀ n, P8079326189093097030.a n = A235467 (n + 1)

theorem P8079326189093097030.correct : P8079326189093097030.Spec := by
  intro n
  simp only [A235467, Nat.add_sub_cancel, A235467.P8079326189093097030.f1, A235467.P8079326189093097030.a, A235467.P16967607584721991000.f1, A235467.P16967607584721991000.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A023717, A023717.P4302381330862949890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235467

/-! ## A235467.P10384168385644527181

`p?[A023717(A001748(n+1)/3)]`
-/

namespace A235467.P10384168385644527181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235467.P10384168385644527181

namespace A235467

/-- `p?[A023717(A001748(n+1)/3)]` -/
def P10384168385644527181.Spec : Prop :=
  ∀ n, P10384168385644527181.a n = A235467 (n + 1)

end A235467

/-! ## A235467.P14617435220874026847

`p?[(1-A007920(n))*A023717(n)]`
-/

namespace A235467.P14617435220874026847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A007920 n) * A023717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235467.P14617435220874026847

namespace A235467

/-- `p?[(1-A007920(n))*A023717(n)]` -/
def P14617435220874026847.Spec : Prop :=
  ∀ n, P14617435220874026847.a n = A235467 (n + 1)

end A235467

/-! ## A235467.P1469478330977713724

`p?[A023717(A020482(A016789(n)))]`
-/

namespace A235467.P1469478330977713724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A020482 (A016789 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235467.P1469478330977713724

namespace A235467

/-- `p?[A023717(A020482(A016789(n)))]` -/
def P1469478330977713724.Spec : Prop :=
  ∀ n, P1469478330977713724.a n = A235467 (n + 1)

end A235467

/-! ## A235467.P4571863486539849399

`p?[A023717(A175965(n+2)-A175965(n+1))]`
-/

namespace A235467.P4571863486539849399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A175965 (n + 2) - A175965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235467.P4571863486539849399

namespace A235467

/-- `p?[A023717(A175965(n+2)-A175965(n+1))]` -/
def P4571863486539849399.Spec : Prop :=
  ∀ n, P4571863486539849399.a n = A235467 (n + 1)

end A235467

/-!
# A235468: Primes whose base-5 representation also is the base-3 representation of a prime.

The programs for A235468, the canonical program `A235468.P5946997078443756873` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235468 has offset 1).

The definition of A235468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235468.P9752739105804219005

`A037453(A231474(n+1))`
-/

namespace A235468.P9752739105804219005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A231474 (n + 1)).toNat

end

end A235468.P9752739105804219005

namespace A235468

/-- `A037453(A231474(n+1))` -/
def P9752739105804219005.Spec : Prop :=
  ∀ n, P9752739105804219005.a n = A235468 (n + 1)

end A235468

/-! ## A235468.P5946997078443756873

`p?[A037453(A000040(n+1))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A235468

/-- `p?[A037453(A000040(n+1))]` -/
def P5946997078443756873.Spec : Prop :=
  ∀ n, P5946997078443756873.a n = A235468 (n + 1)

theorem P5946997078443756873.correct : P5946997078443756873.Spec := by
  intro n
  simp only [A235468, Nat.add_sub_cancel]

end A235468

/-! ## A235468.P15986634525242090585

`p?[A037453(A001751(n+1))]`
-/

namespace A235468.P15986634525242090585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A001751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235468.P15986634525242090585

namespace A235468

/-- `p?[A037453(A001751(n+1))]` -/
def P15986634525242090585.Spec : Prop :=
  ∀ n, P15986634525242090585.a n = A235468 (n + 1)

end A235468

/-! ## A235468.P906084808528751172

`p?[A037453(p?[A326136(n+1)])]`
-/

namespace A235468.P906084808528751172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326136 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235468.P906084808528751172

namespace A235468

/-- `p?[A037453(p?[A326136(n+1)])]` -/
def P906084808528751172.Spec : Prop :=
  ∀ n, P906084808528751172.a n = A235468 (n + 1)

end A235468

/-! ## A235468.P17266237541304414447

`∩[A037453(n+1), A262835(n+1)]`
-/

namespace A235468.P17266237541304414447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235468.P17266237541304414447

namespace A235468

/-- `∩[A037453(n+1), A262835(n+1)]` -/
def P17266237541304414447.Spec : Prop :=
  ∀ n, (P17266237541304414447.a n : ℤ) = A235468 (n + 1)

end A235468

/-! ## A235468.P3959935432444943695

`p?[A037453(A005180(n+1))]`
-/

namespace A235468.P3959935432444943695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235468.P3959935432444943695

namespace A235468

/-- `p?[A037453(A005180(n+1))]` -/
def P3959935432444943695.Spec : Prop :=
  ∀ n, P3959935432444943695.a n = A235468 (n + 1)

end A235468

/-! ## A235468.P6279240528068432596

`p?[A001222(n+1)*A037453(n+1)]`
-/

namespace A235468.P6279240528068432596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A037453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235468.P6279240528068432596

namespace A235468

/-- `p?[A001222(n+1)*A037453(n+1)]` -/
def P6279240528068432596.Spec : Prop :=
  ∀ n, P6279240528068432596.a n = A235468 (n + 1)

end A235468

/-! ## A235468.P14704974421253833366

`p?[A033676(n+1)*A037453(n+1)]`
-/

namespace A235468.P14704974421253833366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1) * A037453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235468.P14704974421253833366

namespace A235468

/-- `p?[A033676(n+1)*A037453(n+1)]` -/
def P14704974421253833366.Spec : Prop :=
  ∀ n, P14704974421253833366.a n = A235468 (n + 1)

end A235468

/-! ## A235468.P11359008776409164935

`p?[A037453(p?[A249818(n+1)])]`
-/

namespace A235468.P11359008776409164935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235468.P11359008776409164935

namespace A235468

/-- `p?[A037453(p?[A249818(n+1)])]` -/
def P11359008776409164935.Spec : Prop :=
  ∀ n, P11359008776409164935.a n = A235468 (n + 1)

end A235468

/-!
# A235469: Primes whose base-6 representation also is the base-3 representation of a prime.

The programs for A235469, there is no canonical definition to state claims against.
-/

/-! ## A235469.P8899427754864032645

`A037454(A231476(n+1))`
-/

namespace A235469.P8899427754864032645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (A231476 (n + 1)).toNat

end

end A235469.P8899427754864032645

/-! ## A235469.P10775215395123282375

`p?[A037454(p?[A153152(n)])]`
-/

namespace A235469.P10775215395123282375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235469.P10775215395123282375

/-! ## A235469.P14612144811825155126

`p?[A037454(A000040(n+1))]`
-/

namespace A235469.P14612144811825155126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235469.P14612144811825155126

/-! ## A235469.P10624468182512366608

`p?[A037454(A005180(n+1))]`
-/

namespace A235469.P10624468182512366608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235469.P10624468182512366608

/-! ## A235469.P14899565761425094148

`p?[A037454(A008578(n+1))]`
-/

namespace A235469.P14899565761425094148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235469.P14899565761425094148

/-!
# A235470: Primes whose base-7 representation also is the base-3 representation of a prime.

The programs for A235470, there is no canonical definition to state claims against.
-/

/-! ## A235470.P232425813761914419

`A037455(A231477(n+1))`
-/

namespace A235470.P232425813761914419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (A231477 (n + 1)).toNat

end

end A235470.P232425813761914419

/-! ## A235470.P1768189124674919601

`p?[A037455(A209259(n))]`
-/

namespace A235470.P1768189124674919601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (A209259 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235470.P1768189124674919601

/-! ## A235470.P3494047558132468225

`p?[A037455(A000040(n+1))]`
-/

namespace A235470.P3494047558132468225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235470.P3494047558132468225

/-! ## A235470.P10655150350762622173

`p?[A037455(A001751(n+1))]`
-/

namespace A235470.P10655150350762622173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (A001751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235470.P10655150350762622173

/-! ## A235470.P1595902816666675728

`p?[A037455(A005180(n+1))]`
-/

namespace A235470.P1595902816666675728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235470.P1595902816666675728

/-! ## A235470.P5196738587466478055

`∩[A262837(n+1), A037455(n)]`
-/

namespace A235470.P5196738587466478055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235470.P5196738587466478055

/-!
# A235471: Primes whose base-8 representation also is the base-3 representation of a prime.

The programs for A235471, there is no canonical definition to state claims against.
-/

/-! ## A235471.P11408440382703388989

`A037456(A231478(n+1))`
-/

namespace A235471.P11408440382703388989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (A231478 (n + 1)).toNat

end

end A235471.P11408440382703388989

/-! ## A235471.P8274606770588504762

`p?[A037456(A260442(n))]`
-/

namespace A235471.P8274606770588504762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (A260442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235471.P8274606770588504762

/-! ## A235471.P3509071197930740512

`p?[A037456(A000040(n+1))]`
-/

namespace A235471.P3509071197930740512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235471.P3509071197930740512

/-! ## A235471.P10864817658602974611

`p?[A037456(A005180(n+1))]`
-/

namespace A235471.P10864817658602974611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235471.P10864817658602974611

/-! ## A235471.P13593625937704430115

`p?[A037456(A008578(n+1))]`
-/

namespace A235471.P13593625937704430115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235471.P13593625937704430115

/-!
# A235472: Primes whose base-9 representation also is the base-3 representation of a prime.

The programs for A235472, there is no canonical definition to state claims against.
-/

/-! ## A235472.P3304585546611645829

`A037314(A235480(n+1))`
-/

namespace A235472.P3304585546611645829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A235480 (n + 1)).toNat

end

end A235472.P3304585546611645829

/-! ## A235472.P10147774572309210137

`p?[A037314(A209259(n))]`
-/

namespace A235472.P10147774572309210137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A209259 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235472.P10147774572309210137

/-! ## A235472.P14162554147737359317

`p?[A037314(A000040(n+1))]`
-/

namespace A235472.P14162554147737359317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235472.P14162554147737359317

/-! ## A235472.P1020952847406962013

`p?[A037314(A001751(n+1))]`
-/

namespace A235472.P1020952847406962013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A001751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235472.P1020952847406962013

/-! ## A235472.P4810097639373070867

`p?[A037314(A005180(n+1))]`
-/

namespace A235472.P4810097639373070867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235472.P4810097639373070867

/-! ## A235472.P17889341728681283491

`p?[A037314(A008578(n+1))]`
-/

namespace A235472.P17889341728681283491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235472.P17889341728681283491

/-! ## A235472.P15789574956401545023

`p?[A037314(A045344(n+1))]`
-/

namespace A235472.P15789574956401545023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A045344 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235472.P15789574956401545023

/-! ## A235472.P15964802758583140676

`p?[A037314(A061397(n+1))]`
-/

namespace A235472.P15964802758583140676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235472.P15964802758583140676

/-! ## A235472.P1886475156335078254

`p?[A037314(A072698(n+1))]`
-/

namespace A235472.P1886475156335078254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A072698 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235472.P1886475156335078254

/-! ## A235472.P7942035010035178871

`p?[A037314(A158611(n+1))]`
-/

namespace A235472.P7942035010035178871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A158611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235472.P7942035010035178871

/-!
# A235473: Primes whose base-3 representation is also the base-4 representation of a prime.

The programs for A235473, there is no canonical definition to state claims against.
-/

/-! ## A235473.P1849628016457974693

`p?[A001489(n)*A107393(A023717(n))]`
-/

namespace A235473.P1849628016457974693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n * A107393 (A023717 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235473.P1849628016457974693

/-! ## A235473.P13099700264030148814

`A215090(A235467(n+1))`
-/

namespace A235473.P13099700264030148814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A235467 (n + 1)).toNat

end

end A235473.P13099700264030148814

/-! ## A235473.P16711130281176000514

`p?[A215090(p?[A023717(n)])]`
-/

namespace A235473.P16711130281176000514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235473.P16711130281176000514

/-! ## A235473.P13322996294296043570

`p?[A007920(A023717(n))*A153152(n)]`
-/

namespace A235473.P13322996294296043570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A023717 n).toNat * A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235473.P13322996294296043570

/-! ## A235473.P14258164031779008367

`p?[A007920(A023717(n))*A165998(n)]`
-/

namespace A235473.P14258164031779008367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A023717 n).toNat * A165998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235473.P14258164031779008367

/-! ## A235473.P16007358633915512139

`p?[(A059029(n)+1)*A007920(A023717(n))]`
-/

namespace A235473.P16007358633915512139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059029 n + 1) * A007920 (A023717 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235473.P16007358633915512139

/-!
# A235474: Primes whose base-4 representation is also the base-5 representation of a prime.

The programs for A235474, there is no canonical definition to state claims against.
-/

/-! ## A235474.P4788743212868040841

`eq[A175126(A020654(n+1)), A223135(n)]`
-/

namespace A235474.P4788743212868040841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A020654 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235474.P4788743212868040841

/-! ## A235474.P12235016509947448070

`A303787(A235615(n+1))`
-/

namespace A235474.P12235016509947448070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A235615 (n + 1)).toNat

end

end A235474.P12235016509947448070

/-! ## A235474.P5506161667648471332

`p?[A303787(p?[A020654(n+1)])]`
-/

namespace A235474.P5506161667648471332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235474.P5506161667648471332

/-! ## A235474.P5452354860192067039

`p?[A303787(p?[A020655(n+1)])]`
-/

namespace A235474.P5452354860192067039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235474.P5452354860192067039

/-! ## A235474.P6014483251939910375

`eq[A003415(n), A223135(A020654(n+1))]`
-/

namespace A235474.P6014483251939910375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 (A020654 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235474.P6014483251939910375

/-! ## A235474.P4884735932650889401

`eq[A003415(A020654(n+1)), A226378(n)]`
-/

namespace A235474.P4884735932650889401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A020654 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235474.P4884735932650889401

/-!
# A235476: Primes whose base-2 representation also is the base-6 representation of a prime.

The programs for A235476, there is no canonical definition to state claims against.
-/

/-! ## A235476.P17694649729020877605

`eq[1, A135461(A033043(n))]`
-/

namespace A235476.P17694649729020877605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135461 (A033043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235476.P17694649729020877605

/-! ## A235476.P7558688597211799875

`A087243(A356036(n))`
-/

namespace A235476.P7558688597211799875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087243 (A356036 n).toNat

end

end A235476.P7558688597211799875

/-! ## A235476.P3671174349272740184

`A087243(A025613(n+1))`
-/

namespace A235476.P3671174349272740184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087243 (A025613 (n + 1)).toNat

end

end A235476.P3671174349272740184

/-! ## A235476.P9937641783030794050

`A123318(A356036(n)+1)`
-/

namespace A235476.P9937641783030794050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A356036 n + 1).toNat

end

end A235476.P9937641783030794050

/-!
# A235477: Primes whose base-2 representation also is the base-7 representation of a prime.

The programs for A235477, there is no canonical definition to state claims against.
-/

/-! ## A235477.P17044452749138710698

`record[p?[A005128(A239147(n+1))]]`
-/

namespace A235477.P17044452749138710698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 (A239147 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235477.P17044452749138710698

/-! ## A235477.P8099796943143099246

`p?[∑[A000005(A111624(3*(n+2)))]]`
-/

namespace A235477.P8099796943143099246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A111624 (3 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235477.P8099796943143099246

/-!
# A235478: Primes whose base-2 representation also is the base-8 representation of a prime.

The programs for A235478, there is no canonical definition to state claims against.
-/

/-! ## A235478.P2927168167402831113

`p?[A327755(n+1)+A059841(A203362(n+1))]`
-/

namespace A235478.P2927168167402831113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 1) + A059841 (A203362 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235478.P2927168167402831113

/-! ## A235478.P272370022566303845

`A008578(A054010(n+4)%A018831(3*n+5))`
-/

namespace A235478.P272370022566303845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Int.tmod (A054010 (n + 4)) (A018831 (3 * n + 5))).toNat

end

end A235478.P272370022566303845

/-!
# A235479: Primes whose base-2 representation also is the base-9 representation of a prime.

The programs for A235479, there is no canonical definition to state claims against.
-/

/-! ## A235479.P10310906615795219408

`p?[A337087(2*(n+1))+9]`
-/

namespace A235479.P10310906615795219408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337087 (2 * (n + 1)) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235479.P10310906615795219408

/-! ## A235479.P1632503868190363035

`A215417(record[A269941(n)])`
-/

namespace A235479.P1632503868190363035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215417 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A235479.P1632503868190363035

/-!
# A235480: Primes whose base-3 representation is also the base-9 representation of a prime.

The programs for A235480, there is no canonical definition to state claims against.
-/

/-! ## A235480.P13115298140915337973

`A163528(A235472(n+1))`
-/

namespace A235480.P13115298140915337973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A235472 (n + 1)).toNat

end

end A235480.P13115298140915337973

/-! ## A235480.P11945731072963021833

`p?[A163528(p?[A037314(n)])]`
-/

namespace A235480.P11945731072963021833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235480.P11945731072963021833

/-! ## A235480.P10207295307478548037

`A163529(3*A235472(n+1))`
-/

namespace A235480.P10207295307478548037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (3 * A235472 (n + 1)).toNat

end

end A235480.P10207295307478548037

/-! ## A235480.P13623787918544114221

`eq[A175126(A037314(n)), A223135(n)]`
-/

namespace A235480.P13623787918544114221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A037314 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235480.P13623787918544114221

/-! ## A235480.P7914902977050508431

`eq[A175126(A037314(n)), A226378(n)]`
-/

namespace A235480.P7914902977050508431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A037314 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235480.P7914902977050508431

/-!
# A235481: Primes whose base-4 representation is also the base-9 representation of a prime.

The programs for A235481, there is no canonical definition to state claims against.
-/

/-! ## A235481.P10912557110208101445

`p?[lcm(n+1, A001222(A037463(n+1)))]`
-/

namespace A235481.P10912557110208101445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001222 (A037463 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A235481.P10912557110208101445

/-! ## A235481.P6378639568963157669

`p?[A001222(A037463(n+1))*A175067(n+1)]`
-/

namespace A235481.P6378639568963157669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037463 (n + 1)).toNat * A175067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235481.P6378639568963157669

/-! ## A235481.P1785983598431449948

`p?[n*A328771(A037463(n))]`
-/

namespace A235481.P1785983598431449948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328771 (A037463 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235481.P1785983598431449948

/-! ## A235481.P17014825832701324394

`p?[A001222(A037463(n+1))*A175068(n+1)]`
-/

namespace A235481.P17014825832701324394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037463 (n + 1)).toNat * A175068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235481.P17014825832701324394

/-! ## A235481.P14847448643137961013

`eq[A003415(n), A223135(A037463(n))]`
-/

namespace A235481.P14847448643137961013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 (A037463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235481.P14847448643137961013

/-!
# A235482: Primes whose base-5 representation is also the base-9 representation of a prime.

The programs for A235482, the canonical program `A235482.P3450851580659410820` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235482 has offset 1).

The definition of A235482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235482.P3450851580659410820

`p?[(n+1)*(A000005(A037468(n+1))-1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A235482

/-- `p?[(n+1)*(A000005(A037468(n+1))-1)]` -/
def P3450851580659410820.Spec : Prop :=
  ∀ n, P3450851580659410820.a n = A235482 (n + 1)

theorem P3450851580659410820.correct : P3450851580659410820.Spec := by
  intro n
  simp only [A235482, Nat.add_sub_cancel]

end A235482

/-! ## A235482.P9415853660163166357

`p?[n*A032741(A037468(n))]`
-/

namespace A235482.P9415853660163166357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (A037468 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235482.P9415853660163166357

namespace A235482

/-- `p?[n*A032741(A037468(n))]` -/
def P9415853660163166357.Spec : Prop :=
  ∀ n, P9415853660163166357.a n = A235482 (n + 1)

end A235482

/-! ## A235482.P17070463779468653007

`eq[A003415(n), A223135(A037468(n))]`
-/

namespace A235482.P17070463779468653007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 (A037468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235482.P17070463779468653007

namespace A235482

/-- `eq[A003415(n), A223135(A037468(n))]` -/
def P17070463779468653007.Spec : Prop :=
  ∀ n, (P17070463779468653007.a n : ℤ) = A235482 (n + 1)

end A235482

/-! ## A235482.P11448117720586464051

`p?[A105700(A037468(n))*A327420(n)]`
-/

namespace A235482.P11448117720586464051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A037468 n).toNat * A327420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235482.P11448117720586464051

namespace A235482

/-- `p?[A105700(A037468(n))*A327420(n)]` -/
def P11448117720586464051.Spec : Prop :=
  ∀ n, P11448117720586464051.a n = A235482 (n + 1)

end A235482

/-! ## A235482.P1701749701653232921

`p?[A105700(A037468(n))*A233583(n+1)]`
-/

namespace A235482.P1701749701653232921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A037468 n).toNat * A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235482.P1701749701653232921

namespace A235482

/-- `p?[A105700(A037468(n))*A233583(n+1)]` -/
def P1701749701653232921.Spec : Prop :=
  ∀ n, P1701749701653232921.a n = A235482 (n + 1)

end A235482

/-!
# A235483: Average of twin prime pairs that contains at least one twin prime pair as divisors.

The programs for A235483, there is no canonical definition to state claims against.
-/

/-! ## A235483.P6477967355130341190

`∩[2*A079877(n+1), A014574(n+1)]`
-/

namespace A235483.P6477967355130341190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235483.P6477967355130341190

/-! ## A235483.P9189331830357621440

`∩[A014574(n+1), A079877(n+1)]`
-/

namespace A235483.P9189331830357621440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235483.P9189331830357621440

/-! ## A235483.P1763057971422836714

`∩[A079877(n+1), A167706(n+1)]`
-/

namespace A235483.P1763057971422836714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235483.P1763057971422836714

/-! ## A235483.P1683280384279710914

`∩[A001359(n+1)+1, A079877(n+1)]`
-/

namespace A235483.P1683280384279710914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235483.P1683280384279710914

/-! ## A235483.P8249306579198751542

`∩[A006512(n+1)-1, A079877(n+1)]`
-/

namespace A235483.P8249306579198751542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235483.P8249306579198751542

/-! ## A235483.P2202639593795595639

`∩[A000203(A001359(n+1)), A079877(n+1)]`
-/

namespace A235483.P2202639593795595639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001359 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235483.P2202639593795595639

/-! ## A235483.P18229312368424679096

`∩[A000010(A006512(n+1)), A079877(n+1)]`
-/

namespace A235483.P18229312368424679096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006512 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235483.P18229312368424679096

/-! ## A235483.P3620148442016840700

`∩[A079877(n+1), A174219(n+1)]`
-/

namespace A235483.P3620148442016840700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235483.P3620148442016840700

/-! ## A235483.P13179098520826739257

`∩[A079877(n+1), A129297(n+1)]`
-/

namespace A235483.P13179098520826739257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235483.P13179098520826739257

/-!
# A235484: Square numbers n such that n^2 - n - 1 is prime.

The programs for A235484, there is no canonical definition to state claims against.
-/

/-! ## A235484.P15986537268968068861

`A174821(n+1)²`
-/

namespace A235484.P15986537268968068861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174821 (n + 1) ^ 2

end

end A235484.P15986537268968068861

/-! ## A235484.P10986172922896744448

`ceil(sqrt(A174822(n+1)))`
-/

namespace A235484.P10986172922896744448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A174822 (n + 1) : ℝ)⌉

end

end A235484.P10986172922896744448

/-! ## A235484.P1718583494292411612

`A000290(A174821(n+1)%A003384(n+1))`
-/

namespace A235484.P1718583494292411612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A174821 (n + 1)) (A003384 (n + 1))).toNat

end

end A235484.P1718583494292411612

/-! ## A235484.P2968966691618016890

`A000290(A174821(n+1))%A069760(n+1)`
-/

namespace A235484.P2968966691618016890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A174821 (n + 1)).toNat) (A069760 (n + 1))

end

end A235484.P2968966691618016890

/-! ## A235484.P13626686304194416643

`∩[A002328(n+1), n²]`
-/

namespace A235484.P13626686304194416643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A235484.P13626686304194416643

/-! ## A235484.P2761349606567750237

`∩[A000290(n), A002328(n+1)]`
-/

namespace A235484.P2761349606567750237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235484.P2761349606567750237

/-! ## A235484.P2647291317131000584

`∩[A045546(n+1)+1, n²]`
-/

namespace A235484.P2647291317131000584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A235484.P2647291317131000584

/-! ## A235484.P10054303738801878823

`∩[A076597(n+1)-1, n²]`
-/

namespace A235484.P10054303738801878823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076597 (n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A235484.P10054303738801878823

/-!
# A235485: Permutation of natural numbers: a(n) = A235201(A235487(n)).

The programs for A235485, there is no canonical definition to state claims against.
-/

/-! ## A235485.P14493836834609034068

`A235201(A235487(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A235485.P14493836834609034068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235487 n).toNat

end

end A235485.P14493836834609034068

/-! ## A235485.P13568345903307045519

`A235493(A235489(A235487(2*n-n)))`
-/

namespace A235485.P13568345903307045519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235493 (A235489 (A235487 (2 * n - n)).toNat).toNat

end

end A235485.P13568345903307045519

/-! ## A235485.P6148039714861443393

`A235493(A235489(A235487(n))%A000040(n+1))`
-/

namespace A235485.P6148039714861443393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235493 (Int.tmod (A235489 (A235487 n).toNat) (A000040 (n + 1))).toNat

end

end A235485.P6148039714861443393

/-! ## A235485.P4280281225952880632

`A235493(A235487(A235489(A235487(A235489(n)))))`
-/

namespace A235485.P4280281225952880632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235493 (A235487 (A235489 (A235487 (A235489 n).toNat).toNat).toNat).toNat

end

end A235485.P4280281225952880632

/-! ## A235485.P13772837758925735503

`A235487(A235486(A235487(n)%A000040(n+1)))`
-/

namespace A235485.P13772837758925735503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A235486 (Int.tmod (A235487 n) (A000040 (n + 1))).toNat).toNat

end

end A235485.P13772837758925735503

/-! ## A235485.P5784119502148809169

`A235487(A235486(A235487(A235199(A235199(n)))))`
-/

namespace A235485.P5784119502148809169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A235486 (A235487 (A235199 (A235199 n).toNat).toNat).toNat).toNat

end

end A235485.P5784119502148809169

/-! ## A235485.P1103892285988567924

`A235201(A235486(A235201(n)))`
-/

namespace A235485.P1103892285988567924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235486 (A235201 n).toNat).toNat

end

end A235485.P1103892285988567924

/-! ## A235485.P11124134952131399107

`A235487(A235486(A235486(A235487(A235486(n)))))`
-/

namespace A235485.P11124134952131399107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A235486 (A235486 (A235487 (A235486 n).toNat).toNat).toNat).toNat

end

end A235485.P11124134952131399107

/-! ## A235485.P18102035824337224315

`A235489(A235494(A235486(A235489(A235494(n)))))`
-/

namespace A235485.P18102035824337224315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A235494 (A235486 (A235489 (A235494 n).toNat).toNat).toNat).toNat

end

end A235485.P18102035824337224315

/-! ## A235485.P1955665515552040595

`A235493(A235486(A235493(A235486(A235493(n)))))`
-/

namespace A235485.P1955665515552040595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235493 (A235486 (A235493 (A235486 (A235493 n).toNat).toNat).toNat).toNat

end

end A235485.P1955665515552040595

/-!
# A235486: Permutation of natural numbers: a(n) = A235487(A235201(n)).

The programs for A235486, there is no canonical definition to state claims against.
-/

/-! ## A235486.P6912630752478445704

`A235487(A235201(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A235486.P6912630752478445704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A235201 n).toNat

end

end A235486.P6912630752478445704

/-! ## A235486.P10452908345222727613

`A235487(A235485(A235487(n)))`
-/

namespace A235486.P10452908345222727613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A235485 (A235487 n).toNat).toNat

end

end A235486.P10452908345222727613

/-! ## A235486.P6158278186338198733

`A235487(A235493(A235489(n)))`
-/

namespace A235486.P6158278186338198733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A235493 (A235489 n).toNat).toNat

end

end A235486.P6158278186338198733

/-! ## A235486.P17648706041109176719

`A235201(A235485(A235201(n)%A000040(n+1)))`
-/

namespace A235486.P17648706041109176719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235485 (Int.tmod (A235201 n) (A000040 (n + 1))).toNat).toNat

end

end A235486.P17648706041109176719

/-! ## A235486.P1814716909126162185

`A235201(A235485(A235201(A235199(A235199(n)))))`
-/

namespace A235486.P1814716909126162185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235485 (A235201 (A235199 (A235199 n).toNat).toNat).toNat).toNat

end

end A235486.P1814716909126162185

/-! ## A235486.P2461928060382650996

`A235201(A235485(A235485(A235201(A235485(n)))))`
-/

namespace A235486.P2461928060382650996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235485 (A235485 (A235201 (A235485 n).toNat).toNat).toNat).toNat

end

end A235486.P2461928060382650996

/-! ## A235486.P15657174345842353336

`A235487(A235489(A235494(n)))`
-/

namespace A235486.P15657174345842353336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A235489 (A235494 n).toNat).toNat

end

end A235486.P15657174345842353336

/-!
# A235487: Self-inverse and multiplicative permutation of integers: For n < 7, a(n)=n, a(7)=8 and a(8)=7, a(p_i) = p_{a(i)} for primes with index i <> 4, and for composites > 8, a(u*v) = a(u) * a(v).

The programs for A235487, there is no canonical definition to state claims against.
-/

/-! ## A235487.P16912489536405076972

`A235486(A235201(n))`
-/

namespace A235487.P16912489536405076972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235486 (A235201 n).toNat

end

end A235487.P16912489536405076972

/-! ## A235487.P1394654404069495827

`A235201(A235485(n))`
-/

namespace A235487.P1394654404069495827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235485 n).toNat

end

end A235487.P1394654404069495827

/-! ## A235487.P13337092333305665956

`A235486(A235493(A235489(n)))`
-/

namespace A235487.P13337092333305665956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235486 (A235493 (A235489 n).toNat).toNat

end

end A235487.P13337092333305665956

/-! ## A235487.P40239950630125365

`A235489(A235494(A235485(2*n-n)))`
-/

namespace A235487.P40239950630125365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A235494 (A235485 (2 * n - n)).toNat).toNat

end

end A235487.P40239950630125365

/-! ## A235487.P15123245624593759890

`A235199(A235486(A235199(A235485(A235199(n)))))`
-/

namespace A235487.P15123245624593759890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A235486 (A235199 (A235485 (A235199 n).toNat).toNat).toNat).toNat

end

end A235487.P15123245624593759890

/-! ## A235487.P11759593445887118394

`A235486(A235489(A235494(n)))`
-/

namespace A235487.P11759593445887118394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235486 (A235489 (A235494 n).toNat).toNat

end

end A235487.P11759593445887118394

/-! ## A235487.P5725769190174887400

`A235493(A235489(A235485(n)%A000040(n+1)))`
-/

namespace A235487.P5725769190174887400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235493 (A235489 (Int.tmod (A235485 n) (A000040 (n + 1))).toNat).toNat

end

end A235487.P5725769190174887400

/-! ## A235487.P965143029713373426

`A235493(A235489(A235485(A235494(A235493(n)))))`
-/

namespace A235487.P965143029713373426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235493 (A235489 (A235485 (A235494 (A235493 n).toNat).toNat).toNat).toNat

end

end A235487.P965143029713373426

/-!
# A235488: Squarefree numbers which yield zero when their prime factors are xored together.

The programs for A235488, there is no canonical definition to state claims against.
-/

/-! ## A235488.P17547817515953097990

`record[A007913(A072596(n+1))]`
-/

namespace A235488.P17547817515953097990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A072596 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235488.P17547817515953097990

/-! ## A235488.P1693330783723647003

`filter[A072596(n+1), A008966(#)]`
-/

namespace A235488.P1693330783723647003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A235488.P1693330783723647003

/-! ## A235488.P4705100813949153552

`filter[A072596(n+1), A354353(#)]`
-/

namespace A235488.P4705100813949153552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A235488.P4705100813949153552

/-! ## A235488.P7636019909572706654

`filter[A072596(n+1), A354819(#)]`
-/

namespace A235488.P7636019909572706654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A235488.P7636019909572706654

/-! ## A235488.P15767848215020542185

`filter[A072596(n+1), A380469(#)]`
-/

namespace A235488.P15767848215020542185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A235488.P15767848215020542185

/-!
# A235489: Self-inverse and multiplicative permutation of integers: For n < 8, a(n) = n, a(8)=9 and a(9)=8, a(p_i) = p_{a(i)} for primes with index i, and for composites > 9, a(u*v) = a(u) * a(v).

The programs for A235489, there is no canonical definition to state claims against.
-/

/-! ## A235489.P11762186925359353576

`A235494(A235201(n))`
-/

namespace A235489.P11762186925359353576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235494 (A235201 n).toNat

end

end A235489.P11762186925359353576

/-! ## A235489.P17748022403466061349

`A235494(A235487(A235486(n)))`
-/

namespace A235489.P17748022403466061349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235494 (A235487 (A235486 n).toNat).toNat

end

end A235489.P17748022403466061349

/-! ## A235489.P6000349904783215847

`A235494(A235485(A235487(n)))`
-/

namespace A235489.P6000349904783215847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235494 (A235485 (A235487 n).toNat).toNat

end

end A235489.P6000349904783215847

/-! ## A235489.P2410618776923955528

`A235201(A235493(n))`
-/

namespace A235489.P2410618776923955528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235493 n).toNat

end

end A235489.P2410618776923955528

/-! ## A235489.P17074837005478537811

`A235487(A235486(A235493(A235199(A235199(n)))))`
-/

namespace A235489.P17074837005478537811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A235486 (A235493 (A235199 (A235199 n).toNat).toNat).toNat).toNat

end

end A235489.P17074837005478537811

/-! ## A235489.P7100065637544181578

`A235487(A235486(A235493(A235486(A235485(n)))))`
-/

namespace A235489.P7100065637544181578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A235486 (A235493 (A235486 (A235485 n).toNat).toNat).toNat).toNat

end

end A235489.P7100065637544181578

/-! ## A235489.P18201352562249459991

`A235487(A235486(A235493(A000720(A008578(n+1)))))`
-/

namespace A235489.P18201352562249459991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A235486 (A235493 (A000720 (A008578 (n + 1)).toNat).toNat).toNat).toNat

end

end A235489.P18201352562249459991

/-!
# A235490: Numbers such that none of their prime factors share common 1-bits in the same bit-position and when added (or "ored" or "xored") together, yield a term of A000225 (a binary "repunit").

The programs for A235490, there is no canonical definition to state claims against.
-/

/-! ## A235490.P14024658864343088598

`∩[A235050(n+1), A353654(n+1)]`
-/

namespace A235490.P14024658864343088598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235490.P14024658864343088598

/-! ## A235490.P7421520112020232041

`eq[A074206(n), A105811(A035327(n))]`
-/

namespace A235490.P7421520112020232041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105811 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235490.P7421520112020232041

/-! ## A235490.P12778265084067299150

`eq[A149037(A032741(n)), A229763(n)]`
-/

namespace A235490.P12778265084067299150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149037 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235490.P12778265084067299150

/-! ## A235490.P12417558294214271912

`∩[A026481(n+1), A192116(n+1)]`
-/

namespace A235490.P12417558294214271912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235490.P12417558294214271912

/-! ## A235490.P15974298704937646503

`∩[A026482(n+1), A192116(n+1)]`
-/

namespace A235490.P15974298704937646503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235490.P15974298704937646503

/-!
# A235492: Median of maximal "prime gaps" in Cramer's model with n urns.

The programs for A235492, there is no canonical definition to state claims against.
-/

/-! ## A235492.P2608421510811544534

`floor(log2(A140953(n+5)))`
-/

namespace A235492.P2608421510811544534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A140953 (n + 5)).toNat

end

end A235492.P2608421510811544534

/-! ## A235492.P14121468430293233397

`comp[∑[A120189(n+1)]]+1-n`
-/

namespace A235492.P14121468430293233397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120189 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A235492.P14121468430293233397

/-! ## A235492.P12771639810771059551

`∑[char[∑[A049808(n+1)+3]]]+1`
-/

namespace A235492.P12771639810771059551
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049808 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A235492.P12771639810771059551

/-! ## A235492.P14407088205850751610

`∑[char[∑[A050026(n+1)+3]]]+1`
-/

namespace A235492.P14407088205850751610
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A235492.P14407088205850751610

/-! ## A235492.P15527898531452194805

`A036042(∑[floor(floor(n/4)+1-n/5)])`
-/

namespace A235492.P15527898531452194805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 4⌋ + 1 : ℚ) - (n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235492.P15527898531452194805

/-! ## A235492.P14876925431022586916

`A036042(∑[ceil((n+1)/4-ceil(n/5))])%12`
-/

namespace A235492.P14876925431022586916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 4 - (⌈(n : ℚ) / 5⌉ : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036042 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 12

end

end A235492.P14876925431022586916

/-! ## A235492.P13781318237364644196

`A001489(n)+comp[∑[A120189(n+1)]]+1`
-/

namespace A235492.P13781318237364644196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120189 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A235492.P13781318237364644196

/-! ## A235492.P9280299523872319379

`A070939(A008615(∑[A054225(n+1)]))`
-/

namespace A235492.P9280299523872319379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A008615 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A235492.P9280299523872319379

/-! ## A235492.P4020881588421178265

`A235402(lt[A178111(n), 3^val(n+1, 3)])`
-/

namespace A235492.P4020881588421178265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178111 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235402 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A235492.P4020881588421178265

/-! ## A235492.P14608128166941853195

`A130259(A266747(n+1))`
-/

namespace A235492.P14608128166941853195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A266747 (n + 1)).toNat

end

end A235492.P14608128166941853195

/-!
# A235493: Permutation of natural numbers: a(n) = A235201(A235489(n)).

The programs for A235493, there is no canonical definition to state claims against.
-/

/-! ## A235493.P6440412570757377881

`A235201(A235489(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A235493.P6440412570757377881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235489 n).toNat

end

end A235493.P6440412570757377881

/-! ## A235493.P14189194286766969922

`A235485(A235487(A235489(2*n-n)))`
-/

namespace A235493.P14189194286766969922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235485 (A235487 (A235489 (2 * n - n)).toNat).toNat

end

end A235493.P14189194286766969922

/-! ## A235493.P15120894316699042883

`A235485(A235487(A235489(n)%A000040(n+1)))`
-/

namespace A235493.P15120894316699042883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235485 (A235487 (Int.tmod (A235489 n) (A000040 (n + 1))).toNat).toNat

end

end A235493.P15120894316699042883

/-! ## A235493.P15494603360315137191

`A235201(A235494(A235201(n)))`
-/

namespace A235493.P15494603360315137191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235494 (A235201 n).toNat).toNat

end

end A235493.P15494603360315137191

/-! ## A235493.P16708091240562587466

`A235485(A235487(A235494(A235485(A235487(n)))))`
-/

namespace A235493.P16708091240562587466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235485 (A235487 (A235494 (A235485 (A235487 n).toNat).toNat).toNat).toNat

end

end A235493.P16708091240562587466

/-! ## A235493.P9510770402304920312

`A235487(A235486(A235489(A235199(A235199(n)))))`
-/

namespace A235493.P9510770402304920312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A235486 (A235489 (A235199 (A235199 n).toNat).toNat).toNat).toNat

end

end A235493.P9510770402304920312

/-! ## A235493.P2128963375673928786

`A235487(A235486(A235489(A235486(A235485(n)))))`
-/

namespace A235493.P2128963375673928786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A235486 (A235489 (A235486 (A235485 n).toNat).toNat).toNat).toNat

end

end A235493.P2128963375673928786

/-! ## A235493.P5575982616929383134

`A235487(A235486(A235494(A235487(A235486(n)))))`
-/

namespace A235493.P5575982616929383134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A235486 (A235494 (A235487 (A235486 n).toNat).toNat).toNat).toNat

end

end A235493.P5575982616929383134

/-! ## A235493.P4226548745387752308

`A235487(A235486(A235489(A234840(A234840(n)))))`
-/

namespace A235493.P4226548745387752308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A235486 (A235489 (A234840 (A234840 n).toNat).toNat).toNat).toNat

end

end A235493.P4226548745387752308

/-!
# A235494: Permutation of natural numbers: a(n) = A235489(A235201(n)).

The programs for A235494, there is no canonical definition to state claims against.
-/

/-! ## A235494.P15848130094993232338

`A235489(A235201(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A235494.P15848130094993232338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A235201 n).toNat

end

end A235494.P15848130094993232338

/-! ## A235494.P9227085720151366792

`A235489(A235487(A235486(n)))`
-/

namespace A235494.P9227085720151366792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A235487 (A235486 n).toNat).toNat

end

end A235494.P9227085720151366792

/-! ## A235494.P17901944189800704590

`A235489(A235485(A235487(n)))`
-/

namespace A235494.P17901944189800704590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A235485 (A235487 n).toNat).toNat

end

end A235494.P17901944189800704590

/-! ## A235494.P11407537304401207167

`A235489(A235493(A235489(n)))`
-/

namespace A235494.P11407537304401207167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A235493 (A235489 n).toNat).toNat

end

end A235494.P11407537304401207167

/-! ## A235494.P7668187500424734272

`A235201(A235493(A235201(n)%A000040(n+1)))`
-/

namespace A235494.P7668187500424734272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235493 (Int.tmod (A235201 n) (A000040 (n + 1))).toNat).toNat

end

end A235494.P7668187500424734272

/-! ## A235494.P7562887485588306896

`A235201(A235493(A235201(A235199(A235199(n)))))`
-/

namespace A235494.P7562887485588306896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235493 (A235201 (A235199 (A235199 n).toNat).toNat).toNat).toNat

end

end A235494.P7562887485588306896

/-! ## A235494.P15246094340836330548

`A235201(A235493(A235201(A235200(A235200(n)))))`
-/

namespace A235494.P15246094340836330548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235493 (A235201 (A235200 (A235200 n).toNat).toNat).toNat).toNat

end

end A235494.P15246094340836330548

/-! ## A235494.P1665684740028104424

`A235201(A235493(A235485(A235201(A235485(n)))))`
-/

namespace A235494.P1665684740028104424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235493 (A235485 (A235201 (A235485 n).toNat).toNat).toNat).toNat

end

end A235494.P1665684740028104424

/-! ## A235494.P14632559375692797620

`A235201(A235493(A235493(A235201(A235493(n)))))`
-/

namespace A235494.P14632559375692797620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235493 (A235493 (A235201 (A235493 n).toNat).toNat).toNat).toNat

end

end A235494.P14632559375692797620

/-!
# A235496: a(n) = round(n^n/n!) where round(1/2)=1.

The programs for A235496, the canonical program `A235496.P328836779949110005` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235496 has offset 0).

The definition of A235496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n^n/n!)` (program `A235496.P328836779949110005`, by `A235496.P328836779949110005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A235496.P328836779949110005

`round(n^n/n!)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A235496

/-- `round(n^n/n!)` -/
def P328836779949110005.Spec : Prop :=
  ∀ n, P328836779949110005.a n = A235496 n

theorem P328836779949110005.correct : P328836779949110005.Spec := by
  intro n
  simp only [A235496]

end A235496

/-! ## A235496.P1237752289895107255

`floor(n^n/n!+1/2)`
-/

namespace A235496.P1237752289895107255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ n : ℚ) / (Nat.factorial n : ℚ) + (1 : ℚ) / 2⌋

end

end A235496.P1237752289895107255

namespace A235496

/-- `floor(n^n/n!+1/2)` -/
def P1237752289895107255.Spec : Prop :=
  ∀ n, P1237752289895107255.a n = A235496 n

end A235496

/-! ## A235496.P1392750686679853416

`round(A000312(n)/A000142(n))`
-/

namespace A235496.P1392750686679853416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000312 n : ℚ) / (A000142 n : ℚ))

end

end A235496.P1392750686679853416

namespace A235496

/-- `round(A000312(n)/A000142(n))` -/
def P1392750686679853416.Spec : Prop :=
  ∀ n, P1392750686679853416.a n = A235496 n

theorem P1392750686679853416.correct : P1392750686679853416.Spec := by
  intro n
  simp only [A235496, Nat.add_sub_cancel, A235496.P1392750686679853416.a, A235496.P328836779949110005.a, A000142, A000142.P3272619076580183195.a, A000312, A000312.P3932771318196185165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235496

/-! ## A235496.P5279527789502946310

`A240571(n)+A185013(n)`
-/

namespace A235496.P5279527789502946310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240571 n + A185013 n

end

end A235496.P5279527789502946310

namespace A235496

/-- `A240571(n)+A185013(n)` -/
def P5279527789502946310.Spec : Prop :=
  ∀ n, P5279527789502946310.a n = A235496 n

end A235496

/-! ## A235496.P17796254408679006310

`round(A168658(n)/∏[n^round(n/(n+3))])`
-/

namespace A235496.P17796254408679006310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / (n + 3 : ℚ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A168658 n : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A235496.P17796254408679006310

namespace A235496

/-- `round(A168658(n)/∏[n^round(n/(n+3))])` -/
def P17796254408679006310.Spec : Prop :=
  ∀ n, P17796254408679006310.a n = A235496 n

end A235496

/-! ## A235496.P17655100331490247645

`round(n!^-1*n^n)`
-/

namespace A235496.P17655100331490247645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) ^ (-1 : ℤ) * (n ^ n : ℚ))

end

end A235496.P17655100331490247645

namespace A235496

/-- `round(n!^-1*n^n)` -/
def P17655100331490247645.Spec : Prop :=
  ∀ n, P17655100331490247645.a n = A235496 n

theorem P17655100331490247645.correct : P17655100331490247645.Spec := by
  intro n
  simp only [A235496, Nat.add_sub_cancel, A235496.P17655100331490247645.a, A235496.P328836779949110005.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A235496

/-! ## A235496.P5626290991712410755

`round(n^n/∏[round(1/acot(n))])`
-/

namespace A235496.P5626290991712410755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A235496.P5626290991712410755

namespace A235496

/-- `round(n^n/∏[round(1/acot(n))])` -/
def P5626290991712410755.Spec : Prop :=
  ∀ n, P5626290991712410755.a n = A235496 n

end A235496

/-! ## A235496.P2384812654000871923

`round(n^n/∏[ceil(abs(γ-n))])`
-/

namespace A235496.P2384812654000871923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A235496.P2384812654000871923

namespace A235496

/-- `round(n^n/∏[ceil(abs(γ-n))])` -/
def P2384812654000871923.Spec : Prop :=
  ∀ n, P2384812654000871923.a n = A235496 n

end A235496

/-!
# A235497: 2n concatenated with n.

The programs for A235497, the canonical program `A235497.P16290766832587102791` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235497 has offset 1).

The definition of A235497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235497.P16525289929262274024

`2*A020338(n+1)-(n+1)`
-/

namespace A235497.P16525289929262274024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020338 (n + 1) - (n + 1 : ℤ)

end

end A235497.P16525289929262274024

namespace A235497

/-- `2*A020338(n+1)-(n+1)` -/
def P16525289929262274024.Spec : Prop :=
  ∀ n, P16525289929262274024.a n = A235497 (n + 1)

end A235497

/-! ## A235497.P16290766832587102791

`A105814(n+1)+A068824(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A235497

/-- `A105814(n+1)+A068824(n+1)` -/
def P16290766832587102791.Spec : Prop :=
  ∀ n, P16290766832587102791.a n = A235497 (n + 1)

theorem P16290766832587102791.correct : P16290766832587102791.Spec := by
  intro n
  simp only [A235497, Nat.add_sub_cancel]

end A235497

/-! ## A235497.P16654836078474009712

`A001478(n+1)+2*A020338(n+1)`
-/

namespace A235497.P16654836078474009712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + 2 * A020338 (n + 1)

end

end A235497.P16654836078474009712

namespace A235497

/-- `A001478(n+1)+2*A020338(n+1)` -/
def P16654836078474009712.Spec : Prop :=
  ∀ n, P16654836078474009712.a n = A235497 (n + 1)

end A235497

/-! ## A235497.P18030545968194265298

`A020338(n+1)+A020338(n+1)-A000027(n+1)`
-/

namespace A235497.P18030545968194265298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1) + (A020338 (n + 1) - A000027 (n + 1))

end

end A235497.P18030545968194265298

namespace A235497

/-- `A020338(n+1)+A020338(n+1)-A000027(n+1)` -/
def P18030545968194265298.Spec : Prop :=
  ∀ n, P18030545968194265298.a n = A235497 (n + 1)

end A235497

/-! ## A235497.P3552926938956209329

`A020338(n+1)+A056524(n+1)-A004086(n+1)`
-/

namespace A235497.P3552926938956209329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1) + (A056524 (n + 1) - A004086 (n + 1))

end

end A235497.P3552926938956209329

namespace A235497

/-- `A020338(n+1)+A056524(n+1)-A004086(n+1)` -/
def P3552926938956209329.Spec : Prop :=
  ∀ n, P3552926938956209329.a n = A235497 (n + 1)

end A235497

/-! ## A235497.P1126182990017628581

`2*A084854(∑[n+1])-(n+1)`
-/

namespace A235497.P1126182990017628581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084854 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)

end

end A235497.P1126182990017628581

namespace A235497

/-- `2*A084854(∑[n+1])-(n+1)` -/
def P1126182990017628581.Spec : Prop :=
  ∀ n, P1126182990017628581.a n = A235497 (n + 1)

end A235497

/-! ## A235497.P16054265212696745046

`2*A084855(∑[n+1])-(n+1)`
-/

namespace A235497.P16054265212696745046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084855 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)

end

end A235497.P16054265212696745046

namespace A235497

/-- `2*A084855(∑[n+1])-(n+1)` -/
def P16054265212696745046.Spec : Prop :=
  ∀ n, P16054265212696745046.a n = A235497 (n + 1)

end A235497

/-! ## A235497.P1240680945395838662

`A004273(A020338(n+1))-n`
-/

namespace A235497.P1240680945395838662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A020338 (n + 1)).toNat - (n : ℤ)

end

end A235497.P1240680945395838662

namespace A235497

/-- `A004273(A020338(n+1))-n` -/
def P1240680945395838662.Spec : Prop :=
  ∀ n, P1240680945395838662.a n = A235497 (n + 1)

end A235497

/-! ## A235497.P16677720796111074095

`A005843(A084855(∑[n+1]))-(n+1)`
-/

namespace A235497.P16677720796111074095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A084855 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - (n + 1 : ℤ)

end

end A235497.P16677720796111074095

namespace A235497

/-- `A005843(A084855(∑[n+1]))-(n+1)` -/
def P16677720796111074095.Spec : Prop :=
  ∀ n, P16677720796111074095.a n = A235497 (n + 1)

end A235497

/-! ## A235497.P577734798477294698

`A014368(2*(n+1)²)`
-/

namespace A235497.P577734798477294698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014368 (2 * (n + 1) ^ 2)

end

end A235497.P577734798477294698

namespace A235497

/-- `A014368(2*(n+1)²)` -/
def P577734798477294698.Spec : Prop :=
  ∀ n, P577734798477294698.a n = A235497 (n + 1)

end A235497

/-!
# A235498: For k in {2,3,...,9} define a sequence as follows: a(0)=0; for n>=0, a(n+1)=a(n)+1, unless a(n) ends in k, in which case a(n+1) is obtained by replacing the last digit of a(n) with the digit(s) of k^2. This is k(2).

The programs for A235498, the canonical program `A235498.P16998092319491734216` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235498 has offset 0).

The definition of A235498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235498.P17742141993933686366

`comp[10*n+3]`
-/

namespace A235498.P17742141993933686366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A235498.P17742141993933686366

namespace A235498

/-- `comp[10*n+3]` -/
def P17742141993933686366.Spec : Prop :=
  ∀ n, (P17742141993933686366.a n : ℤ) = A235498 n

end A235498

/-! ## A235498.P16998092319491734216

`lt[n, lcm(10, 3-n)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A235498

/-- `lt[n, lcm(10, 3-n)]` -/
def P16998092319491734216.Spec : Prop :=
  ∀ n, (P16998092319491734216.a n : ℤ) = A235498 n

theorem P16998092319491734216.correct : P16998092319491734216.Spec := by
  intro n
  simp only [A235498]

end A235498

/-! ## A235498.P6073061024270601108

`∪[2*n, floor((n+1)/4+n)]`
-/

namespace A235498.P6073061024270601108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 4 + (n : ℚ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235498.P6073061024270601108

namespace A235498

/-- `∪[2*n, floor((n+1)/4+n)]` -/
def P6073061024270601108.Spec : Prop :=
  ∀ n, (P6073061024270601108.a n : ℤ) = A235498 n

end A235498

/-! ## A235498.P3974341959469235109

`A002264(A092200(A002264(n)))+n`
-/

namespace A235498.P3974341959469235109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A092200 (A002264 n).toNat).toNat + (n : ℤ)

end

end A235498.P3974341959469235109

namespace A235498

/-- `A002264(A092200(A002264(n)))+n` -/
def P3974341959469235109.Spec : Prop :=
  ∀ n, P3974341959469235109.a n = A235498 n

end A235498

/-! ## A235498.P15012460213266073382

`eq[A008619(n), A291304(n+2)]`
-/

namespace A235498.P15012460213266073382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291304 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235498.P15012460213266073382

namespace A235498

/-- `eq[A008619(n), A291304(n+2)]` -/
def P15012460213266073382.Spec : Prop :=
  ∀ n, (P15012460213266073382.a n : ℤ) = A235498 n

end A235498

/-! ## A235498.P13864369919485614992

`eq[A211316(n+2), A291273(n+2)]`
-/

namespace A235498.P13864369919485614992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211316 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291273 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235498.P13864369919485614992

namespace A235498

/-- `eq[A211316(n+2), A291273(n+2)]` -/
def P13864369919485614992.Spec : Prop :=
  ∀ n, (P13864369919485614992.a n : ℤ) = A235498 n

end A235498

/-! ## A235498.P5962886061385618063

`A103221(A008611(2*n))+n`
-/

namespace A235498.P5962886061385618063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A008611 (2 * n)).toNat + (n : ℤ)

end

end A235498.P5962886061385618063

namespace A235498

/-- `A103221(A008611(2*n))+n` -/
def P5962886061385618063.Spec : Prop :=
  ∀ n, P5962886061385618063.a n = A235498 n

end A235498

/-! ## A235498.P12150241307053750652

`A085268(2*n+3)-1`
-/

namespace A235498.P12150241307053750652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085268 (2 * n + 3 + 32) - 1

end

end A235498.P12150241307053750652

namespace A235498

/-- `A085268(2*n+3)-1` -/
def P12150241307053750652.Spec : Prop :=
  ∀ n, P12150241307053750652.a n = A235498 n

end A235498

/-! ## A235498.P10519570424047369233

`A008618(2*n+3)+n`
-/

namespace A235498.P10519570424047369233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (2 * n + 3) + (n : ℤ)

end

end A235498.P10519570424047369233

namespace A235498

/-- `A008618(2*n+3)+n` -/
def P10519570424047369233.Spec : Prop :=
  ∀ n, P10519570424047369233.a n = A235498 n

end A235498

/-! ## A235498.P10230794761722360645

`2*n+1-A002264(A047400(n+2))`
-/

namespace A235498.P10230794761722360645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A002264 (A047400 (n + 2)).toNat

end

end A235498.P10230794761722360645

namespace A235498

/-- `2*n+1-A002264(A047400(n+2))` -/
def P10230794761722360645.Spec : Prop :=
  ∀ n, P10230794761722360645.a n = A235498 n

end A235498

/-! ## A235498.P8549497411481134639

`A002264(A047349(n+1)+n+2)`
-/

namespace A235498.P8549497411481134639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A047349 (n + 1) + (n + 2 : ℤ)).toNat

end

end A235498.P8549497411481134639

namespace A235498

/-- `A002264(A047349(n+1)+n+2)` -/
def P8549497411481134639.Spec : Prop :=
  ∀ n, P8549497411481134639.a n = A235498 n

end A235498

/-! ## A235498.P3877050352976775604

`A002264(A004772(n+2)+2*n)`
-/

namespace A235498.P3877050352976775604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004772 (n + 2) + (2 * n : ℤ)).toNat

end

end A235498.P3877050352976775604

namespace A235498

/-- `A002264(A004772(n+2)+2*n)` -/
def P3877050352976775604.Spec : Prop :=
  ∀ n, P3877050352976775604.a n = A235498 n

end A235498

/-! ## A235498.P11436639399319747265

`A002264(A042968(n+1)+2*n+1)`
-/

namespace A235498.P11436639399319747265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A042968 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A235498.P11436639399319747265

namespace A235498

/-- `A002264(A042968(n+1)+2*n+1)` -/
def P11436639399319747265.Spec : Prop :=
  ∀ n, P11436639399319747265.a n = A235498 n

end A235498

/-! ## A235498.P2310422104162702651

`A002264(A004396(2*n+1)+2*n+1)`
-/

namespace A235498.P2310422104162702651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004396 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A235498.P2310422104162702651

namespace A235498

/-- `A002264(A004396(2*n+1)+2*n+1)` -/
def P2310422104162702651.Spec : Prop :=
  ∀ n, P2310422104162702651.a n = A235498 n

end A235498

/-! ## A235498.P509096874931327279

`A002264(A242774(2*n+2*n+1))`
-/

namespace A235498.P509096874931327279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A242774 (2 * n + (2 * n + 1))).toNat

end

end A235498.P509096874931327279

namespace A235498

/-- `A002264(A242774(2*n+2*n+1))` -/
def P509096874931327279.Spec : Prop :=
  ∀ n, P509096874931327279.a n = A235498 n

end A235498

/-! ## A235498.P15988234390948908567

`A026922(A312484(n))`
-/

namespace A235498.P15988234390948908567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A312484 n).toNat

end

end A235498.P15988234390948908567

namespace A235498

/-- `A026922(A312484(n))` -/
def P15988234390948908567.Spec : Prop :=
  ∀ n, P15988234390948908567.a n = A235498 n

end A235498

/-! ## A235498.P17233489918463832733

`A059169(A311612(n+1))`
-/

namespace A235498.P17233489918463832733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A311612 (n + 1)).toNat

end

end A235498.P17233489918463832733

namespace A235498

/-- `A059169(A311612(n+1))` -/
def P17233489918463832733.Spec : Prop :=
  ∀ n, P17233489918463832733.a n = A235498 n

end A235498

/-! ## A235498.P7367976111388429781

`A002264(A004523(A004767(n)+n))`
-/

namespace A235498.P7367976111388429781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004523 (A004767 n + (n : ℤ)).toNat).toNat

end

end A235498.P7367976111388429781

namespace A235498

/-- `A002264(A004523(A004767(n)+n))` -/
def P7367976111388429781.Spec : Prop :=
  ∀ n, P7367976111388429781.a n = A235498 n

end A235498

/-! ## A235498.P16380405381017616428

`A152467(A063209(n+1))`
-/

namespace A235498.P16380405381017616428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A063209 (n + 1)).toNat

end

end A235498.P16380405381017616428

namespace A235498

/-- `A152467(A063209(n+1))` -/
def P16380405381017616428.Spec : Prop :=
  ∀ n, P16380405381017616428.a n = A235498 n

end A235498

/-! ## A235498.P15443625067746037261

`A343609(A017341(n))`
-/

namespace A235498.P15443625067746037261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A017341 n).toNat

end

end A235498.P15443625067746037261

namespace A235498

/-- `A343609(A017341(n))` -/
def P15443625067746037261.Spec : Prop :=
  ∀ n, P15443625067746037261.a n = A235498 n

end A235498

/-!
# A235499: For k in {2,3,...,9} define a sequence as follows: a(0)=0; for n>=0, a(n+1)=a(n)+1, unless a(n) ends in k, in which case a(n+1) is obtained by replacing the last digit of a(n) with the digit(s) of k^2. This is k(3).

The programs for A235499, the canonical program `A235499.P2738815431500177656` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235499 has offset 0).

The definition of A235499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235499.P2738815431500177656

`Δ[n²]-(n+1)%5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A235499

/-- `Δ[n²]-(n+1)%5` -/
def P2738815431500177656.Spec : Prop :=
  ∀ n, P2738815431500177656.a n = A235499 n

theorem P2738815431500177656.correct : P2738815431500177656.Spec := by
  intro n
  simp only [A235499]

end A235499

/-! ## A235499.P17968706512789193533

`5*floor((n+1)/5)+n`
-/

namespace A235499.P17968706512789193533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊(n + 1 : ℚ) / 5⌋ + (n : ℤ)

end

end A235499.P17968706512789193533

namespace A235499

/-- `5*floor((n+1)/5)+n` -/
def P17968706512789193533.Spec : Prop :=
  ∀ n, P17968706512789193533.a n = A235499 n

end A235499

/-! ## A235499.P2189922326100819982

`comp[2*(n+2)-n%5]`
-/

namespace A235499.P2189922326100819982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - ((n % 5 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A235499.P2189922326100819982

namespace A235499

/-- `comp[2*(n+2)-n%5]` -/
def P2189922326100819982.Spec : Prop :=
  ∀ n, (P2189922326100819982.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P11433585925521195106

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=6, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A235499.P11433585925521195106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 6, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235499.P11433585925521195106

namespace A235499

/-- `∑[floor(a(n-5))]` -/
def P11433585925521195106.Spec : Prop :=
  ∀ n, (P11433585925521195106.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P474172482483041728

`comp[(9*(n+1))%5+2*n]`
-/

namespace A235499.P474172482483041728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1) % 5 + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A235499.P474172482483041728

namespace A235499

/-- `comp[(9*(n+1))%5+2*n]` -/
def P474172482483041728.Spec : Prop :=
  ∀ n, (P474172482483041728.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P2003874913364819023

`∪[A017377(n), A390774(n)]`
-/

namespace A235499.P2003874913364819023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235499.P2003874913364819023

namespace A235499

/-- `∪[A017377(n), A390774(n)]` -/
def P2003874913364819023.Spec : Prop :=
  ∀ n, (P2003874913364819023.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P8487813196278032021

`∪[A054967(n+1), A390774(n)]`
-/

namespace A235499.P8487813196278032021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235499.P8487813196278032021

namespace A235499

/-- `∪[A054967(n+1), A390774(n)]` -/
def P8487813196278032021.Spec : Prop :=
  ∀ n, (P8487813196278032021.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P7729638294683688933

`∪[A090771(n+1), A390774(n)]`
-/

namespace A235499.P7729638294683688933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235499.P7729638294683688933

namespace A235499

/-- `∪[A090771(n+1), A390774(n)]` -/
def P7729638294683688933.Spec : Prop :=
  ∀ n, (P7729638294683688933.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P14802702771958317758

`∪[A268044(n+1), A390774(n)]`
-/

namespace A235499.P14802702771958317758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235499.P14802702771958317758

namespace A235499

/-- `∪[A268044(n+1), A390774(n)]` -/
def P14802702771958317758.Spec : Prop :=
  ∀ n, (P14802702771958317758.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P9065053561281326376

`∪[A268044(n+1), A391163(n)]`
-/

namespace A235499.P9065053561281326376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391163 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235499.P9065053561281326376

namespace A235499

/-- `∪[A268044(n+1), A391163(n)]` -/
def P9065053561281326376.Spec : Prop :=
  ∀ n, (P9065053561281326376.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P17923586208476322642

`∪[A273669(n+1), A390774(n)]`
-/

namespace A235499.P17923586208476322642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235499.P17923586208476322642

namespace A235499

/-- `∪[A273669(n+1), A390774(n)]` -/
def P17923586208476322642.Spec : Prop :=
  ∀ n, (P17923586208476322642.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P13569733757567535413

`∪[A277596(n+1), A390774(n)]`
-/

namespace A235499.P13569733757567535413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235499.P13569733757567535413

namespace A235499

/-- `∪[A277596(n+1), A390774(n)]` -/
def P13569733757567535413.Spec : Prop :=
  ∀ n, (P13569733757567535413.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P1370577394572656305

`∪[A054967(n+1), A345019(n+1)+1]`
-/

namespace A235499.P1370577394572656305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345019 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235499.P1370577394572656305

namespace A235499

/-- `∪[A054967(n+1), A345019(n+1)+1]` -/
def P1370577394572656305.Spec : Prop :=
  ∀ n, (P1370577394572656305.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P16775928004359088767

`∪[A197652(n+1), A345019(n+1)+1]`
-/

namespace A235499.P16775928004359088767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345019 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235499.P16775928004359088767

namespace A235499

/-- `∪[A197652(n+1), A345019(n+1)+1]` -/
def P16775928004359088767.Spec : Prop :=
  ∀ n, (P16775928004359088767.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P11504770150378551936

`comp[∑[A010122(n)]+1]`
-/

namespace A235499.P11504770150378551936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A235499.P11504770150378551936

namespace A235499

/-- `comp[∑[A010122(n)]+1]` -/
def P11504770150378551936.Spec : Prop :=
  ∀ n, (P11504770150378551936.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P17520195227421398052

`Δ[n²-A130483(n)]`
-/

namespace A235499.P17520195227421398052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A130483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235499.P17520195227421398052

namespace A235499

/-- `Δ[n²-A130483(n)]` -/
def P17520195227421398052.Spec : Prop :=
  ∀ n, P17520195227421398052.a n = A235499 n

end A235499

/-! ## A235499.P14437197171336568570

`comp[A293481(n+1)-1]`
-/

namespace A235499.P14437197171336568570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293481 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A235499.P14437197171336568570

namespace A235499

/-- `comp[A293481(n+1)-1]` -/
def P14437197171336568570.Spec : Prop :=
  ∀ n, (P14437197171336568570.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P11901133479848353946

`comp[A293292(n+1)+4]`
-/

namespace A235499.P11901133479848353946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A235499.P11901133479848353946

namespace A235499

/-- `comp[A293292(n+1)+4]` -/
def P11901133479848353946.Spec : Prop :=
  ∀ n, (P11901133479848353946.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P9716105783056087849

`lt[Δ[A003132(n)], 8]`
-/

namespace A235499.P9716105783056087849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A235499.P9716105783056087849

namespace A235499

/-- `lt[Δ[A003132(n)], 8]` -/
def P9716105783056087849.Spec : Prop :=
  ∀ n, (P9716105783056087849.a n : ℤ) = A235499 n

end A235499

/-! ## A235499.P4931650783170538713

`lt[Δ[A061602(n)], 25]`
-/

namespace A235499.P4931650783170538713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A235499.P4931650783170538713

namespace A235499

/-- `lt[Δ[A061602(n)], 25]` -/
def P4931650783170538713.Spec : Prop :=
  ∀ n, (P4931650783170538713.a n : ℤ) = A235499 n

end A235499

