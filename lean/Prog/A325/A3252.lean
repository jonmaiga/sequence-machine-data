import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A325200: Regular triangle read by rows where T(n,k) is the number of integer partitions of n such that the difference between the length of the minimal triangular partition containing and the maximal triangular partition contained in the Young diagram is k.

The programs for A325200, there is no canonical definition to state claims against.
-/

/-! ## A325200.P6850946607263055163

`A352523(n)-A001222(A347811(n))`
-/

namespace A325200.P6850946607263055163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352523 n - A001222 (A347811 n).toNat

end

end A325200.P6850946607263055163

/-! ## A325200.P9153607961828059611

`A352523(n)-A352514(A269945(n+1))`
-/

namespace A325200.P9153607961828059611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352523 n - A352514 (A269945 (n + 1)).toNat

end

end A325200.P9153607961828059611

/-! ## A325200.P11979918119777831175

`A333755(A275037(n+1)-A000177(n))`
-/

namespace A325200.P11979918119777831175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (A275037 (n + 1) - A000177 n).toNat

end

end A325200.P11979918119777831175

/-! ## A325200.P9531567922746104818

`and(A059029(A102320(n)), A214269(n+1))`
-/

namespace A325200.P9531567922746104818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059029 (A102320 n).toNat) (A214269 (n + 1))

end

end A325200.P9531567922746104818

/-! ## A325200.P3665952258759882813

`and(A048570(n), A175665(A168497(n+1)))`
-/

namespace A325200.P3665952258759882813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048570 n) (A175665 (A168497 (n + 1)).toNat)

end

end A325200.P3665952258759882813

/-!
# A325201: Square array whose entry A(n,k) is the number of labeled rooted trees on a set of size n where each node has at most k neighbors that are further away from the root than the node itself, for n >= 0, k >= 0, read by descending antidiagonals.

The programs for A325201, there is no canonical definition to state claims against.
-/

/-! ## A325201.P5826680377566783227

`A186233(A128227(n)*A293669(n))`
-/

namespace A325201.P5826680377566783227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186233 (A128227 n * A293669 n).toNat

end

end A325201.P5826680377566783227

/-! ## A325201.P17783639001171426344

`A117707(A156540(n)%A219206(n))`
-/

namespace A325201.P17783639001171426344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (Int.tmod (A156540 n) (A219206 n)).toNat

end

end A325201.P17783639001171426344

/-! ## A325201.P15110759942085461171

`A327698(A143632(n))%A108625(n)`
-/

namespace A325201.P15110759942085461171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327698 (A143632 n).toNat) (A108625 n)

end

end A325201.P15110759942085461171

/-! ## A325201.P4694660984830201519

`A117707(A156540(n))%A340970(n)`
-/

namespace A325201.P4694660984830201519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117707 (A156540 n).toNat) (A340970 n)

end

end A325201.P4694660984830201519

/-! ## A325201.P3544906045244874398

`A193676(A247306(n+1))`
-/

namespace A325201.P3544906045244874398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193676 (A247306 (n + 1)).toNat

end

end A325201.P3544906045244874398

/-!
# A325202: Number of times that A325177(n) occurs in the sum of proper unitary divisors function (A034460).

The programs for A325202, there is no canonical definition to state claims against.
-/

/-! ## A325202.P3331060868277956756

`A324938(A325177(n+1))`
-/

namespace A325202.P3331060868277956756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324938 (A325177 (n + 1)).toNat

end

end A325202.P3331060868277956756

/-! ## A325202.P14309858553093817764

`record[A324938(n+2)]`
-/

namespace A325202.P14309858553093817764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324938 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325202.P14309858553093817764

/-! ## A325202.P7469191780907273096

`lt[A165012(A241168(n+1)), A241168(n+1)]`
-/

namespace A325202.P7469191780907273096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 (A241168 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241168 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325202.P7469191780907273096

/-! ## A325202.P13120746229546024535

`lt[A318921(A391628(n+2)), A000010(n+1)]`
-/

namespace A325202.P13120746229546024535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A391628 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325202.P13120746229546024535

/-! ## A325202.P15337006162483981074

`lt[A294099(A178878(n+2)), A091204(n+3)]`
-/

namespace A325202.P15337006162483981074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294099 (A178878 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325202.P15337006162483981074

/-!
# A325204: Numbers k such that k*(k+1)*(k+2) has exactly 4 distinct prime factors.

The programs for A325204, there is no canonical definition to state claims against.
-/

/-! ## A325204.P17887901240530842235

`eq[4, A001221(n+1)+A001221(A082562(n+1))]`
-/

namespace A325204.P17887901240530842235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A001221 (A082562 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325204.P17887901240530842235

/-! ## A325204.P2160995066247262454

`eq[4, A059957((n+1)*(n+3))]+1`
-/

namespace A325204.P2160995066247262454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059957 ((n + 1) * (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325204.P2160995066247262454

/-! ## A325204.P14014715242126083054

`eq[4, A001222(A078637(n+1))]+1`
-/

namespace A325204.P14014715242126083054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A078637 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325204.P14014715242126083054

/-! ## A325204.P16098493032640666239

`eq[4, A001222(∏{p}[C((n+1)², 2), #])]`
-/

namespace A325204.P16098493032640666239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325204.P16098493032640666239

/-! ## A325204.P17774053107721078790

`eq[4, A001221((A060798(n+1)+n)*(n+1))]`
-/

namespace A325204.P17774053107721078790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((A060798 (n + 1) + (n : ℤ)) * (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325204.P17774053107721078790

/-!
# A325205: a(n) is the number of labeled rooted trees on a set of size n where each node has at most 6 neighbors that are further away from the root than the node itself.

The programs for A325205, there is no canonical definition to state claims against.
-/

/-! ## A325205.P15511495741069174327

`A325206(n)-A101638(A287258(n))`
-/

namespace A325205.P15511495741069174327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325206 n - A101638 (A287258 n).toNat

end

end A325205.P15511495741069174327

/-!
# A325206: a(n) is the number of labeled rooted trees on a set of size n where each node has at most 7 neighbors that are further away from the root than the node itself.

The programs for A325206, there is no canonical definition to state claims against.
-/

/-! ## A325206.P17353084262973020237

`n*(n^(n-ceil(atan(n)))-A014289(A072863(n)))`
-/

namespace A325206.P17353084262973020237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n : ℚ) ^ ((n : ℤ) - ⌈Real.arctan (n : ℝ)⌉ : ℤ) - (A014289 (A072863 n).toNat : ℚ))

end

end A325206.P17353084262973020237

/-! ## A325206.P3288318716823039965

`A152917(n)-A112440(A064704(n+1))`
-/

namespace A325206.P3288318716823039965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152917 n - A112440 (A064704 (n + 1)).toNat

end

end A325206.P3288318716823039965

/-! ## A325206.P6633660951224982201

`A325208(n)-A325201(A306234(3*n+1))`
-/

namespace A325206.P6633660951224982201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325208 n - A325201 (A306234 (3 * n + 1)).toNat

end

end A325206.P6633660951224982201

/-!
# A325207: a(n) is the number of labeled rooted trees on a set of size n where each node has at most 8 neighbors that are further away from the root than the node itself.

The programs for A325207, there is no canonical definition to state claims against.
-/

/-! ## A325207.P4799280935475599716

`A152917(n)-A185255(3*n)`
-/

namespace A325207.P4799280935475599716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152917 n - A185255 (3 * n)

end

end A325207.P4799280935475599716

/-!
# A325209: Numbers k such that Gamma(k - 1/2) has fractional part < 1/2.

The programs for A325209, there is no canonical definition to state claims against.
-/

/-! ## A325209.P14798749468963014614

`comp[A325210(n+1)-1]+1`
-/

namespace A325209.P14798749468963014614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325210 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A325209.P14798749468963014614

/-! ## A325209.P13831580749236417438

`comp[∪[A325210(n+1), A000543(n)]]`
-/

namespace A325209.P13831580749236417438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325210 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000543 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A325209.P13831580749236417438

/-! ## A325209.P15551028577755787121

`comp[∪[A325210(n+1), A001015(n)]]`
-/

namespace A325209.P15551028577755787121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325210 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A325209.P15551028577755787121

/-! ## A325209.P4285682230493183896

`eq[char[A325210(n+1)], A151933(n)]`
-/

namespace A325209.P4285682230493183896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325210 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325209.P4285682230493183896

/-! ## A325209.P9119131229989956923

`eq[A014510(n), A014521(n)]+1`
-/

namespace A325209.P9119131229989956923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014510 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014521 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325209.P9119131229989956923

/-!
# A325210: Numbers k such that Gamma(k - 1/2) has fractional part > 1/2.

The programs for A325210, there is no canonical definition to state claims against.
-/

/-! ## A325210.P1566071992268400156

`eq[char[A325209(n+1)], A151933(n)]`
-/

namespace A325210.P1566071992268400156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325209 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325210.P1566071992268400156

/-!
# A325213: G.f.: A(x) = exp( Sum_{n>=1} (x^n/n) * (1 + x^n*A(x)^n) / (1 - x^n*A(x)^n)).

The programs for A325213, there is no canonical definition to state claims against.
-/

/-! ## A325213.P14797473605412149072

`A214701(or(A032741(n), A279557(n)))`
-/

namespace A325213.P14797473605412149072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (Int.lor (A032741 n) (A279557 n)).toNat

end

end A325213.P14797473605412149072

/-! ## A325213.P14096325832751453744

`(or(1, ∑[3^n])+3)/4-A010461(floor((2^n+10)/6))`
-/

namespace A325213.P14096325832751453744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 3 : ℚ) / 4 - (A010461 ⌊(2 ^ n + 10 : ℚ) / 6⌋.toNat : ℚ)

end

end A325213.P14096325832751453744

/-! ## A325213.P12864163643612331536

`A084469(A148641(n))`
-/

namespace A325213.P12864163643612331536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084469 (A148641 n).toNat

end

end A325213.P12864163643612331536

/-!
# A325219: G.f. A(x) satisfies: Sum_{n>=0} x^n*A(x)^(n^2) = Sum_{n>=0} x^n/(1-n*x)^n.

The programs for A325219, there is no canonical definition to state claims against.
-/

/-! ## A325219.P2815431407864728028

`∑[A002264(A056543(n+1))]+1`
-/

namespace A325219.P2815431407864728028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A056543 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A325219.P2815431407864728028

/-! ## A325219.P14796691570747640560

`floor(Δ[A216723(n+3)/A141214(n)])+1`
-/

namespace A325219.P14796691570747640560
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216723 (n + 3) : ℚ) / (A141214 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋ + 1

end

end A325219.P14796691570747640560

/-! ## A325219.P1370002388689314164

`A088004(A120956(n)+A000041(n))`
-/

namespace A325219.P1370002388689314164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A120956 n + A000041 n).toNat

end

end A325219.P1370002388689314164

/-!
# A325220: E.g.f.: S(x,k) = -i * sn( i * Integral C(x,k) dx, k) such that C(x,k) = cn( i * Integral C(x,k) dx, k), where S(x,k) = Sum_{n>=0} Sum_{j=0..n} T(n,j) * x^(2*n+1)*k^(2*j)/(2*n+1)!, as a triangle of coefficients T(n,j) read by rows.

The programs for A325220, there is no canonical definition to state claims against.
-/

/-! ## A325220.P6701161509077523416

`A322230(∑[2*n]%comp[∑[n]])`
-/

namespace A325220.P6701161509077523416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322230 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A325220.P6701161509077523416

/-! ## A325220.P268523704312117322

`A322230(∑[char[∑[n]]]²-(n+1))`
-/

namespace A325220.P268523704312117322
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322230 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A325220.P268523704312117322

/-! ## A325220.P13650039193947072719

`and(-1, A322230(A061579(n)))`
-/

namespace A325220.P13650039193947072719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A322230 (A061579 n).toNat)

end

end A325220.P13650039193947072719

/-! ## A325220.P1519380404257029498

`A322230(A061579(n))%A003462(n+2)`
-/

namespace A325220.P1519380404257029498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322230 (A061579 n).toNat) (A003462 (n + 2))

end

end A325220.P1519380404257029498

/-! ## A325220.P7968013845473438928

`A322230(A061579(n))+A035363(2*n+1)`
-/

namespace A325220.P7968013845473438928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322230 (A061579 n).toNat + A035363 (2 * n + 1)

end

end A325220.P7968013845473438928

/-!
# A325221: E.g.f.: C(x,k) = cn( i * Integral C(x,k) dx, k), where C(x,k) = Sum_{n>=0} Sum_{j=0..n} T(n,j) * x^(2*n)*k^(2*j)/(2*n)!, as a triangle of coefficients T(n,j) read by rows.

The programs for A325221, there is no canonical definition to state claims against.
-/

/-! ## A325221.P6120301020703097239

`A322232(∑[2*n]%comp[∑[n]])`
-/

namespace A325221.P6120301020703097239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322232 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A325221.P6120301020703097239

/-! ## A325221.P15682359147504740718

`A322232(∑[char[∑[n]]]²-(n+1))`
-/

namespace A325221.P15682359147504740718
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322232 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A325221.P15682359147504740718

/-! ## A325221.P18062958198840258398

`and(-1, A322232(A061579(n)))`
-/

namespace A325221.P18062958198840258398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A322232 (A061579 n).toNat)

end

end A325221.P18062958198840258398

/-! ## A325221.P10009603733207884401

`A322232(A061579(n))^A178334(n)`
-/

namespace A325221.P10009603733207884401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322232 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A325221.P10009603733207884401

/-! ## A325221.P4503938513874677803

`A322232(A061579(n))%A322924(n)`
-/

namespace A325221.P4503938513874677803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322232 (A061579 n).toNat) (A322924 n)

end

end A325221.P4503938513874677803

/-! ## A325221.P10491006235547735976

`gcd(A000038(n), A322232(A061579(n)))`
-/

namespace A325221.P10491006235547735976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A322232 (A061579 n).toNat)

end

end A325221.P10491006235547735976

/-! ## A325221.P14421173310195725561

`A007318(∑[n])*A322232(A061579(n))`
-/

namespace A325221.P14421173310195725561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A322232 (A061579 n).toNat

end

end A325221.P14421173310195725561

/-! ## A325221.P4663419245124147704

`A322232(A061579(n))/A007318(∑[n+1])`
-/

namespace A325221.P4663419245124147704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322232 (A061579 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A325221.P4663419245124147704

/-! ## A325221.P11228513527727927281

`A322232(A061579(n))^(A000040(n+1)%2)`
-/

namespace A325221.P11228513527727927281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322232 (A061579 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A325221.P11228513527727927281

/-! ## A325221.P1129036584542397571

`A322232(A061579(n))/A006530(gcd(n, n+1))`
-/

namespace A325221.P1129036584542397571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322232 (A061579 n).toNat : ℚ) / (A006530 (Nat.gcd n (n + 1)) : ℚ)

end

end A325221.P1129036584542397571

/-!
# A325222: E.g.f.: D(x,k) = dn( i * Integral C(x,k) dx, k) such that C(x,k) = cn( i * Integral C(x,k) dx, k), where D(x,k) = Sum_{n>=0} Sum_{j=0..n} T(n,j) * x^(2*n)*k^(2*j)/(2*n)!, as a triangle of coefficients T(n,j) read by rows.

The programs for A325222, there is no canonical definition to state claims against.
-/

/-! ## A325222.P1380643800386081468

`A322231(∑[2*n]%comp[∑[n]])`
-/

namespace A325222.P1380643800386081468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322231 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A325222.P1380643800386081468

/-! ## A325222.P3715597635210653859

`A322231(∑[char[∑[n]]]²-(n+1))`
-/

namespace A325222.P3715597635210653859
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322231 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A325222.P3715597635210653859

/-! ## A325222.P6316884288547520452

`and(-1, A322231(A061579(n)))`
-/

namespace A325222.P6316884288547520452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A322231 (A061579 n).toNat)

end

end A325222.P6316884288547520452

/-! ## A325222.P5752084233412358728

`A262681(n)*A322231(A061579(n))`
-/

namespace A325222.P5752084233412358728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 n * A322231 (A061579 n).toNat

end

end A325222.P5752084233412358728

/-! ## A325222.P15700373216412670287

`A322231(A061579(n))%A281482(n)`
-/

namespace A325222.P15700373216412670287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322231 (A061579 n).toNat) (A281482 n)

end

end A325222.P15700373216412670287

/-! ## A325222.P12746891254237463917

`gcd(A000038(n), A322231(A061579(n)))`
-/

namespace A325222.P12746891254237463917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A322231 (A061579 n).toNat)

end

end A325222.P12746891254237463917

/-! ## A325222.P15292495562320693663

`lcm(A260196(n), A322231(A061579(n)))`
-/

namespace A325222.P15292495562320693663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A260196 n) (A322231 (A061579 n).toNat)

end

end A325222.P15292495562320693663

/-! ## A325222.P3867929099257965507

`or(A000007(n), A322231(A061579(n)))`
-/

namespace A325222.P3867929099257965507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A322231 (A061579 n).toNat)

end

end A325222.P3867929099257965507

/-! ## A325222.P8235713070718336716

`A005117(gcd(n, n+1))*A322231(A061579(n))`
-/

namespace A325222.P8235713070718336716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.gcd n (n + 1)) * A322231 (A061579 n).toNat

end

end A325222.P8235713070718336716

/-!
# A325223: Sum of the prime indices of n minus the greater of the number of prime factors of n counted with multiplicity and the largest prime index of n.

The programs for A325223, the canonical program `A325223.P14926081058052058470` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325223 has offset 1).

The definition of A325223 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, A263297, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325223.P14926081058052058470

