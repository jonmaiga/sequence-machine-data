import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C001
import Seq.B004.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

/-!
# A252900: Number of (n+2)X(2+2) 0..3 arrays with every consecutive three elements in every row and column having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252900, there is no canonical definition to state claims against.
-/

/-! ## A252900.P1268006228969541548

`A252904(∑[n+1]+2)`
-/

namespace A252900.P1268006228969541548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252904 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252900.P1268006228969541548

/-! ## A252900.P14805922010977255800

`record[A252904(A286235(n+1)+1)]`
-/

namespace A252900.P14805922010977255800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252904 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252900.P14805922010977255800

/-! ## A252900.P17905658568363205401

`record[A252904(Δ[A003453(n+5)])]`
-/

namespace A252900.P17905658568363205401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252904 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252900.P17905658568363205401

/-!
# A252901: Number of (n+2)X(3+2) 0..3 arrays with every consecutive three elements in every row and column having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252901, there is no canonical definition to state claims against.
-/

/-! ## A252901.P2284984474548561237

`A252904(∑[n+2]+4)`
-/

namespace A252901.P2284984474548561237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252904 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252901.P2284984474548561237

/-!
# A252902: Number of (n+2)X(4+2) 0..3 arrays with every consecutive three elements in every row and column having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252902, there is no canonical definition to state claims against.
-/

/-! ## A252902.P13041344575241470451

`A252904(∑[n+3]+7)`
-/

namespace A252902.P13041344575241470451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252904 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252902.P13041344575241470451

/-!
# A252903: Number of (n+2)X(5+2) 0..3 arrays with every consecutive three elements in every row and column having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252903, there is no canonical definition to state claims against.
-/

/-! ## A252903.P5443777598560778628

`A252904(A374005(n+1))`
-/

namespace A252903.P5443777598560778628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252904 (A374005 (n + 1)).toNat

end

end A252903.P5443777598560778628

/-!
# A252905: Number of (n+2)X(1+2) 0..3 arrays with every consecutive three elements in every row and column having exactly 2 distinct values, in every diagonal 1 or 2 distinct values, in every antidiagonal 2 or 3 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252905, there is no canonical definition to state claims against.
-/

/-! ## A252905.P10531894253209173907

`A252910(∑[n]+1)`
-/

namespace A252905.P10531894253209173907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252910 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252905.P10531894253209173907

/-! ## A252905.P15879398606171694368

`record[A252910(A254052(n+1))]`
-/

namespace A252905.P15879398606171694368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252910 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252905.P15879398606171694368

/-! ## A252905.P16043395368846247377

`record[A252910(A267104(n+1))]`
-/

namespace A252905.P16043395368846247377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252910 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252905.P16043395368846247377

/-! ## A252905.P3532259320904203122

`record[A252910(A220693(n+1)+1)]`
-/

