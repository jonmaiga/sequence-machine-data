import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A240102: Numbers with primitive root -18.

The programs for A240102, there is no canonical definition to state claims against.
-/

/-! ## A240102.P8849671760258773557

`A143265(A105890(n+1))`
-/

namespace A240102.P8849671760258773557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143265 (A105890 (n + 1)).toNat

end

end A240102.P8849671760258773557

/-! ## A240102.P16697693694784739416

`A105890(n+1)%A050217(A208856(n))`
-/

namespace A240102.P16697693694784739416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105890 (n + 1)) (A050217 (A208856 n).toNat)

end

end A240102.P16697693694784739416

/-! ## A240102.P9768634730100286340

`A006530(A105890(n+1)*A134930(n+1))`
-/

namespace A240102.P9768634730100286340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A105890 (n + 1) * A134930 (n + 1)).toNat

end

end A240102.P9768634730100286340

/-! ## A240102.P10210914994205650264

`A006530(A105890(n+1)*A360557(n+1))`
-/

namespace A240102.P10210914994205650264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A105890 (n + 1) * A360557 (n + 1)).toNat

end

end A240102.P10210914994205650264

/-! ## A240102.P727443491106057870

`filter[A105890(n+1), A377988(#)]`
-/

namespace A240102.P727443491106057870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377988 (f1 j).toNat = 1) n)

end

end A240102.P727443491106057870

/-!
# A240103: Numbers with primitive root 18.

The programs for A240103, there is no canonical definition to state claims against.
-/

/-! ## A240103.P13448443065950182993

`A019345(n+1)%A138597(n+4)`
-/

namespace A240103.P13448443065950182993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019345 (n + 1)) (A138597 (n + 4))

end

end A240103.P13448443065950182993

/-! ## A240103.P15322822564929080745

`∩[A019345(n+1), A096603(n+1)]`
-/

namespace A240103.P15322822564929080745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240103.P15322822564929080745

/-! ## A240103.P16753548275554990719

`∩[A019345(n+1), A108372(n+1)]`
-/

namespace A240103.P16753548275554990719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240103.P16753548275554990719

/-! ## A240103.P6935631215850077014

`∩[A019345(n+1), A113837(n+1)]`
-/

namespace A240103.P6935631215850077014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240103.P6935631215850077014

/-! ## A240103.P15314736675407257873

`∩[A019345(n+1), A117741(n+1)]`
-/

namespace A240103.P15314736675407257873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240103.P15314736675407257873

/-!
# A240107: Numbers with primitive root -20.

The programs for A240107, there is no canonical definition to state claims against.
-/

/-! ## A240107.P1921390426560191308

`A105892(A062399(n+1))`
-/

namespace A240107.P1921390426560191308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105892 (A062399 (n + 1)).toNat

end

end A240107.P1921390426560191308

/-! ## A240107.P13101788938813882491

`A105892(A351870(n+1))`
-/

namespace A240107.P13101788938813882491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105892 (A351870 (n + 1)).toNat

end

end A240107.P13101788938813882491

/-! ## A240107.P1416006631087131597

`∩[A038701(n+1), A105892(n+1)]`
-/

namespace A240107.P1416006631087131597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240107.P1416006631087131597

/-! ## A240107.P16449206942907413274

`∩[A097904(n+1), A105892(n+1)]`
-/

namespace A240107.P16449206942907413274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240107.P16449206942907413274

/-! ## A240107.P8279462191051458504

`∩[A105892(n+1), A113837(n+1)]`
-/

namespace A240107.P8279462191051458504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240107.P8279462191051458504

/-!
# A240108: Numbers with primitive root 20.

The programs for A240108, there is no canonical definition to state claims against.
-/

/-! ## A240108.P4619873763268324053

`A213923(∑[A027763(n+1)])`
-/

namespace A240108.P4619873763268324053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213923 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A240108.P4619873763268324053

/-! ## A240108.P4310871243867707641

`∑[A145924(A026898(n))]+n`
-/

namespace A240108.P4310871243867707641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145924 (A026898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A240108.P4310871243867707641

/-! ## A240108.P12055124906973641240

`∑[A145924(Δ[A103439(n)])]+n`
-/

namespace A240108.P12055124906973641240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103439 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145924 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A240108.P12055124906973641240

/-! ## A240108.P7453717455288952382

`∑[A000005(or(8, A037590(n+1)))]`
-/

namespace A240108.P7453717455288952382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor 8 (A037590 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240108.P7453717455288952382

/-!
# A240109: Positive integers n such that every element in the ring of integers modulo n can be written as the sum of two nonzero squares modulo n.

The programs for A240109, there is no canonical definition to state claims against.
-/

/-! ## A240109.P11988081897869390123

`A209922(lt[A001359(n+3), A135766(3*n+4)])`
-/

namespace A240109.P11988081897869390123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135766 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240109.P11988081897869390123

/-! ## A240109.P14230307305355982432

`A084645(lt[A001440(2*n+1), A157268(3*n+2)])`
-/

namespace A240109.P14230307305355982432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001440 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157268 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084645 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240109.P14230307305355982432

/-! ## A240109.P5127018797463501918

`A209922(lt[A008593(3*n+1), A135766(3*n+4)])`
-/

namespace A240109.P5127018797463501918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135766 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240109.P5127018797463501918

/-! ## A240109.P10498693195497068370

`A209922(lt[A209922(3*n+5), A135766(3*n+4)])`
-/

namespace A240109.P10498693195497068370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135766 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240109.P10498693195497068370

/-! ## A240109.P4546533940615799607

`A084645(lt[A003871(n+1), A157268(3*n+2)])`
-/

namespace A240109.P4546533940615799607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157268 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084645 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240109.P4546533940615799607

/-!
# A240110: Primes p such that p+2 and p^3+2 are also prime.

The programs for A240110, there is no canonical definition to state claims against.
-/

/-! ## A240110.P11674374822994509114

`∩[A001359(n+1), A048637(n+1)]`
-/

namespace A240110.P11674374822994509114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P11674374822994509114

/-! ## A240110.P8691693983426599094

`∩[A001359(n+1), A132281(n+1)]`
-/

namespace A240110.P8691693983426599094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P8691693983426599094

/-! ## A240110.P18202559377451023452

`∩[A048637(n+1), A141830(n+1)]`
-/

namespace A240110.P18202559377451023452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P18202559377451023452

/-! ## A240110.P10386695688607057549

`∩[A132281(n+1), A141830(n+1)]`
-/

namespace A240110.P10386695688607057549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P10386695688607057549

/-! ## A240110.P13428241873070614051

`∩[A048637(n+1), A378983(n+1)]`
-/

namespace A240110.P13428241873070614051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P13428241873070614051

/-! ## A240110.P9195816319526979226

`∩[A048637(n+1), A054799(n+1)]`
-/

namespace A240110.P9195816319526979226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P9195816319526979226

/-! ## A240110.P4718472285136539049

`∩[A048637(n+1), A063700(n+1)]`
-/

namespace A240110.P4718472285136539049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P4718472285136539049

/-! ## A240110.P17884247752313421593

`∩[A048637(n+1), A124588(n+1)]`
-/

namespace A240110.P17884247752313421593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P17884247752313421593

/-! ## A240110.P10473368619895553001

`∩[A054799(n+1), A132281(n+1)]`
-/

namespace A240110.P10473368619895553001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P10473368619895553001

/-! ## A240110.P16976707602298996052

`∩[A063700(n+1), A132281(n+1)]`
-/

namespace A240110.P16976707602298996052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P16976707602298996052

/-! ## A240110.P12284986469871223018

`∩[A048637(n+1), A181747(n+1)]`
-/

namespace A240110.P12284986469871223018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P12284986469871223018

/-! ## A240110.P9579029040868360873

`∩[A124588(n+1), A132281(n+1)]`
-/

namespace A240110.P9579029040868360873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P9579029040868360873

/-! ## A240110.P16706904261458850450

`∩[A048637(n+1), A238528(n+1)]`
-/

namespace A240110.P16706904261458850450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P16706904261458850450

/-! ## A240110.P9107916848712834343

`∩[A132281(n+1), A238528(n+1)]`
-/

namespace A240110.P9107916848712834343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P9107916848712834343

/-! ## A240110.P16967512264728608939

`∩[A048637(n+1), A280255(n+1)]`
-/

namespace A240110.P16967512264728608939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P16967512264728608939

/-! ## A240110.P4396793816478578136

`∩[A132281(n+1), A280255(n+1)]`
-/

namespace A240110.P4396793816478578136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P4396793816478578136

/-! ## A240110.P100558184441410699

`∩[A048637(n+1), A063693(n+1)]`
-/

namespace A240110.P100558184441410699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P100558184441410699

/-! ## A240110.P16649312148637562069

`∩[A063693(n+1), A132281(n+1)]`
-/

namespace A240110.P16649312148637562069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P16649312148637562069

/-! ## A240110.P5557847992858847884

`∩[A048637(n+1), A394509(n+1)]`
-/

namespace A240110.P5557847992858847884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P5557847992858847884

/-! ## A240110.P2876863797275310861

`∩[A048637(n+1), A395788(n+1)]`
-/

namespace A240110.P2876863797275310861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240110.P2876863797275310861

/-!
# A240111: Numbers for which the value of the Dedekind psi function (A001615) are less than the value of the infinitary Dedekind psi function (A049417).

The programs for A240111, there is no canonical definition to state claims against.
-/

/-! ## A240111.P17790757178296861913

`lt[A001615(n+1), A049417(n+1)]+1`
-/

namespace A240111.P17790757178296861913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A240111.P17790757178296861913

/-! ## A240111.P2416125960097382860

`lt[A348271(n+1), A244963(n+1)]+1`
-/

namespace A240111.P2416125960097382860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A240111.P2416125960097382860

/-! ## A240111.P15320767917252979211

`A020725(lt[A001615(n+1), A049417(n+1)])`
-/

namespace A240111.P15320767917252979211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240111.P15320767917252979211

/-! ## A240111.P11096504346320287982

`A020725(lt[A348271(n+1), A244963(n+1)])`
-/

namespace A240111.P11096504346320287982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240111.P11096504346320287982

/-! ## A240111.P14200853209563217495

`A020725(lt[A000082(n+1)/(n+1), A126168(n+1)+1+n])`
-/

namespace A240111.P14200853209563217495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A240111.P14200853209563217495

/-!
# A240112: Numbers for which the values of the Dedekind psi function (A001615) are greater than the values of the infinitary Dedekind psi function (A049417).

The programs for A240112, there is no canonical definition to state claims against.
-/

/-! ## A240112.P7181346017678424666

`lt[A049417(n+1), A001615(n+1)]+1`
-/

namespace A240112.P7181346017678424666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A240112.P7181346017678424666

/-! ## A240112.P1525922062859066850

`lt[A323413(n+1), A051953(n+1)]+1`
-/

namespace A240112.P1525922062859066850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A240112.P1525922062859066850

/-! ## A240112.P3923295266068636641

`lt[A244963(n+1), A348271(n+1)]+1`
-/

namespace A240112.P3923295266068636641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A240112.P3923295266068636641

/-! ## A240112.P10689612573906238840

`A020725(lt[A049417(n+1), A001615(n+1)])`
-/

namespace A240112.P10689612573906238840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240112.P10689612573906238840

/-! ## A240112.P680375944578158144

`A020725(lt[A323413(n+1), A051953(n+1)])`
-/

namespace A240112.P680375944578158144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240112.P680375944578158144

/-! ## A240112.P13919601446992129644

`A020725(lt[A244963(n+1), A348271(n+1)])`
-/

namespace A240112.P13919601446992129644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240112.P13919601446992129644

/-! ## A240112.P10901641223322473625

`A020725(lt[A126168(n+1)+1+n, A000082(n+1)/(n+1)])`
-/

namespace A240112.P10901641223322473625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A240112.P10901641223322473625

/-!
# A240114: Maximal number of points that can be placed on a triangular grid of side n so that no three of them are vertices of an equilateral triangle in any orientation.

The programs for A240114, there is no canonical definition to state claims against.
-/

/-! ## A240114.P2174461495538679082

`ceil(n^root(3, 4))+1`
-/

namespace A240114.P2174461495538679082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ ((3 : ℝ) ^ (1 / (4 : ℝ)))⌉ + 1

end

end A240114.P2174461495538679082

/-! ## A240114.P11148392843179013011

`round(∑[(n+1)^sin(13)])`
-/

namespace A240114.P11148392843179013011
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (Real.sin (13 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240114.P11148392843179013011

/-! ## A240114.P14582698698260161713

`round(∑[(n+1)^tan(10)²])`
-/

namespace A240114.P14582698698260161713
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (Real.tan (10 : ℝ) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240114.P14582698698260161713

/-! ## A240114.P9850002836158478833

`round(∑[((n+1)^cot(2)²)²])`
-/

namespace A240114.P9850002836158478833
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) ^ (Real.cot (2 : ℝ) ^ 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240114.P9850002836158478833

/-! ## A240114.P13435228846697854448

`floor((∑[log2(n+2)]+1)*cos(37))`
-/

namespace A240114.P13435228846697854448
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j + 1) * Real.cos (37 : ℝ)⌋

end

end A240114.P13435228846697854448

/-!
# A240115: Schoenheim lower bound L(n,4,2).

The programs for A240115, the canonical program `A240115.P10703966690643345421` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240115 has offset 4).

The definition of A240115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240115.P10703966690643345421

`ceil((n+4)/4*ceil((n+3)/3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240115

/-- `ceil((n+4)/4*ceil((n+3)/3))` -/
def P10703966690643345421.Spec : Prop :=
  ∀ n, P10703966690643345421.a n = A240115 (n + 4)

theorem P10703966690643345421.correct : P10703966690643345421.Spec := by
  intro n
  simp only [A240115, Nat.add_sub_cancel]

end A240115

/-! ## A240115.P8926424577702973381

`round(A229593(5-A000038(n)+n)/4)`
-/

namespace A240115.P8926424577702973381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A229593 (5 - A000038 n + (n : ℤ)).toNat : ℚ) / 4)

end

end A240115.P8926424577702973381

namespace A240115

/-- `round(A229593(5-A000038(n)+n)/4)` -/
def P8926424577702973381.Spec : Prop :=
  ∀ n, P8926424577702973381.a n = A240115 (n + 4)

end A240115

/-! ## A240115.P4760541764458691826

`A007814(Δ[n²])+round(A229593(n+5)/4)`
-/

namespace A240115.P4760541764458691826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + SequenceMachineLib.roundAway ((A229593 (n + 5) : ℚ) / 4)

end

end A240115.P4760541764458691826

namespace A240115

/-- `A007814(Δ[n²])+round(A229593(n+5)/4)` -/
def P4760541764458691826.Spec : Prop :=
  ∀ n, P4760541764458691826.a n = A240115 (n + 4)

end A240115

/-! ## A240115.P16207875023136622920

`round(A229593(n+5)/4)^A049076(2*(n+1))`
-/

namespace A240115.P16207875023136622920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A229593 (n + 5) : ℚ) / 4) : ℚ) ^ (A049076 (2 * (n + 1)) : ℤ)

end

end A240115.P16207875023136622920

namespace A240115

/-- `round(A229593(n+5)/4)^A049076(2*(n+1))` -/
def P16207875023136622920.Spec : Prop :=
  ∀ n, P16207875023136622920.a n = (A240115 (n + 4) : ℚ)

end A240115

/-! ## A240115.P94763305967037643

`round(A229593(n+5)/4)*A001222(A002476(n+1))`
-/

namespace A240115.P94763305967037643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A229593 (n + 5) : ℚ) / 4) * A001222 (A002476 (n + 1)).toNat

end

end A240115.P94763305967037643

namespace A240115

/-- `round(A229593(n+5)/4)*A001222(A002476(n+1))` -/
def P94763305967037643.Spec : Prop :=
  ∀ n, P94763305967037643.a n = A240115 (n + 4)

end A240115

/-! ## A240115.P5906478617804000526

`round(A229593(n+5)/4)*A050603(4*n)`
-/

namespace A240115.P5906478617804000526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A229593 (n + 5) : ℚ) / 4) * A050603 (4 * n)

end

end A240115.P5906478617804000526

namespace A240115

/-- `round(A229593(n+5)/4)*A050603(4*n)` -/
def P5906478617804000526.Spec : Prop :=
  ∀ n, P5906478617804000526.a n = A240115 (n + 4)

end A240115

/-! ## A240115.P4433916815419615829

`∑{d}[round(A229593(n+5)/4), A000010(#)]`
-/

namespace A240115.P4433916815419615829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A229593 (n + 5) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A240115.P4433916815419615829

namespace A240115

/-- `∑{d}[round(A229593(n+5)/4), A000010(#)]` -/
def P4433916815419615829.Spec : Prop :=
  ∀ n, P4433916815419615829.a n = A240115 (n + 4)

end A240115

/-! ## A240115.P12874042270594719917

`A025480(2*round(A229593(n+5)/4))`
-/

namespace A240115.P12874042270594719917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (2 * SequenceMachineLib.roundAway ((A229593 (n + 5) : ℚ) / 4)).toNat

end

end A240115.P12874042270594719917

namespace A240115

/-- `A025480(2*round(A229593(n+5)/4))` -/
def P12874042270594719917.Spec : Prop :=
  ∀ n, P12874042270594719917.a n = A240115 (n + 4)

end A240115

/-! ## A240115.P13006542971412523647

`A110654(2*round(A229593(n+5)/4))`
-/

namespace A240115.P13006542971412523647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * SequenceMachineLib.roundAway ((A229593 (n + 5) : ℚ) / 4)).toNat

end

end A240115.P13006542971412523647

namespace A240115

/-- `A110654(2*round(A229593(n+5)/4))` -/
def P13006542971412523647.Spec : Prop :=
  ∀ n, P13006542971412523647.a n = A240115 (n + 4)

end A240115

/-! ## A240115.P15383191812731400264

`A138996(A138984(n+3))`
-/

namespace A240115.P15383191812731400264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138996 (A138984 (n + 3)).toNat

end

end A240115.P15383191812731400264

namespace A240115

/-- `A138996(A138984(n+3))` -/
def P15383191812731400264.Spec : Prop :=
  ∀ n, P15383191812731400264.a n = A240115 (n + 4)

end A240115

/-! ## A240115.P1934785365739809432

`A110654(A110654(A002264(n+5)*(n+4)))`
-/

namespace A240115.P1934785365739809432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 (A002264 (n + 5) * (n + 4 : ℤ)).toNat).toNat

end

end A240115.P1934785365739809432

namespace A240115

/-- `A110654(A110654(A002264(n+5)*(n+4)))` -/
def P1934785365739809432.Spec : Prop :=
  ∀ n, P1934785365739809432.a n = A240115 (n + 4)

end A240115

/-!
# A240116: Schoenheim lower bound L(n,5,2).

The programs for A240116, the canonical program `A240116.P1987406620295997318` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240116 has offset 5).

The definition of A240116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240116.P1987406620295997318

`ceil((n+5)/5*ceil((n+4)/4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240116

/-- `ceil((n+5)/5*ceil((n+4)/4))` -/
def P1987406620295997318.Spec : Prop :=
  ∀ n, P1987406620295997318.a n = A240116 (n + 5)

theorem P1987406620295997318.correct : P1987406620295997318.Spec := by
  intro n
  simp only [A240116, Nat.add_sub_cancel]

end A240116

/-!
# A240117: Schoenheim lower bound L(n,6,2).

The programs for A240117, the canonical program `A240117.P7257571435940234037` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240117 has offset 6).

The definition of A240117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240117.P7257571435940234037

`round((A138986(n+5)/3+1)/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A240117

/-- `round((A138986(n+5)/3+1)/2)` -/
def P7257571435940234037.Spec : Prop :=
  ∀ n, P7257571435940234037.a n = A240117 (n + 6)

theorem P7257571435940234037.correct : P7257571435940234037.Spec := by
  intro n
  simp only [A240117, Nat.add_sub_cancel]

end A240117

/-! ## A240117.P148817374174791031

`A097992(A138986(n+5))`
-/

namespace A240117.P148817374174791031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A138986 (n + 5)).toNat

end

end A240117.P148817374174791031

namespace A240117

/-- `A097992(A138986(n+5))` -/
def P148817374174791031.Spec : Prop :=
  ∀ n, P148817374174791031.a n = A240117 (n + 6)

end A240117

/-! ## A240117.P2865067269078962582

`A151898(or(1, A138986(n+5)))`
-/

namespace A240117.P2865067269078962582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (Int.lor 1 (A138986 (n + 5))).toNat

end

end A240117.P2865067269078962582

namespace A240117

/-- `A151898(or(1, A138986(n+5)))` -/
def P2865067269078962582.Spec : Prop :=
  ∀ n, P2865067269078962582.a n = A240117 (n + 6)

end A240117

/-! ## A240117.P12486979226440057022

`A151898(A138986(n+5)%A138994(3*n+2))`
-/

namespace A240117.P12486979226440057022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (Int.tmod (A138986 (n + 5)) (A138994 (3 * n + 2))).toNat

end

end A240117.P12486979226440057022

namespace A240117

/-- `A151898(A138986(n+5)%A138994(3*n+2))` -/
def P12486979226440057022.Spec : Prop :=
  ∀ n, P12486979226440057022.a n = A240117 (n + 6)

end A240117

/-!
# A240118: Schoenheim lower bound L(n,5,3).

The programs for A240118, there is no canonical definition to state claims against.
-/

/-! ## A240118.P18320071292819267967

`∑[dr(A291073(A290877(n+1)))]`
-/

namespace A240118.P18320071292819267967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A291073 (A290877 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240118.P18320071292819267967

/-! ## A240118.P6884585223670130121

`record[A106044(n+1)-A354666(n)]`
-/

namespace A240118.P6884585223670130121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106044 (n + 1) - A354666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240118.P6884585223670130121

/-! ## A240118.P1897411866360066038

`A328798(n+2)+A105518(A004137(3*n+1))`
-/

namespace A240118.P1897411866360066038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328798 (n + 2) + A105518 (A004137 (3 * n + 1)).toNat

end

end A240118.P1897411866360066038

/-!
# A240120: Number of inequivalent ways to cut an n X n square into squares with integer sides, such that the dissection has reflective symmetry in both diagonals and no other reflective symmetries.

The programs for A240120, there is no canonical definition to state claims against.
-/

/-! ## A240120.P1539334657526889485

`A226979(n+1)-(A240122(n+1)+A240121(n+1))`
-/

namespace A240120.P1539334657526889485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226979 (n + 1) - (A240122 (n + 1) + A240121 (n + 1))

end

end A240120.P1539334657526889485

/-! ## A240120.P14109743799972185698

`A174980(A367967(n))`
-/

namespace A240120.P14109743799972185698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (A367967 n).toNat

end

end A240120.P14109743799972185698

/-! ## A240120.P6978527137825023450

`∑{d}[A036623(n), A272188(#)²]`
-/

namespace A240120.P6978527137825023450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A272188 d ^ 2

end

end A240120.P6978527137825023450

/-! ## A240120.P3647968708484865890

`A005896(round(sqrt(A018374(n+1))))`
-/

namespace A240120.P3647968708484865890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005896 (SequenceMachineLib.roundAway (Real.sqrt (A018374 (n + 1) : ℝ))).toNat

end

end A240120.P3647968708484865890

/-!
# A240121: Number of inequivalent ways to cut an n X n square into squares with integer sides, such that the dissection has two reflective symmetries in axes parallel to the sides, and no other reflective symmetries.

The programs for A240121, there is no canonical definition to state claims against.
-/

/-! ## A240121.P7905367068321394508

`A226979(n+1)-(A240122(n+1)+A240120(n+1))`
-/

namespace A240121.P7905367068321394508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226979 (n + 1) - (A240122 (n + 1) + A240120 (n + 1))

end

end A240121.P7905367068321394508

/-! ## A240121.P11069024815208521438

`A033101(A071879(n)^A336737(n+1))`
-/

namespace A240121.P11069024815208521438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033101 (SequenceMachineLib.roundAway ((A071879 n : ℚ) ^ (A336737 (n + 1) : ℤ))).toNat

end

end A240121.P11069024815208521438

/-! ## A240121.P7034208542030254195

`A020330(A052534(n))%A245898(n+1)`
-/

namespace A240121.P7034208542030254195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020330 (A052534 n).toNat) (A245898 (n + 1))

end

end A240121.P7034208542030254195

/-! ## A240121.P18402887952691290321

`A343416(A308032(2*(n+1)))%A000111(n)`
-/

namespace A240121.P18402887952691290321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343416 (A308032 (2 * (n + 1))).toNat) (A000111 n)

end

end A240121.P18402887952691290321

/-!
# A240122: Number of inequivalent ways to cut an n X n square into squares with integer sides, such that the dissection has 90-degree rotational symmetry and no reflective symmetry.

The programs for A240122, there is no canonical definition to state claims against.
-/

/-! ## A240122.P16851739126749420781

`A226979(n+1)-(A240121(n+1)+A240120(n+1))`
-/

namespace A240122.P16851739126749420781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226979 (n + 1) - (A240121 (n + 1) + A240120 (n + 1))

end

end A240122.P16851739126749420781

/-! ## A240122.P12395401347447340186

`A140496(A221547(n))`
-/

namespace A240122.P12395401347447340186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140496 (A221547 n).toNat

end

end A240122.P12395401347447340186

/-! ## A240122.P16425641766854959458

`A085862(xor(n, A149944(n)))`
-/

namespace A240122.P16425641766854959458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085862 (Int.xor (n : ℤ) (A149944 n)).toNat

end

end A240122.P16425641766854959458

/-!
# A240123: Number of inequivalent ways to cut an n X n square into squares with integer sides, such that the dissection has a reflective symmetry in one diagonal, but no other symmetries.

The programs for A240123, there is no canonical definition to state claims against.
-/

/-! ## A240123.P12078685692053340234

`A226980(n+1)-(A240125(n+1)+A240124(n+1))`
-/

namespace A240123.P12078685692053340234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226980 (n + 1) - (A240125 (n + 1) + A240124 (n + 1))

end

end A240123.P12078685692053340234

/-! ## A240123.P2911600771148756261

`A002264(A111752(n)+A001006(n))`
-/

namespace A240123.P2911600771148756261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A111752 n + A001006 n).toNat

