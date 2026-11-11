import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import SequenceMachineLib.Triangle

/-!
# A397205: Maximum value of |S|*|T| over subsets S,T of {1,...,n} such that the products s*t are pairwise distinct with s in S and t in T.

The programs for A397205, there is no canonical definition to state claims against.
-/

/-! ## A397205.P10475888101088469458

`record[A106345(2*n)*A124736(n)]`
-/

namespace A397205.P10475888101088469458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (2 * n) * A124736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397205.P10475888101088469458

/-! ## A397205.P16513968884567504178

`A071295(A170927(n+1))`
-/

namespace A397205.P16513968884567504178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071295 (A170927 (n + 1)).toNat

end

end A397205.P16513968884567504178

/-! ## A397205.P2194516094183304181

`record[A075383(n+1)%A060000(A102455(2*(n+1)))]`
-/

namespace A397205.P2194516094183304181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075383 (n + 1)) (A060000 (A102455 (2 * (n + 1))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397205.P2194516094183304181

/-! ## A397205.P4822190991331489888

`∑[A010888(ceil((A270393(n+1)+n)/4))]`
-/

namespace A397205.P4822190991331489888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 ⌈(A270393 (n + 1) + (n : ℤ) : ℚ) / 4⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397205.P4822190991331489888

/-! ## A397205.P14224588255217009620

`A002620(n+2)-A324677(A032239(n+1))`
-/

namespace A397205.P14224588255217009620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) - A324677 (A032239 (n + 1)).toNat

end

end A397205.P14224588255217009620

/-!
# A397206: Number of words of length n over an infinite alphabet such that all prefixes satisfy c(i) >= c(j) if f(i) < f(j) where c(i) is the number of occurrences of the letter i and f(i) = floor(sqrt(2*i) + 1/2).

The programs for A397206, there is no canonical definition to state claims against.
-/

/-! ## A397206.P12506719234353771986

`A302601(A052908(n))`
-/

namespace A397206.P12506719234353771986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302601 (A052908 n).toNat

end

end A397206.P12506719234353771986

/-! ## A397206.P6233139699707994056

`A383309(A024957(n+2))`
-/

namespace A397206.P6233139699707994056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383309 (A024957 (n + 2)).toNat

end

end A397206.P6233139699707994056

/-! ## A397206.P17480339658605145997

`A185214(A030224(n+1))+A000228(n+1)`
-/

namespace A397206.P17480339658605145997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185214 (A030224 (n + 1)).toNat + A000228 (n + 1)

end

end A397206.P17480339658605145997

/-!
# A397207: Composite numbers d such that the period k of the decimal expansion of 1/d is divisible by 3 and divides d-1, and the three blocks of length k/3 of the repetend of 1/d sum to a multiple of 10^(k/3) - 1.

The programs for A397207, there is no canonical definition to state claims against.
-/

/-! ## A397207.P566377464081832298

`A350598(A083964(n+2))`
-/

namespace A397207.P566377464081832298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350598 (A083964 (n + 2)).toNat

end

end A397207.P566377464081832298

/-!
# A397208: a(n) is the number of primes q < p = prime(n) such that (p + q)/4 is prime.

The programs for A397208, there is no canonical definition to state claims against.
-/

/-! ## A397208.P8349517516202666837

`A330098(A003814(n+2))-A133100(n)`
-/

namespace A397208.P8349517516202666837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (A003814 (n + 2)).toNat - A133100 n

end

end A397208.P8349517516202666837

/-! ## A397208.P11812722251585045685

`A279952(A103206(n)-A073497(n+1))`
-/

namespace A397208.P11812722251585045685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279952 (A103206 n - A073497 (n + 1)).toNat

end

end A397208.P11812722251585045685

/-! ## A397208.P4400280093250285176

`A124764(A399712(n+1)+A084545(n+1))`
-/

namespace A397208.P4400280093250285176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A399712 (n + 1) + A084545 (n + 1)).toNat

end

end A397208.P4400280093250285176

/-! ## A397208.P13514593596706737402

`A005091(A018935(n+1)*A059340(n+2))`
-/

namespace A397208.P13514593596706737402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (A018935 (n + 1) * A059340 (n + 2)).toNat

end

end A397208.P13514593596706737402

/-! ## A397208.P482627985403627115

`A082858(∑[A305340(n+1)]-A304019(n+1))`
-/

namespace A397208.P482627985403627115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (∑ j ∈ Finset.range (n + 1), f1 j - A304019 (n + 1)).toNat

end

end A397208.P482627985403627115

/-!
# A397209: a(n) is the smallest index k such that A397208(k) = n, or -1 if no such k exists.

The programs for A397209, there is no canonical definition to state claims against.
-/

/-! ## A397209.P10610725559386383142

`fo[A397208(n+1)]+1`
-/

namespace A397209.P10610725559386383142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397208 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A397209.P10610725559386383142

/-!
# A397210: Number of rooted unlabeled 7-gonal cacti having n blocks.

The programs for A397210, there is no canonical definition to state claims against.
-/

/-! ## A397210.P9893622245856039972

`A332648(A052905(n+4)-2)`
-/

namespace A397210.P9893622245856039972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332648 (A052905 (n + 4) - 2).toNat

end

end A397210.P9893622245856039972

/-! ## A397210.P16817533548286449804

`A332648(eq[7, A004736(n+1)])`
-/

namespace A397210.P16817533548286449804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A397210.P16817533548286449804

/-! ## A397210.P12440120147233781201

`A332648(A056115(n+3)-n)`
-/

namespace A397210.P12440120147233781201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332648 (A056115 (n + 3) - (n : ℤ)).toNat

end

end A397210.P12440120147233781201

/-!
# A397212: a(n) is the smallest semiprime prime(n)*q such that some subset of {2*prime(n), 3*prime(n),...,q*prime(n)} has the denominator of reciprocals not divisible by prime(n).

The programs for A397212, there is no canonical definition to state claims against.
-/

/-! ## A397212.P10896768666727468224

`A000040(n+1)*A393106(A121629(n))`
-/

namespace A397212.P10896768666727468224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A393106 (A121629 n).toNat

end

end A397212.P10896768666727468224

/-!
# A397213: G.f. A(x) satisfies (1-2*x)*A(x) + A(x^4) = x.

The programs for A397213, there is no canonical definition to state claims against.
-/

/-! ## A397213.P1089344493758956784

`A072749(A214318(n+2))`
-/

namespace A397213.P1089344493758956784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072749 (A214318 (n + 2)).toNat

end

end A397213.P1089344493758956784

/-! ## A397213.P3661199585920368485

`A070106(A305061(n))`
-/

namespace A397213.P3661199585920368485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (A305061 n).toNat

end

end A397213.P3661199585920368485

/-! ## A397213.P16802252156756096387

`A065365(A398036(n+1))`
-/

namespace A397213.P16802252156756096387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065365 (A398036 (n + 1)).toNat

end

end A397213.P16802252156756096387

/-! ## A397213.P14757381865471087191

`A261104(A266942(n)+A182182(n))`
-/

namespace A397213.P14757381865471087191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A266942 n + A182182 n).toNat

end

end A397213.P14757381865471087191

/-! ## A397213.P2042820267286888375

`A261104(A266942(n)+A262689(n))`
-/

namespace A397213.P2042820267286888375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A266942 n + A262689 n).toNat

end

end A397213.P2042820267286888375

/-!
# A397216: a(n) is the number of distinct triples of triangles chosen from n^2 unit triangles of a triangular grid with their centers collinear up to rotation.

The programs for A397216, there is no canonical definition to state claims against.
-/

/-! ## A397216.P6679512914722006924

`A394786(A000108(n)*A394786(3*n+1))`
-/

namespace A397216.P6679512914722006924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394786 (A000108 n * A394786 (3 * n + 1)).toNat

end

end A397216.P6679512914722006924

/-! ## A397216.P188156832206450229

`∑[A121385(3+(n+1)²)]`
-/

namespace A397216.P188156832206450229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121385 (3 + (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397216.P188156832206450229

/-!
# A397219: Pascal-like triangle read by rows: top entry is 2; thereafter fill in entries left to right, top to bottom, with smallest number m that is not yet in the sequence and has a common factor with any earlier entry that is adjacent to it in the triangle.

The programs for A397219, there is no canonical definition to state claims against.
-/

/-! ## A397219.P12640688195869847186

`fo[A397297(n+2)-1]+2`
-/

namespace A397219.P12640688195869847186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397297 (n + 2) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 2

end

end A397219.P12640688195869847186

/-!
# A397220: Composite numbers with at least three digits such that every proper contiguous substring of length at least 2 is prime.

The programs for A397220, there is no canonical definition to state claims against.
-/

/-! ## A397220.P482568307125291365

`∩[A211683(n+1), A330949(n+1)]`
-/

namespace A397220.P482568307125291365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397220.P482568307125291365

/-!
# A397221: Numbers m such that rad(m) * omega(m) = m.

The programs for A397221, there is no canonical definition to state claims against.
-/

/-! ## A397221.P475110914710302575

`∪[A000040(n+1), A397932(n+1)]`
-/

namespace A397221.P475110914710302575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A397221.P475110914710302575

/-! ## A397221.P3006602625343979688

`eq[A000190(n+1), A001221(n+1)]+1`
-/

namespace A397221.P3006602625343979688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A397221.P3006602625343979688

/-! ## A397221.P4093900769177273406

`eq[A001221(1+n), A003557(n+1)]+1`
-/

namespace A397221.P4093900769177273406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A397221.P4093900769177273406

/-! ## A397221.P12527697379426998678

`eq[A001221(n+1), A239062(n+1)]+1`
-/

namespace A397221.P12527697379426998678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A397221.P12527697379426998678

/-! ## A397221.P1538809510377974738

`A020725(eq[A001221(n+1), A003557(n+1)])`
-/

namespace A397221.P1538809510377974738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A397221.P1538809510377974738

/-! ## A397221.P6752494686723602890

`eq[A003557(n+1), A091221(A091202(n+1))]+1`
-/

namespace A397221.P6752494686723602890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091221 (A091202 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A397221.P6752494686723602890

/-!
# A397222: Number of satisfiable 3-SAT formulas with 2 variables and n clauses in the multiset clause model.

The programs for A397222, there is no canonical definition to state claims against.
-/

/-! ## A397222.P773116171595880082

`A397492(∑[1+n]+2)`
-/

namespace A397222.P773116171595880082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397492 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A397222.P773116171595880082

/-!
# A397224: Number of ordered pairs (i,j) such that i*j=n and |i-j| is a perfect square.

The programs for A397224, there is no canonical definition to state claims against.
-/

/-! ## A397224.P5847707901225873785

`A053797(A047073(n))*A359893(n+1)`
-/

namespace A397224.P5847707901225873785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053797 (A047073 n).toNat * A359893 (n + 1)

end

end A397224.P5847707901225873785

/-! ## A397224.P8424637366472082421

`A060236(A001358(2*n+3))*A114643(A366109(n+3))`
-/

namespace A397224.P8424637366472082421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060236 (A001358 (2 * n + 3)).toNat * A114643 (A366109 (n + 3)).toNat

end

end A397224.P8424637366472082421

/-! ## A397224.P15664930155428063184

`A359305(A392911(n+1))*A359893(n+1)`
-/

namespace A397224.P15664930155428063184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359305 (A392911 (n + 1)).toNat * A359893 (n + 1)

end

end A397224.P15664930155428063184

/-! ## A397224.P8851115388385953381

`A084580(A374680(n+2))*A359893(n+1)`
-/

namespace A397224.P8851115388385953381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (A374680 (n + 2)).toNat * A359893 (n + 1)

end

end A397224.P8851115388385953381

/-! ## A397224.P7229853841294580232

`A007424(A240452(3*n+4))*A359893(n+1)`
-/

namespace A397224.P7229853841294580232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (A240452 (3 * n + 4)).toNat * A359893 (n + 1)

end

end A397224.P7229853841294580232

/-!
# A397233: Expansion of 1/(1 - x^4 - x^5 - x^7).

The programs for A397233, the canonical program `A397233.P6743435991730158212` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397233 has offset 0).

The definition of A397233 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^7))` (program `A397233.P6743435991730158212`, by `A397233.P6743435991730158212.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397233.P16904846483304531491

