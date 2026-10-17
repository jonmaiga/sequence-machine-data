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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C025

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

/-! ## A252900.P1805171700365315532

`A252904(A133263(n+1))%A052098(n+1)`
-/

namespace A252900.P1805171700365315532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252904 (A133263 (n + 1)).toNat) (A052098 (n + 1))

end

end A252900.P1805171700365315532

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

/-! ## A252900.P15848569921312110104

`char[A014681(n)]*A252904(A000096(n+1))`
-/

namespace A252900.P15848569921312110104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A252904 (A000096 (n + 1)).toNat

end

end A252900.P15848569921312110104

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

/-! ## A252901.P14018051721674018088

`lcm(2, A252904(A167614(n+1)))`
-/

namespace A252901.P14018051721674018088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252904 (A167614 (n + 1)).toNat)

end

end A252901.P14018051721674018088

/-! ## A252901.P9439016255762575180

`A252904(A167614(n+1))+A084904(n)`
-/

namespace A252901.P9439016255762575180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252904 (A167614 (n + 1)).toNat + A084904 n

end

end A252901.P9439016255762575180

/-! ## A252901.P15464811222455262490

`A252904(A167614(n+1))+A185284(n)`
-/

namespace A252901.P15464811222455262490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252904 (A167614 (n + 1)).toNat + A185284 n

end

end A252901.P15464811222455262490

/-! ## A252901.P18139021347357932590

`A256756(n)+A252904(A167614(n+1))`
-/

namespace A252901.P18139021347357932590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n + A252904 (A167614 (n + 1)).toNat

end

end A252901.P18139021347357932590

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

/-! ## A252903.P6500452766175644238

`A252904(A167499(n+3))`
-/

namespace A252903.P6500452766175644238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252904 (A167499 (n + 3)).toNat

end

end A252903.P6500452766175644238

/-! ## A252903.P1817021788735742954

`A252904(A155212(n)+13)`
-/

namespace A252903.P1817021788735742954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252904 (A155212 n + 13).toNat

end

end A252903.P1817021788735742954

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

/-! ## A252905.P10541484301808260057

`and(-1, A252910(A000124(n)))`
-/

namespace A252905.P10541484301808260057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252910 (A000124 n).toNat)

end

end A252905.P10541484301808260057

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

/-! ## A252907.P14681253101764461092

`and(-1, A252910(A167614(n+1)))`
-/

namespace A252907.P14681253101764461092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252910 (A167614 (n + 1)).toNat)

end

end A252907.P14681253101764461092

/-! ## A252907.P3568860985889522780

`A308428(n+1)+A252910(A167614(n+1))`
-/

namespace A252907.P3568860985889522780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308428 (n + 1) + A252910 (A167614 (n + 1)).toNat

end

end A252907.P3568860985889522780

/-! ## A252907.P9955689639477965987

`A308428(n+1)+A252910(A034856(n+2))`
-/

namespace A252907.P9955689639477965987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308428 (n + 1) + A252910 (A034856 (n + 2)).toNat

end

end A252907.P9955689639477965987

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

/-! ## A252908.P574449243643029199

`A252910(A374004(n+1))`
-/

namespace A252908.P574449243643029199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252910 (A374004 (n + 1)).toNat

end

end A252908.P574449243643029199

/-! ## A252908.P3273777369521967721

`A252910(A155212(n)+5)`
-/

namespace A252908.P3273777369521967721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252910 (A155212 n + 5).toNat

end

end A252908.P3273777369521967721

/-! ## A252908.P12482816075850810755

`A252910(A056000(n)+7)`
-/

namespace A252908.P12482816075850810755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252910 (A056000 n + 7).toNat

end

end A252908.P12482816075850810755

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

/-! ## A252909.P2891059098207393808

`A252910(Δ[A264443(n)])`
-/

namespace A252909.P2891059098207393808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252910 (f1 (n + 1) - f1 n).toNat

end

end A252909.P2891059098207393808

/-! ## A252909.P12359092365209230370

`A252910(A374005(n+1))`
-/

namespace A252909.P12359092365209230370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252910 (A374005 (n + 1)).toNat

end

end A252909.P12359092365209230370

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

/-! ## A252914.P2950040900625124126

`A252917(∑[n+2])`
-/

namespace A252914.P2950040900625124126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252914.P2950040900625124126

/-! ## A252914.P10075718964998313840

`A252917(A000096(n+1))+A025469(n)`
-/

namespace A252914.P10075718964998313840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (A000096 (n + 1)).toNat + A025469 n

end

end A252914.P10075718964998313840

/-! ## A252914.P7323406253031762611

`A252917(A000096(n+1))-A026815(n)`
-/

namespace A252914.P7323406253031762611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (A000096 (n + 1)).toNat - A026815 n

end

end A252914.P7323406253031762611

/-! ## A252914.P15571831815446267425

`char[A014681(n)]*A252917(A000096(n+1))`
-/

namespace A252914.P15571831815446267425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A252917 (A000096 (n + 1)).toNat

end

end A252914.P15571831815446267425

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

/-! ## A252919.P16450250042223550548

`or(A205295(n), A252917(A167487(n)-5))`
-/

namespace A252919.P16450250042223550548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A205295 n) (A252917 (A167487 n - 5).toNat)

end

end A252919.P16450250042223550548

/-! ## A252919.P3642717077937617723

`A252917(A249725(4*n+2))+A193581(n)`
-/

namespace A252919.P3642717077937617723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (A249725 (4 * n + 2)).toNat + A193581 n

end

end A252919.P3642717077937617723

/-! ## A252919.P13763867442845354593

`or(A252917(A167487(n)-5), A333275(n+1))`
-/

namespace A252919.P13763867442845354593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A252917 (A167487 n - 5).toNat) (A333275 (n + 1))

end

end A252919.P13763867442845354593

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

/-! ## A252920.P927435980679743261

`or(∑{e}[n+1, #-1], A252917(A167614(n+1)))`
-/

namespace A252920.P927435980679743261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)) (A252917 (A167614 (n + 1)).toNat)

end

end A252920.P927435980679743261

/-! ## A252920.P3910051894563532680

`A252917(A167614(n+1))+A025443(n)`
-/

namespace A252920.P3910051894563532680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (A167614 (n + 1)).toNat + A025443 n

end

end A252920.P3910051894563532680