end

end A240123.P2911600771148756261

/-! ## A240123.P2640943178513757946

`A004525(A143740(n)-A039758(n))`
-/

namespace A240123.P2640943178513757946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A143740 n - A039758 n).toNat

end

end A240123.P2640943178513757946

/-!
# A240124: Number of inequivalent ways to cut an n X n square into squares with integer sides, such that the dissection has 180-degree rotational symmetry, but no other symmetries.

The programs for A240124, there is no canonical definition to state claims against.
-/

/-! ## A240124.P1718515983998757958

`A226980(n+1)-(A240125(n+1)+A240123(n+1))`
-/

namespace A240124.P1718515983998757958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226980 (n + 1) - (A240125 (n + 1) + A240123 (n + 1))

end

end A240124.P1718515983998757958

/-! ## A240124.P17969746929745019912

`A384322(3*a(n-1)-a(n-2)-a(n-3))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=2`
-/

namespace A240124.P17969746929745019912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 2] fun n a =>
  A384322 (3 * a (n - 1) - a (n - 2) - a (n - 3)).toNat

end

end A240124.P17969746929745019912

/-! ## A240124.P5102051280663931538

`A276118(A153982(n))`
-/

namespace A240124.P5102051280663931538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276118 (A153982 n).toNat

end

end A240124.P5102051280663931538

/-!
# A240125: Number of inequivalent ways to cut an n X n square into squares with integer sides, such that the dissection has one reflective symmetry in an axis parallel to a side, but no other symmetries.

The programs for A240125, there is no canonical definition to state claims against.
-/

/-! ## A240125.P5917957177211040319

`A226980(n+1)-(A240124(n+1)+A240123(n+1))`
-/

namespace A240125.P5917957177211040319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226980 (n + 1) - (A240124 (n + 1) + A240123 (n + 1))

end

end A240125.P5917957177211040319

/-! ## A240125.P16463552546076119416

`A396514(A042257(n))`
-/

namespace A240125.P16463552546076119416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396514 (A042257 n).toNat

end

end A240125.P16463552546076119416

/-! ## A240125.P11730208679343837502

`A232541(A232542(n+1))%A309565(n)`
-/

namespace A240125.P11730208679343837502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232541 (A232542 (n + 1)).toNat) (A309565 n)

end

end A240125.P11730208679343837502

/-!
# A240126: Primes p such that p - 2 and p^3 - 2 are also prime.

The programs for A240126, there is no canonical definition to state claims against.
-/

/-! ## A240126.P12504627553716023360

`∩[A001097(n+1), A038599(n+1)]`
-/

namespace A240126.P12504627553716023360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P12504627553716023360

/-! ## A240126.P15583117546209254641

`∩[A006512(n+1), A038599(n+1)]`
-/

namespace A240126.P15583117546209254641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P15583117546209254641

/-! ## A240126.P10973816316693225914

`∩[A038599(n+1), A067829(n+1)]`
-/

namespace A240126.P10973816316693225914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P10973816316693225914

/-! ## A240126.P927951600570927622

`∩[A038599(n+1), A132247(n+1)]`
-/

namespace A240126.P927951600570927622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P927951600570927622

/-! ## A240126.P14557849681752131094

`∩[A038599(n+1), A171688(n+1)]`
-/

namespace A240126.P14557849681752131094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P14557849681752131094

/-! ## A240126.P15214498430504669029

`∩[A038599(n+1), A171821(n+1)]`
-/

namespace A240126.P15214498430504669029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P15214498430504669029

/-! ## A240126.P16222488295148161228

`∩[A038599(n+1), A172057(n+1)]`
-/

namespace A240126.P16222488295148161228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P16222488295148161228

/-! ## A240126.P13337149419939983565

`∩[A038599(n+1), A265760(n+1)]`
-/

namespace A240126.P13337149419939983565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P13337149419939983565

/-! ## A240126.P4216440536773433546

`∩[A038599(n+1), A267945(n+1)]`
-/

namespace A240126.P4216440536773433546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P4216440536773433546

/-! ## A240126.P13642743738455519467

`∩[A038599(n+1), A320391(n+1)]`
-/

namespace A240126.P13642743738455519467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P13642743738455519467

/-! ## A240126.P9405674641952395173

`∩[A038599(n+1), A339692(n+1)]`
-/

namespace A240126.P9405674641952395173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P9405674641952395173

/-! ## A240126.P5379361878634773878

`∩[A038599(n+1), A391049(n+1)]`
-/

namespace A240126.P5379361878634773878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P5379361878634773878

/-! ## A240126.P14653386686292281704

`p?[A178251(n+1)-2]+2`
-/

namespace A240126.P14653386686292281704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178251 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A240126.P14653386686292281704

/-! ## A240126.P7112169544540154711

`∩[A001097(n+1), A178251(n+1)]`
-/

namespace A240126.P7112169544540154711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P7112169544540154711

/-! ## A240126.P8228123623722969028

`∩[A006512(n+1), A178251(n+1)]`
-/

namespace A240126.P8228123623722969028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P8228123623722969028

/-! ## A240126.P10324391178913312964

`∩[A064077(n+1), A178251(n+1)]`
-/

namespace A240126.P10324391178913312964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P10324391178913312964

/-! ## A240126.P1994165490864407655

`∩[A067829(n+1), A178251(n+1)]`
-/

namespace A240126.P1994165490864407655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P1994165490864407655

/-! ## A240126.P10139377893517622962

`∩[A132247(n+1), A178251(n+1)]`
-/

namespace A240126.P10139377893517622962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P10139377893517622962

/-! ## A240126.P11067551115866972923

`∩[A139690(n+1), A178251(n+1)]`
-/

namespace A240126.P11067551115866972923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P11067551115866972923

/-! ## A240126.P3674579901291971013

`∩[A171688(n+1), A178251(n+1)]`
-/

namespace A240126.P3674579901291971013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240126.P3674579901291971013

/-!
# A240130: Least prime of the form prime(n)^2 + k^2, or 0 if none.

The programs for A240130, there is no canonical definition to state claims against.
-/

/-! ## A240130.P7060388239268217475

`A001248(n+1)+A240131(n+1)²`
-/

namespace A240130.P7060388239268217475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A240131 (n + 1) ^ 2

end

end A240130.P7060388239268217475

/-! ## A240130.P177976948919376492

`A000040(n+1)²+A240131(n+1)²`
-/

namespace A240130.P177976948919376492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + A240131 (n + 1) ^ 2

end

end A240130.P177976948919376492

/-! ## A240130.P16117299618934244862

`A084920(n+1)+A240131(n+1)²+1`
-/

namespace A240130.P16117299618934244862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + (A240131 (n + 1) ^ 2 + 1)

end

end A240130.P16117299618934244862

/-! ## A240130.P1564685155367503538

`A084920(n+1)+A002522(A240131(n+1))`
-/

namespace A240130.P1564685155367503538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + A002522 (A240131 (n + 1)).toNat

end

end A240130.P1564685155367503538

/-! ## A240130.P9163939014964263528

`A166010(n+1)+A087475(A240131(n+1))`
-/

namespace A240130.P9163939014964263528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1) + A087475 (A240131 (n + 1)).toNat

end

end A240130.P9163939014964263528

/-! ## A240130.P18021785777211234681

`A068486(p?[comp[n²]])`
-/

namespace A240130.P18021785777211234681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A240130.P18021785777211234681

