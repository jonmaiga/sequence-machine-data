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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A149400: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149400, there is no canonical definition to state claims against.
-/

/-! ## A149400.P15552477028570273790

`A177431(2^n-∑{e}[n+1, #])`
-/

namespace A149400.P15552477028570273790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177431 (2 ^ n - ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A149400.P15552477028570273790

/-! ## A149400.P14932708689961877941

`A254062(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A149400.P14932708689961877941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A254062 (a (n - 1)).toNat + a (n - 1)

end

end A149400.P14932708689961877941

/-!
# A149401: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A149401, there is no canonical definition to state claims against.
-/

/-! ## A149401.P10812632753325613014

`A149402(A001096(n))`
-/

namespace A149401.P10812632753325613014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149402 (A001096 n).toNat

end

end A149401.P10812632753325613014

/-! ## A149401.P6192135933084463740

`A126257(2*A149407(n))`
-/

namespace A149401.P6192135933084463740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (2 * A149407 n).toNat

end

end A149401.P6192135933084463740

/-!
# A149402: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A149402, there is no canonical definition to state claims against.
-/

/-! ## A149402.P9617364086154177019

`A149407(n)-A186748(A084635(n))`
-/

namespace A149402.P9617364086154177019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149407 n - A186748 (A084635 n).toNat

end

end A149402.P9617364086154177019

/-! ## A149402.P11934644984246763392

`A149407(n)-A186748(A082499(n+1))`
-/

namespace A149402.P11934644984246763392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149407 n - A186748 (A082499 (n + 1)).toNat

end

end A149402.P11934644984246763392

/-!
# A149403: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A149403, there is no canonical definition to state claims against.
-/

/-! ## A149403.P4107830953520422253

`A003056(A219889(n+3))*A027337(n)`
-/

namespace A149403.P4107830953520422253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A219889 (n + 3)).toNat * A027337 n

end

end A149403.P4107830953520422253

/-! ## A149403.P14199102805691665680

`A054345(A149494(n))`
-/

namespace A149403.P14199102805691665680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054345 (A149494 n).toNat

end

end A149403.P14199102805691665680

/-!
# A149404: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149404, there is no canonical definition to state claims against.
-/

/-! ## A149404.P47004609504603010

`A055086(C(ceil(π*n), floor((n/2)²)))`
-/

namespace A149404.P47004609504603010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Nat.choose ⌈Real.pi * (n : ℝ)⌉.toNat ⌊((n : ℚ) / 2) ^ 2⌋.toNat)

end

end A149404.P47004609504603010

/-! ## A149404.P420143225303063510

`A204008(A079144(n))`
-/

namespace A149404.P420143225303063510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204008 (A079144 n).toNat

end

end A149404.P420143225303063510

/-!
# A149405: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149405, there is no canonical definition to state claims against.
-/

/-! ## A149405.P10882059122346226453

`A358577(A020098(n))`
-/

namespace A149405.P10882059122346226453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358577 (A020098 n).toNat

end

end A149405.P10882059122346226453

/-! ## A149405.P3344719175471729791

`A256106(A172065(n))`
-/

namespace A149405.P3344719175471729791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256106 (A172065 n).toNat

end

end A149405.P3344719175471729791

/-!
# A149406: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A149406, there is no canonical definition to state claims against.
-/

/-! ## A149406.P4819912854100082365

`A121071(n)+A000010(A004031(n))`
-/

namespace A149406.P4819912854100082365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121071 n + A000010 (A004031 n).toNat

end

end A149406.P4819912854100082365

/-! ## A149406.P6298085432542927710

`A011373(or(A000672(2*(n+2)), A005153(n+1)))`
-/

namespace A149406.P6298085432542927710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 (Int.lor (A000672 (2 * (n + 2))) (A005153 (n + 1))).toNat

end

end A149406.P6298085432542927710

/-!
# A149407: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A149407, there is no canonical definition to state claims against.
-/

/-! ## A149407.P6769970928943612524

`A186748(A084635(n))+A149402(n)`
-/

namespace A149407.P6769970928943612524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186748 (A084635 n).toNat + A149402 n

end

end A149407.P6769970928943612524

/-!
# A149408: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149408, there is no canonical definition to state claims against.
-/

/-! ## A149408.P11148208712266146857

`A006984(A149412(n))`
-/

namespace A149408.P11148208712266146857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006984 (A149412 n).toNat

end

end A149408.P11148208712266146857

/-! ## A149408.P3643589799130951777

`A258280(A046916(n))`
-/

namespace A149408.P3643589799130951777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (A046916 n).toNat

end

end A149408.P3643589799130951777

/-!
# A149409: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149409, there is no canonical definition to state claims against.
-/

/-! ## A149409.P16916707838759514558

`A149410(A001096(n))`
-/

namespace A149409.P16916707838759514558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149410 (A001096 n).toNat

end

end A149409.P16916707838759514558

/-! ## A149409.P3402781030023625606

`A173921(A216713(n))`
-/

namespace A149409.P3402781030023625606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173921 (A216713 n).toNat

end

end A149409.P3402781030023625606

/-!
# A149411: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149411, there is no canonical definition to state claims against.
-/

/-! ## A149411.P16838411660719510024

`or(A006667(A208222(n)), A149409(n))`
-/

namespace A149411.P16838411660719510024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006667 (A208222 n).toNat) (A149409 n)

end

end A149411.P16838411660719510024

/-! ## A149411.P17677942711122800639

`A130446(A149405(n))`
-/

namespace A149411.P17677942711122800639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A149405 n).toNat

end

end A149411.P17677942711122800639

/-!
# A149412: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149412, there is no canonical definition to state claims against.
-/

/-! ## A149412.P6618333206677284491

`A244797(A001003(n))+A001003(n)`
-/

namespace A149412.P6618333206677284491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244797 (A001003 n).toNat + A001003 n

end

end A149412.P6618333206677284491

/-! ## A149412.P2348493089848525296

`A307398(n)-A239313(A006251(n))`
-/

namespace A149412.P2348493089848525296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307398 n - A239313 (A006251 n).toNat

end

end A149412.P2348493089848525296

/-!
# A149413: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A149413, there is no canonical definition to state claims against.
-/

/-! ## A149413.P4730730066212270635

`A077223(A149414(n))`
-/

namespace A149413.P4730730066212270635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077223 (A149414 n).toNat

end

end A149413.P4730730066212270635

/-! ## A149413.P5741921787023017618

`A289207(or(2, A149414(n)))`
-/

namespace A149413.P5741921787023017618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (Int.lor 2 (A149414 n)).toNat

end

end A149413.P5741921787023017618

/-! ## A149413.P1859680891387152719

`A149414(n)-A055641(A119752(n+1))`
-/

namespace A149413.P1859680891387152719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149414 n - A055641 (A119752 (n + 1)).toNat

end

end A149413.P1859680891387152719

/-!
# A149414: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149414, there is no canonical definition to state claims against.
-/

/-! ## A149414.P5964090970763880352

`A077223(A149413(n))`
-/

namespace A149414.P5964090970763880352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077223 (A149413 n).toNat

end

end A149414.P5964090970763880352

/-! ## A149414.P7645744498617844168

`A023443(A274741(n)+A149413(n))`
-/

namespace A149414.P7645744498617844168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274741 n + A149413 n).toNat

end

end A149414.P7645744498617844168

/-! ## A149414.P5685381351696187422

`A028310(or(A062275(n), A149413(n)))`
-/

namespace A149414.P5685381351696187422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A062275 n) (A149413 n)).toNat

end

end A149414.P5685381351696187422

/-! ## A149414.P17759966253726607256

`A149413(n)+A055641(A119752(n+1))`
-/

namespace A149414.P17759966253726607256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149413 n + A055641 (A119752 (n + 1)).toNat

end

end A149414.P17759966253726607256

/-!
# A149415: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A149415, there is no canonical definition to state claims against.
-/

/-! ## A149415.P17758074899006079987

`A004184(A149416(n))`
-/

namespace A149415.P17758074899006079987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A149416 n).toNat

end

end A149415.P17758074899006079987

/-! ## A149415.P9340565164988713415

`A149416(A073789(n))`
-/

namespace A149415.P9340565164988713415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149416 (A073789 n).toNat

end

end A149415.P9340565164988713415

/-! ## A149415.P15375355453172829914

`A149416(A171644(n))`
-/

namespace A149415.P15375355453172829914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149416 (A171644 n).toNat

end

end A149415.P15375355453172829914

/-! ## A149415.P14628604774408429638

`A149416(A004869(n+1))`
-/

namespace A149415.P14628604774408429638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149416 (A004869 (n + 1)).toNat

end

end A149415.P14628604774408429638

/-!
# A149417: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149417, there is no canonical definition to state claims against.
-/

/-! ## A149417.P14010493477080418461

`A180156((n-1)^3+2)`
-/

namespace A149417.P14010493477080418461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180156 (((n : ℤ) - 1) ^ 3 + 2).toNat

end

end A149417.P14010493477080418461

/-! ## A149417.P12556052758247216190

`A110266(A150442(n))`
-/

namespace A149417.P12556052758247216190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A150442 n).toNat

end

end A149417.P12556052758247216190

/-!
# A149418: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (-1, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149418, there is no canonical definition to state claims against.
-/

/-! ## A149418.P2762576484206137012

`A096135(A149415(n))`
-/

namespace A149418.P2762576484206137012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096135 (A149415 n).toNat

end

end A149418.P2762576484206137012

/-! ## A149418.P2843903671158881771

`A376591(A148430(n))`
-/

namespace A149418.P2843903671158881771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376591 (A148430 n).toNat

end

end A149418.P2843903671158881771

/-!
# A149419: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149419, there is no canonical definition to state claims against.
-/

/-! ## A149419.P15957730465659902576

`A178210(A149403(n))`
-/

namespace A149419.P15957730465659902576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A149403 n).toNat

end

end A149419.P15957730465659902576

/-!
# A149420: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (-1, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149420, there is no canonical definition to state claims against.
-/

/-! ## A149420.P7782987758509698418

`A348486(A104991(n))-n`
-/

namespace A149420.P7782987758509698418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348486 (A104991 n).toNat - (n : ℤ)

end

end A149420.P7782987758509698418

/-! ## A149420.P10542583126117437991

`A134478(∑{d}[A055793(n+1), #])`
-/

namespace A149420.P10542583126117437991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A149420.P10542583126117437991

/-!
# A149421: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149421, there is no canonical definition to state claims against.
-/

/-! ## A149421.P6558994291837381138

`A032572(A272824(n))`
-/

namespace A149421.P6558994291837381138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032572 (A272824 n).toNat

end

end A149421.P6558994291837381138

/-! ## A149421.P3004822400759008561

`A364385(A148227(n))`
-/

namespace A149421.P3004822400759008561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364385 (A148227 n).toNat

end

end A149421.P3004822400759008561

/-!
# A149422: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149422, there is no canonical definition to state claims against.
-/

/-! ## A149422.P7470427723750204330

`A245539(∑[2^n]-floor(2^(n-1)))`
-/

namespace A149422.P7470427723750204330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245539 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋).toNat

end

end A149422.P7470427723750204330

/-! ## A149422.P8660252527731980729

`A087086(A027102(n))`
-/

namespace A149422.P8660252527731980729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 (A027102 n).toNat

end

end A149422.P8660252527731980729

/-!
# A149423: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149423, there is no canonical definition to state claims against.
-/

/-! ## A149423.P3897994271369597178

`A185413((2-a(n-2)-n)²+1)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A149423.P3897994271369597178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A185413 ((2 - a (n - 2) - (n : ℤ)) ^ 2 + 1).toNat

end

end A149423.P3897994271369597178

/-! ## A149423.P1335373181524706363

`A177523(n)+A160812(A005809(n))`
-/

namespace A149423.P1335373181524706363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177523 n + A160812 (A005809 n).toNat

end

end A149423.P1335373181524706363

/-!
# A149424: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, -1), (1, 1, 1)}.

The programs for A149424, there is no canonical definition to state claims against.
-/

/-! ## A149424.P1288658937999341975

`A335570(∑[n+4]+2)`
-/

namespace A149424.P1288658937999341975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A149424.P1288658937999341975

/-! ## A149424.P8691143574271439948

`A335570(A000217(n+4)-4)%A267789(n+1)`
-/

namespace A149424.P8691143574271439948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335570 (A000217 (n + 4) - 4).toNat) (A267789 (n + 1))

end

end A149424.P8691143574271439948

/-! ## A149424.P13627641974345684786

`A335570(A000217(n+3)+n)+2%A033999(n)`
-/

namespace A149424.P13627641974345684786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A000217 (n + 3) + (n : ℤ)).toNat + Int.tmod 2 (A033999 n)

end

end A149424.P13627641974345684786

/-! ## A149424.P12529320298927924130

`A210216(C(n, 2)+1)*A335570(A000217(n+3)+n)`
-/

namespace A149424.P12529320298927924130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210216 (Nat.choose n 2 + 1) * A335570 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A149424.P12529320298927924130

/-! ## A149424.P12068999216071840684

`A335570(A000217(n+4)-4)%A118752(n)`
-/

namespace A149424.P12068999216071840684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335570 (A000217 (n + 4) - 4).toNat) (A118752 n)

end

end A149424.P12068999216071840684

/-!
# A149425: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 1, 1)}.

The programs for A149425, there is no canonical definition to state claims against.
-/

/-! ## A149425.P9138473515632652203

`A332086(A230031(n)+A014448(n))`
-/

namespace A149425.P9138473515632652203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A230031 n + A014448 n).toNat

end

end A149425.P9138473515632652203

/-! ## A149425.P12249622692769221562

`A024417(A150985(n))`
-/

namespace A149425.P12249622692769221562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A150985 n).toNat

end

end A149425.P12249622692769221562

/-!
# A149426: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149426, there is no canonical definition to state claims against.
-/

/-! ## A149426.P10893275583931715270

`A260643(A089918(n))`
-/

namespace A149426.P10893275583931715270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260643 (A089918 n).toNat

end

end A149426.P10893275583931715270

/-! ## A149426.P12885866916568857685

`A180854(A181306(n))`
-/

namespace A149426.P12885866916568857685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180854 (A181306 n).toNat

end

end A149426.P12885866916568857685

/-!
# A149427: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149427, there is no canonical definition to state claims against.
-/

/-! ## A149427.P6257783421753417547

`A176611(n)-A091269(A003418(n))`
-/

namespace A149427.P6257783421753417547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176611 n - A091269 (A003418 n).toNat

end

end A149427.P6257783421753417547

/-! ## A149427.P6238944426138709452

`A352226(A190271(n))+A352216(n+1)`
-/

namespace A149427.P6238944426138709452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (A190271 n).toNat + A352216 (n + 1)

end

end A149427.P6238944426138709452

/-! ## A149427.P12505135142557338823

`A253786(A045690(2*n+3))+A162970(n+1)`
-/

namespace A149427.P12505135142557338823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 (A045690 (2 * n + 3)).toNat + A162970 (n + 1)

end

end A149427.P12505135142557338823

/-!
# A149428: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149428, there is no canonical definition to state claims against.
-/

/-! ## A149428.P14191993587387627453

`A149429(n)-A002487(A281259(n+1))`
-/

namespace A149428.P14191993587387627453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149429 n - A002487 (A281259 (n + 1)).toNat

end

end A149428.P14191993587387627453

/-! ## A149428.P11889907934029525697

`A059169(A079935(n+1)+A004111(n+4))`
-/

namespace A149428.P11889907934029525697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A079935 (n + 1) + A004111 (n + 4)).toNat

end

end A149428.P11889907934029525697

/-!
# A149429: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149429, there is no canonical definition to state claims against.
-/

/-! ## A149429.P13150926273124817220

`A149428(n)+A002487(A281259(n+1))`
-/

namespace A149429.P13150926273124817220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149428 n + A002487 (A281259 (n + 1)).toNat

end

end A149429.P13150926273124817220

/-!
# A149430: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1,0,0), (0,-1,1), (0,1,-1), (1,1,1)}.

The programs for A149430, there is no canonical definition to state claims against.
-/

/-! ## A149430.P6297438515260287366

`A343609(A118011(ceil(2^(n-1)))²)`
-/

namespace A149430.P6297438515260287366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A118011 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat ^ 2).toNat

end

end A149430.P6297438515260287366

/-! ## A149430.P13035561591685311855

`A001835(n)+A001222(A167017(n))`
-/

namespace A149430.P13035561591685311855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n + A001222 (A167017 n).toNat

end

end A149430.P13035561591685311855

/-! ## A149430.P11351837452147422368

`A194640(A224514(n))+A156659(n)`
-/

namespace A149430.P11351837452147422368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A224514 n).toNat + A156659 n

end

end A149430.P11351837452147422368

/-!
# A149431: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (0, 0, -1), (1, 1, 0)}.

The programs for A149431, there is no canonical definition to state claims against.
-/

/-! ## A149431.P11727352777619098489

`A359034(∑[n^n])`
-/

namespace A149431.P11727352777619098489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359034 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A149431.P11727352777619098489

/-! ## A149431.P16261241148693742861

`A309977(A018097(n))`
-/

namespace A149431.P16261241148693742861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309977 (A018097 n).toNat

end

end A149431.P16261241148693742861

/-!
# A149432: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149432, there is no canonical definition to state claims against.
-/

/-! ## A149432.P2382737235662967911

`A123249(A389411(n))`
-/

namespace A149432.P2382737235662967911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123249 (A389411 n).toNat

end

end A149432.P2382737235662967911

/-! ## A149432.P1759172911792991470

`A188312(n)+A030315(A000272(n))`
-/

namespace A149432.P1759172911792991470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188312 n + A030315 (A000272 n).toNat

end

end A149432.P1759172911792991470

/-! ## A149432.P1662159951147714824

`A084782(n)+A064459(A117635(n))`
-/

namespace A149432.P1662159951147714824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084782 n + A064459 (A117635 n).toNat

end

end A149432.P1662159951147714824

/-!
# A149433: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149433, there is no canonical definition to state claims against.
-/

/-! ## A149433.P13145165575094336103

`A276214(A104184(n))`
-/

namespace A149433.P13145165575094336103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276214 (A104184 n).toNat

end

end A149433.P13145165575094336103

/-! ## A149433.P9179523902082472651

`A256555((a(n-1)+n)²)` with `a(0)=1, a(1)=1`
-/

namespace A149433.P9179523902082472651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A256555 ((a (n - 1) + (n : ℤ)) ^ 2).toNat

end

end A149433.P9179523902082472651

/-!
# A149434: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 1, 1)}.

The programs for A149434, there is no canonical definition to state claims against.
-/

/-! ## A149434.P18277851888255110877

`A004525(A149444(n)+A149430(n))`
-/

namespace A149434.P18277851888255110877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149444 n + A149430 n).toNat

end

end A149434.P18277851888255110877

/-! ## A149434.P6804974411293352481

`A004526(A149444(n)+A149430(n))`
-/

namespace A149434.P6804974411293352481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149444 n + A149430 n).toNat

end

end A149434.P6804974411293352481

/-! ## A149434.P3832171444872844634

`A006370(A149444(n)+A149430(n))`
-/

namespace A149434.P3832171444872844634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A149444 n + A149430 n).toNat

end

end A149434.P3832171444872844634

/-! ## A149434.P6738036111750579432

`A032742(A149444(n)+A149430(n))`
-/

namespace A149434.P6738036111750579432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A149444 n + A149430 n).toNat

end

end A149434.P6738036111750579432

/-!
# A149435: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149435, there is no canonical definition to state claims against.
-/

/-! ## A149435.P8179946300045277149

`Δ[A307487(n)%A011792(n)]`
-/

namespace A149435.P8179946300045277149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307487 n) (A011792 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A149435.P8179946300045277149

/-! ## A149435.P11557406189475552520

`A218876(round((n+4)*2^(n-3)))+A026641(n)`
-/

namespace A149435.P11557406189475552520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218876 (SequenceMachineLib.roundAway ((n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))).toNat + A026641 n

end

end A149435.P11557406189475552520

/-! ## A149435.P5034338399359553632

`A318921(2*n*∏[2*(2*n+1)/(n+2)])+A026641(n)`
-/

namespace A149435.P5034338399359553632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (SequenceMachineLib.roundAway (2 * ((n : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)))).toNat + A026641 n

end

end A149435.P5034338399359553632

/-!
# A149436: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149436, there is no canonical definition to state claims against.
-/

/-! ## A149436.P14319560480703095468

`floor(sqrt(ceil(A028242(2*4^n)²/6)/(n+1)))`
-/

namespace A149436.P14319560480703095468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((⌈(A028242 (2 * 4 ^ n) ^ 2 : ℚ) / 6⌉ : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A149436.P14319560480703095468

/-! ## A149436.P17452661756118301065

`A060384(A360211(n+1))`
-/

namespace A149436.P17452661756118301065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A360211 (n + 1)).toNat

end

end A149436.P17452661756118301065

/-! ## A149436.P7740431468063328259

`A110656(A002531(2*(n+1))+2^floor(n/2))`
-/

namespace A149436.P7740431468063328259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (SequenceMachineLib.roundAway ((A002531 (2 * (n + 1)) : ℚ) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A149436.P7740431468063328259

/-!
# A149437: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149437, there is no canonical definition to state claims against.
-/

/-! ## A149437.P16176523858734855910

`A194444(ceil(2^(n-1)))+floor((n/2)²)`
-/

namespace A149437.P16176523858734855910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194444 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A149437.P16176523858734855910

/-! ## A149437.P6147292153251531444

`A064042(A149583(n+1))`
-/

namespace A149437.P6147292153251531444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064042 (A149583 (n + 1)).toNat

end

end A149437.P6147292153251531444

/-! ## A149437.P14626836954120906440

`A186314(n)+A024417(n!*∑[1/n!])`
-/

namespace A149437.P14626836954120906440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186314 n + A024417 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A149437.P14626836954120906440

/-!
# A149438: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149438, there is no canonical definition to state claims against.
-/

/-! ## A149438.P10654885747146432934

`or(char[∑[n+1]], A008615(2^n+4^n))`
-/

namespace A149438.P10654885747146432934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A008615 (2 ^ n + 4 ^ n))

end

end A149438.P10654885747146432934

/-! ## A149438.P1401600234761646459

`or(char[∑[n]], A151898(2^n+4^n-1))`
-/

namespace A149438.P1401600234761646459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A151898 ((2 ^ n : ℤ) + ((4 ^ n : ℤ) - 1)).toNat)

end

end A149438.P1401600234761646459

/-! ## A149438.P7024988052293515912

`A112689(A001576(n)+ceil(xor(1, n)/2))`
-/

namespace A149438.P7024988052293515912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A001576 n + ⌈(Nat.xor 1 n : ℚ) / 2⌉).toNat

end

end A149438.P7024988052293515912

/-!
# A149439: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 1, 0)}.

The programs for A149439, there is no canonical definition to state claims against.
-/

/-! ## A149439.P2563601088821334334

`A064775(A380651(n))`
-/

namespace A149439.P2563601088821334334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064775 (A380651 n).toNat

end

end A149439.P2563601088821334334

/-! ## A149439.P1485560741857610562

`A334811(n+1)-Δ[A056563(n)]`
-/

namespace A149439.P1485560741857610562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334811 (n + 1) - (f1 (n + 1) - f1 n)

end

end A149439.P1485560741857610562

/-! ## A149439.P1142512920544105080

`A334811(n+1)-Δ[A126688(n+1)]`
-/

namespace A149439.P1142512920544105080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334811 (n + 1) - (f1 (n + 1) - f1 n)

end

end A149439.P1142512920544105080

/-!
# A149440: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A149440, there is no canonical definition to state claims against.
-/

/-! ## A149440.P15321015662482430096

`A008615(A272787(n)+A008611(n))`
-/

namespace A149440.P15321015662482430096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A272787 n + A008611 n).toNat

end

end A149440.P15321015662482430096

/-! ## A149440.P14399488404044697562

`A200545(n)+A008612(A272787(n))`
-/

namespace A149440.P14399488404044697562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200545 n + A008612 (A272787 n).toNat

end

end A149440.P14399488404044697562

/-! ## A149440.P8746453362468809316

`A008612(A272787(n)-A200545(n))`
-/

namespace A149440.P8746453362468809316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A272787 n - A200545 n).toNat

end

end A149440.P8746453362468809316

/-!
# A149441: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A149441, there is no canonical definition to state claims against.
-/

/-! ## A149441.P14625315371923982362

`A061070(A150860(n))`
-/

namespace A149441.P14625315371923982362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061070 (A150860 n).toNat

end

end A149441.P14625315371923982362

/-! ## A149441.P3524925387781064126

`A255072(n*A149365(n)+1)`
-/

namespace A149441.P3524925387781064126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 ((n : ℤ) * A149365 n + 1).toNat

end

end A149441.P3524925387781064126

/-! ## A149441.P1774053118855206397

`A112689(A133411(n+1)+4^n)`
-/

namespace A149441.P1774053118855206397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A133411 (n + 1) + (4 ^ n : ℤ)).toNat

end

end A149441.P1774053118855206397

/-!
# A149442: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149442, there is no canonical definition to state claims against.
-/

/-! ## A149442.P13712579765674948606

`A004525(A346517(n)+A150396(n))`
-/

namespace A149442.P13712579765674948606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A346517 n + A150396 n).toNat

end

end A149442.P13712579765674948606

/-! ## A149442.P3073651185322979875

`A150112(n)-A054404(A150071(n))`
-/

namespace A149442.P3073651185322979875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150112 n - A054404 (A150071 n).toNat

end

end A149442.P3073651185322979875

/-! ## A149442.P6603151874885608161

`A257173(A092664(n+1))+A149440(n)`
-/

namespace A149442.P6603151874885608161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257173 (A092664 (n + 1)).toNat + A149440 n

end

end A149442.P6603151874885608161

/-!
# A149443: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149443, there is no canonical definition to state claims against.
-/

/-! ## A149443.P7262120177717934264

`or(A151441(n), A237049(A126358(n)))`
-/

namespace A149443.P7262120177717934264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151441 n) (A237049 (A126358 n).toNat)

end

end A149443.P7262120177717934264

/-! ## A149443.P1085903436440821462

`or(A151441(n), A237049(A151448(n)))`
-/

namespace A149443.P1085903436440821462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151441 n) (A237049 (A151448 n).toNat)

end

end A149443.P1085903436440821462

/-! ## A149443.P5683279055394949813

`or(A337635(A007583(n)), A351506(n))`
-/

namespace A149443.P5683279055394949813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A337635 (A007583 n).toNat) (A351506 n)

end

end A149443.P5683279055394949813

/-!
# A149444: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149444, there is no canonical definition to state claims against.
-/

/-! ## A149444.P17188190892306641901

`A363547(n)+A169674(A193113(n))`
-/

namespace A149444.P17188190892306641901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363547 n + A169674 (A193113 n).toNat

end

end A149444.P17188190892306641901

/-! ## A149444.P11213149851911225266

`A363547(n)+A269517(A365532(n))`
-/

namespace A149444.P11213149851911225266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363547 n + A269517 (A365532 n).toNat

end

end A149444.P11213149851911225266

/-! ## A149444.P7657055441284939868

`A217438(A090319(n))-A029931(n)`
-/

namespace A149444.P7657055441284939868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217438 (A090319 n).toNat - A029931 n

end

end A149444.P7657055441284939868

/-!
# A149445: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149445, there is no canonical definition to state claims against.
-/

/-! ## A149445.P11528418770604996363

`A005843(A149455(n))-A149463(n)`
-/

namespace A149445.P11528418770604996363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A149455 n).toNat - A149463 n

end

end A149445.P11528418770604996363

/-! ## A149445.P17975035727362779532

`A149446(A073788(n))`
-/

namespace A149445.P17975035727362779532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149446 (A073788 n).toNat

end

end A149445.P17975035727362779532

/-! ## A149445.P3795475146150621255

`A149446(A171596(n))`
-/

namespace A149445.P3795475146150621255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149446 (A171596 n).toNat

end

end A149445.P3795475146150621255

/-!
# A149447: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149447, there is no canonical definition to state claims against.
-/

/-! ## A149447.P10211631001105238922

`A137588(A086351(n)+2)`
-/

namespace A149447.P10211631001105238922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A086351 n + 2).toNat

end

end A149447.P10211631001105238922

/-! ## A149447.P14447358716224873501

`A137588(or(2, A086351(n)))`
-/

namespace A149447.P14447358716224873501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (Int.lor 2 (A086351 n)).toNat

end

end A149447.P14447358716224873501

/-!
# A149448: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149448, there is no canonical definition to state claims against.
-/

/-! ## A149448.P4971403157122723122

`A056812(lcm(2, A299926(n+1)))`
-/

namespace A149448.P4971403157122723122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056812 (Int.lcm 2 (A299926 (n + 1)))

end

end A149448.P4971403157122723122

/-! ## A149448.P12850799962188092858

`A149449(n)-A010054(A000032(3*n))`
-/

namespace A149448.P12850799962188092858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149449 n - A010054 (A000032 (3 * n)).toNat

end

end A149448.P12850799962188092858

/-!
# A149449: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149449, there is no canonical definition to state claims against.
-/

/-! ## A149449.P12505738882291855179

`A039708(ceil(A001077(n)/2))`
-/

namespace A149449.P12505738882291855179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 ⌈(A001077 n : ℚ) / 2⌉.toNat

end

end A149449.P12505738882291855179

/-! ## A149449.P14587263177979917914

`A039708(round(A001077(n)/2))`
-/

namespace A149449.P14587263177979917914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (SequenceMachineLib.roundAway ((A001077 n : ℚ) / 2)).toNat

end

end A149449.P14587263177979917914

/-!
# A149450: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149450, there is no canonical definition to state claims against.
-/

/-! ## A149450.P3822328103854261920

`A034887(A051449(3*n+4)+A000586(n))`
-/

namespace A149450.P3822328103854261920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A051449 (3 * n + 4) + A000586 n).toNat

end

end A149450.P3822328103854261920

/-! ## A149450.P5154453842610550606

`and(A117318(A008277(3*(n+1))), A364742(n))`
-/

namespace A149450.P5154453842610550606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117318 (A008277 (3 * (n + 1))).toNat) (A364742 n)

end

end A149450.P5154453842610550606

/-! ## A149450.P14423122289441325884

`A034887(A293903(n+1)+A051449(3*n+4))`
-/

namespace A149450.P14423122289441325884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A293903 (n + 1) + A051449 (3 * n + 4)).toNat

end

end A149450.P14423122289441325884

/-!
# A149451: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A149451, there is no canonical definition to state claims against.
-/

/-! ## A149451.P14942148074393074081

`A050296(A150195(n))`
-/

namespace A149451.P14942148074393074081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A150195 n).toNat

end

end A149451.P14942148074393074081

/-! ## A149451.P2829179186291615113

`A296020(A046233(n+1)-n)`
-/

namespace A149451.P2829179186291615113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296020 (A046233 (n + 1) - (n : ℤ)).toNat

end

end A149451.P2829179186291615113

/-!
# A149452: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149452, there is no canonical definition to state claims against.
-/

/-! ## A149452.P5173752291657375899

`A349536(A047970(n))-A284581(n+1)`
-/

namespace A149452.P5173752291657375899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A047970 n).toNat - A284581 (n + 1)

end

end A149452.P5173752291657375899

/-! ## A149452.P6199475687694179522

`A074075(A150207(n))`
-/

namespace A149452.P6199475687694179522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074075 (A150207 n).toNat

end

end A149452.P6199475687694179522

/-!
# A149453: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149453, there is no canonical definition to state claims against.
-/

/-! ## A149453.P16144818995703878684

`A248180(A150457(n))`
-/

namespace A149453.P16144818995703878684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A150457 n).toNat

end

end A149453.P16144818995703878684

/-! ## A149453.P3235004783884610251

`A110655(A150548(n)+A150391(n))`
-/

namespace A149453.P3235004783884610251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A150548 n + A150391 n).toNat

end

end A149453.P3235004783884610251

/-! ## A149453.P12331143158783093205

`A008616(A008590(n*A148365(n)))`
-/

namespace A149453.P12331143158783093205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A008590 ((n : ℤ) * A148365 n).toNat).toNat

end

end A149453.P12331143158783093205

/-!
# A149454: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149454, there is no canonical definition to state claims against.
-/

/-! ## A149454.P15684154473922517673

`A008611(A212383(n)+A151054(n))`
-/

namespace A149454.P15684154473922517673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A212383 n + A151054 n).toNat

end

end A149454.P15684154473922517673

/-! ## A149454.P240010416122649664

`A300763(A291988(n)+A083324(n))`
-/

namespace A149454.P240010416122649664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A291988 n + A083324 n).toNat

end

end A149454.P240010416122649664

/-!
# A149455: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149455, there is no canonical definition to state claims against.
-/

/-! ## A149455.P18167203872421506095

`A004525(A149463(n)+A149445(n))`
-/

namespace A149455.P18167203872421506095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149463 n + A149445 n).toNat

end

end A149455.P18167203872421506095

/-! ## A149455.P15764081212252138496

`A029578(A149463(n)+A149445(n))`
-/

namespace A149455.P15764081212252138496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A149463 n + A149445 n).toNat

end

end A149455.P15764081212252138496

/-! ## A149455.P6503921987941541812

`A065033(A149463(n)+A149445(n))`
-/

namespace A149455.P6503921987941541812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A149463 n + A149445 n).toNat

end

end A149455.P6503921987941541812

/-! ## A149455.P1792356668851371728

`A078898(A149463(n)+A149445(n))`
-/

namespace A149455.P1792356668851371728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A149463 n + A149445 n).toNat

end

end A149455.P1792356668851371728

/-!
# A149456: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149456, there is no canonical definition to state claims against.
-/

/-! ## A149456.P4121472365012239482

`A052375(A052393(n+2))+A052367(n)`
-/

namespace A149456.P4121472365012239482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052375 (A052393 (n + 2)).toNat + A052367 n

end

end A149456.P4121472365012239482

/-! ## A149456.P13997368758060399291

`A003415(C(n!+1, 2)+1)`
-/

namespace A149456.P13997368758060399291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Nat.choose (Nat.factorial n + 1) 2 + 1)

end

end A149456.P13997368758060399291

/-!
# A149457: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149457, there is no canonical definition to state claims against.
-/

/-! ## A149457.P13826107758413824113

`A387141(A179604(n))`
-/

namespace A149457.P13826107758413824113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A179604 n).toNat

end

end A149457.P13826107758413824113

/-! ## A149457.P11397052310092606799

`A149067(n)+A054404(A122446(n))`
-/

namespace A149457.P11397052310092606799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149067 n + A054404 (A122446 n).toNat

end

end A149457.P11397052310092606799

/-! ## A149457.P13583949434375963358

`A332442(A087949(n))+A149393(n)`
-/

namespace A149457.P13583949434375963358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332442 (A087949 n).toNat + A149393 n

end

end A149457.P13583949434375963358

/-!
# A149458: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149458, there is no canonical definition to state claims against.
-/

/-! ## A149458.P7921473071155402810

`A149067(n)+A054404(A084509(n))`
-/

namespace A149458.P7921473071155402810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149067 n + A054404 (A084509 n).toNat

end

end A149458.P7921473071155402810

/-! ## A149458.P4570587402860164907

`A113225(n)+A002265(A307321(n))`
-/

namespace A149458.P4570587402860164907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113225 n + A002265 (A307321 n).toNat

end

end A149458.P4570587402860164907

/-! ## A149458.P6727624273782425939

`A364742(n)-A102037(A049939(n+1))`
-/

namespace A149458.P6727624273782425939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364742 n - A102037 (A049939 (n + 1)).toNat

end

end A149458.P6727624273782425939

/-!
# A149459: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149459, there is no canonical definition to state claims against.
-/

/-! ## A149459.P13622939833843430162

`A110655(∑[∑[A150605(n)]])-char[7*4^n-1]`
-/

namespace A149459.P13622939833843430162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150605 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * 4 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A149459.P13622939833843430162

/-! ## A149459.P9824523552821918736

`A110655(∑[∑[A150606(n)]])-char[7*4^n-1]`
-/

namespace A149459.P9824523552821918736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150606 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * 4 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A149459.P9824523552821918736

/-! ## A149459.P3612970292069570980

`A008615(A151065(n)+A151052(n))`
-/

namespace A149459.P3612970292069570980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A151065 n + A151052 n).toNat

end

end A149459.P3612970292069570980

/-!
# A149460: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149460, there is no canonical definition to state claims against.
-/

/-! ## A149460.P12567704048376229080

`A110655(∑[∑[A150605(n)]])`
-/

namespace A149460.P12567704048376229080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150605 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149460.P12567704048376229080

/-! ## A149460.P2383794401400549607

`A110655(∑[∑[A150606(n)]])`
-/

namespace A149460.P2383794401400549607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150606 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149460.P2383794401400549607

/-! ## A149460.P18258246449236814160

`A002264(A354453(n+3)+A140413(n))`
-/

namespace A149460.P18258246449236814160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A354453 (n + 3) + A140413 n).toNat

end

end A149460.P18258246449236814160

/-!
# A149461: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149461, there is no canonical definition to state claims against.
-/

/-! ## A149461.P7017838732242419046

`A076222(A084137(n))`
-/

namespace A149461.P7017838732242419046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076222 (A084137 n).toNat

end

end A149461.P7017838732242419046

/-! ## A149461.P9552393250374417626

`A243284(A000172(n))`
-/

namespace A149461.P9552393250374417626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243284 (A000172 n).toNat

end

end A149461.P9552393250374417626

/-!
# A149462: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, -1), (1, -1, 0), (1, 0, 1)}.

The programs for A149462, there is no canonical definition to state claims against.
-/

/-! ## A149462.P5584347569871241217

`or(n%2, A050296(A150213(n)))`
-/

namespace A149462.P5584347569871241217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A050296 (A150213 n).toNat)

end

end A149462.P5584347569871241217

/-! ## A149462.P5077485949489533836

`A050296(A150212(n))+A011670(n)`
-/

namespace A149462.P5077485949489533836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A150212 n).toNat + A011670 n

end

end A149462.P5077485949489533836

/-! ## A149462.P5636705212230213182

`A308823(n)+A050296(A150212(n))`
-/

namespace A149462.P5636705212230213182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308823 n + A050296 (A150212 n).toNat

end

end A149462.P5636705212230213182

/-!
# A149463: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 1, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149463, there is no canonical definition to state claims against.
-/

/-! ## A149463.P12947317499536232028

`A005843(A149455(n))-A149445(n)`
-/

namespace A149463.P12947317499536232028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A149455 n).toNat - A149445 n

end

end A149463.P12947317499536232028

/-! ## A149463.P1235153802011289725

`A151162(n)-A004524(A000302(n))`
-/

namespace A149463.P1235153802011289725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151162 n - A004524 (A000302 n).toNat

end

end A149463.P1235153802011289725

/-! ## A149463.P17224736148399489098

`A008621(A004006(n+2)*A186739(n))`
-/

namespace A149463.P17224736148399489098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A004006 (n + 2) * A186739 n).toNat

end

end A149463.P17224736148399489098

/-!
# A149464: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A149464, there is no canonical definition to state claims against.
-/

/-! ## A149464.P1911403173609064215

`A149467(n)-2%A149467(A360747(n))`
-/

namespace A149464.P1911403173609064215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149467 n - Int.tmod 2 (A149467 (A360747 n).toNat)

end

end A149464.P1911403173609064215

/-! ## A149464.P4039493505826510273

`A149467(n)-A005204(A046155(n)^A046155(n))`
-/

namespace A149464.P4039493505826510273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149467 n - A005204 (SequenceMachineLib.roundAway ((A046155 n : ℚ) ^ (A046155 n : ℤ))).toNat

end

end A149464.P4039493505826510273

/-!
# A149465: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 0, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149465, there is no canonical definition to state claims against.
-/

/-! ## A149465.P5395663534922667400

`A090955(A148305(n))`
-/

namespace A149465.P5395663534922667400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090955 (A148305 n).toNat

end

end A149465.P5395663534922667400

/-! ## A149465.P8026479903412551753

`A358378(A274582(n))`
-/

namespace A149465.P8026479903412551753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358378 (A274582 n).toNat

end

end A149465.P8026479903412551753

/-!
# A149466: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149466, there is no canonical definition to state claims against.
-/

/-! ## A149466.P12327751655700616724

`A349536(A346194(n)+A106167(n+5))`
-/

namespace A149466.P12327751655700616724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A346194 n + A106167 (n + 5)).toNat

end

end A149466.P12327751655700616724

/-! ## A149466.P9038385780789999540

`A358640(2*(n²+3))`
-/

namespace A149466.P9038385780789999540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358640 (2 * (n ^ 2 + 3))

end

end A149466.P9038385780789999540

/-!
# A149467: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A149467, there is no canonical definition to state claims against.
-/

/-! ## A149467.P11291770628756752996

`A127757(A030517(n+1)-A058681(n))`
-/

namespace A149467.P11291770628756752996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A030517 (n + 1) - A058681 n).toNat

end

end A149467.P11291770628756752996

/-! ## A149467.P15550280719427658515

`ceil(record[A245537(n+1)/4])-char[5]`
-/

namespace A149467.P15550280719427658515
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245537 (n + 1) : ℚ) / 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A149467.P15550280719427658515

/-!
# A149468: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149468, there is no canonical definition to state claims against.
-/

/-! ## A149468.P13317223774268182634

`A149469(n)-A037800(A261059(n+1)²)`
-/

namespace A149468.P13317223774268182634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149469 n - A037800 (A261059 (n + 1) ^ 2).toNat

end

end A149468.P13317223774268182634

/-! ## A149468.P16124207691853328923

`ceil(record[A245537(n+1)/4])`
-/

namespace A149468.P16124207691853328923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245537 (n + 1) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A149468.P16124207691853328923

/-!
# A149469: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149469, there is no canonical definition to state claims against.
-/

/-! ## A149469.P8143229501490445715

`A149468(n)+A037800(A062569(n))`
-/

namespace A149469.P8143229501490445715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149468 n + A037800 (A062569 n).toNat

end

end A149469.P8143229501490445715

/-! ## A149469.P9654231155357702240

`or(A037800(A123164(n)), A149468(n))`
-/

namespace A149469.P9654231155357702240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037800 (A123164 n).toNat) (A149468 n)

end

end A149469.P9654231155357702240

/-! ## A149469.P1179279704483453990

`A050296(or(A150239(n), A150259(n)))`
-/

namespace A149469.P1179279704483453990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (Int.lor (A150239 n) (A150259 n)).toNat

end

end A149469.P1179279704483453990

/-!
# A149470: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149470, there is no canonical definition to state claims against.
-/

/-! ## A149470.P320901522221781267

`A352272(A148399(n))`
-/

namespace A149470.P320901522221781267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352272 (A148399 n).toNat

end

end A149470.P320901522221781267

/-! ## A149470.P7521877893785621708

`A350846(n)+A180156((n-1)^3+2)`
-/

namespace A149470.P7521877893785621708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350846 n + A180156 (((n : ℤ) - 1) ^ 3 + 2).toNat

end

end A149470.P7521877893785621708

/-!
# A149471: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (1, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149471, there is no canonical definition to state claims against.
-/

/-! ## A149471.P17078782395072447673

`A351298(A149626(n))`
-/

namespace A149471.P17078782395072447673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351298 (A149626 n).toNat

end

end A149471.P17078782395072447673

/-! ## A149471.P2486770826798244722

`A350969(∑[A149689(n)])`
-/

namespace A149471.P2486770826798244722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350969 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149471.P2486770826798244722

/-!
# A149472: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A149472, there is no canonical definition to state claims against.
-/

/-! ## A149472.P13851461566452919528

`ceil(log((A147704(n)+1)!))`
-/

namespace A149472.P13851461566452919528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Nat.factorial (A147704 n + 1).toNat : ℝ)⌉

end

end A149472.P13851461566452919528

/-! ## A149472.P13832770603654719809

`A002330(A353850(∑[n]))`
-/

namespace A149472.P13832770603654719809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A353850 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A149472.P13832770603654719809

/-!
# A149473: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A149473, there is no canonical definition to state claims against.
-/

/-! ## A149473.P7411069458109657425

`A002372(A264910(n))+1`
-/

namespace A149473.P7411069458109657425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (A264910 n).toNat + 1

end

end A149473.P7411069458109657425

/-! ## A149473.P1549466654169407180

`A001462(A000142(n)*A156303(n))`
-/

namespace A149473.P1549466654169407180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A000142 n * A156303 n).toNat

end

end A149473.P1549466654169407180

/-!
# A149474: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149474, there is no canonical definition to state claims against.
-/

/-! ## A149474.P12915159494360114213

`A342518(4*C(n, 2)+2)`
-/

namespace A149474.P12915159494360114213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342518 (4 * Nat.choose n 2 + 2)

end

end A149474.P12915159494360114213

/-! ## A149474.P13920460091776458051

`A258251(A071738(n))`
-/

namespace A149474.P13920460091776458051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258251 (A071738 n).toNat

end

end A149474.P13920460091776458051

/-!
# A149475: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149475, there is no canonical definition to state claims against.
-/

/-! ## A149475.P15594587420038826961

`A290531(A000051(n))+A149476(n)`
-/

namespace A149475.P15594587420038826961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290531 (A000051 n).toNat + A149476 n

end

end A149475.P15594587420038826961

/-! ## A149475.P1965943995881795273

`A149476(n)-A118685(A001333(n))`
-/

namespace A149475.P1965943995881795273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149476 n - A118685 (A001333 n).toNat

end

end A149475.P1965943995881795273

/-! ## A149475.P9576475381432906785

`A149476(n)-A024155(A126374(n))`
-/

namespace A149475.P9576475381432906785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149476 n - A024155 (A126374 n).toNat

end

end A149475.P9576475381432906785

/-!
# A149476: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149476, there is no canonical definition to state claims against.
-/

/-! ## A149476.P5674835035667436820

`A149382(n)+A054899(A050146(n))`
-/

namespace A149476.P5674835035667436820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149382 n + A054899 (A050146 n).toNat

end

end A149476.P5674835035667436820

/-! ## A149476.P14606936937832243145

`A149475(n)+A118685(A001333(n))`
-/

namespace A149476.P14606936937832243145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149475 n + A118685 (A001333 n).toNat

end

end A149476.P14606936937832243145

/-! ## A149476.P7260289107048470082

`A149475(n)+A024155(A126374(n))`
-/

namespace A149476.P7260289107048470082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149475 n + A024155 (A126374 n).toNat

end

end A149476.P7260289107048470082

/-!
# A149477: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149477, there is no canonical definition to state claims against.
-/

/-! ## A149477.P6094889274815841551

`A100196(A320803(n)²)`
-/

namespace A149477.P6094889274815841551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A320803 n ^ 2).toNat

end

end A149477.P6094889274815841551

/-! ## A149477.P18168733114865683099

`A070000(A032208(n+1))`
-/

namespace A149477.P18168733114865683099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070000 (A032208 (n + 1 + 12)).toNat

end

end A149477.P18168733114865683099

/-!
# A149478: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A149478, there is no canonical definition to state claims against.
-/

/-! ## A149478.P1245459701325653479

`A347796(∑[∑[n]]+n)-char[4]`
-/

namespace A149478.P1245459701325653479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347796 (∑ j ∈ Finset.range (n + 1), f1 j + n) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A149478.P1245459701325653479

/-! ## A149478.P14693767465077855360

`A282168(A001372(n))`
-/

namespace A149478.P14693767465077855360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282168 (A001372 n).toNat

end

end A149478.P14693767465077855360

/-!
# A149479: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A149479, there is no canonical definition to state claims against.
-/

/-! ## A149479.P2313513894816238454

`A241827(A077221(n)+2)`
-/

namespace A149479.P2313513894816238454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241827 (A077221 n + 2).toNat

end

end A149479.P2313513894816238454

/-! ## A149479.P6430930327982467300

`A077470(A151800(a(n-1)))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A149479.P6430930327982467300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A077470 (A151800 (a (n - 1)).toNat).toNat

end

end A149479.P6430930327982467300

/-!
# A149480: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149480, there is no canonical definition to state claims against.
-/

/-! ## A149480.P6378670604465651978

`A149382(n)+A054899(A047781(n))`
-/

namespace A149480.P6378670604465651978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149382 n + A054899 (A047781 n).toNat

end

end A149480.P6378670604465651978

/-! ## A149480.P7081392522639094700

`A352676(a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A149480.P7081392522639094700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A352676 (a (n - 1)).toNat

end

end A149480.P7081392522639094700

/-!
# A149481: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A149481, there is no canonical definition to state claims against.
-/

/-! ## A149481.P4250531335452830282

`A347796(∑[∑[n]]+n)`
-/

namespace A149481.P4250531335452830282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347796 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A149481.P4250531335452830282

/-! ## A149481.P14776177528142081745

`A392293(a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A149481.P14776177528142081745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A392293 (a (n - 1)).toNat

end

end A149481.P14776177528142081745

/-!
# A149482: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A149482, there is no canonical definition to state claims against.
-/

/-! ## A149482.P8646292166182143234

`A301578(n)+A301574(A000045(3*n+1))`
-/

namespace A149482.P8646292166182143234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301578 n + A301574 (A000045 (3 * n + 1)).toNat

end

end A149482.P8646292166182143234

/-! ## A149482.P3114603248723629702

`A007203(xor(1, n*a(n-1))+1)` with `a(0)=1`
-/

namespace A149482.P3114603248723629702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007203 (Int.xor 1 ((n : ℤ) * a (n - 1)) + 1).toNat

end

end A149482.P3114603248723629702

/-!
# A149483: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149483, there is no canonical definition to state claims against.
-/

/-! ## A149483.P10964493426658337066

`A229343(A229356(n))+A149484(n)`
-/

namespace A149483.P10964493426658337066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229343 (A229356 n).toNat + A149484 n

end

end A149483.P10964493426658337066

/-! ## A149483.P17278541937849730162

`A149484(n)-A044940(A159315(n))`
-/

namespace A149483.P17278541937849730162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149484 n - A044940 (A159315 n).toNat

end

end A149483.P17278541937849730162

/-! ## A149483.P8346351729308476764

`A149484(n)-A196563(A156171(n))`
-/

namespace A149483.P8346351729308476764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149484 n - A196563 (A156171 n).toNat

end

end A149483.P8346351729308476764

/-!
# A149484: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149484, there is no canonical definition to state claims against.
-/

/-! ## A149484.P3599849142092128605

`A149483(n)+A044940(A159315(n))`
-/

namespace A149484.P3599849142092128605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149483 n + A044940 (A159315 n).toNat

end

end A149484.P3599849142092128605

/-! ## A149484.P16924880685899855634

`A218973(n)+A002264(A150953(n))`
-/

namespace A149484.P16924880685899855634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218973 n + A002264 (A150953 n).toNat

end

end A149484.P16924880685899855634

/-! ## A149484.P9275982885396690340

`A196563(A156171(n))+A149483(n)`
-/

namespace A149484.P9275982885396690340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A156171 n).toNat + A149483 n

end

end A149484.P9275982885396690340

/-!
# A149485: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149485, there is no canonical definition to state claims against.
-/

/-! ## A149485.P13260702063815518936

`A178210(A149470(n))`
-/

namespace A149485.P13260702063815518936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A149470 n).toNat

end

end A149485.P13260702063815518936

/-! ## A149485.P9069609989436898771

`A305194(A351621(n+2))`
-/

namespace A149485.P9069609989436898771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305194 (A351621 (n + 2)).toNat

end

end A149485.P9069609989436898771

/-!
# A149486: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A149486, there is no canonical definition to state claims against.
-/

/-! ## A149486.P10613108976867840785

`A328804((n+1)^n)-(n-1)`
-/

namespace A149486.P10613108976867840785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328804 ((n + 1) ^ n) - ((n : ℤ) - 1)

end

end A149486.P10613108976867840785

/-! ## A149486.P17737434319087933542

`A282166(A320803(n))`
-/

namespace A149486.P17737434319087933542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282166 (A320803 n).toNat

end

end A149486.P17737434319087933542

/-!
# A149487: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149487, there is no canonical definition to state claims against.
-/

/-! ## A149487.P15972337431151939557

`A090620(A383737(n))+1`
-/

namespace A149487.P15972337431151939557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A383737 n).toNat + 1

