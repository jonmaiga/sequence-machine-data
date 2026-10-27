import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
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
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C005
import Seq.B004.C001
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A203700: v(n+1)/v(n), where v=A203699.

The programs for A203700, there is no canonical definition to state claims against.
-/

/-! ## A203700.P12889438296784825301

`ratio[A203699(n+1)]`
-/

namespace A203700.P12889438296784825301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203699 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203700.P12889438296784825301

/-!
# A203701: Vandermonde sequence using x^2 + y^2 applied to the Fibonacci numbers (1,2,3,5,...F(n+1)).

The programs for A203701, there is no canonical definition to state claims against.
-/

/-! ## A203701.P11966304433307287290

`a(n-1)*A203702(n)` with `a(0)=1`
-/

namespace A203701.P11966304433307287290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203702 n

end

end A203701.P11966304433307287290

/-!
# A203702: v(n+1)/v(n), where v=A203701.

The programs for A203702, there is no canonical definition to state claims against.
-/

/-! ## A203702.P11854995300728022172

`ratio[A203701(n+1)]`
-/

namespace A203702.P11854995300728022172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203701 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203702.P11854995300728022172

/-!
# A203707: 

The programs for A203707, there is no canonical definition to state claims against.
-/

/-! ## A203707.P14590649906350159705

`a(n-1)*A203708(n)` with `a(0)=1`
-/

namespace A203707.P14590649906350159705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203708 n

end

end A203707.P14590649906350159705

/-! ## A203707.P1172283909900618422

`∏[A203708(n+1)]/A203708(n+1)`
-/

namespace A203707.P1172283909900618422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203708 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203708 (n + 1) : ℚ)

end

end A203707.P1172283909900618422

/-!
# A203709: E.g.f.: 2*Product_{n>=1} ((exp(x^n) + 1)/2).

The programs for A203709, there is no canonical definition to state claims against.
-/

/-! ## A203709.P15659562909931107552

`A254011(A034271(n))+1`
-/

namespace A203709.P15659562909931107552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (A034271 n).toNat + 1

end

end A203709.P15659562909931107552

/-! ## A203709.P7414685329988739301

`A087794(A001147(n))-(n-1)`
-/

namespace A203709.P7414685329988739301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087794 (A001147 n).toNat - ((n : ℤ) - 1)

end

end A203709.P7414685329988739301

/-!
# A203710: Number of (n+1)X2 0..5 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203710, there is no canonical definition to state claims against.
-/

/-! ## A203710.P8598019170478915676

`A203714(∑[n]+1)`
-/

namespace A203710.P8598019170478915676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203714 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203710.P8598019170478915676

/-! ## A203710.P13128199195585680464

`record[root(A203714(n+1), A008459(n))]`
-/

namespace A203710.P13128199195585680464
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203714 (n + 1) : ℝ) ^ (1 / (A008459 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203710.P13128199195585680464

/-! ## A203710.P14017383548974744145

`record[root(A203714(n+1), A092056(n))]`
-/

namespace A203710.P14017383548974744145
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203714 (n + 1) : ℝ) ^ (1 / (A092056 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203710.P14017383548974744145

/-! ## A203710.P5592418847787516241

`record[gcd(A002262(n), A203714(n+1))]`
-/

namespace A203710.P5592418847787516241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203714 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203710.P5592418847787516241

/-! ## A203710.P10922095861190384601

`record[A054524(n+1)*A203714(n+1)]`
-/

namespace A203710.P10922095861190384601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A203714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203710.P10922095861190384601

/-!
# A203711: Number of (n+1)X3 0..5 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203711, there is no canonical definition to state claims against.
-/

/-! ## A203711.P6617013281206305510

`A203714(∑[n+1]+2)`
-/

namespace A203711.P6617013281206305510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203714 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203711.P6617013281206305510

/-! ## A203711.P15058068766651652909

`record[A203714(A008795(n)+2)]`
-/

namespace A203711.P15058068766651652909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203714 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203711.P15058068766651652909

/-! ## A203711.P1700043020756824342

`record[gcd(A002262(n), A203714(n+2))]`
-/

namespace A203711.P1700043020756824342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203714 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203711.P1700043020756824342

/-! ## A203711.P3743483040078414078

`record[gcd(A203714(n+3), A262071(n+1))]`
-/

namespace A203711.P3743483040078414078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A203714 (n + 3)) (A262071 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203711.P3743483040078414078

/-!
# A203712: Number of (n+1)X4 0..5 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203712, there is no canonical definition to state claims against.
-/

/-! ## A203712.P1252621379633863835

`A203714(A167614(n+1))`
-/

namespace A203712.P1252621379633863835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203714 (A167614 (n + 1)).toNat

end

end A203712.P1252621379633863835

/-! ## A203712.P4845377202836714272

`A203714(A055998(n)+6)`
-/

namespace A203712.P4845377202836714272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203714 (A055998 n + 6).toNat

end

end A203712.P4845377202836714272

/-! ## A203712.P12984449372035335991

`A203714(A203717(n+1)+∑[n+2]+3)`
-/

namespace A203712.P12984449372035335991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203714 (A203717 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ)).toNat

end

end A203712.P12984449372035335991

/-!
# A203713: 

The programs for A203713, there is no canonical definition to state claims against.
-/

/-! ## A203713.P6280024232383169143

`A203714(∑[A020705(n)]+3)`
-/

namespace A203713.P6280024232383169143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203714 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A203713.P6280024232383169143

/-!
# A203715: E.g.f.: Sum_{n>=1} log((1 + exp(2*x^n))/2).

The programs for A203715, there is no canonical definition to state claims against.
-/

/-! ## A203715.P670475009048589626

`A161208(A148013(n+1))`
-/

namespace A203715.P670475009048589626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161208 (A148013 (n + 1)).toNat

end

end A203715.P670475009048589626

/-! ## A203715.P12749707190745945718

`A161208(eq[A000188(n+1), A000523(n+1)])`
-/

namespace A203715.P12749707190745945718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161208 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A203715.P12749707190745945718

/-!
# A203716: E.g.f.: Product_{n>=1} (exp(2*x^n) + 1)/2.

The programs for A203716, there is no canonical definition to state claims against.
-/

/-! ## A203716.P5854896553942424688

`A110655(or(n², A215002(n)))`
-/

namespace A203716.P5854896553942424688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Int.lor (n ^ 2 : ℤ) (A215002 n)).toNat

end

end A203716.P5854896553942424688

/-!
# A203717: A Catalan triangle by rows.

The programs for A203717, there is no canonical definition to state claims against.
-/

/-! ## A203717.P7105610656816175311

`A356770(A110112(n))`
-/

namespace A203717.P7105610656816175311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356770 (A110112 n).toNat

end

end A203717.P7105610656816175311

/-! ## A203717.P5253762276352312005

`A360010(A188644(n))`
-/

namespace A203717.P5253762276352312005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (A188644 n).toNat

end

end A203717.P5253762276352312005

/-! ## A203717.P7471212058082381353

`A102705(A121300(n+1))`
-/

namespace A203717.P7471212058082381353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A121300 (n + 1)).toNat

end

end A203717.P7471212058082381353

/-! ## A203717.P16868780472636031740

`A102705(A179745(n+1))`
-/

namespace A203717.P16868780472636031740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A179745 (n + 1)).toNat

end

end A203717.P16868780472636031740

/-!
# A203719: A204521(n)^2 = floor[A055812(n)/5]: Squares which written in base 5, with some digit appended, yield another square.

The programs for A203719, there is no canonical definition to state claims against.
-/

/-! ## A203719.P6013796081010007682

`A204521(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203719.P6013796081010007682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204521 (n + 1) ^ 2

end

end A203719.P6013796081010007682

/-! ## A203719.P1660220314443699532

`floor(A055812(n+1)/5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203719.P1660220314443699532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055812 (n + 1) : ℚ) / 5⌋

end

end A203719.P1660220314443699532

/-! ## A203719.P16527402464848571730

`floor(A204520(n+1)²/5)`
-/

namespace A203719.P16527402464848571730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204520 (n + 1) ^ 2 : ℚ) / 5⌋

end

end A203719.P16527402464848571730

/-! ## A203719.P2350570348287401247

`ceil(A057428(n)+A055812(n+1)/5)`
-/

namespace A203719.P2350570348287401247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℚ) + (A055812 (n + 1) : ℚ) / 5⌉

end

end A203719.P2350570348287401247

/-! ## A203719.P3364006846503869225

`floor(A204520(n+1)^A000040(gcd(n, n+1))/5)`
-/

namespace A203719.P3364006846503869225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204520 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ) / 5⌋

end

end A203719.P3364006846503869225

/-!
# A203720: Number of (n+1)X(n+1) 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203720, there is no canonical definition to state claims against.
-/

/-! ## A203720.P12123466102573580362

`A203728(∑[4*n]+1)`
-/

namespace A203720.P12123466102573580362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203720.P12123466102573580362

/-! ## A203720.P13039189249032886609

`record[A003982(n)*A203728(n+1)]`
-/

namespace A203720.P13039189249032886609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A203728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203720.P13039189249032886609

/-! ## A203720.P17978837104674880067

`record[root(A203728(n+1), A143182(n))]`
-/

namespace A203720.P17978837104674880067
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203728 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203720.P17978837104674880067

/-! ## A203720.P18197674017683744761

`record[gcd(A203728(n+1), A231713(n))]`
-/

namespace A203720.P18197674017683744761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A203728 (n + 1)) (A231713 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203720.P18197674017683744761

/-! ## A203720.P15671216593332095745

`A203728(A001844(n))+A025439(n)`
-/

namespace A203720.P15671216593332095745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A001844 n).toNat + A025439 n

end

end A203720.P15671216593332095745

/-!
# A203721: Number of (n+1) X 2 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203721, there is no canonical definition to state claims against.
-/

/-! ## A203721.P3325597185085236040

`A203728(∑[n]+1)`
-/

namespace A203721.P3325597185085236040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203721.P3325597185085236040

/-! ## A203721.P17760996836573574035

`record[A010054(n)*A203728(n+1)]`
-/

namespace A203721.P17760996836573574035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203721.P17760996836573574035

/-! ## A203721.P16878234108534516388

`record[A203728(n+1)/A007318(n)]`
-/

namespace A203721.P16878234108534516388
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203728 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203721.P16878234108534516388

/-! ## A203721.P6730240937602412942