/-! ## A240130.P9452126260694286228

`A068486(Δ[A007504(n)])`
-/

namespace A240130.P9452126260694286228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (f1 (n + 1) - f1 n).toNat

end

end A240130.P9452126260694286228

/-! ## A240130.P7031439178791461222

`A068486(record[A051698(n)])`
-/

namespace A240130.P7031439178791461222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240130.P7031439178791461222

/-! ## A240130.P3439215413327445224

`A068486(A000040(n+1))`
-/

namespace A240130.P3439215413327445224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (A000040 (n + 1)).toNat

end

end A240130.P3439215413327445224

/-! ## A240130.P2898564007189147148

`A068486(A008578(n+2))`
-/

namespace A240130.P2898564007189147148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (A008578 (n + 2)).toNat

end

end A240130.P2898564007189147148

/-! ## A240130.P5351534520127310246

`A068486(A182986(n+2))`
-/

namespace A240130.P5351534520127310246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (A182986 (n + 2)).toNat

end

end A240130.P5351534520127310246

/-! ## A240130.P3048699419500495415

`A068486(eq[2, A005128(n)])`
-/

namespace A240130.P3048699419500495415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240130.P3048699419500495415

/-! ## A240130.P5127124686144327031

`A068486(eq[2, A322366(n)])`
-/

namespace A240130.P5127124686144327031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240130.P5127124686144327031

/-! ## A240130.P9197229427433200820

`A068486(record[A006530(n+2)])`
-/

namespace A240130.P9197229427433200820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240130.P9197229427433200820

/-! ## A240130.P11389251316232385734

`A068486(record[A014963(n+2)])`
-/

namespace A240130.P11389251316232385734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240130.P11389251316232385734

/-! ## A240130.P11601288202193582034

`A068486(record[A020639(n+2)])`
-/

namespace A240130.P11601288202193582034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240130.P11601288202193582034

/-! ## A240130.P13019912560790077173

`A068486(A007504(n+1)-A007504(n))`
-/

namespace A240130.P13019912560790077173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (A007504 (n + 1) - A007504 n).toNat

end

end A240130.P13019912560790077173

/-! ## A240130.P10984192859828402142

`A281229(A100484(n+1))/2`
-/

namespace A240130.P10984192859828402142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281229 (A100484 (n + 1)).toNat : ℚ) / 2

end

end A240130.P10984192859828402142

/-!
# A240131: Least k such that prime(n)^2 + k^2 is prime, or 0 if none.

The programs for A240131, there is no canonical definition to state claims against.
-/

/-! ## A240131.P4977464067458378269

`A069003(Δ[A007504(n)])`
-/

namespace A240131.P4977464067458378269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (f1 (n + 1) - f1 n).toNat

end

end A240131.P4977464067458378269

/-! ## A240131.P5586967546409641274

`A069003(record[A051698(n)])`
-/

namespace A240131.P5586967546409641274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240131.P5586967546409641274

/-! ## A240131.P6107105516984027553

`A069003(A000040(n+1))`
-/

namespace A240131.P6107105516984027553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (A000040 (n + 1)).toNat

end

end A240131.P6107105516984027553

/-! ## A240131.P16884879323662784324

`A069003(A006005(n+1))`
-/

namespace A240131.P16884879323662784324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (A006005 (n + 1)).toNat

end

end A240131.P16884879323662784324

/-! ## A240131.P13764031287047167293

`A069003(A008578(n+2))`
-/

namespace A240131.P13764031287047167293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (A008578 (n + 2)).toNat

end

end A240131.P13764031287047167293

/-! ## A240131.P7004583849242047304

`A069003(A075643(n+2))`
-/

namespace A240131.P7004583849242047304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (A075643 (n + 2)).toNat

end

end A240131.P7004583849242047304

/-! ## A240131.P15479831100412465688

`A069003(A182986(n+2))`
-/

namespace A240131.P15479831100412465688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (A182986 (n + 2)).toNat

end

end A240131.P15479831100412465688

/-! ## A240131.P9275982464003398389

`A069003(eq[1, A003415(n)])`
-/

namespace A240131.P9275982464003398389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240131.P9275982464003398389

/-! ## A240131.P10821935326868372966

`A069003(record[A006530(n+2)])`
-/

namespace A240131.P10821935326868372966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240131.P10821935326868372966

/-! ## A240131.P1171781820887643660

`A069003(record[A014963(n+2)])`
-/

namespace A240131.P1171781820887643660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240131.P1171781820887643660

/-! ## A240131.P12459089366656251749

`A069003(record[A020639(n+2)])`
-/

namespace A240131.P12459089366656251749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240131.P12459089366656251749

/-! ## A240131.P12791204177372018588

`A069003(record[A000010(n+1)+1])`
-/

namespace A240131.P12791204177372018588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240131.P12791204177372018588

/-! ## A240131.P16637336589657998199

`A069003(record[p?[A068962(n+1)]])`
-/

namespace A240131.P16637336589657998199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240131.P16637336589657998199

/-!
# A240134: Numerator of (n-1) * ceiling(n/2) / n.

The programs for A240134, the canonical program `A240134.P1427659284845399540` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240134 has offset 1).

The definition of A240134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240134.P7155735152848235291

`n*(n+4-n*(-1)^(n+1))/4`
-/

namespace A240134.P7155735152848235291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n + 4 : ℤ) - (n : ℤ) * (-1) ^ (n + 1)) : ℚ) / 4

end

end A240134.P7155735152848235291

namespace A240134

/-- `n*(n+4-n*(-1)^(n+1))/4` -/
def P7155735152848235291.Spec : Prop :=
  ∀ n, P7155735152848235291.a n = (A240134 (n + 1) : ℚ)

theorem P7155735152848235291.correct : P7155735152848235291.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A240134, Nat.add_sub_cancel, A240134.P7155735152848235291.a, A240134.P1427659284845399540.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A240134, Nat.add_sub_cancel, A240134.P7155735152848235291.a, A240134.P1427659284845399540.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A240134

/-! ## A240134.P1427659284845399540

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=3, a(4)=12, a(5)=5`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240134

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P1427659284845399540.Spec : Prop :=
  ∀ n, P1427659284845399540.a n = A240134 (n + 1)

theorem P1427659284845399540.correct : P1427659284845399540.Spec := by
  intro n
  simp only [A240134, Nat.add_sub_cancel]

end A240134

/-! ## A240134.P9669567635242797982

`lcm(n, xor(n, -2))`
-/

namespace A240134.P9669567635242797982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.xor (n : ℤ) (-2))

end

end A240134.P9669567635242797982

namespace A240134

/-- `lcm(n, xor(n, -2))` -/
def P9669567635242797982.Spec : Prop :=
  ∀ n, (P9669567635242797982.a n : ℤ) = A240134 (n + 1)

end A240134

/-! ## A240134.P4918669398758713196

`n*ceil(C(or(1, n), n)/2)`
-/

namespace A240134.P4918669398758713196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉

end

end A240134.P4918669398758713196

namespace A240134

/-- `n*ceil(C(or(1, n), n)/2)` -/
def P4918669398758713196.Spec : Prop :=
  ∀ n, P4918669398758713196.a n = A240134 (n + 1)

end A240134

/-! ## A240134.P10512684623277565365

`n*round(C(or(1, n), n)/2)`
-/

namespace A240134.P10512684623277565365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway ((Nat.choose (Nat.lor 1 n) n : ℚ) / 2)

end

end A240134.P10512684623277565365

namespace A240134

/-- `n*round(C(or(1, n), n)/2)` -/
def P10512684623277565365.Spec : Prop :=
  ∀ n, P10512684623277565365.a n = A240134 (n + 1)

end A240134

/-! ## A240134.P14733495762049381679

`n*(1-gcd(n, ∑[n])+n)`
-/

namespace A240134.P14733495762049381679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + (n : ℤ))

end

end A240134.P14733495762049381679

namespace A240134

/-- `n*(1-gcd(n, ∑[n])+n)` -/
def P14733495762049381679.Spec : Prop :=
  ∀ n, P14733495762049381679.a n = A240134 (n + 1)

end A240134

/-! ## A240134.P13673389109689040788

`n*(n%or(1, n)/2+1)`
-/

namespace A240134.P13673389109689040788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n % Nat.lor 1 n : ℕ) : ℚ) / 2 + 1)

end

end A240134.P13673389109689040788

namespace A240134

/-- `n*(n%or(1, n)/2+1)` -/
def P13673389109689040788.Spec : Prop :=
  ∀ n, P13673389109689040788.a n = (A240134 (n + 1) : ℚ)

end A240134

/-! ## A240134.P1714564920388864815

`(C(or(1, n), n)+1)*n/2`
-/

namespace A240134.P1714564920388864815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lor 1 n) n + 1 : ℚ) * ((n : ℚ) / 2)

end

end A240134.P1714564920388864815

namespace A240134

/-- `(C(or(1, n), n)+1)*n/2` -/
def P1714564920388864815.Spec : Prop :=
  ∀ n, P1714564920388864815.a n = (A240134 (n + 1) : ℚ)

end A240134

/-! ## A240134.P1819056695197146799

`∑[2*n]-lcm(2, n²)/2`
-/

namespace A240134.P1819056695197146799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (Nat.lcm 2 (n ^ 2) : ℚ) / 2

end

end A240134.P1819056695197146799

namespace A240134

/-- `∑[2*n]-lcm(2, n²)/2` -/
def P1819056695197146799.Spec : Prop :=
  ∀ n, P1819056695197146799.a n = (A240134 (n + 1) : ℚ)

end A240134

/-! ## A240134.P6975191942445198493

`n*gcd(n+2, floor(n/2)+1)`
-/

namespace A240134.P6975191942445198493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (n + 2 : ℤ) (⌊(n : ℚ) / 2⌋ + 1)

end

end A240134.P6975191942445198493

namespace A240134

/-- `n*gcd(n+2, floor(n/2)+1)` -/
def P6975191942445198493.Spec : Prop :=
  ∀ n, (P6975191942445198493.a n : ℤ) = A240134 (n + 1)

end A240134

/-! ## A240134.P5595040408715244462

`n*floor(∑[n]/a(n-1))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A240134.P5595040408715244462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  (n : ℤ) * ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A240134.P5595040408715244462

namespace A240134

/-- `n*floor(∑[n]/a(n-1))` -/
def P5595040408715244462.Spec : Prop :=
  ∀ n, P5595040408715244462.a n = A240134 (n + 1)

end A240134

/-! ## A240134.P15634934684760149771

`n*(∑[∑[ogf(x^2/(1+2x+x^2))]]+1)`
-/

namespace A240134.P15634934684760149771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240134.P15634934684760149771

namespace A240134

/-- `n*(∑[∑[ogf(x^2/(1+2x+x^2))]]+1)` -/
def P15634934684760149771.Spec : Prop :=
  ∀ n, P15634934684760149771.a n = A240134 (n + 1)

end A240134

/-! ## A240134.P3723141067426910693

`n*(n/2*a(n-1)%2+1)` with `a(0)=0`
-/

namespace A240134.P3723141067426910693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * ((n : ℚ) / 2 * (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 : ℚ) + 1)

end

end A240134.P3723141067426910693

namespace A240134

/-- `n*(n/2*a(n-1)%2+1)` -/
def P3723141067426910693.Spec : Prop :=
  ∀ n, P3723141067426910693.a n = (A240134 (n + 1) : ℚ)

end A240134

/-! ## A240134.P8905887475251432615

`lcm(2*n-n, and(2, 2*n)-(n+2))`
-/

namespace A240134.P8905887475251432615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * n : ℤ) - (n : ℤ)) ((Nat.land 2 (2 * n) : ℤ) - (n + 2 : ℤ))

end

end A240134.P8905887475251432615

namespace A240134

/-- `lcm(2*n-n, and(2, 2*n)-(n+2))` -/
def P8905887475251432615.Spec : Prop :=
  ∀ n, (P8905887475251432615.a n : ℤ) = A240134 (n + 1)

end A240134

/-! ## A240134.P1638945485505293436

`a(n-2)+gcd(2*n, 2*and(1, n))` with `a(0)=0, a(1)=1`
-/

namespace A240134.P1638945485505293436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Nat.gcd (2 * n) (2 * Nat.land 1 n)

end

end A240134.P1638945485505293436

namespace A240134

/-- `a(n-2)+gcd(2*n, 2*and(1, n))` -/
def P1638945485505293436.Spec : Prop :=
  ∀ n, (P1638945485505293436.a n : ℤ) = A240134 (n + 1)

end A240134

/-! ## A240134.P5853055899403998048

`n*A158416(n)`
-/

namespace A240134.P5853055899403998048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A158416 n

end

end A240134.P5853055899403998048

namespace A240134

/-- `n*A158416(n)` -/
def P5853055899403998048.Spec : Prop :=
  ∀ n, P5853055899403998048.a n = A240134 (n + 1)

end A240134

/-! ## A240134.P12655670077355092335

`lcm(n, Δ[A014682(n)])`
-/

namespace A240134.P12655670077355092335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (f1 (n + 1) - f1 n)

end

end A240134.P12655670077355092335

namespace A240134

/-- `lcm(n, Δ[A014682(n)])` -/
def P12655670077355092335.Spec : Prop :=
  ∀ n, (P12655670077355092335.a n : ℤ) = A240134 (n + 1)

end A240134

/-! ## A240134.P17311526650810775822

`n*(A142150(n)+1)`
-/

namespace A240134.P17311526650810775822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A142150 n + 1)

end

end A240134.P17311526650810775822

namespace A240134

/-- `n*(A142150(n)+1)` -/
def P17311526650810775822.Spec : Prop :=
  ∀ n, P17311526650810775822.a n = A240134 (n + 1)

end A240134

/-! ## A240134.P16138184656083431230

`n*A152271(xor(1, n))`
-/

namespace A240134.P16138184656083431230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A152271 (Nat.xor 1 n)

end

end A240134.P16138184656083431230

namespace A240134

/-- `n*A152271(xor(1, n))` -/
def P16138184656083431230.Spec : Prop :=
  ∀ n, P16138184656083431230.a n = A240134 (n + 1)

end A240134

/-! ## A240134.P13267898401819636371

`n*ceil(A141310(n)/2)`
-/

namespace A240134.P13267898401819636371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(A141310 n : ℚ) / 2⌉

end

end A240134.P13267898401819636371

namespace A240134

/-- `n*ceil(A141310(n)/2)` -/
def P13267898401819636371.Spec : Prop :=
  ∀ n, P13267898401819636371.a n = A240134 (n + 1)

end A240134

/-!
# A240135: a(n) = composite(n)*2^(n - 3).

The programs for A240135, the canonical program `A240135.P474311073820611688` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240135 has offset 1).

The definition of A240135 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A240135.P474311073820611688

`A000079(n+1)*A002808(n+1)/8`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A240135

/-- `A000079(n+1)*A002808(n+1)/8` -/
def P474311073820611688.Spec : Prop :=
  ∀ n, P474311073820611688.a n = (A240135 (n + 1) : ℚ)

end A240135

/-! ## A240135.P4761931314935837818

`2^(n-2)*lt[1, ∑{e}[n, #]]`
-/

namespace A240135.P4761931314935837818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ)

end

end A240135.P4761931314935837818

namespace A240135

/-- `2^(n-2)*lt[1, ∑{e}[n, #]]` -/
def P4761931314935837818.Spec : Prop :=
  ∀ n, P4761931314935837818.a n = (A240135 (n + 1) : ℚ)

end A240135

/-! ## A240135.P15387920298254962546

`2^(n-2)*lt[2, ∏{e}[n², #]]`
-/

namespace A240135.P15387920298254962546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ)

end

end A240135.P15387920298254962546

namespace A240135

/-- `2^(n-2)*lt[2, ∏{e}[n², #]]` -/
def P15387920298254962546.Spec : Prop :=
  ∀ n, P15387920298254962546.a n = (A240135 (n + 1) : ℚ)

end A240135

/-! ## A240135.P9747753251061779361

`2^(n-2)*Δ[A053767(n)]`
-/

namespace A240135.P9747753251061779361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (f1 (n + 1) - f1 n : ℚ)

end

end A240135.P9747753251061779361

namespace A240135

/-- `2^(n-2)*Δ[A053767(n)]` -/
def P9747753251061779361.Spec : Prop :=
  ∀ n, P9747753251061779361.a n = (A240135 (n + 1) : ℚ)

end A240135

/-! ## A240135.P10078240693885469334

`2^n/4*comp[A351078(n)]`
-/

namespace A240135.P10078240693885469334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 4 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ)

end

end A240135.P10078240693885469334

namespace A240135

/-- `2^n/4*comp[A351078(n)]` -/
def P10078240693885469334.Spec : Prop :=
  ∀ n, P10078240693885469334.a n = (A240135 (n + 1) : ℚ)

end A240135