`A056239(n+1)-A263297(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A325223

/-- `A056239(n+1)-A263297(n+1)` -/
def P14926081058052058470.Spec : Prop :=
  ∀ n, P14926081058052058470.a n = A325223 (n + 1)

theorem P14926081058052058470.correct : P14926081058052058470.Spec := by
  intro n
  simp only [A325223, Nat.add_sub_cancel]

end A325223

/-! ## A325223.P2154819475713873538

`∑{d}[n+1, A297109(#)]-A263297(n+1)`
-/

namespace A325223.P2154819475713873538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297109 d - A263297 (n + 1)

end

end A325223.P2154819475713873538

namespace A325223

/-- `∑{d}[n+1, A297109(#)]-A263297(n+1)` -/
def P2154819475713873538.Spec : Prop :=
  ∀ n, P2154819475713873538.a n = A325223 (n + 1)

end A325223

/-! ## A325223.P17434333974156255773

`A316436(2*(n+1))-1-A263297(n+1)`
-/

namespace A325223.P17434333974156255773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - 1 - A263297 (n + 1)

end

end A325223.P17434333974156255773

namespace A325223

/-- `A316436(2*(n+1))-1-A263297(n+1)` -/
def P17434333974156255773.Spec : Prop :=
  ∀ n, P17434333974156255773.a n = A325223 (n + 1)

end A325223

/-! ## A325223.P5413434583122471161

`A304739(A064664(n+1))-A263297(n+1)`
-/

namespace A325223.P5413434583122471161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304739 (A064664 (n + 1)).toNat - A263297 (n + 1)

end

end A325223.P5413434583122471161

namespace A325223

/-- `A304739(A064664(n+1))-A263297(n+1)` -/
def P5413434583122471161.Spec : Prop :=
  ∀ n, P5413434583122471161.a n = A325223 (n + 1)

end A325223

/-! ## A325223.P787901520829771139

`A325224(n+1)+A325225(n+1)-A263297(n+1)`
-/

namespace A325223.P787901520829771139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325224 (n + 1) + (A325225 (n + 1) - A263297 (n + 1))

end

end A325223.P787901520829771139

namespace A325223

/-- `A325224(n+1)+A325225(n+1)-A263297(n+1)` -/
def P787901520829771139.Spec : Prop :=
  ∀ n, P787901520829771139.a n = A325223 (n + 1)

theorem P787901520829771139.correct : P787901520829771139.Spec := by
  intro n
  simp only [A325223, Nat.add_sub_cancel, A325223.P787901520829771139.a, A325223.P14926081058052058470.a, A056239, A056239.P11316688788989965672.a, A263297, A263297.P13367388864379357855.a, A325224, A325224.P1117031498842339426.a, A325225, A325225.P14443977259877716091.a, A000265, A000265.P16482698636471710744.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A048896, A048896.P6461019053085857547.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048881, A048881.P16567064232951496228.a, A158611, A158611.P9275629407611603775.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325223

/-! ## A325223.P2533132467147782511

`log2(A248692(n+1))-A263297(n+1)`
-/

namespace A325223.P2533132467147782511
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A248692 (n + 1) : ℝ) - (A263297 (n + 1) : ℝ)

end

end A325223.P2533132467147782511

namespace A325223

/-- `log2(A248692(n+1))-A263297(n+1)` -/
def P2533132467147782511.Spec : Prop :=
  ∀ n, P2533132467147782511.a n = (A325223 (n + 1) : ℝ)

end A325223

/-! ## A325223.P7588527241309912422

`A325135((n+1)*A105560(n+1))`
-/

namespace A325223.P7588527241309912422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 ((n + 1 : ℤ) * A105560 (n + 1)).toNat

end

end A325223.P7588527241309912422

namespace A325223

/-- `A325135((n+1)*A105560(n+1))` -/
def P7588527241309912422.Spec : Prop :=
  ∀ n, P7588527241309912422.a n = A325223 (n + 1)

end A325223

/-! ## A325223.P5112068291589585930

`A318995(A045965(n+1))-A263297(n+1)`
-/

namespace A325223.P5112068291589585930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A045965 (n + 1)).toNat - A263297 (n + 1)

end

end A325223.P5112068291589585930

namespace A325223

/-- `A318995(A045965(n+1))-A263297(n+1)` -/
def P5112068291589585930.Spec : Prop :=
  ∀ n, P5112068291589585930.a n = A325223 (n + 1)

end A325223

/-! ## A325223.P6577719267402816667

`A325135(A105560(n+1)*A273745(n))`
-/

namespace A325223.P6577719267402816667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A105560 (n + 1) * A273745 n).toNat

end

end A325223.P6577719267402816667

namespace A325223

/-- `A325135(A105560(n+1)*A273745(n))` -/
def P6577719267402816667.Spec : Prop :=
  ∀ n, P6577719267402816667.a n = A325223 (n + 1)

end A325223

/-! ## A325223.P15646723836695914845

`A056239(n+1)-(A325178(n+1)+A257990(n+1))`
-/

namespace A325223.P15646723836695914845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - (A325178 (n + 1) + A257990 (n + 1))

end

end A325223.P15646723836695914845

namespace A325223

/-- `A056239(n+1)-(A325178(n+1)+A257990(n+1))` -/
def P15646723836695914845.Spec : Prop :=
  ∀ n, P15646723836695914845.a n = A325223 (n + 1)

theorem P15646723836695914845.correct : P15646723836695914845.Spec := by
  intro n
  simp only [A325223, Nat.add_sub_cancel, A325223.P15646723836695914845.a, A325223.P14926081058052058470.a, A056239, A056239.P11316688788989965672.a, A257990, A257990.P207201933363288377.a, A263297, A263297.P13367388864379357855.a, A325178, A325178.P15779599173894516213.a, A000265, A000265.P16482698636471710744.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A325133, A325133.P17746794442660718236.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A048896, A048896.P6461019053085857547.a, A052126, A052126.P1944428405920482243.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A006530, A006530.P13372528560459906635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048881, A048881.P16567064232951496228.a, A158611, A158611.P9275629407611603775.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325223

/-!
# A325224: Sum of prime indices of n minus the lesser of the number of prime factors of n counted with multiplicity and the maximum prime index of n.

The programs for A325224, the canonical program `A325224.P1117031498842339426` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325224 has offset 1).

The definition of A325224 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, A325225, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325224.P1117031498842339426

`A056239(n+1)-A325225(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A325224

/-- `A056239(n+1)-A325225(n+1)` -/
def P1117031498842339426.Spec : Prop :=
  ∀ n, P1117031498842339426.a n = A325224 (n + 1)

theorem P1117031498842339426.correct : P1117031498842339426.Spec := by
  intro n
  simp only [A325224, Nat.add_sub_cancel]

end A325224

/-! ## A325224.P16123994628428189934

`∑{d}[n+1, A297109(#)]-A325225(n+1)`
-/

namespace A325224.P16123994628428189934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297109 d - A325225 (n + 1)

end

end A325224.P16123994628428189934

namespace A325224

/-- `∑{d}[n+1, A297109(#)]-A325225(n+1)` -/
def P16123994628428189934.Spec : Prop :=
  ∀ n, P16123994628428189934.a n = A325224 (n + 1)

end A325224

/-! ## A325224.P5102476507868777064

`A316436(2*(n+1))-(A325225(n+1)+1)`
-/

namespace A325224.P5102476507868777064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - (A325225 (n + 1) + 1)

end

end A325224.P5102476507868777064

namespace A325224

/-- `A316436(2*(n+1))-(A325225(n+1)+1)` -/
def P5102476507868777064.Spec : Prop :=
  ∀ n, P5102476507868777064.a n = A325224 (n + 1)

end A325224

/-! ## A325224.P4182554381794252996

`A000523(n+1)+A339823(n+1)-A325225(n+1)`
-/

namespace A325224.P4182554381794252996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (A339823 (n + 1) - A325225 (n + 1))

end

end A325224.P4182554381794252996

namespace A325224

/-- `A000523(n+1)+A339823(n+1)-A325225(n+1)` -/
def P4182554381794252996.Spec : Prop :=
  ∀ n, P4182554381794252996.a n = A325224 (n + 1)

theorem P4182554381794252996.correct : P4182554381794252996.Spec := by
  intro n
  simp only [A325224, Nat.add_sub_cancel, A325224.P4182554381794252996.a, A325224.P1117031498842339426.a, A000523, A000523.P3314682526375882520.a, A056239, A056239.P11316688788989965672.a, A325225, A325225.P14443977259877716091.a, A339823, A339823.P7188446837761765173.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A061395, A061395.P8431317036300486107.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A263297, A263297.P13367388864379357855.a, A000265, A000265.P16482698636471710744.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A029837, A029837.P1050578713049589.a, A048896, A048896.P6461019053085857547.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P10934841406439867276.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325224

/-! ## A325224.P7923110407525752589

`log2(A248692(n+1))-A325225(n+1)`
-/

namespace A325224.P7923110407525752589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A248692 (n + 1) : ℝ) - (A325225 (n + 1) : ℝ)

end

end A325224.P7923110407525752589

namespace A325224

/-- `log2(A248692(n+1))-A325225(n+1)` -/
def P7923110407525752589.Spec : Prop :=
  ∀ n, P7923110407525752589.a n = (A325224 (n + 1) : ℝ)

end A325224

/-! ## A325224.P10859766080577102097

`A325166(n+1)+A079067(A331170(n+1)²)`
-/

namespace A325224.P10859766080577102097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (n + 1) + A079067 (A331170 (n + 1) ^ 2).toNat

end

end A325224.P10859766080577102097

namespace A325224

/-- `A325166(n+1)+A079067(A331170(n+1)²)` -/
def P10859766080577102097.Spec : Prop :=
  ∀ n, P10859766080577102097.a n = A325224 (n + 1)

end A325224

/-! ## A325224.P5543453594230486550

`A325166(A331170(n+1)²)-A325166(n+1)`
-/

namespace A325224.P5543453594230486550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (A331170 (n + 1) ^ 2).toNat - A325166 (n + 1)

end

end A325224.P5543453594230486550

namespace A325224

/-- `A325166(A331170(n+1)²)-A325166(n+1)` -/
def P5543453594230486550.Spec : Prop :=
  ∀ n, P5543453594230486550.a n = A325224 (n + 1)

end A325224

/-! ## A325224.P5270028010294970033

`A056239(n+1)-A257990(A068795(n+1))`
-/

namespace A325224.P5270028010294970033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A257990 (A068795 (n + 1)).toNat

end

end A325224.P5270028010294970033

namespace A325224

/-- `A056239(n+1)-A257990(A068795(n+1))` -/
def P5270028010294970033.Spec : Prop :=
  ∀ n, P5270028010294970033.a n = A325224 (n + 1)

end A325224

/-! ## A325224.P10709459915192044698

`A318995(A331170(n+1)²)/2`
-/

namespace A325224.P10709459915192044698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318995 (A331170 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A325224.P10709459915192044698

namespace A325224

/-- `A318995(A331170(n+1)²)/2` -/
def P10709459915192044698.Spec : Prop :=
  ∀ n, P10709459915192044698.a n = (A325224 (n + 1) : ℚ)

end A325224

/-!
# A325225: Lesser of the number of prime factors of n counted with multiplicity and the maximum prime index of n.

The programs for A325225, the canonical program `A325225.P14443977259877716091` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325225 has offset 1).

The definition of A325225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325225.P14321832222742588953

`A056239(n+1)-A325224(n+1)`
-/

namespace A325225.P14321832222742588953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A325224 (n + 1)

end

end A325225.P14321832222742588953

namespace A325225

/-- `A056239(n+1)-A325224(n+1)` -/
def P14321832222742588953.Spec : Prop :=
  ∀ n, P14321832222742588953.a n = A325225 (n + 1)

theorem P14321832222742588953.correct : P14321832222742588953.Spec := by
  intro n
  simp only [A325225, Nat.add_sub_cancel, A325225.P14321832222742588953.a, A325225.P14443977259877716091.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A263297, A263297.P13367388864379357855.a, A325224, A325224.P1117031498842339426.a, A000265, A000265.P16482698636471710744.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P10934841406439867276.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A158611, A158611.P9275629407611603775.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325225

/-! ## A325225.P1258995774319567561

`∑{d}[n+1, A297109(#)]-A325224(n+1)`
-/

namespace A325225.P1258995774319567561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297109 d - A325224 (n + 1)

end

end A325225.P1258995774319567561

namespace A325225

/-- `∑{d}[n+1, A297109(#)]-A325224(n+1)` -/
def P1258995774319567561.Spec : Prop :=
  ∀ n, P1258995774319567561.a n = A325225 (n + 1)

end A325225

/-! ## A325225.P10979851927188504335

`A316436(2*(n+1))-1-A325224(n+1)`
-/

namespace A325225.P10979851927188504335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - 1 - A325224 (n + 1)

end

end A325225.P10979851927188504335

namespace A325225

/-- `A316436(2*(n+1))-1-A325224(n+1)` -/
def P10979851927188504335.Spec : Prop :=
  ∀ n, P10979851927188504335.a n = A325225 (n + 1)

end A325225

/-! ## A325225.P15846420578194898402

`n+1-A178503(n+1)-A325224(n+1)`
-/

namespace A325225.P15846420578194898402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A178503 (n + 1) - A325224 (n + 1)

end

end A325225.P15846420578194898402

namespace A325225

/-- `n+1-A178503(n+1)-A325224(n+1)` -/
def P15846420578194898402.Spec : Prop :=
  ∀ n, P15846420578194898402.a n = A325225 (n + 1)

theorem P15846420578194898402.correct : P15846420578194898402.Spec := by
  intro n
  simp only [A325225, Nat.add_sub_cancel, A325225.P15846420578194898402.a, A325225.P14443977259877716091.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A061395, A061395.P8431317036300486107.a, A178503, A178503.P4821530667985743072.a, A263297, A263297.P13367388864379357855.a, A325224, A325224.P1117031498842339426.a, A000265, A000265.P16482698636471710744.a, A029837, A029837.P1050578713049589.a, A056239, A056239.P11316688788989965672.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P10934841406439867276.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A158611, A158611.P9275629407611603775.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325225

/-! ## A325225.P14443977259877716091

`A001222(n+1)+A061395(n+1)-A263297(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A325225

/-- `A001222(n+1)+A061395(n+1)-A263297(n+1)` -/
def P14443977259877716091.Spec : Prop :=
  ∀ n, P14443977259877716091.a n = A325225 (n + 1)

theorem P14443977259877716091.correct : P14443977259877716091.Spec := by
  intro n
  simp only [A325225, Nat.add_sub_cancel]

end A325225

/-! ## A325225.P12931789508562103044

`A263297(A046523(n+1))+A061395(n+1)-A263297(n+1)`
-/

namespace A325225.P12931789508562103044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A046523 (n + 1)).toNat + (A061395 (n + 1) - A263297 (n + 1))

end

end A325225.P12931789508562103044

namespace A325225

/-- `A263297(A046523(n+1))+A061395(n+1)-A263297(n+1)` -/
def P12931789508562103044.Spec : Prop :=
  ∀ n, P12931789508562103044.a n = A325225 (n + 1)

end A325225

/-! ## A325225.P24534468229014278

`A055396(A006530(n+1)*A105560(n+1))`
-/

namespace A325225.P24534468229014278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A006530 (n + 1) * A105560 (n + 1)).toNat

end

end A325225.P24534468229014278

namespace A325225

/-- `A055396(A006530(n+1)*A105560(n+1))` -/
def P24534468229014278.Spec : Prop :=
  ∀ n, P24534468229014278.a n = A325225 (n + 1)

end A325225

/-! ## A325225.P9983321478239458527

`A001222(gcd(A061142(n+1), A181821(n+1)))`
-/

namespace A325225.P9983321478239458527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A061142 (n + 1)) (A181821 (n + 1)))

end

end A325225.P9983321478239458527

namespace A325225

/-- `A001222(gcd(A061142(n+1), A181821(n+1)))` -/
def P9983321478239458527.Spec : Prop :=
  ∀ n, P9983321478239458527.a n = A325225 (n + 1)

end A325225

/-! ## A325225.P2145497816876485387

`A001222(A331170(n+1)%A094743(n+1))`
-/

namespace A325225.P2145497816876485387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A331170 (n + 1)) (A094743 (n + 1))).toNat

end

end A325225.P2145497816876485387

namespace A325225

/-- `A001222(A331170(n+1)%A094743(n+1))` -/
def P2145497816876485387.Spec : Prop :=
  ∀ n, P2145497816876485387.a n = A325225 (n + 1)

end A325225

/-! ## A325225.P11391926367836152051

`A001222(A160338(A160338(n²+1)+1)*A331170(n+1))`
-/

namespace A325225.P11391926367836152051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A160338 (A160338 (n ^ 2 + 1) + 1).toNat * A331170 (n + 1)).toNat

end

end A325225.P11391926367836152051

namespace A325225

/-- `A001222(A160338(A160338(n²+1)+1)*A331170(n+1))` -/
def P11391926367836152051.Spec : Prop :=
  ∀ n, P11391926367836152051.a n = A325225 (n + 1)

end A325225

/-! ## A325225.P711421985833712258

`A001222(A331170(n+1)²)/2`
-/

namespace A325225.P711421985833712258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A331170 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A325225.P711421985833712258

namespace A325225

/-- `A001222(A331170(n+1)²)/2` -/
def P711421985833712258.Spec : Prop :=
  ∀ n, P711421985833712258.a n = (A325225 (n + 1) : ℚ)

end A325225

/-! ## A325225.P9371000070869738141

`A257990(A068795(n+1))`
-/

namespace A325225.P9371000070869738141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A068795 (n + 1)).toNat

end

end A325225.P9371000070869738141

namespace A325225

/-- `A257990(A068795(n+1))` -/
def P9371000070869738141.Spec : Prop :=
  ∀ n, P9371000070869738141.a n = A325225 (n + 1)

end A325225

/-!
# A325226: Number of prime factors of n that are less than the largest, counted with multiplicity.

The programs for A325226, the canonical program `A325226.P4472600260495826987` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325226 has offset 1).

The definition of A325226 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071178, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325226.P4472600260495826987

`A001222(n+1)-A071178(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A325226

/-- `A001222(n+1)-A071178(n+1)` -/
def P4472600260495826987.Spec : Prop :=
  ∀ n, P4472600260495826987.a n = A325226 (n + 1)

theorem P4472600260495826987.correct : P4472600260495826987.Spec := by
  intro n
  simp only [A325226, Nat.add_sub_cancel]

end A325226

/-! ## A325226.P17012701685855929148

`A001222((n+1)/A053585(n+1))`
-/

namespace A325226.P17012701685855929148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A053585 (n + 1) : ℚ))).toNat

end

end A325226.P17012701685855929148

namespace A325226

/-- `A001222((n+1)/A053585(n+1))` -/
def P17012701685855929148.Spec : Prop :=
  ∀ n, P17012701685855929148.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P7819479556389399242

`∑{e}[A051119(n+1), #]`
-/

namespace A325226.P7819479556389399242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A325226.P7819479556389399242

namespace A325226

/-- `∑{e}[A051119(n+1), #]` -/
def P7819479556389399242.Spec : Prop :=
  ∀ n, (P7819479556389399242.a n : ℤ) = A325226 (n + 1)

end A325226

/-! ## A325226.P1880884202936794617

`∑{e}[n+1, #]-A071178(n+1)`
-/

namespace A325226.P1880884202936794617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A071178 (n + 1)

end

end A325226.P1880884202936794617

namespace A325226

/-- `∑{e}[n+1, #]-A071178(n+1)` -/
def P1880884202936794617.Spec : Prop :=
  ∀ n, P1880884202936794617.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P3062787060141484872

`A001222(A051119(n+1))`
-/

namespace A325226.P3062787060141484872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051119 (n + 1)).toNat

end

end A325226.P3062787060141484872

namespace A325226

/-- `A001222(A051119(n+1))` -/
def P3062787060141484872.Spec : Prop :=
  ∀ n, P3062787060141484872.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P13492154098623460956

`A252736(A243074(n+1))`
-/

namespace A325226.P13492154098623460956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A243074 (n + 1)).toNat

