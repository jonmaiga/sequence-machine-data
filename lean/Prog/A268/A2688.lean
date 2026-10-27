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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A268800: Primes 4k + 3 preceding the maximal gaps in A268799.

The programs for A268800, there is no canonical definition to state claims against.
-/

/-! ## A268800.P9465154160832690101

`A268801(n+1)-A268799(n+1)`
-/

namespace A268800.P9465154160832690101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268801 (n + 1) - A268799 (n + 1)

end

end A268800.P9465154160832690101

/-! ## A268800.P9498214820335355172

`A268801(n+1)-record[A082075(n+1)]`
-/

namespace A268800.P9498214820335355172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268801 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268800.P9498214820335355172

/-! ## A268800.P11922701745895425708

`A268801(n+1)-record[4*A082076(n+1)]`
-/

namespace A268800.P11922701745895425708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A082076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268801 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268800.P11922701745895425708

/-! ## A268800.P15837979307116205086

`A268801(n+1)-A008574(record[A082076(n+1)])`
-/

namespace A268800.P15837979307116205086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268801 (n + 1) - A008574 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268800.P15837979307116205086

/-! ## A268800.P16245171224067964126

`A268801(n+1)-A008586(record[A082076(n+1)])`
-/

namespace A268800.P16245171224067964126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268801 (n + 1) - A008586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268800.P16245171224067964126

/-!
# A268801: Primes 4k + 3 at the end of the maximal gaps in A268799.

The programs for A268801, there is no canonical definition to state claims against.
-/

/-! ## A268801.P17560602684900683986

`A268800(n+1)+A268799(n+1)`
-/

namespace A268801.P17560602684900683986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268800 (n + 1) + A268799 (n + 1)

end

end A268801.P17560602684900683986

/-! ## A268801.P10293965800690812748

`A268800(n+1)+record[A082075(n+1)]`
-/

namespace A268801.P10293965800690812748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268800 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268801.P10293965800690812748

/-! ## A268801.P11909795801957204987

`A268800(n+1)+record[4*A082076(n+1)]`
-/

namespace A268801.P11909795801957204987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A082076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268800 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268801.P11909795801957204987

/-! ## A268801.P7916725384149498113

`A268800(n+1)+A008574(record[A082076(n+1)])`
-/

namespace A268801.P7916725384149498113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268800 (n + 1) + A008574 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268801.P7916725384149498113

/-! ## A268801.P4948047846536042380

`A268800(n+1)+A008586(record[A082076(n+1)])`
-/

namespace A268801.P4948047846536042380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268800 (n + 1) + A008586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268801.P4948047846536042380

/-!
# A268802: Number of n X n 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268802, there is no canonical definition to state claims against.
-/

/-! ## A268802.P7845946392876609744

`A268809((n+1)²+n²)`
-/

namespace A268802.P7845946392876609744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 ((n + 1) ^ 2 + n ^ 2)

end

end A268802.P7845946392876609744

/-! ## A268802.P7043807694205420037

`record[A003982(n)*A268809(n+1)]`
-/

namespace A268802.P7043807694205420037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A268809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268802.P7043807694205420037

/-! ## A268802.P2196572458747483237

`record[gcd(A003987(n), A268809(n+1))]`
-/

namespace A268802.P2196572458747483237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A268809 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268802.P2196572458747483237

/-! ## A268802.P15882540018116003088

`record[root(A268809(n+1), A286157(n+1))]`
-/

namespace A268802.P15882540018116003088
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A268809 (n + 1) : ℝ) ^ (1 / (A286157 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268802.P15882540018116003088

/-! ## A268802.P6059986457645779960

`A268809(A001844(n))+A185238(n)`
-/

namespace A268802.P6059986457645779960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A001844 n).toNat + A185238 n

end

end A268802.P6059986457645779960

/-!
# A268803: Number of n X 2 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268803, there is no canonical definition to state claims against.
-/

/-! ## A268803.P5097977373573577044

`A268792(n+1)+A232935(n+1)`
-/

namespace A268803.P5097977373573577044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268792 (n + 1) + A232935 (n + 1)

end

end A268803.P5097977373573577044

/-! ## A268803.P11071331287788951264

`A268792(n+1)+2*A002478(n+2)`
-/

namespace A268803.P11071331287788951264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268792 (n + 1) + 2 * A002478 (n + 2)

end

end A268803.P11071331287788951264

/-! ## A268803.P6289188938227083099

`A268792(n+1)+abs(Δ[2*A078039(n)])`
-/

namespace A268803.P6289188938227083099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268792 (n + 1) + |f1 (n + 1) - f1 n|

end

end A268803.P6289188938227083099

/-! ## A268803.P5802416302005330035

`A268792(n+1)+Δ[2*A077864(n+1)]`
-/

namespace A268803.P5802416302005330035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268792 (n + 1) + (f1 (n + 1) - f1 n)

end

end A268803.P5802416302005330035

/-! ## A268803.P5342398939400557847

`A268792(n+1)+Δ[A306276(2*(n+3))]`
-/

namespace A268803.P5342398939400557847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268792 (n + 1) + (f1 (n + 1) - f1 n)

end

end A268803.P5342398939400557847

/-! ## A268803.P6971195160645382827

`A268792(n+1)+2*A199804(2*(n+2))`
-/

namespace A268803.P6971195160645382827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268792 (n + 1) + 2 * A199804 (2 * (n + 2))

end

end A268803.P6971195160645382827

/-! ## A268803.P14384528294652998748

`A268792(n+1)+2*A068921(2*n+3)`
-/

namespace A268803.P14384528294652998748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268792 (n + 1) + 2 * A068921 (2 * n + 3)

end

end A268803.P14384528294652998748

/-! ## A268803.P8460678113353515547

`A268792(n+1)+2*A109532(3*(n+2))`
-/

namespace A268803.P8460678113353515547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268792 (n + 1) + 2 * A109532 (3 * (n + 2))

end

end A268803.P8460678113353515547

/-! ## A268803.P12407717250561754391

`A268792(n+1)+A262735(n+1)+A077864(n+2)`
-/

namespace A268803.P12407717250561754391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268792 (n + 1) + (A262735 (n + 1) + A077864 (n + 2))

end

end A268803.P12407717250561754391

/-!
# A268804: Number of nX3 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268804, there is no canonical definition to state claims against.
-/

/-! ## A268804.P10037683590770881560

`A268793(n+1)+A232936(n+1)`
-/

namespace A268804.P10037683590770881560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268793 (n + 1) + A232936 (n + 1)

end

end A268804.P10037683590770881560

/-! ## A268804.P5115912347221628590

`A268793(n+1)+A232941(A167614(n+1))`
-/

namespace A268804.P5115912347221628590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268793 (n + 1) + A232941 (A167614 (n + 1)).toNat

end

end A268804.P5115912347221628590

/-! ## A268804.P1432329090128574648

`A268809(∑[n+2]+4)`
-/

namespace A268804.P1432329090128574648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268804.P1432329090128574648

/-! ## A268804.P8771581589779093907

`lcm(2, A268809(A167614(n+1)))`
-/

namespace A268804.P8771581589779093907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A268809 (A167614 (n + 1)).toNat)

end

end A268804.P8771581589779093907

/-! ## A268804.P5187692455779537596

`A268798(A046691(n)+7)+A232936(n+1)`
-/

namespace A268804.P5187692455779537596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (A046691 n + 7).toNat + A232936 (n + 1)

end

end A268804.P5187692455779537596

/-!
# A268805: Number of nX4 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268805, there is no canonical definition to state claims against.
-/

/-! ## A268805.P13001917711437082246

`A268809(A052905(n)+9)`
-/

namespace A268805.P13001917711437082246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A052905 n + 9).toNat

end

end A268805.P13001917711437082246

/-! ## A268805.P13048584225292391028

`A268809(A055999(n)+10)`
-/

namespace A268805.P13048584225292391028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A055999 n + 10).toNat

end

end A268805.P13048584225292391028

/-! ## A268805.P14346593815951747174

`A268809(A167614(n+2)+1)`
-/

namespace A268805.P14346593815951747174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A167614 (n + 2) + 1).toNat

end

end A268805.P14346593815951747174

/-! ## A268805.P8930161866162041071

`A268809(A374004(n+1))`
-/

namespace A268805.P8930161866162041071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A374004 (n + 1)).toNat

end

end A268805.P8930161866162041071

/-! ## A268805.P5031636100928903523

`A268809(A027379(n+2))`
-/

namespace A268805.P5031636100928903523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A027379 (n + 2)).toNat

end

end A268805.P5031636100928903523

/-!
# A268806: Number of nX5 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268806, there is no canonical definition to state claims against.
-/

/-! ## A268806.P700725386243219371

`A268809(A167499(n+3))`
-/

namespace A268806.P700725386243219371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A167499 (n + 3)).toNat

end

end A268806.P700725386243219371

/-! ## A268806.P9220048295049847843

`A268809(A167614(n+3)+2)`
-/

namespace A268806.P9220048295049847843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A167614 (n + 3) + 2).toNat

end

end A268806.P9220048295049847843

/-! ## A268806.P12570297819821433717

`A268809(A000096(n+3)+6)`
-/

namespace A268806.P12570297819821433717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A000096 (n + 3) + 6).toNat

end

end A268806.P12570297819821433717

/-! ## A268806.P14309389619556046943

`A268809(A052905(n+2)-n+5)`
-/

namespace A268806.P14309389619556046943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A052905 (n + 2) - (n : ℤ) + 5).toNat

end

end A268806.P14309389619556046943

/-! ## A268806.P8608292059888047386

`A268809(A173036(n)+A016825(n))`
-/

namespace A268806.P8608292059888047386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A173036 n + A016825 n).toNat

end

end A268806.P8608292059888047386

/-!
# A268807: Number of nX6 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268807, there is no canonical definition to state claims against.
-/

/-! ## A268807.P13986416479217002665

`A268809(eq[7, A131818(n+1)])`
-/

namespace A268807.P13986416479217002665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268807.P13986416479217002665

/-! ## A268807.P12544355718295502071

`A268809(A374007(n+1))`
-/

namespace A268807.P12544355718295502071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A374007 (n + 1)).toNat

end

end A268807.P12544355718295502071

/-! ## A268807.P3604226413002829263

`A268809(A052905(n+3))`
-/

namespace A268807.P3604226413002829263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A052905 (n + 3)).toNat

end

end A268807.P3604226413002829263

/-! ## A268807.P9499980722898985962

`A268809(eq[3, A219347(n)])`
-/

namespace A268807.P9499980722898985962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268807.P9499980722898985962

/-! ## A268807.P2475971649837683125

`A268809(eq[5, A193592(n)])`
-/

namespace A268807.P2475971649837683125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268807.P2475971649837683125

/-!
# A268808: Number of nX7 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268808, there is no canonical definition to state claims against.
-/

/-! ## A268808.P10661349682004751992

`A268797(n+1)+A232940(n+1)`
-/

namespace A268808.P10661349682004751992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268797 (n + 1) + A232940 (n + 1)

end

end A268808.P10661349682004751992

/-! ## A268808.P7144935718882221306

`A268809(A374008(n+1))`
-/

namespace A268808.P7144935718882221306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A374008 (n + 1)).toNat

end

end A268808.P7144935718882221306

/-! ## A268808.P3001268987963208826

`A268809(A055999(n+4))`
-/

namespace A268808.P3001268987963208826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A055999 (n + 4)).toNat

end

end A268808.P3001268987963208826

/-! ## A268808.P13242148401980245535

`A268809(eq[6, A193592(n)])`
-/

namespace A268808.P13242148401980245535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268808.P13242148401980245535

/-! ## A268808.P17320009539106578615

`A268809(A052905(n+4)-1)`
-/

namespace A268808.P17320009539106578615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (A052905 (n + 4) - 1).toNat

end

end A268808.P17320009539106578615

/-!
# A268809: T(n,k)=Number of nXk 0..2 arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268809, there is no canonical definition to state claims against.
-/

/-! ## A268809.P15560313944866921188

`A268798(n+1)+A232941(n+1)`
-/

namespace A268809.P15560313944866921188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268798 (n + 1) + A232941 (n + 1)

end

end A268809.P15560313944866921188

/-!
# A268810: a(n) = 2*floor(3*n*(n+1)/4).

The programs for A268810, the canonical program `A268810.P17860961296539598460` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268810 has offset 0).

The definition of A268810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*floor(3*n*(n+1)/4)` (program `A268810.P17860961296539598460`, by `A268810.P17860961296539598460.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268810.P17860961296539598460