/-!
# A252921: Number of (4+2)X(n+2) 0..3 arrays with every consecutive three elements in every row having 2 or 3 distinct values, in every column 1 or 2 distinct values, in every diagonal 2 distinct values, and in every antidiagonal 2 distinct values, and new values 0 upwards introduced in row major order.

The programs for A252921, there is no canonical definition to state claims against.
-/

/-! ## A252921.P8350769305146549023

`A252917(∑[n+3]+7)`
-/

namespace A252921.P8350769305146549023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252917 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252921.P8350769305146549023

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

/-! ## A252923.P663385644210511617

`A178334(n)*A252930(A001844(n))`
-/

namespace A252923.P663385644210511617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A252930 (A001844 n).toNat

end

end A252923.P663385644210511617

/-! ## A252923.P12840956233082186794

`A252930(A001844(n))%A012810(n)`
-/

namespace A252923.P12840956233082186794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252930 (A001844 n).toNat) (A012810 n)

end

end A252923.P12840956233082186794

/-! ## A252923.P10389784751312235049

`lcm(A033999(n), A252930(A001844(n)))`
-/

namespace A252923.P10389784751312235049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252930 (A001844 n).toNat)

end

end A252923.P10389784751312235049

/-! ## A252923.P17658643535272392453

`A000038(n)!*A252930(A001844(n))`
-/

namespace A252923.P17658643535272392453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A252930 (A001844 n).toNat

end

end A252923.P17658643535272392453

/-!
# A252924: Number of n X 2 nonnegative integer arrays with upper left 0 and lower right n+2-6 and value increasing by 0 or 1 with every step right or down.

The programs for A252924, there is no canonical definition to state claims against.
-/

/-! ## A252924.P13623213647229370901

`A212633(A155212(n+5))`
-/

namespace A252924.P13623213647229370901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (A155212 (n + 5)).toNat

end

end A252924.P13623213647229370901

/-! ## A252924.P2071101322174522699

`A212633(A052905(n+6)-3)`
-/

namespace A252924.P2071101322174522699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (A052905 (n + 6) - 3).toNat

end

end A252924.P2071101322174522699

/-! ## A252924.P12760994303000698901

`A212633(A046691(n+7)-4)`
-/

namespace A252924.P12760994303000698901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (A046691 (n + 7) - 4).toNat

end

end A252924.P12760994303000698901

/-! ## A252924.P6469882241631294231

`A212633(A000124(n+9)-9)`
-/

namespace A252924.P6469882241631294231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (A000124 (n + 9) - 9).toNat

end

end A252924.P6469882241631294231

/-! ## A252924.P13968725688238298795

`A212633(eq[6, A219347(n)])`
-/

namespace A252924.P13968725688238298795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252924.P13968725688238298795

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

/-! ## A252925.P14781109537293952158

`A252930(A167614(n+1))+A185238(n)`
-/

namespace A252925.P14781109537293952158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A167614 (n + 1)).toNat + A185238 n

end

end A252925.P14781109537293952158

/-! ## A252925.P7684515561486413398

`A054977(n)*A252930(A167614(n+1))`
-/

namespace A252925.P7684515561486413398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A252930 (A167614 (n + 1)).toNat

end

end A252925.P7684515561486413398

/-! ## A252925.P14881182113970154350

`A252930(A167614(n+1))%A010969(n)`
-/

namespace A252925.P14881182113970154350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252930 (A167614 (n + 1)).toNat) (A010969 (n + 16))

end

end A252925.P14881182113970154350

/-! ## A252925.P15108362928081510104

`lcm(A033999(n), A252930(A167614(n+1)))`
-/

namespace A252925.P15108362928081510104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252930 (A167614 (n + 1)).toNat)

end

end A252925.P15108362928081510104

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

/-! ## A252926.P1880339049958537472

`A252930(A167614(n+2)+1)`
-/

namespace A252926.P1880339049958537472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A167614 (n + 2) + 1).toNat

end

end A252926.P1880339049958537472

/-! ## A252926.P13266378446726962363

`A252930(A167487(n+2)-3)`
-/

namespace A252926.P13266378446726962363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A167487 (n + 2) - 3).toNat

end

end A252926.P13266378446726962363

/-! ## A252926.P11257401183280706797

`A252930(A000217(n+3)+4)`
-/

namespace A252926.P11257401183280706797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A000217 (n + 3) + 4).toNat

end

end A252926.P11257401183280706797

/-! ## A252926.P2365758595811288853

`A252930(Δ[A264443(n)-n²])`
-/

namespace A252926.P2365758595811288853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (f1 (n + 1) - f1 n).toNat

end

end A252926.P2365758595811288853

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

/-! ## A252927.P9754812097532186247

`A252930(A000217(n+4)+5)`
-/

namespace A252927.P9754812097532186247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A000217 (n + 4) + 5).toNat

end

end A252927.P9754812097532186247

/-! ## A252927.P681327949589000166

`A252930(A055998(n+3)-(n-3))`
-/

namespace A252927.P681327949589000166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A055998 (n + 3) - ((n : ℤ) - 3)).toNat

end

end A252927.P681327949589000166

/-! ## A252927.P13282764859744378865

`A252930(eq[6, A004736(n+1)]-2*n)`
-/

namespace A252927.P13282764859744378865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A252927.P13282764859744378865

/-! ## A252927.P740141335464950072

`A252930(A038722(Δ[A264443(n)]))`
-/

namespace A252927.P740141335464950072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A252927.P740141335464950072

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

/-! ## A252928.P3944106684233143759

`A252930(A133263(n+5)+4)`
-/

namespace A252928.P3944106684233143759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A133263 (n + 5) + 4).toNat

end

end A252928.P3944106684233143759

/-! ## A252928.P14039172318813501950

`A252930(A000096(n+4)+7)`
-/

namespace A252928.P14039172318813501950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A000096 (n + 4) + 7).toNat

end

end A252928.P14039172318813501950

/-! ## A252928.P4845415720192294926

`A252930(A000217(n+5)+6)`
-/

namespace A252928.P4845415720192294926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A000217 (n + 5) + 6).toNat

end

end A252928.P4845415720192294926

/-! ## A252928.P6537227061573057117

`A252930(A167614(n+2)+A004275(n+7))`
-/

namespace A252928.P6537227061573057117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A167614 (n + 2) + A004275 (n + 7)).toNat

end

end A252928.P6537227061573057117

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

/-! ## A252929.P10786635086725516531

