import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B007.C000
import Seq.B008.C001
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
# A012501: cos(cos(x)*arctan(x))=1-1/2!*x^2+21/4!*x^4-645/6!*x^6+34153/8!*x^8...

The programs for A012501, there is no canonical definition to state claims against.
-/

/-! ## A012501.P2040792674849697793

`A012773(2*n)/(-1)^n`
-/

namespace A012501.P2040792674849697793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012773 (2 * n) : ℚ) / ((-1) ^ n : ℚ)

end

end A012501.P2040792674849697793

/-! ## A012501.P16075952688466013654

`A012773(2*n)*A033999(n)`
-/

namespace A012501.P16075952688466013654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012773 (2 * n) * A033999 n

end

end A012501.P16075952688466013654

/-!
# A012502: sinh(cos(x)*arctan(x))=x-4/3!*x^3+1304/7!*x^7-109120/9!*x^9...

The programs for A012502, there is no canonical definition to state claims against.
-/

/-! ## A012502.P375254452732392255

`A012496(Δ[n²])`
-/

namespace A012502.P375254452732392255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012496 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012502.P375254452732392255

/-! ## A012502.P10421947779183938832

`or(2, A012496(A005408(n)))-2`
-/

namespace A012502.P10421947779183938832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A012496 (A005408 n).toNat) - 2

end

end A012502.P10421947779183938832

/-! ## A012502.P11450236800539588427

`or(A000007(n), A012496(A005408(n)))`
-/

namespace A012502.P11450236800539588427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A012496 (A005408 n).toNat)

end

end A012502.P11450236800539588427

/-! ## A012502.P821741254696664068

`A012496(A005408(n))^(A000040(n+1)%2)`
-/

namespace A012502.P821741254696664068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012496 (A005408 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A012502.P821741254696664068

/-! ## A012502.P14565835533718151116

`A012496(2*n+1)%A012546(n)`
-/

namespace A012502.P14565835533718151116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012496 (2 * n + 1)) (A012546 n)

end

end A012502.P14565835533718151116

/-!
# A012505: arctanh(cos(x)*arctan(x))=x-3/3!*x^3-27/5!*x^5+777/7!*x^7+48905/9!*x^9...

The programs for A012505, there is no canonical definition to state claims against.
-/

/-! ## A012505.P3076739211905395494

`A013196(Δ[n²])`
-/

namespace A012505.P3076739211905395494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013196 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012505.P3076739211905395494

/-! ## A012505.P5244844517217271030

`or(1, A013196(A005408(n)))`
-/

namespace A012505.P5244844517217271030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013196 (A005408 n).toNat)

end

end A012505.P5244844517217271030

/-! ## A012505.P13585765474321907007

`2*A013196(2*n+1)-A013196(2*n+1)`
-/

namespace A012505.P13585765474321907007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013196 (2 * n + 1) - A013196 (2 * n + 1)

end

end A012505.P13585765474321907007

/-! ## A012505.P16375809839716707296

`A007318(∑[n])*A013196(A005408(n))`
-/

namespace A012505.P16375809839716707296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A013196 (A005408 n).toNat

end

end A012505.P16375809839716707296

/-! ## A012505.P8452010690546207444

`A013196(A005408(n))+A000045(C(n, 64))`
-/

namespace A012505.P8452010690546207444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013196 (A005408 n).toNat + A000045 (Nat.choose n 64)

end

end A012505.P8452010690546207444

/-!
# A012506: cosh(cos(x)*arctan(x))=1+1/2!*x^2-19/4!*x^4+445/6!*x^6-14663/8!*x^8...

The programs for A012506, there is no canonical definition to state claims against.
-/

/-! ## A012506.P3605559516408859201

`A012496(2*n)`
-/

namespace A012506.P3605559516408859201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012496 (2 * n)

end

end A012506.P3605559516408859201

/-! ## A012506.P15373754010913397067

`or(1, A012496(A004277(n)))`
-/

namespace A012506.P15373754010913397067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012496 (A004277 n).toNat)

end

end A012506.P15373754010913397067

/-! ## A012506.P9307184866342872873

`or(1, A012496(A005843(n)))`
-/

namespace A012506.P9307184866342872873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012496 (A005843 n).toNat)

end

end A012506.P9307184866342872873

/-! ## A012506.P6127126671057838014

`A012496(A004277(n))/A007318(∑[n])`
-/