`2*floor(3*n*(n+1)/4)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268810

/-- `2*floor(3*n*(n+1)/4)` -/
def P17860961296539598460.Spec : Prop :=
  ∀ n, P17860961296539598460.a n = A268810 n

theorem P17860961296539598460.correct : P17860961296539598460.Spec := by
  intro n
  simp only [A268810]

end A268810

/-! ## A268810.P2928208835062382977

`A268428(n)-149`
-/

namespace A268810.P2928208835062382977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268428 n - 149

end

end A268810.P2928208835062382977

namespace A268810

/-- `A268428(n)-149` -/
def P2928208835062382977.Spec : Prop :=
  ∀ n, P2928208835062382977.a n = A268810 n

theorem P2928208835062382977.correct : P2928208835062382977.Spec := by
  intro n
  simp only [A268810, Nat.add_sub_cancel, A268810.P2928208835062382977.a, A268810.P17860961296539598460.a, A268428, A268428.P13060965828343863757.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A268810

/-! ## A268810.P18416638324252469707

`and(∑[3*n], -2)`
-/

namespace A268810.P18416638324252469707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-2)

end

end A268810.P18416638324252469707

namespace A268810

/-- `and(∑[3*n], -2)` -/
def P18416638324252469707.Spec : Prop :=
  ∀ n, P18416638324252469707.a n = A268810 n

end A268810

/-! ## A268810.P12718868759386282715

`or(1, ∑[3*n])-1`
-/

namespace A268810.P12718868759386282715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A268810.P12718868759386282715

namespace A268810

/-- `or(1, ∑[3*n])-1` -/
def P12718868759386282715.Spec : Prop :=
  ∀ n, P12718868759386282715.a n = A268810 n

end A268810

/-! ## A268810.P9682089413008328738

`xor(1, or(1, ∑[3*n]))`
-/

namespace A268810.P9682089413008328738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A268810.P9682089413008328738

namespace A268810

/-- `xor(1, or(1, ∑[3*n]))` -/
def P9682089413008328738.Spec : Prop :=
  ∀ n, (P9682089413008328738.a n : ℤ) = A268810 n

end A268810

/-! ## A268810.P13565001440970962127

`∑[∑[and(2, n)+2]-2]`
-/

namespace A268810.P13565001440970962127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268810.P13565001440970962127

namespace A268810

/-- `∑[∑[and(2, n)+2]-2]` -/
def P13565001440970962127.Spec : Prop :=
  ∀ n, P13565001440970962127.a n = A268810 n

end A268810

/-! ## A268810.P11350001511620393775

`∑[3*n]-∑[n]%2`
-/

namespace A268810.P11350001511620393775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) % 2 : ℕ) : ℤ)

end

end A268810.P11350001511620393775

namespace A268810

/-- `∑[3*n]-∑[n]%2` -/
def P11350001511620393775.Spec : Prop :=
  ∀ n, P11350001511620393775.a n = A268810 n

end A268810

/-! ## A268810.P18053458155957318687

`∑[∑[and(2, n)]+n+n]`
-/

namespace A268810.P18053458155957318687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268810.P18053458155957318687

namespace A268810

/-- `∑[∑[and(2, n)]+n+n]` -/
def P18053458155957318687.Spec : Prop :=
  ∀ n, (P18053458155957318687.a n : ℤ) = A268810 n

end A268810

/-! ## A268810.P14732766842758651579

`∑[∑[6-a(n-2)]]` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A268810.P14732766842758651579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n f2 =>
  6 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268810.P14732766842758651579

namespace A268810

/-- `∑[∑[6-a(n-2)]]` -/
def P14732766842758651579.Spec : Prop :=
  ∀ n, P14732766842758651579.a n = A268810 n

end A268810

/-! ## A268810.P1550302154489184496

`or(2, 3*(n²+n))/2-1`
-/

namespace A268810.P1550302154489184496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 * (n ^ 2 + n)) : ℚ) / 2 - 1

end

end A268810.P1550302154489184496

namespace A268810

/-- `or(2, 3*(n²+n))/2-1` -/
def P1550302154489184496.Spec : Prop :=
  ∀ n, P1550302154489184496.a n = (A268810 n : ℚ)

end A268810

/-! ## A268810.P5048710729195205093

`∑[2*∪[2*n+1, 3*n]]`
-/

namespace A268810.P5048710729195205093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268810.P5048710729195205093

namespace A268810

/-- `∑[2*∪[2*n+1, 3*n]]` -/
def P5048710729195205093.Spec : Prop :=
  ∀ n, (P5048710729195205093.a n : ℤ) = A268810 n

end A268810

/-! ## A268810.P6221103757267993255

`∑[2*(∑[gcd(2, ∑[n+1])]-1)]`
-/

namespace A268810.P6221103757267993255
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268810.P6221103757267993255

namespace A268810

/-- `∑[2*(∑[gcd(2, ∑[n+1])]-1)]` -/
def P6221103757267993255.Spec : Prop :=
  ∀ n, P6221103757267993255.a n = A268810 n

end A268810

/-! ## A268810.P6199524773389278316

`∑[A276283(n)-1]`
-/

namespace A268810.P6199524773389278316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268810.P6199524773389278316

namespace A268810

/-- `∑[A276283(n)-1]` -/
def P6199524773389278316.Spec : Prop :=
  ∀ n, P6199524773389278316.a n = A268810 n

end A268810

/-! ## A268810.P246353318129359608

`A269112(n+1)-3`
-/

namespace A268810.P246353318129359608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269112 (n + 1) - 3

end

end A268810.P246353318129359608

namespace A268810

/-- `A269112(n+1)-3` -/
def P246353318129359608.Spec : Prop :=
  ∀ n, P246353318129359608.a n = A268810 n

end A268810

/-! ## A268810.P10442312312635033828

`∑[∑[A165207(n)]-2]`
-/

namespace A268810.P10442312312635033828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165207 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268810.P10442312312635033828

namespace A268810

/-- `∑[∑[A165207(n)]-2]` -/
def P10442312312635033828.Spec : Prop :=
  ∀ n, P10442312312635033828.a n = A268810 n

end A268810

/-! ## A268810.P9498059049199330133

`∑[A118286(n+1)-2]`
-/

namespace A268810.P9498059049199330133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118286 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268810.P9498059049199330133

namespace A268810

/-- `∑[A118286(n+1)-2]` -/
def P9498059049199330133.Spec : Prop :=
  ∀ n, P9498059049199330133.a n = A268810 n

end A268810

/-! ## A268810.P10227081017190498850

`∑[2*A047273(n+1)]`
-/

namespace A268810.P10227081017190498850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268810.P10227081017190498850

namespace A268810

/-- `∑[2*A047273(n+1)]` -/
def P10227081017190498850.Spec : Prop :=
  ∀ n, P10227081017190498850.a n = A268810 n

end A268810

/-! ## A268810.P5546507007249799030

`∑[A047538(n+1)+n]`
-/

namespace A268810.P5546507007249799030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047538 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268810.P5546507007249799030

namespace A268810

/-- `∑[A047538(n+1)+n]` -/
def P5546507007249799030.Spec : Prop :=
  ∀ n, P5546507007249799030.a n = A268810 n

end A268810

/-! ## A268810.P14097331894176296925

`A301292(n)-A213484(n)`
-/

namespace A268810.P14097331894176296925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301292 n - A213484 n

end

end A268810.P14097331894176296925

namespace A268810

/-- `A301292(n)-A213484(n)` -/
def P14097331894176296925.Spec : Prop :=
  ∀ n, P14097331894176296925.a n = A268810 n

end A268810

/-! ## A268810.P17089662237052146466

`A047401(n+1)+A000326(n)`
-/

namespace A268810.P17089662237052146466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047401 (n + 1) + A000326 n

end

end A268810.P17089662237052146466

namespace A268810

/-- `A047401(n+1)+A000326(n)` -/
def P17089662237052146466.Spec : Prop :=
  ∀ n, P17089662237052146466.a n = A268810 n

end A268810

/-!
# A268811: Sequence of positive integers where each is chosen to be as small as possible subject to the condition that no three terms a(j), a(j+k), a(j+2k) (for any j and k) form a geometric progression.

The programs for A268811, there is no canonical definition to state claims against.
-/

/-! ## A268811.P9205806201568834624

`A000452(A006997(n)+1)`
-/

namespace A268811.P9205806201568834624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (A006997 n + 1).toNat

end

end A268811.P9205806201568834624

/-! ## A268811.P17238402126235156635

`A000452(A100480(n+1))`
-/

namespace A268811.P17238402126235156635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (A100480 (n + 1)).toNat

end

end A268811.P17238402126235156635

/-! ## A268811.P10322844917469137838

`A336590(A006997(n)+1)`
-/

namespace A268811.P10322844917469137838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336590 (A006997 n + 1).toNat

end

end A268811.P10322844917469137838

/-! ## A268811.P15768180053624268315

`A336590(or(A000007(n), A100480(n+1)))`
-/

namespace A268811.P15768180053624268315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336590 (Int.lor (A000007 n) (A100480 (n + 1))).toNat

end

end A268811.P15768180053624268315

/-! ## A268811.P13090111767906834748

`A336590(A100480(n+1)%A033159(n+1))`
-/

namespace A268811.P13090111767906834748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336590 (Int.tmod (A100480 (n + 1)) (A033159 (n + 1))).toNat

end

end A268811.P13090111767906834748

/-! ## A268811.P1197766034453090805

`A337050(A100480(n+1))+A006997(A191107(n+1))`
-/

namespace A268811.P1197766034453090805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (A100480 (n + 1)).toNat + A006997 (A191107 (n + 1)).toNat

end

end A268811.P1197766034453090805

/-! ## A268811.P17295269697980257957

`A023733(A100480(n+1))+A008480(A224480(n+1))`
-/

namespace A268811.P17295269697980257957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A100480 (n + 1)).toNat + A008480 (A224480 (n + 1)).toNat

end

end A268811.P17295269697980257957

/-! ## A268811.P8665849358267067466

`A038605(3^A100480(n+1))`
-/

namespace A268811.P8665849358267067466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A100480 (n + 1) : ℤ))).toNat

end

end A268811.P8665849358267067466

/-!
# A268812: Absolute primes in base 16: every permutation of digits in base 16 is a prime (only the smallest representatives of the permutation classes are shown).

The programs for A268812, there is no canonical definition to state claims against.
-/

/-! ## A268812.P4109689740834050721

`A151800(A060773(n+1))`
-/

namespace A268812.P4109689740834050721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A060773 (n + 1)).toNat

end

end A268812.P4109689740834050721

/-! ## A268812.P1705675302451645008

`A007918(A060773(n+1)+1)`
-/

namespace A268812.P1705675302451645008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A060773 (n + 1) + 1).toNat

end

end A268812.P1705675302451645008

/-! ## A268812.P2034273756336304042

`record[or(A341643(n+1), A353846(2*n+1))]`
-/

namespace A268812.P2034273756336304042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A341643 (n + 1)) (A353846 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268812.P2034273756336304042

/-! ## A268812.P4740490321546324536

`eq[A003415(n), A102541(A369793(n+1))]`
-/

namespace A268812.P4740490321546324536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102541 (A369793 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268812.P4740490321546324536

/-! ## A268812.P7304056855140579585

`A000040(lt[A005728(n), A132948(3*n+1)])`
-/

namespace A268812.P7304056855140579585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132948 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A268812.P7304056855140579585

/-!
# A268813: Decimal expansion of Sum_{k>=0} 1/C(k), where C(k) is a Catalan Number (A000108).

The programs for A268813, there is no canonical definition to state claims against.
-/

/-! ## A268813.P1378104377681568846

`A121839(n)+A000045(floor(1/(n+1)))`
-/

namespace A268813.P1378104377681568846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121839 (n + 1) + A000045 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A268813.P1378104377681568846

/-! ## A268813.P2293724629838139527

`A061511(A121839(n)+floor(1/(n+1)))`
-/

namespace A268813.P2293724629838139527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061511 (A121839 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A268813.P2293724629838139527

/-! ## A268813.P10549416598628853967

`A121839(n)+char[A221352(6*n+1)]`
-/

namespace A268813.P10549416598628853967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221352 (6 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121839 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A268813.P10549416598628853967

/-! ## A268813.P14151098889995260002

`A121839(n)+A034550(a(n-1)+1)` with `a(0)=2`
-/

namespace A268813.P14151098889995260002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A121839 (n + 1) + A034550 (a (n - 1) + 1).toNat

end

end A268813.P14151098889995260002

/-! ## A268813.P5805507031859702201

`A121839(n)+A090192(A001316(n))`
-/

namespace A268813.P5805507031859702201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121839 (n + 1) + A090192 (A001316 n).toNat

end

end A268813.P5805507031859702201

/-! ## A268813.P4322680585425933964

`A126120(A006257(n))+A121839(n)`
-/

namespace A268813.P4322680585425933964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A006257 n).toNat + A121839 (n + 1)

end

end A268813.P4322680585425933964

/-! ## A268813.P10128525455505591051

`A121839(n)+A090192(2*n)`
-/

namespace A268813.P10128525455505591051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121839 (n + 1) + A090192 (2 * n)

end

end A268813.P10128525455505591051

/-!
# A268814: Number of purely crossing partitions of [n].

The programs for A268814, there is no canonical definition to state claims against.
-/

/-! ## A268814.P1486776257809633881

`A268815(n)-a(n-1)` with `a(0)=1`
-/

namespace A268814.P1486776257809633881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A268815 n - a (n - 1)

end

end A268814.P1486776257809633881

/-! ## A268814.P2134932961953717850

`A341936(A324011(n))`
-/

namespace A268814.P2134932961953717850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341936 (A324011 n).toNat

end

end A268814.P2134932961953717850

/-! ## A268814.P3722829220987285037

`A341936(A306418(∑[n]))`
-/

namespace A268814.P3722829220987285037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341936 (A306418 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A268814.P3722829220987285037

/-! ## A268814.P1645997485019366527

`A276205(A235482(n+1)+A053195(n))`
-/

namespace A268814.P1645997485019366527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276205 (A235482 (n + 1) + A053195 n).toNat

end

end A268814.P1645997485019366527

/-! ## A268814.P10774917246324585040

`A324011(n)-A341980(A230820(3*n+1))`
-/

namespace A268814.P10774917246324585040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324011 n - A341980 ((A230820 (3 * n + 1)).toNat + 78)

end

end A268814.P10774917246324585040

/-!
# A268815: Number of purely crossing + partitions of [n].

The programs for A268815, there is no canonical definition to state claims against.
-/

/-! ## A268815.P1928401146324677157

`A268814(abs(1-n))+A268814(n)`
-/

namespace A268815.P1928401146324677157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268814 |1 - (n : ℤ)|.toNat + A268814 n

end

end A268815.P1928401146324677157

/-! ## A268815.P16610333283738554843

`A168201(A097138(n))`
-/

namespace A268815.P16610333283738554843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A097138 n).toNat

end

end A268815.P16610333283738554843

/-! ## A268815.P12373830563504671227

`A168201(A149428(n)-A108488(n))`
-/

namespace A268815.P12373830563504671227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A149428 n - A108488 n).toNat

end

end A268815.P12373830563504671227

/-! ## A268815.P12610606733000101224

`A168201(A092765(n)-A168201(n))`
-/

namespace A268815.P12610606733000101224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A092765 n - A168201 n).toNat

end

end A268815.P12610606733000101224

/-! ## A268815.P6310045696289758017

`A168201(A148951(n)-A307564(n))`
-/

namespace A268815.P6310045696289758017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A148951 n - A307564 n).toNat

end

end A268815.P6310045696289758017

/-!
# A268816: Row 6 of A269158.

The programs for A268816, the canonical program `A268816.P14001663166469489172` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268816 has offset 1).

The definition of A268816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268816.P14001663166469489172

`xor(n, 2*(A130481(n)-and(1, n)))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268816

/-- `xor(n, 2*(A130481(n)-and(1, n)))` -/
def P14001663166469489172.Spec : Prop :=
  ∀ n, P14001663166469489172.a n = A268816 (n + 1)

theorem P14001663166469489172.correct : P14001663166469489172.Spec := by
  intro n
  simp only [A268816, Nat.add_sub_cancel]

end A268816

/-! ## A268816.P7553159017710693564

`A269158(A133263(n+5)+4)`
-/

namespace A268816.P7553159017710693564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269158 (A133263 (n + 5) + 4).toNat

end

end A268816.P7553159017710693564

namespace A268816

/-- `A269158(A133263(n+5)+4)` -/
def P7553159017710693564.Spec : Prop :=
  ∀ n, P7553159017710693564.a n = A268816 (n + 1)

end A268816

/-! ## A268816.P7380693461228751709

`A269158(A000217(n+5)+6)`
-/

namespace A268816.P7380693461228751709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269158 (A000217 (n + 5) + 6).toNat

end

end A268816.P7380693461228751709

namespace A268816

/-- `A269158(A000217(n+5)+6)` -/
def P7380693461228751709.Spec : Prop :=
  ∀ n, P7380693461228751709.a n = A268816 (n + 1)

end A268816

/-! ## A268816.P11283030926814066473

`A269158(A052905(n+2)+11)`
-/

namespace A268816.P11283030926814066473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269158 (A052905 (n + 2) + 11).toNat

end

end A268816.P11283030926814066473

namespace A268816

/-- `A269158(A052905(n+2)+11)` -/
def P11283030926814066473.Spec : Prop :=
  ∀ n, P11283030926814066473.a n = A268816 (n + 1)

end A268816

/-! ## A268816.P12933386630305105002

`A269158(A000096(n+6)-2*(n+3))`
-/

namespace A268816.P12933386630305105002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269158 (A000096 (n + 6) - (2 * (n + 3) : ℤ)).toNat

end

end A268816.P12933386630305105002

namespace A268816

/-- `A269158(A000096(n+6)-2*(n+3))` -/
def P12933386630305105002.Spec : Prop :=
  ∀ n, P12933386630305105002.a n = A268816 (n + 1)

end A268816

/-! ## A268816.P4952690285494729580

`A269159(A055999(n+3)+1)`
-/

namespace A268816.P4952690285494729580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269159 (A055999 (n + 3) + 1).toNat

end

end A268816.P4952690285494729580

namespace A268816

/-- `A269159(A055999(n+3)+1)` -/
def P4952690285494729580.Spec : Prop :=
  ∀ n, P4952690285494729580.a n = A268816 (n + 1)

end A268816

/-! ## A268816.P6884626933506241998

`A269159(A027379(n+4)-2)`
-/

namespace A268816.P6884626933506241998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269159 (A027379 (n + 4) - 2).toNat

end

end A268816.P6884626933506241998

namespace A268816

/-- `A269159(A027379(n+4)-2)` -/
def P6884626933506241998.Spec : Prop :=
  ∀ n, P6884626933506241998.a n = A268816 (n + 1)

end A268816

/-! ## A268816.P1641147484364965994

`A269159(A000124(n+6)-6)`
-/

namespace A268816.P1641147484364965994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269159 (A000124 (n + 6) - 6).toNat

end

end A268816.P1641147484364965994

namespace A268816

/-- `A269159(A000124(n+6)-6)` -/
def P1641147484364965994.Spec : Prop :=
  ∀ n, P1641147484364965994.a n = A268816 (n + 1)

end A268816

/-! ## A268816.P16716159528357354763

`A269159(A005843(n+3)+A000217(n+4))`
-/

namespace A268816.P16716159528357354763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269159 (A005843 (n + 3) + A000217 (n + 4)).toNat

end

end A268816.P16716159528357354763

namespace A268816

/-- `A269159(A005843(n+3)+A000217(n+4))` -/
def P16716159528357354763.Spec : Prop :=
  ∀ n, P16716159528357354763.a n = A268816 (n + 1)

end A268816

/-!
# A268817: Permutation of nonnegative integers: a(n) = A268717(A268717(n)).

The programs for A268817, there is no canonical definition to state claims against.
-/

/-! ## A268817.P16980940318029916112

`A268717(A268717(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268817.P16980940318029916112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268717 (A268717 n).toNat

end

end A268817.P16980940318029916112

/-! ## A268817.P1509327150859800489

`A268821(A268821(2*n))/2`
-/

namespace A268817.P1509327150859800489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268821 (A268821 (2 * n)).toNat : ℚ) / 2

end

end A268817.P1509327150859800489

/-! ## A268817.P4583573417844619923

`A028242(A268821(A268821(2*n+1)))`
-/

namespace A268817.P4583573417844619923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A268821 (A268821 (2 * n + 1)).toNat).toNat

end

end A268817.P4583573417844619923

/-! ## A268817.P6263180246107946072

`2^A133574(A001316(n))*A268821(A268821(2*n))`
-/

namespace A268817.P6263180246107946072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ) * (A268821 (A268821 (2 * n)).toNat : ℚ)

end

end A268817.P6263180246107946072

/-! ## A268817.P17684193535738929797

`A268825(A268825(4*n))/4`
-/

namespace A268817.P17684193535738929797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268825 (A268825 (4 * n)).toNat : ℚ) / 4

end

end A268817.P17684193535738929797

/-!
# A268818: Permutation of nonnegative integers: a(n) = A268718(A268718(n)).

The programs for A268818, there is no canonical definition to state claims against.
-/

/-! ## A268818.P13915873868459254825

`A268718(A268718(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268818.P13915873868459254825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268718 (A268718 n).toNat

end

end A268818.P13915873868459254825

/-! ## A268818.P4088235951541323154

`A268822(A268822(2*n))/2`
-/

namespace A268818.P4088235951541323154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268822 (A268822 (2 * n)).toNat : ℚ) / 2

end

end A268818.P4088235951541323154

/-! ## A268818.P2557718338287110504

`floor(A268822(A268822(Δ[n²]))/2)`
-/

namespace A268818.P2557718338287110504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268822 (A268822 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat : ℚ) / 2⌋

end

end A268818.P2557718338287110504

/-! ## A268818.P14659437301703711711

`A004526(A268822(A268822(2*n)))`
-/

namespace A268818.P14659437301703711711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A268822 (A268822 (2 * n)).toNat).toNat

end

end A268818.P14659437301703711711

/-! ## A268818.P14689144766243577480

`A268826(A268826(4*n))/4`
-/

namespace A268818.P14689144766243577480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268826 (A268826 (4 * n)).toNat : ℚ) / 4

end

end A268818.P14689144766243577480

/-!
# A268820: Square array A(r,c): A(0,c) = c, A(r,0) = 0, A(r>=1,c>=1) = A003188(1+A006068(A(r-1,c-1))) = A268717(1+A(r-1,c-1)), read by descending antidiagonals as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

The programs for A268820, there is no canonical definition to state claims against.
-/

/-! ## A268820.P15577090660085107781

`A118977(A173787(n))%A001223(A001317(n))`
-/

namespace A268820.P15577090660085107781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118977 (A173787 n).toNat) (A001223 (A001317 n).toNat)

end

end A268820.P15577090660085107781

/-! ## A268820.P5812455789642556247

`(A206735(n+1)+A157187(A157156(n))-1)%A217518(3*(n+2))`
-/

namespace A268820.P5812455789642556247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206735 (n + 1) + A157187 (A157156 n).toNat - 1) (A217518 (3 * (n + 2)))

end

end A268820.P5812455789642556247

/-! ## A268820.P3553895825034974408

`A374992(A296129(n))`
-/

namespace A268820.P3553895825034974408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374992 (A296129 n).toNat

end

end A268820.P3553895825034974408

/-! ## A268820.P8128536602039853004

`A241186(A206294(n+1))`
-/

namespace A268820.P8128536602039853004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241186 (A206294 (n + 1)).toNat

end

end A268820.P8128536602039853004

/-! ## A268820.P2738797399861411556

`A333224(A143395(n+1))`
-/

namespace A268820.P2738797399861411556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (A143395 (n + 1)).toNat

end

end A268820.P2738797399861411556

/-!
# A268821: Permutation of nonnegative integers: a(0) = 0, a(n) = A268717(1 + A268717(n-1)).

The programs for A268821, there is no canonical definition to state claims against.
-/

/-! ## A268821.P607381664558183969

`A268718(A268823(n+1))-1`
-/

namespace A268821.P607381664558183969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268718 (A268823 (n + 1)).toNat - 1

end

end A268821.P607381664558183969

/-! ## A268821.P1272995637529116513

`A268822(A268825(n+2))-2`
-/

namespace A268821.P1272995637529116513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268822 (A268825 (n + 2)).toNat - 2

end

end A268821.P1272995637529116513

/-! ## A268821.P16550386795429948807

`floor(A268825(2*n)/2)`
-/

namespace A268821.P16550386795429948807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268825 (2 * n) : ℚ) / 2⌋

end

end A268821.P16550386795429948807

/-! ## A268821.P15559451798051477214

`A004526(A268825(2*n))`
-/

namespace A268821.P15559451798051477214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A268825 (2 * n)).toNat

end

end A268821.P15559451798051477214

/-! ## A268821.P11227582263129541528

`A123108(A268825(Δ[n²]))`
-/

namespace A268821.P11227582263129541528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A268825 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A268821.P11227582263129541528

/-! ## A268821.P1866861027618836990

`A123108(A268825(2*n)+Δ[A123108(n+1)])`
-/

namespace A268821.P1866861027618836990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A268825 (2 * n) + (f1 (n + 1) - f1 n)).toNat

end

end A268821.P1866861027618836990

/-! ## A268821.P11571722736769872102

`A268820(∑[n+2]+3)`
-/

namespace A268821.P11571722736769872102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A268821.P11571722736769872102

/-! ## A268821.P640225270462984841

`A268715(A004273(n)+A000217(n))`
-/

namespace A268821.P640225270462984841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268715 (A004273 n + A000217 n).toNat

end

end A268821.P640225270462984841

/-! ## A268821.P10917014031461722443

`A268715(A046691(n)%A256539(n))`
-/

namespace A268821.P10917014031461722443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268715 (Int.tmod (A046691 n) (A256539 n)).toNat

end

end A268821.P10917014031461722443

/-!
# A268822: Permutation of nonnegative integers: a(0) = 0, a(n) = A268718(1+A268718(n-1)).

The programs for A268822, there is no canonical definition to state claims against.
-/

/-! ## A268822.P16592254369641761737

`floor(A268826(2*n)/2)`
-/

namespace A268822.P16592254369641761737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268826 (2 * n) : ℚ) / 2⌋

end

end A268822.P16592254369641761737

/-! ## A268822.P535860647711706023

`A004525(A268826(2*n))`
-/

namespace A268822.P535860647711706023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A268826 (2 * n)).toNat

end

end A268822.P535860647711706023

/-! ## A268822.P9911221926276320329

`A268824(A268717(n+1))-1`
-/

namespace A268822.P9911221926276320329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268824 (A268717 (n + 1)).toNat - 1

end

end A268822.P9911221926276320329

/-! ## A268822.P974863910202112193

`A268826(A268821(n+2))-2`
-/

namespace A268822.P974863910202112193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268826 (A268821 (n + 2)).toNat - 2

end

end A268822.P974863910202112193

/-! ## A268822.P9803672488845961081

`A268830(∑[n+2]+3)`
-/

namespace A268822.P9803672488845961081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A268822.P9803672488845961081

/-!
# A268823: Permutation of nonnegative integers: a(0) = 0, a(n) = A268717(1 + A268821(n-1)).

The programs for A268823, there is no canonical definition to state claims against.
-/

/-! ## A268823.P2898459328400371896