`record[A203728(n+1)/A086645(n)]`
-/

namespace A203721.P6730240937602412942
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203728 (n + 1) : ℚ) / (A086645 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203721.P6730240937602412942

/-! ## A203721.P6682235926191192421

`record[gcd(A002262(n), A203728(n+1))]`
-/

namespace A203721.P6682235926191192421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203728 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203721.P6682235926191192421

/-!
# A203722: Number of (n+1)X3 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203722, there is no canonical definition to state claims against.
-/

/-! ## A203722.P16162713454604688716

`A203728(∑[n+1]+2)`
-/

namespace A203722.P16162713454604688716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203722.P16162713454604688716

/-! ## A203722.P5675395769160470144

`record[A010054(n)*A203728(n+2)]`
-/

namespace A203722.P5675395769160470144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203728 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203722.P5675395769160470144

/-! ## A203722.P14887934992642014286

`record[gcd(A002262(n), A203728(n+2))]`
-/

namespace A203722.P14887934992642014286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203728 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203722.P14887934992642014286

/-! ## A203722.P18369050910645436598

`A203728(A000096(n+1))+A021913(n²)`
-/

namespace A203722.P18369050910645436598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A000096 (n + 1)).toNat + A021913 (n ^ 2)

end

end A203722.P18369050910645436598

/-! ## A203722.P14152070318933506606

`A203728(A000096(n+1))+A000007(n+1)`
-/

namespace A203722.P14152070318933506606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A203722.P14152070318933506606

/-!
# A203723: Number of (n+1) X 4 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203723, there is no canonical definition to state claims against.
-/

/-! ## A203723.P5733870167014236425

`A203728(∑[n+2]+4)`
-/

namespace A203723.P5733870167014236425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203723.P5733870167014236425

/-! ## A203723.P6623672223717720130

`lcm(A033999(n), A203728(A167614(n+1)))`
-/

namespace A203723.P6623672223717720130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A203728 (A167614 (n + 1)).toNat)

end

end A203723.P6623672223717720130

/-! ## A203723.P17996846553361856046

`or(A000038(n), A203728(A167614(n+1)))`
-/

namespace A203723.P17996846553361856046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A203728 (A167614 (n + 1)).toNat)

end

end A203723.P17996846553361856046

/-! ## A203723.P2647029467111150351

`A133707(n+1)*A203728(A167614(n+1))`
-/

namespace A203723.P2647029467111150351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A203728 (A167614 (n + 1)).toNat

end

end A203723.P2647029467111150351

/-! ## A203723.P17995550589435609525

`A203728(A167614(n+1))%A218488(n+1)`
-/

namespace A203723.P17995550589435609525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203728 (A167614 (n + 1)).toNat) (A218488 (n + 1))

end

end A203723.P17995550589435609525

/-!
# A203724: Number of (n+1)X5 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203724, there is no canonical definition to state claims against.
-/

/-! ## A203724.P4615322397214685274

`A203728(A374004(n+1))`
-/

namespace A203724.P4615322397214685274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A374004 (n + 1)).toNat

end

end A203724.P4615322397214685274

/-! ## A203724.P10161653288254803236

`A203728(A052905(n)+9)`
-/

namespace A203724.P10161653288254803236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A052905 n + 9).toNat

end

end A203724.P10161653288254803236

/-! ## A203724.P13499373060398433525

`A203728(A055999(n)+10)`
-/

namespace A203724.P13499373060398433525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A055999 n + 10).toNat

end

end A203724.P13499373060398433525

/-! ## A203724.P9252016377725395441

`A203728(A167614(n+2)+1)`
-/

namespace A203724.P9252016377725395441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A167614 (n + 2) + 1).toNat

end

end A203724.P9252016377725395441

/-! ## A203724.P15817800958823546324

`A203728(Δ[A264443(n)-n²])`
-/

namespace A203724.P15817800958823546324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (f1 (n + 1) - f1 n).toNat

end

end A203724.P15817800958823546324

/-!
# A203725: Number of (n+1)X6 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203725, there is no canonical definition to state claims against.
-/

/-! ## A203725.P13582862103278322347

`A203728(A374005(n+1))`
-/

namespace A203725.P13582862103278322347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A374005 (n + 1)).toNat

end

end A203725.P13582862103278322347

/-! ## A203725.P12165705981805910127

`A203728(A056000(n)+15)`
-/

namespace A203725.P12165705981805910127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A056000 n + 15).toNat

end

end A203725.P12165705981805910127

/-! ## A203725.P1729526508857643941

`A203728(A000217(n+4)+5)`
-/

namespace A203725.P1729526508857643941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A000217 (n + 4) + 5).toNat

end

end A203725.P1729526508857643941

/-! ## A203725.P5024525094369057377

`A203728(A027379(n+2)+8)`
-/

namespace A203725.P5024525094369057377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A027379 (n + 2) + 8).toNat

end

end A203725.P5024525094369057377

/-! ## A203725.P8735866973535597884

`A203728(eq[4, A002262(n)]+1)`
-/

namespace A203725.P8735866973535597884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A203725.P8735866973535597884

/-!
# A203726: Number of (n+1)X7 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203726, there is no canonical definition to state claims against.
-/

/-! ## A203726.P1831508645452712121

`A203728(A374007(n+1))`
-/

namespace A203726.P1831508645452712121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A374007 (n + 1)).toNat

end

end A203726.P1831508645452712121

/-! ## A203726.P11198545828189628492

`A203728(Δ[A264443(n)]+10)`
-/

namespace A203726.P11198545828189628492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (f1 (n + 1) - f1 n + 10).toNat

end

end A203726.P11198545828189628492

/-! ## A203726.P12171952162060419875

`A203728(A167499(n+4)+1)`
-/

namespace A203726.P12171952162060419875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A167499 (n + 4) + 1).toNat

end

end A203726.P12171952162060419875

/-! ## A203726.P8490864316716812520

`A203728(A133263(n+5)+4)`
-/

namespace A203726.P8490864316716812520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A133263 (n + 5) + 4).toNat

end

end A203726.P8490864316716812520

/-! ## A203726.P13405391235196389722

`A203728(A000217(n+5)+6)`
-/

namespace A203726.P13405391235196389722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A000217 (n + 5) + 6).toNat

end

end A203726.P13405391235196389722

/-!
# A203727: Number of (n+1)X8 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203727, there is no canonical definition to state claims against.
-/

/-! ## A203727.P56770590432349451

`A203728(A374008(n+1))`
-/

namespace A203727.P56770590432349451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A374008 (n + 1)).toNat

end

end A203727.P56770590432349451

/-! ## A203727.P15136678098214327944

`A203728(A167614(n+5)+4)`
-/

namespace A203727.P15136678098214327944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A167614 (n + 5) + 4).toNat

end

end A203727.P15136678098214327944

/-! ## A203727.P12728891285482384082

`A203728(A000217(n+6)+7)`
-/

namespace A203727.P12728891285482384082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A000217 (n + 6) + 7).toNat

end

end A203727.P12728891285482384082

/-! ## A203727.P13623275021127245447

`A203728(A034856(n+5)+9)`
-/

namespace A203727.P13623275021127245447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (A034856 (n + 5) + 9).toNat

end

end A203727.P13623275021127245447

/-! ## A203727.P12949914555297113299

`A203728(eq[8, A004736(n+1)]-2*n)`
-/

namespace A203727.P12949914555297113299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A203727.P12949914555297113299

/-!
# A203729: Number of (n+1) X 3 0..7 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203729, there is no canonical definition to state claims against.
-/

/-! ## A203729.P18122284029530096681

`A203732(∑[n+1]+2)`
-/

namespace A203729.P18122284029530096681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203732 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203729.P18122284029530096681

/-! ## A203729.P17101607720659715067

`record[A203732(Δ[A003453(n+5)])]`
-/

namespace A203729.P17101607720659715067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203732 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203729.P17101607720659715067

/-!
# A203730: Number of (n+1) X 4 0..7 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203730, there is no canonical definition to state claims against.
-/

/-! ## A203730.P920376100133202377

`A203732(∑[n+2]+4)`
-/

namespace A203730.P920376100133202377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203732 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203730.P920376100133202377

/-!
# A203731: 

The programs for A203731, there is no canonical definition to state claims against.
-/

/-! ## A203731.P4442429482109769802

`A203732(A055999(n)+10)`
-/

namespace A203731.P4442429482109769802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203732 (A055999 n + 10).toNat

end

end A203731.P4442429482109769802

/-!
# A203733: Number of (n+1)X(n+1) 0..3 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203733, there is no canonical definition to state claims against.
-/

/-! ## A203733.P6736912981852437094

`A203741(∑[4*n]+1)`
-/

namespace A203733.P6736912981852437094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203733.P6736912981852437094

/-! ## A203733.P5667687368279751240

`lcm(2, A203741(A001844(n)))`
-/

namespace A203733.P5667687368279751240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203741 (A001844 n).toNat)

end

end A203733.P5667687368279751240

/-! ## A203733.P9449588995367568929

`record[A003982(n)*A203741(n+1)]`
-/

namespace A203733.P9449588995367568929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A203741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203733.P9449588995367568929

/-! ## A203733.P4655561447922172282

`record[gcd(A114327(n), A203741(n+1))]`
-/

namespace A203733.P4655561447922172282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A203741 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203733.P4655561447922172282

/-!
# A203734: Number of (n+1)X2 0..3 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203734, there is no canonical definition to state claims against.
-/

/-! ## A203734.P13756021263174184299

`A203741(∑[n]+1)`
-/

namespace A203734.P13756021263174184299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203734.P13756021263174184299

/-! ## A203734.P14319194885575753836

`record[A203741(Δ[A053436(n+1)])]`
-/

namespace A203734.P14319194885575753836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203734.P14319194885575753836

/-! ## A203734.P16453464112432674089

`record[A203741(n+1)/A008459(n)]`
-/

namespace A203734.P16453464112432674089
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203741 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203734.P16453464112432674089

/-! ## A203734.P2914098491318979549

`record[A203741(n+1)/A028412(n)]`
-/