/-! ## A240135.P1375005633206052327

`2^(n-2)*A002808(n+1)`
-/

namespace A240135.P1375005633206052327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A002808 (n + 1) : ℚ)

end

end A240135.P1375005633206052327

namespace A240135

/-- `2^(n-2)*A002808(n+1)` -/
def P1375005633206052327.Spec : Prop :=
  ∀ n, P1375005633206052327.a n = (A240135 (n + 1) : ℚ)

end A240135

/-!
# A240137: Sum of n consecutive cubes starting from n^3.

The programs for A240137, the canonical program `A240137.P14122888791543597295` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240137 has offset 0).

The definition of A240137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240137.P13145092954069208534

`n²*(3*n-1)*(5*n-3)/4`
-/

namespace A240137.P13145092954069208534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((3 * n : ℤ) - 1) * ((5 * n : ℤ) - 3) : ℚ) / 4

end

end A240137.P13145092954069208534

namespace A240137

/-- `n²*(3*n-1)*(5*n-3)/4` -/
def P13145092954069208534.Spec : Prop :=
  ∀ n, P13145092954069208534.a n = (A240137 n : ℚ)

end A240137

/-! ## A240137.P14122888791543597295

`A000326(n)*A000566(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A240137

/-- `A000326(n)*A000566(n)` -/
def P14122888791543597295.Spec : Prop :=
  ∀ n, P14122888791543597295.a n = A240137 n

theorem P14122888791543597295.correct : P14122888791543597295.Spec := by
  intro n
  simp only [A240137]

end A240137

/-! ## A240137.P15558150396926579410

`C(2*n, 2)²-C(n, 2)²`
-/

namespace A240137.P15558150396926579410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 ^ 2 : ℤ) - (Nat.choose n 2 ^ 2 : ℤ)

end

end A240137.P15558150396926579410

namespace A240137

/-- `C(2*n, 2)²-C(n, 2)²` -/
def P15558150396926579410.Spec : Prop :=
  ∀ n, P15558150396926579410.a n = A240137 n

end A240137

/-! ## A240137.P12659127136311808381

`A000384(n)²-(n-∑[n])²`
-/

namespace A240137.P12659127136311808381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n ^ 2 - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2

end

end A240137.P12659127136311808381

namespace A240137

/-- `A000384(n)²-(n-∑[n])²` -/
def P12659127136311808381.Spec : Prop :=
  ∀ n, P12659127136311808381.a n = A240137 n

end A240137

/-! ## A240137.P4628862572006828906

`floor(C(3*n, 2)/3*(A192136(n)-1))`
-/

namespace A240137.P4628862572006828906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (3 * n) 2 : ℚ) / 3 * (A192136 n - 1 : ℚ)⌋

end

end A240137.P4628862572006828906

namespace A240137

/-- `floor(C(3*n, 2)/3*(A192136(n)-1))` -/
def P4628862572006828906.Spec : Prop :=
  ∀ n, P4628862572006828906.a n = A240137 n

end A240137

/-! ## A240137.P14376127187141541263

`(A002939(n)-A000326(n))*A000326(n)`
-/

namespace A240137.P14376127187141541263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002939 n - A000326 n) * A000326 n

end

end A240137.P14376127187141541263

namespace A240137

/-- `(A002939(n)-A000326(n))*A000326(n)` -/
def P14376127187141541263.Spec : Prop :=
  ∀ n, P14376127187141541263.a n = A240137 n

end A240137

/-! ## A240137.P7146122397975780963

`(A006137(n)-A001844(n))*A000326(n)`
-/

namespace A240137.P7146122397975780963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006137 n - A001844 n) * A000326 n

end

end A240137.P7146122397975780963

namespace A240137

/-- `(A006137(n)-A001844(n))*A000326(n)` -/
def P7146122397975780963.Spec : Prop :=
  ∀ n, P7146122397975780963.a n = A240137 n

end A240137

/-! ## A240137.P8177145998711604658

`A303383(A004277(n))`
-/

namespace A240137.P8177145998711604658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303383 (A004277 n).toNat

end

end A240137.P8177145998711604658

namespace A240137

/-- `A303383(A004277(n))` -/
def P8177145998711604658.Spec : Prop :=
  ∀ n, P8177145998711604658.a n = A240137 n

end A240137

/-! ## A240137.P10696486202935162177

`A303383(A004275(n+1))`
-/

namespace A240137.P10696486202935162177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303383 (A004275 (n + 1)).toNat

end

end A240137.P10696486202935162177

namespace A240137

/-- `A303383(A004275(n+1))` -/
def P10696486202935162177.Spec : Prop :=
  ∀ n, P10696486202935162177.a n = A240137 n

end A240137

/-! ## A240137.P9416756617305725581

`A161680(A004277(n))²-A161680(n)²`
-/

namespace A240137.P9416756617305725581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004277 n).toNat ^ 2 - A161680 n ^ 2

end

end A240137.P9416756617305725581

namespace A240137

/-- `A161680(A004277(n))²-A161680(n)²` -/
def P9416756617305725581.Spec : Prop :=
  ∀ n, P9416756617305725581.a n = A240137 n

end A240137

/-! ## A240137.P383212648123190957

`A161680(A005843(n))²-A161680(n)²`
-/

namespace A240137.P383212648123190957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A005843 n).toNat ^ 2 - A161680 n ^ 2

end

end A240137.P383212648123190957

namespace A240137

/-- `A161680(A005843(n))²-A161680(n)²` -/
def P383212648123190957.Spec : Prop :=
  ∀ n, P383212648123190957.a n = A240137 n

end A240137

/-! ## A240137.P14694908701215639371

`∑[A212744(2*n)]-A212744(2*n)`
-/

namespace A240137.P14694908701215639371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212744 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212744 (2 * n)

end

end A240137.P14694908701215639371

namespace A240137

/-- `∑[A212744(2*n)]-A212744(2*n)` -/
def P14694908701215639371.Spec : Prop :=
  ∀ n, P14694908701215639371.a n = A240137 n

end A240137

/-! ## A240137.P4068629410201670904

`A303383(2*n+1)-A309335(2*n)`
-/

namespace A240137.P4068629410201670904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303383 (2 * n + 1) - A309335 (2 * n)

end

end A240137.P4068629410201670904

namespace A240137

/-- `A303383(2*n+1)-A309335(2*n)` -/
def P4068629410201670904.Spec : Prop :=
  ∀ n, P4068629410201670904.a n = A240137 n

end A240137

/-! ## A240137.P2699369396663040243

`A327319(2*n+1)-(A327319(n+1)+n)`
-/

namespace A240137.P2699369396663040243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327319 (2 * n + 1) - (A327319 (n + 1) + (n : ℤ))

end

end A240137.P2699369396663040243

namespace A240137

/-- `A327319(2*n+1)-(A327319(n+1)+n)` -/
def P2699369396663040243.Spec : Prop :=
  ∀ n, P2699369396663040243.a n = A240137 n

end A240137

/-! ## A240137.P14446804380935147097

`A130519(4*n)²-A130519(2*n)²`
-/

namespace A240137.P14446804380935147097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (4 * n) ^ 2 - A130519 (2 * n) ^ 2

end

end A240137.P14446804380935147097

namespace A240137

/-- `A130519(4*n)²-A130519(2*n)²` -/
def P14446804380935147097.Spec : Prop :=
  ∀ n, P14446804380935147097.a n = A240137 n

end A240137

/-! ## A240137.P10753645753287134758

`floor(C(3*n, 2)/3*A130520(5*n))`
-/

namespace A240137.P10753645753287134758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (3 * n) 2 : ℚ) / 3 * (A130520 (5 * n) : ℚ)⌋

end

end A240137.P10753645753287134758

namespace A240137

/-- `floor(C(3*n, 2)/3*A130520(5*n))` -/
def P10753645753287134758.Spec : Prop :=
  ∀ n, P10753645753287134758.a n = A240137 n

end A240137

/-! ## A240137.P9708363034163116114

`A022264(n)²-A022274(n²)`
-/

namespace A240137.P9708363034163116114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n ^ 2 - A022274 (n ^ 2)

end

end A240137.P9708363034163116114

namespace A240137

/-- `A022264(n)²-A022274(n²)` -/
def P9708363034163116114.Spec : Prop :=
  ∀ n, P9708363034163116114.a n = A240137 n

end A240137

/-!
# A240138: Number of partitions of n into distinct parts, where the difference between the number of odd parts and the number of even parts is 2.

The programs for A240138, there is no canonical definition to state claims against.
-/

/-! ## A240138.P16134166417539346221

`A239881(n+3)-A239880(n+4)`
-/

namespace A240138.P16134166417539346221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239881 (n + 3) - A239880 (n + 4)

end

end A240138.P16134166417539346221

/-! ## A240138.P507267041348406309

`A239241(n+3)-Δ[A239880(n+3)]`
-/

namespace A240138.P507267041348406309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239880 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239241 (n + 3) - (f1 (n + 1) - f1 n)

end

end A240138.P507267041348406309

/-! ## A240138.P5163543850695684762

`A319951(A319974(n)^A082898(n+1))`
-/

namespace A240138.P5163543850695684762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (SequenceMachineLib.roundAway ((A319974 n : ℚ) ^ (A082898 (n + 1) : ℤ))).toNat

end

end A240138.P5163543850695684762

/-! ## A240138.P5058403519278994657

`A029182(eq[A029208(n), A029235(n+2)])`
-/

namespace A240138.P5058403519278994657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029208 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029235 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029182 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A240138.P5058403519278994657

/-! ## A240138.P8247249708480337047

`A239239(n)-A008683(A182780(n))`
-/

namespace A240138.P8247249708480337047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239239 n - A008683 (A182780 n).toNat

end

end A240138.P8247249708480337047

/-!
# A240139: Number of partitions of n into distinct parts, where the difference between the number of odd parts and the number of even parts is 3.

The programs for A240139, there is no canonical definition to state claims against.
-/

/-! ## A240139.P8960580561013794677

`A008743(n)*A036036(A000079(n))`
-/

namespace A240139.P8960580561013794677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 n * A036036 (A000079 n).toNat

end

end A240139.P8960580561013794677

/-! ## A240139.P9093768369641713044

`A029179(n)*A036036(A000079(n))`
-/

namespace A240139.P9093768369641713044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029179 n * A036036 (A000079 n).toNat

end

end A240139.P9093768369641713044

/-! ## A240139.P17502842568902755815

`A008743(n)*A151692(A326588(n))`
-/

namespace A240139.P17502842568902755815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 n * A151692 (A326588 n).toNat

end

end A240139.P17502842568902755815

/-! ## A240139.P10193865778749493262

`A029179(n)*A151692(A326588(n))`
-/

namespace A240139.P10193865778749493262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029179 n * A151692 (A326588 n).toNat

end

end A240139.P10193865778749493262

/-! ## A240139.P12413426547535022012

`A008743(n)*A215745(A187829(n+1))`
-/

namespace A240139.P12413426547535022012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 n * A215745 (A187829 (n + 1)).toNat

end

end A240139.P12413426547535022012

/-!
# A240140: Number of partitions of n into distinct parts, where the difference between the number of odd parts and the number of even parts is 4.

The programs for A240140, there is no canonical definition to state claims against.
-/

/-! ## A240140.P2236153704206355406

`A046660(A288400(n))+A000007(n)`
-/

namespace A240140.P2236153704206355406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A288400 n).toNat + A000007 n

end

end A240140.P2236153704206355406

/-! ## A240140.P596558728999996111

`xor(A035363(n), A341618(A133221(n)))`
-/

namespace A240140.P596558728999996111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035363 n) (A341618 (A133221 n).toNat)

end

end A240140.P596558728999996111

/-! ## A240140.P15098151466096556912

`xor(A240145(n), A341618(A133221(n)))`
-/

namespace A240140.P15098151466096556912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A240145 (n + 81)) (A341618 (A133221 n).toNat)

end

end A240140.P15098151466096556912

/-! ## A240140.P714477301352169399

`A046660(A080386(3*n+1))+A046660(A288400(n))`
-/

namespace A240140.P714477301352169399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A080386 (3 * n + 1)).toNat + A046660 (A288400 n).toNat

end

end A240140.P714477301352169399

/-! ## A240140.P16444891950651820260

`A325406(n*A129600(n))`
-/

namespace A240140.P16444891950651820260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325406 ((n : ℤ) * A129600 n).toNat

end

end A240140.P16444891950651820260

/-!
# A240141: Number of partitions of n into distinct parts, where the difference between the number of odd parts and the number of even parts is 5.

The programs for A240141, there is no canonical definition to state claims against.
-/

/-! ## A240141.P1688607654334611348

`xor(A035363(n), A102683(2^n))`
-/

namespace A240141.P1688607654334611348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035363 n) (A102683 (2 ^ n))

end

end A240141.P1688607654334611348

/-! ## A240141.P7578779517030058022

`C(A007828(A016116(n)), ∑{d}[n+1, #]-(n+1))`
-/

namespace A240141.P7578779517030058022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007828 (A016116 n).toNat).toNat (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)).toNat

end

end A240141.P7578779517030058022

/-! ## A240141.P4292183557238761356

`A178798(A037958(n))+A035363(n)`
-/

namespace A240141.P4292183557238761356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A037958 n).toNat + A035363 n

end

end A240141.P4292183557238761356

/-! ## A240141.P16157843336207792185

`A113685(∑[A276512(n)])`
-/

namespace A240141.P16157843336207792185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113685 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A240141.P16157843336207792185

/-! ## A240141.P3649508675956171972

`A035363(n)-A295883(A099234(n))`
-/

namespace A240141.P3649508675956171972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n - A295883 (A099234 n).toNat

end

end A240141.P3649508675956171972

/-!
# A240142: Number of partitions of n into distinct parts, where the difference between the number of odd parts and the number of even parts is 6.

The programs for A240142, there is no canonical definition to state claims against.
-/

/-! ## A240142.P14248358111972164091

`xor(A035363(n), A276605(A185036(n)))`
-/

namespace A240142.P14248358111972164091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035363 n) (A276605 (A185036 n).toNat)

end

end A240142.P14248358111972164091

/-! ## A240142.P9706297413871257584

`xor(A240145(n), A276605(A185036(n)))`
-/

namespace A240142.P9706297413871257584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A240145 (n + 81)) (A276605 (A185036 n).toNat)

end

end A240142.P9706297413871257584

/-! ## A240142.P16294209854784447218

`xor(A240146(n), A276605(A185036(n)))`
-/

namespace A240142.P16294209854784447218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A240146 (n + 100)) (A276605 (A185036 n).toNat)

end

end A240142.P16294209854784447218

/-! ## A240142.P13444405295826023840

`xor(A035363(n), A057498(A119620(n)))`
-/

namespace A240142.P13444405295826023840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035363 n) (A057498 (A119620 n).toNat)

end

end A240142.P13444405295826023840

/-! ## A240142.P17375104254100337062

`xor(A035363(n), A037800(A185043(n)))`
-/

namespace A240142.P17375104254100337062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035363 n) (A037800 (A185043 n).toNat)

end

end A240142.P17375104254100337062

/-!
# A240143: Number of partitions of n into distinct parts, where the difference between the number of odd parts and the number of even parts is 7.

The programs for A240143, there is no canonical definition to state claims against.
-/

/-! ## A240143.P8337214583517709119

`A178798(A003520(n))+A035363(n)`
-/

namespace A240143.P8337214583517709119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A003520 n).toNat + A035363 n

end

end A240143.P8337214583517709119

/-! ## A240143.P14614280282355384921

`A178798(A241389(n))+A035363(n)`
-/

namespace A240143.P14614280282355384921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A241389 n).toNat + A035363 n

end

end A240143.P14614280282355384921

/-! ## A240143.P7904145135036815618

`A178798(A327691(n))+A035363(n)`
-/

namespace A240143.P7904145135036815618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A327691 n).toNat + A035363 n

end

end A240143.P7904145135036815618

/-! ## A240143.P17260780025050672148

`A240145(n)+A178798(A241389(n))`
-/

namespace A240143.P17260780025050672148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240145 (n + 81) + A178798 (A241389 n).toNat

end

end A240143.P17260780025050672148

/-! ## A240143.P1051872055330727486

`A240146(n)+A178798(A241389(n))`
-/

namespace A240143.P1051872055330727486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240146 (n + 100) + A178798 (A241389 n).toNat

end

end A240143.P1051872055330727486

/-!
# A240144: Number of partitions of n into distinct parts, where the difference between the number of odd parts and the number of even parts is 8.

The programs for A240144, there is no canonical definition to state claims against.
-/

/-! ## A240144.P13674433456510218629

`A178798(A226874(n))+A035363(n)`
-/

namespace A240144.P13674433456510218629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A226874 n).toNat + A035363 n

end

end A240144.P13674433456510218629

/-! ## A240144.P15669769149674780556