`a(n-4)+a(n-5)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=0`
-/

namespace A397233.P16904846483304531491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 1, 0] fun n a =>
  a (n - 4) + a (n - 5) + a (n - 7)

end

end A397233.P16904846483304531491

namespace A397233

/-- `a(n-4)+a(n-5)+a(n-7)` -/
def P16904846483304531491.Spec : Prop :=
  ∀ n, (P16904846483304531491.a n : ℤ) = A397233 n

end A397233

/-! ## A397233.P6743435991730158212

`ogf(1/(1-x^4-x^5-x^7))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397233

/-- `ogf(1/(1-x^4-x^5-x^7))` -/
def P6743435991730158212.Spec : Prop :=
  ∀ n, P6743435991730158212.a n = A397233 n

theorem P6743435991730158212.correct : P6743435991730158212.Spec := by
  intro n
  simp only [A397233]

end A397233

/-! ## A397233.P7343363461130690040

`Δ[A048766(A284316(n+3)+A026632(n))]`
-/

namespace A397233.P7343363461130690040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A284316 (n + 3) + A026632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A397233.P7343363461130690040

namespace A397233

/-- `Δ[A048766(A284316(n+3)+A026632(n))]` -/
def P7343363461130690040.Spec : Prop :=
  ∀ n, P7343363461130690040.a n = A397233 n

end A397233

/-! ## A397233.P13794582008605460021

`A029333(lt[A318050(n+6), A004526(n)+2])`
-/

namespace A397233.P13794582008605460021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318050 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029333 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397233.P13794582008605460021

namespace A397233

/-- `A029333(lt[A318050(n+6), A004526(n)+2])` -/
def P13794582008605460021.Spec : Prop :=
  ∀ n, P13794582008605460021.a n = A397233 n

end A397233

/-! ## A397233.P12015267871446677950

`A029333(lt[A318050(n+6), A071542(n+4)])`
-/

namespace A397233.P12015267871446677950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318050 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029333 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397233.P12015267871446677950

namespace A397233

/-- `A029333(lt[A318050(n+6), A071542(n+4)])` -/
def P12015267871446677950.Spec : Prop :=
  ∀ n, P12015267871446677950.a n = A397233 n

end A397233

/-!
# A397234: Expansion of 1/(1 - x - x^2 + x^3 - x^5 - x^6).

The programs for A397234, the canonical program `A397234.P13205330288265978584` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397234 has offset 0).

The definition of A397234 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^3-x^5-x^6))` (program `A397234.P13205330288265978584`, by `A397234.P13205330288265978584.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397234.P13205330288265978584

`ogf(1/(1-x-x^2+x^3-x^5-x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397234

/-- `ogf(1/(1-x-x^2+x^3-x^5-x^6))` -/
def P13205330288265978584.Spec : Prop :=
  ∀ n, P13205330288265978584.a n = A397234 n

theorem P13205330288265978584.correct : P13205330288265978584.Spec := by
  intro n
  simp only [A397234]

end A397234

/-! ## A397234.P30007454556681085

`a(n-1)+a(n-2)-a(n-3)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=3, a(5)=4`
-/

namespace A397234.P30007454556681085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2, 3, 4] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3) + a (n - 5) + a (n - 6)

end

end A397234.P30007454556681085

namespace A397234

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-5)+a(n-6)` -/
def P30007454556681085.Spec : Prop :=
  ∀ n, P30007454556681085.a n = A397234 n

end A397234

/-! ## A397234.P7873391338099143419

`A397233(2*n+5)`
-/

namespace A397234.P7873391338099143419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397233 (2 * n + 5)

end

end A397234.P7873391338099143419

namespace A397234

/-- `A397233(2*n+5)` -/
def P7873391338099143419.Spec : Prop :=
  ∀ n, P7873391338099143419.a n = A397234 n

end A397234

/-! ## A397234.P1305437451460296240

`∑[A397233(2*n)]`
-/

namespace A397234.P1305437451460296240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397233 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397234.P1305437451460296240

namespace A397234

/-- `∑[A397233(2*n)]` -/
def P1305437451460296240.Spec : Prop :=
  ∀ n, P1305437451460296240.a n = A397234 n

end A397234

/-! ## A397234.P8406769257572375939

`A392540(n)-a(n-1)` with `a(0)=1`
-/

namespace A397234.P8406769257572375939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A392540 n - a (n - 1)

end

end A397234.P8406769257572375939

namespace A397234

/-- `A392540(n)-a(n-1)` -/
def P8406769257572375939.Spec : Prop :=
  ∀ n, P8406769257572375939.a n = A397234 n

end A397234

/-!
# A397235: Expansion of 1/(1 - 2*x - x^2 + x^3 - x^4).

The programs for A397235, the canonical program `A397235.P4846453791304873991` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397235 has offset 0).

The definition of A397235 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2+x^3-x^4))` (program `A397235.P4846453791304873991`, by `A397235.P4846453791304873991.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397235.P4846453791304873991

`ogf(1/(1-2x-x^2+x^3-x^4))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397235

/-- `ogf(1/(1-2x-x^2+x^3-x^4))` -/
def P4846453791304873991.Spec : Prop :=
  ∀ n, P4846453791304873991.a n = A397235 n

theorem P4846453791304873991.correct : P4846453791304873991.Spec := by
  intro n
  simp only [A397235]

end A397235

/-! ## A397235.P16841027313559173526

`2*a(n-1)+a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=11`
-/

namespace A397235.P16841027313559173526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 11] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3) + a (n - 4)

end

end A397235.P16841027313559173526

namespace A397235

/-- `2*a(n-1)+a(n-2)-a(n-3)+a(n-4)` -/
def P16841027313559173526.Spec : Prop :=
  ∀ n, P16841027313559173526.a n = A397235 n

end A397235

/-! ## A397235.P16744911697115832211

`A079955(3*n+4)`
-/

namespace A397235.P16744911697115832211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079955 (3 * n + 4)

end

end A397235.P16744911697115832211

namespace A397235

/-- `A079955(3*n+4)` -/
def P16744911697115832211.Spec : Prop :=
  ∀ n, P16744911697115832211.a n = A397235 n

end A397235

/-! ## A397235.P14649001088824111845

`∑[A003520(3*n)]`
-/

namespace A397235.P14649001088824111845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397235.P14649001088824111845

namespace A397235

/-- `∑[A003520(3*n)]` -/
def P14649001088824111845.Spec : Prop :=
  ∀ n, P14649001088824111845.a n = A397235 n

end A397235

/-! ## A397235.P5515224597884546793

`A003520(2+3*n)`
-/

namespace A397235.P5515224597884546793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (2 + 3 * n)

end

end A397235.P5515224597884546793

namespace A397235

/-- `A003520(2+3*n)` -/
def P5515224597884546793.Spec : Prop :=
  ∀ n, P5515224597884546793.a n = A397235 n

end A397235

/-! ## A397235.P10062412399846681837

`A017899(A112414(n))`
-/

namespace A397235.P10062412399846681837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A112414 n).toNat

end

end A397235.P10062412399846681837

namespace A397235

/-- `A017899(A112414(n))` -/
def P10062412399846681837.Spec : Prop :=
  ∀ n, P10062412399846681837.a n = A397235 n

end A397235

/-! ## A397235.P16999302911318664120

`A017899(A086822(n+2))`
-/

namespace A397235.P16999302911318664120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A086822 (n + 2)).toNat

end

end A397235.P16999302911318664120

namespace A397235

/-- `A017899(A086822(n+2))` -/
def P16999302911318664120.Spec : Prop :=
  ∀ n, P16999302911318664120.a n = A397235 n

end A397235

/-! ## A397235.P11729079432594058963

`A095263(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A397235.P11729079432594058963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095263 (n + 1) - a (n - 1)

end

end A397235.P11729079432594058963

namespace A397235

/-- `A095263(n+1)-a(n-1)` -/
def P11729079432594058963.Spec : Prop :=
  ∀ n, P11729079432594058963.a n = A397235 n

end A397235

/-!
# A397236: Expansion of 1/(1 - x^3 - x^4 - 2*x^5 - x^7).

The programs for A397236, the canonical program `A397236.P4792645745444745250` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397236 has offset 0).

The definition of A397236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4-2x^5-x^7))` (program `A397236.P4792645745444745250`, by `A397236.P4792645745444745250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397236.P2384413176571699851

`a(n-3)+a(n-4)+2*a(n-5)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=2, a(6)=1`
-/

namespace A397236.P2384413176571699851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 2, 1] fun n a =>
  a (n - 3) + a (n - 4) + 2 * a (n - 5) + a (n - 7)

end

end A397236.P2384413176571699851

namespace A397236

/-- `a(n-3)+a(n-4)+2*a(n-5)+a(n-7)` -/
def P2384413176571699851.Spec : Prop :=
  ∀ n, (P2384413176571699851.a n : ℤ) = A397236 n

end A397236

/-! ## A397236.P4792645745444745250

`ogf(1/(1-x^3-x^4-2x^5-x^7))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397236

/-- `ogf(1/(1-x^3-x^4-2x^5-x^7))` -/
def P4792645745444745250.Spec : Prop :=
  ∀ n, P4792645745444745250.a n = A397236 n

theorem P4792645745444745250.correct : P4792645745444745250.Spec := by
  intro n
  simp only [A397236]

end A397236

/-!
# A397237: Expansion of 1/(1 - 2*x + x^2 - x^3 - 2*x^4 - x^5).

The programs for A397237, the canonical program `A397237.P3136485618652841643` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397237 has offset 0).

