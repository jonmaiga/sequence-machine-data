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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A255100: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 1 and no column sum 1.

The programs for A255100, there is no canonical definition to state claims against.
-/

/-! ## A255100.P6250604837416814172

`A255101(A374008(n+1))`
-/

namespace A255100.P6250604837416814172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A374008 (n + 1)).toNat

end

end A255100.P6250604837416814172

/-! ## A255100.P982619603457252714

`A255101(eq[11, A066657(n)])`
-/

namespace A255100.P982619603457252714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255100.P982619603457252714

/-! ## A255100.P17144223237210842941

`A255101(eq[8, A131818(n+1)])`
-/

namespace A255100.P17144223237210842941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255100.P17144223237210842941

/-! ## A255100.P14783013258822763284

`A255101(A055999(n+4))`
-/

namespace A255100.P14783013258822763284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A055999 (n + 4)).toNat

end

end A255100.P14783013258822763284

/-! ## A255100.P6566012783001245706

`A255101(eq[4, A219347(n)])`
-/

namespace A255100.P6566012783001245706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255100.P6566012783001245706

/-!
# A255102: Number of length n+3 0..2 arrays with at most one downstep in every 3 consecutive neighbor pairs.

The programs for A255102, there is no canonical definition to state claims against.
-/

/-! ## A255102.P1054335578397955288

`A255107(∑[n+3]+1)`
-/

namespace A255102.P1054335578397955288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255102.P1054335578397955288

/-! ## A255102.P18149307445418921779

`A255107(A052905(n)+3)/gcd(n, n+1)`
-/

namespace A255102.P18149307445418921779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255107 (A052905 n + 3).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A255102.P18149307445418921779

/-! ## A255102.P14309995936277787320

`lcm(A054977(n), A255107(A055999(n)+4))`
-/

namespace A255102.P14309995936277787320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A255107 (A055999 n + 4).toNat)

end

end A255102.P14309995936277787320

/-! ## A255102.P592451125773663699

`or(A000038(n), A255107(A052905(n)+3))`
-/

namespace A255102.P592451125773663699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A255107 (A052905 n + 3).toNat)

end

end A255102.P592451125773663699

/-! ## A255102.P14056025384845918982

`or(A000038(n), A255107(A055999(n)+4))`
-/

namespace A255102.P14056025384845918982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A255107 (A055999 n + 4).toNat)

end

end A255102.P14056025384845918982

/-! ## A255102.P5477490354068897223

`A255107(A052905(n)+3)+A000038(n+1)`
-/

namespace A255102.P5477490354068897223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A052905 n + 3).toNat + A000038 (n + 1)

end

end A255102.P5477490354068897223

/-! ## A255102.P12586453468803450851

`A255107(A055999(n)+4)+A000007(n+1)`
-/

namespace A255102.P12586453468803450851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A055999 n + 4).toNat + A000007 (n + 1)

end

end A255102.P12586453468803450851

/-! ## A255102.P6316751078927285297

`A255107(A052905(n)+3)%A252013(n+1)`
-/

namespace A255102.P6316751078927285297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255107 (A052905 n + 3).toNat) (A252013 (n + 1))

end

end A255102.P6316751078927285297

/-! ## A255102.P14903016601643697192

`A255107(A052905(n)+3)+A010051((n+11)²)`
-/

namespace A255102.P14903016601643697192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A052905 n + 3).toNat + A010051 ((n + 11) ^ 2)

end

end A255102.P14903016601643697192

/-! ## A255102.P15041813445005814530

`A019425(2*(n+3))*A255107(A052905(n)+3)`
-/

namespace A255102.P15041813445005814530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * (n + 3)) * A255107 (A052905 n + 3).toNat

end

end A255102.P15041813445005814530

/-! ## A255102.P15412242911460039807

`A255107(A055999(n)+4)+A003893(60*(n+1))`
-/

namespace A255102.P15412242911460039807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A055999 n + 4).toNat + A003893 (60 * (n + 1))

end

end A255102.P15412242911460039807

/-! ## A255102.P11221613249666667307

`A007318(A000217(n))*A255107(A055999(n)+4)`
-/

namespace A255102.P11221613249666667307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A255107 (A055999 n + 4).toNat

end

end A255102.P11221613249666667307

/-! ## A255102.P10176555771156308961

`A001222(A243155(n+1))*A255107(A052905(n)+3)`
-/

namespace A255102.P10176555771156308961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A243155 (n + 1)).toNat * A255107 (A052905 n + 3).toNat

end

end A255102.P10176555771156308961

/-! ## A255102.P3015453675286237264

`A010052(n²)*A255107(A055999(n)+4)`
-/

namespace A255102.P3015453675286237264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A255107 (A055999 n + 4).toNat

end

end A255102.P3015453675286237264

/-!
# A255103: Number of length n+4 0..2 arrays with at most one downstep in every 4 consecutive neighbor pairs.

The programs for A255103, there is no canonical definition to state claims against.
-/

/-! ## A255103.P2207128536912727788

`A255107(∑[n+4]+3)`
-/

namespace A255103.P2207128536912727788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A255103.P2207128536912727788

/-! ## A255103.P13287446637264260507

`or(C(n, n²), A255107(A055998(n+2)))`
-/

namespace A255103.P13287446637264260507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose n (n ^ 2) : ℤ) (A255107 (A055998 (n + 2)).toNat)

end

end A255103.P13287446637264260507

/-! ## A255103.P14026596563267412323

`(1-4/2)²*A255107(A051936(n+4)+6)`
-/

namespace A255103.P14026596563267412323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) ^ 2 * (A255107 (A051936 (n + 4) + 6).toNat : ℚ)

end

end A255103.P14026596563267412323

/-! ## A255103.P9119828640816129573

`or(A000007(n), A255107(A055998(n+2)))`
-/

namespace A255103.P9119828640816129573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255107 (A055998 (n + 2)).toNat)

end

end A255103.P9119828640816129573

/-! ## A255103.P1861405575569063777

`or(A000007(n), A255107(A051936(n+4)+6))`
-/

namespace A255103.P1861405575569063777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255107 (A051936 (n + 4) + 6).toNat)

end

end A255103.P1861405575569063777

/-! ## A255103.P10518189809757282068

`A000010(ceil(1/(n+1)))*A255107(A055998(n+2))`
-/

namespace A255103.P10518189809757282068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈1 / (n + 1 : ℚ)⌉.toNat * A255107 (A055998 (n + 2)).toNat

end

end A255103.P10518189809757282068

/-! ## A255103.P4847974564922004791

`A255107(A055998(n+2))/(A057427(n)+A000007(n))`
-/

namespace A255103.P4847974564922004791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255107 (A055998 (n + 2)).toNat : ℚ) / (A057427 n + A000007 n : ℚ)

end

end A255103.P4847974564922004791

/-! ## A255103.P12162749899378499775

`A033999(n)*A255107(A055998(n+2))*A033999(n)`
-/

namespace A255103.P12162749899378499775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A255107 (A055998 (n + 2)).toNat * A033999 n

end

end A255103.P12162749899378499775

/-!
# A255104: Number of length n+5 0..2 arrays with at most one downstep in every 5 consecutive neighbor pairs.

The programs for A255104, there is no canonical definition to state claims against.
-/

/-! ## A255104.P10293688452718906319

`A255107(∑[n+5]+6)`
-/

namespace A255104.P10293688452718906319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A255104.P10293688452718906319

/-! ## A255104.P17511582109598777015

`or(char[1], A255107(A046691(n+3)))`
-/

namespace A255104.P17511582109598777015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A255107 (A046691 (n + 3)).toNat)

end

end A255104.P17511582109598777015

/-! ## A255104.P11003574322622359780

`A255107(A046691(n+3))+A000007(n+1)`
-/

namespace A255104.P11003574322622359780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A046691 (n + 3)).toNat + A000007 (n + 1)

end

end A255104.P11003574322622359780

/-! ## A255104.P15023869809414883155

`A054977(n+1)*A255107(A046691(n+3))`
-/

namespace A255104.P15023869809414883155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A255107 (A046691 (n + 3)).toNat

end

end A255104.P15023869809414883155

/-! ## A255104.P2708483791644371827

`A057427(n+1)*A255107(A046691(n+3))`
-/

namespace A255104.P2708483791644371827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A255107 (A046691 (n + 3)).toNat

end

end A255104.P2708483791644371827

/-! ## A255104.P7406722274192357991

`A255107(A046691(n+3))+A000035(2*n)`
-/

namespace A255104.P7406722274192357991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A046691 (n + 3)).toNat + A000035 (2 * n)

end

end A255104.P7406722274192357991

/-! ## A255104.P1782814636065668244

`A000034(2*n)*A255107(A046691(n+3))`
-/

namespace A255104.P1782814636065668244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A255107 (A046691 (n + 3)).toNat

end

end A255104.P1782814636065668244

/-! ## A255104.P9386473613794872495

`A255107(A046691(n+3))%A002878(n+6)`
-/

namespace A255104.P9386473613794872495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255107 (A046691 (n + 3)).toNat) (A002878 (n + 6))

end

end A255104.P9386473613794872495

/-! ## A255104.P8063005792195685993

`A255107(A046691(n+3))+A004530(A005382(n+1))`
-/

namespace A255104.P8063005792195685993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A046691 (n + 3)).toNat + A004530 (A005382 (n + 1)).toNat

end

end A255104.P8063005792195685993

/-!
# A255105: Number of length n+6 0..2 arrays with at most one downstep in every 6 consecutive neighbor pairs.

The programs for A255105, there is no canonical definition to state claims against.
-/

/-! ## A255105.P3312348510219363610

`A255107(∑[n+6]+10)`
-/

namespace A255105.P3312348510219363610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A255105.P3312348510219363610

/-! ## A255105.P2867359765380277445

`lcm(A033999(n), A255107(A052905(n+3)))`
-/

namespace A255105.P2867359765380277445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A255107 (A052905 (n + 3)).toNat)

end

end A255105.P2867359765380277445

/-! ## A255105.P268253655770070855

`A255107(A052905(n+3))+A000038(n+1)`
-/

namespace A255105.P268253655770070855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A052905 (n + 3)).toNat + A000038 (n + 1)

end

end A255105.P268253655770070855

/-! ## A255105.P18320502680478047977

`A000034(2*n)*A255107(A052905(n+3))`
-/

namespace A255105.P18320502680478047977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A255107 (A052905 (n + 3)).toNat

end

end A255105.P18320502680478047977

/-! ## A255105.P2579928155579400115

`A255107(A052905(n+3))%A181259(n+1)`
-/

namespace A255105.P2579928155579400115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255107 (A052905 (n + 3)).toNat) (A181259 (n + 1))

end

end A255105.P2579928155579400115

/-! ## A255105.P6691262509441913249

`A255107(A052905(n+3))^A007318(C(2, n))`
-/

namespace A255105.P6691262509441913249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255107 (A052905 (n + 3)).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A255105.P6691262509441913249

/-! ## A255105.P3798688544403483780

`A040001(2*n+1)*A255107(A052905(n+3))`
-/

namespace A255105.P3798688544403483780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 1) * A255107 (A052905 (n + 3)).toNat

end

end A255105.P3798688544403483780

/-! ## A255105.P11008024713858266577

`A255107(A052905(n+3))+A079126(C(n+2, 2))`
-/

namespace A255105.P11008024713858266577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A052905 (n + 3)).toNat + A079126 (Nat.choose (n + 2) 2)

end

end A255105.P11008024713858266577

/-! ## A255105.P10105717443429689898

`A004736(C(n+2, 2))*A255107(A052905(n+3))`
-/

namespace A255105.P10105717443429689898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Nat.choose (n + 2) 2) * A255107 (A052905 (n + 3)).toNat

end

end A255105.P10105717443429689898

/-! ## A255105.P5020408570237110506

`A338033(A000124(n))+A255107(A052905(n+3))`
-/

namespace A255105.P5020408570237110506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338033 (A000124 n).toNat + A255107 (A052905 (n + 3)).toNat

end

end A255105.P5020408570237110506

/-!
# A255106: Number of length n+7 0..2 arrays with at most one downstep in every 7 consecutive neighbor pairs.

The programs for A255106, there is no canonical definition to state claims against.
-/

/-! ## A255106.P17125119521395148340

`A255107(A055999(n+4))`
-/

namespace A255106.P17125119521395148340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A055999 (n + 4)).toNat

end

end A255106.P17125119521395148340

/-! ## A255106.P2501042928061204232

`A255107(A055998(n+5)-3)`
-/

namespace A255106.P2501042928061204232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A055998 (n + 5) - 3).toNat

end

end A255106.P2501042928061204232

/-! ## A255106.P6592891911136584853

`A255107(A000124(n+7)-7)`
-/

namespace A255106.P6592891911136584853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A000124 (n + 7) - 7).toNat

end

end A255106.P6592891911136584853

/-! ## A255106.P12816244640783549059

`A255107(eq[13, A099375(n)]+1)`
-/

namespace A255106.P12816244640783549059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A255106.P12816244640783549059

/-! ## A255106.P16936563595851358114

`A255107(A000096(n+5)+n+2)`
-/

namespace A255106.P16936563595851358114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A255106.P16936563595851358114

/-! ## A255106.P3735871248589085729

`A255107(A000217(n+6)+n+1)`
-/

namespace A255106.P3735871248589085729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A255106.P3735871248589085729

/-! ## A255106.P11085771206804689234

`A255107(A167499(n+4)+A005843(n+1))`
-/

namespace A255106.P11085771206804689234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A167499 (n + 4) + A005843 (n + 1)).toNat

end

end A255106.P11085771206804689234

/-!
# A255108: Number of length n+1 0..2 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A255108, the canonical program `A255108.P11137238212846088843` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255108 has offset 1).

The definition of A255108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255108.P11137238212846088843

`∑[∑[∑[∑[n+3]]+1]+2]+3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255108

/-- `∑[∑[∑[∑[n+3]]+1]+2]+3` -/
def P11137238212846088843.Spec : Prop :=
  ∀ n, (P11137238212846088843.a n : ℤ) = A255108 (n + 1)

theorem P11137238212846088843.correct : P11137238212846088843.Spec := by
  intro n
  simp only [A255108, Nat.add_sub_cancel]

end A255108

/-! ## A255108.P972372878938834374

`Δ[A166810(n+1)-A050534(n+3)]`
-/

namespace A255108.P972372878938834374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 (n + 1) - A050534 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255108.P972372878938834374

namespace A255108

/-- `Δ[A166810(n+1)-A050534(n+3)]` -/
def P972372878938834374.Spec : Prop :=
  ∀ n, P972372878938834374.a n = A255108 (n + 1)

end A255108

/-! ## A255108.P6968821498478937712

`floor(A055795(n+4)+A253945(n+4)/2-A005585(n+1))`
-/

namespace A255108.P6968821498478937712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055795 (n + 4) : ℚ) + ((A253945 (n + 4) : ℚ) / 2 - (A005585 (n + 1) : ℚ))⌋

end

end A255108.P6968821498478937712

namespace A255108

/-- `floor(A055795(n+4)+A253945(n+4)/2-A005585(n+1))` -/
def P6968821498478937712.Spec : Prop :=
  ∀ n, P6968821498478937712.a n = A255108 (n + 1)

end A255108

/-! ## A255108.P7505969589691155159

`floor(A055795(n+4)+(A264750(n+5)-A005585(n+1))/2)`
-/

namespace A255108.P7505969589691155159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055795 (n + 4) : ℚ) + (A264750 (n + 5) - A005585 (n + 1) : ℚ) / 2⌋

end

end A255108.P7505969589691155159

namespace A255108

/-- `floor(A055795(n+4)+(A264750(n+5)-A005585(n+1))/2)` -/
def P7505969589691155159.Spec : Prop :=
  ∀ n, P7505969589691155159.a n = A255108 (n + 1)

end A255108

/-! ## A255108.P18341380385907015100

`A255107(∑[n]+1)`
-/

namespace A255108.P18341380385907015100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255108.P18341380385907015100

namespace A255108

/-- `A255107(∑[n]+1)` -/
def P18341380385907015100.Spec : Prop :=
  ∀ n, P18341380385907015100.a n = A255108 (n + 1)

end A255108

/-! ## A255108.P6450916619181782767

`record[A010054(n)*A255107(n+1)]`
-/

namespace A255108.P6450916619181782767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A255107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255108.P6450916619181782767

namespace A255108

/-- `record[A010054(n)*A255107(n+1)]` -/
def P6450916619181782767.Spec : Prop :=
  ∀ n, P6450916619181782767.a n = A255108 (n + 1)

end A255108

/-! ## A255108.P2471741148779625269

`record[root(A255107(n+1), A013609(n))]`
-/

namespace A255108.P2471741148779625269
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A255107 (n + 1) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255108.P2471741148779625269

namespace A255108

/-- `record[root(A255107(n+1), A013609(n))]` -/
def P2471741148779625269.Spec : Prop :=
  ∀ n, P2471741148779625269.a n = (A255108 (n + 1) : ℝ)

end A255108

/-! ## A255108.P2334457880546590330

`record[gcd(A002262(n), A255107(n+1))]`
-/

namespace A255108.P2334457880546590330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A255107 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255108.P2334457880546590330

namespace A255108

/-- `record[gcd(A002262(n), A255107(n+1))]` -/
def P2334457880546590330.Spec : Prop :=
  ∀ n, (P2334457880546590330.a n : ℤ) = A255108 (n + 1)

end A255108

/-! ## A255108.P2127090835010746856

`record[lcm(A143433(n), A255107(n+1))]`
-/

namespace A255108.P2127090835010746856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143433 n) (A255107 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255108.P2127090835010746856

namespace A255108

/-- `record[lcm(A143433(n), A255107(n+1))]` -/
def P2127090835010746856.Spec : Prop :=
  ∀ n, (P2127090835010746856.a n : ℤ) = A255108 (n + 1)

end A255108

/-! ## A255108.P15122067260712698507

`A255107(A000124(n))%A016938(n)`
-/

namespace A255108.P15122067260712698507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255107 (A000124 n).toNat) (A016938 n)

end

end A255108.P15122067260712698507

namespace A255108

/-- `A255107(A000124(n))%A016938(n)` -/
def P15122067260712698507.Spec : Prop :=
  ∀ n, P15122067260712698507.a n = A255108 (n + 1)

end A255108

/-! ## A255108.P4595423874528554290

`lcm(A033999(n), A255107(A000124(n)))`
-/

namespace A255108.P4595423874528554290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A255107 (A000124 n).toNat)

end

end A255108.P4595423874528554290

namespace A255108

/-- `lcm(A033999(n), A255107(A000124(n)))` -/
def P4595423874528554290.Spec : Prop :=
  ∀ n, (P4595423874528554290.a n : ℤ) = A255108 (n + 1)

end A255108

/-! ## A255108.P17688892117306155486

`or(A000007(n), A255107(A000124(n)))`
-/

namespace A255108.P17688892117306155486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255107 (A000124 n).toNat)

end

end A255108.P17688892117306155486

namespace A255108

/-- `or(A000007(n), A255107(A000124(n)))` -/
def P17688892117306155486.Spec : Prop :=
  ∀ n, P17688892117306155486.a n = A255108 (n + 1)

end A255108

/-! ## A255108.P415717667274542318

`or(A069517(n+1), A255107(A000124(n)))`
-/

namespace A255108.P415717667274542318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069517 (n + 1)) (A255107 (A000124 n).toNat)

end

end A255108.P415717667274542318

namespace A255108

/-- `or(A069517(n+1), A255107(A000124(n)))` -/
def P415717667274542318.Spec : Prop :=
  ∀ n, P415717667274542318.a n = A255108 (n + 1)

end A255108

/-!
# A255109: Number of length n+2 0..2 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A255109, the canonical program `A255109.P13602261014294267061` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255109 has offset 1).

The definition of A255109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255109.P13602261014294267061

`A000217(2*(n+2))+A000574(n+4)+A000217(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A255109

/-- `A000217(2*(n+2))+A000574(n+4)+A000217(n+1)` -/
def P13602261014294267061.Spec : Prop :=
  ∀ n, P13602261014294267061.a n = A255109 (n + 1)

theorem P13602261014294267061.correct : P13602261014294267061.Spec := by
  intro n
  simp only [A255109, Nat.add_sub_cancel]

end A255109

/-! ## A255109.P16247735326112591742

`A255107(∑[n+1]+2)`
-/

namespace A255109.P16247735326112591742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255109.P16247735326112591742

namespace A255109

/-- `A255107(∑[n+1]+2)` -/
def P16247735326112591742.Spec : Prop :=
  ∀ n, P16247735326112591742.a n = A255109 (n + 1)

end A255109

/-! ## A255109.P2131171565994194642

`record[A255107(5-∑[2-n])]`
-/

namespace A255109.P2131171565994194642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (5 - ∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255109.P2131171565994194642

namespace A255109

/-- `record[A255107(5-∑[2-n])]` -/
def P2131171565994194642.Spec : Prop :=
  ∀ n, P2131171565994194642.a n = A255109 (n + 1)

end A255109

/-! ## A255109.P10874725627657466126

`A255107(A000096(n)+3)%A255104(n+1)`
-/

namespace A255109.P10874725627657466126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255107 (A000096 n + 3).toNat) (A255104 (n + 1))

end

end A255109.P10874725627657466126

namespace A255109

/-- `A255107(A000096(n)+3)%A255104(n+1)` -/
def P10874725627657466126.Spec : Prop :=
  ∀ n, P10874725627657466126.a n = A255109 (n + 1)

end A255109

/-! ## A255109.P2960576138291391871

`n+1+A255107(A000096(n)+3)+A001478(n+1)`
-/

namespace A255109.P2960576138291391871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A255107 (A000096 n + 3).toNat + A001478 (n + 1))

end

end A255109.P2960576138291391871

namespace A255109

/-- `n+1+A255107(A000096(n)+3)+A001478(n+1)` -/
def P2960576138291391871.Spec : Prop :=
  ∀ n, P2960576138291391871.a n = A255109 (n + 1)

end A255109

/-!
# A255110: Number of length n+3 0..2 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A255110, there is no canonical definition to state claims against.
-/

/-! ## A255110.P18085251653339550804

`A255107(∑[n+2]+4)`
-/

namespace A255110.P18085251653339550804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255110.P18085251653339550804

/-! ## A255110.P9443763210921155474

`abs(2-A255107(A167614(n+1)))+2`
-/

namespace A255110.P9443763210921155474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A255107 (A167614 (n + 1)).toNat| + 2

end

end A255110.P9443763210921155474

/-! ## A255110.P10923287990030346166

`or(A000007(n), A255107(A167614(n+1)))`
-/

namespace A255110.P10923287990030346166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255107 (A167614 (n + 1)).toNat)

end

end A255110.P10923287990030346166

/-! ## A255110.P14172234337581513714

`A057427(n+1)*A255107(A167614(n+1))`
-/

namespace A255110.P14172234337581513714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A255107 (A167614 (n + 1)).toNat

end

end A255110.P14172234337581513714

/-! ## A255110.P15273343429534261805

`A255107(A167614(n+1))%A255112(n+1)`
-/

namespace A255110.P15273343429534261805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255107 (A167614 (n + 1)).toNat) (A255112 (n + 1))

end

end A255110.P15273343429534261805

/-! ## A255110.P16746022423770255912

`A255107(A152950(n+3))%A255104(n+1)`
-/

namespace A255110.P16746022423770255912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255107 (A152950 (n + 3)).toNat) (A255104 (n + 1))

end

end A255110.P16746022423770255912

/-! ## A255110.P4800359664896011645

`A040850(2*n+1)*A255107(A167614(n+1))`
-/

namespace A255110.P4800359664896011645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040850 (2 * n + 1) * A255107 (A167614 (n + 1)).toNat

end

end A255110.P4800359664896011645

/-! ## A255110.P17233125877511535986

`lcm(A040845(2*n+1), A255107(A167614(n+1)))`
-/

namespace A255110.P17233125877511535986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040845 (2 * n + 1)) (A255107 (A167614 (n + 1)).toNat)

end

end A255110.P17233125877511535986

/-! ## A255110.P1887851347598601225

`A255107(A000217(n+2)+3)%A016900(2*n+1)`
-/

namespace A255110.P1887851347598601225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255107 (A000217 (n + 2) + 3).toNat) (A016900 (2 * n + 1))

end

end A255110.P1887851347598601225

/-!
# A255111: Number of length n+4 0..2 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A255111, there is no canonical definition to state claims against.
-/

/-! ## A255111.P6165220853719661930

`A255107(∑[n+3]+7)`
-/

namespace A255111.P6165220853719661930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A255111.P6165220853719661930

/-! ## A255111.P14737880677823376194

`or(A000007(n), A255107(A052905(n)+9))`
-/

namespace A255111.P14737880677823376194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255107 (A052905 n + 9).toNat)

end

end A255111.P14737880677823376194

/-! ## A255111.P14004896346239770442

`or(A025466(n), A255107(A052905(n)+9))`
-/

namespace A255111.P14004896346239770442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025466 n) (A255107 (A052905 n + 9).toNat)

end

end A255111.P14004896346239770442

/-! ## A255111.P13619709379305965155

`A255107(A052905(n)+9)+A000007(n+1)`
-/

namespace A255111.P13619709379305965155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A052905 n + 9).toNat + A000007 (n + 1)

end

end A255111.P13619709379305965155

/-! ## A255111.P2084013433807110596

`lcm(A033999(n), A255107(A167614(n+2)+1))`
-/

namespace A255111.P2084013433807110596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A255107 (A167614 (n + 2) + 1).toNat)

end

end A255111.P2084013433807110596

/-! ## A255111.P11913455919853047979

`or(A000007(n), A255107(A167614(n+2)+1))`
-/

namespace A255111.P11913455919853047979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255107 (A167614 (n + 2) + 1).toNat)

end

end A255111.P11913455919853047979

/-! ## A255111.P6308406306256388453

`or(A000038(n), A255107(A167614(n+2)+1))`
-/

namespace A255111.P6308406306256388453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A255107 (A167614 (n + 2) + 1).toNat)

end

end A255111.P6308406306256388453

/-! ## A255111.P14542978056940273417

`lcm(A063524(n)+1, A255107(A052905(n)+9))`
-/