namespace A252905.P3532259320904203122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252910 (A220693 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252905.P3532259320904203122

/-!
# A252906: Number of (n+2)X(2+2) 0..3 arrays with every consecutive three elements in every row and column having exactly 2 distinct values, in every diagonal 1 or 2 distinct values, in every antidiagonal 2 or 3 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252906, there is no canonical definition to state claims against.
-/

/-! ## A252906.P168234907181530831

`A252910(∑[n+2])`
-/

namespace A252906.P168234907181530831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252910 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252906.P168234907181530831

/-! ## A252906.P6687731820973677345

`record[A252910(A220693(n+1)+2)]`
-/

namespace A252906.P6687731820973677345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252910 (A220693 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252906.P6687731820973677345

/-! ## A252906.P2772843291073267251

`record[A010054(n)*A252910(n+2)]`
-/

namespace A252906.P2772843291073267251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252910 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252906.P2772843291073267251

/-! ## A252906.P11516446952855737183

`record[root(A252910(n+2), A013610(n))]`
-/

namespace A252906.P11516446952855737183
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252910 (n + 2) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252906.P11516446952855737183

/-! ## A252906.P15056722943593262924

`record[gcd(A143844(n), A252910(n+2))]`
-/

namespace A252906.P15056722943593262924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143844 n) (A252910 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252906.P15056722943593262924

/-!
# A252907: Number of (n+2)X(3+2) 0..3 arrays with every consecutive three elements in every row and column having exactly 2 distinct values, in every diagonal 1 or 2 distinct values, in every antidiagonal 2 or 3 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252907, there is no canonical definition to state claims against.
-/

/-! ## A252907.P17876874065591588466

`A252910(∑[n+3]+1)`
-/

namespace A252907.P17876874065591588466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252910 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252907.P17876874065591588466

/-! ## A252907.P10182889544086588888

`record[A252910(A198464(n+1))]`
-/

namespace A252907.P10182889544086588888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252910 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252907.P10182889544086588888

/-!
# A252908: Number of (n+2)X(4+2) 0..3 arrays with every consecutive three elements in every row and column having exactly 2 distinct values, in every diagonal 1 or 2 distinct values, in every antidiagonal 2 or 3 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252908, there is no canonical definition to state claims against.
-/

/-! ## A252908.P11693704578112946864

`A252910(A141214(n+1))`
-/

namespace A252908.P11693704578112946864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252910 (A141214 (n + 1)).toNat

end

end A252908.P11693704578112946864

/-!
# A252909: Number of (n+2)X(5+2) 0..3 arrays with every consecutive three elements in every row and column having exactly 2 distinct values, in every diagonal 1 or 2 distinct values, in every antidiagonal 2 or 3 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252909, there is no canonical definition to state claims against.
-/

/-! ## A252909.P6693546189289785810

`A252910(C(n+5, 2)+n+1)`
-/

namespace A252909.P6693546189289785810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252910 (Nat.choose (n + 5) 2 + n + 1)

end

end A252909.P6693546189289785810

/-!
# A252912: Numbers m such that A098550(m) = A251555(m).

The programs for A252912, there is no canonical definition to state claims against.
-/

/-! ## A252912.P8857172288550476315

`A252939(n)+a(n-1)` with `a(0)=1`
-/

namespace A252912.P8857172288550476315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A252939 n + a (n - 1)

end

end A252912.P8857172288550476315

/-! ## A252912.P13007416175313080966

`∑[A252939(abs(1-n)+1)]`
-/

namespace A252912.P13007416175313080966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252939 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252912.P13007416175313080966

/-! ## A252912.P8086342509948946287

`∑[A252939(A028310(n))%(38*n²+5)]`
-/

namespace A252912.P8086342509948946287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252939 (A028310 n).toNat) (38 * n ^ 2 + 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252912.P8086342509948946287

/-! ## A252912.P1370923464207045885

`∑[A252939(n+1)]+1-A252939(n+1)`
-/

namespace A252912.P1370923464207045885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A252939 (n + 1))

end

end A252912.P1370923464207045885

/-! ## A252912.P10536401694725975447

`A252939(n)-A001489(a(n-1))` with `a(0)=1`
-/

namespace A252912.P10536401694725975447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A252939 n - A001489 (a (n - 1)).toNat

end

end A252912.P10536401694725975447

/-! ## A252912.P13874351983391619867

`eq[A098550(n+1), A251555(n+1)]+1`
-/

namespace A252912.P13874351983391619867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A252912.P13874351983391619867

/-! ## A252912.P6242640547083481788

`eq[A098552(A098551(n+1)), A251555(n+1)]+1`
-/

namespace A252912.P6242640547083481788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A252912.P6242640547083481788

/-!
# A252913: Number of (n+2)X(1+2) 0..3 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252913, there is no canonical definition to state claims against.
-/

/-! ## A252913.P1158060901010628040

`A252917(∑[n+1])`
-/

namespace A252913.P1158060901010628040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252913.P1158060901010628040

/-! ## A252913.P2581206726422233018

`record[A252917(A130270(n+1))]`
-/

namespace A252913.P2581206726422233018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252913.P2581206726422233018

/-! ## A252913.P14414397338569679170

`record[A023531(n)*A252917(n+1)]`
-/

namespace A252913.P14414397338569679170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A252917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252913.P14414397338569679170

/-! ## A252913.P2965091751575520537

`record[A103452(n)*A252917(n+1)]`
-/

namespace A252913.P2965091751575520537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A252917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252913.P2965091751575520537

/-! ## A252913.P3043220248842738008

`record[A115359(n)*A252917(n+1)]`
-/

namespace A252913.P3043220248842738008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A252917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252913.P3043220248842738008

/-!
# A252914: Number of (n+2)X(2+2) 0..3 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252914, there is no canonical definition to state claims against.
-/

/-! ## A252914.P14895341107486300597

`A252917(∑[2+n])`
-/

namespace A252914.P14895341107486300597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252914.P14895341107486300597

/-!
# A252915: Number of (n+2) X (3+2) 0..3 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252915, there is no canonical definition to state claims against.
-/

/-! ## A252915.P2266940943111205683

`A252917(∑[n+3]+1)`
-/

namespace A252915.P2266940943111205683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252915.P2266940943111205683

/-! ## A252915.P14581680018447887762

`record[A252917(A198464(n+1))]`
-/

namespace A252915.P14581680018447887762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252915.P14581680018447887762

/-!
# A252916: Number of (n+2) X (4+2) 0..3 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252916, there is no canonical definition to state claims against.
-/

/-! ## A252916.P906340335357840886

`A252917(∑[n+4]+3)`
-/

namespace A252916.P906340335357840886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A252916.P906340335357840886

/-!
# A252918: Number of (1+2)X(n+2) 0..3 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252918, there is no canonical definition to state claims against.
-/

/-! ## A252918.P16618946385057383742

`A252917(∑[n]+1)`
-/

namespace A252918.P16618946385057383742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252918.P16618946385057383742

/-! ## A252918.P7984687106758392277

`record[A252917(∑[A057979(n)])]`
-/

namespace A252918.P7984687106758392277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252918.P7984687106758392277

/-! ## A252918.P4195184873776456880

`record[A252917(∑[A145677(n)])]`
-/

namespace A252918.P4195184873776456880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252918.P4195184873776456880

/-! ## A252918.P985876572743663265

`record[A252917(A134519(n+1))]`
-/

namespace A252918.P985876572743663265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (A134519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252918.P985876572743663265

/-! ## A252918.P5356421204154045675

`record[A252917(A244779(n+1))]`
-/

namespace A252918.P5356421204154045675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (A244779 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252918.P5356421204154045675

/-!
# A252919: Number of (2+2)X(n+2) 0..3 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252919, there is no canonical definition to state claims against.
-/

/-! ## A252919.P3106482324839641615

`A252917(∑[n+1]+2)`
-/

namespace A252919.P3106482324839641615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252919.P3106482324839641615

/-! ## A252919.P17915717896204191616

`record[A115359(n)*A252917(n+3)]`
-/

namespace A252919.P17915717896204191616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A252917 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252919.P17915717896204191616

/-!
# A252920: Number of (3+2)X(n+2) 0..3 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252920, there is no canonical definition to state claims against.
-/

/-! ## A252920.P8226607272199533977

`A252917(∑[n+2]+4)`
-/

namespace A252920.P8226607272199533977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252920.P8226607272199533977

/-! ## A252920.P14791432352041765162

`record[A252917(A167614(val(n+1, 2)+1))]`
-/

namespace A252920.P14791432352041765162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252920.P14791432352041765162

/-!
# A252921: Number of (4+2)X(n+2) 0..3 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252921, there is no canonical definition to state claims against.
-/

/-! ## A252921.P14682878062359656338

`A252917(∑[3+n]+7)`
-/

namespace A252921.P14682878062359656338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252921.P14682878062359656338

/-!
# A252923: Number of n X n nonnegative integer arrays with upper left 0 and lower right n+n-6 and value increasing by 0 or 1 with every step right or down.

The programs for A252923, there is no canonical definition to state claims against.
-/

/-! ## A252923.P12101852335408572378

`A252930((n+1)²+n²)`
-/

namespace A252923.P12101852335408572378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 ((n + 1) ^ 2 + n ^ 2)

end

end A252923.P12101852335408572378

/-!
# A252924: Number of n X 2 nonnegative integer arrays with upper left 0 and lower right n+2-6 and value increasing by 0 or 1 with every step right or down.

The programs for A252924, the canonical program `A252924.P13623213647229370901` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252924 has offset 1).

The definition of A252924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252924.P13623213647229370901

`A212633(A155212(n+5))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A252924

/-- `A212633(A155212(n+5))` -/
def P13623213647229370901.Spec : Prop :=
  ∀ n, P13623213647229370901.a n = A252924 (n + 1)

theorem P13623213647229370901.correct : P13623213647229370901.Spec := by
  intro n
  simp only [A252924, Nat.add_sub_cancel]

end A252924

/-! ## A252924.P3189230275308581116

`A252930(∑[n+1]+2)`
-/

namespace A252924.P3189230275308581116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252924.P3189230275308581116

namespace A252924

/-- `A252930(∑[n+1]+2)` -/
def P3189230275308581116.Spec : Prop :=
  ∀ n, P3189230275308581116.a n = A252924 (n + 1)

end A252924

/-!
# A252925: Number of n X 3 nonnegative integer arrays with upper left 0 and lower right n+3-6 and value increasing by 0 or 1 with every step right or down.

The programs for A252925, there is no canonical definition to state claims against.
-/

/-! ## A252925.P12104490122788710952

`A252930(∑[n+2]+4)`
-/

namespace A252925.P12104490122788710952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252925.P12104490122788710952

/-!
# A252926: Number of n X 4 nonnegative integer arrays with upper left 0 and lower right n+4-6 and value increasing by 0 or 1 with every step right or down.

The programs for A252926, there is no canonical definition to state claims against.
-/

/-! ## A252926.P11967220198973130213

`A252930(A055999(n)+10)`
-/

namespace A252926.P11967220198973130213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A055999 n + 10).toNat

end

end A252926.P11967220198973130213

/-! ## A252926.P12982765673742771439

`A252930(A141214(n+1))`
-/

namespace A252926.P12982765673742771439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A141214 (n + 1)).toNat

end

end A252926.P12982765673742771439

/-!
# A252927: Number of nX5 nonnegative integer arrays with upper left 0 and lower right n+5-6 and value increasing by 0 or 1 with every step right or down.

The programs for A252927, there is no canonical definition to state claims against.
-/

/-! ## A252927.P1739147659910743468

`A252930(A167499(n+3))`
-/

namespace A252927.P1739147659910743468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A167499 (n + 3)).toNat

end

end A252927.P1739147659910743468

/-! ## A252927.P1358397462266266373

`A252930(A374005(n+1))`
-/

namespace A252927.P1358397462266266373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A374005 (n + 1)).toNat

end

end A252927.P1358397462266266373

/-!
# A252928: Number of nX6 nonnegative integer arrays with upper left 0 and lower right n+6-6 and value increasing by 0 or 1 with every step right or down.

The programs for A252928, there is no canonical definition to state claims against.
-/

/-! ## A252928.P795110348819799726

`A252930(A167499(n+4)+1)`
-/

namespace A252928.P795110348819799726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A167499 (n + 4) + 1).toNat

end

end A252928.P795110348819799726

/-! ## A252928.P8795305831868488030

`A252930(A374007(n+1))`
-/

namespace A252928.P8795305831868488030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A374007 (n + 1)).toNat

end

end A252928.P8795305831868488030

/-!
# A252929: Number of nX7 nonnegative integer arrays with upper left 0 and lower right n+7-6 and value increasing by 0 or 1 with every step right or down.

The programs for A252929, there is no canonical definition to state claims against.
-/

/-! ## A252929.P4961607088692968137

`A252930(A167487(n+5))`
-/

namespace A252929.P4961607088692968137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A167487 (n + 5)).toNat

end

end A252929.P4961607088692968137

/-! ## A252929.P12059252983942704369

`A252930(A374008(n+1))`
-/

namespace A252929.P12059252983942704369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A374008 (n + 1)).toNat

end

end A252929.P12059252983942704369

/-!
# A252931: Number of n X n nonnegative integer arrays with upper left 0 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252931, there is no canonical definition to state claims against.
-/

/-! ## A252931.P1088030757680553751

`A252938((n+1)²+n²)`
-/

namespace A252931.P1088030757680553751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 ((n + 1) ^ 2 + n ^ 2)

end

end A252931.P1088030757680553751

/-! ## A252931.P8439294515869827029

`record[A003982(n)*A252938(n+1)]`
-/

namespace A252931.P8439294515869827029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252931.P8439294515869827029

/-! ## A252931.P3034980179279324737

`record[gcd(A112467(n), A252938(n+1))]`
-/

namespace A252931.P3034980179279324737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A252938 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252931.P3034980179279324737

/-!
# A252932: Number of n X 2 nonnegative integer arrays with upper left 0 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252932, the canonical program `A252932.P13722495293826231897` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252932 has offset 1).

The definition of A252932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252932.P2950376118584807474

`ogf((2-3x+5x^2+4x^3+7x^4+x^5)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A252932.P2950376118584807474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, 5, 4, 7, 1] [1, -4, 6, -4, 1] n

end

end A252932.P2950376118584807474

namespace A252932

/-- `ogf((2-3x+5x^2+4x^3+7x^4+x^5)/(1-4x+6x^2-4x^3+x^4))` -/
def P2950376118584807474.Spec : Prop :=
  ∀ n, P2950376118584807474.a n = A252932 (n + 1)

end A252932

/-! ## A252932.P13722495293826231897

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=13, a(3)=34, a(4)=83, a(5)=176`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A252932

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13722495293826231897.Spec : Prop :=
  ∀ n, P13722495293826231897.a n = A252932 (n + 1)

theorem P13722495293826231897.correct : P13722495293826231897.Spec := by
  intro n
  simp only [A252932, Nat.add_sub_cancel]

end A252932

/-! ## A252932.P10206821283130766340

`A179904(A004280(n+1))-A195241(n)`
-/

namespace A252932.P10206821283130766340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179904 (A004280 (n + 1)).toNat - A195241 n

end

end A252932.P10206821283130766340

namespace A252932

/-- `A179904(A004280(n+1))-A195241(n)` -/
def P10206821283130766340.Spec : Prop :=
  ∀ n, P10206821283130766340.a n = A252932 (n + 1)

end A252932

/-! ## A252932.P14783168492004994321

`A252938(∑[n+1]+2)`
-/

namespace A252932.P14783168492004994321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252932.P14783168492004994321

namespace A252932

/-- `A252938(∑[n+1]+2)` -/
def P14783168492004994321.Spec : Prop :=
  ∀ n, P14783168492004994321.a n = A252932 (n + 1)

end A252932

/-!
# A252933: Number of n X 3 nonnegative integer arrays with upper left 0 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252933, the canonical program `A252933.P947757373435157173` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252933 has offset 1).

The definition of A252933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252933.P947757373435157173

`ogf((4-3x+16x^2+39x^3+98x^4+122x^5+40x^6+4x^7)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A252933

/-- `ogf((4-3x+16x^2+39x^3+98x^4+122x^5+40x^6+4x^7)/(1-4x+6x^2-4x^3+x^4))` -/
def P947757373435157173.Spec : Prop :=
  ∀ n, P947757373435157173.a n = A252933 (n + 1)

theorem P947757373435157173.correct : P947757373435157173.Spec := by
  intro n
  simp only [A252933, Nat.add_sub_cancel]

end A252933

/-! ## A252933.P7433358648352598695

`A252938(∑[n+2]+4)`
-/

namespace A252933.P7433358648352598695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252933.P7433358648352598695

namespace A252933

/-- `A252938(∑[n+2]+4)` -/
def P7433358648352598695.Spec : Prop :=
  ∀ n, P7433358648352598695.a n = A252933 (n + 1)

end A252933

/-!
# A252934: Number of n X 4 nonnegative integer arrays with upper left 0 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252934, there is no canonical definition to state claims against.
-/

/-! ## A252934.P18030653799940554821

`A252938(A374004(n+1))`
-/

namespace A252934.P18030653799940554821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A374004 (n + 1)).toNat

end

end A252934.P18030653799940554821

/-!
# A252935: Number of n X 5 nonnegative integer arrays with upper left 0 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252935, there is no canonical definition to state claims against.
-/

/-! ## A252935.P6748230999070062536

`A252938(A374005(n+1))`
-/

namespace A252935.P6748230999070062536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A374005 (n + 1)).toNat

end

end A252935.P6748230999070062536

/-!
# A252936: Number of nX6 nonnegative integer arrays with upper left 0 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252936, there is no canonical definition to state claims against.
-/

/-! ## A252936.P1498998500717491970

`A252938(A374007(n+1))`
-/

namespace A252936.P1498998500717491970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A374007 (n + 1)).toNat