end

end A325226.P13492154098623460956

namespace A325226

/-- `A252736(A243074(n+1))` -/
def P13492154098623460956.Spec : Prop :=
  ∀ n, P13492154098623460956.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P15865620991091774765

`A243055(A329607(n+1))`
-/

namespace A325226.P15865620991091774765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A329607 (n + 1)).toNat

end

end A325226.P15865620991091774765

namespace A325226

/-- `A243055(A329607(n+1))` -/
def P15865620991091774765.Spec : Prop :=
  ∀ n, P15865620991091774765.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P6930082287402266678

`A252736(2*A051119(n+1))`
-/

namespace A325226.P6930082287402266678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * A051119 (n + 1)).toNat

end

end A325226.P6930082287402266678

namespace A325226

/-- `A252736(2*A051119(n+1))` -/
def P6930082287402266678.Spec : Prop :=
  ∀ n, P6930082287402266678.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P12814959535663161538

`A001222(n+1)-val(n+1, A006530(2*(n+1)))`
-/

namespace A325226.P12814959535663161538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - (SequenceMachineLib.valuation (n + 1) (A006530 (2 * (n + 1))).toNat : ℤ)

end

end A325226.P12814959535663161538

namespace A325226

/-- `A001222(n+1)-val(n+1, A006530(2*(n+1)))` -/
def P12814959535663161538.Spec : Prop :=
  ∀ n, P12814959535663161538.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P12698370540737280892

`A001222(n+1)-A001222(A053585(n+1))`
-/

namespace A325226.P12698370540737280892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A053585 (n + 1)).toNat

end

end A325226.P12698370540737280892

namespace A325226

/-- `A001222(n+1)-A001222(A053585(n+1))` -/
def P12698370540737280892.Spec : Prop :=
  ∀ n, P12698370540737280892.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P14804694928365379007

`A001222(n+1)-A124010(∑[A001221(n+1)]+1)`
-/

namespace A325226.P14804694928365379007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A124010 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A325226.P14804694928365379007

namespace A325226

/-- `A001222(n+1)-A124010(∑[A001221(n+1)]+1)` -/
def P14804694928365379007.Spec : Prop :=
  ∀ n, P14804694928365379007.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P13267227724783372845

`A064742(A064664(n+1))-A071178(n+1)`
-/

namespace A325226.P13267227724783372845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064742 (A064664 (n + 1)).toNat - A071178 (n + 1)

end

end A325226.P13267227724783372845

namespace A325226

/-- `A064742(A064664(n+1))-A071178(n+1)` -/
def P13267227724783372845.Spec : Prop :=
  ∀ n, P13267227724783372845.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P12400008708085608630

`A285726(2*A051119(2*(n+1)))`
-/

namespace A325226.P12400008708085608630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (2 * A051119 (2 * (n + 1))).toNat

end

end A325226.P12400008708085608630

namespace A325226

/-- `A285726(2*A051119(2*(n+1)))` -/
def P12400008708085608630.Spec : Prop :=
  ∀ n, P12400008708085608630.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P295634081345910602

`A061395(A122111(A051119(n+1))²)`
-/

namespace A325226.P295634081345910602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A122111 (A051119 (n + 1)).toNat ^ 2).toNat

end

end A325226.P295634081345910602

namespace A325226

/-- `A061395(A122111(A051119(n+1))²)` -/
def P295634081345910602.Spec : Prop :=
  ∀ n, P295634081345910602.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P2366229574074626303

`A062977(A329600(n+1))`
-/

namespace A325226.P2366229574074626303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A329600 (n + 1)).toNat

end

end A325226.P2366229574074626303

namespace A325226

/-- `A062977(A329600(n+1))` -/
def P2366229574074626303.Spec : Prop :=
  ∀ n, P2366229574074626303.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P11335329894204793940

`A001222(A243057(n+1)/A006530(n+1))`
-/

namespace A325226.P11335329894204793940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A243057 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A325226.P11335329894204793940

namespace A325226

/-- `A001222(A243057(n+1)/A006530(n+1))` -/
def P11335329894204793940.Spec : Prop :=
  ∀ n, P11335329894204793940.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P8550398177815653739

`A061395(A153212(A051119(n+1))²)`
-/

namespace A325226.P8550398177815653739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A153212 (A051119 (n + 1)).toNat ^ 2).toNat

end

end A325226.P8550398177815653739

namespace A325226

/-- `A061395(A153212(A051119(n+1))²)` -/
def P8550398177815653739.Spec : Prop :=
  ∀ n, P8550398177815653739.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P14973384527272093275

`A061395(A241909(A051119(n+1))²)`
-/

namespace A325226.P14973384527272093275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A241909 (A051119 (n + 1)).toNat ^ 2).toNat

end

end A325226.P14973384527272093275

namespace A325226

/-- `A061395(A241909(A051119(n+1))²)` -/
def P14973384527272093275.Spec : Prop :=
  ∀ n, P14973384527272093275.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P11750114813856911385

`A087436(A137502(n+1))`
-/

namespace A325226.P11750114813856911385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A137502 (n + 1)).toNat

end

end A325226.P11750114813856911385

namespace A325226

/-- `A087436(A137502(n+1))` -/
def P11750114813856911385.Spec : Prop :=
  ∀ n, P11750114813856911385.a n = A325226 (n + 1)

end A325226

/-! ## A325226.P15337578732108890495

`A362983(A069799(n+1))`
-/

namespace A325226.P15337578732108890495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362983 (A069799 (n + 1)).toNat

end

end A325226.P15337578732108890495

namespace A325226

/-- `A362983(A069799(n+1))` -/
def P15337578732108890495.Spec : Prop :=
  ∀ n, P15337578732108890495.a n = A325226 (n + 1)

end A325226

/-!
# A325227: Regular triangle read by rows where T(n,k) is the number of integer partitions of n such that the lesser of the maximum part and the number of parts is k.

The programs for A325227, there is no canonical definition to state claims against.
-/

/-! ## A325227.P17485736988379655895

`and(A130233(A018910(n)), A325188(n))`
-/

namespace A325227.P17485736988379655895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130233 (A018910 n).toNat) (A325188 n)

end

end A325227.P17485736988379655895

/-! ## A325227.P16291666185339845443

`and(A130233(A048577(n)), A325188(n))`
-/

namespace A325227.P16291666185339845443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130233 (A048577 n).toNat) (A325188 n)

end

end A325227.P16291666185339845443

/-! ## A325227.P9678012444939635239

`A274095(A325188(n)%A110918(n+1))`
-/

namespace A325227.P9678012444939635239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274095 (Int.tmod (A325188 n) (A110918 (n + 1))).toNat

end

end A325227.P9678012444939635239

/-! ## A325227.P7541963759377079820

`and(A052905(A092325(n+1)), A325188(n))`
-/

namespace A325227.P7541963759377079820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052905 (A092325 (n + 1)).toNat) (A325188 n)

end

end A325227.P7541963759377079820

/-! ## A325227.P2481201035422458896

`and(A130233(A071679(n+1)), A325188(n))`
-/

namespace A325227.P2481201035422458896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130233 (A071679 (n + 1)).toNat) (A325188 n)

end

end A325227.P2481201035422458896

/-!
# A325228: Number of integer partitions of n such that the lesser of the maximum part and the number of parts is 3.

The programs for A325228, there is no canonical definition to state claims against.
-/

/-! ## A325228.P12313705388832669505

`∑[A079066(A146164(n)+A000079(n))]`
-/

namespace A325228.P12313705388832669505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (A146164 n + A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325228.P12313705388832669505

/-!
# A325229: Heinz numbers of integer partitions such that lesser of the maximum part and the number of parts is 2.

The programs for A325229, there is no canonical definition to state claims against.
-/

/-! ## A325229.P13479888531135794342

`eq[2, A325225(n+1)]+1`
-/

namespace A325229.P13479888531135794342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325229.P13479888531135794342

/-! ## A325229.P587462456694120267

`eq[n, xor(n, a(A325225(n)))]` with `a(0)=3`
-/

namespace A325229.P587462456694120267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  Nat.xor n (f2 (A325225 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325229.P587462456694120267

/-! ## A325229.P826582663946685505

`eq[2, A325225(n^floor(atan(n)))]`
-/

namespace A325229.P826582663946685505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325229.P826582663946685505

/-! ## A325229.P11933686623624153261

`eq[2, A325225(n*a(2%n))]` with `a(0)=1`
-/

namespace A325229.P11933686623624153261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A325225 ((n : ℤ) * f2 (2 % n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325229.P11933686623624153261

/-! ## A325229.P14680497275672785770

`lt[abs(2-A325225(n+2)), 1]+2`
-/

namespace A325229.P14680497275672785770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A325225 (n + 2)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A325229.P14680497275672785770

/-! ## A325229.P3218831874788238676

`eq[2, A325225(A028310(n))]`
-/

namespace A325229.P3218831874788238676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325229.P3218831874788238676

/-! ## A325229.P9135855441797510830

`A020725(eq[2, A325225(n+1)])`
-/

namespace A325229.P9135855441797510830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325229.P9135855441797510830

/-! ## A325229.P2061452318711786798

`A061767(eq[2, A325225(n+1)])`
-/

namespace A325229.P2061452318711786798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325229.P2061452318711786798

/-! ## A325229.P14480219450967087689

`A113484(eq[2, A325225(n+1)])`
-/

namespace A325229.P14480219450967087689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325229.P14480219450967087689

/-! ## A325229.P4474278311395146070

`eq[2, A001222(A331170(n+1))]+1`
-/

namespace A325229.P4474278311395146070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A331170 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325229.P4474278311395146070

/-!
# A325230: Numbers of the form p^k * q, p and q prime, p > q, k > 0.

The programs for A325230, the canonical program `A325230.P2614121161294996154` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325230 has offset 1).

The definition of A325230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325230.P2614121161294996154

`eq[1, A325226(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A325230

/-- `eq[1, A325226(n+1)]+1` -/
def P2614121161294996154.Spec : Prop :=
  ∀ n, (P2614121161294996154.a n : ℤ) = A325230 (n + 1)

theorem P2614121161294996154.correct : P2614121161294996154.Spec := by
  intro n
  simp only [A325230, Nat.add_sub_cancel]

end A325230

/-! ## A325230.P4671789957169907600

`eq[2, A322373(n+1)]+1`
-/

namespace A325230.P4671789957169907600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325230.P4671789957169907600

namespace A325230

/-- `eq[2, A322373(n+1)]+1` -/
def P4671789957169907600.Spec : Prop :=
  ∀ n, (P4671789957169907600.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P8944380099076518437

`∩[A084227(n+1), A230766(n+1)]`
-/

namespace A325230.P8944380099076518437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325230.P8944380099076518437

namespace A325230

/-- `∩[A084227(n+1), A230766(n+1)]` -/
def P8944380099076518437.Spec : Prop :=
  ∀ n, (P8944380099076518437.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P9700978907605963953

`∩[A007774(n+1), A080364(n+1)]`
-/

namespace A325230.P9700978907605963953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325230.P9700978907605963953

namespace A325230

/-- `∩[A007774(n+1), A080364(n+1)]` -/
def P9700978907605963953.Spec : Prop :=
  ∀ n, (P9700978907605963953.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P17461067393582413953

`∩[A070915(n+1), A080364(n+1)]`
-/

namespace A325230.P17461067393582413953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325230.P17461067393582413953

namespace A325230

/-- `∩[A070915(n+1), A080364(n+1)]` -/
def P17461067393582413953.Spec : Prop :=
  ∀ n, (P17461067393582413953.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P3342655092473764291

`∩[A080364(n+1), A084227(n+1)]`
-/

namespace A325230.P3342655092473764291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325230.P3342655092473764291

namespace A325230

/-- `∩[A080364(n+1), A084227(n+1)]` -/
def P3342655092473764291.Spec : Prop :=
  ∀ n, (P3342655092473764291.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P340552503997559872

`∩[A080364(n+1), A280862(n+1)]`
-/

namespace A325230.P340552503997559872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325230.P340552503997559872

namespace A325230

/-- `∩[A080364(n+1), A280862(n+1)]` -/
def P340552503997559872.Spec : Prop :=
  ∀ n, (P340552503997559872.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P2964321501136257428

`∩[A080364(n+1), A396597(n+1)]`
-/

namespace A325230.P2964321501136257428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325230.P2964321501136257428

namespace A325230

/-- `∩[A080364(n+1), A396597(n+1)]` -/
def P2964321501136257428.Spec : Prop :=
  ∀ n, (P2964321501136257428.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P5365179658774977358

`∩[A007774(n+1), A065200(n+1)]`
-/

namespace A325230.P5365179658774977358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325230.P5365179658774977358

namespace A325230

/-- `∩[A007774(n+1), A065200(n+1)]` -/
def P5365179658774977358.Spec : Prop :=
  ∀ n, (P5365179658774977358.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P348802391611252721

`∩[A065200(n+1), A084227(n+1)]`
-/

namespace A325230.P348802391611252721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325230.P348802391611252721

namespace A325230

/-- `∩[A065200(n+1), A084227(n+1)]` -/
def P348802391611252721.Spec : Prop :=
  ∀ n, (P348802391611252721.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P4554960958881716601

`∩[A065200(n+1), A396597(n+1)]`
-/

namespace A325230.P4554960958881716601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325230.P4554960958881716601

namespace A325230

/-- `∩[A065200(n+1), A396597(n+1)]` -/
def P4554960958881716601.Spec : Prop :=
  ∀ n, (P4554960958881716601.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P8498685418784597871

`∩[A084227(n+1), A304678(n+1)]`
-/

namespace A325230.P8498685418784597871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325230.P8498685418784597871

namespace A325230

/-- `∩[A084227(n+1), A304678(n+1)]` -/
def P8498685418784597871.Spec : Prop :=
  ∀ n, (P8498685418784597871.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P1819078401365005403

`∩[A084227(n+1), A362619(n+1)]`
-/

namespace A325230.P1819078401365005403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325230.P1819078401365005403

namespace A325230

/-- `∩[A084227(n+1), A362619(n+1)]` -/
def P1819078401365005403.Spec : Prop :=
  ∀ n, (P1819078401365005403.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P13747815030215995794

`∩[A007774(n+1), A247180(n+1)]`
-/

namespace A325230.P13747815030215995794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325230.P13747815030215995794

namespace A325230

/-- `∩[A007774(n+1), A247180(n+1)]` -/
def P13747815030215995794.Spec : Prop :=
  ∀ n, (P13747815030215995794.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P1052600460623997051

`∩[A084227(n+1), A247180(n+1)]`
-/

namespace A325230.P1052600460623997051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325230.P1052600460623997051

namespace A325230

/-- `∩[A084227(n+1), A247180(n+1)]` -/
def P1052600460623997051.Spec : Prop :=
  ∀ n, (P1052600460623997051.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P12176527260455690572

`lt[3, A046145(A071364(n+1))]+1`
-/

namespace A325230.P12176527260455690572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A071364 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A325230.P12176527260455690572

namespace A325230

/-- `lt[3, A046145(A071364(n+1))]+1` -/
def P12176527260455690572.Spec : Prop :=
  ∀ n, (P12176527260455690572.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P5442142369990821771

`eq[4, A073180(n+1)]+1`
-/

namespace A325230.P5442142369990821771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073180 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325230.P5442142369990821771

namespace A325230

/-- `eq[4, A073180(n+1)]+1` -/
def P5442142369990821771.Spec : Prop :=
  ∀ n, (P5442142369990821771.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P9410101907980393352

`eq[6, A083260(n+1)]+1`
-/

namespace A325230.P9410101907980393352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325230.P9410101907980393352

namespace A325230

/-- `eq[6, A083260(n+1)]+1` -/
def P9410101907980393352.Spec : Prop :=
  ∀ n, (P9410101907980393352.a n : ℤ) = A325230 (n + 1)

end A325230

/-! ## A325230.P4034700603426482835

`filter[A065200(n+1), A215480(#)]`
-/

namespace A325230.P4034700603426482835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A325230.P4034700603426482835

namespace A325230

/-- `filter[A065200(n+1), A215480(#)]` -/
def P4034700603426482835.Spec : Prop :=
  ∀ n, P4034700603426482835.a n = A325230 (n + 1)

end A325230

/-! ## A325230.P17836572483763434512

`filter[A080364(n+1), A215480(#)]`
-/

namespace A325230.P17836572483763434512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A325230.P17836572483763434512

namespace A325230

/-- `filter[A080364(n+1), A215480(#)]` -/
def P17836572483763434512.Spec : Prop :=
  ∀ n, P17836572483763434512.a n = A325230 (n + 1)

end A325230

/-!
# A325231: Numbers of the form 2 * p or 3 * 2^k, p prime, k > 1.

The programs for A325231, there is no canonical definition to state claims against.
-/

/-! ## A325231.P5182578278849992628

`filter[A385755(n+1), A353671(#)]`
-/

namespace A325231.P5182578278849992628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353671 (f1 j).toNat = 1) n)

end

end A325231.P5182578278849992628

/-! ## A325231.P11813766836317346846

`∩[A100368(n+1), A385755(n+1)]`
-/

namespace A325231.P11813766836317346846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325231.P11813766836317346846

/-! ## A325231.P8449482496214245762

`∩[A036348(n+1), A385755(n+1)]`
-/

namespace A325231.P8449482496214245762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325231.P8449482496214245762

/-! ## A325231.P10649546984651524844

`filter[A328028(n+1), A353670(#)]`
-/

namespace A325231.P10649546984651524844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A325231.P10649546984651524844

/-! ## A325231.P1582100956645184637

`filter[A328028(n+1), A353671(#)]`
-/

namespace A325231.P1582100956645184637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353671 (f1 j).toNat = 1) n)

end

end A325231.P1582100956645184637

/-! ## A325231.P7181830428316625362

`filter[A328028(n+3), A340371(#)]`
-/

namespace A325231.P7181830428316625362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A325231.P7181830428316625362

/-! ## A325231.P3570669244898979312

`∩[A038550(n+1), A328028(n+1)]`
-/

namespace A325231.P3570669244898979312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325231.P3570669244898979312

/-! ## A325231.P11007525447392036615

`∩[A100368(n+1), A328028(n+1)]`
-/

namespace A325231.P11007525447392036615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325231.P11007525447392036615

/-! ## A325231.P5772179177464335903

`∩[A036350(n+1), A385755(n+1)]`
-/

namespace A325231.P5772179177464335903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325231.P5772179177464335903

/-! ## A325231.P3813033036516290024

`2*(eq[2, A274616(A204217(n+1))]+1)`
-/

namespace A325231.P3813033036516290024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A204217 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A325231.P3813033036516290024

/-! ## A325231.P9173133996318080040

`A103517(eq[2, A000720(A204217(n+1))])`
-/

namespace A325231.P9173133996318080040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A204217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325231.P9173133996318080040

/-! ## A325231.P13034638499753306981

`A103517(eq[2, A274616(A204217(n+1))])`
-/

namespace A325231.P13034638499753306981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A204217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325231.P13034638499753306981

/-! ## A325231.P18187541968533147814

`A103517(eq[A010685(n), A091570(n+1)])`
-/

namespace A325231.P18187541968533147814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325231.P18187541968533147814

/-! ## A325231.P7802038682382055682

`A103517(eq[A006022(n+1), A124625(n)])`
-/

namespace A325231.P7802038682382055682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325231.P7802038682382055682

/-! ## A325231.P2995092035646946042

`A103517(eq[A000034(n), A317840(n+1)])`
-/

namespace A325231.P2995092035646946042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325231.P2995092035646946042

/-! ## A325231.P10856818185927454607

`A103517(eq[A000034(n), A329322(n+1)])`
-/

namespace A325231.P10856818185927454607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325231.P10856818185927454607

/-! ## A325231.P3646438742128560682

`A103517(eq[A000265(n+1), A090369(n+1)])`
-/

namespace A325231.P3646438742128560682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325231.P3646438742128560682

/-! ## A325231.P15364630147488576654

`A005408(eq[A000034(n), A317840(n+1)])+1`
-/

namespace A325231.P15364630147488576654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A325231.P15364630147488576654

/-! ## A325231.P13684622556575661239

`A005843(eq[A000034(n), A317840(n+1)]+1)`
-/

namespace A325231.P13684622556575661239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A325231.P13684622556575661239

/-! ## A325231.P6964008821490098020

`A005408(eq[A000034(n), A329322(n+1)])+1`
-/

namespace A325231.P6964008821490098020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A325231.P6964008821490098020

/-!
# A325232: Number of integer partitions (of any nonnegative integer) whose sum minus the lesser of their maximum part and their number of parts is n.

The programs for A325232, there is no canonical definition to state claims against.
-/

/-! ## A325232.P12926857115206606264

`A003056(A000041(n)*A332578(n+3))`
-/

namespace A325232.P12926857115206606264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000041 n * A332578 (n + 3)).toNat

end

end A325232.P12926857115206606264

/-! ## A325232.P1606626442242278259

`A257639(A007894(3*n+2))+A248420(n+1)`
-/

namespace A325232.P1606626442242278259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A007894 (3 * n + 2 + 10)).toNat + A248420 (n + 1)

