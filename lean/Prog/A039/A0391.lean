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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A039100: Numbers whose base-9 representation has the same number of 3's and 7's.

The programs for A039100, there is no canonical definition to state claims against.
-/

/-! ## A039100.P17043150101116898420

`floor(A322408(3*n)/9)`
-/

namespace A039100.P17043150101116898420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322408 (3 * n) : ℚ) / 9⌋

end

end A039100.P17043150101116898420

/-! ## A039100.P15806742748975041222

`lt[2, dr(A088473(2*n+5))]`
-/

namespace A039100.P15806742748975041222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A088473 (2 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039100.P15806742748975041222

/-! ## A039100.P16170752369426480365

`lt[Δ[A171679(2*(n+1))], 27]`
-/

namespace A039100.P16170752369426480365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171679 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A039100.P16170752369426480365

/-! ## A039100.P3533544830752276360

`eq[1, A051064(A330139(n+1))]`
-/

namespace A039100.P3533544830752276360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A330139 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039100.P3533544830752276360

/-! ## A039100.P7709092099137091970

`comp[A330185(n+1)]%A061978(n+1)`
-/

namespace A039100.P7709092099137091970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330185 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A061978 (n + 1))

end

end A039100.P7709092099137091970

/-!
# A039101: Numbers whose base-9 representation has the same number of 3's and 8's.

The programs for A039101, there is no canonical definition to state claims against.
-/

/-! ## A039101.P239305193608538966

`floor(A247430(3*n+1)/5)`
-/

namespace A039101.P239305193608538966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247430 (3 * n + 1) : ℚ) / 5⌋

end

end A039101.P239305193608538966

/-! ## A039101.P6936915699317439365

`lt[1, dr(A096891(2*(n+1)))]`
-/

namespace A039101.P6936915699317439365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A096891 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039101.P6936915699317439365

/-! ## A039101.P14146850802258486376

`lt[6, dr(A017771(2*n+3))]`
-/

namespace A039101.P14146850802258486376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A017771 (2 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039101.P14146850802258486376

/-! ## A039101.P951479356856705557

`lt[0, Δ[A144176(3*(n+1))]]`
-/

namespace A039101.P951479356856705557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144176 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039101.P951479356856705557

/-! ## A039101.P8064376130502471096

`eq[1, A057521(A299268(2*(n+2)))]`
-/

namespace A039101.P8064376130502471096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A299268 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039101.P8064376130502471096

/-!
# A039103: Numbers whose base-9 representation has the same number of 4's and 6's.

The programs for A039103, there is no canonical definition to state claims against.
-/

/-! ## A039103.P9687461590997706408

`lt[∏{e}[(A000096(n+6)+8+n)²+2, #], 2]`
-/

namespace A039103.P9687461590997706408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000096 (n + 6) + 8 + (n : ℤ)) ^ 2 + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A039103.P9687461590997706408

/-! ## A039103.P3374568499449103665

`lt[A144196(n+1), A144483(2*n+3)]`
-/

namespace A039103.P3374568499449103665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144483 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039103.P3374568499449103665

/-!
# A039104: Numbers whose base-9 representation has the same number of 4's and 7's.

The programs for A039104, there is no canonical definition to state claims against.
-/

/-! ## A039104.P10066508564906038394

`lt[Δ[A111608(2*n+1)], 3]`
-/

namespace A039104.P10066508564906038394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111608 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A039104.P10066508564906038394

/-! ## A039104.P14169589560508913103

`lt[A122556(n+1), A122577(n+1)+3]`
-/

namespace A039104.P14169589560508913103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122577 (n + 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039104.P14169589560508913103

/-! ## A039104.P3485758165099773496

`lt[A010888(n), A376343(A080427(n+1))]`
-/

namespace A039104.P3485758165099773496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376343 (A080427 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039104.P3485758165099773496

/-! ## A039104.P9182677811063495837

`lt[A102283(n), A000688(A058331(2*n))]`
-/

namespace A039104.P9182677811063495837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A058331 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039104.P9182677811063495837

/-!
# A039105: Numbers whose base-9 representation has the same number of 4's and 8's.

The programs for A039105, there is no canonical definition to state claims against.
-/

/-! ## A039105.P4565543489190715019

`lt[2, dr(A099258(2*(n+1)))]`
-/

namespace A039105.P4565543489190715019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A099258 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039105.P4565543489190715019

/-! ## A039105.P13932285727859200730

`lt[1, A072088(2*(n+1))%9]`
-/

namespace A039105.P13932285727859200730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072088 (2 * (n + 1))) 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039105.P13932285727859200730

/-! ## A039105.P3761174418542264996

`floor((floor(A344653(2*n+1)/90)+n)/4)+n`
-/

namespace A039105.P3761174418542264996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A344653 (2 * n + 1) : ℚ) / 90⌋ + (n : ℤ) : ℚ) / 4⌋ + (n : ℤ)

end

end A039105.P3761174418542264996

/-! ## A039105.P2602296677567066194

`lt[A127707(A329825(n+1)), 8]`
-/

namespace A039105.P2602296677567066194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127707 (A329825 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039105.P2602296677567066194

/-! ## A039105.P9094488857195769843

`A172338(n)%A126281(n+1)`
-/

namespace A039105.P9094488857195769843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172338 n) (A126281 (n + 1))

end

end A039105.P9094488857195769843

/-!
# A039106: Numbers whose base-9 representation has the same number of 5's and 6's.

The programs for A039106, there is no canonical definition to state claims against.
-/

/-! ## A039106.P14967057567585026239

`eq[1, A061462(A181286(n))]`
-/