namespace A203734.P2914098491318979549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203741 (n + 1) : ℚ) / (A028412 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203734.P2914098491318979549

/-! ## A203734.P10033897359016581009

`record[A203741(n+1)/A073165(n)]`
-/

namespace A203734.P10033897359016581009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203741 (n + 1) : ℚ) / (A073165 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203734.P10033897359016581009

/-!
# A203735: Number of (n+1)X3 0..3 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203735, there is no canonical definition to state claims against.
-/

/-! ## A203735.P7631593403909475635

`A203741(∑[n+1]+2)`
-/

namespace A203735.P7631593403909475635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203735.P7631593403909475635

/-! ## A203735.P2398231493271499007

`record[A203741(Δ[A053436(n+1)]+1)]`
-/

namespace A203735.P2398231493271499007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203735.P2398231493271499007

/-! ## A203735.P4708657522540067469

`record[A203741(A133263(A008611(n)))]`
-/

namespace A203735.P4708657522540067469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203735.P4708657522540067469

/-! ## A203735.P6959515664111860735

`A203741(A133263(n+1))^A008836(n+1)²`
-/

namespace A203735.P6959515664111860735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203741 (A133263 (n + 1)).toNat : ℚ) ^ (A008836 (n + 1) ^ 2 : ℤ)

end

end A203735.P6959515664111860735

/-! ## A203735.P16248090390064512186

`A203741(A133263(n+1))^A000045(n²%(n+1))^n`
-/

namespace A203735.P16248090390064512186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203741 (A133263 (n + 1)).toNat : ℚ) ^ (A000045 (n ^ 2 % (n + 1)) ^ n : ℤ)

end

end A203735.P16248090390064512186

/-!
# A203736: Number of (n+1)X4 0..3 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203736, there is no canonical definition to state claims against.
-/

/-! ## A203736.P18191162676237805482

`A203741(∑[n+2]+4)`
-/

namespace A203736.P18191162676237805482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203736.P18191162676237805482

/-! ## A203736.P2336161757021356777

`A203741(A167614(n+1))+A185284(n)`
-/

namespace A203736.P2336161757021356777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A167614 (n + 1)).toNat + A185284 n

end

end A203736.P2336161757021356777

/-! ## A203736.P9221337349385067112

`lcm(A033999(n), A203741(A167614(n+1)))`
-/

namespace A203736.P9221337349385067112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A203741 (A167614 (n + 1)).toNat)

end

end A203736.P9221337349385067112

/-! ## A203736.P6326871056343800662

`or(A000038(n), A203741(A167614(n+1)))`
-/

namespace A203736.P6326871056343800662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A203741 (A167614 (n + 1)).toNat)

end

end A203736.P6326871056343800662

/-! ## A203736.P17058465716982362723

`A206499(n+1)+A203741(A167614(n+1))`
-/

namespace A203736.P17058465716982362723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206499 (n + 1) + A203741 (A167614 (n + 1)).toNat

end

end A203736.P17058465716982362723

/-!
# A203737: Number of (n+1)X5 0..3 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203737, there is no canonical definition to state claims against.
-/

/-! ## A203737.P1814694703081279558

`A203741(A374004(n+1))`
-/

namespace A203737.P1814694703081279558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A374004 (n + 1)).toNat

end

end A203737.P1814694703081279558

/-! ## A203737.P5914124192527317237

`A203741(A141214(n)+7)`
-/

namespace A203737.P5914124192527317237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A141214 n + 7).toNat

end

end A203737.P5914124192527317237

/-! ## A203737.P5015769661615030777

`A203741(A052905(n)+9)`
-/

namespace A203737.P5015769661615030777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A052905 n + 9).toNat

end

end A203737.P5015769661615030777

/-! ## A203737.P11266724316234244140

`A203741(A167614(n+2)+1)`
-/

namespace A203737.P11266724316234244140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A167614 (n + 2) + 1).toNat

end

end A203737.P11266724316234244140

/-! ## A203737.P14783231338555578945

`A203741(A167487(n+2)-3)`
-/

namespace A203737.P14783231338555578945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A167487 (n + 2) - 3).toNat

end

end A203737.P14783231338555578945

/-!
# A203738: Number of (n+1)X6 0..3 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203738, there is no canonical definition to state claims against.
-/

/-! ## A203738.P8508391748923555717

`A203741(A374005(n+1))`
-/

namespace A203738.P8508391748923555717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A374005 (n + 1)).toNat

end

end A203738.P8508391748923555717

/-! ## A203738.P12631340919925851656

`A203741(A167499(n+3))`
-/

namespace A203738.P12631340919925851656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A167499 (n + 3)).toNat

end

end A203738.P12631340919925851656

/-! ## A203738.P721748405422423433

`A203741(A167614(n+3)+2)`
-/

namespace A203738.P721748405422423433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A167614 (n + 3) + 2).toNat

end

end A203738.P721748405422423433

/-! ## A203738.P12682545616467683525

`A203741(A000096(n+3)+6)`
-/

namespace A203738.P12682545616467683525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A000096 (n + 3) + 6).toNat

end

end A203738.P12682545616467683525

/-! ## A203738.P15786407667378292250

`A203741(A046691(n+2)+9)`
-/

namespace A203738.P15786407667378292250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A046691 (n + 2) + 9).toNat

end

end A203738.P15786407667378292250

/-!
# A203739: Number of (n+1)X7 0..3 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203739, there is no canonical definition to state claims against.
-/

/-! ## A203739.P9766760268901041491

`A203741(A374007(n+1))`
-/

namespace A203739.P9766760268901041491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A374007 (n + 1)).toNat

end

end A203739.P9766760268901041491

/-! ## A203739.P8861857028742613406

`A203741(A167499(n+4)+1)`
-/

namespace A203739.P8861857028742613406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A167499 (n + 4) + 1).toNat

end

end A203739.P8861857028742613406

/-! ## A203739.P6427886502714803624

`A203741(A052905(n+3))`
-/

namespace A203739.P6427886502714803624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A052905 (n + 3)).toNat

end

end A203739.P6427886502714803624

/-! ## A203739.P14422803936119264480

`A203741(A056119(n)+16)`
-/

namespace A203739.P14422803936119264480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A056119 n + 16).toNat

end

end A203739.P14422803936119264480

/-! ## A203739.P7303691723607775329

`A203741(eq[3, A219347(n)])`
-/

namespace A203739.P7303691723607775329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203739.P7303691723607775329

/-!
# A203740: Number of (n+1)X8 0..3 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203740, there is no canonical definition to state claims against.
-/

/-! ## A203740.P11566759695352448418

`A203741(A374008(n+1))`
-/

namespace A203740.P11566759695352448418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A374008 (n + 1)).toNat

end

end A203740.P11566759695352448418

/-! ## A203740.P7609611262036893486

`A203741(A167487(n+5))`
-/

namespace A203740.P7609611262036893486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A167487 (n + 5)).toNat

end

end A203740.P7609611262036893486

/-! ## A203740.P4652316353966179425

`A203741(eq[11, A066657(n)])`
-/

namespace A203740.P4652316353966179425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203740.P4652316353966179425

/-! ## A203740.P2407308300906141196

`A203741(A000124(n+6)+6)`
-/

namespace A203740.P2407308300906141196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (A000124 (n + 6) + 6).toNat

end

end A203740.P2407308300906141196

/-! ## A203740.P4106030410387813711

`A203741(eq[4, A219347(n)])`
-/

namespace A203740.P4106030410387813711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203740.P4106030410387813711

/-!
# A203742: Vandermonde sequence using x^2 + xy + y^2 applied to the first n Fibonacci numbers, A000045.

The programs for A203742, there is no canonical definition to state claims against.
-/

/-! ## A203742.P180350136342584142

`a(n-1)*A203743(n)` with `a(0)=1`
-/

namespace A203742.P180350136342584142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203743 n

end

end A203742.P180350136342584142

/-!
# A203743: v(n+1)/v(n), where v=A203742.

The programs for A203743, there is no canonical definition to state claims against.
-/

/-! ## A203743.P1507571901031820983

`ratio[A203742(n+1)]`
-/

namespace A203743.P1507571901031820983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203742 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203743.P1507571901031820983

/-! ## A203743.P10293697611962251999

`A203742(A072088(n+2))/A203742(n+1)`
-/

namespace A203743.P10293697611962251999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203742 (A072088 (n + 2)).toNat : ℚ) / (A203742 (n + 1) : ℚ)

end

end A203743.P10293697611962251999

/-!
# A203744: Vandermonde sequence using x^2 - xy + y^2 applied to the first n Fibonacci numbers, A000045.

The programs for A203744, there is no canonical definition to state claims against.
-/

/-! ## A203744.P1496369581321803747

`a(n-1)*A203745(n)` with `a(0)=1`
-/

namespace A203744.P1496369581321803747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203745 n

end

end A203744.P1496369581321803747

/-! ## A203744.P17617088081353862474

`∏[A203745(A028310(n))]`
-/

namespace A203744.P17617088081353862474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203745 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203744.P17617088081353862474

/-!
# A203745: v(n+1)/v(n), where v=A203744.

The programs for A203745, there is no canonical definition to state claims against.
-/

/-! ## A203745.P17132483595734703108

`ratio[A203744(n+1)]`
-/

namespace A203745.P17132483595734703108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203744 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203745.P17132483595734703108

/-! ## A203745.P9715744949797885416

`A203744(A072088(n+2))/A203744(n+1)`
-/

namespace A203745.P9715744949797885416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203744 (A072088 (n + 2)).toNat : ℚ) / (A203744 (n + 1) : ℚ)

end

end A203745.P9715744949797885416

/-!
# A203746: Vandermonde sequence using x^2 + y^2 applied to the Fibonacci numbers (1,2,3,5,...,F(n+1)), where F=A000045.

The programs for A203746, there is no canonical definition to state claims against.
-/

/-! ## A203746.P11227248283718995800

`a(n-1)*A203747(n)` with `a(0)=1, a(1)=2`
-/

namespace A203746.P11227248283718995800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A203747 n

end

end A203746.P11227248283718995800

/-!
# A203747: v(n+1)/v(n), where v=A203746.

The programs for A203747, there is no canonical definition to state claims against.
-/

/-! ## A203747.P17255073581966021986

`ratio[A203746(n+1)]`
-/

namespace A203747.P17255073581966021986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203746 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203747.P17255073581966021986

/-!
# A203748: Vandermonde sequence using x^2 + xy + y^2 applied to (0,1,1,2,2,...,floor(n/2)).

The programs for A203748, there is no canonical definition to state claims against.
-/

/-! ## A203748.P9293489571582140193

`a(n-1)*A203749(n)` with `a(0)=1`
-/