namespace A012506.P6127126671057838014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012496 (A004277 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A012506.P6127126671057838014

/-! ## A012506.P10566068019720566571

`A012496(A004277(n))^(∑[n]%A006530(n+2))`
-/

namespace A012506.P10566068019720566571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012496 (A004277 n).toNat : ℚ) ^ (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A006530 (n + 2)) : ℤ)

end

end A012506.P10566068019720566571

/-!
# A012509: Expansion of e.g.f. -log(cos(x)*cos(x)) (even powers only).

The programs for A012509, there is no canonical definition to state claims against.
-/

/-! ## A012509.P13307856860889682897

`record[2*A350972(n)]`
-/

namespace A012509.P13307856860889682897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012509.P13307856860889682897

/-! ## A012509.P2571384149881599418

`2*A008281(A084849(n))`
-/

namespace A012509.P2571384149881599418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008281 (A084849 n).toNat

end

end A012509.P2571384149881599418

/-! ## A012509.P6325660642507045349

`lcm(2, A108040(A096376(n)))`
-/

namespace A012509.P6325660642507045349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A108040 (A096376 n).toNat)

end

end A012509.P6325660642507045349

/-! ## A012509.P14905666853857948723

`record[A000111(n)-A346838(n)]`
-/

namespace A012509.P14905666853857948723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n - A346838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012509.P14905666853857948723

/-! ## A012509.P10849860261421221074

`2*A008281(A000124(2*n))`
-/

namespace A012509.P10849860261421221074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008281 (A000124 (2 * n)).toNat

end

end A012509.P10849860261421221074

/-!
# A012511: Expansion of e.g.f.: arcsin(sinh(x)*log(x+1))=2/2!*x^2-3/3!*x^3+12/4!*x^4-40/5!*x^5...

The programs for A012511, there is no canonical definition to state claims against.
-/

/-! ## A012511.P2764991856659184897

`A012514(lcm(n, ceil(9*n/10)))`
-/

namespace A012511.P2764991856659184897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012514 (Int.lcm (n : ℤ) ⌈9 * ((n : ℚ) / 10)⌉)

end

end A012511.P2764991856659184897

/-! ## A012511.P6712159197965424708

`A012514(A082216(n))`
-/

namespace A012511.P6712159197965424708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012514 (A082216 n).toNat

end

end A012511.P6712159197965424708

/-! ## A012511.P17802784617633282222

`A012514(A087036(n))`
-/

namespace A012511.P17802784617633282222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012514 (A087036 n).toNat

end

end A012511.P17802784617633282222

/-! ## A012511.P17628336382496690505

`A012514(A087051(n))`
-/

namespace A012511.P17628336382496690505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012514 (A087051 n).toNat

end

end A012511.P17628336382496690505

/-! ## A012511.P15201709121942676461

`A012514(A250265(n+1))`
-/

namespace A012511.P15201709121942676461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012514 (A250265 (n + 1)).toNat

end

end A012511.P15201709121942676461

/-!
# A012512: Expansion of e.g.f.: tan(sinh(x)*log(x+1))=2/2!*x^2-3/3!*x^3+12/4!*x^4-40/5!*x^5...

The programs for A012512, there is no canonical definition to state claims against.
-/

/-! ## A012512.P1757990986051264978

`A012516(lcm(n, ceil(9*n/10)))`
-/

namespace A012512.P1757990986051264978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012516 (Int.lcm (n : ℤ) ⌈9 * ((n : ℚ) / 10)⌉)

end

end A012512.P1757990986051264978

/-! ## A012512.P13852366770535651710

`A012516(A051022(n))`
-/

namespace A012512.P13852366770535651710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012516 (A051022 n).toNat

end

end A012512.P13852366770535651710

/-! ## A012512.P13206159046064983026

`A012516(A282782(n+1))`
-/

namespace A012512.P13206159046064983026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012516 (A282782 (n + 1)).toNat

end

end A012512.P13206159046064983026

/-! ## A012512.P12097179929440905352

`A012516(n^A055642(n))`
-/

namespace A012512.P12097179929440905352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012516 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A012512.P12097179929440905352

/-! ## A012512.P8373012666932532063

`A012516(A085908(n+1)-1)`
-/

namespace A012512.P8373012666932532063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012516 (A085908 (n + 1) - 1).toNat

end

end A012512.P8373012666932532063

/-!
# A012513: Expansion of e.g.f. arctan(sinh(x) * log(x+1)).

The programs for A012513, there is no canonical definition to state claims against.
-/

