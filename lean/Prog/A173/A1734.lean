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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B012.C000
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
# A173400: n-th difference between consecutive primes=n-th difference between consecutive nonnegative nonprimes.

The programs for A173400, there is no canonical definition to state claims against.
-/

/-! ## A173400.P7103041209257855072

`eq[A001223(n+1), A054546(n+1)]+1`
-/

namespace A173400.P7103041209257855072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173400.P7103041209257855072

/-! ## A173400.P10312045168054468212

`eq[A161671(n+1), A161671(n+2)]+1`
-/

namespace A173400.P10312045168054468212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173400.P10312045168054468212

/-! ## A173400.P5128535174117164684

`eq[A054541(n+1), A054546(A028310(n))]`
-/

namespace A173400.P5128535174117164684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173400.P5128535174117164684

/-! ## A173400.P15024005012516526645

`eq[A054546(A028310(n)), A125266(n+1)]`
-/

namespace A173400.P15024005012516526645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173400.P15024005012516526645

/-! ## A173400.P5110348441603857011

`A184985(∩[A029707(n+1), A014692(n+2)])`
-/

namespace A173400.P5110348441603857011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A173400.P5110348441603857011

/-!
# A173401: Numbers k such that A075526(k-1) = A054546(k).

The programs for A173401, there is no canonical definition to state claims against.
-/

/-! ## A173401.P12714354211368049408

`record[A061395(A065994(n+1)+2)]`
-/

namespace A173401.P12714354211368049408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A065994 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173401.P12714354211368049408

/-! ## A173401.P5999629317533600651

`eq[A054546(n+1), A075526(n)]+1`
-/

namespace A173401.P5999629317533600651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173401.P5999629317533600651

/-! ## A173401.P17908026047888596080

`eq[A001223(A028310(n)), A054546(n+1)]+1`
-/

namespace A173401.P17908026047888596080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173401.P17908026047888596080

/-! ## A173401.P10319084338782483857

`eq[A001223(A008486(n)-2*n), A054546(n+1)]+1`
-/

namespace A173401.P10319084338782483857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A008486 n - (2 * n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173401.P10319084338782483857

/-! ## A173401.P10559688362107635922

`record[A055396(A065994(n+1)+2)]`
-/

namespace A173401.P10559688362107635922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A065994 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173401.P10559688362107635922

/-!
# A173402: (A007318 - A112468)/2.

The programs for A173402, there is no canonical definition to state claims against.
-/

/-! ## A173402.P2166400604033815620

`A007318(n)-A173398(n+1)`
-/

namespace A173402.P2166400604033815620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A173398 (n + 1)

end

end A173402.P2166400604033815620

/-! ## A173402.P16670784106930786155

`A173398(n+1)-A279006(n)`
-/

namespace A173402.P16670784106930786155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173398 (n + 1) - A279006 n

end

end A173402.P16670784106930786155

/-! ## A173402.P14351145481935905890

`(A007318(n)-A279006(n))/2`
-/

namespace A173402.P14351145481935905890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n - A279006 n : ℚ) / 2

end

end A173402.P14351145481935905890

/-! ## A173402.P13753495873004620703

`A014682(A007318(n)-A279006(n))`
-/

namespace A173402.P13753495873004620703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A007318 n - A279006 n).toNat

end

end A173402.P13753495873004620703

/-! ## A173402.P11052202611952352467

`A001281(A007318(n)-A279006(n))`
-/

namespace A173402.P11052202611952352467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A007318 n - A279006 n).toNat

end

end A173402.P11052202611952352467

/-! ## A173402.P13552782147090595729

`A004525(A007318(n)-A279006(n))`
-/

namespace A173402.P13552782147090595729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A007318 n - A279006 n).toNat

end

end A173402.P13552782147090595729

/-! ## A173402.P13676015415968209648

`A004526(A007318(n)-A279006(n))`
-/

namespace A173402.P13676015415968209648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007318 n - A279006 n).toNat

end

end A173402.P13676015415968209648

/-! ## A173402.P727682568905838876

`A025480(A007318(n)-A279006(n))`
-/

namespace A173402.P727682568905838876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A007318 n - A279006 n).toNat

end

end A173402.P727682568905838876

/-! ## A173402.P109379139481233439

`A026741(A007318(n)-A279006(n))`
-/

namespace A173402.P109379139481233439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A007318 n - A279006 n).toNat

end

end A173402.P109379139481233439

/-! ## A173402.P6224330342591502384

`A110654(A007318(n)-A279006(n))`
-/

namespace A173402.P6224330342591502384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A007318 n - A279006 n).toNat

end

end A173402.P6224330342591502384

/-! ## A173402.P744864144300619364

`A002265(2*(A007318(n)-A279006(n)))`
-/

namespace A173402.P744864144300619364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A007318 n - A279006 n)).toNat

end

end A173402.P744864144300619364

/-! ## A173402.P6696664334462149985

`A008615(3*(A007318(n)-A279006(n)))`
-/

namespace A173402.P6696664334462149985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * (A007318 n - A279006 n)).toNat

end

end A173402.P6696664334462149985

/-!
# A173403: Inverse binomial transform of A002416.

The programs for A173403, there is no canonical definition to state claims against.
-/

/-! ## A173403.P13701330774448018711

`A217436(∑[n])`
-/

namespace A173403.P13701330774448018711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217436 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173403.P13701330774448018711

/-! ## A173403.P15659854435316188129

`or(1, A217436(A000217(n)))`
-/

namespace A173403.P15659854435316188129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217436 (A000217 n).toNat)

end

end A173403.P15659854435316188129

/-! ## A173403.P9582391720335471080

`or(1, A217436(A179865(n+1)))`
-/

namespace A173403.P9582391720335471080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217436 (A179865 (n + 1)).toNat)

end

end A173403.P9582391720335471080

/-! ## A173403.P17812779739885956635

`A217436(A000217(n))+A180160(n)`
-/

namespace A173403.P17812779739885956635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217436 (A000217 n).toNat + A180160 n

end

end A173403.P17812779739885956635

/-! ## A173403.P13946846304501959994

`A217436(A000217(n))*A294775(n)`
-/

namespace A173403.P13946846304501959994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217436 (A000217 n).toNat * A294775 n

end

end A173403.P13946846304501959994

/-!
# A173404: Number of partitions of 1 into up to n powers of 1/2.

The programs for A173404, there is no canonical definition to state claims against.
-/

/-! ## A173404.P9578143372280806667

`∑[A002572(n+1)]`
-/

namespace A173404.P9578143372280806667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173404.P9578143372280806667

/-! ## A173404.P8555847247742483845

`A002572(root(n, 2)²+1)+a(n-1)` with `a(0)=1`
-/

namespace A173404.P8555847247742483845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002572 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2 + 1)).toNat + a (n - 1)

end

end A173404.P8555847247742483845

/-! ## A173404.P16365439277975674834

`a(n-1)-Δ[a(n-1)-A002572(n)]` with `a(0)=1`
-/

namespace A173404.P16365439277975674834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A002572 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A173404.P16365439277975674834

/-! ## A173404.P5132083035502338684

`∑[A049286(∑[abs(1-n)])]`
-/

namespace A173404.P5132083035502338684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173404.P5132083035502338684

/-! ## A173404.P13288770617721641289

`∑[A047913(A028310(∑[n]))]`
-/

namespace A173404.P13288770617721641289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (A028310 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173404.P13288770617721641289

/-! ## A173404.P3694076642548970399

`∑[A047913(A179865(n+1))]`
-/

namespace A173404.P3694076642548970399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173404.P3694076642548970399

/-! ## A173404.P1422472777345256406

`∑[A047913(A000007(n)+∑[n])]`
-/

namespace A173404.P1422472777345256406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173404.P1422472777345256406

/-! ## A173404.P9282870230884537284

`∑[A047913(A007318(∑[n+1]+2))]`
-/

namespace A173404.P9282870230884537284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173404.P9282870230884537284

/-! ## A173404.P17951049583927906972

`∑[A294775(∑[n+2]-1)]`
-/

namespace A173404.P17951049583927906972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173404.P17951049583927906972

/-! ## A173404.P5730982361289524504

`∑[A294775(A034856(n+1))%A267947(n+1)]`
-/

namespace A173404.P5730982361289524504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294775 (A034856 (n + 1)).toNat) (A267947 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173404.P5730982361289524504

/-!
# A173406: This sequence starts with any odd, composite number, like 15. There exists a power of two such that every 2^n + s_i is composite, where s_i is a term in the sequence less than 2^n. For example, 128+15=143, 512+15=527, 512+143=655, etc.

The programs for A173406, there is no canonical definition to state claims against.
-/

/-! ## A173406.P14900300896507904278

`A044202(A087444(n+1))`
-/

namespace A173406.P14900300896507904278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044202 (A087444 (n + 1)).toNat

end

end A173406.P14900300896507904278

/-! ## A173406.P16893611554659892817

`filter[A044202(3*n+1), A144611(#)]`
-/

namespace A173406.P16893611554659892817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044202 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144611 (f1 j).toNat = 1) n)

end

end A173406.P16893611554659892817

/-! ## A173406.P6098914493683376115

`filter[A044583(3*n+1), A144611(#)]`
-/

namespace A173406.P6098914493683376115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044583 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144611 (f1 j).toNat = 1) n)

end

end A173406.P6098914493683376115

/-! ## A173406.P819626427223902616

`filter[A044202(3*n+1), A159684(#)]`
-/

namespace A173406.P819626427223902616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044202 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A159684 (f1 j).toNat = 1) n)

end

end A173406.P819626427223902616

/-!
# A173407: Partial sums of A002106.

The programs for A173407, there is no canonical definition to state claims against.
-/

/-! ## A173407.P6843559803557977715

`∑[A002106(n+1)]`
-/

namespace A173407.P6843559803557977715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173407.P6843559803557977715

/-! ## A173407.P12987076002188007231

`A002106(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A173407.P12987076002188007231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002106 (n + 1) + a (A023443 n).toNat

end

end A173407.P12987076002188007231

/-! ## A173407.P3243487490179638503

`∑[A132221(n+1)+A000019(n+1)]`
-/

namespace A173407.P3243487490179638503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132221 (n + 1) + A000019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173407.P3243487490179638503

/-! ## A173407.P6625309212822513434

`A173397(n+1)+∑[A132221(n+1)]`
-/

namespace A173407.P6625309212822513434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173397 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173407.P6625309212822513434

/-! ## A173407.P540574849489615736

`a(n-1)+A002106(n+1)%A270866(n+1)` with `a(0)=1`
-/

namespace A173407.P540574849489615736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A002106 (n + 1)) (A270866 (n + 1))

end

end A173407.P540574849489615736

/-!
# A173409: The number of imperfect staircase polygons counted by diagonal length (also the distance of the terminal vertex from the origin).

The programs for A173409, there is no canonical definition to state claims against.
-/

/-! ## A173409.P236437713464663864

`A002315(n)-A200221(A060319(n))`
-/

namespace A173409.P236437713464663864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n - A200221 (A060319 n).toNat

end

end A173409.P236437713464663864

/-!
# A173410: The polynomial array L_q(n,k), evaluated at q = -1, i.e., L_{-1}(n,k).

The programs for A173410, there is no canonical definition to state claims against.
-/

/-! ## A173410.P13711189073819949697

`A000005(A215410(A239030(n+1)))`
-/

namespace A173410.P13711189073819949697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A215410 (A239030 (n + 1)).toNat).toNat

end

end A173410.P13711189073819949697

/-! ## A173410.P10621459461677391580

`A359438(A364506(n))`
-/

namespace A173410.P10621459461677391580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359438 (A364506 n).toNat

end

end A173410.P10621459461677391580

/-! ## A173410.P2923783229262056633

`A366254(A342587(n+1))`
-/

namespace A173410.P2923783229262056633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366254 (A342587 (n + 1)).toNat

end

end A173410.P2923783229262056633

/-! ## A173410.P4787699384844894588

`A220098(A059268(n)*A127054(n))`
-/

namespace A173410.P4787699384844894588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220098 (A059268 n * A127054 n).toNat

end

end A173410.P4787699384844894588

/-! ## A173410.P7970758956402322213

`A163379(A063007(n)*A338053(n+1))`
-/

namespace A173410.P7970758956402322213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163379 (A063007 n * A338053 (n + 1)).toNat

end

end A173410.P7970758956402322213

/-!
# A173411: Number of three-choice polygons by half-perimeter.

The programs for A173411, there is no canonical definition to state claims against.
-/

/-! ## A173411.P9807534237758904500

`A289436(A000984(n+2))+A101850(n)`
-/

namespace A173411.P9807534237758904500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A000984 (n + 2)).toNat + A101850 n

end

end A173411.P9807534237758904500

/-!
# A173412: Number of three-choice polygons by area.

The programs for A173412, there is no canonical definition to state claims against.
-/

/-! ## A173412.P17970534487167546467

`A065864(A255835(2*n+3)+A019334(n+1))`
-/

namespace A173412.P17970534487167546467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065864 (A255835 (2 * n + 3) + A019334 (n + 1)).toNat

end

end A173412.P17970534487167546467

/-!
# A173413: Number of imperfect staircase polygons counted by half-perimeter.

The programs for A173413, there is no canonical definition to state claims against.
-/

/-! ## A173413.P11181907865714990867

`∑[A004396(A213119(n+1))]`
-/

namespace A173413.P11181907865714990867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A213119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173413.P11181907865714990867

/-! ## A173413.P4500841431232510190

`∑[A133310(A213119(n+1)+1)]`
-/

namespace A173413.P4500841431232510190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A213119 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173413.P4500841431232510190

/-!
# A173414: Number of imperfect staircase polygons by area.

The programs for A173414, there is no canonical definition to state claims against.
-/

/-! ## A173414.P7792444849669902496

`A214701(A093967(n+1))`
-/

namespace A173414.P7792444849669902496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A093967 (n + 1)).toNat

end

end A173414.P7792444849669902496

/-! ## A173414.P10869946370981879202

`A214701((n+1)*A000129(n+1))`
-/

namespace A173414.P10869946370981879202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 ((n + 1 : ℤ) * A000129 (n + 1)).toNat

end

end A173414.P10869946370981879202

/-!
# A173415: Numbers n such that both the difference and the sum of (n-th prime+1)^2 and (n-th prime)^2 are prime.

The programs for A173415, there is no canonical definition to state claims against.
-/

/-! ## A173415.P3765400219958177035

`A049084(A098717(n+1))`
-/

namespace A173415.P3765400219958177035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A098717 (n + 1)).toNat

end

end A173415.P3765400219958177035

/-! ## A173415.P9008251801415067304

`A000720(p?[A068501(n+1)])`
-/

namespace A173415.P9008251801415067304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173415.P9008251801415067304

/-! ## A173415.P5272231672351823686

`A061395(p?[A068501(n+1)])`
-/

namespace A173415.P5272231672351823686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173415.P5272231672351823686

/-! ## A173415.P12205260435272925997

`A061395(p?[A098717(n+1)])`
-/

namespace A173415.P12205260435272925997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173415.P12205260435272925997

/-! ## A173415.P4903659964179438458

`A061395(A173875(n+1)-1)`
-/

namespace A173415.P4903659964179438458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A173875 (n + 1) - 1).toNat

end

end A173415.P4903659964179438458

/-!
# A173416: Exactly one of 2n^2-1 and 2n^2+1 is prime.

The programs for A173416, there is no canonical definition to state claims against.
-/

/-! ## A173416.P13724708741234325911

`record[A000188(A174047(n+1))]`
-/

namespace A173416.P13724708741234325911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A174047 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173416.P13724708741234325911

/-! ## A173416.P14529454599026850583

`eq[2, A002126(2*n²+1)]`
-/

namespace A173416.P14529454599026850583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (2 * n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173416.P14529454599026850583

/-! ## A173416.P658678795978976134

`eq[3, A002126(n*2*n+1)+1]`
-/

namespace A173416.P658678795978976134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n * (2 * n) + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173416.P658678795978976134

/-! ## A173416.P7340042292651040855

`eq[4, A002126(A058331(n))²]`
-/

namespace A173416.P7340042292651040855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A058331 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173416.P7340042292651040855

/-!
# A173419: Length of shortest computation yielding n using addition, subtraction and multiplication (starting from 1).

The programs for A173419, there is no canonical definition to state claims against.
-/

/-! ## A173419.P7732127039052522033

`A140361(n+1)+ceil(abs(sin(n)))`
-/

namespace A173419.P7732127039052522033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (n + 1) + ⌈|Real.sin (n : ℝ)|⌉

end

end A173419.P7732127039052522033

/-! ## A173419.P9283542445160077712

`A140361(floor(acot(n)+n)+1)+ceil(n/(n+1))`
-/

namespace A173419.P9283542445160077712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 1).toNat + ⌈(n : ℚ) / (n + 1 : ℚ)⌉

end

end A173419.P9283542445160077712

/-! ## A173419.P2324537098434756215

`A140361(n+1)+A057427(n)`
-/

namespace A173419.P2324537098434756215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (n + 1) + A057427 n

end

end A173419.P2324537098434756215

/-! ## A173419.P6199969915043620043

`A178334(n)+A140361(n+1)`
-/

namespace A173419.P6199969915043620043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A140361 (n + 1)

end

end A173419.P6199969915043620043

/-! ## A173419.P12525640863045747744

`A140361(n+1)-A057428(n)`
-/

namespace A173419.P12525640863045747744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (n + 1) - A057428 n

end

end A173419.P12525640863045747744

/-! ## A173419.P15487742779031127628

`∑[A178333(n)+Δ[A140361(n)]]`
-/

namespace A173419.P15487742779031127628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173419.P15487742779031127628

/-! ## A173419.P7774608229570511118

`A140361(n+1)+A165471(n²)`
-/

namespace A173419.P7774608229570511118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (n + 1) + A165471 (n ^ 2)

end

end A173419.P7774608229570511118

/-! ## A173419.P676032102989710889

`A140361(n+1)+A000040(n+1)%2`
-/

namespace A173419.P676032102989710889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A173419.P676032102989710889

/-! ## A173419.P11348923790417525445

`A140361(n+1)+A008683(2*A000040(n+1))`
-/

namespace A173419.P11348923790417525445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (n + 1) + A008683 (2 * A000040 (n + 1)).toNat

end

end A173419.P11348923790417525445

/-! ## A173419.P10317000075634576704

`A140361(n+1)+A001222(A000032(C(2, n+2)))`
-/

namespace A173419.P10317000075634576704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (n + 1) + A001222 (A000032 (Nat.choose 2 (n + 2))).toNat

end

end A173419.P10317000075634576704

/-!
# A173420: Triangular numbers which are sums of 4 consecutive primes.

The programs for A173420, there is no canonical definition to state claims against.
-/

/-! ## A173420.P8061729591513925954

`C(A226151(n+1)+1, 2)`
-/

namespace A173420.P8061729591513925954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A226151 (n + 1) + 1).toNat 2

end

end A173420.P8061729591513925954

/-! ## A173420.P8609250782486444123

`A000217(A226151(n+1))`
-/

namespace A173420.P8609250782486444123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A226151 (n + 1)).toNat

end

end A173420.P8609250782486444123

/-! ## A173420.P2507918335986656236

`A161680(A226151(n+1)+1)`
-/

namespace A173420.P2507918335986656236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A226151 (n + 1) + 1).toNat

end

end A173420.P2507918335986656236

/-! ## A173420.P8864694846722888532

`A179865(A226151(n+1)+1)`
-/

namespace A173420.P8864694846722888532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A226151 (n + 1) + 1).toNat

end

end A173420.P8864694846722888532

/-! ## A173420.P6969391973717393486

`A253145(A226151(n+1)-1)`
-/

namespace A173420.P6969391973717393486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A226151 (n + 1) - 1).toNat

end

end A173420.P6969391973717393486

/-! ## A173420.P7684510646633376931

`∑{d}[A226151(n+1), A007438(#)]`
-/

namespace A173420.P7684510646633376931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007438 d

end

end A173420.P7684510646633376931

/-! ## A173420.P12243398271519219433

`A116996(A226151(n+1)%(63*(n+1)))`
-/

namespace A173420.P12243398271519219433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116996 (Int.tmod (A226151 (n + 1)) (63 * (n + 1) : ℤ)).toNat

end

end A173420.P12243398271519219433

/-! ## A173420.P11974993415215429082

`A160791(2*A226151(n+1))`
-/

namespace A173420.P11974993415215429082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (2 * A226151 (n + 1)).toNat

end

end A173420.P11974993415215429082

/-! ## A173420.P9401027428162674227

`A198148(2*A226151(n+1))`
-/

namespace A173420.P9401027428162674227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198148 (2 * A226151 (n + 1)).toNat

end

end A173420.P9401027428162674227

/-! ## A173420.P8817723580956921919

`A198148(A226151(n+1)+A226151(n+1))`
-/

namespace A173420.P8817723580956921919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198148 (A226151 (n + 1) + A226151 (n + 1)).toNat

end

end A173420.P8817723580956921919

/-!
# A173421: Triangular numbers which are sums of 5 consecutive primes.

The programs for A173421, there is no canonical definition to state claims against.
-/

/-! ## A173421.P13880785681463637224

`∩[A034964(n+1), A000217(n)]`
-/

namespace A173421.P13880785681463637224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173421.P13880785681463637224

/-! ## A173421.P16376876470291592436

`∩[A034964(n+1), A000096(n+5)+1]`
-/

namespace A173421.P16376876470291592436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 5) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173421.P16376876470291592436

/-! ## A173421.P3743607963246732812

`∩[A034964(n+1), A167614(n+2)-3]`
-/

namespace A173421.P3743607963246732812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 2) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173421.P3743607963246732812