namespace A203748.P9293489571582140193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203749 n

end

end A203748.P9293489571582140193

/-! ## A203748.P15072030400706108663

`∏[A203749(abs(A274922(n)))]`
-/

namespace A203748.P15072030400706108663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203749 |A274922 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203748.P15072030400706108663

/-! ## A203748.P14368664637819673760

`∏[A203749(n+1)]/A203749(n+1)`
-/

namespace A203748.P14368664637819673760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203749 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203749 (n + 1) : ℚ)

end

end A203748.P14368664637819673760

/-!
# A203749: v(n+1)/v(n), where v=A203748.

The programs for A203749, there is no canonical definition to state claims against.
-/

/-! ## A203749.P146148570323682260

`ratio[A203748(n+1)]`
-/

namespace A203749.P146148570323682260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203748 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203749.P146148570323682260

/-! ## A203749.P14991791496574444612

`record[ratio[A203748(A000267(n))]]`
-/

namespace A203749.P14991791496574444612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203748 (A000267 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203749.P14991791496574444612

/-! ## A203749.P15662413721058988349

`record[ratio[A203748(A008619(n))]]`
-/

namespace A203749.P15662413721058988349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203748 (A008619 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203749.P15662413721058988349

/-! ## A203749.P6090331776252174010

`record[ratio[A203748(A137735(n))]]`
-/

namespace A203749.P6090331776252174010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203748 (A137735 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203749.P6090331776252174010

/-! ## A203749.P1995052929129595951

`A203748(n+2)/A203748(n+1)`
-/

namespace A203749.P1995052929129595951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203748 (n + 2) : ℚ) / (A203748 (n + 1) : ℚ)

end

end A203749.P1995052929129595951

/-!
# A203750: Square root of v(2n)/v(2n-1), where v=A203748.

The programs for A203750, there is no canonical definition to state claims against.
-/

/-! ## A203750.P13341974727381021427

`A203751(n+1)/(n+1)`
-/

namespace A203750.P13341974727381021427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203751 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A203750.P13341974727381021427

/-! ## A203750.P717404026142479592

`sqrt(A203749(2*n+1))`
-/

namespace A203750.P717404026142479592
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A203749 (2 * n + 1) : ℝ)

end

end A203750.P717404026142479592

/-! ## A203750.P8819622724114121016

`sqrt(A203760(2*n+1)/3)`
-/

namespace A203750.P8819622724114121016
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A203760 (2 * n + 1) : ℚ) / 3 : ℝ)

end

end A203750.P8819622724114121016

/-! ## A203750.P16539292555337037969

`record[sqrt(A203749(lcm(4, n+1)/4))]`
-/

namespace A203750.P16539292555337037969
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A203749 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203750.P16539292555337037969

/-! ## A203750.P6587702241846762357

`record[sqrt(A203749((n+1)/2^val(n+1, 2)))]`
-/

namespace A203750.P6587702241846762357
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A203749 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203750.P6587702241846762357

/-!
# A203751: Square root of v(2*n+1)/(3*v(2*n)), where v = A203748.

The programs for A203751, there is no canonical definition to state claims against.
-/

/-! ## A203751.P11384003334643205564

`(n+1)*A203750(n+1)`
-/

namespace A203751.P11384003334643205564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A203750 (n + 1)

end

end A203751.P11384003334643205564

/-! ## A203751.P15716542964338359229

`(n+1)*sqrt(A203749(2*n+1))`
-/

namespace A203751.P15716542964338359229
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A203749 (2 * n + 1) : ℝ)

end

end A203751.P15716542964338359229

/-! ## A203751.P4927049487724588650

`(n+1)*sqrt(A203760(2*n+1)/3)`
-/

namespace A203751.P4927049487724588650
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt ((A203760 (2 * n + 1) : ℚ) / 3 : ℝ)

end

end A203751.P4927049487724588650

/-! ## A203751.P10635693911875044366

`sqrt(A203749(2*n+1))*A291769(n)`
-/

namespace A203751.P10635693911875044366
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A203749 (2 * n + 1) : ℝ) * (A291769 n : ℝ)

end

end A203751.P10635693911875044366

/-! ## A203751.P5850903575813440150

`root(A203749(2*n+1), 2-A010052(n²+1))*A291769(n)`
-/

namespace A203751.P5850903575813440150
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203749 (2 * n + 1) : ℝ) ^ (1 / (2 - A010052 (n ^ 2 + 1) : ℝ)) * (A291769 n : ℝ)

end

end A203751.P5850903575813440150

/-!
# A203752: Vandermonde sequence using x^2 - xy + y^2 applied to (0,1,1,2,2,...,floor(n/2)).

The programs for A203752, there is no canonical definition to state claims against.
-/

/-! ## A203752.P871326015473953231

`a(n-1)*A203753(n)` with `a(0)=1`
-/

namespace A203752.P871326015473953231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203753 n

end

end A203752.P871326015473953231

/-! ## A203752.P14183647803371712896

`∏[A203753(A028310(n))]`
-/

namespace A203752.P14183647803371712896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203753 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203752.P14183647803371712896

/-! ## A203752.P2418545076451510092

`∏[A203753(abs(A274922(n)))]`
-/

namespace A203752.P2418545076451510092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203753 |A274922 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203752.P2418545076451510092

/-! ## A203752.P9485204135580214424

`∏[A203753(A233583(n+1))]`
-/

namespace A203752.P9485204135580214424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203753 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203752.P9485204135580214424

/-! ## A203752.P5480513368208957726

`∏[A203753(A274922(2*n)-n)]`
-/

namespace A203752.P5480513368208957726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203753 (A274922 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203752.P5480513368208957726

/-!
# A203753: v(n+1)/v(n), where v=A203752.

The programs for A203753, there is no canonical definition to state claims against.
-/

/-! ## A203753.P12359347774899096091

`A203754(n+1)²`
-/

namespace A203753.P12359347774899096091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203754 (n + 1) ^ 2

end

end A203753.P12359347774899096091

/-! ## A203753.P4669565470505309051

`(A008619(n)*A203765(A028310(n)))²`
-/

namespace A203753.P4669565470505309051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 n * A203765 (A028310 n).toNat) ^ 2

end

end A203753.P4669565470505309051

/-! ## A203753.P6611370818930096781

`A203754(A008619(2*n+1))*A203754(n+1)`
-/

namespace A203753.P6611370818930096781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203754 (A008619 (2 * n + 1)).toNat * A203754 (n + 1)

end

end A203753.P6611370818930096781

/-! ## A203753.P16291269492095507935

`A203754(n+1)^A020639(A205879(n+1))`
-/

namespace A203753.P16291269492095507935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203754 (n + 1) : ℚ) ^ (A020639 (A205879 (n + 1)).toNat : ℤ)

end

end A203753.P16291269492095507935

/-! ## A203753.P9406931713402748234

`A203754(n+1)^A000040(A059197(n+1))`
-/

namespace A203753.P9406931713402748234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203754 (n + 1) : ℚ) ^ (A000040 (A059197 (n + 1)).toNat : ℤ)

end

end A203753.P9406931713402748234

/-!
# A203754: Square root of A203753(n).

The programs for A203754, there is no canonical definition to state claims against.
-/

/-! ## A203754.P94114185077547941

`A008619(n)*A203765(or(n, C(n, n²)))`
-/

namespace A203754.P94114185077547941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A203765 (Nat.lor n (Nat.choose n (n ^ 2)))

end

end A203754.P94114185077547941

/-! ## A203754.P2117622820026813424

`A110654(n+1)*A203765(or(n, C(n, n²)))`
-/

namespace A203754.P2117622820026813424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) * A203765 (Nat.lor n (Nat.choose n (n ^ 2)))

end

end A203754.P2117622820026813424

/-! ## A203754.P2216313707811353459

`A008619(n)*A203765(A028310(n))`
-/

namespace A203754.P2216313707811353459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A203765 (A028310 n).toNat

end

end A203754.P2216313707811353459

/-! ## A203754.P9138359260223584100

`A008619(n)*A203765(A000007(n)+n)`
-/

namespace A203754.P9138359260223584100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A203765 (A000007 n + (n : ℤ)).toNat

end

end A203754.P9138359260223584100

/-! ## A203754.P7383774092008837326

`A008619(n)*A203765(gcd(n, A008458(n)))`
-/

namespace A203754.P7383774092008837326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A203765 (Int.gcd (n : ℤ) (A008458 n))

end

end A203754.P7383774092008837326

/-!
# A203755: Vandermonde sequence using x^4 + y^4 applied to (0,1,1,2,2,...,floor(n/2)).

The programs for A203755, there is no canonical definition to state claims against.
-/

/-! ## A203755.P8769030727065633076

`a(n-1)*A203756(n)` with `a(0)=1`
-/

namespace A203755.P8769030727065633076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203756 n

end

end A203755.P8769030727065633076

/-! ## A203755.P7691793732027760945

`∏[A203756(A028310(n))]`
-/

namespace A203755.P7691793732027760945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203756 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203755.P7691793732027760945

/-!
# A203756: v(n+1)/v(n), where v=A203755.

The programs for A203756, there is no canonical definition to state claims against.
-/

/-! ## A203756.P6350948039866214206

`ratio[A203755(n+1)]`
-/

namespace A203756.P6350948039866214206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203755 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203756.P6350948039866214206

/-! ## A203756.P7484623289766622962

`A203755(n+2)/A203755(n+1)`
-/

namespace A203756.P7484623289766622962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203755 (n + 2) : ℚ) / (A203755 (n + 1) : ℚ)

end

end A203756.P7484623289766622962

/-!
# A203757: Square root of v(2n)/v(2n-1), where v=A203755.

The programs for A203757, there is no canonical definition to state claims against.
-/

/-! ## A203757.P5200542985667477447

`A203758(n+1)/(n+1)²`
-/

namespace A203757.P5200542985667477447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203758 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A203757.P5200542985667477447

/-! ## A203757.P6509336384356576911

`sqrt(A203756(2*n+1))`
-/

namespace A203757.P6509336384356576911
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A203756 (2 * n + 1) : ℝ)

end

end A203757.P6509336384356576911

/-!
# A203758: Square root of v(2n+1)/(2*v(2n)), where v=A203755.

The programs for A203758, there is no canonical definition to state claims against.
-/

/-! ## A203758.P14870390891276405784

`(n+1)²*A203757(n+1)`
-/