end

end A252936.P1498998500717491970

/-!
# A252937: Number of nX7 nonnegative integer arrays with upper left 0 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252937, there is no canonical definition to state claims against.
-/

/-! ## A252937.P6751954592997573007

`A252938(A374008(n+1))`
-/

namespace A252937.P6751954592997573007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A374008 (n + 1)).toNat

end

end A252937.P6751954592997573007

/-!
# A252938: T(n,k)=Number of nXk nonnegative integer arrays with upper left 0 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252938, there is no canonical definition to state claims against.
-/

/-! ## A252938.P9931469333714773350

`A229402(n+1)+A016389(A156820(n))`
-/

namespace A252938.P9931469333714773350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (n + 1) + A016389 (A156820 n).toNat

end

end A252938.P9931469333714773350

/-! ## A252938.P3879872256441845320

`A229402(n+1)-A294890(A376776(3*n+2))`
-/

namespace A252938.P3879872256441845320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (n + 1) - A294890 (A376776 (3 * n + 2)).toNat

end

end A252938.P3879872256441845320

/-! ## A252938.P8021520518334943067

`A343630(A112843(n))+A229402(n+1)`
-/

namespace A252938.P8021520518334943067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343630 (A112843 n).toNat + A229402 (n + 1)

end

end A252938.P8021520518334943067

/-!
# A252939: First differences of A252912.

The programs for A252939, there is no canonical definition to state claims against.
-/

/-! ## A252939.P9117583293169385166

`Δ[A252912(1+n)]`
-/

namespace A252939.P9117583293169385166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252912 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A252939.P9117583293169385166

/-! ## A252939.P14478037319281081309

`Δ[record[A252912(A134478(n))]]`
-/

namespace A252939.P14478037319281081309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252912 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A252939.P14478037319281081309

/-! ## A252939.P10117291784350189206

`Δ[record[A252912(A328399(n))]]`
-/

namespace A252939.P10117291784350189206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252912 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A252939.P10117291784350189206

/-! ## A252939.P4522628859261070859

`Δ[record[A252912(A344180(n))]]`
-/

namespace A252939.P4522628859261070859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252912 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A252939.P4522628859261070859

/-! ## A252939.P6677008985479509094

`A252912(n+2)-A252912(n+1)`
-/

namespace A252939.P6677008985479509094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252912 (n + 2) - A252912 (n + 1)

end

end A252939.P6677008985479509094

/-! ## A252939.P144099313306521172

`Δ[eq[A098550(n+1), A251555(n+1)]]`
-/

namespace A252939.P144099313306521172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251555 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A252939.P144099313306521172

/-!
# A252940: Run lengths of A252939.

The programs for A252940, there is no canonical definition to state claims against.
-/

/-! ## A252940.P9845609362002782701

`runs[A252939(1+n)]`
-/

namespace A252940.P9845609362002782701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252939 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A252940.P9845609362002782701

/-!
# A252941: Irregular triangle T(n,k) read by rows: T(1,1) = 1, otherwise row n lists the prime factors of A098550(n), with duplicates omitted.

The programs for A252941, there is no canonical definition to state claims against.
-/

/-! ## A252941.P10015047693911780975

`A088387(A047229(n+1)^A122218(n+2))`
-/

namespace A252941.P10015047693911780975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (SequenceMachineLib.roundAway ((A047229 (n + 1) : ℚ) ^ (A122218 (n + 2) : ℤ))).toNat

end

end A252941.P10015047693911780975

/-! ## A252941.P7229217390103087808

`A020639(record[A319876(n+1)+A122218(n)])`
-/

namespace A252941.P7229217390103087808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319876 (n + 1) + A122218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A252941.P7229217390103087808

/-! ## A252941.P1506319856449532532

`A088387(A035033(n+1)²²)`
-/

namespace A252941.P1506319856449532532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 ((A035033 (n + 1) ^ 2) ^ 2).toNat

end

end A252941.P1506319856449532532

/-! ## A252941.P18135481502757009254

`A020639(A147126(n+1)*A262519(n))`
-/

namespace A252941.P18135481502757009254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A147126 (n + 1) * A262519 n).toNat

end

end A252941.P18135481502757009254

/-! ## A252941.P14224833886391903161