`A252930(A133263(n+6)+5)`
-/

namespace A252929.P10786635086725516531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A133263 (n + 6) + 5).toNat

end

end A252929.P10786635086725516531

/-! ## A252929.P528280990530677626

`A252930(A000124(n+6)+6)`
-/

namespace A252929.P528280990530677626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A000124 (n + 6) + 6).toNat

end

end A252929.P528280990530677626

/-! ## A252929.P2662851634160400414

`A252930(A000217(n+6)+7)`
-/

namespace A252929.P2662851634160400414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A000217 (n + 6) + 7).toNat

end

end A252929.P2662851634160400414

/-! ## A252929.P4954446093314192046

`A252930(A173036(n+6)-6)`
-/

namespace A252929.P4954446093314192046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (A173036 (n + 6) - 6).toNat

end

end A252929.P4954446093314192046

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

/-! ## A252931.P10583093881304507460

`lcm(A057077(n), A252938(A001844(n)))`
-/

namespace A252931.P10583093881304507460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A252938 (A001844 n).toNat)

end

end A252931.P10583093881304507460

/-! ## A252931.P17161411386380631292

`or(A000007(n), A252938(A001844(n)))`
-/

namespace A252931.P17161411386380631292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252938 (A001844 n).toNat)

end

end A252931.P17161411386380631292

/-!
# A252932: Number of n X 2 nonnegative integer arrays with upper left 0 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252932, the canonical program `A252932.P13722495293826231897` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252932 has offset 1).