The definition of A397237 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-x^3-2x^4-x^5))` (program `A397237.P3136485618652841643`, by `A397237.P3136485618652841643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397237.P3136485618652841643

`ogf(1/(1-2x+x^2-x^3-2x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397237

/-- `ogf(1/(1-2x+x^2-x^3-2x^4-x^5))` -/
def P3136485618652841643.Spec : Prop :=
  ∀ n, P3136485618652841643.a n = A397237 n

theorem P3136485618652841643.correct : P3136485618652841643.Spec := by
  intro n
  simp only [A397237]

end A397237

/-! ## A397237.P2534805290605199781

`2*a(n-1)-a(n-2)+a(n-3)+2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=11`
-/

namespace A397237.P2534805290605199781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5, 11] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) + 2 * a (n - 4) + a (n - 5)

end

end A397237.P2534805290605199781

namespace A397237

/-- `2*a(n-1)-a(n-2)+a(n-3)+2*a(n-4)+a(n-5)` -/
def P2534805290605199781.Spec : Prop :=
  ∀ n, P2534805290605199781.a n = A397237 n

end A397237

/-! ## A397237.P9541558536172727994

`A397236(2*n+3)`
-/

namespace A397237.P9541558536172727994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397236 (2 * n + 3)

end

end A397237.P9541558536172727994

namespace A397237

/-- `A397236(2*n+3)` -/
def P9541558536172727994.Spec : Prop :=
  ∀ n, P9541558536172727994.a n = A397237 n

end A397237

/-! ## A397237.P6095768818043631678

`∑[A079973(2*n)]`
-/

namespace A397237.P6095768818043631678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079973 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397237.P6095768818043631678

namespace A397237

/-- `∑[A079973(2*n)]` -/
def P6095768818043631678.Spec : Prop :=
  ∀ n, P6095768818043631678.a n = A397237 n

end A397237

/-!
# A397238: Dirichlet g.f.: Product_{p prime} (1 + 1/p^s + 1/p^(2*s-1)).

The programs for A397238, the canonical program `A397238.P14966536247982268415` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397238 has offset 1).

The definition of A397238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397238.P1047554003521065660

`∏{p}[n+1, #^val(n+1, #²)]*∏{e}[n+1, round(1/#)]`
-/

namespace A397238.P1047554003521065660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f2 n) p : ℚ)))

end

end A397238.P1047554003521065660

namespace A397238

/-- `∏{p}[n+1, #^val(n+1, #²)]*∏{e}[n+1, round(1/#)]` -/
def P1047554003521065660.Spec : Prop :=
  ∀ n, P1047554003521065660.a n = A397238 (n + 1)

end A397238

/-! ## A397238.P15752916105750864346

`((n+1)/∏{p}[n+1, #])%((1+n)*∏{e}[n+1, (-C(2, #))^#]+1)`
-/

namespace A397238.P15752916105750864346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) ((1 + n : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.choose 2 (Nat.factorization (f2 n) p) : ℤ)) ^ Nat.factorization (f2 n) p) + 1)

end

end A397238.P15752916105750864346

namespace A397238

/-- `((n+1)/∏{p}[n+1, #])%((1+n)*∏{e}[n+1, (-C(2, #))^#]+1)` -/
def P15752916105750864346.Spec : Prop :=
  ∀ n, P15752916105750864346.a n = A397238 (n + 1)

end A397238

/-! ## A397238.P8291821976089716328

`abs(A055615((n+1)/∏{p}[n+1, #]))`
-/

namespace A397238.P8291821976089716328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat|

end

end A397238.P8291821976089716328

namespace A397238

/-- `abs(A055615((n+1)/∏{p}[n+1, #]))` -/
def P8291821976089716328.Spec : Prop :=
  ∀ n, P8291821976089716328.a n = A397238 (n + 1)

end A397238

/-! ## A397238.P5166355252268452951

`∏{e}[1+n, round(1/#)]*A000188(n+1)`
-/

namespace A397238.P5166355252268452951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ))) * A000188 (n + 1)

end

end A397238.P5166355252268452951

namespace A397238

/-- `∏{e}[1+n, round(1/#)]*A000188(n+1)` -/
def P5166355252268452951.Spec : Prop :=
  ∀ n, P5166355252268452951.a n = A397238 (n + 1)

end A397238

/-! ## A397238.P9004963332674494244

`(n+1)/∏{p}[n+1, #]*A212793(n+1)`
-/

namespace A397238.P9004963332674494244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A212793 (n + 1) : ℚ)

end

end A397238.P9004963332674494244

namespace A397238

/-- `(n+1)/∏{p}[n+1, #]*A212793(n+1)` -/
def P9004963332674494244.Spec : Prop :=
  ∀ n, P9004963332674494244.a n = (A397238 (n + 1) : ℚ)

end A397238

/-! ## A397238.P11199013527554253126

`(n+1)/∏{p}[n+1, #]*abs(A053864(n+1))`
-/

namespace A397238.P11199013527554253126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (|A053864 (n + 1)| : ℚ)

end

end A397238.P11199013527554253126

namespace A397238

/-- `(n+1)/∏{p}[n+1, #]*abs(A053864(n+1))` -/
def P11199013527554253126.Spec : Prop :=
  ∀ n, P11199013527554253126.a n = (A397238 (n + 1) : ℚ)

end A397238

/-! ## A397238.P2923153397636261365

`∏{p}[n+1, #^val(n+1, #²)]%(A046692(n+1)+1)`
-/

namespace A397238.P2923153397636261365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) (A046692 (n + 1) + 1)

end

end A397238.P2923153397636261365

namespace A397238

/-- `∏{p}[n+1, #^val(n+1, #²)]%(A046692(n+1)+1)` -/
def P2923153397636261365.Spec : Prop :=
  ∀ n, P2923153397636261365.a n = A397238 (n + 1)

end A397238

/-! ## A397238.P2685836736715920490

`(n+1)/∏{p}[n+1, #]-A105570((n+1)/∏{p}[n+1, #])`
-/

namespace A397238.P2685836736715920490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - (A105570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A397238.P2685836736715920490

namespace A397238

/-- `(n+1)/∏{p}[n+1, #]-A105570((n+1)/∏{p}[n+1, #])` -/
def P2685836736715920490.Spec : Prop :=
  ∀ n, P2685836736715920490.a n = (A397238 (n + 1) : ℚ)

end A397238

/-! ## A397238.P11287265805638729666

`(n+1)/∏{p}[n+1, #]*A008966((n+1)/∏{p}[n+1, #])`
-/

namespace A397238.P11287265805638729666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A397238.P11287265805638729666

namespace A397238

/-- `(n+1)/∏{p}[n+1, #]*A008966((n+1)/∏{p}[n+1, #])` -/
def P11287265805638729666.Spec : Prop :=
  ∀ n, P11287265805638729666.a n = (A397238 (n + 1) : ℚ)

end A397238

/-! ## A397238.P6191673925419219821

`lcm((n+1)/∏{p}[n+1, #], A008683((n+1)/∏{p}[n+1, #]))`
-/

namespace A397238.P6191673925419219821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat)

end

end A397238.P6191673925419219821

namespace A397238

/-- `lcm((n+1)/∏{p}[n+1, #], A008683((n+1)/∏{p}[n+1, #]))` -/
def P6191673925419219821.Spec : Prop :=
  ∀ n, (P6191673925419219821.a n : ℤ) = A397238 (n + 1)

end A397238

/-! ## A397238.P17755695225714284723

`lcm((n+1)*∏{p}[n+1, #^-1], A008683((n+1)*∏{p}[n+1, #^-1]))`
-/

namespace A397238.P17755695225714284723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (-1 : ℤ)))) (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f2 n), (p : ℚ) ^ (-1 : ℤ)))).toNat)

end

end A397238.P17755695225714284723

namespace A397238

/-- `lcm((n+1)*∏{p}[n+1, #^-1], A008683((n+1)*∏{p}[n+1, #^-1]))` -/
def P17755695225714284723.Spec : Prop :=
  ∀ n, (P17755695225714284723.a n : ℤ) = A397238 (n + 1)

end A397238

/-! ## A397238.P14966536247982268415