`A001918(lt[A113315(n+1), A047679(n)])`
-/

namespace A252941.P14224833886391903161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A252941.P14224833886391903161

/-!
# A252943: Number of Fermat pseudoprimes to base 2 between 2^n and 2^(n+1) that are not Carmichael numbers.

The programs for A252943, there is no canonical definition to state claims against.
-/

/-! ## A252943.P1344389428658894281

`Δ[A208276(n+1)]-A182490(n+1)`
-/

namespace A252943.P1344389428658894281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A182490 (n + 1)

end

end A252943.P1344389428658894281

/-! ## A252943.P4873101431523671980

`Δ[A208276(n+1)-A225005(n+1)]`
-/

namespace A252943.P4873101431523671980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208276 (n + 1) - A225005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A252943.P4873101431523671980

/-! ## A252943.P8033133901976461193

`A208276(n+2)-(A208276(n+1)+A182490(n+1))`
-/

namespace A252943.P8033133901976461193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208276 (n + 2) - (A208276 (n + 1) + A182490 (n + 1))

end

end A252943.P8033133901976461193

/-!
# A252945: Number of (n+2) X (1+2) 0..2 arrays with every consecutive three elements in every row, column and nw-se diagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252945, there is no canonical definition to state claims against.
-/

/-! ## A252945.P9068292477291915746

`A252952(1+∑[n])`
-/

namespace A252945.P9068292477291915746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252945.P9068292477291915746

/-! ## A252945.P2940227677591335330

`record[A252952(A056534(n+1))]`
-/

namespace A252945.P2940227677591335330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252945.P2940227677591335330

/-! ## A252945.P12938050531513942665

`record[A252952(A267104(n+1))]`
-/

namespace A252945.P12938050531513942665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252945.P12938050531513942665

/-! ## A252945.P7354847015059218478

`record[A252952(A286245(n+1))]`
-/

namespace A252945.P7354847015059218478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A286245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252945.P7354847015059218478

/-!
# A252946: Number of (n+2)X(2+2) 0..2 arrays with every consecutive three elements in every row, column and nw-se diagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252946, there is no canonical definition to state claims against.
-/

/-! ## A252946.P12156827938626542611

`A252952(∑[n+1]+2)`
-/

namespace A252946.P12156827938626542611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252946.P12156827938626542611

/-! ## A252946.P10401969876774308232

`record[A010054(n)*A252952(n+2)]`
-/

namespace A252946.P10401969876774308232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252952 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252946.P10401969876774308232

/-! ## A252946.P16630239803221920249

`record[A252952(n+3)/A038303(n)]`
-/

namespace A252946.P16630239803221920249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252952 (n + 3) : ℚ) / (A038303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252946.P16630239803221920249

/-! ## A252946.P471671172981938522

`record[A252952(n+3)/A093645(n)]`
-/

namespace A252946.P471671172981938522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252952 (n + 3) : ℚ) / (A093645 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252946.P471671172981938522

/-!
# A252947: Number of (n+2)X(3+2) 0..2 arrays with every consecutive three elements in every row, column and nw-se diagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252947, there is no canonical definition to state claims against.
-/

/-! ## A252947.P6066138799185859524

`A252952(∑[n+2]+4)`
-/

namespace A252947.P6066138799185859524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252947.P6066138799185859524

/-! ## A252947.P15442241283485611791

`record[A252952(n+4)/A105278(n+1)]`
-/

namespace A252947.P15442241283485611791
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252952 (n + 4) : ℚ) / (A105278 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252947.P15442241283485611791

/-! ## A252947.P12590343033619911756

`record[gcd(A252952(n+4), A281260(n+2))]`
-/

namespace A252947.P12590343033619911756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A252952 (n + 4)) (A281260 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252947.P12590343033619911756

/-!
# A252948: Number of (n+2)X(4+2) 0..2 arrays with every consecutive three elements in every row, column and nw-se diagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252948, there is no canonical definition to state claims against.
-/

/-! ## A252948.P18123443690398909790

`A252952(A141214(n)+7)`
-/

namespace A252948.P18123443690398909790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A141214 n + 7).toNat

end

end A252948.P18123443690398909790

/-! ## A252948.P4514447219710544722

`A252952(A141214(n+1))`
-/

namespace A252948.P4514447219710544722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A141214 (n + 1)).toNat

end

end A252948.P4514447219710544722

/-!
# A252949: Number of (n+2)X(5+2) 0..2 arrays with every consecutive three elements in every row, column and nw-se diagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252949, there is no canonical definition to state claims against.
-/

/-! ## A252949.P9598402274691055026

`A252952(A167499(n+3))`
-/

namespace A252949.P9598402274691055026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A167499 (n + 3)).toNat

end

end A252949.P9598402274691055026

/-! ## A252949.P3231828008641059329

`A252952(A374005(n+1))`
-/

namespace A252949.P3231828008641059329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A374005 (n + 1)).toNat

end

end A252949.P3231828008641059329

/-!
# A252950: Number of (n+2)X(6+2) 0..2 arrays with every consecutive three elements in every row, column and nw-se diagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252950, there is no canonical definition to state claims against.
-/

/-! ## A252950.P4597637938811233560

`A252952(A166136(n+4))`
-/

namespace A252950.P4597637938811233560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A166136 (n + 4)).toNat

end

end A252950.P4597637938811233560

/-! ## A252950.P7675839689438385522

`A252952(A374007(n+1))`
-/

namespace A252950.P7675839689438385522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A374007 (n + 1)).toNat

end

end A252950.P7675839689438385522

/-!
# A252951: Number of (n+2)X(7+2) 0..2 arrays with every consecutive three elements in every row, column and nw-se diagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252951, there is no canonical definition to state claims against.
-/

/-! ## A252951.P446506264929616163

`A252952(C(n+8, 2)-n)`
-/

namespace A252951.P446506264929616163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (Nat.choose (n + 8) 2 - n)

end

end A252951.P446506264929616163

/-!
# A252953: Number of (n+2)X(n+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252953, there is no canonical definition to state claims against.
-/

/-! ## A252953.P3943670281044931315

`A252961(∑[4*n]+1)`
-/

namespace A252953.P3943670281044931315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252953.P3943670281044931315

/-! ## A252953.P16828797173952244605

`record[A252961(A152271(n²))]`
-/

namespace A252953.P16828797173952244605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252953.P16828797173952244605

/-! ## A252953.P3385184211237170644

`record[A003982(n)*A252961(n+1)]`
-/

namespace A252953.P3385184211237170644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252953.P3385184211237170644

/-! ## A252953.P7701277584949866866

`record[A214505(n)*A252961(n+1)]`
-/

namespace A252953.P7701277584949866866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A252961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252953.P7701277584949866866

/-!
# A252954: Number of (n+2)X(1+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252954, there is no canonical definition to state claims against.
-/

/-! ## A252954.P5158550052893762129

`A252961(∑[1+n])`
-/

namespace A252954.P5158550052893762129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252954.P5158550052893762129

/-! ## A252954.P18219600563081641175

`record[A252961(n+round(sqrt(2*n))+1)]`
-/