The definition of A252932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A252932.P13722495293826231897

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=13, a(3)=34, a(4)=83, a(5)=176`

The canonical program, it is in `Seq.B000.C027`.
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

/-! ## A252932.P10150748742331582693

`A252938(A000096(n)+3)%A099317(n+1)`
-/

namespace A252932.P10150748742331582693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252938 (A000096 n + 3).toNat) (A099317 (n + 1))

end

end A252932.P10150748742331582693

namespace A252932

/-- `A252938(A000096(n)+3)%A099317(n+1)` -/
def P10150748742331582693.Spec : Prop :=
  ∀ n, P10150748742331582693.a n = A252932 (n + 1)

end A252932

/-! ## A252932.P4095504852622603935

`A000027(A252938(∑[n+2]))`
-/

namespace A252932.P4095504852622603935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A252938 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A252932.P4095504852622603935

namespace A252932

/-- `A000027(A252938(∑[n+2]))` -/
def P4095504852622603935.Spec : Prop :=
  ∀ n, P4095504852622603935.a n = A252932 (n + 1)

end A252932

/-!
# A252933: Number of n X 3 nonnegative integer arrays with upper left 0 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252933, there is no canonical definition to state claims against.
-/

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

/-! ## A252933.P5722497023972721487

`A252938(A167614(n+1))%A017032(n)`
-/

namespace A252933.P5722497023972721487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252938 (A167614 (n + 1)).toNat) (A017032 n)

end

end A252933.P5722497023972721487

/-! ## A252933.P12768108655569917559

`lcm(A033999(n), A252938(A167614(n+1)))`
-/

namespace A252933.P12768108655569917559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252938 (A167614 (n + 1)).toNat)

end

end A252933.P12768108655569917559

/-! ## A252933.P7894484073628075746

`or(A102683(n), A252938(A167614(n+1)))`
-/

namespace A252933.P7894484073628075746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 n) (A252938 (A167614 (n + 1)).toNat)

end

end A252933.P7894484073628075746

/-! ## A252933.P1874680917819984407

`A054977(n+1)*A252938(A167614(n+1))`
-/

namespace A252933.P1874680917819984407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A252938 (A167614 (n + 1)).toNat

end

end A252933.P1874680917819984407

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

/-! ## A252934.P10555572457019183775

`A252938(A052905(n)+9)`
-/

namespace A252934.P10555572457019183775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A052905 n + 9).toNat

end

end A252934.P10555572457019183775

/-! ## A252934.P12497291108226004721

`A252938(A055999(n)+10)`
-/

namespace A252934.P12497291108226004721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A055999 n + 10).toNat

end

end A252934.P12497291108226004721

/-! ## A252934.P16919973240756995186

`A252938(A167614(n+2)+1)`
-/

namespace A252934.P16919973240756995186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A167614 (n + 2) + 1).toNat

end

end A252934.P16919973240756995186

/-! ## A252934.P1799845885016452352

`A252938(A167499(n+2)-1)`
-/

namespace A252934.P1799845885016452352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A167499 (n + 2) - 1).toNat

end

end A252934.P1799845885016452352

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

/-! ## A252935.P5343722949317013894

`A252938(A167499(n+3))`
-/

namespace A252935.P5343722949317013894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A167499 (n + 3)).toNat

end

end A252935.P5343722949317013894

/-! ## A252935.P12930960871938875210

`A252938(A167614(n+3)+2)`
-/

namespace A252935.P12930960871938875210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A167614 (n + 3) + 2).toNat

end

end A252935.P12930960871938875210

/-! ## A252935.P18057875457834227541

`A252938(A000124(n+4)+4)`
-/

namespace A252935.P18057875457834227541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A000124 (n + 4) + 4).toNat

end

end A252935.P18057875457834227541

/-! ## A252935.P2280557177363881862

`A252938(A000217(n+4)+5)`
-/

namespace A252935.P2280557177363881862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A000217 (n + 4) + 5).toNat

end

end A252935.P2280557177363881862

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

/-! ## A252936.P5644053894883737110

`A252938(A167499(n+4)+1)`
-/

namespace A252936.P5644053894883737110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A167499 (n + 4) + 1).toNat

end

end A252936.P5644053894883737110

/-! ## A252936.P2383780952951907841

`A252938(A000124(n+5)+5)`
-/

namespace A252936.P2383780952951907841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A000124 (n + 5) + 5).toNat

end

end A252936.P2383780952951907841

/-! ## A252936.P13728014909340105936

`A252938(A000217(n+5)+6)`
-/

namespace A252936.P13728014909340105936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A000217 (n + 5) + 6).toNat

end

end A252936.P13728014909340105936

/-! ## A252936.P10681039246791354088

`A252938(A002620(n+2)+A002620(n+9))`
-/

namespace A252936.P10681039246791354088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A252936.P10681039246791354088

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

/-! ## A252937.P14915848680427786360

`A252938(A166136(n+5)+1)`
-/

namespace A252937.P14915848680427786360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A166136 (n + 5) + 1).toNat

end

end A252937.P14915848680427786360

/-! ## A252937.P13760992472808387940

`A252938(A000124(n+6)+6)`
-/

namespace A252937.P13760992472808387940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A000124 (n + 6) + 6).toNat

end

end A252937.P13760992472808387940

/-! ## A252937.P3352575620543631788

`A252938(A000217(n+6)+7)`
-/

namespace A252937.P3352575620543631788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A000217 (n + 6) + 7).toNat

end

end A252937.P3352575620543631788

/-! ## A252937.P8995769406337161334

`A252938(A055999(n+4))`
-/

namespace A252937.P8995769406337161334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252938 (A055999 (n + 4)).toNat

end

end A252937.P8995769406337161334

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

/-! ## A252939.P6531534145743272324

`Δ[A252912(n+1)]`
-/

namespace A252939.P6531534145743272324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A252939.P6531534145743272324

/-! ## A252939.P10159961379249718409

`abs(Δ[A252912(-xor(n, -1))])`
-/

namespace A252939.P10159961379249718409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252912 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A252939.P10159961379249718409

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

/-! ## A252939.P15853277702016964911

`A000027(Δ[A252912(-xor(n, -1))])`
-/

namespace A252939.P15853277702016964911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252912 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A252939.P15853277702016964911

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

/-! ## A252945.P4302978319391669492

`A252952(∑[n]+1)`
-/

namespace A252945.P4302978319391669492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252945.P4302978319391669492

/-! ## A252945.P2636575557768874903

`lcm(3, A252952(A000124(n)))`
-/

namespace A252945.P2636575557768874903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A252952 (A000124 n).toNat)

end

end A252945.P2636575557768874903

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

/-! ## A252946.P595863644031009460

`lcm(3, A252952(A000096(n)+3))`
-/

namespace A252946.P595863644031009460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A252952 (A000096 n + 3).toNat)

end

end A252946.P595863644031009460

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

/-! ## A252947.P15639567814194414646

`lcm(3, A252952(A167614(n+1)))`
-/

namespace A252947.P15639567814194414646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A252952 (A167614 (n + 1)).toNat)

end

end A252947.P15639567814194414646

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

/-! ## A252947.P4955984644529915463

`A252952(A167614(n+1))+A011730(n)`
-/

namespace A252947.P4955984644529915463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A167614 (n + 1)).toNat + A011730 n

end

end A252947.P4955984644529915463

/-! ## A252947.P6177536892855801409

`A252952(A167614(n+1))+A185044(n)`
-/

namespace A252947.P6177536892855801409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A167614 (n + 1)).toNat + A185044 n

end

end A252947.P6177536892855801409

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

/-! ## A252948.P5204601330294398944

`A252952(A052905(n)+9)`
-/

namespace A252948.P5204601330294398944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A052905 n + 9).toNat

end

end A252948.P5204601330294398944

/-! ## A252948.P6227192628266002996

`A252952(A055999(n)+10)`
-/

namespace A252948.P6227192628266002996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A055999 n + 10).toNat

end

end A252948.P6227192628266002996

/-! ## A252948.P7988432270937483086

`A252952(eq[5, A066657(n)])`
-/

namespace A252948.P7988432270937483086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252948.P7988432270937483086

/-! ## A252948.P16202748697134446183

`A252952(A167614(n+2)+1)`
-/

namespace A252948.P16202748697134446183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A167614 (n + 2) + 1).toNat

end

end A252948.P16202748697134446183

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

/-! ## A252949.P14900720059991296573

`A252952(A155212(n)+13)`
-/

namespace A252949.P14900720059991296573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A155212 n + 13).toNat

end

end A252949.P14900720059991296573

/-! ## A252949.P17946614146180776431

`A252952(A056000(n)+15)`
-/

namespace A252949.P17946614146180776431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A056000 n + 15).toNat

end

end A252949.P17946614146180776431

/-! ## A252949.P13751529615193493035

`A252952(eq[7, A066657(n)])`
-/

namespace A252949.P13751529615193493035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252949.P13751529615193493035

/-! ## A252949.P18352570831551406900

`A252952(A167614(n+3)+2)`
-/

namespace A252949.P18352570831551406900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A167614 (n + 3) + 2).toNat

end

end A252949.P18352570831551406900

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

/-! ## A252950.P3634927491784287877

`A252952(A056115(n)+21)`
-/

namespace A252950.P3634927491784287877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A056115 n + 21).toNat

end

end A252950.P3634927491784287877

/-! ## A252950.P9744068361538718270

`A252952(A167499(n+4)+1)`
-/

namespace A252950.P9744068361538718270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A167499 (n + 4) + 1).toNat

end

end A252950.P9744068361538718270

/-! ## A252950.P14545818200471508786

`A252952(A167487(n+4)-1)`
-/

namespace A252950.P14545818200471508786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A167487 (n + 4) - 1).toNat

end

end A252950.P14545818200471508786

/-! ## A252950.P5222880322388386806

`A252952(A055998(n+3)+9)`
-/

namespace A252950.P5222880322388386806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A055998 (n + 3) + 9).toNat

end

end A252950.P5222880322388386806

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

/-! ## A252951.P12943578821144504995

`A252952(A167487(n+5))`
-/

namespace A252951.P12943578821144504995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A167487 (n + 5)).toNat

end

end A252951.P12943578821144504995

/-! ## A252951.P1627507719273242627

`A252952(eq[11, A066657(n)])`
-/

namespace A252951.P1627507719273242627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252951.P1627507719273242627

/-! ## A252951.P5729988863777704618

`A252952(A167499(n+5)+2)`
-/

namespace A252951.P5729988863777704618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A167499 (n + 5) + 2).toNat

end

end A252951.P5729988863777704618

/-! ## A252951.P5326411593570452806

`A252952(A000217(n+6)+7)`
-/

namespace A252951.P5326411593570452806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (A000217 (n + 6) + 7).toNat

end

end A252951.P5326411593570452806

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

/-! ## A252953.P1176034913414094596

`and(-1, A252961(A001844(n)))`
-/

namespace A252953.P1176034913414094596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252961 (A001844 n).toNat)

end

end A252953.P1176034913414094596

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

/-! ## A252954.P7092345653768864545

`A252961(∑[n+1])`
-/

namespace A252954.P7092345653768864545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252954.P7092345653768864545

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

/-! ## A252954.P7388368561646005271

`record[A252961(A080036(n))]`
-/

namespace A252954.P7388368561646005271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252954.P7388368561646005271

/-! ## A252954.P13996720600883561840

`record[A252961(A133825(n))]`
-/

namespace A252954.P13996720600883561840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252954.P13996720600883561840

/-! ## A252954.P13929372259863902033

`record[A252961(A115017(n+1))]`
-/

namespace A252954.P13929372259863902033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252954.P13929372259863902033

/-!
# A252955: Number of (n+2)X(2+2) 0..4 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252955, there is no canonical definition to state claims against.
-/

/-! ## A252955.P16962156914581656398

`A252961(∑[n+2])`
-/

namespace A252955.P16962156914581656398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252955.P16962156914581656398

/-! ## A252955.P16635954418194067888

`A252961(A000096(n+1))+char[27]`
-/

namespace A252955.P16635954418194067888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252955.P16635954418194067888

/-! ## A252955.P15575100754786604711

`A252961(A055998(n)+2)+char[33]`
-/

namespace A252955.P15575100754786604711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A055998 n + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252955.P15575100754786604711

/-! ## A252955.P3954395280554332576

`A007318(C(n, 2))*A252961(A000096(n+1))`
-/

namespace A252955.P3954395280554332576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A252961 (A000096 (n + 1)).toNat

end

end A252955.P3954395280554332576

/-! ## A252955.P4938190293505151432

`A252961(A000096(n+1))/A007318(C(2, n))`
-/

namespace A252955.P4938190293505151432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252961 (A000096 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A252955.P4938190293505151432

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

/-! ## A252956.P6144651402561695409

`or(1, A252961(Δ[A008778(n)]))`
-/

namespace A252956.P6144651402561695409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252961 (f1 (n + 1) - f1 n).toNat)

end

end A252956.P6144651402561695409

/-! ## A252956.P4749823132212617308

`A252961(Δ[A008778(n)])+A184945(n)`
-/

namespace A252956.P4749823132212617308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (f1 (n + 1) - f1 n).toNat + A184945 n

end

end A252956.P4749823132212617308

/-! ## A252956.P17816931420629757237

`A252961(A034856(n+2))%A081641(n+1)`
-/

namespace A252956.P17816931420629757237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252961 (A034856 (n + 2)).toNat) (A081641 (n + 1))

end

end A252956.P17816931420629757237

/-! ## A252956.P761768992206470361

`A014963(6*(n+1))*A252961(Δ[A008778(n)])`
-/

namespace A252956.P761768992206470361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A252961 (f1 (n + 1) - f1 n).toNat

end

end A252956.P761768992206470361

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

/-! ## A252957.P16284899266938524140

`A252961(A027379(n+2))+char[23]`
-/

namespace A252957.P16284899266938524140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A027379 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252957.P16284899266938524140

/-! ## A252957.P2425663403648319593

`A007318(C(2, n))*A252961(A027379(n+2))`
-/

namespace A252957.P2425663403648319593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252961 (A027379 (n + 2)).toNat

end

end A252957.P2425663403648319593

/-! ## A252957.P10407020926111858006

`A252961(A027379(n+2))%A000108(n+10)`
-/

namespace A252957.P10407020926111858006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252961 (A027379 (n + 2)).toNat) (A000108 (n + 10))

end

end A252957.P10407020926111858006

/-! ## A252957.P14788500076123569336

`A000041(C(n, 64))*A252961(A027379(n+2))`
-/

namespace A252957.P14788500076123569336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A252961 (A027379 (n + 2)).toNat

end

end A252957.P14788500076123569336

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

/-! ## A252958.P16832598138189287949

`or(1, A252961(Δ[A023545(n+1)]))`
-/

namespace A252958.P16832598138189287949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252961 (f1 (n + 1) - f1 n).toNat)

end

end A252958.P16832598138189287949

/-! ## A252958.P7586010504198537931

`or(1, A252961(A000217(n+5)-4))`
-/

namespace A252958.P7586010504198537931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252961 (A000217 (n + 5) - 4).toNat)

end

end A252958.P7586010504198537931

/-! ## A252958.P8432802891182408589

`A007318(C(2, n))*A252961(A000217(n+5)-4)`
-/

namespace A252958.P8432802891182408589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252961 (A000217 (n + 5) - 4).toNat

end

end A252958.P8432802891182408589

/-! ## A252958.P12659390934178009559

`A000045(gcd(n, n+1))*A252961(A000217(n+5)-4)`
-/

namespace A252958.P12659390934178009559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A252961 (A000217 (n + 5) - 4).toNat

end

end A252958.P12659390934178009559

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

/-! ## A252959.P4989037224635348507

`A252961(A052905(n+3))`
-/

namespace A252959.P4989037224635348507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A052905 (n + 3)).toNat

end

end A252959.P4989037224635348507

/-! ## A252959.P14116134204093969189

`A252961(A302537(n)+15)`
-/

namespace A252959.P14116134204093969189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A302537 n + 15).toNat

end

end A252959.P14116134204093969189

/-! ## A252959.P13282490799424337778

`A252961(A056119(n)+16)`
-/

namespace A252959.P13282490799424337778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A056119 n + 16).toNat

end

end A252959.P13282490799424337778

/-! ## A252959.P4299949401765315273

`A252961(eq[3, A219347(n)])`
-/

namespace A252959.P4299949401765315273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252959.P4299949401765315273

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

/-! ## A252960.P11044072332309453920

`A252961(A055999(n+4))`
-/

namespace A252960.P11044072332309453920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A055999 (n + 4)).toNat

end

end A252960.P11044072332309453920

/-! ## A252960.P17447361844474203919

`A252961(A056121(n)+22)`
-/

namespace A252960.P17447361844474203919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A056121 n + 22).toNat

end

end A252960.P17447361844474203919

/-! ## A252960.P10361927173934210964

`A252961(eq[4, A219347(n)])`
-/

namespace A252960.P10361927173934210964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252960.P10361927173934210964

/-! ## A252960.P8133365076017202784

`A252961(eq[6, A193592(n)])`
-/

namespace A252960.P8133365076017202784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252960.P8133365076017202784

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

/-! ## A252962.P7877927383923696755

`and(-1, A252961(A000124(n)))`
-/

namespace A252962.P7877927383923696755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252961 (A000124 n).toNat)

end

end A252962.P7877927383923696755

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

/-! ## A252964.P16945259416128622973

`or(1, A252961(A167614(n+1)))`
-/

namespace A252964.P16945259416128622973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252961 (A167614 (n + 1)).toNat)

end

end A252964.P16945259416128622973

/-! ## A252964.P502342244357808164

`or(1, A252961(A152950(n+3)))`
-/

namespace A252964.P502342244357808164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252961 (A152950 (n + 3)).toNat)

end

end A252964.P502342244357808164

/-! ## A252964.P6928472446147571751

`or(1, A252961(A055998(n)+6))`
-/

namespace A252964.P6928472446147571751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252961 (A055998 n + 6).toNat)

end

end A252964.P6928472446147571751

/-! ## A252964.P936357241672586762

`or(1, A252961(A000124(n+2)+2))`
-/

namespace A252964.P936357241672586762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252961 (A000124 (n + 2) + 2).toNat)

end

end A252964.P936357241672586762

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

/-! ## A252965.P15523430514495647097

`A252961(A167614(n+2)+1)+char[22]`
-/

namespace A252965.P15523430514495647097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252965.P15523430514495647097

/-! ## A252965.P7160907767544210984

`lcm(A020985(n), A252961(A167614(n+2)+1))`
-/

namespace A252965.P7160907767544210984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A252961 (A167614 (n + 2) + 1).toNat)

end

end A252965.P7160907767544210984

/-! ## A252965.P16211990661862481637

`A014963(9*n+6)*A252961(A052905(n)+9)`
-/

namespace A252965.P16211990661862481637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * A252961 (A052905 n + 9).toNat

end

end A252965.P16211990661862481637

/-! ## A252965.P10954221415183105374

`A252961(A052905(n)+9)+A008683(12*n+8)`
-/

namespace A252965.P10954221415183105374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A052905 n + 9).toNat + A008683 (12 * n + 8)

end

end A252965.P10954221415183105374

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

/-! ## A252966.P5928146930505021774

`A252961(A155212(n)+13)`
-/

namespace A252966.P5928146930505021774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A155212 n + 13).toNat

end

end A252966.P5928146930505021774

/-! ## A252966.P200454866931306588

`A252961(A056000(n)+15)`
-/

namespace A252966.P200454866931306588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A056000 n + 15).toNat

end

end A252966.P200454866931306588

/-! ## A252966.P5770619925962389506

`A252961(eq[7, A066657(n)])`
-/

namespace A252966.P5770619925962389506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252966.P5770619925962389506

/-! ## A252966.P2803750305316121715

`A252961(∑[A020705(n)]+11)`
-/

namespace A252966.P2803750305316121715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A252966.P2803750305316121715

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

/-! ## A252967.P6065330950923697551

`A252961(A000124(n+5)+5)+char[16]`
-/

namespace A252967.P6065330950923697551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A000124 (n + 5) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252967.P6065330950923697551

/-! ## A252967.P5139959786953993108

`A194285(n+1)*A252961(A000217(n+5)+6)`
-/

namespace A252967.P5139959786953993108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (n + 1) * A252961 (A000217 (n + 5) + 6).toNat

end

end A252967.P5139959786953993108

/-! ## A252967.P16234132051693243201

`A252961(A000124(n+5)+5)%A074877(8*n+9)`
-/

namespace A252967.P16234132051693243201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252961 (A000124 (n + 5) + 5).toNat) (A074877 (8 * n + 9))

end

end A252967.P16234132051693243201

/-! ## A252967.P15220334300986851882

`A252961(A000124(n+5)+5)/A114188(A000096(n))`
-/

namespace A252967.P15220334300986851882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252961 (A000124 (n + 5) + 5).toNat : ℚ) / (A114188 (A000096 n).toNat : ℚ)

end

end A252967.P15220334300986851882

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

/-! ## A252968.P15448428934223198300

`A252961(eq[11, A066657(n)])`
-/

namespace A252968.P15448428934223198300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252968.P15448428934223198300

/-! ## A252968.P6532322213533950264

`A252961(A167614(n+5)+4)`
-/

namespace A252968.P6532322213533950264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A167614 (n + 5) + 4).toNat

end

end A252968.P6532322213533950264

/-! ## A252968.P17270649048356277648

`A252961(A000124(n+6)+6)`
-/

namespace A252968.P17270649048356277648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A000124 (n + 6) + 6).toNat

end

end A252968.P17270649048356277648

/-! ## A252968.P18127183217199969702

`A252961(A000096(n+5)+8)`
-/

namespace A252968.P18127183217199969702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252961 (A000096 (n + 5) + 8).toNat

end

end A252968.P18127183217199969702

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

/-! ## A252969.P10617174706875279122

`lcm(2, A252976(A001844(n)))`
-/

namespace A252969.P10617174706875279122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252976 (A001844 n).toNat)

end

end A252969.P10617174706875279122

/-!
# A252970: Number of nX2 nonnegative integer arrays with upper left 0 and lower right n+2-5 and value increasing by 0 or 1 with every step right or down.

The programs for A252970, the canonical program `A252970.P17127633440235983922` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252970 has offset 1).

The definition of A252970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252970.P17127633440235983922

`∑[C(n, 5)+(∑[n]-2)*C(n, 2)]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A252970