namespace A255111.P14542978056940273417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063524 n + 1) (A255107 (A052905 n + 9).toNat)

end

end A255111.P14542978056940273417

/-! ## A255111.P3719684422054262958

`A153284(2*(n+1))*A255107(A052905(n)+9)`
-/

namespace A255111.P3719684422054262958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (2 * (n + 1)) * A255107 (A052905 n + 9).toNat

end

end A255111.P3719684422054262958

/-! ## A255111.P12407474566594228872

`A255107(A167614(n+2)+1)%A255086(n+1)`
-/

namespace A255111.P12407474566594228872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255107 (A167614 (n + 2) + 1).toNat) (A255086 (n + 1))

end

end A255111.P12407474566594228872

/-! ## A255111.P11995616358879752052

`A255107(A055999(n)+10)%A016900(2*n+1)`
-/

namespace A255111.P11995616358879752052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255107 (A055999 n + 10).toNat) (A016900 (2 * n + 1))

end

end A255111.P11995616358879752052

/-! ## A255111.P194095568972120611

`A007318(C(2, n+2))*A255107(A052905(n)+9)`
-/

namespace A255111.P194095568972120611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A255107 (A052905 n + 9).toNat

end

end A255111.P194095568972120611

/-! ## A255111.P13147077202334142967

`A024996(C(2, n+2))*A255107(A052905(n)+9)`
-/

namespace A255111.P13147077202334142967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (Nat.choose 2 (n + 2)) * A255107 (A052905 n + 9).toNat

end

end A255111.P13147077202334142967

/-! ## A255111.P13080520889898958903

`A007318(A000217(n))*A255107(A052905(n)+9)`
-/

namespace A255111.P13080520889898958903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A255107 (A052905 n + 9).toNat

end

end A255111.P13080520889898958903

/-! ## A255111.P1084767904303393991

`A007318(A051343(n))*A255107(A052905(n)+9)`
-/

namespace A255111.P1084767904303393991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A051343 n).toNat * A255107 (A052905 n + 9).toNat

end

end A255111.P1084767904303393991

/-! ## A255111.P14509392656952848811

`A130599(A052928(n))*A255107(A052905(n)+9)`
-/

namespace A255111.P14509392656952848811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130599 (A052928 n).toNat * A255107 (A052905 n + 9).toNat

end

end A255111.P14509392656952848811

/-!
# A255112: Number of length n+5 0..2 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A255112, there is no canonical definition to state claims against.
-/

/-! ## A255112.P9991468471640342604

`A255107(A167499(n+3))`
-/

namespace A255112.P9991468471640342604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A167499 (n + 3)).toNat

end

end A255112.P9991468471640342604

/-! ## A255112.P13768178418210623290

`A255107(A155212(n)+13)`
-/

namespace A255112.P13768178418210623290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A155212 n + 13).toNat

end

end A255112.P13768178418210623290

/-! ## A255112.P8900373276213127506

`A255107(A056000(n)+15)`
-/

namespace A255112.P8900373276213127506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A056000 n + 15).toNat

end

end A255112.P8900373276213127506

/-! ## A255112.P523669352189282318

`A255107(A000096(n+3)+6)`
-/

namespace A255112.P523669352189282318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A000096 (n + 3) + 6).toNat

end

end A255112.P523669352189282318

/-! ## A255112.P7456128026192653885

`A255107(A000217(n+4)+5)`
-/

namespace A255112.P7456128026192653885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A000217 (n + 4) + 5).toNat

end

end A255112.P7456128026192653885

/-! ## A255112.P11847609863296527612

`A255107((n+4)²-A052905(n))`
-/

namespace A255112.P11847609863296527612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (((n + 4) ^ 2 : ℤ) - A052905 n).toNat

end

end A255112.P11847609863296527612

/-! ## A255112.P1246431997592501460

`A255107(A038722(Δ[A023545(n+1)]))`
-/

namespace A255112.P1246431997592501460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A255112.P1246431997592501460

/-! ## A255112.P1825029647018129427

`A255107(A003602(Δ[A026046(n+6)]))`
-/

namespace A255112.P1825029647018129427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A003602 (f1 (n + 1) - f1 n).toNat).toNat

end

end A255112.P1825029647018129427

/-! ## A255112.P16365244027403561267

`A255107(A110654(Δ[A026046(n+6)]))`
-/

namespace A255112.P16365244027403561267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A110654 (f1 (n + 1) - f1 n).toNat).toNat

end

end A255112.P16365244027403561267

/-!
# A255113: Number of length n+6 0..2 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A255113, there is no canonical definition to state claims against.
-/

/-! ## A255113.P14349020077039639781

`A255107(A166136(n+4))`
-/

namespace A255113.P14349020077039639781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A166136 (n + 4)).toNat

end

end A255113.P14349020077039639781

/-! ## A255113.P1052122582461666049

`A255107(A167499(n+4)+1)`
-/

namespace A255113.P1052122582461666049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A167499 (n + 4) + 1).toNat

end

end A255113.P1052122582461666049

/-! ## A255113.P5840113593546161034

`A255107(A000217(n+5)+6)`
-/

namespace A255113.P5840113593546161034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A000217 (n + 5) + 6).toNat

end

end A255113.P5840113593546161034

/-! ## A255113.P784307362890420973

`A255107(A000096(n+3)+n+12)`
-/

namespace A255113.P784307362890420973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A000096 (n + 3) + (n + 12 : ℤ)).toNat

end

end A255113.P784307362890420973

/-! ## A255113.P11604083637790510870

`A255107(A034111(n+1)-A055999(n))`
-/

namespace A255113.P11604083637790510870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A034111 (n + 1) - A055999 n).toNat

end

end A255113.P11604083637790510870

/-!
# A255114: Number of length n+7 0..2 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A255114, there is no canonical definition to state claims against.
-/

/-! ## A255114.P4929760917236019327

`A255107(A167499(n+5)+2)`
-/

namespace A255114.P4929760917236019327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A167499 (n + 5) + 2).toNat

end

end A255114.P4929760917236019327

/-! ## A255114.P13742960182064646279

`A255107(A133263(n+6)+5)`
-/

namespace A255114.P13742960182064646279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A133263 (n + 6) + 5).toNat

end

end A255114.P13742960182064646279

/-! ## A255114.P17518015243695197447

`A255107(A000096(n+5)+8)`
-/

namespace A255114.P17518015243695197447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A000096 (n + 5) + 8).toNat

end

end A255114.P17518015243695197447

/-! ## A255114.P5539334068927839230

`A255107(A000217(n+6)+7)`
-/

namespace A255114.P5539334068927839230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A000217 (n + 6) + 7).toNat

end

end A255114.P5539334068927839230

/-! ## A255114.P8279613500584005045

`A255107(A005408(n+8)+A000124(n+4))`
-/

namespace A255114.P8279613500584005045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255107 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A255114.P8279613500584005045

/-!
# A255116: Number of n-length words on {0,1,2,3} in which 0 appears only in runs of length 2.

The programs for A255116, the canonical program `A255116.P12213343625235824818` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255116 has offset 0).

The definition of A255116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255116.P12213343625235824818

`3*a(n-1)+3*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255116

/-- `3*a(n-1)+3*a(n-3)` -/
def P12213343625235824818.Spec : Prop :=
  ∀ n, (P12213343625235824818.a n : ℤ) = A255116 n

theorem P12213343625235824818.correct : P12213343625235824818.Spec := by
  intro n
  simp only [A255116]

end A255116

/-! ## A255116.P11805242142749834729

`ogf((1+x^2)/(1-3x-3x^3))`
-/

namespace A255116.P11805242142749834729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -3, 0, -3] n

end

end A255116.P11805242142749834729

namespace A255116

/-- `ogf((1+x^2)/(1-3x-3x^3))` -/
def P11805242142749834729.Spec : Prop :=
  ∀ n, P11805242142749834729.a n = A255116 n

end A255116

/-! ## A255116.P1097762238014020598

`3*(a(n-1)+a(n-3))` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A255116.P1097762238014020598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  3 * (a (n - 1) + a (n - 3))

end

end A255116.P1097762238014020598

namespace A255116

/-- `3*(a(n-1)+a(n-3))` -/
def P1097762238014020598.Spec : Prop :=
  ∀ n, (P1097762238014020598.a n : ℤ) = A255116 n

theorem P1097762238014020598.correct : P1097762238014020598.Spec := by
  intro n
  simp only [A255116, Nat.add_sub_cancel, A255116.P1097762238014020598.a, A255116.P12213343625235824818.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A255116

/-! ## A255116.P870676509506556385

`A089978(n+1)/3`
-/

namespace A255116.P870676509506556385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089978 (n + 1) : ℚ) / 3

end

end A255116.P870676509506556385

namespace A255116

/-- `A089978(n+1)/3` -/
def P870676509506556385.Spec : Prop :=
  ∀ n, P870676509506556385.a n = (A255116 n : ℚ)

end A255116

/-! ## A255116.P3803460825107234899

`record[ratio[A089978(A158416(n))]]`
-/

namespace A255116.P3803460825107234899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089978 (A158416 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255116.P3803460825107234899

namespace A255116

/-- `record[ratio[A089978(A158416(n))]]` -/
def P3803460825107234899.Spec : Prop :=
  ∀ n, P3803460825107234899.a n = (A255116 n : ℚ)

end A255116

/-! ## A255116.P10712448821232735888

`Δ[∑[A089978(n)]/3]`
-/

namespace A255116.P10712448821232735888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089978 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255116.P10712448821232735888

namespace A255116

/-- `Δ[∑[A089978(n)]/3]` -/
def P10712448821232735888.Spec : Prop :=
  ∀ n, P10712448821232735888.a n = (A255116 n : ℚ)

end A255116

/-!
# A255117: Number of n-length words on {0,1,2,3,4} in which 0 appears only in runs of length 2.

The programs for A255117, the canonical program `A255117.P17498502178219431089` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255117 has offset 0).

The definition of A255117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255117.P17498502178219431089

`4*a(n-1)+4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=17`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255117

/-- `4*a(n-1)+4*a(n-3)` -/
def P17498502178219431089.Spec : Prop :=
  ∀ n, (P17498502178219431089.a n : ℤ) = A255117 n

theorem P17498502178219431089.correct : P17498502178219431089.Spec := by
  intro n
  simp only [A255117]

end A255117

/-! ## A255117.P13244611157266257482

`ogf((1+x^2)/(1-4x-4x^3))`
-/

namespace A255117.P13244611157266257482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -4, 0, -4] n

end

end A255117.P13244611157266257482

namespace A255117

/-- `ogf((1+x^2)/(1-4x-4x^3))` -/
def P13244611157266257482.Spec : Prop :=
  ∀ n, P13244611157266257482.a n = A255117 n

end A255117

/-! ## A255117.P14786363960176435225

`4*(a(n-1)+a(n-3))` with `a(0)=1, a(1)=4, a(2)=17`
-/

namespace A255117.P14786363960176435225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 17] fun n a =>
  4 * (a (n - 1) + a (n - 3))

end

end A255117.P14786363960176435225

namespace A255117

/-- `4*(a(n-1)+a(n-3))` -/
def P14786363960176435225.Spec : Prop :=
  ∀ n, (P14786363960176435225.a n : ℤ) = A255117 n

theorem P14786363960176435225.correct : P14786363960176435225.Spec := by
  intro n
  simp only [A255117, Nat.add_sub_cancel, A255117.P14786363960176435225.a, A255117.P17498502178219431089.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A255117

/-! ## A255117.P2271512097996576516

`A089979(n+1)/4`
-/

namespace A255117.P2271512097996576516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089979 (n + 1) : ℚ) / 4

end

end A255117.P2271512097996576516

namespace A255117

/-- `A089979(n+1)/4` -/
def P2271512097996576516.Spec : Prop :=
  ∀ n, P2271512097996576516.a n = (A255117 n : ℚ)

end A255117

/-! ## A255117.P8532900247440933910

`Δ[∑[A089979(n)]/4]`
-/

namespace A255117.P8532900247440933910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089979 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255117.P8532900247440933910

namespace A255117

/-- `Δ[∑[A089979(n)]/4]` -/
def P8532900247440933910.Spec : Prop :=
  ∀ n, P8532900247440933910.a n = (A255117 n : ℚ)

end A255117

/-! ## A255117.P8693149782804585861

`record[ratio[A089979(A193592(n))]]`
-/

namespace A255117.P8693149782804585861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089979 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255117.P8693149782804585861

namespace A255117

/-- `record[ratio[A089979(A193592(n))]]` -/
def P8693149782804585861.Spec : Prop :=
  ∀ n, P8693149782804585861.a n = (A255117 n : ℚ)

end A255117

/-! ## A255117.P10971385778318604624

`record[ratio[A089979(A050873(n+1))]]`
-/

namespace A255117.P10971385778318604624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089979 (A050873 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255117.P10971385778318604624

namespace A255117

/-- `record[ratio[A089979(A050873(n+1))]]` -/
def P10971385778318604624.Spec : Prop :=
  ∀ n, P10971385778318604624.a n = (A255117 n : ℚ)

end A255117

/-!
# A255118: Number of n-length words on {0,1,2,3,4,5} in which 0 appears only in runs of length 2.

The programs for A255118, the canonical program `A255118.P5737685708314248107` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255118 has offset 0).

The definition of A255118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255118.P5737685708314248107

`5*a(n-1)+5*a(n-3)` with `a(0)=1, a(1)=5, a(2)=26`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255118

/-- `5*a(n-1)+5*a(n-3)` -/
def P5737685708314248107.Spec : Prop :=
  ∀ n, (P5737685708314248107.a n : ℤ) = A255118 n

theorem P5737685708314248107.correct : P5737685708314248107.Spec := by
  intro n
  simp only [A255118]

end A255118

/-! ## A255118.P11090490194966359293

`ogf((1+x^2)/(1-5x-5x^3))`
-/

namespace A255118.P11090490194966359293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -5, 0, -5] n

end

end A255118.P11090490194966359293

namespace A255118

/-- `ogf((1+x^2)/(1-5x-5x^3))` -/
def P11090490194966359293.Spec : Prop :=
  ∀ n, P11090490194966359293.a n = A255118 n

end A255118

/-! ## A255118.P16177046642539972842

`5*(a(n-1)+a(n-3))` with `a(0)=1, a(1)=5, a(2)=26`
-/

namespace A255118.P16177046642539972842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 26] fun n a =>
  5 * (a (n - 1) + a (n - 3))

end

end A255118.P16177046642539972842

namespace A255118

/-- `5*(a(n-1)+a(n-3))` -/
def P16177046642539972842.Spec : Prop :=
  ∀ n, (P16177046642539972842.a n : ℤ) = A255118 n

theorem P16177046642539972842.correct : P16177046642539972842.Spec := by
  intro n
  simp only [A255118, Nat.add_sub_cancel, A255118.P16177046642539972842.a, A255118.P5737685708314248107.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A255118

/-!
# A255119: Number of n-length words on {0,1,2,3,4,5,6} in which 0 appears only in runs of length 2.

The programs for A255119, the canonical program `A255119.P3443863953471229739` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255119 has offset 0).

The definition of A255119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255119.P3443863953471229739

`6*a(n-1)+6*a(n-3)` with `a(0)=1, a(1)=6, a(2)=37`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255119

/-- `6*a(n-1)+6*a(n-3)` -/
def P3443863953471229739.Spec : Prop :=
  ∀ n, (P3443863953471229739.a n : ℤ) = A255119 n

theorem P3443863953471229739.correct : P3443863953471229739.Spec := by
  intro n
  simp only [A255119]

end A255119

/-! ## A255119.P2264180317996316343

`ogf((1+x^2)/(1-6x-6x^3))`
-/

namespace A255119.P2264180317996316343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -6, 0, -6] n

end

end A255119.P2264180317996316343

namespace A255119

/-- `ogf((1+x^2)/(1-6x-6x^3))` -/
def P2264180317996316343.Spec : Prop :=
  ∀ n, P2264180317996316343.a n = A255119 n

end A255119

/-! ## A255119.P15060838721530102222

`6*(a(n-1)+a(n-3))` with `a(0)=1, a(1)=6, a(2)=37`
-/

namespace A255119.P15060838721530102222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 37] fun n a =>
  6 * (a (n - 1) + a (n - 3))

end

end A255119.P15060838721530102222

namespace A255119

/-- `6*(a(n-1)+a(n-3))` -/
def P15060838721530102222.Spec : Prop :=
  ∀ n, (P15060838721530102222.a n : ℤ) = A255119 n

theorem P15060838721530102222.correct : P15060838721530102222.Spec := by
  intro n
  simp only [A255119, Nat.add_sub_cancel, A255119.P15060838721530102222.a, A255119.P3443863953471229739.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A255119

/-!
# A255120: After the first zero, numbers from 0 to A255071(n)-1 followed by numbers from 0 to A255071(n+1)-1, etc.

The programs for A255120, the canonical program `A255120.P17865758449158190437` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255120 has offset 0).

The definition of A255120 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255121, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A255120.P17865758449158190437

`n-A255062(A255121(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A255120

/-- `n-A255062(A255121(n))` -/
def P17865758449158190437.Spec : Prop :=
  ∀ n, P17865758449158190437.a n = A255120 n

theorem P17865758449158190437.correct : P17865758449158190437.Spec := by
  intro n
  simp only [A255120]

end A255120

/-! ## A255120.P8117295986070418933

`-(A255062(A255121(n))+A001489(n))`
-/

namespace A255120.P8117295986070418933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A255062 (A255121 n).toNat + A001489 n)

end

end A255120.P8117295986070418933

namespace A255120

/-- `-(A255062(A255121(n))+A001489(n))` -/
def P8117295986070418933.Spec : Prop :=
  ∀ n, P8117295986070418933.a n = A255120 n

theorem P8117295986070418933.correct : P8117295986070418933.Spec := by
  intro n
  simp only [A255120, Nat.add_sub_cancel, A255120.P8117295986070418933.a, A255120.P17865758449158190437.a, A001489, A001489.P15233530513763566776.a, A255062, A255062.P10358150081938219572.a, A255121, A255121.P16313667486751775912.f2, A255121.P16313667486751775912.f1, A255121.P16313667486751775912.a, A000225, A000225.P6535533121115206393.a, A255072, A255072.P11066675909169792664.a, A236840, A236840.P5330150570220508668.a, A005811, A005811.P8696411420205566785.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255120

/-! ## A255120.P2733151873052455791

`n%A255062(A255121(A000038(n)+n))`
-/

namespace A255120.P2733151873052455791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A255062 (A255121 (A000038 n + (n : ℤ)).toNat).toNat)

end

end A255120.P2733151873052455791

namespace A255120

/-- `n%A255062(A255121(A000038(n)+n))` -/
def P2733151873052455791.Spec : Prop :=
  ∀ n, P2733151873052455791.a n = A255120 n

end A255120

/-! ## A255120.P300381620877639258

`A033999(or(1, n))*A255062(A255121(n))+n`
-/

namespace A255120.P300381620877639258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Nat.lor 1 n) * A255062 (A255121 n).toNat + (n : ℤ)

end

end A255120.P300381620877639258

namespace A255120

/-- `A033999(or(1, n))*A255062(A255121(n))+n` -/
def P300381620877639258.Spec : Prop :=
  ∀ n, P300381620877639258.a n = A255120 n

end A255120

/-! ## A255120.P4584923046978224899

`A033999(2*n+1)*A255062(A255121(n))+n`
-/

namespace A255120.P4584923046978224899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A255062 (A255121 n).toNat + (n : ℤ)

end

end A255120.P4584923046978224899

namespace A255120

/-- `A033999(2*n+1)*A255062(A255121(n))+n` -/
def P4584923046978224899.Spec : Prop :=
  ∀ n, P4584923046978224899.a n = A255120 n

end A255120

/-! ## A255120.P2802276661254735557

`A218601(lt[A265247(2*n+5), n+1])`
-/

namespace A255120.P2802276661254735557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265247 (2 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218601 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A255120.P2802276661254735557

namespace A255120

/-- `A218601(lt[A265247(2*n+5), n+1])` -/
def P2802276661254735557.Spec : Prop :=
  ∀ n, P2802276661254735557.a n = A255120 n

end A255120

/-!
# A255121: After zero, each n occurs A255071(n) times.

The programs for A255121, the canonical program `A255121.P16313667486751775912` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255121 has offset 0).

The definition of A255121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 722 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255121.P9127587689316025258

`floor(log2(∑[A255054(n)]))`
-/

namespace A255121.P9127587689316025258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255121.P9127587689316025258

namespace A255121

/-- `floor(log2(∑[A255054(n)]))` -/
def P9127587689316025258.Spec : Prop :=
  ∀ n, (P9127587689316025258.a n : ℤ) = A255121 n

end A255121

/-! ## A255121.P17639658969679994766

`floor(log2(A255053(n+1)))`
-/

namespace A255121.P17639658969679994766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A255053 (n + 1)).toNat

end

end A255121.P17639658969679994766

namespace A255121

/-- `floor(log2(A255053(n+1)))` -/
def P17639658969679994766.Spec : Prop :=
  ∀ n, (P17639658969679994766.a n : ℤ) = A255121 n

end A255121

/-! ## A255121.P1160070167262392288

`floor(log2(A255056(n)+1))`
-/

namespace A255121.P1160070167262392288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A255056 n + 1).toNat

end

end A255121.P1160070167262392288

namespace A255121

/-- `floor(log2(A255056(n)+1))` -/
def P1160070167262392288.Spec : Prop :=
  ∀ n, (P1160070167262392288.a n : ℤ) = A255121 n

end A255121

/-! ## A255121.P11038988427125391864

`ceil(log2(A255057(n)+1))`
-/

namespace A255121.P11038988427125391864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A255057 n + 1 : ℝ)⌉

end

end A255121.P11038988427125391864

namespace A255121

/-- `ceil(log2(A255057(n)+1))` -/
def P11038988427125391864.Spec : Prop :=
  ∀ n, P11038988427125391864.a n = A255121 n

end A255121

/-! ## A255121.P16313667486751775912

`∑[char[A255062(n+1)]]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A255121

/-- `∑[char[A255062(n+1)]]` -/
def P16313667486751775912.Spec : Prop :=
  ∀ n, (P16313667486751775912.a n : ℤ) = A255121 n

theorem P16313667486751775912.correct : P16313667486751775912.Spec := by
  intro n
  simp only [A255121]

end A255121

/-! ## A255121.P3498007405367866518

`∑[char[A255062(n)]]-1`
-/

namespace A255121.P3498007405367866518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A255121.P3498007405367866518

namespace A255121

/-- `∑[char[A255062(n)]]-1` -/
def P3498007405367866518.Spec : Prop :=
  ∀ n, P3498007405367866518.a n = A255121 n

end A255121

/-! ## A255121.P2697076575270668570

`A119387(A255056(n))`
-/

namespace A255121.P2697076575270668570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 (A255056 n).toNat

end

end A255121.P2697076575270668570

namespace A255121

/-- `A119387(A255056(n))` -/
def P2697076575270668570.Spec : Prop :=
  ∀ n, P2697076575270668570.a n = A255121 n

end A255121

/-! ## A255121.P6763347422936081560

`A119387(A255066(n))`
-/

namespace A255121.P6763347422936081560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 (A255066 n).toNat

end

end A255121.P6763347422936081560

namespace A255121

/-- `A119387(A255066(n))` -/
def P6763347422936081560.Spec : Prop :=
  ∀ n, P6763347422936081560.a n = A255121 n

end A255121

/-! ## A255121.P11462675381567074896

`A000523(A255066(n)+1)`
-/

namespace A255121.P11462675381567074896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A255066 n + 1).toNat

end

end A255121.P11462675381567074896

namespace A255121

/-- `A000523(A255066(n)+1)` -/
def P11462675381567074896.Spec : Prop :=
  ∀ n, P11462675381567074896.a n = A255121 n

end A255121

/-! ## A255121.P16000451061703812538

`A213711(n-A255120(n))`
-/

namespace A255121.P16000451061703812538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213711 ((n : ℤ) - A255120 n).toNat

end

end A255121.P16000451061703812538

namespace A255121

/-- `A213711(n-A255120(n))` -/
def P16000451061703812538.Spec : Prop :=
  ∀ n, P16000451061703812538.a n = A255121 n

end A255121

/-! ## A255121.P2636612491907312144

`A000523(1-(A209229(n)-A255066(n)))`
-/

namespace A255121.P2636612491907312144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (1 - (A209229 n - A255066 n)).toNat

end

end A255121.P2636612491907312144

namespace A255121

/-- `A000523(1-(A209229(n)-A255066(n)))` -/
def P2636612491907312144.Spec : Prop :=
  ∀ n, P2636612491907312144.a n = A255121 n

end A255121

/-! ## A255121.P9667084357122810280

`A213711(A255120(A255122(n)+1+n))`
-/

namespace A255121.P9667084357122810280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213711 (A255120 (A255122 n + 1 + (n : ℤ)).toNat).toNat

end

end A255121.P9667084357122810280

namespace A255121

/-- `A213711(A255120(A255122(n)+1+n))` -/
def P9667084357122810280.Spec : Prop :=
  ∀ n, P9667084357122810280.a n = A255121 n

end A255121

/-!
# A255122: Simple self-inverse permutation of natural numbers: after zero, list each block of A255071(n) numbers in reverse order, from A255061(n+1) to A255062(n).

The programs for A255122, the canonical program `A255122.P1477362535082678246` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255122 has offset 0).

The definition of A255122 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255120, A255121, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A255122.P1477362535082678246

`A255061(1+A255121(n))-A255120(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A255122

/-- `A255061(1+A255121(n))-A255120(n)` -/
def P1477362535082678246.Spec : Prop :=
  ∀ n, P1477362535082678246.a n = A255122 n

theorem P1477362535082678246.correct : P1477362535082678246.Spec := by
  intro n
  simp only [A255122]

end A255122

/-! ## A255122.P13345039135402275422

`A255072(A255066(n))`
-/

namespace A255122.P13345039135402275422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A255066 n).toNat

end

end A255122.P13345039135402275422

namespace A255122

/-- `A255072(A255066(n))` -/
def P13345039135402275422.Spec : Prop :=
  ∀ n, P13345039135402275422.a n = A255122 n