/-! ## A173421.P9313569494597500779

`∩[A034964(n+1), A056119(n)+28+n]`
-/

namespace A173421.P9313569494597500779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n + 28 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173421.P9313569494597500779

/-! ## A173421.P251807039364995108

`∩[A034964(A156877(n+1)+n+1), C(n+1, 2)]`
-/

namespace A173421.P251807039364995108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (A156877 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A173421.P251807039364995108

/-!
# A173422: Partials sums of A003094 (unlabeled connected planar simple graphs with n nodes).

The programs for A173422, there is no canonical definition to state claims against.
-/

/-! ## A173422.P932887769213193835

`∑[A003094(n)]`
-/

namespace A173422.P932887769213193835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173422.P932887769213193835

/-! ## A173422.P11916585018034979442

`∑[A001349(n)-A145270(n)]`
-/

namespace A173422.P11916585018034979442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 n - A145270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173422.P11916585018034979442

/-! ## A173422.P5249691052008351915

`A003094(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A173422.P5249691052008351915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003094 n + a (A023443 n).toNat

end

end A173422.P5249691052008351915

/-! ## A173422.P13580388126396729589

`∑[A304311(∑[n])-A145270(n)]`
-/

namespace A173422.P13580388126396729589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (∑ j ∈ Finset.range (n + 1), f2 j) - A145270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173422.P13580388126396729589

/-! ## A173422.P65284323839043450

`A003094(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A173422.P65284323839043450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003094 (A028310 n).toNat + a (n - 1)

end

end A173422.P65284323839043450

/-!
# A173423: Triangular numbers which are sums of 6 consecutive primes.

The programs for A173423, there is no canonical definition to state claims against.
-/

/-! ## A173423.P5888302080813635265

`∩[A127333(n+2), C(n+2, 2)]`
-/

namespace A173423.P5888302080813635265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A173423.P5888302080813635265

/-! ## A173423.P2115499626857135647

`∩[A127333(n+1), A000217(n)]`
-/

namespace A173423.P2115499626857135647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173423.P2115499626857135647

/-! ## A173423.P1677860361681359474

`∩[A127333(n+1), A133263(n)-2]`
-/

namespace A173423.P1677860361681359474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173423.P1677860361681359474

/-! ## A173423.P11908415426479016755

`∩[A127333(n+1), A034856(n+2)+2]`
-/

namespace A173423.P11908415426479016755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173423.P11908415426479016755

/-! ## A173423.P16041608754293500044

`∩[A034961(n+1)+A034961(n+4), A000217(n)]`
-/

namespace A173423.P16041608754293500044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + A034961 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173423.P16041608754293500044

/-!
# A173424: Triangle read by rows: T(n, k) = (2*n - 2*k)!*(2*k)!/(2^n*(n - k)!*k!).

The programs for A173424, the canonical program `A173424.P14328537752421797639` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173424 has offset 0).

The definition of A173424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173424.P14328537752421797639

`A059366(n)/A007318(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A173424

/-- `A059366(n)/A007318(n)` -/
def P14328537752421797639.Spec : Prop :=
  ∀ n, P14328537752421797639.a n = (A173424 n : ℚ)

end A173424

/-! ## A173424.P16485651654346618173

`A085881(n)/A086645(n)`
-/

namespace A173424.P16485651654346618173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085881 n : ℚ) / (A086645 n : ℚ)

end

end A173424.P16485651654346618173

namespace A173424

/-- `A085881(n)/A086645(n)` -/
def P16485651654346618173.Spec : Prop :=
  ∀ n, P16485651654346618173.a n = (A173424 n : ℚ)

end A173424

/-! ## A173424.P51708967979305148

`A380281(n)/A103327(n)`
-/

namespace A173424.P51708967979305148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380281 n : ℚ) / (A103327 n : ℚ)

end

end A173424.P51708967979305148

namespace A173424

/-- `A380281(n)/A103327(n)` -/
def P51708967979305148.Spec : Prop :=
  ∀ n, P51708967979305148.a n = (A173424 n : ℚ)

end A173424

/-! ## A173424.P7914739345845055037

`∏{e}[A036561(n), A001147(#)]`
-/

namespace A173424.P7914739345845055037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001147 (Nat.factorization (f1 n).natAbs p)

end

end A173424.P7914739345845055037

namespace A173424

/-- `∏{e}[A036561(n), A001147(#)]` -/
def P7914739345845055037.Spec : Prop :=
  ∀ n, P7914739345845055037.a n = A173424 n

end A173424

/-! ## A173424.P14910505502536976089

`∏{e}[A120027(n), A001147(#)]`
-/

namespace A173424.P14910505502536976089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001147 (Nat.factorization (f1 n).natAbs p)

end

end A173424.P14910505502536976089

namespace A173424

/-- `∏{e}[A120027(n), A001147(#)]` -/
def P14910505502536976089.Spec : Prop :=
  ∀ n, P14910505502536976089.a n = A173424 n

end A173424

/-!
# A173426: 

The programs for A173426, there is no canonical definition to state claims against.
-/

/-! ## A173426.P8747024038032051140

`A007907(Δ[n²])`
-/

namespace A173426.P8747024038032051140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007907 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A173426.P8747024038032051140

/-! ## A173426.P10512187699700939335

`or(1, A007907(A005408(n)))`
-/

namespace A173426.P10512187699700939335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007907 (A005408 n).toNat)

end

end A173426.P10512187699700939335

/-! ## A173426.P12677345542119185359

`A264668(n)+A007907(A005408(n))`
-/

namespace A173426.P12677345542119185359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A007907 (A005408 n).toNat

end

end A173426.P12677345542119185359

/-! ## A173426.P752383200979425807

`record[A127805(n)²]`
-/

namespace A173426.P752383200979425807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127805 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173426.P752383200979425807

/-!
# A173429: Number of ways to place 3 nonattacking nightriders on an n X n board.

The programs for A173429, there is no canonical definition to state claims against.
-/

/-! ## A173429.P4934000223689020926

`A319998(∑{d}[A089303(n+1), #])`
-/

namespace A173429.P4934000223689020926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A173429.P4934000223689020926

/-!
# A173432: NW-SE diagonal sums of Riordan array A112468.

The programs for A173432, the canonical program `A173432.P10933488225500061216` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173432 has offset 1).

The definition of A173432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173432.P10933488225500061216

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173432

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P10933488225500061216.Spec : Prop :=
  ∀ n, P10933488225500061216.a n = A173432 (n + 1)

theorem P10933488225500061216.correct : P10933488225500061216.Spec := by
  intro n
  simp only [A173432, Nat.add_sub_cancel]

end A173432

/-!
# A173433: a(n) = (A000045(n)+A173432(n))/2.

The programs for A173433, the canonical program `A173433.P8809888979316886333` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173433 has offset 1).

The definition of A173433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173433.P8809888979316886333

`(A000045(n+1)+A173432(n+1))/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A173433

/-- `(A000045(n+1)+A173432(n+1))/2` -/
def P8809888979316886333.Spec : Prop :=
  ∀ n, P8809888979316886333.a n = (A173433 (n + 1) : ℚ)

end A173433

/-! ## A173433.P9764031281860201743

`A001611(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A173433.P9764031281860201743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A001611 n - a (n - 3)

end

end A173433.P9764031281860201743

namespace A173433

/-- `A001611(n)-a(n-3)` -/
def P9764031281860201743.Spec : Prop :=
  ∀ n, P9764031281860201743.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P3636729724624074500

`A000045(n)+1-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A173433.P3636729724624074500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000045 n + (1 - a (n - 3))

end

end A173433.P3636729724624074500

namespace A173433

/-- `A000045(n)+1-a(n-3)` -/
def P3636729724624074500.Spec : Prop :=
  ∀ n, P3636729724624074500.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P17813042910063478137

`∑[A000045(n-2)-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A173433.P17813042910063478137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  A000045 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173433.P17813042910063478137

namespace A173433

/-- `∑[A000045(n-2)-a(n-3)]` -/
def P17813042910063478137.Spec : Prop :=
  ∀ n, P17813042910063478137.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P15362937491117744294

`A173434(n+1)+A173432(n+1)`
-/

namespace A173433.P15362937491117744294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 (n + 1) + A173432 (n + 1)

end

end A173433.P15362937491117744294

namespace A173433

/-- `A173434(n+1)+A173432(n+1)` -/
def P15362937491117744294.Spec : Prop :=
  ∀ n, P15362937491117744294.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P18235364490944225448

`A245477(n+3)+A201864(n+1)`
-/

namespace A173433.P18235364490944225448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 (n + 3) + A201864 (n + 1)

end

end A173433.P18235364490944225448

namespace A173433

/-- `A245477(n+3)+A201864(n+1)` -/
def P18235364490944225448.Spec : Prop :=
  ∀ n, P18235364490944225448.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P13811946288305036823

`A131531(n+1)+A173434(n+1)+1`
-/

namespace A173433.P13811946288305036823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + (A173434 (n + 1) + 1)

end

end A173433.P13811946288305036823

namespace A173433

/-- `A131531(n+1)+A173434(n+1)+1` -/
def P13811946288305036823.Spec : Prop :=
  ∀ n, P13811946288305036823.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P15388572616130373245

`A004695(n+1)+A293552(n+1)-A004697(n+1)`
-/

namespace A173433.P15388572616130373245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) + (A293552 (n + 1) - A004697 (n + 1))

end

end A173433.P15388572616130373245

namespace A173433

/-- `A004695(n+1)+A293552(n+1)-A004697(n+1)` -/
def P15388572616130373245.Spec : Prop :=
  ∀ n, P15388572616130373245.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P7042402313461698189

`ceil(A052959(n)/2)`
-/

namespace A173433.P7042402313461698189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052959 n : ℚ) / 2⌉

end

end A173433.P7042402313461698189

namespace A173433

/-- `ceil(A052959(n)/2)` -/
def P7042402313461698189.Spec : Prop :=
  ∀ n, P7042402313461698189.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P2196569632259287149

`A000045(n+1)-A173434(n+1)`
-/

namespace A173433.P2196569632259287149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A173434 (n + 1)

end

end A173433.P2196569632259287149

namespace A173433

/-- `A000045(n+1)-A173434(n+1)` -/
def P2196569632259287149.Spec : Prop :=
  ∀ n, P2196569632259287149.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P12705600959240408099

`A000045(n+1)-∑[A293014(n+1)]`
-/

namespace A173433.P12705600959240408099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173433.P12705600959240408099

namespace A173433

/-- `A000045(n+1)-∑[A293014(n+1)]` -/
def P12705600959240408099.Spec : Prop :=
  ∀ n, P12705600959240408099.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P8014166268033441957

`A131132(n)-(A004697(n+1)+A004695(n))`
-/

namespace A173433.P8014166268033441957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131132 n - (A004697 (n + 1) + A004695 n)

end

end A173433.P8014166268033441957

namespace A173433

/-- `A131132(n)-(A004697(n+1)+A004695(n))` -/
def P8014166268033441957.Spec : Prop :=
  ∀ n, P8014166268033441957.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P3271343189608505122

`A000045(n+1)-(A293553(n+1)+A004697(n+1))`
-/

namespace A173433.P3271343189608505122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - (A293553 (n + 1) + A004697 (n + 1))

end

end A173433.P3271343189608505122

namespace A173433

/-- `A000045(n+1)-(A293553(n+1)+A004697(n+1))` -/
def P3271343189608505122.Spec : Prop :=
  ∀ n, P3271343189608505122.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P7432473022863495179

`A293632(n+1)+A293633(n+1)-A000045(n+1)`
-/

namespace A173433.P7432473022863495179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293632 (n + 1) + (A293633 (n + 1) - A000045 (n + 1))

end

end A173433.P7432473022863495179

namespace A173433

/-- `A293632(n+1)+A293633(n+1)-A000045(n+1)` -/
def P7432473022863495179.Spec : Prop :=
  ∀ n, P7432473022863495179.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P15809745880292081770

`Δ[floor(∑[A001611(n)/2])]`
-/

namespace A173433.P15809745880292081770
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173433.P15809745880292081770

namespace A173433

/-- `Δ[floor(∑[A001611(n)/2])]` -/
def P15809745880292081770.Spec : Prop :=
  ∀ n, P15809745880292081770.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P12919581804777604426

`A000045(n+1)+A000045(n+1)-A279890(n+1)`
-/

namespace A173433.P12919581804777604426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A000045 (n + 1) - A279890 (n + 1))

end

end A173433.P12919581804777604426

namespace A173433

/-- `A000045(n+1)+A000045(n+1)-A279890(n+1)` -/
def P12919581804777604426.Spec : Prop :=
  ∀ n, P12919581804777604426.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P1388520859465207576

`Δ[ceil(A081659(n+1)/2)]`
-/

namespace A173433.P1388520859465207576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081659 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173433.P1388520859465207576

namespace A173433

/-- `Δ[ceil(A081659(n+1)/2)]` -/
def P1388520859465207576.Spec : Prop :=
  ∀ n, P1388520859465207576.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P6098175264787417123

`Δ[floor((A000045(n+2)+n)/2)]`
-/

namespace A173433.P6098175264787417123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 2) + (n : ℤ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173433.P6098175264787417123

namespace A173433

/-- `Δ[floor((A000045(n+2)+n)/2)]` -/
def P6098175264787417123.Spec : Prop :=
  ∀ n, P6098175264787417123.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P6866015785811709381

`2*A000045(n+1)-A279890(n+1)`
-/

namespace A173433.P6866015785811709381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 1) - A279890 (n + 1)

end

end A173433.P6866015785811709381

namespace A173433

/-- `2*A000045(n+1)-A279890(n+1)` -/
def P6866015785811709381.Spec : Prop :=
  ∀ n, P6866015785811709381.a n = A173433 (n + 1)

end A173433

/-! ## A173433.P9926218496566611293

`A001611(n+1)+A000071(n+2)-A099517(n+1)`
-/

namespace A173433.P9926218496566611293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) + (A000071 (n + 2) - A099517 (n + 1))

end

end A173433.P9926218496566611293

namespace A173433

/-- `A001611(n+1)+A000071(n+2)-A099517(n+1)` -/
def P9926218496566611293.Spec : Prop :=
  ∀ n, P9926218496566611293.a n = A173433 (n + 1)

end A173433

/-!
# A173434: a(n) = (A000045(n)-A173432(n))/2.

The programs for A173434, the canonical program `A173434.P2348795158739368342` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173434 has offset 1).

The definition of A173434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173434.P2348795158739368342

`2*a(n-1)-2*a(n-3)+2*a(n-4)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173434

/-- `2*a(n-1)-2*a(n-3)+2*a(n-4)-a(n-6)` -/
def P2348795158739368342.Spec : Prop :=
  ∀ n, P2348795158739368342.a n = A173434 (n + 1)

theorem P2348795158739368342.correct : P2348795158739368342.Spec := by
  intro n
  simp only [A173434, Nat.add_sub_cancel]

end A173434

/-! ## A173434.P3819476353380469582

`(A000045(n+1)-A173432(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173434.P3819476353380469582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) - A173432 (n + 1) : ℚ) / 2

end

end A173434.P3819476353380469582

namespace A173434

/-- `(A000045(n+1)-A173432(n+1))/2` -/
def P3819476353380469582.Spec : Prop :=
  ∀ n, P3819476353380469582.a n = (A173434 (n + 1) : ℚ)

end A173434

/-! ## A173434.P4835328071116987572

`∑[a(n-1)+a(n-2)]-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A173434.P4835328071116987572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 3)

end

end A173434.P4835328071116987572

namespace A173434

/-- `∑[a(n-1)+a(n-2)]-a(n-3)` -/
def P4835328071116987572.Spec : Prop :=
  ∀ n, P4835328071116987572.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P17650027241866131489

`∑[A293014(n+1)]`
-/

namespace A173434.P17650027241866131489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173434.P17650027241866131489

namespace A173434

/-- `∑[A293014(n+1)]` -/
def P17650027241866131489.Spec : Prop :=
  ∀ n, P17650027241866131489.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P6884842782789246168

`∑[abs(∑[A106511(n+1)])]`
-/

namespace A173434.P6884842782789246168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106511 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173434.P6884842782789246168

namespace A173434

/-- `∑[abs(∑[A106511(n+1)])]` -/
def P6884842782789246168.Spec : Prop :=
  ∀ n, P6884842782789246168.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P12078117933410230438

`A000071(n)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A173434.P12078117933410230438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A000071 n - a (n - 3)

end

end A173434.P12078117933410230438

namespace A173434

/-- `A000071(n)-a(n-3)` -/
def P12078117933410230438.Spec : Prop :=
  ∀ n, P12078117933410230438.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P13456145076810923746

`A000045(n)-(a(n-3)+1)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A173434.P13456145076810923746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A000045 n - (a (n - 3) + 1)

end

end A173434.P13456145076810923746

namespace A173434

/-- `A000045(n)-(a(n-3)+1)` -/
def P13456145076810923746.Spec : Prop :=
  ∀ n, P13456145076810923746.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P12114763303243734338

`∑[A000045(n-2)-a(n-3)]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A173434.P12114763303243734338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  A000045 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173434.P12114763303243734338

namespace A173434

/-- `∑[A000045(n-2)-a(n-3)]` -/
def P12114763303243734338.Spec : Prop :=
  ∀ n, P12114763303243734338.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P2056722665762834225

`A005252(n)-A088911(n)`
-/

namespace A173434.P2056722665762834225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 n - A088911 n

end

end A173434.P2056722665762834225

namespace A173434

/-- `A005252(n)-A088911(n)` -/
def P2056722665762834225.Spec : Prop :=
  ∀ n, P2056722665762834225.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P5820629506800176492

`A094686(n)-A141212(n+1)`
-/

namespace A173434.P5820629506800176492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 n - A141212 (n + 1)

end

end A173434.P5820629506800176492

namespace A173434

/-- `A094686(n)-A141212(n+1)` -/
def P5820629506800176492.Spec : Prop :=
  ∀ n, P5820629506800176492.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P13156618070585126467

`A293553(n+1)+A004697(n+1)`
-/

namespace A173434.P13156618070585126467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 (n + 1) + A004697 (n + 1)

end

end A173434.P13156618070585126467

namespace A173434

/-- `A293553(n+1)+A004697(n+1)` -/
def P13156618070585126467.Spec : Prop :=
  ∀ n, P13156618070585126467.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P10954072758663899687

`A173433(n+1)-A173432(n+1)`
-/

namespace A173434.P10954072758663899687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173433 (n + 1) - A173432 (n + 1)

end

end A173434.P10954072758663899687

namespace A173434

/-- `A173433(n+1)-A173432(n+1)` -/
def P10954072758663899687.Spec : Prop :=
  ∀ n, P10954072758663899687.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P105735617743374552

`A201864(n+1)+A245477(n)-1`
-/

namespace A173434.P105735617743374552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (n + 1) + (A245477 n - 1)

end

end A173434.P105735617743374552

namespace A173434

/-- `A201864(n+1)+A245477(n)-1` -/
def P105735617743374552.Spec : Prop :=
  ∀ n, P105735617743374552.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P2120169185288371330

`A173433(n+1)-(A131531(n+1)+1)`
-/

namespace A173434.P2120169185288371330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173433 (n + 1) - (A131531 (n + 1) + 1)

end

end A173434.P2120169185288371330

namespace A173434

/-- `A173433(n+1)-(A131531(n+1)+1)` -/
def P2120169185288371330.Spec : Prop :=
  ∀ n, P2120169185288371330.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P6623778656743165360

`and(A011655(n+1)-2, A004695(n+1))`
-/

namespace A173434.P6623778656743165360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011655 (n + 1) - 2) (A004695 (n + 1))