/-- `∑[C(n, 5)+(∑[n]-2)*C(n, 2)]` -/
def P17127633440235983922.Spec : Prop :=
  ∀ n, P17127633440235983922.a n = A252970 (n + 1)

theorem P17127633440235983922.correct : P17127633440235983922.Spec := by
  intro n
  simp only [A252970, Nat.add_sub_cancel]

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

/-! ## A252970.P7703487928837376666

`A212633(eq[4, A219347(n)])`
-/

namespace A252970.P7703487928837376666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252970.P7703487928837376666

namespace A252970

/-- `A212633(eq[4, A219347(n)])` -/
def P7703487928837376666.Spec : Prop :=
  ∀ n, P7703487928837376666.a n = A252970 (n + 1)

end A252970

/-!
# A252971: Number of nX3 nonnegative integer arrays with upper left 0 and lower right n+3-5 and value increasing by 0 or 1 with every step right or down.

The programs for A252971, there is no canonical definition to state claims against.
-/

/-! ## A252971.P17278347388502550241

`A252823(n+1)-A252815(n+1)`
-/

namespace A252971.P17278347388502550241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252823 (n + 1) - A252815 (n + 1)

end

end A252971.P17278347388502550241

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

/-! ## A252972.P14761358831456802519

`A252824(n+1)-A252816(n+1)`
-/

