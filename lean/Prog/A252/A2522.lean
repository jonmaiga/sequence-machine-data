import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C050
import Seq.B000.C052
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import SequenceMachineLib.Triangle

/-!
# A252200: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252200, there is no canonical definition to state claims against.
-/

/-! ## A252200.P11734388022838739207

`A252201(A374008(n+1))`
-/

namespace A252200.P11734388022838739207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A374008 (n + 1)).toNat

end

end A252200.P11734388022838739207

/-!
# A252202: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252202, there is no canonical definition to state claims against.
-/

/-! ## A252202.P7629349566790313860

`A252210((n+1)²+n²)`
-/

namespace A252202.P7629349566790313860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 ((n + 1) ^ 2 + n ^ 2)

end

end A252202.P7629349566790313860

/-! ## A252202.P15132302202778158437

`record[A003982(n)*A252210(n+1)]`
-/

namespace A252202.P15132302202778158437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252202.P15132302202778158437

/-! ## A252202.P9372882387113551286

`record[root(A252210(n+1), A143182(n))]`
-/

namespace A252202.P9372882387113551286
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252210 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252202.P9372882387113551286

/-! ## A252202.P12999141828603280444

`record[gcd(A049581(n), A252210(n+1))]`
-/

namespace A252202.P12999141828603280444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A252210 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252202.P12999141828603280444

/-!
# A252203: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252203, there is no canonical definition to state claims against.
-/

/-! ## A252203.P14181217404277493653

`A252210(∑[n]+1)`
-/

namespace A252203.P14181217404277493653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252203.P14181217404277493653

/-! ## A252203.P2106601206947518719

`record[A252210(n+1)/A022166(n)]`
-/

namespace A252203.P2106601206947518719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252210 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252203.P2106601206947518719

/-! ## A252203.P4052781739812437338

`record[gcd(A002262(n), A252210(n+1))]`
-/

namespace A252203.P4052781739812437338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252210 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252203.P4052781739812437338

/-!
# A252204: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252204, there is no canonical definition to state claims against.
-/

/-! ## A252204.P673350574301732749

`A252210(∑[n+1]+2)`
-/

namespace A252204.P673350574301732749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252204.P673350574301732749

/-! ## A252204.P14789166425595298467

`record[gcd(A002262(n), A252210(n+2))]`
-/

namespace A252204.P14789166425595298467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252210 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252204.P14789166425595298467

/-! ## A252204.P6726706639263294828

`record[A252210(A133263(A008611(n)))]`
-/

namespace A252204.P6726706639263294828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252204.P6726706639263294828

/-! ## A252204.P15920415354461264609

`record[A252210(A133263(A103221(n)))]`
-/

namespace A252204.P15920415354461264609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A133263 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252204.P15920415354461264609

/-!
# A252205: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252205, there is no canonical definition to state claims against.
-/

/-! ## A252205.P4664819999454417418

`A252210(∑[n+2]+4)`
-/

namespace A252205.P4664819999454417418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252205.P4664819999454417418

/-!
# A252206: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252206, there is no canonical definition to state claims against.
-/

/-! ## A252206.P3794398494728918546

`A252210(A374004(n+1))`
-/

namespace A252206.P3794398494728918546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A374004 (n + 1)).toNat

end

end A252206.P3794398494728918546

/-! ## A252206.P4023983053595878319

`A252210(A141214(n+1))`
-/

namespace A252206.P4023983053595878319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A141214 (n + 1)).toNat

end

end A252206.P4023983053595878319

/-!
# A252207: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252207, there is no canonical definition to state claims against.
-/

/-! ## A252207.P12224210964333047446

`A252210(A374005(n+1))`
-/

namespace A252207.P12224210964333047446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A374005 (n + 1)).toNat

end

end A252207.P12224210964333047446

/-!
# A252208: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252208, there is no canonical definition to state claims against.
-/

/-! ## A252208.P4445825305699164490

`A252210(A374007(n+1))`
-/

namespace A252208.P4445825305699164490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A374007 (n + 1)).toNat

end

end A252208.P4445825305699164490

/-!
# A252209: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252209, there is no canonical definition to state claims against.
-/

/-! ## A252209.P10931203989197584255

`A252210(A374008(n+1))`
-/

namespace A252209.P10931203989197584255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252210 (A374008 (n + 1)).toNat

end

end A252209.P10931203989197584255

/-!
# A252211: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252211, there is no canonical definition to state claims against.
-/

/-! ## A252211.P2257703158242982765

`A252219(∑[4*n]+1)`
-/

namespace A252211.P2257703158242982765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252211.P2257703158242982765

/-! ## A252211.P11975364914788701563

`record[gcd(A049581(n), A252219(n+1))]`
-/

namespace A252211.P11975364914788701563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A252219 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252211.P11975364914788701563

/-!
# A252212: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252212, there is no canonical definition to state claims against.
-/

/-! ## A252212.P11186438189713404394

`A252219(∑[n]+1)`
-/

namespace A252212.P11186438189713404394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252212.P11186438189713404394

/-! ## A252212.P3202714988752795095

`record[gcd(A014473(n), A252219(n+1))]`
-/

namespace A252212.P3202714988752795095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A252219 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252212.P3202714988752795095

/-! ## A252212.P7181661867065635044

`record[A252219(n+1)/A126065(n+1)]`
-/

namespace A252212.P7181661867065635044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252219 (n + 1) : ℚ) / (A126065 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252212.P7181661867065635044

/-! ## A252212.P7932573313453269199

`record[root(A252219(n+1), A002260(n+1))]`
-/

namespace A252212.P7932573313453269199
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252219 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252212.P7932573313453269199

/-!
# A252213: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252213, there is no canonical definition to state claims against.
-/

/-! ## A252213.P2718042975709529175

`A252219(∑[n+1]+2)`
-/

namespace A252213.P2718042975709529175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252213.P2718042975709529175

/-!
# A252214: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252214, there is no canonical definition to state claims against.
-/

/-! ## A252214.P12060205672997103096

`A252219(∑[n+2]+4)`
-/

namespace A252214.P12060205672997103096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252214.P12060205672997103096

/-!
# A252215: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252215, there is no canonical definition to state claims against.
-/

/-! ## A252215.P11146157567062536379

`A252219(A374004(n+1))`
-/

namespace A252215.P11146157567062536379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A374004 (n + 1)).toNat

end

end A252215.P11146157567062536379

/-! ## A252215.P8570872452801495298

`A252219(A141214(n+1))`
-/

namespace A252215.P8570872452801495298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A141214 (n + 1)).toNat

end

end A252215.P8570872452801495298

/-!
# A252216: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252216, there is no canonical definition to state claims against.
-/

/-! ## A252216.P1947913039509189826

`A252219(A374005(n+1))`
-/

namespace A252216.P1947913039509189826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A374005 (n + 1)).toNat

end

end A252216.P1947913039509189826

/-!
# A252217: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252217, there is no canonical definition to state claims against.
-/

/-! ## A252217.P4601598090723868344

`A252219(A374007(n+1))`
-/

namespace A252217.P4601598090723868344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A374007 (n + 1)).toNat

end

end A252217.P4601598090723868344

/-!
# A252218: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252218, there is no canonical definition to state claims against.
-/

/-! ## A252218.P16057952025196003766

`A252219(A374008(n+1))`
-/

namespace A252218.P16057952025196003766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252219 (A374008 (n + 1)).toNat

end

end A252218.P16057952025196003766

/-!
# A252220: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252220, there is no canonical definition to state claims against.
-/

/-! ## A252220.P14166689033546668512

`A252228(1+∑[4*n])`
-/

namespace A252220.P14166689033546668512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252220.P14166689033546668512

/-! ## A252220.P265809322829622289

`record[A003982(n)*A252228(n+1)]`
-/

namespace A252220.P265809322829622289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252220.P265809322829622289

/-! ## A252220.P6705791066526046906

`record[gcd(A114327(n), A252228(n+1))]`
-/

namespace A252220.P6705791066526046906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252228 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252220.P6705791066526046906

/-!
# A252221: Number of (n+2) X (1+2) 0..2 arrays with every 3 X 3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252221, the canonical program `A252221.P4792274813223833203` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252221 has offset 1).