/-! ## A012513.P16935455633032146464

`A012515((n-dr(n))²+n)`
-/

namespace A012513.P16935455633032146464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012515 (((n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A012513.P16935455633032146464

/-! ## A012513.P14482742359713991015

`A012515(lcm(n, ceil(9*n/10)))`
-/

namespace A012513.P14482742359713991015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012515 (Int.lcm (n : ℤ) ⌈9 * ((n : ℚ) / 10)⌉)

end

end A012513.P14482742359713991015

/-! ## A012513.P5570479361617939785

`A012515(n^(∑[char[10*n]]%10))`
-/

namespace A012513.P5570479361617939785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012515 (n ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 10))

end

end A012513.P5570479361617939785

/-! ## A012513.P12460563916427489654

`A012515(A024663(n))`
-/

namespace A012513.P12460563916427489654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012515 (A024663 n).toNat

end

end A012513.P12460563916427489654

/-! ## A012513.P17688830642870950844

`A012515(A051022(n))`
-/

namespace A012513.P17688830642870950844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012515 (A051022 n).toNat

end

end A012513.P17688830642870950844

/-!
# A012514: Expansion of e.g.f.: sinh(sinh(x)*log(x+1))=2/2!*x^2-3/3!*x^3+12/4!*x^4-40/5!*x^5...

The programs for A012514, there is no canonical definition to state claims against.
-/

/-! ## A012514.P9200926457286839103

`A009231(n)-A009154(n)`
-/

namespace A012514.P9200926457286839103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009231 n - A009154 n

end

end A012514.P9200926457286839103

/-!
# A012519: Expansion of e.g.f. arcsin(sinh(x) * exp(x)).

The programs for A012519, there is no canonical definition to state claims against.
-/

/-! ## A012519.P12998524271798187128

`or(A008615(A012293(n)), A012321(n))`
-/

namespace A012519.P12998524271798187128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008615 (A012293 n).toNat) (A012321 n)

end

end A012519.P12998524271798187128

/-! ## A012519.P13370762278395657636

`or(A012321(n), A129533(A042469(n)))`
-/

namespace A012519.P13370762278395657636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012321 n) (A129533 (A042469 n).toNat)

end

end A012519.P13370762278395657636

/-! ## A012519.P10288291707748076732

`or(A012321(n), A324874(A143597(n)))`
-/

namespace A012519.P10288291707748076732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012321 n) (A324874 (A143597 n).toNat)

end

end A012519.P10288291707748076732

/-!
# A012524: Expansion of sin(sinh(x)*sin(x)).

The programs for A012524, there is no canonical definition to state claims against.
-/

/-! ## A012524.P4627115254968849284

`2*A009497(n)`
-/

namespace A012524.P4627115254968849284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009497 n

end

end A012524.P4627115254968849284

/-!
# A012526: tan(sinh(x)*sin(x))=2/2!*x^2+232/6!*x^6+443552/10!*x^10...

The programs for A012526, there is no canonical definition to state claims against.
-/

/-! ## A012526.P5948990023031343205

`2*A009687(n)`
-/

namespace A012526.P5948990023031343205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009687 n

end

end A012526.P5948990023031343205

/-!
# A012528: sinh(sinh(x)*sin(x))=2/2!*x^2+112/6!*x^6+10112/10!*x^10...

The programs for A012528, there is no canonical definition to state claims against.
-/

/-! ## A012528.P4782503213143154126

`2*A009600(n)`
-/

namespace A012528.P4782503213143154126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009600 n

end

end A012528.P4782503213143154126

/-! ## A012528.P18194027082636107435

`A009232(2*n+1)`
-/

namespace A012528.P18194027082636107435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009232 (2 * n + 1)

end

end A012528.P18194027082636107435

/-! ## A012528.P11056010196629907307

`A009600(n)+A009600(A055648(n))`
-/

namespace A012528.P11056010196629907307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009600 n + A009600 (A055648 n).toNat

end

end A012528.P11056010196629907307

/-! ## A012528.P8329462086435070297

`A009600(A004852(n+1))+A009600(n)`
-/

namespace A012528.P8329462086435070297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009600 (A004852 (n + 1)).toNat + A009600 n

end

end A012528.P8329462086435070297

/-! ## A012528.P2632954300357594455

`A009600(n)+A009600(A351870(n))`
-/

namespace A012528.P2632954300357594455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009600 n + A009600 (A351870 n).toNat

end

end A012528.P2632954300357594455