namespace A203758.P14870390891276405784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A203757 (n + 1)

end

end A203758.P14870390891276405784

/-! ## A203758.P8524772198797795022

`gcd((n+1)*(n+1)*A203757(n+1), C(A004275(n), 4*n))`
-/

namespace A203758.P8524772198797795022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * ((n + 1 : ℤ) * A203757 (n + 1))) (Nat.choose (A004275 n).toNat (4 * n) : ℤ)

end

end A203758.P8524772198797795022

/-! ## A203758.P7261371957177729461

`A096094(A179051(n))+(n+1)*(n+1)*A203757(n+1)`
-/

namespace A203758.P7261371957177729461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096094 (A179051 n).toNat + (n + 1 : ℤ) * ((n + 1 : ℤ) * A203757 (n + 1))

end

end A203758.P7261371957177729461

/-! ## A203758.P10507708745521265189

`A096094(A206244(n))+(n+1)*(n+1)*A203757(n+1)`
-/

namespace A203758.P10507708745521265189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096094 (A206244 n).toNat + (n + 1 : ℤ) * ((n + 1 : ℤ) * A203757 (n + 1))

end

end A203758.P10507708745521265189

/-! ## A203758.P15293596578923573576

`A096094(A206245(n))+(n+1)*(n+1)*A203757(n+1)`
-/

namespace A203758.P15293596578923573576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096094 (A206245 n).toNat + (n + 1 : ℤ) * ((n + 1 : ℤ) * A203757 (n + 1))

end

end A203758.P15293596578923573576

/-!
# A203759: Vandermonde sequence using x^2 + xy + y^2 applied to (1,1,2,2,...,[n/2]).

The programs for A203759, there is no canonical definition to state claims against.
-/

/-! ## A203759.P4285875859366629750

`∏[A203749(n+1)/A008619(n)²]`
-/

namespace A203759.P4285875859366629750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203749 (n + 1) : ℚ) / (A008619 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203759.P4285875859366629750

/-! ## A203759.P14753201860743869318

`∏[A203760(n+1)]/A203760(n+1)`
-/

namespace A203759.P14753201860743869318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203760 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203760 (n + 1) : ℚ)

end

end A203759.P14753201860743869318

/-!
# A203760: v(n+1)/v(n), where v=A203759.

The programs for A203760, there is no canonical definition to state claims against.
-/

/-! ## A203760.P5090840759772263562

`A203749(n+2)/A008619(n+1)²`
-/

namespace A203760.P5090840759772263562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203749 (n + 2) : ℚ) / (A008619 (n + 1) ^ 2 : ℚ)

end

end A203760.P5090840759772263562

/-! ## A203760.P16290509746986374909

`ratio[A203759(n+1)]`
-/

namespace A203760.P16290509746986374909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203759 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203760.P16290509746986374909

/-! ## A203760.P15740336511645551498

`record[ratio[A203759(A080513(n))]]`
-/

namespace A203760.P15740336511645551498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203759 (A080513 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203760.P15740336511645551498

/-! ## A203760.P6770823580509339814

`ratio[record[A203759(A158416(n))]]`
-/

namespace A203760.P6770823580509339814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203759 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203760.P6770823580509339814

/-! ## A203760.P6785896854002801442

`A203759(n+2)/A203759(n+1)`
-/

namespace A203760.P6785896854002801442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203759 (n + 2) : ℚ) / (A203759 (n + 1) : ℚ)

end

end A203760.P6785896854002801442

/-!
# A203761: a(n)=f(a(n-1)+1,a(n-2),a(n-3)), where f(x,y,z)=yz+zx+xy and a(1)=0, a(2)=0, a(3)=1.

The programs for A203761, there is no canonical definition to state claims against.
-/

/-! ## A203761.P6396500788207233891

`A298731(or(2*n^(n%2)-1, A000110(n)))`
-/

namespace A203761.P6396500788207233891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298731 (Int.lor ((2 * n ^ (n % 2) : ℤ) - 1) (A000110 n)).toNat

end

end A203761.P6396500788207233891

/-! ## A203761.P17241498149512620593

`A298731(or(A000110(n), A034188(n)))`
-/

namespace A203761.P17241498149512620593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298731 (Int.lor (A000110 n) (A034188 n)).toNat

end

end A203761.P17241498149512620593

/-! ## A203761.P6652171316961431307

`A298731(or(A000110(n), A275972(n)))`
-/

namespace A203761.P6652171316961431307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298731 (Int.lor (A000110 n) (A275972 n)).toNat

end

end A203761.P6652171316961431307

/-! ## A203761.P9409571726198664418

`A091182(A032130(n+1)-A135153(n))`
-/

namespace A203761.P9409571726198664418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091182 (A032130 (n + 1) - A135153 n).toNat

end

end A203761.P9409571726198664418

/-! ## A203761.P14198641065639200199

`A065712(or(A001250(n), A006878(n+1)))`
-/

namespace A203761.P14198641065639200199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 (Int.lor (A001250 n) (A006878 (n + 1))).toNat

end

end A203761.P14198641065639200199

/-!
# A203762: a(n)=f(a(n-1),a(n-2)+1,a(n-3)), where f(x,y,z)=yz+zx+xy and (a(1),a(2),a(3))=(0,0,1).

The programs for A203762, there is no canonical definition to state claims against.
-/

/-! ## A203762.P5903347790036077435

`A321318(A076325(n+1))-A009203(n)`
-/

namespace A203762.P5903347790036077435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321318 (A076325 (n + 1)).toNat - A009203 n

end

end A203762.P5903347790036077435

/-!
# A203763: Vandermonde sequence using x^2 - xy + y^2 applied to (1,1,2,2,...,[n/2]).

The programs for A203763, there is no canonical definition to state claims against.
-/

/-! ## A203763.P9852409746019956636

`a(n-1)*A203764(n)` with `a(0)=1`
-/

namespace A203763.P9852409746019956636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203764 n

end

end A203763.P9852409746019956636

/-! ## A203763.P3573181711740606865

`∏[A203765(A028310(n))²]`
-/

namespace A203763.P3573181711740606865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203765 (A028310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203763.P3573181711740606865

/-! ## A203763.P11202062899074483865

`∏[A203764(n+1)]/A203764(n+1)`
-/

namespace A203763.P11202062899074483865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203764 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203764 (n + 1) : ℚ)

end

end A203763.P11202062899074483865

/-!
# A203764: v(n+1)/v(n), where v=A203763.

The programs for A203764, there is no canonical definition to state claims against.
-/

/-! ## A203764.P17680893224637353061

`A203765(n+1)²`
-/

namespace A203764.P17680893224637353061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203765 (n + 1) ^ 2

end

end A203764.P17680893224637353061

/-! ## A203764.P17190649281432904107

`record[A203765(A133310(n))²]`
-/

namespace A203764.P17190649281432904107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203765 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203764.P17190649281432904107

/-! ## A203764.P5336747057833848205

`record[A203765(A133265(n)/2)²]`
-/

namespace A203764.P5336747057833848205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203765 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203764.P5336747057833848205

/-! ## A203764.P6179635775489826966

`(A203754(n+2)/A080513(n))²`
-/

namespace A203764.P6179635775489826966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A203754 (n + 2) : ℚ) / (A080513 n : ℚ)) ^ 2

end

end A203764.P6179635775489826966

/-! ## A203764.P9926264128605153517

`(A203754(n+2)/A008619(n+1))²`
-/

namespace A203764.P9926264128605153517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A203754 (n + 2) : ℚ) / (A008619 (n + 1) : ℚ)) ^ 2

end

end A203764.P9926264128605153517

/-!
# A203765: Square root of A203764(n).

The programs for A203765, there is no canonical definition to state claims against.
-/

/-! ## A203765.P15428366494530392745

`A203754(n+2)/A080513(n)`
-/

namespace A203765.P15428366494530392745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203754 (n + 2) : ℚ) / (A080513 n : ℚ)

end

end A203765.P15428366494530392745

/-! ## A203765.P6975764415301887443

`A203754(n+2)/A008619(n+1)`
-/

namespace A203765.P6975764415301887443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203754 (n + 2) : ℚ) / (A008619 (n + 1) : ℚ)

end

end A203765.P6975764415301887443

/-! ## A203765.P14517493862266781661

`sqrt(A203764(n+1))`
-/

namespace A203765.P14517493862266781661
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A203764 (n + 1) : ℝ)

end

end A203765.P14517493862266781661

/-! ## A203765.P13587447549908481189

`root(A203764(n+1), A085058(2*n))`
-/

namespace A203765.P13587447549908481189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203764 (n + 1) : ℝ) ^ (1 / (A085058 (2 * n) : ℝ))

end

end A203765.P13587447549908481189

/-! ## A203765.P5961838312430610345

`root(A203764(n+1), A001316(A001316(n)))`
-/

namespace A203765.P5961838312430610345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203764 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A203765.P5961838312430610345

/-!
# A203766: Vandermonde sequence using x^2 + y^2 applied to (1,1,2,2,...,floor(n/2)).

The programs for A203766, there is no canonical definition to state claims against.
-/

/-! ## A203766.P967175558993762486

`a(n-1)*A203767(n)` with `a(0)=1`
-/

namespace A203766.P967175558993762486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203767 n

end

end A203766.P967175558993762486

/-! ## A203766.P8674449512098469845

`∏[A202945(n+1)/A008619(n)²]`
-/

namespace A203766.P8674449512098469845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202945 (n + 1) : ℚ) / (A008619 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203766.P8674449512098469845

/-! ## A203766.P5162417935006131748

`∏[A203767(n+1)]/A203767(n+1)`
-/

namespace A203766.P5162417935006131748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203767 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203767 (n + 1) : ℚ)

end

end A203766.P5162417935006131748

/-!
# A203767: v(n+1)/v(n), where v=A203766.

The programs for A203767, there is no canonical definition to state claims against.
-/

/-! ## A203767.P4751698129943822870

`ratio[A203766(n+1)]`
-/

namespace A203767.P4751698129943822870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203766 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203767.P4751698129943822870

/-! ## A203767.P1989262843544906497

`ratio[record[A203766(A064066(n))]]`
-/