namespace A252972.P14761358831456802519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252824 (n + 1) - A252816 (n + 1)

end

end A252972.P14761358831456802519

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

/-! ## A252974.P11663703650502201920

`A252826(n+1)-A252818(n+1)`
-/

namespace A252974.P11663703650502201920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252826 (n + 1) - A252818 (n + 1)

end

end A252974.P11663703650502201920

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

/-! ## A252974.P13197743847402739134

`A252826(n+1)-A252820(A055998(n)+A008585(n+7))`
-/

namespace A252974.P13197743847402739134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252826 (n + 1) - A252820 (A055998 n + A008585 (n + 7)).toNat

end

end A252974.P13197743847402739134

/-! ## A252974.P7407687733897107419

`A252826(n+1)-(A252820(A034856(n+4)+8)+A000038(n+1))`
-/

namespace A252974.P7407687733897107419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252826 (n + 1) - (A252820 (A034856 (n + 4) + 8).toNat + A000038 (n + 1))

end

end A252974.P7407687733897107419

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

/-! ## A252975.P15714228531313941114

`A252827(n+1)+A008683(A061351(n))*A252819(n+1)`
-/

namespace A252975.P15714228531313941114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252827 (n + 1) + A008683 (A061351 n).toNat * A252819 (n + 1)