`A046692(A057521(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A397238

/-- `A046692(A057521(n+1))` -/
def P14966536247982268415.Spec : Prop :=
  ∀ n, P14966536247982268415.a n = A397238 (n + 1)

theorem P14966536247982268415.correct : P14966536247982268415.Spec := by
  intro n
  simp only [A397238, Nat.add_sub_cancel]

end A397238

/-! ## A397238.P2208394402976329127

`A037213(A366993(n+1))`
-/

namespace A397238.P2208394402976329127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A366993 (n + 1)).toNat

end

end A397238.P2208394402976329127

namespace A397238

/-- `A037213(A366993(n+1))` -/
def P2208394402976329127.Spec : Prop :=
  ∀ n, P2208394402976329127.a n = A397238 (n + 1)

end A397238

/-! ## A397238.P12888631070001755836

`A000188(n+1)*A212793(n+1)`
-/

namespace A397238.P12888631070001755836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A212793 (n + 1)

end

end A397238.P12888631070001755836

namespace A397238

/-- `A000188(n+1)*A212793(n+1)` -/
def P12888631070001755836.Spec : Prop :=
  ∀ n, P12888631070001755836.a n = A397238 (n + 1)

end A397238

/-! ## A397238.P1641664284577731726

`A000189(n+1)*A212793(n+1)`
-/

namespace A397238.P1641664284577731726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (n + 1) * A212793 (n + 1)

end

end A397238.P1641664284577731726

namespace A397238

/-- `A000189(n+1)*A212793(n+1)` -/
def P1641664284577731726.Spec : Prop :=
  ∀ n, P1641664284577731726.a n = A397238 (n + 1)

end A397238

/-! ## A397238.P11604033554073732765

`A000190(n+1)*A212793(n+1)`
-/

namespace A397238.P11604033554073732765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1) * A212793 (n + 1)

end

end A397238.P11604033554073732765

namespace A397238

/-- `A000190(n+1)*A212793(n+1)` -/
def P11604033554073732765.Spec : Prop :=
  ∀ n, P11604033554073732765.a n = A397238 (n + 1)

end A397238

/-! ## A397238.P2560690701618014506

`A003557(n+1)*A212793(n+1)`
-/

namespace A397238.P2560690701618014506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A212793 (n + 1)

end

end A397238.P2560690701618014506

namespace A397238

/-- `A003557(n+1)*A212793(n+1)` -/
def P2560690701618014506.Spec : Prop :=
  ∀ n, P2560690701618014506.a n = A397238 (n + 1)

end A397238

/-! ## A397238.P12058675497113811853

`A056622(n+1)*A212793(n+1)`
-/

namespace A397238.P12058675497113811853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (n + 1) * A212793 (n + 1)

end

end A397238.P12058675497113811853

namespace A397238

/-- `A056622(n+1)*A212793(n+1)` -/
def P12058675497113811853.Spec : Prop :=
  ∀ n, P12058675497113811853.a n = A397238 (n + 1)

end A397238

/-! ## A397238.P13921497959491431894

`A071773(n+1)*A212793(n+1)`
-/

namespace A397238.P13921497959491431894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1) * A212793 (n + 1)

end

end A397238.P13921497959491431894

namespace A397238

/-- `A071773(n+1)*A212793(n+1)` -/
def P13921497959491431894.Spec : Prop :=
  ∀ n, P13921497959491431894.a n = A397238 (n + 1)

end A397238

/-! ## A397238.P6372609376730179164

`A071974(n+1)*A212793(n+1)`
-/

namespace A397238.P6372609376730179164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1) * A212793 (n + 1)

end

end A397238.P6372609376730179164

namespace A397238

/-- `A071974(n+1)*A212793(n+1)` -/
def P6372609376730179164.Spec : Prop :=
  ∀ n, P6372609376730179164.a n = A397238 (n + 1)

end A397238

/-!
# A397240: Number of free ouroboros polyiamonds with 2*n cells.

The programs for A397240, there is no canonical definition to state claims against.
-/

/-! ## A397240.P3903675331900577500

`A000577(2*(n+1))-A151518(2*(n+1))-A395331(2*(n+1))`
-/

namespace A397240.P3903675331900577500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (2 * (n + 1)) - A151518 (2 * (n + 1)) - A395331 (2 * (n + 1))

end

end A397240.P3903675331900577500

/-!
# A397241: G.f. A(x) satisfies n * [x^n] A(x)^n = (n-1) * [x^n] A(x)^(n+1) for n > 1.

The programs for A397241, there is no canonical definition to state claims against.
-/

/-! ## A397241.P7522882778689888792

`A114753(A001710(n)*A253949(n+1))`
-/

namespace A397241.P7522882778689888792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114753 (A001710 n * A253949 (n + 1)).toNat

end

end A397241.P7522882778689888792

/-!
# A397242: O.g.f. satisfies A(x) = exp( x + Sum_{n>=2} (n^2-1) * a(n)*x^n / n^2 ).

The programs for A397242, there is no canonical definition to state claims against.
-/

/-! ## A397242.P6647840247275568444

`or(n, A231074(n+2))`
-/

namespace A397242.P6647840247275568444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A231074 (n + 2))

end

end A397242.P6647840247275568444

/-!
# A397245: O.g.f. satisfies A(x) = exp( x + Sum_{n>=2} (4*n^2-1) * a(n)*x^n / (4*n^2) ).

The programs for A397245, there is no canonical definition to state claims against.
-/

/-! ## A397245.P350628233550290187

`A005843(A351610(n))-A336573(A052905(n+2))`
-/

namespace A397245.P350628233550290187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A351610 n).toNat - A336573 (A052905 (n + 2)).toNat

end

end A397245.P350628233550290187

/-!
# A397247: Squares that are the concatenation of two squares.

The programs for A397247, there is no canonical definition to state claims against.
-/

/-! ## A397247.P14854572623510799764

`A397248(n+1)²`
-/

namespace A397247.P14854572623510799764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397248 (n + 1) ^ 2

end

end A397247.P14854572623510799764

/-! ## A397247.P15141520839108941222

`∩[A261713(n+1), n²]`
-/

namespace A397247.P15141520839108941222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261713 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A397247.P15141520839108941222

/-! ## A397247.P16164429993716100767

`A397248(A000027(n+1))^2`
-/

namespace A397247.P16164429993716100767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397248 (A000027 (n + 1)).toNat ^ 2

end

end A397247.P16164429993716100767

/-! ## A397247.P1452730248241358957

`∩[A000290(n), A261713(n+1)]`
-/

namespace A397247.P1452730248241358957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397247.P1452730248241358957

/-! ## A397247.P8501039892274220370

`∩[A083854(n), A261713(n+1)]`
-/

namespace A397247.P8501039892274220370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397247.P8501039892274220370

/-!
# A397248: Square roots of terms in A397247.

The programs for A397248, there is no canonical definition to state claims against.
-/

/-! ## A397248.P5369066753170633338

`sqrt(∩[A261713(n+1), n²])`
-/

namespace A397248.P5369066753170633338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261713 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A397248.P5369066753170633338

/-! ## A397248.P9733867675112010854

`sqrt(∩[A000290(n), A261713(n+1)])`
-/

namespace A397248.P9733867675112010854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261713 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A397248.P9733867675112010854

/-! ## A397248.P3284429975508809056

`sqrt(A397247(n+1))`
-/

namespace A397248.P3284429975508809056
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A397247 (n + 1) : ℝ)

end

end A397248.P3284429975508809056

/-! ## A397248.P6852489862147239067

`root(A397247(n+1)%(A067042(n+1)+2)², 2)`
-/

namespace A397248.P6852489862147239067
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A397247 (n + 1)) ((A067042 (n + 1) + 2) ^ 2) : ℝ) ^ (1 / (2 : ℝ))

end

end A397248.P6852489862147239067

/-! ## A397248.P14121005400685131288

`root(A397247(n+1)%(A118592(n)+2)², 2)`
-/

namespace A397248.P14121005400685131288
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A397247 (n + 1)) ((A118592 n + 2) ^ 2) : ℝ) ^ (1 / (2 : ℝ))

end

end A397248.P14121005400685131288

/-!
# A397249: Numbers m such that lambda(2^m - 1) + 1 is prime, where the Carmichael lambda function is A002322.

The programs for A397249, there is no canonical definition to state claims against.
-/

/-! ## A397249.P3697888990792597961

`lt[A000040(2*(n+2)), A242311(A249734(2*n+1))]`
-/

namespace A397249.P3697888990792597961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242311 (A249734 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A397249.P3697888990792597961

/-! ## A397249.P16827984575031472582

`lt[A120898(A311591(n)), A064640(n+1)]`
-/

namespace A397249.P16827984575031472582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120898 (A311591 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A397249.P16827984575031472582

/-! ## A397249.P4246756228398035980

`lt[A359506(A173151(n)), A000203(2*n+1)]`
-/

namespace A397249.P4246756228398035980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359506 (A173151 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A397249.P4246756228398035980

/-! ## A397249.P1523195140955749344

`lt[A152998(3*n+4), A146511(A008438(n))]`
-/

namespace A397249.P1523195140955749344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (A008438 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A397249.P1523195140955749344

/-! ## A397249.P4154512171346119450

`lt[A152998(3*n+4), A146511(A001615(2*n+1))]`
-/

namespace A397249.P4154512171346119450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (A001615 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A397249.P4154512171346119450

/-!
# A397250: Number of unlabeled 5-gonal cacti having n blocks.

The programs for A397250, there is no canonical definition to state claims against.
-/

/-! ## A397250.P14530753061845399180

`A332649(∑[n+6]+10)`
-/

namespace A397250.P14530753061845399180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332649 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A397250.P14530753061845399180

/-! ## A397250.P10854623986034921123

`A007095(A317077(n)%A095965(n+1))`
-/

namespace A397250.P10854623986034921123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A317077 n) (A095965 (n + 1))).toNat

end

end A397250.P10854623986034921123

/-! ## A397250.P894484334397445106

`A007095(A317077(n))%A193964(A155212(n))`
-/

namespace A397250.P894484334397445106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A317077 n).toNat) (A193964 (A155212 n).toNat)

end

end A397250.P894484334397445106

/-!
# A397252: Gilbreath transform of the prime counting function pi(n) (A000720) with pi(0) = 0.

The programs for A397252, there is no canonical definition to state claims against.
-/

/-! ## A397252.P582253677182217821

`A133872(A171701(n+1)-∑[1-A338770(2*(n+1))])`
-/

namespace A397252.P582253677182217821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A338770 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A171701 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A397252.P582253677182217821

/-! ## A397252.P7345189120370222732

`A133872(A171701(n+1)-(A086936(n+1)-A230980(n)))`
-/

namespace A397252.P7345189120370222732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A171701 (n + 1) - (A086936 (n + 1) - A230980 n)).toNat

end

end A397252.P7345189120370222732

/-! ## A397252.P8939215079996890700

`A133872(A171701(n+1)-(A097454(n+1)+2*A010051(n+1)))`
-/

namespace A397252.P8939215079996890700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A171701 (n + 1) - (A097454 (n + 1) + 2 * A010051 (n + 1))).toNat

end

end A397252.P8939215079996890700

/-! ## A397252.P13259973396330921809

`A055641(A124780(n)*A243071(n+4))`
-/

namespace A397252.P13259973396330921809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A124780 n * A243071 (n + 4)).toNat

end

end A397252.P13259973396330921809

/-! ## A397252.P8518246116762212677

`1-A128174(record[(4*n-3)²]+1)`
-/

namespace A397252.P8518246116762212677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n : ℤ) - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A128174 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A397252.P8518246116762212677

/-!
# A397255: Table whose n-th row lists the A001035(n) partial orders, or T_0 topologies, on a set of n elements.

The programs for A397255, there is no canonical definition to state claims against.
-/

/-! ## A397255.P2904802835510752117

`∩[A349152(n+1), A101620(n)]`
-/

namespace A397255.P2904802835510752117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101620 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397255.P2904802835510752117

/-! ## A397255.P14951808952949634520

`∩[A005842(n+1), A352734(n+1)]`
-/

namespace A397255.P14951808952949634520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397255.P14951808952949634520

/-!
# A397256: Square array T(n,k) = product of digits of k >= 1 in base n >= 2, read by falling antidiagonals.

The programs for A397256, there is no canonical definition to state claims against.
-/

/-! ## A397256.P3242676057492799329

`A393337(A393325(n+1)%A393381(n+2))`
-/

namespace A397256.P3242676057492799329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393337 (Int.tmod (A393325 (n + 1)) (A393381 (n + 2))).toNat

end

end A397256.P3242676057492799329

/-! ## A397256.P4794171898684211695

`A167865(and(A136565(n+4)², A008369(n)))`
-/

namespace A397256.P4794171898684211695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (Int.land (A136565 (n + 4) ^ 2) (A008369 n)).toNat

end

end A397256.P4794171898684211695

/-! ## A397256.P11697483556419404343

`A305436(A077037(3*(n+1))-A000079(n))`
-/

namespace A397256.P11697483556419404343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305436 (A077037 (3 * (n + 1)) - A000079 n).toNat

end

end A397256.P11697483556419404343

/-! ## A397256.P2148306580197127982

`A371954(A066517(3*n+1)+A035147(n+1))`
-/

namespace A397256.P2148306580197127982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371954 (A066517 (3 * n + 1) + A035147 (n + 1)).toNat

end

end A397256.P2148306580197127982

/-! ## A397256.P3664175728354367529

`A257024(A296599(n+5))-A118952(2*(n+2))`
-/

namespace A397256.P3664175728354367529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257024 (A296599 (n + 5)).toNat - A118952 (2 * (n + 2))

end

end A397256.P3664175728354367529

/-!
# A397257: Fixed points of A093811, sum of the digital products of the divisors.

The programs for A397257, there is no canonical definition to state claims against.
-/

/-! ## A397257.P636051304015787283

`eq[n+1, A093811(n+1)]+1`
-/

namespace A397257.P636051304015787283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A397257.P636051304015787283

/-!
# A397258: Indices of late birds in Buss's sequence B = A067836: numbers m such that all smaller primes have occurred before B(m).

The programs for A397258, there is no canonical definition to state claims against.
-/

/-! ## A397258.P6135011356476074132

`lt[A067836(n+1), A215464(n+1)]+1`
-/

namespace A397258.P6135011356476074132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A397258.P6135011356476074132

/-! ## A397258.P15854242529914012755

`record[A364824(n+1)]`
-/

namespace A397258.P15854242529914012755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397258.P15854242529914012755

/-!
# A397259: Late birds in Buss's sequence B = A067836: primes B(m) such that all smaller primes have appeared earlier.

The programs for A397259, there is no canonical definition to state claims against.
-/

/-! ## A397259.P12951446441366834557

`A067836(A397258(1+n))`
-/

namespace A397259.P12951446441366834557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067836 (A397258 (1 + n)).toNat

end

end A397259.P12951446441366834557

/-! ## A397259.P2086317363099487754

`A067836(record[A364824(n+1)])`
-/

namespace A397259.P2086317363099487754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067836 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A397259.P2086317363099487754

/-! ## A397259.P9752374131272973580

`eq[A003415(n), A348940(A115302(n+1))]`
-/

namespace A397259.P9752374131272973580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348940 (A115302 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397259.P9752374131272973580

/-! ## A397259.P15717467527437681620

`record[A354807(A214023(3*(n+2)))*A000040(n+1)]`
-/

namespace A397259.P15717467527437681620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354807 (A214023 (3 * (n + 2))).toNat * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397259.P15717467527437681620

/-! ## A397259.P5137606168793405946

`∩[∑[A218799(n)], A002267(n+1)]`
-/

namespace A397259.P5137606168793405946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218799 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A397259.P5137606168793405946

/-!
# A397260: Indices of records in A093811.

The programs for A397260, there is no canonical definition to state claims against.
-/

/-! ## A397260.P5799628218854516018

`∑[A355731(A355747(n))]`
-/

namespace A397260.P5799628218854516018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355731 (A355747 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397260.P5799628218854516018

/-! ## A397260.P405200981527651378

`record[A365173(A080851(n))]`
-/

namespace A397260.P405200981527651378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365173 (A080851 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397260.P405200981527651378

/-! ## A397260.P9493420153437070038

`A084094(A043317(n+1))`
-/

namespace A397260.P9493420153437070038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084094 (A043317 (n + 1)).toNat

end

end A397260.P9493420153437070038

/-! ## A397260.P3394587880949575051

`A084094(A044914(n+1))`
-/

namespace A397260.P3394587880949575051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084094 (A044914 (n + 1)).toNat

end

end A397260.P3394587880949575051

/-! ## A397260.P6788246010324477377

`A084094(A055648(n+1))`
-/

namespace A397260.P6788246010324477377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084094 (A055648 (n + 1)).toNat

end

end A397260.P6788246010324477377

/-!
# A397261: Records in A093811.

The programs for A397261, there is no canonical definition to state claims against.
-/

/-! ## A397261.P828043404174686747

`A093811(A397260(n+1))`
-/

namespace A397261.P828043404174686747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093811 (A397260 (n + 1)).toNat

end

end A397261.P828043404174686747

/-! ## A397261.P7818723517695629010

`record[A093811(n+1)]`
-/

namespace A397261.P7818723517695629010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397261.P7818723517695629010

/-! ## A397261.P9920472928577678496

`record[∑{d}[n+1, A007954(#)]]`
-/

namespace A397261.P9920472928577678496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007954 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397261.P9920472928577678496

/-! ## A397261.P18377341835523951893

`record[∑{d}[n+1, A302801(#)%(2*#)]]`
-/

namespace A397261.P18377341835523951893
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A302801 d) (2 * d : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397261.P18377341835523951893

/-! ## A397261.P6758266322079561240

`∑{d}[A397260(n+1), A007954(#)]`
-/

namespace A397261.P6758266322079561240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007954 d

end

end A397261.P6758266322079561240

/-!
# A397262: Table whose n-th row lists the A000112(n) inequivalent unlabeled acyclic transitive digraphs or unlabeled n-posets, as smallest representative of the corresponding topology.

The programs for A397262, there is no canonical definition to state claims against.
-/

/-! ## A397262.P9689458173897006376

`∩[A111622(n+1), A397255(n)]`
-/

namespace A397262.P9689458173897006376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397255 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397262.P9689458173897006376

/-!
# A397264: Number of rooted binary simplex time-consistent leaf-labeled galled trees with n leaves and exactly 1 gall.

The programs for A397264, there is no canonical definition to state claims against.
-/

/-! ## A397264.P8046417570584169295

`n*A033183(A115974(n))`
-/

namespace A397264.P8046417570584169295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033183 (A115974 n).toNat

end

end A397264.P8046417570584169295

/-! ## A397264.P2094843084117994294

`A257687(n*A005130(n))`
-/

namespace A397264.P2094843084117994294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257687 ((n : ℤ) * A005130 n).toNat

end

end A397264.P2094843084117994294

/-!
# A397265: a(n) = r(2,n,1) where r(m,n,k) is the number of possible outcomes in a race with n participants that contains exactly k ties of size at least m.

The programs for A397265, there is no canonical definition to state claims against.
-/

/-! ## A397265.P1920751768348351478

`A007808(n+1)-(n+1)!`
-/

namespace A397265.P1920751768348351478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007808 (n + 1) - (Nat.factorial (n + 1) : ℤ)

end

end A397265.P1920751768348351478

/-! ## A397265.P6184511229069350191

`A056542(n+2)-A002627(n+1)`
-/

namespace A397265.P6184511229069350191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056542 (n + 2) - A002627 (n + 1)

end

end A397265.P6184511229069350191

/-! ## A397265.P3140541522647600933

`A224869(n+2)-A038156(n+1)`
-/

namespace A397265.P3140541522647600933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224869 (n + 2) - A038156 (n + 1)

end

end A397265.P3140541522647600933

/-! ## A397265.P8274194123641535871

`A224869(n+2)+1-A002627(n+1)`
-/

namespace A397265.P8274194123641535871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224869 (n + 2) + 1 - A002627 (n + 1)

end

end A397265.P8274194123641535871

/-! ## A397265.P15020281037772450166

`A193657(n+1)-(n+2)!`
-/

namespace A397265.P15020281037772450166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193657 (n + 1) - (Nat.factorial (n + 2) : ℤ)

end

end A397265.P15020281037772450166

/-! ## A397265.P1696052468410221963

`A007808(n+1)-A052574(n+1)/A001519(n+1)`
-/

namespace A397265.P1696052468410221963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007808 (n + 1) : ℚ) - (A052574 (n + 1) : ℚ) / (A001519 (n + 1) : ℚ)

end

end A397265.P1696052468410221963

/-!
# A397266: Lower (1,1) midsequence of (floor[n/2]^2) and (ceiling[n/3]^2); see Comments.

The programs for A397266, the canonical program `A397266.P8259977476271773950` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397266 has offset 0).

The definition of A397266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397266.P8259977476271773950

`ogf((x+2x^2+2x^3+5x^4+7x^5+8x^6+6x^7+3x^8)/(1+x-2x^3-3x^4-x^5+x^6+3x^7+2x^8-x^10-x^11))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397266

/-- `ogf((x+2x^2+2x^3+5x^4+7x^5+8x^6+6x^7+3x^8)/(1+x-2x^3-3x^4-x^5+x^6+3x^7+2x^8-x^10-x^11))` -/
def P8259977476271773950.Spec : Prop :=
  ∀ n, P8259977476271773950.a n = A397266 n

theorem P8259977476271773950.correct : P8259977476271773950.Spec := by
  intro n
  simp only [A397266]

end A397266

/-! ## A397266.P15417473857291678284

`A397267(n)-floor(n%4/2)`
-/

namespace A397266.P15417473857291678284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397267 n - ⌊((n % 4 : ℕ) : ℚ) / 2⌋

end

end A397266.P15417473857291678284

namespace A397266

/-- `A397267(n)-floor(n%4/2)` -/
def P15417473857291678284.Spec : Prop :=
  ∀ n, P15417473857291678284.a n = A397266 n

end A397266

/-! ## A397266.P17277041779435347396

`A397267(n)-A021913(n)`
-/

namespace A397266.P17277041779435347396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397267 n - A021913 n

end

end A397266.P17277041779435347396

namespace A397266

/-- `A397267(n)-A021913(n)` -/
def P17277041779435347396.Spec : Prop :=
  ∀ n, P17277041779435347396.a n = A397266 n

end A397266

/-! ## A397266.P16575047226897162745

`A397267(n)-A397107(n)%2`
-/

namespace A397266.P16575047226897162745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397267 n - Int.tmod (A397107 n) 2

end

end A397266.P16575047226897162745

namespace A397266

/-- `A397267(n)-A397107(n)%2` -/
def P16575047226897162745.Spec : Prop :=
  ∀ n, P16575047226897162745.a n = A397266 n

end A397266

/-! ## A397266.P12135066493933826270

`A397267(n)-A397109(n)%2`
-/

namespace A397266.P12135066493933826270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397267 n - Int.tmod (A397109 n) 2

end

end A397266.P12135066493933826270

namespace A397266

/-- `A397267(n)-A397109(n)%2` -/
def P12135066493933826270.Spec : Prop :=
  ∀ n, P12135066493933826270.a n = A397266 n

end A397266

/-! ## A397266.P10545535083983806655

`A397267(n)-A397268(n)%2`
-/

namespace A397266.P10545535083983806655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397267 n - Int.tmod (A397268 n) 2

end

end A397266.P10545535083983806655

namespace A397266

/-- `A397267(n)-A397268(n)%2` -/
def P10545535083983806655.Spec : Prop :=
  ∀ n, P10545535083983806655.a n = A397266 n

end A397266

/-! ## A397266.P17332074376879022783

`A397267(n)-A397267(3*n)%2`
-/

namespace A397266.P17332074376879022783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397267 n - Int.tmod (A397267 (3 * n)) 2

end

end A397266.P17332074376879022783

namespace A397266

/-- `A397267(n)-A397267(3*n)%2` -/
def P17332074376879022783.Spec : Prop :=
  ∀ n, P17332074376879022783.a n = A397266 n

end A397266

/-! ## A397266.P1095018675059458471

`A397267(n)-A000035(A397268(n))`
-/

namespace A397266.P1095018675059458471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397267 n - A000035 (A397268 n).toNat

end

end A397266.P1095018675059458471

namespace A397266

/-- `A397267(n)-A000035(A397268(n))` -/
def P1095018675059458471.Spec : Prop :=
  ∀ n, P1095018675059458471.a n = A397266 n

end A397266

/-!
# A397267: Upper (1/2,1) midsequence of (floor[n/2]^2) and (ceiling[n/3]^2); see Comments.

The programs for A397267, the canonical program `A397267.P8739381625799600127` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397267 has offset 0).

The definition of A397267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397267.P8739381625799600127

`ogf((x+3x^2+4x^3+6x^4+5x^5+4x^6+4x^7+4x^8+2x^9+x^10)/(1+x-2x^3-3x^4-x^5+x^6+3x^7+2x^8-x^10-x^11))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397267

/-- `ogf((x+3x^2+4x^3+6x^4+5x^5+4x^6+4x^7+4x^8+2x^9+x^10)/(1+x-2x^3-3x^4-x^5+x^6+3x^7+2x^8-x^10-x^11))` -/
def P8739381625799600127.Spec : Prop :=
  ∀ n, P8739381625799600127.a n = A397267 n

theorem P8739381625799600127.correct : P8739381625799600127.Spec := by
  intro n
  simp only [A397267]

end A397267

/-! ## A397267.P10126689302768342266

`A397266(n)+floor(n%4/2)`
-/

namespace A397267.P10126689302768342266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397266 n + ⌊((n % 4 : ℕ) : ℚ) / 2⌋

end

end A397267.P10126689302768342266

namespace A397267

/-- `A397266(n)+floor(n%4/2)` -/
def P10126689302768342266.Spec : Prop :=
  ∀ n, P10126689302768342266.a n = A397267 n

end A397267

/-! ## A397267.P11079124319068878343

`A397266(n)+A021913(n)`
-/

namespace A397267.P11079124319068878343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397266 n + A021913 n

end

end A397267.P11079124319068878343

namespace A397267

/-- `A397266(n)+A021913(n)` -/
def P11079124319068878343.Spec : Prop :=
  ∀ n, P11079124319068878343.a n = A397267 n

end A397267

/-! ## A397267.P2065558274747058452

`A397266(n)+A397107(n)%2`
-/

namespace A397267.P2065558274747058452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397266 n + Int.tmod (A397107 n) 2

end

end A397267.P2065558274747058452

namespace A397267

/-- `A397266(n)+A397107(n)%2` -/
def P2065558274747058452.Spec : Prop :=
  ∀ n, P2065558274747058452.a n = A397267 n

end A397267

/-! ## A397267.P15999693927477308415

`A397266(n)+A397109(n)%2`
-/

namespace A397267.P15999693927477308415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397266 n + Int.tmod (A397109 n) 2

end

end A397267.P15999693927477308415

namespace A397267

/-- `A397266(n)+A397109(n)%2` -/
def P15999693927477308415.Spec : Prop :=
  ∀ n, P15999693927477308415.a n = A397267 n

end A397267

/-! ## A397267.P16335353367525880382

`A397266(n)+A397268(n)%2`
-/

namespace A397267.P16335353367525880382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397266 n + Int.tmod (A397268 n) 2

end

end A397267.P16335353367525880382

namespace A397267

/-- `A397266(n)+A397268(n)%2` -/
def P16335353367525880382.Spec : Prop :=
  ∀ n, P16335353367525880382.a n = A397267 n

end A397267

/-! ## A397267.P17636995514875495100

`A397266(n)+A000035(A397268(n))`
-/

namespace A397267.P17636995514875495100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397266 n + A000035 (A397268 n).toNat

end

end A397267.P17636995514875495100

namespace A397267

/-- `A397266(n)+A000035(A397268(n))` -/
def P17636995514875495100.Spec : Prop :=
  ∀ n, P17636995514875495100.a n = A397267 n

end A397267

/-!
# A397268: Lower (-1,2) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

The programs for A397268, the canonical program `A397268.P810974349420799551` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397268 has offset 0).