end

end A149487.P15972337431151939557

/-!
# A149488: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, -1, 1), (1, 0, -1)}.

The programs for A149488, there is no canonical definition to state claims against.
-/

/-! ## A149488.P17457344239013024312

`A247833(A149432(n))`
-/

namespace A149488.P17457344239013024312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247833 (A149432 n).toNat

end

end A149488.P17457344239013024312

/-! ## A149488.P9249703247220287228

`A343609(A126393(n))+A000041(n)`
-/

namespace A149488.P9249703247220287228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A126393 n).toNat + A000041 n

end

end A149488.P9249703247220287228

/-! ## A149488.P12728973824278782196

`A008612(A130567(n+1)+A000142(n))`
-/

namespace A149488.P12728973824278782196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A130567 (n + 1) + A000142 n).toNat

end

end A149488.P12728973824278782196

/-!
# A149489: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (0, 1, -1), (1, 1, 0)}.

The programs for A149489, there is no canonical definition to state claims against.
-/

/-! ## A149489.P6179940591604864350

`A008624(A026529(n+2)+2)`
-/

namespace A149489.P6179940591604864350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A026529 (n + 2) + 2).toNat

end

end A149489.P6179940591604864350

/-! ## A149489.P2128836009204877211

`A242062(10*A109081(n+1))`
-/