end

end A252975.P15714228531313941114

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

/-! ## A252975.P4272770094717991811

`A252976(A055999(n+4))`
-/

namespace A252975.P4272770094717991811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252976 (A055999 (n + 4)).toNat

end

end A252975.P4272770094717991811

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

/-! ## A252977.P4610939941485672578

`lcm(A046854(n), A252983(A001844(n)))`
-/

namespace A252977.P4610939941485672578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046854 n) (A252983 (A001844 n).toNat)

end

end A252977.P4610939941485672578

/-! ## A252977.P6587406014598952190

`A014963(C(n+2, 2))*A252983(A001844(n))`
-/

namespace A252977.P6587406014598952190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 2) 2) * A252983 (A001844 n).toNat

end

end A252977.P6587406014598952190

/-! ## A252977.P6930236458913224192

`A000005(((-1)^n)²)*A252983(A001844(n))`
-/

namespace A252977.P6930236458913224192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((-1) ^ n) ^ 2).toNat * A252983 (A001844 n).toNat

end

end A252977.P6930236458913224192

/-! ## A252977.P14065663834169921780

`A014963(A061792(n))*A252983(A001844(n))`
-/

namespace A252977.P14065663834169921780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A061792 n).toNat * A252983 (A001844 n).toNat

end

end A252977.P14065663834169921780

/-!
# A252978: Number of n X 3 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 2 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252978, there is no canonical definition to state claims against.
-/

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

/-! ## A252978.P14964178273066956785

`A252983(A167614(n+1))%A017139(n)`
-/

namespace A252978.P14964178273066956785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252983 (A167614 (n + 1)).toNat) (A017139 n)

end

end A252978.P14964178273066956785

/-! ## A252978.P16009970163096425650

`A252983(A166136(n+1)-3)%A066110(n+1)`
-/

namespace A252978.P16009970163096425650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252983 (A166136 (n + 1) - 3).toNat) (A066110 (n + 1))

end

end A252978.P16009970163096425650

/-! ## A252978.P6921171959460069782

`A001222(A053760(n+2))*A252983(A166136(n+1)-3)`
-/

namespace A252978.P6921171959460069782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053760 (n + 2)).toNat * A252983 (A166136 (n + 1) - 3).toNat

end

end A252978.P6921171959460069782

/-! ## A252978.P11786426258839872370

`A252983(A034856(n+2))%∏[n+3]`
-/

namespace A252978.P11786426258839872370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252983 (A034856 (n + 2)).toNat) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A252978.P11786426258839872370

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

/-! ## A252979.P17280703364680190710

`A252983(A141214(n)+7)`
-/

namespace A252979.P17280703364680190710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A141214 n + 7).toNat

end

end A252979.P17280703364680190710

/-! ## A252979.P5594226842740175384

`A252983(A055999(n)+10)`
-/

namespace A252979.P5594226842740175384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A055999 n + 10).toNat

end

end A252979.P5594226842740175384

/-! ## A252979.P5709463350200188643

`A252983(A167614(n+2)+1)`
-/

namespace A252979.P5709463350200188643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A167614 (n + 2) + 1).toNat

end

end A252979.P5709463350200188643

/-! ## A252979.P13692532871109543795

`A252983(A167499(n+2)-1)`
-/

namespace A252979.P13692532871109543795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A167499 (n + 2) - 1).toNat

end

end A252979.P13692532871109543795

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

/-! ## A252980.P2737538830033992192

`A252983(A000217(n+4)+5)`
-/

namespace A252980.P2737538830033992192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A000217 (n + 4) + 5).toNat

end

end A252980.P2737538830033992192

/-! ## A252980.P28933505728959196

`A252983(A022856(n+8)+3)`
-/

namespace A252980.P28933505728959196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A022856 (n + 8) + 3).toNat

end

end A252980.P28933505728959196

/-! ## A252980.P2292593939981161077

`A252983(A052905(n+1)+10)`
-/

namespace A252980.P2292593939981161077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A052905 (n + 1) + 10).toNat

end

end A252980.P2292593939981161077

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

/-! ## A252981.P6907025922477370467

`A252983(A166136(n+4))`
-/

namespace A252981.P6907025922477370467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A166136 (n + 4)).toNat

end

end A252981.P6907025922477370467

/-! ## A252981.P659727154427827313

`A252983(A000217(n+5)+6)`
-/

namespace A252981.P659727154427827313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A000217 (n + 5) + 6).toNat

end

end A252981.P659727154427827313

/-! ## A252981.P8116219146781998081

`A252983(A161680(n+6)+6)`
-/

namespace A252981.P8116219146781998081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A161680 (n + 6) + 6).toNat

end

end A252981.P8116219146781998081

/-! ## A252981.P6496959983656395436

`A252983(eq[6, A002260(n+1)]+1)`
-/

namespace A252981.P6496959983656395436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A252981.P6496959983656395436

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

/-! ## A252982.P5703157486691373849