end A255122

/-! ## A255122.P1515341548356553324

`A255338(A255067(n))`
-/

namespace A255122.P1515341548356553324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 (A255067 n).toNat

end

end A255122.P1515341548356553324

namespace A255122

/-- `A255338(A255067(n))` -/
def P1515341548356553324.Spec : Prop :=
  ∀ n, P1515341548356553324.a n = A255122 n

end A255122

/-! ## A255122.P1975490135350443328

`A255072(2*A255067(n))`
-/

namespace A255122.P1975490135350443328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (2 * A255067 n).toNat

end

end A255122.P1975490135350443328

namespace A255122

/-- `A255072(2*A255067(n))` -/
def P1975490135350443328.Spec : Prop :=
  ∀ n, P1975490135350443328.a n = A255122 n

end A255122

/-! ## A255122.P13470533251919105478

`A255338(A255066(n)/2)`
-/

namespace A255122.P13470533251919105478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 (SequenceMachineLib.roundAway ((A255066 n : ℚ) / 2)).toNat

end

end A255122.P13470533251919105478

namespace A255122

/-- `A255338(A255066(n)/2)` -/
def P13470533251919105478.Spec : Prop :=
  ∀ n, P13470533251919105478.a n = A255122 n

end A255122

/-! ## A255122.P1686561001320097574

`A255072(A255067(n)+A255067(n))`
-/

namespace A255122.P1686561001320097574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A255067 n + A255067 n).toNat

end

end A255122.P1686561001320097574

namespace A255122

/-- `A255072(A255067(n)+A255067(n))` -/
def P1686561001320097574.Spec : Prop :=
  ∀ n, P1686561001320097574.a n = A255122 n

end A255122

/-!
# A255123: a(n) = A255056(n) - A255053(n).

The programs for A255123, there is no canonical definition to state claims against.
-/

/-! ## A255123.P5129386943497485736

`A255056(n)-A255053(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255123.P5129386943497485736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255056 n - A255053 n

end

end A255123.P5129386943497485736

/-! ## A255123.P11331637812146213740

`A255054(n)-(A255124(n)+1)`
-/

namespace A255123.P11331637812146213740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255054 n - (A255124 n + 1)

end

end A255123.P11331637812146213740

/-! ## A255123.P731351411116295867

`A255055(n)-(A255124(n)+A255053(n))`
-/

namespace A255123.P731351411116295867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255055 n - (A255124 n + A255053 n)

end

end A255123.P731351411116295867

/-! ## A255123.P15385005362693477811

`A255053(n+1)-(A255053(n)+A255124(n)+1)`
-/

namespace A255123.P15385005362693477811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255053 (n + 1) - (A255053 n + (A255124 n + 1))

end

end A255123.P15385005362693477811

/-! ## A255123.P3131367200191482655

`∑[A255336(n)]-A255053(n)`
-/

namespace A255123.P3131367200191482655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A255053 n

end

end A255123.P3131367200191482655

/-!
# A255124: a(n) = A255055(n) - A255056(n).

The programs for A255124, there is no canonical definition to state claims against.
-/

/-! ## A255124.P13494262865078679029

`A255055(n)-A255056(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255124.P13494262865078679029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255055 n - A255056 n

end

end A255124.P13494262865078679029

/-! ## A255124.P1123177668793005289

`A255053(n+1)-(A255056(n)+1)`
-/

namespace A255124.P1123177668793005289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255053 (n + 1) - (A255056 n + 1)

end

end A255124.P1123177668793005289

/-! ## A255124.P6080735616950008018

`A255055(n)-(A255123(n)+A255053(n))`
-/

namespace A255124.P6080735616950008018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255055 n - (A255123 n + A255053 n)

end

end A255124.P6080735616950008018

/-! ## A255124.P11215610848615279152

`A255053(n+1)-(A255053(n)+A255123(n)+1)`
-/

namespace A255124.P11215610848615279152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255053 (n + 1) - (A255053 n + (A255123 n + 1))

end

end A255124.P11215610848615279152

/-! ## A255124.P9215091291709887060

`A255056(n+1)-(A255123(n+1)+A255056(n)+1)`
-/

namespace A255124.P9215091291709887060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255056 (n + 1) - (A255123 (n + 1) + (A255056 n + 1))

end

end A255124.P9215091291709887060

/-!
# A255125: Number of times a multiple of four is encountered when iterating from 2^(n+1)-2 to (2^n)-2 with the map x -> x - (number of runs in binary representation of x).

The programs for A255125, there is no canonical definition to state claims against.
-/

/-! ## A255125.P15312766417400619034

`A255071(round(sqrt(n²+1)))-A255126(n)`
-/

namespace A255125.P15312766417400619034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255071 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A255126 n

end

end A255125.P15312766417400619034

/-! ## A255125.P2475357159298800213

`Δ[A255062(n)]-A255126(n)`
-/

namespace A255125.P2475357159298800213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A255126 n

end

end A255125.P2475357159298800213

/-! ## A255125.P3659313582412202011

`A255063(n)+A255064(n)-A255126(n)`
-/

namespace A255125.P3659313582412202011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255063 n + (A255064 n - A255126 n)

end

end A255125.P3659313582412202011

/-! ## A255125.P4612777586687313938

`A255062(n+1)-(A255126(n)+A255062(n))`
-/

namespace A255125.P4612777586687313938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 (n + 1) - (A255126 n + A255062 n)

end

end A255125.P4612777586687313938

/-! ## A255125.P3529420628891317166

`Δ[A255072(2^n*ceil(n/98))]-A255126(n)`
-/

namespace A255125.P3529420628891317166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 ((2 ^ n : ℤ) * ⌈(n : ℚ) / 98⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A255126 n

end

end A255125.P3529420628891317166

/-!
# A255126: Number of times a number of the form 4n+2 is encountered when iterating from 2^(n+1)-2 to (2^n)-2 with the map x -> x - (number of runs in binary representation of x).

The programs for A255126, there is no canonical definition to state claims against.
-/

/-! ## A255126.P10151302514725912995

`A255071(round(sqrt(n²+1)))-A255125(n)`
-/

namespace A255126.P10151302514725912995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255071 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A255125 n

end

end A255126.P10151302514725912995

/-! ## A255126.P18393039755792212145

`Δ[A255062(n)]-A255125(n)`
-/

namespace A255126.P18393039755792212145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A255125 n

end

end A255126.P18393039755792212145

/-! ## A255126.P2265339882143762330

`A255063(n)+A255064(n)-A255125(n)`
-/

namespace A255126.P2265339882143762330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255063 n + (A255064 n - A255125 n)

end

end A255126.P2265339882143762330

/-! ## A255126.P7985252354267376000

`A255062(n+1)-(A255125(n)+A255062(n))`
-/

namespace A255126.P7985252354267376000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 (n + 1) - (A255125 n + A255062 n)

end

end A255126.P7985252354267376000

/-!
# A255127: Ludic array: square array A(row,col), where row n lists the numbers removed at stage n in the sieve which produces Ludic numbers. Array is read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A255127, there is no canonical definition to state claims against.
-/

/-! ## A255127.P12037205024713762889

`A255129(A061579(n)+2)`
-/

namespace A255127.P12037205024713762889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (A061579 n + 2).toNat

end

end A255127.P12037205024713762889

/-! ## A255127.P15363204911364595943

`A255129(A114327(n)+2+n)`
-/

namespace A255127.P15363204911364595943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (A114327 n + 2 + (n : ℤ)).toNat

end

end A255127.P15363204911364595943

/-! ## A255127.P5215153699233367555

`A255129(∑[A198954(n)-1]+2)`
-/

namespace A255127.P5215153699233367555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A255127.P5215153699233367555

/-! ## A255127.P14690482795196674201

`A255129(A004736(n+1)+n-A002260(n+1)+2)`
-/

namespace A255127.P14690482795196674201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 2).toNat

end

end A255127.P14690482795196674201

/-! ## A255127.P6327949415108013951

`A260435(A255551(n+2))`
-/

namespace A255127.P6327949415108013951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260435 (A255551 (n + 2)).toNat

end

end A255127.P6327949415108013951

/-! ## A255127.P17463308342050535092

`A255129(A252460(A083140(n+2)))`
-/

namespace A255127.P17463308342050535092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (A252460 (A083140 (n + 2)).toNat).toNat

end

end A255127.P17463308342050535092

/-! ## A255127.P16157149321056185724

`A255407(A083221(n+2))`
-/

namespace A255127.P16157149321056185724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A083221 (n + 2)).toNat

end

end A255127.P16157149321056185724

/-! ## A255127.P13111654860261239709

`A255407(A249741(n+1)+1)`
-/

namespace A255127.P13111654860261239709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A249741 (n + 1) + 1).toNat

end

end A255127.P13111654860261239709

/-! ## A255127.P9382578676618249003

`A255129(A252460(A255408(A255129(n+2))))`
-/

namespace A255127.P9382578676618249003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (A252460 (A255408 (A255129 (n + 2)).toNat).toNat).toNat

end

end A255127.P9382578676618249003

/-! ## A255127.P3177344490691875234

`A269171(A083221(n+2)%A296635(3*n+2))`
-/

namespace A255127.P3177344490691875234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (Int.tmod (A083221 (n + 2)) (A296635 (3 * n + 2))).toNat

end

end A255127.P3177344490691875234

/-! ## A255127.P15891023548891118980

`A269387(A253551(n+1))`
-/

namespace A255127.P15891023548891118980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269387 (A253551 (n + 1)).toNat

end

end A255127.P15891023548891118980

/-!
# A255128: Inverse permutation to A255127.

The programs for A255128, there is no canonical definition to state claims against.
-/

/-! ## A255128.P12075588071173022001

`A252460(A255408(n+1))`
-/

namespace A255128.P12075588071173022001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252460 (A255408 (n + 1)).toNat

end

end A255128.P12075588071173022001

/-! ## A255128.P13543976743691366295

`A255552(A260436(n+1))`
-/

namespace A255128.P13543976743691366295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255552 (A260436 (n + 1)).toNat

end

end A255128.P13543976743691366295

/-! ## A255128.P7374150856468518248

`A255552(A255553(A255408(A255408(A255407(n+1)))))`
-/

namespace A255128.P7374150856468518248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255552 (A255553 (A255408 (A255408 (A255407 (n + 1)).toNat).toNat).toNat).toNat

end

end A255128.P7374150856468518248

/-! ## A255128.P10862684410492811201

`A255552(A255553(A255408(A255554(A255553(n+1)))))`
-/

namespace A255128.P10862684410492811201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255552 (A255553 (A255408 (A255554 (A255553 (n + 1)).toNat).toNat).toNat).toNat

end

end A255128.P10862684410492811201

/-! ## A255128.P16137825583591489439

`A252460(A255554(A260436(A260439(A005843(n+1)))))`
-/

namespace A255128.P16137825583591489439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252460 (A255554 (A260436 (A260439 (A005843 (n + 1)).toNat).toNat).toNat).toNat

end

end A255128.P16137825583591489439

/-! ## A255128.P15618477925064466546

`A252460(A255554(A260436(A260436(A260435(n+1)))))`
-/

namespace A255128.P15618477925064466546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252460 (A255554 (A260436 (A260436 (A260435 (n + 1)).toNat).toNat).toNat).toNat

end

end A255128.P15618477925064466546

/-!
# A255129: Transposed Ludic array.

The programs for A255129, there is no canonical definition to state claims against.
-/

/-! ## A255129.P17980778849656294835

`A255127(∑[char[∑[n]]]²-n+1)`
-/

namespace A255129.P17980778849656294835
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A255129.P17980778849656294835

/-! ## A255129.P1806768468196798213

`A255407(A083140(n+2))`
-/

namespace A255129.P1806768468196798213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A083140 (n + 2)).toNat

end

end A255129.P1806768468196798213

/-! ## A255129.P8482372117096911481

`A302025(A246273(n+1)+1)`
-/

namespace A255129.P8482372117096911481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (A246273 (n + 1) + 1).toNat

end

end A255129.P8482372117096911481

/-! ## A255129.P4013431823022106831

`A302025(A246279(n+1))`
-/

namespace A255129.P4013431823022106831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (A246279 (n + 1)).toNat

end

end A255129.P4013431823022106831

/-! ## A255129.P16071285412494361652

`A255407(A114881(n+1)+1)`
-/

namespace A255129.P16071285412494361652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A114881 (n + 1) + 1).toNat

end

end A255129.P16071285412494361652

/-!
# A255130: Inverse permutation to A255129.

The programs for A255130, there is no canonical definition to state claims against.
-/

/-! ## A255130.P7786669590853231975

`∑{e}[A005009(n), A246274(#)]`
-/

namespace A255130.P7786669590853231975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A246274 (Nat.factorization (f1 n).natAbs p)

end

end A255130.P7786669590853231975

/-! ## A255130.P10076037387820870827

`∑{e}[A005009(n), A250252(#)]`
-/

namespace A255130.P10076037387820870827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A250252 (Nat.factorization (f1 n).natAbs p)

end

end A255130.P10076037387820870827

/-! ## A255130.P17458375712089651577

`∑{e}[A020714(n), A246274(#)]`
-/

namespace A255130.P17458375712089651577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A246274 (Nat.factorization (f1 n).natAbs p)

end

end A255130.P17458375712089651577

/-! ## A255130.P1587281962887922050

`∑{e}[A020714(n), A250252(#)]`
-/

namespace A255130.P1587281962887922050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A250252 (Nat.factorization (f1 n).natAbs p)

end

end A255130.P1587281962887922050

/-! ## A255130.P166748635976447831

`A256996(A279337(n+1))%A018252(A000051(n))`
-/

namespace A255130.P166748635976447831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256996 (A279337 (n + 1)).toNat) (A018252 (A000051 n).toNat)

end

end A255130.P166748635976447831

/-!
# A255131: n minus the least number of squares that add up to n: a(n) = n - A002828(n).

The programs for A255131, there is no canonical definition to state claims against.
-/

/-! ## A255131.P18161251192128781415

`n-A002828(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255131.P18161251192128781415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002828 n

end

end A255131.P18161251192128781415

/-! ## A255131.P18392028714084002472

`Δ[A000290(n)]%(A002828(n)+n+1)`
-/

namespace A255131.P18392028714084002472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A002828 n + (n + 1 : ℤ))

end

end A255131.P18392028714084002472

/-! ## A255131.P11048486797748351162

`A002828(n)*A107393(A000040(n+1))+n`
-/

namespace A255131.P11048486797748351162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n * A107393 (A000040 (n + 1)).toNat + (n : ℤ)

end

end A255131.P11048486797748351162

/-! ## A255131.P15860016070522159307

`A002828(n)*A253414(A239374(n+2))+n`
-/

namespace A255131.P15860016070522159307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n * A253414 (A239374 (n + 2)).toNat + (n : ℤ)

end

end A255131.P15860016070522159307

/-! ## A255131.P12289913193534394484

`A002828(n)*A211991(A194593(n+1))+n`
-/

namespace A255131.P12289913193534394484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n * A211991 (A194593 (n + 1)).toNat + (n : ℤ)

end

end A255131.P12289913193534394484

/-!
# A255132: Number of divisors of odd Catalan numbers (A038003).

The programs for A255132, there is no canonical definition to state claims against.
-/

/-! ## A255132.P10220348477832814347

`A152763(2^n-1)`
-/

namespace A255132.P10220348477832814347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152763 (2 ^ n - 1)

end

end A255132.P10220348477832814347

/-! ## A255132.P11055464055438091276

`gcd(A000038(n), A152763(A000225(n)))`
-/

namespace A255132.P11055464055438091276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A152763 (A000225 n).toNat)

end

end A255132.P11055464055438091276

/-! ## A255132.P16838348579018700854

`lcm(A006466(n), A152763(A000225(n)))`
-/

namespace A255132.P16838348579018700854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A152763 (A000225 n).toNat)

end

end A255132.P16838348579018700854

/-! ## A255132.P2641275739374470339

`and(A115140(n), A152763(A000225(n)))`
-/

namespace A255132.P2641275739374470339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115140 n) (A152763 (A000225 n).toNat)

end

end A255132.P2641275739374470339

/-! ## A255132.P1292917553528076510

`or(A000007(n), A152763(A000225(n)))`
-/

namespace A255132.P1292917553528076510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A152763 (A000225 n).toNat)

end

end A255132.P1292917553528076510

/-!
# A255133: Number of unitary divisors of odd Catalan numbers (A038003).

The programs for A255133, there is no canonical definition to state claims against.
-/

/-! ## A255133.P16523220308870989452

`2^A080405(A000225(n))`
-/

namespace A255133.P16523220308870989452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A080405 (A000225 n).toNat : ℤ)

end

end A255133.P16523220308870989452

/-! ## A255133.P3379305791365242576

`2^A119861(A028310(n))`
-/

namespace A255133.P3379305791365242576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A119861 (A028310 n).toNat : ℤ)

end

end A255133.P3379305791365242576

/-! ## A255133.P3409226868398138320

`2^A080405(A255047(n))`
-/

namespace A255133.P3409226868398138320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A080405 (A255047 n).toNat : ℤ)

end

end A255133.P3409226868398138320

/-! ## A255133.P9326642776932719558

`2^A000194(A178851(n))`
-/

namespace A255133.P9326642776932719558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000194 (A178851 n).toNat : ℤ)

end

end A255133.P9326642776932719558

/-!
# A255134: First differences of A097764.

The programs for A255134, there is no canonical definition to state claims against.
-/

/-! ## A255134.P9013738420652871956

`A000038(A059268(n))+Δ[A097764(n+1)]`
-/

namespace A255134.P9013738420652871956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A059268 n).toNat + (f1 (n + 1) - f1 n)

end

end A255134.P9013738420652871956

/-! ## A255134.P7862189435219905815

`A000038(A280271(n))+Δ[A097764(n+1)]`
-/

namespace A255134.P7862189435219905815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A280271 n).toNat + (f1 (n + 1) - f1 n)

end

end A255134.P7862189435219905815

/-! ## A255134.P5840833983067643972

`A000038(A064950(n+1))+Δ[A097764(n+1)]`
-/

namespace A255134.P5840833983067643972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A064950 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A255134.P5840833983067643972

/-! ## A255134.P6684736873429873311

`Δ[A185014(A155946(n+1))+A097764(n+1)]`
-/

namespace A255134.P6684736873429873311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 (A155946 (n + 1)).toNat + A097764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255134.P6684736873429873311

/-! ## A255134.P14413381990434474969

`A000038(A352462(n+1))+Δ[A097764(n+1)]`
-/

namespace A255134.P14413381990434474969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A352462 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A255134.P14413381990434474969

/-! ## A255134.P17854113118904534742

`Δ[A097764(n+1)]*A019425(2*A059268(n))`
-/

namespace A255134.P17854113118904534742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A019425 (2 * A059268 n).toNat

end

end A255134.P17854113118904534742

/-! ## A255134.P699907577675505661

`A000038(A046523(n+1)²)+Δ[A097764(n+1)]`
-/

namespace A255134.P699907577675505661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A046523 (n + 1) ^ 2).toNat + (f1 (n + 1) - f1 n)

end

end A255134.P699907577675505661

/-! ## A255134.P1642771663236056765

`Δ[A097764(n+1)]%A034302(n+1)`
-/

namespace A255134.P1642771663236056765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A034302 (n + 1))

end

end A255134.P1642771663236056765

/-! ## A255134.P8409215853542439719

`A011765(A331662(n+1))+Δ[A097764(n+1)]`
-/

namespace A255134.P8409215853542439719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (A331662 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A255134.P8409215853542439719

/-! ## A255134.P13018905266269613906

`Δ[A097764(n+1)]*A057427(A307107(n+1))`
-/

namespace A255134.P13018905266269613906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057427 (A307107 (n + 1)).toNat

end

end A255134.P13018905266269613906

/-! ## A255134.P4096934271452365023

`Δ[A097764(n+1)%A097764(A116954(n+1))]`
-/

namespace A255134.P4096934271452365023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097764 (n + 1)) (A097764 (A116954 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255134.P4096934271452365023

/-! ## A255134.P15894775518855023886

`A000038(A062584(n))+Δ[A097764(n+1)]`
-/

namespace A255134.P15894775518855023886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A062584 n).toNat + (f1 (n + 1) - f1 n)

end

end A255134.P15894775518855023886

/-! ## A255134.P12665008770497176169

`Δ[A097764(n+1)]%A006995(A139614(n))`
-/

namespace A255134.P12665008770497176169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A006995 (A139614 n).toNat)

end

end A255134.P12665008770497176169

/-! ## A255134.P3662947964670075836

`Δ[A097764(n+1)+A040011(A088557(n+1))]`
-/

namespace A255134.P3662947964670075836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 1) + A040011 (A088557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255134.P3662947964670075836

/-! ## A255134.P13529424017908164103

`Δ[A097764(n+1)]*A010052(n*n)`
-/

namespace A255134.P13529424017908164103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010052 (n * n)

end

end A255134.P13529424017908164103

/-! ## A255134.P550799718153375503

`Δ[A097764(A010052(n*n)+n)]`
-/

namespace A255134.P550799718153375503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (A010052 (n * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255134.P550799718153375503

/-! ## A255134.P15749997895309914175

`Δ[A097764(n+1)+A010052(n²)]`
-/

namespace A255134.P15749997895309914175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 1) + A010052 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255134.P15749997895309914175

/-!
# A255135: Dimensions where the volume of an L^p unit ball is maximized.

The programs for A255135, there is no canonical definition to state claims against.
-/

/-! ## A255135.P12921060560931922086

`floor(sqrt(A076610(Δ[4^n]-2)))`
-/

namespace A255135.P12921060560931922086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A076610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2).toNat)

end

end A255135.P12921060560931922086

/-! ## A255135.P7835452421091127797

`A329144(2^n)+(n+2)*2^n-1`
-/

namespace A255135.P7835452421091127797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329144 (2 ^ n) + (((n + 2) * 2 ^ n : ℤ) - 1)

end

end A255135.P7835452421091127797

/-!
# A255136: Records in A255134.

The programs for A255136, there is no canonical definition to state claims against.
-/

/-! ## A255136.P2064003405424708333

`4*(A255137(n+1)+2+n)`
-/

namespace A255136.P2064003405424708333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A255137 (n + 1) + 2 + (n : ℤ))

end

end A255136.P2064003405424708333

/-! ## A255136.P14632352972987721911

`A016825(n+1)+A016825(A255137(n+1))`
-/

namespace A255136.P14632352972987721911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (n + 1) + A016825 (A255137 (n + 1)).toNat

end

end A255136.P14632352972987721911

/-! ## A255136.P13733642505358404367

`record[A255134(n+1)]`
-/

namespace A255136.P13733642505358404367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255136.P13733642505358404367

/-! ## A255136.P11653289504087788290

`record[Δ[A097764(n+1)]]`
-/

namespace A255136.P11653289504087788290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255136.P11653289504087788290

/-! ## A255136.P1609317022487241095

`record[A097764(n+2)-A097764(n+1)]`
-/

namespace A255136.P1609317022487241095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (n + 2) - A097764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255136.P1609317022487241095

/-! ## A255136.P18049350299632682234

`A255134(A255137(n+1))%A255134(A097764(n+1))`
-/

namespace A255136.P18049350299632682234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255134 (A255137 (n + 1)).toNat) (A255134 (A097764 (n + 1)).toNat)

end

end A255136.P18049350299632682234

/-!
# A255137: Where records occur in A255134.

The programs for A255137, there is no canonical definition to state claims against.
-/

/-! ## A255137.P3461665133943299257

`A255136(n+1)/4-(n+2)`
-/

namespace A255137.P3461665133943299257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255136 (n + 1) : ℚ) / 4 - (n + 2 : ℚ)

end

end A255137.P3461665133943299257

/-! ## A255137.P437613463389716606

`A000265(A255136(n+1))-(n+2)`
-/

namespace A255137.P437613463389716606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A255136 (n + 1)).toNat - (n + 2 : ℤ)

end

end A255137.P437613463389716606

/-! ## A255137.P8359195893828887179

`(A255136(n+1)/4)%Δ[A048058(n)]+n`
-/

namespace A255137.P8359195893828887179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A255136 (n + 1) : ℚ) / 4)) (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A255137.P8359195893828887179

/-! ## A255137.P14100516664771547346

`A000265(record[A255134(n+1)])-(n+2)`
-/

namespace A255137.P14100516664771547346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - (n + 2 : ℤ)

end

end A255137.P14100516664771547346

/-! ## A255137.P7006267794905228618

`∑[A000122(A193962(n+4))+1]`
-/

namespace A255137.P7006267794905228618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A193962 (n + 4)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255137.P7006267794905228618

/-!
# A255138: a(n) = (1 + 2^n*(3 + 2*(-1)^n))/3.

The programs for A255138, the canonical program `A255138.P7440242567589312820` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255138 has offset 0).

The definition of A255138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+2^n*(3+2*(-1)^n))/3` (program `A255138.P11368385962316269094`, by `A255138.P11368385962316269094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255138.P7440242567589312820

`4*a(n-2)-1` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255138

/-- `4*a(n-2)-1` -/
def P7440242567589312820.Spec : Prop :=
  ∀ n, P7440242567589312820.a n = A255138 n

theorem P7440242567589312820.correct : P7440242567589312820.Spec := by
  intro n
  simp only [A255138]

end A255138

/-! ## A255138.P7319574824390196105

`2^(n+1)-A096773(n+1)`
-/

namespace A255138.P7319574824390196105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A096773 (n + 1)

end

end A255138.P7319574824390196105

namespace A255138

/-- `2^(n+1)-A096773(n+1)` -/
def P7319574824390196105.Spec : Prop :=
  ∀ n, P7319574824390196105.a n = A255138 n

end A255138

/-! ## A255138.P11368385962316269094

`(1+2^n*(3+2*(-1)^n))/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255138.P11368385962316269094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (2 ^ n : ℤ) * (3 + 2 * (-1) ^ n) : ℚ) / 3

end

end A255138.P11368385962316269094

namespace A255138

/-- `(1+2^n*(3+2*(-1)^n))/3` -/
def P11368385962316269094.Spec : Prop :=
  ∀ n, P11368385962316269094.a n = (A255138 n : ℚ)