namespace A039106.P14967057567585026239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061462 (A181286 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039106.P14967057567585026239

/-! ## A039106.P16682720280287240404

`lt[A158137(2*n), atan(A126014(2*n+1))]`
-/

namespace A039106.P16682720280287240404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158137 (2 * n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A126014 (2 * n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A039106.P16682720280287240404

/-! ## A039106.P2014026985185901059

`lt[A331184(A000041(n)), A254373(n+4)]`
-/

namespace A039106.P2014026985185901059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331184 (A000041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254373 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039106.P2014026985185901059

/-! ## A039106.P15837655640144664275

`lt[A114099(A128012(2*(n+2))), A051783(n+4)]`
-/

namespace A039106.P15837655640144664275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (A128012 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051783 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039106.P15837655640144664275

/-!
# A039107: Numbers whose base-9 representation has the same number of 5's and 7's.

The programs for A039107, there is no canonical definition to state claims against.
-/

/-! ## A039107.P17949375768201826139

`eq[A235199(A338882(n)), A338882(n)]`
-/

namespace A039107.P17949375768201826139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A338882 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039107.P17949375768201826139

/-! ## A039107.P10604932824851009659

`lt[A059131(2*A147875(n)), 3]`
-/

namespace A039107.P10604932824851009659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059131 (2 * A147875 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039107.P10604932824851009659

/-! ## A039107.P4027703807570990778

`lt[A225212(A046895(n)), A056992(n+3)]`
-/

namespace A039107.P4027703807570990778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225212 (A046895 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056992 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039107.P4027703807570990778

/-! ## A039107.P14203363951519412178

`lt[A105570(A010015(n+3)), A182632(n+2)]`
-/

namespace A039107.P14203363951519412178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A010015 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182632 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039107.P14203363951519412178

/-! ## A039107.P4694043015844559742

`lt[A333381(2*(n+1)), dr((n+3)²)]`
-/

namespace A039107.P4694043015844559742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((n + 3) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039107.P4694043015844559742

/-!
# A039108: Numbers whose base-9 representation has the same number of 5's and 8's.

The programs for A039108, there is no canonical definition to state claims against.
-/

/-! ## A039108.P909769005880522640

`lt[A007949(A056000(3*(n+1))), 5]`
-/

namespace A039108.P909769005880522640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A056000 (3 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039108.P909769005880522640

/-! ## A039108.P18148569802486608290

`A057428(A325534(n))+A039082(n+1)`
-/

namespace A039108.P18148569802486608290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A325534 n).toNat + A039082 (n + 1)

end

end A039108.P18148569802486608290

/-! ## A039108.P9001794998078695708

`eq[A007949(n+1), A007949(A033286(n+4))]`
-/

namespace A039108.P9001794998078695708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A033286 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039108.P9001794998078695708

/-! ## A039108.P22914164605115360

`lt[A011672(n), A065941(A343348(2*(n+1)))]`
-/

namespace A039108.P22914164605115360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A343348 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039108.P22914164605115360

/-!
# A039109: Numbers whose base-9 representation has the same number of 6's and 7's.

The programs for A039109, there is no canonical definition to state claims against.
-/

/-! ## A039109.P8727366113162596285

`lt[A171654(A171679(n)), 8]`
-/

namespace A039109.P8727366113162596285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171654 (A171679 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039109.P8727366113162596285

/-! ## A039109.P9004286039648438599

`A037475(n+1)+A008683(A156008(n+1))`
-/

namespace A039109.P9004286039648438599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (n + 1) + A008683 (A156008 (n + 1)).toNat

end

end A039109.P9004286039648438599

/-! ## A039109.P18398825562812319899

`A039111(n+2)-A003415(A171667(n+1))`
-/

namespace A039109.P18398825562812319899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039111 (n + 2) - A003415 (A171667 (n + 1)).toNat

end

end A039109.P18398825562812319899

/-! ## A039109.P3436942631028531072

`lt[A064547(A030627(n+1)), A010888(n+4)]`
-/

namespace A039109.P3436942631028531072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A030627 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039109.P3436942631028531072

/-! ## A039109.P13576887382232312458

`A272574(n+1)-A245477(A285333(3*n+2))`
-/

namespace A039109.P13576887382232312458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272574 (n + 1) - A245477 (A285333 (3 * n + 2)).toNat

end

end A039109.P13576887382232312458

/-!
# A039110: Numbers whose base-9 representation has the same number of 6's and 8's.

The programs for A039110, there is no canonical definition to state claims against.
-/

/-! ## A039110.P15030908137445287748

`lt[2, A037931(A037894(n+2))]`
-/

namespace A039110.P15030908137445287748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037931 (A037894 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039110.P15030908137445287748

/-! ## A039110.P18399433686012250310

`lt[A144228(n), A225488(n+1)]`
-/

namespace A039110.P18399433686012250310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144228 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225488 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039110.P18399433686012250310

/-! ## A039110.P15361951578460377044

`lt[A224812(n), A225488(n+1)]`
-/

namespace A039110.P15361951578460377044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225488 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039110.P15361951578460377044

/-! ## A039110.P13584266283412024504

`lt[A225482(n), A225488(n+1)]`
-/

namespace A039110.P13584266283412024504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225488 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039110.P13584266283412024504

/-! ## A039110.P943222786649576376

`lt[A225500(n), A225488(n+1)]`
-/

namespace A039110.P943222786649576376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225500 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225488 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039110.P943222786649576376

/-!
# A039111: Numbers whose base-9 representation has the same number of 7's and 8's.

The programs for A039111, there is no canonical definition to state claims against.
-/

/-! ## A039111.P5233745427476413354

`A037475(n)-A185255(A241065(n))`
-/

namespace A039111.P5233745427476413354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 n - A185255 (A241065 n).toNat

end

end A039111.P5233745427476413354

/-! ## A039111.P14202679977774860953

`A037475(n)+A033999(n)*A185255(A241065(n))`
-/

namespace A039111.P14202679977774860953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 n + A033999 n * A185255 (A241065 n).toNat

end

end A039111.P14202679977774860953

/-! ## A039111.P8031307130708313478

`A031492(n+1)-A355341(A000217(n+2))`
-/

namespace A039111.P8031307130708313478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031492 (n + 1) - A355341 (A000217 (n + 2)).toNat

end

end A039111.P8031307130708313478

/-! ## A039111.P16351042337753818254

`A031492(n+1)-A000035(A028387(2*(n+1)))`
-/

namespace A039111.P16351042337753818254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031492 (n + 1) - A000035 (A028387 (2 * (n + 1))).toNat

end

end A039111.P16351042337753818254

/-! ## A039111.P11975080638761197952

`A031492(n+1)-A040862(A000290(2*n+3))`
-/

namespace A039111.P11975080638761197952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031492 (n + 1) - A040862 (A000290 (2 * n + 3)).toNat

end

end A039111.P11975080638761197952

/-!
# A039112: Numbers whose base-10 representation has the same number of 0's and 1's.

The programs for A039112, the canonical program `A039112.P5981894528457927012` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039112 has offset 1).

The definition of A039112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039112.P17309642105017961549

`eq[dr(n), dr(A222210(n))]`
-/

namespace A039112.P17309642105017961549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222210 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039112.P17309642105017961549

namespace A039112

/-- `eq[dr(n), dr(A222210(n))]` -/
def P17309642105017961549.Spec : Prop :=
  ∀ n, (P17309642105017961549.a n : ℤ) = A039112 (n + 1)

end A039112

/-! ## A039112.P5981894528457927012

`eq[A055641(n), A268643(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039112

/-- `eq[A055641(n), A268643(n)]` -/
def P5981894528457927012.Spec : Prop :=
  ∀ n, (P5981894528457927012.a n : ℤ) = A039112 (n + 1)

theorem P5981894528457927012.correct : P5981894528457927012.Spec := by
  intro n
  simp only [A039112, Nat.add_sub_cancel]

end A039112

/-! ## A039112.P1157330910384900994

`eq[A055641(n), A102683(A055120(n))]`
-/

namespace A039112.P1157330910384900994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A055120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039112.P1157330910384900994

namespace A039112

/-- `eq[A055641(n), A102683(A055120(n))]` -/
def P1157330910384900994.Spec : Prop :=
  ∀ n, (P1157330910384900994.a n : ℤ) = A039112 (n + 1)

end A039112

/-! ## A039112.P6843194924136140968

`eq[A007953(n), A007953(A222210(n))]`
-/

namespace A039112.P6843194924136140968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222210 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039112.P6843194924136140968

namespace A039112

/-- `eq[A007953(n), A007953(A222210(n))]` -/
def P6843194924136140968.Spec : Prop :=
  ∀ n, (P6843194924136140968.a n : ℤ) = A039112 (n + 1)

end A039112

/-! ## A039112.P5146908340499647319

`eq[A045512(n), A045512(A222210(n))]`
-/

namespace A039112.P5146908340499647319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 (A222210 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039112.P5146908340499647319

namespace A039112

/-- `eq[A045512(n), A045512(A222210(n))]` -/
def P5146908340499647319.Spec : Prop :=
  ∀ n, (P5146908340499647319.a n : ℤ) = A039112 (n + 1)

end A039112

/-! ## A039112.P11873315272206127673

`eq[A064532(A064770(n)), A268643(n)]`
-/

namespace A039112.P11873315272206127673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A064770 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039112.P11873315272206127673

namespace A039112

/-- `eq[A064532(A064770(n)), A268643(n)]` -/
def P11873315272206127673.Spec : Prop :=
  ∀ n, (P11873315272206127673.a n : ℤ) = A039112 (n + 1)

end A039112

/-! ## A039112.P3072763726650639824

`eq[A102669(2*n), A102669(A222214(n))]`
-/

namespace A039112.P3072763726650639824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A222214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039112.P3072763726650639824

namespace A039112

/-- `eq[A102669(2*n), A102669(A222214(n))]` -/
def P3072763726650639824.Spec : Prop :=
  ∀ n, (P3072763726650639824.a n : ℤ) = A039112 (n + 1)

end A039112

/-! ## A039112.P12977997861398745662

`eq[A007814(A113581(n)), A055641(n)]`
-/

namespace A039112.P12977997861398745662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A113581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039112.P12977997861398745662

namespace A039112

/-- `eq[A007814(A113581(n)), A055641(n)]` -/
def P12977997861398745662.Spec : Prop :=
  ∀ n, (P12977997861398745662.a n : ℤ) = A039112 (n + 1)

end A039112

/-!
# A039113: Numbers whose base-10 representation has the same number of 0's and 2's.

The programs for A039113, the canonical program `A039113.P256254239457304598` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039113 has offset 1).

The definition of A039113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039113.P7466887247317077245

`eq[dr(n), dr(A222211(n))]`
-/

namespace A039113.P7466887247317077245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222211 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039113.P7466887247317077245

namespace A039113

/-- `eq[dr(n), dr(A222211(n))]` -/
def P7466887247317077245.Spec : Prop :=
  ∀ n, (P7466887247317077245.a n : ℤ) = A039113 (n + 1)

end A039113

/-! ## A039113.P256254239457304598

`eq[A055641(n), A316863(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039113

/-- `eq[A055641(n), A316863(n)]` -/
def P256254239457304598.Spec : Prop :=
  ∀ n, (P256254239457304598.a n : ℤ) = A039113 (n + 1)

theorem P256254239457304598.correct : P256254239457304598.Spec := by
  intro n
  simp only [A039113, Nat.add_sub_cancel]

end A039113

/-! ## A039113.P17415210356364861228

`eq[A055641(n), A075053(A001613(n))]`
-/

namespace A039113.P17415210356364861228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A001613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039113.P17415210356364861228

namespace A039113

/-- `eq[A055641(n), A075053(A001613(n))]` -/
def P17415210356364861228.Spec : Prop :=
  ∀ n, (P17415210356364861228.a n : ℤ) = A039113 (n + 1)

end A039113

/-! ## A039113.P15924955804728383677

`eq[A004092(n), A004092(A222211(n))]`
-/

namespace A039113.P15924955804728383677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222211 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039113.P15924955804728383677

namespace A039113

/-- `eq[A004092(n), A004092(A222211(n))]` -/
def P15924955804728383677.Spec : Prop :=
  ∀ n, (P15924955804728383677.a n : ℤ) = A039113 (n + 1)

end A039113

/-! ## A039113.P11270782621792687735

`eq[A004185(n), A004185(A222211(n))]`
-/

namespace A039113.P11270782621792687735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222211 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039113.P11270782621792687735

namespace A039113

/-- `eq[A004185(n), A004185(A222211(n))]` -/
def P11270782621792687735.Spec : Prop :=
  ∀ n, (P11270782621792687735.a n : ℤ) = A039113 (n + 1)

end A039113

/-! ## A039113.P12898940895167342424

`eq[A007953(n), A007953(A222211(n))]`
-/

namespace A039113.P12898940895167342424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222211 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039113.P12898940895167342424

namespace A039113

/-- `eq[A007953(n), A007953(A222211(n))]` -/
def P12898940895167342424.Spec : Prop :=
  ∀ n, (P12898940895167342424.a n : ℤ) = A039113 (n + 1)

end A039113

/-!
# A039114: Numbers whose base-10 representation has the same number of 0's and 3's.

The programs for A039114, the canonical program `A039114.P7121927793538242622` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039114 has offset 1).

The definition of A039114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039114.P7121927793538242622

`eq[A055641(n), A316864(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039114

/-- `eq[A055641(n), A316864(n)]` -/
def P7121927793538242622.Spec : Prop :=
  ∀ n, (P7121927793538242622.a n : ℤ) = A039114 (n + 1)

theorem P7121927793538242622.correct : P7121927793538242622.Spec := by
  intro n
  simp only [A039114, Nat.add_sub_cancel]

end A039114

/-! ## A039114.P3125475311115066073

`eq[A003132(n), A003132(A222212(n))]`
-/

namespace A039114.P3125475311115066073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222212 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039114.P3125475311115066073

namespace A039114

/-- `eq[A003132(n), A003132(A222212(n))]` -/
def P3125475311115066073.Spec : Prop :=
  ∀ n, (P3125475311115066073.a n : ℤ) = A039114 (n + 1)

end A039114

/-! ## A039114.P7650957184316798271

`eq[A004185(n), A004185(A222212(n))]`
-/

namespace A039114.P7650957184316798271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222212 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039114.P7650957184316798271

namespace A039114

/-- `eq[A004185(n), A004185(A222212(n))]` -/
def P7650957184316798271.Spec : Prop :=
  ∀ n, (P7650957184316798271.a n : ℤ) = A039114 (n + 1)

end A039114

/-! ## A039114.P16400599079319788652

`eq[A007953(n), A007953(A222212(n))]`
-/

namespace A039114.P16400599079319788652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222212 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039114.P16400599079319788652

namespace A039114

/-- `eq[A007953(n), A007953(A222212(n))]` -/
def P16400599079319788652.Spec : Prop :=
  ∀ n, (P16400599079319788652.a n : ℤ) = A039114 (n + 1)

end A039114

/-! ## A039114.P14189434687765359202

`eq[A196564(n), A196564(A222212(n))]`
-/

namespace A039114.P14189434687765359202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A222212 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039114.P14189434687765359202

namespace A039114

/-- `eq[A196564(n), A196564(A222212(n))]` -/
def P14189434687765359202.Spec : Prop :=
  ∀ n, (P14189434687765359202.a n : ℤ) = A039114 (n + 1)

end A039114

/-! ## A039114.P16160302858234523212

`eq[A316864(A222212(n)), A316864(n)]`
-/

namespace A039114.P16160302858234523212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A222212 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039114.P16160302858234523212

namespace A039114

/-- `eq[A316864(A222212(n)), A316864(n)]` -/
def P16160302858234523212.Spec : Prop :=
  ∀ n, (P16160302858234523212.a n : ℤ) = A039114 (n + 1)

end A039114

/-! ## A039114.P10295932312983506007

`eq[A316864(n), A316869(A222217(n))]`
-/

namespace A039114.P10295932312983506007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A222217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039114.P10295932312983506007

namespace A039114

/-- `eq[A316864(n), A316869(A222217(n))]` -/
def P10295932312983506007.Spec : Prop :=
  ∀ n, (P10295932312983506007.a n : ℤ) = A039114 (n + 1)

end A039114

/-!
# A039115: Numbers whose base-10 representation has the same number of 0's and 4's.

The programs for A039115, the canonical program `A039115.P1779926466169790345` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039115 has offset 1).

The definition of A039115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039115.P16507921186376805395

`eq[dr(n), dr(A222213(n))]`
-/

namespace A039115.P16507921186376805395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222213 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039115.P16507921186376805395

namespace A039115

/-- `eq[dr(n), dr(A222213(n))]` -/
def P16507921186376805395.Spec : Prop :=
  ∀ n, (P16507921186376805395.a n : ℤ) = A039115 (n + 1)

end A039115

/-! ## A039115.P1779926466169790345

`eq[A055641(n), A316865(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039115

/-- `eq[A055641(n), A316865(n)]` -/
def P1779926466169790345.Spec : Prop :=
  ∀ n, (P1779926466169790345.a n : ℤ) = A039115 (n + 1)

theorem P1779926466169790345.correct : P1779926466169790345.Spec := by
  intro n
  simp only [A039115, Nat.add_sub_cancel]

end A039115

/-! ## A039115.P698752955546240650

`eq[A003132(n), A003132(A222213(n))]`
-/

namespace A039115.P698752955546240650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222213 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039115.P698752955546240650

namespace A039115

/-- `eq[A003132(n), A003132(A222213(n))]` -/
def P698752955546240650.Spec : Prop :=
  ∀ n, (P698752955546240650.a n : ℤ) = A039115 (n + 1)

end A039115

/-! ## A039115.P10898225862259788163

`eq[A004092(n), A004092(A222213(n))]`
-/

namespace A039115.P10898225862259788163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222213 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039115.P10898225862259788163

namespace A039115

/-- `eq[A004092(n), A004092(A222213(n))]` -/
def P10898225862259788163.Spec : Prop :=
  ∀ n, (P10898225862259788163.a n : ℤ) = A039115 (n + 1)

end A039115

/-! ## A039115.P16194243337621069183

`eq[A004185(n), A004185(A222213(n))]`
-/

namespace A039115.P16194243337621069183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222213 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039115.P16194243337621069183

namespace A039115

/-- `eq[A004185(n), A004185(A222213(n))]` -/
def P16194243337621069183.Spec : Prop :=
  ∀ n, (P16194243337621069183.a n : ℤ) = A039115 (n + 1)

end A039115

/-! ## A039115.P2579295377050978764

`eq[A007953(n), A007953(A222213(n))]`
-/

namespace A039115.P2579295377050978764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222213 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039115.P2579295377050978764

namespace A039115

/-- `eq[A007953(n), A007953(A222213(n))]` -/
def P2579295377050978764.Spec : Prop :=
  ∀ n, (P2579295377050978764.a n : ℤ) = A039115 (n + 1)

end A039115

/-! ## A039115.P5471146353695420458

`eq[A102681(2*n), A268643(A216556(n))]`
-/

namespace A039115.P5471146353695420458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A216556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039115.P5471146353695420458

namespace A039115

/-- `eq[A102681(2*n), A268643(A216556(n))]` -/
def P5471146353695420458.Spec : Prop :=
  ∀ n, (P5471146353695420458.a n : ℤ) = A039115 (n + 1)

end A039115

/-!
# A039116: Numbers whose base-10 representation has the same number of 0's and 5's.

The programs for A039116, the canonical program `A039116.P8915378216429723189` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039116 has offset 1).

The definition of A039116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039116.P8168261149303822118

`eq[dr(n), dr(A222214(n))]`
-/

namespace A039116.P8168261149303822118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222214 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039116.P8168261149303822118

namespace A039116

/-- `eq[dr(n), dr(A222214(n))]` -/
def P8168261149303822118.Spec : Prop :=
  ∀ n, (P8168261149303822118.a n : ℤ) = A039116 (n + 1)

end A039116

/-! ## A039116.P8915378216429723189

`eq[A055641(n), A316866(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039116

/-- `eq[A055641(n), A316866(n)]` -/
def P8915378216429723189.Spec : Prop :=
  ∀ n, (P8915378216429723189.a n : ℤ) = A039116 (n + 1)

theorem P8915378216429723189.correct : P8915378216429723189.Spec := by
  intro n
  simp only [A039116, Nat.add_sub_cancel]

end A039116

/-! ## A039116.P7323985079697528946

`eq[A003132(n), A003132(A222214(n))]`
-/

namespace A039116.P7323985079697528946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039116.P7323985079697528946

namespace A039116

/-- `eq[A003132(n), A003132(A222214(n))]` -/
def P7323985079697528946.Spec : Prop :=
  ∀ n, (P7323985079697528946.a n : ℤ) = A039116 (n + 1)

end A039116

/-! ## A039116.P940376157954546866

`eq[A004155(n), A004155(A222214(n))]`
-/

namespace A039116.P940376157954546866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039116.P940376157954546866

namespace A039116

/-- `eq[A004155(n), A004155(A222214(n))]` -/
def P940376157954546866.Spec : Prop :=
  ∀ n, (P940376157954546866.a n : ℤ) = A039116 (n + 1)

end A039116

/-! ## A039116.P2803523296204760754

`eq[A004185(n), A004185(A222214(n))]`
-/

namespace A039116.P2803523296204760754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039116.P2803523296204760754

namespace A039116

/-- `eq[A004185(n), A004185(A222214(n))]` -/
def P2803523296204760754.Spec : Prop :=
  ∀ n, (P2803523296204760754.a n : ℤ) = A039116 (n + 1)

end A039116

/-! ## A039116.P11812921330806463557

`eq[A007953(n), A007953(A222214(n))]`
-/

namespace A039116.P11812921330806463557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039116.P11812921330806463557

namespace A039116

/-- `eq[A007953(n), A007953(A222214(n))]` -/
def P11812921330806463557.Spec : Prop :=
  ∀ n, (P11812921330806463557.a n : ℤ) = A039116 (n + 1)

end A039116

/-! ## A039116.P5890795691091435557

`eq[A102669(n), A102669(A222214(n))]`
-/

namespace A039116.P5890795691091435557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A222214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039116.P5890795691091435557

namespace A039116

/-- `eq[A102669(n), A102669(A222214(n))]` -/
def P5890795691091435557.Spec : Prop :=
  ∀ n, (P5890795691091435557.a n : ℤ) = A039116 (n + 1)

end A039116

/-!
# A039117: Numbers whose base-10 representation has the same number of 0's and 6's.

The programs for A039117, the canonical program `A039117.P6634660445893149217` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039117 has offset 1).

The definition of A039117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039117.P6634660445893149217

`eq[A055641(n), A316867(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039117

/-- `eq[A055641(n), A316867(n)]` -/
def P6634660445893149217.Spec : Prop :=
  ∀ n, (P6634660445893149217.a n : ℤ) = A039117 (n + 1)

theorem P6634660445893149217.correct : P6634660445893149217.Spec := by
  intro n
  simp only [A039117, Nat.add_sub_cancel]

end A039117

/-! ## A039117.P14004456980735285281

`eq[A003132(n), A003132(A222215(n))]`
-/

namespace A039117.P14004456980735285281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222215 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039117.P14004456980735285281

namespace A039117

/-- `eq[A003132(n), A003132(A222215(n))]` -/
def P14004456980735285281.Spec : Prop :=
  ∀ n, (P14004456980735285281.a n : ℤ) = A039117 (n + 1)

end A039117

/-! ## A039117.P14902191242898213972

`eq[A004155(n), A004155(A222215(n))]`
-/

namespace A039117.P14902191242898213972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222215 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039117.P14902191242898213972

namespace A039117

/-- `eq[A004155(n), A004155(A222215(n))]` -/
def P14902191242898213972.Spec : Prop :=
  ∀ n, (P14902191242898213972.a n : ℤ) = A039117 (n + 1)

end A039117

/-! ## A039117.P12454444433017156942

`eq[A004185(n), A004185(A222215(n))]`
-/

namespace A039117.P12454444433017156942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222215 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039117.P12454444433017156942

namespace A039117

/-- `eq[A004185(n), A004185(A222215(n))]` -/
def P12454444433017156942.Spec : Prop :=
  ∀ n, (P12454444433017156942.a n : ℤ) = A039117 (n + 1)

end A039117

/-! ## A039117.P12891755370821307874

`eq[A007953(n), A007953(A222215(n))]`
-/

namespace A039117.P12891755370821307874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222215 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039117.P12891755370821307874

namespace A039117

/-- `eq[A007953(n), A007953(A222215(n))]` -/
def P12891755370821307874.Spec : Prop :=
  ∀ n, (P12891755370821307874.a n : ℤ) = A039117 (n + 1)

end A039117

/-! ## A039117.P17024913881386180885

`eq[A051801(n), A051801(A222215(n))]`
-/

namespace A039117.P17024913881386180885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A222215 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039117.P17024913881386180885

namespace A039117

/-- `eq[A051801(n), A051801(A222215(n))]` -/
def P17024913881386180885.Spec : Prop :=
  ∀ n, (P17024913881386180885.a n : ℤ) = A039117 (n + 1)

end A039117

/-! ## A039117.P14939115596762868268

`eq[A055640(n), A055640(A222215(n))]`
-/

namespace A039117.P14939115596762868268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A222215 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039117.P14939115596762868268

namespace A039117

/-- `eq[A055640(n), A055640(A222215(n))]` -/
def P14939115596762868268.Spec : Prop :=
  ∀ n, (P14939115596762868268.a n : ℤ) = A039117 (n + 1)

end A039117

/-!
# A039118: Numbers whose base-10 representation has the same number of 0's and 7's.

The programs for A039118, the canonical program `A039118.P18080473160613273167` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039118 has offset 1).

The definition of A039118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039118.P16277907529905561790

`eq[dr(n), dr(A222216(n))]`
-/

namespace A039118.P16277907529905561790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222216 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039118.P16277907529905561790

namespace A039118

/-- `eq[dr(n), dr(A222216(n))]` -/
def P16277907529905561790.Spec : Prop :=
  ∀ n, (P16277907529905561790.a n : ℤ) = A039118 (n + 1)

end A039118

/-! ## A039118.P18080473160613273167

`eq[A055641(n), A316868(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039118

/-- `eq[A055641(n), A316868(n)]` -/
def P18080473160613273167.Spec : Prop :=
  ∀ n, (P18080473160613273167.a n : ℤ) = A039118 (n + 1)

theorem P18080473160613273167.correct : P18080473160613273167.Spec := by
  intro n
  simp only [A039118, Nat.add_sub_cancel]

end A039118

/-! ## A039118.P4189714946925127758

`eq[A003132(n), A003132(A222216(n))]`
-/

namespace A039118.P4189714946925127758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039118.P4189714946925127758

namespace A039118

/-- `eq[A003132(n), A003132(A222216(n))]` -/
def P4189714946925127758.Spec : Prop :=
  ∀ n, (P4189714946925127758.a n : ℤ) = A039118 (n + 1)

end A039118

/-! ## A039118.P12190400366154519878

`eq[A004092(n), A004092(A222216(n))]`
-/

namespace A039118.P12190400366154519878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039118.P12190400366154519878

namespace A039118

/-- `eq[A004092(n), A004092(A222216(n))]` -/
def P12190400366154519878.Spec : Prop :=
  ∀ n, (P12190400366154519878.a n : ℤ) = A039118 (n + 1)

end A039118

/-! ## A039118.P15305985474119210326

`eq[A007953(n), A007953(A222216(n))]`
-/

namespace A039118.P15305985474119210326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039118.P15305985474119210326

namespace A039118

/-- `eq[A007953(n), A007953(A222216(n))]` -/
def P15305985474119210326.Spec : Prop :=
  ∀ n, (P15305985474119210326.a n : ℤ) = A039118 (n + 1)

end A039118

/-! ## A039118.P400886820737440081

`eq[A051801(n), A051801(A222216(n))]`
-/

namespace A039118.P400886820737440081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A222216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039118.P400886820737440081

namespace A039118

/-- `eq[A051801(n), A051801(A222216(n))]` -/
def P400886820737440081.Spec : Prop :=
  ∀ n, (P400886820737440081.a n : ℤ) = A039118 (n + 1)

end A039118

/-! ## A039118.P2440681107599019667

`eq[A222216(n), A323048(n+1)]`
-/

namespace A039118.P2440681107599019667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039118.P2440681107599019667

namespace A039118

/-- `eq[A222216(n), A323048(n+1)]` -/
def P2440681107599019667.Spec : Prop :=
  ∀ n, (P2440681107599019667.a n : ℤ) = A039118 (n + 1)

end A039118

/-! ## A039118.P8724571085435580792

`eq[A130696(n+1), A222216(n)]`
-/

namespace A039118.P8724571085435580792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039118.P8724571085435580792

namespace A039118

/-- `eq[A130696(n+1), A222216(n)]` -/
def P8724571085435580792.Spec : Prop :=
  ∀ n, (P8724571085435580792.a n : ℤ) = A039118 (n + 1)

end A039118

/-!
# A039119: Numbers whose base-10 representation has the same number of 0's and 8's.

The programs for A039119, there is no canonical definition to state claims against.
-/

/-! ## A039119.P17222017103247690511

`eq[dr(n), dr(A222217(n))]`
-/

namespace A039119.P17222017103247690511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222217 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039119.P17222017103247690511

/-! ## A039119.P5926078996926698544

`eq[A003132(n), A003132(A222217(n))]`
-/

namespace A039119.P5926078996926698544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039119.P5926078996926698544

/-! ## A039119.P17605027893428656402

`eq[A004155(n), A004155(A222217(n))]`
-/

namespace A039119.P17605027893428656402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039119.P17605027893428656402

/-! ## A039119.P13315659977810704742

`eq[A007953(n), A007953(A222217(n))]`
-/

namespace A039119.P13315659977810704742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039119.P13315659977810704742

/-! ## A039119.P10020992298276659830

`eq[A045512(n), A045512(A222217(n))]`
-/

namespace A039119.P10020992298276659830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 (A222217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039119.P10020992298276659830

/-! ## A039119.P4105733219867866392

`eq[A051801(n), A051801(A222217(n))]`
-/

namespace A039119.P4105733219867866392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A222217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039119.P4105733219867866392

/-! ## A039119.P4269220853003022955

`eq[A069877(n), A069877(A222217(n))]`
-/

namespace A039119.P4269220853003022955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 (A222217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039119.P4269220853003022955

/-! ## A039119.P5449234320416060329

`eq[A055641(n), A102683(A216556(n))]`
-/

namespace A039119.P5449234320416060329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A216556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039119.P5449234320416060329

/-! ## A039119.P4801131357657255496

`eq[A102683(A216556(n)), A217096(n)]`
-/

namespace A039119.P4801131357657255496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A216556 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039119.P4801131357657255496

/-! ## A039119.P16674495173328587565

`eq[A102681(n), A268643(A216556(n))]`
-/

namespace A039119.P16674495173328587565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A216556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039119.P16674495173328587565

/-! ## A039119.P1582137753823461580

`eq[A055641(n), A102681(A048380(n))]`
-/

namespace A039119.P1582137753823461580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A048380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039119.P1582137753823461580

/-!
# A039120: Numbers whose base-10 representation has the same number of 1's and 2's.

The programs for A039120, the canonical program `A039120.P1309197663919710095` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039120 has offset 1).

The definition of A039120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039120.P1805622312045093651

`eq[dr(n), dr(A035043(n))]`
-/

namespace A039120.P1805622312045093651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A035043 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P1805622312045093651

namespace A039120

/-- `eq[dr(n), dr(A035043(n))]` -/
def P1805622312045093651.Spec : Prop :=
  ∀ n, (P1805622312045093651.a n : ℤ) = A039120 (n + 1)

end A039120

/-! ## A039120.P1309197663919710095

`eq[A268643(n), A316863(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039120

/-- `eq[A268643(n), A316863(n)]` -/
def P1309197663919710095.Spec : Prop :=
  ∀ n, (P1309197663919710095.a n : ℤ) = A039120 (n + 1)

theorem P1309197663919710095.correct : P1309197663919710095.Spec := by
  intro n
  simp only [A039120, Nat.add_sub_cancel]

end A039120

/-! ## A039120.P5261149221359554518

`eq[A003132(n), A003132(A035043(n))]`
-/

namespace A039120.P5261149221359554518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A035043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P5261149221359554518

namespace A039120

/-- `eq[A003132(n), A003132(A035043(n))]` -/
def P5261149221359554518.Spec : Prop :=
  ∀ n, (P5261149221359554518.a n : ℤ) = A039120 (n + 1)

end A039120

/-! ## A039120.P883240389067472048

`eq[A004092(n), A004092(A035043(n))]`
-/

namespace A039120.P883240389067472048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A035043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P883240389067472048

namespace A039120

/-- `eq[A004092(n), A004092(A035043(n))]` -/
def P883240389067472048.Spec : Prop :=
  ∀ n, (P883240389067472048.a n : ℤ) = A039120 (n + 1)

end A039120

/-! ## A039120.P7535819722488533831

`eq[A004155(n), A004155(A035043(n))]`
-/

namespace A039120.P7535819722488533831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A035043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P7535819722488533831

namespace A039120

/-- `eq[A004155(n), A004155(A035043(n))]` -/
def P7535819722488533831.Spec : Prop :=
  ∀ n, (P7535819722488533831.a n : ℤ) = A039120 (n + 1)

end A039120

/-! ## A039120.P9724501968387330125

`eq[A004185(n), A004185(A035043(n))]`
-/

namespace A039120.P9724501968387330125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A035043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P9724501968387330125

namespace A039120

/-- `eq[A004185(n), A004185(A035043(n))]` -/
def P9724501968387330125.Spec : Prop :=
  ∀ n, (P9724501968387330125.a n : ℤ) = A039120 (n + 1)

end A039120

/-! ## A039120.P4002810786251922084

`eq[A004186(n), A004186(A035043(n))]`
-/

namespace A039120.P4002810786251922084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A035043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P4002810786251922084

namespace A039120

/-- `eq[A004186(n), A004186(A035043(n))]` -/
def P4002810786251922084.Spec : Prop :=
  ∀ n, (P4002810786251922084.a n : ℤ) = A039120 (n + 1)

end A039120

/-! ## A039120.P13537382315487766149

`eq[A007953(n), A007953(A035043(n))]`
-/

namespace A039120.P13537382315487766149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A035043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P13537382315487766149

namespace A039120

/-- `eq[A007953(n), A007953(A035043(n))]` -/
def P13537382315487766149.Spec : Prop :=
  ∀ n, (P13537382315487766149.a n : ℤ) = A039120 (n + 1)

end A039120

/-! ## A039120.P6378464890051329239

`eq[A010888(n), A010888(A035043(n))]`
-/

namespace A039120.P6378464890051329239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A035043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P6378464890051329239

namespace A039120

/-- `eq[A010888(n), A010888(A035043(n))]` -/
def P6378464890051329239.Spec : Prop :=
  ∀ n, (P6378464890051329239.a n : ℤ) = A039120 (n + 1)

end A039120

/-! ## A039120.P17840838008125041407

`eq[A193238(A035043(n)), A193238(n)]`
-/

namespace A039120.P17840838008125041407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A035043 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P17840838008125041407

namespace A039120

/-- `eq[A193238(A035043(n)), A193238(n)]` -/
def P17840838008125041407.Spec : Prop :=
  ∀ n, (P17840838008125041407.a n : ℤ) = A039120 (n + 1)

end A039120

/-! ## A039120.P12059111483268696029

`eq[A268643(A035043(n)), A268643(n)]`
-/

namespace A039120.P12059111483268696029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A035043 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P12059111483268696029

namespace A039120

/-- `eq[A268643(A035043(n)), A268643(n)]` -/
def P12059111483268696029.Spec : Prop :=
  ∀ n, (P12059111483268696029.a n : ℤ) = A039120 (n + 1)

end A039120

/-! ## A039120.P7658478214413357245

`eq[A276729(A035043(n)), A276729(n)]`
-/

namespace A039120.P7658478214413357245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A035043 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P7658478214413357245

namespace A039120

/-- `eq[A276729(A035043(n)), A276729(n)]` -/
def P7658478214413357245.Spec : Prop :=
  ∀ n, (P7658478214413357245.a n : ℤ) = A039120 (n + 1)

end A039120

/-! ## A039120.P1105827530158194091

`eq[A316863(A035043(n)), A316863(n)]`
-/

namespace A039120.P1105827530158194091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A035043 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P1105827530158194091

namespace A039120

/-- `eq[A316863(A035043(n)), A316863(n)]` -/
def P1105827530158194091.Spec : Prop :=
  ∀ n, (P1105827530158194091.a n : ℤ) = A039120 (n + 1)

end A039120

/-! ## A039120.P16328203842083376439

`eq[A268643(A235049(n)), A268643(n)]`
-/

namespace A039120.P16328203842083376439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A235049 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P16328203842083376439

namespace A039120

/-- `eq[A268643(A235049(n)), A268643(n)]` -/
def P16328203842083376439.Spec : Prop :=
  ∀ n, (P16328203842083376439.a n : ℤ) = A039120 (n + 1)

end A039120

/-! ## A039120.P144194758052418255

`eq[A268643(n-A064770(n)), A268643(n)]`
-/

namespace A039120.P144194758052418255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 ((n : ℤ) - A064770 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P144194758052418255

namespace A039120

/-- `eq[A268643(n-A064770(n)), A268643(n)]` -/
def P144194758052418255.Spec : Prop :=
  ∀ n, (P144194758052418255.a n : ℤ) = A039120 (n + 1)

end A039120

/-! ## A039120.P9086607142884512886

`eq[A268643(n-A136400(n)), A268643(n)]`
-/

namespace A039120.P9086607142884512886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 ((n : ℤ) - A136400 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P9086607142884512886

namespace A039120

/-- `eq[A268643(n-A136400(n)), A268643(n)]` -/
def P9086607142884512886.Spec : Prop :=
  ∀ n, (P9086607142884512886.a n : ℤ) = A039120 (n + 1)

end A039120

/-! ## A039120.P11796651345214523578

`eq[A087079(A035043(n)), A087079(n)]`
-/

namespace A039120.P11796651345214523578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087079 (A035043 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P11796651345214523578

namespace A039120

/-- `eq[A087079(A035043(n)), A087079(n)]` -/
def P11796651345214523578.Spec : Prop :=
  ∀ n, (P11796651345214523578.a n : ℤ) = A039120 (n + 1)

end A039120

/-!
# A039121: Numbers whose base-10 representation has the same number of 1's and 3's.

The programs for A039121, the canonical program `A039121.P2427033625214283374` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039121 has offset 1).

The definition of A039121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039121.P5831481375248650728

`eq[dr(n), dr(A222220(n))]`
-/

namespace A039121.P5831481375248650728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222220 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039121.P5831481375248650728

namespace A039121

/-- `eq[dr(n), dr(A222220(n))]` -/
def P5831481375248650728.Spec : Prop :=
  ∀ n, (P5831481375248650728.a n : ℤ) = A039121 (n + 1)

end A039121

/-! ## A039121.P2427033625214283374

`eq[A268643(n), A316864(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039121

/-- `eq[A268643(n), A316864(n)]` -/
def P2427033625214283374.Spec : Prop :=
  ∀ n, (P2427033625214283374.a n : ℤ) = A039121 (n + 1)

theorem P2427033625214283374.correct : P2427033625214283374.Spec := by
  intro n
  simp only [A039121, Nat.add_sub_cancel]

end A039121

/-! ## A039121.P15056703914906385303

`eq[A003132(n), A003132(A222220(n))]`
-/

namespace A039121.P15056703914906385303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039121.P15056703914906385303

namespace A039121

/-- `eq[A003132(n), A003132(A222220(n))]` -/
def P15056703914906385303.Spec : Prop :=
  ∀ n, (P15056703914906385303.a n : ℤ) = A039121 (n + 1)

end A039121

/-! ## A039121.P8023729016044728259

`eq[A004092(n), A004092(A222220(n))]`
-/

namespace A039121.P8023729016044728259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039121.P8023729016044728259

namespace A039121

/-- `eq[A004092(n), A004092(A222220(n))]` -/
def P8023729016044728259.Spec : Prop :=
  ∀ n, (P8023729016044728259.a n : ℤ) = A039121 (n + 1)

end A039121

/-! ## A039121.P14189710179289939571

`eq[A004155(n), A004155(A222220(n))]`
-/

namespace A039121.P14189710179289939571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039121.P14189710179289939571

namespace A039121

/-- `eq[A004155(n), A004155(A222220(n))]` -/
def P14189710179289939571.Spec : Prop :=
  ∀ n, (P14189710179289939571.a n : ℤ) = A039121 (n + 1)

end A039121

/-! ## A039121.P12343938897123435951

`eq[A004185(n), A004185(A222220(n))]`
-/

namespace A039121.P12343938897123435951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039121.P12343938897123435951

namespace A039121

/-- `eq[A004185(n), A004185(A222220(n))]` -/
def P12343938897123435951.Spec : Prop :=
  ∀ n, (P12343938897123435951.a n : ℤ) = A039121 (n + 1)

end A039121

/-! ## A039121.P10173293122195776068

`eq[A004186(n), A004186(A222220(n))]`
-/

namespace A039121.P10173293122195776068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039121.P10173293122195776068

namespace A039121

/-- `eq[A004186(n), A004186(A222220(n))]` -/
def P10173293122195776068.Spec : Prop :=
  ∀ n, (P10173293122195776068.a n : ℤ) = A039121 (n + 1)

end A039121

/-! ## A039121.P4950748728304808759

`eq[A007953(n), A007953(A222220(n))]`
-/

namespace A039121.P4950748728304808759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039121.P4950748728304808759

namespace A039121

/-- `eq[A007953(n), A007953(A222220(n))]` -/
def P4950748728304808759.Spec : Prop :=
  ∀ n, (P4950748728304808759.a n : ℤ) = A039121 (n + 1)

end A039121

/-! ## A039121.P4645141321894192152

`eq[A047842(n), A047842(A222220(n))]`
-/

namespace A039121.P4645141321894192152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A222220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039121.P4645141321894192152

namespace A039121

/-- `eq[A047842(n), A047842(A222220(n))]` -/
def P4645141321894192152.Spec : Prop :=
  ∀ n, (P4645141321894192152.a n : ℤ) = A039121 (n + 1)

end A039121

/-! ## A039121.P17267099713401234672

`eq[A268643(A107130(n)), A268643(n)]`
-/

namespace A039121.P17267099713401234672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A107130 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039121.P17267099713401234672

namespace A039121

/-- `eq[A268643(A107130(n)), A268643(n)]` -/
def P17267099713401234672.Spec : Prop :=
  ∀ n, (P17267099713401234672.a n : ℤ) = A039121 (n + 1)

end A039121

/-! ## A039121.P13837313950566537707

`eq[A268643(A222220(n)), A268643(n)]`
-/

namespace A039121.P13837313950566537707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A222220 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039121.P13837313950566537707

namespace A039121

/-- `eq[A268643(A222220(n)), A268643(n)]` -/
def P13837313950566537707.Spec : Prop :=
  ∀ n, (P13837313950566537707.a n : ℤ) = A039121 (n + 1)

end A039121

/-!
# A039122: Numbers whose base-10 representation has the same number of 1's and 4's.

The programs for A039122, the canonical program `A039122.P5685310511068557245` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039122 has offset 1).

The definition of A039122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039122.P5685310511068557245

`eq[A268643(n), A316865(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039122

/-- `eq[A268643(n), A316865(n)]` -/
def P5685310511068557245.Spec : Prop :=
  ∀ n, (P5685310511068557245.a n : ℤ) = A039122 (n + 1)

theorem P5685310511068557245.correct : P5685310511068557245.Spec := by
  intro n
  simp only [A039122, Nat.add_sub_cancel]

end A039122

/-! ## A039122.P17890676964733989705

`eq[A055640(A004179(n)), A102669(n)]`
-/

namespace A039122.P17890676964733989705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A004179 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039122.P17890676964733989705

namespace A039122

/-- `eq[A055640(A004179(n)), A102669(n)]` -/
def P17890676964733989705.Spec : Prop :=
  ∀ n, (P17890676964733989705.a n : ℤ) = A039122 (n + 1)

end A039122

/-! ## A039122.P11969300017928919954

`eq[A003132(n), A003132(A222221(n))]`
-/

namespace A039122.P11969300017928919954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039122.P11969300017928919954

namespace A039122

/-- `eq[A003132(n), A003132(A222221(n))]` -/
def P11969300017928919954.Spec : Prop :=
  ∀ n, (P11969300017928919954.a n : ℤ) = A039122 (n + 1)

end A039122

/-! ## A039122.P8330016867161899545

`eq[A004092(n), A004092(A222221(n))]`
-/

namespace A039122.P8330016867161899545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039122.P8330016867161899545

namespace A039122

/-- `eq[A004092(n), A004092(A222221(n))]` -/
def P8330016867161899545.Spec : Prop :=
  ∀ n, (P8330016867161899545.a n : ℤ) = A039122 (n + 1)

end A039122

/-! ## A039122.P6614069237015447102

`eq[A004155(n), A004155(A222221(n))]`
-/

namespace A039122.P6614069237015447102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039122.P6614069237015447102

namespace A039122

/-- `eq[A004155(n), A004155(A222221(n))]` -/
def P6614069237015447102.Spec : Prop :=
  ∀ n, (P6614069237015447102.a n : ℤ) = A039122 (n + 1)

end A039122

/-! ## A039122.P10320177360675658917

`eq[A004185(n), A004185(A222221(n))]`
-/

namespace A039122.P10320177360675658917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039122.P10320177360675658917

namespace A039122

/-- `eq[A004185(n), A004185(A222221(n))]` -/
def P10320177360675658917.Spec : Prop :=
  ∀ n, (P10320177360675658917.a n : ℤ) = A039122 (n + 1)

end A039122

/-! ## A039122.P914187319844133075

`eq[A004186(n), A004186(A222221(n))]`
-/

namespace A039122.P914187319844133075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039122.P914187319844133075

namespace A039122

/-- `eq[A004186(n), A004186(A222221(n))]` -/
def P914187319844133075.Spec : Prop :=
  ∀ n, (P914187319844133075.a n : ℤ) = A039122 (n + 1)

end A039122

/-! ## A039122.P15121148890436712827

`eq[A007953(n), A007953(A222221(n))]`
-/

namespace A039122.P15121148890436712827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039122.P15121148890436712827

namespace A039122

/-- `eq[A007953(n), A007953(A222221(n))]` -/
def P15121148890436712827.Spec : Prop :=
  ∀ n, (P15121148890436712827.a n : ℤ) = A039122 (n + 1)

end A039122

/-! ## A039122.P18178509800926603733

`eq[A047842(n), A047842(A222221(n))]`
-/

namespace A039122.P18178509800926603733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A222221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039122.P18178509800926603733

namespace A039122

/-- `eq[A047842(n), A047842(A222221(n))]` -/
def P18178509800926603733.Spec : Prop :=
  ∀ n, (P18178509800926603733.a n : ℤ) = A039122 (n + 1)

end A039122

/-! ## A039122.P2188759028102415031

`eq[A051801(n), A051801(A222221(n))]`
-/

namespace A039122.P2188759028102415031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A222221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039122.P2188759028102415031

namespace A039122

/-- `eq[A051801(n), A051801(A222221(n))]` -/
def P2188759028102415031.Spec : Prop :=
  ∀ n, (P2188759028102415031.a n : ℤ) = A039122 (n + 1)

end A039122

/-! ## A039122.P6632401645092389507

`eq[A268643(A222221(n)), A268643(n)]`
-/

namespace A039122.P6632401645092389507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A222221 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039122.P6632401645092389507

namespace A039122

/-- `eq[A268643(A222221(n)), A268643(n)]` -/
def P6632401645092389507.Spec : Prop :=
  ∀ n, (P6632401645092389507.a n : ℤ) = A039122 (n + 1)

end A039122

/-!
# A039123: Numbers whose base-10 representation has the same number of 1's and 5's.

The programs for A039123, the canonical program `A039123.P11319338906521030932` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039123 has offset 1).

The definition of A039123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039123.P9230035157216599914

`eq[dr(n), dr(A222222(n))]`
-/

namespace A039123.P9230035157216599914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222222 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039123.P9230035157216599914

namespace A039123

/-- `eq[dr(n), dr(A222222(n))]` -/
def P9230035157216599914.Spec : Prop :=
  ∀ n, (P9230035157216599914.a n : ℤ) = A039123 (n + 1)

end A039123

/-! ## A039123.P11319338906521030932

`eq[A268643(n), A316866(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039123

/-- `eq[A268643(n), A316866(n)]` -/
def P11319338906521030932.Spec : Prop :=
  ∀ n, (P11319338906521030932.a n : ℤ) = A039123 (n + 1)

theorem P11319338906521030932.correct : P11319338906521030932.Spec := by
  intro n
  simp only [A039123, Nat.add_sub_cancel]

end A039123

/-! ## A039123.P9548300233653576081

`eq[A003132(n), A003132(A222222(n))]`
-/

namespace A039123.P9548300233653576081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039123.P9548300233653576081

namespace A039123

/-- `eq[A003132(n), A003132(A222222(n))]` -/
def P9548300233653576081.Spec : Prop :=
  ∀ n, (P9548300233653576081.a n : ℤ) = A039123 (n + 1)

end A039123

/-! ## A039123.P14535346311820896510

`eq[A051801(n), A051801(A222222(n))]`
-/

namespace A039123.P14535346311820896510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A222222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039123.P14535346311820896510

namespace A039123

/-- `eq[A051801(n), A051801(A222222(n))]` -/
def P14535346311820896510.Spec : Prop :=
  ∀ n, (P14535346311820896510.a n : ℤ) = A039123 (n + 1)

end A039123

/-! ## A039123.P574565617955995807

`eq[A193238(n), A193238(A222222(n))]`
-/

namespace A039123.P574565617955995807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A222222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039123.P574565617955995807

namespace A039123

/-- `eq[A193238(n), A193238(A222222(n))]` -/
def P574565617955995807.Spec : Prop :=
  ∀ n, (P574565617955995807.a n : ℤ) = A039123 (n + 1)

end A039123

/-! ## A039123.P11833785660337766146

`eq[A268643(A222222(n)), A268643(n)]`
-/

namespace A039123.P11833785660337766146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A222222 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039123.P11833785660337766146

namespace A039123

/-- `eq[A268643(A222222(n)), A268643(n)]` -/
def P11833785660337766146.Spec : Prop :=
  ∀ n, (P11833785660337766146.a n : ℤ) = A039123 (n + 1)

end A039123

/-! ## A039123.P17961204460425851330

`eq[A102669(2*n), A102669(n)]`
-/

namespace A039123.P17961204460425851330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039123.P17961204460425851330

namespace A039123

/-- `eq[A102669(2*n), A102669(n)]` -/
def P17961204460425851330.Spec : Prop :=
  ∀ n, (P17961204460425851330.a n : ℤ) = A039123 (n + 1)

end A039123

/-!
# A039124: Numbers whose base-10 representation has the same number of 1's and 6's.

The programs for A039124, the canonical program `A039124.P16542007872159384324` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039124 has offset 1).

The definition of A039124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039124.P10848450767705384370

`eq[dr(n), dr(A222223(n))]`
-/

namespace A039124.P10848450767705384370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222223 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039124.P10848450767705384370

namespace A039124

/-- `eq[dr(n), dr(A222223(n))]` -/
def P10848450767705384370.Spec : Prop :=
  ∀ n, (P10848450767705384370.a n : ℤ) = A039124 (n + 1)

end A039124

/-! ## A039124.P16542007872159384324

`eq[A268643(n), A316867(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039124

/-- `eq[A268643(n), A316867(n)]` -/
def P16542007872159384324.Spec : Prop :=
  ∀ n, (P16542007872159384324.a n : ℤ) = A039124 (n + 1)

theorem P16542007872159384324.correct : P16542007872159384324.Spec := by
  intro n
  simp only [A039124, Nat.add_sub_cancel]

end A039124

/-! ## A039124.P7912055535376706790

`eq[A003132(n), A003132(A222223(n))]`
-/

namespace A039124.P7912055535376706790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222223 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039124.P7912055535376706790

namespace A039124

/-- `eq[A003132(n), A003132(A222223(n))]` -/
def P7912055535376706790.Spec : Prop :=
  ∀ n, (P7912055535376706790.a n : ℤ) = A039124 (n + 1)

end A039124

/-! ## A039124.P3533509481509088705

`eq[A004092(n), A004092(A222223(n))]`
-/

namespace A039124.P3533509481509088705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222223 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039124.P3533509481509088705

namespace A039124

/-- `eq[A004092(n), A004092(A222223(n))]` -/
def P3533509481509088705.Spec : Prop :=
  ∀ n, (P3533509481509088705.a n : ℤ) = A039124 (n + 1)

end A039124

/-! ## A039124.P6517613175875929657

`eq[A004155(n), A004155(A222223(n))]`
-/

namespace A039124.P6517613175875929657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222223 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039124.P6517613175875929657

namespace A039124

/-- `eq[A004155(n), A004155(A222223(n))]` -/
def P6517613175875929657.Spec : Prop :=
  ∀ n, (P6517613175875929657.a n : ℤ) = A039124 (n + 1)

end A039124

/-! ## A039124.P4127162339045114745

`eq[A004185(n), A004185(A222223(n))]`
-/

namespace A039124.P4127162339045114745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222223 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039124.P4127162339045114745

namespace A039124

/-- `eq[A004185(n), A004185(A222223(n))]` -/
def P4127162339045114745.Spec : Prop :=
  ∀ n, (P4127162339045114745.a n : ℤ) = A039124 (n + 1)

end A039124

/-! ## A039124.P6771437766832020617

`eq[A004186(n), A004186(A222223(n))]`
-/

namespace A039124.P6771437766832020617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222223 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039124.P6771437766832020617

namespace A039124

/-- `eq[A004186(n), A004186(A222223(n))]` -/
def P6771437766832020617.Spec : Prop :=
  ∀ n, (P6771437766832020617.a n : ℤ) = A039124 (n + 1)

end A039124

/-! ## A039124.P7617885052092711450

`eq[A004427(n), A004427(A222223(n))]`
-/

namespace A039124.P7617885052092711450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A222223 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039124.P7617885052092711450

namespace A039124

/-- `eq[A004427(n), A004427(A222223(n))]` -/
def P7617885052092711450.Spec : Prop :=
  ∀ n, (P7617885052092711450.a n : ℤ) = A039124 (n + 1)

end A039124

/-! ## A039124.P4701692269980321352

`eq[A006942(n), A006942(A222223(n))]`
-/

namespace A039124.P4701692269980321352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A222223 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039124.P4701692269980321352

namespace A039124

/-- `eq[A006942(n), A006942(A222223(n))]` -/
def P4701692269980321352.Spec : Prop :=
  ∀ n, (P4701692269980321352.a n : ℤ) = A039124 (n + 1)

end A039124

/-! ## A039124.P6880857065500503043

`eq[A007953(n), A007953(A222223(n))]`
-/

namespace A039124.P6880857065500503043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222223 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039124.P6880857065500503043

namespace A039124

/-- `eq[A007953(n), A007953(A222223(n))]` -/
def P6880857065500503043.Spec : Prop :=
  ∀ n, (P6880857065500503043.a n : ℤ) = A039124 (n + 1)

end A039124

/-! ## A039124.P14294768984946686759

`eq[A064532(n), A064532(A222223(n))]`
-/

namespace A039124.P14294768984946686759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A222223 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039124.P14294768984946686759

namespace A039124

/-- `eq[A064532(n), A064532(A222223(n))]` -/
def P14294768984946686759.Spec : Prop :=
  ∀ n, (P14294768984946686759.a n : ℤ) = A039124 (n + 1)

end A039124

/-! ## A039124.P8140439678983267733

`eq[A064692(n), A064692(A222223(n))]`
-/

namespace A039124.P8140439678983267733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A222223 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039124.P8140439678983267733

namespace A039124

/-- `eq[A064692(n), A064692(A222223(n))]` -/
def P8140439678983267733.Spec : Prop :=
  ∀ n, (P8140439678983267733.a n : ℤ) = A039124 (n + 1)

end A039124

/-!
# A039125: Numbers whose base-10 representation has the same number of 1's and 7's.

The programs for A039125, the canonical program `A039125.P18372928856270811432` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039125 has offset 1).

The definition of A039125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039125.P975157751766708897

`eq[∑{digits}[n, #], ∑{digits}[n, A222224(#)]]`
-/

namespace A039125.P975157751766708897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => A222224 x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A039125.P975157751766708897

namespace A039125

/-- `eq[∑{digits}[n, #], ∑{digits}[n, A222224(#)]]` -/
def P975157751766708897.Spec : Prop :=
  ∀ n, (P975157751766708897.a n : ℤ) = A039125 (n + 1)

end A039125

/-! ## A039125.P18372928856270811432

`eq[A268643(n), A316868(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039125

/-- `eq[A268643(n), A316868(n)]` -/
def P18372928856270811432.Spec : Prop :=
  ∀ n, (P18372928856270811432.a n : ℤ) = A039125 (n + 1)

theorem P18372928856270811432.correct : P18372928856270811432.Spec := by
  intro n
  simp only [A039125, Nat.add_sub_cancel]

end A039125

/-! ## A039125.P8784459752146066491

`eq[A004185(n), A004185(A222224(n))]`
-/

namespace A039125.P8784459752146066491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222224 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039125.P8784459752146066491

namespace A039125

/-- `eq[A004185(n), A004185(A222224(n))]` -/
def P8784459752146066491.Spec : Prop :=
  ∀ n, (P8784459752146066491.a n : ℤ) = A039125 (n + 1)

end A039125

/-! ## A039125.P2002042361335032715

`eq[A004186(n), A004186(A222224(n))]`
-/

namespace A039125.P2002042361335032715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222224 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039125.P2002042361335032715

namespace A039125

/-- `eq[A004186(n), A004186(A222224(n))]` -/
def P2002042361335032715.Spec : Prop :=
  ∀ n, (P2002042361335032715.a n : ℤ) = A039125 (n + 1)

end A039125

/-! ## A039125.P1661708382680723728

`eq[A004426(n), A004426(A222224(n))]`
-/

namespace A039125.P1661708382680723728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A222224 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039125.P1661708382680723728

namespace A039125

/-- `eq[A004426(n), A004426(A222224(n))]` -/
def P1661708382680723728.Spec : Prop :=
  ∀ n, (P1661708382680723728.a n : ℤ) = A039125 (n + 1)

end A039125

/-! ## A039125.P6286924192672594890

`eq[A007953(n), A007953(A222224(n))]`
-/

namespace A039125.P6286924192672594890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222224 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039125.P6286924192672594890

namespace A039125

/-- `eq[A007953(n), A007953(A222224(n))]` -/
def P6286924192672594890.Spec : Prop :=
  ∀ n, (P6286924192672594890.a n : ℤ) = A039125 (n + 1)

end A039125

/-! ## A039125.P472166729305602432

`eq[A061762(n), A061762(A222224(n))]`
-/

namespace A039125.P472166729305602432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (A222224 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039125.P472166729305602432

namespace A039125

/-- `eq[A061762(n), A061762(A222224(n))]` -/
def P472166729305602432.Spec : Prop :=
  ∀ n, (P472166729305602432.a n : ℤ) = A039125 (n + 1)

end A039125

/-! ## A039125.P14042787570136309280

`eq[A118881(n), A118881(A222224(n))]`
-/

namespace A039125.P14042787570136309280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A222224 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039125.P14042787570136309280

namespace A039125

/-- `eq[A118881(n), A118881(A222224(n))]` -/
def P14042787570136309280.Spec : Prop :=
  ∀ n, (P14042787570136309280.a n : ℤ) = A039125 (n + 1)

end A039125

/-! ## A039125.P5199229054952782071

`eq[A268643(A222224(n)), A268643(n)]`
-/

namespace A039125.P5199229054952782071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A222224 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039125.P5199229054952782071

namespace A039125

/-- `eq[A268643(A222224(n)), A268643(n)]` -/
def P5199229054952782071.Spec : Prop :=
  ∀ n, (P5199229054952782071.a n : ℤ) = A039125 (n + 1)

end A039125

/-! ## A039125.P15503744041274005827

`eq[A276729(A222224(n)), A276729(n)]`
-/

namespace A039125.P15503744041274005827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A222224 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039125.P15503744041274005827

namespace A039125

/-- `eq[A276729(A222224(n)), A276729(n)]` -/
def P15503744041274005827.Spec : Prop :=
  ∀ n, (P15503744041274005827.a n : ℤ) = A039125 (n + 1)

end A039125

/-!
# A039126: Numbers whose base-10 representation has the same number of 1's and 8's.

The programs for A039126, the canonical program `A039126.P4040503189762224990` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039126 has offset 1).

The definition of A039126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039126.P5143260656288459629

`eq[A064692(n), A276729(n)]`
-/

namespace A039126.P5143260656288459629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039126.P5143260656288459629

namespace A039126

/-- `eq[A064692(n), A276729(n)]` -/
def P5143260656288459629.Spec : Prop :=
  ∀ n, (P5143260656288459629.a n : ℤ) = A039126 (n + 1)

end A039126

/-! ## A039126.P4040503189762224990

`eq[A268643(n), A316869(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039126

/-- `eq[A268643(n), A316869(n)]` -/
def P4040503189762224990.Spec : Prop :=
  ∀ n, (P4040503189762224990.a n : ℤ) = A039126 (n + 1)

theorem P4040503189762224990.correct : P4040503189762224990.Spec := by
  intro n
  simp only [A039126, Nat.add_sub_cancel]

end A039126

/-! ## A039126.P17747459973899921356

`eq[A003132(n), A003132(A222225(n))]`
-/

namespace A039126.P17747459973899921356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222225 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039126.P17747459973899921356

namespace A039126

/-- `eq[A003132(n), A003132(A222225(n))]` -/
def P17747459973899921356.Spec : Prop :=
  ∀ n, (P17747459973899921356.a n : ℤ) = A039126 (n + 1)

end A039126

/-! ## A039126.P11749146895632192913

`eq[A004155(n), A004155(A222225(n))]`
-/

namespace A039126.P11749146895632192913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222225 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039126.P11749146895632192913

namespace A039126

/-- `eq[A004155(n), A004155(A222225(n))]` -/
def P11749146895632192913.Spec : Prop :=
  ∀ n, (P11749146895632192913.a n : ℤ) = A039126 (n + 1)

end A039126

/-! ## A039126.P7597091873749932709

`eq[A007953(n), A007953(A222225(n))]`
-/

namespace A039126.P7597091873749932709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222225 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039126.P7597091873749932709

namespace A039126

/-- `eq[A007953(n), A007953(A222225(n))]` -/
def P7597091873749932709.Spec : Prop :=
  ∀ n, (P7597091873749932709.a n : ℤ) = A039126 (n + 1)

end A039126

/-! ## A039126.P6842152402902472134

`eq[A064532(n), A064532(A222225(n))]`
-/

namespace A039126.P6842152402902472134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A222225 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039126.P6842152402902472134

namespace A039126

/-- `eq[A064532(n), A064532(A222225(n))]` -/
def P6842152402902472134.Spec : Prop :=
  ∀ n, (P6842152402902472134.a n : ℤ) = A039126 (n + 1)

end A039126

/-! ## A039126.P14882548948204852082

`eq[A064692(n), A064692(A222225(n))]`
-/

namespace A039126.P14882548948204852082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A222225 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039126.P14882548948204852082

namespace A039126

/-- `eq[A064692(n), A064692(A222225(n))]` -/
def P14882548948204852082.Spec : Prop :=
  ∀ n, (P14882548948204852082.a n : ℤ) = A039126 (n + 1)

end A039126

/-! ## A039126.P9975273161364364486

`eq[A065137(n), A065137(A222225(n))]`
-/

namespace A039126.P9975273161364364486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 (A222225 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039126.P9975273161364364486

namespace A039126

/-- `eq[A065137(n), A065137(A222225(n))]` -/
def P9975273161364364486.Spec : Prop :=
  ∀ n, (P9975273161364364486.a n : ℤ) = A039126 (n + 1)

end A039126

/-! ## A039126.P466980706207111147

`eq[A102679(n), A102679(A222225(n))]`
-/

namespace A039126.P466980706207111147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A222225 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039126.P466980706207111147

namespace A039126

/-- `eq[A102679(n), A102679(A222225(n))]` -/
def P466980706207111147.Spec : Prop :=
  ∀ n, (P466980706207111147.a n : ℤ) = A039126 (n + 1)

end A039126

/-! ## A039126.P14147574472178191716

`eq[A268643(A061601(n)), A268643(n)]`
-/

namespace A039126.P14147574472178191716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A061601 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039126.P14147574472178191716

namespace A039126

/-- `eq[A268643(A061601(n)), A268643(n)]` -/
def P14147574472178191716.Spec : Prop :=
  ∀ n, (P14147574472178191716.a n : ℤ) = A039126 (n + 1)

end A039126

/-!
# A039127: Numbers whose base-10 representation has the same number of 1's and 9's.

The programs for A039127, the canonical program `A039127.P16291229020705347665` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039127 has offset 1).

The definition of A039127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039127.P7251524046411008616

`eq[∑{digits}[n, #], ∑{digits}[n, A222226(#)]]`
-/

namespace A039127.P7251524046411008616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => A222226 x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A039127.P7251524046411008616

namespace A039127

/-- `eq[∑{digits}[n, #], ∑{digits}[n, A222226(#)]]` -/
def P7251524046411008616.Spec : Prop :=
  ∀ n, (P7251524046411008616.a n : ℤ) = A039127 (n + 1)

end A039127

/-! ## A039127.P16291229020705347665

`eq[A102683(n), A268643(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039127

/-- `eq[A102683(n), A268643(n)]` -/
def P16291229020705347665.Spec : Prop :=
  ∀ n, (P16291229020705347665.a n : ℤ) = A039127 (n + 1)

theorem P16291229020705347665.correct : P16291229020705347665.Spec := by
  intro n
  simp only [A039127, Nat.add_sub_cancel]

end A039127

/-! ## A039127.P16462396335747499064

`eq[A003132(n), A003132(A222226(n))]`
-/

namespace A039127.P16462396335747499064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222226 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039127.P16462396335747499064

namespace A039127

/-- `eq[A003132(n), A003132(A222226(n))]` -/
def P16462396335747499064.Spec : Prop :=
  ∀ n, (P16462396335747499064.a n : ℤ) = A039127 (n + 1)

end A039127

/-! ## A039127.P15471603159697603508

`eq[A007953(n), A007953(A222226(n))]`
-/

namespace A039127.P15471603159697603508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222226 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039127.P15471603159697603508

namespace A039127

/-- `eq[A007953(n), A007953(A222226(n))]` -/
def P15471603159697603508.Spec : Prop :=
  ∀ n, (P15471603159697603508.a n : ℤ) = A039127 (n + 1)

end A039127

/-! ## A039127.P7846068191691323234

`eq[A102669(A048379(n)), A102669(n)]`
-/

namespace A039127.P7846068191691323234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A048379 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039127.P7846068191691323234

namespace A039127

/-- `eq[A102669(A048379(n)), A102669(n)]` -/
def P7846068191691323234.Spec : Prop :=
  ∀ n, (P7846068191691323234.a n : ℤ) = A039127 (n + 1)

end A039127

/-! ## A039127.P3388715068745593163

`eq[A102669(A055120(n)), A102669(n)]`
-/

namespace A039127.P3388715068745593163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A055120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039127.P3388715068745593163

namespace A039127

/-- `eq[A102669(A055120(n)), A102669(n)]` -/
def P3388715068745593163.Spec : Prop :=
  ∀ n, (P3388715068745593163.a n : ℤ) = A039127 (n + 1)

end A039127

/-! ## A039127.P16249979189315257746

`eq[A102683(A055120(n)), A102683(n)]`
-/

namespace A039127.P16249979189315257746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A055120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039127.P16249979189315257746

namespace A039127

/-- `eq[A102683(A055120(n)), A102683(n)]` -/
def P16249979189315257746.Spec : Prop :=
  ∀ n, (P16249979189315257746.a n : ℤ) = A039127 (n + 1)

end A039127

/-! ## A039127.P12329837406375479549

`eq[A268643(A222226(n)), A268643(n)]`
-/

namespace A039127.P12329837406375479549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A222226 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039127.P12329837406375479549

namespace A039127

/-- `eq[A268643(A222226(n)), A268643(n)]` -/
def P12329837406375479549.Spec : Prop :=
  ∀ n, (P12329837406375479549.a n : ℤ) = A039127 (n + 1)

end A039127

/-! ## A039127.P12839681249086792012

`eq[A102683(n)+A102669(n), A055640(n)]`
-/

namespace A039127.P12839681249086792012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n + A102669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039127.P12839681249086792012

namespace A039127

/-- `eq[A102683(n)+A102669(n), A055640(n)]` -/
def P12839681249086792012.Spec : Prop :=
  ∀ n, (P12839681249086792012.a n : ℤ) = A039127 (n + 1)

end A039127

/-! ## A039127.P14975876797673439005

`eq[A100910(A017293(n)-1), A102683(n)]`
-/

namespace A039127.P14975876797673439005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017293 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039127.P14975876797673439005

namespace A039127

/-- `eq[A100910(A017293(n)-1), A102683(n)]` -/
def P14975876797673439005.Spec : Prop :=
  ∀ n, (P14975876797673439005.a n : ℤ) = A039127 (n + 1)

end A039127

/-!
# A039128: Numbers whose base-10 representation has the same number of 2's and 3's.

The programs for A039128, the canonical program `A039128.P4718409235838100278` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039128 has offset 1).

The definition of A039128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4871 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039128.P4718409235838100278

`eq[A316863(n), A316864(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039128

/-- `eq[A316863(n), A316864(n)]` -/
def P4718409235838100278.Spec : Prop :=
  ∀ n, (P4718409235838100278.a n : ℤ) = A039128 (n + 1)

theorem P4718409235838100278.correct : P4718409235838100278.Spec := by
  intro n
  simp only [A039128, Nat.add_sub_cancel]

end A039128

/-! ## A039128.P6430624395132515918

`eq[A316863(A235049(n)), A316863(n)]`
-/

namespace A039128.P6430624395132515918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A235049 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039128.P6430624395132515918

namespace A039128

/-- `eq[A316863(A235049(n)), A316863(n)]` -/
def P6430624395132515918.Spec : Prop :=
  ∀ n, (P6430624395132515918.a n : ℤ) = A039128 (n + 1)

end A039128

/-! ## A039128.P516358933241224550

`eq[A316863(A306436(n)), A316863(n)]`
-/

namespace A039128.P516358933241224550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A306436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039128.P516358933241224550

namespace A039128

/-- `eq[A316863(A306436(n)), A316863(n)]` -/
def P516358933241224550.Spec : Prop :=
  ∀ n, (P516358933241224550.a n : ℤ) = A039128 (n + 1)

end A039128

/-! ## A039128.P5021791029033750752

`eq[dr(n), dr(A035044(n))]`
-/

namespace A039128.P5021791029033750752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A035044 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039128.P5021791029033750752

namespace A039128

/-- `eq[dr(n), dr(A035044(n))]` -/
def P5021791029033750752.Spec : Prop :=
  ∀ n, (P5021791029033750752.a n : ℤ) = A039128 (n + 1)

end A039128

/-! ## A039128.P13727626546584192419

`eq[A003132(n), A003132(A035044(n))]`
-/

namespace A039128.P13727626546584192419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A035044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039128.P13727626546584192419

namespace A039128

/-- `eq[A003132(n), A003132(A035044(n))]` -/
def P13727626546584192419.Spec : Prop :=
  ∀ n, (P13727626546584192419.a n : ℤ) = A039128 (n + 1)

end A039128

/-! ## A039128.P6594041795187037936

`eq[A004092(n), A004092(A035044(n))]`
-/

namespace A039128.P6594041795187037936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A035044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039128.P6594041795187037936

namespace A039128

/-- `eq[A004092(n), A004092(A035044(n))]` -/
def P6594041795187037936.Spec : Prop :=
  ∀ n, (P6594041795187037936.a n : ℤ) = A039128 (n + 1)

end A039128

/-! ## A039128.P5967762495913364633

`eq[A004185(n), A004185(A035044(n))]`
-/

namespace A039128.P5967762495913364633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A035044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039128.P5967762495913364633

namespace A039128

/-- `eq[A004185(n), A004185(A035044(n))]` -/
def P5967762495913364633.Spec : Prop :=
  ∀ n, (P5967762495913364633.a n : ℤ) = A039128 (n + 1)

end A039128

/-! ## A039128.P5166828964885520553

`eq[A004186(n), A004186(A035044(n))]`
-/

namespace A039128.P5166828964885520553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A035044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039128.P5166828964885520553

namespace A039128

/-- `eq[A004186(n), A004186(A035044(n))]` -/
def P5166828964885520553.Spec : Prop :=
  ∀ n, (P5166828964885520553.a n : ℤ) = A039128 (n + 1)

end A039128

/-! ## A039128.P8630497741060226714

`eq[A007953(n), A007953(A035044(n))]`
-/

namespace A039128.P8630497741060226714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A035044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039128.P8630497741060226714

namespace A039128

/-- `eq[A007953(n), A007953(A035044(n))]` -/
def P8630497741060226714.Spec : Prop :=
  ∀ n, (P8630497741060226714.a n : ℤ) = A039128 (n + 1)

end A039128

/-! ## A039128.P17355514084803996322

`eq[A316864(A048379(n)), A316864(n)]`
-/

namespace A039128.P17355514084803996322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A048379 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039128.P17355514084803996322

namespace A039128

/-- `eq[A316864(A048379(n)), A316864(n)]` -/
def P17355514084803996322.Spec : Prop :=
  ∀ n, (P17355514084803996322.a n : ℤ) = A039128 (n + 1)

end A039128

/-! ## A039128.P17524592606663696510

`eq[A316864(A216556(n)), A316864(n)]`
-/

namespace A039128.P17524592606663696510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A216556 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039128.P17524592606663696510

namespace A039128

/-- `eq[A316864(A216556(n)), A316864(n)]` -/
def P17524592606663696510.Spec : Prop :=
  ∀ n, (P17524592606663696510.a n : ℤ) = A039128 (n + 1)

end A039128

/-!
# A039129: Numbers whose base-10 representation has the same number of 2's and 4's.

The programs for A039129, the canonical program `A039129.P7492429853596286617` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039129 has offset 1).

The definition of A039129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039129.P9332867094398705926

`eq[A102669(A004179(n)), A102671(n)]`
-/

namespace A039129.P9332867094398705926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A004179 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039129.P9332867094398705926

namespace A039129

/-- `eq[A102669(A004179(n)), A102671(n)]` -/
def P9332867094398705926.Spec : Prop :=
  ∀ n, (P9332867094398705926.a n : ℤ) = A039129 (n + 1)

end A039129

/-! ## A039129.P1085512610550132282

`eq[A316863(A107128(n)), A316863(n)]`
-/

namespace A039129.P1085512610550132282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A107128 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039129.P1085512610550132282

namespace A039129

/-- `eq[A316863(A107128(n)), A316863(n)]` -/
def P1085512610550132282.Spec : Prop :=
  ∀ n, (P1085512610550132282.a n : ℤ) = A039129 (n + 1)

end A039129

/-! ## A039129.P16935794694065396622

`eq[dr(n), dr(A222228(n))]`
-/

namespace A039129.P16935794694065396622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222228 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039129.P16935794694065396622

namespace A039129

/-- `eq[dr(n), dr(A222228(n))]` -/
def P16935794694065396622.Spec : Prop :=
  ∀ n, (P16935794694065396622.a n : ℤ) = A039129 (n + 1)

end A039129

/-! ## A039129.P7492429853596286617

`eq[A316863(n), A316865(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039129

/-- `eq[A316863(n), A316865(n)]` -/
def P7492429853596286617.Spec : Prop :=
  ∀ n, (P7492429853596286617.a n : ℤ) = A039129 (n + 1)

theorem P7492429853596286617.correct : P7492429853596286617.Spec := by
  intro n
  simp only [A039129, Nat.add_sub_cancel]

end A039129

/-! ## A039129.P6597082107328822507

`eq[A003132(n), A003132(A222228(n))]`
-/

namespace A039129.P6597082107328822507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222228 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039129.P6597082107328822507

namespace A039129

/-- `eq[A003132(n), A003132(A222228(n))]` -/
def P6597082107328822507.Spec : Prop :=
  ∀ n, (P6597082107328822507.a n : ℤ) = A039129 (n + 1)

end A039129

/-! ## A039129.P11448300461935447421

`eq[A004092(n), A004092(A222228(n))]`
-/

namespace A039129.P11448300461935447421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222228 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039129.P11448300461935447421

namespace A039129

/-- `eq[A004092(n), A004092(A222228(n))]` -/
def P11448300461935447421.Spec : Prop :=
  ∀ n, (P11448300461935447421.a n : ℤ) = A039129 (n + 1)

end A039129

/-! ## A039129.P701975337446804093

`eq[A004155(n), A004155(A222228(n))]`
-/

namespace A039129.P701975337446804093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222228 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039129.P701975337446804093

namespace A039129

/-- `eq[A004155(n), A004155(A222228(n))]` -/
def P701975337446804093.Spec : Prop :=
  ∀ n, (P701975337446804093.a n : ℤ) = A039129 (n + 1)

end A039129

/-! ## A039129.P7233515762804622157

`eq[A004186(n), A004186(A222228(n))]`
-/

namespace A039129.P7233515762804622157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222228 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039129.P7233515762804622157

namespace A039129

/-- `eq[A004186(n), A004186(A222228(n))]` -/
def P7233515762804622157.Spec : Prop :=
  ∀ n, (P7233515762804622157.a n : ℤ) = A039129 (n + 1)

end A039129

/-! ## A039129.P10631412085093734125

`eq[A316865(A222228(n)), A316865(n)]`
-/

namespace A039129.P10631412085093734125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A222228 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039129.P10631412085093734125

namespace A039129

/-- `eq[A316865(A222228(n)), A316865(n)]` -/
def P10631412085093734125.Spec : Prop :=
  ∀ n, (P10631412085093734125.a n : ℤ) = A039129 (n + 1)

end A039129

/-!
# A039130: Numbers whose base-10 representation has the same number of 2's and 5's.

The programs for A039130, the canonical program `A039130.P5718227757660465918` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039130 has offset 1).

The definition of A039130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039130.P5718227757660465918

`eq[A316863(n), A316866(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039130

/-- `eq[A316863(n), A316866(n)]` -/
def P5718227757660465918.Spec : Prop :=
  ∀ n, (P5718227757660465918.a n : ℤ) = A039130 (n + 1)

theorem P5718227757660465918.correct : P5718227757660465918.Spec := by
  intro n
  simp only [A039130, Nat.add_sub_cancel]

end A039130

/-! ## A039130.P12213542225219452564

`eq[A003132(n), A003132(A222229(n))]`
-/

namespace A039130.P12213542225219452564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222229 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039130.P12213542225219452564

namespace A039130

/-- `eq[A003132(n), A003132(A222229(n))]` -/
def P12213542225219452564.Spec : Prop :=
  ∀ n, (P12213542225219452564.a n : ℤ) = A039130 (n + 1)

end A039130

/-! ## A039130.P11075068857456187892

`eq[A004092(n), A004092(A222229(n))]`
-/

namespace A039130.P11075068857456187892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222229 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039130.P11075068857456187892

namespace A039130

/-- `eq[A004092(n), A004092(A222229(n))]` -/
def P11075068857456187892.Spec : Prop :=
  ∀ n, (P11075068857456187892.a n : ℤ) = A039130 (n + 1)

end A039130

/-! ## A039130.P7339381012392310212

`eq[A004155(n), A004155(A222229(n))]`
-/

namespace A039130.P7339381012392310212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222229 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039130.P7339381012392310212

namespace A039130

/-- `eq[A004155(n), A004155(A222229(n))]` -/
def P7339381012392310212.Spec : Prop :=
  ∀ n, (P7339381012392310212.a n : ℤ) = A039130 (n + 1)

end A039130

/-! ## A039130.P2031127619521308355

`eq[A004185(n), A004185(A222229(n))]`
-/

namespace A039130.P2031127619521308355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222229 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039130.P2031127619521308355

namespace A039130

/-- `eq[A004185(n), A004185(A222229(n))]` -/
def P2031127619521308355.Spec : Prop :=
  ∀ n, (P2031127619521308355.a n : ℤ) = A039130 (n + 1)

end A039130

/-! ## A039130.P13447988513743889331

`eq[A004186(n), A004186(A222229(n))]`
-/

namespace A039130.P13447988513743889331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222229 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039130.P13447988513743889331

namespace A039130

/-- `eq[A004186(n), A004186(A222229(n))]` -/
def P13447988513743889331.Spec : Prop :=
  ∀ n, (P13447988513743889331.a n : ℤ) = A039130 (n + 1)

end A039130

/-! ## A039130.P208674836351026594

`eq[A316863(A222229(n)), A316863(n)]`
-/

namespace A039130.P208674836351026594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A222229 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039130.P208674836351026594

namespace A039130

/-- `eq[A316863(A222229(n)), A316863(n)]` -/
def P208674836351026594.Spec : Prop :=
  ∀ n, (P208674836351026594.a n : ℤ) = A039130 (n + 1)

end A039130

/-! ## A039130.P7550694701808740723

`∪[A014173(n), A361780(n+1)]`
-/

namespace A039130.P7550694701808740723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014173 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039130.P7550694701808740723

namespace A039130

/-- `∪[A014173(n), A361780(n+1)]` -/
def P7550694701808740723.Spec : Prop :=
  ∀ n, (P7550694701808740723.a n : ℤ) = A039130 (n + 1)

end A039130

/-! ## A039130.P9823389533051648765

`∪[A017245(n), A361780(n+1)]`
-/

namespace A039130.P9823389533051648765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039130.P9823389533051648765

namespace A039130

/-- `∪[A017245(n), A361780(n+1)]` -/
def P9823389533051648765.Spec : Prop :=
  ∀ n, (P9823389533051648765.a n : ℤ) = A039130 (n + 1)

end A039130

/-! ## A039130.P11274492530879295697

`∪[A107957(n), A361780(n+1)]`
-/

namespace A039130.P11274492530879295697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039130.P11274492530879295697

namespace A039130

/-- `∪[A107957(n), A361780(n+1)]` -/
def P11274492530879295697.Spec : Prop :=
  ∀ n, (P11274492530879295697.a n : ℤ) = A039130 (n + 1)

end A039130

/-!
# A039131: Numbers whose base-10 representation has the same number of 2's and 6's.

The programs for A039131, the canonical program `A039131.P4602520256687173816` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039131 has offset 1).

The definition of A039131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039131.P12976426933071517229

`eq[dr(n), dr(A222230(n))]`
-/

namespace A039131.P12976426933071517229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222230 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039131.P12976426933071517229

namespace A039131

/-- `eq[dr(n), dr(A222230(n))]` -/
def P12976426933071517229.Spec : Prop :=
  ∀ n, (P12976426933071517229.a n : ℤ) = A039131 (n + 1)

end A039131

/-! ## A039131.P4602520256687173816

`eq[A316863(n), A316867(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039131

/-- `eq[A316863(n), A316867(n)]` -/
def P4602520256687173816.Spec : Prop :=
  ∀ n, (P4602520256687173816.a n : ℤ) = A039131 (n + 1)

theorem P4602520256687173816.correct : P4602520256687173816.Spec := by
  intro n
  simp only [A039131, Nat.add_sub_cancel]

end A039131

/-! ## A039131.P14555497461467193422

`eq[A003132(n), A003132(A222230(n))]`
-/

namespace A039131.P14555497461467193422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222230 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039131.P14555497461467193422

namespace A039131

/-- `eq[A003132(n), A003132(A222230(n))]` -/
def P14555497461467193422.Spec : Prop :=
  ∀ n, (P14555497461467193422.a n : ℤ) = A039131 (n + 1)

end A039131

/-! ## A039131.P14205354949567574096

`eq[A004092(n), A004092(A222230(n))]`
-/

namespace A039131.P14205354949567574096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222230 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039131.P14205354949567574096

namespace A039131

/-- `eq[A004092(n), A004092(A222230(n))]` -/
def P14205354949567574096.Spec : Prop :=
  ∀ n, (P14205354949567574096.a n : ℤ) = A039131 (n + 1)

end A039131

/-! ## A039131.P405090471147898193

`eq[A004155(n), A004155(A222230(n))]`
-/

namespace A039131.P405090471147898193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222230 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039131.P405090471147898193

namespace A039131

/-- `eq[A004155(n), A004155(A222230(n))]` -/
def P405090471147898193.Spec : Prop :=
  ∀ n, (P405090471147898193.a n : ℤ) = A039131 (n + 1)

end A039131

/-! ## A039131.P5407844044597977826

`eq[A004185(n), A004185(A222230(n))]`
-/

namespace A039131.P5407844044597977826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222230 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039131.P5407844044597977826

namespace A039131

/-- `eq[A004185(n), A004185(A222230(n))]` -/
def P5407844044597977826.Spec : Prop :=
  ∀ n, (P5407844044597977826.a n : ℤ) = A039131 (n + 1)

end A039131

/-! ## A039131.P2506774015414559166

`eq[A004186(n), A004186(A222230(n))]`
-/

namespace A039131.P2506774015414559166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222230 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039131.P2506774015414559166

namespace A039131

/-- `eq[A004186(n), A004186(A222230(n))]` -/
def P2506774015414559166.Spec : Prop :=
  ∀ n, (P2506774015414559166.a n : ℤ) = A039131 (n + 1)

end A039131

/-! ## A039131.P3999974272172131393

`eq[A004426(n), A004426(A222230(n))]`
-/

namespace A039131.P3999974272172131393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A222230 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039131.P3999974272172131393

namespace A039131

/-- `eq[A004426(n), A004426(A222230(n))]` -/
def P3999974272172131393.Spec : Prop :=
  ∀ n, (P3999974272172131393.a n : ℤ) = A039131 (n + 1)

end A039131

/-! ## A039131.P14882861728196444182

`eq[A004427(n), A004427(A222230(n))]`
-/

namespace A039131.P14882861728196444182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A222230 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039131.P14882861728196444182

namespace A039131

/-- `eq[A004427(n), A004427(A222230(n))]` -/
def P14882861728196444182.Spec : Prop :=
  ∀ n, (P14882861728196444182.a n : ℤ) = A039131 (n + 1)

end A039131

/-! ## A039131.P14584013633561050387

`eq[A316863(A222230(n)), A316863(n)]`
-/

namespace A039131.P14584013633561050387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A222230 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039131.P14584013633561050387

namespace A039131

/-- `eq[A316863(A222230(n)), A316863(n)]` -/
def P14584013633561050387.Spec : Prop :=
  ∀ n, (P14584013633561050387.a n : ℤ) = A039131 (n + 1)

end A039131

/-! ## A039131.P12437409729607929725

`eq[A102673(2*A107130(n)), A102673(n)]`
-/

namespace A039131.P12437409729607929725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (2 * A107130 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039131.P12437409729607929725

namespace A039131

/-- `eq[A102673(2*A107130(n)), A102673(n)]` -/
def P12437409729607929725.Spec : Prop :=
  ∀ n, (P12437409729607929725.a n : ℤ) = A039131 (n + 1)

end A039131

/-!
# A039132: Numbers whose base-10 representation has the same number of 2's and 7's.

The programs for A039132, the canonical program `A039132.P5108102705485064060` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039132 has offset 1).

The definition of A039132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039132.P8634938048091985349

`eq[dr(n), dr(A222231(n))]`
-/

namespace A039132.P8634938048091985349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222231 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039132.P8634938048091985349

namespace A039132

/-- `eq[dr(n), dr(A222231(n))]` -/
def P8634938048091985349.Spec : Prop :=
  ∀ n, (P8634938048091985349.a n : ℤ) = A039132 (n + 1)

end A039132

/-! ## A039132.P5108102705485064060

`eq[A316863(n), A316868(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039132

/-- `eq[A316863(n), A316868(n)]` -/
def P5108102705485064060.Spec : Prop :=
  ∀ n, (P5108102705485064060.a n : ℤ) = A039132 (n + 1)

theorem P5108102705485064060.correct : P5108102705485064060.Spec := by
  intro n
  simp only [A039132, Nat.add_sub_cancel]

end A039132

/-! ## A039132.P1196899817107242550

`eq[A003132(n), A003132(A222231(n))]`
-/

namespace A039132.P1196899817107242550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222231 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039132.P1196899817107242550

namespace A039132

/-- `eq[A003132(n), A003132(A222231(n))]` -/
def P1196899817107242550.Spec : Prop :=
  ∀ n, (P1196899817107242550.a n : ℤ) = A039132 (n + 1)

end A039132

/-! ## A039132.P12235266255568891902

`eq[A004092(n), A004092(A222231(n))]`
-/

namespace A039132.P12235266255568891902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222231 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039132.P12235266255568891902

namespace A039132

/-- `eq[A004092(n), A004092(A222231(n))]` -/
def P12235266255568891902.Spec : Prop :=
  ∀ n, (P12235266255568891902.a n : ℤ) = A039132 (n + 1)

end A039132

/-! ## A039132.P2906885696718874615

`eq[A004155(n), A004155(A222231(n))]`
-/

namespace A039132.P2906885696718874615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222231 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039132.P2906885696718874615

namespace A039132

/-- `eq[A004155(n), A004155(A222231(n))]` -/
def P2906885696718874615.Spec : Prop :=
  ∀ n, (P2906885696718874615.a n : ℤ) = A039132 (n + 1)

end A039132

/-! ## A039132.P7321817859730392283

`eq[A004185(n), A004185(A222231(n))]`
-/

namespace A039132.P7321817859730392283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222231 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039132.P7321817859730392283

namespace A039132

/-- `eq[A004185(n), A004185(A222231(n))]` -/
def P7321817859730392283.Spec : Prop :=
  ∀ n, (P7321817859730392283.a n : ℤ) = A039132 (n + 1)

end A039132

/-! ## A039132.P2999569637278042553

`eq[A004186(n), A004186(A222231(n))]`
-/

namespace A039132.P2999569637278042553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222231 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039132.P2999569637278042553

namespace A039132

/-- `eq[A004186(n), A004186(A222231(n))]` -/
def P2999569637278042553.Spec : Prop :=
  ∀ n, (P2999569637278042553.a n : ℤ) = A039132 (n + 1)

end A039132

/-! ## A039132.P17341164692541484189

`eq[A004427(n), A004427(A222231(n))]`
-/

namespace A039132.P17341164692541484189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A222231 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039132.P17341164692541484189

namespace A039132

/-- `eq[A004427(n), A004427(A222231(n))]` -/
def P17341164692541484189.Spec : Prop :=
  ∀ n, (P17341164692541484189.a n : ℤ) = A039132 (n + 1)

end A039132

/-! ## A039132.P9039938612366163306

`eq[A007953(n), A007953(A222231(n))]`
-/

namespace A039132.P9039938612366163306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222231 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039132.P9039938612366163306

namespace A039132

/-- `eq[A007953(n), A007953(A222231(n))]` -/
def P9039938612366163306.Spec : Prop :=
  ∀ n, (P9039938612366163306.a n : ℤ) = A039132 (n + 1)

end A039132

/-! ## A039132.P16779788495962095558

`eq[A316863(A061601(n)), A316863(n)]`
-/

namespace A039132.P16779788495962095558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A061601 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039132.P16779788495962095558

namespace A039132

/-- `eq[A316863(A061601(n)), A316863(n)]` -/
def P16779788495962095558.Spec : Prop :=
  ∀ n, (P16779788495962095558.a n : ℤ) = A039132 (n + 1)

end A039132

/-!
# A039133: Numbers whose base-10 representation has the same number of 2's and 8's.

The programs for A039133, the canonical program `A039133.P2714418781855912690` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039133 has offset 1).

The definition of A039133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039133.P2714418781855912690

`eq[A316863(n), A316869(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039133

/-- `eq[A316863(n), A316869(n)]` -/
def P2714418781855912690.Spec : Prop :=
  ∀ n, (P2714418781855912690.a n : ℤ) = A039133 (n + 1)

theorem P2714418781855912690.correct : P2714418781855912690.Spec := by
  intro n
  simp only [A039133, Nat.add_sub_cancel]

end A039133

/-! ## A039133.P6570179363521837247

`eq[A102669(A004183(n)), A102671(n)]`
-/

namespace A039133.P6570179363521837247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A004183 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P6570179363521837247

namespace A039133

/-- `eq[A102669(A004183(n)), A102671(n)]` -/
def P6570179363521837247.Spec : Prop :=
  ∀ n, (P6570179363521837247.a n : ℤ) = A039133 (n + 1)

end A039133

/-! ## A039133.P2543487739846901915

`eq[A001050(n), A001050(A222232(n))]`
-/

namespace A039133.P2543487739846901915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001050 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P2543487739846901915

namespace A039133

/-- `eq[A001050(n), A001050(A222232(n))]` -/
def P2543487739846901915.Spec : Prop :=
  ∀ n, (P2543487739846901915.a n : ℤ) = A039133 (n + 1)

end A039133

/-! ## A039133.P4787692354253643706

`eq[A003132(n), A003132(A222232(n))]`
-/

namespace A039133.P4787692354253643706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P4787692354253643706

namespace A039133

/-- `eq[A003132(n), A003132(A222232(n))]` -/
def P4787692354253643706.Spec : Prop :=
  ∀ n, (P4787692354253643706.a n : ℤ) = A039133 (n + 1)

end A039133

/-! ## A039133.P6910910165582672337

`eq[A004092(n), A004092(A222232(n))]`
-/

namespace A039133.P6910910165582672337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P6910910165582672337

namespace A039133

/-- `eq[A004092(n), A004092(A222232(n))]` -/
def P6910910165582672337.Spec : Prop :=
  ∀ n, (P6910910165582672337.a n : ℤ) = A039133 (n + 1)

end A039133

/-! ## A039133.P15821764654357189013

`eq[A004155(n), A004155(A222232(n))]`
-/

namespace A039133.P15821764654357189013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P15821764654357189013

namespace A039133

/-- `eq[A004155(n), A004155(A222232(n))]` -/
def P15821764654357189013.Spec : Prop :=
  ∀ n, (P15821764654357189013.a n : ℤ) = A039133 (n + 1)

end A039133

/-! ## A039133.P16816791741122455942

`eq[A004185(n), A004185(A222232(n))]`
-/

namespace A039133.P16816791741122455942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P16816791741122455942

namespace A039133

/-- `eq[A004185(n), A004185(A222232(n))]` -/
def P16816791741122455942.Spec : Prop :=
  ∀ n, (P16816791741122455942.a n : ℤ) = A039133 (n + 1)

end A039133

/-! ## A039133.P5110212193349181382

`eq[A004186(n), A004186(A222232(n))]`
-/

namespace A039133.P5110212193349181382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P5110212193349181382

namespace A039133

/-- `eq[A004186(n), A004186(A222232(n))]` -/
def P5110212193349181382.Spec : Prop :=
  ∀ n, (P5110212193349181382.a n : ℤ) = A039133 (n + 1)

end A039133

/-! ## A039133.P6902054539195730277

`eq[A004426(n), A004426(A222232(n))]`
-/

namespace A039133.P6902054539195730277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P6902054539195730277

namespace A039133

/-- `eq[A004426(n), A004426(A222232(n))]` -/
def P6902054539195730277.Spec : Prop :=
  ∀ n, (P6902054539195730277.a n : ℤ) = A039133 (n + 1)

end A039133

/-! ## A039133.P13716304857665386790

`eq[A004427(n), A004427(A222232(n))]`
-/

namespace A039133.P13716304857665386790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P13716304857665386790

namespace A039133

/-- `eq[A004427(n), A004427(A222232(n))]` -/
def P13716304857665386790.Spec : Prop :=
  ∀ n, (P13716304857665386790.a n : ℤ) = A039133 (n + 1)

end A039133

/-! ## A039133.P3704696966623197213

`eq[A007953(n), A007953(A222232(n))]`
-/

namespace A039133.P3704696966623197213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P3704696966623197213

namespace A039133

/-- `eq[A007953(n), A007953(A222232(n))]` -/
def P3704696966623197213.Spec : Prop :=
  ∀ n, (P3704696966623197213.a n : ℤ) = A039133 (n + 1)

end A039133

/-! ## A039133.P789111803388012517

`eq[A055012(n), A055012(A222232(n))]`
-/

namespace A039133.P789111803388012517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P789111803388012517

namespace A039133

/-- `eq[A055012(n), A055012(A222232(n))]` -/
def P789111803388012517.Spec : Prop :=
  ∀ n, (P789111803388012517.a n : ℤ) = A039133 (n + 1)

end A039133

/-! ## A039133.P938312601417877187

`eq[A064532(n), A064532(A222232(n))]`
-/

namespace A039133.P938312601417877187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P938312601417877187

namespace A039133

/-- `eq[A064532(n), A064532(A222232(n))]` -/
def P938312601417877187.Spec : Prop :=
  ∀ n, (P938312601417877187.a n : ℤ) = A039133 (n + 1)

end A039133

/-! ## A039133.P6806235413400410106

`eq[A064692(n), A064692(A222232(n))]`
-/

namespace A039133.P6806235413400410106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P6806235413400410106

namespace A039133

/-- `eq[A064692(n), A064692(A222232(n))]` -/
def P6806235413400410106.Spec : Prop :=
  ∀ n, (P6806235413400410106.a n : ℤ) = A039133 (n + 1)

end A039133

/-! ## A039133.P14878983796703633142

`eq[A069877(n), A069877(A222232(n))]`
-/

namespace A039133.P14878983796703633142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P14878983796703633142

namespace A039133

/-- `eq[A069877(n), A069877(A222232(n))]` -/
def P14878983796703633142.Spec : Prop :=
  ∀ n, (P14878983796703633142.a n : ℤ) = A039133 (n + 1)

end A039133

/-! ## A039133.P7361947182601660093

`eq[A316863(A055120(n)), A316863(n)]`
-/

namespace A039133.P7361947182601660093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A055120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P7361947182601660093

namespace A039133

/-- `eq[A316863(A055120(n)), A316863(n)]` -/
def P7361947182601660093.Spec : Prop :=
  ∀ n, (P7361947182601660093.a n : ℤ) = A039133 (n + 1)

end A039133

/-! ## A039133.P18126449782521903045

`eq[A316863(A222232(n)), A316863(n)]`
-/

namespace A039133.P18126449782521903045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A222232 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P18126449782521903045

namespace A039133

/-- `eq[A316863(A222232(n)), A316863(n)]` -/
def P18126449782521903045.Spec : Prop :=
  ∀ n, (P18126449782521903045.a n : ℤ) = A039133 (n + 1)

end A039133

/-!
# A039134: Numbers whose base-10 representation has the same number of 2's and 9's.

The programs for A039134, the canonical program `A039134.P15058098033572111299` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039134 has offset 1).

The definition of A039134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4871 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039134.P15058098033572111299

`eq[A102683(n), A316863(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039134

/-- `eq[A102683(n), A316863(n)]` -/
def P15058098033572111299.Spec : Prop :=
  ∀ n, (P15058098033572111299.a n : ℤ) = A039134 (n + 1)

theorem P15058098033572111299.correct : P15058098033572111299.Spec := by
  intro n
  simp only [A039134, Nat.add_sub_cancel]

end A039134

/-! ## A039134.P6090203507192221874

`eq[dr(n), dr(A222233(n))]`
-/

namespace A039134.P6090203507192221874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222233 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039134.P6090203507192221874

namespace A039134

/-- `eq[dr(n), dr(A222233(n))]` -/
def P6090203507192221874.Spec : Prop :=
  ∀ n, (P6090203507192221874.a n : ℤ) = A039134 (n + 1)

end A039134

/-! ## A039134.P14816523521730061922

`eq[A075053(A001613(n)), A102683(n)]`
-/

namespace A039134.P14816523521730061922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A001613 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039134.P14816523521730061922

namespace A039134

/-- `eq[A075053(A001613(n)), A102683(n)]` -/
def P14816523521730061922.Spec : Prop :=
  ∀ n, (P14816523521730061922.a n : ℤ) = A039134 (n + 1)

end A039134

/-! ## A039134.P17407490290570654608

`eq[A003132(n), A003132(A222233(n))]`
-/

namespace A039134.P17407490290570654608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222233 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039134.P17407490290570654608

namespace A039134

/-- `eq[A003132(n), A003132(A222233(n))]` -/
def P17407490290570654608.Spec : Prop :=
  ∀ n, (P17407490290570654608.a n : ℤ) = A039134 (n + 1)

end A039134

/-! ## A039134.P3420180648489492529

`eq[A004185(n), A004185(A222233(n))]`
-/

namespace A039134.P3420180648489492529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222233 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039134.P3420180648489492529

namespace A039134

/-- `eq[A004185(n), A004185(A222233(n))]` -/
def P3420180648489492529.Spec : Prop :=
  ∀ n, (P3420180648489492529.a n : ℤ) = A039134 (n + 1)

end A039134

/-! ## A039134.P188617854231593602

`eq[A004186(n), A004186(A222233(n))]`
-/

namespace A039134.P188617854231593602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222233 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039134.P188617854231593602

namespace A039134

/-- `eq[A004186(n), A004186(A222233(n))]` -/
def P188617854231593602.Spec : Prop :=
  ∀ n, (P188617854231593602.a n : ℤ) = A039134 (n + 1)

end A039134

/-! ## A039134.P14917499883323157181

`eq[A196564(n), A196564(A222233(n))]`
-/

namespace A039134.P14917499883323157181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A222233 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039134.P14917499883323157181

namespace A039134

/-- `eq[A196564(n), A196564(A222233(n))]` -/
def P14917499883323157181.Spec : Prop :=
  ∀ n, (P14917499883323157181.a n : ℤ) = A039134 (n + 1)

end A039134

/-! ## A039134.P14048621486498450672

`eq[A100910(A017293(n)), A102683(n)]`
-/

namespace A039134.P14048621486498450672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017293 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039134.P14048621486498450672

namespace A039134

/-- `eq[A100910(A017293(n)), A102683(n)]` -/
def P14048621486498450672.Spec : Prop :=
  ∀ n, (P14048621486498450672.a n : ℤ) = A039134 (n + 1)

end A039134

/-! ## A039134.P4598804669186052579

`eq[A007949(A113581(n)), A102683(n)]`
-/

namespace A039134.P4598804669186052579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A113581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039134.P4598804669186052579

namespace A039134

/-- `eq[A007949(A113581(n)), A102683(n)]` -/
def P4598804669186052579.Spec : Prop :=
  ∀ n, (P4598804669186052579.a n : ℤ) = A039134 (n + 1)

end A039134

/-!
# A039135: Numbers whose base-10 representation has the same number of 3's and 4's.

The programs for A039135, the canonical program `A039135.P2050986303556915638` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039135 has offset 1).

The definition of A039135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039135.P2050986303556915638

`eq[A316864(n), A316865(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039135

/-- `eq[A316864(n), A316865(n)]` -/
def P2050986303556915638.Spec : Prop :=
  ∀ n, (P2050986303556915638.a n : ℤ) = A039135 (n + 1)

theorem P2050986303556915638.correct : P2050986303556915638.Spec := by
  intro n
  simp only [A039135, Nat.add_sub_cancel]

end A039135

/-! ## A039135.P1240522847818079283

`eq[A004185(n), A004185(A222234(n))]`
-/

namespace A039135.P1240522847818079283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039135.P1240522847818079283

namespace A039135

/-- `eq[A004185(n), A004185(A222234(n))]` -/
def P1240522847818079283.Spec : Prop :=
  ∀ n, (P1240522847818079283.a n : ℤ) = A039135 (n + 1)

end A039135

/-! ## A039135.P6550502948134445957

`eq[A004186(n), A004186(A222234(n))]`
-/

namespace A039135.P6550502948134445957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039135.P6550502948134445957

namespace A039135

/-- `eq[A004186(n), A004186(A222234(n))]` -/
def P6550502948134445957.Spec : Prop :=
  ∀ n, (P6550502948134445957.a n : ℤ) = A039135 (n + 1)

end A039135

/-! ## A039135.P18436134526682678750

`eq[A007953(n), A007953(A222234(n))]`
-/

namespace A039135.P18436134526682678750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039135.P18436134526682678750

namespace A039135

/-- `eq[A007953(n), A007953(A222234(n))]` -/
def P18436134526682678750.Spec : Prop :=
  ∀ n, (P18436134526682678750.a n : ℤ) = A039135 (n + 1)

end A039135

/-! ## A039135.P13735085639051956097

`eq[A010878(n), A010878(A222234(n))]`
-/

namespace A039135.P13735085639051956097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A222234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039135.P13735085639051956097

namespace A039135

/-- `eq[A010878(n), A010878(A222234(n))]` -/
def P13735085639051956097.Spec : Prop :=
  ∀ n, (P13735085639051956097.a n : ℤ) = A039135 (n + 1)

end A039135

/-! ## A039135.P1397143788208441506

`eq[A061486(n), A061486(A222234(n))]`
-/

namespace A039135.P1397143788208441506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 (A222234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039135.P1397143788208441506

namespace A039135

/-- `eq[A061486(n), A061486(A222234(n))]` -/
def P1397143788208441506.Spec : Prop :=
  ∀ n, (P1397143788208441506.a n : ℤ) = A039135 (n + 1)

end A039135

/-! ## A039135.P13394783516072450674

`eq[A193238(n), A193238(A222234(n))]`
-/

namespace A039135.P13394783516072450674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A222234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039135.P13394783516072450674

namespace A039135

/-- `eq[A193238(n), A193238(A222234(n))]` -/
def P13394783516072450674.Spec : Prop :=
  ∀ n, (P13394783516072450674.a n : ℤ) = A039135 (n + 1)

end A039135

/-! ## A039135.P8629799540175311175

`eq[A196563(n), A196563(A222234(n))]`
-/

namespace A039135.P8629799540175311175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A222234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039135.P8629799540175311175

namespace A039135

/-- `eq[A196563(n), A196563(A222234(n))]` -/
def P8629799540175311175.Spec : Prop :=
  ∀ n, (P8629799540175311175.a n : ℤ) = A039135 (n + 1)

end A039135

/-! ## A039135.P12640544110259469380

`eq[A276729(A222234(n)), A276729(n)]`
-/

namespace A039135.P12640544110259469380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A222234 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039135.P12640544110259469380

namespace A039135

/-- `eq[A276729(A222234(n)), A276729(n)]` -/
def P12640544110259469380.Spec : Prop :=
  ∀ n, (P12640544110259469380.a n : ℤ) = A039135 (n + 1)

end A039135

/-! ## A039135.P3299062483781634908

`eq[A087079(n), A087079(A222234(n))]`
-/

namespace A039135.P3299062483781634908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087079 (A222234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039135.P3299062483781634908

namespace A039135

/-- `eq[A087079(n), A087079(A222234(n))]` -/
def P3299062483781634908.Spec : Prop :=
  ∀ n, (P3299062483781634908.a n : ℤ) = A039135 (n + 1)

end A039135

/-!
# A039136: Numbers whose base-10 representation has the same number of 3's and 5's.

The programs for A039136, the canonical program `A039136.P9723244042697227173` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039136 has offset 1).

The definition of A039136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039136.P7922988306972928231

`eq[dr(n), dr(A222235(n))]`
-/

namespace A039136.P7922988306972928231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222235 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039136.P7922988306972928231

namespace A039136

/-- `eq[dr(n), dr(A222235(n))]` -/
def P7922988306972928231.Spec : Prop :=
  ∀ n, (P7922988306972928231.a n : ℤ) = A039136 (n + 1)

end A039136

/-! ## A039136.P9723244042697227173

`eq[A316864(n), A316866(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039136

/-- `eq[A316864(n), A316866(n)]` -/
def P9723244042697227173.Spec : Prop :=
  ∀ n, (P9723244042697227173.a n : ℤ) = A039136 (n + 1)

theorem P9723244042697227173.correct : P9723244042697227173.Spec := by
  intro n
  simp only [A039136, Nat.add_sub_cancel]

end A039136

/-! ## A039136.P11944237675704596102

`eq[A003132(n), A003132(A222235(n))]`
-/

namespace A039136.P11944237675704596102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222235 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039136.P11944237675704596102

namespace A039136

/-- `eq[A003132(n), A003132(A222235(n))]` -/
def P11944237675704596102.Spec : Prop :=
  ∀ n, (P11944237675704596102.a n : ℤ) = A039136 (n + 1)

end A039136

/-! ## A039136.P10050734649228695838

`eq[A004092(n), A004092(A222235(n))]`
-/

namespace A039136.P10050734649228695838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222235 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039136.P10050734649228695838

namespace A039136

/-- `eq[A004092(n), A004092(A222235(n))]` -/
def P10050734649228695838.Spec : Prop :=
  ∀ n, (P10050734649228695838.a n : ℤ) = A039136 (n + 1)

end A039136

/-! ## A039136.P3014470086107199895

`eq[A004155(n), A004155(A222235(n))]`
-/

namespace A039136.P3014470086107199895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222235 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039136.P3014470086107199895

namespace A039136

/-- `eq[A004155(n), A004155(A222235(n))]` -/
def P3014470086107199895.Spec : Prop :=
  ∀ n, (P3014470086107199895.a n : ℤ) = A039136 (n + 1)

end A039136

/-! ## A039136.P16866378884857248050

`eq[A004185(n), A004185(A222235(n))]`
-/

namespace A039136.P16866378884857248050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222235 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039136.P16866378884857248050

namespace A039136

/-- `eq[A004185(n), A004185(A222235(n))]` -/
def P16866378884857248050.Spec : Prop :=
  ∀ n, (P16866378884857248050.a n : ℤ) = A039136 (n + 1)

end A039136

/-! ## A039136.P48325074637336140

`eq[A004186(n), A004186(A222235(n))]`
-/

namespace A039136.P48325074637336140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222235 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039136.P48325074637336140

namespace A039136

/-- `eq[A004186(n), A004186(A222235(n))]` -/
def P48325074637336140.Spec : Prop :=
  ∀ n, (P48325074637336140.a n : ℤ) = A039136 (n + 1)

end A039136

/-! ## A039136.P13572296039314523453

`eq[A007953(n), A007953(A222235(n))]`
-/

namespace A039136.P13572296039314523453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222235 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039136.P13572296039314523453

namespace A039136

/-- `eq[A007953(n), A007953(A222235(n))]` -/
def P13572296039314523453.Spec : Prop :=
  ∀ n, (P13572296039314523453.a n : ℤ) = A039136 (n + 1)

end A039136

/-!
# A039137: Numbers whose base-10 representation has the same number of 3's and 6's.

The programs for A039137, the canonical program `A039137.P11204242420323782428` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039137 has offset 1).

The definition of A039137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039137.P11204242420323782428

`eq[A316864(n), A316867(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039137

/-- `eq[A316864(n), A316867(n)]` -/
def P11204242420323782428.Spec : Prop :=
  ∀ n, (P11204242420323782428.a n : ℤ) = A039137 (n + 1)

theorem P11204242420323782428.correct : P11204242420323782428.Spec := by
  intro n
  simp only [A039137, Nat.add_sub_cancel]

end A039137

/-! ## A039137.P13931974293452157669

`eq[A003132(n), A003132(A222236(n))]`
-/

namespace A039137.P13931974293452157669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222236 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039137.P13931974293452157669

namespace A039137

/-- `eq[A003132(n), A003132(A222236(n))]` -/
def P13931974293452157669.Spec : Prop :=
  ∀ n, (P13931974293452157669.a n : ℤ) = A039137 (n + 1)

end A039137

/-! ## A039137.P5764199567051594839

`eq[A004092(n), A004092(A222236(n))]`
-/

namespace A039137.P5764199567051594839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222236 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039137.P5764199567051594839

namespace A039137

/-- `eq[A004092(n), A004092(A222236(n))]` -/
def P5764199567051594839.Spec : Prop :=
  ∀ n, (P5764199567051594839.a n : ℤ) = A039137 (n + 1)

end A039137

/-! ## A039137.P12483874790080411140

`eq[A004185(n), A004185(A222236(n))]`
-/

namespace A039137.P12483874790080411140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222236 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039137.P12483874790080411140

namespace A039137

/-- `eq[A004185(n), A004185(A222236(n))]` -/
def P12483874790080411140.Spec : Prop :=
  ∀ n, (P12483874790080411140.a n : ℤ) = A039137 (n + 1)

end A039137

/-! ## A039137.P2073131924414752846

`eq[A006942(n), A006942(A222236(n))]`
-/

namespace A039137.P2073131924414752846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A222236 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039137.P2073131924414752846

namespace A039137

/-- `eq[A006942(n), A006942(A222236(n))]` -/
def P2073131924414752846.Spec : Prop :=
  ∀ n, (P2073131924414752846.a n : ℤ) = A039137 (n + 1)

end A039137

/-! ## A039137.P9131168345501317537

`eq[A007953(n), A007953(A222236(n))]`
-/

namespace A039137.P9131168345501317537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222236 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039137.P9131168345501317537

namespace A039137

/-- `eq[A007953(n), A007953(A222236(n))]` -/
def P9131168345501317537.Spec : Prop :=
  ∀ n, (P9131168345501317537.a n : ℤ) = A039137 (n + 1)

end A039137

/-!
# A039138: Numbers whose base-10 representation has the same number of 3's and 7's.

The programs for A039138, the canonical program `A039138.P8820535035662253840` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039138 has offset 1).

The definition of A039138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039138.P1366067069078777802

`eq[dr(n), dr(A222237(n))]`
-/

namespace A039138.P1366067069078777802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222237 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039138.P1366067069078777802

namespace A039138

/-- `eq[dr(n), dr(A222237(n))]` -/
def P1366067069078777802.Spec : Prop :=
  ∀ n, (P1366067069078777802.a n : ℤ) = A039138 (n + 1)

end A039138

/-! ## A039138.P8820535035662253840

`eq[A316864(n), A316868(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039138

/-- `eq[A316864(n), A316868(n)]` -/
def P8820535035662253840.Spec : Prop :=
  ∀ n, (P8820535035662253840.a n : ℤ) = A039138 (n + 1)

theorem P8820535035662253840.correct : P8820535035662253840.Spec := by
  intro n
  simp only [A039138, Nat.add_sub_cancel]

end A039138

/-! ## A039138.P1830318060522240442

`eq[A003132(n), A003132(A222237(n))]`
-/

namespace A039138.P1830318060522240442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222237 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039138.P1830318060522240442

namespace A039138

/-- `eq[A003132(n), A003132(A222237(n))]` -/
def P1830318060522240442.Spec : Prop :=
  ∀ n, (P1830318060522240442.a n : ℤ) = A039138 (n + 1)

end A039138

/-! ## A039138.P18394252887964114963

`eq[A004092(n), A004092(A222237(n))]`
-/

namespace A039138.P18394252887964114963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222237 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039138.P18394252887964114963

namespace A039138

/-- `eq[A004092(n), A004092(A222237(n))]` -/
def P18394252887964114963.Spec : Prop :=
  ∀ n, (P18394252887964114963.a n : ℤ) = A039138 (n + 1)

end A039138

/-! ## A039138.P8396845727553148361

`eq[A004155(n), A004155(A222237(n))]`
-/

namespace A039138.P8396845727553148361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222237 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039138.P8396845727553148361

namespace A039138

/-- `eq[A004155(n), A004155(A222237(n))]` -/
def P8396845727553148361.Spec : Prop :=
  ∀ n, (P8396845727553148361.a n : ℤ) = A039138 (n + 1)

end A039138

/-! ## A039138.P3465790790996766582

`eq[A004186(n), A004186(A222237(n))]`
-/

namespace A039138.P3465790790996766582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222237 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039138.P3465790790996766582

namespace A039138

/-- `eq[A004186(n), A004186(A222237(n))]` -/
def P3465790790996766582.Spec : Prop :=
  ∀ n, (P3465790790996766582.a n : ℤ) = A039138 (n + 1)

end A039138

/-! ## A039138.P13375577805979159697

`eq[A004426(n), A004426(A222237(n))]`
-/

namespace A039138.P13375577805979159697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A222237 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039138.P13375577805979159697

namespace A039138

/-- `eq[A004426(n), A004426(A222237(n))]` -/
def P13375577805979159697.Spec : Prop :=
  ∀ n, (P13375577805979159697.a n : ℤ) = A039138 (n + 1)

end A039138

/-! ## A039138.P14345429192676289807

`eq[A007953(n), A007953(A222237(n))]`
-/

namespace A039138.P14345429192676289807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222237 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039138.P14345429192676289807

namespace A039138

/-- `eq[A007953(n), A007953(A222237(n))]` -/
def P14345429192676289807.Spec : Prop :=
  ∀ n, (P14345429192676289807.a n : ℤ) = A039138 (n + 1)

end A039138

/-! ## A039138.P3735672922391037100

`eq[A316864(n), A316869(A222252(n))]`
-/

namespace A039138.P3735672922391037100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039138.P3735672922391037100

namespace A039138

/-- `eq[A316864(n), A316869(A222252(n))]` -/
def P3735672922391037100.Spec : Prop :=
  ∀ n, (P3735672922391037100.a n : ℤ) = A039138 (n + 1)

end A039138

/-!
# A039139: Numbers whose base-10 representation has the same number of 3's and 8's.

The programs for A039139, the canonical program `A039139.P10168794660730996957` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039139 has offset 1).

The definition of A039139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039139.P1881378595615177675

`eq[A316864(n), A316869(A004176(n))]`
-/

namespace A039139.P1881378595615177675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A004176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039139.P1881378595615177675

namespace A039139

/-- `eq[A316864(n), A316869(A004176(n))]` -/
def P1881378595615177675.Spec : Prop :=
  ∀ n, (P1881378595615177675.a n : ℤ) = A039139 (n + 1)

end A039139

/-! ## A039139.P9483039687676272504

`eq[dr(n), dr(A222238(n))]`
-/

namespace A039139.P9483039687676272504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222238 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039139.P9483039687676272504

namespace A039139

/-- `eq[dr(n), dr(A222238(n))]` -/
def P9483039687676272504.Spec : Prop :=
  ∀ n, (P9483039687676272504.a n : ℤ) = A039139 (n + 1)

end A039139

/-! ## A039139.P10168794660730996957

`eq[A316864(n), A316869(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039139

/-- `eq[A316864(n), A316869(n)]` -/
def P10168794660730996957.Spec : Prop :=
  ∀ n, (P10168794660730996957.a n : ℤ) = A039139 (n + 1)

theorem P10168794660730996957.correct : P10168794660730996957.Spec := by
  intro n
  simp only [A039139, Nat.add_sub_cancel]

end A039139

/-! ## A039139.P6346685172667523510

`eq[∑{digits}[n, A102679(#²)], A102679(n)]`
-/

namespace A039139.P6346685172667523510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A102679 (x ^ 2)).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A039139.P6346685172667523510

namespace A039139

/-- `eq[∑{digits}[n, A102679(#²)], A102679(n)]` -/
def P6346685172667523510.Spec : Prop :=
  ∀ n, (P6346685172667523510.a n : ℤ) = A039139 (n + 1)

end A039139

/-! ## A039139.P9327502908340463602

`eq[A003132(n), A003132(A222238(n))]`
-/

namespace A039139.P9327502908340463602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039139.P9327502908340463602

namespace A039139

/-- `eq[A003132(n), A003132(A222238(n))]` -/
def P9327502908340463602.Spec : Prop :=
  ∀ n, (P9327502908340463602.a n : ℤ) = A039139 (n + 1)

end A039139

/-! ## A039139.P915103430038816413

`eq[A004186(n), A004186(A222238(n))]`
-/

namespace A039139.P915103430038816413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039139.P915103430038816413

namespace A039139

/-- `eq[A004186(n), A004186(A222238(n))]` -/
def P915103430038816413.Spec : Prop :=
  ∀ n, (P915103430038816413.a n : ℤ) = A039139 (n + 1)

end A039139

/-! ## A039139.P9200083790624310661

`eq[A007953(n), A007953(A222238(n))]`
-/

namespace A039139.P9200083790624310661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039139.P9200083790624310661

namespace A039139

/-- `eq[A007953(n), A007953(A222238(n))]` -/
def P9200083790624310661.Spec : Prop :=
  ∀ n, (P9200083790624310661.a n : ℤ) = A039139 (n + 1)

end A039139

/-! ## A039139.P16088295008276463336

`eq[A010888(n), A010888(A222238(n))]`
-/

namespace A039139.P16088295008276463336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A222238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039139.P16088295008276463336

namespace A039139

/-- `eq[A010888(n), A010888(A222238(n))]` -/
def P16088295008276463336.Spec : Prop :=
  ∀ n, (P16088295008276463336.a n : ℤ) = A039139 (n + 1)

end A039139

/-! ## A039139.P4505406622356164298

`eq[A064532(n), A064532(A222238(n))]`
-/

namespace A039139.P4505406622356164298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A222238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039139.P4505406622356164298

namespace A039139

/-- `eq[A064532(n), A064532(A222238(n))]` -/
def P4505406622356164298.Spec : Prop :=
  ∀ n, (P4505406622356164298.a n : ℤ) = A039139 (n + 1)

end A039139

/-! ## A039139.P9541793634087702446

`eq[A064692(n), A064692(A222238(n))]`
-/

namespace A039139.P9541793634087702446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A222238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039139.P9541793634087702446

namespace A039139

/-- `eq[A064692(n), A064692(A222238(n))]` -/
def P9541793634087702446.Spec : Prop :=
  ∀ n, (P9541793634087702446.a n : ℤ) = A039139 (n + 1)

end A039139

/-! ## A039139.P13157939931612872907

`eq[A316864(A222238(n)), A316864(n)]`
-/

namespace A039139.P13157939931612872907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A222238 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039139.P13157939931612872907

namespace A039139

/-- `eq[A316864(A222238(n)), A316864(n)]` -/
def P13157939931612872907.Spec : Prop :=
  ∀ n, (P13157939931612872907.a n : ℤ) = A039139 (n + 1)

end A039139

/-!
# A039140: Numbers whose base-10 representation has the same number of 3's and 9's.

The programs for A039140, the canonical program `A039140.P14449767560270346471` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039140 has offset 1).

The definition of A039140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4871 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039140.P14449767560270346471

`eq[A102683(n), A316864(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039140

/-- `eq[A102683(n), A316864(n)]` -/
def P14449767560270346471.Spec : Prop :=
  ∀ n, (P14449767560270346471.a n : ℤ) = A039140 (n + 1)

theorem P14449767560270346471.correct : P14449767560270346471.Spec := by
  intro n
  simp only [A039140, Nat.add_sub_cancel]

end A039140

/-! ## A039140.P12156233300223481216

`eq[A001050(n), A001050(A222239(n))]`
-/

namespace A039140.P12156233300223481216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001050 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039140.P12156233300223481216

namespace A039140

/-- `eq[A001050(n), A001050(A222239(n))]` -/
def P12156233300223481216.Spec : Prop :=
  ∀ n, (P12156233300223481216.a n : ℤ) = A039140 (n + 1)

end A039140

/-! ## A039140.P105857638915600255

`eq[A003132(n), A003132(A222239(n))]`
-/

namespace A039140.P105857638915600255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039140.P105857638915600255

namespace A039140

/-- `eq[A003132(n), A003132(A222239(n))]` -/
def P105857638915600255.Spec : Prop :=
  ∀ n, (P105857638915600255.a n : ℤ) = A039140 (n + 1)

end A039140

/-! ## A039140.P1328280343477001350

`eq[A004092(n), A004092(A222239(n))]`
-/

namespace A039140.P1328280343477001350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039140.P1328280343477001350

namespace A039140

/-- `eq[A004092(n), A004092(A222239(n))]` -/
def P1328280343477001350.Spec : Prop :=
  ∀ n, (P1328280343477001350.a n : ℤ) = A039140 (n + 1)

end A039140

/-! ## A039140.P7841458260214975480

`eq[A004155(n), A004155(A222239(n))]`
-/

namespace A039140.P7841458260214975480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039140.P7841458260214975480

namespace A039140

/-- `eq[A004155(n), A004155(A222239(n))]` -/
def P7841458260214975480.Spec : Prop :=
  ∀ n, (P7841458260214975480.a n : ℤ) = A039140 (n + 1)

end A039140

/-! ## A039140.P14078185581629238631

`eq[A004185(n), A004185(A222239(n))]`
-/

namespace A039140.P14078185581629238631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039140.P14078185581629238631

namespace A039140

/-- `eq[A004185(n), A004185(A222239(n))]` -/
def P14078185581629238631.Spec : Prop :=
  ∀ n, (P14078185581629238631.a n : ℤ) = A039140 (n + 1)

end A039140

/-! ## A039140.P7685779310562100845

`eq[A004186(n), A004186(A222239(n))]`
-/

namespace A039140.P7685779310562100845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039140.P7685779310562100845

namespace A039140

/-- `eq[A004186(n), A004186(A222239(n))]` -/
def P7685779310562100845.Spec : Prop :=
  ∀ n, (P7685779310562100845.a n : ℤ) = A039140 (n + 1)

end A039140

/-! ## A039140.P2521727435228030086

`eq[A004426(n), A004426(A222239(n))]`
-/

namespace A039140.P2521727435228030086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039140.P2521727435228030086

namespace A039140

/-- `eq[A004426(n), A004426(A222239(n))]` -/
def P2521727435228030086.Spec : Prop :=
  ∀ n, (P2521727435228030086.a n : ℤ) = A039140 (n + 1)

end A039140

/-! ## A039140.P16572237371688394341

`eq[A004427(n), A004427(A222239(n))]`
-/

namespace A039140.P16572237371688394341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039140.P16572237371688394341

namespace A039140

/-- `eq[A004427(n), A004427(A222239(n))]` -/
def P16572237371688394341.Spec : Prop :=
  ∀ n, (P16572237371688394341.a n : ℤ) = A039140 (n + 1)

end A039140

/-! ## A039140.P17908268155449893954

`eq[A066459(n), A066459(A222239(n))]`
-/

namespace A039140.P17908268155449893954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066459 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066459 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039140.P17908268155449893954

namespace A039140

/-- `eq[A066459(n), A066459(A222239(n))]` -/
def P17908268155449893954.Spec : Prop :=
  ∀ n, (P17908268155449893954.a n : ℤ) = A039140 (n + 1)

end A039140

/-! ## A039140.P14703431015911778712

`eq[A306958(A222239(n)), A306958(n)]`
-/

namespace A039140.P14703431015911778712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306958 (A222239 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039140.P14703431015911778712

namespace A039140

/-- `eq[A306958(A222239(n)), A306958(n)]` -/
def P14703431015911778712.Spec : Prop :=
  ∀ n, (P14703431015911778712.a n : ℤ) = A039140 (n + 1)

end A039140

/-!
# A039141: Numbers whose base-10 representation has the same number of 4's and 5's.

The programs for A039141, there is no canonical definition to state claims against.
-/

/-! ## A039141.P3520223704011940649

`∪[A008541(n+1), A039423(n+1)]`
-/

namespace A039141.P3520223704011940649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039141.P3520223704011940649

/-! ## A039141.P9709734265577998774

`eq[dr(n), dr(A222240(n))]`
-/

namespace A039141.P9709734265577998774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222240 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039141.P9709734265577998774

/-! ## A039141.P7587932290700194004

`eq[A316865(n), A316866(n)]`
-/

namespace A039141.P7587932290700194004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039141.P7587932290700194004

/-! ## A039141.P8427176450442850673

`eq[A003132(n), A003132(A222240(n))]`
-/

namespace A039141.P8427176450442850673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222240 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039141.P8427176450442850673

/-! ## A039141.P8872993673530299331

`eq[A004092(n), A004092(A222240(n))]`
-/

namespace A039141.P8872993673530299331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222240 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039141.P8872993673530299331

/-! ## A039141.P10753728534883128940

`eq[A004186(n), A004186(A222240(n))]`
-/

namespace A039141.P10753728534883128940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222240 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039141.P10753728534883128940

/-! ## A039141.P4446733637235262803

`eq[A007953(n), A007953(A222240(n))]`
-/

namespace A039141.P4446733637235262803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222240 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039141.P4446733637235262803

/-! ## A039141.P1532819673302505334

`eq[A055640(A004179(n)), A102669(2*n)]`
-/

namespace A039141.P1532819673302505334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A004179 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039141.P1532819673302505334

/-! ## A039141.P7823413490526445440

`eq[A092196(n), A119281(A004179(n))]`
-/

namespace A039141.P7823413490526445440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119281 (A004179 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039141.P7823413490526445440

/-!
# A039142: Numbers whose base-10 representation has the same number of 4's and 6's.

The programs for A039142, the canonical program `A039142.P5536991917696885204` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039142 has offset 1).

The definition of A039142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039142.P3931188208617418800

`eq[dr(n), dr(A222241(n))]`
-/

namespace A039142.P3931188208617418800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222241 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039142.P3931188208617418800

namespace A039142

/-- `eq[dr(n), dr(A222241(n))]` -/
def P3931188208617418800.Spec : Prop :=
  ∀ n, (P3931188208617418800.a n : ℤ) = A039142 (n + 1)

end A039142

/-! ## A039142.P5536991917696885204

`eq[A316865(n), A316867(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039142

/-- `eq[A316865(n), A316867(n)]` -/
def P5536991917696885204.Spec : Prop :=
  ∀ n, (P5536991917696885204.a n : ℤ) = A039142 (n + 1)

theorem P5536991917696885204.correct : P5536991917696885204.Spec := by
  intro n
  simp only [A039142, Nat.add_sub_cancel]

end A039142

/-! ## A039142.P10729107006326570256

`eq[A003132(n), A003132(A222241(n))]`
-/

namespace A039142.P10729107006326570256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039142.P10729107006326570256

namespace A039142

/-- `eq[A003132(n), A003132(A222241(n))]` -/
def P10729107006326570256.Spec : Prop :=
  ∀ n, (P10729107006326570256.a n : ℤ) = A039142 (n + 1)

end A039142

/-! ## A039142.P4754378488118079137

`eq[A004092(n), A004092(A222241(n))]`
-/

namespace A039142.P4754378488118079137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039142.P4754378488118079137

namespace A039142

/-- `eq[A004092(n), A004092(A222241(n))]` -/
def P4754378488118079137.Spec : Prop :=
  ∀ n, (P4754378488118079137.a n : ℤ) = A039142 (n + 1)

end A039142

/-! ## A039142.P7872913413782887884

`eq[A004155(n), A004155(A222241(n))]`
-/

namespace A039142.P7872913413782887884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039142.P7872913413782887884

namespace A039142

/-- `eq[A004155(n), A004155(A222241(n))]` -/
def P7872913413782887884.Spec : Prop :=
  ∀ n, (P7872913413782887884.a n : ℤ) = A039142 (n + 1)

end A039142

/-! ## A039142.P6121663797418850005

`eq[A004185(n), A004185(A222241(n))]`
-/

namespace A039142.P6121663797418850005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039142.P6121663797418850005

namespace A039142

/-- `eq[A004185(n), A004185(A222241(n))]` -/
def P6121663797418850005.Spec : Prop :=
  ∀ n, (P6121663797418850005.a n : ℤ) = A039142 (n + 1)

end A039142

/-! ## A039142.P13394547129655164463

`eq[A004186(n), A004186(A222241(n))]`
-/

namespace A039142.P13394547129655164463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039142.P13394547129655164463

namespace A039142

/-- `eq[A004186(n), A004186(A222241(n))]` -/
def P13394547129655164463.Spec : Prop :=
  ∀ n, (P13394547129655164463.a n : ℤ) = A039142 (n + 1)

end A039142

/-! ## A039142.P12183310720541613653

`eq[A006942(n), A006942(A222241(n))]`
-/

namespace A039142.P12183310720541613653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A222241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039142.P12183310720541613653

namespace A039142

/-- `eq[A006942(n), A006942(A222241(n))]` -/
def P12183310720541613653.Spec : Prop :=
  ∀ n, (P12183310720541613653.a n : ℤ) = A039142 (n + 1)

end A039142

/-! ## A039142.P14251818125487893143

`eq[A007953(n), A007953(A222241(n))]`
-/

namespace A039142.P14251818125487893143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039142.P14251818125487893143

namespace A039142

/-- `eq[A007953(n), A007953(A222241(n))]` -/
def P14251818125487893143.Spec : Prop :=
  ∀ n, (P14251818125487893143.a n : ℤ) = A039142 (n + 1)

end A039142

/-!
# A039143: Numbers whose base-10 representation has the same number of 4's and 7's.

The programs for A039143, the canonical program `A039143.P17636215594540323729` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039143 has offset 1).

The definition of A039143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4871 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039143.P17636215594540323729

`eq[A027387(n), A027388(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A039143

/-- `eq[A027387(n), A027388(n)]` -/
def P17636215594540323729.Spec : Prop :=
  ∀ n, (P17636215594540323729.a n : ℤ) = A039143 (n + 1)

theorem P17636215594540323729.correct : P17636215594540323729.Spec := by
  intro n
  simp only [A039143, Nat.add_sub_cancel]

end A039143

/-! ## A039143.P11884818884610295156

`eq[A316865(n), A316868(n)]`
-/

namespace A039143.P11884818884610295156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039143.P11884818884610295156

namespace A039143

/-- `eq[A316865(n), A316868(n)]` -/
def P11884818884610295156.Spec : Prop :=
  ∀ n, (P11884818884610295156.a n : ℤ) = A039143 (n + 1)

end A039143

/-! ## A039143.P7052670658129921161

`eq[A003132(n), A003132(A222242(n))]`
-/

namespace A039143.P7052670658129921161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039143.P7052670658129921161

namespace A039143

/-- `eq[A003132(n), A003132(A222242(n))]` -/
def P7052670658129921161.Spec : Prop :=
  ∀ n, (P7052670658129921161.a n : ℤ) = A039143 (n + 1)

end A039143

/-! ## A039143.P9720095360892839512

`eq[A004092(n), A004092(A222242(n))]`
-/

namespace A039143.P9720095360892839512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039143.P9720095360892839512

namespace A039143

/-- `eq[A004092(n), A004092(A222242(n))]` -/
def P9720095360892839512.Spec : Prop :=
  ∀ n, (P9720095360892839512.a n : ℤ) = A039143 (n + 1)

end A039143

/-! ## A039143.P1877666980807443011

`eq[A004185(n), A004185(A222242(n))]`
-/

namespace A039143.P1877666980807443011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039143.P1877666980807443011

namespace A039143

/-- `eq[A004185(n), A004185(A222242(n))]` -/
def P1877666980807443011.Spec : Prop :=
  ∀ n, (P1877666980807443011.a n : ℤ) = A039143 (n + 1)

end A039143

/-! ## A039143.P213386705828323927

`eq[A004186(n), A004186(A222242(n))]`
-/

namespace A039143.P213386705828323927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039143.P213386705828323927

namespace A039143

/-- `eq[A004186(n), A004186(A222242(n))]` -/
def P213386705828323927.Spec : Prop :=
  ∀ n, (P213386705828323927.a n : ℤ) = A039143 (n + 1)

end A039143

/-! ## A039143.P9799682311681025958

`eq[A007953(n), A007953(A222242(n))]`
-/

namespace A039143.P9799682311681025958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039143.P9799682311681025958

namespace A039143

/-- `eq[A007953(n), A007953(A222242(n))]` -/
def P9799682311681025958.Spec : Prop :=
  ∀ n, (P9799682311681025958.a n : ℤ) = A039143 (n + 1)

end A039143

/-! ## A039143.P3297325345889282136

`eq[A064692(n), A064692(A222242(n))]`
-/

namespace A039143.P3297325345889282136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A222242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039143.P3297325345889282136

namespace A039143

/-- `eq[A064692(n), A064692(A222242(n))]` -/
def P3297325345889282136.Spec : Prop :=
  ∀ n, (P3297325345889282136.a n : ℤ) = A039143 (n + 1)

end A039143

/-! ## A039143.P6931912202623420109

`eq[A064693(n), A064693(A222242(n))]`
-/

namespace A039143.P6931912202623420109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064693 (A222242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039143.P6931912202623420109

namespace A039143

/-- `eq[A064693(n), A064693(A222242(n))]` -/
def P6931912202623420109.Spec : Prop :=
  ∀ n, (P6931912202623420109.a n : ℤ) = A039143 (n + 1)

end A039143

/-!
# A039144: Numbers whose base-10 representation has the same number of 4's and 8's.

The programs for A039144, the canonical program `A039144.P15417822195319135182` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039144 has offset 1).

The definition of A039144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039144.P14933474895519816128

`eq[dr(n), dr(A222243(n))]`
-/

namespace A039144.P14933474895519816128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222243 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039144.P14933474895519816128

namespace A039144

/-- `eq[dr(n), dr(A222243(n))]` -/
def P14933474895519816128.Spec : Prop :=
  ∀ n, (P14933474895519816128.a n : ℤ) = A039144 (n + 1)

end A039144

/-! ## A039144.P15417822195319135182

`eq[A316865(n), A316869(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039144

/-- `eq[A316865(n), A316869(n)]` -/
def P15417822195319135182.Spec : Prop :=
  ∀ n, (P15417822195319135182.a n : ℤ) = A039144 (n + 1)

theorem P15417822195319135182.correct : P15417822195319135182.Spec := by
  intro n
  simp only [A039144, Nat.add_sub_cancel]

end A039144

/-! ## A039144.P320778110930063750

`eq[A004186(n), A004186(A222243(n))]`
-/

namespace A039144.P320778110930063750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222243 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039144.P320778110930063750

namespace A039144

/-- `eq[A004186(n), A004186(A222243(n))]` -/
def P320778110930063750.Spec : Prop :=
  ∀ n, (P320778110930063750.a n : ℤ) = A039144 (n + 1)

end A039144

/-! ## A039144.P8684044502108237713

`eq[A010888(n), A010888(A222243(n))]`
-/

namespace A039144.P8684044502108237713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A222243 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039144.P8684044502108237713

namespace A039144

/-- `eq[A010888(n), A010888(A222243(n))]` -/
def P8684044502108237713.Spec : Prop :=
  ∀ n, (P8684044502108237713.a n : ℤ) = A039144 (n + 1)

end A039144

/-! ## A039144.P3759160932879919541

`eq[A047842(n), A047842(A222243(n))]`
-/

namespace A039144.P3759160932879919541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A222243 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039144.P3759160932879919541

namespace A039144

/-- `eq[A047842(n), A047842(A222243(n))]` -/
def P3759160932879919541.Spec : Prop :=
  ∀ n, (P3759160932879919541.a n : ℤ) = A039144 (n + 1)

end A039144

/-! ## A039144.P13652946727457866344

`eq[A102681(A005843(n)), A102681(n)]`
-/

namespace A039144.P13652946727457866344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A005843 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039144.P13652946727457866344

namespace A039144

/-- `eq[A102681(A005843(n)), A102681(n)]` -/
def P13652946727457866344.Spec : Prop :=
  ∀ n, (P13652946727457866344.a n : ℤ) = A039144 (n + 1)

end A039144

/-! ## A039144.P12812914271408454542

`eq[A102681(A014601(n)), A102681(n)]`
-/

namespace A039144.P12812914271408454542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A014601 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039144.P12812914271408454542

namespace A039144

/-- `eq[A102681(A014601(n)), A102681(n)]` -/
def P12812914271408454542.Spec : Prop :=
  ∀ n, (P12812914271408454542.a n : ℤ) = A039144 (n + 1)

end A039144

/-! ## A039144.P173830468194717879

`eq[A102681(A005408(n)), A102681(n)]`
-/

namespace A039144.P173830468194717879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A005408 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039144.P173830468194717879

namespace A039144

/-- `eq[A102681(A005408(n)), A102681(n)]` -/
def P173830468194717879.Spec : Prop :=
  ∀ n, (P173830468194717879.a n : ℤ) = A039144 (n + 1)

end A039144

/-! ## A039144.P488585554345913835

`eq[A102681(A008602(n)), A102681(n)]`
-/

namespace A039144.P488585554345913835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A008602 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039144.P488585554345913835

namespace A039144

/-- `eq[A102681(A008602(n)), A102681(n)]` -/
def P488585554345913835.Spec : Prop :=
  ∀ n, (P488585554345913835.a n : ℤ) = A039144 (n + 1)

end A039144

/-!
# A039145: Numbers whose base-10 representation has the same number of 4's and 9's.

The programs for A039145, the canonical program `A039145.P16500659112303391642` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039145 has offset 1).

The definition of A039145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039145.P1913923244362258913

`eq[dr(n), dr(A222244(n))]`
-/

namespace A039145.P1913923244362258913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222244 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039145.P1913923244362258913

namespace A039145

/-- `eq[dr(n), dr(A222244(n))]` -/
def P1913923244362258913.Spec : Prop :=
  ∀ n, (P1913923244362258913.a n : ℤ) = A039145 (n + 1)

end A039145

/-! ## A039145.P16500659112303391642

`eq[A102683(n), A316865(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039145

/-- `eq[A102683(n), A316865(n)]` -/
def P16500659112303391642.Spec : Prop :=
  ∀ n, (P16500659112303391642.a n : ℤ) = A039145 (n + 1)

theorem P16500659112303391642.correct : P16500659112303391642.Spec := by
  intro n
  simp only [A039145, Nat.add_sub_cancel]

end A039145

/-! ## A039145.P768641661606677564

`eq[A001050(n), A001050(A222244(n))]`
-/

namespace A039145.P768641661606677564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001050 (A222244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039145.P768641661606677564

namespace A039145

/-- `eq[A001050(n), A001050(A222244(n))]` -/
def P768641661606677564.Spec : Prop :=
  ∀ n, (P768641661606677564.a n : ℤ) = A039145 (n + 1)

end A039145

/-! ## A039145.P6926355366891905091

`eq[A004092(n), A004092(A222244(n))]`
-/

namespace A039145.P6926355366891905091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039145.P6926355366891905091

namespace A039145

/-- `eq[A004092(n), A004092(A222244(n))]` -/
def P6926355366891905091.Spec : Prop :=
  ∀ n, (P6926355366891905091.a n : ℤ) = A039145 (n + 1)

end A039145

/-! ## A039145.P13830338482605829404

`eq[A004185(n), A004185(A222244(n))]`
-/

namespace A039145.P13830338482605829404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039145.P13830338482605829404

namespace A039145

/-- `eq[A004185(n), A004185(A222244(n))]` -/
def P13830338482605829404.Spec : Prop :=
  ∀ n, (P13830338482605829404.a n : ℤ) = A039145 (n + 1)

end A039145

/-! ## A039145.P13215568467989744569

`eq[A004186(n), A004186(A222244(n))]`
-/

namespace A039145.P13215568467989744569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039145.P13215568467989744569

namespace A039145

/-- `eq[A004186(n), A004186(A222244(n))]` -/
def P13215568467989744569.Spec : Prop :=
  ∀ n, (P13215568467989744569.a n : ℤ) = A039145 (n + 1)

end A039145

/-! ## A039145.P7986138245824839290

`eq[A007953(n), A007953(A222244(n))]`
-/

namespace A039145.P7986138245824839290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039145.P7986138245824839290

namespace A039145

/-- `eq[A007953(n), A007953(A222244(n))]` -/
def P7986138245824839290.Spec : Prop :=
  ∀ n, (P7986138245824839290.a n : ℤ) = A039145 (n + 1)

end A039145

/-!
# A039146: Numbers whose base-10 representation has the same number of 5's and 6's.

The programs for A039146, there is no canonical definition to state claims against.
-/

/-! ## A039146.P10105761634756924978

`eq[dr(n), dr(A222245(n))]`
-/

namespace A039146.P10105761634756924978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222245 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039146.P10105761634756924978

/-! ## A039146.P7551105468732535010

`eq[A003132(n), A003132(A222245(n))]`
-/

namespace A039146.P7551105468732535010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039146.P7551105468732535010

/-! ## A039146.P17767311312713528121

`eq[A004092(n), A004092(A222245(n))]`
-/

namespace A039146.P17767311312713528121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039146.P17767311312713528121

/-! ## A039146.P1838419152019576079

`eq[A004185(n), A004185(A222245(n))]`
-/

namespace A039146.P1838419152019576079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039146.P1838419152019576079

/-! ## A039146.P13082517424160937338

`eq[A004186(n), A004186(A222245(n))]`
-/

namespace A039146.P13082517424160937338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039146.P13082517424160937338

/-! ## A039146.P2560364922547819255

`eq[A006942(n), A006942(A222245(n))]`
-/

namespace A039146.P2560364922547819255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A222245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039146.P2560364922547819255

/-! ## A039146.P13544467232304982270

`eq[A007953(n), A007953(A222245(n))]`
-/

namespace A039146.P13544467232304982270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039146.P13544467232304982270

/-! ## A039146.P2992571574388736396

`eq[A047842(n), A047842(A222245(n))]`
-/

namespace A039146.P2992571574388736396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A222245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039146.P2992571574388736396

/-! ## A039146.P10770299026070918124

`eq[A061602(n), A061602(A222245(n))]`
-/

namespace A039146.P10770299026070918124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (A222245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039146.P10770299026070918124

/-! ## A039146.P17844730461287390386

`eq[A069877(n), A069877(A222245(n))]`
-/

namespace A039146.P17844730461287390386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 (A222245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039146.P17844730461287390386

/-! ## A039146.P5176727728616387990

`eq[A196564(n), A196564(A222245(n))]`
-/

namespace A039146.P5176727728616387990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A222245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039146.P5176727728616387990

/-!
# A039147: Numbers whose base-10 representation has the same number of 5's and 7's.

The programs for A039147, there is no canonical definition to state claims against.
-/

/-! ## A039147.P8707119492683985486

`eq[dr(n), dr(A222246(n))]`
-/

namespace A039147.P8707119492683985486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222246 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039147.P8707119492683985486

/-! ## A039147.P416311252780337355

`eq[A003132(n), A003132(A222246(n))]`
-/

namespace A039147.P416311252780337355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039147.P416311252780337355

/-! ## A039147.P15005096111381352160

`eq[A004092(n), A004092(A222246(n))]`
-/

namespace A039147.P15005096111381352160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039147.P15005096111381352160

/-! ## A039147.P15730979586583849001

`eq[A004155(n), A004155(A222246(n))]`
-/

namespace A039147.P15730979586583849001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039147.P15730979586583849001

/-! ## A039147.P2023407623642591509

`eq[A004185(n), A004185(A222246(n))]`
-/

namespace A039147.P2023407623642591509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039147.P2023407623642591509

/-! ## A039147.P9498419134692818199

`eq[A004186(n), A004186(A222246(n))]`
-/

namespace A039147.P9498419134692818199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039147.P9498419134692818199

/-! ## A039147.P4123227844498199981

`eq[A007953(n), A007953(A222246(n))]`
-/

namespace A039147.P4123227844498199981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039147.P4123227844498199981

/-! ## A039147.P5221921843544839448

`eq[A047842(n), A047842(A222246(n))]`
-/

namespace A039147.P5221921843544839448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A222246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039147.P5221921843544839448

/-! ## A039147.P15198721569705598640

`eq[A061602(n), A061602(A222246(n))]`
-/

namespace A039147.P15198721569705598640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (A222246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039147.P15198721569705598640

/-! ## A039147.P11498410126686622206

`eq[A102679(n), A102679(A222246(n))]`
-/

namespace A039147.P11498410126686622206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A222246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039147.P11498410126686622206

/-!
# A039148: Numbers whose base-10 representation has the same number of 5's and 8's.

The programs for A039148, the canonical program `A039148.P9571566720573097668` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039148 has offset 1).

The definition of A039148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039148.P9571566720573097668

`eq[A316866(n), A316869(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039148

/-- `eq[A316866(n), A316869(n)]` -/
def P9571566720573097668.Spec : Prop :=
  ∀ n, (P9571566720573097668.a n : ℤ) = A039148 (n + 1)

theorem P9571566720573097668.correct : P9571566720573097668.Spec := by
  intro n
  simp only [A039148, Nat.add_sub_cancel]

end A039148

/-! ## A039148.P6149110398324180124

`eq[A001050(n), A001050(A222247(n))]`
-/

namespace A039148.P6149110398324180124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001050 (A222247 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039148.P6149110398324180124

namespace A039148

/-- `eq[A001050(n), A001050(A222247(n))]` -/
def P6149110398324180124.Spec : Prop :=
  ∀ n, (P6149110398324180124.a n : ℤ) = A039148 (n + 1)

end A039148

/-! ## A039148.P11216102913389189659

`eq[A003132(n), A003132(A222247(n))]`
-/

namespace A039148.P11216102913389189659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222247 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039148.P11216102913389189659

namespace A039148

/-- `eq[A003132(n), A003132(A222247(n))]` -/
def P11216102913389189659.Spec : Prop :=
  ∀ n, (P11216102913389189659.a n : ℤ) = A039148 (n + 1)

end A039148

/-! ## A039148.P17033710198570342777

`eq[A004092(n), A004092(A222247(n))]`
-/

namespace A039148.P17033710198570342777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222247 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039148.P17033710198570342777

namespace A039148

/-- `eq[A004092(n), A004092(A222247(n))]` -/
def P17033710198570342777.Spec : Prop :=
  ∀ n, (P17033710198570342777.a n : ℤ) = A039148 (n + 1)

end A039148

/-! ## A039148.P15098306544883624608

`eq[A004185(n), A004185(A222247(n))]`
-/

namespace A039148.P15098306544883624608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222247 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039148.P15098306544883624608

namespace A039148

/-- `eq[A004185(n), A004185(A222247(n))]` -/
def P15098306544883624608.Spec : Prop :=
  ∀ n, (P15098306544883624608.a n : ℤ) = A039148 (n + 1)

end A039148

/-! ## A039148.P9604615250113352158

`eq[A004186(n), A004186(A222247(n))]`
-/

namespace A039148.P9604615250113352158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222247 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039148.P9604615250113352158

namespace A039148

/-- `eq[A004186(n), A004186(A222247(n))]` -/
def P9604615250113352158.Spec : Prop :=
  ∀ n, (P9604615250113352158.a n : ℤ) = A039148 (n + 1)

end A039148

/-!
# A039149: Numbers whose base-10 representation has the same number of 5's and 9's.

The programs for A039149, there is no canonical definition to state claims against.
-/

/-! ## A039149.P2279002767763423532

`eq[dr(n), dr(A222248(n))]`
-/

namespace A039149.P2279002767763423532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222248 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039149.P2279002767763423532

/-! ## A039149.P3828125615159087640

`eq[A001050(n), A001050(A222248(n))]`
-/

namespace A039149.P3828125615159087640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001050 (A222248 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039149.P3828125615159087640

/-! ## A039149.P1507530841483982315

`eq[A003132(n), A003132(A222248(n))]`
-/

namespace A039149.P1507530841483982315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222248 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039149.P1507530841483982315

/-! ## A039149.P4525404451925111878

`eq[A004185(n), A004185(A222248(n))]`
-/

namespace A039149.P4525404451925111878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222248 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039149.P4525404451925111878

/-! ## A039149.P9936390556331644547

`eq[A004186(n), A004186(A222248(n))]`
-/

namespace A039149.P9936390556331644547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222248 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039149.P9936390556331644547

/-! ## A039149.P8417359706704043197

`eq[A006942(n), A006942(A222248(n))]`
-/

namespace A039149.P8417359706704043197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A222248 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039149.P8417359706704043197

/-! ## A039149.P16248358521455782668

`eq[A007953(n), A007953(A222248(n))]`
-/

namespace A039149.P16248358521455782668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222248 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039149.P16248358521455782668

/-! ## A039149.P2403357025934178972

`eq[A102669(2*n), A102669(A048379(n))]`
-/

namespace A039149.P2403357025934178972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A048379 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039149.P2403357025934178972

/-! ## A039149.P17302764703341953439

`eq[A102669(2*n), A102669(A055120(n))]`
-/

namespace A039149.P17302764703341953439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A055120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039149.P17302764703341953439

/-! ## A039149.P14667903422878988945

`eq[A055640(n), A102669(A048380(n))]`
-/

namespace A039149.P14667903422878988945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A048380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039149.P14667903422878988945

/-!
# A039150: Numbers whose base-10 representation has the same number of 6's and 7's.

The programs for A039150, the canonical program `A039150.P6878837314782079632` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039150 has offset 1).

The definition of A039150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039150.P13970844184732335741

`eq[dr(n), dr(A222249(n))]`
-/

namespace A039150.P13970844184732335741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222249 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039150.P13970844184732335741

namespace A039150

/-- `eq[dr(n), dr(A222249(n))]` -/
def P13970844184732335741.Spec : Prop :=
  ∀ n, (P13970844184732335741.a n : ℤ) = A039150 (n + 1)

end A039150

/-! ## A039150.P6878837314782079632

`eq[A316867(n), A316868(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039150

/-- `eq[A316867(n), A316868(n)]` -/
def P6878837314782079632.Spec : Prop :=
  ∀ n, (P6878837314782079632.a n : ℤ) = A039150 (n + 1)

theorem P6878837314782079632.correct : P6878837314782079632.Spec := by
  intro n
  simp only [A039150, Nat.add_sub_cancel]

end A039150

/-! ## A039150.P2942982176774788192

`eq[A003132(n), A003132(A222249(n))]`
-/

namespace A039150.P2942982176774788192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222249 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039150.P2942982176774788192

namespace A039150

/-- `eq[A003132(n), A003132(A222249(n))]` -/
def P2942982176774788192.Spec : Prop :=
  ∀ n, (P2942982176774788192.a n : ℤ) = A039150 (n + 1)

end A039150

/-! ## A039150.P4175874432704687795

`eq[A004155(n), A004155(A222249(n))]`
-/

namespace A039150.P4175874432704687795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222249 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039150.P4175874432704687795

namespace A039150

/-- `eq[A004155(n), A004155(A222249(n))]` -/
def P4175874432704687795.Spec : Prop :=
  ∀ n, (P4175874432704687795.a n : ℤ) = A039150 (n + 1)

end A039150

/-! ## A039150.P8456566403116015912

`eq[A004185(n), A004185(A222249(n))]`
-/

namespace A039150.P8456566403116015912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222249 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039150.P8456566403116015912

namespace A039150

/-- `eq[A004185(n), A004185(A222249(n))]` -/
def P8456566403116015912.Spec : Prop :=
  ∀ n, (P8456566403116015912.a n : ℤ) = A039150 (n + 1)

end A039150

/-! ## A039150.P8741103337464377986

`eq[A006942(n), A006942(A222249(n))]`
-/

namespace A039150.P8741103337464377986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A222249 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039150.P8741103337464377986

namespace A039150

/-- `eq[A006942(n), A006942(A222249(n))]` -/
def P8741103337464377986.Spec : Prop :=
  ∀ n, (P8741103337464377986.a n : ℤ) = A039150 (n + 1)

end A039150

/-! ## A039150.P6707662786022842935

`eq[A007953(n), A007953(A222249(n))]`
-/

namespace A039150.P6707662786022842935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222249 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039150.P6707662786022842935

namespace A039150

/-- `eq[A007953(n), A007953(A222249(n))]` -/
def P6707662786022842935.Spec : Prop :=
  ∀ n, (P6707662786022842935.a n : ℤ) = A039150 (n + 1)

end A039150

/-!
# A039151: Numbers whose base-10 representation has the same number of 6's and 8's.

The programs for A039151, there is no canonical definition to state claims against.
-/

/-! ## A039151.P13886706696032564629

`eq[A102679(n)+A063720(n), A010371(n)]`
-/

namespace A039151.P13886706696032564629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n + A063720 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039151.P13886706696032564629

/-! ## A039151.P17671804151335236816

`eq[dr(n), dr(A222250(n))]`
-/

namespace A039151.P17671804151335236816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222250 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039151.P17671804151335236816

/-! ## A039151.P15565967533169487261

`eq[A003132(n), A003132(A222250(n))]`
-/

namespace A039151.P15565967533169487261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222250 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039151.P15565967533169487261

/-! ## A039151.P8112168251159535021

`eq[A004092(n), A004092(A222250(n))]`
-/

namespace A039151.P8112168251159535021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222250 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039151.P8112168251159535021

/-! ## A039151.P9830353625630367934

`eq[A004155(n), A004155(A222250(n))]`
-/

namespace A039151.P9830353625630367934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222250 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039151.P9830353625630367934

/-! ## A039151.P17794766579514049382

`eq[A004185(n), A004185(A222250(n))]`
-/

namespace A039151.P17794766579514049382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222250 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039151.P17794766579514049382

/-! ## A039151.P16899219018944533319

`eq[A004186(n), A004186(A222250(n))]`
-/

namespace A039151.P16899219018944533319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222250 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039151.P16899219018944533319

/-! ## A039151.P544401474924448401

`eq[A006942(n), A006942(A222250(n))]`
-/

namespace A039151.P544401474924448401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A222250 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039151.P544401474924448401

/-! ## A039151.P2335673858018385618

`eq[A047842(n), A047842(A222250(n))]`
-/

namespace A039151.P2335673858018385618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A222250 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039151.P2335673858018385618

/-! ## A039151.P4221811384280603821

`eq[A061602(n), A061602(A222250(n))]`
-/

namespace A039151.P4221811384280603821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (A222250 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039151.P4221811384280603821

/-!
# A039152: Numbers whose base-10 representation has the same number of 6's and 9's.

The programs for A039152, the canonical program `A039152.P16380162261826315804` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039152 has offset 1).

The definition of A039152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039152.P16380162261826315804

`eq[A102683(n), A316867(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039152

/-- `eq[A102683(n), A316867(n)]` -/
def P16380162261826315804.Spec : Prop :=
  ∀ n, (P16380162261826315804.a n : ℤ) = A039152 (n + 1)

theorem P16380162261826315804.correct : P16380162261826315804.Spec := by
  intro n
  simp only [A039152, Nat.add_sub_cancel]

end A039152

/-! ## A039152.P15110416276722180530

`eq[A001050(n), A001050(A222251(n))]`
-/

namespace A039152.P15110416276722180530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001050 (A222251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039152.P15110416276722180530

namespace A039152

/-- `eq[A001050(n), A001050(A222251(n))]` -/
def P15110416276722180530.Spec : Prop :=
  ∀ n, (P15110416276722180530.a n : ℤ) = A039152 (n + 1)

end A039152

/-! ## A039152.P17035266301740364086

`eq[A003132(n), A003132(A222251(n))]`
-/

namespace A039152.P17035266301740364086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039152.P17035266301740364086

namespace A039152

/-- `eq[A003132(n), A003132(A222251(n))]` -/
def P17035266301740364086.Spec : Prop :=
  ∀ n, (P17035266301740364086.a n : ℤ) = A039152 (n + 1)

end A039152

/-! ## A039152.P14344588689187804038

`eq[A004092(n), A004092(A222251(n))]`
-/

namespace A039152.P14344588689187804038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039152.P14344588689187804038

namespace A039152

/-- `eq[A004092(n), A004092(A222251(n))]` -/
def P14344588689187804038.Spec : Prop :=
  ∀ n, (P14344588689187804038.a n : ℤ) = A039152 (n + 1)

end A039152

/-! ## A039152.P17864016944404344222

`eq[A004155(n), A004155(A222251(n))]`
-/

namespace A039152.P17864016944404344222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039152.P17864016944404344222

namespace A039152

/-- `eq[A004155(n), A004155(A222251(n))]` -/
def P17864016944404344222.Spec : Prop :=
  ∀ n, (P17864016944404344222.a n : ℤ) = A039152 (n + 1)

end A039152

/-! ## A039152.P1337705682400814155

`eq[A004185(n), A004185(A222251(n))]`
-/

namespace A039152.P1337705682400814155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039152.P1337705682400814155

namespace A039152

/-- `eq[A004185(n), A004185(A222251(n))]` -/
def P1337705682400814155.Spec : Prop :=
  ∀ n, (P1337705682400814155.a n : ℤ) = A039152 (n + 1)

end A039152

/-! ## A039152.P7223055299193604837

`eq[A004186(n), A004186(A222251(n))]`
-/

namespace A039152.P7223055299193604837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039152.P7223055299193604837

namespace A039152

/-- `eq[A004186(n), A004186(A222251(n))]` -/
def P7223055299193604837.Spec : Prop :=
  ∀ n, (P7223055299193604837.a n : ℤ) = A039152 (n + 1)

end A039152

/-! ## A039152.P6627418642965573319

`eq[A007953(n), A007953(A222251(n))]`
-/

namespace A039152.P6627418642965573319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039152.P6627418642965573319

namespace A039152

/-- `eq[A007953(n), A007953(A222251(n))]` -/
def P6627418642965573319.Spec : Prop :=
  ∀ n, (P6627418642965573319.a n : ℤ) = A039152 (n + 1)

end A039152

/-! ## A039152.P12896315218314767144

`eq[A102679(n), A102679(A216556(n))]`
-/

namespace A039152.P12896315218314767144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A216556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039152.P12896315218314767144

namespace A039152

/-- `eq[A102679(n), A102679(A216556(n))]` -/
def P12896315218314767144.Spec : Prop :=
  ∀ n, (P12896315218314767144.a n : ℤ) = A039152 (n + 1)

end A039152

/-!
# A039153: Numbers whose base-10 representation has the same number of 7's and 8's.

The programs for A039153, there is no canonical definition to state claims against.
-/

/-! ## A039153.P8428837624546176397

`eq[dr(n), dr(A222252(n))]`
-/

namespace A039153.P8428837624546176397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222252 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039153.P8428837624546176397

/-! ## A039153.P2478528396243717814

`eq[A003132(n), A003132(A222252(n))]`
-/

namespace A039153.P2478528396243717814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039153.P2478528396243717814

/-! ## A039153.P4198614288020505031

`eq[A004092(n), A004092(A222252(n))]`
-/

namespace A039153.P4198614288020505031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039153.P4198614288020505031

/-! ## A039153.P13438994224729201948

`eq[A004155(n), A004155(A222252(n))]`
-/

namespace A039153.P13438994224729201948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039153.P13438994224729201948

/-! ## A039153.P16015677579962754286

`eq[A004185(n), A004185(A222252(n))]`
-/

namespace A039153.P16015677579962754286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039153.P16015677579962754286

/-! ## A039153.P8829375254145345337

`eq[A004186(n), A004186(A222252(n))]`
-/

namespace A039153.P8829375254145345337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039153.P8829375254145345337

/-! ## A039153.P12758685820502075900

`eq[A006942(n), A006942(A222252(n))]`
-/

namespace A039153.P12758685820502075900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039153.P12758685820502075900

/-! ## A039153.P716002693000695898

`eq[A007953(n), A007953(A222252(n))]`
-/

namespace A039153.P716002693000695898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039153.P716002693000695898

/-! ## A039153.P8305965791831078308

`eq[A047842(A222252(n)), A047842(n)]`
-/

namespace A039153.P8305965791831078308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A222252 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039153.P8305965791831078308

/-! ## A039153.P9747809528583977430

`eq[A061602(n), A061602(A222252(n))]`
-/

namespace A039153.P9747809528583977430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039153.P9747809528583977430

/-! ## A039153.P13939726668856617165

`eq[A196564(n), A196564(A222252(n))]`
-/

namespace A039153.P13939726668856617165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039153.P13939726668856617165

/-!
# A039154: Numbers whose base-10 representation has the same number of 7's and 9's.

The programs for A039154, the canonical program `A039154.P1044876761843877613` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039154 has offset 1).

The definition of A039154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039154.P17381328766469870074

`eq[dr(n), dr(A222253(n))]`
-/

namespace A039154.P17381328766469870074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222253 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039154.P17381328766469870074

namespace A039154

/-- `eq[dr(n), dr(A222253(n))]` -/
def P17381328766469870074.Spec : Prop :=
  ∀ n, (P17381328766469870074.a n : ℤ) = A039154 (n + 1)

end A039154

/-! ## A039154.P423794328960047683

`eq[A006942(n), A074458(n)]`
-/

namespace A039154.P423794328960047683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039154.P423794328960047683

namespace A039154

/-- `eq[A006942(n), A074458(n)]` -/
def P423794328960047683.Spec : Prop :=
  ∀ n, (P423794328960047683.a n : ℤ) = A039154 (n + 1)

end A039154

/-! ## A039154.P1044876761843877613

`eq[A102683(n), A316868(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039154

/-- `eq[A102683(n), A316868(n)]` -/
def P1044876761843877613.Spec : Prop :=
  ∀ n, (P1044876761843877613.a n : ℤ) = A039154 (n + 1)

theorem P1044876761843877613.correct : P1044876761843877613.Spec := by
  intro n
  simp only [A039154, Nat.add_sub_cancel]

end A039154

/-! ## A039154.P11863864938032688949

`eq[A003132(n), A003132(A222253(n))]`
-/

namespace A039154.P11863864938032688949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222253 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039154.P11863864938032688949

namespace A039154

/-- `eq[A003132(n), A003132(A222253(n))]` -/
def P11863864938032688949.Spec : Prop :=
  ∀ n, (P11863864938032688949.a n : ℤ) = A039154 (n + 1)

end A039154

/-! ## A039154.P5919375903978428990

`eq[A004092(n), A004092(A222253(n))]`
-/

namespace A039154.P5919375903978428990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222253 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039154.P5919375903978428990

namespace A039154

/-- `eq[A004092(n), A004092(A222253(n))]` -/
def P5919375903978428990.Spec : Prop :=
  ∀ n, (P5919375903978428990.a n : ℤ) = A039154 (n + 1)

end A039154

/-! ## A039154.P16761843640605158657

`eq[A004155(n), A004155(A222253(n))]`
-/

namespace A039154.P16761843640605158657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222253 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039154.P16761843640605158657

namespace A039154

/-- `eq[A004155(n), A004155(A222253(n))]` -/
def P16761843640605158657.Spec : Prop :=
  ∀ n, (P16761843640605158657.a n : ℤ) = A039154 (n + 1)

end A039154

/-! ## A039154.P2841278000915181438

`eq[A004185(n), A004185(A222253(n))]`
-/

namespace A039154.P2841278000915181438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222253 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039154.P2841278000915181438

namespace A039154

/-- `eq[A004185(n), A004185(A222253(n))]` -/
def P2841278000915181438.Spec : Prop :=
  ∀ n, (P2841278000915181438.a n : ℤ) = A039154 (n + 1)

end A039154

/-! ## A039154.P1948731608155710744

`eq[A004186(n), A004186(A222253(n))]`
-/

namespace A039154.P1948731608155710744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222253 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039154.P1948731608155710744

namespace A039154

/-- `eq[A004186(n), A004186(A222253(n))]` -/
def P1948731608155710744.Spec : Prop :=
  ∀ n, (P1948731608155710744.a n : ℤ) = A039154 (n + 1)

end A039154

/-! ## A039154.P4252072176882728482

`eq[A007953(n), A007953(A222253(n))]`
-/

namespace A039154.P4252072176882728482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222253 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039154.P4252072176882728482

namespace A039154

/-- `eq[A007953(n), A007953(A222253(n))]` -/
def P4252072176882728482.Spec : Prop :=
  ∀ n, (P4252072176882728482.a n : ℤ) = A039154 (n + 1)

end A039154

/-! ## A039154.P12260253357952687059

`A222254(A039153(n+1)%A180022(n+1))`
-/

namespace A039154.P12260253357952687059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (Int.tmod (A039153 (n + 1)) (A180022 (n + 1))).toNat

end

end A039154.P12260253357952687059

namespace A039154

/-- `A222254(A039153(n+1)%A180022(n+1))` -/
def P12260253357952687059.Spec : Prop :=
  ∀ n, P12260253357952687059.a n = A039154 (n + 1)

end A039154

/-!
# A039155: Numbers whose base-10 representation has the same number of 8's and 9's.

The programs for A039155, there is no canonical definition to state claims against.
-/

/-! ## A039155.P5708655720861311646

`eq[dr(n), dr(A222254(n))]`
-/

namespace A039155.P5708655720861311646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A222254 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039155.P5708655720861311646

/-! ## A039155.P30952299700089441

`eq[A001050(n), A001050(A222254(n))]`
-/

namespace A039155.P30952299700089441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001050 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039155.P30952299700089441

/-! ## A039155.P5725179244163934823

`eq[A003132(n), A003132(A222254(n))]`
-/

namespace A039155.P5725179244163934823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039155.P5725179244163934823

/-! ## A039155.P17504682975867857216

`eq[A004092(n), A004092(A222254(n))]`
-/

namespace A039155.P17504682975867857216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039155.P17504682975867857216

/-! ## A039155.P8341785443955550396

`eq[A004155(n), A004155(A222254(n))]`
-/

namespace A039155.P8341785443955550396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039155.P8341785443955550396

/-! ## A039155.P3742618583184982488

`eq[A004185(n), A004185(A222254(n))]`
-/

namespace A039155.P3742618583184982488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039155.P3742618583184982488

/-! ## A039155.P11908972914589667624

`eq[A004186(n), A004186(A222254(n))]`
-/

namespace A039155.P11908972914589667624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039155.P11908972914589667624

/-! ## A039155.P534832104736567860

`eq[A007953(n), A007953(A222254(n))]`
-/

namespace A039155.P534832104736567860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039155.P534832104736567860

/-! ## A039155.P12708969041962004441

`eq[A010371(n), A010371(A222254(n))]`
-/

namespace A039155.P12708969041962004441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039155.P12708969041962004441

/-! ## A039155.P12891585690179629207

`eq[A047842(n), A047842(A222254(n))]`
-/

namespace A039155.P12891585690179629207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039155.P12891585690179629207

/-! ## A039155.P7532235973598435734

`eq[A061602(n), A061602(A222254(n))]`
-/

namespace A039155.P7532235973598435734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039155.P7532235973598435734

/-! ## A039155.P4554762703317382968

`eq[A066459(n), A066459(A222254(n))]`
-/

namespace A039155.P4554762703317382968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066459 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066459 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039155.P4554762703317382968

/-! ## A039155.P14543317879262010341

`eq[A196564(n), A196564(A222254(n))]`
-/

namespace A039155.P14543317879262010341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039155.P14543317879262010341

/-!
# A039156: Numbers whose base-11 representation has the same number of 0's and 1's.

The programs for A039156, there is no canonical definition to state claims against.
-/

/-! ## A039156.P4505469708060573149

`∑[gcd(A017497(2*(n+2)), A330317(3*(n+1)))]+1`
-/

namespace A039156.P4505469708060573149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017497 (2 * (n + 2))) (A330317 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A039156.P4505469708060573149

/-! ## A039156.P9273268301478299242

`∑[gcd(A054079(n+2), A108372(3*n+5))]`
-/

namespace A039156.P9273268301478299242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054079 (n + 2)) (A108372 (3 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039156.P9273268301478299242

/-! ## A039156.P7566061095961181689

`∑[gcd(n+3, A318988(n+1)+1)]+1`
-/

namespace A039156.P7566061095961181689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A318988 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A039156.P7566061095961181689

/-! ## A039156.P15117067625959266360

`A235986(A216556(n))`
-/

namespace A039156.P15117067625959266360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235986 (A216556 n).toNat

end

end A039156.P15117067625959266360

/-! ## A039156.P11960840937824335182

`∑[A037213(A000045(n+2))+1]`
-/

namespace A039156.P11960840937824335182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A000045 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039156.P11960840937824335182

/-!
# A039157: Numbers whose base-11 representation has the same number of 0's and 2's.

The programs for A039157, there is no canonical definition to state claims against.
-/

/-! ## A039157.P4464508405619298301

`eq[A015582(n), A316863(A044808(n+1))]`
-/

namespace A039157.P4464508405619298301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A044808 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039157.P4464508405619298301

/-!
# A039158: Numbers whose base-11 representation has the same number of 0's and 3's.

The programs for A039158, there is no canonical definition to state claims against.
-/

/-! ## A039158.P16230187549971152238

`lt[A256449(A250473(n+1)), n]`
-/

namespace A039158.P16230187549971152238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256449 (A250473 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039158.P16230187549971152238

/-! ## A039158.P4525642500417944255

`lt[A105632(A141169(n)), A316715(3*n+1)]`
-/

namespace A039158.P4525642500417944255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105632 (A141169 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316715 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039158.P4525642500417944255

/-! ## A039158.P4308596279024212824

`lt[A157022(A102800(2*(n+1))), A112798(n+4)]`
-/

namespace A039158.P4308596279024212824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157022 (A102800 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039158.P4308596279024212824

/-! ## A039158.P9042034625012723080

`lt[A198890(A000040(n+1)), A134895(2*n+5)]`
-/

namespace A039158.P9042034625012723080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198890 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134895 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039158.P9042034625012723080

/-! ## A039158.P14540532252651876867

`lt[A093415(3*(n+1)), A014190(A134894(2*n+5))]`
-/

namespace A039158.P14540532252651876867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093415 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (A134894 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039158.P14540532252651876867

/-!
# A039159: Numbers whose base-11 representation has the same number of 0's and 4's.

The programs for A039159, there is no canonical definition to state claims against.
-/

/-! ## A039159.P4159506543849783043

`record[A025767(n)+n+1-A025767(A044923(n+1))]`
-/

namespace A039159.P4159506543849783043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 n + ((n + 1 : ℤ) - A025767 (A044923 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039159.P4159506543849783043

/-! ## A039159.P12927251807510880200

`lt[tan(A350396(2*n+3)), 1]`
-/

namespace A039159.P12927251807510880200
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A350396 (2 * n + 3) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A039159.P12927251807510880200

/-! ## A039159.P2728397452192966635

`lt[9, A084066(A000326(n))]`
-/

namespace A039159.P2728397452192966635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084066 (A000326 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039159.P2728397452192966635

/-! ## A039159.P5385644066372050775

`floor((∑[A130784(A081585(n))+2]-1)/3)`
-/

namespace A039159.P5385644066372050775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A081585 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 3⌋

end

end A039159.P5385644066372050775

/-! ## A039159.P16680254789520140312

`lt[A002620(3*n), A056960(A033579(n))]`
-/

namespace A039159.P16680254789520140312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 (A033579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039159.P16680254789520140312

/-!
# A039160: Numbers whose base-11 representation has the same number of 0's and 5's.

The programs for A039160, there is no canonical definition to state claims against.
-/

/-! ## A039160.P15688371978523888677

`lt[A160272(n+4), A001523(A160272(n))]`
-/

namespace A039160.P15688371978523888677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160272 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (A160272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039160.P15688371978523888677

/-! ## A039160.P5267221495838712567

`A130734(A052382(2*(n+1)))-n`
-/

namespace A039160.P5267221495838712567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A052382 (2 * (n + 1))).toNat - (n : ℤ)

end

end A039160.P5267221495838712567

/-! ## A039160.P14262575503040622027

`lt[A123927(A241008(n+1)), A010880(2*n+1)]`
-/

namespace A039160.P14262575503040622027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123927 (A241008 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039160.P14262575503040622027

/-! ## A039160.P16762822878354969254

`A052382(2*n+2)-(A054977(A073387(n+1))+n)`
-/

namespace A039160.P16762822878354969254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (2 * n + 2) - (A054977 (A073387 (n + 1)).toNat + (n : ℤ))

end

end A039160.P16762822878354969254

/-! ## A039160.P601823262077883845

`A000194(A331385(2*n)+A005448(n+1))`
-/

namespace A039160.P601823262077883845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A331385 (2 * n) + A005448 (n + 1)).toNat

end

end A039160.P601823262077883845

/-!
# A039162: Numbers whose base-11 representation has the same number of 0's and 7's.

The programs for A039162, there is no canonical definition to state claims against.
-/

/-! ## A039162.P5356496440297351274

`lt[A362093(n+1), A142150(A313137(n+2))]`
-/

namespace A039162.P5356496440297351274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A313137 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039162.P5356496440297351274

/-! ## A039162.P17893141252166941602

`lt[A145140(A286234(n+1)), A010880(3*n+1)]`
-/

namespace A039162.P17893141252166941602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145140 (A286234 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039162.P17893141252166941602

/-! ## A039162.P11775146460508054037

`A004523(A002264(n)%A096604(n+2))+n+1`
-/

namespace A039162.P11775146460508054037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (Int.tmod (A002264 n) (A096604 (n + 2))).toNat + (n + 1 : ℤ)

end

end A039162.P11775146460508054037

/-! ## A039162.P16937855078149361984

`A227324(A227324(n+1))+A004523(A002264(n))`
-/

namespace A039162.P16937855078149361984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227324 (A227324 (n + 1)).toNat + A004523 (A002264 n).toNat

end

end A039162.P16937855078149361984

/-! ## A039162.P8740156697972144676

`A342798(A342798(n+1))+A004523(A002264(n))`
-/

namespace A039162.P8740156697972144676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342798 (A342798 (n + 1)).toNat + A004523 (A002264 n).toNat

end

end A039162.P8740156697972144676

/-! ## A039162.P1245890025003515692

`∑[gcd(A100063(n), A329988(n+1))]`
-/

namespace A039162.P1245890025003515692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100063 n) (A329988 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039162.P1245890025003515692

/-! ## A039162.P2311249107375789360

`eq[A084066(A055999(n+4)), A084066(n)]`
-/

namespace A039162.P2311249107375789360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084066 (A055999 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084066 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039162.P2311249107375789360

/-! ## A039162.P6196789799529476980

`A307011(A028896(n))+A004396(∑[1-n²%3])`
-/

namespace A039162.P6196789799529476980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 (A028896 n).toNat + A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039162.P6196789799529476980

/-! ## A039162.P5671565140804537172

`A039203(n+1)+A001511(A139538(n+1))`
-/

namespace A039162.P5671565140804537172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039203 (n + 1) + A001511 (A139538 (n + 1)).toNat

end

end A039162.P5671565140804537172

/-!
# A039163: Numbers whose base-11 representation has the same number of 0's and 8's.

The programs for A039163, there is no canonical definition to state claims against.
-/

/-! ## A039163.P3401390022121272438

`∑[A010178(A022856(Δ[n²]))]`
-/

namespace A039163.P3401390022121272438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010178 (A022856 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039163.P3401390022121272438

/-! ## A039163.P14877697212542267377

`comp[A243520(n)]%A305440(n+1)`
-/

namespace A039163.P14877697212542267377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243520 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A305440 (n + 1))

end

end A039163.P14877697212542267377

/-! ## A039163.P9304817993780636071

`comp[A243520(n)]%A323271(A298423(n))`
-/

namespace A039163.P9304817993780636071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243520 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A323271 (A298423 n).toNat)

end

end A039163.P9304817993780636071

/-! ## A039163.P14809967914912775015

`lt[A000503(2*n+1), A051064(A115642(n+1))]`
-/

namespace A039163.P14809967914912775015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A115642 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039163.P14809967914912775015

/-! ## A039163.P3958520878464952482

`lt[A000503(2*n+1), A323302(A006530(n+1))]`
-/

namespace A039163.P3958520878464952482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323302 (A006530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039163.P3958520878464952482

/-! ## A039163.P12897343927039388975

`comp[A243520(n)]-A123882(A123883(n+1))+n+1`
-/

namespace A039163.P12897343927039388975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243520 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A123882 (A123883 (n + 1)).toNat + (n + 1 : ℤ)

end

end A039163.P12897343927039388975

/-! ## A039163.P18320966894481915083

`lt[A086867(2*n+3)!, A293699(A293703(n+2)-(n+2))]`
-/

namespace A039163.P18320966894481915083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A086867 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293699 (A293703 (n + 2) - (n + 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039163.P18320966894481915083

/-! ## A039163.P660924925237509938

`A020985(A106232(n+1))²*comp[A243520(n)]`
-/

namespace A039163.P660924925237509938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243520 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A106232 (n + 1)).toNat ^ 2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A039163.P660924925237509938

/-! ## A039163.P3955340581406888245

`comp[A243520(n)]^A001221(A104199(n+4))^n`
-/

namespace A039163.P3955340581406888245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243520 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) ^ (A001221 (A104199 (n + 4)).toNat ^ n : ℤ)

end

end A039163.P3955340581406888245

/-! ## A039163.P9680993930469161786

`lt[A341052(n+1), A038608(A312721(2*n+3))]`
-/

namespace A039163.P9680993930469161786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A312721 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039163.P9680993930469161786

/-!
# A039164: Numbers whose base-11 representation has the same number of 0's and 9's.

The programs for A039164, there is no canonical definition to state claims against.
-/

/-! ## A039164.P17406534675466986947

`lt[A000122(n²), A052500(n+1)²]`
-/

namespace A039164.P17406534675466986947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052500 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039164.P17406534675466986947

/-! ## A039164.P851752093457386690

`lt[A037913(n+1), A071625(A002522(n))]`
-/

namespace A039164.P851752093457386690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A002522 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039164.P851752093457386690

/-! ## A039164.P4978525508349832368

`lt[A001221(A052470(n+5)), A052500(n+1)]`
-/

namespace A039164.P4978525508349832368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A052470 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039164.P4978525508349832368

/-! ## A039164.P12933246376085155610

`lt[A001221(A319951(n+3)), A052500(n+1)²]`
-/

namespace A039164.P12933246376085155610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A319951 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052500 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039164.P12933246376085155610

/-! ## A039164.P14325050828512575566

`lt[1, A052500(A118759(n+1))]`
-/

namespace A039164.P14325050828512575566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052500 (A118759 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039164.P14325050828512575566

/-! ## A039164.P7401993921063207091

`eq[A000007(n²), A037913(n+1)]`
-/

namespace A039164.P7401993921063207091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039164.P7401993921063207091

/-! ## A039164.P14948729084674857230

`eq[A000038(n²), A037913(n+1)]`
-/

namespace A039164.P14948729084674857230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039164.P14948729084674857230

/-! ## A039164.P4627307918773157436

`eq[A005369(n²), A037913(n+1)]`
-/

namespace A039164.P4627307918773157436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039164.P4627307918773157436

/-! ## A039164.P179563584007167175

`record[a(A037913(n))*A259361(n²)]` with `a(0)=1`
-/

namespace A039164.P179563584007167175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A037913 n).toNat * A259361 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039164.P179563584007167175

/-! ## A039164.P1702889805401564965

`eq[A000122(n²+1), A037913(n+1)]`
-/

namespace A039164.P1702889805401564965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039164.P1702889805401564965

/-!
# A039165: Numbers whose base-11 representation has the same number of 1's and 2's.

The programs for A039165, there is no canonical definition to state claims against.
-/

/-! ## A039165.P11333027535858492147

`lt[n, A100796(2*n+3)]`
-/

namespace A039165.P11333027535858492147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100796 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039165.P11333027535858492147

/-! ## A039165.P5473606745760655028

`lt[A077754(3*n+1), record[A077752(2*(n+2))]]`
-/

namespace A039165.P5473606745760655028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077754 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039165.P5473606745760655028

/-! ## A039165.P8504979116332580923

`record[n%A100796(2*n+3)]+C(A008615(n), 3)`
-/

namespace A039165.P8504979116332580923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A100796 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.choose (A008615 n).toNat 3 : ℤ)

end

end A039165.P8504979116332580923

/-! ## A039165.P868613682402804774

`eq[A008615(A064920(n+2)), A175010(n+1)]`
-/

namespace A039165.P868613682402804774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A064920 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039165.P868613682402804774

/-!
# A039173: Numbers whose base-11 representation has the same number of 1's and 10's.

The programs for A039173, there is no canonical definition to state claims against.
-/

/-! ## A039173.P6155958516393441627

`lt[A121039(3*n+1), A121038(A121047(2*(n+1)))]`
-/

namespace A039173.P6155958516393441627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121039 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121038 (A121047 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039173.P6155958516393441627

/-!
# A039177: Numbers whose base-11 representation has the same number of 2's and 6's.

The programs for A039177, there is no canonical definition to state claims against.
-/

/-! ## A039177.P10595174292045590073

`lt[A005099(n+1), A348736(A324076(n+1))]`
-/

namespace A039177.P10595174292045590073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348736 (A324076 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039177.P10595174292045590073

/-!
# A039181: Numbers whose base-11 representation has the same number of 2's and 10's.

The programs for A039181, there is no canonical definition to state claims against.
-/

/-! ## A039181.P3012501535044896598

`eq[A015582(n+1), A316863(A044808(n+1))]`
-/

namespace A039181.P3012501535044896598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A044808 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039181.P3012501535044896598

/-!
# A039182: Numbers whose base-11 representation has the same number of 3's and 4's.

The programs for A039182, there is no canonical definition to state claims against.
-/

/-! ## A039182.P16273566274940890502

`A028930(A127975(n))+n`
-/

namespace A039182.P16273566274940890502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 (A127975 n).toNat + (n : ℤ)

end

end A039182.P16273566274940890502

/-! ## A039182.P11190780293539886461

`lt[atan(A225087(3*n+4)), A052500(2*(n+2))]`
-/

namespace A039182.P11190780293539886461
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A225087 (3 * n + 4) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052500 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A039182.P11190780293539886461

/-! ## A039182.P3238939512687828609

`lt[A139337(3*n+2), 5*A061901(2*n+3)]`
-/

namespace A039182.P3238939512687828609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A061901 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039182.P3238939512687828609

/-! ## A039182.P3290562401715279239

`∑[A331311(2*n+3)%A099971(n)]`
-/

namespace A039182.P3290562401715279239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331311 (2 * n + 3)) (A099971 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039182.P3290562401715279239

/-!
# A039183: Numbers whose base-11 representation has the same number of 3's and 5's.

The programs for A039183, there is no canonical definition to state claims against.
-/

/-! ## A039183.P16014353378726314029

`∑[A277155(A229853(2*n))]+n`
-/

namespace A039183.P16014353378726314029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277155 (A229853 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A039183.P16014353378726314029

/-! ## A039183.P1547190420447955112

`A039190(n+2)-A001222(A138889(2*n+5))`
-/

namespace A039183.P1547190420447955112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039190 (n + 2) - A001222 (A138889 (2 * n + 5)).toNat

end

end A039183.P1547190420447955112

/-! ## A039183.P14840864444924520260

`lt[A020919(A196438(2*n+1)), A122271(n+4)]`
-/

namespace A039183.P14840864444924520260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 (A196438 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122271 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039183.P14840864444924520260

/-! ## A039183.P7835057945911716951

`lt[A002378(3*n+4), A064216(A002378(3*n+4))]`
-/

namespace A039183.P7835057945911716951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A002378 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039183.P7835057945911716951

/-!
# A039184: Numbers whose base-11 representation has the same number of 3's and 6's.

The programs for A039184, there is no canonical definition to state claims against.
-/

/-! ## A039184.P6715020859495295261

`lt[0, A151985(A151950(3*(n+1)))]`
-/

namespace A039184.P6715020859495295261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151985 (A151950 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039184.P6715020859495295261

/-! ## A039184.P4807909495484093344

`lt[A195910(2*(n+1))², A195939(2*n+5)]`
-/

namespace A039184.P4807909495484093344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195910 (2 * (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195939 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039184.P4807909495484093344

/-! ## A039184.P8321931253027866895

`A110655(A312207(n))%A233424(n)`
-/

namespace A039184.P8321931253027866895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110655 (A312207 n).toNat) (A233424 n)

end

end A039184.P8321931253027866895

/-! ## A039184.P5155754499060947813

`lt[A357912(A016766(n+1)), A016766(n+1)]`
-/

namespace A039184.P5155754499060947813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357912 (A016766 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039184.P5155754499060947813

/-! ## A039184.P6512538724513187473

`lt[A037913(3*(n+1)), A001222(A048988(3*n+5))]`
-/

namespace A039184.P6512538724513187473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048988 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039184.P6512538724513187473

/-!
# A039185: Numbers whose base-11 representation has the same number of 3's and 7's.

The programs for A039185, there is no canonical definition to state claims against.
-/

/-! ## A039185.P5363831825975750185

`lt[Δ[n²]², A106612(∑[18*n]+2)]`
-/

namespace A039185.P5363831825975750185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (∑ j ∈ Finset.range (n + 1), f4 j + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A039185.P5363831825975750185

/-! ## A039185.P11970312855997231017

`record[n/A109014(A001504(n))]`
-/

namespace A039185.P11970312855997231017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A109014 (A001504 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039185.P11970312855997231017

/-! ## A039185.P14244661074336570717

`lt[∑[n], A082801(A000201(n+1))]`
-/

namespace A039185.P14244661074336570717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082801 (A000201 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A039185.P14244661074336570717

/-! ## A039185.P4194367992672927109

`lt[0, A103497(A103505(3*n+2))]`
-/

namespace A039185.P4194367992672927109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103497 (A103505 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039185.P4194367992672927109

/-! ## A039185.P11477843298099962605

`lt[n, A006966(A133995(2*(n+2)))]`
-/

namespace A039185.P11477843298099962605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006966 (A133995 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039185.P11477843298099962605

/-!
# A039187: Numbers whose base-11 representation has the same number of 3's and 9's.

The programs for A039187, there is no canonical definition to state claims against.
-/

/-! ## A039187.P15005868178777378956

`lt[1, A070455(A061037(3*n+4))]`
-/

namespace A039187.P15005868178777378956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070455 (A061037 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039187.P15005868178777378956

/-! ## A039187.P2002159217783143176

`comp[A094391(3*n+2)]%A233424(n)`
-/

namespace A039187.P2002159217783143176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094391 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A233424 n)

end

end A039187.P2002159217783143176

/-! ## A039187.P13522822492389986945

`eq[1, A000188(A257297(3*n+4)+1)]`
-/

namespace A039187.P13522822492389986945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A257297 (3 * n + 4) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039187.P13522822492389986945

/-! ## A039187.P10428040869521960497

`lt[A129509(n), A305360(A097475(n+1))]`
-/

namespace A039187.P10428040869521960497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129509 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (A097475 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039187.P10428040869521960497

/-! ## A039187.P3097027772478870486

`lt[A384149(2*n+5), A337227(A000265(2*n+5))]`
-/

namespace A039187.P3097027772478870486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384149 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337227 (A000265 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039187.P3097027772478870486

/-!
# A039189: Numbers whose base-11 representation has the same number of 4's and 5's.

The programs for A039189, there is no canonical definition to state claims against.
-/

/-! ## A039189.P8472661275295875797

`eq[0, val(A347039(n+1), 6)]`
-/

namespace A039189.P8472661275295875797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A347039 (n + 1)).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039189.P8472661275295875797

/-! ## A039189.P8046318257395615092

`lt[1, A002079(A297330(2*(n+1)))]`
-/

namespace A039189.P8046318257395615092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002079 (A297330 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039189.P8046318257395615092

/-! ## A039189.P2896484166673416639

`lt[A037913(2*(n+1)), acot(A037920(n+2))]`
-/

namespace A039189.P2896484166673416639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (2 * (n + 1))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A037920 (n + 2) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A039189.P2896484166673416639

/-! ## A039189.P10445695633687254185

`eq[Δ[A084066(2*n+1)], A326291(2*n+1)]`
-/

namespace A039189.P10445695633687254185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084066 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A039189.P10445695633687254185

/-! ## A039189.P10952381014712222456

`lt[cot(A047235(2*n+5)), A342309(2*n+3)]`
-/

namespace A039189.P10952381014712222456
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (A047235 (2 * n + 5) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342309 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A039189.P10952381014712222456

/-!
# A039190: Numbers whose base-11 representation has the same number of 4's and 6's.

The programs for A039190, there is no canonical definition to state claims against.
-/

/-! ## A039190.P3415084991249087296

`∑[A125927(A017137(n²))]`
-/

namespace A039190.P3415084991249087296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125927 (A017137 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039190.P3415084991249087296

/-! ## A039190.P5238792524146448792

`lt[A322306(2*n+1), A038608(A313155(2*n+1))]`
-/

namespace A039190.P5238792524146448792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322306 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A313155 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039190.P5238792524146448792

/-! ## A039190.P441074075512924213

`lt[A321804(2*(n+5)), A320485(A056525(2*(n+7)))]`
-/

namespace A039190.P441074075512924213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (2 * (n + 5))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (A056525 (2 * (n + 7))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039190.P441074075512924213

/-! ## A039190.P1140621277674994448

`lt[A332499(A332499(2*n+1)), A078822(n+2)]`
-/

namespace A039190.P1140621277674994448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332499 (A332499 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078822 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039190.P1140621277674994448

/-! ## A039190.P426138393055139132

`lt[A016742(n), A064989(A003154(n+1))]`
-/

namespace A039190.P426138393055139132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A003154 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039190.P426138393055139132

/-!
# A039191: Numbers whose base-11 representation has the same number of 4's and 7's.

The programs for A039191, there is no canonical definition to state claims against.
-/

/-! ## A039191.P7367427759629301058

`lt[n+1, A196495(n+3)/5]`
-/

namespace A039191.P7367427759629301058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196495 (n + 3) : ℚ) / 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A039191.P7367427759629301058

/-! ## A039191.P6018507470355225214

`lt[2, A260160(A125239(n+5))]`
-/

namespace A039191.P6018507470355225214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260160 (A125239 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039191.P6018507470355225214

/-! ## A039191.P12479478150708728050

`lt[A046337(n+1), A196495(n+3)]`
-/

namespace A039191.P12479478150708728050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196495 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039191.P12479478150708728050

/-! ## A039191.P11352698677388289746

`lt[A197127(n+1), A196495(n+3)]`
-/

namespace A039191.P11352698677388289746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196495 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039191.P11352698677388289746

/-! ## A039191.P527708446797320099

`lt[A197878(n+1), A196495(n+3)]`
-/

namespace A039191.P527708446797320099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196495 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039191.P527708446797320099

/-!
# A039192: Numbers whose base-11 representation has the same number of 4's and 8's.

The programs for A039192, there is no canonical definition to state claims against.
-/

/-! ## A039192.P7067048768670539391

`A230149(A088481(2*n+3))+A004396(n)`
-/

namespace A039192.P7067048768670539391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230149 (A088481 (2 * n + 3)).toNat + A004396 n

end

end A039192.P7067048768670539391

/-! ## A039192.P2306541023958264397

`A039198(n+2)-A014963(A000041(C(n+1, 34)))`
-/

namespace A039192.P2306541023958264397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039198 (n + 2) - A014963 (A000041 (Nat.choose (n + 1) 34)).toNat

end

end A039192.P2306541023958264397

/-! ## A039192.P5613280873338320029

`lt[A016351(4*n+1), 1]`
-/

namespace A039192.P5613280873338320029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016351 (4 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039192.P5613280873338320029

/-! ## A039192.P7135171621857761978

`lt[A236582(A265111(n+1)), A270613(n+2)]`
-/

namespace A039192.P7135171621857761978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236582 (A265111 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270613 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039192.P7135171621857761978

/-!
# A039193: Numbers whose base-11 representation has the same number of 4's and 9's.

The programs for A039193, there is no canonical definition to state claims against.
-/

/-! ## A039193.P11429903310605676604

`floor(A113218(2*n+1)/8)+n`
-/

namespace A039193.P11429903310605676604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113218 (2 * n + 1) : ℚ) / 8⌋ + (n : ℤ)

end

end A039193.P11429903310605676604

/-! ## A039193.P926960268360056521

`A276611(∑[∑[A039189(n+1)]])`
-/

namespace A039193.P926960268360056521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039189 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039193.P926960268360056521

/-! ## A039193.P7841975658101060348

`record[A052421(n+1)-A117248(n)]`
-/

namespace A039193.P7841975658101060348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1) - A117248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039193.P7841975658101060348

/-! ## A039193.P14862448063223928947

`A000196((∑[n]+n²)%A305672(n+1))`
-/

namespace A039193.P14862448063223928947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2 : ℕ) : ℤ) (A305672 (n + 1))).toNat

end

end A039193.P14862448063223928947

/-! ## A039193.P4159278734632286535

`A277644(n+1)-A057427(A080856(n))`
-/

namespace A039193.P4159278734632286535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (n + 1) - A057427 (A080856 n).toNat

end

end A039193.P4159278734632286535

/-!
# A039194: Numbers whose base-11 representation has the same number of 4's and 10's.

The programs for A039194, there is no canonical definition to state claims against.
-/

/-! ## A039194.P9709995527845422216

`A102683(A051885(n))+A052406(n+1)`
-/

namespace A039194.P9709995527845422216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A051885 n).toNat + A052406 (n + 1)

end

end A039194.P9709995527845422216

/-! ## A039194.P14552545312324299686

`record[A007095(n)-A117248(n)]`
-/

namespace A039194.P14552545312324299686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n - A117248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039194.P14552545312324299686

/-! ## A039194.P15183189742196968401

`lt[9, A262087(A073731(2*n+3))]`
-/

namespace A039194.P15183189742196968401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (A073731 (2 * n + 3 + 10)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039194.P15183189742196968401

/-! ## A039194.P16829595567337671634

`lt[11, A073731(A321801(2*n+3))]`
-/

namespace A039194.P16829595567337671634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 ((A321801 (2 * n + 3)).toNat + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039194.P16829595567337671634

/-! ## A039194.P10071976996719529670

`A054898(A171722(2*n+1))+n`
-/

namespace A039194.P10071976996719529670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054898 (A171722 (2 * n + 1)).toNat + (n : ℤ)

end

end A039194.P10071976996719529670

/-!
# A039195: Numbers whose base-11 representation has the same number of 5's and 6's.

The programs for A039195, there is no canonical definition to state claims against.
-/

/-! ## A039195.P3772977956559673096

`lt[9, A084066(A241849(n))]`
-/

namespace A039195.P3772977956559673096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084066 (A241849 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039195.P3772977956559673096

/-! ## A039195.P11341987349122609241

`eq[1, A277593(n+1)-A121025(n+1)]`
-/

namespace A039195.P11341987349122609241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277593 (n + 1) - A121025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039195.P11341987349122609241

/-! ## A039195.P15493203350863811174

`A107846(n)!*eq[11, A084066(A241849(n))]`
-/

namespace A039195.P15493203350863811174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084066 (A241849 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A107846 n).toNat * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039195.P15493203350863811174

/-! ## A039195.P10442502850766059515

`eq[A113484(A121025(n+1)), A277593(n+1)]`
-/

namespace A039195.P10442502850766059515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A121025 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039195.P10442502850766059515

/-! ## A039195.P11173068931178065141

`eq[A084066(2*n+1), A084066(A241849(n))]`
-/

namespace A039195.P11173068931178065141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084066 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084066 (A241849 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039195.P11173068931178065141

/-!
# A039196: Numbers whose base-11 representation has the same number of 5's and 7's.

The programs for A039196, there is no canonical definition to state claims against.
-/

/-! ## A039196.P6727024114550920468

`eq[A000007(A098954(n+1)), A037913(n+5)]`
-/

namespace A039196.P6727024114550920468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A098954 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039196.P6727024114550920468

/-! ## A039196.P11438332914531485659

`lt[A037913(n+5), A087256(A004396(3*n+2))]`
-/

namespace A039196.P11438332914531485659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087256 (A004396 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039196.P11438332914531485659

/-! ## A039196.P797989082679052220

`A336285(eq[A268200(n+2), A336285(n+1)])`
-/

namespace A039196.P797989082679052220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268200 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336285 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A039196.P797989082679052220

/-! ## A039196.P4299875131881950117

`lt[A056239(A254766(n+1)), A181874(n+4)]`
-/

namespace A039196.P4299875131881950117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A254766 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181874 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039196.P4299875131881950117

/-! ## A039196.P5900241042282951258

`eq[A000007(A000290(2*n+1)), A037913(n+5)]`
-/

namespace A039196.P5900241042282951258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000290 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039196.P5900241042282951258

/-!
# A039197: Numbers whose base-11 representation has the same number of 5's and 8's.

The programs for A039197, there is no canonical definition to state claims against.
-/

/-! ## A039197.P9119457326378815541

`A002265(A312207(n)%A119426(n))`
-/

namespace A039197.P9119457326378815541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.tmod (A312207 n) (A119426 n)).toNat

end

end A039197.P9119457326378815541

/-! ## A039197.P7943931850166906263

`A002265(A312207(n))%A092613(n+1)`
-/

namespace A039197.P7943931850166906263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (A312207 n).toNat) (A092613 (n + 1))

end

end A039197.P7943931850166906263

/-! ## A039197.P17324315791497186971

`lt[A000503(2*(n+2)), A063826(A051221(n+4))]`
-/

namespace A039197.P17324315791497186971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063826 (A051221 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039197.P17324315791497186971

/-! ## A039197.P6733072338401784282

`lt[A051499(2*(n+2)), A000005(A138566(n+1))]`
-/

namespace A039197.P6733072338401784282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051499 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A138566 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039197.P6733072338401784282

/-! ## A039197.P17814814812383551635

`lt[A051499(2*(n+2)), A040012(A257499(2*n+1))]`
-/

namespace A039197.P17814814812383551635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051499 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040012 (A257499 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039197.P17814814812383551635

/-!
# A039198: Numbers whose base-11 representation has the same number of 5's and 9's.

The programs for A039198, there is no canonical definition to state claims against.
-/

/-! ## A039198.P9415756759478570206

`∑[A284817(A145995(n+1)+1)]+n`
-/

namespace A039198.P9415756759478570206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (A145995 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A039198.P9415756759478570206

/-! ## A039198.P173840746821313353

`A039203(n+2)+A008683(A192821(n+1))`
-/

namespace A039198.P173840746821313353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039203 (n + 2) + A008683 (A192821 (n + 1)).toNat

end

end A039198.P173840746821313353

/-! ## A039198.P4686383224368835580

`A039203(n+2)-A001221(A089969(n+6))`
-/

namespace A039198.P4686383224368835580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039203 (n + 2) - A001221 (A089969 (n + 6)).toNat

end

end A039198.P4686383224368835580

/-! ## A039198.P12442284068260925850

`lt[tan(4*n), A118916(2*n+3)]`
-/

namespace A039198.P12442284068260925850
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (4 * n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118916 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A039198.P12442284068260925850

/-!
# A039199: Numbers whose base-11 representation has the same number of 5's and 10's.

The programs for A039199, there is no canonical definition to state claims against.
-/

/-! ## A039199.P2138725120603794432

`A052382(A118759(Δ[n²]))-(n+1)`
-/

namespace A039199.P2138725120603794432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A118759 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - (n + 1 : ℤ)

end

end A039199.P2138725120603794432

/-! ## A039199.P11569145528346172649

`A052382(A118759(2*n+1))-1-n`
-/

namespace A039199.P11569145528346172649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A118759 (2 * n + 1)).toNat - 1 - (n : ℤ)

end

end A039199.P11569145528346172649

/-! ## A039199.P5019640120412630477

`abs(1-(A052382(A118759(n+1+n))-n))`
-/

namespace A039199.P5019640120412630477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A052382 (A118759 (n + 1 + n)).toNat - (n : ℤ))|

end

end A039199.P5019640120412630477

/-! ## A039199.P4908239082998115440

`A052382(2*n+1)-A027870(A306112(n+1))`
-/

namespace A039199.P4908239082998115440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (2 * n + 1) - A027870 (A306112 (n + 1)).toNat

end

end A039199.P4908239082998115440

/-! ## A039199.P10574435740981512946

`record[A052382(2*n+1)-A008619(A033619(2*(n+1)))]`
-/

namespace A039199.P10574435740981512946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (2 * n + 1) - A008619 (A033619 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039199.P10574435740981512946