The definition of A397268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397268.P810974349420799551

`ogf((2x-x^2+2x^3-x^4)/(1-x-2x^2+2x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397268

/-- `ogf((2x-x^2+2x^3-x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P810974349420799551.Spec : Prop :=
  ∀ n, P810974349420799551.a n = A397268 n

theorem P810974349420799551.correct : P810974349420799551.Spec := by
  intro n
  simp only [A397268]

end A397268

/-! ## A397268.P13670840206586286166

`n²/4+3*n/4+1/8-(-1)^n/8-3*(-1)^n*n/4`
-/

namespace A397268.P13670840206586286166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 4 + (3 * n : ℚ) / 4 + (1 : ℚ) / 8 - ((-1) ^ n : ℚ) / 8 - (3 * (-1) ^ n * (n : ℤ) : ℚ) / 4

end

end A397268.P13670840206586286166

namespace A397268

/-- `n²/4+3*n/4+1/8-(-1)^n/8-3*(-1)^n*n/4` -/
def P13670840206586286166.Spec : Prop :=
  ∀ n, P13670840206586286166.a n = (A397268 n : ℚ)

end A397268

/-! ## A397268.P7239828018349685537

`∑[n%2]²+n%2*n`
-/

namespace A397268.P7239828018349685537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + n % 2 * n

end

end A397268.P7239828018349685537

namespace A397268

/-- `∑[n%2]²+n%2*n` -/
def P7239828018349685537.Spec : Prop :=
  ∀ n, (P7239828018349685537.a n : ℤ) = A397268 n

end A397268

/-! ## A397268.P13283220014137432431

`∑[lcm(2, n)-n]+lcm(2, n)-n`
-/

namespace A397268.P13283220014137432431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((Nat.lcm 2 n : ℤ) - (n : ℤ))

end

end A397268.P13283220014137432431

namespace A397268

/-- `∑[lcm(2, n)-n]+lcm(2, n)-n` -/
def P13283220014137432431.Spec : Prop :=
  ∀ n, P13283220014137432431.a n = A397268 n

end A397268

/-! ## A397268.P2239346646215462853

`∑[n*and(1, n)]+n*and(1, n)`
-/

namespace A397268.P2239346646215462853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * Nat.land 1 n

end

end A397268.P2239346646215462853

namespace A397268

/-- `∑[n*and(1, n)]+n*and(1, n)` -/
def P2239346646215462853.Spec : Prop :=
  ∀ n, (P2239346646215462853.a n : ℤ) = A397268 n

end A397268

/-! ## A397268.P5443055980534055414

`floor((n+1)/2)²+n*and(1, n)`
-/

namespace A397268.P5443055980534055414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ ^ 2 + (n * Nat.land 1 n : ℤ)

end

end A397268.P5443055980534055414

namespace A397268

/-- `floor((n+1)/2)²+n*and(1, n)` -/
def P5443055980534055414.Spec : Prop :=
  ∀ n, P5443055980534055414.a n = A397268 n

end A397268

/-! ## A397268.P7188102321557270208

`∑[2*n-a(n-1)]-a(n-1)` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A397268.P7188102321557270208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A397268.P7188102321557270208

namespace A397268

/-- `∑[2*n-a(n-1)]-a(n-1)` -/
def P7188102321557270208.Spec : Prop :=
  ∀ n, P7188102321557270208.a n = A397268 n

end A397268

/-! ## A397268.P2910639748198668946

`A132354(n)%A227017(n+1)`
-/

namespace A397268.P2910639748198668946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132354 n) (A227017 (n + 1))

end

end A397268.P2910639748198668946

namespace A397268

/-- `A132354(n)%A227017(n+1)` -/
def P2910639748198668946.Spec : Prop :=
  ∀ n, P2910639748198668946.a n = A397268 n

end A397268

/-! ## A397268.P5485095792942142625

`A397113(A168195(n+2))`
-/

namespace A397268.P5485095792942142625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397113 (A168195 (n + 2)).toNat

end

end A397268.P5485095792942142625

namespace A397268

/-- `A397113(A168195(n+2))` -/
def P5485095792942142625.Spec : Prop :=
  ∀ n, P5485095792942142625.a n = A397268 n

end A397268

/-! ## A397268.P7992953984536924130

`A028391(A193422(n+2))`
-/

namespace A397268.P7992953984536924130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A193422 (n + 2)).toNat