end

end A325232.P1606626442242278259

/-! ## A325232.P1049497421031458852

`A088725(A000070(n))+A025065(n)`
-/

namespace A325232.P1049497421031458852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (A000070 n).toNat + A025065 n

end

end A325232.P1049497421031458852

/-! ## A325232.P12694693822789091904

`A000194(A062748(n)*A260710(n))`
-/

namespace A325232.P12694693822789091904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A062748 n * A260710 n).toNat

end

end A325232.P12694693822789091904

/-! ## A325232.P5088855656461436600

`A029836(A025591(2*n+3))+A006128(n)`
-/

namespace A325232.P5088855656461436600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029836 (A025591 (2 * n + 3)).toNat + A006128 n

end

end A325232.P5088855656461436600

/-!
# A325233: Heinz numbers of integer partitions with Dyson rank 1.

The programs for A325233, there is no canonical definition to state claims against.
-/

/-! ## A325233.P5393862305569806177

`eq[1, A257541(n+2)]+2`
-/

namespace A325233.P5393862305569806177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A325233.P5393862305569806177

/-! ## A325233.P5822302657267567219

`record[A063041(A106529(n+1))]`
-/

namespace A325233.P5822302657267567219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (A106529 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325233.P5822302657267567219

/-! ## A325233.P7137624773968925425

`record[A025480(A106529(2+n))]`
-/

namespace A325233.P7137624773968925425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A106529 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325233.P7137624773968925425

/-! ## A325233.P8033436270468881405

`record[A032742(A106529(n+3))]`
-/

namespace A325233.P8033436270468881405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A106529 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325233.P8033436270468881405

/-! ## A325233.P8068202899248660544

`record[A260439(A106529(A233583(n+1)))]`
-/

namespace A325233.P8068202899248660544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (A106529 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325233.P8068202899248660544

/-! ## A325233.P8777748089553567078

`record[A260439(A106529(A195153(n+3)))]`
-/

namespace A325233.P8777748089553567078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (A106529 (A195153 (n + 3)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325233.P8777748089553567078

/-! ## A325233.P9032220892768718282

`eq[A001222(n+1)+1, A049084(A006530(n+1))]+1`
-/

namespace A325233.P9032220892768718282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A006530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325233.P9032220892768718282

/-!
# A325234: Heinz numbers of integer partitions with Dyson rank -1.

The programs for A325234, there is no canonical definition to state claims against.
-/

/-! ## A325234.P16538591064415498132

`eq[1, -A257541(n+2)]+2`
-/

namespace A325234.P16538591064415498132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A257541 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A325234.P16538591064415498132

/-! ## A325234.P5020456260292330192

`A171463(eq[1, A257541(n+2)+2])`
-/

namespace A325234.P5020456260292330192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325234.P5020456260292330192

/-! ## A325234.P9566564504641353287

`eq[A257541(n+2), A260196(n)]+2`
-/

namespace A325234.P9566564504641353287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A325234.P9566564504641353287

/-! ## A325234.P13996766942050428047

`eq[A061395(n+1)+1, A001222(n+1)]+1`
-/

namespace A325234.P13996766942050428047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325234.P13996766942050428047

/-! ## A325234.P17059890155727648815

`eq[A325225(n+1)+1, A001222(n+1)]+1`
-/

namespace A325234.P17059890155727648815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325234.P17059890155727648815

/-! ## A325234.P13425112030858714757

`A171463(eq[A257541(n+2), A260196(n)])`
-/

namespace A325234.P13425112030858714757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325234.P13425112030858714757

/-!
# A325235: Heinz numbers of integer partitions with Dyson rank 1 or -1.

The programs for A325235, there is no canonical definition to state claims against.
-/

/-! ## A325235.P16076878023253730471

`eq[1, abs(A257541(n+2))]+2`
-/

namespace A325235.P16076878023253730471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257541 (n + 2)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A325235.P16076878023253730471

/-! ## A325235.P10437335065953216327

`eq[1, A257541(round(acot(n)+n))²]`
-/

namespace A325235.P10437335065953216327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325235.P10437335065953216327

/-! ## A325235.P14628526853117847875

`∪[A325233(n+1), A325234(n+1)]`
-/

namespace A325235.P14628526853117847875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325235.P14628526853117847875

/-! ## A325235.P10843958053909989087

`eq[A263297(n+2), A325225(n+2)+1]+2`
-/

namespace A325235.P10843958053909989087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A325235.P10843958053909989087

/-!
# A325236: Squarefree k such that phi(k)/k - 1/2 is positive and minimal for k with gpf(k) = prime(n).

The programs for A325236, there is no canonical definition to state claims against.
-/

/-! ## A325236.P8778193406859223945

`A358170(A000975(n))`
-/

namespace A325236.P8778193406859223945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358170 (A000975 n).toNat

end

end A325236.P8778193406859223945

/-! ## A325236.P16330890045931070112

`A358170(A215410(n))`
-/

namespace A325236.P16330890045931070112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358170 (A215410 n).toNat

end

end A325236.P16330890045931070112

/-! ## A325236.P16758209867024703496

`A358170(∑[A001045(n)])`
-/

namespace A325236.P16758209867024703496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358170 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325236.P16758209867024703496

/-!
# A325237: Squarefree k such that 1/2 - phi(k)/k is positive and minimal for k with gpf(k) = prime(n).

The programs for A325237, there is no canonical definition to state claims against.
-/

/-! ## A325237.P3939847240831063093

`A358170(A293364(n+1))`
-/

namespace A325237.P3939847240831063093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358170 (A293364 (n + 1)).toNat

end

end A325237.P3939847240831063093

/-! ## A325237.P9458234806541544532

`A358170(∑[A073879(n+1)])`
-/

namespace A325237.P9458234806541544532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358170 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325237.P9458234806541544532

/-!
# A325238: First positive integer with each omega-sequence.

The programs for A325238, there is no canonical definition to state claims against.
-/

/-! ## A325238.P11073845448025010052

`A025487(record[A008612(A282864(n))])`
-/

namespace A325238.P11073845448025010052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A282864 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A325238.P11073845448025010052

/-! ## A325238.P13736431113924243026

`A025487(record[A306433(n)+A002024(n+1)])`
-/

namespace A325238.P13736431113924243026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306433 n + A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A325238.P13736431113924243026

/-! ## A325238.P17902763313958236485

`A025487(lt[A135722(2*n+3), A005897(n)])`
-/

namespace A325238.P17902763313958236485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135722 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325238.P17902763313958236485

/-! ## A325238.P9762301101008074099

`A025487(lt[A392704(n), A094608(2*n+1)])`
-/

namespace A325238.P9762301101008074099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392704 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094608 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325238.P9762301101008074099

/-! ## A325238.P13020587568107970196

`∪[A070175(n), A384010(A087593(n))]`
-/

namespace A325238.P13020587568107970196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384010 (A087593 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325238.P13020587568107970196

/-!
# A325239: Irregular triangle read by rows where row 1 is {1} and row n > 1 is the sequence starting with n and repeatedly applying A181819 until 2 is reached.

The programs for A325239, there is no canonical definition to state claims against.
-/

/-! ## A325239.P17480185697154319074

`A057427(A355089(n))*A375513(n+1)`
-/

namespace A325239.P17480185697154319074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A355089 n).toNat * A375513 (n + 1)

end

end A325239.P17480185697154319074

/-! ## A325239.P17861356766024927115

`A375513(n+1)/A375491(A286863(n))`
-/

namespace A325239.P17861356766024927115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375513 (n + 1) : ℚ) / (A375491 (A286863 n).toNat : ℚ)

end

end A325239.P17861356766024927115

/-! ## A325239.P9271919944738610996

`A375513(n+1)+A375487(A205255(n+1))`
-/

namespace A325239.P9271919944738610996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375513 (n + 1) + A375487 (A205255 (n + 1)).toNat

end

end A325239.P9271919944738610996

/-! ## A325239.P4843216377991694058

`A008835(A069051(n+1))*A375513(n+1)`
-/

namespace A325239.P4843216377991694058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (A069051 (n + 1)).toNat * A375513 (n + 1)

end

end A325239.P4843216377991694058

/-! ## A325239.P27746413893191035

`A057427(A026385(n+2))*A375513(n+1)`
-/

namespace A325239.P27746413893191035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A026385 (n + 2)).toNat * A375513 (n + 1)

end

end A325239.P27746413893191035

/-!
# A325240: Numbers whose minimum prime exponent is 2.

The programs for A325240, there is no canonical definition to state claims against.
-/

/-! ## A325240.P11983027865623635793

`∪[A001248(n+1), A387256(n+1)]`
-/

namespace A325240.P11983027865623635793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325240.P11983027865623635793

/-! ## A325240.P14577518630518989689

`∪[A077438(n+1), A387256(n+1)]`
-/

namespace A325240.P14577518630518989689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325240.P14577518630518989689

/-! ## A325240.P10012296126755996711

`∪[A381314(n+1), A387256(n+1)]`
-/

namespace A325240.P10012296126755996711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325240.P10012296126755996711

/-! ## A325240.P16380786613211229328

`eq[2, A051904(n+1)]+1`
-/

namespace A325240.P16380786613211229328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325240.P16380786613211229328

/-! ## A325240.P7834849715870463491

`∩[A001694(n+1), A038109(n+1)]`
-/

namespace A325240.P7834849715870463491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325240.P7834849715870463491

/-! ## A325240.P112062586133194150

`∩[A038109(n+1), A376172(n+1)]`
-/

namespace A325240.P112062586133194150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325240.P112062586133194150

/-! ## A325240.P16936292515536820589

`record[A057521(A038109(n+1))]`
-/

namespace A325240.P16936292515536820589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A038109 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325240.P16936292515536820589

/-! ## A325240.P17591925883107380003

`∩[A038109(n+1), A393924(n+1)]`
-/

namespace A325240.P17591925883107380003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325240.P17591925883107380003

/-! ## A325240.P3591851976764944162

`eq[2, A051904(A028310(n))]`
-/

namespace A325240.P3591851976764944162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325240.P3591851976764944162

/-! ## A325240.P3067067466387543568

`A020725(eq[2, A051904(n+1)])`
-/

namespace A325240.P3067067466387543568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325240.P3067067466387543568

/-! ## A325240.P17840135365935235447

`A065475(eq[2, A051904(n+1)])`
-/

namespace A325240.P17840135365935235447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325240.P17840135365935235447

/-! ## A325240.P11588001405533349612

`eq[2, A051904(A138153(n+1))]`
-/

namespace A325240.P11588001405533349612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325240.P11588001405533349612

/-! ## A325240.P6679557555225162608

`filter[A038109(n+1), A112526(#)]`
-/

namespace A325240.P6679557555225162608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A325240.P6679557555225162608

/-! ## A325240.P15244064095155857412

`filter[A362147(n+1), A112526(#)]`
-/

namespace A325240.P15244064095155857412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A325240.P15244064095155857412

/-! ## A325240.P13488374377250190246

`eq[2, A071178(A089247(n+1))]+1`
-/

namespace A325240.P13488374377250190246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A089247 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325240.P13488374377250190246

/-! ## A325240.P12958386193127101235

`eq[2, A032741(A304181(n+1))]+1`
-/

namespace A325240.P12958386193127101235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A304181 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325240.P12958386193127101235

/-! ## A325240.P750347304225590371

`∩[A001694(n+1), A362147(n+1)]`
-/

namespace A325240.P750347304225590371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325240.P750347304225590371

/-! ## A325240.P7060343309394933438

`∩[A362147(n+1), A376172(n+1)]`
-/

namespace A325240.P7060343309394933438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325240.P7060343309394933438

/-!
# A325241: Numbers > 1 whose maximum prime exponent is one greater than their minimum.

The programs for A325241, the canonical program `A325241.P7570542115971715499` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325241 has offset 1).

The definition of A325241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325241.P7570542115971715499

`eq[1, A062977(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A325241

/-- `eq[1, A062977(n+1)]+1` -/
def P7570542115971715499.Spec : Prop :=
  ∀ n, (P7570542115971715499.a n : ℤ) = A325241 (n + 1)

theorem P7570542115971715499.correct : P7570542115971715499.Spec := by
  intro n
  simp only [A325241, Nat.add_sub_cancel]

end A325241

/-! ## A325241.P5062765960555913480

`eq[A051903(n+1), A051904(n+1)+1]+1`
-/

namespace A325241.P5062765960555913480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325241.P5062765960555913480

namespace A325241

/-- `eq[A051903(n+1), A051904(n+1)+1]+1` -/
def P5062765960555913480.Spec : Prop :=
  ∀ n, (P5062765960555913480.a n : ℤ) = A325241 (n + 1)

end A325241

/-! ## A325241.P13949565650130654005

`record[A059404(n+1)/A062977(A059404(n+1))]`
-/

namespace A325241.P13949565650130654005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059404 (n + 1) : ℚ) / (A062977 (A059404 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325241.P13949565650130654005

namespace A325241

/-- `record[A059404(n+1)/A062977(A059404(n+1))]` -/
def P13949565650130654005.Spec : Prop :=
  ∀ n, P13949565650130654005.a n = (A325241 (n + 1) : ℚ)

end A325241

/-! ## A325241.P3734445941436308580

`eq[1, A062977(A028310(n))]`
-/

namespace A325241.P3734445941436308580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325241.P3734445941436308580

namespace A325241

/-- `eq[1, A062977(A028310(n))]` -/
def P3734445941436308580.Spec : Prop :=
  ∀ n, (P3734445941436308580.a n : ℤ) = A325241 (n + 1)

end A325241

/-! ## A325241.P6097873178374744727

`A061767(eq[1, A062977(n+1)])`
-/

namespace A325241.P6097873178374744727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325241.P6097873178374744727

namespace A325241

/-- `A061767(eq[1, A062977(n+1)])` -/
def P6097873178374744727.Spec : Prop :=
  ∀ n, P6097873178374744727.a n = A325241 (n + 1)

end A325241

/-! ## A325241.P2479154141120977840

`A153152(eq[1, A062977(n+1)])`
-/

namespace A325241.P2479154141120977840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325241.P2479154141120977840

namespace A325241

/-- `A153152(eq[1, A062977(n+1)])` -/
def P2479154141120977840.Spec : Prop :=
  ∀ n, P2479154141120977840.a n = A325241 (n + 1)

end A325241

/-! ## A325241.P3320324995766010970

`A326178(eq[1, A062977(n+1)])`
-/

namespace A325241.P3320324995766010970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325241.P3320324995766010970

namespace A325241

/-- `A326178(eq[1, A062977(n+1)])` -/
def P3320324995766010970.Spec : Prop :=
  ∀ n, P3320324995766010970.a n = A325241 (n + 1)

end A325241

/-! ## A325241.P9228126703306035644

`eq[1, A062977(A233583(n+1))]`
-/

namespace A325241.P9228126703306035644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325241.P9228126703306035644

namespace A325241

/-- `eq[1, A062977(A233583(n+1))]` -/
def P9228126703306035644.Spec : Prop :=
  ∀ n, (P9228126703306035644.a n : ℤ) = A325241 (n + 1)

end A325241

/-!
# A325242: Irregular triangle read by rows with zeros removed where T(n,k) is the number of integer partitions of n with k distinct multiplicities, n > 0.

The programs for A325242, there is no canonical definition to state claims against.
-/

/-! ## A325242.P746468579817302151

`A363130(A077168(n))`
-/

namespace A325242.P746468579817302151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363130 (A077168 n).toNat

end

end A325242.P746468579817302151

/-! ## A325242.P3908096549507945880

`A363130(A043319(n+1))`
-/

namespace A325242.P3908096549507945880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363130 (A043319 (n + 1)).toNat

end

end A325242.P3908096549507945880

/-! ## A325242.P17648751580453017376

`A363130(A044916(n+1))`
-/

namespace A325242.P17648751580453017376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363130 (A044916 (n + 1)).toNat

end

end A325242.P17648751580453017376

/-! ## A325242.P12365817958852416234

`A363130(A055646(n+1))`
-/

namespace A325242.P12365817958852416234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363130 (A055646 (n + 1)).toNat

end

end A325242.P12365817958852416234

/-! ## A325242.P6015642567494869573

`A363130(A065672(n+1))`
-/

namespace A325242.P6015642567494869573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363130 (A065672 (n + 1)).toNat

end

end A325242.P6015642567494869573

/-!
# A325243: Number of integer partitions of n with exactly two distinct multiplicities.

The programs for A325243, there is no canonical definition to state claims against.
-/

/-! ## A325243.P685781907003955700

`A342383(A363129(n))`
-/

namespace A325243.P685781907003955700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (A363129 n).toNat

end

end A325243.P685781907003955700

/-! ## A325243.P12534012495731507124

`A326025(n)-A050603(A097683(n+1))`
-/

namespace A325243.P12534012495731507124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326025 n - A050603 (A097683 (n + 1)).toNat

end

end A325243.P12534012495731507124

/-!
# A325245: Number of integer partitions of n with adjusted frequency depth 3.

The programs for A325245, there is no canonical definition to state claims against.
-/

/-! ## A325245.P11766728045180704819

`∑{d}[n, A111133(#)]`
-/

namespace A325245.P11766728045180704819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111133 d

end

end A325245.P11766728045180704819

/-! ## A325245.P17495474016383799671

`∑{d}[n, A000009(#)-1]`
-/

namespace A325245.P17495474016383799671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000009 d - 1)

end

end A325245.P17495474016383799671

/-! ## A325245.P18273321483681955308

`∑{d}[n, A052839(#)-2]`
-/

namespace A325245.P18273321483681955308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A052839 d - 2)

end

end A325245.P18273321483681955308

/-! ## A325245.P12538685166282302942

`∑{d}[n, abs(A081360(#))-1]`
-/

namespace A325245.P12538685166282302942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (|A081360 d| - 1)

end

end A325245.P12538685166282302942

/-! ## A325245.P17162613639154808338

`∑{d}[n, A015716(2*#²)]`
-/

namespace A325245.P17162613639154808338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A015716 (2 * d ^ 2)

end

end A325245.P17162613639154808338

/-! ## A325245.P4401898419058266698

`∑{d}[n, A035457(2*#)-1]`
-/

namespace A325245.P4401898419058266698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A035457 (2 * d) - 1)