`A240145(n)+A178798(A226874(n))`
-/

namespace A240144.P15669769149674780556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240145 (n + 81) + A178798 (A226874 n).toNat

end

end A240144.P15669769149674780556

/-! ## A240144.P13904181116917233882

`abs(A178798(A026812(n))-A035363(n))`
-/

namespace A240144.P13904181116917233882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178798 (A026812 n).toNat - A035363 n|

end

end A240144.P13904181116917233882

/-! ## A240144.P4257446815884990533

`abs(A178798(A026812(n))-A240145(n))`
-/

namespace A240144.P4257446815884990533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178798 (A026812 n).toNat - A240145 (n + 81)|

end

end A240144.P4257446815884990533

/-! ## A240144.P17327120653676981229

`A178798(A135578(n+5))+A035363(n)`
-/

namespace A240144.P17327120653676981229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A135578 (n + 5)).toNat + A035363 n

end

end A240144.P17327120653676981229

/-!
# A240145: Number of partitions of n into distinct parts, where the difference between the number of odd parts and the number of even parts is 9.

The programs for A240145, there is no canonical definition to state claims against.
-/

/-! ## A240145.P16546052825081995936

`A178780(2*n+1)+A035363(n)-A025469(A096765(3*(n+1)))`
-/

namespace A240145.P16546052825081995936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 (2 * n + 1) + (A035363 n - A025469 (A096765 (3 * (n + 1))).toNat)

end

end A240145.P16546052825081995936

/-! ## A240145.P5409840760173173059

`A178780(2*n+1)+A035363(n)-A335520(A000700(2*n+3))`
-/

namespace A240145.P5409840760173173059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 (2 * n + 1) + (A035363 n - A335520 (A000700 (2 * n + 3)).toNat)

end

end A240145.P5409840760173173059

/-! ## A240145.P11845986833914652214

`A035363(n)-A178798(A001996(n))`
-/

namespace A240145.P11845986833914652214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n - A178798 (A001996 n).toNat

end

end A240145.P11845986833914652214

/-! ## A240145.P818272163509299868

`A035363(n)-A178798(A078657(n))`
-/

namespace A240145.P818272163509299868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n - A178798 (A078657 n).toNat

end

end A240145.P818272163509299868

/-! ## A240145.P1005906485038683643

`A240146(n)-A178798(A001996(n))`
-/

namespace A240145.P1005906485038683643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240146 (n + 100) - A178798 (A001996 n).toNat

end

end A240145.P1005906485038683643

/-!
# A240146: Number of partitions of n into distinct parts, where the difference between the number of odd parts and the number of even parts is 10.

The programs for A240146, there is no canonical definition to state claims against.
-/

/-! ## A240146.P15973316330991782722

`A178780(A240865(n))+A035363(n)`
-/

namespace A240146.P15973316330991782722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 (A240865 n).toNat + A035363 n

end

end A240146.P15973316330991782722

/-! ## A240146.P1076969691271820077

`A100047(A089458(n+1))+A035363(n)`
-/

namespace A240146.P1076969691271820077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (A089458 (n + 1)).toNat + A035363 n

end

end A240146.P1076969691271820077

/-! ## A240146.P2883005904972145803

`A178798(A135578(n+1))+A035363(n)`
-/

namespace A240146.P2883005904972145803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A135578 (n + 1)).toNat + A035363 n

end

end A240146.P2883005904972145803

/-! ## A240146.P2673637517243541305

`A035363(n)-A178798(A318205(n+1))`
-/

namespace A240146.P2673637517243541305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n - A178798 (A318205 (n + 1)).toNat

end

end A240146.P2673637517243541305

/-! ## A240146.P6629198258972623131

`A035363(n)-A055641(A157155(n))`
-/

namespace A240146.P6629198258972623131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n - A055641 (A157155 n).toNat

end

end A240146.P6629198258972623131

/-!
# A240147: Number of n X n 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240147, there is no canonical definition to state claims against.
-/

/-! ## A240147.P10692319851048695383

`A240153(∑[4*n]+1)`
-/

namespace A240147.P10692319851048695383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240147.P10692319851048695383

/-! ## A240147.P5825626991780237361

`record[A240153(A152271(n²))]`
-/

namespace A240147.P5825626991780237361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240147.P5825626991780237361

/-! ## A240147.P16420742592950603233

`lcm(gcd(2, n), A240153(A001844(n)))`
-/

namespace A240147.P16420742592950603233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 2 n : ℤ) (A240153 (A001844 n).toNat)

end

end A240147.P16420742592950603233

/-!
# A240148: Number of nX2 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240148, there is no canonical definition to state claims against.
-/

/-! ## A240148.P3579837056366319230

`A240153(∑[n+2])`
-/

namespace A240148.P3579837056366319230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240148.P3579837056366319230

/-! ## A240148.P13243267899727701759

`record[A240153(abs(A201163(n)))]`
-/

namespace A240148.P13243267899727701759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240148.P13243267899727701759

/-! ## A240148.P11193573124060747402

`A240153(A000096(n+1))+A025469(n)`
-/

namespace A240148.P11193573124060747402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A000096 (n + 1)).toNat + A025469 n

end

end A240148.P11193573124060747402

/-! ## A240148.P900277234951021680

`A240153(A000096(n+1))+A185255(n)`
-/

namespace A240148.P900277234951021680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A000096 (n + 1)).toNat + A185255 n

end

end A240148.P900277234951021680

/-! ## A240148.P5260900021407113968

`A240153(A000096(n+1))+A185284(n)`
-/

namespace A240148.P5260900021407113968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A000096 (n + 1)).toNat + A185284 n

end

end A240148.P5260900021407113968

/-!
# A240149: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240149, there is no canonical definition to state claims against.
-/

/-! ## A240149.P6849071497868403166

`A240153(∑[n+3]+1)`
-/

namespace A240149.P6849071497868403166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240149.P6849071497868403166

/-!
# A240150: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240150, there is no canonical definition to state claims against.
-/

/-! ## A240150.P8211899385573301857

`A240153(Δ[n²]+∑[n+2]+4)`
-/

namespace A240150.P8211899385573301857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A240150.P8211899385573301857

/-! ## A240150.P13511071896847576397

`record[A240153(A141214(∑[(-1)^(n%3)]))]`
-/

namespace A240150.P13511071896847576397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A141214 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240150.P13511071896847576397

/-! ## A240150.P6321880684383938985

`record[A240153(A141214(∑{e}[n+1, #]+1))]`
-/

namespace A240150.P6321880684383938985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A141214 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240150.P6321880684383938985

/-! ## A240150.P9162975404693014651

`A240153(A141214(n+1))+A025469(n)`
-/

namespace A240150.P9162975404693014651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A141214 (n + 1)).toNat + A025469 n

end

end A240150.P9162975404693014651

/-! ## A240150.P13865131955386316230

`A240153(A141214(n+1))+A185255(n)`
-/

namespace A240150.P13865131955386316230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A141214 (n + 1)).toNat + A185255 n

end

end A240150.P13865131955386316230

/-!
# A240151: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240151, there is no canonical definition to state claims against.
-/

/-! ## A240151.P16875691840754715012

`A240153(∑[n+5]+6)`
-/

namespace A240151.P16875691840754715012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A240151.P16875691840754715012

/-! ## A240151.P12017474675953861433

`A240153(A046691(n+3))+A090318(n+1)`
-/

namespace A240151.P12017474675953861433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A046691 (n + 3)).toNat + A090318 (n + 1)

end

end A240151.P12017474675953861433

/-!
# A240152: Number of nX6 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240152, there is no canonical definition to state claims against.
-/

/-! ## A240152.P8267779506679298307

`A240153(A052905(n+3))`
-/

namespace A240152.P8267779506679298307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A052905 (n + 3)).toNat

end

end A240152.P8267779506679298307

/-! ## A240152.P17385311783551175997

`A240153(A056119(n)+16)`
-/

namespace A240152.P17385311783551175997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A056119 n + 16).toNat

end

end A240152.P17385311783551175997

/-! ## A240152.P13707061618338063355

`A240153(eq[3, A219347(n)])`
-/

namespace A240152.P13707061618338063355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240152.P13707061618338063355

/-! ## A240152.P14733119175556156660

`A240153(eq[5, A193592(n)])`
-/

namespace A240152.P14733119175556156660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240152.P14733119175556156660

/-! ## A240152.P14307631119967698183

`A240153(eq[8, A258709(n)])`
-/

namespace A240152.P14307631119967698183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240152.P14307631119967698183

/-!
# A240154: Number of 2Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240154, there is no canonical definition to state claims against.
-/

/-! ## A240154.P11239148603629601065

`A240153(∑[n+1]+2)`
-/

namespace A240154.P11239148603629601065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240154.P11239148603629601065

/-! ## A240154.P471690662275052145

`record[A240153(n+3)/A110608(n)]`
-/

namespace A240154.P471690662275052145
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240153 (n + 3) : ℚ) / (A110608 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240154.P471690662275052145

/-! ## A240154.P13303292948796494903

`record[A240153(n+3)/A159764(n)]`
-/

namespace A240154.P13303292948796494903
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240153 (n + 3) : ℚ) / (A159764 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240154.P13303292948796494903

/-! ## A240154.P6907652777483933587

`record[gcd(A002262(n), A240153(n+2))]`
-/

namespace A240154.P6907652777483933587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A240153 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240154.P6907652777483933587

/-! ## A240154.P10683466644166808895

`record[A240153(n+2)/A240192(n+1)]`
-/

namespace A240154.P10683466644166808895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240153 (n + 2) : ℚ) / (A240192 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240154.P10683466644166808895

/-!
# A240155: Number of 3Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240155, there is no canonical definition to state claims against.
-/

/-! ## A240155.P4792343860102592585

`A240153(∑[n+2]+4)`
-/

namespace A240155.P4792343860102592585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240155.P4792343860102592585

/-! ## A240155.P4731333599517228303

`abs(1-A240153(A167614(n+1)))+1`
-/

namespace A240155.P4731333599517228303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A240153 (A167614 (n + 1)).toNat| + 1

end

end A240155.P4731333599517228303

/-! ## A240155.P7795583650542720656

`record[A240153(n+4)/A008275(n+1)]`
-/

namespace A240155.P7795583650542720656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240153 (n + 4) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240155.P7795583650542720656

/-! ## A240155.P16702362499653212295

`A240153(A167614(n+1))+A011727(n)`
-/

namespace A240155.P16702362499653212295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A167614 (n + 1)).toNat + A011727 n

end

end A240155.P16702362499653212295

/-! ## A240155.P8594784781023238850

`A240153(A167614(n+1))+A025469(n)`
-/

namespace A240155.P8594784781023238850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A167614 (n + 1)).toNat + A025469 n

end

end A240155.P8594784781023238850

/-!
# A240156: Number of 4Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240156, there is no canonical definition to state claims against.
-/

/-! ## A240156.P18394110238229848619

`A240153(A141214(n)+7)`
-/

namespace A240156.P18394110238229848619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A141214 n + 7).toNat

end

end A240156.P18394110238229848619

/-! ## A240156.P4610534470584757303

`A240153(A052905(n)+9)`
-/

namespace A240156.P4610534470584757303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A052905 n + 9).toNat

end

end A240156.P4610534470584757303

/-! ## A240156.P9755406135782925951

`A240153(A055999(n)+10)`
-/

namespace A240156.P9755406135782925951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A055999 n + 10).toNat

end

end A240156.P9755406135782925951

/-! ## A240156.P3797305617896000447

`A240153(eq[5, A066657(n)])`
-/

namespace A240156.P3797305617896000447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240156.P3797305617896000447

/-! ## A240156.P10601363370180343434

`A240153(A167614(n+2)+1)`
-/

namespace A240156.P10601363370180343434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A167614 (n + 2) + 1).toNat

end

end A240156.P10601363370180343434

/-!
# A240157: Number of 5Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240157, there is no canonical definition to state claims against.
-/

/-! ## A240157.P1236697269356275249

`A240153(A167499(n+3))`
-/

namespace A240157.P1236697269356275249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A167499 (n + 3)).toNat

end

end A240157.P1236697269356275249

/-! ## A240157.P783158779512050342

`A240153(A155212(n)+13)`
-/

namespace A240157.P783158779512050342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A155212 n + 13).toNat

end

end A240157.P783158779512050342

/-! ## A240157.P16371102659908194169

`A240153(A056000(n)+15)`
-/

namespace A240157.P16371102659908194169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A056000 n + 15).toNat

end

end A240157.P16371102659908194169

/-! ## A240157.P8138744795703302647

`A240153(eq[7, A066657(n)])`
-/

namespace A240157.P8138744795703302647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240157.P8138744795703302647

/-! ## A240157.P4121293574062473139

`A240153(A167614(n+3)+2)`
-/

namespace A240157.P4121293574062473139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A167614 (n + 3) + 2).toNat

end

end A240157.P4121293574062473139

/-!
# A240158: Number of 6Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240158, there is no canonical definition to state claims against.
-/

/-! ## A240158.P6121638967199093838

`A240153(A056115(n)+21)`
-/

namespace A240158.P6121638967199093838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A056115 n + 21).toNat

end

end A240158.P6121638967199093838

/-! ## A240158.P3253073959283705683

`A240153(A167499(n+4)+1)`
-/

namespace A240158.P3253073959283705683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A167499 (n + 4) + 1).toNat

end

end A240158.P3253073959283705683

/-! ## A240158.P3078968754438360093

`A240153(A167614(n+4)+3)`
-/

namespace A240158.P3078968754438360093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A167614 (n + 4) + 3).toNat

end

end A240158.P3078968754438360093

/-! ## A240158.P8858901029545928687

`A240153(A000124(n+5)+5)`
-/

namespace A240158.P8858901029545928687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A000124 (n + 5) + 5).toNat

end

end A240158.P8858901029545928687

/-! ## A240158.P12444384464541574502

`A240153(A000217(n+5)+6)`
-/

namespace A240158.P12444384464541574502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240153 (A000217 (n + 5) + 6).toNat

end

end A240158.P12444384464541574502

/-!
# A240159: Triangle read by rows: T(n,k) = number of trees with n vertices and k segments (n >= 2; 1 <= k <= n-1).

The programs for A240159, there is no canonical definition to state claims against.
-/

/-! ## A240159.P5346535586098967429

`A238416(∑[char[∑[n]]]²-n+1)`
-/

namespace A240159.P5346535586098967429
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238416 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A240159.P5346535586098967429

/-! ## A240159.P1480246351949295610

`A240348(A240381(n+1))+A191312(n)`
-/

namespace A240159.P1480246351949295610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240348 (A240381 (n + 1)).toNat + A191312 n

end

end A240159.P1480246351949295610

/-! ## A240159.P903308425738566346

`A191312(n)+A186747(A191312(3*n+4))`
-/

namespace A240159.P903308425738566346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191312 n + A186747 (A191312 (3 * n + 4)).toNat

end

end A240159.P903308425738566346

/-! ## A240159.P2212662169226809412

`A191312(n)+A185284(A165885(n))`
-/

namespace A240159.P2212662169226809412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191312 n + A185284 (A165885 n).toNat

end

end A240159.P2212662169226809412

/-!
# A240160: Least number k such that (k!-n)/k is prime, or 0 if no such k exists.

The programs for A240160, there is no canonical definition to state claims against.
-/

/-! ## A240160.P17136138167614556429

`A028233(n+1)*A316345(A097083(n+1))`
-/

namespace A240160.P17136138167614556429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1) * A316345 (A097083 (n + 1)).toNat

end

end A240160.P17136138167614556429

/-!
# A240161: Numbers m such that (k! - m)/k is prime for some k.

The programs for A240161, there is no canonical definition to state claims against.
-/

/-! ## A240161.P7125099613510169463

`lt[0, A240160(n+1)]+1`
-/

namespace A240161.P7125099613510169463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240160 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A240161.P7125099613510169463

/-! ## A240161.P9353151028153802830

`record[lcm(n+4, A240160(n+4))]`
-/

namespace A240161.P9353151028153802830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 4 : ℤ) (A240160 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240161.P9353151028153802830

/-! ## A240161.P2853674033841593684

`lt[0, A240160(A028310(n))]`
-/

namespace A240161.P2853674033841593684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240160 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A240161.P2853674033841593684

/-! ## A240161.P8664939365338515751

`A020725(lt[0, A240160(n+1)])`
-/

namespace A240161.P8664939365338515751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A240161.P8664939365338515751

/-! ## A240161.P10326625734645781336

`lt[0, A240160(A233583(n+1))]`
-/

namespace A240161.P10326625734645781336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240160 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A240161.P10326625734645781336

/-!
# A240162: Tower of 3's modulo n.

The programs for A240162, there is no canonical definition to state claims against.
-/

/-! ## A240162.P10541206446702106771

`A014222(A185816(n+1))%(n+1)`
-/

namespace A240162.P10541206446702106771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014222 (A185816 (n + 1)).toNat) (n + 1 : ℤ)