end

end A397268.P7992953984536924130

namespace A397268

/-- `A028391(A193422(n+2))` -/
def P7992953984536924130.Spec : Prop :=
  ∀ n, P7992953984536924130.a n = A397268 n

end A397268

/-!
# A397269: a(n) = n*(8*n^2-9*n-2-(9*n-6)*(-1)^n)/48.

The programs for A397269, the canonical program `A397269.P4273237033905400757` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397269 has offset 0).

The definition of A397269 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A397269.anchor (n : ℕ) : (A397269 n : ℚ) = ((n : ℤ) * ((8 * n ^ 2 : ℤ) - (9 * n : ℤ) - 2 - ((9 * n : ℤ) - 6) * (-1) ^ n) : ℚ) / 48` in `Proof.A397.A397269`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397269.P4057327860673411573

`ogf((4x^3+x^4+3x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A397269.P4057327860673411573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 4, 1, 3] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A397269.P4057327860673411573

namespace A397269

/-- `ogf((4x^3+x^4+3x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P4057327860673411573.Spec : Prop :=
  ∀ n, P4057327860673411573.a n = A397269 n

end A397269

/-! ## A397269.P4273237033905400757

`n*(8*n²-9*n-2-(9*n-6)*(-1)^n)/48`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397269

/-- `n*(8*n²-9*n-2-(9*n-6)*(-1)^n)/48` -/
def P4273237033905400757.Spec : Prop :=
  ∀ n, P4273237033905400757.a n = (A397269 n : ℚ)

end A397269

/-! ## A397269.P7238600114660904682

`∑{#}[floor((n-1)/2)-1, (#+1)*(n+#+1)]`
-/

namespace A397269.P7238600114660904682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) / 2⌋ - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 1) * (n + (k + 1))