theorem P11368385962316269094.correct : P11368385962316269094.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A255138, Nat.add_sub_cancel, A255138.P11368385962316269094.a, A255138.P7440242567589312820.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A255138, Nat.add_sub_cancel, A255138.P11368385962316269094.a, A255138.P7440242567589312820.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A255138

/-! ## A255138.P10826799208912886310

`∑[ogf((-2+x+2x^2)/(-1+4x^2))]`
-/

namespace A255138.P10826799208912886310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -2] [1, 0, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255138.P10826799208912886310

namespace A255138

/-- `∑[ogf((-2+x+2x^2)/(-1+4x^2))]` -/
def P10826799208912886310.Spec : Prop :=
  ∀ n, P10826799208912886310.a n = A255138 n

end A255138

/-! ## A255138.P9844452047285038278

`ogf((-2+x+2x^2)/(-1+x+4x^2-4x^3))`
-/

namespace A255138.P9844452047285038278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -2] [1, -1, -4, 4] n

end

end A255138.P9844452047285038278

namespace A255138

/-- `ogf((-2+x+2x^2)/(-1+x+4x^2-4x^3))` -/
def P9844452047285038278.Spec : Prop :=
  ∀ n, P9844452047285038278.a n = A255138 n

end A255138

/-! ## A255138.P7510157355098762231

`∑[2^n-a(n-1)-a(n-1)]` with `a(0)=2, a(1)=-1`
-/

namespace A255138.P7510157355098762231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n f1 =>
  (2 ^ n : ℤ) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255138.P7510157355098762231

namespace A255138

/-- `∑[2^n-a(n-1)-a(n-1)]` -/
def P7510157355098762231.Spec : Prop :=
  ∀ n, P7510157355098762231.a n = A255138 n

end A255138

/-! ## A255138.P9847738843598906615

`A176965(n+1)+1`
-/

namespace A255138.P9847738843598906615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176965 (n + 1) + 1

end

end A255138.P9847738843598906615

namespace A255138

/-- `A176965(n+1)+1` -/
def P9847738843598906615.Spec : Prop :=
  ∀ n, P9847738843598906615.a n = A255138 n

end A255138

/-! ## A255138.P3772411536544353162

`A305750(xor(1, n)+1)`
-/

namespace A255138.P3772411536544353162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 (Nat.xor 1 n + 1)

end

end A255138.P3772411536544353162

namespace A255138

/-- `A305750(xor(1, n)+1)` -/
def P3772411536544353162.Spec : Prop :=
  ∀ n, P3772411536544353162.a n = A255138 n

end A255138

/-! ## A255138.P1447590585734263336

`A077925(n)+2^n`
-/

namespace A255138.P1447590585734263336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n + (2 ^ n : ℤ)

end

end A255138.P1447590585734263336

namespace A255138

/-- `A077925(n)+2^n` -/
def P1447590585734263336.Spec : Prop :=
  ∀ n, P1447590585734263336.a n = A255138 n

end A255138

/-! ## A255138.P1912004832126062617

`ceil(A096773(n+2)/2)`
-/

namespace A255138.P1912004832126062617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A096773 (n + 2) : ℚ) / 2⌉

end

end A255138.P1912004832126062617

namespace A255138

/-- `ceil(A096773(n+2)/2)` -/
def P1912004832126062617.Spec : Prop :=
  ∀ n, P1912004832126062617.a n = A255138 n

end A255138

/-! ## A255138.P12685075554716616071

`xor(2, A087231(n+1)-1)`
-/

namespace A255138.P12685075554716616071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A087231 (n + 1) - 1)

end

end A255138.P12685075554716616071

namespace A255138

/-- `xor(2, A087231(n+1)-1)` -/
def P12685075554716616071.Spec : Prop :=
  ∀ n, P12685075554716616071.a n = A255138 n

end A255138

/-! ## A255138.P7637213301334753443

`abs(A001045(n+1)+(-2)^n)`
-/

namespace A255138.P7637213301334753443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001045 (n + 1) + (-2) ^ n|

end

end A255138.P7637213301334753443

namespace A255138

/-- `abs(A001045(n+1)+(-2)^n)` -/
def P7637213301334753443.Spec : Prop :=
  ∀ n, P7637213301334753443.a n = A255138 n

end A255138

/-! ## A255138.P17727133926937307326

`A305750(A014681(n+1))`
-/

namespace A255138.P17727133926937307326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 (A014681 (n + 1)).toNat

end

end A255138.P17727133926937307326

namespace A255138

/-- `A305750(A014681(n+1))` -/
def P17727133926937307326.Spec : Prop :=
  ∀ n, P17727133926937307326.a n = A255138 n

end A255138

/-! ## A255138.P3988308661162387144

`A305750(A103889(n+1))`
-/

namespace A255138.P3988308661162387144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 (A103889 (n + 1)).toNat

end

end A255138.P3988308661162387144

namespace A255138

/-- `A305750(A103889(n+1))` -/
def P3988308661162387144.Spec : Prop :=
  ∀ n, P3988308661162387144.a n = A255138 n

end A255138

/-! ## A255138.P12423269890824252088

`A151575(n)+A052992(n)`
-/

namespace A255138.P12423269890824252088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n + A052992 n

end

end A255138.P12423269890824252088

namespace A255138

/-- `A151575(n)+A052992(n)` -/
def P12423269890824252088.Spec : Prop :=
  ∀ n, P12423269890824252088.a n = A255138 n

end A255138

/-! ## A255138.P12533594356116386846

`A167193(n)+A084181(n)`
-/

namespace A255138.P12533594356116386846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167193 n + A084181 n

end

end A255138.P12533594356116386846

namespace A255138

/-- `A167193(n)+A084181(n)` -/
def P12533594356116386846.Spec : Prop :=
  ∀ n, P12533594356116386846.a n = A255138 n

end A255138

/-! ## A255138.P16416884458684136723

`A279030(n)+A005578(n)`
-/

namespace A255138.P16416884458684136723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279030 n + A005578 n

end

end A255138.P16416884458684136723

namespace A255138

/-- `A279030(n)+A005578(n)` -/
def P16416884458684136723.Spec : Prop :=
  ∀ n, P16416884458684136723.a n = A255138 n

end A255138

/-! ## A255138.P14328706503695621809

`A098646(n)-A052992(n)`
-/

namespace A255138.P14328706503695621809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098646 n - A052992 n

end

end A255138.P14328706503695621809

namespace A255138

/-- `A098646(n)-A052992(n)` -/
def P14328706503695621809.Spec : Prop :=
  ∀ n, P14328706503695621809.a n = A255138 n

end A255138

/-! ## A255138.P11730786076534083708

`A084247(n+1)+A000225(n)`
-/

namespace A255138.P11730786076534083708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 (n + 1) + A000225 n

end

end A255138.P11730786076534083708

namespace A255138

/-- `A084247(n+1)+A000225(n)` -/
def P11730786076534083708.Spec : Prop :=
  ∀ n, P11730786076534083708.a n = A255138 n

end A255138

/-! ## A255138.P9302928219051063798

`A167193(n+1)+A014551(n)`
-/

namespace A255138.P9302928219051063798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167193 (n + 1) + A014551 n

end

end A255138.P9302928219051063798

namespace A255138

/-- `A167193(n+1)+A014551(n)` -/
def P9302928219051063798.Spec : Prop :=
  ∀ n, P9302928219051063798.a n = A255138 n

end A255138

/-!
# A255139: a(n) = n! - Fibonacci(n).

The programs for A255139, the canonical program `A255139.P12832101334896343710` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255139 has offset 0).

The definition of A255139 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!-A000045(n)` (program `A255139.P12832101334896343710`, by `A255139.P12832101334896343710.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255139.P12832101334896343710

`n!-A000045(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A255139

/-- `n!-A000045(n)` -/
def P12832101334896343710.Spec : Prop :=
  ∀ n, P12832101334896343710.a n = A255139 n

theorem P12832101334896343710.correct : P12832101334896343710.Spec := by
  intro n
  simp only [A255139]

end A255139

/-! ## A255139.P11105971386868030747

`A000142(n)-A000045(n)`
-/

namespace A255139.P11105971386868030747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000045 n

end

end A255139.P11105971386868030747

namespace A255139

/-- `A000142(n)-A000045(n)` -/
def P11105971386868030747.Spec : Prop :=
  ∀ n, P11105971386868030747.a n = A255139 n

end A255139

/-! ## A255139.P5009870814154436840

`n!-A212804(n+1)`
-/

namespace A255139.P5009870814154436840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A212804 (n + 1)

end

end A255139.P5009870814154436840

namespace A255139

/-- `n!-A212804(n+1)` -/
def P5009870814154436840.Spec : Prop :=
  ∀ n, P5009870814154436840.a n = A255139 n

end A255139

/-! ## A255139.P9142120409487868225

`n!-(A157725(n)-2)`
-/

namespace A255139.P9142120409487868225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (A157725 n - 2)

end

end A255139.P9142120409487868225

namespace A255139

/-- `n!-(A157725(n)-2)` -/
def P9142120409487868225.Spec : Prop :=
  ∀ n, P9142120409487868225.a n = A255139 n

theorem P9142120409487868225.correct : P9142120409487868225.Spec := by
  intro n
  simp only [A255139, Nat.add_sub_cancel, A255139.P9142120409487868225.a, A255139.P12832101334896343710.a, A000045, A000045.P11838749114346432762.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255139

/-! ## A255139.P10068591089504656377

`n!-A103609(2*n)`
-/

namespace A255139.P10068591089504656377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A103609 (2 * n)

end

end A255139.P10068591089504656377

namespace A255139

/-- `n!-A103609(2*n)` -/
def P10068591089504656377.Spec : Prop :=
  ∀ n, P10068591089504656377.a n = A255139 n

end A255139

/-! ## A255139.P13424651789988295878

`Δ[-A000045(n+1)]+n!`
-/

namespace A255139.P13424651789988295878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.factorial n : ℤ)

end

end A255139.P13424651789988295878

namespace A255139

/-- `Δ[-A000045(n+1)]+n!` -/
def P13424651789988295878.Spec : Prop :=
  ∀ n, P13424651789988295878.a n = A255139 n

end A255139

/-! ## A255139.P11944287463596160422

`abs(A133942(n))-A000045(n)`
-/

namespace A255139.P11944287463596160422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n| - A000045 n

end

end A255139.P11944287463596160422

namespace A255139

/-- `abs(A133942(n))-A000045(n)` -/
def P11944287463596160422.Spec : Prop :=
  ∀ n, P11944287463596160422.a n = A255139 n

end A255139

/-!
# A255141: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 1 and no column sum 1.

The programs for A255141, there is no canonical definition to state claims against.
-/

/-! ## A255141.P13548526049181391850

`A255149(∑[4*n]+1)`
-/

namespace A255141.P13548526049181391850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255141.P13548526049181391850

/-! ## A255141.P17084174362328820886

`record[A255149(Δ[A079824(n+1)])]`
-/

namespace A255141.P17084174362328820886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255141.P17084174362328820886

/-! ## A255141.P6333321166340958484

`record[A003982(n)*A255149(n+1)]`
-/

namespace A255141.P6333321166340958484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A255149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255141.P6333321166340958484

/-! ## A255141.P5782977474226309810

`record[gcd(A008482(n), A255149(n+1))]`
-/

namespace A255141.P5782977474226309810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A255149 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255141.P5782977474226309810

/-! ## A255141.P9579857150292474230

`A264668(n)+A255149(A001844(n))`
-/

namespace A255141.P9579857150292474230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A255149 (A001844 n).toNat

end

end A255141.P9579857150292474230

/-!
# A255142: Number of (n+2)X(1+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 1 and no column sum 1.

The programs for A255142, there is no canonical definition to state claims against.
-/

/-! ## A255142.P17786370463806239187

`A255149(∑[n]+1)`
-/

namespace A255142.P17786370463806239187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255142.P17786370463806239187

/-! ## A255142.P14169299267050055870

`record[A255149(n+1)/A142470(n)]`
-/

namespace A255142.P14169299267050055870
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255149 (n + 1) : ℚ) / (A142470 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255142.P14169299267050055870

/-! ## A255142.P4108586592711760732

`record[root(A255149(n+1), A007318(n))]`
-/

namespace A255142.P4108586592711760732
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A255149 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255142.P4108586592711760732

/-! ## A255142.P6373386338984555666

`record[gcd(A002262(n), A255149(n+1))]`
-/

namespace A255142.P6373386338984555666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A255149 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255142.P6373386338984555666

/-! ## A255142.P5362553269973242265

`record[root(A255149(n+1), A133819(n+1))]`
-/

namespace A255142.P5362553269973242265
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A255149 (n + 1) : ℝ) ^ (1 / (A133819 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255142.P5362553269973242265

/-!
# A255143: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 1 and no column sum 1.

The programs for A255143, there is no canonical definition to state claims against.
-/

/-! ## A255143.P8564839178283189318

`A255149(∑[n+1]+2)`
-/

namespace A255143.P8564839178283189318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255143.P8564839178283189318

/-! ## A255143.P5514270044949319482

`record[gcd(A002262(n), A255149(n+2))]`
-/

namespace A255143.P5514270044949319482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A255149 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255143.P5514270044949319482

/-! ## A255143.P1025942753702001333

`record[A255149(A133263(A103221(n)))]`
-/

namespace A255143.P1025942753702001333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A133263 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255143.P1025942753702001333

/-! ## A255143.P2494404764107631010

`A255149(A000096(n)+3)+A000007(n+1)`
-/

namespace A255143.P2494404764107631010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A000096 n + 3).toNat + A000007 (n + 1)

end

end A255143.P2494404764107631010

/-! ## A255143.P9634920436627390136

`A255149(A000096(n)+3)+A000035(2*n)`
-/

namespace A255143.P9634920436627390136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A000096 n + 3).toNat + A000035 (2 * n)

end

end A255143.P9634920436627390136

/-!
# A255144: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 1 and no column sum 1.

The programs for A255144, there is no canonical definition to state claims against.
-/

/-! ## A255144.P12872461682383197239

`A255149(∑[n+2]+4)`
-/

namespace A255144.P12872461682383197239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255144.P12872461682383197239

/-! ## A255144.P151554562719968330

`A255149(A167614(n+1))+A151935(n+2)`
-/

namespace A255144.P151554562719968330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A167614 (n + 1)).toNat + A151935 (n + 2)

end

end A255144.P151554562719968330

/-! ## A255144.P13831143583025118772

`A059196(n+1)*A255149(A055998(n)+6)`
-/

namespace A255144.P13831143583025118772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059196 (n + 1) * A255149 (A055998 n + 6).toNat

end

end A255144.P13831143583025118772

/-! ## A255144.P13598897764651786343

`A255149(A167614(n+1))+A008683(8*n+4)`
-/

namespace A255144.P13598897764651786343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A167614 (n + 1)).toNat + A008683 (8 * n + 4)

end

end A255144.P13598897764651786343

/-! ## A255144.P6387516612617734615

`A255149(A034856(n+2))+A165766(n+1)`
-/

namespace A255144.P6387516612617734615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A034856 (n + 2)).toNat + A165766 (n + 1)

end

end A255144.P6387516612617734615

/-!
# A255145: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 1 and no column sum 1.

The programs for A255145, there is no canonical definition to state claims against.
-/

/-! ## A255145.P13044725159226420830

`A255149(A374004(n+1))`
-/

namespace A255145.P13044725159226420830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A374004 (n + 1)).toNat

end

end A255145.P13044725159226420830

/-! ## A255145.P10415168970069741891

`A255149(A141214(n)+7)`
-/

namespace A255145.P10415168970069741891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A141214 n + 7).toNat

end

end A255145.P10415168970069741891

/-! ## A255145.P11214029664088874225

`A255149(A167614(n+2)+1)`
-/

namespace A255145.P11214029664088874225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A167614 (n + 2) + 1).toNat

end

end A255145.P11214029664088874225

/-! ## A255145.P3726597642172431613

`A255149(Δ[A264443(n)-n²])`
-/

namespace A255145.P3726597642172431613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (f1 (n + 1) - f1 n).toNat

end

end A255145.P3726597642172431613

/-! ## A255145.P1795051821811929882

`A255149(Δ[A023545(n+1)-n²])`
-/

namespace A255145.P1795051821811929882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (f1 (n + 1) - f1 n).toNat

end

end A255145.P1795051821811929882

/-!
# A255146: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 1 and no column sum 1.

The programs for A255146, there is no canonical definition to state claims against.
-/

/-! ## A255146.P7238046044989657463

`A255149(A374005(n+1))`
-/

namespace A255146.P7238046044989657463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A374005 (n + 1)).toNat

end

end A255146.P7238046044989657463

/-! ## A255146.P7431146317121347046

`A255149(A167499(n+3))`
-/

namespace A255146.P7431146317121347046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A167499 (n + 3)).toNat

end

end A255146.P7431146317121347046

/-! ## A255146.P9357496194907542722

`A255149(A155212(n)+13)`
-/

namespace A255146.P9357496194907542722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A155212 n + 13).toNat

end

end A255146.P9357496194907542722

/-! ## A255146.P12159739953013458260

`A255149(A056000(n)+15)`
-/

namespace A255146.P12159739953013458260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A056000 n + 15).toNat

end

end A255146.P12159739953013458260

/-! ## A255146.P11868421472711676792

`A255149(Δ[A264443(n)])`
-/

namespace A255146.P11868421472711676792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (f1 (n + 1) - f1 n).toNat

end

end A255146.P11868421472711676792

/-!
# A255147: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 1 and no column sum 1.

The programs for A255147, there is no canonical definition to state claims against.
-/

/-! ## A255147.P7967725173175668523

`A255149(A374007(n+1))`
-/

namespace A255147.P7967725173175668523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A374007 (n + 1)).toNat

end

end A255147.P7967725173175668523

/-! ## A255147.P13540074708200457819

`A255149(Δ[A264443(n)]+10)`
-/

namespace A255147.P13540074708200457819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (f1 (n + 1) - f1 n + 10).toNat

end

end A255147.P13540074708200457819

/-! ## A255147.P8586645828820326114

`A255149(A000217(n+5)+6)`
-/

namespace A255147.P8586645828820326114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A000217 (n + 5) + 6).toNat

end

end A255147.P8586645828820326114

/-! ## A255147.P13962523556888435407

`A255149(A052905(n+3))`
-/

namespace A255147.P13962523556888435407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A052905 (n + 3)).toNat

end

end A255147.P13962523556888435407

/-! ## A255147.P17778858798258116286

`A255149(eq[3, A219347(n)])`
-/

namespace A255147.P17778858798258116286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255147.P17778858798258116286

/-!
# A255148: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 1 and no column sum 1.

The programs for A255148, there is no canonical definition to state claims against.
-/

/-! ## A255148.P8914577860518108497

`A255149(A374008(n+1))`
-/

namespace A255148.P8914577860518108497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A374008 (n + 1)).toNat

end

end A255148.P8914577860518108497

/-! ## A255148.P18173428847955237864

`A255149(A055999(n+4))`
-/

namespace A255148.P18173428847955237864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A055999 (n + 4)).toNat

end

end A255148.P18173428847955237864

/-! ## A255148.P15752648817364472555

`A255149(eq[4, A219347(n)])`
-/

namespace A255148.P15752648817364472555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255148.P15752648817364472555

/-! ## A255148.P11735951215232424319

`A255149(eq[10, A185782(n+1)])`
-/

namespace A255148.P11735951215232424319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255148.P11735951215232424319

/-! ## A255148.P42071155807706888

`A255149(A000217(n+6)+n+1)`
-/

namespace A255148.P42071155807706888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255149 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A255148.P42071155807706888

/-!
# A255150: Partial sums of A253086.

The programs for A255150, there is no canonical definition to state claims against.
-/

/-! ## A255150.P7172546761449769001

`∑[A253086(n)]`
-/

namespace A255150.P7172546761449769001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255150.P7172546761449769001

/-! ## A255150.P3287904577358198740

`∑[∑[A271059(abs(1-n))]]`
-/

namespace A255150.P3287904577358198740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271059 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255150.P3287904577358198740

/-! ## A255150.P2816299790765260941

`A253086(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A255150.P2816299790765260941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253086 n + a (A023443 n).toNat

end

end A255150.P2816299790765260941

/-! ## A255150.P2578770875702382582

`A253086(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A255150.P2578770875702382582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253086 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A255150.P2578770875702382582

/-! ## A255150.P1659833409227753237

`∑[A016754(n+1)-A258448(n+1)]`
-/

namespace A255150.P1659833409227753237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - A258448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255150.P1659833409227753237

/-!
# A255151: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255151, there is no canonical definition to state claims against.
-/

/-! ## A255151.P14464901190963377734

`A255159(∑[4*n]+1)`
-/

namespace A255151.P14464901190963377734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255151.P14464901190963377734

/-! ## A255151.P1384588286824731604

`record[A003982(n)*A255159(n+1)]`
-/

namespace A255151.P1384588286824731604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A255159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255151.P1384588286824731604

/-! ## A255151.P17363255669965883226

`record[gcd(A114327(n), A255159(n+1))]`
-/

namespace A255151.P17363255669965883226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A255159 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255151.P17363255669965883226

/-! ## A255151.P15455267905342019316

`record[A203994(n+1)*A255159(n+1)]`
-/

namespace A255151.P15455267905342019316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A255159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255151.P15455267905342019316

/-! ## A255151.P10035171592606543981

`A255159(A001844(n))+A185284(n)`
-/

namespace A255151.P10035171592606543981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A001844 n).toNat + A185284 n

end

end A255151.P10035171592606543981

/-!
# A255152: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255152, there is no canonical definition to state claims against.
-/

/-! ## A255152.P3969783092698595176

`A255159(∑[n]+1)`
-/

namespace A255152.P3969783092698595176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255152.P3969783092698595176

/-! ## A255152.P12210151258320366353

`record[A255159(A286245(n+1))]`
-/

namespace A255152.P12210151258320366353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A286245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255152.P12210151258320366353

/-! ## A255152.P1328297437888493076

`record[A010054(n)*A255159(n+1)]`
-/

namespace A255152.P1328297437888493076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A255159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255152.P1328297437888493076

/-! ## A255152.P10369296098101856181

`record[root(A255159(n+1), A059268(n))]`
-/

namespace A255152.P10369296098101856181
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A255159 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255152.P10369296098101856181

/-! ## A255152.P5746470821671554320

`record[gcd(A002262(n), A255159(n+1))]`
-/

namespace A255152.P5746470821671554320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A255159 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255152.P5746470821671554320

/-!
# A255153: Number of (n+2) X (2+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255153, there is no canonical definition to state claims against.
-/

/-! ## A255153.P6350271355168918482

`A255159(∑[n+1]+2)`
-/

namespace A255153.P6350271355168918482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255153.P6350271355168918482

/-! ## A255153.P15812549161397365858

`record[A010054(n)*A255159(n+2)]`
-/

namespace A255153.P15812549161397365858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A255159 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255153.P15812549161397365858

/-! ## A255153.P15891224137648178592

`record[root(A255159(n+2), A059268(n))]`
-/

namespace A255153.P15891224137648178592
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A255159 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255153.P15891224137648178592

/-! ## A255153.P11765494005797863652

`record[gcd(A002262(n), A255159(n+2))]`
-/

namespace A255153.P11765494005797863652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A255159 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255153.P11765494005797863652

/-! ## A255153.P9942082653461279249

`A255159(A000096(n+1))+A000035(2*n)`
-/

namespace A255153.P9942082653461279249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A000096 (n + 1)).toNat + A000035 (2 * n)

end

end A255153.P9942082653461279249

/-!
# A255154: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255154, there is no canonical definition to state claims against.
-/

/-! ## A255154.P15622067864544621979

`A255159(∑[n+2]+4)`
-/

namespace A255154.P15622067864544621979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255154.P15622067864544621979

/-! ## A255154.P17046871024882538144

`or(1, A255159(A167614(n+1)))`
-/

namespace A255154.P17046871024882538144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A255159 (A167614 (n + 1)).toNat)

end

end A255154.P17046871024882538144

/-! ## A255154.P1350302842610436003

`-((1-4/2)*A255159(A034856(n+1)+5))`
-/

namespace A255154.P1350302842610436003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((1 - (4 : ℚ) / 2) * (A255159 (A034856 (n + 1) + 5).toNat : ℚ))

end

end A255154.P1350302842610436003

/-! ## A255154.P18162321351587707806

`A255159(A034856(n+1)+5)%A017224(n)²`
-/

namespace A255154.P18162321351587707806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255159 (A034856 (n + 1) + 5).toNat) (A017224 n ^ 2)

end

end A255154.P18162321351587707806

/-! ## A255154.P10225849741999905307

`A033999(n+1)²*A255159(A034856(n+1)+5)`
-/

namespace A255154.P10225849741999905307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) ^ 2 * A255159 (A034856 (n + 1) + 5).toNat

end

end A255154.P10225849741999905307

/-!
# A255155: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255155, there is no canonical definition to state claims against.
-/

/-! ## A255155.P7137631407882488522

`A255159(A052905(n)+9)`
-/

namespace A255155.P7137631407882488522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A052905 n + 9).toNat

end

end A255155.P7137631407882488522

/-! ## A255155.P11207350436261252152

`A255159(A167614(n+2)+1)`
-/

namespace A255155.P11207350436261252152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A167614 (n + 2) + 1).toNat

end

end A255155.P11207350436261252152

/-! ## A255155.P11248869685806557333

`A255159(A000217(n+3)+4)`
-/

namespace A255155.P11248869685806557333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A000217 (n + 3) + 4).toNat

end

end A255155.P11248869685806557333

/-! ## A255155.P2233488789401130067

`A255159(Δ[A264443(n)-n²])`
-/

namespace A255155.P2233488789401130067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (f1 (n + 1) - f1 n).toNat

end

end A255155.P2233488789401130067

/-! ## A255155.P14408368771411957362

`A255159(A141214(n+1))`
-/

namespace A255155.P14408368771411957362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A141214 (n + 1)).toNat

end

end A255155.P14408368771411957362

/-!
# A255156: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255156, there is no canonical definition to state claims against.
-/

/-! ## A255156.P16985002790349066465

`A255159(A167499(n+3))`
-/

namespace A255156.P16985002790349066465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A167499 (n + 3)).toNat

end

end A255156.P16985002790349066465

/-! ## A255156.P1440012755290707099

`A255159(A000217(n+4)+5)`
-/

namespace A255156.P1440012755290707099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A000217 (n + 4) + 5).toNat

end

end A255156.P1440012755290707099

/-! ## A255156.P4700840706292450209

`A255159(Δ[A264443(n)])`
-/

namespace A255156.P4700840706292450209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (f1 (n + 1) - f1 n).toNat

end

end A255156.P4700840706292450209

/-! ## A255156.P13057739262400964491

`A255159(A374005(n+1))`
-/

namespace A255156.P13057739262400964491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A374005 (n + 1)).toNat

end

end A255156.P13057739262400964491

/-! ## A255156.P4069823547731132247

`A255159(A046691(n+3))`
-/

namespace A255156.P4069823547731132247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A046691 (n + 3)).toNat

end

end A255156.P4069823547731132247

/-!
# A255157: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255157, there is no canonical definition to state claims against.
-/

/-! ## A255157.P10663719888736819723

`A255159(A056115(n)+21)`
-/

namespace A255157.P10663719888736819723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A056115 n + 21).toNat

end

end A255157.P10663719888736819723

/-! ## A255157.P1135874002521149168

`A255159(A167499(n+4)+1)`
-/

namespace A255157.P1135874002521149168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A167499 (n + 4) + 1).toNat

end

end A255157.P1135874002521149168

/-! ## A255157.P8245786726553362120

`A255159(A167614(n+4)+3)`
-/

namespace A255157.P8245786726553362120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A167614 (n + 4) + 3).toNat

end

end A255157.P8245786726553362120

/-! ## A255157.P16057448183781198426

`A255159(A000217(n+5)+6)`
-/

namespace A255157.P16057448183781198426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A000217 (n + 5) + 6).toNat

end

end A255157.P16057448183781198426

/-! ## A255157.P6677976434077684314

`A255159(A002620(n+2)+A002620(n+9))`
-/

namespace A255157.P6677976434077684314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A255157.P6677976434077684314

/-!
# A255158: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255158, there is no canonical definition to state claims against.
-/

/-! ## A255158.P16152822780540731466

`A255159(eq[8, A131818(n+1)])`
-/

namespace A255158.P16152822780540731466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255158.P16152822780540731466

/-! ## A255158.P2924824343474091003

`A255159(A374008(n+1))`
-/

namespace A255158.P2924824343474091003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A374008 (n + 1)).toNat

end

end A255158.P2924824343474091003

/-! ## A255158.P11935031551630076813

`A255159(eq[4, A219347(n)])`
-/

namespace A255158.P11935031551630076813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255158.P11935031551630076813

/-! ## A255158.P10302503847468544814

`A255159(eq[6, A193592(n)])`
-/

namespace A255158.P10302503847468544814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255158.P10302503847468544814

/-! ## A255158.P8870827258707003229

`A255159(A000124(n+7)-7)`
-/

namespace A255158.P8870827258707003229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255159 (A000124 (n + 7) - 7).toNat

end

end A255158.P8870827258707003229

/-!
# A255161: Prime numbers with more than one 1 < k < 10 for which the base-k representation is palindromic.

The programs for A255161, there is no canonical definition to state claims against.
-/

/-! ## A255161.P4146974406058501659

`∩[A029743(n+1), A374561(n+1)]`
-/

namespace A255161.P4146974406058501659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255161.P4146974406058501659

/-! ## A255161.P12456619263910751459

`∩[A040165(n+1), A374561(n+1)]`
-/

namespace A255161.P12456619263910751459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255161.P12456619263910751459

/-! ## A255161.P16724405676400066707

`∩[A040169(n+1), A374561(n+1)]`
-/

namespace A255161.P16724405676400066707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255161.P16724405676400066707

/-! ## A255161.P2078215682973189533

`∩[A052042(n+1), A374561(n+1)]`
-/

namespace A255161.P2078215682973189533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255161.P2078215682973189533

/-! ## A255161.P6856858837367031763

`∩[A052085(n+1), A374561(n+1)]`
-/

namespace A255161.P6856858837367031763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255161.P6856858837367031763

/-!
# A255162: Rational part of circle radii in nested circles and hexagons (see comment).

The programs for A255162, there is no canonical definition to state claims against.
-/

/-! ## A255162.P6678153972724992687

`ogf((2+24x)/(1+12x-12x^2))`
-/

namespace A255162.P6678153972724992687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 24] [1, 12, -12] n

end

end A255162.P6678153972724992687

/-! ## A255162.P7739584428803956508

`12*(a(n-2)-a(n-1))` with `a(0)=2, a(1)=0`
-/

namespace A255162.P7739584428803956508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  12 * (a (n - 2) - a (n - 1))

end

end A255162.P7739584428803956508

/-! ## A255162.P12115321786976296954

`2*(a(n-1)-A255163(n))` with `a(0)=2`
-/

namespace A255162.P12115321786976296954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) - A255163 n)

end

end A255162.P12115321786976296954

/-!
# A255163: Irrational parts of circle radii in nested circles and hexagons (see comment).

The programs for A255163, there is no canonical definition to state claims against.
-/

/-! ## A255163.P10032810500751649521

`ogf((1+14x)/(1+12x-12x^2))`
-/

namespace A255163.P10032810500751649521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 14] [1, 12, -12] n

end

end A255163.P10032810500751649521

/-! ## A255163.P5940582353137854221

`12*(a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A255163.P5940582353137854221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  12 * (a (n - 2) - a (n - 1))

end

end A255163.P5940582353137854221

/-!
# A255165: a(n) = Sum_{k=2..n} floor(log(n)/log(k)), n >= 1.

The programs for A255165, the canonical program `A255165.P17053047145035925291` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255165 has offset 1).

The definition of A255165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255165.P17053047145035925291

`A089361(n+1)+n`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A255165

/-- `A089361(n+1)+n` -/
def P17053047145035925291.Spec : Prop :=
  ∀ n, P17053047145035925291.a n = A255165 (n + 1)

theorem P17053047145035925291.correct : P17053047145035925291.Spec := by
  intro n
  simp only [A255165, Nat.add_sub_cancel]

end A255165

/-! ## A255165.P16140736609945105137

`∑[A089723(n+1)]-1`
-/

namespace A255165.P16140736609945105137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A255165.P16140736609945105137

namespace A255165

/-- `∑[A089723(n+1)]-1` -/
def P16140736609945105137.Spec : Prop :=
  ∀ n, P16140736609945105137.a n = A255165 (n + 1)

end A255165

/-! ## A255165.P12278515454236129248

`A342871(n+1)-(n+1)`
-/

namespace A255165.P12278515454236129248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342871 (n + 1) - (n + 1 : ℤ)

end

end A255165.P12278515454236129248

namespace A255165

/-- `A342871(n+1)-(n+1)` -/
def P12278515454236129248.Spec : Prop :=
  ∀ n, P12278515454236129248.a n = A255165 (n + 1)

theorem P12278515454236129248.correct : P12278515454236129248.Spec := by
  intro n
  simp only [A255165, Nat.add_sub_cancel, A255165.P12278515454236129248.a, A255165.P17053047145035925291.a, A089361, A089361.P96077978573421332.f1, A089361.P96077978573421332.a, A342871, A342871.P1608004404490224182.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A052409, A052409.P7338948793466901153.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A051904, A051904.P9263651810596342710.a, A046523, A046523.P3407874444772092792.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255165

/-! ## A255165.P16398239759284578168

`A327737(n+1)-Δ[n²]`
-/

namespace A255165.P16398239759284578168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327737 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A255165.P16398239759284578168

namespace A255165

/-- `A327737(n+1)-Δ[n²]` -/
def P16398239759284578168.Spec : Prop :=
  ∀ n, P16398239759284578168.a n = A255165 (n + 1)

theorem P16398239759284578168.correct : P16398239759284578168.Spec := by
  intro n
  simp only [A255165, Nat.add_sub_cancel, A255165.P16398239759284578168.f1, A255165.P16398239759284578168.a, A255165.P17053047145035925291.a, A089361, A089361.P96077978573421332.f1, A089361.P96077978573421332.a, A327737, A327737.P6566984932451664947.f1, A327737.P6566984932451664947.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A052409, A052409.P7338948793466901153.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A051904, A051904.P9263651810596342710.a, A046523, A046523.P3407874444772092792.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255165

/-! ## A255165.P9612699488166938207

`A327737(n+1)%A157142(n)`
-/

namespace A255165.P9612699488166938207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327737 (n + 1)) (A157142 n)

end

end A255165.P9612699488166938207

namespace A255165

/-- `A327737(n+1)%A157142(n)` -/
def P9612699488166938207.Spec : Prop :=
  ∀ n, P9612699488166938207.a n = A255165 (n + 1)

end A255165

/-! ## A255165.P6521222918036936004

`∑[A032741(A052409(n+1))]+n`
-/

namespace A255165.P6521222918036936004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A052409 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A255165.P6521222918036936004

namespace A255165

/-- `∑[A032741(A052409(n+1))]+n` -/
def P6521222918036936004.Spec : Prop :=
  ∀ n, P6521222918036936004.a n = A255165 (n + 1)

end A255165

/-! ## A255165.P17549125435822054939

`∑[A032741(A132349(n+1))]+n`
-/

namespace A255165.P17549125435822054939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A132349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A255165.P17549125435822054939

namespace A255165

/-- `∑[A032741(A132349(n+1))]+n` -/
def P17549125435822054939.Spec : Prop :=
  ∀ n, P17549125435822054939.a n = A255165 (n + 1)

end A255165

/-! ## A255165.P621395346655221431

`A023443(A342871(n+1)-n)`
-/

namespace A255165.P621395346655221431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A342871 (n + 1) - (n : ℤ)).toNat

end

end A255165.P621395346655221431

namespace A255165

/-- `A023443(A342871(n+1)-n)` -/
def P621395346655221431.Spec : Prop :=
  ∀ n, P621395346655221431.a n = A255165 (n + 1)

end A255165

/-!
# A255166: Difference after n generations between the total number of single toothpicks in the I-toothpick structure of A160164 and the total number of ON cells in the "Ulam-Warburton" two-dimensional cellular automaton of A147562.

The programs for A255166, there is no canonical definition to state claims against.
-/

/-! ## A255166.P8155546321416868667

`A160164(n)-A147562(n)`
-/

namespace A255166.P8155546321416868667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 n - A147562 n

end

end A255166.P8155546321416868667

/-! ## A255166.P80418177812352855

`2*A139250(n)-A147562(n)`
-/

namespace A255166.P80418177812352855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139250 n - A147562 n

end

end A255166.P80418177812352855

/-! ## A255166.P9847912058846014329

`A160164(n)-floor(A160410(n)/3)`
-/

namespace A255166.P9847912058846014329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 n - ⌊(A160410 n : ℚ) / 3⌋

end

end A255166.P9847912058846014329

/-! ## A255166.P5003087906708902754

`∑[2*A139251(n)]-A147562(n)`
-/

namespace A255166.P5003087906708902754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A147562 n

end

end A255166.P5003087906708902754

/-! ## A255166.P7245772350253159227

`A187220(n+1)-(A147562(n)+1)`
-/

namespace A255166.P7245772350253159227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 (n + 1) - (A147562 n + 1)

end

end A255166.P7245772350253159227

/-! ## A255166.P7661274776751619721

`A160164(n)-A323650(2*n)/3`
-/

namespace A255166.P7661274776751619721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160164 n : ℚ) - (A323650 (2 * n) : ℚ) / 3