end

end A240162.P10541206446702106771

/-! ## A240162.P16739766784992903148

`A333339(A000056(n+1))%(n+1)`
-/

namespace A240162.P16739766784992903148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333339 (A000056 (n + 1)).toNat) (n + 1 : ℤ)

end

end A240162.P16739766784992903148

/-! ## A240162.P10156707125051625868

`A333339(A065430(n+1))%(n+1)`
-/

namespace A240162.P10156707125051625868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333339 (A065430 (n + 1)).toNat) (n + 1 : ℤ)

end

end A240162.P10156707125051625868

/-! ## A240162.P14368883920804023897

`A333339(A327570(n+1))%(n+1)`
-/

namespace A240162.P14368883920804023897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333339 (A327570 (n + 1)).toNat) (n + 1 : ℤ)

end

end A240162.P14368883920804023897

/-! ## A240162.P7663987513719358420

`(3^A141550(A141605(n+1)))%(n+1)`
-/

namespace A240162.P7663987513719358420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A141550 (A141605 (n + 1)).toNat : ℤ))) (n + 1 : ℤ)

end

end A240162.P7663987513719358420

/-!
# A240163: Numbers m such that (k! + m)/k is prime for some k.

The programs for A240163, there is no canonical definition to state claims against.
-/

/-! ## A240163.P3712730213004386139

`lt[0, A245756(n+1)]+1`
-/

namespace A240163.P3712730213004386139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245756 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A240163.P3712730213004386139

/-! ## A240163.P617321005164464460

`record[lcm(A028310(n+1), A245756(n+1))]`
-/

namespace A240163.P617321005164464460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (n + 1)) (A245756 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240163.P617321005164464460

/-! ## A240163.P13699366615405223826

`lt[A000007(n), A245756(A028310(n))]`
-/

namespace A240163.P13699366615405223826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245756 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A240163.P13699366615405223826

/-! ## A240163.P1343732970063754976

`lt[A000038(n), A245756(A028310(n))]`
-/

namespace A240163.P1343732970063754976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245756 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A240163.P1343732970063754976

/-! ## A240163.P4087691109611676

`lt[0, A245756(A028310(n))*A311246(n)-1]`
-/

namespace A240163.P4087691109611676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245756 (A028310 n).toNat * A311246 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A240163.P4087691109611676

/-! ## A240163.P15486063690304376462

`eq[0, (A014573(A245756(n+1)+2)+A000038(n))%2]+1`
-/

namespace A240163.P15486063690304376462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014573 (A245756 (n + 1) + 2).toNat + A000038 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A240163.P15486063690304376462

/-!
# A240165: E.g.f.: exp( x*(1 + exp(2*x)) ).

The programs for A240165, there is no canonical definition to state claims against.
-/

/-! ## A240165.P5535820237422613330

`A293482(A356267(n)+A106852(n))`
-/

namespace A240165.P5535820237422613330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293482 (A356267 n + A106852 n).toNat

end

end A240165.P5535820237422613330

/-! ## A240165.P11300375615067112422

`and(A049409(A041499(n)), A052897(n))`
-/

namespace A240165.P11300375615067112422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049409 (A041499 n).toNat) (A052897 n)

end

end A240165.P11300375615067112422

/-!
# A240167: Lesser of the first cousin prime pair with n digits.

The programs for A240167, there is no canonical definition to state claims against.
-/

/-! ## A240167.P16070231330657029502

`A059843(round(acot(∏{e}[n+1, -#]))+10^n)`
-/

namespace A240167.P16070231330657029502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ)) + (10 ^ n : ℤ)).toNat

end

end A240167.P16070231330657029502

/-!
# A240168: T(n,k) is the number of unlabeled graphs of n vertices and k edges that have endpoints, where an endpoint is a vertex with degree 1.

The programs for A240168, there is no canonical definition to state claims against.
-/

/-! ## A240168.P3035649503305154766

`∑{p}[A224085(n), A243081(#)]`
-/

namespace A240168.P3035649503305154766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A243081 p

end

end A240168.P3035649503305154766

/-!
# A240169: Numbers m such that (6*m)^3 is the sum of a twin prime pair.

The programs for A240169, there is no canonical definition to state claims against.
-/

/-! ## A240169.P5814562852642886420

`1/6*A245591(n+2)^(1/3)`
-/

namespace A240169.P5814562852642886420
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 6 : ℝ) * (A245591 (n + 2) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A240169.P5814562852642886420

/-! ## A240169.P3736507950896103142

`A172494(n+2)/3`
-/

namespace A240169.P3736507950896103142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172494 (n + 2) : ℚ) / 3

end

end A240169.P3736507950896103142

/-! ## A240169.P2167861644122025526

`a(n-1)*ratio[root(A245591(n+1), 3)]` with `a(0)=1`
-/

namespace A240169.P2167861644122025526
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A245591 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) / f1 n)

end

end A240169.P2167861644122025526

/-! ## A240169.P10930672252735234028

`∑[A285870(Δ[A172494(n+1)])]`
-/

namespace A240169.P10930672252735234028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172494 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240169.P10930672252735234028

/-! ## A240169.P7769891541146323409

`A002264(A172494(n+2))`
-/

namespace A240169.P7769891541146323409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A172494 (n + 2)).toNat

end

end A240169.P7769891541146323409

/-! ## A240169.P4192180224333485029

`A008611(A172494(n+2)+1)`
-/

namespace A240169.P4192180224333485029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A172494 (n + 2) + 1).toNat

end

end A240169.P4192180224333485029

/-! ## A240169.P17896015163371147017

`A008620(A172494(n+2)-1)`
-/

namespace A240169.P17896015163371147017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A172494 (n + 2) - 1).toNat

end

end A240169.P17896015163371147017

/-!
# A240170: Larger of the greatest cousin prime pair with n digits.

The programs for A240170, there is no canonical definition to state claims against.
-/

/-! ## A240170.P14242350174778964007

`A046132(A080840(n+1))`
-/

namespace A240170.P14242350174778964007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (A080840 (n + 1)).toNat

end

end A240170.P14242350174778964007

/-! ## A240170.P10574514596764629399

`A046132(A093737(n+1)+1)`
-/

namespace A240170.P10574514596764629399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (A093737 (n + 1) + 1).toNat

end

end A240170.P10574514596764629399

/-!
# A240171: Numbers k such that k has more divisors than k-1.

The programs for A240171, the canonical program `A240171.P15820621349524491020` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240171 has offset 1).

The definition of A240171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240171.P15820621349524491020