/-!
# A012529: Expansion of tanh(sinh(x)*sin(x)).

The programs for A012529, there is no canonical definition to state claims against.
-/

/-! ## A012529.P5443020732552185143

`2*A009805(n)`
-/

namespace A012529.P5443020732552185143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009805 n

end

end A012529.P5443020732552185143

/-!
# A012530: arctanh(sinh(x)*sin(x)) = 2/2!*x^2+232/6!*x^6+685472/10!*x^10...

The programs for A012530, there is no canonical definition to state claims against.
-/

/-! ## A012530.P6388988491013562350

`A009359(Δ[n²])`
-/

namespace A012530.P6388988491013562350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009359 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012530.P6388988491013562350

/-! ## A012530.P17503135396189790628

`record[A009359(n+1)]`
-/

namespace A012530.P17503135396189790628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012530.P17503135396189790628

/-! ## A012530.P4412983181511514763

`record[2*A024275(n+1)]`
-/

namespace A012530.P4412983181511514763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012530.P4412983181511514763

/-! ## A012530.P4484439838079426812

`2*A024275(2*n+1)`
-/

namespace A012530.P4484439838079426812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024275 (2 * n + 1)

end

end A012530.P4484439838079426812

/-! ## A012530.P2689519346920456876

`A009359(2*n+1)+char[44]`
-/

namespace A012530.P2689519346920456876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009359 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A012530.P2689519346920456876

/-!
# A012533: exp(sinh(x)*arcsin(x))=1+2/2!*x^2+20/4!*x^4+440/6!*x^6+17488/8!*x^8...

The programs for A012533, there is no canonical definition to state claims against.
-/

/-! ## A012533.P10777390721563897847

`A302696(∑[A352307(n)²])`
-/

namespace A012533.P10777390721563897847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352307 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A012533.P10777390721563897847

/-!
# A012536: tan(sinh(x)*arcsin(x))=2/2!*x^2+8/4!*x^4+320/6!*x^6+15808/8!*x^8...

The programs for A012536, there is no canonical definition to state claims against.
-/

/-! ## A012536.P13117378552314219904

`A012541(A001222(13^n))`
-/

namespace A012536.P13117378552314219904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012541 (A001222 (13 ^ n)).toNat

end

end A012536.P13117378552314219904

/-!
# A012539: sinh(sinh(x)*arcsin(x))=2/2!*x^2+8/4!*x^4+200/6!*x^6+9088/8!*x^8...

The programs for A012539, there is no canonical definition to state claims against.
-/

/-! ## A012539.P8532402371573877135

`A012533(n+1)-A012542(n+1)`
-/

namespace A012539.P8532402371573877135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012533 (n + 1) - A012542 (n + 1)

end

end A012539.P8532402371573877135

/-!
# A012542: cosh(sinh(x)*arcsin(x))=1+12/4!*x^4+240/6!*x^6+8400/8!*x^8...

The programs for A012542, there is no canonical definition to state claims against.
-/

/-! ## A012542.P13647924861598574901

`A137514(∑[4*n]+1)`
-/

namespace A012542.P13647924861598574901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137514 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A012542.P13647924861598574901

/-!
# A012543: sec(sinh(x)*arcsin(x))=1+12/4!*x^4+240/6!*x^6+15120/8!*x^8...

The programs for A012543, there is no canonical definition to state claims against.
-/

/-! ## A012543.P12426774963960045676

`A137514(A249513(n))`
-/

namespace A012543.P12426774963960045676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137514 (A249513 n).toNat

end

end A012543.P12426774963960045676

/-!
# A012544: sech(sinh(x)*arcsin(x))=1-12/4!*x^4-240/6!*x^6+1680/8!*x^8...

The programs for A012544, there is no canonical definition to state claims against.
-/

/-! ## A012544.P15191647850404235620

`A118441(A158977(n+1))`
-/

namespace A012544.P15191647850404235620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118441 (A158977 (n + 1)).toNat

end

end A012544.P15191647850404235620

/-!
# A012551: arctanh(sinh(x)*tan(x))=2/2!*x^2+12/4!*x^4+382/6!*x^6+23352/8!*x^8...

The programs for A012551, there is no canonical definition to state claims against.
-/

/-! ## A012551.P14515398253693871234

`A024296(n+1)+abs(A024298(n+1))`
-/

namespace A012551.P14515398253693871234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024296 (n + 1) + |A024298 (n + 1)|

end

end A012551.P14515398253693871234