namespace A203767.P1989262843544906497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203766 (A064066 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203767.P1989262843544906497

/-! ## A203767.P6048435795885025955

`ratio[record[A203766(A126759(n))]]`
-/

namespace A203767.P6048435795885025955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203766 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203767.P6048435795885025955

/-! ## A203767.P9843864043892860748

`ratio[record[A203766(A195663(n))]]`
-/

namespace A203767.P9843864043892860748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203766 (A195663 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203767.P9843864043892860748

/-! ## A203767.P9020427039683757351

`A203766(n+2)/A203766(n+1)`
-/

namespace A203767.P9020427039683757351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203766 (n + 2) : ℚ) / (A203766 (n + 1) : ℚ)

end

end A203767.P9020427039683757351

/-!
# A203769: a(n) = (A203768(n+2) - 1)/2.

The programs for A203769, there is no canonical definition to state claims against.
-/

/-! ## A203769.P6494655791949168468

`(A203768(n+3)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203769.P6494655791949168468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203768 (n + 3) - 1 : ℚ) / 2

end

end A203769.P6494655791949168468

/-! ## A203769.P5593974247099888907

`floor(A203768(n+3)/2)`
-/

namespace A203769.P5593974247099888907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A203768 (n + 3) : ℚ) / 2⌋

end

end A203769.P5593974247099888907

/-!
# A203770: Vandermonde sequence using x^4 + y^4 applied to (1,1,2,2,...,floor(n/2)).

The programs for A203770, there is no canonical definition to state claims against.
-/

/-! ## A203770.P5267808510246036772

`a(n-1)*A203771(n)` with `a(0)=1`
-/

namespace A203770.P5267808510246036772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203771 n

end

end A203770.P5267808510246036772

/-!
# A203771: v(n+1)/v(n), where v=A203770.

The programs for A203771, there is no canonical definition to state claims against.
-/

/-! ## A203771.P2960472728431481849

`ratio[A203770(n+1)]`
-/

namespace A203771.P2960472728431481849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203770 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203771.P2960472728431481849

/-!
# A203773: Vandermonde sequence using x^2 + y^2 applied to (0,1,1,2,2,...,floor(n/2)).

The programs for A203773, there is no canonical definition to state claims against.
-/

/-! ## A203773.P18126457312722572166

`a(n-1)*A202945(n)` with `a(0)=1`
-/

namespace A203773.P18126457312722572166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A202945 n

end

end A203773.P18126457312722572166

/-! ## A203773.P14777830252045766968

`∏[A202945(n+1)]/A202945(n+1)`
-/

namespace A203773.P14777830252045766968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202945 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A202945 (n + 1) : ℚ)

end

end A203773.P14777830252045766968

/-!
# A203774: Square root of v(2n)/v(2n-1), where v=A203773.

The programs for A203774, there is no canonical definition to state claims against.
-/

/-! ## A203774.P17766716772762208193

`A203775(n+1)/(n+1)`
-/

namespace A203774.P17766716772762208193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203775 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A203774.P17766716772762208193

/-! ## A203774.P1239782116672190055

`A272244(n+1)/Δ[A163102(n)]`
-/

namespace A203774.P1239782116672190055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272244 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A203774.P1239782116672190055

/-! ## A203774.P6960099076992217732

`A227464(2*(n+1))/(2*A000079(n)²)`
-/

namespace A203774.P6960099076992217732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227464 (2 * (n + 1)) : ℚ) / (2 * A000079 n ^ 2 : ℚ)

end

end A203774.P6960099076992217732

/-! ## A203774.P2088321312492220417

`A227464(2*(n+1))/A000079(2*n+1)`
-/

namespace A203774.P2088321312492220417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227464 (2 * (n + 1)) : ℚ) / (A000079 (2 * n + 1) : ℚ)

end

end A203774.P2088321312492220417

/-! ## A203774.P17335645595243338901

`A227464(2*(n+1))/(2*A011782(n+1)²)`
-/

namespace A203774.P17335645595243338901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227464 (2 * (n + 1)) : ℚ) / (2 * A011782 (n + 1) ^ 2 : ℚ)

end

end A203774.P17335645595243338901

/-!
# A203775: Square root of v(2*n+1) / (2*v(2*n)), where v=A203773.

The programs for A203775, there is no canonical definition to state claims against.
-/

/-! ## A203775.P13903477830675282320

`(n+1)*A203774(n+1)`
-/

namespace A203775.P13903477830675282320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A203774 (n + 1)

end

end A203775.P13903477830675282320

/-! ## A203775.P11417118804960865957

`(n+1)*sqrt(A202945(2*n+1))`
-/

namespace A203775.P11417118804960865957
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A202945 (2 * n + 1) : ℝ)

end

end A203775.P11417118804960865957

/-! ## A203775.P9353535079082234040

`sqrt(A202945(2*n+1))*A291769(n)`
-/

namespace A203775.P9353535079082234040
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202945 (2 * n + 1) : ℝ) * (A291769 n : ℝ)

end

end A203775.P9353535079082234040

/-! ## A203775.P12474598045429881214

`sqrt(A202945(2*(n+1))/2)`
-/

namespace A203775.P12474598045429881214
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A202945 (2 * (n + 1)) : ℚ) / 2 : ℝ)

end

end A203775.P12474598045429881214

/-! ## A203775.P4775108586942780779

`A293290(n+1)/(2*A293290(n))`
-/

namespace A203775.P4775108586942780779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293290 (n + 1) : ℚ) / (2 * A293290 n : ℚ)

end

end A203775.P4775108586942780779

/-!
# A203776: Number of partitions of n into distinct parts 5k+1 or 5k+4.

The programs for A203776, there is no canonical definition to state claims against.
-/

/-! ## A203776.P13340833787802814885

`A025866(A026355(n)%A045611(n))`
-/

namespace A203776.P13340833787802814885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025866 (Int.tmod (A026355 n) (A045611 n)).toNat

end

end A203776.P13340833787802814885

/-! ## A203776.P4746595693730974427

`A185238(A096503(n+1))+A098884(A047263(n+1))`
-/

namespace A203776.P4746595693730974427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A096503 (n + 1)).toNat + A098884 (A047263 (n + 1)).toNat

end

end A203776.P4746595693730974427

/-! ## A203776.P10956457875414000100

`abs(A284321(n)%A010461(n+5))`
-/

namespace A203776.P10956457875414000100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A284321 n) (A010461 (n + 5))|

end

end A203776.P10956457875414000100

/-! ## A203776.P11983191197290075591

`A167151(gcd(A213380(n), A284321(n)))`
-/

namespace A203776.P11983191197290075591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (Int.gcd (A213380 n) (A284321 n))

end

end A203776.P11983191197290075591

/-! ## A203776.P13349994653120546398

`lcm(A001221(A329049(n)), A284321(n))`
-/

namespace A203776.P13349994653120546398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (A329049 n).toNat) (A284321 n)

end

end A203776.P13349994653120546398

/-!
# A203777: Aliquot sequence starting at 220.

The programs for A203777, the canonical program `A203777.P13121671589113151066` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203777 has offset 0).

The definition of A203777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203777.P13121671589113151066

`a(n-2)` with `a(0)=220, a(1)=284`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203777

/-- `a(n-2)` -/
def P13121671589113151066.Spec : Prop :=
  ∀ n, (P13121671589113151066.a n : ℤ) = A203777 n

theorem P13121671589113151066.correct : P13121671589113151066.Spec := by
  intro n
  simp only [A203777]

end A203777

/-!
# A203778: a(n) = -24*A015219(n-2)*a(n-1), with a(1) = 2.

The programs for A203778, the canonical program `A203778.P2292239256937765247` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203778 has offset 1).

The definition of A203778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-24*A015219(n-1)*a(n-1)` (program `A203778.P2292239256937765247`, by `A203778.P2292239256937765247.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A203778.P2292239256937765247

`-24*A015219(n-1)*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A203778

/-- `-24*A015219(n-1)*a(n-1)` -/
def P2292239256937765247.Spec : Prop :=
  ∀ n, P2292239256937765247.a n = A203778 (n + 1)

theorem P2292239256937765247.correct : P2292239256937765247.Spec := by
  intro n
  simp only [A203778, Nat.add_sub_cancel]

end A203778

/-! ## A203778.P4845486839035437587

`A204820(n+1)/4`
-/

namespace A203778.P4845486839035437587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204820 (n + 1) : ℚ) / 4

end

end A203778.P4845486839035437587

namespace A203778

/-- `A204820(n+1)/4` -/
def P4845486839035437587.Spec : Prop :=
  ∀ n, P4845486839035437587.a n = (A203778 (n + 1) : ℚ)

end A203778

/-!
# A203779: 

The programs for A203779, there is no canonical definition to state claims against.
-/

/-! ## A203779.P12781488318676587115

`A203787(∑[4*n]+1)`
-/

namespace A203779.P12781488318676587115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203787 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203779.P12781488318676587115

/-!
# A203780: Number of (n+1) X 2 0..3 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203780, there is no canonical definition to state claims against.
-/

/-! ## A203780.P10674210889321995141

`A203787(∑[n]+1)`
-/

namespace A203780.P10674210889321995141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203787 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203780.P10674210889321995141

/-! ## A203780.P9755395056749690213

`record[root(A203787(n+1), A013609(n))]`
-/

namespace A203780.P9755395056749690213
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203787 (n + 1) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203780.P9755395056749690213

/-! ## A203780.P14485133521621662371

`record[gcd(A203787(n+1), A322699(n))]`
-/

namespace A203780.P14485133521621662371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A203787 (n + 1)) (A322699 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203780.P14485133521621662371

/-! ## A203780.P9026129331205573979

`record[(1-A014473(n))*A203787(n+1)]`
-/

namespace A203780.P9026129331205573979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A014473 n) * A203787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203780.P9026129331205573979

/-! ## A203780.P7656186565872012438

`lcm(A097807(n), A203787(A000124(n)))`
-/

namespace A203780.P7656186565872012438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A203787 (A000124 n).toNat)

end

end A203780.P7656186565872012438

/-!
# A203781: Number of (n+1)X3 0..3 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203781, there is no canonical definition to state claims against.
-/

/-! ## A203781.P8163709663464090197

`A203787(∑[n+1]+2)`
-/

namespace A203781.P8163709663464090197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203787 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203781.P8163709663464090197

/-! ## A203781.P9311083908293252295

`record[root(A203787(n+2), A013609(n))]`
-/

namespace A203781.P9311083908293252295
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203787 (n + 2) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203781.P9311083908293252295

/-! ## A203781.P17400691878643337832

`record[A203787(Δ[A003453(n+5)])]`
-/