`A074775(n+1)+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A240171

/-- `A074775(n+1)+1` -/
def P15820621349524491020.Spec : Prop :=
  ∀ n, P15820621349524491020.a n = A240171 (n + 1)

theorem P15820621349524491020.correct : P15820621349524491020.Spec := by
  intro n
  simp only [A240171, Nat.add_sub_cancel]

end A240171

/-! ## A240171.P2844535952426380721

`lt[A000005(n+1), A000005(n+2)]+2`
-/

namespace A240171.P2844535952426380721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A240171.P2844535952426380721

namespace A240171

/-- `lt[A000005(n+1), A000005(n+2)]+2` -/
def P2844535952426380721.Spec : Prop :=
  ∀ n, (P2844535952426380721.a n : ℤ) = A240171 (n + 1)

end A240171

/-! ## A240171.P10470736607300022245

`lt[0, A182394(n+2)]+2`
-/

namespace A240171.P10470736607300022245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A240171.P10470736607300022245

namespace A240171

/-- `lt[0, A182394(n+2)]+2` -/
def P10470736607300022245.Spec : Prop :=
  ∀ n, (P10470736607300022245.a n : ℤ) = A240171 (n + 1)

theorem P10470736607300022245.correct : P10470736607300022245.Spec := by
  intro n
  simp only [A240171, Nat.add_sub_cancel, A240171.P10470736607300022245.f1, A240171.P10470736607300022245.f2, A240171.P10470736607300022245.a, A240171.P15820621349524491020.a, A074775, A074775.P4617323649837205606.f1, A074775.P4617323649837205606.f2, A074775.P4617323649837205606.a, A182394, A182394.P11897336731762600311.a, A051950, A051950.P14711924742226859684.f1, A051950.P14711924742226859684.a, A320111, A320111.P9381397234523338092.a, A000005, A000005.P16091521709108585461.a, A252463, A252463.P9404790189412916411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240171

/-! ## A240171.P3053988153615834643

`lt[Δ[A049820(n+1)], 1]+2`
-/

namespace A240171.P3053988153615834643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A240171.P3053988153615834643

namespace A240171

/-- `lt[Δ[A049820(n+1)], 1]+2` -/
def P3053988153615834643.Spec : Prop :=
  ∀ n, (P3053988153615834643.a n : ℤ) = A240171 (n + 1)

end A240171

/-! ## A240171.P968611226980451764

`lt[1, ratio[A000005(n+1)]]+2`
-/

namespace A240171.P968611226980451764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 2

end

end A240171.P968611226980451764

namespace A240171

/-- `lt[1, ratio[A000005(n+1)]]+2` -/
def P968611226980451764.Spec : Prop :=
  ∀ n, (P968611226980451764.a n : ℤ) = A240171 (n + 1)

end A240171

/-! ## A240171.P18339252162341069648

`A020725(A074775(n+1))`
-/

namespace A240171.P18339252162341069648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A074775 (n + 1)).toNat

end

end A240171.P18339252162341069648

namespace A240171

/-- `A020725(A074775(n+1))` -/
def P18339252162341069648.Spec : Prop :=
  ∀ n, P18339252162341069648.a n = A240171 (n + 1)

end A240171

/-! ## A240171.P5951991624707543807

`lt[A062011(n+1), A062011(n+2)]+2`
-/

namespace A240171.P5951991624707543807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A240171.P5951991624707543807

namespace A240171

/-- `lt[A062011(n+1), A062011(n+2)]+2` -/
def P5951991624707543807.Spec : Prop :=
  ∀ n, (P5951991624707543807.a n : ℤ) = A240171 (n + 1)

end A240171

/-! ## A240171.P15702623054217304130

`lt[A334954(n+1), A334954(n+2)]+2`
-/

namespace A240171.P15702623054217304130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A240171.P15702623054217304130

namespace A240171

/-- `lt[A334954(n+1), A334954(n+2)]+2` -/
def P15702623054217304130.Spec : Prop :=
  ∀ n, (P15702623054217304130.a n : ℤ) = A240171 (n + 1)

end A240171

/-! ## A240171.P15266258444748817293

`A020725(lt[A032741(n), A032741(n+1)])`
-/

namespace A240171.P15266258444748817293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240171.P15266258444748817293

namespace A240171

/-- `A020725(lt[A032741(n), A032741(n+1)])` -/
def P15266258444748817293.Spec : Prop :=
  ∀ n, P15266258444748817293.a n = A240171 (n + 1)

end A240171

/-! ## A240171.P14554878291167642446

`lt[A032741(A028310(n)-1), A032741(n)]`
-/

namespace A240171.P14554878291167642446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A028310 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A240171.P14554878291167642446

namespace A240171

/-- `lt[A032741(A028310(n)-1), A032741(n)]` -/
def P14554878291167642446.Spec : Prop :=
  ∀ n, (P14554878291167642446.a n : ℤ) = A240171 (n + 1)

end A240171

/-! ## A240171.P15164484064906565015

`lt[A184389(A028310(n)), A184389(n+1)]+1`
-/

namespace A240171.P15164484064906565015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A240171.P15164484064906565015

namespace A240171

/-- `lt[A184389(A028310(n)), A184389(n+1)]+1` -/
def P15164484064906565015.Spec : Prop :=
  ∀ n, (P15164484064906565015.a n : ℤ) = A240171 (n + 1)

end A240171

/-! ## A240171.P17537907015926829066

`lt[0, Δ[(∏{e}[n, #+1]-1)²]]+1`
-/

namespace A240171.P17537907015926829066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1) : ℕ) : ℤ) - 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A240171.P17537907015926829066

namespace A240171

/-- `lt[0, Δ[(∏{e}[n, #+1]-1)²]]+1` -/
def P17537907015926829066.Spec : Prop :=
  ∀ n, (P17537907015926829066.a n : ℤ) = A240171 (n + 1)

end A240171

/-! ## A240171.P12035850671922208311

`lt[2, Δ[∏{e}[n, (#+1)²]]+1]+1`
-/

namespace A240171.P12035850671922208311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A240171.P12035850671922208311

namespace A240171

/-- `lt[2, Δ[∏{e}[n, (#+1)²]]+1]+1` -/
def P12035850671922208311.Spec : Prop :=
  ∀ n, (P12035850671922208311.a n : ℤ) = A240171 (n + 1)

end A240171

/-! ## A240171.P11467691346471127282

`lt[0, Δ[A319410(n)]]+1`
-/

namespace A240171.P11467691346471127282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A240171.P11467691346471127282

namespace A240171

/-- `lt[0, Δ[A319410(n)]]+1` -/
def P11467691346471127282.Spec : Prop :=
  ∀ n, (P11467691346471127282.a n : ℤ) = A240171 (n + 1)

end A240171

/-! ## A240171.P5326262945293446424

`lt[1, Δ[A273071(∏{e}[n, #+1])]]+1`
-/

namespace A240171.P5326262945293446424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273071 (∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A240171.P5326262945293446424

namespace A240171

/-- `lt[1, Δ[A273071(∏{e}[n, #+1])]]+1` -/
def P5326262945293446424.Spec : Prop :=
  ∀ n, (P5326262945293446424.a n : ℤ) = A240171 (n + 1)

end A240171

/-! ## A240171.P14225592078355972244

`lt[A032741(n-A057427(n)), A032741(n)]`
-/

namespace A240171.P14225592078355972244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((n : ℤ) - A057427 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A240171.P14225592078355972244

namespace A240171

/-- `lt[A032741(n-A057427(n)), A032741(n)]` -/
def P14225592078355972244.Spec : Prop :=
  ∀ n, (P14225592078355972244.a n : ℤ) = A240171 (n + 1)

end A240171

/-! ## A240171.P4964844949547139889

`lt[2, Δ[∏{e}[n-1, #+1]²]]`
-/

namespace A240171.P4964844949547139889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f4 n).natAbs, (Nat.factorization (f4 n).natAbs p + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A240171.P4964844949547139889

namespace A240171

/-- `lt[2, Δ[∏{e}[n-1, #+1]²]]` -/
def P4964844949547139889.Spec : Prop :=
  ∀ n, (P4964844949547139889.a n : ℤ) = A240171 (n + 1)

end A240171

/-! ## A240171.P12657905053137027121

`lt[3, Δ[A272009(∏{e}[1-n, #+1])]]`
-/

namespace A240171.P12657905053137027121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272009 (∏ p ∈ Nat.primeFactors (f4 n).natAbs, (Nat.factorization (f4 n).natAbs p + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A240171.P12657905053137027121

namespace A240171

/-- `lt[3, Δ[A272009(∏{e}[1-n, #+1])]]` -/
def P12657905053137027121.Spec : Prop :=
  ∀ n, (P12657905053137027121.a n : ℤ) = A240171 (n + 1)

end A240171

/-! ## A240171.P8487697049553997946

`lt[ϕ, ratio[∏{d}[1-n, #]]]`
-/

namespace A240171.P8487697049553997946
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n).natAbs, d

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A240171.P8487697049553997946

namespace A240171

/-- `lt[ϕ, ratio[∏{d}[1-n, #]]]` -/
def P8487697049553997946.Spec : Prop :=
  ∀ n, (P8487697049553997946.a n : ℤ) = A240171 (n + 1)

end A240171

/-! ## A240171.P7054000862670589920

`record[A008611(3*n+5)*A182394(n+2)]`
-/

namespace A240171.P7054000862670589920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * n + 5) * A182394 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240171.P7054000862670589920

namespace A240171

/-- `record[A008611(3*n+5)*A182394(n+2)]` -/
def P7054000862670589920.Spec : Prop :=
  ∀ n, P7054000862670589920.a n = A240171 (n + 1)

end A240171

/-!
# A240172: O.g.f.: Sum_{n>=0} n! * x^n * (1+x)^n.

The programs for A240172, the canonical program `A240172.P468894447388871046` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240172 has offset 0).

The definition of A240172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240172.P468894447388871046

`(n-2)*a(n-1)+(2*n-1)*a(n-2)+(n-1)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240172

/-- `(n-2)*a(n-1)+(2*n-1)*a(n-2)+(n-1)*a(n-3)` -/
def P468894447388871046.Spec : Prop :=
  ∀ n, P468894447388871046.a n = A240172 n

theorem P468894447388871046.correct : P468894447388871046.Spec := by
  intro n
  simp only [A240172]

end A240172

/-! ## A240172.P2236205741046953122

`A346550(n)-a(n-1)` with `a(0)=1`
-/

namespace A240172.P2236205741046953122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A346550 n - a (n - 1)

end

end A240172.P2236205741046953122

namespace A240172

/-- `A346550(n)-a(n-1)` -/
def P2236205741046953122.Spec : Prop :=
  ∀ n, P2236205741046953122.a n = A240172 n

end A240172

/-! ## A240172.P1599607104734083994

`A276890(∑[n+3])`
-/

namespace A240172.P1599607104734083994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240172.P1599607104734083994

namespace A240172

/-- `A276890(∑[n+3])` -/
def P1599607104734083994.Spec : Prop :=
  ∀ n, P1599607104734083994.a n = A240172 n

end A240172

/-! ## A240172.P77818481167253012

`lcm(A140130(n+1), A276890(A027379(n+1)))`
-/

namespace A240172.P77818481167253012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A140130 (n + 1)) (A276890 (A027379 (n + 1)).toNat)

end

end A240172.P77818481167253012

namespace A240172

/-- `lcm(A140130(n+1), A276890(A027379(n+1)))` -/
def P77818481167253012.Spec : Prop :=
  ∀ n, (P77818481167253012.a n : ℤ) = A240172 n

end A240172

/-! ## A240172.P1176781441171468956

`A374162(n+1)+A374162(n+2)`
-/

namespace A240172.P1176781441171468956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374162 (n + 1) + A374162 (n + 2)

end

end A240172.P1176781441171468956

namespace A240172

/-- `A374162(n+1)+A374162(n+2)` -/
def P1176781441171468956.Spec : Prop :=
  ∀ n, P1176781441171468956.a n = A240172 n

end A240172

/-!
# A240173: Numbers m such that k^m - 2^m is not prime for any k.

The programs for A240173, there is no canonical definition to state claims against.
-/

/-! ## A240173.P12596660585512281763

`eq[0, A245459(n+1)]+1`
-/

namespace A240173.P12596660585512281763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245459 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A240173.P12596660585512281763

/-! ## A240173.P1391700411001859980

`lt[A245459(A000027(n+1)), 1]+1`
-/

namespace A240173.P1391700411001859980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245459 (A000027 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A240173.P1391700411001859980

/-! ## A240173.P4658390300795808328

`record[or(-A245459(n+1), A000027(n+1))]`
-/

namespace A240173.P4658390300795808328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A245459 (n + 1)) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240173.P4658390300795808328

/-! ## A240173.P17285220409743463257

`record[or(-A245459(n+1), A008619(2*n))]`
-/

namespace A240173.P17285220409743463257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A245459 (n + 1)) (A008619 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240173.P17285220409743463257

/-! ## A240173.P4185274320973036458

`record[xor(-A245459(n+1), A008620(3*n))]`
-/

namespace A240173.P4185274320973036458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A245459 (n + 1)) (A008620 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240173.P4185274320973036458

/-!
# A240175: Number of partitions of n such that the least part is less than its multiplicity.

The programs for A240175, there is no canonical definition to state claims against.
-/

/-! ## A240175.P16362678022032188025

`A000041(n)-A240177(n)`
-/

namespace A240175.P16362678022032188025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240177 n

end

end A240175.P16362678022032188025

/-! ## A240175.P8190157375852221061

`A213598(n)-A240177(n)`
-/

namespace A240175.P8190157375852221061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240177 n

end

end A240175.P8190157375852221061

/-! ## A240175.P1098296916728982775

`sqrt(A001255(n))-A240177(n)`
-/

namespace A240175.P1098296916728982775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240177 n : ℝ)

end

end A240175.P1098296916728982775

/-! ## A240175.P8585505772474973795

`∑[A002865(n)]-A240177(n)`
-/

namespace A240175.P8585505772474973795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240177 n

end

end A240175.P8585505772474973795

/-! ## A240175.P16762524524497483400

`A000065(n)+1-A240177(n)`
-/

namespace A240175.P16762524524497483400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A240177 n)

end

end A240175.P16762524524497483400

/-!
# A240176: Number of partitions of n such that (least part) > (multiplicity of least part).

The programs for A240176, there is no canonical definition to state claims against.
-/

/-! ## A240176.P4783285816819754823

`A052810(n)%(A188216(n)+1)`
-/

namespace A240176.P4783285816819754823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052810 n) (A188216 n + 1)

end

end A240176.P4783285816819754823

/-! ## A240176.P12074095688636551959

`A000041(n)-A188216(n)%(2^n)`
-/

namespace A240176.P12074095688636551959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - Int.tmod (A188216 n) (2 ^ n : ℤ)

end

end A240176.P12074095688636551959

/-! ## A240176.P2000347293715744112

`A052810(abs(1-n)+1)-(A188216(n)+1)`
-/

namespace A240176.P2000347293715744112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (|1 - (n : ℤ)| + 1).toNat - (A188216 n + 1)

end

end A240176.P2000347293715744112

/-! ## A240176.P11538436398008429343

`A000007(n)+A000041(n)-A188216(n)`
-/

namespace A240176.P11538436398008429343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A000041 n - A188216 n)

end

end A240176.P11538436398008429343

/-! ## A240176.P11218146094010474911

`A000041(A000038(n)+n)-A188216(n)`
-/

namespace A240176.P11218146094010474911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000038 n + (n : ℤ)).toNat - A188216 n

end

end A240176.P11218146094010474911

/-! ## A240176.P3021607326019518888

`A000041(n)+A151933(n)-A188216(n)`
-/

namespace A240176.P3021607326019518888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A151933 n - A188216 n)

end

end A240176.P3021607326019518888

/-! ## A240176.P12506206588473265548

`A003106(n)+A039900(n)%A188216(n)`
-/

namespace A240176.P12506206588473265548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n + Int.tmod (A039900 n) (A188216 n)

end

end A240176.P12506206588473265548

/-! ## A240176.P17281947356802271741

`A000041(n)-A062157(n)²*A188216(n)`
-/

namespace A240176.P17281947356802271741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A062157 n ^ 2 * A188216 n

end

end A240176.P17281947356802271741

/-! ## A240176.P1620875146441716361

`A063524(n+1)+A000041(n)-A188216(n)`
-/

namespace A240176.P1620875146441716361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + (A000041 n - A188216 n)

end

end A240176.P1620875146441716361

/-! ## A240176.P15310484415801103749

`(A000041(n)-A188216(n))^and(1, A000040(n+1))`
-/

namespace A240176.P15310484415801103749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n - A188216 n : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A240176.P15310484415801103749

/-!
# A240177: Number of partitions of n such that (least part) >= (multiplicity of least part).

The programs for A240177, there is no canonical definition to state claims against.
-/

/-! ## A240177.P9723866461421943424

`A240176(A028310(n))+A096403(A028310(n))`
-/

namespace A240177.P9723866461421943424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240176 (A028310 n).toNat + A096403 (A028310 n).toNat

end

end A240177.P9723866461421943424

/-! ## A240177.P11936679207778307057

`A240176(A233583(n+1))+A096403(A233583(n+1))`
-/

namespace A240177.P11936679207778307057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240176 (A233583 (n + 1)).toNat + A096403 (A233583 (n + 1)).toNat

end

end A240177.P11936679207778307057

/-! ## A240177.P11733044982547533222

`A000041(n)-A240175(n)`
-/

namespace A240177.P11733044982547533222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240175 n

end

end A240177.P11733044982547533222

/-! ## A240177.P443804537212310966

`A213598(n)-A240175(n)`
-/

namespace A240177.P443804537212310966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240175 n

end

end A240177.P443804537212310966

/-! ## A240177.P10259321401374425732

`sqrt(A001255(n))-A240175(n)`
-/

namespace A240177.P10259321401374425732
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240175 n : ℝ)

end

end A240177.P10259321401374425732

/-!
# A240178: Number of partitions of n such that (least part) < (multiplicity of greatest part).

The programs for A240178, there is no canonical definition to state claims against.
-/

/-! ## A240178.P9396782385294713650

`A240179(n)-A240180(n)`
-/

namespace A240178.P9396782385294713650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240179 n - A240180 n

end

end A240178.P9396782385294713650

/-! ## A240178.P16260639139564751354

`(A240182(n)-A240183(n))%(2^n)`
-/

namespace A240178.P16260639139564751354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240182 n - A240183 n) (2 ^ n : ℤ)

end

end A240178.P16260639139564751354

/-! ## A240178.P9134880570322668900

`A240182(n)-A240183(round(sqrt(n²+1)))`
-/

namespace A240178.P9134880570322668900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240182 n - A240183 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A240178.P9134880570322668900

/-! ## A240178.P2041588253059236307

`A240182(n)-(A240183(n)+A000007(n))`
-/

namespace A240178.P2041588253059236307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240182 n - (A240183 n + A000007 n)

end

end A240178.P2041588253059236307

/-! ## A240178.P5551882474451136528

`A240182(n)-A240183(n)-A000007(2*n)`
-/

namespace A240178.P5551882474451136528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240182 n - A240183 n - A000007 (2 * n)

end

end A240178.P5551882474451136528

/-! ## A240178.P8596055961970450973

`A240182(n)-A240183(n)-C(2, A000230(n))`
-/

namespace A240178.P8596055961970450973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240182 n - A240183 n - (Nat.choose 2 (A000230 n).toNat : ℤ)

end

end A240178.P8596055961970450973

/-! ## A240178.P16864221119871077813

`A240182(n)-A240183(n)-C(2, A008595(n))`
-/

namespace A240178.P16864221119871077813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240182 n - A240183 n - (Nat.choose 2 (A008595 n).toNat : ℤ)

end

end A240178.P16864221119871077813

/-! ## A240178.P8770228470558354993

`A240182(n)-A240183(n)-∏{d}[n, A001222(#)]`
-/

namespace A240178.P8770228470558354993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240182 n - A240183 n - ∏ d ∈ Nat.divisors (f1 n), A001222 d

end

end A240178.P8770228470558354993

/-! ## A240178.P8026888759312998127

`(A240182(n)-A240183(n))*A000040(n+1)%2`
-/

namespace A240178.P8026888759312998127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A240182 n - A240183 n) * Int.tmod (A000040 (n + 1)) 2

end

end A240178.P8026888759312998127

/-! ## A240178.P10901318511932508568

`A240182(n)-A240183(n)-A000045(C(2, n+2))`
-/

namespace A240178.P10901318511932508568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240182 n - A240183 n - A000045 (Nat.choose 2 (n + 2))

end

end A240178.P10901318511932508568

/-!
# A240179: Number of partitions of n such that (least part) <= (multiplicity of greatest part).

The programs for A240179, there is no canonical definition to state claims against.
-/

/-! ## A240179.P3189666498510372346

`A240178(n)+A240180(n)`
-/

namespace A240179.P3189666498510372346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240178 n + A240180 n

end

end A240179.P3189666498510372346

/-! ## A240179.P15312778371423463935

`A240184(n)+A240183(n)`
-/

namespace A240179.P15312778371423463935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240184 n + A240183 n

end

end A240179.P15312778371423463935

/-! ## A240179.P5304209010758873550

`A000094(n+1)+n-A240178(n)`
-/

namespace A240179.P5304209010758873550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (n + 1) + ((n : ℤ) - A240178 n)

end

end A240179.P5304209010758873550

/-! ## A240179.P6398624936954827590

`A035363(A004277(n))-A240178(n)`
-/

namespace A240179.P6398624936954827590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A004277 n).toNat - A240178 n

end

end A240179.P6398624936954827590

/-! ## A240179.P886829357233278033

`A035444(A008574(n))-A240178(n)`
-/

namespace A240179.P886829357233278033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008574 n).toNat - A240178 n

end

end A240179.P886829357233278033

/-!
# A240180: Number of partitions of n such that (least part) = (multiplicity of greatest part).

The programs for A240180, there is no canonical definition to state claims against.
-/

/-! ## A240180.P4537401932707597940

`A240179(n)-A240178(n)`
-/

namespace A240180.P4537401932707597940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240179 n - A240178 n

end

end A240180.P4537401932707597940

/-! ## A240180.P4497976457254378963

`A035363(A004277(n))-2*A240178(n)`
-/

namespace A240180.P4497976457254378963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A004277 n).toNat - 2 * A240178 n

end

end A240180.P4497976457254378963

/-! ## A240180.P15233807607817854125

`2*A240179(n)-A035444(A008574(n))`
-/

namespace A240180.P15233807607817854125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A240179 n - A035444 (A008574 n).toNat

end

end A240180.P15233807607817854125

/-! ## A240180.P12360150829026584965

`A035444(A008574(n))-2*A240178(n)`
-/

namespace A240180.P12360150829026584965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008574 n).toNat - 2 * A240178 n

end

end A240180.P12360150829026584965

/-! ## A240180.P7261305086221978717

`A240183(n)+A240184(n)-A240178(n)`
-/

namespace A240180.P7261305086221978717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240183 n + (A240184 n - A240178 n)

end

end A240180.P7261305086221978717

/-!
# A240182: Number of partitions of n such that (greatest part) <= (multiplicity of least part).

The programs for A240182, there is no canonical definition to state claims against.
-/

/-! ## A240182.P9772468757829841686

`A240183(floor(acot(n)+n))+A240178(n)`
-/

namespace A240182.P9772468757829841686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240183 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + A240178 n

end

end A240182.P9772468757829841686

/-! ## A240182.P7213412992361064028

`A240183(n^floor(atan(n)))+A240178(n)`
-/

namespace A240182.P7213412992361064028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240183 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat + A240178 n

end

end A240182.P7213412992361064028

/-! ## A240182.P13746482891544978699

`A240183(round(sqrt(n²+1)))+A240178(n)`
-/

namespace A240182.P13746482891544978699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240183 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A240178 n

end

end A240182.P13746482891544978699

/-! ## A240182.P8716368902626952426

`A000007(n)+A240183(n)+A240178(n)`
-/

namespace A240182.P8716368902626952426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A240183 n + A240178 n)

end

end A240182.P8716368902626952426

/-! ## A240182.P6944329924925633936

`A008683((n+1)²)+A240183(n)+A240178(n)`
-/

namespace A240182.P6944329924925633936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (A240183 n + A240178 n)

end

end A240182.P6944329924925633936

/-! ## A240182.P12792897219960169141

`and(1, A000010(n+2))+A240183(n)+A240178(n)`
-/

namespace A240182.P12792897219960169141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000010 (n + 2)) + (A240183 n + A240178 n)

end

end A240182.P12792897219960169141

/-! ## A240182.P8047304656892477120

`(A240183(n)+A240178(n))^(A000040(n+1)%2)`
-/

namespace A240182.P8047304656892477120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240183 n + A240178 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A240182.P8047304656892477120

/-! ## A240182.P17527984196079193012

`A000045(round(1/(n+2)))+A240183(n)+A240178(n)`
-/

namespace A240182.P17527984196079193012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (1 / (n + 2 : ℚ))).toNat + (A240183 n + A240178 n)

end

end A240182.P17527984196079193012

/-!
# A240183: Number of partitions of n such that (greatest part) = (multiplicity of least part).

The programs for A240183, there is no canonical definition to state claims against.
-/

/-! ## A240183.P15468135252813997769

`(A240182(n)-A240178(n))%(2^n)`
-/

namespace A240183.P15468135252813997769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240182 n - A240178 n) (2 ^ n : ℤ)

end

end A240183.P15468135252813997769

/-! ## A240183.P16617424528936565950

`A240182(n)-(A240178(n)+A000007(n))`
-/

namespace A240183.P16617424528936565950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240182 n - (A240178 n + A000007 n)

end

end A240183.P16617424528936565950

/-! ## A240183.P8930699927925264820

`A057427(n)*A240182(n)-A240178(n)`
-/

namespace A240183.P8930699927925264820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A240182 n - A240178 n

end

end A240183.P8930699927925264820

/-! ## A240183.P11418575279178715439

`A240182(n)%A000079(n)-A240178(n)`
-/

namespace A240183.P11418575279178715439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240182 n) (A000079 n) - A240178 n

end

end A240183.P11418575279178715439

/-! ## A240183.P16157020990564437797

`and(A000225(n), A240182(n))-A240178(n)`
-/

namespace A240183.P16157020990564437797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A240182 n) - A240178 n

end

end A240183.P16157020990564437797

/-! ## A240183.P2720399302118902198

`A240182(n)-A240178(n)-A008683((n+1)²)`
-/

namespace A240183.P2720399302118902198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240182 n - A240178 n - A008683 ((n + 1) ^ 2)

end

end A240183.P2720399302118902198

/-! ## A240183.P8040623883224012569

`abs(A240182(n)-A240178(n))%A000041(n+1)`
-/

namespace A240183.P8040623883224012569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A240182 n - A240178 n| (A000041 (n + 1))

end

end A240183.P8040623883224012569

/-! ## A240183.P15359814190503453623

`(A240182(n)-A240178(n))*A000040(n+1)%2`
-/