namespace A149489.P2128836009204877211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (10 * A109081 (n + 1)).toNat

end

end A149489.P2128836009204877211

/-! ## A149489.P13136858294320510189

`A253188(or(1, A123639(n+2)))`
-/

namespace A149489.P13136858294320510189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253188 (Int.lor 1 (A123639 (n + 2))).toNat

end

end A149489.P13136858294320510189

/-!
# A149490: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149490, there is no canonical definition to state claims against.
-/

/-! ## A149490.P18429686118536332488

`A034887(A161680(n)+A151091(n))`
-/

namespace A149490.P18429686118536332488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A161680 n + A151091 n).toNat

end

end A149490.P18429686118536332488

/-! ## A149490.P441928109739508835

`A008616(A287806(n)+A181565(n))`
-/

namespace A149490.P441928109739508835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A287806 n + A181565 n).toNat

end

end A149490.P441928109739508835

/-! ## A149490.P17759286079218005495

`A008611(A151087(n)-A008619(n))`
-/

namespace A149490.P17759286079218005495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A151087 n - A008619 n).toNat

end

end A149490.P17759286079218005495

/-!
# A149491: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149491, there is no canonical definition to state claims against.
-/

/-! ## A149491.P6648706585093579485

`A113520(A291653(n)+2)`
-/