The definition of A252221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252221.P4792274813223833203

`ogf((228-88x+304x^2-42x^3-666x^4-196x^5-238x^6+260x^7+64x^8+32x^9)/(1-2x+x^2-x^3-3x^4+2x^5+2x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252221

/-- `ogf((228-88x+304x^2-42x^3-666x^4-196x^5-238x^6+260x^7+64x^8+32x^9)/(1-2x+x^2-x^3-3x^4+2x^5+2x^7))` -/
def P4792274813223833203.Spec : Prop :=
  ∀ n, P4792274813223833203.a n = A252221 (n + 1)

theorem P4792274813223833203.correct : P4792274813223833203.Spec := by
  intro n
  simp only [A252221, Nat.add_sub_cancel]

end A252221

/-! ## A252221.P2471976459621984327

`A252228(∑[n]+1)`
-/

namespace A252221.P2471976459621984327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252221.P2471976459621984327

namespace A252221

/-- `A252228(∑[n]+1)` -/
def P2471976459621984327.Spec : Prop :=
  ∀ n, P2471976459621984327.a n = A252221 (n + 1)

end A252221

/-! ## A252221.P11957303784673482433

`record[A252228(A254052(n+1))]`
-/

namespace A252221.P11957303784673482433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252221.P11957303784673482433

namespace A252221

/-- `record[A252228(A254052(n+1))]` -/
def P11957303784673482433.Spec : Prop :=
  ∀ n, P11957303784673482433.a n = A252221 (n + 1)

end A252221

/-! ## A252221.P9183181003227909881

`record[gcd(A002262(n), A252228(n+1))]`
-/

namespace A252221.P9183181003227909881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252228 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252221.P9183181003227909881

namespace A252221

/-- `record[gcd(A002262(n), A252228(n+1))]` -/
def P9183181003227909881.Spec : Prop :=
  ∀ n, (P9183181003227909881.a n : ℤ) = A252221 (n + 1)

end A252221

/-!
# A252222: Number of (n+2) X (2+2) 0..2 arrays with every 3 X 3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252222, there is no canonical definition to state claims against.
-/

/-! ## A252222.P2323502990791896754

`A252228(2+∑[1+n])`
-/

namespace A252222.P2323502990791896754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252222.P2323502990791896754

/-! ## A252222.P14313454816135272931

`record[gcd(col(n), A252228(n+2))]`
-/

namespace A252222.P14313454816135272931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.triCol n : ℤ) (A252228 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252222.P14313454816135272931

/-! ## A252222.P10529847413623213867

`record[A252228(n*A010054(n)+2)]`
-/

namespace A252222.P10529847413623213867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 ((n : ℤ) * A010054 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252222.P10529847413623213867

/-! ## A252222.P12107350135057577655

`record[A252228(A000096(A154958(n)))]`
-/

namespace A252222.P12107350135057577655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A000096 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252222.P12107350135057577655

/-!
# A252223: Number of (n+2) X (3+2) 0..2 arrays with every 3 X 3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252223, there is no canonical definition to state claims against.
-/

/-! ## A252223.P17323930529966364853

`A252228(A167614(n+1))`
-/

namespace A252223.P17323930529966364853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A167614 (n + 1)).toNat

end

end A252223.P17323930529966364853

/-! ## A252223.P15057115080982954331

`A252228(1+∑[3+n])`
-/

namespace A252223.P15057115080982954331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252223.P15057115080982954331

/-!
# A252224: Number of (n+2) X (4+2) 0..2 arrays with every 3 X 3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252224, there is no canonical definition to state claims against.
-/

/-! ## A252224.P10765530931792664130

`A252228(A374004(n+1))`
-/

namespace A252224.P10765530931792664130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A374004 (n + 1)).toNat

end

end A252224.P10765530931792664130

/-! ## A252224.P5075110115674376586

`A252228(3+∑[4+n])`
-/

namespace A252224.P5075110115674376586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (3 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252224.P5075110115674376586

/-!
# A252225: Number of (n+2) X (5+2) 0..2 arrays with every 3 X 3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252225, there is no canonical definition to state claims against.
-/

/-! ## A252225.P5187377526468376076

`A252228(A374005(n+1))`
-/

namespace A252225.P5187377526468376076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A374005 (n + 1)).toNat

end

end A252225.P5187377526468376076

/-! ## A252225.P1289757020169030083

`A252228(∑[n+5]+6)`
-/

namespace A252225.P1289757020169030083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A252225.P1289757020169030083

/-!
# A252226: Number of (n+2) X (6+2) 0..2 arrays with every 3 X 3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252226, there is no canonical definition to state claims against.
-/

/-! ## A252226.P6802091423823606570

`A252228(A374007(n+1))`
-/

namespace A252226.P6802091423823606570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A374007 (n + 1)).toNat

end

end A252226.P6802091423823606570

/-!
# A252227: Number of (n+2) X (7+2) 0..2 arrays with every 3 X 3 subblock row and column sum 2 3 or 4 and every diagonal and antidiagonal sum not 2 3 or 4.

The programs for A252227, there is no canonical definition to state claims against.
-/

/-! ## A252227.P3858392702719467044

`A252228(A374008(n+1))`
-/

namespace A252227.P3858392702719467044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252228 (A374008 (n + 1)).toNat

end

end A252227.P3858392702719467044

/-!
# A252229: The number of numbers j*r^k in the interval [n,n+1), where r = (1 + sqrt(5))/2, the golden ratio, and j >=0, k >= 0.

The programs for A252229, there is no canonical definition to state claims against.
-/

/-! ## A252229.P6713912228853117010

`A028310(Δ[A020959(A028310(n))])`
-/

namespace A252229.P6713912228853117010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A252229.P6713912228853117010

/-! ## A252229.P1019305666647417638

`runs[fp[A020959(n+1)]]`
-/

namespace A252229.P1019305666647417638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A252229.P1019305666647417638

/-! ## A252229.P1967582215117718317

`A373082(A313089(n))+1`
-/

namespace A252229.P1967582215117718317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373082 (A313089 n).toNat + 1

end

end A252229.P1967582215117718317

/-! ## A252229.P8672059925021707529

`A083399(and(A092217(2*(n+2)), A193953(3*n+1)))`
-/

namespace A252229.P8672059925021707529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (Int.land (A092217 (2 * (n + 2))) (A193953 (3 * n + 1))).toNat

end

end A252229.P8672059925021707529

/-! ## A252229.P4887510001877637301

`A001221(A336313(n+1)+A207346(3*n+2))`
-/

namespace A252229.P4887510001877637301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A336313 (n + 1) + A207346 (3 * n + 2)).toNat

end

end A252229.P4887510001877637301

/-!
# A252230: Triangular array T read by rows: for j = k+1..2*k, k >=1, T(j,k) = least number of iterations of (h,i) -> (i,h-i) needed to take (k,j) to (k',j') satisfying k' <= j'.

The programs for A252230, there is no canonical definition to state claims against.
-/

/-! ## A252230.P14995751459910123890

`A293444(A214676(n+2))`
-/

namespace A252230.P14995751459910123890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293444 (A214676 (n + 2)).toNat

end

end A252230.P14995751459910123890

/-! ## A252230.P15636286826188959654

`A001222(2*A214676(n+2))`
-/

namespace A252230.P15636286826188959654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A214676 (n + 2)).toNat

end

end A252230.P15636286826188959654

/-! ## A252230.P6971721997316637168

`A031286(A307393(n+1)²)+1`
-/

namespace A252230.P6971721997316637168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A307393 (n + 1) ^ 2).toNat + 1

end

end A252230.P6971721997316637168

/-! ## A252230.P14796201160584111698

`A210850(A390433(n))`
-/

namespace A252230.P14796201160584111698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 (A390433 n).toNat

end

end A252230.P14796201160584111698

/-! ## A252230.P6514696041149478953

`A095171(A172288(n))`
-/

namespace A252230.P6514696041149478953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095171 (A172288 n).toNat

end

end A252230.P6514696041149478953

/-!
# A252231: Primes of the form (p+q)^2 + pq, where p and q are consecutive primes.

The programs for A252231, there is no canonical definition to state claims against.
-/

/-! ## A252231.P12980928002218185522

`p?[A006094(n+1)+A001043(n+1)²]`
-/

namespace A252231.P12980928002218185522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A001043 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252231.P12980928002218185522

/-! ## A252231.P3659783043650398129

`p?[A006094(n+1)+A011974(n+2)²]`
-/

namespace A252231.P3659783043650398129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A011974 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252231.P3659783043650398129

/-! ## A252231.P18330170111629422784

`p?[A037165(n+1)+A001043(n+1)*A092949(n+1)]`
-/

namespace A252231.P18330170111629422784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + A001043 (n + 1) * A092949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252231.P18330170111629422784

/-! ## A252231.P9499024164736667433

`p?[A001043(n+1)²+A065091(n+1)+A037167(n+1)]`
-/

namespace A252231.P9499024164736667433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) ^ 2 + (A065091 (n + 1) + A037167 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252231.P9499024164736667433

/-! ## A252231.P540020431257201409

`p?[A001043(n+1)²+A000040(n+1)*A000040(n+2)]`
-/

namespace A252231.P540020431257201409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) ^ 2 + A000040 (n + 1) * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252231.P540020431257201409

/-!
# A252233: Characteristic function for the integers that are the product of an odd number of primes each with multiplicity one.

The programs for A252233, the canonical program `A252233.P13324621536471140803` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252233 has offset 1).

The definition of A252233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A252233.P13324621536471140803

`(A008966(n+1)-A008683(n+1))/2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A252233