end

end A255166.P7661274776751619721

/-! ## A255166.P5409366755171913526

`A160164(n)-floor(A151917(2*n)/2)`
-/

namespace A255166.P5409366755171913526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 n - ⌊(A151917 (2 * n) : ℚ) / 2⌋

end

end A255166.P5409366755171913526

/-! ## A255166.P11288193170440005430

`2*A266530(Δ[n²])-A147562(n)`
-/

namespace A255166.P11288193170440005430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A147562 n

end

end A255166.P11288193170440005430

/-! ## A255166.P15796489753688704912

`A160164(n)-(A183060(2*n)/2-n)`
-/

namespace A255166.P15796489753688704912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160164 n : ℚ) - ((A183060 (2 * n) : ℚ) / 2 - (n : ℚ))

end

end A255166.P15796489753688704912

/-! ## A255166.P16301924775934736377

`2*A139250(n)-(A183060(2*n)/2-n)`
-/

namespace A255166.P16301924775934736377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A139250 n : ℚ) - ((A183060 (2 * n) : ℚ) / 2 - (n : ℚ))

end

end A255166.P16301924775934736377

/-!
# A255167: a(n) = A072905(n) - A006255(n).

The programs for A255167, there is no canonical definition to state claims against.
-/

/-! ## A255167.P11733374161550109673

`A072905(n+1)-A006255(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255167.P11733374161550109673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072905 (n + 1) - A006255 (n + 1)

end

end A255167.P11733374161550109673

/-! ## A255167.P17633523365999789742

`A072905(n+1)-(A092487(n+1)+n+1)`
-/

namespace A255167.P17633523365999789742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072905 (n + 1) - (A092487 (n + 1) + (n + 1 : ℤ))

end

end A255167.P17633523365999789742

/-! ## A255167.P15727790428916294028

`A072905(n+1)-A245499(∑[A066400(n+1)])`
-/

namespace A255167.P15727790428916294028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072905 (n + 1) - A245499 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255167.P15727790428916294028

/-! ## A255167.P14190969315088526051

`A067722(n+1)-A092487(n+1)`
-/

namespace A255167.P14190969315088526051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067722 (n + 1) - A092487 (n + 1)

end

end A255167.P14190969315088526051

/-! ## A255167.P15172476022571606121

`A072905(n+1)-A018252(A297104(n+1))`
-/

namespace A255167.P15172476022571606121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072905 (n + 1) - A018252 (A297104 (n + 1)).toNat

end

end A255167.P15172476022571606121

/-! ## A255167.P2282291136688059783

`A193800(A004277(n+1))-A092487(n+1)`
-/

namespace A255167.P2282291136688059783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193800 (A004277 (n + 1)).toNat - A092487 (n + 1)

end

end A255167.P2282291136688059783

/-!
# A255170: a(n) = A087803(n) - n + 1.

The programs for A255170, there is no canonical definition to state claims against.
-/

/-! ## A255170.P11659900625346136275

`A087803(n+1)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255170.P11659900625346136275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087803 (n + 1) - (n : ℤ)

end

end A255170.P11659900625346136275

/-! ## A255170.P16901318786590325746

`A087803(n+1)-(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255170.P16901318786590325746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087803 (n + 1) - (n + 1 : ℤ) + 1

end

end A255170.P16901318786590325746

/-! ## A255170.P4650230580165902384

`A174145(n)+2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A255170.P4650230580165902384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A174145 n + 2 * a (n - 1) - a (n - 2)

end

end A255170.P4650230580165902384

/-! ## A255170.P30364153565270386

`∑[∑[A174145(n)]]-n`
-/

namespace A255170.P30364153565270386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A255170.P30364153565270386

/-! ## A255170.P11401869049760430032

`∑[A000081(n+1)]-n`
-/

namespace A255170.P11401869049760430032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A255170.P11401869049760430032

/-! ## A255170.P17524347611401242837

`∑[A038001(2*n+1)]-n`
-/

namespace A255170.P17524347611401242837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A255170.P17524347611401242837

/-! ## A255170.P12068641169245582730

`∑[A123467(A028310(n))]-n`
-/

namespace A255170.P12068641169245582730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123467 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A255170.P12068641169245582730

/-! ## A255170.P15597512808400441521

`∑[sqrt(A001257(n))]-n`
-/

namespace A255170.P15597512808400441521
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001257 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ)

end

end A255170.P15597512808400441521

/-!
# A255171: First differences of A072473.

The programs for A255171, the canonical program `A255171.P878351036913062245` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255171 has offset 1).

The definition of A255171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255171.P878351036913062245

`A072473(n+2)-A072473(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A255171

/-- `A072473(n+2)-A072473(n+1)` -/
def P878351036913062245.Spec : Prop :=
  ∀ n, P878351036913062245.a n = A255171 (n + 1)

theorem P878351036913062245.correct : P878351036913062245.Spec := by
  intro n
  simp only [A255171, Nat.add_sub_cancel]

end A255171

/-! ## A255171.P7070992565261935642

`A155750(n+1)-A001223(n+1)`
-/

namespace A255171.P7070992565261935642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1) - A001223 (n + 1)

end

end A255171.P7070992565261935642

namespace A255171

/-- `A155750(n+1)-A001223(n+1)` -/
def P7070992565261935642.Spec : Prop :=
  ∀ n, P7070992565261935642.a n = A255171 (n + 1)

end A255171

/-! ## A255171.P8450292804258728311

`A110854(n+1)+A155067(n+1)-A001223(n+1)`
-/

namespace A255171.P8450292804258728311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110854 (n + 1) + (A155067 (n + 1) - A001223 (n + 1))

end

end A255171.P8450292804258728311

namespace A255171

/-- `A110854(n+1)+A155067(n+1)-A001223(n+1)` -/
def P8450292804258728311.Spec : Prop :=
  ∀ n, P8450292804258728311.a n = A255171 (n + 1)

end A255171

/-! ## A255171.P12848151333740928988

`Δ[A072473(n+1)]`
-/

namespace A255171.P12848151333740928988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255171.P12848151333740928988

namespace A255171

/-- `Δ[A072473(n+1)]` -/
def P12848151333740928988.Spec : Prop :=
  ∀ n, P12848151333740928988.a n = A255171 (n + 1)

theorem P12848151333740928988.correct : P12848151333740928988.Spec := by
  intro n
  simp only [A255171, Nat.add_sub_cancel, A255171.P12848151333740928988.f1, A255171.P12848151333740928988.a, A255171.P878351036913062245.a, SequenceMachineLib.memo_apply]

end A255171

/-! ## A255171.P15657386650923273613

`A155750(n+1)-A054541(n+2)`
-/

namespace A255171.P15657386650923273613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1) - A054541 (n + 2)

end

end A255171.P15657386650923273613

namespace A255171

/-- `A155750(n+1)-A054541(n+2)` -/
def P15657386650923273613.Spec : Prop :=
  ∀ n, P15657386650923273613.a n = A255171 (n + 1)

end A255171

/-! ## A255171.P9667665793356672851

`Δ[A031215(n+1)-Δ[A007504(n)]]`
-/

namespace A255171.P9667665793356672851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255171.P9667665793356672851

namespace A255171

/-- `Δ[A031215(n+1)-Δ[A007504(n)]]` -/
def P9667665793356672851.Spec : Prop :=
  ∀ n, P9667665793356672851.a n = A255171 (n + 1)

end A255171

/-! ## A255171.P4329408804727661625

`Δ[A031215(n+1)-A000040(n+1)]`
-/

namespace A255171.P4329408804727661625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255171.P4329408804727661625

namespace A255171

/-- `Δ[A031215(n+1)-A000040(n+1)]` -/
def P4329408804727661625.Spec : Prop :=
  ∀ n, P4329408804727661625.a n = A255171 (n + 1)

theorem P4329408804727661625.correct : P4329408804727661625.Spec := by
  intro n
  simp only [A255171, Nat.add_sub_cancel, A255171.P4329408804727661625.f1, A255171.P4329408804727661625.a, A255171.P878351036913062245.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A072473, A072473.P11303799734713741739.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255171

/-! ## A255171.P6671857327432731644

`A031215(n+2)-(A031215(n+1)+A001223(n+1))`
-/

namespace A255171.P6671857327432731644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 2) - (A031215 (n + 1) + A001223 (n + 1))

end

end A255171.P6671857327432731644

namespace A255171

/-- `A031215(n+2)-(A031215(n+1)+A001223(n+1))` -/
def P6671857327432731644.Spec : Prop :=
  ∀ n, P6671857327432731644.a n = A255171 (n + 1)

theorem P6671857327432731644.correct : P6671857327432731644.Spec := by
  intro n
  simp only [A255171, Nat.add_sub_cancel, A255171.P6671857327432731644.a, A255171.P878351036913062245.a, A001223, A001223.P5034056745985311719.a, A031215, A031215.P2952175553723239727.a, A072473, A072473.P11303799734713741739.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255171

/-! ## A255171.P3968835058201585003

`A031215(n+2)-(A075526(n+1)+A031215(n+1))`
-/

namespace A255171.P3968835058201585003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 2) - (A075526 (n + 1) + A031215 (n + 1))

end

end A255171.P3968835058201585003

namespace A255171

/-- `A031215(n+2)-(A075526(n+1)+A031215(n+1))` -/
def P3968835058201585003.Spec : Prop :=
  ∀ n, P3968835058201585003.a n = A255171 (n + 1)

end A255171

/-! ## A255171.P18358191503534435724

`A000040(n+1)+A155750(n+1)-A000040(n+2)`
-/

namespace A255171.P18358191503534435724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A155750 (n + 1) - A000040 (n + 2))

end

end A255171.P18358191503534435724

namespace A255171

/-- `A000040(n+1)+A155750(n+1)-A000040(n+2)` -/
def P18358191503534435724.Spec : Prop :=
  ∀ n, P18358191503534435724.a n = A255171 (n + 1)

end A255171

/-! ## A255171.P2222353326629676366

`A088680(n+1)+A078584(n+2)-A001223(n+1)`
-/

namespace A255171.P2222353326629676366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (n + 1) + (A078584 (n + 2) - A001223 (n + 1))

end

end A255171.P2222353326629676366

namespace A255171

/-- `A088680(n+1)+A078584(n+2)-A001223(n+1)` -/
def P2222353326629676366.Spec : Prop :=
  ∀ n, P2222353326629676366.a n = A255171 (n + 1)

end A255171

/-! ## A255171.P9206967228556564563

`A155750(n+1)+A031131(n+2)-A031165(n+1)`
-/

namespace A255171.P9206967228556564563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1) + (A031131 (n + 2) - A031165 (n + 1))

end

end A255171.P9206967228556564563

namespace A255171

/-- `A155750(n+1)+A031131(n+2)-A031165(n+1)` -/
def P9206967228556564563.Spec : Prop :=
  ∀ n, P9206967228556564563.a n = A255171 (n + 1)

end A255171

/-! ## A255171.P10896191674558571014

`A155750(n+1)+A031165(n+2)-A031166(n+1)`
-/

namespace A255171.P10896191674558571014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1) + (A031165 (n + 2) - A031166 (n + 1))

end

end A255171.P10896191674558571014

namespace A255171

/-- `A155750(n+1)+A031165(n+2)-A031166(n+1)` -/
def P10896191674558571014.Spec : Prop :=
  ∀ n, P10896191674558571014.a n = A255171 (n + 1)

end A255171

/-! ## A255171.P12315939318115193717

`A031131(2*(n+1))-A001223(n+1)`
-/

namespace A255171.P12315939318115193717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (2 * (n + 1)) - A001223 (n + 1)

end

end A255171.P12315939318115193717

namespace A255171

/-- `A031131(2*(n+1))-A001223(n+1)` -/
def P12315939318115193717.Spec : Prop :=
  ∀ n, P12315939318115193717.a n = A255171 (n + 1)

end A255171

/-! ## A255171.P13169947031759391503

`A031131(2*(n+1))-A075526(n+1)`
-/

namespace A255171.P13169947031759391503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (2 * (n + 1)) - A075526 (n + 1)

end

end A255171.P13169947031759391503

namespace A255171

/-- `A031131(2*(n+1))-A075526(n+1)` -/
def P13169947031759391503.Spec : Prop :=
  ∀ n, P13169947031759391503.a n = A255171 (n + 1)

end A255171

/-! ## A255171.P5337815165092285041

`A031131(2*(n+1))-A054541(n+2)`
-/

namespace A255171.P5337815165092285041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (2 * (n + 1)) - A054541 (n + 2)

end

end A255171.P5337815165092285041

namespace A255171

/-- `A031131(2*(n+1))-A054541(n+2)` -/
def P5337815165092285041.Spec : Prop :=
  ∀ n, P5337815165092285041.a n = A255171 (n + 1)

end A255171

/-! ## A255171.P2133763754793319700

`A031131(2*(n+1))-A219606(2*n+1)`
-/

namespace A255171.P2133763754793319700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (2 * (n + 1)) - A219606 (2 * n + 1)

end

end A255171.P2133763754793319700

namespace A255171

/-- `A031131(2*(n+1))-A219606(2*n+1)` -/
def P2133763754793319700.Spec : Prop :=
  ∀ n, P2133763754793319700.a n = A255171 (n + 1)

end A255171

/-! ## A255171.P15627803811496098488

`Δ[A000040(2*(n+1))-A000040(n+1)]`
-/

namespace A255171.P15627803811496098488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255171.P15627803811496098488

namespace A255171

/-- `Δ[A000040(2*(n+1))-A000040(n+1)]` -/
def P15627803811496098488.Spec : Prop :=
  ∀ n, P15627803811496098488.a n = A255171 (n + 1)

theorem P15627803811496098488.correct : P15627803811496098488.Spec := by
  intro n
  simp only [A255171, Nat.add_sub_cancel, A255171.P15627803811496098488.f1, A255171.P15627803811496098488.a, A255171.P878351036913062245.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072473, A072473.P11303799734713741739.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255171

/-! ## A255171.P17598751177229889240

`Δ[A008864(2*(n+1))-A008578(n+2)]`
-/

namespace A255171.P17598751177229889240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (2 * (n + 1)) - A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255171.P17598751177229889240

namespace A255171

/-- `Δ[A008864(2*(n+1))-A008578(n+2)]` -/
def P17598751177229889240.Spec : Prop :=
  ∀ n, P17598751177229889240.a n = A255171 (n + 1)

end A255171

/-! ## A255171.P13805849257169900880

`Δ[A006093(2*(n+1))]-A054541(n+2)`
-/

namespace A255171.P13805849257169900880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A054541 (n + 2)

end

end A255171.P13805849257169900880

namespace A255171

/-- `Δ[A006093(2*(n+1))]-A054541(n+2)` -/
def P13805849257169900880.Spec : Prop :=
  ∀ n, P13805849257169900880.a n = A255171 (n + 1)

end A255171

/-!
# A255173: Numbers k such that 1+prime(k) and 1+prime(k+1) are the product of the same number of primes.

The programs for A255173, there is no canonical definition to state claims against.
-/

/-! ## A255173.P9434124147195469687

`eq[0, Δ[A001222(A299763(n+1))]]`
-/

namespace A255173.P9434124147195469687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A299763 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255173.P9434124147195469687

/-! ## A255173.P8978516042541719104

`eq[A023514(n+1), A023514(n+2)]+1`
-/

namespace A255173.P8978516042541719104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023514 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A255173.P8978516042541719104

/-! ## A255173.P15196655864568702025

`eq[0, Δ[A001222(A000040(n+1)+1)]]+1`
-/

namespace A255173.P15196655864568702025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A255173.P15196655864568702025

/-! ## A255173.P1419112834391478520

`eq[A001222(A299763(n+1)), A023514(n+1)]`
-/

namespace A255173.P1419112834391478520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A299763 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255173.P1419112834391478520

/-! ## A255173.P17667640561271185781

`eq[A023514(n+1), A023514(A000038(n)+n)]`
-/

namespace A255173.P17667640561271185781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023514 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255173.P17667640561271185781

/-!
# A255174: a(n) = prime(3*n) - prime(2*n).

The programs for A255174, the canonical program `A255174.P18399948904925372527` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255174 has offset 1).

The definition of A255174 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(3*(n+1))-A000040(2*(n+1))` (program `A255174.P18399948904925372527`, by `A255174.P18399948904925372527.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255174.P18399948904925372527

`A000040(3*(n+1))-A000040(2*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A255174

/-- `A000040(3*(n+1))-A000040(2*(n+1))` -/
def P18399948904925372527.Spec : Prop :=
  ∀ n, P18399948904925372527.a n = A255174 (n + 1)

theorem P18399948904925372527.correct : P18399948904925372527.Spec := by
  intro n
  simp only [A255174, Nat.add_sub_cancel]

end A255174

/-! ## A255174.P2578554358977319620

`A031336(n+1)-A031215(n+1)`
-/

namespace A255174.P2578554358977319620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) - A031215 (n + 1)

end

end A255174.P2578554358977319620

namespace A255174

/-- `A031336(n+1)-A031215(n+1)` -/
def P2578554358977319620.Spec : Prop :=
  ∀ n, P2578554358977319620.a n = A255174 (n + 1)

end A255174

/-! ## A255174.P7096104497070458099

`A275988(n+1)-A072473(n+1)`
-/

namespace A255174.P7096104497070458099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275988 (n + 1) - A072473 (n + 1)

end

end A255174.P7096104497070458099

namespace A255174

/-- `A275988(n+1)-A072473(n+1)` -/
def P7096104497070458099.Spec : Prop :=
  ∀ n, P7096104497070458099.a n = A255174 (n + 1)

theorem P7096104497070458099.correct : P7096104497070458099.Spec := by
  intro n
  simp only [A255174, Nat.add_sub_cancel, A255174.P7096104497070458099.a, A255174.P18399948904925372527.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072473, A072473.P11303799734713741739.a, A275988, A275988.P10341730878342561824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255174

/-! ## A255174.P6941373282781062683

`A031336(n+1)-(A072473(n+1)+A000040(n+1))`
-/

namespace A255174.P6941373282781062683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) - (A072473 (n + 1) + A000040 (n + 1))

end

end A255174.P6941373282781062683

namespace A255174

/-- `A031336(n+1)-(A072473(n+1)+A000040(n+1))` -/
def P6941373282781062683.Spec : Prop :=
  ∀ n, P6941373282781062683.a n = A255174 (n + 1)

theorem P6941373282781062683.correct : P6941373282781062683.Spec := by
  intro n
  simp only [A255174, Nat.add_sub_cancel, A255174.P6941373282781062683.a, A255174.P18399948904925372527.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031336, A031336.P4665773882426171462.a, A072473, A072473.P11303799734713741739.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255174

/-! ## A255174.P7380814915352556544

`A275988(n+1)-(A066066(n+1)+A000040(n+1))`
-/

namespace A255174.P7380814915352556544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275988 (n + 1) - (A066066 (n + 1) + A000040 (n + 1))

end

end A255174.P7380814915352556544

namespace A255174

/-- `A275988(n+1)-(A066066(n+1)+A000040(n+1))` -/
def P7380814915352556544.Spec : Prop :=
  ∀ n, P7380814915352556544.a n = A255174 (n + 1)

theorem P7380814915352556544.correct : P7380814915352556544.Spec := by
  intro n
  simp only [A255174, Nat.add_sub_cancel, A255174.P7380814915352556544.a, A255174.P18399948904925372527.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066066, A066066.P16664765326660587690.a, A275988, A275988.P10341730878342561824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255174

/-! ## A255174.P6877923065965392463

`A031336(n+1)-A000040(2*(n+1))`
-/

namespace A255174.P6877923065965392463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) - A000040 (2 * (n + 1))

end

end A255174.P6877923065965392463

namespace A255174

/-- `A031336(n+1)-A000040(2*(n+1))` -/
def P6877923065965392463.Spec : Prop :=
  ∀ n, P6877923065965392463.a n = A255174 (n + 1)

end A255174

/-! ## A255174.P2262083690822243875

`A031336(n+1)-A065091(2*n+1)`
-/

namespace A255174.P2262083690822243875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) - A065091 (2 * n + 1)

end

end A255174.P2262083690822243875

namespace A255174

/-- `A031336(n+1)-A065091(2*n+1)` -/
def P2262083690822243875.Spec : Prop :=
  ∀ n, P2262083690822243875.a n = A255174 (n + 1)

end A255174

/-! ## A255174.P2267039703148557458

`A031336(n+1)%A000040(2*n+2)`
-/

namespace A255174.P2267039703148557458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031336 (n + 1)) (A000040 (2 * n + 2))