namespace A149491.P6648706585093579485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A291653 n + 2).toNat

end

end A149491.P6648706585093579485

/-! ## A149491.P104993284442627857

`A034887(Δ[Δ[A121988(n)]])`
-/

namespace A149491.P104993284442627857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (f1 (n + 1) - f1 n).toNat

end

end A149491.P104993284442627857

/-! ## A149491.P1059932220834494138

`A002264((n+4)*A033321(n))`
-/

namespace A149491.P1059932220834494138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((n + 4 : ℤ) * A033321 n).toNat

end

end A149491.P1059932220834494138

/-!
# A149492: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A149492, there is no canonical definition to state claims against.
-/

/-! ## A149492.P10357995116852987739

`A008620(xor(A025527(n+1), A151088(n)))`
-/

namespace A149492.P10357995116852987739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.xor (A025527 (n + 1)) (A151088 n)).toNat

end

end A149492.P10357995116852987739

/-! ## A149492.P10959626587867237689

`A103221(A247752(3*n+1)*A339843(n))`
-/

namespace A149492.P10959626587867237689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A247752 (3 * n + 1) * A339843 n).toNat

end

end A149492.P10959626587867237689

/-!
# A149493: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149493, there is no canonical definition to state claims against.
-/

/-! ## A149493.P6797157137570765969