/-- `(A008966(n+1)-A008683(n+1))/2` -/
def P13324621536471140803.Spec : Prop :=
  ∀ n, P13324621536471140803.a n = (A252233 (n + 1) : ℚ)

end A252233

/-! ## A252233.P6876868402069079450

`(abs(A008683(n+1))-A008683(n+1))/2`
-/

namespace A252233.P6876868402069079450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A008683 (n + 1)| - A008683 (n + 1) : ℚ) / 2

end

end A252233.P6876868402069079450

namespace A252233

/-- `(abs(A008683(n+1))-A008683(n+1))/2` -/
def P6876868402069079450.Spec : Prop :=
  ∀ n, P6876868402069079450.a n = (A252233 (n + 1) : ℚ)

end A252233

/-! ## A252233.P7655981817403650951

`col(∏{e}[n+1, C(2, #²)]%3)`
-/

namespace A252233.P7655981817403650951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 (Nat.factorization (f1 n) p ^ 2)) % 3)

end

end A252233.P7655981817403650951

namespace A252233

/-- `col(∏{e}[n+1, C(2, #²)]%3)` -/
def P7655981817403650951.Spec : Prop :=
  ∀ n, (P7655981817403650951.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P18436785927551860227

`C(2, ∏{p}[n+1, -#]+n+3)`
-/

namespace A252233.P18436785927551860227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) + (n + 3 : ℤ)).toNat

end

end A252233.P18436785927551860227

namespace A252233

/-- `C(2, ∏{p}[n+1, -#]+n+3)` -/
def P18436785927551860227.Spec : Prop :=
  ∀ n, (P18436785927551860227.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P10599303864078662250

`col(1-∏{e}[n+1, -floor(1/#)])`
-/

namespace A252233.P10599303864078662250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (1 - ∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)).toNat

end

end A252233.P10599303864078662250

namespace A252233

/-- `col(1-∏{e}[n+1, -floor(1/#)])` -/
def P10599303864078662250.Spec : Prop :=
  ∀ n, (P10599303864078662250.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P1479957009282702173

`∑{#}[-∏{e}[n+1, -floor(1/#)], #]`
-/

namespace A252233.P1479957009282702173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ p ∈ Nat.primeFactors (f2 n), (-⌊1 / (Nat.factorization (f2 n) p : ℚ)⌋))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A252233.P1479957009282702173

namespace A252233

/-- `∑{#}[-∏{e}[n+1, -floor(1/#)], #]` -/
def P1479957009282702173.Spec : Prop :=
  ∀ n, (P1479957009282702173.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P18352240998585024206

`C(2, ∏{e}[n+1, -floor(1/#)]+3)`
-/

namespace A252233.P18352240998585024206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋) + 3).toNat

end

end A252233.P18352240998585024206

namespace A252233

/-- `C(2, ∏{e}[n+1, -floor(1/#)]+3)` -/
def P18352240998585024206.Spec : Prop :=
  ∀ n, (P18352240998585024206.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P6208006399915925119

`C(1-∏{e}[n+1, -#!]%2, 2)`
-/

namespace A252233.P6208006399915925119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorial (Nat.factorization (f1 n) p) : ℤ))) 2).toNat 2

end

end A252233.P6208006399915925119

namespace A252233

/-- `C(1-∏{e}[n+1, -#!]%2, 2)` -/
def P6208006399915925119.Spec : Prop :=
  ∀ n, (P6208006399915925119.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P4357506558441113232

`floor(∏{e}[n+1, -floor(1/#)]/3)²`
-/

namespace A252233.P4357506558441113232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋) : ℤ) : ℚ) / 3⌋ ^ 2

end

end A252233.P4357506558441113232

namespace A252233

/-- `floor(∏{e}[n+1, -floor(1/#)]/3)²` -/
def P4357506558441113232.Spec : Prop :=
  ∀ n, P4357506558441113232.a n = A252233 (n + 1)

end A252233

/-! ## A252233.P5262798257215233421

`∑{#}[-round(1/∏{e}[n+1, -#²]), #]`
-/

namespace A252233.P5262798257215233421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p ^ 2 : ℤ)) : ℤ) : ℚ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A252233.P5262798257215233421

namespace A252233

/-- `∑{#}[-round(1/∏{e}[n+1, -#²]), #]` -/
def P5262798257215233421.Spec : Prop :=
  ∀ n, (P5262798257215233421.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P14533970425869738673

`∑{#}[-round(∏{e}[n+1, -#^-2]), #]`
-/

namespace A252233.P14533970425869738673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (-((Nat.factorization (f2 n) p : ℚ) ^ (-2 : ℤ))))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A252233.P14533970425869738673

namespace A252233

/-- `∑{#}[-round(∏{e}[n+1, -#^-2]), #]` -/
def P14533970425869738673.Spec : Prop :=
  ∀ n, (P14533970425869738673.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P15999388594604823747

`val(n+1, ∏{e}[n+1, -#]+n+2)`
-/

namespace A252233.P15999388594604823747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) + (n + 2 : ℤ)).toNat

end

end A252233.P15999388594604823747

namespace A252233

/-- `val(n+1, ∏{e}[n+1, -#]+n+2)` -/
def P15999388594604823747.Spec : Prop :=
  ∀ n, (P15999388594604823747.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P10744607115412837336

`∏{d}[∏{e}[n+1, -floor(1/#)]+1, log(#)]`
-/

namespace A252233.P10744607115412837336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-⌊1 / (Nat.factorization (f2 n) p : ℚ)⌋) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A252233.P10744607115412837336

namespace A252233

/-- `∏{d}[∏{e}[n+1, -floor(1/#)]+1, log(#)]` -/
def P10744607115412837336.Spec : Prop :=
  ∀ n, P10744607115412837336.a n = (A252233 (n + 1) : ℝ)

end A252233

/-! ## A252233.P8081190150423399075

`1-row(∏{e}[n+1, -floor(1/#)]+1)`
-/

namespace A252233.P8081190150423399075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.triRow (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋) + 1).toNat : ℤ)

end

end A252233.P8081190150423399075

namespace A252233

/-- `1-row(∏{e}[n+1, -floor(1/#)]+1)` -/
def P8081190150423399075.Spec : Prop :=
  ∀ n, P8081190150423399075.a n = A252233 (n + 1)

end A252233

/-! ## A252233.P16447501346268006455

`∑{#}[round(-(∏{p}[n+1, -#]/(n+3))), #]`
-/