end

end A173434.P6623778656743165360

namespace A173434

/-- `and(A011655(n+1)-2, A004695(n+1))` -/
def P6623778656743165360.Spec : Prop :=
  ∀ n, P6623778656743165360.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P15165246187805736882

`and(A059841(n+1)-2, A004695(n+1))`
-/

namespace A173434.P15165246187805736882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059841 (n + 1) - 2) (A004695 (n + 1))

end

end A173434.P15165246187805736882

namespace A173434

/-- `and(A059841(n+1)-2, A004695(n+1))` -/
def P15165246187805736882.Spec : Prop :=
  ∀ n, P15165246187805736882.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P7981922557998889754

`A179006(n+1)+A293553(n+1)-A179006(n)`
-/

namespace A173434.P7981922557998889754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179006 (n + 1) + (A293553 (n + 1) - A179006 n)

end

end A173434.P7981922557998889754

namespace A173434

/-- `A179006(n+1)+A293553(n+1)-A179006(n)` -/
def P7981922557998889754.Spec : Prop :=
  ∀ n, P7981922557998889754.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P2596147370578660581

`floor(A074331(n)/2)`
-/

namespace A173434.P2596147370578660581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074331 n : ℚ) / 2⌋

end

end A173434.P2596147370578660581

namespace A173434

/-- `floor(A074331(n)/2)` -/
def P2596147370578660581.Spec : Prop :=
  ∀ n, P2596147370578660581.a n = A173434 (n + 1)

end A173434

/-! ## A173434.P1975343868975322495

`∑[Δ[A141325(n)]/2]`
-/

namespace A173434.P1975343868975322495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173434.P1975343868975322495

namespace A173434

/-- `∑[Δ[A141325(n)]/2]` -/
def P1975343868975322495.Spec : Prop :=
  ∀ n, P1975343868975322495.a n = (A173434 (n + 1) : ℚ)

end A173434

/-! ## A173434.P11245335336980529548

`floor(A141325(n+1)/2)`
-/

namespace A173434.P11245335336980529548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141325 (n + 1) : ℚ) / 2⌋

end

end A173434.P11245335336980529548

namespace A173434

/-- `floor(A141325(n+1)/2)` -/
def P11245335336980529548.Spec : Prop :=
  ∀ n, P11245335336980529548.a n = A173434 (n + 1)

end A173434

/-!
# A173436: Number of ways to place 7 nonattacking knights on an n X n toroidal board.

The programs for A173436, there is no canonical definition to state claims against.
-/

/-! ## A173436.P1700583187645910264

`A000203(A201470(n))%A006153(A211779(n+1))`
-/

namespace A173436.P1700583187645910264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A201470 n).toNat) (A006153 (A211779 (n + 1)).toNat)

end

end A173436.P1700583187645910264

/-!
# A173437: G.f. satisfies: A(A(x)) = Sum_{n>=1} A(x)^(n(n+1)/2)/x^(n(n-1)/2).

The programs for A173437, there is no canonical definition to state claims against.
-/

/-! ## A173437.P2378283908534927094

`∑[A233970(Δ[A005821(n)])]`
-/

namespace A173437.P2378283908534927094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005821 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173437.P2378283908534927094

/-! ## A173437.P13584971701351627911

`A364833(n)-A345167(A137171(3*(n+1)+n))`
-/

namespace A173437.P13584971701351627911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364833 n - A345167 (A137171 (3 * (n + 1) + n)).toNat

end

end A173437.P13584971701351627911

/-!
# A173438: Number of divisors d of number n such that d does not divide sigma(n).

The programs for A173438, the canonical program `A173438.P11158591540045006980` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173438 has offset 1).

The definition of A173438 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A073802, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173438.P11158591540045006980

`A000005(n+1)-A073802(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A173438

/-- `A000005(n+1)-A073802(n+1)` -/
def P11158591540045006980.Spec : Prop :=
  ∀ n, P11158591540045006980.a n = A173438 (n + 1)

theorem P11158591540045006980.correct : P11158591540045006980.Spec := by
  intro n
  simp only [A173438, Nat.add_sub_cancel]

end A173438

/-! ## A173438.P3264230043818960190

`A000005(n+1)-A000005(gcd(n-1-2*n, ∑{d}[n+1, #]))`
-/

namespace A173438.P3264230043818960190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (Int.gcd ((n : ℤ) - 1 - (2 * n : ℤ)) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A173438.P3264230043818960190

namespace A173438

/-- `A000005(n+1)-A000005(gcd(n-1-2*n, ∑{d}[n+1, #]))` -/
def P3264230043818960190.Spec : Prop :=
  ∀ n, P3264230043818960190.a n = A173438 (n + 1)

end A173438

/-! ## A173438.P9781074544549366173

`A000005(n+1)-A000005(A009194(n+1))`
-/

namespace A173438.P9781074544549366173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (A009194 (n + 1)).toNat

end

end A173438.P9781074544549366173

namespace A173438

/-- `A000005(n+1)-A000005(A009194(n+1))` -/
def P9781074544549366173.Spec : Prop :=
  ∀ n, P9781074544549366173.a n = A173438 (n + 1)

end A173438

/-! ## A173438.P5471406053563990076

`A032741(n+1)-A032741(A009194(n+1))`
-/

namespace A173438.P5471406053563990076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A032741 (A009194 (n + 1)).toNat

end

end A173438.P5471406053563990076

namespace A173438

/-- `A032741(n+1)-A032741(A009194(n+1))` -/
def P5471406053563990076.Spec : Prop :=
  ∀ n, P5471406053563990076.a n = A173438 (n + 1)

end A173438

/-! ## A173438.P12286084336610149500

`A062068(n+1)-(A295305(n+1)+A073802(n+1))`
-/

namespace A173438.P12286084336610149500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) - (A295305 (n + 1) + A073802 (n + 1))

end

end A173438.P12286084336610149500

namespace A173438

/-- `A062068(n+1)-(A295305(n+1)+A073802(n+1))` -/
def P12286084336610149500.Spec : Prop :=
  ∀ n, P12286084336610149500.a n = A173438 (n + 1)

end A173438

/-! ## A173438.P897500420976529726

`A000005(n+1)-A000005(gcd(n+1, A000203(n+1)))`
-/

namespace A173438.P897500420976529726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (Int.gcd (n + 1 : ℤ) (A000203 (n + 1)))

end

end A173438.P897500420976529726

namespace A173438

/-- `A000005(n+1)-A000005(gcd(n+1, A000203(n+1)))` -/
def P897500420976529726.Spec : Prop :=
  ∀ n, P897500420976529726.a n = A173438 (n + 1)

end A173438

/-! ## A173438.P5218426289639349072

`A000005(n+1)-A000005(gcd(2*n+1-n, A155085(n+1)))`
-/

namespace A173438.P5218426289639349072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) (A155085 (n + 1)))

end

end A173438.P5218426289639349072

namespace A173438

/-- `A000005(n+1)-A000005(gcd(2*n+1-n, A155085(n+1)))` -/
def P5218426289639349072.Spec : Prop :=
  ∀ n, P5218426289639349072.a n = A173438 (n + 1)

end A173438

/-! ## A173438.P2766644574945031624

`A000005(n+1)-A000005(A000203(n+1)/A017665(n+1))`
-/

namespace A173438.P2766644574945031624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A017665 (n + 1) : ℚ))).toNat

end

end A173438.P2766644574945031624

namespace A173438

/-- `A000005(n+1)-A000005(A000203(n+1)/A017665(n+1))` -/
def P2766644574945031624.Spec : Prop :=
  ∀ n, P2766644574945031624.a n = A173438 (n + 1)

end A173438

/-! ## A173438.P18412811039248631163

`A001222(A293514(n+1)/A327155(n+1))`
-/

namespace A173438.P18412811039248631163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A293514 (n + 1) : ℚ) / (A327155 (n + 1) : ℚ))).toNat

end

end A173438.P18412811039248631163

namespace A173438

/-- `A001222(A293514(n+1)/A327155(n+1))` -/
def P18412811039248631163.Spec : Prop :=
  ∀ n, P18412811039248631163.a n = A173438 (n + 1)

end A173438

/-! ## A173438.P17168775876863507300

`A001222(A293514(n+1))+1-A073802(n+1)`
-/

namespace A173438.P17168775876863507300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A293514 (n + 1)).toNat + (1 - A073802 (n + 1))

end

end A173438.P17168775876863507300

namespace A173438

/-- `A001222(A293514(n+1))+1-A073802(n+1)` -/
def P17168775876863507300.Spec : Prop :=
  ∀ n, P17168775876863507300.a n = A173438 (n + 1)

end A173438

/-! ## A173438.P17814743307720437665

`A073811(A050399(n+1))-A073802(n+1)`
-/

namespace A173438.P17814743307720437665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073811 (A050399 (n + 1)).toNat - A073802 (n + 1)

end

end A173438.P17814743307720437665

namespace A173438

/-- `A073811(A050399(n+1))-A073802(n+1)` -/
def P17814743307720437665.Spec : Prop :=
  ∀ n, P17814743307720437665.a n = A173438 (n + 1)

end A173438

/-! ## A173438.P12737403491201135023

`A001222(A293514(n+1))-A001222(A327154(n+1))`
-/

namespace A173438.P12737403491201135023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A293514 (n + 1)).toNat - A001222 (A327154 (n + 1)).toNat

end

end A173438.P12737403491201135023

namespace A173438

/-- `A001222(A293514(n+1))-A001222(A327154(n+1))` -/
def P12737403491201135023.Spec : Prop :=
  ∀ n, P12737403491201135023.a n = A173438 (n + 1)

end A173438

/-!
# A173439: Number of divisors d of number n such that sigma(d) divides sigma(n).

The programs for A173439, the canonical program `A173439.P5321888796491362127` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173439 has offset 1).

The definition of A173439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173439.P1259269127251949189

`Δ[A006218(n)]-A173440(n+1)`
-/

namespace A173439.P1259269127251949189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A173440 (n + 1)

end

end A173439.P1259269127251949189

namespace A173439

/-- `Δ[A006218(n)]-A173440(n+1)` -/
def P1259269127251949189.Spec : Prop :=
  ∀ n, P1259269127251949189.a n = A173439 (n + 1)

end A173439

/-! ## A173439.P7466563387975505269

`A000005(n+1)-A173440(n+1)`
-/

namespace A173439.P7466563387975505269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A173440 (n + 1)

end

end A173439.P7466563387975505269

namespace A173439

/-- `A000005(n+1)-A173440(n+1)` -/
def P7466563387975505269.Spec : Prop :=
  ∀ n, P7466563387975505269.a n = A173439 (n + 1)

end A173439

/-! ## A173439.P17438445971902982541

`A032741(n+1)+1-A173440(n+1)`
-/

namespace A173439.P17438445971902982541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1 - A173440 (n + 1)

end

end A173439.P17438445971902982541

namespace A173439

/-- `A032741(n+1)+1-A173440(n+1)` -/
def P17438445971902982541.Spec : Prop :=
  ∀ n, P17438445971902982541.a n = A173439 (n + 1)

end A173439

/-! ## A173439.P2205892789542890724

`A038040(n+1)/(n+1)-A173440(n+1)`
-/

namespace A173439.P2205892789542890724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) - (A173440 (n + 1) : ℚ)

end

end A173439.P2205892789542890724

namespace A173439

/-- `A038040(n+1)/(n+1)-A173440(n+1)` -/
def P2205892789542890724.Spec : Prop :=
  ∀ n, P2205892789542890724.a n = (A173439 (n + 1) : ℚ)

end A173439

/-! ## A173439.P13682045390600840412

`∑{d}[n+1, #+1]-A000203(n+1)-A173440(n+1)`
-/

namespace A173439.P13682045390600840412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) - A173440 (n + 1)

end

end A173439.P13682045390600840412

namespace A173439

/-- `∑{d}[n+1, #+1]-A000203(n+1)-A173440(n+1)` -/
def P13682045390600840412.Spec : Prop :=
  ∀ n, P13682045390600840412.a n = A173439 (n + 1)

end A173439

/-! ## A173439.P14345210311447860535

`A023645(n+1)+A000034(n)-A173440(n+1)`
-/

namespace A173439.P14345210311447860535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) + (A000034 n - A173440 (n + 1))

end

end A173439.P14345210311447860535

namespace A173439

/-- `A023645(n+1)+A000034(n)-A173440(n+1)` -/
def P14345210311447860535.Spec : Prop :=
  ∀ n, P14345210311447860535.a n = A173439 (n + 1)

end A173439

/-! ## A173439.P5321888796491362127

`∑{d}[n+1, A000007(A000203(n+1)%A000203(#))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A173439

/-- `∑{d}[n+1, A000007(A000203(n+1)%A000203(#))]` -/
def P5321888796491362127.Spec : Prop :=
  ∀ n, P5321888796491362127.a n = A173439 (n + 1)

theorem P5321888796491362127.correct : P5321888796491362127.Spec := by
  intro n
  simp only [A173439, Nat.add_sub_cancel]

end A173439

/-! ## A173439.P12748719977996695462

`A001221(n+1)+A033273(n+1)-A173440(n+1)`
-/

namespace A173439.P12748719977996695462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A033273 (n + 1) - A173440 (n + 1))

end

end A173439.P12748719977996695462

namespace A173439

/-- `A001221(n+1)+A033273(n+1)-A173440(n+1)` -/
def P12748719977996695462.Spec : Prop :=
  ∀ n, P12748719977996695462.a n = A173439 (n + 1)

end A173439

/-! ## A173439.P13623800057399708937

`A070824(n+1)+A057427(n)+1-A173440(n+1)`
-/

namespace A173439.P13623800057399708937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) + (A057427 n + 1) - A173440 (n + 1)

end

end A173439.P13623800057399708937

namespace A173439

/-- `A070824(n+1)+A057427(n)+1-A173440(n+1)` -/
def P13623800057399708937.Spec : Prop :=
  ∀ n, P13623800057399708937.a n = A173439 (n + 1)

end A173439

/-! ## A173439.P1637843697121563140

`A001227(n+1)*A001511(n+1)-A173440(n+1)`
-/

namespace A173439.P1637843697121563140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A173440 (n + 1)

end

end A173439.P1637843697121563140

namespace A173439

/-- `A001227(n+1)*A001511(n+1)-A173440(n+1)` -/
def P1637843697121563140.Spec : Prop :=
  ∀ n, P1637843697121563140.a n = A173439 (n + 1)

end A173439

/-! ## A173439.P13249537453224570145

`A033273(n+1)+A001222(∏{p}[n+1, #])-A173440(n+1)`
-/

namespace A173439.P13249537453224570145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) - A173440 (n + 1)

end

end A173439.P13249537453224570145

namespace A173439

/-- `A033273(n+1)+A001222(∏{p}[n+1, #])-A173440(n+1)` -/
def P13249537453224570145.Spec : Prop :=
  ∀ n, P13249537453224570145.a n = A173439 (n + 1)

end A173439

/-! ## A173439.P8519417621866824165

`∑{d}[n+1, A057427(#)]-A173440(n+1)`
-/

namespace A173439.P8519417621866824165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A173440 (n + 1)

end

end A173439.P8519417621866824165

namespace A173439

/-- `∑{d}[n+1, A057427(#)]-A173440(n+1)` -/
def P8519417621866824165.Spec : Prop :=
  ∀ n, P8519417621866824165.a n = A173439 (n + 1)

end A173439

/-! ## A173439.P14663973633265168051

`∑{d}[n+1, A157532(#+4)/3]-A173440(n+1)`
-/

namespace A173439.P14663973633265168051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A157532 (d + 4) : ℚ) / 3 - (A173440 (n + 1) : ℚ)

end

end A173439.P14663973633265168051

namespace A173439

/-- `∑{d}[n+1, A157532(#+4)/3]-A173440(n+1)` -/
def P14663973633265168051.Spec : Prop :=
  ∀ n, P14663973633265168051.a n = (A173439 (n + 1) : ℚ)

end A173439

/-! ## A173439.P12420862306629023149

`A001227(A003961(n+1))-A173440(n+1)`
-/

namespace A173439.P12420862306629023149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A003961 (n + 1)).toNat - A173440 (n + 1)

end

end A173439.P12420862306629023149

namespace A173439

/-- `A001227(A003961(n+1))-A173440(n+1)` -/
def P12420862306629023149.Spec : Prop :=
  ∀ n, P12420862306629023149.a n = A173439 (n + 1)

end A173439

/-!
# A173440: Number of divisors d of number n such that sigma(d) does not divide sigma(n).

The programs for A173440, the canonical program `A173440.P15332837783240740346` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173440 has offset 1).

The definition of A173440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173440.P5803004469646933056

`Δ[A006218(n)]-A173439(n+1)`
-/

namespace A173440.P5803004469646933056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A173439 (n + 1)

end

end A173440.P5803004469646933056

namespace A173440

/-- `Δ[A006218(n)]-A173439(n+1)` -/
def P5803004469646933056.Spec : Prop :=
  ∀ n, P5803004469646933056.a n = A173440 (n + 1)

end A173440

/-! ## A173440.P6851172923437421709

`Δ[A054519(n)]-A173439(n+1)`
-/

namespace A173440.P6851172923437421709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A173439 (n + 1)

end

end A173440.P6851172923437421709

namespace A173440

/-- `Δ[A054519(n)]-A173439(n+1)` -/
def P6851172923437421709.Spec : Prop :=
  ∀ n, P6851172923437421709.a n = A173440 (n + 1)

end A173440

/-! ## A173440.P13536661902646311987

`A000005(n+1)-A173439(n+1)`
-/

namespace A173440.P13536661902646311987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A173439 (n + 1)

end

end A173440.P13536661902646311987

namespace A173440

/-- `A000005(n+1)-A173439(n+1)` -/
def P13536661902646311987.Spec : Prop :=
  ∀ n, P13536661902646311987.a n = A173440 (n + 1)

end A173440

/-! ## A173440.P15332837783240740346

`A032741(n+1)+1-A173439(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A173440

/-- `A032741(n+1)+1-A173439(n+1)` -/
def P15332837783240740346.Spec : Prop :=
  ∀ n, P15332837783240740346.a n = A173440 (n + 1)

theorem P15332837783240740346.correct : P15332837783240740346.Spec := by
  intro n
  simp only [A173440, Nat.add_sub_cancel]

end A173440

/-! ## A173440.P8732553425147396911

`A334954(n+1)-(A173439(n+1)+1)`
-/

namespace A173440.P8732553425147396911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A173439 (n + 1) + 1)

end

end A173440.P8732553425147396911

namespace A173440

/-- `A334954(n+1)-(A173439(n+1)+1)` -/
def P8732553425147396911.Spec : Prop :=
  ∀ n, P8732553425147396911.a n = A173440 (n + 1)

end A173440

/-! ## A173440.P14376158499438548492

`A038040(n+1)/(n+1)-A173439(n+1)`
-/

namespace A173440.P14376158499438548492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) - (A173439 (n + 1) : ℚ)

end

end A173440.P14376158499438548492

namespace A173440

/-- `A038040(n+1)/(n+1)-A173439(n+1)` -/
def P14376158499438548492.Spec : Prop :=
  ∀ n, P14376158499438548492.a n = (A173440 (n + 1) : ℚ)

end A173440

/-! ## A173440.P8539015931921340579

`∑{d}[n+1, #+1]-A000203(n+1)-A173439(n+1)`
-/

namespace A173440.P8539015931921340579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) - A173439 (n + 1)

end

end A173440.P8539015931921340579

namespace A173440

/-- `∑{d}[n+1, #+1]-A000203(n+1)-A173439(n+1)` -/
def P8539015931921340579.Spec : Prop :=
  ∀ n, P8539015931921340579.a n = A173440 (n + 1)

end A173440

/-! ## A173440.P16770823741192833034

`A023645(n+1)+A000034(n)-A173439(n+1)`
-/

namespace A173440.P16770823741192833034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) + (A000034 n - A173439 (n + 1))

end

end A173440.P16770823741192833034

namespace A173440

/-- `A023645(n+1)+A000034(n)-A173439(n+1)` -/
def P16770823741192833034.Spec : Prop :=
  ∀ n, P16770823741192833034.a n = A173440 (n + 1)

end A173440

/-! ## A173440.P14504964794718404319

`A001221(n+1)+A033273(n+1)-A173439(n+1)`
-/

namespace A173440.P14504964794718404319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A033273 (n + 1) - A173439 (n + 1))

end

end A173440.P14504964794718404319

namespace A173440

/-- `A001221(n+1)+A033273(n+1)-A173439(n+1)` -/
def P14504964794718404319.Spec : Prop :=
  ∀ n, P14504964794718404319.a n = A173440 (n + 1)