/-!
# A012554: exp(sinh(x)*arctan(x))=1+2/2!*x^2+8/4!*x^4+110/6!*x^6+520/8!*x^8...

The programs for A012554, there is no canonical definition to state claims against.
-/

/-! ## A012554.P7018819208348011163

`A103222((A237998(n)+1)²)`
-/

namespace A012554.P7018819208348011163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103222 ((A237998 n + 1) ^ 2).toNat

end

end A012554.P7018819208348011163

/-!
# A012558: arctan(sinh(x)*arctan(x))=2/2!*x^2-4/4!*x^4-130/6!*x^6+2200/8!*x^8...

The programs for A012558, there is no canonical definition to state claims against.
-/

/-! ## A012558.P14935533220723350348

`A274922(A012554(n))+A012544(n)`
-/

namespace A012558.P14935533220723350348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 (A012554 n).toNat + A012544 n

end

end A012558.P14935533220723350348

/-!
# A012559: cos(sinh(x)*arctan(x))=1-12/4!*x^4+120/6!*x^6-5040/8!*x^8...

The programs for A012559, there is no canonical definition to state claims against.
-/

/-! ## A012559.P7715475516891800194

`A092437(n+2)*A349632((n+1)*n!²)`
-/

namespace A012559.P7715475516891800194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092437 (n + 2) * A349632 ((n + 1) * Nat.factorial n ^ 2)

end

end A012559.P7715475516891800194

/-!
# A012560: sinh(sinh(x)*arctan(x))=2/2!*x^2-4/4!*x^4+230/6!*x^6-7880/8!*x^8...

The programs for A012560, there is no canonical definition to state claims against.
-/

/-! ## A012560.P18379996628743191903

`A012554(n+1)-A012563(n+1)`
-/

namespace A012560.P18379996628743191903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012554 (n + 1) - A012563 (n + 1)

end

end A012560.P18379996628743191903

/-!
# A012563: cosh(sinh(x)*arctan(x))=1+12/4!*x^4-120/6!*x^6+8400/8!*x^8...

The programs for A012563, there is no canonical definition to state claims against.
-/

/-! ## A012563.P2491838057956878674

`∏[2-4*n]/2*A265890(A001813(n))`
-/

namespace A012563.P2491838057956878674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (4 * n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 * (A265890 (A001813 n).toNat : ℚ)

end

end A012563.P2491838057956878674

/-!
# A012564: sec(sinh(x)*arctan(x))=1+12/4!*x^4-120/6!*x^6+15120/8!*x^8...

The programs for A012564, there is no canonical definition to state claims against.
-/

/-! ## A012564.P15698787647988734185

`A000010(A218449(n))*A048272(n+1)`
-/

namespace A012564.P15698787647988734185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A218449 n).toNat * A048272 (n + 1)

end

end A012564.P15698787647988734185

/-!
# A012565: sech(sinh(x)*arctan(x))=1-12/4!*x^4+120/6!*x^6+1680/8!*x^8...

The programs for A012565, there is no canonical definition to state claims against.
-/

/-! ## A012565.P13563745413332330640

`A137449(A057592(n))`
-/

namespace A012565.P13563745413332330640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137449 (A057592 n).toNat

end

end A012565.P13563745413332330640

/-!
# A012567: E.g.f.: arctan(sinh(x)*cos(x)) = x - 4/3!*x^3 + 60/5!*x^5 - 2784/7!*x^7 + 225680/9!*x^9...

The programs for A012567, there is no canonical definition to state claims against.
-/

/-! ## A012567.P13429950348765387431

`A009339(2*n+1)*A033999(n)`
-/

namespace A012567.P13429950348765387431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009339 (2 * n + 1) * A033999 n

end

end A012567.P13429950348765387431

/-! ## A012567.P9623594389790173944

`A009339(2*n+1)*A056594(2*n)`
-/

namespace A012567.P9623594389790173944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009339 (2 * n + 1) * A056594 (2 * n)

end

end A012567.P9623594389790173944

/-! ## A012567.P7532470673407485183

`A009339(A005408(n))/A033999(n)`
-/

namespace A012567.P7532470673407485183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009339 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A012567.P7532470673407485183

/-!
# A012568: arctanh(sinh(x)*cos(x))=x-20/5!*x^5-560/7!*x^7-7920/9!*x^9...

The programs for A012568, there is no canonical definition to state claims against.
-/

/-! ## A012568.P2883625634593810592

`A009357(2*n+1)`
-/