namespace A252233.P16447501346268006455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-(((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 3 : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A252233.P16447501346268006455

namespace A252233

/-- `∑{#}[round(-(∏{p}[n+1, -#]/(n+3))), #]` -/
def P16447501346268006455.Spec : Prop :=
  ∀ n, (P16447501346268006455.a n : ℤ) = A252233 (n + 1)

end A252233

/-! ## A252233.P731022311821929021

`ceil(round(-(∏{p}[n+1, -#]/(n+3)))/2)`
-/

namespace A252233.P731022311821929021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway (-(((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 3 : ℚ))) : ℚ) / 2⌉

end

end A252233.P731022311821929021

namespace A252233

/-- `ceil(round(-(∏{p}[n+1, -#]/(n+3)))/2)` -/
def P731022311821929021.Spec : Prop :=
  ∀ n, P731022311821929021.a n = A252233 (n + 1)

end A252233

/-! ## A252233.P1849861893772176492

`A344478(n+1)%2`
-/

namespace A252233.P1849861893772176492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344478 (n + 1)) 2

end

end A252233.P1849861893772176492

namespace A252233

/-- `A344478(n+1)%2` -/
def P1849861893772176492.Spec : Prop :=
  ∀ n, P1849861893772176492.a n = A252233 (n + 1)

end A252233

/-! ## A252233.P2005041428452865716

`4%A129979(n+1)`
-/

namespace A252233.P2005041428452865716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A129979 (n + 1))

end

end A252233.P2005041428452865716

namespace A252233

/-- `4%A129979(n+1)` -/
def P2005041428452865716.Spec : Prop :=
  ∀ n, P2005041428452865716.a n = A252233 (n + 1)

end A252233

/-! ## A252233.P13641658370070281055

`7%A133695(n+1)`
-/

namespace A252233.P13641658370070281055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A133695 (n + 1))

end

end A252233.P13641658370070281055

namespace A252233

/-- `7%A133695(n+1)` -/
def P13641658370070281055.Spec : Prop :=
  ∀ n, P13641658370070281055.a n = A252233 (n + 1)

end A252233

/-! ## A252233.P16074737166362582668

`C(2, A231821(n+1))`
-/

namespace A252233.P16074737166362582668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A231821 (n + 1)).toNat

end

end A252233.P16074737166362582668

namespace A252233

/-- `C(2, A231821(n+1))` -/
def P16074737166362582668.Spec : Prop :=
  ∀ n, (P16074737166362582668.a n : ℤ) = A252233 (n + 1)

end A252233

/-!
# A252234: Numbers n such that there exists an m so that squarefree kernel of n = squarefree kernel of m, and n is the sum of the proper divisors of m (m may equal n).

The programs for A252234, there is no canonical definition to state claims against.
-/

/-! ## A252234.P9453570766545873057

`A217921(A210427(n+4))*A280345(n)`
-/

namespace A252234.P9453570766545873057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217921 (A210427 (n + 4)).toNat * A280345 n

end

end A252234.P9453570766545873057

/-!
# A252235: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252235, there is no canonical definition to state claims against.
-/

/-! ## A252235.P9048997985010967375

`A252243((n+1)²+n²)`
-/

namespace A252235.P9048997985010967375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 ((n + 1) ^ 2 + n ^ 2)

end

end A252235.P9048997985010967375

/-! ## A252235.P1269672483122514580

`record[A003982(n)*A252243(n+1)]`
-/

namespace A252235.P1269672483122514580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252235.P1269672483122514580

/-! ## A252235.P2873857322204249334

`record[gcd(A008482(n), A252243(n+1))]`
-/

namespace A252235.P2873857322204249334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A252243 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252235.P2873857322204249334

/-! ## A252235.P15738202292289677591

`record[A077050(n+1)*A252243(n+1)]`
-/

namespace A252235.P15738202292289677591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077050 (n + 1) * A252243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252235.P15738202292289677591

/-!
# A252236: Number of (n+2) X (1+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252236, there is no canonical definition to state claims against.
-/

/-! ## A252236.P10227291418692637390

`A252243(∑[n]+1)`
-/

namespace A252236.P10227291418692637390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252236.P10227291418692637390

/-! ## A252236.P8705009654272146398

`record[A103451(n)*A252243(n+1)]`
-/

namespace A252236.P8705009654272146398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A252243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252236.P8705009654272146398

/-! ## A252236.P15154036961349735094

`record[root(A252243(n+1), A059268(n))]`
-/

namespace A252236.P15154036961349735094
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252243 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252236.P15154036961349735094

/-! ## A252236.P4174348374425596946

`record[gcd(A002262(n), A252243(n+1))]`
-/

namespace A252236.P4174348374425596946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252243 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252236.P4174348374425596946

/-!
# A252237: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252237, there is no canonical definition to state claims against.
-/

/-! ## A252237.P2205827714540639280

`A252243(∑[n+1]+2)`
-/

namespace A252237.P2205827714540639280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252237.P2205827714540639280

/-! ## A252237.P13384004680674382125

`record[root(A252243(n+2), A059268(n))]`
-/

namespace A252237.P13384004680674382125
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252243 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252237.P13384004680674382125

/-! ## A252237.P4519864579606216162

`record[gcd(A002262(n), A252243(n+2))]`
-/

namespace A252237.P4519864579606216162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252243 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252237.P4519864579606216162

/-! ## A252237.P7030169883861286307

`record[gcd(A072233(n+1), A252243(n+3))]`
-/

namespace A252237.P7030169883861286307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072233 (n + 1)) (A252243 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252237.P7030169883861286307

/-! ## A252237.P17970767659556303993

`record[A252243(A133263(A008611(n)))]`
-/

namespace A252237.P17970767659556303993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252237.P17970767659556303993

/-!
# A252238: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252238, there is no canonical definition to state claims against.
-/

/-! ## A252238.P8252526026765932550

`A252243(∑[n+2]+4)`
-/

namespace A252238.P8252526026765932550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252238.P8252526026765932550

/-!
# A252239: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252239, there is no canonical definition to state claims against.
-/

/-! ## A252239.P1805107075602894863

`A252243(∑[n+3]+7)`
-/

namespace A252239.P1805107075602894863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252239.P1805107075602894863

/-!
# A252240: Number of (n+2) X (5+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252240, there is no canonical definition to state claims against.
-/

/-! ## A252240.P8602621833813521557

`A252243(A167499(n+3))`
-/

namespace A252240.P8602621833813521557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A167499 (n + 3)).toNat

end

end A252240.P8602621833813521557

/-! ## A252240.P18257828788112091575

`A252243(Δ[A264443(n)])`
-/

namespace A252240.P18257828788112091575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (f1 (n + 1) - f1 n).toNat

end

end A252240.P18257828788112091575

/-!
# A252241: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252241, there is no canonical definition to state claims against.
-/

/-! ## A252241.P5927178022863823242

`A252243(A166136(n+4))`
-/

namespace A252241.P5927178022863823242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A166136 (n + 4)).toNat

end

end A252241.P5927178022863823242

/-! ## A252241.P16755542335606134785

`A252243(A374007(n+1))`
-/

namespace A252241.P16755542335606134785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A374007 (n + 1)).toNat

end

end A252241.P16755542335606134785

/-!
# A252242: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 1 3 4 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 1 3 4 6 or 7.

The programs for A252242, there is no canonical definition to state claims against.
-/

/-! ## A252242.P16569239207784569164

`A252243(eq[8, A131818(n+1)])`
-/

namespace A252242.P16569239207784569164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252242.P16569239207784569164

/-! ## A252242.P3592338257387779397

`A252243(A374008(n+1))`
-/

namespace A252242.P3592338257387779397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252243 (A374008 (n + 1)).toNat

end

end A252242.P3592338257387779397

/-!
# A252246: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252246, there is no canonical definition to state claims against.
-/

/-! ## A252246.P9876949157379397954

`A252254(∑[4*n]+1)`
-/

namespace A252246.P9876949157379397954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252246.P9876949157379397954

/-!
# A252247: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252247, there is no canonical definition to state claims against.
-/

/-! ## A252247.P18236770294908779436

`A252254(∑[n]+1)`
-/

namespace A252247.P18236770294908779436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252247.P18236770294908779436

/-!
# A252248: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252248, there is no canonical definition to state claims against.
-/

/-! ## A252248.P8242410287677189034

`A252254(∑[n+1]+2)`
-/

namespace A252248.P8242410287677189034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252248.P8242410287677189034

/-!
# A252249: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252249, the canonical program `A252249.P7155688555273878023` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252249 has offset 1).

The definition of A252249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252249.P1873693232415897463