`A081753(C(2*n+5, n))`
-/

namespace A149493.P6797157137570765969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (Nat.choose (2 * n + 5) n)

end

end A149493.P6797157137570765969

/-! ## A149493.P14305661692115269921

`A008679(A051198(n))`
-/

namespace A149493.P14305661692115269921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A051198 n).toNat

end

end A149493.P14305661692115269921

/-!
# A149494: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149494, there is no canonical definition to state claims against.
-/

/-! ## A149494.P475733278500439793

`A150745(n)-A004526(A150765(n))`
-/

namespace A149494.P475733278500439793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150745 n - A004526 (A150765 n).toNat

end

end A149494.P475733278500439793

/-! ## A149494.P10242754433895242403

`A110266(A150902(n))`
-/

namespace A149494.P10242754433895242403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A150902 n).toNat

end

end A149494.P10242754433895242403

/-!
# A149495: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149495, there is no canonical definition to state claims against.
-/

/-! ## A149495.P16863089319054310419

`A277193(A149594(n))`
-/

namespace A149495.P16863089319054310419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A149594 n).toNat

end

end A149495.P16863089319054310419

/-! ## A149495.P6371090771251995422

`A276625(A115254(n))+A027616(n)`
-/

namespace A149495.P6371090771251995422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (A115254 n).toNat + A027616 n