`A268718(A268825(n+1))-1`
-/

namespace A268823.P2898459328400371896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268718 (A268825 (n + 1)).toNat - 1

end

end A268823.P2898459328400371896

/-! ## A268823.P14260620627603890205

`floor(A268831(2*n)/2)`
-/

namespace A268823.P14260620627603890205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268831 (2 * n) : ℚ) / 2⌋

end

end A268823.P14260620627603890205

/-! ## A268823.P7120950811220686332

`A004526(A268831(2*n))`
-/

namespace A268823.P7120950811220686332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A268831 (2 * n)).toNat

end

end A268823.P7120950811220686332

/-! ## A268823.P5397910670368727999

`A028242(or(1, A268831(2*n)))`
-/

namespace A268823.P5397910670368727999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A268831 (2 * n))).toNat

end

end A268823.P5397910670368727999

/-! ## A268823.P6430084403096191266

`A268831(2*n+1)-A028242(A268831(2*n))`
-/

namespace A268823.P6430084403096191266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268831 (2 * n + 1) - A028242 (A268831 (2 * n)).toNat

end

end A268823.P6430084403096191266

/-! ## A268823.P13581249601108623182

`A268820(∑[n+3]+6)`
-/

namespace A268823.P13581249601108623182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A268823.P13581249601108623182

/-!
# A268824: Permutation of nonnegative integers: a(0) = 0, a(n) = 1 + A268822(A268718(n)-1).

The programs for A268824, there is no canonical definition to state claims against.
-/

/-! ## A268824.P8021123890740884314

`floor(A268832(2*n)/2)`
-/

namespace A268824.P8021123890740884314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268832 (2 * n) : ℚ) / 2⌋

end

end A268824.P8021123890740884314

/-! ## A268824.P1598097883148739943

`A004526(A268832(2*n))`
-/

namespace A268824.P1598097883148739943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A268832 (2 * n)).toNat

end

end A268824.P1598097883148739943

/-! ## A268824.P733414562270060399

`A268826(A268717(n+1))-1`
-/

namespace A268824.P733414562270060399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268826 (A268717 (n + 1)).toNat - 1

end

end A268824.P733414562270060399

/-! ## A268824.P16983788032507312717

`A268828(A268821(n+2))-2`
-/

namespace A268824.P16983788032507312717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268828 (A268821 (n + 2)).toNat - 2

end

end A268824.P16983788032507312717

/-! ## A268824.P4109427979266696913

`A268830(A167614(n+2))`
-/

namespace A268824.P4109427979266696913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A167614 (n + 2)).toNat

end

end A268824.P4109427979266696913

/-! ## A268824.P17155925960566926690

`A268830(A000096(n+2)+4)`
-/

namespace A268824.P17155925960566926690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A000096 (n + 2) + 4).toNat

end

end A268824.P17155925960566926690

/-! ## A268824.P5934232080273124915

`A268830(A166136(n+2)-3)`
-/

namespace A268824.P5934232080273124915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A166136 (n + 2) - 3).toNat

end

end A268824.P5934232080273124915

/-! ## A268824.P3882543715086429740

`A268830(eq[2, A002260(n+1)-2])`
-/

namespace A268824.P3882543715086429740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268824.P3882543715086429740

/-! ## A268824.P4663984594064050015

`A268830(eq[2, A002260(n+1)/2])`
-/

namespace A268824.P4663984594064050015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A268824.P4663984594064050015

/-! ## A268824.P12371875994606409523

`A268830(eq[3, A002262(n)])`
-/

namespace A268824.P12371875994606409523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268824.P12371875994606409523

/-! ## A268824.P10976878827872914077

`A268830(eq[2, A135223(n+1)-2])`
-/

namespace A268824.P10976878827872914077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268824.P10976878827872914077

/-!
# A268825: Permutation of nonnegative integers: a(0) = 0, a(n) = A268717(1+A268823(n-1)).

The programs for A268825, there is no canonical definition to state claims against.
-/

/-! ## A268825.P9006235754196704883

`A268718(A268827(n+1))-1`
-/

namespace A268825.P9006235754196704883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268718 (A268827 (n + 1)).toNat - 1

end

end A268825.P9006235754196704883

/-! ## A268825.P2521665205172501084

`A268822(A268831(n+2))-2`
-/

namespace A268825.P2521665205172501084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268822 (A268831 (n + 2)).toNat - 2

end

end A268825.P2521665205172501084

/-! ## A268825.P1113582853510896275

`A003188(A006068(A268827(n+1))-1)`
-/

namespace A268825.P1113582853510896275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A006068 (A268827 (n + 1)).toNat - 1).toNat

end

end A268825.P1113582853510896275

/-! ## A268825.P8921328022214360676

`A003188(A006068(A268831(n+2))-2)`
-/

namespace A268825.P8921328022214360676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A006068 (A268831 (n + 2)).toNat - 2).toNat

end

end A268825.P8921328022214360676

/-! ## A268825.P12828117865771949580

`A268820(A167499(n+3)-1)`
-/

namespace A268825.P12828117865771949580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A167499 (n + 3) - 1).toNat

end

end A268825.P12828117865771949580

/-! ## A268825.P2940238205627159472

`A268820(A000096(n+3)+5)`
-/

namespace A268825.P2940238205627159472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A000096 (n + 3) + 5).toNat

end

end A268825.P2940238205627159472

/-! ## A268825.P12975539179224045354

`A268820(A000217(n+4)+4)`
-/

namespace A268825.P12975539179224045354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A000217 (n + 4) + 4).toNat

end

end A268825.P12975539179224045354

/-! ## A268825.P7310963123553001467

`A268820(eq[4, A002262(n)])`
-/

namespace A268825.P7310963123553001467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268825.P7310963123553001467

/-! ## A268825.P11468423921151069922

`A268820(eq[2, A214015(n)]+2)`
-/

namespace A268825.P11468423921151069922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A268825.P11468423921151069922

/-!
# A268826: Permutation of nonnegative integers: a(0) = 0, a(n) = 1 + A268824(A268718(n)-1).

The programs for A268826, there is no canonical definition to state claims against.
-/

/-! ## A268826.P1635043985295904037

`A268828(A268717(n+1))-1`
-/

namespace A268826.P1635043985295904037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268828 (A268717 (n + 1)).toNat - 1

end

end A268826.P1635043985295904037

/-! ## A268826.P10013922361760441037

`A268832(A268821(n+2))-2`
-/

namespace A268826.P10013922361760441037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268832 (A268821 (n + 2)).toNat - 2

end

end A268826.P10013922361760441037

/-! ## A268826.P13781355765355114300

`A268830(A000096(n+3)+5)`
-/

namespace A268826.P13781355765355114300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A000096 (n + 3) + 5).toNat

end

end A268826.P13781355765355114300

/-! ## A268826.P9103202095829021098

`A268830(A034856(n+3)+6)`
-/

namespace A268826.P9103202095829021098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A034856 (n + 3) + 6).toNat

end

end A268826.P9103202095829021098

/-! ## A268826.P5820425632786107493

`A268830(n+7+A000124(n+3))`
-/

namespace A268826.P5820425632786107493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 ((n + 7 : ℤ) + A000124 (n + 3)).toNat

end

end A268826.P5820425632786107493

/-! ## A268826.P18348121421030165959

`A268830(A052905(n+3)-2*(n+1))`
-/

namespace A268826.P18348121421030165959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A052905 (n + 3) - (2 * (n + 1) : ℤ)).toNat

end

end A268826.P18348121421030165959

/-! ## A268826.P9260185103695868931

`A268830(eq[4, A002262(n)])`
-/

namespace A268826.P9260185103695868931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268826.P9260185103695868931

/-! ## A268826.P10578366503587790465

`A268830(eq[2, A080934(n)]+2)`
-/

namespace A268826.P10578366503587790465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A268826.P10578366503587790465

/-!
# A268827: Permutation of nonnegative integers: a(0) = 0, a(n) = A268717(1+A268825(n-1)).

The programs for A268827, there is no canonical definition to state claims against.
-/

/-! ## A268827.P4011790230479194366

`A268718(A268831(n+1))-1`
-/

namespace A268827.P4011790230479194366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268718 (A268831 (n + 1)).toNat - 1

end

end A268827.P4011790230479194366

/-! ## A268827.P11743547778623817041

`A268822(A268933(n+2))-2`
-/

namespace A268827.P11743547778623817041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268822 (A268933 (n + 2)).toNat - 2

end

end A268827.P11743547778623817041

/-! ## A268827.P11967358205797455673

`A268820(A167499(n+4))`
-/

namespace A268827.P11967358205797455673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A167499 (n + 4)).toNat

end

end A268827.P11967358205797455673

/-! ## A268827.P14266662131165497559

`A268820(A000096(n+4)+6)`
-/

namespace A268827.P14266662131165497559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A000096 (n + 4) + 6).toNat

end

end A268827.P14266662131165497559

/-! ## A268827.P4931204722176151656

`A268820(A000217(n+6)-(n+1))`
-/

namespace A268827.P4931204722176151656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A268827.P4931204722176151656

/-! ## A268827.P4227155913941296241

`A268820(eq[5, A002262(n)])`
-/

namespace A268827.P4227155913941296241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268827.P4227155913941296241

/-! ## A268827.P4115516029005280500

`A268820(eq[2, A273693(n)]+2)`
-/

namespace A268827.P4115516029005280500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A268827.P4115516029005280500

/-!
# A268828: Permutation of nonnegative integers: a(0) = 0, a(n) = 1 + A268826(A268718(n)-1).

The programs for A268828, there is no canonical definition to state claims against.
-/

/-! ## A268828.P17211215053670188651

`A268832(A268717(n+1))-1`
-/

namespace A268828.P17211215053670188651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268832 (A268717 (n + 1)).toNat - 1

end

end A268828.P17211215053670188651

/-! ## A268828.P1683095229733831490

`A268934(A268821(n+2))-2`
-/

namespace A268828.P1683095229733831490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268934 (A268821 (n + 2)).toNat - 2

end

end A268828.P1683095229733831490

/-! ## A268828.P17411944151166253379

`A268830(A167499(n+4))`
-/

namespace A268828.P17411944151166253379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A167499 (n + 4)).toNat

end

end A268828.P17411944151166253379

/-! ## A268828.P9953755964009683050

`A268830(A000217(n+5)+5)`
-/

namespace A268828.P9953755964009683050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A000217 (n + 5) + 5).toNat

end

end A268828.P9953755964009683050

/-! ## A268828.P17910166804004255182

`A268830(n+9+A000124(n+4))`
-/

namespace A268828.P17910166804004255182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 ((n + 9 : ℤ) + A000124 (n + 4)).toNat

end

end A268828.P17910166804004255182

/-! ## A268828.P12794350345606618079

`A268830(A052905(n)+A005408(n+9))`
-/

namespace A268828.P12794350345606618079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A052905 n + A005408 (n + 9)).toNat

end

end A268828.P12794350345606618079

/-! ## A268828.P1857355635137173996

`A268830(eq[32, A059268(n)])`
-/

namespace A268828.P1857355635137173996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268828.P1857355635137173996

/-! ## A268828.P5479948293039013204

`A268830(eq[5, A002262(n)])`
-/

namespace A268828.P5479948293039013204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268828.P5479948293039013204

/-!
# A268829: Square array A(row,col) = B(row,(2*col)-1), where B(p,q) = 0 if gcd(p,q) > 1, and 1 + 2*F(p,q) otherwise, where F is defined as in A269158. Array is read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A268829, there is no canonical definition to state claims against.
-/

/-! ## A268829.P11113990476029932581

`A343996(n+1)^A048994(A126350(n+1))`
-/

namespace A268829.P11113990476029932581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343996 (n + 1) : ℚ) ^ (A048994 (A126350 (n + 1)).toNat : ℤ)

end

end A268829.P11113990476029932581

/-!
# A268830: Square array A(r,c): A(0,c) = c, A(r,0) = 0, A(r>=1,c>=1) = 1+A(r-1,A268718(c)-1) = 1 + A(r-1, A003188(A006068(c)-1)), read by descending antidiagonals.

The programs for A268830, there is no canonical definition to state claims against.
-/

/-! ## A268830.P12498954916767277964

`A000030(A025581(n)^A208993(n+1))`
-/

namespace A268830.P12498954916767277964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A025581 n : ℚ) ^ (A208993 (n + 1) : ℤ))).toNat

end

end A268830.P12498954916767277964

/-! ## A268830.P7391861156637545491

`A001222((A099627(n)^A116433(n))%(1-A071699(n+1))²)`
-/

namespace A268830.P7391861156637545491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (SequenceMachineLib.roundAway ((A099627 n : ℚ) ^ (A116433 n : ℤ))) ((1 - A071699 (n + 1)) ^ 2)).toNat

end

end A268830.P7391861156637545491

/-! ## A268830.P15681229481073776770

`A001222(A099627(n)^A116433(n))`
-/

namespace A268830.P15681229481073776770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A099627 n : ℚ) ^ (A116433 n : ℤ))).toNat

end

end A268830.P15681229481073776770

/-! ## A268830.P8386880449641209604

`A300670(n+1)-A010060(A347811(n))`
-/

namespace A268830.P8386880449641209604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300670 (n + 1) - A010060 (A347811 n).toNat

end

end A268830.P8386880449641209604

/-! ## A268830.P12345749922649870053

`∑{e}[A099627(n)^A116433(n), A028310(#)]`
-/

namespace A268830.P12345749922649870053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099627 n : ℚ) ^ (A116433 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A028310 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A268830.P12345749922649870053

/-!
# A268831: Permutation of nonnegative integers: a(0) = 0, a(n) = A268717(1+A268827(n-1)).

The programs for A268831, there is no canonical definition to state claims against.
-/

/-! ## A268831.P14178047713449515488

`A268718(A268933(n+1))-1`
-/

namespace A268831.P14178047713449515488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268718 (A268933 (n + 1)).toNat - 1

end

end A268831.P14178047713449515488

/-! ## A268831.P4438124364238002868

`A268820(A166136(n+5))`
-/

namespace A268831.P4438124364238002868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A166136 (n + 5)).toNat

end

end A268831.P4438124364238002868

/-! ## A268831.P6670884565639428865

`A268820(A056119(n)+27)`
-/

namespace A268831.P6670884565639428865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A056119 n + 27).toNat

end

end A268831.P6670884565639428865

/-! ## A268831.P512923359964227615

`A268820(A167499(n+5)+1)`
-/

namespace A268831.P512923359964227615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A167499 (n + 5) + 1).toNat

end

end A268831.P512923359964227615

/-! ## A268831.P4867922287755265439

`A268820(A167614(n+5)+3)`
-/

namespace A268831.P4867922287755265439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A167614 (n + 5) + 3).toNat

end

end A268831.P4867922287755265439

/-! ## A268831.P4035567422410992589

`A268820(A000096(n+5)+7)`
-/

namespace A268831.P4035567422410992589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A000096 (n + 5) + 7).toNat

end

end A268831.P4035567422410992589

/-! ## A268831.P8815983491691104775

`A268820(A000217(n+6)+6)`
-/

namespace A268831.P8815983491691104775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A000217 (n + 6) + 6).toNat

end

end A268831.P8815983491691104775

/-! ## A268831.P15590992590794720367

`A268820(A046691(n+4)+10)`
-/

namespace A268831.P15590992590794720367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A046691 (n + 4) + 10).toNat

end

end A268831.P15590992590794720367

/-! ## A268831.P6463617890267834899

`A268820(A000124(n+7)-(n+2))`
-/

namespace A268831.P6463617890267834899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A000124 (n + 7) - (n + 2 : ℤ)).toNat

end

end A268831.P6463617890267834899

/-! ## A268831.P13680850254073555648

`A268820(A027379(n+6)-A004275(n+4))`
-/

namespace A268831.P13680850254073555648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A027379 (n + 6) - A004275 (n + 4)).toNat

end

end A268831.P13680850254073555648

/-! ## A268831.P18186010478546329462

`A268820(eq[6, A002262(n)])`
-/

namespace A268831.P18186010478546329462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268831.P18186010478546329462

/-!
# A268832: Permutation of nonnegative integers: a(0) = 0, a(n) = 1 + A268828(A268718(n)-1).

The programs for A268832, there is no canonical definition to state claims against.
-/

/-! ## A268832.P5392853624594156801

`A268934(A268717(n+1))-1`
-/

namespace A268832.P5392853624594156801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268934 (A268717 (n + 1)).toNat - 1

end

end A268832.P5392853624594156801

/-! ## A268832.P6979865585541703951

`A268830(C(n+7, 2)+6)`
-/

namespace A268832.P6979865585541703951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (Nat.choose (n + 7) 2 + 6)

end

end A268832.P6979865585541703951

/-! ## A268832.P3422422697321960715

`A268830(A166136(n+5))`
-/

namespace A268832.P3422422697321960715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A166136 (n + 5)).toNat

end

end A268832.P3422422697321960715

/-! ## A268832.P5125230205040036244

`A268830(A056119(n)+27)`
-/

namespace A268832.P5125230205040036244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A056119 n + 27).toNat

end

end A268832.P5125230205040036244

/-! ## A268832.P3301306989663212913

`A268830(A167487(n+5)-1)`
-/

namespace A268832.P3301306989663212913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A167487 (n + 5) - 1).toNat

end

end A268832.P3301306989663212913

/-! ## A268832.P5202539439014210962

`A268830(A000124(n+6)+5)`
-/

namespace A268832.P5202539439014210962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A000124 (n + 6) + 5).toNat

end

end A268832.P5202539439014210962

/-! ## A268832.P16052553430999224421

`A268830(A000096(n+5)+7)`
-/

namespace A268832.P16052553430999224421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A000096 (n + 5) + 7).toNat

end

end A268832.P16052553430999224421

/-! ## A268832.P11094348268916910226

`A268830(A000217(n+6)+6)`
-/

namespace A268832.P11094348268916910226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A000217 (n + 6) + 6).toNat

end

end A268832.P11094348268916910226

/-! ## A268832.P11609034037476939057

`A268830(A052905(n+5)-2*(n+2))`
-/

namespace A268832.P11609034037476939057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A052905 (n + 5) - (2 * (n + 2) : ℤ)).toNat

end

end A268832.P11609034037476939057

/-! ## A268832.P11694988845495070252

`A268830(A034856(n+5)+9-gcd(n, n+1))`
-/

namespace A268832.P11694988845495070252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A034856 (n + 5) + 9 - (Nat.gcd n (n + 1) : ℤ)).toNat

end

end A268832.P11694988845495070252

/-! ## A268832.P13971671782857628650

`A268830(eq[64, A059268(n)])`
-/

namespace A268832.P13971671782857628650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268832.P13971671782857628650

/-! ## A268832.P1870232096097899823

`A268830(eq[7, A002260(n+1)])`
-/

namespace A268832.P1870232096097899823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268832.P1870232096097899823

/-! ## A268832.P326288169430411430

`A268830(eq[6, A002262(n)])`
-/

namespace A268832.P326288169430411430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268832.P326288169430411430

/-!
# A268833: Square array A(n, k) = A101080(k, A003188(n+A006068(k))), read by descending antidiagonals, where A003188 is the binary Gray code, A006068 is its inverse, and A101080(x,y) gives the Hamming distance between binary expansions of x and y.

The programs for A268833, there is no canonical definition to state claims against.
-/

/-! ## A268833.P2120033269691789244

`A268834(A061579(n))`
-/

namespace A268833.P2120033269691789244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268834 (A061579 n).toNat

end

end A268833.P2120033269691789244

/-! ## A268833.P17487135255285035904

`A268834(A114327(n)+n)`
-/

namespace A268833.P17487135255285035904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268834 (A114327 n + (n : ℤ)).toNat

end

end A268833.P17487135255285035904

/-! ## A268833.P7383571768455112177

`A268834(A038722(n+1)-1)`
-/

namespace A268833.P7383571768455112177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268834 (A038722 (n + 1) - 1).toNat

end

end A268833.P7383571768455112177