`ogf((278-36x-11x^2-816x^3+138x^4+72x^5+272x^6-48x^7-26x^8)/(1-x-3x^3+3x^4+x^6-x^7))`
-/

namespace A252249.P1873693232415897463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [278, -36, -11, -816, 138, 72, 272, -48, -26] [1, -1, 0, -3, 3, 0, 1, -1] n

end

end A252249.P1873693232415897463

namespace A252249

/-- `ogf((278-36x-11x^2-816x^3+138x^4+72x^5+272x^6-48x^7-26x^8)/(1-x-3x^3+3x^4+x^6-x^7))` -/
def P1873693232415897463.Spec : Prop :=
  ∀ n, P1873693232415897463.a n = A252249 (n + 1)

end A252249

/-! ## A252249.P7155688555273878023

`a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` with `a(0)=278, a(1)=242, a(2)=231, a(3)=249, a(4)=279, a(5)=318, a(6)=366, a(7)=444, a(8)=546`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252249

/-- `a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` -/
def P7155688555273878023.Spec : Prop :=
  ∀ n, P7155688555273878023.a n = A252249 (n + 1)

theorem P7155688555273878023.correct : P7155688555273878023.Spec := by
  intro n
  simp only [A252249, Nat.add_sub_cancel]

end A252249

/-! ## A252249.P6036261300964296495

`A252254(∑[n+2]+4)`
-/

namespace A252249.P6036261300964296495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252249.P6036261300964296495

namespace A252249

/-- `A252254(∑[n+2]+4)` -/
def P6036261300964296495.Spec : Prop :=
  ∀ n, P6036261300964296495.a n = A252249 (n + 1)

end A252249

/-!
# A252250: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252250, the canonical program `A252250.P18367108250355643025` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252250 has offset 1).

The definition of A252250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252250.P18367108250355643025

`a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` with `a(0)=352, a(1)=268, a(2)=249, a(3)=267, a(4)=297, a(5)=336, a(6)=384, a(7)=462, a(8)=564`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252250

/-- `a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` -/
def P18367108250355643025.Spec : Prop :=
  ∀ n, P18367108250355643025.a n = A252250 (n + 1)

theorem P18367108250355643025.correct : P18367108250355643025.Spec := by
  intro n
  simp only [A252250, Nat.add_sub_cancel]

end A252250

/-! ## A252250.P4501940312637606314

`A252254(∑[n+3]+7)`
-/

namespace A252250.P4501940312637606314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252250.P4501940312637606314

namespace A252250

/-- `A252254(∑[n+3]+7)` -/
def P4501940312637606314.Spec : Prop :=
  ∀ n, P4501940312637606314.a n = A252250 (n + 1)

end A252250

/-!
# A252251: Number of (n+2) X (5+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252251, the canonical program `A252251.P11124343189638800866` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252251 has offset 1).

The definition of A252251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252251.P11124343189638800866

`a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` with `a(0)=463, a(1)=302, a(2)=279, a(3)=297, a(4)=327, a(5)=366, a(6)=414, a(7)=492, a(8)=594`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252251

/-- `a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` -/
def P11124343189638800866.Spec : Prop :=
  ∀ n, P11124343189638800866.a n = A252251 (n + 1)

theorem P11124343189638800866.correct : P11124343189638800866.Spec := by
  intro n
  simp only [A252251, Nat.add_sub_cancel]

end A252251

/-! ## A252251.P8540849480727295787

`A252254(C(n+6, 2)-n)`
-/

namespace A252251.P8540849480727295787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (Nat.choose (n + 6) 2 - n)

end

end A252251.P8540849480727295787

namespace A252251

/-- `A252254(C(n+6, 2)-n)` -/
def P8540849480727295787.Spec : Prop :=
  ∀ n, P8540849480727295787.a n = A252251 (n + 1)

end A252251

/-!
# A252252: Number of (n+2) X (6+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252252, the canonical program `A252252.P13229102193186164982` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252252 has offset 1).

The definition of A252252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252252.P13229102193186164982

`a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` with `a(0)=616, a(1)=359, a(2)=318, a(3)=336, a(4)=366, a(5)=405, a(6)=453, a(7)=531, a(8)=633`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252252

/-- `a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` -/
def P13229102193186164982.Spec : Prop :=
  ∀ n, P13229102193186164982.a n = A252252 (n + 1)

theorem P13229102193186164982.correct : P13229102193186164982.Spec := by
  intro n
  simp only [A252252, Nat.add_sub_cancel]

end A252252

/-! ## A252252.P6259005279095338021

`A252254(∑[n+1]+4*(n+5))`
-/

namespace A252252.P6259005279095338021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (∑ j ∈ Finset.range (n + 1), f1 j + 4 * (n + 5))

end

end A252252.P6259005279095338021

namespace A252252

/-- `A252254(∑[n+1]+4*(n+5))` -/
def P6259005279095338021.Spec : Prop :=
  ∀ n, P6259005279095338021.a n = A252252 (n + 1)

end A252252

/-!
# A252253: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 3 5 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 3 5 6 or 7.

The programs for A252253, the canonical program `A252253.P8105009422330173491` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252253 has offset 1).

The definition of A252253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252253.P8105009422330173491

`a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` with `a(0)=847, a(1)=437, a(2)=366, a(3)=384, a(4)=414, a(5)=453, a(6)=501, a(7)=579, a(8)=681`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252253

/-- `a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` -/
def P8105009422330173491.Spec : Prop :=
  ∀ n, P8105009422330173491.a n = A252253 (n + 1)

theorem P8105009422330173491.correct : P8105009422330173491.Spec := by
  intro n
  simp only [A252253, Nat.add_sub_cancel]

end A252253

/-! ## A252253.P1518075786205307616

`A252254(A167499(n+5)+2)`
-/

namespace A252253.P1518075786205307616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (A167499 (n + 5) + 2).toNat

end

end A252253.P1518075786205307616

namespace A252253

/-- `A252254(A167499(n+5)+2)` -/
def P1518075786205307616.Spec : Prop :=
  ∀ n, P1518075786205307616.a n = A252253 (n + 1)

end A252253

/-! ## A252253.P15349560852222805478

`A252254(A374008(n+1))`
-/

namespace A252253.P15349560852222805478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252254 (A374008 (n + 1)).toNat

end

end A252253.P15349560852222805478

namespace A252253

/-- `A252254(A374008(n+1))` -/
def P15349560852222805478.Spec : Prop :=
  ∀ n, P15349560852222805478.a n = A252253 (n + 1)

end A252253

/-!
# A252256: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 3 6 or 7.

The programs for A252256, there is no canonical definition to state claims against.
-/

/-! ## A252256.P3041437446890517698

`A252260(∑[4*n]+1)`
-/

namespace A252256.P3041437446890517698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252256.P3041437446890517698

/-!
# A252257: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 2 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 2 3 6 or 7.

The programs for A252257, there is no canonical definition to state claims against.
-/

/-! ## A252257.P7165667773125393974

`A252260(∑[n]+1)`
-/

namespace A252257.P7165667773125393974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252257.P7165667773125393974

/-!
# A252258: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 2 3 6 or 7.

The programs for A252258, there is no canonical definition to state claims against.
-/

/-! ## A252258.P11700826994078600551

`A252260(∑[n+1]+2)`
-/

namespace A252258.P11700826994078600551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252258.P11700826994078600551

/-!
# A252259: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 0 2 3 6 or 7.

The programs for A252259, there is no canonical definition to state claims against.
-/

/-! ## A252259.P12844067937645240945

`A252260(∑[n+2]+4)`
-/

namespace A252259.P12844067937645240945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252260 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252259.P12844067937645240945

/-!
# A252261: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252261, there is no canonical definition to state claims against.
-/

/-! ## A252261.P6825265717213070422

`A252269(∑[4*n]+1)`
-/

namespace A252261.P6825265717213070422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252261.P6825265717213070422

/-! ## A252261.P3023150302853350405

`record[A003982(n)*A252269(n+1)]`
-/

namespace A252261.P3023150302853350405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252261.P3023150302853350405

/-! ## A252261.P15695752947983090219

`record[gcd(A156732(n), A252269(n+1))]`
-/