namespace A252954.P18219600563081641175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 ((n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252954.P18219600563081641175

/-! ## A252954.P327490684379849571

`record[ceil(sqrt(8*(n+1)))%2*A252961(n+1)]`
-/

namespace A252954.P327490684379849571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2 * A252961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252954.P327490684379849571

/-! ## A252954.P16814131560770204732

`record[A072233(n)*A252961(n+1)]`
-/

namespace A252954.P16814131560770204732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A252961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252954.P16814131560770204732

/-! ## A252954.P17709929058378484499

`record[A252961(n+1)*A386585(n)]`
-/

namespace A252954.P17709929058378484499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (n + 1) * A386585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252954.P17709929058378484499

/-!
# A252955: Number of (n+2)X(2+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252955, there is no canonical definition to state claims against.
-/

/-! ## A252955.P3313909080993992905

`A252961(∑[2+n])`
-/

namespace A252955.P3313909080993992905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252955.P3313909080993992905

/-!
# A252956: Number of (n+2) X (3+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252956, there is no canonical definition to state claims against.
-/

/-! ## A252956.P14780546849847935029

`A252961(∑[n+3]+1)`
-/

namespace A252956.P14780546849847935029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252956.P14780546849847935029

/-!
# A252957: Number of (n+2)X(4+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252957, there is no canonical definition to state claims against.
-/

/-! ## A252957.P8924263589477812145

`A252961(∑[n+4]+3)`
-/

namespace A252957.P8924263589477812145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A252957.P8924263589477812145

/-!
# A252958: Number of (n+2) X (5+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252958, there is no canonical definition to state claims against.
-/

/-! ## A252958.P1408973424021468543

`A252961(∑[n+5]+6)`
-/

namespace A252958.P1408973424021468543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A252958.P1408973424021468543

/-!
# A252959: Number of (n+2)X(6+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252959, there is no canonical definition to state claims against.
-/

/-! ## A252959.P4809867620894129070

`A252961(C(n+7, 2)-5)`
-/

namespace A252959.P4809867620894129070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (Nat.choose (n + 7) 2 - 5)

end

end A252959.P4809867620894129070

/-!
# A252960: Number of (n+2) X (7+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252960, there is no canonical definition to state claims against.
-/

/-! ## A252960.P14148211005830881401

`A252961(C(n+7, 2)+n+1)`
-/

namespace A252960.P14148211005830881401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (Nat.choose (n + 7) 2 + (n + 1))

end

end A252960.P14148211005830881401

/-!
# A252962: Number of (1+2)X(n+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252962, there is no canonical definition to state claims against.
-/

/-! ## A252962.P10325638521011082429

`A252961(∑[n]+1)`
-/

namespace A252962.P10325638521011082429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252962.P10325638521011082429

/-! ## A252962.P2473879584590275985

`record[A252961(A329854(n))]`
-/

namespace A252962.P2473879584590275985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A329854 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252962.P2473879584590275985

/-! ## A252962.P11856120360579917264

`record[A252961(Δ[A175826(n)])]`
-/

namespace A252962.P11856120360579917264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175826 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252962.P11856120360579917264

/-! ## A252962.P9146583250328763400

`record[A252961(A056536(n+1))]`
-/

namespace A252962.P9146583250328763400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252962.P9146583250328763400

/-!
# A252963: Number of (2+2) X (n+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252963, there is no canonical definition to state claims against.
-/

/-! ## A252963.P14230688326740182460

`A252961(∑[n+1]+2)`
-/

namespace A252963.P14230688326740182460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252963.P14230688326740182460

/-!
# A252964: Number of (3+2) X (n+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252964, there is no canonical definition to state claims against.
-/

/-! ## A252964.P17558610642773899476

`A252961(∑[n+2]+4)`
-/

namespace A252964.P17558610642773899476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252964.P17558610642773899476

/-!
# A252965: Number of (4+2)X(n+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252965, there is no canonical definition to state claims against.
-/

/-! ## A252965.P793236742351521944

`A252961(∑[n+3]+7)`
-/

namespace A252965.P793236742351521944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252965.P793236742351521944

/-!
# A252966: Number of (5+2)X(n+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252966, there is no canonical definition to state claims against.
-/

/-! ## A252966.P13676248256370513110

`A252961(A167499(n+3))`
-/

namespace A252966.P13676248256370513110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A167499 (n + 3)).toNat

end

end A252966.P13676248256370513110

/-!
# A252967: Number of (6+2)X(n+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252967, there is no canonical definition to state claims against.
-/

/-! ## A252967.P14838573956065796749

`A252961(∑[n+5]+16)`
-/

namespace A252967.P14838573956065796749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A252967.P14838573956065796749

/-!
# A252968: Number of (7+2)X(n+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252968, there is no canonical definition to state claims against.
-/

/-! ## A252968.P11719228763510151436

`A252961(C(n+7, 2)+7)`
-/

namespace A252968.P11719228763510151436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (Nat.choose (n + 7) 2 + 7)

end

end A252968.P11719228763510151436

/-!
# A252969: Number of n X n nonnegative integer arrays with upper left 0 and lower right n+n-5 and value increasing by 0 or 1 with every step right or down.

The programs for A252969, there is no canonical definition to state claims against.
-/

/-! ## A252969.P15222014303350733517

`A252821(n+1)-A252813(n+1)`
-/

namespace A252969.P15222014303350733517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252821 (n + 1) - A252813 (n + 1)

end

end A252969.P15222014303350733517

/-! ## A252969.P3666998369737464779

`A252821(n+1)-A252820(A001844(n))`
-/

namespace A252969.P3666998369737464779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252821 (n + 1) - A252820 (A001844 n).toNat

end

end A252969.P3666998369737464779

/-! ## A252969.P5751882574360266370

`A252828(A001844(n))-A252813(n+1)`
-/

namespace A252969.P5751882574360266370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (A001844 n).toNat - A252813 (n + 1)

end

end A252969.P5751882574360266370

/-! ## A252969.P10499025657686138273

`A252976((n+1)²+n²)`
-/

namespace A252969.P10499025657686138273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252976 ((n + 1) ^ 2 + n ^ 2)

end

end A252969.P10499025657686138273

/-!
# A252970: Number of nX2 nonnegative integer arrays with upper left 0 and lower right n+2-5 and value increasing by 0 or 1 with every step right or down.

The programs for A252970, the canonical program `A252970.P17127633440235983922` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252970 has offset 1).

The definition of A252970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252970.P17127633440235983922