end

end A255174.P2267039703148557458

namespace A255174

/-- `A031336(n+1)%A000040(2*n+2)` -/
def P2267039703148557458.Spec : Prop :=
  ∀ n, P2267039703148557458.a n = A255174 (n + 1)

end A255174

/-! ## A255174.P2277136771994688573

`A031336(n+1)-A008578(2*n+3)`
-/

namespace A255174.P2277136771994688573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) - A008578 (2 * n + 3)

end

end A255174.P2277136771994688573

namespace A255174

/-- `A031336(n+1)-A008578(2*n+3)` -/
def P2277136771994688573.Spec : Prop :=
  ∀ n, P2277136771994688573.a n = A255174 (n + 1)

end A255174

/-! ## A255174.P6960792106355018586

`A215848(3*n+1)-A031215(n+1)`
-/

namespace A255174.P6960792106355018586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (3 * n + 1) - A031215 (n + 1)

end

end A255174.P6960792106355018586

namespace A255174

/-- `A215848(3*n+1)-A031215(n+1)` -/
def P6960792106355018586.Spec : Prop :=
  ∀ n, P6960792106355018586.a n = A255174 (n + 1)

end A255174

/-! ## A255174.P3341054679940691644

`A000040(3*(n+1))-A031215(n+1)`
-/

namespace A255174.P3341054679940691644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * (n + 1)) - A031215 (n + 1)

end

end A255174.P3341054679940691644

namespace A255174

/-- `A000040(3*(n+1))-A031215(n+1)` -/
def P3341054679940691644.Spec : Prop :=
  ∀ n, P3341054679940691644.a n = A255174 (n + 1)

end A255174

/-! ## A255174.P4075488188169563324

`A065091(3*n+2)-A031215(n+1)`
-/

namespace A255174.P4075488188169563324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (3 * n + 2) - A031215 (n + 1)

end

end A255174.P4075488188169563324

namespace A255174

/-- `A065091(3*n+2)-A031215(n+1)` -/
def P4075488188169563324.Spec : Prop :=
  ∀ n, P4075488188169563324.a n = A255174 (n + 1)

end A255174

/-! ## A255174.P15497181308856592

`A000040(3*(n+1))-p?[A066207(n+1)]`
-/

namespace A255174.P15497181308856592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * (n + 1)) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255174.P15497181308856592

namespace A255174

/-- `A000040(3*(n+1))-p?[A066207(n+1)]` -/
def P15497181308856592.Spec : Prop :=
  ∀ n, P15497181308856592.a n = A255174 (n + 1)

end A255174

/-! ## A255174.P8543755228951902626

`A006005(A008486(n+1))-A006005(2*(n+1))`
-/

namespace A255174.P8543755228951902626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A008486 (n + 1)).toNat - A006005 (2 * (n + 1))

end

end A255174.P8543755228951902626

namespace A255174

/-- `A006005(A008486(n+1))-A006005(2*(n+1))` -/
def P8543755228951902626.Spec : Prop :=
  ∀ n, P8543755228951902626.a n = A255174 (n + 1)

end A255174

/-! ## A255174.P1665135933148791729

`A006093(A008585(n+1))-A006093(2*(n+1))`
-/

namespace A255174.P1665135933148791729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A008585 (n + 1)).toNat - A006093 (2 * (n + 1))

end

end A255174.P1665135933148791729

namespace A255174

/-- `A006093(A008585(n+1))-A006093(2*(n+1))` -/
def P1665135933148791729.Spec : Prop :=
  ∀ n, P1665135933148791729.a n = A255174 (n + 1)

end A255174

/-! ## A255174.P15238376829517791665

`A008864(A008486(n+1))-A008864(2*(n+1))`
-/

namespace A255174.P15238376829517791665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A008486 (n + 1)).toNat - A008864 (2 * (n + 1))

end

end A255174.P15238376829517791665

namespace A255174

/-- `A008864(A008486(n+1))-A008864(2*(n+1))` -/
def P15238376829517791665.Spec : Prop :=
  ∀ n, P15238376829517791665.a n = A255174 (n + 1)

end A255174

/-! ## A255174.P10108273182499330992

`A175225(A008585(n+1))-A175225(2*(n+1))`
-/

namespace A255174.P10108273182499330992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (A008585 (n + 1)).toNat - A175225 (2 * (n + 1))

end

end A255174.P10108273182499330992

namespace A255174

/-- `A175225(A008585(n+1))-A175225(2*(n+1))` -/
def P10108273182499330992.Spec : Prop :=
  ∀ n, P10108273182499330992.a n = A255174 (n + 1)

end A255174

/-! ## A255174.P6033262531078370320

`A065091(A001651(2*(n+1)))-A065091(2*n+1)`
-/

namespace A255174.P6033262531078370320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A001651 (2 * (n + 1))).toNat - A065091 (2 * n + 1)

end

end A255174.P6033262531078370320

namespace A255174

/-- `A065091(A001651(2*(n+1)))-A065091(2*n+1)` -/
def P6033262531078370320.Spec : Prop :=
  ∀ n, P6033262531078370320.a n = A255174 (n + 1)

end A255174

/-!
# A255175: Expansion of phi(-x) / (1 - x)^2 in powers of x where phi() is a Ramanujan theta function.

The programs for A255175, the canonical program `A255175.P6042656914842276599` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255175 has offset 0).

The definition of A255175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255175.P3162989413737858929

`∑[(-1)^floor(sqrt(n))]`
-/

namespace A255175.P3162989413737858929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255175.P3162989413737858929

namespace A255175

/-- `∑[(-1)^floor(sqrt(n))]` -/
def P3162989413737858929.Spec : Prop :=
  ∀ n, P3162989413737858929.a n = A255175 n

end A255175

/-! ## A255175.P18225784178375789180

`a(n-1)+(-1)^floor(sqrt(n))` with `a(0)=1`
-/

namespace A255175.P18225784178375789180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-1) ^ Nat.sqrt n

end

end A255175.P18225784178375789180

namespace A255175

/-- `a(n-1)+(-1)^floor(sqrt(n))` -/
def P18225784178375789180.Spec : Prop :=
  ∀ n, P18225784178375789180.a n = A255175 n

end A255175

/-! ## A255175.P13868810092226698219

`A329116(n+1)`
-/

namespace A255175.P13868810092226698219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (n + 1)

end

end A255175.P13868810092226698219

namespace A255175

/-- `A329116(n+1)` -/
def P13868810092226698219.Spec : Prop :=
  ∀ n, P13868810092226698219.a n = A255175 n

end A255175

/-! ## A255175.P8402677931524566846

`-∑[A033999(∑[char[n²]])]`
-/

namespace A255175.P8402677931524566846
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255175.P8402677931524566846

namespace A255175

/-- `-∑[A033999(∑[char[n²]])]` -/
def P8402677931524566846.Spec : Prop :=
  ∀ n, P8402677931524566846.a n = A255175 n

end A255175

/-! ## A255175.P6042656914842276599

`A339265(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A255175

/-- `A339265(n)+a(n-1)` -/
def P6042656914842276599.Spec : Prop :=
  ∀ n, P6042656914842276599.a n = A255175 n

theorem P6042656914842276599.correct : P6042656914842276599.Spec := by
  intro n
  simp only [A255175]

end A255175

/-! ## A255175.P5498492901961726310

`(A196199(n)+1)*A339265(n)`
-/

namespace A255175.P5498492901961726310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A196199 n + 1) * A339265 n

end

end A255175.P5498492901961726310

namespace A255175

/-- `(A196199(n)+1)*A339265(n)` -/
def P5498492901961726310.Spec : Prop :=
  ∀ n, P5498492901961726310.a n = A255175 n

end A255175

/-! ## A255175.P8322752000359466026

`A319290(n+1)-A319289(n+1)`
-/

namespace A255175.P8322752000359466026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 (n + 1) - A319289 (n + 1)

end

end A255175.P8322752000359466026

namespace A255175

/-- `A319290(n+1)-A319289(n+1)` -/
def P8322752000359466026.Spec : Prop :=
  ∀ n, P8322752000359466026.a n = A255175 n

end A255175

/-! ## A255175.P4159744154316742649

`A268038(n+2)+A174344(n+2)`
-/

namespace A255175.P4159744154316742649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268038 (n + 2) + A174344 (n + 2)

end

end A255175.P4159744154316742649

namespace A255175

/-- `A268038(n+2)+A174344(n+2)` -/
def P4159744154316742649.Spec : Prop :=
  ∀ n, P4159744154316742649.a n = A255175 n

end A255175

/-! ## A255175.P10365729543946128310

`A174344(n+2)-A274923(n+2)`
-/

namespace A255175.P10365729543946128310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 2) - A274923 (n + 2)

end

end A255175.P10365729543946128310

namespace A255175

/-- `A174344(n+2)-A274923(n+2)` -/
def P10365729543946128310.Spec : Prop :=
  ∀ n, P10365729543946128310.a n = A255175 n

end A255175

/-! ## A255175.P4675427814944571220

`A196199(n+1)/A339265(n+1)`
-/

namespace A255175.P4675427814944571220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196199 (n + 1) : ℚ) / (A339265 (n + 1) : ℚ)

end

end A255175.P4675427814944571220

namespace A255175

/-- `A196199(n+1)/A339265(n+1)` -/
def P4675427814944571220.Spec : Prop :=
  ∀ n, P4675427814944571220.a n = (A255175 n : ℚ)

end A255175

/-! ## A255175.P2033228864370778745

`A180714(n+1)+2*A268038(n+2)`
-/

namespace A255175.P2033228864370778745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 (n + 1) + 2 * A268038 (n + 2)

end

end A255175.P2033228864370778745

namespace A255175

/-- `A180714(n+1)+2*A268038(n+2)` -/
def P2033228864370778745.Spec : Prop :=
  ∀ n, P2033228864370778745.a n = A255175 n

end A255175

/-! ## A255175.P2933898566284811525

`2*A174344(n+2)-A180714(n+1)`
-/

namespace A255175.P2933898566284811525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174344 (n + 2) - A180714 (n + 1)

end

end A255175.P2933898566284811525

namespace A255175

/-- `2*A174344(n+2)-A180714(n+1)` -/
def P2933898566284811525.Spec : Prop :=
  ∀ n, P2933898566284811525.a n = A255175 n

end A255175

/-! ## A255175.P29730838432267934

`A180714(n+1)-2*A274923(n+2)`
-/

namespace A255175.P29730838432267934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 (n + 1) - 2 * A274923 (n + 2)

end

end A255175.P29730838432267934

namespace A255175

/-- `A180714(n+1)-2*A274923(n+2)` -/
def P29730838432267934.Spec : Prop :=
  ∀ n, P29730838432267934.a n = A255175 n

end A255175

/-! ## A255175.P5214713085896438205

`A174344(n+2)-A296030(2*(n+2))`
-/

namespace A255175.P5214713085896438205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 2) - A296030 (2 * (n + 2))

end

end A255175.P5214713085896438205

namespace A255175

/-- `A174344(n+2)-A296030(2*(n+2))` -/
def P5214713085896438205.Spec : Prop :=
  ∀ n, P5214713085896438205.a n = A255175 n

end A255175

/-! ## A255175.P14828817345982277604

`A296030(2*n+3)-A274923(n+2)`
-/

namespace A255175.P14828817345982277604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * n + 3) - A274923 (n + 2)

end

end A255175.P14828817345982277604

namespace A255175

/-- `A296030(2*n+3)-A274923(n+2)` -/
def P14828817345982277604.Spec : Prop :=
  ∀ n, P14828817345982277604.a n = A255175 n

end A255175

/-! ## A255175.P15536642571334968692

`A213088(n+2)-A319289(n+1)-A319289(n+1)`
-/

namespace A255175.P15536642571334968692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213088 (n + 2) - A319289 (n + 1) - A319289 (n + 1)

end

end A255175.P15536642571334968692

namespace A255175

/-- `A213088(n+2)-A319289(n+1)-A319289(n+1)` -/
def P15536642571334968692.Spec : Prop :=
  ∀ n, P15536642571334968692.a n = A255175 n

end A255175

/-! ## A255175.P13058291258652187239

`A274923(A164386(n+2))-A274923(n+2)`
-/

namespace A255175.P13058291258652187239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A164386 (n + 2)).toNat - A274923 (n + 2)

end

end A255175.P13058291258652187239

namespace A255175

/-- `A274923(A164386(n+2))-A274923(n+2)` -/
def P13058291258652187239.Spec : Prop :=
  ∀ n, P13058291258652187239.a n = A255175 n

end A255175

/-! ## A255175.P12551037520429956430

`A220603(n+2)-A220604(n+2)`
-/

namespace A255175.P12551037520429956430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (n + 2) - A220604 (n + 2)

end

end A255175.P12551037520429956430

namespace A255175

/-- `A220603(n+2)-A220604(n+2)` -/
def P12551037520429956430.Spec : Prop :=
  ∀ n, P12551037520429956430.a n = A255175 n

end A255175

/-! ## A255175.P15227277192211503917

`A319290(n+1)+1-A220604(n+2)`
-/

namespace A255175.P15227277192211503917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 (n + 1) + (1 - A220604 (n + 2))

end

end A255175.P15227277192211503917

namespace A255175

/-- `A319290(n+1)+1-A220604(n+2)` -/
def P15227277192211503917.Spec : Prop :=
  ∀ n, P15227277192211503917.a n = A255175 n

end A255175

/-! ## A255175.P444977631402867370

`A220603(n+2)-(A319289(n+1)+1)`
-/

namespace A255175.P444977631402867370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (n + 2) - (A319289 (n + 1) + 1)

end

end A255175.P444977631402867370

namespace A255175

/-- `A220603(n+2)-(A319289(n+1)+1)` -/
def P444977631402867370.Spec : Prop :=
  ∀ n, P444977631402867370.a n = A255175 n

end A255175

/-!
# A255176: a(n) = H_n(2,2) where H_n is the n-th hyperoperator.

The programs for A255176, the canonical program `A255176.P14158247926809576093` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255176 has offset 0).

The definition of A255176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255176.P14158247926809576093

`5-ceil(acot(n))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255176

/-- `5-ceil(acot(n))` -/
def P14158247926809576093.Spec : Prop :=
  ∀ n, P14158247926809576093.a n = A255176 n

theorem P14158247926809576093.correct : P14158247926809576093.Spec := by
  intro n
  simp only [A255176]

end A255176

/-!
# A255177: Second differences of seventh powers (A001015).

The programs for A255177, the canonical program `A255177.P6164696374415755256` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255177 has offset 0).

The definition of A255177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255177.P7625271352497197850

`∑[A255181(n)]`
-/

namespace A255177.P7625271352497197850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255177.P7625271352497197850

namespace A255177

/-- `∑[A255181(n)]` -/
def P7625271352497197850.Spec : Prop :=
  ∀ n, P7625271352497197850.a n = A255177 n

end A255177

/-! ## A255177.P15383490819249838831

`∑[∑[∑[A259907(n)]]]`
-/

namespace A255177.P15383490819249838831
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255177.P15383490819249838831

namespace A255177

/-- `∑[∑[∑[A259907(n)]]]` -/
def P15383490819249838831.Spec : Prop :=
  ∀ n, P15383490819249838831.a n = A255177 n

end A255177

/-! ## A255177.P7293851977753261314

`Δ[A022523(n)]-A255181(n+1)`
-/

namespace A255177.P7293851977753261314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A255181 (n + 1)

end

end A255177.P7293851977753261314

namespace A255177

/-- `Δ[A022523(n)]-A255181(n+1)` -/
def P7293851977753261314.Spec : Prop :=
  ∀ n, P7293851977753261314.a n = A255177 n

end A255177

/-! ## A255177.P11370790417526779997

`Δ[A022523(n)-A255181(n)]-A255181(n)`
-/

namespace A255177.P11370790417526779997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022523 n - A255181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A255181 n

end

end A255177.P11370790417526779997

namespace A255177

/-- `Δ[A022523(n)-A255181(n)]-A255181(n)` -/
def P11370790417526779997.Spec : Prop :=
  ∀ n, P11370790417526779997.a n = A255177 n

end A255177

/-! ## A255177.P5399678670621931634

`A022523(n+1)-(A255181(n+1)+A022523(n))`
-/

namespace A255177.P5399678670621931634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022523 (n + 1) - (A255181 (n + 1) + A022523 n)

end

end A255177.P5399678670621931634

namespace A255177

/-- `A022523(n+1)-(A255181(n+1)+A022523(n))` -/
def P5399678670621931634.Spec : Prop :=
  ∀ n, P5399678670621931634.a n = A255177 n

end A255177

/-! ## A255177.P6164696374415755256

`Δ[Δ[A001015(n-A057427(n))]]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A255177

/-- `Δ[Δ[A001015(n-A057427(n))]]` -/
def P6164696374415755256.Spec : Prop :=
  ∀ n, P6164696374415755256.a n = A255177 n

theorem P6164696374415755256.correct : P6164696374415755256.Spec := by
  intro n
  simp only [A255177]

end A255177

/-! ## A255177.P1237305252242410407

`Δ[Δ[A001015(n)]]-A255181(n+1)`
-/

namespace A255177.P1237305252242410407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A255181 (n + 1)

end

end A255177.P1237305252242410407

namespace A255177

/-- `Δ[Δ[A001015(n)]]-A255181(n+1)` -/
def P1237305252242410407.Spec : Prop :=
  ∀ n, P1237305252242410407.a n = A255177 n

end A255177

/-! ## A255177.P14458148747945958376

`Δ[record[Δ[A004523(n)^7]]]`
-/

namespace A255177.P14458148747945958376
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n ^ 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255177.P14458148747945958376

namespace A255177

/-- `Δ[record[Δ[A004523(n)^7]]]` -/
def P14458148747945958376.Spec : Prop :=
  ∀ n, P14458148747945958376.a n = A255177 n

end A255177

/-!
# A255178: Second differences of eighth powers (A001016).

The programs for A255178, the canonical program `A255178.P1809111956897378111` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255178 has offset 0).

The definition of A255178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255178.P1809111956897378111

`∑[A255182(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A255178

/-- `∑[A255182(n)]` -/
def P1809111956897378111.Spec : Prop :=
  ∀ n, P1809111956897378111.a n = A255178 n

theorem P1809111956897378111.correct : P1809111956897378111.Spec := by
  intro n
  simp only [A255178]

end A255178

/-! ## A255178.P1820075081418185664

`A022524(n+1)-(A255182(n+1)+A022524(n))`
-/

namespace A255178.P1820075081418185664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022524 (n + 1) - (A255182 (n + 1) + A022524 n)

end

end A255178.P1820075081418185664

namespace A255178

/-- `A022524(n+1)-(A255182(n+1)+A022524(n))` -/
def P1820075081418185664.Spec : Prop :=
  ∀ n, P1820075081418185664.a n = A255178 n

end A255178

/-! ## A255178.P17827403646628746325

`Δ[record[Δ[A085970(n+1)^8]]]`
-/

namespace A255178.P17827403646628746325
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (n + 1) ^ 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255178.P17827403646628746325

namespace A255178

/-- `Δ[record[Δ[A085970(n+1)^8]]]` -/
def P17827403646628746325.Spec : Prop :=
  ∀ n, P17827403646628746325.a n = A255178 n

end A255178

/-! ## A255178.P9147160511550857260

`Δ[record[Δ[A057353(n)²²²]]]`
-/

namespace A255178.P9147160511550857260
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A057353 n ^ 2) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255178.P9147160511550857260

namespace A255178

/-- `Δ[record[Δ[A057353(n)²²²]]]` -/
def P9147160511550857260.Spec : Prop :=
  ∀ n, P9147160511550857260.a n = A255178 n

end A255178

/-! ## A255178.P15519111795736770650

`Δ[record[Δ[A049472(n)^8]]]`
-/

namespace A255178.P15519111795736770650
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n ^ 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255178.P15519111795736770650

namespace A255178

/-- `Δ[record[Δ[A049472(n)^8]]]` -/
def P15519111795736770650.Spec : Prop :=
  ∀ n, P15519111795736770650.a n = A255178 n

end A255178

/-! ## A255178.P12689356054230331005

`Δ[record[Δ[A004523(n)²²²]]]`
-/

namespace A255178.P12689356054230331005
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A004523 n ^ 2) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255178.P12689356054230331005

namespace A255178

/-- `Δ[record[Δ[A004523(n)²²²]]]` -/
def P12689356054230331005.Spec : Prop :=
  ∀ n, P12689356054230331005.a n = A255178 n