namespace A203781.P17400691878643337832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203787 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203781.P17400691878643337832

/-! ## A203781.P1297928637637804170

`record[A203787(lt[A013609(n+1), n])]`
-/

namespace A203781.P1297928637637804170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203787 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203781.P1297928637637804170

/-! ## A203781.P16538117029954040776

`record[gcd(A028305(n+1), A203787(n+2))]`
-/

namespace A203781.P16538117029954040776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028305 (n + 1)) (A203787 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203781.P16538117029954040776

/-!
# A203782: Number of (n+1)X4 0..3 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203782, there is no canonical definition to state claims against.
-/

/-! ## A203782.P16422633232341340933

`A203787(∑[n+2]+4)`
-/

namespace A203782.P16422633232341340933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203787 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203782.P16422633232341340933

/-! ## A203782.P10581589596232259696

`record[A203787(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A203782.P10581589596232259696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203787 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203782.P10581589596232259696

/-! ## A203782.P10347918794242275841

`A257297(n)+A203787(A167614(n+1))`
-/

namespace A203782.P10347918794242275841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n + A203787 (A167614 (n + 1)).toNat

end

end A203782.P10347918794242275841

/-! ## A203782.P11780066323995259053

`A326588(n)+A203787(A167614(n+1))`
-/

namespace A203782.P11780066323995259053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326588 n + A203787 (A167614 (n + 1)).toNat

end

end A203782.P11780066323995259053

/-! ## A203782.P12573838905464882894

`lcm(A014515(n), A203787(A167614(n+1)))`
-/

namespace A203782.P12573838905464882894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014515 n) (A203787 (A167614 (n + 1)).toNat)

end

end A203782.P12573838905464882894

/-!
# A203783: Number of (n+1)X5 0..3 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203783, there is no canonical definition to state claims against.
-/

/-! ## A203783.P7398056913546930340

`A203787(A167614(n+2)+1)`
-/

namespace A203783.P7398056913546930340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203787 (A167614 (n + 2) + 1).toNat

end

end A203783.P7398056913546930340

/-! ## A203783.P9405552336314563463

`A203787(A141214(n+1))`
-/

namespace A203783.P9405552336314563463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203787 (A141214 (n + 1)).toNat

end

end A203783.P9405552336314563463

/-!
# A203788: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203788, there is no canonical definition to state claims against.
-/

/-! ## A203788.P12204050870472541092

`A203796((n+1)²+n²)`
-/

namespace A203788.P12204050870472541092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 ((n + 1) ^ 2 + n ^ 2)

end

end A203788.P12204050870472541092

/-!
# A203789: Number of (n+1)X2 0..3 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203789, the canonical program `A203789.P2896006036350056960` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203789 has offset 1).

The definition of A203789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203789.P2896006036350056960

`16*7^(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203789

/-- `16*7^(n+1)` -/
def P2896006036350056960.Spec : Prop :=
  ∀ n, (P2896006036350056960.a n : ℤ) = A203789 (n + 1)

theorem P2896006036350056960.correct : P2896006036350056960.Spec := by
  intro n
  simp only [A203789, Nat.add_sub_cancel]

end A203789

/-! ## A203789.P14760982475454685056

`lcm(16, 7^(n+1))`
-/

namespace A203789.P14760982475454685056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 16 (7 ^ (n + 1))

end

end A203789.P14760982475454685056

namespace A203789

/-- `lcm(16, 7^(n+1))` -/
def P14760982475454685056.Spec : Prop :=
  ∀ n, (P14760982475454685056.a n : ℤ) = A203789 (n + 1)

end A203789

/-! ## A203789.P7571977786108330351

`Δ[ogf(16/(1-8x+7x^2))]`
-/

namespace A203789.P7571977786108330351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16] [1, -8, 7] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203789.P7571977786108330351

namespace A203789

/-- `Δ[ogf(16/(1-8x+7x^2))]` -/
def P7571977786108330351.Spec : Prop :=
  ∀ n, P7571977786108330351.a n = A203789 (n + 1)

end A203789

/-! ## A203789.P10176484665829246275

`Δ[7*(a(n-1)+16)]` with `a(0)=0`
-/

namespace A203789.P10176484665829246275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  7 * (f1 (n - 1) + 16)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A203789.P10176484665829246275

namespace A203789

/-- `Δ[7*(a(n-1)+16)]` -/
def P10176484665829246275.Spec : Prop :=
  ∀ n, P10176484665829246275.a n = A203789 (n + 1)

end A203789

/-! ## A203789.P2175020775762535411

`Δ[lcm(7, a(n-1)+16)]` with `a(0)=0`
-/

namespace A203789.P2175020775762535411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lcm 7 (f1 (n - 1) + 16)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A203789.P2175020775762535411

namespace A203789

/-- `Δ[lcm(7, a(n-1)+16)]` -/
def P2175020775762535411.Spec : Prop :=
  ∀ n, P2175020775762535411.a n = A203789 (n + 1)

end A203789

/-! ## A203789.P12343223001406532642

`Δ[A199484(n+1)]`
-/

namespace A203789.P12343223001406532642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203789.P12343223001406532642

namespace A203789

/-- `Δ[A199484(n+1)]` -/
def P12343223001406532642.Spec : Prop :=
  ∀ n, P12343223001406532642.a n = A203789 (n + 1)

end A203789

/-! ## A203789.P11047194099871455353

`Δ[7*A199484(n)]`
-/

namespace A203789.P11047194099871455353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A199484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203789.P11047194099871455353

namespace A203789

/-- `Δ[7*A199484(n)]` -/
def P11047194099871455353.Spec : Prop :=
  ∀ n, P11047194099871455353.a n = A203789 (n + 1)

end A203789

/-! ## A203789.P9823565084767237232

`Δ[8*A233326(n)]`
-/

namespace A203789.P9823565084767237232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A233326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203789.P9823565084767237232

namespace A203789

/-- `Δ[8*A233326(n)]` -/
def P9823565084767237232.Spec : Prop :=
  ∀ n, P9823565084767237232.a n = A203789 (n + 1)

end A203789

/-! ## A203789.P12808206810431447040

`Δ[28*A083076(n)]`
-/

namespace A203789.P12808206810431447040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A083076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203789.P12808206810431447040

namespace A203789

/-- `Δ[28*A083076(n)]` -/
def P12808206810431447040.Spec : Prop :=
  ∀ n, P12808206810431447040.a n = A203789 (n + 1)

end A203789

/-! ## A203789.P1682523372092607000

`A223564(n+3)/4`
-/

namespace A203789.P1682523372092607000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223564 (n + 3) : ℚ) / 4

end

end A203789.P1682523372092607000

namespace A203789

/-- `A223564(n+3)/4` -/
def P1682523372092607000.Spec : Prop :=
  ∀ n, P1682523372092607000.a n = (A203789 (n + 1) : ℚ)

end A203789

/-! ## A203789.P17613216431563984313

`Δ[2*A238275(n+1)]`
-/

namespace A203789.P17613216431563984313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203789.P17613216431563984313

namespace A203789

/-- `Δ[2*A238275(n+1)]` -/
def P17613216431563984313.Spec : Prop :=
  ∀ n, P17613216431563984313.a n = A203789 (n + 1)

end A203789

/-! ## A203789.P1040753268564180856

`Δ[A198689(n+1)/3]`
-/

namespace A203789.P1040753268564180856
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198689 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203789.P1040753268564180856

namespace A203789

/-- `Δ[A198689(n+1)/3]` -/
def P1040753268564180856.Spec : Prop :=
  ∀ n, P1040753268564180856.a n = (A203789 (n + 1) : ℚ)