namespace A012568.P2883625634593810592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009357 (2 * n + 1)

end

end A012568.P2883625634593810592

/-! ## A012568.P12279195568147671826

`A013197(Δ[n²])`
-/

namespace A012568.P12279195568147671826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013197 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012568.P12279195568147671826

/-!
# A012569: sec(sinh(x)*cos(x))=1+1/2!*x^2-3/4!*x^4-123/6!*x^6-455/8!*x^8...

The programs for A012569, there is no canonical definition to state claims against.
-/

/-! ## A012569.P9476924104009101770

`A337712(A328750(n))-A358537(A328750(n))`
-/

namespace A012569.P9476924104009101770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337712 (A328750 n).toNat - A358537 (A328750 n).toNat

end

end A012569.P9476924104009101770

/-!
# A012571: Expansion of arcsin(sinh(x)*sinh(x)).

The programs for A012571, there is no canonical definition to state claims against.
-/

/-! ## A012571.P6850289095810642988

`A245092(abs(A009596(n)))`
-/

namespace A012571.P6850289095810642988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 |A009596 n|.toNat

end

end A012571.P6850289095810642988

/-!
# A012572: exp(arcsinh(x)*log(x+1))=1+2/2!*x^2-3/3!*x^3+16/4!*x^4-80/5!*x^5...

The programs for A012572, there is no canonical definition to state claims against.
-/

/-! ## A012572.P3542117877469216986

`A012581(n)+A012574(A023106(n))`
-/

namespace A012572.P3542117877469216986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012581 n + A012574 (A023106 n).toNat

end

end A012572.P3542117877469216986

/-! ## A012572.P2251772907104497081

`A012581(n)+A012574(A046469(n))`
-/

namespace A012572.P2251772907104497081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012581 n + A012574 (A046469 n).toNat

end

end A012572.P2251772907104497081

/-! ## A012572.P2786555887138806021

`A012581(n)+A012574(A082216(n))`
-/

namespace A012572.P2786555887138806021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012581 n + A012574 (A082216 n).toNat

end

end A012572.P2786555887138806021

/-! ## A012572.P17148883241013942002

`A012581(A186442(n+1))+A012574(n)`
-/

namespace A012572.P17148883241013942002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012581 (A186442 (n + 1)).toNat + A012574 n

end

end A012572.P17148883241013942002

/-!
# A012573: Expansion of e.g.f. sin(arcsinh(x) * log(x+1)).

The programs for A012573, there is no canonical definition to state claims against.
-/

/-! ## A012573.P17056685916505981731

`A012578(A046469(n))`
-/

namespace A012573.P17056685916505981731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012578 (A046469 n).toNat

end

end A012573.P17056685916505981731

/-! ## A012573.P7440511674069402447

`A012578(A082216(n))`
-/

namespace A012573.P7440511674069402447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012578 (A082216 n).toNat

end

end A012573.P7440511674069402447

/-! ## A012573.P8007000201212019374

`A012578(A087019(n))`
-/

namespace A012573.P8007000201212019374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012578 (A087019 n).toNat

end

end A012573.P8007000201212019374

/-! ## A012573.P274089446095036739

`A012578(A087051(n))`
-/

namespace A012573.P274089446095036739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012578 (A087051 n).toNat

end

end A012573.P274089446095036739

/-! ## A012573.P18104876693111563128

`A012578(A023052(n+1))`
-/

namespace A012573.P18104876693111563128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012578 (A023052 (n + 1)).toNat

end

end A012573.P18104876693111563128

/-!
# A012574: Expansion of e.g.f.: arcsin(arcsinh(x)*log(x+1)).

The programs for A012574, there is no canonical definition to state claims against.
-/

/-! ## A012574.P8719426171397555026

`A012572(n)-A012581(A023106(n))`
-/

namespace A012574.P8719426171397555026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012572 n - A012581 (A023106 n).toNat

end

end A012574.P8719426171397555026

/-! ## A012574.P8315660683896956643

`A012572(n)-A012581(A046469(n))`
-/

namespace A012574.P8315660683896956643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012572 n - A012581 (A046469 n).toNat

end

end A012574.P8315660683896956643

/-! ## A012574.P1774950717208947354

`A012572(n)-A012581(A082216(n))`
-/

namespace A012574.P1774950717208947354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012572 n - A012581 (A082216 n).toNat

end

end A012574.P1774950717208947354

/-! ## A012574.P8332442224868901562