namespace A252261.P15695752947983090219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156732 n) (A252269 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252261.P15695752947983090219

/-!
# A252262: Number of (n+2) X (1+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252262, the canonical program `A252262.P7086827284527261020` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252262 has offset 1).

The definition of A252262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252262.P7086827284527261020

`ogf((103+27x+128x^2+31x^3-58x^4-148x^5-122x^6-16x^7)/(1-x-3x^3-4x^4-4x^5-2x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252262

/-- `ogf((103+27x+128x^2+31x^3-58x^4-148x^5-122x^6-16x^7)/(1-x-3x^3-4x^4-4x^5-2x^6))` -/
def P7086827284527261020.Spec : Prop :=
  ∀ n, P7086827284527261020.a n = A252262 (n + 1)

theorem P7086827284527261020.correct : P7086827284527261020.Spec := by
  intro n
  simp only [A252262, Nat.add_sub_cancel]

end A252262

/-! ## A252262.P373902459140450895

`A252269(∑[n]+1)`
-/

namespace A252262.P373902459140450895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252262.P373902459140450895

namespace A252262

/-- `A252269(∑[n]+1)` -/
def P373902459140450895.Spec : Prop :=
  ∀ n, P373902459140450895.a n = A252262 (n + 1)

end A252262

/-! ## A252262.P16004411892459049660

`record[A010054(n)*A252269(n+1)]`
-/

namespace A252262.P16004411892459049660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252262.P16004411892459049660

namespace A252262

/-- `record[A010054(n)*A252269(n+1)]` -/
def P16004411892459049660.Spec : Prop :=
  ∀ n, P16004411892459049660.a n = A252262 (n + 1)

end A252262

/-! ## A252262.P13323996793323134681

`record[A252269(n+1)/A111910(n)]`
-/

namespace A252262.P13323996793323134681
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252269 (n + 1) : ℚ) / (A111910 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252262.P13323996793323134681

namespace A252262

/-- `record[A252269(n+1)/A111910(n)]` -/
def P13323996793323134681.Spec : Prop :=
  ∀ n, P13323996793323134681.a n = (A252262 (n + 1) : ℚ)

end A252262

/-! ## A252262.P7382518301712689957

`record[root(A252269(n+1), A007318(n))]`
-/

namespace A252262.P7382518301712689957
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252269 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252262.P7382518301712689957

namespace A252262

/-- `record[root(A252269(n+1), A007318(n))]` -/
def P7382518301712689957.Spec : Prop :=
  ∀ n, P7382518301712689957.a n = (A252262 (n + 1) : ℝ)

end A252262

/-!
# A252263: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252263, the canonical program `A252263.P13841070271670128210` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252263 has offset 1).

The definition of A252263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252263.P13841070271670128210

`ogf((130+142x+290x^2+144x^3-52x^4-158x^5-104x^6-32x^7+14x^8)/(1-x-2x^2-6x^3-5x^4-x^5+2x^6+2x^7+x^8))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252263

/-- `ogf((130+142x+290x^2+144x^3-52x^4-158x^5-104x^6-32x^7+14x^8)/(1-x-2x^2-6x^3-5x^4-x^5+2x^6+2x^7+x^8))` -/
def P13841070271670128210.Spec : Prop :=
  ∀ n, P13841070271670128210.a n = A252263 (n + 1)

theorem P13841070271670128210.correct : P13841070271670128210.Spec := by
  intro n
  simp only [A252263, Nat.add_sub_cancel]

end A252263

/-! ## A252263.P18038274419394024573

`(A252363(n+1)+A252337(n+1))/2`
-/

namespace A252263.P18038274419394024573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252363 (n + 1) + A252337 (n + 1) : ℚ) / 2

end

end A252263.P18038274419394024573

namespace A252263

/-- `(A252363(n+1)+A252337(n+1))/2` -/
def P18038274419394024573.Spec : Prop :=
  ∀ n, P18038274419394024573.a n = (A252263 (n + 1) : ℚ)

end A252263

/-! ## A252263.P14220493159807110901

`A252269(∑[n+1]+2)`
-/

namespace A252263.P14220493159807110901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252263.P14220493159807110901

namespace A252263

/-- `A252269(∑[n+1]+2)` -/
def P14220493159807110901.Spec : Prop :=
  ∀ n, P14220493159807110901.a n = A252263 (n + 1)

end A252263

/-! ## A252263.P16180792474989251860

`record[A010054(n)*A252269(n+2)]`
-/

namespace A252263.P16180792474989251860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252263.P16180792474989251860

namespace A252263

/-- `record[A010054(n)*A252269(n+2)]` -/
def P16180792474989251860.Spec : Prop :=
  ∀ n, P16180792474989251860.a n = A252263 (n + 1)

end A252263

/-! ## A252263.P1643687167946405485

`record[gcd(A002262(n), A252269(n+2))]`
-/

namespace A252263.P1643687167946405485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252269 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252263.P1643687167946405485

namespace A252263

/-- `record[gcd(A002262(n), A252269(n+2))]` -/
def P1643687167946405485.Spec : Prop :=
  ∀ n, (P1643687167946405485.a n : ℤ) = A252263 (n + 1)

end A252263

/-!
# A252264: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252264, there is no canonical definition to state claims against.
-/

/-! ## A252264.P9338468251120119370

`A252269(∑[n+2]+4)`
-/

namespace A252264.P9338468251120119370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252264.P9338468251120119370

/-!
# A252265: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252265, there is no canonical definition to state claims against.
-/

/-! ## A252265.P6945713285756259466

`A252269(A141214(n)+7)`
-/

namespace A252265.P6945713285756259466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A141214 n + 7).toNat

end

end A252265.P6945713285756259466

/-! ## A252265.P16321448093976544205

`A252269(A141214(n+1))`
-/

namespace A252265.P16321448093976544205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A141214 (n + 1)).toNat

end

end A252265.P16321448093976544205

/-!
# A252266: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252266, there is no canonical definition to state claims against.
-/

/-! ## A252266.P466376271149994215

`A252269(A167499(n+3))`
-/

namespace A252266.P466376271149994215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A167499 (n + 3)).toNat

end

end A252266.P466376271149994215

/-! ## A252266.P6367182334005365267

`A252269(Δ[A264443(n)])`
-/

namespace A252266.P6367182334005365267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (f1 (n + 1) - f1 n).toNat

end

end A252266.P6367182334005365267

/-!
# A252267: Number of (n+2) X (6+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252267, there is no canonical definition to state claims against.
-/

/-! ## A252267.P8338359159397142058

`A252269(A167499(n+4)+1)`
-/

namespace A252267.P8338359159397142058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A167499 (n + 4) + 1).toNat

end

end A252267.P8338359159397142058

/-! ## A252267.P9285591753047644224

`A252269(A374007(n+1))`
-/

namespace A252267.P9285591753047644224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A374007 (n + 1)).toNat

end

end A252267.P9285591753047644224

/-!
# A252268: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252268, there is no canonical definition to state claims against.
-/

/-! ## A252268.P2006329503174723916

`A252269(eq[11, A066657(n)])`
-/

namespace A252268.P2006329503174723916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252268.P2006329503174723916

/-! ## A252268.P6534490371169638172

`A252269(A374008(n+1))`
-/

namespace A252268.P6534490371169638172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252269 (A374008 (n + 1)).toNat

end

end A252268.P6534490371169638172

/-!
# A252270: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252270, there is no canonical definition to state claims against.
-/

/-! ## A252270.P11973861059094974771

`A252278((n+1)²+n²)`
-/

namespace A252270.P11973861059094974771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 ((n + 1) ^ 2 + n ^ 2)

end

end A252270.P11973861059094974771

/-! ## A252270.P9501073897748246158

`record[A252278(A152271(n²))]`
-/

namespace A252270.P9501073897748246158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252270.P9501073897748246158

/-! ## A252270.P3254890306921316926

`record[A003982(n)*A252278(n+1)]`
-/

namespace A252270.P3254890306921316926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252270.P3254890306921316926

/-! ## A252270.P11188909241037327115

`record[gcd(A114327(n), A252278(n+1))]`
-/

namespace A252270.P11188909241037327115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252278 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252270.P11188909241037327115

/-! ## A252270.P17000668475226197642

`record[root(A252278(n+1), A113881(n+1))]`
-/