theorem P1040753268564180856.correct : P1040753268564180856.Spec := by
  intro n
  simp only [A203789, Nat.add_sub_cancel, A203789.P1040753268564180856.f1, A203789.P1040753268564180856.a, A203789.P2896006036350056960.a, A198689, A198689.P6892318393002689499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203789

/-! ## A203789.P5244532760959015456

`Δ[A199485(n+1)/3]`
-/

namespace A203789.P5244532760959015456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199485 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203789.P5244532760959015456

namespace A203789

/-- `Δ[A199485(n+1)/3]` -/
def P5244532760959015456.Spec : Prop :=
  ∀ n, P5244532760959015456.a n = (A203789 (n + 1) : ℚ)

theorem P5244532760959015456.correct : P5244532760959015456.Spec := by
  intro n
  simp only [A203789, Nat.add_sub_cancel, A203789.P5244532760959015456.f1, A203789.P5244532760959015456.a, A203789.P2896006036350056960.a, A199485, A199485.P2526462473916779298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203789

/-! ## A203789.P6298148052100355714

`record[2*A262148(n+1)]`
-/

namespace A203789.P6298148052100355714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203789.P6298148052100355714

namespace A203789

/-- `record[2*A262148(n+1)]` -/
def P6298148052100355714.Spec : Prop :=
  ∀ n, P6298148052100355714.a n = A203789 (n + 1)

end A203789

/-! ## A203789.P4514207152369877709

`A233326(n+2)-A233326(n)`
-/

namespace A203789.P4514207152369877709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233326 (n + 2) - A233326 n

end

end A203789.P4514207152369877709

namespace A203789

/-- `A233326(n+2)-A233326(n)` -/
def P4514207152369877709.Spec : Prop :=
  ∀ n, P4514207152369877709.a n = A203789 (n + 1)

end A203789

/-! ## A203789.P17433007551140992049

`Δ[A233326(n+1)+A233326(n)]`
-/

namespace A203789.P17433007551140992049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233326 (n + 1) + A233326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203789.P17433007551140992049

namespace A203789

/-- `Δ[A233326(n+1)+A233326(n)]` -/
def P17433007551140992049.Spec : Prop :=
  ∀ n, P17433007551140992049.a n = A203789 (n + 1)

end A203789

/-! ## A203789.P12654333678439854589

`A003950(n+2)+A003950(n+2)`
-/

namespace A203789.P12654333678439854589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003950 (n + 2) + A003950 (n + 2)

end

end A203789.P12654333678439854589

namespace A203789

/-- `A003950(n+2)+A003950(n+2)` -/
def P12654333678439854589.Spec : Prop :=
  ∀ n, P12654333678439854589.a n = A203789 (n + 1)

end A203789

/-! ## A203789.P2193410765961967908

`A169634(n+2)-A193577(n+1)`
-/

namespace A203789.P2193410765961967908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169634 (n + 2) - A193577 (n + 1)

end

end A203789.P2193410765961967908

namespace A203789

/-- `A169634(n+2)-A193577(n+1)` -/
def P2193410765961967908.Spec : Prop :=
  ∀ n, P2193410765961967908.a n = A203789 (n + 1)

theorem P2193410765961967908.correct : P2193410765961967908.Spec := by
  intro n
  simp only [A203789, Nat.add_sub_cancel, A203789.P2193410765961967908.a, A203789.P2896006036350056960.a, A169634, A169634.P5176651036239165802.a, A193577, A193577.P11660969655800786122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203789

/-! ## A203789.P689670832261912942

`A198647(n+2)-A198687(n+1)`
-/

namespace A203789.P689670832261912942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198647 (n + 2) - A198687 (n + 1)

end

end A203789.P689670832261912942

namespace A203789

/-- `A198647(n+2)-A198687(n+1)` -/
def P689670832261912942.Spec : Prop :=
  ∀ n, P689670832261912942.a n = A203789 (n + 1)

theorem P689670832261912942.correct : P689670832261912942.Spec := by
  intro n
  simp only [A203789, Nat.add_sub_cancel, A203789.P689670832261912942.a, A203789.P2896006036350056960.a, A198647, A198647.P10615548625283556023.a, A198687, A198687.P4521838440088221776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203789

/-! ## A203789.P5497860297270531975

`A199484(n+2)-A199484(n+1)`
-/

namespace A203789.P5497860297270531975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199484 (n + 2) - A199484 (n + 1)

end

end A203789.P5497860297270531975

namespace A203789

/-- `A199484(n+2)-A199484(n+1)` -/
def P5497860297270531975.Spec : Prop :=
  ∀ n, P5497860297270531975.a n = A203789 (n + 1)

end A203789

/-!
# A203790: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203790, there is no canonical definition to state claims against.
-/

/-! ## A203790.P14352001636551275973

`A203796(∑[n+1]+2)`
-/

namespace A203790.P14352001636551275973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203790.P14352001636551275973

/-! ## A203790.P11660502584297080269

`record[gcd(A002262(n), A203796(n+2))]`
-/

namespace A203790.P11660502584297080269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203796 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203790.P11660502584297080269

/-! ## A203790.P7449918709017167890

`record[A203796(A133263(val(n+1, 2)+1))]`
-/

namespace A203790.P7449918709017167890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203790.P7449918709017167890

/-! ## A203790.P160328457572983149

`record[A203796(A000096(val(n+1, 2)+1))]`
-/

namespace A203790.P160328457572983149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203790.P160328457572983149

/-! ## A203790.P1721875735182616731

`record[A203796(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A203790.P1721875735182616731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203790.P1721875735182616731

/-!
# A203791: Number of (n+1) X 4 0..3 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203791, there is no canonical definition to state claims against.
-/

/-! ## A203791.P12853512156991840669

`A203796(∑[n+2]+4)`
-/

namespace A203791.P12853512156991840669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203791.P12853512156991840669

/-! ## A203791.P7113455496173175345

`lcm(2, A203796(A167614(n+1)))`
-/

namespace A203791.P7113455496173175345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203796 (A167614 (n + 1)).toNat)

end

end A203791.P7113455496173175345

/-! ## A203791.P13538120729648004644

`A203796(A167614(n+1))+A025442(n)`
-/

namespace A203791.P13538120729648004644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (A167614 (n + 1)).toNat + A025442 n

end

end A203791.P13538120729648004644

/-! ## A203791.P7193687071985878236

`A203796(A167614(n+1))+A025444(n)`
-/

namespace A203791.P7193687071985878236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (A167614 (n + 1)).toNat + A025444 n

end

end A203791.P7193687071985878236

/-! ## A203791.P5212033905002124371

`A326292(n)+A203796(A167614(n+1))`
-/

namespace A203791.P5212033905002124371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A203796 (A167614 (n + 1)).toNat

end

end A203791.P5212033905002124371

/-!
# A203792: Number of (n+1)X5 0..3 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203792, there is no canonical definition to state claims against.
-/

/-! ## A203792.P3557593670783786320

`A203796(A374004(n+1))`
-/

namespace A203792.P3557593670783786320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (A374004 (n + 1)).toNat

end

end A203792.P3557593670783786320

/-! ## A203792.P16852247964785710676

`A203796(A052905(n)+9)`
-/

namespace A203792.P16852247964785710676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (A052905 n + 9).toNat

end

end A203792.P16852247964785710676

/-! ## A203792.P99759339720724595

`A203796(A055999(n)+10)`
-/

namespace A203792.P99759339720724595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (A055999 n + 10).toNat

end

end A203792.P99759339720724595

/-! ## A203792.P15242931202175382681

`A203796(A167614(n+2)+1)`
-/

namespace A203792.P15242931202175382681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (A167614 (n + 2) + 1).toNat

end

end A203792.P15242931202175382681

/-! ## A203792.P17781254223342379409

`A203796(Δ[A264443(n)-n²])`
-/

namespace A203792.P17781254223342379409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (f1 (n + 1) - f1 n).toNat

end

end A203792.P17781254223342379409

/-!
# A203793: Number of (n+1)X6 0..3 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203793, there is no canonical definition to state claims against.
-/

/-! ## A203793.P16169243908547612388

`A203796(A374005(n+1))`
-/

namespace A203793.P16169243908547612388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (A374005 (n + 1)).toNat

end

end A203793.P16169243908547612388

/-! ## A203793.P16617706350228200105

`A203796(Δ[A264443(n)])`
-/

namespace A203793.P16617706350228200105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (f1 (n + 1) - f1 n).toNat

end

end A203793.P16617706350228200105

/-! ## A203793.P4105460550709539633

`A203796(eq[4, A193592(n)])`
-/

namespace A203793.P4105460550709539633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203793.P4105460550709539633

/-! ## A203793.P9120644188249448357

`A203796(eq[6, A185782(n+1)])`
-/

namespace A203793.P9120644188249448357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203793.P9120644188249448357

/-! ## A203793.P3871684457624079459

`A203796(A264443(n+1)-A264443(n))`
-/

namespace A203793.P3871684457624079459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (A264443 (n + 1) - A264443 n).toNat

end

end A203793.P3871684457624079459

/-!
# A203794: Number of (n+1)X7 0..3 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203794, there is no canonical definition to state claims against.
-/

/-! ## A203794.P12812820667335120304

`A203796(A374007(n+1))`
-/

namespace A203794.P12812820667335120304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (A374007 (n + 1)).toNat

end

end A203794.P12812820667335120304

/-! ## A203794.P14383332803766859997

`A203796(eq[3, A219347(n)])`
-/

namespace A203794.P14383332803766859997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203794.P14383332803766859997

/-! ## A203794.P732794777318480347

`A203796(eq[7, A123229(n+1)])`
-/

namespace A203794.P732794777318480347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203794.P732794777318480347

/-!
# A203795: 

The programs for A203795, there is no canonical definition to state claims against.
-/

/-! ## A203795.P15840103378579410407

`A203796(eq[4, A219347(n)])`
-/

namespace A203795.P15840103378579410407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203795.P15840103378579410407

/-!
# A203797: a(n) = Pell(n) * Sum_{d|n} 1/Pell(d), where Pell(n) = A000129(n).

The programs for A203797, the canonical program `A203797.P11887690551799651749` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203797 has offset 1).

The definition of A203797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203797.P11887690551799651749

`∑{d}[n+1, A000129(n+1)/A000129(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A203797

/-- `∑{d}[n+1, A000129(n+1)/A000129(#)]` -/
def P11887690551799651749.Spec : Prop :=
  ∀ n, P11887690551799651749.a n = (A203797 (n + 1) : ℚ)

end A203797

/-! ## A203797.P16062108925270590902

`∑{d}[n+1, A052542(n+1)/A052542(#)]`
-/

namespace A203797.P16062108925270590902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A052542 (n + 1) : ℚ) / (A052542 d : ℚ)

end

end A203797.P16062108925270590902

namespace A203797

/-- `∑{d}[n+1, A052542(n+1)/A052542(#)]` -/
def P16062108925270590902.Spec : Prop :=
  ∀ n, P16062108925270590902.a n = (A203797 (n + 1) : ℚ)

end A203797

/-!
# A203798: E.g.f.: Sum_{n>=0} (1 - exp(-n^3*x))^n.

The programs for A203798, there is no canonical definition to state claims against.
-/

/-! ## A203798.P11143573750131352232

`A136126(A139275(n)+1)`
-/

namespace A203798.P11143573750131352232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A139275 n + 1).toNat

end

end A203798.P11143573750131352232

/-! ## A203798.P3080210128661310502

`A136126(A058331(2*n)+n)`
-/

namespace A203798.P3080210128661310502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A058331 (2 * n) + (n : ℤ)).toNat

end

end A203798.P3080210128661310502

/-!
# A203799: G.f.: Sum_{n>=0} (n-2*x)^n * x^n / (1 + n*x - 2*x^2)^n.

The programs for A203799, there is no canonical definition to state claims against.
-/

/-! ## A203799.P10580926162850506230

`n!+(n-1)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A203799.P10580926162850506230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (Nat.factorial n : ℤ) + ((n : ℤ) - 1) * a (n - 1)

end

end A203799.P10580926162850506230

/-! ## A203799.P3999902254372988842

`A000142(n)+(n-1)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A203799.P3999902254372988842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A000142 n + ((n : ℤ) - 1) * a (n - 1)

end

end A203799.P3999902254372988842

/-! ## A203799.P3451460601817467601

`A202365(n)+A202365(n)-A001710(n+1)`
-/

namespace A203799.P3451460601817467601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202365 n + (A202365 n - A001710 (n + 1))

end

end A203799.P3451460601817467601

/-! ## A203799.P5161138004027146119

`∏{e}[(2^n+3)*2^(n-1), #!]*A034856(A250265(n))`
-/

namespace A203799.P5161138004027146119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorial (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p) : ℕ) : ℤ) * A034856 (A250265 n).toNat

end

end A203799.P5161138004027146119

/-! ## A203799.P8622231811046278288

`A250265(n)!*A034856(A250265(n))`
-/

namespace A203799.P8622231811046278288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A250265 n).toNat : ℤ) * A034856 (A250265 n).toNat

end

end A203799.P8622231811046278288