end

end A397269.P7238600114660904682

namespace A397269

/-- `∑{#}[floor((n-1)/2)-1, (#+1)*(n+#+1)]` -/
def P7238600114660904682.Spec : Prop :=
  ∀ n, (P7238600114660904682.a n : ℤ) = A397269 n

end A397269

/-!
# A397270: a(n) = (2*n-3-(-1)^n)*(32*n^2-9*n+7*n*(-1)^n)/96.

The programs for A397270, the canonical program `A397270.P11203406880893266705` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397270 has offset 0).

The definition of A397270 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A397270.anchor (n : ℕ) : (A397270 n : ℚ) = (((2 * n : ℤ) - 3 - (-1) ^ n) * ((32 * n ^ 2 : ℤ) - (9 * n : ℤ) + (7 * n : ℤ) * (-1) ^ n) : ℚ) / 96` in `Proof.A397.A397270`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397270.P1026803759177900697

`ogf((10x^3+11x^4+9x^5+2x^6)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A397270.P1026803759177900697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 10, 11, 9, 2] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A397270.P1026803759177900697

namespace A397270

/-- `ogf((10x^3+11x^4+9x^5+2x^6)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P1026803759177900697.Spec : Prop :=
  ∀ n, P1026803759177900697.a n = A397270 n

end A397270

/-! ## A397270.P11203406880893266705

`(2*n-3-(-1)^n)*(32*n²-9*n+7*n*(-1)^n)/96`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A397270

/-- `(2*n-3-(-1)^n)*(32*n²-9*n+7*n*(-1)^n)/96` -/
def P11203406880893266705.Spec : Prop :=
  ∀ n, P11203406880893266705.a n = (A397270 n : ℚ)

end A397270

/-! ## A397270.P2466803965319409086

`∑{#}[floor((n-1)/2)-1, (n-(#+1))*(2*n-(#+1))]`
-/

namespace A397270.P2466803965319409086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n : ℤ) - (k + 1 : ℤ)) * ((2 * n : ℤ) - (k + 1 : ℤ))

end

end A397270.P2466803965319409086

namespace A397270

/-- `∑{#}[floor((n-1)/2)-1, (n-(#+1))*(2*n-(#+1))]` -/
def P2466803965319409086.Spec : Prop :=
  ∀ n, P2466803965319409086.a n = A397270 n

end A397270

/-!
# A397271: The value on the left of the rightmost pair of zero bits of n in binary.

The programs for A397271, there is no canonical definition to state claims against.
-/

/-! ## A397271.P18001532042005916473

`floor(A003602(A396674(n))/2)`
-/

namespace A397271.P18001532042005916473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003602 (A396674 n).toNat : ℚ) / 2⌋

end

end A397271.P18001532042005916473

/-! ## A397271.P12438291155675650548

`A239241(A003602(n+1))%A003179(n)`
-/

namespace A397271.P12438291155675650548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239241 (A003602 (n + 1)).toNat) (A003179 n)

end

end A397271.P12438291155675650548

/-! ## A397271.P15015747435427737305

`A091247(A218510(3*n))*A110962(n)`
-/

namespace A397271.P15015747435427737305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A218510 (3 * n)).toNat * A110962 n

end

end A397271.P15015747435427737305

/-! ## A397271.P10769272611574047645

`A025480(A025480(n)%A181612(2*n))`
-/

namespace A397271.P10769272611574047645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.tmod (A025480 n) (A181612 (2 * n))).toNat

end

end A397271.P10769272611574047645

/-! ## A397271.P15457058003848105553

`and(A110962(n), A110962(A066895(n+1)))`
-/

namespace A397271.P15457058003848105553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110962 n) (A110962 (A066895 (n + 1)).toNat)

end

end A397271.P15457058003848105553

/-!
# A397272: Integers k such that both Mordell equations y^2 = x^3 + k^3 and y^2 = x^3 - k^3 have nonzero integer solutions.

The programs for A397272, there is no canonical definition to state claims against.
-/

/-! ## A397272.P12449251078205353890

`∩[A103254(n+1), A228948(n+1)]`
-/

namespace A397272.P12449251078205353890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397272.P12449251078205353890

/-! ## A397272.P4481271799118652270

`∩[A228948(n+1), A356720(n+1)]`
-/

namespace A397272.P4481271799118652270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397272.P4481271799118652270

/-!
# A397274: G.f. A(x) satisfies (1-3*x)*A(x) + A(x^3) = x.

The programs for A397274, there is no canonical definition to state claims against.
-/

/-! ## A397274.P8837254045324789215

`A195174(A125609(n+1))`
-/

namespace A397274.P8837254045324789215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A125609 (n + 1)).toNat

end

end A397274.P8837254045324789215

/-! ## A397274.P1836413635929449079

`A335358(A290910(n+1))`
-/

namespace A397274.P1836413635929449079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335358 (A290910 (n + 1)).toNat

end

end A397274.P1836413635929449079

/-!
# A397276: Triangle read by rows: T(n,k) is the smallest prime p such that p^k in base n contains exactly k distinct digits, for 1 <= k <= n (n >= 2), and T(1,1) = 2.

The programs for A397276, there is no canonical definition to state claims against.
-/

/-! ## A397276.P14204938286491797001

`A392079(A157152(n)+A028491(n+1))`
-/

namespace A397276.P14204938286491797001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392079 (A157152 n + A028491 (n + 1)).toNat

end

end A397276.P14204938286491797001

/-! ## A397276.P5430084104883448158

`A112046(A175787(n+1)+A112052(3*n+1))`
-/

namespace A397276.P5430084104883448158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (A175787 (n + 1) + A112052 (3 * n + 1)).toNat

end

end A397276.P5430084104883448158

/-! ## A397276.P13915701720823648765

`A053669(A000070(2*(n+1))-A053669(3*n+2))`
-/

namespace A397276.P13915701720823648765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A000070 (2 * (n + 1)) - A053669 (3 * n + 2)).toNat

end

end A397276.P13915701720823648765

/-!
# A397277: Index of prime(n) in A354434.

The programs for A397277, there is no canonical definition to state claims against.
-/

/-! ## A397277.P10476287492309287465

`A397168(Δ[A007504(n)])`
-/

namespace A397277.P10476287492309287465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397168 (f1 (n + 1) - f1 n).toNat

end

end A397277.P10476287492309287465

/-! ## A397277.P4965377678425365828

`A397168(A000040(1+n))`
-/

namespace A397277.P4965377678425365828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397168 (A000040 (1 + n)).toNat

end

end A397277.P4965377678425365828

/-! ## A397277.P6483364929947447132

`A397168(A216886(1+n))`
-/

namespace A397277.P6483364929947447132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397168 (A216886 (1 + n)).toNat

end

end A397277.P6483364929947447132

/-! ## A397277.P18009258944139295446

`A397168(A008578(2+n))`
-/

namespace A397277.P18009258944139295446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397168 (A008578 (2 + n)).toNat

end

end A397277.P18009258944139295446

/-! ## A397277.P16908485612297168968

`A397168(A182986(n+2))`
-/

namespace A397277.P16908485612297168968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397168 (A182986 (n + 2)).toNat

end

end A397277.P16908485612297168968

/-! ## A397277.P5028145484655959114

`A397168(A324050(n+2))`
-/

namespace A397277.P5028145484655959114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397168 (A324050 (n + 2)).toNat

end

end A397277.P5028145484655959114

/-! ## A397277.P4527204918900306506

`A397168(A238853(n+1))`
-/

namespace A397277.P4527204918900306506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397168 (A238853 (n + 1)).toNat

end

end A397277.P4527204918900306506

/-!
# A397279: Numbers whose binary expansion is of the form 1^i 0^j 1^i 0^j with i,j >= 1.

The programs for A397279, there is no canonical definition to state claims against.
-/

/-! ## A397279.P13876514678729393453

`A391588(A224195(n+1))`
-/

namespace A397279.P13876514678729393453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391588 (A224195 (n + 1)).toNat

end

end A397279.P13876514678729393453

/-! ## A397279.P7486746449749080802

`A020330(A043569(1+n))`
-/

namespace A397279.P7486746449749080802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (A043569 (1 + n)).toNat

end

end A397279.P7486746449749080802

/-! ## A397279.P2752359164488053701

`∩[A043571(n+1), A330940(n)]`
-/

namespace A397279.P2752359164488053701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397279.P2752359164488053701

/-! ## A397279.P1558234937490111643

`∩[A020330(n+1), A043571(n+1)]`
-/

namespace A397279.P1558234937490111643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397279.P1558234937490111643

/-! ## A397279.P2165269568105586403

`∩[A043571(n+1), A121016(n+1)]`
-/

namespace A397279.P2165269568105586403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397279.P2165269568105586403

/-! ## A397279.P117748448198073468

`∩[A043571(n+1), A164713(n+1)]`
-/

namespace A397279.P117748448198073468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397279.P117748448198073468

/-! ## A397279.P11709930145624782879

`∩[A043571(n+1), A164714(n+1)]`
-/

namespace A397279.P11709930145624782879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397279.P11709930145624782879

/-! ## A397279.P3900180155272818961

`∩[A043682(n+1), A330940(n)]`
-/

namespace A397279.P3900180155272818961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397279.P3900180155272818961

/-! ## A397279.P4583797265973242298

`∩[A020330(n+1), A043682(n+1)]`
-/

namespace A397279.P4583797265973242298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397279.P4583797265973242298

/-! ## A397279.P9173373376305572956

`∩[A043682(n+1), A121016(n+1)]`
-/

namespace A397279.P9173373376305572956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397279.P9173373376305572956

/-!
# A397280: Expansion of e.g.f. (1/x) * Series_Reversion( x + 1 - exp(x^3) ).

The programs for A397280, there is no canonical definition to state claims against.
-/

/-! ## A397280.P16226459749534642299

`A397282(A099146(n+1))`
-/

namespace A397280.P16226459749534642299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397282 (A099146 (n + 1)).toNat

end

end A397280.P16226459749534642299