end A255178

/-! ## A255178.P9713482124211015197

`Δ[Δ[A056847(A002061(n))²²]]`
-/

namespace A255178.P9713482124211015197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056847 (A002061 n).toNat ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255178.P9713482124211015197

namespace A255178

/-- `Δ[Δ[A056847(A002061(n))²²]]` -/
def P9713482124211015197.Spec : Prop :=
  ∀ n, P9713482124211015197.a n = A255178 n

end A255178

/-!
# A255179: Second differences of ninth powers (A001017).

The programs for A255179, the canonical program `A255179.P5015956987194778166` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255179 has offset 0).

The definition of A255179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255179.P7183007477485380364

`∑[A255183(n)]`
-/

namespace A255179.P7183007477485380364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255179.P7183007477485380364

namespace A255179

/-- `∑[A255183(n)]` -/
def P7183007477485380364.Spec : Prop :=
  ∀ n, P7183007477485380364.a n = A255179 n

end A255179

/-! ## A255179.P11896047879217855163

`Δ[A022525(n)]-A255183(n+1)`
-/

namespace A255179.P11896047879217855163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A255183 (n + 1)

end

end A255179.P11896047879217855163

namespace A255179

/-- `Δ[A022525(n)]-A255183(n+1)` -/
def P11896047879217855163.Spec : Prop :=
  ∀ n, P11896047879217855163.a n = A255179 n

end A255179

/-! ## A255179.P9866780934750969076

`Δ[A022525(n)-A255183(n)]-A255183(n)`
-/

namespace A255179.P9866780934750969076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022525 n - A255183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A255183 n

end

end A255179.P9866780934750969076

namespace A255179

/-- `Δ[A022525(n)-A255183(n)]-A255183(n)` -/
def P9866780934750969076.Spec : Prop :=
  ∀ n, P9866780934750969076.a n = A255179 n

end A255179

/-! ## A255179.P2830351086922233265

`A022525(n+1)-(A255183(n+1)+A022525(n))`
-/

namespace A255179.P2830351086922233265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022525 (n + 1) - (A255183 (n + 1) + A022525 n)

end

end A255179.P2830351086922233265

namespace A255179

/-- `A022525(n+1)-(A255183(n+1)+A022525(n))` -/
def P2830351086922233265.Spec : Prop :=
  ∀ n, P2830351086922233265.a n = A255179 n

end A255179

/-! ## A255179.P5015956987194778166

`Δ[record[Δ[A049472(n)^9]]]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A255179

/-- `Δ[record[Δ[A049472(n)^9]]]` -/
def P5015956987194778166.Spec : Prop :=
  ∀ n, P5015956987194778166.a n = A255179 n

theorem P5015956987194778166.correct : P5015956987194778166.Spec := by
  intro n
  simp only [A255179]

end A255179

/-! ## A255179.P15447672035906120828

`Δ[record[Δ[A004526(n)^9]]]`
-/

namespace A255179.P15447672035906120828
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255179.P15447672035906120828

namespace A255179

/-- `Δ[record[Δ[A004526(n)^9]]]` -/
def P15447672035906120828.Spec : Prop :=
  ∀ n, P15447672035906120828.a n = A255179 n

end A255179

/-!
# A255180: Number of partitions of n in which two summands (of each size) are designated.

The programs for A255180, there is no canonical definition to state claims against.
-/

/-! ## A255180.P9164542484559009218

`A323912(A230980(n+4))+A118168(A306319(n))`
-/

namespace A255180.P9164542484559009218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323912 (A230980 (n + 4)).toNat + A118168 (A306319 n).toNat

end

end A255180.P9164542484559009218

/-!
# A255181: Third differences of seventh powers (A001015).

The programs for A255181, the canonical program `A255181.P14353804197790131909` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255181 has offset 0).

The definition of A255181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255181.P8819478967419621070

`∑[∑[A259907(n)]]`
-/

namespace A255181.P8819478967419621070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259907 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255181.P8819478967419621070

namespace A255181

/-- `∑[∑[A259907(n)]]` -/
def P8819478967419621070.Spec : Prop :=
  ∀ n, P8819478967419621070.a n = A255181 n

end A255181

/-! ## A255181.P14353804197790131909

`Δ[Δ[Δ[A289207(n)^7]]]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A255181

/-- `Δ[Δ[Δ[A289207(n)^7]]]` -/
def P14353804197790131909.Spec : Prop :=
  ∀ n, P14353804197790131909.a n = A255181 n

theorem P14353804197790131909.correct : P14353804197790131909.Spec := by
  intro n
  simp only [A255181]

end A255181

/-!
# A255182: Third differences of eighth powers (A001016).

The programs for A255182, the canonical program `A255182.P7714813183367637456` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255182 has offset 0).

The definition of A255182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255182.P7714813183367637456

`Δ[Δ[Δ[A289207(n)^8]]]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A255182

/-- `Δ[Δ[Δ[A289207(n)^8]]]` -/
def P7714813183367637456.Spec : Prop :=
  ∀ n, P7714813183367637456.a n = A255182 n

theorem P7714813183367637456.correct : P7714813183367637456.Spec := by
  intro n
  simp only [A255182]

end A255182

/-!
# A255184: 25-gonal numbers: a(n) = n*(23*n-21)/2.

The programs for A255184, the canonical program `A255184.P18276031424336409620` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255184 has offset 0).

The definition of A255184 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(23*n-21)/2` (program `A255184.P12653567922317854865`, by `A255184.P12653567922317854865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255184.P12653567922317854865

`n*(23*n-21)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255184.P12653567922317854865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((23 * n : ℤ) - 21) : ℚ) / 2

end

end A255184.P12653567922317854865

namespace A255184

/-- `n*(23*n-21)/2` -/
def P12653567922317854865.Spec : Prop :=
  ∀ n, P12653567922317854865.a n = (A255184 n : ℚ)