/-! ## A268833.P8089441712878087399

`A048793(A002262(n)^A254524(2*n+1))`
-/

namespace A268833.P8089441712878087399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A254524 (2 * n + 1) : ℤ))).toNat

end

end A268833.P8089441712878087399

/-! ## A268833.P16183401150517111967

`A324657(A236433(n+1))`
-/

namespace A268833.P16183401150517111967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324657 (A236433 (n + 1)).toNat

end

end A268833.P16183401150517111967

/-!
# A268834: Transpose of array A268833.

The programs for A268834, there is no canonical definition to state claims against.
-/

/-! ## A268834.P3335312799837606266

`A268833(A061579(n))`
-/

namespace A268834.P3335312799837606266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268833 (A061579 n).toNat

end

end A268834.P3335312799837606266

/-! ## A268834.P4757349047454599486

`A268833(A038722(n+2))`
-/

namespace A268834.P4757349047454599486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268833 (A038722 (n + 2)).toNat

end

end A268834.P4757349047454599486

/-! ## A268834.P9558046575109369860

`A268833(A114327(n)+n)`
-/

namespace A268834.P9558046575109369860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268833 (A114327 n + (n : ℤ)).toNat

end

end A268834.P9558046575109369860

/-! ## A268834.P13845572947635670994

`A268833(A025581(n)+n-A002262(n))`
-/

namespace A268834.P13845572947635670994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268833 (A025581 n + ((n : ℤ) - A002262 n)).toNat

end

end A268834.P13845572947635670994

/-! ## A268834.P7934139198614711145

`A268833(n-(A002262(n)-A025581(n)))`
-/

namespace A268834.P7934139198614711145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268833 ((n : ℤ) - (A002262 n - A025581 n)).toNat

end

end A268834.P7934139198614711145

/-!
# A268835: Main diagonal of arrays A268833 & A268834: a(n) = A101080(n, A268820(n, 2*n)).

The programs for A268835, the canonical program `A268835.P3997942670541146932` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268835 has offset 0).

The definition of A268835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268835.P3997942670541146932

`A005811(xor(A006068(n)+n, A006068(n)))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A268835

/-- `A005811(xor(A006068(n)+n, A006068(n)))` -/
def P3997942670541146932.Spec : Prop :=
  ∀ n, P3997942670541146932.a n = A268835 n

theorem P3997942670541146932.correct : P3997942670541146932.Spec := by
  intro n
  simp only [A268835]

end A268835

/-! ## A268835.P11106280444633958490

`A268833(∑[4*n])`
-/

namespace A268835.P11106280444633958490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268833 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268835.P11106280444633958490

namespace A268835

/-- `A268833(∑[4*n])` -/
def P11106280444633958490.Spec : Prop :=
  ∀ n, P11106280444633958490.a n = A268835 n

end A268835

/-! ## A268835.P18134464531954764081

`dr(A268833(2*(n²+n)))`
-/

namespace A268835.P18134464531954764081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A268833 (2 * (n ^ 2 + n)))

end

end A268835.P18134464531954764081

namespace A268835

/-- `dr(A268833(2*(n²+n)))` -/
def P18134464531954764081.Spec : Prop :=
  ∀ n, (P18134464531954764081.a n : ℤ) = A268835 n

end A268835

/-! ## A268835.P15039098169181992427

`A268833(n*2*(n+1))%10`
-/

namespace A268835.P15039098169181992427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268833 (n * (2 * (n + 1)))) 10

end

end A268835.P15039098169181992427

namespace A268835

/-- `A268833(n*2*(n+1))%10` -/
def P15039098169181992427.Spec : Prop :=
  ∀ n, P15039098169181992427.a n = A268835 n

end A268835

/-! ## A268835.P10503818119933508794

`A158388(n)*A268833(2*(n²+n))`
-/

namespace A268835.P10503818119933508794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A268833 (2 * (n ^ 2 + n))

end

end A268835.P10503818119933508794

namespace A268835

/-- `A158388(n)*A268833(2*(n²+n))` -/
def P10503818119933508794.Spec : Prop :=
  ∀ n, P10503818119933508794.a n = A268835 n

end A268835

/-! ## A268835.P15726976224840382741

`abs(A057428(n))*A268833(2*(n²+n))`
-/

namespace A268835.P15726976224840382741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 n| * A268833 (2 * (n ^ 2 + n))

end

end A268835.P15726976224840382741

namespace A268835

/-- `abs(A057428(n))*A268833(2*(n²+n))` -/
def P15726976224840382741.Spec : Prop :=
  ∀ n, P15726976224840382741.a n = A268835 n

end A268835

/-! ## A268835.P1709424186132224146

`A033999(n)²*A268833(2*(n²+n))`
-/

namespace A268835.P1709424186132224146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A268833 (2 * (n ^ 2 + n))

end

end A268835.P1709424186132224146

namespace A268835

/-- `A033999(n)²*A268833(2*(n²+n))` -/
def P1709424186132224146.Spec : Prop :=
  ∀ n, P1709424186132224146.a n = A268835 n

end A268835

/-! ## A268835.P8931456608775050084

`A007318(C(2, n))*A268833(2*(n²+n))`
-/

namespace A268835.P8931456608775050084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A268833 (2 * (n ^ 2 + n))

end

end A268835.P8931456608775050084

namespace A268835

/-- `A007318(C(2, n))*A268833(2*(n²+n))` -/
def P8931456608775050084.Spec : Prop :=
  ∀ n, P8931456608775050084.a n = A268835 n

end A268835

/-! ## A268835.P14525962969366901690

`A076479(n+1)²*A268833(2*(n²+n))`
-/

namespace A268835.P14525962969366901690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) ^ 2 * A268833 (2 * (n ^ 2 + n))

end

end A268835.P14525962969366901690

namespace A268835

/-- `A076479(n+1)²*A268833(2*(n²+n))` -/
def P14525962969366901690.Spec : Prop :=
  ∀ n, P14525962969366901690.a n = A268835 n

end A268835

/-! ## A268835.P8205061471770693003

`ceil(n/A000041(n))*A268833(2*(n²+n))`
-/

namespace A268835.P8205061471770693003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A000041 n : ℚ)⌉ * A268833 (2 * (n ^ 2 + n))

end

end A268835.P8205061471770693003

namespace A268835

/-- `ceil(n/A000041(n))*A268833(2*(n²+n))` -/
def P8205061471770693003.Spec : Prop :=
  ∀ n, P8205061471770693003.a n = A268835 n

end A268835

/-! ## A268835.P17955008901218869723

`A014963(6*(n+1))*A268833(2*(n²+n))`
-/

namespace A268835.P17955008901218869723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A268833 (2 * (n ^ 2 + n))

end

end A268835.P17955008901218869723

namespace A268835

/-- `A014963(6*(n+1))*A268833(2*(n²+n))` -/
def P17955008901218869723.Spec : Prop :=
  ∀ n, P17955008901218869723.a n = A268835 n

end A268835

/-! ## A268835.P3164536407011614524

`A268833(2*(n²+n))+A008683(8*n+4)`
-/

namespace A268835.P3164536407011614524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268833 (2 * (n ^ 2 + n)) + A008683 (8 * n + 4)

end

end A268835.P3164536407011614524

namespace A268835

/-- `A268833(2*(n²+n))+A008683(8*n+4)` -/
def P3164536407011614524.Spec : Prop :=
  ∀ n, P3164536407011614524.a n = A268835 n

end A268835

/-! ## A268835.P12895787252023082648

`gcd(2, A000040(n+1))*A268833(2*(n²+n))`
-/

namespace A268835.P12895787252023082648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) * A268833 (2 * (n ^ 2 + n))

end

end A268835.P12895787252023082648

namespace A268835

/-- `gcd(2, A000040(n+1))*A268833(2*(n²+n))` -/
def P12895787252023082648.Spec : Prop :=
  ∀ n, P12895787252023082648.a n = A268835 n

end A268835

/-! ## A268835.P5043973477191613922

`A000041(C(2, n+1))*A268833(2*(n²+n))`
-/

namespace A268835.P5043973477191613922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) * A268833 (2 * (n ^ 2 + n))

end

end A268835.P5043973477191613922

namespace A268835

/-- `A000041(C(2, n+1))*A268833(2*(n²+n))` -/
def P5043973477191613922.Spec : Prop :=
  ∀ n, P5043973477191613922.a n = A268835 n

end A268835

/-! ## A268835.P15318701243872686406

`A000108(gcd(n, n+1))*A268833(2*(n²+n))`
-/

namespace A268835.P15318701243872686406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A268833 (2 * (n ^ 2 + n))

end

end A268835.P15318701243872686406

namespace A268835

/-- `A000108(gcd(n, n+1))*A268833(2*(n²+n))` -/
def P15318701243872686406.Spec : Prop :=
  ∀ n, P15318701243872686406.a n = A268835 n

end A268835

/-! ## A268835.P8433022518731355540

`lcm(A008683(A014963(n+1)), A268833(2*(n²+n)))`
-/

namespace A268835.P8433022518731355540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A014963 (n + 1)).toNat) (A268833 (2 * (n ^ 2 + n)))

end

end A268835.P8433022518731355540

namespace A268835

/-- `lcm(A008683(A014963(n+1)), A268833(2*(n²+n)))` -/
def P8433022518731355540.Spec : Prop :=
  ∀ n, (P8433022518731355540.a n : ℤ) = A268835 n

end A268835

/-!
# A268836: Antidiagonal sums of array A268714: a(n) = Sum_{k=0..n} A006068(n)+A006068(n-k).

The programs for A268836, the canonical program `A268836.P2302670208971616926` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268836 has offset 0).

The definition of A268836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268836.P5860201827860104540

`∑[A268716(n)]`
-/

namespace A268836.P5860201827860104540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P5860201827860104540

namespace A268836

/-- `∑[A268716(n)]` -/
def P5860201827860104540.Spec : Prop :=
  ∀ n, P5860201827860104540.a n = A268836 n

end A268836

/-! ## A268836.P8410515497074097741

`∑[2*A006068(n)]`
-/

namespace A268836.P8410515497074097741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P8410515497074097741

namespace A268836

/-- `∑[2*A006068(n)]` -/
def P8410515497074097741.Spec : Prop :=
  ∀ n, P8410515497074097741.a n = A268836 n

end A268836

/-! ## A268836.P10640914505559904620

`∑[2*(A286546(n)+n)]`
-/

namespace A268836.P10640914505559904620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A286546 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P10640914505559904620

namespace A268836

/-- `∑[2*(A286546(n)+n)]` -/
def P10640914505559904620.Spec : Prop :=
  ∀ n, P10640914505559904620.a n = A268836 n

end A268836

/-! ## A268836.P976560038653025980

`∑[2*xor(n, A292600(n))]`
-/

namespace A268836.P976560038653025980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (n : ℤ) (A292600 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P976560038653025980

namespace A268836

/-- `∑[2*xor(n, A292600(n))]` -/
def P976560038653025980.Spec : Prop :=
  ∀ n, P976560038653025980.a n = A268836 n

end A268836

/-! ## A268836.P2302670208971616926

`∑[2*(A066194(n+1)-1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268836

/-- `∑[2*(A066194(n+1)-1)]` -/
def P2302670208971616926.Spec : Prop :=
  ∀ n, P2302670208971616926.a n = A268836 n

theorem P2302670208971616926.correct : P2302670208971616926.Spec := by
  intro n
  simp only [A268836]

end A268836

/-! ## A268836.P17154992613271999756

`2*(A342448(n+1)-(n+1))`
-/

namespace A268836.P17154992613271999756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A342448 (n + 1) - (n + 1 : ℤ))

end

end A268836.P17154992613271999756

namespace A268836

/-- `2*(A342448(n+1)-(n+1))` -/
def P17154992613271999756.Spec : Prop :=
  ∀ n, P17154992613271999756.a n = A268836 n

end A268836

/-! ## A268836.P14906626125655408630

`∑[2*A003188(A064707(n))]`
-/

namespace A268836.P14906626125655408630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003188 (A064707 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P14906626125655408630

namespace A268836

/-- `∑[2*A003188(A064707(n))]` -/
def P14906626125655408630.Spec : Prop :=
  ∀ n, P14906626125655408630.a n = A268836 n

end A268836

/-! ## A268836.P14299176195350300252

`∑[2*A302844(A302845(n))]`
-/

namespace A268836.P14299176195350300252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A302844 (A302845 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P14299176195350300252

namespace A268836

/-- `∑[2*A302844(A302845(n))]` -/
def P14299176195350300252.Spec : Prop :=
  ∀ n, P14299176195350300252.a n = A268836 n

end A268836

/-! ## A268836.P13558902231631354088

`∑[2*A104895(A001969(n+1))]`
-/

namespace A268836.P13558902231631354088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104895 (A001969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P13558902231631354088

namespace A268836

/-- `∑[2*A104895(A001969(n+1))]` -/
def P13558902231631354088.Spec : Prop :=
  ∀ n, P13558902231631354088.a n = A268836 n

end A268836

/-! ## A268836.P11377708173253817937

`∑[xor(A001969(n+1), A006068(n))]`
-/

namespace A268836.P11377708173253817937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001969 (n + 1)) (A006068 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P11377708173253817937

namespace A268836

/-- `∑[xor(A001969(n+1), A006068(n))]` -/
def P11377708173253817937.Spec : Prop :=
  ∀ n, P11377708173253817937.a n = A268836 n

end A268836

/-! ## A268836.P5877927195939998250

`∑[A006068(n)+A000027(A006068(n)+1)-1]`
-/

namespace A268836.P5877927195939998250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n + A000027 (A006068 n + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P5877927195939998250

namespace A268836

/-- `∑[A006068(n)+A000027(A006068(n)+1)-1]` -/
def P5877927195939998250.Spec : Prop :=
  ∀ n, P5877927195939998250.a n = A268836 n

end A268836

/-! ## A268836.P8532759430650648587

`∑[2*A292600(2*n)]`
-/

namespace A268836.P8532759430650648587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292600 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P8532759430650648587

namespace A268836

/-- `∑[2*A292600(2*n)]` -/
def P8532759430650648587.Spec : Prop :=
  ∀ n, P8532759430650648587.a n = A268836 n

end A268836

/-! ## A268836.P13168079439826550702

`∑[2*(2*n-A292601(2*n))]`
-/

namespace A268836.P13168079439826550702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n : ℤ) - A292601 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P13168079439826550702

namespace A268836

/-- `∑[2*(2*n-A292601(2*n))]` -/
def P13168079439826550702.Spec : Prop :=
  ∀ n, P13168079439826550702.a n = A268836 n

end A268836

/-! ## A268836.P11398551485062528045

`∑[A005843(A006068(n))]`
-/

namespace A268836.P11398551485062528045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P11398551485062528045

namespace A268836

/-- `∑[A005843(A006068(n))]` -/
def P11398551485062528045.Spec : Prop :=
  ∀ n, P11398551485062528045.a n = A268836 n

end A268836

/-! ## A268836.P6473907755177068614

`∑[2*A233279(A063946(n))]`
-/

namespace A268836.P6473907755177068614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233279 (A063946 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P6473907755177068614

namespace A268836

/-- `∑[2*A233279(A063946(n))]` -/
def P6473907755177068614.Spec : Prop :=
  ∀ n, P6473907755177068614.a n = A268836 n

end A268836

/-! ## A268836.P10570655128723434509

`∑[2*A234613(A193231(n))]`
-/

namespace A268836.P10570655128723434509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234613 (A193231 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P10570655128723434509

namespace A268836

/-- `∑[2*A234613(A193231(n))]` -/
def P10570655128723434509.Spec : Prop :=
  ∀ n, P10570655128723434509.a n = A268836 n

end A268836

/-! ## A268836.P5134678178553689736

`∑[2*A193231(A234612(n))]`
-/

namespace A268836.P5134678178553689736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193231 (A234612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P5134678178553689736

namespace A268836

/-- `∑[2*A193231(A234612(n))]` -/
def P5134678178553689736.Spec : Prop :=
  ∀ n, P5134678178553689736.a n = A268836 n

end A268836

/-! ## A268836.P9161432167149483849

`∑[A006068(A001969(n+1))]`
-/

namespace A268836.P9161432167149483849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A001969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P9161432167149483849

namespace A268836

/-- `∑[A006068(A001969(n+1))]` -/
def P9161432167149483849.Spec : Prop :=
  ∀ n, P9161432167149483849.a n = A268836 n

end A268836

/-! ## A268836.P2456171784390492742

`∑[2*A246159(eq[0, A246160(n)])]`
-/

namespace A268836.P2456171784390492742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246160 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246159 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P2456171784390492742

namespace A268836

/-- `∑[2*A246159(eq[0, A246160(n)])]` -/
def P2456171784390492742.Spec : Prop :=
  ∀ n, P2456171784390492742.a n = A268836 n

end A268836

/-! ## A268836.P16872710769254298897

`∑[A292600(A092246(n+1))]`
-/

namespace A268836.P16872710769254298897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A092246 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P16872710769254298897

namespace A268836

/-- `∑[A292600(A092246(n+1))]` -/
def P16872710769254298897.Spec : Prop :=
  ∀ n, P16872710769254298897.a n = A268836 n

end A268836

/-!
# A268839: a(n) = Sum_{j=1..10^n-1} 2^f(j) where f(j) is the number of zero digits in the decimal representation of j.

The programs for A268839, the canonical program `A268839.P1834042742869800579` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268839 has offset 1).

The definition of A268839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268839.P1834042742869800579

`11*a(n-1)+9` with `a(0)=9`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268839

/-- `11*a(n-1)+9` -/
def P1834042742869800579.Spec : Prop :=
  ∀ n, (P1834042742869800579.a n : ℤ) = A268839 (n + 1)

theorem P1834042742869800579.correct : P1834042742869800579.Spec := by
  intro n
  simp only [A268839, Nat.add_sub_cancel]

end A268839

/-! ## A268839.P24773846314206865

`9/10*(11^(n+1)-1)`
-/

namespace A268839.P24773846314206865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) / 10 * ((11 ^ (n + 1) : ℤ) - 1 : ℚ)

end

end A268839.P24773846314206865

namespace A268839

/-- `9/10*(11^(n+1)-1)` -/
def P24773846314206865.Spec : Prop :=
  ∀ n, P24773846314206865.a n = (A268839 (n + 1) : ℚ)

theorem P24773846314206865.correct : P24773846314206865.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A268839, Nat.add_sub_cancel, A268839.P24773846314206865.a, A268839.P1834042742869800579.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A268839, Nat.add_sub_cancel, A268839.P24773846314206865.a, A268839.P1834042742869800579.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A268839

/-! ## A268839.P1437601046884755864

`ogf(9/(1-12x+11x^2))`
-/

namespace A268839.P1437601046884755864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9] [1, -12, 11] n

end

end A268839.P1437601046884755864

namespace A268839

/-- `ogf(9/(1-12x+11x^2))` -/
def P1437601046884755864.Spec : Prop :=
  ∀ n, P1437601046884755864.a n = A268839 (n + 1)

end A268839

/-! ## A268839.P12012675575072331712

`∑[11*a(n-1)]` with `a(0)=9`
-/

namespace A268839.P12012675575072331712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268839.P12012675575072331712

namespace A268839

/-- `∑[11*a(n-1)]` -/
def P12012675575072331712.Spec : Prop :=
  ∀ n, (P12012675575072331712.a n : ℤ) = A268839 (n + 1)

end A268839

/-! ## A268839.P13022692589471605239

`lcm(11, a(n-1))+9` with `a(0)=9`
-/

namespace A268839.P13022692589471605239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  Nat.lcm 11 (a (n - 1)) + 9

end

end A268839.P13022692589471605239

namespace A268839

/-- `lcm(11, a(n-1))+9` -/
def P13022692589471605239.Spec : Prop :=
  ∀ n, (P13022692589471605239.a n : ℤ) = A268839 (n + 1)

end A268839

/-! ## A268839.P2055929186361063135

`A199760(n+1)-1`
-/

namespace A268839.P2055929186361063135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199760 (n + 1) - 1

end

end A268839.P2055929186361063135

namespace A268839

/-- `A199760(n+1)-1` -/
def P2055929186361063135.Spec : Prop :=
  ∀ n, P2055929186361063135.a n = A268839 (n + 1)

end A268839

/-! ## A268839.P4779296840709199301

`A048335(A017377(n))`
-/

namespace A268839.P4779296840709199301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048335 (A017377 n).toNat

end

end A268839.P4779296840709199301

namespace A268839

/-- `A048335(A017377(n))` -/
def P4779296840709199301.Spec : Prop :=
  ∀ n, P4779296840709199301.a n = A268839 (n + 1)

end A268839

/-!
# A268840: Number of sequences with n copies each of 1,2,3,4 and longest increasing subsequence of length 4.

The programs for A268840, there is no canonical definition to state claims against.
-/

/-! ## A268840.P14038957288149233100

`A008977(n+1)-A269122(n+1)`
-/

namespace A268840.P14038957288149233100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008977 (n + 1) - A269122 (n + 1)

end

end A268840.P14038957288149233100

/-! ## A268840.P9801715199624544482

`A000897(n+1)*A000984(n+1)-A269122(n+1)`
-/

namespace A268840.P9801715199624544482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000897 (n + 1) * A000984 (n + 1) - A269122 (n + 1)

end

end A268840.P9801715199624544482

/-! ## A268840.P17315098357688598150

`A047909(A052905(n)+9)`
-/

namespace A268840.P17315098357688598150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (A052905 n + 9).toNat

end

end A268840.P17315098357688598150

/-! ## A268840.P4750190292984703748

`A047909(A055999(n)+10)`
-/

namespace A268840.P4750190292984703748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (A055999 n + 10).toNat

end

end A268840.P4750190292984703748

/-! ## A268840.P12446048728760111754

`A047909(A167614(n+2)+1)`
-/

namespace A268840.P12446048728760111754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (A167614 (n + 2) + 1).toNat

end

end A268840.P12446048728760111754

/-!
# A268841: Number of sequences with n copies each of 1,2,...,5 and longest increasing subsequence of length 5.

The programs for A268841, there is no canonical definition to state claims against.
-/

/-! ## A268841.P9648844633329311550

`A047909(A167499(n+3))`
-/

namespace A268841.P9648844633329311550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (A167499 (n + 3)).toNat

end

end A268841.P9648844633329311550

/-! ## A268841.P9553221166904287097

`A047909(A055998(n+2)+8)`
-/

namespace A268841.P9553221166904287097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (A055998 (n + 2) + 8).toNat

end

end A268841.P9553221166904287097

/-!
# A268847: Number of sequences with 4 copies each of 1,2,...,n and longest increasing subsequence of length n.

The programs for A268847, there is no canonical definition to state claims against.
-/

/-! ## A268847.P13174199421675598842

`A047909(∑[n+3])`
-/

namespace A268847.P13174199421675598842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268847.P13174199421675598842

/-! ## A268847.P2714990025357128586

`or(1, A047909(A141214(n)))`
-/

namespace A268847.P2714990025357128586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047909 (A141214 n).toNat)

end

end A268847.P2714990025357128586

/-! ## A268847.P1672929798618522949

`lcm(A033999(n), A047909(A141214(n)))`
-/

namespace A268847.P1672929798618522949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A047909 (A141214 n).toNat)

end

end A268847.P1672929798618522949

/-! ## A268847.P12810414264889357166

`A007318(∑[n])*A047909(A141214(n))`
-/

namespace A268847.P12810414264889357166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A047909 (A141214 n).toNat

end

end A268847.P12810414264889357166

/-! ## A268847.P9114766998732253476

`A047909(A141214(n))/A007318(C(2, n+1))`
-/

namespace A268847.P9114766998732253476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047909 (A141214 n).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 1)) : ℚ)