`∑[C(n, 5)+(∑[n]-2)*C(n, 2)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A252970

/-- `∑[C(n, 5)+(∑[n]-2)*C(n, 2)]` -/
def P17127633440235983922.Spec : Prop :=
  ∀ n, P17127633440235983922.a n = A252970 (n + 1)

theorem P17127633440235983922.correct : P17127633440235983922.Spec := by
  intro n
  simp only [A252970, Nat.add_sub_cancel]

end A252970

/-! ## A252970.P10570670854555629093

`ogf((x^2+6x^3-9x^4+3x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A252970.P10570670854555629093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 6, -9, 3] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A252970.P10570670854555629093

namespace A252970

/-- `ogf((x^2+6x^3-9x^4+3x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P10570670854555629093.Spec : Prop :=
  ∀ n, P10570670854555629093.a n = A252970 (n + 1)

end A252970

/-! ## A252970.P12637234163542921970

`(n+1)*n*(n-1)*((n+1)^3+24*(n+1)²+65*(n+1)-318)/720`
-/

namespace A252970.P12637234163542921970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n : ℚ) * (((n : ℤ) - 1 : ℚ) * ((((n + 1) ^ 3 + 24 * (n + 1) ^ 2 + 65 * (n + 1) : ℤ) - 318 : ℚ) / 720)))

end

end A252970.P12637234163542921970

namespace A252970

/-- `(n+1)*n*(n-1)*((n+1)^3+24*(n+1)²+65*(n+1)-318)/720` -/
def P12637234163542921970.Spec : Prop :=
  ∀ n, P12637234163542921970.a n = (A252970 (n + 1) : ℚ)

end A252970

/-! ## A252970.P7910133342885501438

`∑[A239352(n)+C(n, 5)]`
-/

namespace A252970.P7910133342885501438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239352 n + (Nat.choose n 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252970.P7910133342885501438

namespace A252970

/-- `∑[A239352(n)+C(n, 5)]` -/
def P7910133342885501438.Spec : Prop :=
  ∀ n, P7910133342885501438.a n = A252970 (n + 1)

end A252970

/-! ## A252970.P16253468077141871005

`∑[A056078(n+1)-C(n, 2)]`
-/

namespace A252970.P16253468077141871005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056078 (n + 1) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252970.P16253468077141871005

namespace A252970

/-- `∑[A056078(n+1)-C(n, 2)]` -/
def P16253468077141871005.Spec : Prop :=
  ∀ n, P16253468077141871005.a n = A252970 (n + 1)

end A252970

/-! ## A252970.P2738325942618740375

`∑[A000389(n)+(∑[n]-2)*C(n, 2)]`
-/

namespace A252970.P2738325942618740375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2) * (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252970.P2738325942618740375

namespace A252970

/-- `∑[A000389(n)+(∑[n]-2)*C(n, 2)]` -/
def P2738325942618740375.Spec : Prop :=
  ∀ n, P2738325942618740375.a n = A252970 (n + 1)

end A252970

/-! ## A252970.P12262482777899315185

`∑[A239352(n)+A000389(n)]`
-/

namespace A252970.P12262482777899315185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239352 n + A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252970.P12262482777899315185

namespace A252970

/-- `∑[A239352(n)+A000389(n)]` -/
def P12262482777899315185.Spec : Prop :=
  ∀ n, P12262482777899315185.a n = A252970 (n + 1)

end A252970

/-! ## A252970.P15008491666086942723

`∑[A056078(n+1)-A161680(n)]`
-/

namespace A252970.P15008491666086942723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056078 (n + 1) - A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252970.P15008491666086942723

namespace A252970

/-- `∑[A056078(n+1)-A161680(n)]` -/
def P15008491666086942723.Spec : Prop :=
  ∀ n, P15008491666086942723.a n = A252970 (n + 1)

end A252970

/-! ## A252970.P2453200797459654731

`A252822(n+1)-A252814(n+1)`
-/

namespace A252970.P2453200797459654731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252822 (n + 1) - A252814 (n + 1)

end

end A252970.P2453200797459654731

namespace A252970

/-- `A252822(n+1)-A252814(n+1)` -/
def P2453200797459654731.Spec : Prop :=
  ∀ n, P2453200797459654731.a n = A252970 (n + 1)

end A252970

/-! ## A252970.P16097665573230234390

`Δ[A056005(n)]-∑[A161680(n)]`
-/

namespace A252970.P16097665573230234390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A252970.P16097665573230234390

namespace A252970

/-- `Δ[A056005(n)]-∑[A161680(n)]` -/
def P16097665573230234390.Spec : Prop :=
  ∀ n, P16097665573230234390.a n = A252970 (n + 1)

end A252970

/-! ## A252970.P1698596245466220018

`Δ[A056005(n)-A000332(n+1)]`
-/

namespace A252970.P1698596245466220018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056005 n - A000332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A252970.P1698596245466220018

namespace A252970

/-- `Δ[A056005(n)-A000332(n+1)]` -/
def P1698596245466220018.Spec : Prop :=
  ∀ n, P1698596245466220018.a n = A252970 (n + 1)

end A252970

/-! ## A252970.P17878683987777882023

`∑[A056078(n+1)]-Δ[A000332(n+1)]`
-/

namespace A252970.P17878683987777882023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A252970.P17878683987777882023

namespace A252970

/-- `∑[A056078(n+1)]-Δ[A000332(n+1)]` -/
def P17878683987777882023.Spec : Prop :=
  ∀ n, P17878683987777882023.a n = A252970 (n + 1)

end A252970

/-! ## A252970.P13735751831057650093

`A212633(A055999(n+4))`
-/

namespace A252970.P13735751831057650093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (A055999 (n + 4)).toNat

end

end A252970.P13735751831057650093

namespace A252970

/-- `A212633(A055999(n+4))` -/
def P13735751831057650093.Spec : Prop :=
  ∀ n, P13735751831057650093.a n = A252970 (n + 1)

end A252970

/-!
# A252971: Number of nX3 nonnegative integer arrays with upper left 0 and lower right n+3-5 and value increasing by 0 or 1 with every step right or down.

The programs for A252971, there is no canonical definition to state claims against.
-/

/-! ## A252971.P4195749876322887614

`A252823(1+n)-A252815(n+1)`
-/

namespace A252971.P4195749876322887614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252823 (1 + n) - A252815 (n + 1)

end

end A252971.P4195749876322887614

/-! ## A252971.P4786072309744794055

`A252823(n+1)-(A252871(n+1)+A062748(n))`
-/

namespace A252971.P4786072309744794055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252823 (n + 1) - (A252871 (n + 1) + A062748 n)

end

end A252971.P4786072309744794055

/-! ## A252971.P7201988871208801979

`A252823(n+1)-(A252871(n+1)+∑[A000217(n+2)])`
-/

namespace A252971.P7201988871208801979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252823 (n + 1) - (A252871 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252971.P7201988871208801979

/-! ## A252971.P13991935016971110610

`A252823(n+1)-(A202752(n+2)+C(n, 2))`
-/

namespace A252971.P13991935016971110610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252823 (n + 1) - (A202752 (n + 2) + (Nat.choose n 2 : ℤ))

end

end A252971.P13991935016971110610

/-! ## A252971.P17774096716639915446

`A252823(n+1)-(A202752(n+2)+A161680(n))`
-/

namespace A252971.P17774096716639915446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252823 (n + 1) - (A202752 (n + 2) + A161680 n)

end

end A252971.P17774096716639915446

/-! ## A252971.P1645557197392168925

`A252823(n+1)-(A229423(n+1)-A000292(n+2))`
-/

namespace A252971.P1645557197392168925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252823 (n + 1) - (A229423 (n + 1) - A000292 (n + 2))

end

end A252971.P1645557197392168925

/-! ## A252971.P1887237207594346771

`A252823(n+1)-(A202752(n+2)+A055998(n)-3*n)`
-/

namespace A252971.P1887237207594346771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252823 (n + 1) - (A202752 (n + 2) + (A055998 n - (3 * n : ℤ)))

end

end A252971.P1887237207594346771

/-! ## A252971.P7491539190688422791

`A252823(n+1)-A252820(A167614(n+1))`
-/

namespace A252971.P7491539190688422791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252823 (n + 1) - A252820 (A167614 (n + 1)).toNat

end

end A252971.P7491539190688422791

/-! ## A252971.P1890519517481213290

`A252823(n+1)-A252820(A046691(n)+7)`
-/

namespace A252971.P1890519517481213290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252823 (n + 1) - A252820 (A046691 n + 7).toNat

end

end A252971.P1890519517481213290

/-!
# A252972: Number of nX4 nonnegative integer arrays with upper left 0 and lower right n+4-5 and value increasing by 0 or 1 with every step right or down.

The programs for A252972, there is no canonical definition to state claims against.
-/

/-! ## A252972.P12669987461084527294

`A252824(1+n)-A252816(n+1)`
-/

namespace A252972.P12669987461084527294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252824 (1 + n) - A252816 (n + 1)

end

end A252972.P12669987461084527294

/-! ## A252972.P13332107435594817740

`A252824(n+1)-(A252872(n+1)+A063258(n))`
-/

namespace A252972.P13332107435594817740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252824 (n + 1) - (A252872 (n + 1) + A063258 n)

end

end A252972.P13332107435594817740

/-! ## A252972.P10982834980966118161

`A252824(n+1)-(A229424(n+1)-(A063258(n)+1))`
-/

namespace A252972.P10982834980966118161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252824 (n + 1) - (A229424 (n + 1) - (A063258 n + 1))

end

end A252972.P10982834980966118161

/-! ## A252972.P12456000235636819546

`A252824(n+1)-A252820(A052905(n)+9)`
-/

namespace A252972.P12456000235636819546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252824 (n + 1) - A252820 (A052905 n + 9).toNat

end

end A252972.P12456000235636819546

/-! ## A252972.P5943840669350059447

`A252824(n+1)-A252820(A055998(n+1)+7)`
-/

namespace A252972.P5943840669350059447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252824 (n + 1) - A252820 (A055998 (n + 1) + 7).toNat

end

end A252972.P5943840669350059447

/-!
# A252973: Number of nX5 nonnegative integer arrays with upper left 0 and lower right n+5-5 and value increasing by 0 or 1 with every step right or down.

The programs for A252973, there is no canonical definition to state claims against.
-/

/-! ## A252973.P10512410458744575134

`A252825(n+1)-A252817(n+1)`
-/

namespace A252973.P10512410458744575134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252825 (n + 1) - A252817 (n + 1)

end

end A252973.P10512410458744575134

/-! ## A252973.P13947638810388127914

`A252825(n+1)-(A252873(n+1)+A062988(n))`
-/

namespace A252973.P13947638810388127914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252825 (n + 1) - (A252873 (n + 1) + A062988 n)

end

end A252973.P13947638810388127914

/-! ## A252973.P7115153618587530193

`A252825(n+1)-A252820(A167499(n+3))`
-/

namespace A252973.P7115153618587530193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252825 (n + 1) - A252820 (A167499 (n + 3)).toNat

end

end A252973.P7115153618587530193

/-! ## A252973.P533841886730054122

`A252825(n+1)-A252820(A155212(n)+13)`
-/

namespace A252973.P533841886730054122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252825 (n + 1) - A252820 (A155212 n + 13).toNat

end

end A252973.P533841886730054122

/-! ## A252973.P12721057686897548556

`A252825(n+1)-A252820(A046691(n+3))`
-/

namespace A252973.P12721057686897548556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252825 (n + 1) - A252820 (A046691 (n + 3)).toNat

end

end A252973.P12721057686897548556

/-!
# A252974: Number of nX6 nonnegative integer arrays with upper left 0 and lower right n+6-5 and value increasing by 0 or 1 with every step right or down.

The programs for A252974, there is no canonical definition to state claims against.
-/

/-! ## A252974.P7533417850213109170

`A252826(1+n)-A252818(n+1)`
-/

namespace A252974.P7533417850213109170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252826 (1 + n) - A252818 (n + 1)

end

end A252974.P7533417850213109170

/-! ## A252974.P10566754449670484732

`A252826(n+1)-(A229426(n+1)-C(n+7, 6))`
-/

namespace A252974.P10566754449670484732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252826 (n + 1) - (A229426 (n + 1) - (Nat.choose (n + 7) 6 : ℤ))

end

end A252974.P10566754449670484732

/-! ## A252974.P11106976746396762323

`A252826(n+1)-(A166810(n+1)+A252874(n+1)+1)`
-/

namespace A252974.P11106976746396762323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252826 (n + 1) - (A166810 (n + 1) + (A252874 (n + 1) + 1))

end

end A252974.P11106976746396762323

/-! ## A252974.P4313675336104695147

`A252826(n+1)-(A252820(A034856(n+4)+8)+0)`
-/

namespace A252974.P4313675336104695147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252826 (n + 1) - (A252820 (A034856 (n + 4) + 8).toNat + 0)

end

end A252974.P4313675336104695147

/-! ## A252974.P13197743847402739134

`A252826(n+1)-A252820(A055998(n)+A008585(n+7))`
-/

namespace A252974.P13197743847402739134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252826 (n + 1) - A252820 (A055998 n + A008585 (n + 7)).toNat

end

end A252974.P13197743847402739134

/-! ## A252974.P14673961744506189196

`A252826(n+1)-A252820(A052905(n+3))`
-/

namespace A252974.P14673961744506189196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252826 (n + 1) - A252820 (A052905 (n + 3)).toNat

end

end A252974.P14673961744506189196

/-! ## A252974.P13287493986317525938

`A252826(n+1)-A252820(A000124(n+6)-6)`
-/

namespace A252974.P13287493986317525938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252826 (n + 1) - A252820 (A000124 (n + 6) - 6).toNat

end

end A252974.P13287493986317525938

/-!
# A252975: Number of nX7 nonnegative integer arrays with upper left 0 and lower right n+7-5 and value increasing by 0 or 1 with every step right or down.

The programs for A252975, there is no canonical definition to state claims against.
-/

/-! ## A252975.P4464922159080552774

`A252827(n+1)-A252819(n+1)`
-/

namespace A252975.P4464922159080552774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252827 (n + 1) - A252819 (n + 1)

end

end A252975.P4464922159080552774

/-! ## A252975.P9925337041374167853

`A252976(A000217(n+6)+7)`
-/

namespace A252975.P9925337041374167853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252976 (A000217 (n + 6) + 7).toNat

end

end A252975.P9925337041374167853

/-! ## A252975.P8275094330212361340

`A252976(A374008(n+1))`
-/

namespace A252975.P8275094330212361340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252976 (A374008 (n + 1)).toNat

end

end A252975.P8275094330212361340

/-!
# A252976: T(n,k) = Number of n X k nonnegative integer arrays with upper left 0 and lower right n+k-5 and value increasing by 0 or 1 with every step right or down.

The programs for A252976, there is no canonical definition to state claims against.
-/

/-! ## A252976.P5246199293297309149

`A252828(n+1)-A252820(n+1)`
-/

namespace A252976.P5246199293297309149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (n + 1) - A252820 (n + 1)

end

end A252976.P5246199293297309149

/-! ## A252976.P13488750308876791792

`A252828(n+1)-(A252876(n+1)+A014430(n))`
-/

namespace A252976.P13488750308876791792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (n + 1) - (A252876 (n + 1) + A014430 n)

end

end A252976.P13488750308876791792

/-! ## A252976.P7019735564817677740

`A252828(n+1)+A014410(n+2)-A229428(n+1)`
-/

namespace A252976.P7019735564817677740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (n + 1) + (A014410 (n + 2) - A229428 (n + 1))

end

end A252976.P7019735564817677740

/-! ## A252976.P17781636603817514014

`A252828(n+1)-(A229428(n+1)-(A014430(n)+1))`
-/

namespace A252976.P17781636603817514014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (n + 1) - (A229428 (n + 1) - (A014430 n + 1))

end

end A252976.P17781636603817514014

/-! ## A252976.P6175841672094619851

`A252828(n+1)-(A229428(n+1)-sqrt(A014719(n+2)))`
-/

namespace A252976.P6175841672094619851
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252828 (n + 1) : ℝ) - ((A229428 (n + 1) : ℝ) - Real.sqrt (A014719 (n + 2) : ℝ))

end

end A252976.P6175841672094619851

/-! ## A252976.P17485983617653507990

`A252828(n+1)-(A229428(n+1)-A074909(A014132(n+1)))`
-/

namespace A252976.P17485983617653507990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (n + 1) - (A229428 (n + 1) - A074909 (A014132 (n + 1)).toNat)

end

end A252976.P17485983617653507990

/-! ## A252976.P17609008784600340078

`A252828(n+1)-(A229428(n+1)-A135278(A007401(n+1)))`
-/

namespace A252976.P17609008784600340078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252828 (n + 1) - (A229428 (n + 1) - A135278 (A007401 (n + 1)).toNat)

end

end A252976.P17609008784600340078

/-!
# A252977: Number of n X n nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 2 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252977, there is no canonical definition to state claims against.
-/

/-! ## A252977.P6844896728489783322

`A252983((n+1)²+n²)`
-/

namespace A252977.P6844896728489783322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 ((n + 1) ^ 2 + n ^ 2)

end

end A252977.P6844896728489783322

/-!
# A252978: Number of n X 3 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 2 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252978, the canonical program `A252978.P8041188615879667748` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252978 has offset 1).

The definition of A252978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252978.P8041188615879667748

`ogf((1-2x+x^2+32x^3+169x^4+151x^5+48x^6)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A252978

/-- `ogf((1-2x+x^2+32x^3+169x^4+151x^5+48x^6)/(1-3x+3x^2-x^3))` -/
def P8041188615879667748.Spec : Prop :=
  ∀ n, P8041188615879667748.a n = A252978 (n + 1)

theorem P8041188615879667748.correct : P8041188615879667748.Spec := by
  intro n
  simp only [A252978, Nat.add_sub_cancel]

end A252978

/-! ## A252978.P10385977861172540451

`A252983(∑[n+2]+4)`
-/

namespace A252978.P10385977861172540451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252978.P10385977861172540451

namespace A252978

/-- `A252983(∑[n+2]+4)` -/
def P10385977861172540451.Spec : Prop :=
  ∀ n, P10385977861172540451.a n = A252978 (n + 1)

end A252978

/-!
# A252979: Number of n X 4 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 2 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252979, there is no canonical definition to state claims against.
-/

/-! ## A252979.P2225432023666302402

`A252983(A374004(n+1))`
-/

namespace A252979.P2225432023666302402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A374004 (n + 1)).toNat

end

end A252979.P2225432023666302402

/-! ## A252979.P18310499992297483938

`A252983(A141214(n+1))`
-/

namespace A252979.P18310499992297483938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A141214 (n + 1)).toNat