theorem P12653567922317854865.correct : P12653567922317854865.Spec := by
  intro n
  simp only [A255184, Nat.add_sub_cancel, A255184.P12653567922317854865.a, A255184.P18276031424336409620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255184

/-! ## A255184.P12750638740789400340

`∑[a(n-1)+23]` with `a(0)=0, a(1)=1`
-/

namespace A255184.P12750638740789400340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255184.P12750638740789400340

namespace A255184

/-- `∑[a(n-1)+23]` -/
def P12750638740789400340.Spec : Prop :=
  ∀ n, (P12750638740789400340.a n : ℤ) = A255184 n

end A255184

/-! ## A255184.P18276031424336409620

`C(n, 2)+n*(11*n-10)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255184

/-- `C(n, 2)+n*(11*n-10)` -/
def P18276031424336409620.Spec : Prop :=
  ∀ n, P18276031424336409620.a n = A255184 n

theorem P18276031424336409620.correct : P18276031424336409620.Spec := by
  intro n
  simp only [A255184]

end A255184

/-! ## A255184.P12266311376176588560

`A051876(n)+C(n, 2)`
-/

namespace A255184.P12266311376176588560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051876 n + (Nat.choose n 2 : ℤ)

end

end A255184.P12266311376176588560

namespace A255184

/-- `A051876(n)+C(n, 2)` -/
def P12266311376176588560.Spec : Prop :=
  ∀ n, P12266311376176588560.a n = A255184 n

theorem P12266311376176588560.correct : P12266311376176588560.Spec := by
  intro n
  simp only [A255184, Nat.add_sub_cancel, A255184.P12266311376176588560.a, A255184.P18276031424336409620.a, A051876, A051876.P7910470835603757038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255184

/-! ## A255184.P11432883515345515883

`A255185(n)-C(n, 2)`
-/

namespace A255184.P11432883515345515883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n - (Nat.choose n 2 : ℤ)

end

end A255184.P11432883515345515883

namespace A255184

/-- `A255185(n)-C(n, 2)` -/
def P11432883515345515883.Spec : Prop :=
  ∀ n, P11432883515345515883.a n = A255184 n

theorem P11432883515345515883.correct : P11432883515345515883.Spec := by
  intro n
  simp only [A255184, Nat.add_sub_cancel, A255184.P11432883515345515883.a, A255184.P18276031424336409620.a, A255185, A255185.P14062524724034212959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255184

/-! ## A255184.P9762863483591812926

`A153783(n)-2*n²`
-/

namespace A255184.P9762863483591812926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153783 n - (2 * n ^ 2 : ℤ)

end

end A255184.P9762863483591812926

namespace A255184

/-- `A153783(n)-2*n²` -/
def P9762863483591812926.Spec : Prop :=
  ∀ n, P9762863483591812926.a n = A255184 n

end A255184

/-! ## A255184.P14005553915070823607

`2*A051866(n)-∑[n]`
-/

namespace A255184.P14005553915070823607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051866 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255184.P14005553915070823607

namespace A255184

/-- `2*A051866(n)-∑[n]` -/
def P14005553915070823607.Spec : Prop :=
  ∀ n, P14005553915070823607.a n = A255184 n

end A255184

/-! ## A255184.P2388471989557146620

`n²+A051875(n)-n`
-/

namespace A255184.P2388471989557146620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A051875 n - (n : ℤ))

end

end A255184.P2388471989557146620

namespace A255184

/-- `n²+A051875(n)-n` -/
def P2388471989557146620.Spec : Prop :=
  ∀ n, P2388471989557146620.a n = A255184 n

end A255184

/-! ## A255184.P3955685520316364248

`A255186(n)+n-n²`
-/

namespace A255184.P3955685520316364248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255186 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A255184.P3955685520316364248

namespace A255184

/-- `A255186(n)+n-n²` -/
def P3955685520316364248.Spec : Prop :=
  ∀ n, P3955685520316364248.a n = A255184 n

theorem P3955685520316364248.correct : P3955685520316364248.Spec := by
  intro n
  simp only [A255184, Nat.add_sub_cancel, A255184.P3955685520316364248.a, A255184.P18276031424336409620.a, A255186, A255186.P10877467608861498057.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255184

/-! ## A255184.P4653574249026475766

`A152767(n)-(∑[n]+n)`
-/

namespace A255184.P4653574249026475766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152767 n - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A255184.P4653574249026475766

namespace A255184

/-- `A152767(n)-(∑[n]+n)` -/
def P4653574249026475766.Spec : Prop :=
  ∀ n, P4653574249026475766.a n = A255184 n

end A255184

/-! ## A255184.P12066564538858312260

`A226491(n)+n*(n-2)`
-/

namespace A255184.P12066564538858312260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226491 n + (n : ℤ) * ((n : ℤ) - 2)

end

end A255184.P12066564538858312260

namespace A255184

/-- `A226491(n)+n*(n-2)` -/
def P12066564538858312260.Spec : Prop :=
  ∀ n, P12066564538858312260.a n = A255184 n

end A255184

/-! ## A255184.P17484955600980776353

`A153785(n)-n*(n+3)`
-/

namespace A255184.P17484955600980776353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153785 n - (n * (n + 3) : ℤ)

end

end A255184.P17484955600980776353

namespace A255184

/-- `A153785(n)-n*(n+3)` -/
def P17484955600980776353.Spec : Prop :=
  ∀ n, P17484955600980776353.a n = A255184 n

end A255184

/-! ## A255184.P1585979947479782586

`A064200(n)+2*n-∑[n]`
-/

namespace A255184.P1585979947479782586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + (2 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255184.P1585979947479782586

namespace A255184

/-- `A064200(n)+2*n-∑[n]` -/
def P1585979947479782586.Spec : Prop :=
  ∀ n, P1585979947479782586.a n = A255184 n

end A255184

/-! ## A255184.P17548409678989940157

`A000027(23*(n-1)+1)+a(n-1)` with `a(0)=0`
-/

namespace A255184.P17548409678989940157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000027 (23 * ((n : ℤ) - 1) + 1).toNat + a (n - 1)

end

end A255184.P17548409678989940157

namespace A255184

/-- `A000027(23*(n-1)+1)+a(n-1)` -/
def P17548409678989940157.Spec : Prop :=
  ∀ n, P17548409678989940157.a n = A255184 n

end A255184

/-! ## A255184.P2169613513298826196

`A161680(n)+A051876(n)`
-/

namespace A255184.P2169613513298826196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A051876 n

end

end A255184.P2169613513298826196

namespace A255184

/-- `A161680(n)+A051876(n)` -/
def P2169613513298826196.Spec : Prop :=
  ∀ n, P2169613513298826196.a n = A255184 n

end A255184

/-! ## A255184.P1649122993223489162

`A226490(n)+A014107(n)`
-/

namespace A255184.P1649122993223489162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226490 n + A014107 n

end

end A255184.P1649122993223489162

namespace A255184

/-- `A226490(n)+A014107(n)` -/
def P1649122993223489162.Spec : Prop :=
  ∀ n, P1649122993223489162.a n = A255184 n

end A255184

/-! ## A255184.P5074777661647621038

`A326725(n)+A152995(n)`
-/

namespace A255184.P5074777661647621038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A152995 n

end

end A255184.P5074777661647621038

namespace A255184

/-- `A326725(n)+A152995(n)` -/
def P5074777661647621038.Spec : Prop :=
  ∀ n, P5074777661647621038.a n = A255184 n

end A255184

/-! ## A255184.P5600771586925817812

`A022280(n)-A008592(n)`
-/

namespace A255184.P5600771586925817812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n - A008592 n

end

end A255184.P5600771586925817812

namespace A255184

/-- `A022280(n)-A008592(n)` -/
def P5600771586925817812.Spec : Prop :=
  ∀ n, P5600771586925817812.a n = A255184 n

end A255184

/-! ## A255184.P14463701320125112543

`A022281(n)-A008593(n)`
-/

namespace A255184.P14463701320125112543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n - A008593 n

end

end A255184.P14463701320125112543

namespace A255184

/-- `A022281(n)-A008593(n)` -/
def P14463701320125112543.Spec : Prop :=
  ∀ n, P14463701320125112543.a n = A255184 n

end A255184

/-! ## A255184.P11222123666314552067

`A028994(n)-A027468(n)`
-/

namespace A255184.P11222123666314552067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n - A027468 n

end

end A255184.P11222123666314552067

namespace A255184

/-- `A028994(n)-A027468(n)` -/
def P11222123666314552067.Spec : Prop :=
  ∀ n, P11222123666314552067.a n = A255184 n

end A255184

/-!
# A255185: 26-gonal numbers: a(n) = n*(12*n-11).

The programs for A255185, the canonical program `A255185.P14062524724034212959` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255185 has offset 0).

The definition of A255185 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(12*n-11)` (program `A255185.P14062524724034212959`, by `A255185.P14062524724034212959.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255185.P14062524724034212959

`n*(12*n-11)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255185

/-- `n*(12*n-11)` -/
def P14062524724034212959.Spec : Prop :=
  ∀ n, P14062524724034212959.a n = A255185 n

theorem P14062524724034212959.correct : P14062524724034212959.Spec := by
  intro n
  simp only [A255185]

end A255185

/-! ## A255185.P4749819217485821872

`24*C(n, 2)+n`
-/

namespace A255185.P4749819217485821872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * Nat.choose n 2 + n

end

end A255185.P4749819217485821872

namespace A255185

/-- `24*C(n, 2)+n` -/
def P4749819217485821872.Spec : Prop :=
  ∀ n, (P4749819217485821872.a n : ℤ) = A255185 n

theorem P4749819217485821872.correct : P4749819217485821872.Spec := by
  intro n
  simp only [A255185, Nat.add_sub_cancel, A255185.P4749819217485821872.a, A255185.P14062524724034212959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255185

/-! ## A255185.P12434397375018083686

`∑[a(n-1)+24]` with `a(0)=0, a(1)=1`
-/

namespace A255185.P12434397375018083686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255185.P12434397375018083686

namespace A255185

/-- `∑[a(n-1)+24]` -/
def P12434397375018083686.Spec : Prop :=
  ∀ n, (P12434397375018083686.a n : ℤ) = A255185 n

end A255185

/-! ## A255185.P421686169660317008

`A064200(n)+n`
-/

namespace A255185.P421686169660317008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + (n : ℤ)

end

end A255185.P421686169660317008

namespace A255185

/-- `A064200(n)+n` -/
def P421686169660317008.Spec : Prop :=
  ∀ n, P421686169660317008.a n = A255185 n

theorem P421686169660317008.correct : P421686169660317008.Spec := by
  intro n
  simp only [A255185, Nat.add_sub_cancel, A255185.P421686169660317008.a, A255185.P14062524724034212959.a, A064200, A064200.P18272209519029569283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255185

/-! ## A255185.P8817331337955872518

`2*A051866(n)-n`
-/

namespace A255185.P8817331337955872518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051866 n - (n : ℤ)

end

end A255185.P8817331337955872518

namespace A255185

/-- `2*A051866(n)-n` -/
def P8817331337955872518.Spec : Prop :=
  ∀ n, P8817331337955872518.a n = A255185 n

theorem P8817331337955872518.correct : P8817331337955872518.Spec := by
  intro n
  simp only [A255185, Nat.add_sub_cancel, A255185.P8817331337955872518.a, A255185.P14062524724034212959.a, A051866, A051866.P7037994286834974710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255185

/-! ## A255185.P6967896211617146576

`A152767(n)-2*n`
-/

namespace A255185.P6967896211617146576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152767 n - (2 * n : ℤ)

end

end A255185.P6967896211617146576

namespace A255185

/-- `A152767(n)-2*n` -/
def P6967896211617146576.Spec : Prop :=
  ∀ n, P6967896211617146576.a n = A255185 n

theorem P6967896211617146576.correct : P6967896211617146576.Spec := by
  intro n
  simp only [A255185, Nat.add_sub_cancel, A255185.P6967896211617146576.a, A255185.P14062524724034212959.a, A152767, A152767.P6665928962877378068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255185

/-! ## A255185.P17957759621811891776

`(A261343(n)+n)/2`
-/

namespace A255185.P17957759621811891776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261343 n + (n : ℤ) : ℚ) / 2

end

end A255185.P17957759621811891776

namespace A255185

/-- `(A261343(n)+n)/2` -/
def P17957759621811891776.Spec : Prop :=
  ∀ n, P17957759621811891776.a n = (A255185 n : ℚ)

theorem P17957759621811891776.correct : P17957759621811891776.Spec := by
  intro n
  simp only [A255185, Nat.add_sub_cancel, A255185.P17957759621811891776.a, A255185.P14062524724034212959.a, A261343, A261343.P1195641689784462972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255185

/-! ## A255185.P2073050090026208002

`A153794(n)-3*n`
-/

namespace A255185.P2073050090026208002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153794 n - (3 * n : ℤ)

end

end A255185.P2073050090026208002

namespace A255185

/-- `A153794(n)-3*n` -/
def P2073050090026208002.Spec : Prop :=
  ∀ n, P2073050090026208002.a n = A255185 n

theorem P2073050090026208002.correct : P2073050090026208002.Spec := by
  intro n
  simp only [A255185, Nat.add_sub_cancel, A255185.P2073050090026208002.a, A255185.P14062524724034212959.a, A153794, A153794.P7722697537094786455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255185

/-! ## A255185.P3696863911934203994

`A152746(n)-5*n`
-/

namespace A255185.P3696863911934203994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152746 n - (5 * n : ℤ)

end

end A255185.P3696863911934203994

namespace A255185

/-- `A152746(n)-5*n` -/
def P3696863911934203994.Spec : Prop :=
  ∀ n, P3696863911934203994.a n = A255185 n

theorem P3696863911934203994.correct : P3696863911934203994.Spec := by
  intro n
  simp only [A255185, Nat.add_sub_cancel, A255185.P3696863911934203994.a, A255185.P14062524724034212959.a, A152746, A152746.P17154373183025308854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255185

/-! ## A255185.P17946953514530917468

`A255184(n)+C(n, 2)`
-/

namespace A255185.P17946953514530917468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255184 n + (Nat.choose n 2 : ℤ)

end

end A255185.P17946953514530917468

namespace A255185

/-- `A255184(n)+C(n, 2)` -/
def P17946953514530917468.Spec : Prop :=
  ∀ n, P17946953514530917468.a n = A255185 n

theorem P17946953514530917468.correct : P17946953514530917468.Spec := by
  intro n
  simp only [A255185, Nat.add_sub_cancel, A255185.P17946953514530917468.a, A255185.P14062524724034212959.a, A255184, A255184.P18276031424336409620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255185

/-! ## A255185.P3493662962837185493

`n²+A051876(n)-n`
-/

namespace A255185.P3493662962837185493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A051876 n - (n : ℤ))

end

end A255185.P3493662962837185493

namespace A255185

/-- `n²+A051876(n)-n` -/
def P3493662962837185493.Spec : Prop :=
  ∀ n, P3493662962837185493.a n = A255185 n

theorem P3493662962837185493.correct : P3493662962837185493.Spec := by
  intro n
  simp only [A255185, Nat.add_sub_cancel, A255185.P3493662962837185493.a, A255185.P14062524724034212959.a, A051876, A051876.P7910470835603757038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255185

/-! ## A255185.P1118348405707118712

`A161935(n)+n-n²`
-/

namespace A255185.P1118348405707118712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161935 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A255185.P1118348405707118712

namespace A255185

/-- `A161935(n)+n-n²` -/
def P1118348405707118712.Spec : Prop :=
  ∀ n, P1118348405707118712.a n = A255185 n

theorem P1118348405707118712.correct : P1118348405707118712.Spec := by
  intro n
  simp only [A255185, Nat.add_sub_cancel, A255185.P1118348405707118712.a, A255185.P14062524724034212959.a, A161935, A161935.P14335868775891492350.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255185

/-! ## A255185.P8891654138265032998

`A255186(n)+n-∑[n]`
-/

namespace A255185.P8891654138265032998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255186 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A255185.P8891654138265032998

namespace A255185

/-- `A255186(n)+n-∑[n]` -/
def P8891654138265032998.Spec : Prop :=
  ∀ n, P8891654138265032998.a n = A255185 n

end A255185

/-! ## A255185.P13881185294656454587

`2*A103115(n)+n+2`
-/

namespace A255185.P13881185294656454587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103115 n + (n + 2 : ℤ)

end

end A255185.P13881185294656454587

namespace A255185

/-- `2*A103115(n)+n+2` -/
def P13881185294656454587.Spec : Prop :=
  ∀ n, P13881185294656454587.a n = A255185 n

theorem P13881185294656454587.correct : P13881185294656454587.Spec := by
  intro n
  simp only [A255185, Nat.add_sub_cancel, A255185.P13881185294656454587.a, A255185.P14062524724034212959.a, A103115, A103115.P1586163232865090376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255185

/-! ## A255185.P12225059962681536921

`A143855(n+1)-Δ[n²]²`
-/

namespace A255185.P12225059962681536921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143855 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A255185.P12225059962681536921

namespace A255185

/-- `A143855(n+1)-Δ[n²]²` -/
def P12225059962681536921.Spec : Prop :=
  ∀ n, P12225059962681536921.a n = A255185 n

end A255185

/-! ## A255185.P3123915159879206833

`A103115(n)+A033568(n)`
-/

namespace A255185.P3123915159879206833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 n + A033568 n

end

end A255185.P3123915159879206833

namespace A255185

/-- `A103115(n)+A033568(n)` -/
def P3123915159879206833.Spec : Prop :=
  ∀ n, P3123915159879206833.a n = A255185 n

theorem P3123915159879206833.correct : P3123915159879206833.Spec := by
  intro n
  simp only [A255185, Nat.add_sub_cancel, A255185.P3123915159879206833.a, A255185.P14062524724034212959.a, A033568, A033568.P8873267953823805199.a, A103115, A103115.P1586163232865090376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255185

/-! ## A255185.P18036583224268292062

`A152965(n)+A014107(n)`
-/

namespace A255185.P18036583224268292062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152965 n + A014107 n

end

end A255185.P18036583224268292062

namespace A255185

/-- `A152965(n)+A014107(n)` -/
def P18036583224268292062.Spec : Prop :=
  ∀ n, P18036583224268292062.a n = A255185 n

theorem P18036583224268292062.correct : P18036583224268292062.Spec := by
  intro n
  simp only [A255185, Nat.add_sub_cancel, A255185.P18036583224268292062.a, A255185.P14062524724034212959.a, A014107, A014107.P7046062318563033165.a, A152965, A152965.P8792226006321906066.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255185

/-! ## A255185.P13175121545510361598

`A152997(n)+A067998(n)`
-/

namespace A255185.P13175121545510361598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152997 n + A067998 n

end

end A255185.P13175121545510361598

namespace A255185

/-- `A152997(n)+A067998(n)` -/
def P13175121545510361598.Spec : Prop :=
  ∀ n, P13175121545510361598.a n = A255185 n

theorem P13175121545510361598.correct : P13175121545510361598.Spec := by
  intro n
  simp only [A255185, Nat.add_sub_cancel, A255185.P13175121545510361598.a, A255185.P14062524724034212959.a, A067998, A067998.P12062298001294777272.a, A152997, A152997.P11215865166906993200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255185

/-! ## A255185.P2689333850661135819

`A255184(n)+A161680(n)`
-/

namespace A255185.P2689333850661135819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255184 n + A161680 n

end

end A255185.P2689333850661135819

namespace A255185

/-- `A255184(n)+A161680(n)` -/
def P2689333850661135819.Spec : Prop :=
  ∀ n, P2689333850661135819.a n = A255185 n

theorem P2689333850661135819.correct : P2689333850661135819.Spec := by
  intro n
  simp only [A255185, Nat.add_sub_cancel, A255185.P2689333850661135819.a, A255185.P14062524724034212959.a, A161680, A161680.P17206074215489759881.a, A255184, A255184.P18276031424336409620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255185

/-! ## A255185.P9458296190816442181

`A326725(n)+A226490(n)`
-/

namespace A255185.P9458296190816442181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A226490 n

end

end A255185.P9458296190816442181

namespace A255185

/-- `A326725(n)+A226490(n)` -/
def P9458296190816442181.Spec : Prop :=
  ∀ n, P9458296190816442181.a n = A255185 n

end A255185

/-!
# A255186: 27-gonal numbers: a(n) = n*(25*n-23)/2.

The programs for A255186, the canonical program `A255186.P10877467608861498057` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255186 has offset 0).

The definition of A255186 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(25*n-23)/2` (program `A255186.P800441571666304539`, by `A255186.P800441571666304539.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255186.P800441571666304539

`n*(25*n-23)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255186.P800441571666304539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((25 * n : ℤ) - 23) : ℚ) / 2

end

end A255186.P800441571666304539

namespace A255186

/-- `n*(25*n-23)/2` -/
def P800441571666304539.Spec : Prop :=
  ∀ n, P800441571666304539.a n = (A255186 n : ℚ)

theorem P800441571666304539.correct : P800441571666304539.Spec := by
  intro n
  simp only [A255186, Nat.add_sub_cancel, A255186.P800441571666304539.a, A255186.P10877467608861498057.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255186

/-! ## A255186.P5987820671209072483

`25*C(n, 2)+n`
-/

namespace A255186.P5987820671209072483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * Nat.choose n 2 + n

end

end A255186.P5987820671209072483

namespace A255186

/-- `25*C(n, 2)+n` -/
def P5987820671209072483.Spec : Prop :=
  ∀ n, (P5987820671209072483.a n : ℤ) = A255186 n

theorem P5987820671209072483.correct : P5987820671209072483.Spec := by
  intro n
  simp only [A255186, Nat.add_sub_cancel, A255186.P5987820671209072483.a, A255186.P10877467608861498057.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255186

/-! ## A255186.P15548359101182991810

`∑[a(n-1)+25]` with `a(0)=0, a(1)=1`
-/

namespace A255186.P15548359101182991810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255186.P15548359101182991810

namespace A255186

/-- `∑[a(n-1)+25]` -/
def P15548359101182991810.Spec : Prop :=
  ∀ n, (P15548359101182991810.a n : ℤ) = A255186 n

end A255186

/-! ## A255186.P1397465564016811421

`∑[n]+lcm(2, (n-1)*12*n)`
-/

namespace A255186.P1397465564016811421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.lcm 2 (((n : ℤ) - 1) * (12 * n : ℤ))

end

end A255186.P1397465564016811421

namespace A255186

/-- `∑[n]+lcm(2, (n-1)*12*n)` -/
def P1397465564016811421.Spec : Prop :=
  ∀ n, (P1397465564016811421.a n : ℤ) = A255186 n

end A255186

/-! ## A255186.P7592112202836530859

`n-5*∑[a(n-1)-5]` with `a(0)=0, a(1)=0`
-/

namespace A255186.P7592112202836530859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255186.P7592112202836530859

namespace A255186

/-- `n-5*∑[a(n-1)-5]` -/
def P7592112202836530859.Spec : Prop :=
  ∀ n, P7592112202836530859.a n = A255186 n

end A255186

/-! ## A255186.P10877467608861498057

`C(5*n, 2)-7*n-n-n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255186

/-- `C(5*n, 2)-7*n-n-n` -/
def P10877467608861498057.Spec : Prop :=
  ∀ n, P10877467608861498057.a n = A255186 n

theorem P10877467608861498057.correct : P10877467608861498057.Spec := by
  intro n
  simp only [A255186]

end A255186

/-! ## A255186.P9338763352773485792

`A064200(n)+∑[n]`
-/

namespace A255186.P9338763352773485792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255186.P9338763352773485792

namespace A255186

/-- `A064200(n)+∑[n]` -/
def P9338763352773485792.Spec : Prop :=
  ∀ n, P9338763352773485792.a n = A255186 n

end A255186

/-! ## A255186.P13029396666473936483

`A153785(n)-4*n`
-/

namespace A255186.P13029396666473936483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153785 n - (4 * n : ℤ)

end

end A255186.P13029396666473936483

namespace A255186

/-- `A153785(n)-4*n` -/
def P13029396666473936483.Spec : Prop :=
  ∀ n, P13029396666473936483.a n = A255186 n

end A255186

/-! ## A255186.P13294419423707197261

`A255185(n)+C(n, 2)`
-/

namespace A255186.P13294419423707197261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n + (Nat.choose n 2 : ℤ)

end

end A255186.P13294419423707197261

namespace A255186

/-- `A255185(n)+C(n, 2)` -/
def P13294419423707197261.Spec : Prop :=
  ∀ n, P13294419423707197261.a n = A255186 n

theorem P13294419423707197261.correct : P13294419423707197261.Spec := by
  intro n
  simp only [A255186, Nat.add_sub_cancel, A255186.P13294419423707197261.a, A255186.P10877467608861498057.a, A255185, A255185.P14062524724034212959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255186

/-! ## A255186.P7238177106048253798

`2*A051867(n)-∑[n]`
-/

namespace A255186.P7238177106048253798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051867 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255186.P7238177106048253798

namespace A255186

/-- `2*A051867(n)-∑[n]` -/
def P7238177106048253798.Spec : Prop :=
  ∀ n, P7238177106048253798.a n = A255186 n

end A255186

/-! ## A255186.P5532064560452976036

`A153783(n)-∑[2*n]`
-/

namespace A255186.P5532064560452976036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153783 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255186.P5532064560452976036

namespace A255186

/-- `A153783(n)-∑[2*n]` -/
def P5532064560452976036.Spec : Prop :=
  ∀ n, P5532064560452976036.a n = A255186 n

end A255186

/-! ## A255186.P2318253489964397649

`n²+A255184(n)-n`
-/

namespace A255186.P2318253489964397649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A255184 n - (n : ℤ))

end

end A255186.P2318253489964397649

namespace A255186

/-- `n²+A255184(n)-n` -/
def P2318253489964397649.Spec : Prop :=
  ∀ n, P2318253489964397649.a n = A255186 n

theorem P2318253489964397649.correct : P2318253489964397649.Spec := by
  intro n
  simp only [A255186, Nat.add_sub_cancel, A255186.P2318253489964397649.a, A255186.P10877467608861498057.a, A255184, A255184.P18276031424336409620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255186

/-! ## A255186.P2188861480410737826

`A255187(n)+n-n²`
-/

namespace A255186.P2188861480410737826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255187 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A255186.P2188861480410737826

namespace A255186

/-- `A255187(n)+n-n²` -/
def P2188861480410737826.Spec : Prop :=
  ∀ n, P2188861480410737826.a n = A255186 n

theorem P2188861480410737826.correct : P2188861480410737826.Spec := by
  intro n
  simp only [A255186, Nat.add_sub_cancel, A255186.P2188861480410737826.a, A255186.P10877467608861498057.a, A255187, A255187.P5987633574955875604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255186

/-! ## A255186.P13665868962368541207

`A161935(n)+n-∑[n]`
-/

namespace A255186.P13665868962368541207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161935 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A255186.P13665868962368541207

namespace A255186

/-- `A161935(n)+n-∑[n]` -/
def P13665868962368541207.Spec : Prop :=
  ∀ n, P13665868962368541207.a n = A255186 n

end A255186

/-! ## A255186.P8163748230834098785

`A226491(n)+A014107(n)`
-/

namespace A255186.P8163748230834098785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226491 n + A014107 n

end

end A255186.P8163748230834098785

namespace A255186

/-- `A226491(n)+A014107(n)` -/
def P8163748230834098785.Spec : Prop :=
  ∀ n, P8163748230834098785.a n = A255186 n

end A255186

/-! ## A255186.P4265504622179697990

`A263231(n)+A008590(n)`
-/

namespace A255186.P4265504622179697990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263231 n + A008590 n

end

end A255186.P4265504622179697990

namespace A255186

/-- `A263231(n)+A008590(n)` -/
def P4265504622179697990.Spec : Prop :=
  ∀ n, P4265504622179697990.a n = A255186 n

end A255186

/-! ## A255186.P9078963862559167110

`A255185(n)+A161680(n)`
-/

namespace A255186.P9078963862559167110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n + A161680 n

end

end A255186.P9078963862559167110

namespace A255186

/-- `A255185(n)+A161680(n)` -/
def P9078963862559167110.Spec : Prop :=
  ∀ n, P9078963862559167110.a n = A255186 n

theorem P9078963862559167110.correct : P9078963862559167110.Spec := by
  intro n
  simp only [A255186, Nat.add_sub_cancel, A255186.P9078963862559167110.a, A255186.P10877467608861498057.a, A161680, A161680.P17206074215489759881.a, A255185, A255185.P14062524724034212959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255186

/-! ## A255186.P15068254652614652142

`A326725(n)+A152965(n)`
-/

namespace A255186.P15068254652614652142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A152965 n

end

end A255186.P15068254652614652142

namespace A255186

/-- `A326725(n)+A152965(n)` -/
def P15068254652614652142.Spec : Prop :=
  ∀ n, P15068254652614652142.a n = A255186 n

end A255186

/-! ## A255186.P8505295550160459752

`A022282(n)-A008593(n)`
-/

namespace A255186.P8505295550160459752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022282 n - A008593 n

end

end A255186.P8505295550160459752

namespace A255186

/-- `A022282(n)-A008593(n)` -/
def P8505295550160459752.Spec : Prop :=
  ∀ n, P8505295550160459752.a n = A255186 n

end A255186

/-! ## A255186.P3593497371215357988

`A022283(n)-A008594(n)`
-/

namespace A255186.P3593497371215357988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022283 n - A008594 n

end

end A255186.P3593497371215357988

namespace A255186

/-- `A022283(n)-A008594(n)` -/
def P3593497371215357988.Spec : Prop :=
  ∀ n, P3593497371215357988.a n = A255186 n

end A255186

/-!
# A255187: 29-gonal numbers: a(n) = n*(27*n-25)/2.

The programs for A255187, the canonical program `A255187.P5987633574955875604` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255187 has offset 0).

The definition of A255187 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(27*n-25)/2` (program `A255187.P12082363066807181798`, by `A255187.P12082363066807181798.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255187.P12082363066807181798

`n*(27*n-25)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255187.P12082363066807181798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((27 * n : ℤ) - 25) : ℚ) / 2

end

end A255187.P12082363066807181798

namespace A255187

/-- `n*(27*n-25)/2` -/
def P12082363066807181798.Spec : Prop :=
  ∀ n, P12082363066807181798.a n = (A255187 n : ℚ)

theorem P12082363066807181798.correct : P12082363066807181798.Spec := by
  intro n
  simp only [A255187, Nat.add_sub_cancel, A255187.P12082363066807181798.a, A255187.P5987633574955875604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255187

/-! ## A255187.P7556834610245645294

`27*C(n, 2)+n`
-/

namespace A255187.P7556834610245645294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * Nat.choose n 2 + n

end

end A255187.P7556834610245645294

namespace A255187

/-- `27*C(n, 2)+n` -/
def P7556834610245645294.Spec : Prop :=
  ∀ n, (P7556834610245645294.a n : ℤ) = A255187 n

theorem P7556834610245645294.correct : P7556834610245645294.Spec := by
  intro n
  simp only [A255187, Nat.add_sub_cancel, A255187.P7556834610245645294.a, A255187.P5987633574955875604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255187

/-! ## A255187.P17230154165679499402

`∑[a(n-1)+27]` with `a(0)=0, a(1)=1`
-/

namespace A255187.P17230154165679499402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255187.P17230154165679499402

namespace A255187

/-- `∑[a(n-1)+27]` -/
def P17230154165679499402.Spec : Prop :=
  ∀ n, (P17230154165679499402.a n : ℤ) = A255187 n

end A255187

/-! ## A255187.P10243872097617926556

`∑[2*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=28`
-/

namespace A255187.P10243872097617926556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 28] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255187.P10243872097617926556

namespace A255187

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P10243872097617926556.Spec : Prop :=
  ∀ n, P10243872097617926556.a n = A255187 n

end A255187

/-! ## A255187.P5987633574955875604

`3*(C(3*n, 2)-2*n)-2*n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255187

/-- `3*(C(3*n, 2)-2*n)-2*n` -/
def P5987633574955875604.Spec : Prop :=
  ∀ n, P5987633574955875604.a n = A255187 n

theorem P5987633574955875604.correct : P5987633574955875604.Spec := by
  intro n
  simp only [A255187]

end A255187

/-! ## A255187.P6954338890269835283

`A153783(n)-2*n`
-/

namespace A255187.P6954338890269835283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153783 n - (2 * n : ℤ)

end

end A255187.P6954338890269835283

namespace A255187

/-- `A153783(n)-2*n` -/
def P6954338890269835283.Spec : Prop :=
  ∀ n, P6954338890269835283.a n = A255187 n

end A255187

/-! ## A255187.P3004991184811404421

`abs(∑[n]-A254474(n)-n)`
-/

namespace A255187.P3004991184811404421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A254474 n - (n : ℤ)|

end

end A255187.P3004991184811404421

namespace A255187

/-- `abs(∑[n]-A254474(n)-n)` -/
def P3004991184811404421.Spec : Prop :=
  ∀ n, P3004991184811404421.a n = A255187 n

end A255187

/-! ## A255187.P10573909490284652140

`n*(15*n-9)-A140090(n)`
-/

namespace A255187.P10573909490284652140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((15 * n : ℤ) - 9) - A140090 n

end

end A255187.P10573909490284652140

namespace A255187

/-- `n*(15*n-9)-A140090(n)` -/
def P10573909490284652140.Spec : Prop :=
  ∀ n, P10573909490284652140.a n = A255187 n

end A255187

/-! ## A255187.P11289122297615437402

`A064200(n)+A000326(n)`
-/

namespace A255187.P11289122297615437402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + A000326 n

end

end A255187.P11289122297615437402

namespace A255187

/-- `A064200(n)+A000326(n)` -/
def P11289122297615437402.Spec : Prop :=
  ∀ n, P11289122297615437402.a n = A255187 n

theorem P11289122297615437402.correct : P11289122297615437402.Spec := by
  intro n
  simp only [A255187, Nat.add_sub_cancel, A255187.P11289122297615437402.a, A255187.P5987633574955875604.a, A000326, A000326.P15785277619453972366.a, A064200, A064200.P18272209519029569283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255187

/-! ## A255187.P74346236657830691

`A263231(n)+A028563(n)`
-/

namespace A255187.P74346236657830691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263231 n + A028563 n

end

end A255187.P74346236657830691

namespace A255187

/-- `A263231(n)+A028563(n)` -/
def P74346236657830691.Spec : Prop :=
  ∀ n, P74346236657830691.a n = A255187 n

end A255187

/-! ## A255187.P18156381620462305213

`A161935(n)+A161680(n)`
-/

namespace A255187.P18156381620462305213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161935 n + A161680 n

end

end A255187.P18156381620462305213

namespace A255187

/-- `A161935(n)+A161680(n)` -/
def P18156381620462305213.Spec : Prop :=
  ∀ n, P18156381620462305213.a n = A255187 n

theorem P18156381620462305213.correct : P18156381620462305213.Spec := by
  intro n
  simp only [A255187, Nat.add_sub_cancel, A255187.P18156381620462305213.a, A255187.P5987633574955875604.a, A161680, A161680.P17206074215489759881.a, A161935, A161935.P14335868775891492350.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255187

/-! ## A255187.P6241476697639118832

`A326725(n)+A152997(n)`
-/

namespace A255187.P6241476697639118832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A152997 n

end

end A255187.P6241476697639118832

namespace A255187

/-- `A326725(n)+A152997(n)` -/
def P6241476697639118832.Spec : Prop :=
  ∀ n, P6241476697639118832.a n = A255187 n

end A255187

/-! ## A255187.P5683016366615555399

`A022284(n)-A008594(n)`
-/

namespace A255187.P5683016366615555399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022284 n - A008594 n

end

end A255187.P5683016366615555399

namespace A255187

/-- `A022284(n)-A008594(n)` -/
def P5683016366615555399.Spec : Prop :=
  ∀ n, P5683016366615555399.a n = A255187 n

end A255187

/-! ## A255187.P3424313746689932635

`A022285(n)-A008595(n)`
-/

namespace A255187.P3424313746689932635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022285 n - A008595 n

end

end A255187.P3424313746689932635

namespace A255187

/-- `A022285(n)-A008595(n)` -/
def P3424313746689932635.Spec : Prop :=
  ∀ n, P3424313746689932635.a n = A255187 n

end A255187

/-! ## A255187.P7299775609439123802

`A022286(n)-A098847(n)`
-/

namespace A255187.P7299775609439123802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022286 n - A098847 n

end

end A255187.P7299775609439123802

namespace A255187

/-- `A022286(n)-A098847(n)` -/
def P7299775609439123802.Spec : Prop :=
  ∀ n, P7299775609439123802.a n = A255187 n

end A255187

/-! ## A255187.P5630796586722293930

`A022287(n)-A132759(n)`
-/

namespace A255187.P5630796586722293930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022287 n - A132759 n

end

end A255187.P5630796586722293930

namespace A255187

/-- `A022287(n)-A132759(n)` -/
def P5630796586722293930.Spec : Prop :=
  ∀ n, P5630796586722293930.a n = A255187 n

end A255187

/-! ## A255187.P6158694242451216501

`A152777(n)-A002943(n)`
-/

namespace A255187.P6158694242451216501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152777 n - A002943 n

end

end A255187.P6158694242451216501

namespace A255187

/-- `A152777(n)-A002943(n)` -/
def P6158694242451216501.Spec : Prop :=
  ∀ n, P6158694242451216501.a n = A255187 n

end A255187

/-! ## A255187.P11011681731886687318

`A153448(n)-A005449(n)`
-/

namespace A255187.P11011681731886687318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153448 n - A005449 n

end

end A255187.P11011681731886687318

namespace A255187

/-- `A153448(n)-A005449(n)` -/
def P11011681731886687318.Spec : Prop :=
  ∀ n, P11011681731886687318.a n = A255187 n

end A255187

/-! ## A255187.P14541690084515362921

`A152996(n)-A008590(n)`
-/

namespace A255187.P14541690084515362921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152996 n - A008590 n

end

end A255187.P14541690084515362921

namespace A255187

/-- `A152996(n)-A008590(n)` -/
def P14541690084515362921.Spec : Prop :=
  ∀ n, P14541690084515362921.a n = A255187 n

end A255187

/-! ## A255187.P15196507934973423768

`A022289(n)-A139578(n)`
-/

namespace A255187.P15196507934973423768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022289 n - A139578 n

end

end A255187.P15196507934973423768

namespace A255187

/-- `A022289(n)-A139578(n)` -/
def P15196507934973423768.Spec : Prop :=
  ∀ n, P15196507934973423768.a n = A255187 n

end A255187

/-!
# A255191: Number of solutions to the equation n = x^2 + y*(y+1)/2 + z*(z+1)/2 (x,y,z=0,1,...) with x == Floor[sqrt(n)] (mod 2) and y <= z.

The programs for A255191, there is no canonical definition to state claims against.
-/

/-! ## A255191.P1730246540921500327

`∑{e}[A270566(A001208(3*n+1)), #]`
-/

namespace A255191.P1730246540921500327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270566 (A001208 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A255191.P1730246540921500327

/-! ## A255191.P18432745618200786564

`A043277(A005987(n)*A047552(n+1))`
-/

namespace A255191.P18432745618200786564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A005987 n * A047552 (n + 1)).toNat

end

end A255191.P18432745618200786564

/-! ## A255191.P7198405311750061485

`gcd(2*A025581(n), A051349(A325012(n+1)))`
-/

namespace A255191.P7198405311750061485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A025581 n) (A051349 (A325012 (n + 1)).toNat)

end

end A255191.P7198405311750061485

/-! ## A255191.P12682610941920460130

`A043565(A125232(n+1)^∑{e}[A333634(n+1), #])`
-/

namespace A255191.P12682610941920460130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 (A125232 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)).toNat

end

end A255191.P12682610941920460130

/-! ## A255191.P16163025524163875778

`A302041(A092886(n)+4)`
-/

namespace A255191.P16163025524163875778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302041 (A092886 n + 4).toNat

end

end A255191.P16163025524163875778

/-!
# A255194: Numbers k such that prime(k) + {1,2,3,4,5,6} are all products of three primes.

The programs for A255194, there is no canonical definition to state claims against.
-/

/-! ## A255194.P9966888654843276948

`A255202(A067942(n+1)^A046563(n+1))`
-/

namespace A255194.P9966888654843276948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255202 (SequenceMachineLib.roundAway ((A067942 (n + 1) : ℚ) ^ (A046563 (n + 1) : ℤ))).toNat

end

end A255194.P9966888654843276948

/-! ## A255194.P12062496812604939355

`A255202(A067942(n+1)%A067933(n+1))`
-/

namespace A255194.P12062496812604939355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255202 (Int.tmod (A067942 (n + 1)) (A067933 (n + 1))).toNat

end

end A255194.P12062496812604939355

/-! ## A255194.P17333843128091709586

`A255202(A046563(n+1)²²*A067942(n+1))`
-/

namespace A255194.P17333843128091709586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255202 ((A046563 (n + 1) ^ 2) ^ 2 * A067942 (n + 1)).toNat

end

end A255194.P17333843128091709586

/-!
# A255195: Triangle describing the shape of one eighth of the Gauss circle problem.

The programs for A255195, there is no canonical definition to state claims against.
-/

/-! ## A255195.P16510316256525770129

`1-Δ[A145006(A336534(n))]`
-/

namespace A255195.P16510316256525770129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145006 (A336534 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A255195.P16510316256525770129

/-! ## A255195.P4705347143845854403

`Δ[A347447(A309220(n+1))]+1`
-/

namespace A255195.P4705347143845854403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347447 (A309220 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A255195.P4705347143845854403

/-! ## A255195.P17635242641203077449

`floor(A183534(n+2)/A141059(2^A263744(n+1)))`
-/

namespace A255195.P17635242641203077449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183534 (n + 2) : ℚ) / (A141059 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A263744 (n + 1) : ℤ))).toNat : ℚ)⌋

end

end A255195.P17635242641203077449

/-! ## A255195.P4296148266007472061

`Δ[A373125(A302367(n+1))]+1`
-/

namespace A255195.P4296148266007472061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373125 (A302367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A255195.P4296148266007472061

/-! ## A255195.P1270849520166970019

`Δ[A103631(A028310(n))]^A001045(2*n+3)+1`
-/

namespace A255195.P1270849520166970019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A001045 (2 * n + 3) : ℤ) + 1

end

end A255195.P1270849520166970019

/-!
# A255197: Number of dissections of a convex polygon with n+3 sides that have exactly one triangle, and that triangle shares at least one side with the exterior polygon.

The programs for A255197, there is no canonical definition to state claims against.
-/

/-! ## A255197.P15655611306866337153

`xor(A253192(n), A309332(A053369(n)))`
-/

namespace A255197.P15655611306866337153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A253192 n) (A309332 (A053369 n).toNat)

end

end A255197.P15655611306866337153

/-! ## A255197.P11962853630469162079

`A253192(n)-A241704(A065507(n+1))`
-/

namespace A255197.P11962853630469162079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253192 n - A241704 (A065507 (n + 1)).toNat

end

end A255197.P11962853630469162079

/-!
# A255199: Numbers k such that mu(k) = mu(phi(k)) where mu(k) is the Möbius function and phi(k) is Euler's totient function.

The programs for A255199, the canonical program `A255199.P3048172181705581160` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255199 has offset 1).

The definition of A255199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255199.P10554122868667845374

`∪[A049199(n+1), A255219(n+1)]`
-/

namespace A255199.P10554122868667845374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A255199.P10554122868667845374

namespace A255199

/-- `∪[A049199(n+1), A255219(n+1)]` -/
def P10554122868667845374.Spec : Prop :=
  ∀ n, (P10554122868667845374.a n : ℤ) = A255199 (n + 1)

end A255199

/-! ## A255199.P800548504792778415

`∪[A078330(n+1), A244723(n+1)]`
-/

namespace A255199.P800548504792778415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A255199.P800548504792778415

namespace A255199

/-- `∪[A078330(n+1), A244723(n+1)]` -/
def P800548504792778415.Spec : Prop :=
  ∀ n, (P800548504792778415.a n : ℤ) = A255199 (n + 1)

end A255199

/-! ## A255199.P17132592010731330145

`∪[A244723(n+1), A255219(n+1)]`
-/

namespace A255199.P17132592010731330145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A255199.P17132592010731330145

namespace A255199

/-- `∪[A244723(n+1), A255219(n+1)]` -/
def P17132592010731330145.Spec : Prop :=
  ∀ n, (P17132592010731330145.a n : ℤ) = A255199 (n + 1)

end A255199

/-! ## A255199.P3048172181705581160

`eq[A008683(A000010(n+1)), A008683(n+1)]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A255199

/-- `eq[A008683(A000010(n+1)), A008683(n+1)]+1` -/
def P3048172181705581160.Spec : Prop :=
  ∀ n, (P3048172181705581160.a n : ℤ) = A255199 (n + 1)

theorem P3048172181705581160.correct : P3048172181705581160.Spec := by
  intro n
  simp only [A255199, Nat.add_sub_cancel]

end A255199

/-! ## A255199.P17948044084297983168

`eq[A157658(A000010(n+1)), A157658(n+1)]+1`
-/

namespace A255199.P17948044084297983168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A255199.P17948044084297983168

namespace A255199

/-- `eq[A157658(A000010(n+1)), A157658(n+1)]+1` -/
def P17948044084297983168.Spec : Prop :=
  ∀ n, (P17948044084297983168.a n : ℤ) = A255199 (n + 1)

end A255199

/-! ## A255199.P6903369948429999052

`eq[A007423(n+1)-1, A008683(A109606(n+1)+1)]+1`
-/

namespace A255199.P6903369948429999052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A255199.P6903369948429999052

namespace A255199

/-- `eq[A007423(n+1)-1, A008683(A109606(n+1)+1)]+1` -/
def P6903369948429999052.Spec : Prop :=
  ∀ n, (P6903369948429999052.a n : ℤ) = A255199 (n + 1)

end A255199

/-! ## A255199.P374981103275320612

`eq[A007423(n+1)-1, A008683(n-A219428(n+1))]+1`
-/

namespace A255199.P374981103275320612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n : ℤ) - A219428 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A255199.P374981103275320612

namespace A255199

/-- `eq[A007423(n+1)-1, A008683(n-A219428(n+1))]+1` -/
def P374981103275320612.Spec : Prop :=
  ∀ n, (P374981103275320612.a n : ℤ) = A255199 (n + 1)

end A255199