namespace A252270.P17000668475226197642
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252278 (n + 1) : ℝ) ^ (1 / (A113881 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252270.P17000668475226197642

/-!
# A252271: Number of (n+2) X (1+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3 X 3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252271, the canonical program `A252271.P6648140778493495128` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252271 has offset 1).

The definition of A252271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252271.P6648140778493495128

`ogf((206+185x+232x^2-914x^3-575x^4-540x^5+770x^6+306x^7+188x^8-180x^9-40x^10+2x^11)/(1-6x^3+7x^6-2x^9))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252271

/-- `ogf((206+185x+232x^2-914x^3-575x^4-540x^5+770x^6+306x^7+188x^8-180x^9-40x^10+2x^11)/(1-6x^3+7x^6-2x^9))` -/
def P6648140778493495128.Spec : Prop :=
  ∀ n, P6648140778493495128.a n = A252271 (n + 1)

theorem P6648140778493495128.correct : P6648140778493495128.Spec := by
  intro n
  simp only [A252271, Nat.add_sub_cancel]

end A252271

/-! ## A252271.P13802425951365287911

`A252278(∑[n]+1)`
-/

namespace A252271.P13802425951365287911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252271.P13802425951365287911

namespace A252271

/-- `A252278(∑[n]+1)` -/
def P13802425951365287911.Spec : Prop :=
  ∀ n, P13802425951365287911.a n = A252271 (n + 1)

end A252271

/-!
# A252272: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252272, there is no canonical definition to state claims against.
-/

/-! ## A252272.P565918392266386494

`A252278(∑[n+1]+2)`
-/

namespace A252272.P565918392266386494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252272.P565918392266386494

/-!
# A252273: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252273, there is no canonical definition to state claims against.
-/

/-! ## A252273.P14253863001789452226

`A252278(∑[n+2]+4)`
-/

namespace A252273.P14253863001789452226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252273.P14253863001789452226

/-!
# A252274: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252274, there is no canonical definition to state claims against.
-/

/-! ## A252274.P15201599475808227784

`A252278(∑[n+1]+2*n+9)`
-/

namespace A252274.P15201599475808227784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 9))

end

end A252274.P15201599475808227784

/-!
# A252275: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252275, there is no canonical definition to state claims against.
-/

/-! ## A252275.P6160196572571089484

`A252278(A374005(n+1))`
-/

namespace A252275.P6160196572571089484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A374005 (n + 1)).toNat

end

end A252275.P6160196572571089484

/-!
# A252276: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252276, there is no canonical definition to state claims against.
-/

/-! ## A252276.P12725101460504326017

`A252278(A374007(n+1))`
-/

namespace A252276.P12725101460504326017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A374007 (n + 1)).toNat

end

end A252276.P12725101460504326017

/-!
# A252277: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 2 3 4 6 or 7.

The programs for A252277, there is no canonical definition to state claims against.
-/

/-! ## A252277.P8503706914515720898

`A252278(A374008(n+1))`
-/

namespace A252277.P8503706914515720898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252278 (A374008 (n + 1)).toNat

end

end A252277.P8503706914515720898

/-!
# A252279: Primes p congruent to 1 mod 16 such that x^8 = 2 has a solution mod p.

The programs for A252279, there is no canonical definition to state claims against.
-/

/-! ## A252279.P10213787179442182974

`∩[A051073(n+1), A094407(n+1)]`
-/

namespace A252279.P10213787179442182974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P10213787179442182974

/-! ## A252279.P8696496079922485653

`∩[A051073(n+1), A105389(n+1)]`
-/

namespace A252279.P8696496079922485653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P8696496079922485653

/-! ## A252279.P2672840092245650527

`∩[A045315(n+1), A094407(n+1)]`
-/

namespace A252279.P2672840092245650527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P2672840092245650527

/-! ## A252279.P3613165605849254244

`∩[A045315(n+1), A105389(n+1)]`
-/

namespace A252279.P3613165605849254244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P3613165605849254244

/-! ## A252279.P9847153800839792075

`∩[A045315(n+1), A158057(n)]`
-/

namespace A252279.P9847153800839792075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P9847153800839792075

/-! ## A252279.P6935887869172157653

`∩[A051073(n+1), A158057(n)]`
-/

namespace A252279.P6935887869172157653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P6935887869172157653

/-! ## A252279.P18253861305499096910

`∩[A045315(n+1), A319281(n+1)]`
-/

namespace A252279.P18253861305499096910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P18253861305499096910

/-! ## A252279.P941723610325063346

`∩[A051073(n+1), A319281(n+1)]`
-/

namespace A252279.P941723610325063346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P941723610325063346

/-! ## A252279.P11963759343863462446

`∩[A045315(n+1), A151977(n+1)]`
-/

namespace A252279.P11963759343863462446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P11963759343863462446

/-! ## A252279.P15427428187805556870

`∩[A051073(n+1), A151977(n+1)]`
-/

namespace A252279.P15427428187805556870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P15427428187805556870

/-! ## A252279.P2869768626238096636

`∩[A045315(n+1), A247061(n+1)]`
-/

namespace A252279.P2869768626238096636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P2869768626238096636

/-! ## A252279.P11797474076049812310

`∩[A051073(n+1), A016813(4*n)]`
-/

namespace A252279.P11797474076049812310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (4 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252279.P11797474076049812310

/-!
# A252280: For a prime p, denote by s(p,k) the odd part of the digital sum of p^k. Let k_1 be the smallest k such that s(p,k) is divisible by 7. Sequence lists primes p for which s(p,k_1)=7.

The programs for A252280, there is no canonical definition to state claims against.
-/

/-! ## A252280.P13330451299377312093

`eq[A353860(A348052(n+2)), A353860(n)]`
-/

namespace A252280.P13330451299377312093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353860 (A348052 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353860 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252280.P13330451299377312093

/-! ## A252280.P1488680408167112258

`A340759(A062399(n+1))`
-/

namespace A252280.P1488680408167112258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340759 (A062399 (n + 1)).toNat

end

end A252280.P1488680408167112258

/-! ## A252280.P8684048500549458492

`A154363(∑[A334439(n+1)])`
-/

namespace A252280.P8684048500549458492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154363 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A252280.P8684048500549458492

/-! ## A252280.P14142874158604963847

`A340759(A032555(n+1))`
-/

namespace A252280.P14142874158604963847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340759 (A032555 (n + 1)).toNat

end

end A252280.P14142874158604963847

/-! ## A252280.P5502579233874582173

`∩[A029903(n), A155108(n+1)]`
-/

namespace A252280.P5502579233874582173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252280.P5502579233874582173

/-!
# A252281: For a prime p, denote by s(p,k) the odd part of the digital sum of p^k. Let k_1 be the smallest k such that s(p,k) is divisible by 11. Sequence lists primes p for which s(p,k_1)=11.

The programs for A252281, there is no canonical definition to state claims against.
-/

/-! ## A252281.P12550279005497023310

`A045344(A308469(n+1)^A250131(n+1))`
-/

namespace A252281.P12550279005497023310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.roundAway ((A308469 (n + 1) : ℚ) ^ (A250131 (n + 1) : ℤ))).toNat

end

end A252281.P12550279005497023310

/-! ## A252281.P5702061701073252358

`p?[A069924(∑[A160664(n)])]`
-/

namespace A252281.P5702061701073252358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069924 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252281.P5702061701073252358

/-! ## A252281.P11088496582773489532

`filter[A120242(2*(n+1)), A373338(#)]`
-/

namespace A252281.P11088496582773489532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120242 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A252281.P11088496582773489532

/-!
# A252282: Intersection of A251964 and A252280.

The programs for A252282, there is no canonical definition to state claims against.
-/

/-! ## A252282.P13904038455200490900

`∩[A251964(n+1), A252280(n+1)]`
-/

namespace A252282.P13904038455200490900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252282.P13904038455200490900

/-! ## A252282.P6498346695171565236

`∩[A028804(n+1), A251964(n+1)]`
-/

namespace A252282.P6498346695171565236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252282.P6498346695171565236

/-! ## A252282.P8045192278702134833

`∩[A122546(n+1), A251964(n+1)]`
-/

namespace A252282.P8045192278702134833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252282.P8045192278702134833

/-! ## A252282.P16467635246444382978

`∩[A122806(n+1), A251964(n+1)]`
-/

namespace A252282.P16467635246444382978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252282.P16467635246444382978

/-! ## A252282.P11124371331479278218

`∩[A251964(n+1), A258022(n+1)]`
-/

namespace A252282.P11124371331479278218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252282.P11124371331479278218

/-!
# A252283: Intersection of A251964, A252280 and A252281.

The programs for A252283, there is no canonical definition to state claims against.
-/

/-! ## A252283.P8560796815704086883

`∩[A252281(n+1), A252282(n+1)]`
-/

namespace A252283.P8560796815704086883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252283.P8560796815704086883

/-! ## A252283.P14175737054835014590

`A000040(lt[2, A252670(n+1)]+1)`
-/

namespace A252283.P14175737054835014590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A252283.P14175737054835014590

/-!
# A252285: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252285, there is no canonical definition to state claims against.
-/

/-! ## A252285.P18109413326276655701

`A252293(∑[4*n]+1)`
-/

namespace A252285.P18109413326276655701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252285.P18109413326276655701

/-! ## A252285.P18290140585137043682

`∏{digits}[n, A252293(A001844(#))]`
-/

namespace A252285.P18290140585137043682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A252293 (A001844 x).toNat).prod

end

end A252285.P18290140585137043682

/-! ## A252285.P16120037440485220111

`record[A003982(n)*A252293(n+1)]`
-/

namespace A252285.P16120037440485220111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252285.P16120037440485220111

/-! ## A252285.P10023862782791198842

`record[gcd(A003987(n), A252293(n+1))]`
-/

namespace A252285.P10023862782791198842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A252293 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252285.P10023862782791198842

/-!
# A252286: Number of (n+2)X(1+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252286, there is no canonical definition to state claims against.
-/

/-! ## A252286.P12038937825845171600

`A252293(∑[n]+1)`
-/

namespace A252286.P12038937825845171600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252286.P12038937825845171600

/-! ## A252286.P10266827746040302848

`record[A010054(n)*A252293(n+1)]`
-/

namespace A252286.P10266827746040302848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252286.P10266827746040302848

/-! ## A252286.P13331239944810427591

`record[A252293(n+1)/A008459(n)]`
-/

namespace A252286.P13331239944810427591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252293 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252286.P13331239944810427591

/-! ## A252286.P4084377636954328540

`record[A252293(n+1)/A013612(n)]`
-/

namespace A252286.P4084377636954328540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252293 (n + 1) : ℚ) / (A013612 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252286.P4084377636954328540

/-! ## A252286.P4406081126048563872

`record[gcd(A002262(n), A252293(n+1))]`
-/

namespace A252286.P4406081126048563872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252293 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252286.P4406081126048563872

/-!
# A252287: Number of (n+2)X(2+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252287, there is no canonical definition to state claims against.
-/

/-! ## A252287.P834999574268881025

`A252293(∑[n+1]+2)`
-/

namespace A252287.P834999574268881025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252287.P834999574268881025

/-! ## A252287.P11589815628942118807

`record[A010054(n)*A252293(n+2)]`
-/

namespace A252287.P11589815628942118807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252293 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252287.P11589815628942118807

/-! ## A252287.P18194149238412471997

`record[A252293(n+2)/A013612(n)]`
-/

namespace A252287.P18194149238412471997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252293 (n + 2) : ℚ) / (A013612 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252287.P18194149238412471997

/-! ## A252287.P1636560229225057089

`record[A252293(gcd(n+2, A002262(n)))]`
-/

namespace A252287.P1636560229225057089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (Int.gcd (n + 2 : ℤ) (A002262 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252287.P1636560229225057089

/-!
# A252288: Number of (n+2)X(3+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252288, there is no canonical definition to state claims against.
-/

/-! ## A252288.P4237256732653313380

`A252293(∑[n+2]+4)`
-/

namespace A252288.P4237256732653313380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252288.P4237256732653313380

/-!
# A252289: Number of (n+2)X(4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252289, there is no canonical definition to state claims against.
-/

/-! ## A252289.P15537282154419824643

`A252293(A374004(n+1))`
-/

namespace A252289.P15537282154419824643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A374004 (n + 1)).toNat

end

end A252289.P15537282154419824643

/-! ## A252289.P96306146438296246

`A252293(A141214(n+1))`
-/

namespace A252289.P96306146438296246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A141214 (n + 1)).toNat

end

end A252289.P96306146438296246

/-!
# A252290: Number of (n+2)X(5+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252290, there is no canonical definition to state claims against.
-/

/-! ## A252290.P18287776638995037778

`A252293(A374005(n+1))`
-/

namespace A252290.P18287776638995037778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A374005 (n + 1)).toNat

end

end A252290.P18287776638995037778

/-!
# A252291: Number of (n+2)X(6+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252291, there is no canonical definition to state claims against.
-/

/-! ## A252291.P13298710523768194802

`A252293(A374007(n+1))`
-/

namespace A252291.P13298710523768194802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A374007 (n + 1)).toNat

end

end A252291.P13298710523768194802

/-!
# A252292: Number of (n+2)X(7+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 or 4.

The programs for A252292, there is no canonical definition to state claims against.
-/

/-! ## A252292.P9007331432059212343

`A252293(A374008(n+1))`
-/

namespace A252292.P9007331432059212343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252293 (A374008 (n + 1)).toNat

end

end A252292.P9007331432059212343

/-!
# A252294: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252294, there is no canonical definition to state claims against.
-/

/-! ## A252294.P2660283457377230726

`A252295(∑[n]+1)`
-/

namespace A252294.P2660283457377230726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252295 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252294.P2660283457377230726

/-!
# A252296: Fibonacci numbers k for which the difference between k and the largest prime less than k is also prime.

The programs for A252296, there is no canonical definition to state claims against.
-/

/-! ## A252296.P2805761488351898879

`filter[A099047(2*n+1), A010056(#)]`
-/

namespace A252296.P2805761488351898879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A252296.P2805761488351898879

/-! ## A252296.P15208990207870020733

`A246104(or(A033816(n), A088218(n)))`
-/

namespace A252296.P15208990207870020733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (Int.lor (A033816 n) (A088218 n)).toNat

end

end A252296.P15208990207870020733

/-! ## A252296.P9311476257328256363

`A256654(or(A088218(n), A272708(n)))`
-/

namespace A252296.P9311476257328256363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (Int.lor (A088218 n) (A272708 n)).toNat

end

end A252296.P9311476257328256363

/-! ## A252296.P433032131935276257

`A087172(or(A050183(n), A212457(n+1)))`
-/

namespace A252296.P433032131935276257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (Int.lor (A050183 n) (A212457 (n + 1))).toNat

end

end A252296.P433032131935276257

/-!
# A252297: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252297, there is no canonical definition to state claims against.
-/

/-! ## A252297.P4025398986506875510

`A252305(∑[4*n]+1)`
-/

namespace A252297.P4025398986506875510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252297.P4025398986506875510

/-! ## A252297.P17552341954383451687

`record[gcd(abs(round(sqrt(2*(n+1)))²-(2*n+1)), A252305(n+1))]`
-/

namespace A252297.P17552341954383451687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| (A252305 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252297.P17552341954383451687

/-!
# A252298: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252298, there is no canonical definition to state claims against.
-/

/-! ## A252298.P2043501878299194432

`A252305(∑[n+1])`
-/

namespace A252298.P2043501878299194432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252298.P2043501878299194432

/-! ## A252298.P14919685168571934543

`record[A252305(A115017(n+1))]`
-/

namespace A252298.P14919685168571934543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252298.P14919685168571934543

/-! ## A252298.P13285800660447168501

`record[A252305(A130270(n+1))]`
-/

namespace A252298.P13285800660447168501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252298.P13285800660447168501

/-! ## A252298.P8718036706842601322

`record[A252305(record[A255556(n+1)])]`
-/

namespace A252298.P8718036706842601322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255556 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252298.P8718036706842601322

/-!
# A252299: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252299, there is no canonical definition to state claims against.
-/

/-! ## A252299.P7666382919893526463

`A252305(∑[n+2])`
-/

namespace A252299.P7666382919893526463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252299.P7666382919893526463