end A173440

/-! ## A173440.P15528563250174149417

`A001227(n+1)*A001511(n+1)-A173439(n+1)`
-/

namespace A173440.P15528563250174149417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A173439 (n + 1)

end

end A173440.P15528563250174149417

namespace A173440

/-- `A001227(n+1)*A001511(n+1)-A173439(n+1)` -/
def P15528563250174149417.Spec : Prop :=
  ∀ n, P15528563250174149417.a n = A173440 (n + 1)

end A173440

/-! ## A173440.P8162496349829473641

`abs(A173439(n+1)-(A070824(n+1)+A057427(n)+1))`
-/

namespace A173440.P8162496349829473641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A173439 (n + 1) - (A070824 (n + 1) + (A057427 n + 1))|

end

end A173440.P8162496349829473641

namespace A173440

/-- `abs(A173439(n+1)-(A070824(n+1)+A057427(n)+1))` -/
def P8162496349829473641.Spec : Prop :=
  ∀ n, P8162496349829473641.a n = A173440 (n + 1)

end A173440

/-! ## A173440.P10644936442397327850

`A033273(n+1)+A001222(∏{p}[n+1, #])-A173439(n+1)`
-/

namespace A173440.P10644936442397327850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) - A173439 (n + 1)

end

end A173440.P10644936442397327850

namespace A173440

/-- `A033273(n+1)+A001222(∏{p}[n+1, #])-A173439(n+1)` -/
def P10644936442397327850.Spec : Prop :=
  ∀ n, P10644936442397327850.a n = A173440 (n + 1)

end A173440

/-! ## A173440.P17302857760257559140

`∑{d}[n+1, A057427(#)]-A173439(n+1)`
-/

namespace A173440.P17302857760257559140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A173439 (n + 1)

end

end A173440.P17302857760257559140

namespace A173440

/-- `∑{d}[n+1, A057427(#)]-A173439(n+1)` -/
def P17302857760257559140.Spec : Prop :=
  ∀ n, P17302857760257559140.a n = A173440 (n + 1)

end A173440

/-! ## A173440.P7389050156444134416

`abs(A173439(n+1)-∑{d}[n+1, A157532(#+4)/3])`
-/

namespace A173440.P7389050156444134416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A173439 (n + 1) : ℚ) - ∑ d ∈ Nat.divisors (f1 n), (A157532 (d + 4) : ℚ) / 3|

end

end A173440.P7389050156444134416

namespace A173440

/-- `abs(A173439(n+1)-∑{d}[n+1, A157532(#+4)/3])` -/
def P7389050156444134416.Spec : Prop :=
  ∀ n, P7389050156444134416.a n = (A173440 (n + 1) : ℚ)

end A173440

/-!
# A173441: Number of divisors d of n such that sigma(d) divides n.

The programs for A173441, there is no canonical definition to state claims against.
-/

/-! ## A173441.P17934560309497579079

`A000005(n+1)-A173442(n+1)`
-/

namespace A173441.P17934560309497579079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A173442 (n + 1)

end

end A173441.P17934560309497579079

/-! ## A173441.P9823317753224453368

`Δ[A006218(n)]-A173442(n+1)`
-/

namespace A173441.P9823317753224453368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A173442 (n + 1)

end

end A173441.P9823317753224453368

/-! ## A173441.P3086396623875690141

`A001222(A327156(n+1))+1`
-/

namespace A173441.P3086396623875690141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A327156 (n + 1)).toNat + 1

end

end A173441.P3086396623875690141

/-! ## A173441.P15693559588203737526

`A001222(A005843(A327156(n+1)))`
-/

namespace A173441.P15693559588203737526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005843 (A327156 (n + 1)).toNat).toNat

end

end A173441.P15693559588203737526

/-! ## A173441.P10025770380247031554

`∑{d}[n+1, A000079((n+1)%A000203(#))%2]`
-/

namespace A173441.P10025770380247031554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000079 (Int.tmod (n + 1 : ℤ) (A000203 d)).toNat) 2

end

end A173441.P10025770380247031554

/-! ## A173441.P8355316756209072439

`A001222(A266007(A326697(n+1)))`
-/

namespace A173441.P8355316756209072439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A266007 (A326697 (n + 1)).toNat).toNat

end

end A173441.P8355316756209072439

/-! ## A173441.P9830208587758712309

`A328806(A207589(A326698(n+1)))`
-/

namespace A173441.P9830208587758712309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328806 (A207589 (A326698 (n + 1)).toNat).toNat

end

end A173441.P9830208587758712309

/-! ## A173441.P2638859783916656909

`A000005(A220073(A326698(n+1)²))`
-/

namespace A173441.P2638859783916656909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A220073 (A326698 (n + 1) ^ 2).toNat).toNat

end

end A173441.P2638859783916656909

/-! ## A173441.P16871009566713822274

`A000360(A326167(A326698(n+1))²)`
-/

namespace A173441.P16871009566713822274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (A326167 (A326698 (n + 1)).toNat ^ 2).toNat

end

end A173441.P16871009566713822274

/-! ## A173441.P5682946060514359058

`A328806(A002262(A326698(n+1)²))`
-/

namespace A173441.P5682946060514359058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328806 (A002262 (A326698 (n + 1) ^ 2).toNat).toNat

end

end A173441.P5682946060514359058

/-!
# A173442: Number of divisors d of number n such that sigma(d) does not divide n.

The programs for A173442, there is no canonical definition to state claims against.
-/

/-! ## A173442.P3163092478413765481

`Δ[A006218(n)]-A173441(n+1)`
-/

namespace A173442.P3163092478413765481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A173441 (n + 1)

end

end A173442.P3163092478413765481

/-! ## A173442.P13501781122132757435

`A000005(n+1)-A173441(n+1)`
-/

namespace A173442.P13501781122132757435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A173441 (n + 1)

end

end A173442.P13501781122132757435

/-! ## A173442.P11238502414826693115

`A001227(n+1)*A001511(n+1)-A173441(n+1)`
-/

namespace A173442.P11238502414826693115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A173441 (n + 1)

end

end A173442.P11238502414826693115

/-! ## A173442.P5286335181030813505

`∑{d}[n+1, A173441(A147582(#+1)+1)]-A173441(n+1)`
-/

namespace A173442.P5286335181030813505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A173441 (A147582 (d + 1) + 1).toNat - A173441 (n + 1)

end

end A173442.P5286335181030813505

/-! ## A173442.P276285686480056126

`A001222(A293514(n+1)/A327156(n+1))`
-/

namespace A173442.P276285686480056126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A293514 (n + 1) : ℚ) / (A327156 (n + 1) : ℚ))).toNat

end

end A173442.P276285686480056126

/-! ## A173442.P14151259749903644578

`A001222(A338506(n+1))-A173441(n+1)`
-/

namespace A173442.P14151259749903644578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A338506 (n + 1)).toNat - A173441 (n + 1)

end

end A173442.P14151259749903644578

/-!
# A173444: Either (n-th prime-1)^2-+1, but not both, is prime.

The programs for A173444, the canonical program `A173444.P1593078176672879792` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173444 has offset 1).

The definition of A173444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173444.P1593078176672879792

`A000720(A070689(n+2)-1)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A173444

/-- `A000720(A070689(n+2)-1)+1` -/
def P1593078176672879792.Spec : Prop :=
  ∀ n, P1593078176672879792.a n = A173444 (n + 1)

theorem P1593078176672879792.correct : P1593078176672879792.Spec := by
  intro n
  simp only [A173444, Nat.add_sub_cancel]

end A173444

/-! ## A173444.P9350694191991283629

`A000720(A070689(n+2)+A057427(n))`
-/

namespace A173444.P9350694191991283629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A070689 (n + 2) + A057427 n).toNat

end

end A173444.P9350694191991283629

namespace A173444

/-- `A000720(A070689(n+2)+A057427(n))` -/
def P9350694191991283629.Spec : Prop :=
  ∀ n, P9350694191991283629.a n = A173444 (n + 1)

end A173444

/-! ## A173444.P15104223619177781057

`A000720(xor(A000007(n), A127435(n+2)))`
-/

namespace A173444.P15104223619177781057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor (A000007 n) (A127435 (n + 2))).toNat

end

end A173444.P15104223619177781057

namespace A173444

/-- `A000720(xor(A000007(n), A127435(n+2)))` -/
def P15104223619177781057.Spec : Prop :=
  ∀ n, P15104223619177781057.a n = A173444 (n + 1)

end A173444

/-! ## A173444.P18131838368262745964

`record[A055396(A180643(n+4))]`
-/

namespace A173444.P18131838368262745964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A180643 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173444.P18131838368262745964

namespace A173444

/-- `record[A055396(A180643(n+4))]` -/
def P18131838368262745964.Spec : Prop :=
  ∀ n, P18131838368262745964.a n = A173444 (n + 1)

end A173444

/-! ## A173444.P3734684680621868189

`A036234(A070689(n+2)-1)`
-/

namespace A173444.P3734684680621868189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A070689 (n + 2) - 1).toNat

end

end A173444.P3734684680621868189

namespace A173444

/-- `A036234(A070689(n+2)-1)` -/
def P3734684680621868189.Spec : Prop :=
  ∀ n, P3734684680621868189.a n = A173444 (n + 1)

end A173444

/-! ## A173444.P1462088145066079014

`A049084(A070689(n+2)+A057427(n))`
-/

namespace A173444.P1462088145066079014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A070689 (n + 2) + A057427 n).toNat

end

end A173444.P1462088145066079014

namespace A173444

/-- `A049084(A070689(n+2)+A057427(n))` -/
def P1462088145066079014.Spec : Prop :=
  ∀ n, P1462088145066079014.a n = A173444 (n + 1)

end A173444

/-! ## A173444.P10643230577216600454

`A056239(A070689(n+2)+A057427(n))`
-/

namespace A173444.P10643230577216600454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A070689 (n + 2) + A057427 n).toNat

end

end A173444.P10643230577216600454

namespace A173444

/-- `A056239(A070689(n+2)+A057427(n))` -/
def P10643230577216600454.Spec : Prop :=
  ∀ n, P10643230577216600454.a n = A173444 (n + 1)

end A173444

/-! ## A173444.P14836708754905717420

`A003963(A070689(n+2)-A057428(n))`
-/

namespace A173444.P14836708754905717420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A070689 (n + 2) - A057428 n).toNat

end

end A173444.P14836708754905717420

namespace A173444

/-- `A003963(A070689(n+2)-A057428(n))` -/
def P14836708754905717420.Spec : Prop :=
  ∀ n, P14836708754905717420.a n = A173444 (n + 1)

end A173444

/-! ## A173444.P6104251571755986838

`A026233(A070689(n+2)-A057428(n))`
-/

namespace A173444.P6104251571755986838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A070689 (n + 2) - A057428 n).toNat

end

end A173444.P6104251571755986838

namespace A173444

/-- `A026233(A070689(n+2)-A057428(n))` -/
def P6104251571755986838.Spec : Prop :=
  ∀ n, P6104251571755986838.a n = A173444 (n + 1)

end A173444

/-! ## A173444.P9436430745287655989

`A055396(A070689(n+2)-A057428(n))`
-/

namespace A173444.P9436430745287655989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A070689 (n + 2) - A057428 n).toNat

end

end A173444.P9436430745287655989

namespace A173444

/-- `A055396(A070689(n+2)-A057428(n))` -/
def P9436430745287655989.Spec : Prop :=
  ∀ n, P9436430745287655989.a n = A173444 (n + 1)

end A173444

/-! ## A173444.P361378802339594234

`A036234(A070689(n+2)/A054977(n))`
-/

namespace A173444.P361378802339594234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (SequenceMachineLib.roundAway ((A070689 (n + 2) : ℚ) / (A054977 n : ℚ))).toNat

end

end A173444.P361378802339594234

namespace A173444

/-- `A036234(A070689(n+2)/A054977(n))` -/
def P361378802339594234.Spec : Prop :=
  ∀ n, P361378802339594234.a n = A173444 (n + 1)

end A173444

/-! ## A173444.P15359088178895298118

`A003963(A070689(n+2)+A057428(n)²)`
-/

namespace A173444.P15359088178895298118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A070689 (n + 2) + A057428 n ^ 2).toNat

end

end A173444.P15359088178895298118

namespace A173444

/-- `A003963(A070689(n+2)+A057428(n)²)` -/
def P15359088178895298118.Spec : Prop :=
  ∀ n, P15359088178895298118.a n = A173444 (n + 1)

end A173444

/-!
# A173446: ((n+{0,1})-th prime-1)^2+1 are both primes.

The programs for A173446, there is no canonical definition to state claims against.
-/

/-! ## A173446.P8444231293228153713

`A174165(eq[1, Δ[A174165(n+1)]]+1)`
-/

namespace A173446.P8444231293228153713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A173446.P8444231293228153713

/-!
# A173447: The number of iterations for the map r -> A061602(r), starting with n, needed to reach the end of the first cycle.

The programs for A173447, there is no canonical definition to state claims against.
-/

/-! ## A173447.P5638211634180711393

`A303935(n)-1`
-/

namespace A173447.P5638211634180711393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303935 n - 1

end

end A173447.P5638211634180711393

/-! ## A173447.P10092118084881474187

`A023443(A303935(n))`
-/

namespace A173447.P10092118084881474187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A303935 n).toNat

end

end A173447.P10092118084881474187

/-! ## A173447.P12756605644044653388

`A057918(A303935(n)²)`
-/

namespace A173447.P12756605644044653388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A303935 n ^ 2).toNat

end

end A173447.P12756605644044653388

/-! ## A173447.P2636796479974985253

`A259361(A303935(n)²)`
-/

namespace A173447.P2636796479974985253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A303935 n ^ 2).toNat

end

end A173447.P2636796479974985253

/-! ## A173447.P14946544741137142554

`A337108(A303935(n)²)`
-/

namespace A173447.P14946544741137142554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 (A303935 n ^ 2).toNat

end

end A173447.P14946544741137142554

/-! ## A173447.P1981691359092443923

`A023444(A303935(n)+1)`
-/

namespace A173447.P1981691359092443923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A303935 n + 1).toNat

end

end A173447.P1981691359092443923

/-! ## A173447.P11775170141429327320

`A289207(A303935(n)+1)`
-/

namespace A173447.P11775170141429327320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A303935 n + 1).toNat

end

end A173447.P11775170141429327320

/-! ## A173447.P12801357408988590056

`A023445(A303935(n)+2)`
-/

namespace A173447.P12801357408988590056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A303935 n + 2).toNat

end

end A173447.P12801357408988590056

/-! ## A173447.P677369471651867872

`A023446(A303935(n)+3)`
-/

namespace A173447.P677369471651867872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A303935 n + 3).toNat

end

end A173447.P677369471651867872

/-! ## A173447.P14458068890944687010

`A023447(A303935(n)+4)`
-/

namespace A173447.P14458068890944687010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A303935 n + 4).toNat

end

end A173447.P14458068890944687010

/-!
# A173449: Partial sums of A006894.

The programs for A173449, there is no canonical definition to state claims against.
-/

/-! ## A173449.P3887279286286000159

`∑[C(a(n-1)+1, 2)+1]` with `a(0)=1`
-/

namespace A173449.P3887279286286000159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (f1 (n - 1) + 1) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173449.P3887279286286000159

/-! ## A173449.P15587088679458121366

`∑[(a(n-1)+a(n-1)²)/2+1]` with `a(0)=1`
-/

namespace A173449.P15587088679458121366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (f1 (n - 1) + f1 (n - 1) ^ 2) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173449.P15587088679458121366

/-! ## A173449.P12209846053590785142

`∑[∑[A002658(n)]]`
-/

namespace A173449.P12209846053590785142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002658 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173449.P12209846053590785142

/-! ## A173449.P6930962744718543241

`∑[A006894(n+1)]`
-/

namespace A173449.P6930962744718543241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173449.P6930962744718543241

/-! ## A173449.P5779252542037636388

`∑[∑[A103410(n)]-1]`
-/

namespace A173449.P5779252542037636388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103410 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173449.P5779252542037636388

/-!
# A173451: a(n) = A048883(n-1) - A160121(n).

The programs for A173451, there is no canonical definition to state claims against.
-/

/-! ## A173451.P4743779636954759820

`A048883(n)-A160121(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173451.P4743779636954759820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n - A160121 (n + 1)

end

end A173451.P4743779636954759820

/-! ## A173451.P16998537886588004539

`A048883(n)-Δ[A160120(n)]`
-/

namespace A173451.P16998537886588004539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n - (f1 (n + 1) - f1 n)

end

end A173451.P16998537886588004539

/-! ## A173451.P5730196165523033995

`A151712(n)-(Δ[A160120(n)]+1)`
-/

namespace A173451.P5730196165523033995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151712 n - (f1 (n + 1) - f1 n + 1)

end

end A173451.P5730196165523033995

/-! ## A173451.P16837260307229086828

`3^A000120(n)-Δ[A160120(n)]`
-/

namespace A173451.P16837260307229086828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000120 n : ℤ) - (f1 (n + 1) - f1 n : ℚ)

end

end A173451.P16837260307229086828

/-! ## A173451.P4632159630732737733

`A151712(n)-(A160121(n+1)+1)`
-/

namespace A173451.P4632159630732737733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151712 n - (A160121 (n + 1) + 1)

end

end A173451.P4632159630732737733

/-! ## A173451.P5382021442776905429

`3^A000120(n)-A160121(n+1)`
-/

namespace A173451.P5382021442776905429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000120 n : ℤ) - (A160121 (n + 1) : ℚ)

end

end A173451.P5382021442776905429

/-! ## A173451.P3468254993738774477

`3^∑[A088705(n)]-Δ[A160120(n)]`
-/

namespace A173451.P3468254993738774477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) - (f2 (n + 1) - f2 n : ℚ)

end

end A173451.P3468254993738774477

/-! ## A173451.P2535565248252722250

`A147610(2*(n+1))-Δ[A160120(n)]`
-/

namespace A173451.P2535565248252722250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147610 (2 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A173451.P2535565248252722250

/-! ## A173451.P17037399675086261388

`3^(n-A011371(n))-Δ[A160120(n)]`
-/

namespace A173451.P17037399675086261388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - A011371 n : ℤ) - (f1 (n + 1) - f1 n : ℚ)

end

end A173451.P17037399675086261388

/-! ## A173451.P3300127396826635469

`A006046(A001316(n))-Δ[A160120(n)]`
-/

namespace A173451.P3300127396826635469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A001316 n).toNat - (f1 (n + 1) - f1 n)

end

end A173451.P3300127396826635469

/-!
# A173452: a(n) = A048883(n-1) - A151710(n).

The programs for A173452, there is no canonical definition to state claims against.
-/

/-! ## A173452.P6858593376123516312

`A048883(n)-A151710(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173452.P6858593376123516312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n - A151710 (n + 1)

end

end A173452.P6858593376123516312

/-! ## A173452.P4329757229582169690

`A048883(n)-Δ[A160715(n)]`
-/

namespace A173452.P4329757229582169690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n - (f1 (n + 1) - f1 n)

end

end A173452.P4329757229582169690

/-! ## A173452.P1455465080245647924

`A173451(n+1)+Δ[A173068(n)]`
-/

namespace A173452.P1455465080245647924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173451 (n + 1) + (f1 (n + 1) - f1 n)

end

end A173452.P1455465080245647924

/-! ## A173452.P1036950684569882552

`A151712(n)-(Δ[A160715(n)]+1)`
-/

namespace A173452.P1036950684569882552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151712 n - (f1 (n + 1) - f1 n + 1)

end

end A173452.P1036950684569882552

/-!
# A173453: a(n) = A160121(n) - A151710(n).

The programs for A173453, there is no canonical definition to state claims against.
-/

/-! ## A173453.P10138126645733053731

`Δ[A173068(n)]`
-/

namespace A173453.P10138126645733053731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173453.P10138126645733053731

/-! ## A173453.P3449101898094916792

`Δ[A160120(n)-A160715(n)]`
-/

namespace A173453.P3449101898094916792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 n - A160715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173453.P3449101898094916792

/-! ## A173453.P1261906676564522100

`A173068(n+1)-A173068(n)`
-/

namespace A173453.P1261906676564522100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 (n + 1) - A173068 n

end

end A173453.P1261906676564522100

/-! ## A173453.P5456881186230695291

`A160121(n+1)-Δ[A160715(n)]`
-/

namespace A173453.P5456881186230695291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160121 (n + 1) - (f1 (n + 1) - f1 n)

end

end A173453.P5456881186230695291

/-! ## A173453.P18074431038971944530

`Δ[A160157(n)/2-A160715(n)]`
-/

namespace A173453.P18074431038971944530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160157 n : ℚ) / 2 - (A160715 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173453.P18074431038971944530

/-!
# A173454: a(n) = A139250(n) - A173522(n).

The programs for A173454, there is no canonical definition to state claims against.
-/

/-! ## A173454.P162037956165301911

`A139250(n)-A173522(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173454.P162037956165301911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - A173522 n

end

end A173454.P162037956165301911

/-! ## A173454.P3369261906405013111

`∑[A139251(n)]-A173522(n)`
-/

namespace A173454.P3369261906405013111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A173522 n

end

end A173454.P3369261906405013111

/-! ## A173454.P17616949104085799580

`A160164(n)/2-A173522(n)`
-/

namespace A173454.P17616949104085799580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160164 n : ℚ) / 2 - (A173522 n : ℚ)