`A012572(A186442(n+1))-A012581(n)`
-/

namespace A012574.P8332442224868901562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012572 (A186442 (n + 1)).toNat - A012581 n

end

end A012574.P8332442224868901562

/-!
# A012575: tan(arcsinh(x)*log(x+1))=2/2!*x^2-3/3!*x^3+4/4!*x^4-20/5!*x^5...

The programs for A012575, there is no canonical definition to state claims against.
-/

/-! ## A012575.P8067683607298337390

`A012580(A046469(n))`
-/

namespace A012575.P8067683607298337390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012580 (A046469 n).toNat

end

end A012575.P8067683607298337390

/-! ## A012575.P13200044689222302228

`A012580(A082216(n))`
-/

namespace A012575.P13200044689222302228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012580 (A082216 n).toNat

end

end A012575.P13200044689222302228

/-! ## A012575.P18337449852191456136

`A012580(A087019(n))`
-/

namespace A012575.P18337449852191456136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012580 (A087019 n).toNat

end

end A012575.P18337449852191456136

/-! ## A012575.P3549788861239732891

`A012580(A282782(n+1))`
-/

namespace A012575.P3549788861239732891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012580 (A282782 (n + 1)).toNat

end

end A012575.P3549788861239732891

/-! ## A012575.P3182585085483711366

`A012580(A354114(n)-10)`
-/

namespace A012575.P3182585085483711366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012580 (A354114 n - 10).toNat

end

end A012575.P3182585085483711366

/-!
# A012576: Expansion of e.g.f. arctan(arcsinh(x) * log(x+1)).

The programs for A012576, there is no canonical definition to state claims against.
-/

/-! ## A012576.P7466664975477040348

`A012579(A024663(n))`
-/

namespace A012576.P7466664975477040348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012579 (A024663 n).toNat

end

end A012576.P7466664975477040348

/-! ## A012576.P485559556215390792

`A012579(A046469(n))`
-/

namespace A012576.P485559556215390792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012579 (A046469 n).toNat

end

end A012576.P485559556215390792

/-! ## A012576.P6161132139582015604

`A012579(A051022(n))`
-/

namespace A012576.P6161132139582015604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012579 (A051022 n).toNat

end

end A012576.P6161132139582015604

/-! ## A012576.P17252112550626625390

`A012579(A082216(n))`
-/

namespace A012576.P17252112550626625390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012579 (A082216 n).toNat

end

end A012576.P17252112550626625390

/-! ## A012576.P14175333775029933683

`A012579(A030147(n+1))`
-/

namespace A012576.P14175333775029933683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012579 (A030147 (n + 1)).toNat

end

end A012576.P14175333775029933683

/-!
# A012581: cosh(arcsinh(x)*log(x+1))=1+12/4!*x^4-60/5!*x^5+210/6!*x^6...

The programs for A012581, there is no canonical definition to state claims against.
-/

/-! ## A012581.P8510864962412780054

`A012572(n)-A012574(A023106(n))`
-/

namespace A012581.P8510864962412780054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012572 n - A012574 (A023106 n).toNat

end

end A012581.P8510864962412780054

/-! ## A012581.P7923485221322751619

`A012572(n)-A012574(A046469(n))`
-/

namespace A012581.P7923485221322751619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012572 n - A012574 (A046469 n).toNat

end

end A012581.P7923485221322751619

/-! ## A012581.P5026861007182914960

`A012572(n)-A012574(A082216(n))`
-/

namespace A012581.P5026861007182914960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012572 n - A012574 (A082216 n).toNat

end

end A012581.P5026861007182914960

/-! ## A012581.P7933041603864102912

`A012572(A186442(n+1))-A012574(n)`
-/

namespace A012581.P7933041603864102912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012572 (A186442 (n + 1)).toNat - A012574 n

end

end A012581.P7933041603864102912

/-!
# A012584: exp(arcsinh(x)*exp(x))=1+x+3/2!*x^2+9/3!*x^3+33/4!*x^4+145/5!*x^5...

The programs for A012584, there is no canonical definition to state claims against.
-/

/-! ## A012584.P4258097159443326084

`A306385(A007476(n)+∑[n-char[1]])`
-/