namespace A240183.P15359814190503453623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A240182 n - A240178 n) * Int.tmod (A000040 (n + 1)) 2

end

end A240183.P15359814190503453623

/-! ## A240183.P9234813157327259089

`A240182(n)-A240178(n)-and(1, A000010(n+2))`
-/

namespace A240183.P9234813157327259089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240182 n - A240178 n - Int.land 1 (A000010 (n + 2))

end

end A240183.P9234813157327259089

/-! ## A240183.P1148636015421875245

`(A240182(n)-A240178(n))*A008683(2*A000040(n+1))`
-/

namespace A240183.P1148636015421875245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A240182 n - A240178 n) * A008683 (2 * A000040 (n + 1)).toNat

end

end A240183.P1148636015421875245

/-!
# A240184: Number of partitions of n such that (greatest part) > (multiplicity of least part).

The programs for A240184, there is no canonical definition to state claims against.
-/

/-! ## A240184.P10293644683525248469

`A000041(n)-A240182(n)`
-/

namespace A240184.P10293644683525248469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240182 n

end

end A240184.P10293644683525248469

/-! ## A240184.P4416054136001100580

`A213598(n)-A240182(n)`
-/

namespace A240184.P4416054136001100580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240182 n

end

end A240184.P4416054136001100580

/-! ## A240184.P9507520419331003337

`A240179(n)-A240183(n)`
-/

namespace A240184.P9507520419331003337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240179 n - A240183 n

end

end A240184.P9507520419331003337

/-! ## A240184.P15824094922410881434

`sqrt(A001255(n))-A240182(n)`
-/

namespace A240184.P15824094922410881434
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240182 n : ℝ)

end

end A240184.P15824094922410881434

/-! ## A240184.P17722225973606868110

`∑[A002865(n)]-A240182(n)`
-/

namespace A240184.P17722225973606868110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240182 n

end

end A240184.P17722225973606868110

/-!
# A240185: Irregular triangular array: T(n,k) = number of partitions p of n such that k is the number of numbers between min(p) and max(p) that are not parts of p.

The programs for A240185, there is no canonical definition to state claims against.
-/

/-! ## A240185.P9466746568906124202

`A068063(A118897(n))`
-/

namespace A240185.P9466746568906124202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A118897 n).toNat

end

end A240185.P9466746568906124202

/-! ## A240185.P9854328249449535258

`A339276(A118897(n)²)`
-/

namespace A240185.P9854328249449535258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (A118897 n ^ 2).toNat

end

end A240185.P9854328249449535258

/-! ## A240185.P8600006017204689519

`round(sqrt(A118897(n)^A316623(n)))`
-/

namespace A240185.P8600006017204689519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A118897 n : ℚ) ^ (A316623 n : ℤ) : ℝ))

end

end A240185.P8600006017204689519

/-! ## A240185.P4569377746182230556

`A000194(A000194(A118897(n)²))`
-/

namespace A240185.P4569377746182230556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000194 (A118897 n ^ 2).toNat).toNat

end

end A240185.P4569377746182230556

/-!
# A240186: Number of n X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240186, there is no canonical definition to state claims against.
-/

/-! ## A240186.P9847126277918388044

`A240192(∑[4*n]+1)`
-/

namespace A240186.P9847126277918388044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240186.P9847126277918388044

/-! ## A240186.P8749589681387901942

`record[A240192(A330613(n+1))]`
-/

namespace A240186.P8749589681387901942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240186.P8749589681387901942

/-! ## A240186.P11745871632596569444

`or(char[n²], A240192(A001844(n)))`
-/

namespace A240186.P11745871632596569444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240192 (A001844 n).toNat)

end

end A240186.P11745871632596569444

/-!
# A240187: Number of n X 2 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240187, there is no canonical definition to state claims against.
-/

/-! ## A240187.P12188642988468968947

`A240192(∑[n+2])`
-/

namespace A240187.P12188642988468968947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240187.P12188642988468968947

/-! ## A240187.P14325069734990558268

`record[A240192(gcd(n, A055830(n)))]`
-/

namespace A240187.P14325069734990558268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (Int.gcd (n : ℤ) (A055830 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240187.P14325069734990558268

/-! ## A240187.P16239307261039199764

`record[gcd(A008290(n), A240192(n+1))]`
-/

namespace A240187.P16239307261039199764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A240192 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240187.P16239307261039199764

/-! ## A240187.P1355276140423557314

`record[and(A167374(n), A240192(n+1))]`
-/

namespace A240187.P1355276140423557314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A240192 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240187.P1355276140423557314

/-! ## A240187.P4425045903257714074

`record[gcd(A185782(n+3), A240192(n+2))]`
-/

namespace A240187.P4425045903257714074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185782 (n + 3)) (A240192 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240187.P4425045903257714074

/-!
# A240188: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240188, there is no canonical definition to state claims against.
-/

/-! ## A240188.P814958866651106328

`A240192(∑[n+3]+1)`
-/

namespace A240188.P814958866651106328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240188.P814958866651106328

/-! ## A240188.P14432472455854167649

`record[A240192(A198464(n+1))]`
-/

namespace A240188.P14432472455854167649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240188.P14432472455854167649

/-! ## A240188.P5727749923694902324

`record[A240192(eq[1, A004197(n)])]`
-/

namespace A240188.P5727749923694902324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240188.P5727749923694902324

/-! ## A240188.P10096709671036489586

`or(char[2], A240192(A034856(n+2)))`
-/

namespace A240188.P10096709671036489586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240192 (A034856 (n + 2)).toNat)

end

end A240188.P10096709671036489586

/-! ## A240188.P10226592008285670071

`record[A240192(eq[2, A003983(n+1)])]`
-/

namespace A240188.P10226592008285670071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240188.P10226592008285670071

/-!
# A240189: Number of nX4 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240189, there is no canonical definition to state claims against.
-/

/-! ## A240189.P12766916189924991029

`A240192(∑[n+4]+3)`
-/

namespace A240189.P12766916189924991029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A240189.P12766916189924991029

/-! ## A240189.P8110715101492702757

`A240192(A055998(n+2))+A174617(n)`
-/

namespace A240189.P8110715101492702757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A055998 (n + 2)).toNat + A174617 n

end

end A240189.P8110715101492702757

/-! ## A240189.P11198272833293449777

`A240192(A155212(n)+5)+A006927(n)`
-/

namespace A240189.P11198272833293449777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A155212 n + 5).toNat + A006927 n

end

end A240189.P11198272833293449777

/-! ## A240189.P15802191153983054387

`A248805(n+1)+A240192(A055998(n+2))`
-/

namespace A240189.P15802191153983054387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (n + 1) + A240192 (A055998 (n + 2)).toNat

end

end A240189.P15802191153983054387

/-! ## A240189.P14193216649777796131

`A240192(A000217(n+4)-3)+A035903(2*n+1)`
-/

namespace A240189.P14193216649777796131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A000217 (n + 4) - 3).toNat + A035903 (2 * n + 1)

end

end A240189.P14193216649777796131

/-!
# A240190: Number of nX5 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240190, there is no canonical definition to state claims against.
-/

/-! ## A240190.P10545656262692601724

`A240192(Δ[A264443(n)])`
-/

namespace A240190.P10545656262692601724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (f1 (n + 1) - f1 n).toNat

end

end A240190.P10545656262692601724

/-! ## A240190.P7185967921979794096

`A240192(A046691(n+3))`
-/

namespace A240190.P7185967921979794096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A046691 (n + 3)).toNat

end

end A240190.P7185967921979794096

/-! ## A240190.P3259897696131387894

`A240192(A056115(n)+11)`
-/

namespace A240190.P3259897696131387894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A056115 n + 11).toNat

end

end A240190.P3259897696131387894

/-! ## A240190.P14012461311321749114

`A240192(eq[2, A092921(n)])`
-/

namespace A240190.P14012461311321749114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240190.P14012461311321749114

/-! ## A240190.P1783187381243341979

`A240192(eq[3, A152157(n)])`
-/

namespace A240190.P1783187381243341979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240190.P1783187381243341979

/-!
# A240191: Number of nX6 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240191, there is no canonical definition to state claims against.
-/

/-! ## A240191.P10522980072852411189

`A240192(A052905(n+3))`
-/

namespace A240191.P10522980072852411189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A052905 (n + 3)).toNat

end

end A240191.P10522980072852411189

/-! ## A240191.P1023759836921173696

`A240192(A056119(n)+16)`
-/

namespace A240191.P1023759836921173696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A056119 n + 16).toNat

end

end A240191.P1023759836921173696

/-! ## A240191.P12309673603398657845

`A240192(eq[3, A219347(n)])`
-/

namespace A240191.P12309673603398657845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240191.P12309673603398657845

/-! ## A240191.P13863638518297051237

`A240192(eq[5, A152157(n)])`
-/

namespace A240191.P13863638518297051237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240191.P13863638518297051237

/-! ## A240191.P17528601779786189897

`A240192(eq[5, A193592(n)])`
-/

namespace A240191.P17528601779786189897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240191.P17528601779786189897

/-!
# A240192: T(n,k)=Number of nXk 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240192, there is no canonical definition to state claims against.
-/

/-! ## A240192.P17153571753588722570

`A321331(n)-A004197(A022174(n))`
-/

namespace A240192.P17153571753588722570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321331 n - A004197 (A022174 n).toNat

end

end A240192.P17153571753588722570

/-! ## A240192.P12701912934345617192

`A330381(n)-A025456(A022181(n))`
-/

namespace A240192.P12701912934345617192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330381 n - A025456 (A022181 n).toNat

end

end A240192.P12701912934345617192

/-! ## A240192.P9443430374656251655

`and(A176740(A194193(n+1)), A330381(n))`
-/

namespace A240192.P9443430374656251655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176740 (A194193 (n + 1)).toNat) (A330381 n)

end

end A240192.P9443430374656251655

/-!
# A240193: Number of 3 X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240193, there is no canonical definition to state claims against.
-/

/-! ## A240193.P12582833195858408907

`A240192(∑[n+2]+4)`
-/

namespace A240193.P12582833195858408907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240193.P12582833195858408907

/-! ## A240193.P14954380638477304151

`and(-1, A240192(A167614(n+1)))`
-/

namespace A240193.P14954380638477304151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A240192 (A167614 (n + 1)).toNat)

end

end A240193.P14954380638477304151

/-! ## A240193.P13637873868069995425

`A240192(A167614(n+1))+A025444(n)`
-/

namespace A240193.P13637873868069995425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A167614 (n + 1)).toNat + A025444 n

end

end A240193.P13637873868069995425

/-! ## A240193.P11613913016680796321

`A240192(A167614(n+1))+A025469(n)`
-/

namespace A240193.P11613913016680796321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A167614 (n + 1)).toNat + A025469 n

end

end A240193.P11613913016680796321

/-! ## A240193.P17450252954621749725

`A240192(A167614(n+1))+A185284(n)`
-/

namespace A240193.P17450252954621749725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A167614 (n + 1)).toNat + A185284 n

end

end A240193.P17450252954621749725

/-!
# A240194: Number of 4 X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240194, there is no canonical definition to state claims against.
-/

/-! ## A240194.P14625140264652912684

`A240192(∑[n+3]+7)`
-/

namespace A240194.P14625140264652912684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240194.P14625140264652912684

/-!
# A240195: Number of 5Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240195, there is no canonical definition to state claims against.
-/

/-! ## A240195.P16641293516907632665

`A240192(A167499(n+3))`
-/

namespace A240195.P16641293516907632665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A167499 (n + 3)).toNat

end

end A240195.P16641293516907632665

/-! ## A240195.P9464156924864019097

`A240192(A155212(n)+13)`
-/

namespace A240195.P9464156924864019097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A155212 n + 13).toNat

end

end A240195.P9464156924864019097

/-! ## A240195.P996743541804013755

`A240192(A056000(n)+15)`
-/

namespace A240195.P996743541804013755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A056000 n + 15).toNat

end

end A240195.P996743541804013755

/-! ## A240195.P367371679698271427

`A240192(eq[7, A066657(n)])`
-/

namespace A240195.P367371679698271427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240195.P367371679698271427

/-! ## A240195.P5309354313780393274

`A240192(A000124(n+4)+4)`
-/

namespace A240195.P5309354313780393274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A000124 (n + 4) + 4).toNat

end

end A240195.P5309354313780393274

/-!
# A240196: Number of 6Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240196, there is no canonical definition to state claims against.
-/

/-! ## A240196.P11736758670739965518

`A240192(A166136(n+4))`
-/

namespace A240196.P11736758670739965518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A166136 (n + 4)).toNat

end

end A240196.P11736758670739965518

/-! ## A240196.P15267308506820846265

`A240192(Δ[A264443(n)]+10)`
-/

namespace A240196.P15267308506820846265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (f1 (n + 1) - f1 n + 10).toNat

end

end A240196.P15267308506820846265

/-! ## A240196.P10730900258540265136

`A240192(A167614(n+4)+3)`
-/

namespace A240196.P10730900258540265136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A167614 (n + 4) + 3).toNat

end

end A240196.P10730900258540265136

/-! ## A240196.P2901161233908136080

`A240192(A000217(n+5)+6)`
-/

namespace A240196.P2901161233908136080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A000217 (n + 5) + 6).toNat

end

end A240196.P2901161233908136080

/-! ## A240196.P2356713323943532303

`A240192(A056000(n+1)+16)`
-/

namespace A240196.P2356713323943532303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A056000 (n + 1) + 16).toNat

end

end A240196.P2356713323943532303

/-!
# A240197: Number of 7Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240197, there is no canonical definition to state claims against.
-/

/-! ## A240197.P128447446173884044

`A240192(A056119(n)+28)`
-/

namespace A240197.P128447446173884044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A056119 n + 28).toNat

end

end A240197.P128447446173884044

/-! ## A240197.P15989245322138353558

`A240192(eq[11, A066657(n)])`
-/

namespace A240197.P15989245322138353558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240197.P15989245322138353558

/-! ## A240197.P16626490234454681364

`A240192(A168106(n)-n)`
-/

namespace A240197.P16626490234454681364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A168106 n - (n : ℤ)).toNat

end

end A240197.P16626490234454681364

/-! ## A240197.P2990842208651609240

`A240192(A166136(n+5)+1)`
-/

namespace A240197.P2990842208651609240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A166136 (n + 5) + 1).toNat

end

end A240197.P2990842208651609240

/-! ## A240197.P9538297752302792990

`A240192(A167499(n+5)+2)`
-/

namespace A240197.P9538297752302792990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (A167499 (n + 5) + 2).toNat

end

end A240197.P9538297752302792990

/-!
# A240198: Numerator of rational approximation of sqrt(3)/2 within a tolerance 10^(-n).

The programs for A240198, there is no canonical definition to state claims against.
-/

/-! ## A240198.P9344395015206037632

`A144463(A144484(n))*A144535(n)`
-/

namespace A240198.P9344395015206037632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144463 (A144484 n).toNat * A144535 n

end

end A240198.P9344395015206037632

/-! ## A240198.P9172185596754666443

`lcm(A078147(A042511(n)), A144535(n))`
-/

namespace A240198.P9172185596754666443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078147 (A042511 n).toNat) (A144535 n)

end

end A240198.P9172185596754666443

/-!
# A240199: Area under the path specified by n-th composition.

The programs for A240199, there is no canonical definition to state claims against.
-/

/-! ## A240199.P13936476865693213045

`A197354(A006068(n))`
-/

namespace A240199.P13936476865693213045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197354 (A006068 n).toNat

end

end A240199.P13936476865693213045

/-! ## A240199.P4949319158928546806

`A197354(A268714(∑[n]))`
-/

namespace A240199.P4949319158928546806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197354 (A268714 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A240199.P4949319158928546806

/-! ## A240199.P2976664327526293402

`A197354(A292600(2*n))`
-/

namespace A240199.P2976664327526293402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197354 (A292600 (2 * n)).toNat

end

end A240199.P2976664327526293402

/-! ## A240199.P14445697538483915400

`A197354(A268716(n)/2)`
-/

namespace A240199.P14445697538483915400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197354 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat

end

end A240199.P14445697538483915400

/-! ## A240199.P4394875704348942373

`A197354(A286546(n)+n)`
-/

namespace A240199.P4394875704348942373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197354 (A286546 n + (n : ℤ)).toNat

end

end A240199.P4394875704348942373

/-! ## A240199.P18254872389494163602

`A197354(xor(n, A292600(n)))`
-/

namespace A240199.P18254872389494163602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197354 (Int.xor (n : ℤ) (A292600 n)).toNat

end

end A240199.P18254872389494163602

/-! ## A240199.P6116840616562648383

`A197354(A066194(n+1)-1)`
-/

namespace A240199.P6116840616562648383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197354 (A066194 (n + 1) - 1).toNat

end

end A240199.P6116840616562648383