end

end A173454.P17616949104085799580

/-! ## A173454.P13162712706203484653

`2*A153006(n)-A152998(n)-A173522(n)`
-/

namespace A173454.P13162712706203484653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153006 n - A152998 n - A173522 n

end

end A173454.P13162712706203484653

/-! ## A173454.P6689629475395403764

`2*A255747(n)-A160552(n)-A173522(n)`
-/

namespace A173454.P6689629475395403764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255747 n - A160552 n - A173522 n

end

end A173454.P6689629475395403764

/-! ## A173454.P4610546715443727128

`A255747(A004273(n)-n)+A255747(n)-A173522(n)`
-/

namespace A173454.P4610546715443727128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (A004273 n - (n : ℤ)).toNat + A255747 n - A173522 n

end

end A173454.P4610546715443727128

/-! ## A173454.P17609483895665363984

`A160424(n+1)-(A160424(n)+A139251(n+1))-A173522(n)`
-/

namespace A173454.P17609483895665363984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160424 (n + 1) - (A160424 n + A139251 (n + 1)) - A173522 n

end

end A173454.P17609483895665363984

/-! ## A173454.P7362979482484604753

`A139250(n)-A151566(A004273(n))`
-/

namespace A173454.P7362979482484604753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - A151566 (A004273 n).toNat

end

end A173454.P7362979482484604753

/-! ## A173454.P15239191399622136452

`A266530(Δ[n²])-A173522(n)`
-/

namespace A173454.P15239191399622136452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A173522 n

end

end A173454.P15239191399622136452

/-! ## A173454.P4296542604598635986

`record[A266530(A000265(n+1))]-A173522(n)`
-/

namespace A173454.P4296542604598635986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A173522 n

end

end A173454.P4296542604598635986

/-! ## A173454.P2299383873484294409

`A266530(2*n+3)-A139251(n+1)-A173522(n)`
-/

namespace A173454.P2299383873484294409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * n + 3) - A139251 (n + 1) - A173522 n

end

end A173454.P2299383873484294409

/-! ## A173454.P1638998361551606876

`A014682(A160164(n))-A173522(n)`
-/

namespace A173454.P1638998361551606876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A160164 n).toNat - A173522 n

end

end A173454.P1638998361551606876

/-! ## A173454.P1724912597651172455

`A004524(A187220(n+1))-A173522(n)`
-/

namespace A173454.P1724912597651172455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A187220 (n + 1)).toNat - A173522 n

end

end A173454.P1724912597651172455

/-! ## A173454.P10458991082637137320

`A061721(A187220(n+1))-A173522(A061721(2*n+1))`
-/

namespace A173454.P10458991082637137320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061721 (A187220 (n + 1)).toNat - A173522 (A061721 (2 * n + 1)).toNat

end

end A173454.P10458991082637137320

/-!
# A173455: Row sums of triangle A027751.

The programs for A173455, the canonical program `A173455.P15831782476436382019` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173455 has offset 1).

The definition of A173455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173455.P521142703500233542

`1+A048050(n+1)`
-/

namespace A173455.P521142703500233542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A048050 (n + 1)

end

end A173455.P521142703500233542

namespace A173455

/-- `1+A048050(n+1)` -/
def P521142703500233542.Spec : Prop :=
  ∀ n, P521142703500233542.a n = A173455 (n + 1)

end A173455

/-! ## A173455.P15831782476436382019

`A001065(abs(1-n)+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A173455

/-- `A001065(abs(1-n)+2)` -/
def P15831782476436382019.Spec : Prop :=
  ∀ n, P15831782476436382019.a n = A173455 (n + 1)

theorem P15831782476436382019.correct : P15831782476436382019.Spec := by
  intro n
  simp only [A173455, Nat.add_sub_cancel]

end A173455

/-! ## A173455.P8868566615558181572

`A053246(n)+a(n-1)` with `a(0)=1`
-/

namespace A173455.P8868566615558181572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053246 n + a (n - 1)

end

end A173455.P8868566615558181572

namespace A173455

/-- `A053246(n)+a(n-1)` -/
def P8868566615558181572.Spec : Prop :=
  ∀ n, P8868566615558181572.a n = A173455 (n + 1)

end A173455

/-! ## A173455.P3637253270818734823

`(abs(A062967(n+1))+1)/2`
-/

namespace A173455.P3637253270818734823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A062967 (n + 1)| + 1 : ℚ) / 2

end

end A173455.P3637253270818734823

namespace A173455

/-- `(abs(A062967(n+1))+1)/2` -/
def P3637253270818734823.Spec : Prop :=
  ∀ n, P3637253270818734823.a n = (A173455 (n + 1) : ℚ)

end A173455

/-! ## A173455.P11925122861890342953

`gcd(n+1-A000203(n+1), C(2, n))`
-/

namespace A173455.P11925122861890342953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A000203 (n + 1)) (Nat.choose 2 n : ℤ)

end

end A173455.P11925122861890342953

namespace A173455

/-- `gcd(n+1-A000203(n+1), C(2, n))` -/
def P11925122861890342953.Spec : Prop :=
  ∀ n, (P11925122861890342953.a n : ℤ) = A173455 (n + 1)

end A173455

/-! ## A173455.P7698567093537579888

`Δ[a(n-1)+A000203(n)-n]` with `a(0)=0, a(1)=1`
-/

namespace A173455.P7698567093537579888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (A000203 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173455.P7698567093537579888

namespace A173455

/-- `Δ[a(n-1)+A000203(n)-n]` -/
def P7698567093537579888.Spec : Prop :=
  ∀ n, P7698567093537579888.a n = A173455 (n + 1)

end A173455

/-! ## A173455.P12012991090128328944

`A000203(gcd(n+1, (n+1)*a(n-1)))-(n+1)` with `a(0)=1`
-/

namespace A173455.P12012991090128328944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000203 (Int.gcd (n + 1 : ℤ) ((n + 1 : ℤ) * a (n - 1))) - (n + 1 : ℤ)

end

end A173455.P12012991090128328944

namespace A173455

/-- `A000203(gcd(n+1, (n+1)*a(n-1)))-(n+1)` -/
def P12012991090128328944.Spec : Prop :=
  ∀ n, P12012991090128328944.a n = A173455 (n + 1)

end A173455

/-! ## A173455.P17748607189304363497

`A001065(n+1)+A000007(n)`
-/

namespace A173455.P17748607189304363497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + A000007 n

end

end A173455.P17748607189304363497

namespace A173455

/-- `A001065(n+1)+A000007(n)` -/
def P17748607189304363497.Spec : Prop :=
  ∀ n, P17748607189304363497.a n = A173455 (n + 1)

end A173455

/-! ## A173455.P9129620764434873914

`A237588(n+1)+A028310(n)`
-/

namespace A173455.P9129620764434873914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + A028310 n

end

end A173455.P9129620764434873914

namespace A173455

/-- `A237588(n+1)+A028310(n)` -/
def P9129620764434873914.Spec : Prop :=
  ∀ n, P9129620764434873914.a n = A173455 (n + 1)

end A173455

/-! ## A173455.P9498906618076846513

`A325765(n)+A152770(n+1)`
-/

namespace A173455.P9498906618076846513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n + A152770 (n + 1)

end

end A173455.P9498906618076846513

namespace A173455

/-- `A325765(n)+A152770(n+1)` -/
def P9498906618076846513.Spec : Prop :=
  ∀ n, P9498906618076846513.a n = A173455 (n + 1)

end A173455

/-! ## A173455.P15641141161690139912

`A155085(n+1)-A103517(n)`
-/

namespace A173455.P15641141161690139912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A103517 n

end

end A173455.P15641141161690139912

namespace A173455

/-- `A155085(n+1)-A103517(n)` -/
def P15641141161690139912.Spec : Prop :=
  ∀ n, P15641141161690139912.a n = A173455 (n + 1)

end A173455

/-! ## A173455.P7547491014007146937

`A028310(n)-A235796(n+1)`
-/

namespace A173455.P7547491014007146937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A235796 (n + 1)

end

end A173455.P7547491014007146937

namespace A173455

/-- `A028310(n)-A235796(n+1)` -/
def P7547491014007146937.Spec : Prop :=
  ∀ n, P7547491014007146937.a n = A173455 (n + 1)

end A173455

/-! ## A173455.P6596115728761585444

`A001065(n+1)+A057428(n)+1`
-/

namespace A173455.P6596115728761585444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A057428 n + 1)

end

end A173455.P6596115728761585444

namespace A173455

/-- `A001065(n+1)+A057428(n)+1` -/
def P6596115728761585444.Spec : Prop :=
  ∀ n, P6596115728761585444.a n = A173455 (n + 1)

end A173455

/-! ## A173455.P4674724790959925672

`A033880(n+1)+A028310(n)+1`
-/

namespace A173455.P4674724790959925672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + (A028310 n + 1)

end

end A173455.P4674724790959925672

namespace A173455

/-- `A033880(n+1)+A028310(n)+1` -/
def P4674724790959925672.Spec : Prop :=
  ∀ n, P4674724790959925672.a n = A173455 (n + 1)

end A173455

/-! ## A173455.P7616776649347520805

`A063919(n+1)+A048146(n+1)`
-/

namespace A173455.P7616776649347520805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (n + 1) + A048146 (n + 1)

end

end A173455.P7616776649347520805

namespace A173455

/-- `A063919(n+1)+A048146(n+1)` -/
def P7616776649347520805.Spec : Prop :=
  ∀ n, P7616776649347520805.a n = A173455 (n + 1)

end A173455

/-! ## A173455.P12615969508835550981

`A318505(n+1)+A032742(n+1)`
-/

namespace A173455.P12615969508835550981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318505 (n + 1) + A032742 (n + 1)

end

end A173455.P12615969508835550981

namespace A173455

/-- `A318505(n+1)+A032742(n+1)` -/
def P12615969508835550981.Spec : Prop :=
  ∀ n, P12615969508835550981.a n = A173455 (n + 1)

end A173455

/-! ## A173455.P8345949517864934594

`A318508(n+1)+A318506(n+1)`
-/

namespace A173455.P8345949517864934594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318508 (n + 1) + A318506 (n + 1)

end

end A173455.P8345949517864934594

namespace A173455

/-- `A318508(n+1)+A318506(n+1)` -/
def P8345949517864934594.Spec : Prop :=
  ∀ n, P8345949517864934594.a n = A173455 (n + 1)

end A173455

/-! ## A173455.P17109088699097643612

`A001065(n+1)+1-A057427(n)`
-/

namespace A173455.P17109088699097643612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (1 - A057427 n)

end

end A173455.P17109088699097643612

namespace A173455

/-- `A001065(n+1)+1-A057427(n)` -/
def P17109088699097643612.Spec : Prop :=
  ∀ n, P17109088699097643612.a n = A173455 (n + 1)

end A173455

/-!
# A173456: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton (see Comments for precise definition).

The programs for A173456, there is no canonical definition to state claims against.
-/

/-! ## A173456.P13053388602734718813

`a(n-1)+A173457(n)` with `a(0)=0`
-/

namespace A173456.P13053388602734718813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A173457 n

end

end A173456.P13053388602734718813

/-! ## A173456.P7651768852109619024

`∑[A173457(n)]`
-/

namespace A173456.P7651768852109619024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173456.P7651768852109619024

/-! ## A173456.P9551223186323355350

`A173457(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A173456.P9551223186323355350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A173457 n + a (A023443 n).toNat

end

end A173456.P9551223186323355350

/-!
# A173457: Number of cells turned "ON" at n-th stage of cellular automaton of A173456.

The programs for A173457, there is no canonical definition to state claims against.
-/

/-! ## A173457.P3788361494711835382

`Δ[A173456(n-round(n/(n+1)))]`
-/

namespace A173457.P3788361494711835382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173456 ((n : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173457.P3788361494711835382

/-! ## A173457.P16531922829822593899

`abs(Δ[A173456(A004273(n)-n)])`
-/

namespace A173457.P16531922829822593899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173456 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A173457.P16531922829822593899

/-! ## A173457.P16351965826029643688

`A173456(n)-A173456(A004273(n)-n)`
-/

namespace A173457.P16351965826029643688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173456 n - A173456 (A004273 n - (n : ℤ)).toNat

end

end A173457.P16351965826029643688

/-! ## A173457.P5847748405408405840

`A173456(n)-A173456(n-A057427(n))`
-/

namespace A173457.P5847748405408405840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173456 n - A173456 ((n : ℤ) - A057427 n).toNat

end

end A173457.P5847748405408405840

/-!
# A173458: a(n) = A173457(n+1)/2.

The programs for A173458, there is no canonical definition to state claims against.
-/

/-! ## A173458.P6706796982056926316

`A173457(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173458.P6706796982056926316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173457 (n + 2) : ℚ) / 2

end

end A173458.P6706796982056926316

/-! ## A173458.P4192827577613201541

`2*A173459(n+1)`
-/

namespace A173458.P4192827577613201541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173459 (n + 1)

end

end A173458.P4192827577613201541

/-! ## A173458.P15481819341708526302

`Δ[A173456(n+1)/2]`
-/

namespace A173458.P15481819341708526302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173456 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173458.P15481819341708526302

/-! ## A173458.P14183128441863219749

`Δ[A173456(-xor(n, -1))]/2`
-/

namespace A173458.P14183128441863219749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173456 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A173458.P14183128441863219749

/-! ## A173458.P831400752498111410

`Δ[A173456(2*n-(n-1))]/2`
-/

namespace A173458.P831400752498111410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173456 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A173458.P831400752498111410

/-! ## A173458.P1161998648438175332

`A004277(A173459(n+1))`
-/

namespace A173458.P1161998648438175332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A173459 (n + 1)).toNat

end

end A173458.P1161998648438175332

/-! ## A173458.P482855468302177615

`A001281(A173457(n+2))`
-/

namespace A173458.P482855468302177615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A173457 (n + 2)).toNat

end

end A173458.P482855468302177615

/-! ## A173458.P14388892220474260457

`Δ[A001057(A173456(n+1))]`
-/

namespace A173458.P14388892220474260457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A173456 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173458.P14388892220474260457

/-! ## A173458.P7176254860746786831

`A001281(Δ[A173456(n+1)])`
-/

namespace A173458.P7176254860746786831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A173458.P7176254860746786831

/-! ## A173458.P12661551994630095776

`A004524(Δ[A173456(n+1)])`
-/

namespace A173458.P12661551994630095776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (n + 1) - f1 n).toNat

end

end A173458.P12661551994630095776

/-!
# A173459: a(n) = A173457(n+1)/4.

The programs for A173459, there is no canonical definition to state claims against.
-/

/-! ## A173459.P18041914897390314217

`A173457(n+2)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173459.P18041914897390314217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173457 (n + 2) : ℚ) / 4

end

end A173459.P18041914897390314217

/-! ## A173459.P12153216047342444368

`Δ[A173456(n+1)/4]`
-/

namespace A173459.P12153216047342444368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173456 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173459.P12153216047342444368

/-! ## A173459.P15453389226748106253

`A160417(record[a(n-3)+8])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=6`
-/

namespace A173459.P15453389226748106253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 6] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A173459.P15453389226748106253

/-! ## A173459.P7968344840289816147

`abs(Δ[A173456(-xor(n, -1))]/2)/2`
-/

namespace A173459.P7968344840289816147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173456 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n : ℚ) / 2| / 2

end

end A173459.P7968344840289816147

/-! ## A173459.P13580061094165804217

`abs(Δ[A173456(2*n-(n-1))]/2)/2`
-/

namespace A173459.P13580061094165804217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173456 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n : ℚ) / 2| / 2

end

end A173459.P13580061094165804217

/-! ## A173459.P17988440432217782386

`A002265(A173457(n+2))`
-/

namespace A173459.P17988440432217782386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A173457 (n + 2)).toNat

end

end A173459.P17988440432217782386

/-! ## A173459.P6248214020853659486

`A160417(A047394(n+2))`
-/

namespace A173459.P6248214020853659486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160417 (A047394 (n + 2)).toNat

end

end A173459.P6248214020853659486

/-! ## A173459.P4611936099126329860

`A002265(Δ[A173456(n+1)])`
-/

namespace A173459.P4611936099126329860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A173459.P4611936099126329860

/-! ## A173459.P6120457417954248368

`A333448(Δ[A173456(n+1)])`
-/

namespace A173459.P6120457417954248368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333448 (f1 (n + 1) - f1 n).toNat

end

end A173459.P6120457417954248368

/-! ## A173459.P5876954252557947264

`A008624(A173457(n+2)+1)`
-/

namespace A173459.P5876954252557947264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A173457 (n + 2) + 1).toNat

end

end A173459.P5876954252557947264

/-!
# A173460: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton (see Comments for precise definition).

The programs for A173460, there is no canonical definition to state claims against.
-/

/-! ## A173460.P8176499217106495557

`a(n-1)+A173461(n)` with `a(0)=0`
-/

namespace A173460.P8176499217106495557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A173461 n

end

end A173460.P8176499217106495557

/-! ## A173460.P7178403260439059951

`∑[A173461(n)]`
-/

namespace A173460.P7178403260439059951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173460.P7178403260439059951

/-! ## A173460.P2653913988183294614

`∑{d}[A000079(n), A173461(log2(#))]`
-/

namespace A173460.P2653913988183294614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A173461 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A173460.P2653913988183294614

/-!
# A173461: Number of cells turned "ON" at n-th stage of cellular automaton of A173460.

The programs for A173461, there is no canonical definition to state claims against.
-/

/-! ## A173461.P6115500687000762730

`Δ[A173460(A259361(n²))]`
-/

namespace A173461.P6115500687000762730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173460 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173461.P6115500687000762730

/-! ## A173461.P10558551773910198402

`Δ[A173460(A028310(n)-1)]`
-/

namespace A173461.P10558551773910198402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173460 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173461.P10558551773910198402

/-! ## A173461.P1443128551887384977

`Δ[A173460(A004273(n)-n)]`
-/

namespace A173461.P1443128551887384977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173460 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173461.P1443128551887384977

/-! ## A173461.P1756314010243492910

`Δ[A173460(n-A057427(n))]`
-/

namespace A173461.P1756314010243492910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173460 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173461.P1756314010243492910

/-! ## A173461.P7620326939394210014

`Δ[A173460(n-A178334(n))]`
-/