end

end A325245.P4401898419058266698

/-! ## A325245.P10150173807947311762

`∑{d}[n, A054242(A000217(#))-1]`
-/

namespace A325245.P10150173807947311762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A054242 (A000217 d).toNat - 1)

end

end A325245.P10150173807947311762

/-! ## A325245.P3607205047223810954

`∑{d}[n, A318286(A000040(#))-1]`
-/

namespace A325245.P3607205047223810954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A318286 (A000040 d).toNat - 1)

end

end A325245.P3607205047223810954

/-!
# A325247: Numbers whose omega-sequence is strict (no repeated parts).

The programs for A325247, there is no canonical definition to state claims against.
-/

/-! ## A325247.P3984717137259722889

`lt[2-A347992(n+1), 4]+1`
-/

namespace A325247.P3984717137259722889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A347992 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325247.P3984717137259722889

/-! ## A325247.P17428266824965806287

`∪[∑[n+1]², A000961(n+1)]`
-/

namespace A325247.P17428266824965806287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A325247.P17428266824965806287

/-! ## A325247.P7292928624055978621

`∪[∑[n+1]², A246655(n+1)]`
-/

namespace A325247.P7292928624055978621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A325247.P7292928624055978621

/-! ## A325247.P6846457373291935619

`∪[record[A034699(n+1)], C(n+2, 2)²]`
-/

namespace A325247.P6846457373291935619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

end

end A325247.P6846457373291935619

/-! ## A325247.P7039281335616340477

`∪[lt[A001221(n+1), 2]+1, ∑[n+1]²]`
-/

namespace A325247.P7039281335616340477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f5 j) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = x) n

end

end A325247.P7039281335616340477

/-! ## A325247.P9477244681369835190

`filter[A082377(n+1), A384667(#)]`
-/

namespace A325247.P9477244681369835190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A325247.P9477244681369835190

/-! ## A325247.P961024755858189523

`filter[A119848(n+1), A384667(#)]`
-/

namespace A325247.P961024755858189523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A325247.P961024755858189523

/-! ## A325247.P1016714820730409013

`filter[A166401(n+1), A384667(#)]`
-/

namespace A325247.P1016714820730409013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A325247.P1016714820730409013

/-! ## A325247.P13160773773655249874

`filter[A212165(n+1), A384667(#)]`
-/

namespace A325247.P13160773773655249874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A325247.P13160773773655249874

/-!
# A325248: Heinz number of the omega-sequence of n.

The programs for A325248, there is no canonical definition to state claims against.
-/

/-! ## A325248.P1959859493486780119

`A327937(A292586(n+1)²*A329607(n+1))`
-/

namespace A325248.P1959859493486780119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (A292586 (n + 1) ^ 2 * A329607 (n + 1)).toNat

end

end A325248.P1959859493486780119

/-! ## A325248.P7393344360045629110

`A327937(A292586(n+1)*A329607(n+1)*A292586(n+1))`
-/

namespace A325248.P7393344360045629110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (A292586 (n + 1) * A329607 (n + 1) * A292586 (n + 1)).toNat

end

end A325248.P7393344360045629110

/-! ## A325248.P17579840856108175386

`A276076(A187829(A046523(n+1))-1)`
-/

namespace A325248.P17579840856108175386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 (A187829 (A046523 (n + 1)).toNat - 1).toNat

end

end A325248.P17579840856108175386

/-! ## A325248.P15477706923480345575

`A276086(A070824(2^A046523(n+1)))`
-/

namespace A325248.P15477706923480345575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A070824 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A046523 (n + 1) : ℤ))).toNat).toNat

end

end A325248.P15477706923480345575

/-!
# A325249: Sum of the omega-sequence of n.

The programs for A325249, there is no canonical definition to state claims against.
-/

/-! ## A325249.P4037877257234786462

`A056239(A325248(n+1))`
-/

namespace A325249.P4037877257234786462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A325248 (n + 1)).toNat

end

end A325249.P4037877257234786462

/-! ## A325249.P18246685597065980389

`A056239(A320118(char[1]+1+n))`
-/

namespace A325249.P18246685597065980389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A320118 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat

end

end A325249.P18246685597065980389

/-! ## A325249.P11845993882968439067

`∑{e}[(n+1)*a(A181819(n+1)-1-A010051(n+1)), #]` with `a(0)=1`
-/

namespace A325249.P11845993882968439067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1) * f1 (A181819 (n + 1) - 1 - A010051 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A325249.P11845993882968439067

/-! ## A325249.P13368836641394905977

`A056239(A320118(n+1)+A063524(n))`
-/

namespace A325249.P13368836641394905977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A320118 (n + 1) + A063524 n).toNat

end

end A325249.P13368836641394905977

/-! ## A325249.P11761806847979069252

`A056239(A320118(n+1))-A159075(n)`
-/

namespace A325249.P11761806847979069252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A320118 (n + 1)).toNat - A159075 n

end

end A325249.P11761806847979069252

/-! ## A325249.P8816224773907582985

`A056239(lcm(A275437(n), A320118(n+1)))`
-/

namespace A325249.P8816224773907582985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lcm (A275437 n) (A320118 (n + 1)))

end

end A325249.P8816224773907582985

/-! ## A325249.P5918549895965174649

`or(A056239(A320118(n+1)), A073424(n))`
-/

namespace A325249.P5918549895965174649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056239 (A320118 (n + 1)).toNat) (A073424 n)

end

end A325249.P5918549895965174649

/-! ## A325249.P10102628231468794506

`A056239(A320118(n+1))^A105812(n)²`
-/

namespace A325249.P10102628231468794506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (A320118 (n + 1)).toNat : ℚ) ^ (A105812 n ^ 2 : ℤ)

end

end A325249.P10102628231468794506

/-! ## A325249.P15922935692520017266

`A252736(A320118(n+1))+A001222(n+1)`
-/

namespace A325249.P15922935692520017266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A320118 (n + 1)).toNat + A001222 (n + 1)

end

end A325249.P15922935692520017266

/-! ## A325249.P9791014943838488524

`A238845(A001222(n+1)*A320118(n+1))`
-/

namespace A325249.P9791014943838488524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (A001222 (n + 1) * A320118 (n + 1)).toNat

end

end A325249.P9791014943838488524

/-!
# A325250: Number of integer partitions of n whose omega-sequence is strict (no repeated parts).

The programs for A325250, there is no canonical definition to state claims against.
-/

/-! ## A325250.P5853752226102229413

`A000041(n)-A325285(n)`
-/

namespace A325250.P5853752226102229413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A325285 n

end

end A325250.P5853752226102229413

/-! ## A325250.P11122534936560292982

`A213598(n)-A325285(n)`
-/

namespace A325250.P11122534936560292982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A325285 n

end

end A325250.P11122534936560292982

/-! ## A325250.P13370537522507123974

`sqrt(A001255(n))-A325285(n)`
-/

namespace A325250.P13370537522507123974
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A325285 n : ℝ)

end

end A325250.P13370537522507123974

/-! ## A325250.P17546111884610049614

`∑[A002865(n)]-A325285(n)`
-/

namespace A325250.P17546111884610049614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325285 n

end

end A325250.P17546111884610049614

/-! ## A325250.P6287677908893207195

`A035444(4*n)-A325285(n)`
-/

namespace A325250.P6287677908893207195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * n) - A325285 n

end

end A325250.P6287677908893207195

/-!
# A325251: Numbers whose omega-sequence covers an initial interval of positive integers.

The programs for A325251, there is no canonical definition to state claims against.
-/

/-! ## A325251.P2361852034967164446

`eq[1, A008683(A281118(n+1))²]+1`
-/

namespace A325251.P2361852034967164446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A281118 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325251.P2361852034967164446

/-! ## A325251.P3178196798424638556

`eq[1, A076649(A326975(n+1)+1)]+1`
-/

namespace A325251.P3178196798424638556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (A326975 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325251.P3178196798424638556

/-! ## A325251.P8577724190937645857

`lt[A009001(A281118(n+1)+1), 2]+1`
-/

namespace A325251.P8577724190937645857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A281118 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325251.P8577724190937645857

/-! ## A325251.P9346767678805945909

`eq[A003418(A349326(n+1)), A050320(n+1)]+1`
-/

namespace A325251.P9346767678805945909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A349326 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325251.P9346767678805945909

/-! ## A325251.P848548153787731013

`eq[2, A071364(A317144(n+1)+2)]+1`
-/

namespace A325251.P848548153787731013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A317144 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325251.P848548153787731013

/-! ## A325251.P2165523327499645221

`lt[A001222(2+A317144(n+1)), 2]+1`
-/

namespace A325251.P2165523327499645221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 + A317144 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325251.P2165523327499645221

/-!
# A325252: Number of integer partitions of n with frequency depth floor(sqrt(n)).

The programs for A325252, there is no canonical definition to state claims against.
-/

/-! ## A325252.P8977715068050736696

`A325280(∑[n]+floor(sqrt(n)))`
-/

namespace A325252.P8977715068050736696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.sqrt n)

end

end A325252.P8977715068050736696

/-!
# A325255: 3-smooth numbers k such that k+1 and (k+2)/2 are prime.

The programs for A325255, there is no canonical definition to state claims against.
-/

/-! ## A325255.P11320064728796540864

`∩[A003586(n+1), A089965(n+1)]`
-/

namespace A325255.P11320064728796540864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325255.P11320064728796540864

/-! ## A325255.P9684872951961416875

`∩[A007694(n+1), A089965(n+1)]`
-/

namespace A325255.P9684872951961416875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325255.P9684872951961416875

/-! ## A325255.P3070179194859164887

`∩[A057919(n+1), A089965(n+1)]`
-/

namespace A325255.P3070179194859164887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325255.P3070179194859164887

/-! ## A325255.P6730793866235495431

`∩[A089965(n+1), A257997(n+1)]`
-/

namespace A325255.P6730793866235495431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325255.P6730793866235495431

/-! ## A325255.P12024532339207308244

`∩[A089965(n+1), A258023(n+1)]`
-/

namespace A325255.P12024532339207308244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325255.P12024532339207308244

/-!
# A325256: Number of normal multisets of size n whose adjusted frequency depth is the maximum for multisets of that size.

The programs for A325256, there is no canonical definition to state claims against.
-/

/-! ## A325256.P16685440242508899210

`A282014(A127624(2*n+5)%A283388(n))`
-/

namespace A325256.P16685440242508899210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282014 (Int.tmod (A127624 (2 * n + 5)) (A283388 n)).toNat

end

end A325256.P16685440242508899210

/-!
# A325258: a(1) = 1; otherwise, first differences of Levine's sequence A011784.

The programs for A325258, there is no canonical definition to state claims against.
-/

/-! ## A325258.P6323065754073280661

`char[1]+Δ[A011784(n+1)]`
-/

namespace A325258.P6323065754073280661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011784 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A325258.P6323065754073280661

/-! ## A325258.P6472231215310062388

`Δ[A157928(n)+A011784(n+1)]`
-/

namespace A325258.P6472231215310062388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A011784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325258.P6472231215310062388

/-! ## A325258.P13035148885274834010

`gcd(Δ[A011784(n+1)], A016411(n))`
-/

namespace A325258.P13035148885274834010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011784 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A016411 n)

end

end A325258.P13035148885274834010

/-! ## A325258.P8404780445492232625

`or(Δ[A011784(n+1)], A195198(n))`
-/

namespace A325258.P8404780445492232625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A195198 n)

end

end A325258.P8404780445492232625

/-! ## A325258.P13199979776490798084

`or(Δ[A011784(n+1)], A204843(n))`
-/

namespace A325258.P13199979776490798084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A204843 n)

end

end A325258.P13199979776490798084

/-!
# A325259: Numbers with one fewer distinct prime exponents than distinct prime factors.

The programs for A325259, there is no canonical definition to state claims against.
-/

/-! ## A325259.P15534761132006432959

`eq[2, A327500(1+n)]+1`
-/

namespace A325259.P15534761132006432959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325259.P15534761132006432959

/-! ## A325259.P1654992151875209885

`eq[2, A351946(n+1)]+1`
-/

namespace A325259.P1654992151875209885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351946 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325259.P1654992151875209885

/-! ## A325259.P9027596495806158008

`eq[2, A353507(n+1)]+1`
-/

namespace A325259.P9027596495806158008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353507 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325259.P9027596495806158008

/-! ## A325259.P17258509380384335904

`eq[2, A362613(1+n)]+1`
-/

namespace A325259.P17258509380384335904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362613 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325259.P17258509380384335904

/-! ## A325259.P9099644313262236336