end

end A268847.P9114766998732253476

/-!
# A268848: Number of sequences with 5 copies each of 1,2,...,n and longest increasing subsequence of length n.

The programs for A268848, there is no canonical definition to state claims against.
-/

/-! ## A268848.P18365104320374748436

`A047909(∑[n+4]+2)`
-/

namespace A268848.P18365104320374748436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A268848.P18365104320374748436

/-!
# A268849: Number of sequences with 6 copies each of 1,2,...,n and longest increasing subsequence of length n.

The programs for A268849, there is no canonical definition to state claims against.
-/

/-! ## A268849.P5366733637981485885

`A047909(A052905(n+2))`
-/

namespace A268849.P5366733637981485885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (A052905 (n + 2)).toNat

end

end A268849.P5366733637981485885

/-! ## A268849.P16616980987452763978

`A047909(eq[4, A025581(n)])`
-/

namespace A268849.P16616980987452763978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268849.P16616980987452763978

/-! ## A268849.P10000566308467786945

`A047909(A055999(n+2)+1)`
-/

namespace A268849.P10000566308467786945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (A055999 (n + 2) + 1).toNat

end

end A268849.P10000566308467786945

/-! ## A268849.P13799722660523974705

`A047909(eq[4, A128307(n+1)])`
-/

namespace A268849.P13799722660523974705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268849.P13799722660523974705

/-!
# A268850: Number of sequences with 7 copies each of 1,2,...,n and longest increasing subsequence of length n.

The programs for A268850, there is no canonical definition to state claims against.
-/

/-! ## A268850.P940202920029778878

`A047909(eq[5, A025581(n)])`
-/

namespace A268850.P940202920029778878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268850.P940202920029778878

/-! ## A268850.P11048235157266488159

`A047909(eq[6, A193739(n)])`
-/

namespace A268850.P11048235157266488159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268850.P11048235157266488159

/-! ## A268850.P15653433653745867035

`A047909(eq[5, A193592(n+1)])`
-/

namespace A268850.P15653433653745867035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268850.P15653433653745867035

/-! ## A268850.P3108042126693258374

`A047909(eq[6, A004736(n+1)])`
-/

namespace A268850.P3108042126693258374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268850.P3108042126693258374

/-! ## A268850.P4132363540658314690

`A047909(eq[5, A193592(n)]-1)`
-/

namespace A268850.P4132363540658314690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A268850.P4132363540658314690

/-!
# A268851: 

The programs for A268851, there is no canonical definition to state claims against.
-/

/-! ## A268851.P3459315362344148667

`A047909(eq[6, A025581(n)])`
-/

namespace A268851.P3459315362344148667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268851.P3459315362344148667

/-! ## A268851.P13159010323061380521

`A047909(eq[6, A193592(n+1)])`
-/

namespace A268851.P13159010323061380521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268851.P13159010323061380521

/-!
# A268852: 

The programs for A268852, there is no canonical definition to state claims against.
-/

/-! ## A268852.P14319555243584341681

`A047909(eq[7, A025581(n)])`
-/

namespace A268852.P14319555243584341681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268852.P14319555243584341681

/-! ## A268852.P8507981654513355434

`A047909(A055999(n+5)-2)`
-/

namespace A268852.P8507981654513355434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (A055999 (n + 5) - 2).toNat

end

end A268852.P8507981654513355434

/-!
# A268853: 

The programs for A268853, there is no canonical definition to state claims against.
-/

/-! ## A268853.P11362866891131758035

`A047909(eq[8, A025581(n)])`
-/

namespace A268853.P11362866891131758035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268853.P11362866891131758035

/-!
# A268858: Prime numbers ending in 39.

The programs for A268858, the canonical program `A268858.P6072330885185032074` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268858 has offset 1).

The definition of A268858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268858.P2829455959385737970

`∩[A141887(n+1), A141938(n+1)]`
-/

namespace A268858.P2829455959385737970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268858.P2829455959385737970

namespace A268858

/-- `∩[A141887(n+1), A141938(n+1)]` -/
def P2829455959385737970.Spec : Prop :=
  ∀ n, (P2829455959385737970.a n : ℤ) = A268858 (n + 1)

end A268858

/-! ## A268858.P6072330885185032074

`p?[10*10*n+39]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268858

/-- `p?[10*10*n+39]` -/
def P6072330885185032074.Spec : Prop :=
  ∀ n, (P6072330885185032074.a n : ℤ) = A268858 (n + 1)

theorem P6072330885185032074.correct : P6072330885185032074.Spec := by
  intro n
  simp only [A268858, Nat.add_sub_cancel]

end A268858

/-! ## A268858.P2488330485122793128

`p?[A053743(n)-6]-A323239(2*n)`
-/

namespace A268858.P2488330485122793128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A323239 (2 * n)

end

end A268858.P2488330485122793128

namespace A268858

/-- `p?[A053743(n)-6]-A323239(2*n)` -/
def P2488330485122793128.Spec : Prop :=
  ∀ n, P2488330485122793128.a n = A268858 (n + 1)

end A268858

/-! ## A268858.P14129866698687532381

`p?[A053743(n)-6]%A016789(n+9)²`
-/

namespace A268858.P14129866698687532381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016789 (n + 9) ^ 2)

end

end A268858.P14129866698687532381

namespace A268858

/-- `p?[A053743(n)-6]%A016789(n+9)²` -/
def P14129866698687532381.Spec : Prop :=
  ∀ n, P14129866698687532381.a n = A268858 (n + 1)

end A268858

/-! ## A268858.P7818231327605209577

`p?[A053743(n)-6]/(A000040(n+1)%2)!`
-/

namespace A268858.P7818231327605209577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℚ)

end

end A268858.P7818231327605209577

namespace A268858

/-- `p?[A053743(n)-6]/(A000040(n+1)%2)!` -/
def P7818231327605209577.Spec : Prop :=
  ∀ n, P7818231327605209577.a n = (A268858 (n + 1) : ℚ)

end A268858

/-! ## A268858.P13922755691533089694

`A007814(A005408(n))+p?[A053743(n)-6]`
-/

namespace A268858.P13922755691533089694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005408 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268858.P13922755691533089694

namespace A268858

/-- `A007814(A005408(n))+p?[A053743(n)-6]` -/
def P13922755691533089694.Spec : Prop :=
  ∀ n, P13922755691533089694.a n = A268858 (n + 1)

end A268858

/-! ## A268858.P11828769827223321526

`A001221(A151800(n))*p?[A053743(n)-6]`
-/

namespace A268858.P11828769827223321526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A151800 n).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268858.P11828769827223321526

namespace A268858

/-- `A001221(A151800(n))*p?[A053743(n)-6]` -/
def P11828769827223321526.Spec : Prop :=
  ∀ n, P11828769827223321526.a n = A268858 (n + 1)

end A268858

/-! ## A268858.P17087433003157936793

`A343785(A016789(n))²*p?[A053743(n)-6]`
-/

namespace A268858.P17087433003157936793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (A016789 n).toNat ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268858.P17087433003157936793

namespace A268858

/-- `A343785(A016789(n))²*p?[A053743(n)-6]` -/
def P17087433003157936793.Spec : Prop :=
  ∀ n, P17087433003157936793.a n = A268858 (n + 1)

end A268858

/-! ## A268858.P3513323248385675013

`A007814(A247479(n+1))+p?[A053743(n)-6]`
-/

namespace A268858.P3513323248385675013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A247479 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268858.P3513323248385675013

namespace A268858

/-- `A007814(A247479(n+1))+p?[A053743(n)-6]` -/
def P3513323248385675013.Spec : Prop :=
  ∀ n, P3513323248385675013.a n = A268858 (n + 1)

end A268858

/-! ## A268858.P3925681222861536039

`A000027(p?[A053743(n)-6])`
-/

namespace A268858.P3925681222861536039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A268858.P3925681222861536039

namespace A268858

/-- `A000027(p?[A053743(n)-6])` -/
def P3925681222861536039.Spec : Prop :=
  ∀ n, P3925681222861536039.a n = A268858 (n + 1)

end A268858

/-! ## A268858.P1030716579643904848

`record[p?[A242181(A000265(n+1))]]`
-/

namespace A268858.P1030716579643904848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268858.P1030716579643904848

namespace A268858

/-- `record[p?[A242181(A000265(n+1))]]` -/
def P1030716579643904848.Spec : Prop :=
  ∀ n, P1030716579643904848.a n = A268858 (n + 1)

end A268858

/-! ## A268858.P17130936405301073511

`∩[A141887(n+1), A242181(n+1)]`
-/

namespace A268858.P17130936405301073511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268858.P17130936405301073511

namespace A268858

/-- `∩[A141887(n+1), A242181(n+1)]` -/
def P17130936405301073511.Spec : Prop :=
  ∀ n, (P17130936405301073511.a n : ℤ) = A268858 (n + 1)

end A268858

/-! ## A268858.P1439540166553924309

`∩[A122869(n+1), A141938(n+1)]`
-/

namespace A268858.P1439540166553924309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268858.P1439540166553924309

namespace A268858

/-- `∩[A122869(n+1), A141938(n+1)]` -/
def P1439540166553924309.Spec : Prop :=
  ∀ n, (P1439540166553924309.a n : ℤ) = A268858 (n + 1)

end A268858

/-! ## A268858.P9136578366594741618

`∩[A122869(n+1), A242181(n+1)]`
-/

namespace A268858.P9136578366594741618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268858.P9136578366594741618

namespace A268858

/-- `∩[A122869(n+1), A242181(n+1)]` -/
def P9136578366594741618.Spec : Prop :=
  ∀ n, (P9136578366594741618.a n : ℤ) = A268858 (n + 1)

end A268858

/-! ## A268858.P10757135177420027809

`∩[A030433(n+1), A045801(n+1)]`
-/

namespace A268858.P10757135177420027809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268858.P10757135177420027809

namespace A268858

/-- `∩[A030433(n+1), A045801(n+1)]` -/
def P10757135177420027809.Spec : Prop :=
  ∀ n, (P10757135177420027809.a n : ℤ) = A268858 (n + 1)

end A268858

/-! ## A268858.P8531780827364879836

`∩[A045457(n+1), A045801(n+1)]`
-/

namespace A268858.P8531780827364879836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268858.P8531780827364879836

namespace A268858

/-- `∩[A045457(n+1), A045801(n+1)]` -/
def P8531780827364879836.Spec : Prop :=
  ∀ n, (P8531780827364879836.a n : ℤ) = A268858 (n + 1)

end A268858

/-! ## A268858.P7488691530435201708

`∩[A045801(n+1), A141887(n+1)]`
-/

namespace A268858.P7488691530435201708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268858.P7488691530435201708

namespace A268858

/-- `∩[A045801(n+1), A141887(n+1)]` -/
def P7488691530435201708.Spec : Prop :=
  ∀ n, (P7488691530435201708.a n : ℤ) = A268858 (n + 1)

end A268858

/-! ## A268858.P8003299504485765795

`∩[A045801(n+1), A141938(n+1)]`
-/

namespace A268858.P8003299504485765795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268858.P8003299504485765795

namespace A268858

/-- `∩[A045801(n+1), A141938(n+1)]` -/
def P8003299504485765795.Spec : Prop :=
  ∀ n, (P8003299504485765795.a n : ℤ) = A268858 (n + 1)

end A268858

/-! ## A268858.P14362868582024680834

`∩[A045801(n+1), A327753(n+1)]`
-/

namespace A268858.P14362868582024680834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268858.P14362868582024680834

namespace A268858

/-- `∩[A045801(n+1), A327753(n+1)]` -/
def P14362868582024680834.Spec : Prop :=
  ∀ n, (P14362868582024680834.a n : ℤ) = A268858 (n + 1)

end A268858

/-! ## A268858.P12205571636901644908

`∩[A030433(n+1), A045809(n+1)+2]`
-/

namespace A268858.P12205571636901644908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268858.P12205571636901644908

namespace A268858

/-- `∩[A030433(n+1), A045809(n+1)+2]` -/
def P12205571636901644908.Spec : Prop :=
  ∀ n, (P12205571636901644908.a n : ℤ) = A268858 (n + 1)

end A268858

/-!
# A268859: Prime numbers ending in 21.

The programs for A268859, the canonical program `A268859.P16369049766799216394` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268859 has offset 1).

The definition of A268859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1937 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268859.P7669049344394215292

`∩[A141881(n+1), A141943(n+1)]`
-/

namespace A268859.P7669049344394215292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P7669049344394215292

namespace A268859

/-- `∩[A141881(n+1), A141943(n+1)]` -/
def P7669049344394215292.Spec : Prop :=
  ∀ n, (P7669049344394215292.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P16369049766799216394

`p?[10*10*n+21]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268859

/-- `p?[10*10*n+21]` -/
def P16369049766799216394.Spec : Prop :=
  ∀ n, (P16369049766799216394.a n : ℤ) = A268859 (n + 1)

theorem P16369049766799216394.correct : P16369049766799216394.Spec := by
  intro n
  simp only [A268859, Nat.add_sub_cancel]

end A268859

/-! ## A268859.P8949205265555054996

`∩[A033205(n+1), A141943(n+1)]`
-/

namespace A268859.P8949205265555054996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P8949205265555054996

namespace A268859