namespace A012584.P4258097159443326084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306385 (A007476 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A012584.P4258097159443326084

/-! ## A012584.P4742837224554056603

`A278648(n)+A063954(A101891(n))`
-/

namespace A012584.P4742837224554056603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278648 n + A063954 (A101891 n).toNat

end

end A012584.P4742837224554056603

/-! ## A012584.P4289576728987441393

`A289498(A270489(n)-A078008(n+1))`
-/

namespace A012584.P4289576728987441393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289498 (A270489 n - A078008 (n + 1)).toNat

end

end A012584.P4289576728987441393

/-!
# A012585: sin(arcsinh(x)*exp(x)) = x+2/2!*x^2+1/3!*x^3-12/4!*x^4-75/5!*x^5...

The programs for A012585, there is no canonical definition to state claims against.
-/

/-! ## A012585.P845095902392901554

`A003586(n+1)-A205728(A182807(n+1))`
-/

namespace A012585.P845095902392901554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) - A205728 (A182807 (n + 1)).toNat

end

end A012585.P845095902392901554

/-! ## A012585.P3056361857645479012

`A378774(n+1)-A384178(A316430(n+1))`
-/

namespace A012585.P3056361857645479012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378774 (n + 1) - A384178 (A316430 (n + 1)).toNat

end

end A012585.P3056361857645479012

/-!
# A012586: arcsin(arcsinh(x)*exp(x))=x+2/2!*x^2+3/3!*x^3+12/4!*x^4+93/5!*x^5...

The programs for A012586, there is no canonical definition to state claims against.
-/

/-! ## A012586.P3407735521132279824

`∑[A062050(A006139(n+1))]`
-/

namespace A012586.P3407735521132279824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A006139 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012586.P3407735521132279824

/-! ## A012586.P6881002500948875860

`or(n+1, A344601(A123611(n)))`
-/

namespace A012586.P6881002500948875860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A344601 (A123611 n).toNat)

end

end A012586.P6881002500948875860

/-!
# A012588: Expansion of e.g.f. arctan(arcsinh(x) * exp(x)).

The programs for A012588, there is no canonical definition to state claims against.
-/

/-! ## A012588.P3468347066581962551

`A133143(floor(cosh(log((n+1)²))))-(3^n+3*(1-2^n))`
-/

namespace A012588.P3468347066581962551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133143 ⌊Real.cosh (Real.log ((n + 1) ^ 2 : ℝ))⌋.toNat - ((3 ^ n : ℤ) + 3 * (1 - (2 ^ n : ℤ)))

end

end A012588.P3468347066581962551

/-! ## A012588.P6647032131308160381

`n+1-A002487(A099712(n))`
-/

namespace A012588.P6647032131308160381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002487 (A099712 n).toNat

end

end A012588.P6647032131308160381

/-!
# A012592: arctanh(arcsinh(x)*exp(x))=x+2/2!*x^2+4/3!*x^3+24/4!*x^4+188/5!*x^5...

The programs for A012592, there is no canonical definition to state claims against.
-/

/-! ## A012592.P7957950385882469148

`A185216(∑[xor(n, Δ[n²])])`
-/

namespace A012592.P7957950385882469148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A012592.P7957950385882469148

/-! ## A012592.P13978297478092377669

`record[A066517(n)-floor(2*n/5)]`
-/

namespace A012592.P13978297478092377669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066517 n - ⌊2 * ((n : ℚ) / 5)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012592.P13978297478092377669

/-!
# A012593: cosh(arcsinh(x)*exp(x))=1+1/2!*x^2+6/3!*x^3+21/4!*x^4+60/5!*x^5...

The programs for A012593, there is no canonical definition to state claims against.
-/

/-! ## A012593.P12694473966706771683

`A196322(n+1)*A261217(A354314(n))`
-/

namespace A012593.P12694473966706771683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (n + 1) * A261217 (A354314 n).toNat

end

end A012593.P12694473966706771683

/-!
# A012596: exp(arcsinh(x)*sin(x))=1+2/2!*x^2+4/4!*x^4-40/6!*x^6-688/8!*x^8...

The programs for A012596, there is no canonical definition to state claims against.
-/

/-! ## A012596.P12204695869775566609

`A172062(n)-A000720(A282580(n))`
-/

namespace A012596.P12204695869775566609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172062 n - A000720 (A282580 n).toNat

end

end A012596.P12204695869775566609

/-!
# A012598: Expansion of e.g.f. exp(arcsinh(x)*arcsin(x)).

The programs for A012598, there is no canonical definition to state claims against.
-/

/-! ## A012598.P1465169400027124848

`A336506(∑[A322661(n)])`
-/

namespace A012598.P1465169400027124848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A012598.P1465169400027124848