namespace A173461.P7620326939394210014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173460 ((n : ℤ) - A178334 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173461.P7620326939394210014

/-! ## A173461.P614190474650504215

`Δ[A173460(n-A165586(n²))]`
-/

namespace A173461.P614190474650504215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173460 ((n : ℤ) - A165586 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173461.P614190474650504215

/-! ## A173461.P12239827122669214558

`Δ[A173460(n-gcd(n, A165586(n)))]`
-/

namespace A173461.P12239827122669214558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173460 (n - Int.gcd (n : ℤ) (A165586 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173461.P12239827122669214558

/-! ## A173461.P17710884812371844793

`Δ[A173460(A004524(A004273(n)))]`
-/

namespace A173461.P17710884812371844793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173460 (A004524 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173461.P17710884812371844793

/-! ## A173461.P3832859722723651368

`Δ[A173460(A004526(A004275(n)))]`
-/

namespace A173461.P3832859722723651368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173460 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173461.P3832859722723651368

/-!
# A173462: a(n) = A173461(n+1)/2.

The programs for A173462, there is no canonical definition to state claims against.
-/

/-! ## A173462.P7916129800929430195

`A173461(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173462.P7916129800929430195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173461 (n + 2) : ℚ) / 2

end

end A173462.P7916129800929430195

/-! ## A173462.P15432879265703104284

`2*A173463(n+1)`
-/

namespace A173462.P15432879265703104284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173463 (n + 1)

end

end A173462.P15432879265703104284

/-! ## A173462.P2556591406240006514

`Δ[A173460(n+1)/2]`
-/

namespace A173462.P2556591406240006514
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173460 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173462.P2556591406240006514

/-! ## A173462.P17155466491540947281

`A004277(A173463(n+1))`
-/

namespace A173462.P17155466491540947281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A173463 (n + 1)).toNat

end

end A173462.P17155466491540947281

/-! ## A173462.P10798818002673192848

`A001281(A173461(n+2))`
-/

namespace A173462.P10798818002673192848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A173461 (n + 2)).toNat

end

end A173462.P10798818002673192848

/-! ## A173462.P5303491827921560422

`Δ[A000463(A173460(n+1))]`
-/

namespace A173462.P5303491827921560422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A173460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173462.P5303491827921560422

/-! ## A173462.P5648983676819840195

`A001281(Δ[A173460(n+1)])`
-/

namespace A173462.P5648983676819840195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A173462.P5648983676819840195

/-! ## A173462.P5485415288087567175

`A004524(Δ[A173460(n+1)])`
-/

namespace A173462.P5485415288087567175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (n + 1) - f1 n).toNat

end

end A173462.P5485415288087567175

/-! ## A173462.P5288973366868159965

`A004526(Δ[A173460(n+1)])`
-/

namespace A173462.P5288973366868159965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A173462.P5288973366868159965

/-! ## A173462.P7092307140862329651

`A026741(Δ[A173460(n+1)])`
-/

namespace A173462.P7092307140862329651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A173462.P7092307140862329651

/-!
# A173463: a(n) = A173461(n+1)/4.

The programs for A173463, there is no canonical definition to state claims against.
-/

/-! ## A173463.P4718137247593827664

`A173461(n+2)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173463.P4718137247593827664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173461 (n + 2) : ℚ) / 4

end

end A173463.P4718137247593827664

/-! ## A173463.P13864361880178147920

`A173462(n+1)/2`
-/

namespace A173463.P13864361880178147920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173462 (n + 1) : ℚ) / 2

end

end A173463.P13864361880178147920

/-! ## A173463.P17372191573032228442

`Δ[A173460(n+1)/4]`
-/

namespace A173463.P17372191573032228442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173460 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173463.P17372191573032228442

/-! ## A173463.P7372237794111810448

`A001281(A173462(n+1))`
-/

namespace A173463.P7372237794111810448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A173462 (n + 1)).toNat

end

end A173463.P7372237794111810448

/-! ## A173463.P9512900197554991190

`A002265(A173461(n+2))`
-/

namespace A173463.P9512900197554991190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A173461 (n + 2)).toNat

end

end A173463.P9512900197554991190

/-! ## A173463.P12799648488561010996

`A000463(A173462(n+1)-1)`
-/

namespace A173463.P12799648488561010996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A173462 (n + 1) - 1).toNat

end

end A173463.P12799648488561010996

/-! ## A173463.P8920220084627128572

`A001057(A173462(n+1)-1)`
-/

namespace A173463.P8920220084627128572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A173462 (n + 1) - 1).toNat

end

end A173463.P8920220084627128572

/-! ## A173463.P12415049543228044751

`A002265(2*A173462(n+1))`
-/

namespace A173463.P12415049543228044751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A173462 (n + 1)).toNat

end

end A173463.P12415049543228044751

/-! ## A173463.P13518165509381340407

`A014682(A173462(n+1)+2*n)-n`
-/

namespace A173463.P13518165509381340407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A173462 (n + 1) + (2 * n : ℤ)).toNat - (n : ℤ)

end

end A173463.P13518165509381340407

/-! ## A173463.P810598821715509453

`A002265(A173462(n+1)+A173462(n+1)+1)`
-/

namespace A173463.P810598821715509453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A173462 (n + 1) + (A173462 (n + 1) + 1)).toNat

end

end A173463.P810598821715509453

/-!
# A173464: When regarded as a triangle, the rows of A162797 converge to this sequence.

The programs for A173464, there is no canonical definition to state claims against.
-/

/-! ## A173464.P16956543328671888416

`A151548(2*n)`
-/

namespace A173464.P16956543328671888416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 (2 * n)

end

end A173464.P16956543328671888416

/-! ## A173464.P7569360027408612713

`A162797(n+32)`
-/

namespace A173464.P7569360027408612713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162797 (n + 32)

end

end A173464.P7569360027408612713

/-! ## A173464.P13488149779981710646

`A160552(2*n+64)`
-/

namespace A173464.P13488149779981710646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (2 * n + 64)

end

end A173464.P13488149779981710646

/-! ## A173464.P2340668516106101883

`and(-1, A151548(comp[Δ[n²]]))`
-/

namespace A173464.P2340668516106101883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A151548 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A173464.P2340668516106101883

/-! ## A173464.P15115687748283824121

`2*A151549(2*n)+1`
-/

namespace A173464.P15115687748283824121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151549 (2 * n) + 1

end

end A173464.P15115687748283824121

/-!
# A173465: a(n) = A151710(n+1)/3.

The programs for A173465, there is no canonical definition to state claims against.
-/

/-! ## A173465.P7949755937471343716

`A151710(n+2)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173465.P7949755937471343716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151710 (n + 2) : ℚ) / 3

end

end A173465.P7949755937471343716

/-! ## A173465.P10793113610089130772

`Δ[A160715(n+1)/3]`
-/

namespace A173465.P10793113610089130772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160715 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173465.P10793113610089130772

/-! ## A173465.P14780212598153306522

`A002264(Δ[A160715(n+1)])`
-/

namespace A173465.P14780212598153306522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n).toNat

end

end A173465.P14780212598153306522

/-! ## A173465.P10509201572113164645

`A032742(Δ[A160715(n+1)])`
-/

namespace A173465.P10509201572113164645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f1 (n + 1) - f1 n).toNat

end

end A173465.P10509201572113164645

/-! ## A173465.P1108304037372054979

`A051176(Δ[A160715(n+1)])`
-/

namespace A173465.P1108304037372054979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (f1 (n + 1) - f1 n).toNat

end

end A173465.P1108304037372054979

/-!
# A173466: a(n) is the number of prime knots with n crossings such that the empirical unknotting numbers cannot be decided minimals using their signatures.

The programs for A173466, there is no canonical definition to state claims against.
-/

/-! ## A173466.P4241926890918477365

`A002863(n+1)-A318052(n+1)`
-/

namespace A173466.P4241926890918477365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - A318052 (n + 1)

end

end A173466.P4241926890918477365

/-! ## A173466.P12662164951770062531

`Δ[A116584(abs(1-n)+1)]-A318052(n+1)`
-/

namespace A173466.P12662164951770062531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116584 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A318052 (n + 1)

end

end A173466.P12662164951770062531

/-! ## A173466.P14190246746771828721

`A002864(n+1)+A051763(n+1)-A318052(n+1)`
-/

namespace A173466.P14190246746771828721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002864 (n + 1) + (A051763 (n + 1) - A318052 (n + 1))

end

end A173466.P14190246746771828721

/-! ## A173466.P11900078240280058825

`A052402(n+1)+A052403(n+1)-A318052(n+1)`
-/

namespace A173466.P11900078240280058825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052402 (n + 1) + (A052403 (n + 1) - A318052 (n + 1))

end

end A173466.P11900078240280058825

/-! ## A173466.P4849023151783540214

`A052407(n+1)+A052408(n+1)-A318052(n+1)`
-/

namespace A173466.P4849023151783540214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052407 (n + 1) + (A052408 (n + 1) - A318052 (n + 1))

end

end A173466.P4849023151783540214

/-!
# A173467: Partial sums of A038569.

The programs for A173467, there is no canonical definition to state claims against.
-/

/-! ## A173467.P7526686781272754655

`∑[A038569(n)]`
-/

namespace A173467.P7526686781272754655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173467.P7526686781272754655

/-! ## A173467.P704358065885195885

`∑[A038568(A014681(n))]`
-/

namespace A173467.P704358065885195885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173467.P704358065885195885

/-! ## A173467.P11410749591032379326

`∑[A038568(abs(A114285(n)))]`
-/

namespace A173467.P11410749591032379326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 |A114285 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173467.P11410749591032379326

/-! ## A173467.P9640250113456370892

`∑[A038568(A062157(n)+n)]`
-/

namespace A173467.P9640250113456370892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A062157 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173467.P9640250113456370892

/-! ## A173467.P7356443862156142876

`∑[A038568(A065190(n+1)-1)]`
-/

namespace A173467.P7356443862156142876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A065190 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173467.P7356443862156142876

/-! ## A173467.P17782639386071022542

`∑[A038568(n+1-2%A038568(n))]`
-/

namespace A173467.P17782639386071022542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 ((n + 1 : ℤ) - Int.tmod 2 (A038568 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173467.P17782639386071022542

/-! ## A173467.P3459288336647252640

`∑[A254667(A038568(n))]-A038568(n)`
-/

namespace A173467.P3459288336647252640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A038568 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A038568 n

end

end A173467.P3459288336647252640

/-! ## A173467.P11199456265290917068

`∑[A317988(A014681(A020705(n)))]`
-/

namespace A173467.P11199456265290917068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317988 (A014681 (A020705 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173467.P11199456265290917068

/-! ## A173467.P14223628229292246754

`∑[A038568(A028242(A053438(n)))]`
-/

namespace A173467.P14223628229292246754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A028242 (A053438 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173467.P14223628229292246754

/-! ## A173467.P17545556153700905112

`∑[A038568(A004526(A086970(n)))]`
-/

namespace A173467.P17545556153700905112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A004526 (A086970 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173467.P17545556153700905112

/-! ## A173467.P16827446169814317989

`A038572(2*a(n-1))+A038569(n)` with `a(0)=1`
-/

namespace A173467.P16827446169814317989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038572 (2 * a (n - 1)).toNat + A038569 n

end

end A173467.P16827446169814317989

/-!
# A173468: Sum n^k, k=0..n+1.

The programs for A173468, there is no canonical definition to state claims against.
-/

/-! ## A173468.P3786314373685426716

`(n+1)*A031973(n+1)+1`
-/

namespace A173468.P3786314373685426716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A031973 (n + 1) + 1

end

end A173468.P3786314373685426716

/-! ## A173468.P16524196437318232830

`A031973(n+1)+A007778(n+1)`
-/

namespace A173468.P16524196437318232830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031973 (n + 1) + A007778 (n + 1)

end

end A173468.P16524196437318232830

/-! ## A173468.P11191119015838948798

`A189001(n+1)-A062813(n+1)`
-/

namespace A173468.P11191119015838948798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189001 (n + 1) - A062813 (n + 1)

end

end A173468.P11191119015838948798

/-! ## A173468.P854091597651559829

`A055129(A001844(n+1)+1)`
-/

namespace A173468.P854091597651559829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055129 (A001844 (n + 1) + 1).toNat

end

end A173468.P854091597651559829

/-! ## A173468.P2960883594469533317

`A055129(2*A002061(n+2))`
-/

namespace A173468.P2960883594469533317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055129 (2 * A002061 (n + 2)).toNat

end

end A173468.P2960883594469533317

/-!
# A173469: Number of permutations of length n that can be sorted in 2^(n-1)-1 steps of Elizalde and Winkler's homing algorithm.

The programs for A173469, there is no canonical definition to state claims against.
-/

/-! ## A173469.P16248373654959784843

`A304523(A002110(n))+A001764(n)`
-/

namespace A173469.P16248373654959784843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304523 (A002110 n).toNat + A001764 n

end

end A173469.P16248373654959784843

/-! ## A173469.P6112023790855799400

`A123108(A317077(n+1)+A000108(n))`
-/

namespace A173469.P6112023790855799400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A317077 (n + 1) + A000108 n).toNat

end

end A173469.P6112023790855799400

/-!
# A173472: Numbers k such that exactly one of prime(k)^2 - 2 and prime(k)^2 + 2 is prime.

The programs for A173472, there is no canonical definition to state claims against.
-/

/-! ## A173472.P6339039854702015594

`A137291(A065475(n+1))`
-/

namespace A173472.P6339039854702015594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137291 (A065475 (n + 1)).toNat

end

end A173472.P6339039854702015594

/-! ## A173472.P7517214351694711737

`A137291(A181440(n+2))`
-/

namespace A173472.P7517214351694711737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137291 (A181440 (n + 2)).toNat

end

end A173472.P7517214351694711737

/-! ## A173472.P14908753850247399619

`A137291(A184985(n+2))`
-/

namespace A173472.P14908753850247399619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137291 (A184985 (n + 2)).toNat

end

end A173472.P14908753850247399619

/-! ## A173472.P6028775077529897387

`A137291(n+1-A057428(n))`
-/

namespace A173472.P6028775077529897387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137291 ((n + 1 : ℤ) - A057428 n).toNat

end

end A173472.P6028775077529897387

/-! ## A173472.P16400976683609360536

`A137291(n+2)-A010051(2*(n+1))`
-/

namespace A173472.P16400976683609360536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137291 (n + 2) - A010051 (2 * (n + 1))

end

end A173472.P16400976683609360536

/-! ## A173472.P1783373875692770840

`A316524(A062326(n+2)-A000007(n))`
-/

namespace A173472.P1783373875692770840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A062326 (n + 2) - A000007 n).toNat

end

end A173472.P1783373875692770840

/-! ## A173472.P16938543434697686233

`A049084(A062326(n+2)-A010051(2*(n+1)))`
-/

namespace A173472.P16938543434697686233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A062326 (n + 2) - A010051 (2 * (n + 1))).toNat

end

end A173472.P16938543434697686233

/-! ## A173472.P15963317499970097684

`A049084(A062326(n+2)-A049084(2*(n+1)))`
-/

namespace A173472.P15963317499970097684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A062326 (n + 2) - A049084 (2 * (n + 1))).toNat

end

end A173472.P15963317499970097684

/-!
# A173474: 

The programs for A173474, there is no canonical definition to state claims against.
-/

/-! ## A173474.P15967550455567827086

`round(acot((n+9)/A297469(3*n))+n)`
-/

namespace A173474.P15967550455567827086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((n + 9 : ℚ) / (A297469 (3 * n) : ℚ) : ℝ) + (n : ℝ))

end

end A173474.P15967550455567827086

/-! ## A173474.P16660672259301693466

`floor(∑[acot(A313110(n))]+n)`
-/

namespace A173474.P16660672259301693466
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A313110 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)⌋

end

end A173474.P16660672259301693466

/-! ## A173474.P2092999875189678486

`floor(n^(1/A313589(n))/acot(n+1))`
-/

namespace A173474.P2092999875189678486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ (1 / (A313589 n : ℚ) : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A173474.P2092999875189678486

/-! ## A173474.P11766087889546383316

`floor(A055642(A182318(3*(n+1)))/2)+n`
-/

namespace A173474.P11766087889546383316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055642 (A182318 (3 * (n + 1))).toNat : ℚ) / 2⌋ + (n : ℤ)

end

end A173474.P11766087889546383316

/-! ## A173474.P17066558822450438522

`A211666(A210357(n+1))+n`
-/

namespace A173474.P17066558822450438522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (A210357 (n + 1)).toNat + (n : ℤ)

end

end A173474.P17066558822450438522

/-!
# A173475: Triangle T(n, k) = c(n)/(c(k)*c(n-k)) where c(n) = Product_{j=0..n} A051179(j), read by rows.

The programs for A173475, there is no canonical definition to state claims against.
-/

/-! ## A173475.P2124524579774635406

`A100745(A022166(n))`
-/

namespace A173475.P2124524579774635406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100745 (A022166 n).toNat

end

end A173475.P2124524579774635406

/-! ## A173475.P13792057473655272439

`A100745(A058669(n))`
-/

namespace A173475.P13792057473655272439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100745 (A058669 n).toNat

end

end A173475.P13792057473655272439

/-! ## A173475.P17857278404641676603

`A000975(A176791(n))`
-/

namespace A173475.P17857278404641676603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A176791 n).toNat

end

end A173475.P17857278404641676603

/-! ## A173475.P4955152999812823693

`A132796(A046802(n))`
-/

namespace A173475.P4955152999812823693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132796 (A046802 n).toNat

end

end A173475.P4955152999812823693

/-! ## A173475.P3473428815830513125

`A091239(A152654(n))`
-/

namespace A173475.P3473428815830513125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091239 (A152654 n).toNat

end

end A173475.P3473428815830513125

/-!
# A173476: Triangle T(n, k) = 1 + (k!)^2 - 2*k!*(n-k)! + ((n-k)!)^2, read by rows.

The programs for A173476, the canonical program `A173476.P1773901459906689721` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173476 has offset 0).

The definition of A173476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 903 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173476.P1773901459906689721

`(A119502(n)-A233543(n))²+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A173476

/-- `(A119502(n)-A233543(n))²+1` -/
def P1773901459906689721.Spec : Prop :=
  ∀ n, P1773901459906689721.a n = A173476 n

theorem P1773901459906689721.correct : P1773901459906689721.Spec := by
  intro n
  simp only [A173476]

end A173476

/-! ## A173476.P2105490693195165147

`(A233543(A061579(n))-A233543(n))²+1`
-/

namespace A173476.P2105490693195165147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233543 (A061579 n).toNat - A233543 n) ^ 2 + 1

end

end A173476.P2105490693195165147

namespace A173476

/-- `(A233543(A061579(n))-A233543(n))²+1` -/
def P2105490693195165147.Spec : Prop :=
  ∀ n, P2105490693195165147.a n = A173476 n

end A173476

/-! ## A173476.P551443742058593489

`n-(A023443(n)-(A119502(n)-A233543(n))²)`
-/

namespace A173476.P551443742058593489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - (A119502 n - A233543 n) ^ 2)

end

end A173476.P551443742058593489

namespace A173476

/-- `n-(A023443(n)-(A119502(n)-A233543(n))²)` -/
def P551443742058593489.Spec : Prop :=
  ∀ n, P551443742058593489.a n = A173476 n

end A173476

/-! ## A173476.P11158728908961718174

`(A233543(∑[A198954(n+1)]-n)-A233543(n))²+1`
-/

namespace A173476.P11158728908961718174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233543 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat - A233543 n) ^ 2 + 1

end

end A173476.P11158728908961718174

namespace A173476

/-- `(A233543(∑[A198954(n+1)]-n)-A233543(n))²+1` -/
def P11158728908961718174.Spec : Prop :=
  ∀ n, P11158728908961718174.a n = A173476 n

end A173476

/-! ## A173476.P12610749654674057233

`(A119502(n)-A233543(n))^(A000040(n+1)%2+1)+1`
-/

namespace A173476.P12610749654674057233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119502 n - A233543 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 + 1 : ℤ) + 1

end

end A173476.P12610749654674057233

namespace A173476

/-- `(A119502(n)-A233543(n))^(A000040(n+1)%2+1)+1` -/
def P12610749654674057233.Spec : Prop :=
  ∀ n, P12610749654674057233.a n = (A173476 n : ℚ)

end A173476

/-! ## A173476.P3209918989939254781

`A027688(n)-(A014206(n)-(A119502(n)-A233543(n))²)`
-/

namespace A173476.P3209918989939254781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n - (A014206 n - (A119502 n - A233543 n) ^ 2)

end

end A173476.P3209918989939254781

namespace A173476

/-- `A027688(n)-(A014206(n)-(A119502(n)-A233543(n))²)` -/
def P3209918989939254781.Spec : Prop :=
  ∀ n, P3209918989939254781.a n = A173476 n

end A173476

/-! ## A173476.P10132012993773852166

`(A119502(n)-A233543(n))^(A151878(n)!+1)+1`
-/

namespace A173476.P10132012993773852166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A119502 n - A233543 n) ^ (Nat.factorial (A151878 n).toNat + 1) + 1

end

end A173476.P10132012993773852166

namespace A173476

/-- `(A119502(n)-A233543(n))^(A151878(n)!+1)+1` -/
def P10132012993773852166.Spec : Prop :=
  ∀ n, P10132012993773852166.a n = A173476 n

end A173476

/-!
# A173478: a(n) = the smallest number ending in n-1 zeros divisible by n.

The programs for A173478, there is no canonical definition to state claims against.
-/

/-! ## A173478.P4960740456743493972

`lcm(10^n, n+1)`
-/

namespace A173478.P4960740456743493972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (10 ^ n) (n + 1)

end

end A173478.P4960740456743493972

/-! ## A173478.P15520065528159646225

`record[lcm(1-n, 10^abs(1-n))]/10`
-/