end

end A149495.P6371090771251995422

/-!
# A149496: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, -1), (0, -1, -1), (1, 1, 1)}.

The programs for A149496, there is no canonical definition to state claims against.
-/

/-! ## A149496.P16309385790383534735

`A149497(A073789(n))`
-/

namespace A149496.P16309385790383534735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149497 (A073789 n).toNat

end

end A149496.P16309385790383534735

/-! ## A149496.P10117992636361621547

`A154470(A149497(n))`
-/

namespace A149496.P10117992636361621547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A149497 n).toNat

end

end A149496.P10117992636361621547

/-! ## A149496.P6921225284486761714

`A149497(A171644(n))`
-/

namespace A149496.P6921225284486761714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149497 (A171644 n).toNat

end

end A149496.P6921225284486761714

/-! ## A149496.P4241998030010975936

`A149497(A004869(n+1))`
-/

namespace A149496.P4241998030010975936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149497 (A004869 (n + 1)).toNat

end

end A149496.P4241998030010975936

/-!
# A149498: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149498, there is no canonical definition to state claims against.
-/

/-! ## A149498.P16946732757932090639

`A004277(A149504(n))-A149532(n)`
-/

namespace A149498.P16946732757932090639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149504 n).toNat - A149532 n

end

end A149498.P16946732757932090639

/-! ## A149498.P9467604522822660250

`A004277(A149505(n))-A149532(n)`
-/

namespace A149498.P9467604522822660250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149505 n).toNat - A149532 n

end

end A149498.P9467604522822660250

/-! ## A149498.P1174937814503496362

`A185238(n)+A068217(A149504(n))-A149532(n)`
-/

namespace A149498.P1174937814503496362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n + (A068217 (A149504 n).toNat - A149532 n)

end

end A149498.P1174937814503496362

/-! ## A149498.P12634508731444441408

`A185238(n)+A068217(A149505(n))-A149532(n)`
-/

namespace A149498.P12634508731444441408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n + (A068217 (A149505 n).toNat - A149532 n)

end

end A149498.P12634508731444441408

/-! ## A149498.P5256585693887979400

`(A068217(A149504(n))-A149532(n))^A343383(n)`
-/

namespace A149498.P5256585693887979400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068217 (A149504 n).toNat - A149532 n : ℚ) ^ (A343383 n : ℤ)

end

end A149498.P5256585693887979400