`lt[-a(A362613(n)), 0]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A325259.P9099644313262236336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  -f1 (A362613 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325259.P9099644313262236336

/-! ## A325259.P4789500934113564481

`lt[-a(A353507(n)), 0]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A325259.P4789500934113564481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  -f1 (A353507 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325259.P4789500934113564481

/-! ## A325259.P11775452310031683276

`eq[2, A351946(abs(C(2, n)-n))]`
-/

namespace A325259.P11775452310031683276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351946 |(Nat.choose 2 n : ℤ) - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325259.P11775452310031683276

/-! ## A325259.P1290191146098844438

`eq[2, A327500(gcd(n, C(2, n)))!]`
-/

namespace A325259.P1290191146098844438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A327500 (Nat.gcd n (Nat.choose 2 n))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325259.P1290191146098844438

/-! ## A325259.P13337689891026744940

`eq[2, A327500(n*a(and(2, n²)))!]` with `a(0)=1`
-/

namespace A325259.P13337689891026744940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.factorial (A327500 (n * f2 (Nat.land 2 (n ^ 2)))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325259.P13337689891026744940

/-! ## A325259.P16497857046482227310

`eq[2, A327500(A028310(n))]`
-/

namespace A325259.P16497857046482227310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325259.P16497857046482227310

/-!
# A325260: Number of integer partitions of n whose omega-sequence covers an initial interval of positive integers.

The programs for A325260, the canonical program `A325260.P13011178329351078032` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325260 has offset 0).

The definition of A325260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325260.P13257004683372064595

`ogf((1+x+x^2+x^5-x^6+x^7+x^8+x^9)/(1-x^2-x^3-x^4+x^5+x^6+x^7-x^9))`
-/

namespace A325260.P13257004683372064595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 0, 0, 1, -1, 1, 1, 1] [1, 0, -1, -1, -1, 1, 1, 1, 0, -1] n

end

end A325260.P13257004683372064595

namespace A325260

/-- `ogf((1+x+x^2+x^5-x^6+x^7+x^8+x^9)/(1-x^2-x^3-x^4+x^5+x^6+x^7-x^9))` -/
def P13257004683372064595.Spec : Prop :=
  ∀ n, P13257004683372064595.a n = A325260 n

end A325260

/-! ## A325260.P16842603599767551171

`A127002(n+4)+A040001(n)`
-/

namespace A325260.P16842603599767551171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127002 (n + 4) + A040001 n

end

end A325260.P16842603599767551171

namespace A325260

/-- `A127002(n+4)+A040001(n)` -/
def P16842603599767551171.Spec : Prop :=
  ∀ n, P16842603599767551171.a n = A325260 n

end A325260

/-! ## A325260.P13011178329351078032

`A127002(n+4)+Δ[A267528(n+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A325260

/-- `A127002(n+4)+Δ[A267528(n+1)]` -/
def P13011178329351078032.Spec : Prop :=
  ∀ n, P13011178329351078032.a n = A325260 n

theorem P13011178329351078032.correct : P13011178329351078032.Spec := by
  intro n
  simp only [A325260]

end A325260

/-! ## A325260.P11182129192147916534

`A000041(n)-A325262(n)`
-/

namespace A325260.P11182129192147916534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A325262 n

end

end A325260.P11182129192147916534

namespace A325260

/-- `A000041(n)-A325262(n)` -/
def P11182129192147916534.Spec : Prop :=
  ∀ n, P11182129192147916534.a n = A325260 n

end A325260

/-! ## A325260.P11385447086242697455

`A213598(n)-A325262(n)`
-/

namespace A325260.P11385447086242697455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A325262 n

end

end A325260.P11385447086242697455

namespace A325260

/-- `A213598(n)-A325262(n)` -/
def P11385447086242697455.Spec : Prop :=
  ∀ n, P11385447086242697455.a n = A325260 n

end A325260

/-!
# A325261: Numbers whose omega-sequence does not cover an initial interval of positive integers.

The programs for A325261, there is no canonical definition to state claims against.
-/

/-! ## A325261.P17988737777199921412

`lt[A281118(n+1)%4, 1]+1`
-/

namespace A325261.P17988737777199921412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281118 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325261.P17988737777199921412

/-! ## A325261.P627387666662733406

`eq[0, A015044(A160086(n))]`
-/

namespace A325261.P627387666662733406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015044 (A160086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325261.P627387666662733406

/-! ## A325261.P17690300167542804450

`lt[2, A153452(A301830(n+1))]+1`
-/

namespace A325261.P17690300167542804450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A301830 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A325261.P17690300167542804450

/-! ## A325261.P9084965946344728978

`∪[A007304(n+1), A048108(n+1)]`
-/

namespace A325261.P9084965946344728978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325261.P9084965946344728978

/-! ## A325261.P14162904120368688804

`∪[A030626(n+1), A048108(n+1)]`
-/

namespace A325261.P14162904120368688804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325261.P14162904120368688804

/-! ## A325261.P6180144163510891446

`∪[A048108(n+1), A093599(n+1)]`
-/

namespace A325261.P6180144163510891446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325261.P6180144163510891446

/-! ## A325261.P17801630358476091778

`∪[A048108(n+1), A109426(n+1)]`
-/

namespace A325261.P17801630358476091778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325261.P17801630358476091778

/-! ## A325261.P13741847533465671513

`∪[A048108(n+1), A225228(n+1)]`
-/

namespace A325261.P13741847533465671513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325261.P13741847533465671513

/-! ## A325261.P6353802022290507168

`∪[A048108(n+1), A304636(n+1)]`
-/

namespace A325261.P6353802022290507168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325261.P6353802022290507168

/-! ## A325261.P7136133930889743494

`∪[A048108(n+1), A325264(n+1)]`
-/

namespace A325261.P7136133930889743494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325261.P7136133930889743494

/-!
# A325262: Number of integer partitions of n whose omega-sequence does not cover an initial interval of positive integers.

The programs for A325262, there is no canonical definition to state claims against.
-/

/-! ## A325262.P5903935992720787959

`A000041(n)-A325260(n)`
-/

namespace A325262.P5903935992720787959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A325260 n

end

end A325262.P5903935992720787959

/-! ## A325262.P7234628627214052836

`A213598(n)-A325260(n)`
-/

namespace A325262.P7234628627214052836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A325260 n

end

end A325262.P7234628627214052836

/-! ## A325262.P12625724011095151688

`sqrt(A001255(n))-A325260(n)`
-/

namespace A325262.P12625724011095151688
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A325260 n : ℝ)

end

end A325262.P12625724011095151688

/-! ## A325262.P16238678289350189324

`∑[A002865(n)]-A325260(n)`
-/

namespace A325262.P16238678289350189324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325260 n

end

end A325262.P16238678289350189324

/-! ## A325262.P1257969472018048605

`A100824(2*n)-A325260(n)`
-/

namespace A325262.P1257969472018048605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A325260 n

end

end A325262.P1257969472018048605

/-!
# A325263: Number of subsets of {1..n} containing n such that no two elements have the same sorted prime signature.

The programs for A325263, there is no canonical definition to state claims against.
-/

/-! ## A325263.P2767277175015746112

`A326438(n+1)/(1+A064839(n+1))`
-/

namespace A325263.P2767277175015746112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326438 (n + 1) : ℚ) / (1 + A064839 (n + 1) : ℚ)

end

end A325263.P2767277175015746112

/-! ## A325263.P13351512788089134816

`A326438(n)/A064839(n+1)`
-/

namespace A325263.P13351512788089134816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326438 n : ℚ) / (A064839 (n + 1) : ℚ)

end

end A325263.P13351512788089134816

/-! ## A325263.P1584497340255292367

`A325365(n+1)/A326439(n+1)*A326438(n)`
-/

namespace A325263.P1584497340255292367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325365 (n + 1) : ℚ) / (A326439 (n + 1) : ℚ) * (A326438 n : ℚ)

end

end A325263.P1584497340255292367

/-! ## A325263.P15055515113374914961

`Δ[A326438(n)]`
-/

namespace A325263.P15055515113374914961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325263.P15055515113374914961

/-! ## A325263.P11858454682540556721

`A326438(n+1)-A326438(n)`
-/

namespace A325263.P11858454682540556721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326438 (n + 1) - A326438 n

end

end A325263.P11858454682540556721

/-!
# A325264: Numbers whose omega-sequence sums to 7.

The programs for A325264, there is no canonical definition to state claims against.
-/

/-! ## A325264.P15937662986413474054

`eq[1, A306488(A074206(n))]`
-/

namespace A325264.P15937662986413474054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306488 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325264.P15937662986413474054

/-! ## A325264.P5627376593747797715

`eq[5, A117910(A117621(n+1))]`
-/

namespace A325264.P5627376593747797715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A117621 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325264.P5627376593747797715

/-! ## A325264.P12782565620934874129

`filter[A176238(n+1), A383576(#)]`
-/

namespace A325264.P12782565620934874129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383576 (f1 j).toNat = 1) n)

end

end A325264.P12782565620934874129

/-! ## A325264.P15923919095278763733

`filter[A231879(n+1), A383576(#)]`
-/

namespace A325264.P15923919095278763733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383576 (f1 j).toNat = 1) n)

end

end A325264.P15923919095278763733

/-! ## A325264.P9333477467918574660

`eq[3, A283530(A328706(n+1))]+1`
-/

namespace A325264.P9333477467918574660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283530 (A328706 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325264.P9333477467918574660

/-! ## A325264.P2819890744546680860

`∪[A007304(n+1), A272190(n+1)]`
-/

namespace A325264.P2819890744546680860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325264.P2819890744546680860

/-! ## A325264.P14188345719693456134

`∪[A093599(n+1), A272190(n+1)]`
-/

namespace A325264.P14188345719693456134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325264.P14188345719693456134

/-! ## A325264.P14446968196894519433

`eq[A032741(n), A136004(A074206(n))]`
-/

namespace A325264.P14446968196894519433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325264.P14446968196894519433

/-!
# A325265: Numbers with sum of omega-sequence > 4.

The programs for A325265, there is no canonical definition to state claims against.
-/

/-! ## A325265.P10549157693212963323

`lt[5, ∑{e}[n, #+2]]`
-/

namespace A325265.P10549157693212963323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325265.P10549157693212963323

/-! ## A325265.P3209525685994080115

`lt[5, ∏{e}[n, #+2]]`
-/

namespace A325265.P3209525685994080115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325265.P3209525685994080115

/-! ## A325265.P6482918651017584326

`lt[10, A048785(n)]`
-/

namespace A325265.P6482918651017584326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A325265.P6482918651017584326

/-! ## A325265.P13803756326256205449

`lt[4, A223135(n²)]`
-/

namespace A325265.P13803756326256205449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A325265.P13803756326256205449

/-! ## A325265.P522157402975028666

`lt[6, A032741(n²)]`
-/

namespace A325265.P522157402975028666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A325265.P522157402975028666

/-! ## A325265.P8897638123293940893

`lt[3, ∑{d}[n, A001221(#)]]`
-/

namespace A325265.P8897638123293940893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), A001221 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A325265.P8897638123293940893

/-! ## A325265.P16460893519210713231

`lt[7, A000005(n^ceil(atan(n)))]`
-/

namespace A325265.P16460893519210713231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A325265.P16460893519210713231

/-! ## A325265.P9697705624961839746

`lt[7, A000005((n+1)²)]+1`
-/

namespace A325265.P9697705624961839746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A325265.P9697705624961839746

/-! ## A325265.P9162445131281752799

`A348718(A011760(n+1))`
-/

namespace A325265.P9162445131281752799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348718 (A011760 (n + 1)).toNat

end

end A325265.P9162445131281752799

/-! ## A325265.P12207781018017332027

`lt[1, A087188(A074206(n))]`
-/

namespace A325265.P12207781018017332027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087188 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A325265.P12207781018017332027

/-!
# A325266: Numbers whose adjusted frequency depth equals their number of prime factors counted with multiplicity.

The programs for A325266, there is no canonical definition to state claims against.
-/

/-! ## A325266.P16525188150733437477

`eq[1, A264902(A174725(1+n))]+1`
-/

namespace A325266.P16525188150733437477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A174725 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325266.P16525188150733437477

/-! ## A325266.P14299611316133110833

`eq[A001222(n+1), A323014(n+1)]+1`
-/

namespace A325266.P14299611316133110833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325266.P14299611316133110833

/-! ## A325266.P17747520528497868995

`eq[A252736(n+1), A304455(n+1)]+1`
-/

namespace A325266.P17747520528497868995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325266.P17747520528497868995

/-! ## A325266.P11172708789518316774

`eq[A318473(n+1), A323014(n+1)]+1`
-/

namespace A325266.P11172708789518316774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325266.P11172708789518316774

/-! ## A325266.P6332704307150203289

`eq[A002828(A122179(n+1)), A289618(n+1)]+1`
-/

namespace A325266.P6332704307150203289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A122179 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325266.P6332704307150203289

/-! ## A325266.P1331773186279484142

`lt[A001222(n+1), A060084(A000005(n+1))]+1`
-/

namespace A325266.P1331773186279484142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060084 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325266.P1331773186279484142

/-! ## A325266.P17467399490207998160

`eq[1, A027750(A100577(n+1))]+1`
-/

namespace A325266.P17467399490207998160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A100577 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325266.P17467399490207998160

/-! ## A325266.P17692646804837034106

`eq[1, A043533(A100577(n+1)+1)]+1`
-/

namespace A325266.P17692646804837034106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (A100577 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325266.P17692646804837034106

/-! ## A325266.P10014449794441649214

`eq[A112186(A032741(n)), A178334(n)]`
-/

namespace A325266.P10014449794441649214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112186 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325266.P10014449794441649214

/-!
# A325267: Number of integer partitions of n with omicron 2.

The programs for A325267, there is no canonical definition to state claims against.
-/

/-! ## A325267.P4217475754017049191

`A325268(∑[char[1]+n]+1)`
-/

namespace A325267.P4217475754017049191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325268 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A325267.P4217475754017049191

/-! ## A325267.P8489155989190757560

`A319153(or(n, char[A047814(n)]))`
-/

namespace A325267.P8489155989190757560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319153 (Nat.lor n (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A325267.P8489155989190757560

/-! ## A325267.P15141174009232637747

`A325268(∑[n]+2)%A006318(n)`
-/

namespace A325267.P15141174009232637747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325268 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) (A006318 n)

end

end A325267.P15141174009232637747

/-! ## A325267.P14558538686200544945

`A319153(or(n, char[A061397(n+1)]))`
-/

namespace A325267.P14558538686200544945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319153 (Nat.lor n (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A325267.P14558538686200544945

/-! ## A325267.P9007959008335860897

`A115364(2*n+3)*A325268(A133263(n))`
-/

namespace A325267.P9007959008335860897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (2 * n + 3) * A325268 (A133263 n).toNat

end

end A325267.P9007959008335860897

/-!
# A325268: Triangle read by rows where T(n,k) is the number of integer partitions of n with omicron k.

The programs for A325268, there is no canonical definition to state claims against.
-/

/-! ## A325268.P399818804574344968

`A072660(C(A058716(n), A276921(n)))`
-/

namespace A325268.P399818804574344968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072660 (Nat.choose (A058716 n).toNat (A276921 n).toNat)

end

end A325268.P399818804574344968

/-! ## A325268.P11331593628396199685

`A003056(A187080(n)^A073200(n))`
-/

namespace A325268.P11331593628396199685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A187080 n : ℚ) ^ (A073200 n : ℤ))).toNat

end

end A325268.P11331593628396199685

/-! ## A325268.P17763294415498983388

`A163352(A187080(n)^A073200(n))`
-/

namespace A325268.P17763294415498983388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (SequenceMachineLib.roundAway ((A187080 n : ℚ) ^ (A073200 n : ℤ))).toNat

end

end A325268.P17763294415498983388

/-! ## A325268.P10459274093011138451

`and(A034254(A208153(n)), A211399(n))`
-/

namespace A325268.P10459274093011138451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034254 (A208153 n).toNat) (A211399 n)

end

end A325268.P10459274093011138451

/-! ## A325268.P8221976912406047659

`A381490(A211399(n))`
-/

namespace A325268.P8221976912406047659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381490 (A211399 n).toNat

end

end A325268.P8221976912406047659

/-!
# A325270: Numbers with 1 fewer distinct prime exponents than (not necessarily distinct) prime factors.

The programs for A325270, there is no canonical definition to state claims against.
-/

/-! ## A325270.P16353122686316859022

`eq[1, 7%A166974(n)]`
-/

namespace A325270.P16353122686316859022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A166974 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325270.P16353122686316859022

/-! ## A325270.P1872618993539152873

`eq[1, 5%A001055(n+1)]+1`
-/

namespace A325270.P1872618993539152873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A001055 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325270.P1872618993539152873

/-! ## A325270.P17853374569459852704

`eq[0, A029826(A077462(n))]`
-/