end

end A252979.P18310499992297483938

/-!
# A252980: Number of n X 5 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 2 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252980, there is no canonical definition to state claims against.
-/

/-! ## A252980.P10110177014439872785

`A252983(A374005(n+1))`
-/

namespace A252980.P10110177014439872785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A374005 (n + 1)).toNat

end

end A252980.P10110177014439872785

/-!
# A252981: Number of nX6 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 2 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252981, there is no canonical definition to state claims against.
-/

/-! ## A252981.P3666776199731284854

`A252983(A374007(n+1))`
-/

namespace A252981.P3666776199731284854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A374007 (n + 1)).toNat

end

end A252981.P3666776199731284854

/-!
# A252982: Number of nX7 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 2 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252982, there is no canonical definition to state claims against.
-/

/-! ## A252982.P14512939715414614038

`A252983(A374008(n+1))`
-/

namespace A252982.P14512939715414614038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A374008 (n + 1)).toNat

end

end A252982.P14512939715414614038

/-!
# A252983: T(n,k)=Number of nXk nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 2 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252983, there is no canonical definition to state claims against.
-/

/-! ## A252983.P8869572842720497858

`A297113(A322730(A253223(n+1)))+A253223(n+1)`
-/

namespace A252983.P8869572842720497858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (A322730 (A253223 (n + 1)).toNat).toNat + A253223 (n + 1)