namespace A173478.P15520065528159646225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (SequenceMachineLib.roundAway ((10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 10

end

end A173478.P15520065528159646225

/-! ## A173478.P14348198767390303430

`(n+1)/gcd(n+1, ∏[gcd(10, n)])*10^n`
-/

namespace A173478.P14348198767390303430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd (n + 1) (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) * (10 ^ n : ℚ)

end

end A173478.P14348198767390303430

/-! ## A173478.P6624393537436244002

`floor((n+1)/2^val(n+1, 2))/5^val(n+1, 5)*10^n`
-/

namespace A173478.P6624393537436244002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / (5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℚ) * (10 ^ n : ℚ)

end

end A173478.P6624393537436244002

/-! ## A173478.P16872658423530166183

`10^n*A132740(n+1)`
-/

namespace A173478.P16872658423530166183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A132740 (n + 1)

end

end A173478.P16872658423530166183

/-!
# A173479: a(n) = the smallest n-digit number ending in n-1 zeros that is divisible by n, else 0.

The programs for A173479, there is no canonical definition to state claims against.
-/

/-! ## A173479.P15369251706640703605

`A173482(n+1)/10`
-/

namespace A173479.P15369251706640703605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173482 (n + 1) : ℚ) / 10

end

end A173479.P15369251706640703605

/-! ## A173479.P8726841837836695228

`∏{p}[n+1, val(dr(#), #)]*A173478(n+1)`
-/

namespace A173479.P8726841837836695228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot (p : ℤ)) p : ℕ) : ℤ) * A173478 (n + 1)

end

end A173479.P8726841837836695228

/-! ## A173479.P1422320539286399472

`((n+1)/gcd(n+1, ∏[gcd(10, n)])*10^n)%(A173480(n+1)+1)`
-/

namespace A173479.P1422320539286399472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) * (10 ^ n : ℚ))) (A173480 (n + 1) + 1)

end

end A173479.P1422320539286399472

/-! ## A173479.P662754978564697315

`1/10*A173482(A348553(n))`
-/

namespace A173479.P662754978564697315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 10 * (A173482 (A348553 n).toNat : ℚ)

end

end A173479.P662754978564697315

/-! ## A173479.P9879287343395671354

`dr(A173482(n+1))*A011557(n)`
-/

namespace A173479.P9879287343395671354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A173482 (n + 1)) : ℤ) * A011557 n

end

end A173479.P9879287343395671354

/-!
# A173480: a(n) = the largest n-digit number ending in n-1 zeros that is divisible by n, else 0.

The programs for A173480, there is no canonical definition to state claims against.
-/

/-! ## A173480.P298852189753612766

`A173483(A032559(n+1))/10`
-/

namespace A173480.P298852189753612766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173483 (A032559 (n + 1)).toNat : ℚ) / 10

end

end A173480.P298852189753612766

/-! ## A173480.P9307098031452250499

`A173483(A094280(n+1))/10`
-/

namespace A173480.P9307098031452250499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173483 (A094280 (n + 1)).toNat : ℚ) / 10

end

end A173480.P9307098031452250499

/-! ## A173480.P5637879814563778591

`A173483(A103951(n+1))/10`
-/

namespace A173480.P5637879814563778591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173483 (A103951 (n + 1)).toNat : ℚ) / 10

end

end A173480.P5637879814563778591

/-! ## A173480.P5258436912107791250

`A173483(A256005(n+1))/10`
-/

namespace A173480.P5258436912107791250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173483 (A256005 (n + 1)).toNat : ℚ) / 10

end

end A173480.P5258436912107791250

/-!
# A173481: a(n) = the smallest number ending in n zeros divisible by n.

The programs for A173481, there is no canonical definition to state claims against.
-/

/-! ## A173481.P18137239404154859788

`lcm(n+1, 10^(n+1))`
-/

namespace A173481.P18137239404154859788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (10 ^ (n + 1))

end

end A173481.P18137239404154859788

/-! ## A173481.P15699035276012859294

`∑[lcm(2, Δ[-lcm(n, 10^n)])]`
-/

namespace A173481.P15699035276012859294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.lcm n (10 ^ n) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173481.P15699035276012859294

/-! ## A173481.P9211391372132628371

`record[lcm(1-n, 10^abs(1-n))]`
-/

namespace A173481.P9211391372132628371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (SequenceMachineLib.roundAway ((10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173481.P9211391372132628371

/-! ## A173481.P5746720391708879991

`10*(n+1)/gcd(n+1, ∏[gcd(10, n)])*10^n`
-/

namespace A173481.P5746720391708879991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * ((n + 1 : ℚ) / (Nat.gcd (n + 1) (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) * (10 ^ n : ℚ))

end

end A173481.P5746720391708879991

/-! ## A173481.P4058230150733561024

`10*A173478(n+1)`
-/

namespace A173481.P4058230150733561024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A173478 (n + 1)

end

end A173481.P4058230150733561024

/-!
# A173482: a(n) = the smallest (n+1)-digit number ending in n zeros that is divisible by n, else 0.

The programs for A173482, there is no canonical definition to state claims against.
-/

/-! ## A173482.P9009815899610672321

`10*A173479(n+1)`
-/

namespace A173482.P9009815899610672321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A173479 (n + 1)

end

end A173482.P9009815899610672321

/-! ## A173482.P6695303376587870772

`A173485(n+1)/10`
-/

namespace A173482.P6695303376587870772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173485 (n + 1) : ℚ) / 10

end

end A173482.P6695303376587870772

/-! ## A173482.P14167777741748022428

`record[lcm(1-n, 10^abs(1-n))]%(A173483(n+1)+1)`
-/

namespace A173482.P14167777741748022428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (SequenceMachineLib.roundAway ((10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) (A173483 (n + 1) + 1)

end

end A173482.P14167777741748022428

/-! ## A173482.P15751356286161480783

`10*((n+1)/gcd(n+1, ∏[gcd(10, n)])*10^n)%(A173480(n+1)+1)`
-/

namespace A173482.P15751356286161480783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) * (10 ^ n : ℚ))) (A173480 (n + 1) + 1)

end

end A173482.P15751356286161480783

/-! ## A173482.P2101194816057115595

`lcm(lcm(n+1, 10^(n+1)), A008683(A314049(n)))`
-/

namespace A173482.P2101194816057115595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.lcm (n + 1) (10 ^ (n + 1)) : ℤ) (A008683 (A314049 n).toNat)

end

end A173482.P2101194816057115595

/-!
# A173483: a(n) = the largest (n+1)-digit number ending in n zeros that is divisible by n, else 0.

The programs for A173483, there is no canonical definition to state claims against.
-/

/-! ## A173483.P337470807401512156

`A173486(n+1)/10`
-/

namespace A173483.P337470807401512156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173486 (n + 1) : ℚ) / 10

end

end A173483.P337470807401512156

/-! ## A173483.P17398142723735311816

`lcm(lcm(n+1, 10^(n+1)), A173480(n+1))`
-/

namespace A173483.P17398142723735311816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.lcm (n + 1) (10 ^ (n + 1)) : ℤ) (A173480 (n + 1))

end

end A173483.P17398142723735311816

/-! ## A173483.P5546109836444318789

`lcm(A011557(n+1), A173480(n+1))`
-/

namespace A173483.P5546109836444318789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011557 (n + 1)) (A173480 (n + 1))

end

end A173483.P5546109836444318789

/-! ## A173483.P2596215069499684716

`lcm(dr(A173480(n+1)), A173482(n+1))`
-/

namespace A173483.P2596215069499684716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.digitalRoot (A173480 (n + 1)) : ℤ) (A173482 (n + 1))

end

end A173483.P2596215069499684716

/-! ## A173483.P8899577595815867296

`gcd(9*A173482(n+1), A173486(n+1))`
-/

namespace A173483.P8899577595815867296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (9 * A173482 (n + 1)) (A173486 (n + 1))

end

end A173483.P8899577595815867296

/-!
# A173484: a(n) = the smallest number ending in n+1 zeros divisible by n.

The programs for A173484, the canonical program `A173484.P10472800131719763731` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173484 has offset 1).

The definition of A173484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173484.P10472800131719763731

`10^(n+2)*A132740(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A173484

/-- `10^(n+2)*A132740(n+1)` -/
def P10472800131719763731.Spec : Prop :=
  ∀ n, P10472800131719763731.a n = A173484 (n + 1)

theorem P10472800131719763731.correct : P10472800131719763731.Spec := by
  intro n
  simp only [A173484, Nat.add_sub_cancel]

end A173484

/-! ## A173484.P14932803951944636569

`lcm(n+1, 10^(n+2))`
-/

namespace A173484.P14932803951944636569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (10 ^ (n + 2))

end

end A173484.P14932803951944636569

namespace A173484

/-- `lcm(n+1, 10^(n+2))` -/
def P14932803951944636569.Spec : Prop :=
  ∀ n, (P14932803951944636569.a n : ℤ) = A173484 (n + 1)

end A173484

/-! ## A173484.P13078330809410052956

`10*10*(n+1)/gcd(n+1, ∏[gcd(10, n)])*10^n`
-/

namespace A173484.P13078330809410052956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * (10 * ((n + 1 : ℚ) / (Nat.gcd (n + 1) (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) * (10 ^ n : ℚ)))

end

end A173484.P13078330809410052956

namespace A173484

/-- `10*10*(n+1)/gcd(n+1, ∏[gcd(10, n)])*10^n` -/
def P13078330809410052956.Spec : Prop :=
  ∀ n, P13078330809410052956.a n = (A173484 (n + 1) : ℚ)

end A173484

/-! ## A173484.P10360814615210024039

`(n+1)/gcd(n+1, ∏[gcd(10, n)])*A286508(2*(n+2))`
-/

namespace A173484.P10360814615210024039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd (n + 1) (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) * (A286508 (2 * (n + 2)) : ℚ)

end

end A173484.P10360814615210024039

namespace A173484

/-- `(n+1)/gcd(n+1, ∏[gcd(10, n)])*A286508(2*(n+2))` -/
def P10360814615210024039.Spec : Prop :=
  ∀ n, P10360814615210024039.a n = (A173484 (n + 1) : ℚ)

end A173484

/-! ## A173484.P484339040822060859

`4*25*A173478(n+1)`
-/

namespace A173484.P484339040822060859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (25 * A173478 (n + 1))

end

end A173484.P484339040822060859

namespace A173484

/-- `4*25*A173478(n+1)` -/
def P484339040822060859.Spec : Prop :=
  ∀ n, P484339040822060859.a n = A173484 (n + 1)

end A173484

/-!
# A173485: a(n) = the smallest (n+2)-digit number ending in n+1 zeros that is divisible by n, else 0.

The programs for A173485, there is no canonical definition to state claims against.
-/

/-! ## A173485.P4548735295616810945

`10*A173482(n+1)`
-/

namespace A173485.P4548735295616810945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A173482 (n + 1)

end

end A173485.P4548735295616810945

/-! ## A173485.P699831834582627212

`10*10*A173479(n+1)`
-/

namespace A173485.P699831834582627212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (10 * A173479 (n + 1))

end

end A173485.P699831834582627212

/-! ## A173485.P4621531737437035443

`2*5*A173482(A348553(n))`
-/

namespace A173485.P4621531737437035443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * A173482 (A348553 n).toNat)

end

end A173485.P4621531737437035443

/-! ## A173485.P6489701288044717223

`lcm(A173479(n+1), A173484(n+1))`
-/

namespace A173485.P6489701288044717223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A173479 (n + 1)) (A173484 (n + 1))

end

end A173485.P6489701288044717223

/-! ## A173485.P11376148819263940501

`A173484(n+1)%(A173486(n+1)+2)`
-/

namespace A173485.P11376148819263940501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173484 (n + 1)) (A173486 (n + 1) + 2)

end

end A173485.P11376148819263940501

/-!
# A173486: a(n) = the largest (n+2)-digit number ending in n+1 zeros that is divisible by n, else 0.

The programs for A173486, there is no canonical definition to state claims against.
-/

/-! ## A173486.P1961676046207257260

`10*A173483(n+1)`
-/

namespace A173486.P1961676046207257260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A173483 (n + 1)

end

end A173486.P1961676046207257260

/-! ## A173486.P13439956498549721018

`lcm(A173480(n+1), A173484(n+1))`
-/

namespace A173486.P13439956498549721018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A173480 (n + 1)) (A173484 (n + 1))

end

end A173486.P13439956498549721018

/-! ## A173486.P10133914259955128691

`lcm(A173483(n+1), A173485(n+1))`
-/

namespace A173486.P10133914259955128691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A173483 (n + 1)) (A173485 (n + 1))

end

end A173486.P10133914259955128691

/-! ## A173486.P313024596716859417

`10*lcm(dr(A173480(n+1)), A173482(n+1))`
-/

namespace A173486.P313024596716859417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Int.lcm (SequenceMachineLib.digitalRoot (A173480 (n + 1)) : ℤ) (A173482 (n + 1))

end

end A173486.P313024596716859417

/-! ## A173486.P17897407086189859466

`lcm(lcm(n+1, 10^(n+2)), A173480(A005555(n)))`
-/

namespace A173486.P17897407086189859466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.lcm (n + 1) (10 ^ (n + 2)) : ℤ) (A173480 (A005555 n).toNat)

end

end A173486.P17897407086189859466

/-!
# A173488: Partial sums of A055512.

The programs for A173488, there is no canonical definition to state claims against.
-/

/-! ## A173488.P11905883375937846600

`∑[A055512(n)]`
-/

namespace A173488.P11905883375937846600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173488.P11905883375937846600

/-! ## A173488.P17944222650181915271

`a(n-1)+n*A058164(n)` with `a(0)=1`
-/

namespace A173488.P17944222650181915271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n : ℤ) * A058164 n

end

end A173488.P17944222650181915271

/-! ## A173488.P13226510263238528106

`∑[A028310(n)*A058164(A028310(n))]`
-/

namespace A173488.P13226510263238528106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A058164 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173488.P13226510263238528106

/-! ## A173488.P10873978260121063751

`∑[A058164(A065033(2*n))*A065033(2*n)]`
-/

namespace A173488.P10873978260121063751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058164 (A065033 (2 * n)).toNat * A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173488.P10873978260121063751

/-! ## A173488.P4540295521559398625

`∑[(A000007(n)+n)*A058164(A000007(n)+n)]`
-/

namespace A173488.P4540295521559398625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * A058164 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173488.P4540295521559398625

/-!
# A173489: Partial sums of A000140.

The programs for A173489, there is no canonical definition to state claims against.
-/

/-! ## A173489.P4661822285438494376

`∑[A000140(n+1)]`
-/

namespace A173489.P4661822285438494376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173489.P4661822285438494376

/-! ## A173489.P12245241556708887003

`A000140(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A173489.P12245241556708887003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000140 (n + 1) + a (A023443 n).toNat

end

end A173489.P12245241556708887003

/-! ## A173489.P15015834478577841544

`a(n-1)+A000140(n+1)+A000038(n)` with `a(0)=1, a(1)=2`
-/

namespace A173489.P15015834478577841544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A000140 (n + 1) + A000038 n)

end

end A173489.P15015834478577841544

/-! ## A173489.P17158321751446272297

`∑[A008302(∑[A000124(n)-A004525(n)])]`
-/

namespace A173489.P17158321751446272297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A004525 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173489.P17158321751446272297

/-! ## A173489.P10121481920358253677

`∑[A274887(∑[A000124(n)-A004525(n)])]`
-/

namespace A173489.P10121481920358253677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A004525 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274887 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173489.P10121481920358253677

/-!
# A173490: 

The programs for A173490, there is no canonical definition to state claims against.
-/

/-! ## A173490.P8387623788984936268

`2*A039725(n+1)`
-/

namespace A173490.P8387623788984936268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039725 (n + 1)

end

end A173490.P8387623788984936268

/-! ## A173490.P11048395269817034534

`A039725(A054977(n+1)+n)+A039725(n+1)`
-/

namespace A173490.P11048395269817034534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039725 (A054977 (n + 1) + (n : ℤ)).toNat + A039725 (n + 1)

end

end A173490.P11048395269817034534

/-! ## A173490.P6554926989306272703

`A039725(n+1)+A039725(n+1)%A039725(n+2)`
-/

namespace A173490.P6554926989306272703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039725 (n + 1) + Int.tmod (A039725 (n + 1)) (A039725 (n + 2))

end

end A173490.P6554926989306272703

/-! ## A173490.P3943278559816925603

`∩[A005101(n+1), 2*(n+6)]`
-/

namespace A173490.P3943278559816925603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 6)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A173490.P3943278559816925603

/-! ## A173490.P1276447098666864465

`A004277(A039725(n+1))`
-/

namespace A173490.P1276447098666864465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A039725 (n + 1)).toNat

end

end A173490.P1276447098666864465

/-! ## A173490.P5949135906297537790

`∩[A005843(n+3), A005101(n+1)]`
-/

namespace A173490.P5949135906297537790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173490.P5949135906297537790

/-! ## A173490.P7098251951562326792

`∩[A205098(n+1)-A033881(n+1), A103517(n)]`
-/

namespace A173490.P7098251951562326792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205098 (n + 1) - A033881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173490.P7098251951562326792

/-! ## A173490.P750345193352116003

`A004273(A039725(n+1)+1)-1`
-/

namespace A173490.P750345193352116003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A039725 (n + 1) + 1).toNat - 1

end

end A173490.P750345193352116003

/-! ## A173490.P16657489581425006161

`eq[gcd(2, n), A294937(n+1)]+1`
-/

namespace A173490.P16657489581425006161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A173490.P16657489581425006161

/-! ## A173490.P16396294585120281010

`filter[A004277(n), A294937(#)]`
-/

namespace A173490.P16396294585120281010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A173490.P16396294585120281010

/-! ## A173490.P4814520406353872992

`filter[A004279(n), A294937(#)]`
-/

namespace A173490.P4814520406353872992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A173490.P4814520406353872992

/-! ## A173490.P17832660728521056249

`filter[A020739(n), A294937(#)]`
-/

namespace A173490.P17832660728521056249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A173490.P17832660728521056249

/-! ## A173490.P12263233653661850318

`filter[A020744(n), A294937(#)]`
-/

namespace A173490.P12263233653661850318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A173490.P12263233653661850318

/-! ## A173490.P11062655912824278236

`filter[A057543(n), A294937(#)]`
-/

namespace A173490.P11062655912824278236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A173490.P11062655912824278236

/-! ## A173490.P10724610779056584787

`filter[A092535(n), A294937(#)]`
-/

namespace A173490.P10724610779056584787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A173490.P10724610779056584787

/-! ## A173490.P12119882268935190349

`filter[A103517(n), A294937(#)]`
-/

namespace A173490.P12119882268935190349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A173490.P12119882268935190349

/-! ## A173490.P14317792580623882550

`filter[A004271(n+1), A294937(#)]`
-/

namespace A173490.P14317792580623882550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A173490.P14317792580623882550

/-! ## A173490.P2225465147452619311

`filter[A004272(n+1), A294937(#)]`
-/

namespace A173490.P2225465147452619311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A173490.P2225465147452619311

/-! ## A173490.P8525988700386002134

`filter[A004275(n+1), A294937(#)]`
-/

namespace A173490.P8525988700386002134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A173490.P8525988700386002134

/-! ## A173490.P3992853515479815840

`filter[A004278(n+1), A294937(#)]`
-/

namespace A173490.P3992853515479815840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A173490.P3992853515479815840

/-!
# A173491: a(n) is the least k such that the period of the decimal expansion of 1/k is A000204(n).

The programs for A173491, there is no canonical definition to state claims against.
-/

/-! ## A173491.P5914946470289955241

`A003060(A000032(n+1))`
-/

namespace A173491.P5914946470289955241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003060 (A000032 (n + 1)).toNat

end

end A173491.P5914946470289955241

/-! ## A173491.P18322578347199081260

`A003060(A000204(n+1)%A077310(n+5))`
-/

namespace A173491.P18322578347199081260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003060 (Int.tmod (A000204 (n + 1)) (A077310 (n + 5))).toNat

end

end A173491.P18322578347199081260

/-!
# A173492: Partial sums of A104725.

The programs for A173492, there is no canonical definition to state claims against.
-/

/-! ## A173492.P14227848747187415934

`∑[A104725(n)]`
-/

namespace A173492.P14227848747187415934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173492.P14227848747187415934

/-! ## A173492.P1078173807217146051

`∑[A160086(n)+A074206(n)]`
-/

namespace A173492.P1078173807217146051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n + A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173492.P1078173807217146051

/-! ## A173492.P9911374499489959933

`A173382(n)+∑[A160086(n)]`
-/

namespace A173492.P9911374499489959933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173492.P9911374499489959933

/-! ## A173492.P3941781813013152075