/-- `∩[A033205(n+1), A141943(n+1)]` -/
def P8949205265555054996.Spec : Prop :=
  ∀ n, (P8949205265555054996.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P1890935432324515561

`∩[A141943(n+1), A216815(n+1)]`
-/

namespace A268859.P1890935432324515561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P1890935432324515561

namespace A268859

/-- `∩[A141943(n+1), A216815(n+1)]` -/
def P1890935432324515561.Spec : Prop :=
  ∀ n, (P1890935432324515561.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P3287603827745691482

`∩[A141943(n+1), A363147(n+1)]`
-/

namespace A268859.P3287603827745691482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P3287603827745691482

namespace A268859

/-- `∩[A141943(n+1), A363147(n+1)]` -/
def P3287603827745691482.Spec : Prop :=
  ∀ n, (P3287603827745691482.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P10539072466551956728

`∩[A091729(n+1), A141943(n+1)]`
-/

namespace A268859.P10539072466551956728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P10539072466551956728

namespace A268859

/-- `∩[A091729(n+1), A141943(n+1)]` -/
def P10539072466551956728.Spec : Prop :=
  ∀ n, (P10539072466551956728.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P16520055703805847254

`∩[A030430(n+1), A045802(n+1)]`
-/

namespace A268859.P16520055703805847254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P16520055703805847254

namespace A268859

/-- `∩[A030430(n+1), A045802(n+1)]` -/
def P16520055703805847254.Spec : Prop :=
  ∀ n, (P16520055703805847254.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P12140883637204335937

`∩[A045453(n+1), A045802(n+1)]`
-/

namespace A268859.P12140883637204335937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P12140883637204335937

namespace A268859

/-- `∩[A045453(n+1), A045802(n+1)]` -/
def P12140883637204335937.Spec : Prop :=
  ∀ n, (P12140883637204335937.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P17935277868260923757

`∩[A045802(n+1), A141881(n+1)]`
-/

namespace A268859.P17935277868260923757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P17935277868260923757

namespace A268859

/-- `∩[A045802(n+1), A141881(n+1)]` -/
def P17935277868260923757.Spec : Prop :=
  ∀ n, (P17935277868260923757.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P16901104096043650488

`∩[A045802(n+1), A141943(n+1)]`
-/

namespace A268859.P16901104096043650488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P16901104096043650488

namespace A268859

/-- `∩[A045802(n+1), A141943(n+1)]` -/
def P16901104096043650488.Spec : Prop :=
  ∀ n, (P16901104096043650488.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P9330489232304413211

`∩[A045802(n+1), A179446(n+1)]`
-/

namespace A268859.P9330489232304413211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P9330489232304413211

namespace A268859

/-- `∩[A045802(n+1), A179446(n+1)]` -/
def P9330489232304413211.Spec : Prop :=
  ∀ n, (P9330489232304413211.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P8096119276582039815

`∩[A030430(n+1), A045803(n+1)+2]`
-/

namespace A268859.P8096119276582039815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P8096119276582039815

namespace A268859

/-- `∩[A030430(n+1), A045803(n+1)+2]` -/
def P8096119276582039815.Spec : Prop :=
  ∀ n, (P8096119276582039815.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P7275097913253229123

`∩[A045453(n+1), A045803(n+1)+2]`
-/

namespace A268859.P7275097913253229123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P7275097913253229123

namespace A268859

/-- `∩[A045453(n+1), A045803(n+1)+2]` -/
def P7275097913253229123.Spec : Prop :=
  ∀ n, (P7275097913253229123.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P14332573922477715709

`∩[A030430(n+1), A045806(n+1)-2]`
-/

namespace A268859.P14332573922477715709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P14332573922477715709

namespace A268859

/-- `∩[A030430(n+1), A045806(n+1)-2]` -/
def P14332573922477715709.Spec : Prop :=
  ∀ n, (P14332573922477715709.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P17255630184158401417

`∩[A045453(n+1), A045806(n+1)-2]`
-/

namespace A268859.P17255630184158401417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P17255630184158401417

namespace A268859

/-- `∩[A045453(n+1), A045806(n+1)-2]` -/
def P17255630184158401417.Spec : Prop :=
  ∀ n, (P17255630184158401417.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P4332411620469529326

`∩[A045806(n+1)-2, A141881(n+1)]`
-/

namespace A268859.P4332411620469529326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P4332411620469529326

namespace A268859

/-- `∩[A045806(n+1)-2, A141881(n+1)]` -/
def P4332411620469529326.Spec : Prop :=
  ∀ n, (P4332411620469529326.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P7744421507503546857

`∩[A045806(n+1)-2, A179446(n+1)]`
-/

namespace A268859.P7744421507503546857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P7744421507503546857

namespace A268859

/-- `∩[A045806(n+1)-2, A179446(n+1)]` -/
def P7744421507503546857.Spec : Prop :=
  ∀ n, (P7744421507503546857.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P12673689781051587437

`∩[A055025(n+1), A141943(n+1)]`
-/

namespace A268859.P12673689781051587437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P12673689781051587437

namespace A268859

/-- `∩[A055025(n+1), A141943(n+1)]` -/
def P12673689781051587437.Spec : Prop :=
  ∀ n, (P12673689781051587437.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P13346031737551188759

`∩[A141943(n+1), A215145(n)]`
-/

namespace A268859.P13346031737551188759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P13346031737551188759

namespace A268859

/-- `∩[A141943(n+1), A215145(n)]` -/
def P13346031737551188759.Spec : Prop :=
  ∀ n, (P13346031737551188759.a n : ℤ) = A268859 (n + 1)

end A268859

/-! ## A268859.P9498192712107957738

`∩[A141943(n+1), A351535(n+1)]`
-/

namespace A268859.P9498192712107957738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268859.P9498192712107957738

namespace A268859

/-- `∩[A141943(n+1), A351535(n+1)]` -/
def P9498192712107957738.Spec : Prop :=
  ∀ n, (P9498192712107957738.a n : ℤ) = A268859 (n + 1)

end A268859

/-!
# A268860: Prime numbers ending in 27.

The programs for A268860, the canonical program `A268860.P17754547523521005011` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268860 has offset 1).

The definition of A268860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1976 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268860.P52075726586152721

`∩[A141882(n+1), A141928(n+1)]`
-/

namespace A268860.P52075726586152721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P52075726586152721

namespace A268860

/-- `∩[A141882(n+1), A141928(n+1)]` -/
def P52075726586152721.Spec : Prop :=
  ∀ n, (P52075726586152721.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P11155515374707646473

`∩[A141882(n+1), A142466(n+1)]`
-/

namespace A268860.P11155515374707646473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P11155515374707646473

namespace A268860

/-- `∩[A141882(n+1), A142466(n+1)]` -/
def P11155515374707646473.Spec : Prop :=
  ∀ n, (P11155515374707646473.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P17754547523521005011

`p?[10*10*n+27]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268860

/-- `p?[10*10*n+27]` -/
def P17754547523521005011.Spec : Prop :=
  ∀ n, (P17754547523521005011.a n : ℤ) = A268860 (n + 1)

theorem P17754547523521005011.correct : P17754547523521005011.Spec := by
  intro n
  simp only [A268860, Nat.add_sub_cancel]

end A268860

/-! ## A268860.P13200119759543857813

`or(1, p?[or(2, A053742(n))])`
-/

namespace A268860.P13200119759543857813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A053742 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A268860.P13200119759543857813

namespace A268860

/-- `or(1, p?[or(2, A053742(n))])` -/
def P13200119759543857813.Spec : Prop :=
  ∀ n, P13200119759543857813.a n = A268860 (n + 1)

end A268860

/-! ## A268860.P13963623247817343318

`∩[A106865(n+1), A142466(n+1)]`
-/

namespace A268860.P13963623247817343318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P13963623247817343318

namespace A268860

/-- `∩[A106865(n+1), A142466(n+1)]` -/
def P13963623247817343318.Spec : Prop :=
  ∀ n, (P13963623247817343318.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P7972914976928068929

`∩[A122870(n+1), A141928(n+1)]`
-/

namespace A268860.P7972914976928068929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P7972914976928068929

namespace A268860

/-- `∩[A122870(n+1), A141928(n+1)]` -/
def P7972914976928068929.Spec : Prop :=
  ∀ n, (P7972914976928068929.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P15649471859349712598

`∩[A122870(n+1), A142466(n+1)]`
-/

namespace A268860.P15649471859349712598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P15649471859349712598

namespace A268860

/-- `∩[A122870(n+1), A142466(n+1)]` -/
def P15649471859349712598.Spec : Prop :=
  ∀ n, (P15649471859349712598.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P777469185391323884

`∩[A142466(n+1), A385225(n+1)]`
-/

namespace A268860.P777469185391323884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P777469185391323884

namespace A268860

/-- `∩[A142466(n+1), A385225(n+1)]` -/
def P777469185391323884.Spec : Prop :=
  ∀ n, (P777469185391323884.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P7157591581239757402

`∩[A053027(n+1), A141928(n+1)]`
-/

namespace A268860.P7157591581239757402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P7157591581239757402

namespace A268860

/-- `∩[A053027(n+1), A141928(n+1)]` -/
def P7157591581239757402.Spec : Prop :=
  ∀ n, (P7157591581239757402.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P1536012448396960952

`∩[A053027(n+1), A142466(n+1)]`
-/

namespace A268860.P1536012448396960952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P1536012448396960952

namespace A268860

/-- `∩[A053027(n+1), A142466(n+1)]` -/
def P1536012448396960952.Spec : Prop :=
  ∀ n, (P1536012448396960952.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P18170175664960306021

`∩[A141928(n+1), A348421(n+1)]`
-/

namespace A268860.P18170175664960306021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P18170175664960306021

namespace A268860

/-- `∩[A141928(n+1), A348421(n+1)]` -/
def P18170175664960306021.Spec : Prop :=
  ∀ n, (P18170175664960306021.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P10284115211841163567

`∩[A142466(n+1), A348421(n+1)]`
-/

namespace A268860.P10284115211841163567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P10284115211841163567

namespace A268860

/-- `∩[A142466(n+1), A348421(n+1)]` -/
def P10284115211841163567.Spec : Prop :=
  ∀ n, (P10284115211841163567.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P11296789805795182206

`∩[A030432(n+1), A045806(n+1)]`
-/

namespace A268860.P11296789805795182206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P11296789805795182206

namespace A268860

/-- `∩[A030432(n+1), A045806(n+1)]` -/
def P11296789805795182206.Spec : Prop :=
  ∀ n, (P11296789805795182206.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P778030574754193176

`∩[A045357(n+1), A045806(n+1)]`
-/

namespace A268860.P778030574754193176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P778030574754193176

namespace A268860

/-- `∩[A045357(n+1), A045806(n+1)]` -/
def P778030574754193176.Spec : Prop :=
  ∀ n, (P778030574754193176.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P18100311889147582400

`∩[A045380(n+1), A045806(n+1)]`
-/

namespace A268860.P18100311889147582400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P18100311889147582400

namespace A268860

/-- `∩[A045380(n+1), A045806(n+1)]` -/
def P18100311889147582400.Spec : Prop :=
  ∀ n, (P18100311889147582400.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P14015340946601273515

`∩[A045806(n+1), A141882(n+1)]`
-/

namespace A268860.P14015340946601273515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P14015340946601273515

namespace A268860

/-- `∩[A045806(n+1), A141882(n+1)]` -/
def P14015340946601273515.Spec : Prop :=
  ∀ n, (P14015340946601273515.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P11390101530598059445

`∩[A045806(n+1), A141928(n+1)]`
-/

namespace A268860.P11390101530598059445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P11390101530598059445

namespace A268860

/-- `∩[A045806(n+1), A141928(n+1)]` -/
def P11390101530598059445.Spec : Prop :=
  ∀ n, (P11390101530598059445.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P13481029245893955654

`∩[A045806(n+1), A142466(n+1)]`
-/

namespace A268860.P13481029245893955654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P13481029245893955654

namespace A268860

/-- `∩[A045806(n+1), A142466(n+1)]` -/
def P13481029245893955654.Spec : Prop :=
  ∀ n, (P13481029245893955654.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P12440968887615793486

`∩[A030432(n+1), A045802(n+1)-2]`
-/

namespace A268860.P12440968887615793486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P12440968887615793486

namespace A268860

/-- `∩[A030432(n+1), A045802(n+1)-2]` -/
def P12440968887615793486.Spec : Prop :=
  ∀ n, (P12440968887615793486.a n : ℤ) = A268860 (n + 1)

end A268860

/-! ## A268860.P15943529810432762952

`∩[A045357(n+1), A045802(n+1)-2]`
-/

namespace A268860.P15943529810432762952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268860.P15943529810432762952

namespace A268860

/-- `∩[A045357(n+1), A045802(n+1)-2]` -/
def P15943529810432762952.Spec : Prop :=
  ∀ n, (P15943529810432762952.a n : ℤ) = A268860 (n + 1)

end A268860

/-!
# A268861: Cubefree numbers n such that n + 1 is a perfect cube.

The programs for A268861, there is no canonical definition to state claims against.
-/

/-! ## A268861.P14062809471228061118

`record[A128972(n+2)]`
-/

namespace A268861.P14062809471228061118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128972 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268861.P14062809471228061118

/-! ## A268861.P17520247214144248524

`∩[A020895(n+1), A068601(n+1)]`
-/

namespace A268861.P17520247214144248524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268861.P17520247214144248524

/-! ## A268861.P8149902477145949898

`∩[A020895(n+1), A135300(n+1)]`
-/

namespace A268861.P8149902477145949898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268861.P8149902477145949898

/-! ## A268861.P10500946569241726809

`filter[A068601(n+2), A212793(#)]`
-/

namespace A268861.P10500946569241726809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A268861.P10500946569241726809

/-! ## A268861.P16851472713880252556

`filter[A135300(n+2), A212793(#)]`
-/

namespace A268861.P16851472713880252556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A268861.P16851472713880252556

/-!
# A268862: Primes p such that p+2, p+4, p+6, p+8, p+10, p+12 and p+14 are all semiprime.

The programs for A268862, there is no canonical definition to state claims against.
-/

/-! ## A268862.P12655142348349529711

`∩[A241483(n+1), A268578(n+1)]`
-/

namespace A268862.P12655142348349529711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268862.P12655142348349529711

/-! ## A268862.P9815004370348947168

`∩[A241959(n+1), A268578(n+1)]`
-/

namespace A268862.P9815004370348947168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268862.P9815004370348947168

/-!
# A268863: a(n)=least number m such that gcd(prime(m)+2,prime(m+1)+2) = 2*n-1.

The programs for A268863, there is no canonical definition to state claims against.
-/

/-! ## A268863.P15458633742444105827

`A000720(A268879(n+1))`
-/

namespace A268863.P15458633742444105827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A268879 (n + 1)).toNat

end

end A268863.P15458633742444105827

/-! ## A268863.P17202263709509864161

`∑{d}[A268879(n+1), A061395(#)]`
-/

namespace A268863.P17202263709509864161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A268863.P17202263709509864161

/-! ## A268863.P12139268382237257355

`A061395(A268879(n+1)+A000038(n))`
-/

namespace A268863.P12139268382237257355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A268879 (n + 1) + A000038 n).toNat

end

end A268863.P12139268382237257355

/-!
# A268865: Sequence connected with negabinary (A039724) - see comment.

The programs for A268865, there is no canonical definition to state claims against.
-/

/-! ## A268865.P11241756951890864790

`ceil(A269340(4*n+2)/4)`
-/

namespace A268865.P11241756951890864790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269340 (4 * n + 2) : ℚ) / 4⌉

end

end A268865.P11241756951890864790

/-! ## A268865.P3026406546509513776

`A110654(A269340(4*n+2)/2)`
-/

namespace A268865.P3026406546509513776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway ((A269340 (4 * n + 2) : ℚ) / 2)).toNat

end

end A268865.P3026406546509513776

/-! ## A268865.P14085935867998055039

`A269340(A062383(3*(n+1))+n)`
-/

namespace A268865.P14085935867998055039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269340 (A062383 (3 * (n + 1)) + (n : ℤ)).toNat

end

end A268865.P14085935867998055039

/-! ## A268865.P13239418854422144888

`A269340(A053644(n+2)²+n)`
-/

namespace A268865.P13239418854422144888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269340 (A053644 (n + 2) ^ 2 + (n : ℤ)).toNat

end

end A268865.P13239418854422144888

/-! ## A268865.P2442999786247160916

`A269340(2^(comp[∑[n]]-n)+n)`
-/

namespace A268865.P2442999786247160916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269340 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) + (n : ℚ))).toNat

end

end A268865.P2442999786247160916

/-!
# A268866: Records in A268865.

The programs for A268866, there is no canonical definition to state claims against.
-/

/-! ## A268866.P8196761119884921399

`16*a(n-2)-10` with `a(0)=2, a(1)=3`
-/

namespace A268866.P8196761119884921399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  16 * a (n - 2) - 10

end

end A268866.P8196761119884921399

/-! ## A268866.P1611802023761367296

`a(n-2)/(1/4)²-10` with `a(0)=2, a(1)=3`
-/

namespace A268866.P1611802023761367296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) / ((1 : ℚ) / 4) ^ 2 - 10

end

end A268866.P1611802023761367296

/-! ## A268866.P15043435397606443057

`ceil(4^n/3)+(2^and(n, -2))²`
-/

namespace A268866.P15043435397606443057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(4 ^ n : ℚ) / 3⌉ : ℚ) + ((2 : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ)) ^ 2

end

end A268866.P15043435397606443057

/-! ## A268866.P15852169943690983914

`ceil(4^n/3)+(2^floor(n/2))^4`
-/

namespace A268866.P15852169943690983914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(4 ^ n : ℚ) / 3⌉ : ℚ) + ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) ^ 4

end

end A268866.P15852169943690983914

/-! ## A268866.P12514802389521359473

`A137208(comp[or(2, n)])`
-/

namespace A268866.P12514802389521359473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137208 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A268866.P12514802389521359473

/-!
# A268867: Number of integers of the form m^2+1 between two consecutive pairs of primes of the same form.

The programs for A268867, there is no canonical definition to state claims against.
-/

/-! ## A268867.P14089184079027716223

`A014681(Δ[A096012(n+1)]-2)`
-/

namespace A268867.P14089184079027716223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (f1 (n + 1) - f1 n - 2).toNat

end

end A268867.P14089184079027716223

/-! ## A268867.P13469698118988239030

`A014681(Δ[A108814(n+1)]-2)`
-/

namespace A268867.P13469698118988239030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (f1 (n + 1) - f1 n - 2).toNat

end

end A268867.P13469698118988239030

/-! ## A268867.P10063795046359428723

`Δ[A096012(n+1)-A008486(n)]`
-/

namespace A268867.P10063795046359428723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096012 (n + 1) - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268867.P10063795046359428723

/-! ## A268867.P14805146637532987450

`Δ[A108814(n+1)-A008486(n)]`
-/

namespace A268867.P14805146637532987450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108814 (n + 1) - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268867.P14805146637532987450

/-! ## A268867.P3062450699603611989

`Δ[A096012(n+1)-A004273(n)]-1`
-/

namespace A268867.P3062450699603611989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096012 (n + 1) - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A268867.P3062450699603611989

/-! ## A268867.P8098211426645068343

`Δ[A096012(n+1)-A027379(n)]+n`
-/

namespace A268867.P8098211426645068343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096012 (n + 1) - A027379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A268867.P8098211426645068343

/-!
# A268868: a(n) is the sum of the prime factors (with repetition) of the sum of the preceding terms; a(1)=a(2)=1.

The programs for A268868, there is no canonical definition to state claims against.
-/

/-! ## A268868.P263518702667445634

`abs(Δ[A096461(abs(1-n)+1)])`
-/

namespace A268868.P263518702667445634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096461 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A268868.P263518702667445634

/-! ## A268868.P6251179134694344102

`A000007(n)+Δ[A096461(A028310(n))]`
-/

namespace A268868.P6251179134694344102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096461 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A268868.P6251179134694344102

/-! ## A268868.P10884404704475382962

`Δ[A096461(A028310(n))+A057427(n)]`
-/

namespace A268868.P10884404704475382962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096461 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268868.P10884404704475382962

/-! ## A268868.P7148748662705811105

`A096461(n+1)+A000007(n)-A096461(A028310(n))`
-/

namespace A268868.P7148748662705811105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096461 (n + 1) + (A000007 n - A096461 (A028310 n).toNat)

end

end A268868.P7148748662705811105

/-! ## A268868.P10071547280413968187

`A096461(n+1)-A057427(n)*A096461(A028310(n))`
-/

namespace A268868.P10071547280413968187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096461 (n + 1) - A057427 n * A096461 (A028310 n).toNat

end

end A268868.P10071547280413968187

/-! ## A268868.P15037166825932908927

`Δ[A096461(A028310(n))%A000285(n)]`
-/

namespace A268868.P15037166825932908927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096461 (A028310 n).toNat) (A000285 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268868.P15037166825932908927

/-!
# A268869: Number of sequences in {1,...,n}^n with longest increasing subsequence of length two.

The programs for A268869, there is no canonical definition to state claims against.
-/

/-! ## A268869.P10627445647965263343

`A239295(n+2)-A001700(n+1)`
-/

namespace A268869.P10627445647965263343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239295 (n + 2) - A001700 (n + 1)

end

end A268869.P10627445647965263343

/-! ## A268869.P6661998374222036802

`A239295(n+2)-A088218(n+2)`
-/

namespace A268869.P6661998374222036802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239295 (n + 2) - A088218 (n + 2)

end

end A268869.P6661998374222036802

/-! ## A268869.P13195586068077924097

`A245667(∑[n+2]+3)`
-/

namespace A268869.P13195586068077924097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A268869.P13195586068077924097

/-! ## A268869.P13959508600162891351

`record[A245667(C(n, 2)+2)]`
-/

namespace A268869.P13959508600162891351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (Nat.choose n 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268869.P13959508600162891351

/-! ## A268869.P7933035406436446567

`record[A245667(A152948(n+1))]`
-/

namespace A268869.P7933035406436446567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (A152948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268869.P7933035406436446567

/-!
# A268870: Number of sequences in {1,...,n}^n with longest increasing subsequence of length three.

The programs for A268870, there is no canonical definition to state claims against.
-/

/-! ## A268870.P5670576961734932010

`A239299(n+3)-A239295(n+3)`
-/

namespace A268870.P5670576961734932010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239299 (n + 3) - A239295 (n + 3)

end

end A268870.P5670576961734932010

/-! ## A268870.P9685090101179679169

`A245667(A167614(n+2))`
-/

namespace A268870.P9685090101179679169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (A167614 (n + 2)).toNat

end

end A268870.P9685090101179679169

/-! ## A268870.P4609191649761324699

`A245667(A141214(n)+6)`
-/

namespace A268870.P4609191649761324699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (A141214 n + 6).toNat

end

end A268870.P4609191649761324699

/-! ## A268870.P624956181596406051

`A245667(A052905(n)+8)`
-/

namespace A268870.P624956181596406051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (A052905 n + 8).toNat

end

end A268870.P624956181596406051

/-! ## A268870.P14157963704849621020

`A245667(eq[2, A141169(n)])`
-/

namespace A268870.P14157963704849621020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268870.P14157963704849621020

/-!
# A268871: Number of sequences in {1,...,n}^n with longest increasing subsequence of length four.

The programs for A268871, there is no canonical definition to state claims against.
-/

/-! ## A268871.P15403690198010996886

`A245667(A155212(n)+12)`
-/

namespace A268871.P15403690198010996886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (A155212 n + 12).toNat

end

end A268871.P15403690198010996886

/-! ## A268871.P10733152270545726970

`A245667(eq[3, A141169(n)])`
-/

namespace A268871.P10733152270545726970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268871.P10733152270545726970

/-! ## A268871.P12564335450509558746

`A245667(eq[4, A002262(n)])`
-/

namespace A268871.P12564335450509558746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268871.P12564335450509558746

/-! ## A268871.P14595717313474114764

`A245667(eq[16, A059268(n)])`
-/

namespace A268871.P14595717313474114764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268871.P14595717313474114764

/-! ## A268871.P49318100797723591

`A245667(A000217(n+4)+4)`
-/

namespace A268871.P49318100797723591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (A000217 (n + 4) + 4).toNat

end

end A268871.P49318100797723591

/-!
# A268872: Number of sequences in {1,...,n}^n with longest increasing subsequence of length five.

The programs for A268872, there is no canonical definition to state claims against.
-/

/-! ## A268872.P17337039002521482314

`A245667(A167499(n+4))`
-/

namespace A268872.P17337039002521482314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (A167499 (n + 4)).toNat

end

end A268872.P17337039002521482314

/-! ## A268872.P651741040735083704

`A245667(eq[5, A002262(n)])`
-/

namespace A268872.P651741040735083704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268872.P651741040735083704

/-! ## A268872.P4812087835958055723

`A245667(eq[6, A002260(n+1)])`
-/

namespace A268872.P4812087835958055723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268872.P4812087835958055723

/-! ## A268872.P1196962456404004456

`record[A245667(A167499(n)%A000110(n))]`
-/

namespace A268872.P1196962456404004456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (Int.tmod (A167499 n) (A000110 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268872.P1196962456404004456

/-! ## A268872.P14704463072676451724

`record[A008683(A002260(n+1))*A245667(n)]`
-/

namespace A268872.P14704463072676451724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (n + 1)).toNat * A245667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268872.P14704463072676451724

/-!
# A268873: Number of sequences in {1,...,n}^n with longest increasing subsequence of length six.

The programs for A268873, there is no canonical definition to state claims against.
-/

/-! ## A268873.P10651080648261684874

`A245667(eq[6, A002262(n)])`
-/

namespace A268873.P10651080648261684874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268873.P10651080648261684874

/-! ## A268873.P15675130174865439742

`A245667(eq[8, A141169(n)])`
-/

namespace A268873.P15675130174865439742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268873.P15675130174865439742

/-! ## A268873.P97736195224081065

`A245667(eq[64, A059268(n)])`
-/

namespace A268873.P97736195224081065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268873.P97736195224081065

/-! ## A268873.P12785514271182988924

`A245667(eq[6, A025668(n+1)])`
-/

namespace A268873.P12785514271182988924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268873.P12785514271182988924

/-!
# A268874: Number of sequences in {1,...,n}^n with longest increasing subsequence of length seven.

The programs for A268874, there is no canonical definition to state claims against.
-/

/-! ## A268874.P5083115799698609163

`A245667(eq[7, A002262(n)])`
-/

namespace A268874.P5083115799698609163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268874.P5083115799698609163

/-! ## A268874.P15894421809299607429

`A245667(eq[7, A025668(n+1)])`
-/

namespace A268874.P15894421809299607429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268874.P15894421809299607429

/-! ## A268874.P9851941907538422937

`A245667(eq[8, A002260(n+1)])`
-/

namespace A268874.P9851941907538422937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268874.P9851941907538422937

/-! ## A268874.P15785184165313461737

`A245667(eq[19, A037126(n+1)])`
-/

namespace A268874.P15785184165313461737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268874.P15785184165313461737

/-!
# A268875: Number of sequences in {1,...,n}^n with longest increasing subsequence of length eight.

The programs for A268875, there is no canonical definition to state claims against.
-/

/-! ## A268875.P17800373595600127484

`A245667(eq[8, A002262(n)])`
-/

namespace A268875.P17800373595600127484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268875.P17800373595600127484

/-! ## A268875.P10766333697889849374

`A245667(A000096(n+7)+9)`
-/

namespace A268875.P10766333697889849374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (A000096 (n + 7) + 9).toNat

end

end A268875.P10766333697889849374

/-! ## A268875.P9875437522566731919

`A245667(eq[8, A025668(n+1)])`
-/

namespace A268875.P9875437522566731919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268875.P9875437522566731919

/-! ## A268875.P12755267677632896227

`A245667(eq[8, A025675(n+1)])`
-/

namespace A268875.P12755267677632896227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268875.P12755267677632896227

/-!
# A268876: Number of sequences in {1,...,n}^n with longest increasing subsequence of length nine.

The programs for A268876, there is no canonical definition to state claims against.
-/

/-! ## A268876.P14925304070157290906

`A245667(eq[9, A002262(n)])`
-/

namespace A268876.P14925304070157290906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268876.P14925304070157290906

/-! ## A268876.P4948828822682817909

`A245667(eq[9, A025668(n+1)])`
-/

namespace A268876.P4948828822682817909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268876.P4948828822682817909

/-! ## A268876.P13941960886082356157

`A245667(eq[9, A144328(n+1)])`
-/

namespace A268876.P13941960886082356157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268876.P13941960886082356157

/-! ## A268876.P8540032888862776213

`A245667(eq[10, A002260(n+1)])`
-/

namespace A268876.P8540032888862776213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268876.P8540032888862776213

/-!
# A268877: Number of sequences in {1,...,n}^n with longest increasing subsequence of length ten.

The programs for A268877, there is no canonical definition to state claims against.
-/

/-! ## A268877.P18098803853859939596

`A245667(eq[10, A002262(n)])`
-/

namespace A268877.P18098803853859939596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268877.P18098803853859939596

/-! ## A268877.P11983523331310844766

`A245667(eq[10, A025668(n+1)])`
-/

namespace A268877.P11983523331310844766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268877.P11983523331310844766

/-! ## A268877.P13366259560640972598

`A245667(eq[10, A144328(n+1)])`
-/

namespace A268877.P13366259560640972598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268877.P13366259560640972598

/-! ## A268877.P5800894478431251681

`A245667(eq[11, A002260(n+1)])`
-/

namespace A268877.P5800894478431251681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268877.P5800894478431251681

/-!
# A268878: Breadth-first traversal of a binary tree in which the value at the n-th node is equal to ParentNode()*prime(n-1).

The programs for A268878, the canonical program `A268878.P7006802320349261264` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268878 has offset 1).

The definition of A268878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268878.P7006802320349261264

`A000040(n)*a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268878

/-- `A000040(n)*a(floor((n+1)/2)-1)` -/
def P7006802320349261264.Spec : Prop :=
  ∀ n, P7006802320349261264.a n = A268878 (n + 1)

theorem P7006802320349261264.correct : P7006802320349261264.Spec := by
  intro n
  simp only [A268878, Nat.add_sub_cancel]

end A268878

/-! ## A268878.P15478637018507468976

`a(floor((n-1)/2))*A000040(n)` with `a(0)=1`
-/

namespace A268878.P15478637018507468976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat * A000040 n

end

end A268878.P15478637018507468976

namespace A268878

/-- `a(floor((n-1)/2))*A000040(n)` -/
def P15478637018507468976.Spec : Prop :=
  ∀ n, P15478637018507468976.a n = A268878 (n + 1)

end A268878

/-! ## A268878.P11329390722755650005

`a(∑[char[2*n+1]]-1)*A008578(n+1)` with `a(0)=1`
-/

namespace A268878.P11329390722755650005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) * A008578 (n + 1)

end

end A268878.P11329390722755650005

namespace A268878

/-- `a(∑[char[2*n+1]]-1)*A008578(n+1)` -/
def P11329390722755650005.Spec : Prop :=
  ∀ n, P11329390722755650005.a n = A268878 (n + 1)

end A268878

/-! ## A268878.P1034249080540568143

`a(A004526(n-1))*eq[1, A284289(n)]` with `a(0)=1`
-/

namespace A268878.P1034249080540568143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 (n - 1)).toNat * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268878.P1034249080540568143

namespace A268878

/-- `a(A004526(n-1))*eq[1, A284289(n)]` -/
def P1034249080540568143.Spec : Prop :=
  ∀ n, (P1034249080540568143.a n : ℤ) = A268878 (n + 1)

end A268878

/-! ## A268878.P7443115838298047280

`a(A001651(n)-n)*record[A006530(n+1)]` with `a(0)=1`
-/

namespace A268878.P7443115838298047280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A001651 n - (n : ℤ)).toNat * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268878.P7443115838298047280

namespace A268878

/-- `a(A001651(n)-n)*record[A006530(n+1)]` -/
def P7443115838298047280.Spec : Prop :=
  ∀ n, P7443115838298047280.a n = A268878 (n + 1)

end A268878

/-! ## A268878.P1323990818010946369

`a(A001651(n)-n)*record[A014963(n+1)]` with `a(0)=1`
-/

namespace A268878.P1323990818010946369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A001651 n - (n : ℤ)).toNat * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268878.P1323990818010946369

namespace A268878

/-- `a(A001651(n)-n)*record[A014963(n+1)]` -/
def P1323990818010946369.Spec : Prop :=
  ∀ n, P1323990818010946369.a n = A268878 (n + 1)

end A268878

/-!
# A268879: a(n) is the least prime p=prime(m) such that gcd (prime(m) + 2, prime(m + 1) + 2) = 2*n - 1.

The programs for A268879, there is no canonical definition to state claims against.
-/

/-! ## A268879.P14213403050273982003

`A000040(A268863(n+1))`
-/

namespace A268879.P14213403050273982003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A268863 (n + 1)).toNat

end

end A268879.P14213403050273982003

/-! ## A268879.P15185346996667726235

`A008578(A268863(n+1)+1)`
-/

namespace A268879.P15185346996667726235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A268863 (n + 1) + 1).toNat

end

end A268879.P15185346996667726235

/-! ## A268879.P17811194301832688968

`A182986(A268863(n+1)+1)`
-/

namespace A268879.P17811194301832688968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A268863 (n + 1) + 1).toNat

end

end A268879.P17811194301832688968

/-! ## A268879.P14628714999948859187

`∑{d}[A268863(n+1), A007444(#)]`
-/

namespace A268879.P14628714999948859187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A268879.P14628714999948859187

/-! ## A268879.P17933319284199503190

`A008864(A268863(n+1))-A055642(n)`
-/

namespace A268879.P17933319284199503190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A268863 (n + 1)).toNat - A055642 n

end

end A268879.P17933319284199503190

/-!
# A268880: Number of n X n binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268880, there is no canonical definition to state claims against.
-/

/-! ## A268880.P1105325699073621258

`A268886(∑[4*n]+1)`
-/

namespace A268880.P1105325699073621258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268880.P1105325699073621258

/-! ## A268880.P16489234160852010201

`A057427(n)*A268886(A001844(n))`
-/

namespace A268880.P16489234160852010201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A268886 (A001844 n).toNat

end

end A268880.P16489234160852010201

/-! ## A268880.P16674080011369724914

`A178334(n)*A268886(A001844(n))`
-/

namespace A268880.P16674080011369724914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A268886 (A001844 n).toNat

end

end A268880.P16674080011369724914

/-! ## A268880.P7520257677617455994

`lcm(A007875(n+1), A268886(A001844(n)))`
-/

namespace A268880.P7520257677617455994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007875 (n + 1)) (A268886 (A001844 n).toNat)

end

end A268880.P7520257677617455994

/-! ## A268880.P4542779286298982099

`A007318(C(n, n²))*A268886(A001844(n))`
-/

namespace A268880.P4542779286298982099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n (n ^ 2)) * A268886 (A001844 n).toNat

end

end A268880.P4542779286298982099

/-!
# A268881: Number of n X 3 binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268881, the canonical program `A268881.P2269167647471305984` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268881 has offset 1).

The definition of A268881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268881.P2269167647471305984

`10*a(n-1)-31*a(n-2)+30*a(n-3)-9*a(n-4)` with `a(0)=2, a(1)=14, a(2)=84, a(3)=462`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268881

/-- `10*a(n-1)-31*a(n-2)+30*a(n-3)-9*a(n-4)` -/
def P2269167647471305984.Spec : Prop :=
  ∀ n, P2269167647471305984.a n = A268881 (n + 1)

theorem P2269167647471305984.correct : P2269167647471305984.Spec := by
  intro n
  simp only [A268881, Nat.add_sub_cancel]

end A268881

/-! ## A268881.P3835460739833610745

`A268886(∑[n+3]+1)`
-/

namespace A268881.P3835460739833610745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268881.P3835460739833610745

namespace A268881

/-- `A268886(∑[n+3]+1)` -/
def P3835460739833610745.Spec : Prop :=
  ∀ n, P3835460739833610745.a n = A268881 (n + 1)

end A268881

/-! ## A268881.P6018652451284579265

`record[A268886(A198464(n+1))]`
-/

namespace A268881.P6018652451284579265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268881.P6018652451284579265

namespace A268881

/-- `record[A268886(A198464(n+1))]` -/
def P6018652451284579265.Spec : Prop :=
  ∀ n, P6018652451284579265.a n = A268881 (n + 1)

end A268881

/-!
# A268882: Number of n X 4 binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268882, there is no canonical definition to state claims against.
-/

/-! ## A268882.P15750576865106881080

`A268886(A155212(n)+5)`
-/

namespace A268882.P15750576865106881080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A155212 n + 5).toNat

end

end A268882.P15750576865106881080

/-! ## A268882.P13435606903085253849

`A268886(eq[3, A193592(n)])`
-/

namespace A268882.P13435606903085253849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268882.P13435606903085253849

/-! ## A268882.P10502695610873099605

`A268886(Δ[A034857(n+1)])`
-/

namespace A268882.P10502695610873099605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (f1 (n + 1) - f1 n).toNat

end

end A268882.P10502695610873099605

/-! ## A268882.P659507641830145186

`A268886(A052905(n+1)+2)`
-/

namespace A268882.P659507641830145186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A052905 (n + 1) + 2).toNat

end

end A268882.P659507641830145186

/-! ## A268882.P5092763499154937408

`A268886(eq[4, A057728(n+1)])`
-/

namespace A268882.P5092763499154937408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268882.P5092763499154937408

/-!
# A268883: Number of nX5 binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268883, there is no canonical definition to state claims against.
-/

/-! ## A268883.P2206581311726857085

`A268886(Δ[A264443(n)])`
-/

namespace A268883.P2206581311726857085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (f1 (n + 1) - f1 n).toNat

end

end A268883.P2206581311726857085

/-! ## A268883.P10780121708375152975

`A268886(A056115(n)+11)`
-/

namespace A268883.P10780121708375152975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A056115 n + 11).toNat

end

end A268883.P10780121708375152975

/-! ## A268883.P369358712082681487

`A268886(eq[4, A193592(n)])`
-/

namespace A268883.P369358712082681487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268883.P369358712082681487

/-! ## A268883.P17953055229137899963

`A268886(Δ[A023545(n+1)])`
-/

namespace A268883.P17953055229137899963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (f1 (n + 1) - f1 n).toNat

end

end A268883.P17953055229137899963

/-! ## A268883.P17081023356186886524

`A268886(A052905(n+2)+1)`
-/

namespace A268883.P17081023356186886524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A052905 (n + 2) + 1).toNat

end

end A268883.P17081023356186886524

/-!
# A268884: Number of nX6 binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268884, there is no canonical definition to state claims against.
-/

/-! ## A268884.P10563950851585005416

`A268886(A052905(n+3))`
-/

namespace A268884.P10563950851585005416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A052905 (n + 3)).toNat

end

end A268884.P10563950851585005416

/-! ## A268884.P9891468529716817559

`A268886(eq[3, A219347(n)])`
-/

namespace A268884.P9891468529716817559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268884.P9891468529716817559

/-! ## A268884.P5646711133492270728

`A268886(eq[5, A193592(n)])`
-/

namespace A268884.P5646711133492270728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268884.P5646711133492270728

/-! ## A268884.P16163516902181679909

`A268886(eq[8, A258709(n)])`
-/

namespace A268884.P16163516902181679909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268884.P16163516902181679909

/-! ## A268884.P15226784091092284471

`A268886(A000124(n+6)-6)`
-/

namespace A268884.P15226784091092284471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A000124 (n + 6) - 6).toNat

end

end A268884.P15226784091092284471

/-!
# A268885: Number of nX7 binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268885, there is no canonical definition to state claims against.
-/

/-! ## A268885.P11219528444218912197

`A268886(eq[4, A219347(n)])`
-/

namespace A268885.P11219528444218912197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268885.P11219528444218912197

/-! ## A268885.P14324335388543090506

`A268886(A046691(n+5)-2)`
-/

namespace A268885.P14324335388543090506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A046691 (n + 5) - 2).toNat

end

end A268885.P14324335388543090506

/-! ## A268885.P14669405526764207722

`A268886(eq[10, A185782(n+1)])`
-/

namespace A268885.P14669405526764207722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268885.P14669405526764207722

/-! ## A268885.P14434905344704466592

`A268886(A005408(n)+A000217(n+5)+6)`
-/

namespace A268885.P14434905344704466592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A005408 n + (A000217 (n + 5) + 6)).toNat

end

end A268885.P14434905344704466592

/-!
# A268887: Number of 2 X n binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268887, the canonical program `A268887.P548244548204823572` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268887 has offset 1).

The definition of A268887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268887.P548244548204823572

`abs(∑[∑[n*A077985(n+1)]])`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268887

/-- `abs(∑[∑[n*A077985(n+1)]])` -/
def P548244548204823572.Spec : Prop :=
  ∀ n, P548244548204823572.a n = A268887 (n + 1)

theorem P548244548204823572.correct : P548244548204823572.Spec := by
  intro n
  simp only [A268887, Nat.add_sub_cancel]

end A268887

/-! ## A268887.P7121949448115996645

`A268886(∑[n+1]+2)`
-/

namespace A268887.P7121949448115996645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A268887.P7121949448115996645

namespace A268887

/-- `A268886(∑[n+1]+2)` -/
def P7121949448115996645.Spec : Prop :=
  ∀ n, P7121949448115996645.a n = A268887 (n + 1)

end A268887

/-! ## A268887.P13219441183972657598

`A268886(A133263(n+1))%A041025(n)`
-/

namespace A268887.P13219441183972657598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268886 (A133263 (n + 1)).toNat) (A041025 n)