end

end A252983.P8869572842720497858

/-! ## A252983.P3593080734197724542

`A028819(A253223(n+1)+A028240(n)!)`
-/

namespace A252983.P3593080734197724542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028819 (A253223 (n + 1) + (Nat.factorial (A028240 n).toNat : ℤ)).toNat

end

end A252983.P3593080734197724542

/-! ## A252983.P169443255358419749

`A161680(A182984(2*n+1))%A317160(n+2)`
-/

namespace A252983.P169443255358419749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161680 (A182984 (2 * n + 1)).toNat) (A317160 (n + 2))

end

end A252983.P169443255358419749

/-!
# A252987: Number of (n+2)X(1+2) 0..2 arrays with every consecutive three elements in every row and column having exactly 2 distinct values, in every diagonal 1 or 2 distinct values, in every antidiagonal 2 or 3 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252987, there is no canonical definition to state claims against.
-/

/-! ## A252987.P10578675996654034797

`A252993(∑[n]+1)`
-/

namespace A252987.P10578675996654034797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252987.P10578675996654034797

/-! ## A252987.P16183780902679964444

`record[A252993(A056534(n+1))]`
-/

namespace A252987.P16183780902679964444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252987.P16183780902679964444

/-! ## A252987.P9085743688093285958

`record[A252993(A166017(n+1))]`
-/

namespace A252987.P9085743688093285958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (A166017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252987.P9085743688093285958

/-! ## A252987.P5220821595642752411

`record[A252993(A254052(n+1))]`
-/

namespace A252987.P5220821595642752411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252987.P5220821595642752411

/-! ## A252987.P13587747313983836540

`record[A252993(A286245(n+1))]`
-/

namespace A252987.P13587747313983836540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (A286245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252987.P13587747313983836540

/-!
# A252988: Number of (n+2)X(2+2) 0..2 arrays with every consecutive three elements in every row and column having exactly 2 distinct values, in every diagonal 1 or 2 distinct values, in every antidiagonal 2 or 3 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252988, there is no canonical definition to state claims against.
-/

/-! ## A252988.P5593845830026204958

`A252993(∑[n+2])`
-/

namespace A252988.P5593845830026204958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252988.P5593845830026204958

/-! ## A252988.P15985404477895720939

`record[A252993(Δ[A003453(n+5)])]`
-/

namespace A252988.P15985404477895720939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252988.P15985404477895720939

/-! ## A252988.P6964077783232188672

`record[A252993(A166017(n+1)+1)]`
-/

namespace A252988.P6964077783232188672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (A166017 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252988.P6964077783232188672

/-! ## A252988.P9607981347814946639

`record[A010054(n)*A252993(n+2)]`
-/

namespace A252988.P9607981347814946639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252993 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252988.P9607981347814946639

/-! ## A252988.P16117947133027863986

`record[A252993(n+3)/A157208(n+3)]`
-/

namespace A252988.P16117947133027863986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252993 (n + 3) : ℚ) / (A157208 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252988.P16117947133027863986

/-!
# A252989: Number of (n+2)X(3+2) 0..2 arrays with every consecutive three elements in every row and column having exactly 2 distinct values, in every diagonal 1 or 2 distinct values, in every antidiagonal 2 or 3 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252989, there is no canonical definition to state claims against.
-/

/-! ## A252989.P723751527080794806

`A252993(∑[n+3]+1)`
-/

namespace A252989.P723751527080794806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252989.P723751527080794806

/-!
# A252990: Number of (n+2)X(4+2) 0..2 arrays with every consecutive three elements in every row and column having exactly 2 distinct values, in every diagonal 1 or 2 distinct values, in every antidiagonal 2 or 3 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252990, there is no canonical definition to state claims against.
-/

/-! ## A252990.P17921245588286522161

`A252993(∑[n+4]+3)`
-/

namespace A252990.P17921245588286522161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A252990.P17921245588286522161

/-!
# A252991: Number of (n+2)X(5+2) 0..2 arrays with every consecutive three elements in every row and column having exactly 2 distinct values, in every diagonal 1 or 2 distinct values, in every antidiagonal 2 or 3 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252991, there is no canonical definition to state claims against.
-/

/-! ## A252991.P7403811902667053352

`A252993(Δ[A264443(n)])`
-/

namespace A252991.P7403811902667053352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (f1 (n + 1) - f1 n).toNat

end

end A252991.P7403811902667053352

/-!
# A252992: Number of (n+2)X(6+2) 0..2 arrays with every consecutive three elements in every row and column having exactly 2 distinct values, in every diagonal 1 or 2 distinct values, in every antidiagonal 2 or 3 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252992, there is no canonical definition to state claims against.
-/

/-! ## A252992.P11673695221778763907

`A252993(A374007(n+1))`
-/

namespace A252992.P11673695221778763907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (A374007 (n + 1)).toNat

end

end A252992.P11673695221778763907

/-!
# A252994: Multiples of 26.

The programs for A252994, the canonical program `A252994.P11791628832872652573` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252994 has offset 0).

The definition of A252994 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A252994.anchor (n : ℕ) : A252994 n = 26 * n` in `Proof.A252.A252994`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A252994.P11791628832872652573

`26*n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A252994

/-- `26*n` -/
def P11791628832872652573.Spec : Prop :=
  ∀ n, (P11791628832872652573.a n : ℤ) = A252994 n

theorem P11791628832872652573.correct : P11791628832872652573.Spec := by
  intro n
  simp only [A252994]

end A252994

/-!
# A252995: Numbers n such that the n-th odd composite number is 3n.

The programs for A252995, there is no canonical definition to state claims against.
-/

/-! ## A252995.P9460917582178493827

`eq[A014682(n), A104275(n+1)]`
-/

namespace A252995.P9460917582178493827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252995.P9460917582178493827

/-! ## A252995.P14692725675370279606

`eq[n, A109815(A014076(n+1))]`
-/

namespace A252995.P14692725675370279606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (A014076 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A252995.P14692725675370279606

/-! ## A252995.P5048700335819906862

`eq[A028242(n), A084360(A016789(n))]`
-/

namespace A252995.P5048700335819906862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A016789 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252995.P5048700335819906862

/-! ## A252995.P9173092293743118629

`eq[A000720(A008486(n)), A152271(n)]`
-/

namespace A252995.P9173092293743118629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252995.P9173092293743118629

/-! ## A252995.P1759112238933237700

`eq[A018252(A073432(n+1)), A001281(n)]`
-/

namespace A252995.P1759112238933237700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A073432 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252995.P1759112238933237700

/-!
# A252998: Number of n X n nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 3 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252998, there is no canonical definition to state claims against.
-/

/-! ## A252998.P11995931446723452074

`A253004(2*n²+1)`
-/

namespace A252998.P11995931446723452074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (2 * n ^ 2 + 1)

end

end A252998.P11995931446723452074

/-!
# A252999: Number of n X 3 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 3 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252999, the canonical program `A252999.P12445394606202176532` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252999 has offset 1).

The definition of A252999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252999.P12445394606202176532

`ogf((x^3+30x^4+149x^5+112x^6+28x^7)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A252999

/-- `ogf((x^3+30x^4+149x^5+112x^6+28x^7)/(1-4x+6x^2-4x^3+x^4))` -/
def P12445394606202176532.Spec : Prop :=
  ∀ n, P12445394606202176532.a n = A252999 (n + 1)

theorem P12445394606202176532.correct : P12445394606202176532.Spec := by
  intro n
  simp only [A252999, Nat.add_sub_cancel]

end A252999

/-! ## A252999.P11512312058391463711

`A253004(∑[n+2]+4)`
-/

namespace A252999.P11512312058391463711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252999.P11512312058391463711

namespace A252999

/-- `A253004(∑[n+2]+4)` -/
def P11512312058391463711.Spec : Prop :=
  ∀ n, P11512312058391463711.a n = A252999 (n + 1)

end A252999