namespace A325270.P17853374569459852704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029826 (A077462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325270.P17853374569459852704

/-! ## A325270.P6755536646550084942

`eq[1, A066888(A166974(n))]`
-/

namespace A325270.P6755536646550084942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (A166974 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325270.P6755536646550084942

/-! ## A325270.P2184468315386205743

`eq[2, A056944(A104725(n))]`
-/

namespace A325270.P2184468315386205743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056944 (A104725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325270.P2184468315386205743

/-! ## A325270.P16314515157183367249

`eq[1, A000120(A166974(n)+2)]`
-/

namespace A325270.P16314515157183367249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A166974 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325270.P16314515157183367249

/-! ## A325270.P10006264813390051037

`eq[2, A006530(A166974(n)+2)]`
-/

namespace A325270.P10006264813390051037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A166974 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325270.P10006264813390051037

/-! ## A325270.P9911604167020488650

`filter[A319240(n+1), A212793(#)]`
-/

namespace A325270.P9911604167020488650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A325270.P9911604167020488650

/-! ## A325270.P4741468955793404495

`filter[A319240(n+1), A340369(#)]`
-/

namespace A325270.P4741468955793404495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A325270.P4741468955793404495

/-! ## A325270.P12278435439379468453

`filter[A319240(n+1), A354807(#)]`
-/

namespace A325270.P12278435439379468453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (f1 j).toNat = 1) n)

end

end A325270.P12278435439379468453

/-!
# A325271: Number of integer partitions of n with frequency depth round(sqrt(n)).

The programs for A325271, there is no canonical definition to state claims against.
-/

/-! ## A325271.P5007620589148901920

`A325280(∑[n]+round(sqrt(n)))`
-/

namespace A325271.P5007620589148901920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

end

end A325271.P5007620589148901920

/-!
# A325272: Adjusted frequency depth of n!.

The programs for A325272, there is no canonical definition to state claims against.
-/

/-! ## A325272.P270682464323019092

`∑{e}[A325275(n+1), #]`
-/

namespace A325272.P270682464323019092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A325272.P270682464323019092

/-!
# A325273: Prime omicron of n!.

The programs for A325273, there is no canonical definition to state claims against.
-/

/-! ## A325273.P6232755187022986761

`A003016(A004918(n+1)%A061556(n))`
-/

namespace A325273.P6232755187022986761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (Int.tmod (A004918 (n + 1)) (A061556 n)).toNat

end

end A325273.P6232755187022986761

/-! ## A325273.P317275262380111335

`A086454(A082522(n+1))%A082743(n)`
-/

namespace A325273.P317275262380111335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086454 (A082522 (n + 1)).toNat) (A082743 n)

end

end A325273.P317275262380111335

/-! ## A325273.P5267776424926015472

`A003016(A002998(n-char[1]))`
-/

namespace A325273.P5267776424926015472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (A002998 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A325273.P5267776424926015472

/-! ## A325273.P5278781182082270303

`A003016(A002998(n)-A063524(n))`
-/

namespace A325273.P5278781182082270303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (A002998 n - A063524 n).toNat

end

end A325273.P5278781182082270303

/-! ## A325273.P336964562412166575

`A003016(A002998(n)*A157928(n))`
-/

namespace A325273.P336964562412166575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (A002998 n * A157928 n).toNat

end

end A325273.P336964562412166575

/-!
# A325275: Heinz number of the omega-sequence of n!.

The programs for A325275, there is no canonical definition to state claims against.
-/

/-! ## A325275.P4073880586846441338

`A285328((C(n, 2)+1)*A000142(n))`
-/

namespace A325275.P4073880586846441338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 ((Nat.choose n 2 + 1 : ℤ) * A000142 n).toNat

end

end A325275.P4073880586846441338

/-! ## A325275.P8712372364402810672

`A071934(n!*∑[A071934(n+1)])`
-/

namespace A325275.P8712372364402810672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071934 ((Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A325275.P8712372364402810672

/-!
# A325276: Irregular triangle read by rows where row n is the omega-sequence of n!.

The programs for A325276, there is no canonical definition to state claims against.
-/

/-! ## A325276.P13495084110772302965

`A177903(A162387(n+1))`
-/

namespace A325276.P13495084110772302965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A162387 (n + 1)).toNat

end

end A325276.P13495084110772302965

/-! ## A325276.P3814503987022438527

`A065120(A166962(n+5)+1)`
-/

namespace A325276.P3814503987022438527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A166962 (n + 5) + 1).toNat

end

end A325276.P3814503987022438527

/-! ## A325276.P2393459161344633226

`A379311(A014234(n+1))+A065120(n)`
-/

namespace A325276.P2393459161344633226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379311 (A014234 (n + 1)).toNat + A065120 n

end

end A325276.P2393459161344633226

/-! ## A325276.P12092295101255765770

`A361123(A129519(n))+A239454(n+1)`
-/

namespace A325276.P12092295101255765770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361123 (A129519 n).toNat + A239454 (n + 1)

end

end A325276.P12092295101255765770

/-! ## A325276.P16874577128972167475

`A122200(n+2)+A030308(A283523(n))`
-/

namespace A325276.P16874577128972167475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122200 (n + 2) + A030308 (A283523 n).toNat

end

end A325276.P16874577128972167475

/-!
# A325278: Smallest number with adjusted frequency depth n.

The programs for A325278, there is no canonical definition to state claims against.
-/

/-! ## A325278.P18179301867516992818

`A182857(n)-char[1]`
-/

namespace A325278.P18179301867516992818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182857 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A325278.P18179301867516992818

/-! ## A325278.P1850364081739634482

`A182857(n*a(ceil(acot(n))-1))` with `a(0)=1, a(1)=2`
-/

namespace A325278.P1850364081739634482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A182857 ((n : ℤ) * a (⌈SequenceMachineLib.acot (n : ℝ)⌉ - 1).toNat).toNat

end

end A325278.P1850364081739634482

/-! ## A325278.P1685038149666473836

`abs(A182857(n)+A159075(n))`
-/

namespace A325278.P1685038149666473836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182857 n + A159075 n|

end

end A325278.P1685038149666473836

/-! ## A325278.P8369456796547402089

`and(-A040000(n), A182857(n))`
-/

namespace A325278.P8369456796547402089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A040000 n) (A182857 n)

end

end A325278.P8369456796547402089

/-! ## A325278.P14793362281318607143

`and(-A177002(n), A182857(n))`
-/

namespace A325278.P14793362281318607143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A177002 n) (A182857 n)

end

end A325278.P14793362281318607143

/-!
# A325280: Triangle read by rows where T(n,k) is the number of integer partitions of n with adjusted frequency depth k.

The programs for A325280, there is no canonical definition to state claims against.
-/

/-! ## A325280.P15613989477070716984

`A344612(lt[A147617(n), A278338(n+1)])`
-/

namespace A325280.P15613989477070716984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147617 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325280.P15613989477070716984

/-! ## A325280.P8636734941104270140

`A344612(lt[A117193(n+1), A059843(n+1)])`
-/

namespace A325280.P8636734941104270140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325280.P8636734941104270140

/-! ## A325280.P5605707809603002236

`A272604(A257783(n)²)`
-/

namespace A325280.P5605707809603002236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A257783 n ^ 2).toNat

end

end A325280.P5605707809603002236

/-! ## A325280.P3850578657603434972

`A272604(A257783(n)^2)`
-/

namespace A325280.P3850578657603434972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A257783 n ^ 2).toNat

end

end A325280.P3850578657603434972

/-! ## A325280.P17093170052695893695

`A124768(lcm(2, A257783(n)))`
-/

namespace A325280.P17093170052695893695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (Int.lcm 2 (A257783 n))

end

end A325280.P17093170052695893695

/-!
# A325281: Numbers of the form a*b, a*a*b, or a*a*b*c where a, b, and c are distinct primes. Numbers with sorted prime signature (1,1), (1,2), or (1,1,2).

The programs for A325281, there is no canonical definition to state claims against.
-/

/-! ## A325281.P16626674824237312612

`eq[1, A025465(A211437(n))]`
-/

namespace A325281.P16626674824237312612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A211437 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325281.P16626674824237312612

/-! ## A325281.P11106775577227333141

`eq[2, A219649(A104725(n))]`
-/