end

end A268887.P13219441183972657598

namespace A268887

/-- `A268886(A133263(n+1))%A041025(n)` -/
def P13219441183972657598.Spec : Prop :=
  ∀ n, P13219441183972657598.a n = A268887 (n + 1)

end A268887

/-! ## A268887.P8193299360933991507

`A268886(A133263(n+1))^(A000038(n)+1)`
-/

namespace A268887.P8193299360933991507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268886 (A133263 (n + 1)).toNat : ℚ) ^ (A000038 n + 1 : ℤ)

end

end A268887.P8193299360933991507

namespace A268887

/-- `A268886(A133263(n+1))^(A000038(n)+1)` -/
def P8193299360933991507.Spec : Prop :=
  ∀ n, P8193299360933991507.a n = (A268887 (n + 1) : ℚ)

end A268887

/-! ## A268887.P17800415699348236620

`A268886(A133263(n+1))^(A031285(n)-n)`
-/

namespace A268887.P17800415699348236620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268886 (A133263 (n + 1)).toNat : ℚ) ^ (A031285 n - (n : ℤ) : ℤ)

end

end A268887.P17800415699348236620

namespace A268887

/-- `A268886(A133263(n+1))^(A031285(n)-n)` -/
def P17800415699348236620.Spec : Prop :=
  ∀ n, P17800415699348236620.a n = (A268887 (n + 1) : ℚ)