`A252983(A052905(n+3)+12)`
-/

namespace A252982.P5703157486691373849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A052905 (n + 3) + 12).toNat

end

end A252982.P5703157486691373849

/-! ## A252982.P1062725517238945699

`A252983(eq[8, A131818(n+1)])`
-/

namespace A252982.P1062725517238945699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252982.P1062725517238945699

/-! ## A252982.P13520385132082607962

`A252983(A055999(n+4))`
-/

namespace A252982.P13520385132082607962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (A055999 (n + 4)).toNat

end

end A252982.P13520385132082607962

/-! ## A252982.P3304774839217508584

`A252983(eq[4, A219347(n)])`
-/

namespace A252982.P3304774839217508584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252982.P3304774839217508584

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

/-! ## A252983.P4765062393338717302

`A028819(A253223(n+1)+∑[A028240(n)])`
-/

namespace A252983.P4765062393338717302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028819 (A253223 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A252983.P4765062393338717302

/-! ## A252983.P10475896232973204992

`A130342(A253223(n+1))%A320880(n+1)`
-/

namespace A252983.P10475896232973204992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130342 (A253223 (n + 1)).toNat) (A320880 (n + 1))

end

end A252983.P10475896232973204992

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

/-! ## A252988.P13851433860908788461

`A252993(A000096(n+1))+A185284(n)`
-/

namespace A252988.P13851433860908788461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (A000096 (n + 1)).toNat + A185284 n

end

end A252988.P13851433860908788461

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

/-! ## A252989.P4154249387692633925

`A252993(A167614(n+1))+char[11]`
-/

namespace A252989.P4154249387692633925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252989.P4154249387692633925

/-! ## A252989.P7597939640136333195

`A252993(A167614(n+1))*A294775(n)`
-/

namespace A252989.P7597939640136333195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (A167614 (n + 1)).toNat * A294775 n

end

end A252989.P7597939640136333195

/-! ## A252989.P9129568986355403721

`A153675(n+1)*A252993(A167614(n+1))`
-/

namespace A252989.P9129568986355403721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153675 (n + 1) * A252993 (A167614 (n + 1)).toNat

end

end A252989.P9129568986355403721

/-! ## A252989.P10058981390855536874

`A153683(n+1)*A252993(A167614(n+1))`
-/

namespace A252989.P10058981390855536874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153683 (n + 1) * A252993 (A167614 (n + 1)).toNat

end

end A252989.P10058981390855536874

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

/-! ## A252991.P18027648302944651426

`A252993(A374005(n+1))`
-/

namespace A252991.P18027648302944651426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (A374005 (n + 1)).toNat

end

end A252991.P18027648302944651426

/-! ## A252991.P15618340766391678677

`A252993(A046691(n+3))`
-/

namespace A252991.P15618340766391678677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (A046691 (n + 3)).toNat

end

end A252991.P15618340766391678677

/-! ## A252991.P14470504382996698298

`A252993(A155212(n)+13)`
-/

namespace A252991.P14470504382996698298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (A155212 n + 13).toNat

end

end A252991.P14470504382996698298

/-! ## A252991.P10495848923477598187

`A252993(A056000(n)+15)`
-/

namespace A252991.P10495848923477598187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (A056000 n + 15).toNat

end

end A252991.P10495848923477598187

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

/-! ## A252992.P1816604590040594978

`A252993(A052905(n+3))`
-/

namespace A252992.P1816604590040594978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (A052905 (n + 3)).toNat

end

end A252992.P1816604590040594978

/-! ## A252992.P12092189235703501433

`A252993(A056115(n)+21)`
-/

namespace A252992.P12092189235703501433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (A056115 n + 21).toNat

end

end A252992.P12092189235703501433

/-! ## A252992.P18248859865948842780

`A252993(eq[3, A219347(n)])`
-/

namespace A252992.P18248859865948842780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252992.P18248859865948842780

/-!
# A252994: Multiples of 26.

The programs for A252994, the canonical program `A252994.P11791628832872652573` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252994 has offset 0).

The definition of A252994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A252994.P11791628832872652573

`26*n`

The canonical program, it is in `Seq.B000.C027`.
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

/-! ## A252998.P17162312409749833174

`A253004(A058331(n))`
-/

namespace A252998.P17162312409749833174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A058331 n).toNat

end

end A252998.P17162312409749833174

/-! ## A252998.P6658454640929645466

`A253004(A000124(2*n)-n)`
-/

namespace A252998.P6658454640929645466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A000124 (2 * n) - (n : ℤ)).toNat

end

end A252998.P6658454640929645466

/-! ## A252998.P13554010822160406233

`A253004((n+1)²+n²)`
-/

namespace A252998.P13554010822160406233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 ((n + 1) ^ 2 + n ^ 2)

end

end A252998.P13554010822160406233

/-! ## A252998.P5891737005190052341

`A007318(∑[n])*A253004(A001844(n))`
-/

namespace A252998.P5891737005190052341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A253004 (A001844 n).toNat

end

end A252998.P5891737005190052341

/-! ## A252998.P1530244521485942622

`char[A007318(n)]*A253004(A001844(n))`
-/

namespace A252998.P1530244521485942622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A253004 (A001844 n).toNat

end

end A252998.P1530244521485942622

/-!
# A252999: Number of n X 3 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 3 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A252999, there is no canonical definition to state claims against.
-/

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

/-! ## A252999.P7570687956871640469

`A253004(A167614(n+1))%A019752(n)`
-/

namespace A252999.P7570687956871640469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253004 (A167614 (n + 1)).toNat) (A019752 n)

end

end A252999.P7570687956871640469

/-! ## A252999.P17954877646345433566

`A253004(A046691(n)+7)+A000007(n+1)`
-/

namespace A252999.P17954877646345433566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A046691 n + 7).toNat + A000007 (n + 1)

end

end A252999.P17954877646345433566

/-! ## A252999.P12698486269749090999

`A000034(2*n)*A253004(A046691(n)+7)`
-/

namespace A252999.P12698486269749090999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A253004 (A046691 n + 7).toNat

end

end A252999.P12698486269749090999

/-! ## A252999.P2142855563204496848

`A253004(A034856(n+1)+5)%A002057(n)`
-/

namespace A252999.P2142855563204496848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253004 (A034856 (n + 1) + 5).toNat) (A002057 n)

end

end A252999.P2142855563204496848