`A104725(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A173492.P3941781813013152075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A104725 n + a (A023443 n).toNat

end

end A173492.P3941781813013152075

/-! ## A173492.P9036781240080491801

`∑[A074206(n)-A057428(n)*A160086(n)]`
-/

namespace A173492.P9036781240080491801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n - A057428 n * A160086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173492.P9036781240080491801

/-! ## A173492.P7244526548532183573

`a(n-1)+lcm(A057077(n+1), A104725(n))` with `a(0)=0, a(1)=1`
-/

namespace A173492.P7244526548532183573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Int.lcm (A057077 (n + 1)) (A104725 n)

end

end A173492.P7244526548532183573

/-! ## A173492.P5511093572087055258

`a(n-1)-n+A104725(n)+A059995(A017305(n))` with `a(0)=0`
-/

namespace A173492.P5511093572087055258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (n : ℤ) + (A104725 n + A059995 (A017305 n).toNat)

end

end A173492.P5511093572087055258

/-!
# A173493: Number of distinct squares that can be partitioned into distinct divisors of n.

The programs for A173493, there is no canonical definition to state claims against.
-/

/-! ## A173493.P11634876366218608442

`A324852(A105309(n))+A001055(n+1)`
-/

namespace A173493.P11634876366218608442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (A105309 n).toNat + A001055 (n + 1)

end

end A173493.P11634876366218608442

/-! ## A173493.P18094650614059896377

`A318471(xor(n+1, A007283(n)))`
-/

namespace A173493.P18094650614059896377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318471 (Int.xor (n + 1 : ℤ) (A007283 n)).toNat

end

end A173493.P18094650614059896377

/-! ## A173493.P1456740356428695972

`A318471(xor(A007283(n), A291769(n)))`
-/

namespace A173493.P1456740356428695972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318471 (Int.xor (A007283 n) (A291769 n)).toNat

end

end A173493.P1456740356428695972

/-! ## A173493.P8787556920059764945

`A300185(n+1)+A167865(A187829(n+1))`
-/

namespace A173493.P8787556920059764945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300185 (n + 1) + A167865 (A187829 (n + 1)).toNat

end

end A173493.P8787556920059764945

/-! ## A173493.P11933218700001691988

`A353378(n+1)+A353307(A353264(n+1))`
-/

namespace A173493.P11933218700001691988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (n + 1) + A353307 (A353264 (n + 1)).toNat

end

end A173493.P11933218700001691988

/-!
# A173494: Numbers m such that no square greater than 1 can be written as sum of distinct divisors of m.

The programs for A173494, there is no canonical definition to state claims against.
-/

/-! ## A173494.P17706055466964916031

`eq[1, A173493(n+1)]+1`
-/

namespace A173494.P17706055466964916031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173493 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A173494.P17706055466964916031

/-! ## A173494.P8448449381021306789

`eq[1, A385904(n+1)]+1`
-/

namespace A173494.P8448449381021306789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A173494.P8448449381021306789

/-! ## A173494.P9408157049550065614

`record[A000027(n+1)/A173493(n+1)]`
-/

namespace A173494.P9408157049550065614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A173493 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173494.P9408157049550065614

/-! ## A173494.P3288320089785722271

`record[A008619(n)/A173493(A008619(n))]`
-/

namespace A173494.P3288320089785722271
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A173493 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173494.P3288320089785722271

/-! ## A173494.P11904988883790342457

`record[A000040(n+1)-A368478(n)]`
-/

namespace A173494.P11904988883790342457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A368478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173494.P11904988883790342457

/-!
# A173495: a(n) = Lucas(n) - floor(Lucas(n)/2).

The programs for A173495, the canonical program `A173495.P11185108845389085913` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173495 has offset 0).

The definition of A173495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173495.P11185108845389085913

`a(n-1)+a(n-2)-4%gcd(3, n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173495

/-- `a(n-1)+a(n-2)-4%gcd(3, n)` -/
def P11185108845389085913.Spec : Prop :=
  ∀ n, P11185108845389085913.a n = A173495 n

theorem P11185108845389085913.correct : P11185108845389085913.Spec := by
  intro n
  simp only [A173495]

end A173495

/-! ## A173495.P2234197592098530676

`a(n-1)+a(n-2)-(1-n²%3)` with `a(0)=1, a(1)=1`
-/

namespace A173495.P2234197592098530676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) - (1 - ((n ^ 2 % 3 : ℕ) : ℤ)))

end

end A173495.P2234197592098530676

namespace A173495

/-- `a(n-1)+a(n-2)-(1-n²%3)` -/
def P2234197592098530676.Spec : Prop :=
  ∀ n, P2234197592098530676.a n = A173495 n

end A173495

/-! ## A173495.P13634674317286456781

`a(n-1)+a(n-2)-∑[n+1]%3` with `a(0)=1, a(1)=1`
-/

namespace A173495.P13634674317286456781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ))

end

end A173495.P13634674317286456781

namespace A173495

/-- `a(n-1)+a(n-2)-∑[n+1]%3` -/
def P13634674317286456781.Spec : Prop :=
  ∀ n, P13634674317286456781.a n = A173495 n

end A173495

/-! ## A173495.P12993742113749547932

`A245968(n)+1`
-/

namespace A173495.P12993742113749547932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 n + 1

end

end A173495.P12993742113749547932

namespace A173495

/-- `A245968(n)+1` -/
def P12993742113749547932.Spec : Prop :=
  ∀ n, P12993742113749547932.a n = A173495 n

end A173495

/-! ## A173495.P10016803378814078469

`A329723(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A173495.P10016803378814078469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A329723 n + a (n - 3)

end

end A173495.P10016803378814078469

namespace A173495

/-- `A329723(n)+a(n-3)` -/
def P10016803378814078469.Spec : Prop :=
  ∀ n, P10016803378814078469.a n = A173495 n

end A173495

/-! ## A173495.P18056569710545195836

`A000032(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A173495.P18056569710545195836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000032 (n - 2) + a (n - 3)

end

end A173495.P18056569710545195836

namespace A173495

/-- `A000032(n-2)+a(n-3)` -/
def P18056569710545195836.Spec : Prop :=
  ∀ n, P18056569710545195836.a n = A173495 n

end A173495

/-! ## A173495.P5885940960682782272

`A226956(n)+A131532(n)`
-/

namespace A173495.P5885940960682782272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 n + A131532 n

end

end A173495.P5885940960682782272

namespace A173495

/-- `A226956(n)+A131532(n)` -/
def P5885940960682782272.Spec : Prop :=
  ∀ n, P5885940960682782272.a n = A173495 n

end A173495

/-! ## A173495.P4204434213230406347

`A212804(n)+A173173(n)`
-/

namespace A173495.P4204434213230406347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A173173 n

end

end A173495.P4204434213230406347

namespace A173495

/-- `A212804(n)+A173173(n)` -/
def P4204434213230406347.Spec : Prop :=
  ∀ n, P4204434213230406347.a n = A173495 n

end A173495

/-! ## A173495.P17911087885448186940

`A000045(n+1)-A004695(n)`
-/

namespace A173495.P17911087885448186940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A004695 n

end

end A173495.P17911087885448186940

namespace A173495

/-- `A000045(n+1)-A004695(n)` -/
def P17911087885448186940.Spec : Prop :=
  ∀ n, P17911087885448186940.a n = A173495 n

end A173495

/-! ## A173495.P2334566471257528867

`A001611(n+1)-A147997(n)`
-/

namespace A173495.P2334566471257528867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) - A147997 n

end

end A173495.P2334566471257528867

namespace A173495

/-- `A001611(n+1)-A147997(n)` -/
def P2334566471257528867.Spec : Prop :=
  ∀ n, P2334566471257528867.a n = A173495 n

end A173495

/-! ## A173495.P15085150507075305060

`floor(A212804(n)+A001611(n)/2)`
-/

namespace A173495.P15085150507075305060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212804 n : ℚ) + (A001611 n : ℚ) / 2⌋

end

end A173495.P15085150507075305060

namespace A173495

/-- `floor(A212804(n)+A001611(n)/2)` -/
def P15085150507075305060.Spec : Prop :=
  ∀ n, P15085150507075305060.a n = A173495 n

end A173495

/-! ## A173495.P15215303013621026286

`A000071(n+1)+1-A004695(n)`
-/

namespace A173495.P15215303013621026286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (1 - A004695 n)

end

end A173495.P15215303013621026286

namespace A173495

/-- `A000071(n+1)+1-A004695(n)` -/
def P15215303013621026286.Spec : Prop :=
  ∀ n, P15215303013621026286.a n = A173495 n

end A173495

/-! ## A173495.P9482605886707804521

`A000045(n+1)-A173673(2*n)`
-/

namespace A173495.P9482605886707804521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A173673 (2 * n)

end

end A173495.P9482605886707804521

namespace A173495

/-- `A000045(n+1)-A173673(2*n)` -/
def P9482605886707804521.Spec : Prop :=
  ∀ n, P9482605886707804521.a n = A173495 n

end A173495

/-! ## A173495.P7567954907441550852

`A000045(n+1)-floor(A000045(n)/2)`
-/

namespace A173495.P7567954907441550852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - ⌊(A000045 n : ℚ) / 2⌋

end

end A173495.P7567954907441550852

namespace A173495

/-- `A000045(n+1)-floor(A000045(n)/2)` -/
def P7567954907441550852.Spec : Prop :=
  ∀ n, P7567954907441550852.a n = A173495 n

end A173495

/-! ## A173495.P14987510856617301706

`A000045(n+1)+A173173(n)-A000045(n)`
-/

namespace A173495.P14987510856617301706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A173173 n - A000045 n)

end

end A173495.P14987510856617301706

namespace A173495

/-- `A000045(n+1)+A173173(n)-A000045(n)` -/
def P14987510856617301706.Spec : Prop :=
  ∀ n, P14987510856617301706.a n = A173495 n

end A173495

/-! ## A173495.P16386750900343813388

`A011655(n+1)+A104221(n+1)-A004695(n)`
-/

namespace A173495.P16386750900343813388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) + (A104221 (n + 1) - A004695 n)

end

end A173495.P16386750900343813388

namespace A173495

/-- `A011655(n+1)+A104221(n+1)-A004695(n)` -/
def P16386750900343813388.Spec : Prop :=
  ∀ n, P16386750900343813388.a n = A173495 n

end A173495

/-! ## A173495.P14788399019053969694

`A004695(n+1)+A173173(n+1)-A004695(n)`
-/

namespace A173495.P14788399019053969694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) + (A173173 (n + 1) - A004695 n)

end

end A173495.P14788399019053969694

namespace A173495

/-- `A004695(n+1)+A173173(n+1)-A004695(n)` -/
def P14788399019053969694.Spec : Prop :=
  ∀ n, P14788399019053969694.a n = A173495 n

end A173495

/-! ## A173495.P17084021171852373254

`ceil(round(ϕ^n)/2)`
-/

namespace A173495.P17084021171852373254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway (Real.goldenRatio ^ n) : ℚ) / 2⌉

end

end A173495.P17084021171852373254

namespace A173495

/-- `ceil(round(ϕ^n)/2)` -/
def P17084021171852373254.Spec : Prop :=
  ∀ n, P17084021171852373254.a n = A173495 n

end A173495

/-! ## A173495.P11749489676663415477

`floor(A001612(n)/2)`
-/

namespace A173495.P11749489676663415477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001612 n : ℚ) / 2⌋

end

end A173495.P11749489676663415477

namespace A173495

/-- `floor(A001612(n)/2)` -/
def P11749489676663415477.Spec : Prop :=
  ∀ n, P11749489676663415477.a n = A173495 n

end A173495

/-! ## A173495.P6548443569129116130

`round(A000032(n)/2)`
-/

namespace A173495.P6548443569129116130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000032 n : ℚ) / 2)

end

end A173495.P6548443569129116130

namespace A173495

/-- `round(A000032(n)/2)` -/
def P6548443569129116130.Spec : Prop :=
  ∀ n, P6548443569129116130.a n = A173495 n

end A173495

/-!
# A173496: Partial sums of A005036.

The programs for A173496, there is no canonical definition to state claims against.
-/

/-! ## A173496.P9695496725259396107

`∑[A005036(n+1)]`
-/

namespace A173496.P9695496725259396107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173496.P9695496725259396107

/-! ## A173496.P10630770039894940713

`A005036(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A173496.P10630770039894940713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005036 (n + 1) + a (A023443 n).toNat

end

end A173496.P10630770039894940713

/-! ## A173496.P9376597045075471690

`∑[A295260(∑[n+2])]`
-/

namespace A173496.P9376597045075471690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295260 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173496.P9376597045075471690

/-! ## A173496.P11587664871522750705

`A295260(A347553(n+4))+a(n-1)` with `a(0)=1`
-/

namespace A173496.P11587664871522750705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A295260 (A347553 (n + 4)).toNat + a (n - 1)

end

end A173496.P11587664871522750705

/-! ## A173496.P2538308231575906200

`a(n-1)+A060576(n)*A295260(A000096(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A173496.P2538308231575906200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A060576 n * A295260 (A000096 (n + 1)).toNat

end

end A173496.P2538308231575906200

/-!
# A173497: a(n) = a(n-1) + a(n-2) - floor(a(n-2)/2), starting 2,1.

The programs for A173497, the canonical program `A173497.P14572232054458982799` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173497 has offset 0).

The definition of A173497 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-floor(a(n-2)/2)` (program `A173497.P14572232054458982799`, by `A173497.P14572232054458982799.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173497.P14572232054458982799

`a(n-1)+a(n-2)-floor(a(n-2)/2)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173497

/-- `a(n-1)+a(n-2)-floor(a(n-2)/2)` -/
def P14572232054458982799.Spec : Prop :=
  ∀ n, P14572232054458982799.a n = A173497 n

theorem P14572232054458982799.correct : P14572232054458982799.Spec := by
  intro n
  simp only [A173497]

end A173497

/-! ## A173497.P5115977155651156930

`ceil(a(n-1)+a(n-2)/2)` with `a(0)=2, a(1)=1`
-/

namespace A173497.P5115977155651156930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  ⌈(a (n - 1) : ℚ) + (a (n - 2) : ℚ) / 2⌉

end

end A173497.P5115977155651156930

namespace A173497

/-- `ceil(a(n-1)+a(n-2)/2)` -/
def P5115977155651156930.Spec : Prop :=
  ∀ n, P5115977155651156930.a n = A173497 n

end A173497

/-! ## A173497.P4476356771782413131

`round(a(n-1)+a(n-2)/2)` with `a(0)=2, a(1)=1`
-/

namespace A173497.P4476356771782413131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (a (n - 2) : ℚ) / 2)

end

end A173497.P4476356771782413131

namespace A173497

/-- `round(a(n-1)+a(n-2)/2)` -/
def P4476356771782413131.Spec : Prop :=
  ∀ n, P4476356771782413131.a n = A173497 n

end A173497

/-! ## A173497.P17352744698693224626

`floor(a(n-1)+(a(n-2)+1)/2)` with `a(0)=2, a(1)=1`
-/

namespace A173497.P17352744698693224626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 2) + 1 : ℚ) / 2⌋

end

end A173497.P17352744698693224626

namespace A173497

/-- `floor(a(n-1)+(a(n-2)+1)/2)` -/
def P17352744698693224626.Spec : Prop :=
  ∀ n, P17352744698693224626.a n = A173497 n

end A173497

/-! ## A173497.P339036103815609555

`a(n-1)-floor(a(n-2)/2-a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A173497.P339036103815609555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) - ⌊(a (n - 2) : ℚ) / 2 - (a (n - 2) : ℚ)⌋

end

end A173497.P339036103815609555

namespace A173497

/-- `a(n-1)-floor(a(n-2)/2-a(n-2))` -/
def P339036103815609555.Spec : Prop :=
  ∀ n, P339036103815609555.a n = A173497 n

end A173497

/-! ## A173497.P12031563303623083388

`a(n-1)+(a(n-2)+a(n-2)%2)/2` with `a(0)=2, a(1)=1`
-/

namespace A173497.P12031563303623083388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (Int.tmod (SequenceMachineLib.roundAway (a (n - 2))) 2 : ℚ)) / 2

end

end A173497.P12031563303623083388

namespace A173497

/-- `a(n-1)+(a(n-2)+a(n-2)%2)/2` -/
def P12031563303623083388.Spec : Prop :=
  ∀ n, P12031563303623083388.a n = (A173497 n : ℚ)

end A173497

/-! ## A173497.P16122255363955270341

`A057428(n)+A064323(n+1)+1`
-/

namespace A173497.P16122255363955270341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A064323 (n + 1) + 1)

end

end A173497.P16122255363955270341

namespace A173497

/-- `A057428(n)+A064323(n+1)+1` -/
def P16122255363955270341.Spec : Prop :=
  ∀ n, P16122255363955270341.a n = A173497 n

end A173497

/-! ## A173497.P14035453946805230127

`A064324(n+1)+1-A036453(n+1)`
-/

namespace A173497.P14035453946805230127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064324 (n + 1) + (1 - A036453 (n + 1))

end

end A173497.P14035453946805230127

namespace A173497

/-- `A064324(n+1)+1-A036453(n+1)` -/
def P14035453946805230127.Spec : Prop :=
  ∀ n, P14035453946805230127.a n = A173497 n

end A173497

/-! ## A173497.P6242909087248132214

`A064324(n+1)-A130654(2*n+1)`
-/

namespace A173497.P6242909087248132214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064324 (n + 1) - A130654 (2 * n + 1)

end

end A173497.P6242909087248132214

namespace A173497

/-- `A064324(n+1)-A130654(2*n+1)` -/
def P6242909087248132214.Spec : Prop :=
  ∀ n, P6242909087248132214.a n = A173497 n

end A173497

/-! ## A173497.P5652868870773701451

`A065033(2*n)+A064323(n+1)-n`
-/

namespace A173497.P5652868870773701451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) + (A064323 (n + 1) - (n : ℤ))

end

end A173497.P5652868870773701451

namespace A173497

/-- `A065033(2*n)+A064323(n+1)-n` -/
def P5652868870773701451.Spec : Prop :=
  ∀ n, P5652868870773701451.a n = A173497 n

end A173497

/-!
# A173498: Partial sums of A005588.

The programs for A173498, there is no canonical definition to state claims against.
-/

/-! ## A173498.P18015020704778042907

`∑[A005588(n+1)]`
-/

namespace A173498.P18015020704778042907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173498.P18015020704778042907

/-!
# A173499: Number of sequences of length n with terms from {0,1,...,n-1} such that the sum of terms is 0 modulo n and the i-th term is not i.

The programs for A173499, the canonical program `A173499.P12633022428084643631` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173499 has offset 1).

The definition of A173499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173499.P12633022428084643631

`floor(n^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A173499

/-- `floor(n^(n+1)/(n+1))` -/
def P12633022428084643631.Spec : Prop :=
  ∀ n, P12633022428084643631.a n = A173499 (n + 1)

theorem P12633022428084643631.correct : P12633022428084643631.Spec := by
  intro n
  simp only [A173499, Nat.add_sub_cancel]

end A173499

/-! ## A173499.P8872925295784026189

`(n^(n+1)-gcd(n, a(n-1)))/(n+1)` with `a(0)=0`
-/

namespace A173499.P8872925295784026189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((n ^ (n + 1) : ℤ) - (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A173499.P8872925295784026189

namespace A173499

/-- `(n^(n+1)-gcd(n, a(n-1)))/(n+1)` -/
def P8872925295784026189.Spec : Prop :=
  ∀ n, P8872925295784026189.a n = (A173499 (n + 1) : ℚ)

end A173499

/-! ## A173499.P16828878525153791448

`and(-2, A081209(n))`
-/

namespace A173499.P16828878525153791448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A081209 n)

end

end A173499.P16828878525153791448

namespace A173499

/-- `and(-2, A081209(n))` -/
def P16828878525153791448.Spec : Prop :=
  ∀ n, P16828878525153791448.a n = A173499 (n + 1)

end A173499

/-! ## A173499.P15420919217509849176

`ceil(A345360(n)/(n+1))`
-/

namespace A173499.P15420919217509849176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A345360 n : ℚ) / (n + 1 : ℚ)⌉

end

end A173499.P15420919217509849176

namespace A173499

/-- `ceil(A345360(n)/(n+1))` -/
def P15420919217509849176.Spec : Prop :=
  ∀ n, P15420919217509849176.a n = A173499 (n + 1)

end A173499

/-! ## A173499.P4004751221479434517

`ceil(A028310(n)^(n+1)/(n+1))-1`
-/

namespace A173499.P4004751221479434517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028310 n ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌉ - 1

end

end A173499.P4004751221479434517

namespace A173499

/-- `ceil(A028310(n)^(n+1)/(n+1))-1` -/
def P4004751221479434517.Spec : Prop :=
  ∀ n, P4004751221479434517.a n = A173499 (n + 1)

end A173499