end A268887

/-!
# A268888: Number of 3 X n binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268888, there is no canonical definition to state claims against.
-/

/-! ## A268888.P2798422160447052643

`A268997(n+1)-A188700(n+1)`
-/

namespace A268888.P2798422160447052643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268997 (n + 1) - A188700 (n + 1)

end

end A268888.P2798422160447052643

/-! ## A268888.P9047021513101293119

`A268886(∑[n+2]+4)`
-/

namespace A268888.P9047021513101293119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268888.P9047021513101293119

/-! ## A268888.P7717253268210620877

`A268995(A167614(n+1))-A188700(n+1)`
-/

namespace A268888.P7717253268210620877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A167614 (n + 1)).toNat - A188700 (n + 1)

end

end A268888.P7717253268210620877

/-! ## A268888.P16594437591169520121

`A268995(A046691(n)+7)-A188700(n+1)`
-/

namespace A268888.P16594437591169520121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A046691 n + 7).toNat - A188700 (n + 1)

end

end A268888.P16594437591169520121

/-! ## A268888.P15091440446069072086

`A014963(A008458(n))*A268886(A167614(n+1))`
-/

namespace A268888.P15091440446069072086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A268886 (A167614 (n + 1)).toNat

end

end A268888.P15091440446069072086

/-!
# A268889: Number of 4Xn binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268889, there is no canonical definition to state claims against.
-/

/-! ## A268889.P7037365167066820123

`A268886(A052905(n)+9)`
-/

namespace A268889.P7037365167066820123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A052905 n + 9).toNat

end

end A268889.P7037365167066820123

/-! ## A268889.P12237902092981426157

`A268886(A055999(n)+10)`
-/

namespace A268889.P12237902092981426157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A055999 n + 10).toNat

end

end A268889.P12237902092981426157

/-! ## A268889.P12698655975951514621

`A268886(A167614(n+2)+1)`
-/

namespace A268889.P12698655975951514621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A167614 (n + 2) + 1).toNat

end

end A268889.P12698655975951514621

/-! ## A268889.P9662742632490077575

`A268886(A167487(n+2)-3)`
-/

namespace A268889.P9662742632490077575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A167487 (n + 2) - 3).toNat

end

end A268889.P9662742632490077575

/-! ## A268889.P1989270536733462734

`A268886(eq[5, A131818(n+1)])`
-/

namespace A268889.P1989270536733462734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268889.P1989270536733462734

/-!
# A268890: Number of 5Xn binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268890, there is no canonical definition to state claims against.
-/

/-! ## A268890.P7565085121879074418

`A268886(A167499(n+3))`
-/

namespace A268890.P7565085121879074418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A167499 (n + 3)).toNat

end

end A268890.P7565085121879074418

/-! ## A268890.P12046175240357622778

`A268886(A155212(n)+13)`
-/

namespace A268890.P12046175240357622778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A155212 n + 13).toNat

end

end A268890.P12046175240357622778

/-! ## A268890.P10670345718058191391

`A268886(eq[6, A131818(n+1)])`
-/

namespace A268890.P10670345718058191391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268890.P10670345718058191391

/-! ## A268890.P13107713748767405819

`A268886(Δ[A034857(n+1)]+8)`
-/

namespace A268890.P13107713748767405819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (f1 (n + 1) - f1 n + 8).toNat

end

end A268890.P13107713748767405819

/-! ## A268890.P2987074013499489403

`A268886(A000124(n+5)-(n+1))`
-/

namespace A268890.P2987074013499489403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A268890.P2987074013499489403

/-!
# A268891: Number of 6Xn binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268891, there is no canonical definition to state claims against.
-/

/-! ## A268891.P8381524800259397408

`A268886(A056115(n)+21)`
-/

namespace A268891.P8381524800259397408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A056115 n + 21).toNat

end

end A268891.P8381524800259397408

/-! ## A268891.P16059178088200676744

`A268886(A167614(n+4)+3)`
-/

namespace A268891.P16059178088200676744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A167614 (n + 4) + 3).toNat

end

end A268891.P16059178088200676744

/-! ## A268891.P14699345457093864095

`A268886(A000217(n+5)+6)`
-/

namespace A268891.P14699345457093864095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A000217 (n + 5) + 6).toNat

end

end A268891.P14699345457093864095

/-! ## A268891.P18120907477271046248

`A268886(eq[6, A130270(n+1)])`
-/

namespace A268891.P18120907477271046248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268891.P18120907477271046248

/-! ## A268891.P14538983789886355420

`A268886(eq[7, A131818(n+1)])`
-/

namespace A268891.P14538983789886355420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268891.P14538983789886355420

/-!
# A268892: Number of 7Xn binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268892, there is no canonical definition to state claims against.
-/

/-! ## A268892.P11221147949846826683

`A269001(n+1)-A188704(n+1)`
-/

namespace A268892.P11221147949846826683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269001 (n + 1) - A188704 (n + 1)

end

end A268892.P11221147949846826683

/-! ## A268892.P15958030038559268639

`A268886(A056119(n)+28)`
-/

namespace A268892.P15958030038559268639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A056119 n + 28).toNat

end

end A268892.P15958030038559268639

/-! ## A268892.P9732893414651638990

`A268886(eq[11, A066657(n)])`
-/

namespace A268892.P9732893414651638990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268892.P9732893414651638990

/-! ## A268892.P9405727047914538479

`A268886(A167499(n+5)+2)`
-/

namespace A268892.P9405727047914538479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A167499 (n + 5) + 2).toNat

end

end A268892.P9405727047914538479

/-! ## A268892.P6881965546862763958

`A268886(A000217(n+6)+7)`
-/

namespace A268892.P6881965546862763958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (A000217 (n + 6) + 7).toNat

end

end A268892.P6881965546862763958

/-!
# A268896: Start at a(0)=1. a(n) = a(n-1)+2 if n == 1,2 (mod 3) and a(n)=a(n-1)+a(n-3) if n == 0 (mod 3).

The programs for A268896, the canonical program `A268896.P5599468407950783501` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268896 has offset 0).

The definition of A268896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268896.P5599468407950783501

`A083575(A002264(n))-A130794(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268896

/-- `A083575(A002264(n))-A130794(n+1)` -/
def P5599468407950783501.Spec : Prop :=
  ∀ n, P5599468407950783501.a n = A268896 n

theorem P5599468407950783501.correct : P5599468407950783501.Spec := by
  intro n
  simp only [A268896]

end A268896

/-! ## A268896.P10394851891928050666

`∪[A020714(n), A123208(n)]`
-/

namespace A268896.P10394851891928050666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123208 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268896.P10394851891928050666

namespace A268896

/-- `∪[A020714(n), A123208(n)]` -/
def P10394851891928050666.Spec : Prop :=
  ∀ n, (P10394851891928050666.a n : ℤ) = A268896 n

end A268896

/-! ## A268896.P16407254074935659478

`∪[A123208(n), A146523(n)]`
-/

namespace A268896.P16407254074935659478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123208 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268896.P16407254074935659478

namespace A268896

/-- `∪[A123208(n), A146523(n)]` -/
def P16407254074935659478.Spec : Prop :=
  ∀ n, (P16407254074935659478.a n : ℤ) = A268896 n

end A268896

/-! ## A268896.P16855519998474425983

`A222261(a(n-1))+A130196(n)` with `a(0)=1`
-/

namespace A268896.P16855519998474425983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A222261 (a (n - 1)).toNat + A130196 n

end

end A268896.P16855519998474425983

namespace A268896

/-- `A222261(a(n-1))+A130196(n)` -/
def P16855519998474425983.Spec : Prop :=
  ∀ n, P16855519998474425983.a n = A268896 n

end A268896

/-! ## A268896.P18000446169165981840

`eq[gcd(2, n), ∏{p}[ceil(n/5), #]]`
-/

namespace A268896.P18000446169165981840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 5⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268896.P18000446169165981840

namespace A268896

/-- `eq[gcd(2, n), ∏{p}[ceil(n/5), #]]` -/
def P18000446169165981840.Spec : Prop :=
  ∀ n, (P18000446169165981840.a n : ℤ) = A268896 n

end A268896

/-!
# A268897: Number of n X n 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268897, there is no canonical definition to state claims against.
-/

/-! ## A268897.P10900793060914039146

`6*A229579(n+1)`
-/

namespace A268897.P10900793060914039146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229579 (n + 1)

end

end A268897.P10900793060914039146

/-! ## A268897.P7557428969284508131

`A268904(∑[4*n]+1)`
-/

namespace A268897.P7557428969284508131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268897.P7557428969284508131

/-! ## A268897.P7334891476671853072

`6*A229586(A001844(n))`
-/

namespace A268897.P7334891476671853072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229586 (A001844 n).toNat

end

end A268897.P7334891476671853072

/-! ## A268897.P16174270031708006578

`record[A003982(n)*A268904(n+1)]`
-/

namespace A268897.P16174270031708006578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A268904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268897.P16174270031708006578

/-! ## A268897.P16916126368032011935

`A268904(A001844(n))+A180472(n)`
-/

namespace A268897.P16916126368032011935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (A001844 n).toNat + A180472 n

end

end A268897.P16916126368032011935

/-!
# A268898: Number of n X 2 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268898, the canonical program `A268898.P15147401756091373286` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268898 has offset 1).

The definition of A268898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268898.P15147401756091373286

`ogf((3+12x)/(1-8x+16x^2))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268898

/-- `ogf((3+12x)/(1-8x+16x^2))` -/
def P15147401756091373286.Spec : Prop :=
  ∀ n, P15147401756091373286.a n = A268898 (n + 1)

theorem P15147401756091373286.correct : P15147401756091373286.Spec := by
  intro n
  simp only [A268898, Nat.add_sub_cancel]

end A268898

/-! ## A268898.P4254180076345270002

`Δ[4^n]*Δ[n²]`
-/

namespace A268898.P4254180076345270002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A268898.P4254180076345270002

namespace A268898

/-- `Δ[4^n]*Δ[n²]` -/
def P4254180076345270002.Spec : Prop :=
  ∀ n, P4254180076345270002.a n = A268898 (n + 1)

end A268898

/-! ## A268898.P4421051049600216755

`lcm(3*(2*n+1), 4^n)`
-/

namespace A268898.P4421051049600216755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (3 * (2 * n + 1)) (4 ^ n)

end

end A268898.P4421051049600216755

namespace A268898

/-- `lcm(3*(2*n+1), 4^n)` -/
def P4421051049600216755.Spec : Prop :=
  ∀ n, (P4421051049600216755.a n : ℤ) = A268898 (n + 1)

end A268898

/-! ## A268898.P14463583697345011678

`abs(3*record[(n+1)*(-2)^n])`
-/

namespace A268898.P14463583697345011678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A268898.P14463583697345011678

namespace A268898

/-- `abs(3*record[(n+1)*(-2)^n])` -/
def P14463583697345011678.Spec : Prop :=
  ∀ n, P14463583697345011678.a n = A268898 (n + 1)

end A268898

/-! ## A268898.P6549329523198194361

`record[3*xor(1, n)*gcd(2, n)^n]`
-/

namespace A268898.P6549329523198194361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.xor 1 n * Nat.gcd 2 n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268898.P6549329523198194361

namespace A268898

/-- `record[3*xor(1, n)*gcd(2, n)^n]` -/
def P6549329523198194361.Spec : Prop :=
  ∀ n, (P6549329523198194361.a n : ℤ) = A268898 (n + 1)

end A268898

/-! ## A268898.P1112976400014099662

`floor(3*or(1, 2*n)/4^-n)`
-/

namespace A268898.P1112976400014099662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((Nat.lor 1 (2 * n) : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ))⌋

end

end A268898.P1112976400014099662

namespace A268898

/-- `floor(3*or(1, 2*n)/4^-n)` -/
def P1112976400014099662.Spec : Prop :=
  ∀ n, P1112976400014099662.a n = A268898 (n + 1)

end A268898

/-! ## A268898.P2908623322047099712

`round(3*or(1, 2*n)/4^-n)`
-/

namespace A268898.P2908623322047099712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((Nat.lor 1 (2 * n) : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ)))

end

end A268898.P2908623322047099712

namespace A268898

/-- `round(3*or(1, 2*n)/4^-n)` -/
def P2908623322047099712.Spec : Prop :=
  ∀ n, P2908623322047099712.a n = A268898 (n + 1)

end A268898

/-! ## A268898.P3958784065486963624

`record[-((2/n+2)*a(n-1))]` with `a(0)=3`
-/

namespace A268898.P3958784065486963624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  -((2 / (n : ℚ) + 2) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268898.P3958784065486963624

namespace A268898

/-- `record[-((2/n+2)*a(n-1))]` -/
def P3958784065486963624.Spec : Prop :=
  ∀ n, P3958784065486963624.a n = (A268898 (n + 1) : ℚ)

end A268898

/-! ## A268898.P14669475930347829701

`abs(3*4^n/tan(acot(2*n+1)))`
-/

namespace A268898.P14669475930347829701
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |3 * ((4 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (2 * n + 1 : ℝ)))|

end

end A268898.P14669475930347829701

namespace A268898

/-- `abs(3*4^n/tan(acot(2*n+1)))` -/
def P14669475930347829701.Spec : Prop :=
  ∀ n, P14669475930347829701.a n = (A268898 (n + 1) : ℝ)

end A268898

/-! ## A268898.P3039214868700450713

`A167667(Δ[n²])`
-/

namespace A268898.P3039214868700450713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167667 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A268898.P3039214868700450713

namespace A268898

/-- `A167667(Δ[n²])` -/
def P3039214868700450713.Spec : Prop :=
  ∀ n, P3039214868700450713.a n = A268898 (n + 1)

end A268898

/-! ## A268898.P13734591956675343879

`A058582(4*n+1)`
-/

namespace A268898.P13734591956675343879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058582 (4 * n + 1)

end

end A268898.P13734591956675343879

namespace A268898

/-- `A058582(4*n+1)` -/
def P13734591956675343879.Spec : Prop :=
  ∀ n, P13734591956675343879.a n = A268898 (n + 1)

end A268898

/-! ## A268898.P15143523688459511948

`A203150(4*n+2)`
-/

namespace A268898.P15143523688459511948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203150 (4 * n + 2)

end

end A268898.P15143523688459511948

namespace A268898

/-- `A203150(4*n+2)` -/
def P15143523688459511948.Spec : Prop :=
  ∀ n, P15143523688459511948.a n = A268898 (n + 1)

end A268898

/-! ## A268898.P5022924866152110331

`A048474(Δ[n²])-1`
-/

namespace A268898.P5022924866152110331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048474 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A268898.P5022924866152110331

namespace A268898

/-- `A048474(Δ[n²])-1` -/
def P5022924866152110331.Spec : Prop :=
  ∀ n, P5022924866152110331.a n = A268898 (n + 1)

end A268898

/-! ## A268898.P14451845925434382208

`record[(n+3)*A077959(n)]`
-/

namespace A268898.P14451845925434382208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A077959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268898.P14451845925434382208

namespace A268898

/-- `record[(n+3)*A077959(n)]` -/
def P14451845925434382208.Spec : Prop :=
  ∀ n, P14451845925434382208.a n = A268898 (n + 1)

end A268898

/-! ## A268898.P3136143775736315165

`A036542(2*n+1)+2*n`
-/

namespace A268898.P3136143775736315165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036542 (2 * n + 1) + (2 * n : ℤ)

end

end A268898.P3136143775736315165

namespace A268898

/-- `A036542(2*n+1)+2*n` -/
def P3136143775736315165.Spec : Prop :=
  ∀ n, P3136143775736315165.a n = A268898 (n + 1)

end A268898

/-! ## A268898.P961199070191630111

`A288443(n)+A058962(n)`
-/

namespace A268898.P961199070191630111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288443 n + A058962 n

end

end A268898.P961199070191630111

namespace A268898

/-- `A288443(n)+A058962(n)` -/
def P961199070191630111.Spec : Prop :=
  ∀ n, P961199070191630111.a n = A268898 (n + 1)

end A268898

/-! ## A268898.P4843380737445246691

`A130129(2*n)+2*A000079(n)²`
-/

namespace A268898.P4843380737445246691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130129 (2 * n) + 2 * A000079 n ^ 2

end

end A268898.P4843380737445246691

namespace A268898

/-- `A130129(2*n)+2*A000079(n)²` -/
def P4843380737445246691.Spec : Prop :=
  ∀ n, P4843380737445246691.a n = A268898 (n + 1)

end A268898

/-! ## A268898.P16729540952600472956

`A057428(n+1)+A048474(2*n+1)`
-/

namespace A268898.P16729540952600472956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A048474 (2 * n + 1)

end

end A268898.P16729540952600472956

namespace A268898

/-- `A057428(n+1)+A048474(2*n+1)` -/
def P16729540952600472956.Spec : Prop :=
  ∀ n, P16729540952600472956.a n = A268898 (n + 1)

end A268898

/-! ## A268898.P15218712534734280866

`A167667(2*n+1)+A000007(n+1)`
-/

namespace A268898.P15218712534734280866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167667 (2 * n + 1) + A000007 (n + 1)

end

end A268898.P15218712534734280866

namespace A268898

/-- `A167667(2*n+1)+A000007(n+1)` -/
def P15218712534734280866.Spec : Prop :=
  ∀ n, P15218712534734280866.a n = A268898 (n + 1)

end A268898

/-! ## A268898.P10727402777950060613

`A130129(2*n)+A000079(2*n+1)`
-/

namespace A268898.P10727402777950060613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130129 (2 * n) + A000079 (2 * n + 1)

end

end A268898.P10727402777950060613

namespace A268898

/-- `A130129(2*n)+A000079(2*n+1)` -/
def P10727402777950060613.Spec : Prop :=
  ∀ n, P10727402777950060613.a n = A268898 (n + 1)

end A268898

/-!
# A268899: Number of n X 3 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268899, the canonical program `A268899.P8761926843623882266` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268899 has offset 1).

The definition of A268899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268899.P8761926843623882266

`2^(n+2)*3^n*(4*(n+1)-1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268899

/-- `2^(n+2)*3^n*(4*(n+1)-1)` -/
def P8761926843623882266.Spec : Prop :=
  ∀ n, P8761926843623882266.a n = A268899 (n + 1)

theorem P8761926843623882266.correct : P8761926843623882266.Spec := by
  intro n
  simp only [A268899, Nat.add_sub_cancel]

end A268899

/-! ## A268899.P2096597784389538366

`12*a(n-1)-36*a(n-2)` with `a(0)=12, a(1)=168`
-/

namespace A268899.P2096597784389538366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12, 168] fun n a =>
  12 * a (n - 1) - 36 * a (n - 2)

end

end A268899.P2096597784389538366

namespace A268899

/-- `12*a(n-1)-36*a(n-2)` -/
def P2096597784389538366.Spec : Prop :=
  ∀ n, P2096597784389538366.a n = A268899 (n + 1)

theorem P2096597784389538366.correct : P2096597784389538366.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A268899, Nat.add_sub_cancel, A268899.P2096597784389538366.a, A268899.P8761926843623882266.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A268899, Nat.add_sub_cancel, A268899.P2096597784389538366.a, A268899.P8761926843623882266.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A268899

/-! ## A268899.P4124240766264374423

`A268904(A034856(n+2))`
-/

namespace A268899.P4124240766264374423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (A034856 (n + 2)).toNat

end

end A268899.P4124240766264374423

namespace A268899

/-- `A268904(A034856(n+2))` -/
def P4124240766264374423.Spec : Prop :=
  ∀ n, P4124240766264374423.a n = A268899 (n + 1)

end A268899