namespace A325281.P11106775577227333141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219649 (A104725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325281.P11106775577227333141

/-! ## A325281.P12177359150219062601

`eq[1, A002260(or(8, A104725(n)))]`
-/

namespace A325281.P12177359150219062601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.lor 8 (A104725 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325281.P12177359150219062601

/-! ## A325281.P2191025767842309191

`eq[2, A056944(or(8, A104725(n)))]`
-/

namespace A325281.P2191025767842309191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056944 (Int.lor 8 (A104725 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325281.P2191025767842309191

/-! ## A325281.P16046079637163670188

`filter[A123240(n+1), A359471(#)]`
-/

namespace A325281.P16046079637163670188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A325281.P16046079637163670188

/-! ## A325281.P17746351654003816740

`filter[A131181(n+1), A359471(#)]`
-/

namespace A325281.P17746351654003816740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A325281.P17746351654003816740

/-! ## A325281.P218249610625468199

`filter[A328956(n+1), A212793(#)]`
-/

namespace A325281.P218249610625468199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A325281.P218249610625468199

/-! ## A325281.P4603655823983415687

`filter[A328956(n+1), A359471(#)]`
-/

namespace A325281.P4603655823983415687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A325281.P4603655823983415687

/-! ## A325281.P8276447236571156849

`eq[1, A175512(A008480(n+1))]+1`
-/

namespace A325281.P8276447236571156849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175512 (A008480 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325281.P8276447236571156849

/-! ## A325281.P8285745068888342356

`∩[A048107(n+1), A123240(n+1)]`
-/

namespace A325281.P8285745068888342356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325281.P8285745068888342356

/-!
# A325282: Maximum adjusted frequency depth among integer partitions of n.

The programs for A325282, there is no canonical definition to state claims against.
-/

/-! ## A325282.P4658480921583688994

`∑[char[7*(a(n-2)-1)]]` with `a(0)=1, a(1)=4, a(2)=2, a(3)=3`
-/

namespace A325282.P4658480921583688994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2, 3] fun n f2 =>
  7 * (f2 (n - 2) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325282.P4658480921583688994

/-! ## A325282.P4990607104577482557

`∑[char[∑[A325258(n)]]]`
-/

namespace A325282.P4990607104577482557
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325258 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325282.P4990607104577482557

/-! ## A325282.P8278214896047764752

`∑[char[A011784(n+1)]]`
-/

namespace A325282.P8278214896047764752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011784 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325282.P8278214896047764752

/-! ## A325282.P7537839377297492520

`a(A230418(n-1))+1` with `a(0)=0`
-/

namespace A325282.P7537839377297492520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A230418 (n - 1)).toNat + 1

end

end A325282.P7537839377297492520

/-! ## A325282.P3960384655024614762

`∑[char[∑[A029388(2^n)+1]]]`
-/

namespace A325282.P3960384655024614762
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029388 (2 ^ n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325282.P3960384655024614762

/-! ## A325282.P18039804181787281270

`A225486(round(sqrt(n²+1)))+char[1]`
-/

namespace A325282.P18039804181787281270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225486 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A325282.P18039804181787281270

/-! ## A325282.P11564183305298441122

`(∑[char[A146000(n+1)+1]]+1)%(n+1)`
-/

namespace A325282.P11564183305298441122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146000 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % (n + 1)

end

end A325282.P11564183305298441122

/-! ## A325282.P12169948593272050967

`A269024(A322422(n+1))`
-/

namespace A325282.P12169948593272050967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269024 (A322422 (n + 1)).toNat

end

end A325282.P12169948593272050967

/-! ## A325282.P9553767040219012030

`∑[char[A008728(A001190(n))]]`
-/

namespace A325282.P9553767040219012030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008728 (A001190 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325282.P9553767040219012030

/-!
# A325283: Heinz numbers of integer partitions with maximum adjusted frequency depth for partitions of that sum.

The programs for A325283, there is no canonical definition to state claims against.
-/

/-! ## A325283.P9517248497422908542

`record[A152674(A033623(n+1))]`
-/

namespace A325283.P9517248497422908542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152674 (A033623 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325283.P9517248497422908542

/-! ## A325283.P11024455996036433429

`A004526(record[A000005(59*n+10)])`
-/

namespace A325283.P11024455996036433429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (59 * n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A325283.P11024455996036433429

/-! ## A325283.P2741078530518101745

`∑[A099774(A387267(n+3)+A107854(2*(n+2)))]`
-/

namespace A325283.P2741078530518101745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (A387267 (n + 3) + A107854 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325283.P2741078530518101745

/-! ## A325283.P9121740008073701538

`∑[A000005(∑[A121076(n)]+1)]`
-/

namespace A325283.P9121740008073701538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325283.P9121740008073701538

/-! ## A325283.P9320656146265643736

`∑[A296078(record[A160248(n+1)])]`
-/

namespace A325283.P9320656146265643736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160248 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296078 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325283.P9320656146265643736

/-!
# A325284: Numbers whose prime indices form an initial interval with a single hole: (1, 2, ..., x, x + 2, ..., m - 1, m), where x can be 0 but must be less than m - 1.

The programs for A325284, there is no canonical definition to state claims against.
-/

/-! ## A325284.P4536333498474785334

`eq[1, A079067(n+1)]+1`
-/

namespace A325284.P4536333498474785334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325284.P4536333498474785334

/-! ## A325284.P6838249619025250928

`eq[n, n-a(A079067(n))]` with `a(0)=1`
-/

namespace A325284.P6838249619025250928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (A079067 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325284.P6838249619025250928

/-! ## A325284.P7645902799918856094

`eq[1, A079067(A028310(n))]`
-/

namespace A325284.P7645902799918856094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325284.P7645902799918856094

/-! ## A325284.P5568217813352785604

`A020725(eq[1, A079067(n+1)])`
-/

namespace A325284.P5568217813352785604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325284.P5568217813352785604

/-! ## A325284.P935391260960884438

`A114637(eq[1, A079067(n+1)])`
-/

namespace A325284.P935391260960884438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325284.P935391260960884438

/-! ## A325284.P4024046213548706999

`eq[1, A079067(A233583(n+1))]`
-/

namespace A325284.P4024046213548706999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325284.P4024046213548706999

/-! ## A325284.P2661425269578086355

`eq[1, A079067(A000007(n)+n)]`
-/

namespace A325284.P2661425269578086355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325284.P2661425269578086355

/-! ## A325284.P16066379322637550247

`eq[A001222(n+2), A297167(n+2)]+2`
-/

namespace A325284.P16066379322637550247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A325284.P16066379322637550247

/-! ## A325284.P10383281035858470027

`A000720(p?[A000040(n+1)*A079067(n+1)])`
-/

namespace A325284.P10383281035858470027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A079067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A325284.P10383281035858470027

/-!
# A325285: Number of integer partitions of n whose omega-sequence has repeated parts.

The programs for A325285, there is no canonical definition to state claims against.
-/

/-! ## A325285.P16141697871066770447

`A000041(n)-A325250(n)`
-/

namespace A325285.P16141697871066770447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A325250 n

end

end A325285.P16141697871066770447

/-! ## A325285.P3474245174353063954

`A213598(n)-A325250(n)`
-/

namespace A325285.P3474245174353063954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A325250 n

end

end A325285.P3474245174353063954

/-! ## A325285.P8152881503196647081

`sqrt(A001255(n))-A325250(n)`
-/

namespace A325285.P8152881503196647081
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A325250 n : ℝ)

end

end A325285.P8152881503196647081

/-! ## A325285.P3804216498648457625

`∑[A002865(n)]-A325250(n)`
-/

namespace A325285.P3804216498648457625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325250 n

end

end A325285.P3804216498648457625

/-! ## A325285.P13155660550396572109

`A238343(∑[n])-A325250(n)`
-/

namespace A325285.P13155660550396572109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (∑ j ∈ Finset.range (n + 1), f1 j) - A325250 n

end

end A325285.P13155660550396572109

/-!
# A325286: G.f. satisfies: 1 = Sum_{n>=0} (1+x)^(n*(n-1)/2) / A(x)^n * 1/2^(n+1).

The programs for A325286, there is no canonical definition to state claims against.
-/

/-! ## A325286.P17252105782093732076

`or(n+1, a(n-2)!)^(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A325286.P17252105782093732076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.lor (n + 1) (Nat.factorial (SequenceMachineLib.roundAway (a (n - 2))).toNat) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A325286.P17252105782093732076

/-!
# A325287: G.f. satisfies 1 = Sum_{n>=0} ((1+x)^(n*(n-1)/2) / A(x)^n) * (2^n/3^(n+1)).

The programs for A325287, there is no canonical definition to state claims against.
-/

/-! ## A325287.P16778277526263355074

`A276079(A167801(a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A325287.P16778277526263355074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A276079 (A167801 (a (n - 1)).toNat).toNat

end

end A325287.P16778277526263355074

/-!
# A325289: G.f. A(x) satisfies: Sum_{n>=0} x^n*A(x)^(n*(n+1)/2) = Sum_{n>=0} x^n*(1+x)^(n^2).

The programs for A325289, there is no canonical definition to state claims against.
-/

/-! ## A325289.P8628003740340574101

`A162229(A295739(n)+1)`
-/

namespace A325289.P8628003740340574101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162229 (A295739 n + 1).toNat

end

end A325289.P8628003740340574101

/-! ## A325289.P11161427737938946744

`A342696(A124542(n))+1`
-/

namespace A325289.P11161427737938946744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A124542 n).toNat + 1

end

end A325289.P11161427737938946744

/-! ## A325289.P9664025717127356773

`A162229(A000602(2*n+1)+1)`
-/

namespace A325289.P9664025717127356773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162229 (A000602 (2 * n + 1) + 1).toNat

end

end A325289.P9664025717127356773

/-!
# A325290: E.g.f. C(x) + S(x), where C(x*y) + S(x*y) = exp( Integral Integral C(x*y) dx dy ) such that C(x)^2 - S(x)^2 = 1.

The programs for A325290, there is no canonical definition to state claims against.
-/

/-! ## A325290.P11245801690215546000

`A070556(∏[eq[n, ∏{d}[n, #]]]+2)`
-/

namespace A325290.P11245801690215546000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (∏ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A325290.P11245801690215546000

/-! ## A325290.P12856373720255058908

`A154440(∏[(n-1)*a(n-1)/floor(n/2)])` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A325290.P12856373720255058908
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) * (f1 (n - 1) / (⌊(n : ℚ) / 2⌋ : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A325290.P12856373720255058908

/-!
# A325291: E.g.f. C(x), where C(x*y) + S(x*y) = exp( Integral Integral C(x*y) dx dy ) such that C(x)^2 - S(x)^2 = 1.

The programs for A325291, there is no canonical definition to state claims against.
-/

/-! ## A325291.P11556006737368610019

`A325290(2*n)`
-/

namespace A325291.P11556006737368610019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325290 (2 * n)

end

end A325291.P11556006737368610019

/-! ## A325291.P18336878776994319541

`record[A325290(ceil(sqrt(n))²-n)]`
-/

namespace A325291.P18336878776994319541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325290 (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325291.P18336878776994319541

/-! ## A325291.P8296433732625726875

`record[A325290(n)/A033999(n)]`
-/

namespace A325291.P8296433732625726875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325290 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325291.P8296433732625726875

/-! ## A325291.P6390568956195456683

`abs(A326551(n))`
-/

namespace A325291.P6390568956195456683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A326551 n|

end

end A325291.P6390568956195456683

/-! ## A325291.P13485586225948642448

`A033999(n)*A326551(n)`
-/

namespace A325291.P13485586225948642448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A326551 n

end

end A325291.P13485586225948642448

/-!
# A325292: E.g.f. S(x), where C(x*y) + S(x*y) = exp( Integral Integral C(x*y) dx dy ) such that C(x)^2 - S(x)^2 = 1.

The programs for A325292, there is no canonical definition to state claims against.
-/

/-! ## A325292.P13121370214114329689

`A325290(Δ[n²])`
-/

namespace A325292.P13121370214114329689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325290 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A325292.P13121370214114329689

/-! ## A325292.P3601995480843553025

`record[A325290(xor(1, n))]`
-/

namespace A325292.P3601995480843553025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325290 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325292.P3601995480843553025

/-! ## A325292.P1805023648437667787

`record[A325290(ceil(sqrt(n))²-n+1)]`
-/

namespace A325292.P1805023648437667787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325290 (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325292.P1805023648437667787

/-! ## A325292.P74069467888408975

`abs(A326552(n+1))`
-/

namespace A325292.P74069467888408975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A326552 (n + 1)|

end

end A325292.P74069467888408975

/-!
# A325293: E.g.f. C(x) + S(x), where C(x*y*z) + S(x*y*z) = exp( Integral Integral Integral C(x*y*z) dx dy dz ) such that C(x)^2 - S(x)^2 = 1.

The programs for A325293, there is no canonical definition to state claims against.
-/

/-! ## A325293.P17918222794402455371

`A242424(3^C(n, 2))`
-/

namespace A325293.P17918222794402455371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242424 (3 ^ Nat.choose n 2)

end

end A325293.P17918222794402455371

/-!
# A325294: G.f. A(x) satisfies: Sum_{n>=0} x^n*A(x)^(n*(n+1)/2) = Sum_{n>=0} x^n/(1-x)^(n^2).

The programs for A325294, there is no canonical definition to state claims against.
-/

/-! ## A325294.P5729841277274236970

`∑[A008618(2*C(3*n, n)/(n+1))]`
-/

namespace A325294.P5729841277274236970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (SequenceMachineLib.roundAway (2 * ((Nat.choose (3 * n) n : ℚ) / (n + 1 : ℚ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325294.P5729841277274236970

/-! ## A325294.P6521709082671264080

`∑[A008618(A007226(n))]`
-/

namespace A325294.P6521709082671264080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A007226 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325294.P6521709082671264080

/-! ## A325294.P8807501847830061594

`A055768(A251178(n))+1`
-/

namespace A325294.P8807501847830061594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055768 (A251178 n).toNat + 1

end

end A325294.P8807501847830061594

/-!
# A325296: G.f. A(x) satisfies: 1 + 2*Sum_{n>=1} x^n*A(x)^(n^2) = Sum_{n>=0} x^n*(1 + A(x)^n)^n.

The programs for A325296, there is no canonical definition to state claims against.
-/

/-! ## A325296.P17267723689582301796

`A067581(∑[ceil(∑[3^(n-2)])²])`
-/

namespace A325296.P17267723689582301796
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067581 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325296.P17267723689582301796

/-! ## A325296.P12549954996419831311

`A049039(A216492(n))+n`
-/

namespace A325296.P12549954996419831311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049039 (A216492 n).toNat + (n : ℤ)

end

end A325296.P12549954996419831311

/-!
# A325297: G.f. A(x) satisfies: Sum_{n>=0} x^n * A(x)^(n*(n+1)/2) = Sum_{n>=0} x^n * (1 + x*A(x))^(n^2).

The programs for A325297, there is no canonical definition to state claims against.
-/

/-! ## A325297.P13516103758609006394

`A364272(A005824(n))+A005802(n)`
-/

namespace A325297.P13516103758609006394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364272 (A005824 n).toNat + A005802 n

end

end A325297.P13516103758609006394

/-! ## A325297.P15992312077080677061

`A381718(n)+A004198(A007105(n))`
-/

namespace A325297.P15992312077080677061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381718 n + A004198 (A007105 n).toNat

end

end A325297.P15992312077080677061

/-! ## A325297.P9791349855281865059

`A381718(n)+A124764(A000111(n))`
-/

namespace A325297.P9791349855281865059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381718 n + A124764 (A000111 n).toNat

end

end A325297.P9791349855281865059

/-!
# A325298: G.f. A(x) satisfies: Sum_{n>=0} x^(n*(n+1)/2) * A(x)^n = Sum_{n>=0} x^n * (1+x)^(n*(n+1)/2).

The programs for A325298, there is no canonical definition to state claims against.
-/

/-! ## A325298.P2435199586066345226

`A319899(a(n-1))+n-2` with `a(0)=1, a(1)=2`
-/

namespace A325298.P2435199586066345226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A319899 (a (n - 1)).toNat + ((n : ℤ) - 2)

end

end A325298.P2435199586066345226

/-! ## A325298.P13746863188161664165

`∑[A005842(A099099(n))]`
-/

namespace A325298.P13746863188161664165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005842 (A099099 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325298.P13746863188161664165

/-! ## A325298.P1158428299407705161

`A011542(A189734(n+2))`
-/

namespace A325298.P1158428299407705161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011542 (A189734 (n + 2)).toNat

end

end A325298.P1158428299407705161

/-!
# A325299: a(n) = 9 * sigma(n).

The programs for A325299, the canonical program `A325299.P10354057562905532224` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325299 has offset 1).

The definition of A325299 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*A000203(n+1)` (program `A325299.P10354057562905532224`, by `A325299.P10354057562905532224.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A325299.P9561970934673763483

`3*A272027(n+1)`
-/

namespace A325299.P9561970934673763483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A272027 (n + 1)

end

end A325299.P9561970934673763483

namespace A325299

/-- `3*A272027(n+1)` -/
def P9561970934673763483.Spec : Prop :=
  ∀ n, P9561970934673763483.a n = A325299 (n + 1)

theorem P9561970934673763483.correct : P9561970934673763483.Spec := by
  intro n
  simp only [A325299, Nat.add_sub_cancel, A325299.P9561970934673763483.a, A325299.P10354057562905532224.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A272027, A272027.P17950759033993077215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325299

/-! ## A325299.P10354057562905532224

`9*A000203(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A325299

/-- `9*A000203(n+1)` -/
def P10354057562905532224.Spec : Prop :=
  ∀ n, P10354057562905532224.a n = A325299 (n + 1)

theorem P10354057562905532224.correct : P10354057562905532224.Spec := by
  intro n
  simp only [A325299, Nat.add_sub_cancel]

end A325299

/-! ## A325299.P14963957412415536941

`A000203(n+1)+A319528(n+1)`
-/

namespace A325299.P14963957412415536941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A319528 (n + 1)

end

end A325299.P14963957412415536941

namespace A325299

/-- `A000203(n+1)+A319528(n+1)` -/
def P14963957412415536941.Spec : Prop :=
  ∀ n, P14963957412415536941.a n = A325299 (n + 1)

theorem P14963957412415536941.correct : P14963957412415536941.Spec := by
  intro n
  simp only [A325299, Nat.add_sub_cancel, A325299.P14963957412415536941.a, A325299.P10354057562905532224.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A319528, A319528.P5610714732727847470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325299

/-! ## A325299.P4592363506733134941

`A074400(n+1)+A319527(n+1)`
-/

namespace A325299.P4592363506733134941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) + A319527 (n + 1)

end

end A325299.P4592363506733134941

namespace A325299

/-- `A074400(n+1)+A319527(n+1)` -/
def P4592363506733134941.Spec : Prop :=
  ∀ n, P4592363506733134941.a n = A325299 (n + 1)

theorem P4592363506733134941.correct : P4592363506733134941.Spec := by
  intro n
  simp only [A325299, Nat.add_sub_cancel, A325299.P4592363506733134941.a, A325299.P10354057562905532224.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A319527, A319527.P18010082604810730284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325299

/-! ## A325299.P7024454511581496902

`9*∑{d}[1+n, #]`
-/

namespace A325299.P7024454511581496902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A325299.P7024454511581496902

namespace A325299

/-- `9*∑{d}[1+n, #]` -/
def P7024454511581496902.Spec : Prop :=
  ∀ n, (P7024454511581496902.a n : ℤ) = A325299 (n + 1)

theorem P7024454511581496902.correct : P7024454511581496902.Spec := by
  intro n
  simp only [A325299, Nat.add_sub_cancel, A325299.P7024454511581496902.f1, A325299.P7024454511581496902.a, A325299.P10354057562905532224.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325299

/-! ## A325299.P14121995035599083916

`∑{d}[n+1, #/(1/3)²]`
-/

namespace A325299.P14121995035599083916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / ((1 : ℚ) / 3) ^ 2

end

end A325299.P14121995035599083916

namespace A325299

/-- `∑{d}[n+1, #/(1/3)²]` -/
def P14121995035599083916.Spec : Prop :=
  ∀ n, P14121995035599083916.a n = (A325299 (n + 1) : ℚ)

end A325299

/-! ## A325299.P8930616865613002654

`Δ[9*A160664(n)]`
-/

namespace A325299.P8930616865613002654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325299.P8930616865613002654

namespace A325299

/-- `Δ[9*A160664(n)]` -/
def P8930616865613002654.Spec : Prop :=
  ∀ n, P8930616865613002654.a n = A325299 (n + 1)

end A325299

/-! ## A325299.P15268101721734382641

`abs(Δ[9*A330725(n)])`
-/

namespace A325299.P15268101721734382641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325299.P15268101721734382641

namespace A325299

/-- `abs(Δ[9*A330725(n)])` -/
def P15268101721734382641.Spec : Prop :=
  ∀ n, P15268101721734382641.a n = A325299 (n + 1)

end A325299

/-! ## A325299.P17865015847768728741

`9*A245092(Δ[n²])`
-/

namespace A325299.P17865015847768728741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A325299.P17865015847768728741

namespace A325299

/-- `9*A245092(Δ[n²])` -/
def P17865015847768728741.Spec : Prop :=
  ∀ n, P17865015847768728741.a n = A325299 (n + 1)

end A325299

/-! ## A325299.P15878424417616771028

`3/2*A274536(n+1)`
-/

namespace A325299.P15878424417616771028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A274536 (n + 1) : ℚ)

end

end A325299.P15878424417616771028

namespace A325299

/-- `3/2*A274536(n+1)` -/
def P15878424417616771028.Spec : Prop :=
  ∀ n, P15878424417616771028.a n = (A325299 (n + 1) : ℚ)

theorem P15878424417616771028.correct : P15878424417616771028.Spec := by
  intro n
  simp only [A325299, Nat.add_sub_cancel, A325299.P15878424417616771028.a, A325299.P10354057562905532224.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A274536, A274536.P12250643141026633019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325299

/-! ## A325299.P17647912853039643053

`9*(A001065(n+1)+n+1)`
-/

namespace A325299.P17647912853039643053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A001065 (n + 1) + (n + 1 : ℤ))

end

end A325299.P17647912853039643053

namespace A325299

/-- `9*(A001065(n+1)+n+1)` -/
def P17647912853039643053.Spec : Prop :=
  ∀ n, P17647912853039643053.a n = A325299 (n + 1)

theorem P17647912853039643053.correct : P17647912853039643053.Spec := by
  intro n
  simp only [A325299, Nat.add_sub_cancel, A325299.P17647912853039643053.a, A325299.P10354057562905532224.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325299

/-! ## A325299.P15539014548924734845

`9*(A155085(n+1)-(n+1))`
-/

namespace A325299.P15539014548924734845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A155085 (n + 1) - (n + 1 : ℤ))

end

end A325299.P15539014548924734845

namespace A325299

/-- `9*(A155085(n+1)-(n+1))` -/
def P15539014548924734845.Spec : Prop :=
  ∀ n, P15539014548924734845.a n = A325299 (n + 1)

theorem P15539014548924734845.correct : P15539014548924734845.Spec := by
  intro n
  simp only [A325299, Nat.add_sub_cancel, A325299.P15539014548924734845.a, A325299.P10354057562905532224.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325299

/-! ## A325299.P2527164168074494101

`9*(A237588(n+1)+Δ[n²])`
-/

namespace A325299.P2527164168074494101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A237588 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A325299.P2527164168074494101

namespace A325299

/-- `9*(A237588(n+1)+Δ[n²])` -/
def P2527164168074494101.Spec : Prop :=
  ∀ n, P2527164168074494101.a n = A325299 (n + 1)

theorem P2527164168074494101.correct : P2527164168074494101.Spec := by
  intro n
  simp only [A325299, Nat.add_sub_cancel, A325299.P2527164168074494101.f1, A325299.P2527164168074494101.a, A325299.P10354057562905532224.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A237588, A237588.P10590847318200798620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325299

/-! ## A325299.P6721105569273757456

`3*3*A000203(2*n-(n-1))`
-/

namespace A325299.P6721105569273757456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 * A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A325299.P6721105569273757456

namespace A325299

/-- `3*3*A000203(2*n-(n-1))` -/
def P6721105569273757456.Spec : Prop :=
  ∀ n, P6721105569273757456.a n = A325299 (n + 1)

end A325299

/-! ## A325299.P9630289621190194170

`A274535(n+1)+A239050(n+1)`
-/

namespace A325299.P9630289621190194170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274535 (n + 1) + A239050 (n + 1)

end

end A325299.P9630289621190194170

namespace A325299

/-- `A274535(n+1)+A239050(n+1)` -/
def P9630289621190194170.Spec : Prop :=
  ∀ n, P9630289621190194170.a n = A325299 (n + 1)

theorem P9630289621190194170.correct : P9630289621190194170.Spec := by
  intro n
  simp only [A325299, Nat.add_sub_cancel, A325299.P9630289621190194170.a, A325299.P10354057562905532224.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A239050, A239050.P11778751463060976919.a, A274535, A274535.P4233430454223343819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325299

/-! ## A325299.P1012238323267123158

`A274536(n+1)+A272027(n+1)`
-/

namespace A325299.P1012238323267123158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274536 (n + 1) + A272027 (n + 1)

end

end A325299.P1012238323267123158

namespace A325299

/-- `A274536(n+1)+A272027(n+1)` -/
def P1012238323267123158.Spec : Prop :=
  ∀ n, P1012238323267123158.a n = A325299 (n + 1)

theorem P1012238323267123158.correct : P1012238323267123158.Spec := by
  intro n
  simp only [A325299, Nat.add_sub_cancel, A325299.P1012238323267123158.a, A325299.P10354057562905532224.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A272027, A272027.P17950759033993077215.a, A274536, A274536.P12250643141026633019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325299

/-! ## A325299.P8744779803133274588

`A326122(n+1)-A000203(n+1)`
-/

namespace A325299.P8744779803133274588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326122 (n + 1) - A000203 (n + 1)

end

end A325299.P8744779803133274588

namespace A325299

/-- `A326122(n+1)-A000203(n+1)` -/
def P8744779803133274588.Spec : Prop :=
  ∀ n, P8744779803133274588.a n = A325299 (n + 1)

theorem P8744779803133274588.correct : P8744779803133274588.Spec := by
  intro n
  simp only [A325299, Nat.add_sub_cancel, A325299.P8744779803133274588.a, A325299.P10354057562905532224.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326122, A326122.P5183926465066856116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325299

/-! ## A325299.P13229616063508235999

`A272027(n+1)²/A000203(n+1)`
-/

namespace A325299.P13229616063508235999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) ^ 2 : ℚ) / (A000203 (n + 1) : ℚ)

end

end A325299.P13229616063508235999

namespace A325299

/-- `A272027(n+1)²/A000203(n+1)` -/
def P13229616063508235999.Spec : Prop :=
  ∀ n, P13229616063508235999.a n = (A325299 (n + 1) : ℚ)

theorem P13229616063508235999.correct : P13229616063508235999.Spec := by
  intro n
  simp only [A325299, Nat.add_sub_cancel, A325299.P13229616063508235999.a, A325299.P10354057562905532224.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A272027, A272027.P17950759033993077215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325299

/-! ## A325299.P7888027020082970047

`A274536(n+1)²/A239050(n+1)`
-/

namespace A325299.P7888027020082970047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274536 (n + 1) ^ 2 : ℚ) / (A239050 (n + 1) : ℚ)

end

end A325299.P7888027020082970047

namespace A325299

/-- `A274536(n+1)²/A239050(n+1)` -/
def P7888027020082970047.Spec : Prop :=
  ∀ n, P7888027020082970047.a n = (A325299 (n + 1) : ℚ)

theorem P7888027020082970047.correct : P7888027020082970047.Spec := by
  intro n
  simp only [A325299, Nat.add_sub_cancel, A325299.P7888027020082970047.a, A325299.P10354057562905532224.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A239050, A239050.P11778751463060976919.a, A274536, A274536.P12250643141026633019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325299

/-! ## A325299.P17627629851312400975

`A274535(n+1)+2*A074400(n+1)`
-/

namespace A325299.P17627629851312400975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274535 (n + 1) + 2 * A074400 (n + 1)

end

end A325299.P17627629851312400975

namespace A325299

/-- `A274535(n+1)+2*A074400(n+1)` -/
def P17627629851312400975.Spec : Prop :=
  ∀ n, P17627629851312400975.a n = A325299 (n + 1)

theorem P17627629851312400975.correct : P17627629851312400975.Spec := by
  intro n
  simp only [A325299, Nat.add_sub_cancel, A325299.P17627629851312400975.a, A325299.P10354057562905532224.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A274535, A274535.P4233430454223343819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325299