/-! ## A397280.P18126328280989625056

`A397282(n^A341850(n+3))`
-/

namespace A397280.P18126328280989625056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397282 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A341850 (n + 3) : ℤ))).toNat

end

end A397280.P18126328280989625056

/-! ## A397280.P13660169120843862003

`A397282(n)+A000007(A000142(n))`
-/

namespace A397280.P13660169120843862003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397282 n + A000007 (A000142 n).toNat

end

end A397280.P13660169120843862003

/-! ## A397280.P16523572152757849364

`A397282(n)+A083927(A113994(n))`
-/

namespace A397280.P16523572152757849364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397282 n + A083927 (A113994 n).toNat

end

end A397280.P16523572152757849364

/-!
# A397281: Expansion of e.g.f. (1/x) * Series_Reversion( x + 1 - exp(x^4) ).

The programs for A397281, there is no canonical definition to state claims against.
-/

/-! ## A397281.P3506631913574573298

`A397283(n)/A051903(A033484(n+3))`
-/

namespace A397281.P3506631913574573298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397283 n : ℚ) / (A051903 (A033484 (n + 3)).toNat : ℚ)

end

end A397281.P3506631913574573298

/-! ## A397281.P1890250815408133405

`A397283(A089839(∑[n]))`
-/

namespace A397281.P1890250815408133405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397283 (A089839 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A397281.P1890250815408133405

/-! ## A397281.P4070212504200509704

`A397283(n)^A005699(n)`
-/

namespace A397281.P4070212504200509704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397283 n : ℚ) ^ (A005699 n : ℤ)

end

end A397281.P4070212504200509704

/-! ## A397281.P8579172994017537174

`A397283(n^A341850(n))`
-/

namespace A397281.P8579172994017537174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397283 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A341850 n : ℤ))).toNat

end

end A397281.P8579172994017537174

/-! ## A397281.P4995222877274634337

`A397283(n)+A000007(A001792(n))`
-/

namespace A397281.P4995222877274634337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397283 n + A000007 (A001792 n).toNat

end

end A397281.P4995222877274634337

/-!
# A397283: Expansion of e.g.f. (1/x) * Series_Reversion( x + log(1-x^4) ).

The programs for A397283, there is no canonical definition to state claims against.
-/

/-! ## A397283.P12153785826932112779

`A328966(A397306(n+1))*A397281(n)`
-/

namespace A397283.P12153785826932112779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328966 (A397306 (n + 1)).toNat * A397281 n

end

end A397283.P12153785826932112779

/-!
# A397284: Triangle read by rows: T(n, k) = 2^n * P_{n, k}(1/2) where P_{n, k}(x) = x * (n - k + x)^(n - k - 1) * binomial(n, k).

The programs for A397284, the canonical program `A397284.P18285978650296729856` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397284 has offset 0).

The definition of A397284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397284.P11033495092496848877

`A059268(n)*A397286(n)`
-/

namespace A397284.P11033495092496848877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A397286 n

end

end A397284.P11033495092496848877

namespace A397284

/-- `A059268(n)*A397286(n)` -/
def P11033495092496848877.Spec : Prop :=
  ∀ n, P11033495092496848877.a n = A397284 n

end A397284

/-! ## A397284.P10606913460829503972

`lcm(A013609(n), A397286(n))`
-/

namespace A397284.P10606913460829503972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A397286 n)

end

end A397284.P10606913460829503972

namespace A397284

/-- `lcm(A013609(n), A397286(n))` -/
def P10606913460829503972.Spec : Prop :=
  ∀ n, (P10606913460829503972.a n : ℤ) = A397284 n

end A397284

/-! ## A397284.P18285978650296729856

`A013609(n)*A052750(A025581(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A397284

/-- `A013609(n)*A052750(A025581(n))` -/
def P18285978650296729856.Spec : Prop :=
  ∀ n, P18285978650296729856.a n = A397284 n

theorem P18285978650296729856.correct : P18285978650296729856.Spec := by
  intro n
  simp only [A397284]

end A397284

/-!
# A397285: Row sums of A397284.

The programs for A397285, there is no canonical definition to state claims against.
-/

/-! ## A397285.P3751441190300985669

`or(1, A335433(A390275(n+2)))`
-/

namespace A397285.P3751441190300985669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A335433 (A390275 (n + 2)).toNat)

end

end A397285.P3751441190300985669

/-!
# A397286: Triangle read by rows: T(n, k) = 2^(n - k) * P_{n, k}(1/2) where P_{n, k}(x) = x * (n - k + x)^(n - k - 1) * binomial(n, k).

The programs for A397286, the canonical program `A397286.P5998066170028131211` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397286 has offset 0).

The definition of A397286 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A397284, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A397286.P5998066170028131211

`A397284(C(row(n)+1, 2)+col(n))/2^col(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A397286

/-- `A397284(C(row(n)+1, 2)+col(n))/2^col(n)` -/
def P5998066170028131211.Spec : Prop :=
  ∀ n, P5998066170028131211.a n = (A397286 n : ℚ)

end A397286

/-! ## A397286.P6122260870212224923

`A397284(n)/2^col(n)`
-/

namespace A397286.P6122260870212224923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397284 n : ℚ) / (2 ^ SequenceMachineLib.triCol n : ℚ)

end

end A397286.P6122260870212224923

namespace A397286

/-- `A397284(n)/2^col(n)` -/
def P6122260870212224923.Spec : Prop :=
  ∀ n, P6122260870212224923.a n = (A397286 n : ℚ)

end A397286

/-! ## A397286.P6957111829336627396

`A397284(n)/A059268(n)`
-/

namespace A397286.P6957111829336627396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397284 n : ℚ) / (A059268 n : ℚ)

end

end A397286.P6957111829336627396

namespace A397286

/-- `A397284(n)/A059268(n)` -/
def P6957111829336627396.Spec : Prop :=
  ∀ n, P6957111829336627396.a n = (A397286 n : ℚ)

end A397286

/-! ## A397286.P9058214678386781954

`A007318(n)*A052750(row(n)-col(n))`
-/

namespace A397286.P9058214678386781954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A052750 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A397286.P9058214678386781954

namespace A397286

/-- `A007318(n)*A052750(row(n)-col(n))` -/
def P9058214678386781954.Spec : Prop :=
  ∀ n, P9058214678386781954.a n = A397286 n

end A397286

/-! ## A397286.P7619039895494027282

`A007318(n)*A052750(A025581(n))`
-/

namespace A397286.P7619039895494027282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A052750 (A025581 n).toNat

end

end A397286.P7619039895494027282

namespace A397286

/-- `A007318(n)*A052750(A025581(n))` -/
def P7619039895494027282.Spec : Prop :=
  ∀ n, P7619039895494027282.a n = A397286 n

end A397286

/-!
# A397287: Triangle read by rows: T(n, k) = k*(k + n)^(n - 1) for n > 0 and T(0, k) = 1.

The programs for A397287, the canonical program `A397287.P13110243874882363043` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397287 has offset 0).

The definition of A397287 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232006, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A397287.P13110243874882363043

`A232006(C(row(n)+col(n)+1, 2)+col(n))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A397287

/-- `A232006(C(row(n)+col(n)+1, 2)+col(n))` -/
def P13110243874882363043.Spec : Prop :=
  ∀ n, P13110243874882363043.a n = A397287 n

theorem P13110243874882363043.correct : P13110243874882363043.Spec := by
  intro n
  simp only [A397287]

end A397287

/-! ## A397287.P13691849592131823739

`A232006(A245300(n))`
-/

namespace A397287.P13691849592131823739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (A245300 n).toNat

end

end A397287.P13691849592131823739

namespace A397287

/-- `A232006(A245300(n))` -/
def P13691849592131823739.Spec : Prop :=
  ∀ n, P13691849592131823739.a n = A397287 n

end A397287

/-!
# A397296: a(n) is the least nonnegative integer which is not equal to F(x,y) for some x,y being earlier terms of the sequence, where F(x,y) = lcm(x,y) + |x-y|.

The programs for A397296, there is no canonical definition to state claims against.
-/

/-! ## A397296.P4816235381315250689

`∪[A004612(n+1), A353310(A006632(n+3))]`
-/

namespace A397296.P4816235381315250689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353310 (A006632 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A397296.P4816235381315250689

/-! ## A397296.P6868710664904570709

`∪[A066208(n+1), A118729(A194157(2*n+1))]`
-/

namespace A397296.P6868710664904570709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (A194157 (2 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A397296.P6868710664904570709

/-! ## A397296.P5843532993272456875

`comp[A127301(A127307(n+1))]`
-/

namespace A397296.P5843532993272456875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (A127307 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397296.P5843532993272456875

/-! ## A397296.P8791985001891090313

`comp[A324929(A064413(n+1))]`
-/

namespace A397296.P8791985001891090313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324929 (A064413 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397296.P8791985001891090313

/-! ## A397296.P15631918600519930110

`comp[A391229(A094683(n+1))]`
-/

namespace A397296.P15631918600519930110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391229 (A094683 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397296.P15631918600519930110

/-!
# A397297: Index of n in A397219, or -1 if n never appears.

The programs for A397297, there is no canonical definition to state claims against.
-/

/-! ## A397297.P3652688542940590174

`fo[A397219(n+1)-2]+1`
-/

namespace A397297.P3652688542940590174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397219 (n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A397297.P3652688542940590174

/-!
# A397298: a(n) = 2-adic valuation of A085244(n).

The programs for A397298, there is no canonical definition to state claims against.
-/

/-! ## A397298.P18393801463848034884

`∑[log2(or(n, n+1)-n)]-A397639(n+1)`
-/

namespace A397298.P18393801463848034884
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A397639 (n + 1) : ℝ)

end

end A397298.P18393801463848034884

/-! ## A397298.P2595598041998308397

`A011371(n+1)-A397639(n+1)`
-/

namespace A397298.P2595598041998308397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) - A397639 (n + 1)

end

end A397298.P2595598041998308397

/-! ## A397298.P2380868992745079451

`∑[A007814(n+1)]-A397639(n+1)`
-/

namespace A397298.P2380868992745079451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A397639 (n + 1)

end

end A397298.P2380868992745079451

/-! ## A397298.P6290278091076785792

`∑[A001511(n+1)-1]-A397639(n+1)`
-/

namespace A397298.P6290278091076785792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A397639 (n + 1)

end

end A397298.P6290278091076785792

/-! ## A397298.P15538250075176738370

`∑[1+A000120(n)-A000120(n+1)]-A397639(n+1)`
-/

namespace A397298.P15538250075176738370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000120 n - A000120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A397639 (n + 1)

end

end A397298.P15538250075176738370

