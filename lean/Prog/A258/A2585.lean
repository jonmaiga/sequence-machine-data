import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
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
# A258505: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258505, there is no canonical definition to state claims against.
-/

/-! ## A258505.P16491697408158924723

`A258511(∑[n+2])`
-/

namespace A258505.P16491697408158924723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258505.P16491697408158924723

/-! ## A258505.P3468561561845100130

`record[A258511(Δ[A003453(n+5)])]`
-/

namespace A258505.P3468561561845100130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258505.P3468561561845100130

/-! ## A258505.P2192117630169059668

`record[A258511(n+2)/A091320(n+3)]`
-/

namespace A258505.P2192117630169059668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258511 (n + 2) : ℚ) / (A091320 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258505.P2192117630169059668

/-! ## A258505.P17493109193745469818

`record[A258511(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A258505.P17493109193745469818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258505.P17493109193745469818

/-!
# A258506: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258506, there is no canonical definition to state claims against.
-/

/-! ## A258506.P14479655785120171275

`A258511(∑[n+3]+1)`
-/

namespace A258506.P14479655785120171275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258506.P14479655785120171275

/-! ## A258506.P4126249442566532950

`record[A258511(A198464(n+1))]`
-/

namespace A258506.P4126249442566532950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258506.P4126249442566532950

/-!
# A258507: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258507, there is no canonical definition to state claims against.
-/

/-! ## A258507.P12090588223871026547

`A258511(A141214(n+1))`
-/

namespace A258507.P12090588223871026547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (A141214 (n + 1)).toNat

end

end A258507.P12090588223871026547

/-!
# A258508: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258508, there is no canonical definition to state claims against.
-/

/-! ## A258508.P16087008210625078190

`A258511(A046691(n+3))`
-/

namespace A258508.P16087008210625078190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (A046691 (n + 3)).toNat

end

end A258508.P16087008210625078190

/-!
# A258509: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258509, there is no canonical definition to state claims against.
-/

/-! ## A258509.P7031982932887196259

`A258511(A052905(n+3))`
-/

namespace A258509.P7031982932887196259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (A052905 (n + 3)).toNat

end

end A258509.P7031982932887196259

/-!
# A258510: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258510, there is no canonical definition to state claims against.
-/

/-! ## A258510.P12613897541174803020

`A258511(eq[4, A219347(n)])`
-/

namespace A258510.P12613897541174803020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258510.P12613897541174803020

/-!
# A258512: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258512, there is no canonical definition to state claims against.
-/

/-! ## A258512.P9986174572202366665

`A258511(∑[n+1]+2)`
-/

namespace A258512.P9986174572202366665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A258512.P9986174572202366665

/-! ## A258512.P17458640445534054476

`record[gcd(A215083(n), A258511(n+2))]`
-/

namespace A258512.P17458640445534054476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215083 n) (A258511 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258512.P17458640445534054476

/-! ## A258512.P17323657283594596898

`record[A258511(n+2)/A241171(n+1)]`
-/

namespace A258512.P17323657283594596898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258511 (n + 2) : ℚ) / (A241171 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258512.P17323657283594596898

/-! ## A258512.P7652973585024897856

`record[root(A258511(n+2), A128077(n+1))]`
-/

namespace A258512.P7652973585024897856
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258511 (n + 2) : ℝ) ^ (1 / (A128077 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258512.P7652973585024897856

/-! ## A258512.P13711115498481770106

`record[root(A258511(n+3), A221125(n+1))]`
-/

namespace A258512.P13711115498481770106
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258511 (n + 3) : ℝ) ^ (1 / (A221125 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258512.P13711115498481770106

/-!
# A258513: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258513, there is no canonical definition to state claims against.
-/

/-! ## A258513.P2113793965279992504

`A258511(∑[n+2]+4)`
-/

namespace A258513.P2113793965279992504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A258513.P2113793965279992504

/-!
# A258514: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258514, there is no canonical definition to state claims against.
-/

/-! ## A258514.P2101693319046721009

`A258511(A141214(n)+7)`
-/

namespace A258514.P2101693319046721009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (A141214 n + 7).toNat

end

end A258514.P2101693319046721009

/-!
# A258515: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258515, there is no canonical definition to state claims against.
-/

/-! ## A258515.P18110369421938977490

`A258511(A167499(n+3))`
-/

namespace A258515.P18110369421938977490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (A167499 (n + 3)).toNat

end

end A258515.P18110369421938977490

/-!
# A258516: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258516, there is no canonical definition to state claims against.
-/

/-! ## A258516.P4118411108554207447

`A258511(A167499(n+4)+1)`
-/

namespace A258516.P4118411108554207447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (A167499 (n + 4) + 1).toNat

end

end A258516.P4118411108554207447

/-!
# A258517: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258517, there is no canonical definition to state claims against.
-/

/-! ## A258517.P13452611023226228706

`A258511(A056119(n)+28)`
-/

namespace A258517.P13452611023226228706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (A056119 n + 28).toNat

end

end A258517.P13452611023226228706

/-!
# A258518: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two sums of the central column and central row nondecreasing horizontally and vertically.

The programs for A258518, there is no canonical definition to state claims against.
-/

/-! ## A258518.P14004922421553500945

`A258522((n+1)²+n²)`
-/

namespace A258518.P14004922421553500945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258522 ((n + 1) ^ 2 + n ^ 2)

end

end A258518.P14004922421553500945

/-!
# A258519: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two sums of the central column and central row nondecreasing horizontally and vertically.

The programs for A258519, there is no canonical definition to state claims against.
-/

/-! ## A258519.P4749773021578933526

`A258522(1+∑[n])`
-/

namespace A258519.P4749773021578933526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258522 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258519.P4749773021578933526

/-! ## A258519.P5251261128063123465

`record[A258522(A010054(n+1)+n)]`
-/

namespace A258519.P5251261128063123465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258522 (A010054 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258519.P5251261128063123465

/-! ## A258519.P6041809438978602385

`record[A258522(A144328(2+n)+n)]`
-/

namespace A258519.P6041809438978602385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258522 (A144328 (2 + n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258519.P6041809438978602385

/-! ## A258519.P2374581338411092799

`record[A258522(1+n)*A286354(n)]`
-/

namespace A258519.P2374581338411092799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258522 (1 + n) * A286354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258519.P2374581338411092799

/-! ## A258519.P8972696304248880058

`record[A258522(and(1, A007318(n))+n)]`
-/

namespace A258519.P8972696304248880058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258522 (Int.land 1 (A007318 n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258519.P8972696304248880058

/-! ## A258519.P9385983710403130031

`record[A258522(n+1)/A002260(n+1)]`
-/

namespace A258519.P9385983710403130031
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258522 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258519.P9385983710403130031

/-! ## A258519.P6806134404551709722

`record[A258522(n+1)/A212737(n+1)]`
-/

namespace A258519.P6806134404551709722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258522 (n + 1) : ℚ) / (A212737 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258519.P6806134404551709722

/-!
# A258520: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two sums of the central column and central row nondecreasing horizontally and vertically.

The programs for A258520, there is no canonical definition to state claims against.
-/

/-! ## A258520.P7307345830118985873

`A258522(∑[n+1]+2)`
-/

namespace A258520.P7307345830118985873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258522 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A258520.P7307345830118985873

/-!
# A258521: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two sums of the central column and central row nondecreasing horizontally and vertically.

The programs for A258521, there is no canonical definition to state claims against.
-/

/-! ## A258521.P10886962403069370376

`A258522(A167614(n+1))`
-/

namespace A258521.P10886962403069370376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258522 (A167614 (n + 1)).toNat

end

end A258521.P10886962403069370376

/-! ## A258521.P2070956449575888099

`A258522(∑[n+3]+1)`
-/

namespace A258521.P2070956449575888099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258522 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258521.P2070956449575888099

/-!
# A258523: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258523, there is no canonical definition to state claims against.
-/

/-! ## A258523.P11246188896147176606

`A258530((n+1)²+n²)`
-/

namespace A258523.P11246188896147176606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 ((n + 1) ^ 2 + n ^ 2)

end

end A258523.P11246188896147176606

/-! ## A258523.P12935056982122134499

`record[A003982(n)*A258530(n+1)]`
-/

namespace A258523.P12935056982122134499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A258530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258523.P12935056982122134499

/-! ## A258523.P1544826826461753570

`record[gcd(A258530(n+1), A274650(n))]`
-/

namespace A258523.P1544826826461753570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A258530 (n + 1)) (A274650 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258523.P1544826826461753570

/-!
# A258524: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258524, there is no canonical definition to state claims against.
-/

/-! ## A258524.P17461803291390870391

`A258530(∑[n+2])`
-/

namespace A258524.P17461803291390870391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258524.P17461803291390870391

/-! ## A258524.P210666527206668925

`record[A258530(A000096(A020986(n)))]`
-/

namespace A258524.P210666527206668925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (A000096 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258524.P210666527206668925

/-! ## A258524.P17017299265689227770

`record[A258530(A000096(A004736(n+1)))]`
-/

namespace A258524.P17017299265689227770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258524.P17017299265689227770

/-!
# A258525: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258525, there is no canonical definition to state claims against.
-/

/-! ## A258525.P12112910726351705737

`A258530(∑[n+3]+1)`
-/

namespace A258525.P12112910726351705737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258525.P12112910726351705737

/-!
# A258526: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258526, there is no canonical definition to state claims against.
-/

/-! ## A258526.P8820340264520003631

`A258530(A055998(n+2))`
-/

namespace A258526.P8820340264520003631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (A055998 (n + 2)).toNat

end

end A258526.P8820340264520003631

/-!
# A258527: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258527, there is no canonical definition to state claims against.
-/

/-! ## A258527.P4716722290717395341

`A258530(∑[n+5]+6)`
-/

namespace A258527.P4716722290717395341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A258527.P4716722290717395341

/-!
# A258528: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258528, there is no canonical definition to state claims against.
-/

/-! ## A258528.P12384423906976185645

`A258530(A052905(n+3))`
-/

namespace A258528.P12384423906976185645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (A052905 (n + 3)).toNat

end

end A258528.P12384423906976185645

/-!
# A258529: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258529, there is no canonical definition to state claims against.
-/

/-! ## A258529.P12460111142920677038

`A258530(A055999(n+4))`
-/

namespace A258529.P12460111142920677038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (A055999 (n + 4)).toNat

end

end A258529.P12460111142920677038

/-!
# A258531: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258531, there is no canonical definition to state claims against.
-/

/-! ## A258531.P15085377434130356594

`A258530(∑[n+1]+2)`
-/

namespace A258531.P15085377434130356594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A258531.P15085377434130356594

/-! ## A258531.P4174451133587655644

`record[A258530(A008795(n)+2)]`
-/

namespace A258531.P4174451133587655644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258531.P4174451133587655644

/-! ## A258531.P11304552152470886007

`record[A010054(n)*A258530(n+2)]`
-/

namespace A258531.P11304552152470886007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A258530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258531.P11304552152470886007

/-! ## A258531.P1308571724004073727

`record[root(A258530(n+2), A059268(n))]`
-/

namespace A258531.P1308571724004073727
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258530 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258531.P1308571724004073727

/-! ## A258531.P15123740875595574841

`record[gcd(A002262(n), A258530(n+2))]`
-/

namespace A258531.P15123740875595574841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A258530 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258531.P15123740875595574841

/-!
# A258532: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258532, there is no canonical definition to state claims against.
-/

/-! ## A258532.P5520941838816115659

`A258530(∑[n+2]+4)`
-/

namespace A258532.P5520941838816115659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A258532.P5520941838816115659

/-!
# A258533: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258533, there is no canonical definition to state claims against.
-/

/-! ## A258533.P6331689452793417136

`A258530(Δ[A008778(n)]+6)`
-/

namespace A258533.P6331689452793417136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (f1 (n + 1) - f1 n + 6).toNat

end

end A258533.P6331689452793417136

/-!
# A258534: Number of (5+2) X (n+2) 0..1 arrays with every 3 X 3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258534, there is no canonical definition to state claims against.
-/

/-! ## A258534.P11008700415645070991

`A258530(A167499(n+3))`
-/

namespace A258534.P11008700415645070991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (A167499 (n + 3)).toNat

end

end A258534.P11008700415645070991

/-!
# A258535: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258535, there is no canonical definition to state claims against.
-/

/-! ## A258535.P7749874124410453186

`A258530(A056115(n)+21)`
-/

namespace A258535.P7749874124410453186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (A056115 n + 21).toNat

end

end A258535.P7749874124410453186

/-!
# A258536: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258536, there is no canonical definition to state claims against.
-/

/-! ## A258536.P6023911800400697356

`A258530(A167487(n+5))`
-/

namespace A258536.P6023911800400697356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (A167487 (n + 5)).toNat

end

end A258536.P6023911800400697356

/-!
# A258537: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum equal to the central column sum.

The programs for A258537, there is no canonical definition to state claims against.
-/

/-! ## A258537.P5913996090331849094

`A258545((n+1)²+n²)`
-/

namespace A258537.P5913996090331849094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258545 ((n + 1) ^ 2 + n ^ 2)

end

end A258537.P5913996090331849094

/-! ## A258537.P1595682205399539542

`record[gcd(A003987(n), A258545(n+1))]`
-/

namespace A258537.P1595682205399539542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A258545 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258537.P1595682205399539542

/-!
# A258538: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum less than the antidiagonal sum or central row sum equal to the central column sum.

The programs for A258538, there is no canonical definition to state claims against.
-/

/-! ## A258538.P12865345381412221948

`A258545(∑[n]+1)`
-/

namespace A258538.P12865345381412221948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258545 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258538.P12865345381412221948

/-! ## A258538.P2674593412676517309

`record[A258545(n+1)*A010054(n)]`
-/

namespace A258538.P2674593412676517309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258545 (n + 1) * A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258538.P2674593412676517309

/-! ## A258538.P8056960926227868961

`record[A258545(n+1)/A007318(n)]`
-/

namespace A258538.P8056960926227868961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258545 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258538.P8056960926227868961

/-! ## A258538.P1436088735959585188

`record[A258545(n+1)/A026769(n)]`
-/

namespace A258538.P1436088735959585188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258545 (n + 1) : ℚ) / (A026769 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258538.P1436088735959585188

/-!
# A258539: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum equal to the central column sum.

The programs for A258539, there is no canonical definition to state claims against.
-/

/-! ## A258539.P12583759739117919134

`A258545(A133263(n+1))`
-/

namespace A258539.P12583759739117919134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258545 (A133263 (n + 1)).toNat

end

end A258539.P12583759739117919134

/-! ## A258539.P7161994310559838841

`A258545(∑[n+2])`
-/

namespace A258539.P7161994310559838841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258545 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258539.P7161994310559838841

/-!
# A258540: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum equal to the central column sum.

The programs for A258540, there is no canonical definition to state claims against.
-/

/-! ## A258540.P14018572798066223476

`A258545(A167614(n+1))`
-/

namespace A258540.P14018572798066223476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258545 (A167614 (n + 1)).toNat

end

end A258540.P14018572798066223476

/-!
# A258541: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum equal to the central column sum.

The programs for A258541, there is no canonical definition to state claims against.
-/

/-! ## A258541.P2838037028497451458

`A258545(A055999(n)+10)`
-/

namespace A258541.P2838037028497451458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258545 (A055999 n + 10).toNat

end

end A258541.P2838037028497451458

/-!
# A258542: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum equal to the central column sum.

The programs for A258542, there is no canonical definition to state claims against.
-/

/-! ## A258542.P13463276456381705451

`A258545(A167499(n+3))`
-/

namespace A258542.P13463276456381705451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258545 (A167499 (n + 3)).toNat

end

end A258542.P13463276456381705451

/-! ## A258542.P12011551604840953480

`A258545(A374005(n+1))`
-/

namespace A258542.P12011551604840953480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258545 (A374005 (n + 1)).toNat

end

end A258542.P12011551604840953480

/-!
# A258543: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum equal to the central column sum.

The programs for A258543, there is no canonical definition to state claims against.
-/

/-! ## A258543.P6273569653875807806

`A258545(A167614(n+4)+3)`
-/

namespace A258543.P6273569653875807806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258545 (A167614 (n + 4) + 3).toNat

end

end A258543.P6273569653875807806

/-! ## A258543.P17556070217057960774

`A258545(A374007(n+1))`
-/

namespace A258543.P17556070217057960774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258545 (A374007 (n + 1)).toNat

end

end A258543.P17556070217057960774

/-!
# A258544: Number of (n+2) X (7+2) 0..1 arrays with no 3 X 3 subblock diagonal sum less than the antidiagonal sum or central row sum equal to the central column sum.

The programs for A258544, there is no canonical definition to state claims against.
-/

/-! ## A258544.P14457479648439016299

`A258545(A056119(n)+28)`
-/

namespace A258544.P14457479648439016299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258545 (A056119 n + 28).toNat

end

end A258544.P14457479648439016299

/-! ## A258544.P18314667728037333189

`A258545(A374008(n+1))`
-/

namespace A258544.P18314667728037333189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258545 (A374008 (n + 1)).toNat

end

end A258544.P18314667728037333189

/-!
# A258546: Number of (n+1)X(n+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A258546, there is no canonical definition to state claims against.
-/

/-! ## A258546.P11301183453124819554

`A258554(∑[4*n]+1)`
-/

namespace A258546.P11301183453124819554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258546.P11301183453124819554

/-! ## A258546.P15367809393957645044

`record[gcd(A003987(n), A258554(n+1))]`
-/

namespace A258546.P15367809393957645044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A258554 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258546.P15367809393957645044

/-!
# A258547: Number of (n+1)X(1+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A258547, the canonical program `A258547.P10554180977804731160` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258547 has offset 1).

The definition of A258547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258547.P10554180977804731160

`16*2^(n+1)-4*(n+1)-12`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258547

/-- `16*2^(n+1)-4*(n+1)-12` -/
def P10554180977804731160.Spec : Prop :=
  ∀ n, P10554180977804731160.a n = A258547 (n + 1)

theorem P10554180977804731160.correct : P10554180977804731160.Spec := by
  intro n
  simp only [A258547, Nat.add_sub_cancel]

end A258547

/-! ## A258547.P916190233058093421

`∑[2*a(n-1)+4]+4` with `a(0)=12`
-/

namespace A258547.P916190233058093421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  2 * f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A258547.P916190233058093421

namespace A258547

/-- `∑[2*a(n-1)+4]+4` -/
def P916190233058093421.Spec : Prop :=
  ∀ n, (P916190233058093421.a n : ℤ) = A258547 (n + 1)

end A258547

/-! ## A258547.P15344781465934003149

`4*∑[or(3, lcm(2, a(n-1)))]` with `a(0)=4`
-/

namespace A258547.P15344781465934003149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  Nat.lor 3 (Nat.lcm 2 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258547.P15344781465934003149

namespace A258547

/-- `4*∑[or(3, lcm(2, a(n-1)))]` -/
def P15344781465934003149.Spec : Prop :=
  ∀ n, (P15344781465934003149.a n : ℤ) = A258547 (n + 1)

end A258547

/-! ## A258547.P3424706065019766678

`4*(∑[2*a(n-1)]-n)` with `a(0)=4`
-/

namespace A258547.P3424706065019766678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A258547.P3424706065019766678

namespace A258547

/-- `4*(∑[2*a(n-1)]-n)` -/
def P3424706065019766678.Spec : Prop :=
  ∀ n, P3424706065019766678.a n = A258547 (n + 1)

end A258547

/-! ## A258547.P17089303291362859092

`4*(∑[ogf((3-2x)/(1-3x+2x^2))]+1)`
-/

namespace A258547.P17089303291362859092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258547.P17089303291362859092

namespace A258547

/-- `4*(∑[ogf((3-2x)/(1-3x+2x^2))]+1)` -/
def P17089303291362859092.Spec : Prop :=
  ∀ n, P17089303291362859092.a n = A258547 (n + 1)

end A258547

/-! ## A258547.P8378219460323831928

`2*(a(n-1)+2*(n+2))` with `a(0)=16`
-/

namespace A258547.P8378219460323831928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16] fun n a =>
  2 * (a (n - 1) + 2 * (n + 2))

end

end A258547.P8378219460323831928

namespace A258547

/-- `2*(a(n-1)+2*(n+2))` -/
def P8378219460323831928.Spec : Prop :=
  ∀ n, (P8378219460323831928.a n : ℤ) = A258547 (n + 1)

theorem P8378219460323831928.correct : P8378219460323831928.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A258547, Nat.add_sub_cancel, A258547.P8378219460323831928.a, A258547.P10554180977804731160.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A258547, Nat.add_sub_cancel, A258547.P8378219460323831928.a, A258547.P10554180977804731160.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A258547

/-! ## A258547.P11910214625906596296

`4*(4*∑[ogf((1-2x)/(1-4x+4x^2))]-n)`
-/

namespace A258547.P11910214625906596296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ))

end

end A258547.P11910214625906596296

namespace A258547

/-- `4*(4*∑[ogf((1-2x)/(1-4x+4x^2))]-n)` -/
def P11910214625906596296.Spec : Prop :=
  ∀ n, P11910214625906596296.a n = A258547 (n + 1)

end A258547

/-! ## A258547.P16133644211804576962

`∑[record[a(n-1)+a(n-1)+4]]` with `a(0)=16, a(1)=0, a(2)=4`
-/

namespace A258547.P16133644211804576962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [16, 0, 4] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258547.P16133644211804576962

namespace A258547

/-- `∑[record[a(n-1)+a(n-1)+4]]` -/
def P16133644211804576962.Spec : Prop :=
  ∀ n, (P16133644211804576962.a n : ℤ) = A258547 (n + 1)

end A258547

/-! ## A258547.P9383858858844193168

`A302689(n+5)`
-/

namespace A258547.P9383858858844193168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302689 (n + 5)

end

end A258547.P9383858858844193168

namespace A258547

/-- `A302689(n+5)` -/
def P9383858858844193168.Spec : Prop :=
  ∀ n, P9383858858844193168.a n = A258547 (n + 1)

theorem P9383858858844193168.correct : P9383858858844193168.Spec := by
  intro n
  simp only [A258547, Nat.add_sub_cancel, A258547.P9383858858844193168.a, A258547.P10554180977804731160.a, A302689, A302689.P12957386915617573721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258547

/-! ## A258547.P14260718020176230921

`2*A145654(n+3)`
-/

namespace A258547.P14260718020176230921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145654 (n + 3)

end

end A258547.P14260718020176230921

namespace A258547

/-- `2*A145654(n+3)` -/
def P14260718020176230921.Spec : Prop :=
  ∀ n, P14260718020176230921.a n = A258547 (n + 1)

theorem P14260718020176230921.correct : P14260718020176230921.Spec := by
  intro n
  simp only [A258547, Nat.add_sub_cancel, A258547.P14260718020176230921.a, A258547.P10554180977804731160.a, A145654, A145654.P7427582297389313429.a, A005803, A005803.P14873078838690914956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258547

/-! ## A258547.P10523603541581602690

`2*A005803(n+4)`
-/

namespace A258547.P10523603541581602690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005803 (n + 4)

end

end A258547.P10523603541581602690

namespace A258547

/-- `2*A005803(n+4)` -/
def P10523603541581602690.Spec : Prop :=
  ∀ n, P10523603541581602690.a n = A258547 (n + 1)

theorem P10523603541581602690.correct : P10523603541581602690.Spec := by
  intro n
  simp only [A258547, Nat.add_sub_cancel, A258547.P10523603541581602690.a, A258547.P10554180977804731160.a, A005803, A005803.P14873078838690914956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258547

/-! ## A258547.P11043398276155291976

`4*A125128(n+2)`
-/

namespace A258547.P11043398276155291976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A125128 (n + 2)

end

end A258547.P11043398276155291976

namespace A258547

/-- `4*A125128(n+2)` -/
def P11043398276155291976.Spec : Prop :=
  ∀ n, P11043398276155291976.a n = A258547 (n + 1)

theorem P11043398276155291976.correct : P11043398276155291976.Spec := by
  intro n
  simp only [A258547, Nat.add_sub_cancel, A258547.P11043398276155291976.a, A258547.P10554180977804731160.a, A125128, A125128.P15302475142462672969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258547

/-! ## A258547.P6504993609588502432

`4*A000295(n+3)`
-/

namespace A258547.P6504993609588502432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000295 (n + 3)

end

end A258547.P6504993609588502432

namespace A258547

/-- `4*A000295(n+3)` -/
def P6504993609588502432.Spec : Prop :=
  ∀ n, P6504993609588502432.a n = A258547 (n + 1)

theorem P6504993609588502432.correct : P6504993609588502432.Spec := by
  intro n
  simp only [A258547, Nat.add_sub_cancel, A258547.P6504993609588502432.a, A258547.P10554180977804731160.a, A000295, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258547

/-! ## A258547.P6071797952454090218

`4*A130103(n+3)`
-/

namespace A258547.P6071797952454090218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A130103 (n + 3)

end

end A258547.P6071797952454090218

namespace A258547

/-- `4*A130103(n+3)` -/
def P6071797952454090218.Spec : Prop :=
  ∀ n, P6071797952454090218.a n = A258547 (n + 1)

end A258547

/-! ## A258547.P10747248715585966035

`2*(A183155(n+3)-1)`
-/

namespace A258547.P10747248715585966035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A183155 (n + 3) - 1)

end

end A258547.P10747248715585966035

namespace A258547

/-- `2*(A183155(n+3)-1)` -/
def P10747248715585966035.Spec : Prop :=
  ∀ n, P10747248715585966035.a n = A258547 (n + 1)

theorem P10747248715585966035.correct : P10747248715585966035.Spec := by
  intro n
  simp only [A258547, Nat.add_sub_cancel, A258547.P10747248715585966035.a, A258547.P10554180977804731160.a, A183155, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258547

/-! ## A258547.P910893524859835333

`2*A121173(2*(n+2))`
-/

namespace A258547.P910893524859835333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121173 (2 * (n + 2))

end

end A258547.P910893524859835333

namespace A258547

/-- `2*A121173(2*(n+2))` -/
def P910893524859835333.Spec : Prop :=
  ∀ n, P910893524859835333.a n = A258547 (n + 1)

end A258547

/-! ## A258547.P14907035299045116497

`2*(A132732(n+3)-2)`
-/

namespace A258547.P14907035299045116497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A132732 (n + 3) - 2)

end

end A258547.P14907035299045116497

namespace A258547

/-- `2*(A132732(n+3)-2)` -/
def P14907035299045116497.Spec : Prop :=
  ∀ n, P14907035299045116497.a n = A258547 (n + 1)

end A258547

/-! ## A258547.P3598135140473081683

`2*A077866(2*n+3)`
-/

namespace A258547.P3598135140473081683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077866 (2 * n + 3)

end

end A258547.P3598135140473081683

namespace A258547

/-- `2*A077866(2*n+3)` -/
def P3598135140473081683.Spec : Prop :=
  ∀ n, P3598135140473081683.a n = A258547 (n + 1)

end A258547

/-! ## A258547.P7190551955595383212

`Δ[4*A130104(n+2)]`
-/

namespace A258547.P7190551955595383212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A130104 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258547.P7190551955595383212

namespace A258547

/-- `Δ[4*A130104(n+2)]` -/
def P7190551955595383212.Spec : Prop :=
  ∀ n, P7190551955595383212.a n = A258547 (n + 1)

end A258547

/-! ## A258547.P13130748423373395079

`Δ[4*A002662(n+3)]`
-/

namespace A258547.P13130748423373395079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002662 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258547.P13130748423373395079

namespace A258547

/-- `Δ[4*A002662(n+3)]` -/
def P13130748423373395079.Spec : Prop :=
  ∀ n, P13130748423373395079.a n = A258547 (n + 1)

theorem P13130748423373395079.correct : P13130748423373395079.Spec := by
  intro n
  simp only [A258547, Nat.add_sub_cancel, A258547.P13130748423373395079.f1, A258547.P13130748423373395079.a, A258547.P10554180977804731160.a, A002662, A002662.P6774456480096010218.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258547

/-!
# A258548: Number of (n+1) X (2+1) 0..1 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A258548, the canonical program `A258548.P17692855089973469760` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258548 has offset 1).

The definition of A258548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 417 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258548.P17692855089973469760

`ogf((44-64x+68x^2-16x^3-43x^4+18x^5+12x^6-12x^7-2x^8+6x^9-x^10)/(1-4x+5x^2-x^3-3x^4+4x^5-2x^6-2x^7+3x^8-x^9))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258548

/-- `ogf((44-64x+68x^2-16x^3-43x^4+18x^5+12x^6-12x^7-2x^8+6x^9-x^10)/(1-4x+5x^2-x^3-3x^4+4x^5-2x^6-2x^7+3x^8-x^9))` -/
def P17692855089973469760.Spec : Prop :=
  ∀ n, P17692855089973469760.a n = A258548 (n + 1)

theorem P17692855089973469760.correct : P17692855089973469760.Spec := by
  intro n
  simp only [A258548, Nat.add_sub_cancel]

end A258548

/-! ## A258548.P13290582099809740999

`A258554(∑[n+2])`
-/

namespace A258548.P13290582099809740999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258548.P13290582099809740999

namespace A258548

/-- `A258554(∑[n+2])` -/
def P13290582099809740999.Spec : Prop :=
  ∀ n, P13290582099809740999.a n = A258548 (n + 1)

end A258548

/-! ## A258548.P10238905497963277538

`record[A258554(A000096(A002260(n+1)))]`
-/

namespace A258548.P10238905497963277538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258548.P10238905497963277538

namespace A258548

/-- `record[A258554(A000096(A002260(n+1)))]` -/
def P10238905497963277538.Spec : Prop :=
  ∀ n, P10238905497963277538.a n = A258548 (n + 1)

end A258548

/-! ## A258548.P8856014454177804646

`record[A258554(A000096(A071797(n+1)))]`
-/

namespace A258548.P8856014454177804646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A000096 (A071797 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258548.P8856014454177804646

namespace A258548

/-- `record[A258554(A000096(A071797(n+1)))]` -/
def P8856014454177804646.Spec : Prop :=
  ∀ n, P8856014454177804646.a n = A258548 (n + 1)

end A258548

/-! ## A258548.P18339089718706171520

`record[A258554(A000096(A130747(n+1)))]`
-/

namespace A258548.P18339089718706171520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A000096 (A130747 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258548.P18339089718706171520

namespace A258548

/-- `record[A258554(A000096(A130747(n+1)))]` -/
def P18339089718706171520.Spec : Prop :=
  ∀ n, P18339089718706171520.a n = A258548 (n + 1)

end A258548

/-! ## A258548.P17233309205585785207

`record[A258554(A000096(A287618(n+1)))]`
-/

namespace A258548.P17233309205585785207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A000096 (A287618 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258548.P17233309205585785207

namespace A258548

/-- `record[A258554(A000096(A287618(n+1)))]` -/
def P17233309205585785207.Spec : Prop :=
  ∀ n, P17233309205585785207.a n = A258548 (n + 1)

end A258548

/-! ## A258548.P14062239791776130783

`record[A258554(A000096(A322315(n+1)))]`
-/

namespace A258548.P14062239791776130783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A000096 (A322315 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258548.P14062239791776130783

namespace A258548

/-- `record[A258554(A000096(A322315(n+1)))]` -/
def P14062239791776130783.Spec : Prop :=
  ∀ n, P14062239791776130783.a n = A258548 (n + 1)

end A258548

/-! ## A258548.P16520771637452751826

`record[A258554(A000096(A326199(n+1)))]`
-/

namespace A258548.P16520771637452751826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A000096 (A326199 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258548.P16520771637452751826

namespace A258548

/-- `record[A258554(A000096(A326199(n+1)))]` -/
def P16520771637452751826.Spec : Prop :=
  ∀ n, P16520771637452751826.a n = A258548 (n + 1)

end A258548

/-! ## A258548.P4466084388611056150

`record[A258554(A000096(A335286(n+1)))]`
-/

namespace A258548.P4466084388611056150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A000096 (A335286 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258548.P4466084388611056150

namespace A258548

/-- `record[A258554(A000096(A335286(n+1)))]` -/
def P4466084388611056150.Spec : Prop :=
  ∀ n, P4466084388611056150.a n = A258548 (n + 1)

end A258548

/-! ## A258548.P6167796772814619060

`record[A258554(A000096(A339811(n+1)))]`
-/

namespace A258548.P6167796772814619060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A000096 (A339811 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258548.P6167796772814619060

namespace A258548

/-- `record[A258554(A000096(A339811(n+1)))]` -/
def P6167796772814619060.Spec : Prop :=
  ∀ n, P6167796772814619060.a n = A258548 (n + 1)

end A258548

/-!
# A258549: Number of (n+1) X (3+1) 0..1 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A258549, there is no canonical definition to state claims against.
-/

/-! ## A258549.P14070892595852383826

`A258554(∑[n+3]+1)`
-/

namespace A258549.P14070892595852383826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258549.P14070892595852383826

/-!
# A258550: Number of (n+1) X (4+1) 0..1 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A258550, there is no canonical definition to state claims against.
-/

/-! ## A258550.P17529942009170067049

`A258554(∑[n+4]+3)`
-/

namespace A258550.P17529942009170067049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A258550.P17529942009170067049

/-!
# A258551: Number of (n+1) X (5+1) 0..1 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A258551, there is no canonical definition to state claims against.
-/

/-! ## A258551.P17696154506605390905

`A258554(∑[n+5]+6)`
-/

namespace A258551.P17696154506605390905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A258551.P17696154506605390905

/-!
# A258552: Number of (n+1) X (6+1) 0..1 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A258552, there is no canonical definition to state claims against.
-/

/-! ## A258552.P10751271997734999416

`A258554((n+4)²-∑[n+1]+1)`
-/

namespace A258552.P10751271997734999416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A258552.P10751271997734999416

/-!
# A258553: Number of (n+1) X (7+1) 0..1 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A258553, there is no canonical definition to state claims against.
-/

/-! ## A258553.P12030106831143627612

`A258554(A055999(n+4))`
-/

namespace A258553.P12030106831143627612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A055999 (n + 4)).toNat

end

end A258553.P12030106831143627612

/-!
# A258554: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A258554, there is no canonical definition to state claims against.
-/

/-! ## A258554.P805401400418695459

`A319715(∏[n+2-1/a(n-1)])` with `a(0)=58, a(1)=19, a(2)=1, a(3)=3`
-/

namespace A258554.P805401400418695459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [58, 19, 1, 3] fun n f1 =>
  (n + 2 : ℚ) - 1 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319715 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A258554.P805401400418695459

/-!
# A258555: Number of (2+1) X (n+1) 0..1 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A258555, the canonical program `A258555.P10224900448395191340` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258555 has offset 1).

The definition of A258555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258555.P10224900448395191340

`ogf((44-20x+6x^2+6x^3-52x^4+7x^5+13x^6-5x^7+8x^8+x^9)/(1-3x+3x^2-x^3-x^4+3x^5-3x^6+x^7))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258555

/-- `ogf((44-20x+6x^2+6x^3-52x^4+7x^5+13x^6-5x^7+8x^8+x^9)/(1-3x+3x^2-x^3-x^4+3x^5-3x^6+x^7))` -/
def P10224900448395191340.Spec : Prop :=
  ∀ n, P10224900448395191340.a n = A258555 (n + 1)

theorem P10224900448395191340.correct : P10224900448395191340.Spec := by
  intro n
  simp only [A258555, Nat.add_sub_cancel]

end A258555

/-! ## A258555.P12479673019220142750

`A258554(∑[n+1]+2)`
-/

namespace A258555.P12479673019220142750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A258555.P12479673019220142750

namespace A258555

/-- `A258554(∑[n+1]+2)` -/
def P12479673019220142750.Spec : Prop :=
  ∀ n, P12479673019220142750.a n = A258555 (n + 1)

end A258555

/-! ## A258555.P9585534562314260608

`record[A010054(n)*A258554(n+2)]`
-/

namespace A258555.P9585534562314260608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A258554 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258555.P9585534562314260608

namespace A258555

/-- `record[A010054(n)*A258554(n+2)]` -/
def P9585534562314260608.Spec : Prop :=
  ∀ n, P9585534562314260608.a n = A258555 (n + 1)

end A258555

/-!
# A258556: Number of (3+1) X (n+1) 0..1 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A258556, there is no canonical definition to state claims against.
-/

/-! ## A258556.P17103740073540661564

`A258554(∑[n+2]+4)`
-/

namespace A258556.P17103740073540661564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A258556.P17103740073540661564

/-!
# A258557: Number of (4+1) X (n+1) 0..1 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A258557, there is no canonical definition to state claims against.
-/

/-! ## A258557.P1166516140982893402

`A258554(∑[n+3]+7)`
-/

namespace A258557.P1166516140982893402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A258557.P1166516140982893402

/-! ## A258557.P7264511646113424762

`record[A010054(n+6)*A258554(n+10)]`
-/

namespace A258557.P7264511646113424762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 6) * A258554 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258557.P7264511646113424762

/-!
# A258558: Number of (5+1) X (n+1) 0..1 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A258558, there is no canonical definition to state claims against.
-/

/-! ## A258558.P15757905821382133162

`A258554(A167499(n+3))`
-/

namespace A258558.P15757905821382133162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A167499 (n + 3)).toNat

end

end A258558.P15757905821382133162

/-!
# A258559: Number of (6+1) X (n+1) 0..1 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A258559, there is no canonical definition to state claims against.
-/

/-! ## A258559.P10956429557162512353

`A258554(A167499(n+4)+1)`
-/

namespace A258559.P10956429557162512353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A167499 (n + 4) + 1).toNat

end

end A258559.P10956429557162512353

/-!
# A258560: Number of (7+1) X (n+1) 0..1 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A258560, there is no canonical definition to state claims against.
-/

/-! ## A258560.P2811342008448566171

`A258554(A167487(n+5))`
-/

namespace A258560.P2811342008448566171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A167487 (n + 5)).toNat

end

end A258560.P2811342008448566171

/-!
# A258561: Number of (n+2)X(1+2) 0..2 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum equal to the central column sum.

The programs for A258561, there is no canonical definition to state claims against.
-/

/-! ## A258561.P13058392696642471730

`A258564(∑[n]+1)`
-/

namespace A258561.P13058392696642471730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258564 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258561.P13058392696642471730

/-! ## A258561.P11639749437565437832

`record[A258564(A276954(n+1))]`
-/

namespace A258561.P11639749437565437832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258564 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258561.P11639749437565437832

/-! ## A258561.P4351558401562853154

`record[A258564(A286462(3*n+5))]`
-/

namespace A258561.P4351558401562853154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258564 (A286462 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258561.P4351558401562853154

/-! ## A258561.P13835178025065193514

`record[A010054(n)*A258564(n+1)]`
-/

namespace A258561.P13835178025065193514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A258564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258561.P13835178025065193514

/-!
# A258562: Number of (n+2)X(2+2) 0..2 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum equal to the central column sum.

The programs for A258562, there is no canonical definition to state claims against.
-/

/-! ## A258562.P12273503865415676333

`A258564(∑[n+1]+2)`
-/

namespace A258562.P12273503865415676333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258564 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A258562.P12273503865415676333

/-! ## A258562.P10999460962943180018

`record[A258564(C(∑{e}[n+1, #]+2, 2)+2)]`
-/

namespace A258562.P10999460962943180018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258564 (Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 2) 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258562.P10999460962943180018

/-! ## A258562.P15535485114302542698

`record[A010054(n)*A258564(n+2)]`
-/

namespace A258562.P15535485114302542698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A258564 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258562.P15535485114302542698

/-! ## A258562.P3915208217462249918

`record[A258564(A286462(3*n+5)+1)]`
-/

namespace A258562.P3915208217462249918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258564 (A286462 (3 * n + 5) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258562.P3915208217462249918

/-!
# A258563: Number of (n+2)X(3+2) 0..2 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum equal to the central column sum.

The programs for A258563, there is no canonical definition to state claims against.
-/

/-! ## A258563.P565473221982339684

`A258564(A167614(1+n))`
-/

namespace A258563.P565473221982339684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258564 (A167614 (1 + n)).toNat

end

end A258563.P565473221982339684

/-! ## A258563.P2645813554623388308

`A258564(∑[n+3]+1)`
-/

namespace A258563.P2645813554623388308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258564 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258563.P2645813554623388308

/-!
# A258565: Arithmetic derivative of powerful numbers, cf. A001694.

The programs for A258565, there is no canonical definition to state claims against.
-/

/-! ## A258565.P1911834365534659056

`A003415(A001694(n+1))`
-/

namespace A258565.P1911834365534659056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A001694 (n + 1)).toNat

end

end A258565.P1911834365534659056

/-! ## A258565.P15807096248741924402

`∑{d}[A001694(1+n), A300251(#)]`
-/

namespace A258565.P15807096248741924402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A258565.P15807096248741924402

/-! ## A258565.P11733427081786103325

`∑{d}[1-A224866(1+n), A300251(#)]`
-/

namespace A258565.P11733427081786103325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A224866 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A258565.P11733427081786103325

/-! ## A258565.P16817220053348392182

`∑{d}[A084371(n+1)*A306458(n+1), A300251(#)]`
-/

namespace A258565.P16817220053348392182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1) * A306458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A258565.P16817220053348392182

/-! ## A258565.P6785001310014019010

`∑{d}[A064549(A306458(n+1)), A300251(#)]`
-/

namespace A258565.P6785001310014019010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A306458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A258565.P6785001310014019010

/-! ## A258565.P16404209481709361458

`A306458(n+1)*A342001(A001694(n+1))`
-/

namespace A258565.P16404209481709361458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306458 (n + 1) * A342001 (A001694 (n + 1)).toNat

end

end A258565.P16404209481709361458

/-!
# A258566: Triangle in which n-th row contains all possible products of n-1 of the first n primes in descending order.

The programs for A258566, there is no canonical definition to state claims against.
-/

/-! ## A258566.P17779393862028799181

`A121281(comp[∑[n]])`
-/

namespace A258566.P17779393862028799181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A258566.P17779393862028799181

/-! ## A258566.P1572961840026111478

`A077011(∑[char[∑[n]]]²-n)`
-/

namespace A258566.P1572961840026111478
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A258566.P1572961840026111478

/-! ## A258566.P14913047916242616428

`A332462(A175840(n))`
-/

namespace A258566.P14913047916242616428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (A175840 n).toNat

end

end A258566.P14913047916242616428

/-! ## A258566.P17363031129914001152

`A289815(A044990(n+1))`
-/

namespace A258566.P17363031129914001152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (A044990 (n + 1)).toNat

end

end A258566.P17363031129914001152

/-! ## A258566.P14894372831430006914

`A019565(A130328(n)-1)`
-/

namespace A258566.P14894372831430006914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A130328 n - 1).toNat

end

end A258566.P14894372831430006914

/-!
# A258567: a(1) = 1; thereafter a(n) = smallest prime factor of the powerful number A001694(n).

The programs for A258567, there is no canonical definition to state claims against.
-/

/-! ## A258567.P2503352978689569385

`A020639(A001694(n+1))`
-/

namespace A258567.P2503352978689569385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001694 (n + 1)).toNat

end

end A258567.P2503352978689569385

/-! ## A258567.P9343205919248110514

`A028233(∏{p}[A001694(n+1), #])`
-/

namespace A258567.P9343205919248110514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A258567.P9343205919248110514

/-! ## A258567.P4251679855757538075

`A034684(∏{p}[A001694(n+1), #])`
-/

namespace A258567.P4251679855757538075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A258567.P4251679855757538075

/-! ## A258567.P11446234047208411981

`A304181(∏{p}[A001694(n+1), #])`
-/

namespace A258567.P11446234047208411981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A258567.P11446234047208411981

/-! ## A258567.P1156495839935233314

`A014673(A001694(n+1))`
-/

namespace A258567.P1156495839935233314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A001694 (n + 1)).toNat

end

end A258567.P1156495839935233314

/-! ## A258567.P9880409661495837040

`A249739(record[A057521(n+1)])`
-/

namespace A258567.P9880409661495837040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A258567.P9880409661495837040

/-!
# A258568: Smallest prime factors of 3-full numbers.

The programs for A258568, there is no canonical definition to state claims against.
-/

/-! ## A258568.P4122312371572577528

`A020639(A036966(n+1))`
-/

namespace A258568.P4122312371572577528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A036966 (n + 1)).toNat

end

end A258568.P4122312371572577528

/-! ## A258568.P3334054045083129085

`A028233(A362972(n+1))`
-/

namespace A258568.P3334054045083129085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A362972 (n + 1)).toNat

end

end A258568.P3334054045083129085

/-! ## A258568.P4910057529166816559

`A014673(2*A362972(n+1))`
-/

namespace A258568.P4910057529166816559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A362972 (n + 1)).toNat

end

end A258568.P4910057529166816559

/-! ## A258568.P779004425468660079

`A258567(A371185(n+1))`
-/

namespace A258568.P779004425468660079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258567 (A371185 (n + 1)).toNat

end

end A258568.P779004425468660079

/-! ## A258568.P16953762279785390851

`A223490(∏{p}[A036966(n+1), #])`
-/

namespace A258568.P16953762279785390851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A258568.P16953762279785390851

/-! ## A258568.P1436291715479228098

`A014673(A036966(n+1))`
-/

namespace A258568.P1436291715479228098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A036966 (n + 1)).toNat

end

end A258568.P1436291715479228098

/-!
# A258569: Smallest prime factors of 4-full numbers, a(1)=1.

The programs for A258569, there is no canonical definition to state claims against.
-/

/-! ## A258569.P13700811283371348993

`A020639(A036967(n+1))`
-/

namespace A258569.P13700811283371348993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A036967 (n + 1)).toNat

end

end A258569.P13700811283371348993

/-! ## A258569.P15163518803068686887

`A014673(A036967(n+1))`
-/

namespace A258569.P15163518803068686887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A036967 (n + 1)).toNat

end

end A258569.P15163518803068686887

/-!
# A258570: Smallest prime factors of 5-full numbers, a(1)=1.

The programs for A258570, there is no canonical definition to state claims against.
-/

/-! ## A258570.P1509270127750111646

`A020639(A069492(n+1))`
-/

namespace A258570.P1509270127750111646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A069492 (n + 1)).toNat

end

end A258570.P1509270127750111646

/-! ## A258570.P13666122095196977831

`A028233(∏{p}[A069492(n+1), #])`
-/

namespace A258570.P13666122095196977831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A258570.P13666122095196977831

/-! ## A258570.P12566377217774614060

`A034684(∏{p}[A069492(n+1), #])`
-/

namespace A258570.P12566377217774614060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A258570.P12566377217774614060

/-! ## A258570.P1160664055539959233

`A126773(∏{p}[A069492(n+1), #])`
-/

namespace A258570.P1160664055539959233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A258570.P1160664055539959233

/-! ## A258570.P13782717098627980095

`A134194(∏{p}[A069492(n+1), #])`
-/

namespace A258570.P13782717098627980095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134194 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A258570.P13782717098627980095

/-! ## A258570.P13045974934424515034

`A277698(∏{p}[A069492(n+1), #])`
-/

namespace A258570.P13045974934424515034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A258570.P13045974934424515034

/-!
# A258571: Smallest prime factors of 6-full numbers, a(1)=1.

The programs for A258571, there is no canonical definition to state claims against.
-/

/-! ## A258571.P12464083781664622527

`A020639(A069493(n+1))`
-/

namespace A258571.P12464083781664622527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A069493 (n + 1)).toNat

end

end A258571.P12464083781664622527

/-! ## A258571.P11228437688165157388

`A028233(∏{p}[A069493(n+1), #])`
-/

namespace A258571.P11228437688165157388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A258571.P11228437688165157388

/-! ## A258571.P4380186503816113218

`A034684(∏{p}[A069493(n+1), #])`
-/

namespace A258571.P4380186503816113218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A258571.P4380186503816113218

/-! ## A258571.P14000735922408267370

`A328195(A395511(n+2))`
-/

namespace A258571.P14000735922408267370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328195 (A395511 (n + 2)).toNat

end

end A258571.P14000735922408267370

/-! ## A258571.P14247451879915430072

`A074828(A076470(n+1))`
-/

namespace A258571.P14247451879915430072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A076470 (n + 1)).toNat

end

end A258571.P14247451879915430072

/-!
# A258574: Numbers n such that Fibonacci(n)+Lucas(n) is squarefree.

The programs for A258574, the canonical program `A258574.P2847765918182222995` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258574 has offset 1).

The definition of A258574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258574.P2847765918182222995

`record[A260316(A037918(1+n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A258574

/-- `record[A260316(A037918(1+n))]` -/
def P2847765918182222995.Spec : Prop :=
  ∀ n, P2847765918182222995.a n = A258574 (n + 1)

theorem P2847765918182222995.correct : P2847765918182222995.Spec := by
  intro n
  simp only [A258574, Nat.add_sub_cancel]

end A258574

/-! ## A258574.P15461643924388132920

`eq[abs(A174340(n+1)), A038500(n+1)]`
-/

namespace A258574.P15461643924388132920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174340 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258574.P15461643924388132920

namespace A258574

/-- `eq[abs(A174340(n+1)), A038500(n+1)]` -/
def P15461643924388132920.Spec : Prop :=
  ∀ n, (P15461643924388132920.a n : ℤ) = A258574 (n + 1)

end A258574

/-! ## A258574.P2454932774982332877

`eq[abs(A174340(n+1)), A060865(n+1)]`
-/

namespace A258574.P2454932774982332877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174340 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258574.P2454932774982332877

namespace A258574

/-- `eq[abs(A174340(n+1)), A060865(n+1)]` -/
def P2454932774982332877.Spec : Prop :=
  ∀ n, (P2454932774982332877.a n : ℤ) = A258574 (n + 1)

end A258574

/-! ## A258574.P9703903290900682089

`eq[A069110(n+1), A174883(n+1)]`
-/

namespace A258574.P9703903290900682089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174883 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258574.P9703903290900682089

namespace A258574

/-- `eq[A069110(n+1), A174883(n+1)]` -/
def P9703903290900682089.Spec : Prop :=
  ∀ n, (P9703903290900682089.a n : ℤ) = A258574 (n + 1)

end A258574

/-! ## A258574.P10933689858200209913

`eq[A174883(n+1), A238684(n+1)]`
-/

namespace A258574.P10933689858200209913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258574.P10933689858200209913

namespace A258574

/-- `eq[A174883(n+1), A238684(n+1)]` -/
def P10933689858200209913.Spec : Prop :=
  ∀ n, (P10933689858200209913.a n : ℤ) = A258574 (n + 1)

end A258574

/-! ## A258574.P3961211901332682445

`eq[gcd(5, n+1), gcd(n+1, A067331(n))]`
-/

namespace A258574.P3961211901332682445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A067331 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258574.P3961211901332682445

namespace A258574

/-- `eq[gcd(5, n+1), gcd(n+1, A067331(n))]` -/
def P3961211901332682445.Spec : Prop :=
  ∀ n, (P3961211901332682445.a n : ℤ) = A258574 (n + 1)

end A258574

/-! ## A258574.P12906433715210118750

`eq[A030109(A063375(n+1)), A175676(n+1)]`
-/

namespace A258574.P12906433715210118750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A063375 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258574.P12906433715210118750

namespace A258574

/-- `eq[A030109(A063375(n+1)), A175676(n+1)]` -/
def P12906433715210118750.Spec : Prop :=
  ∀ n, (P12906433715210118750.a n : ℤ) = A258574 (n + 1)

end A258574

/-! ## A258574.P15166051315843024505

`eq[A193291(A193292(n+1)), A193294(n+1)]`
-/

namespace A258574.P15166051315843024505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193291 (A193292 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258574.P15166051315843024505

namespace A258574

/-- `eq[A193291(A193292(n+1)), A193294(n+1)]` -/
def P15166051315843024505.Spec : Prop :=
  ∀ n, (P15166051315843024505.a n : ℤ) = A258574 (n + 1)

end A258574

/-! ## A258574.P11004841077752377413

`eq[A193291(n+1)², A193291(A193292(n+1))]`
-/

namespace A258574.P11004841077752377413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193291 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193291 (A193292 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258574.P11004841077752377413

namespace A258574

/-- `eq[A193291(n+1)², A193291(A193292(n+1))]` -/
def P11004841077752377413.Spec : Prop :=
  ∀ n, (P11004841077752377413.a n : ℤ) = A258574 (n + 1)

end A258574

/-! ## A258574.P5470965326892399713

`eq[A193291(n+1), A193291(A193292(n+1)+3)]`
-/

namespace A258574.P5470965326892399713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193291 (A193292 (n + 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258574.P5470965326892399713

namespace A258574

/-- `eq[A193291(n+1), A193291(A193292(n+1)+3)]` -/
def P5470965326892399713.Spec : Prop :=
  ∀ n, (P5470965326892399713.a n : ℤ) = A258574 (n + 1)

end A258574

/-!
# A258575: Numbers n such that Lucas(n)-Fibonacci(n) is squarefree.

The programs for A258575, there is no canonical definition to state claims against.
-/

/-! ## A258575.P8608367875204163558

`eq[A077655(A067355(3*n+4)), A193291(2*n+1)]`
-/

namespace A258575.P8608367875204163558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077655 (A067355 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193291 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258575.P8608367875204163558

/-! ## A258575.P16832786350266297319

`A007494(record[A106618(n)])`
-/

namespace A258575.P16832786350266297319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A258575.P16832786350266297319

/-! ## A258575.P1891833900007575588

`eq[A191418(n+1), A369667(n)]`
-/

namespace A258575.P1891833900007575588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258575.P1891833900007575588

/-! ## A258575.P9652113991195773810

`eq[A192058(n+1), A369667(n)]`
-/

namespace A258575.P9652113991195773810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258575.P9652113991195773810

/-!
# A258576: a(n) = A085909(n) - prime(n).

The programs for A258576, there is no canonical definition to state claims against.
-/

/-! ## A258576.P2948682161538875398

`A085909(n+2)-A000040(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258576.P2948682161538875398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085909 (n + 2) - A000040 (n + 2)

end

end A258576.P2948682161538875398

/-! ## A258576.P18252341830255651614

`A085909(n+2)-A065091(n+1)`
-/

namespace A258576.P18252341830255651614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085909 (n + 2) - A065091 (n + 1)

end

end A258576.P18252341830255651614

/-! ## A258576.P670787288461868154

`A085909(2+n)-sqrt(A001248(n+2))`
-/

namespace A258576.P670787288461868154
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A085909 (2 + n) : ℝ) - Real.sqrt (A001248 (n + 2) : ℝ)

end

end A258576.P670787288461868154

/-! ## A258576.P17670579732623561704

`∑[Δ[A085909(n+1)]-A001223(n+1)]-2`
-/

namespace A258576.P17670579732623561704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085909 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A258576.P17670579732623561704

/-! ## A258576.P14061589344342452784

`A085909(n+2)-(A008347(n+1)+A008347(n+2))`
-/

namespace A258576.P14061589344342452784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085909 (n + 2) - (A008347 (n + 1) + A008347 (n + 2))

end

end A258576.P14061589344342452784

/-!
# A258578: Primes p such that difference between p and next prime after p is multiple of 6.

The programs for A258578, the canonical program `A258578.P9086836739890069373` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258578 has offset 1).

The definition of A258578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4022 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258578.P9086836739890069373

`A071621(A269399(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A258578

/-- `A071621(A269399(n+1))` -/
def P9086836739890069373.Spec : Prop :=
  ∀ n, P9086836739890069373.a n = A258578 (n + 1)

theorem P9086836739890069373.correct : P9086836739890069373.Spec := by
  intro n
  simp only [A258578, Nat.add_sub_cancel]

end A258578

/-! ## A258578.P10681130084508821992

`A000040(A270190(1+n))`
-/

namespace A258578.P10681130084508821992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A270190 (1 + n)).toNat

end

end A258578.P10681130084508821992

namespace A258578

/-- `A000040(A270190(1+n))` -/
def P10681130084508821992.Spec : Prop :=
  ∀ n, P10681130084508821992.a n = A258578 (n + 1)

end A258578

/-! ## A258578.P11890666844195525882

`A008578(1+A270190(n+1))`
-/

namespace A258578.P11890666844195525882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 + A270190 (n + 1)).toNat

end

end A258578.P11890666844195525882

namespace A258578

/-- `A008578(1+A270190(n+1))` -/
def P11890666844195525882.Spec : Prop :=
  ∀ n, P11890666844195525882.a n = A258578 (n + 1)

end A258578

/-! ## A258578.P17261973907072221061

`A065091(A270190(n+1)-1)`
-/

namespace A258578.P17261973907072221061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A270190 (n + 1) - 1).toNat

end

end A258578.P17261973907072221061

namespace A258578

/-- `A065091(A270190(n+1)-1)` -/
def P17261973907072221061.Spec : Prop :=
  ∀ n, P17261973907072221061.a n = A258578 (n + 1)

end A258578

/-! ## A258578.P8754239311381416550

`A040976(A269399(n+1)+6)+2`
-/

namespace A258578.P8754239311381416550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A269399 (n + 1) + 6).toNat + 2

end

end A258578.P8754239311381416550

namespace A258578

/-- `A040976(A269399(n+1)+6)+2` -/
def P8754239311381416550.Spec : Prop :=
  ∀ n, P8754239311381416550.a n = A258578 (n + 1)

end A258578

/-! ## A258578.P7963790471761644686

`A046022(A270190(n+1)+2)`
-/

namespace A258578.P7963790471761644686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A270190 (n + 1) + 2).toNat

end

end A258578.P7963790471761644686

namespace A258578

/-- `A046022(A270190(n+1)+2)` -/
def P7963790471761644686.Spec : Prop :=
  ∀ n, P7963790471761644686.a n = A258578 (n + 1)

end A258578

/-! ## A258578.P15433874916328920451

`∪[A185934(n+1), A185935(n+1)]`
-/

namespace A258578.P15433874916328920451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A258578.P15433874916328920451

namespace A258578

/-- `∪[A185934(n+1), A185935(n+1)]` -/
def P15433874916328920451.Spec : Prop :=
  ∀ n, (P15433874916328920451.a n : ℤ) = A258578 (n + 1)

end A258578

/-!
# A258582: a(n) = n*(2*n + 1)*(4*n + 1)/3.

The programs for A258582, the canonical program `A258582.P5851407346329275631` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258582 has offset 0).

The definition of A258582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n+1)*(4*n+1)/3` (program `A258582.P4708795151336489596`, by `A258582.P4708795151336489596.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258582.P14496385864287031852

`ogf((5x+10x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A258582.P14496385864287031852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 10, 1] [1, -4, 6, -4, 1] n

end

end A258582.P14496385864287031852

namespace A258582

/-- `ogf((5x+10x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P14496385864287031852.Spec : Prop :=
  ∀ n, P14496385864287031852.a n = A258582 n

end A258582

/-! ## A258582.P4708795151336489596

`n*(2*n+1)*(4*n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258582.P4708795151336489596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (2 * n + 1) * (4 * n + 1) : ℚ) / 3

end

end A258582.P4708795151336489596

namespace A258582

/-- `n*(2*n+1)*(4*n+1)/3` -/
def P4708795151336489596.Spec : Prop :=
  ∀ n, P4708795151336489596.a n = (A258582 n : ℚ)

theorem P4708795151336489596.correct : P4708795151336489596.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A258582, Nat.add_sub_cancel, A258582.P4708795151336489596.a, A258582.P5851407346329275631.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A258582, Nat.add_sub_cancel, A258582.P4708795151336489596.a, A258582.P5851407346329275631.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A258582

/-! ## A258582.P5851407346329275631

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=30, a(3)=91`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258582

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5851407346329275631.Spec : Prop :=
  ∀ n, P5851407346329275631.a n = A258582 n

theorem P5851407346329275631.correct : P5851407346329275631.Spec := by
  intro n
  simp only [A258582]

end A258582

/-! ## A258582.P17182002839868258026

`A000330(2*n)`
-/

namespace A258582.P17182002839868258026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (2 * n)

end

end A258582.P17182002839868258026

namespace A258582

/-- `A000330(2*n)` -/
def P17182002839868258026.Spec : Prop :=
  ∀ n, P17182002839868258026.a n = A258582 n

end A258582

/-! ## A258582.P1210330617635920102

`∑{#}[2*n-1, (#+1)²]`
-/

namespace A258582.P1210330617635920102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 1) ^ 2

end

end A258582.P1210330617635920102

namespace A258582

/-- `∑{#}[2*n-1, (#+1)²]` -/
def P1210330617635920102.Spec : Prop :=
  ∀ n, (P1210330617635920102.a n : ℤ) = A258582 n

end A258582

/-! ## A258582.P980452040551745287

`Δ[C(Δ[n²], 4)]`
-/

namespace A258582.P980452040551745287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A258582.P980452040551745287

namespace A258582

/-- `Δ[C(Δ[n²], 4)]` -/
def P980452040551745287.Spec : Prop :=
  ∀ n, P980452040551745287.a n = A258582 n

end A258582

/-! ## A258582.P15542894408883617647

`C(4*n+2, 3)/4`
-/

namespace A258582.P15542894408883617647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 2) 3 : ℚ) / 4

end

end A258582.P15542894408883617647

namespace A258582

/-- `C(4*n+2, 3)/4` -/
def P15542894408883617647.Spec : Prop :=
  ∀ n, P15542894408883617647.a n = (A258582 n : ℚ)

end A258582

/-! ## A258582.P6446205280682761914

`abs(Δ[C(2*n+1, 4)])`
-/

namespace A258582.P6446205280682761914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A258582.P6446205280682761914

namespace A258582

/-- `abs(Δ[C(2*n+1, 4)])` -/
def P6446205280682761914.Spec : Prop :=
  ∀ n, P6446205280682761914.a n = A258582 n

end A258582

/-! ## A258582.P4331594045964461794

`∑[C(4*n, 2)]-n²`
-/

namespace A258582.P4331594045964461794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A258582.P4331594045964461794

namespace A258582

/-- `∑[C(4*n, 2)]-n²` -/
def P4331594045964461794.Spec : Prop :=
  ∀ n, P4331594045964461794.a n = A258582 n

end A258582

/-! ## A258582.P11699971762382003143

`∑[n*record[lcm(4, n)]]+n`
-/

namespace A258582.P11699971762382003143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A258582.P11699971762382003143

namespace A258582

/-- `∑[n*record[lcm(4, n)]]+n` -/
def P11699971762382003143.Spec : Prop :=
  ∀ n, (P11699971762382003143.a n : ℤ) = A258582 n

end A258582

/-! ## A258582.P13093246935542511671

`∑[4*C(2*n, 2)]+n`
-/

namespace A258582.P13093246935542511671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (2 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A258582.P13093246935542511671

namespace A258582

/-- `∑[4*C(2*n, 2)]+n` -/
def P13093246935542511671.Spec : Prop :=
  ∀ n, (P13093246935542511671.a n : ℤ) = A258582 n

end A258582

/-! ## A258582.P6560568708268432595

`-Δ[-C(n+1+n, 4)]`
-/

namespace A258582.P6560568708268432595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (n + 1 + n) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A258582.P6560568708268432595

namespace A258582

/-- `-Δ[-C(n+1+n, 4)]` -/
def P6560568708268432595.Spec : Prop :=
  ∀ n, P6560568708268432595.a n = A258582 n

end A258582

/-! ## A258582.P8385987661975023460

`Δ[C(2*n+1, 4)+n]-1`
-/

namespace A258582.P8385987661975023460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 4 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A258582.P8385987661975023460

namespace A258582

/-- `Δ[C(2*n+1, 4)+n]-1` -/
def P8385987661975023460.Spec : Prop :=
  ∀ n, P8385987661975023460.a n = A258582 n

end A258582

/-! ## A258582.P8149099229217233009

`lcm(2*n+1, (2*n)²+n)/3`
-/

namespace A258582.P8149099229217233009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) ((2 * n) ^ 2 + n) : ℚ) / 3

end

end A258582.P8149099229217233009

namespace A258582

/-- `lcm(2*n+1, (2*n)²+n)/3` -/
def P8149099229217233009.Spec : Prop :=
  ∀ n, P8149099229217233009.a n = (A258582 n : ℚ)

end A258582

/-! ## A258582.P9238974046028789527

`∑[A080856(n)]-1`
-/

namespace A258582.P9238974046028789527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A258582.P9238974046028789527

namespace A258582

/-- `∑[A080856(n)]-1` -/
def P9238974046028789527.Spec : Prop :=
  ∀ n, P9238974046028789527.a n = A258582 n

end A258582

/-! ## A258582.P13570379160000134771

`∑[A085250(n)]+n`
-/

namespace A258582.P13570379160000134771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A258582.P13570379160000134771

namespace A258582

/-- `∑[A085250(n)]+n` -/
def P13570379160000134771.Spec : Prop :=
  ∀ n, P13570379160000134771.a n = A258582 n

end A258582

/-! ## A258582.P7401086454940404522

`A153058(2*n)-4`
-/

namespace A258582.P7401086454940404522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153058 (2 * n) - 4

end

end A258582.P7401086454940404522

namespace A258582

/-- `A153058(2*n)-4` -/
def P7401086454940404522.Spec : Prop :=
  ∀ n, P7401086454940404522.a n = A258582 n

end A258582

/-! ## A258582.P3020094866675755584

`A168574(n)-(n+1)`
-/

namespace A258582.P3020094866675755584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168574 n - (n + 1 : ℤ)

end

end A258582.P3020094866675755584

namespace A258582

/-- `A168574(n)-(n+1)` -/
def P3020094866675755584.Spec : Prop :=
  ∀ n, P3020094866675755584.a n = A258582 n

end A258582

/-! ## A258582.P10251874036177534586

`2*A268684(n)+n`
-/

namespace A258582.P10251874036177534586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268684 n + (n : ℤ)

end

end A258582.P10251874036177534586

namespace A258582

/-- `2*A268684(n)+n` -/
def P10251874036177534586.Spec : Prop :=
  ∀ n, P10251874036177534586.a n = A258582 n

end A258582

/-! ## A258582.P10469844535728732122

`4*A002412(n)+n`
-/

namespace A258582.P10469844535728732122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002412 n + (n : ℤ)

end

end A258582.P10469844535728732122

namespace A258582

/-- `4*A002412(n)+n` -/
def P10469844535728732122.Spec : Prop :=
  ∀ n, P10469844535728732122.a n = A258582 n

end A258582

/-!
# A258583: Number of solid standard Young tableaux of shape [[{n}^n],[n]].

The programs for A258583, there is no canonical definition to state claims against.
-/

/-! ## A258583.P4994114740119494219

`A214722(2*n²)`
-/

namespace A258583.P4994114740119494219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214722 (2 * n ^ 2)

end

end A258583.P4994114740119494219

/-!
# A258585: Number of equivalence classes of 3-binomial complexity for binary words of length n.

The programs for A258585, there is no canonical definition to state claims against.
-/

/-! ## A258585.P7398294988427236807

`2^((n+1)%Δ[10^n])-A089867(A332870(n))`
-/

namespace A258585.P7398294988427236807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - (A089867 (A332870 n).toNat : ℚ)

end

end A258585.P7398294988427236807

/-! ## A258585.P9650318727543220028

`A001316(A099969(n))-A332870(n)`
-/

namespace A258585.P9650318727543220028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A099969 n).toNat - A332870 n

end

end A258585.P9650318727543220028

/-! ## A258585.P15758591254936487938

`A001316(A099970(n))-A332870(n)`
-/

namespace A258585.P15758591254936487938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A099970 n).toNat - A332870 n

end

end A258585.P15758591254936487938

/-! ## A258585.P12252811222899920928

`A001316(A099971(n))-A332870(n)`
-/

namespace A258585.P12252811222899920928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A099971 n).toNat - A332870 n

end

end A258585.P12252811222899920928

/-! ## A258585.P7159001031736532374

`A000079(A032563(n+1))-A332870(n)`
-/

namespace A258585.P7159001031736532374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A032563 (n + 1)).toNat - A332870 n

end

end A258585.P7159001031736532374

/-!
# A258586: Number of solid standard Young tableaux of shape [[{n}^(n+1)],[n]^n].

The programs for A258586, there is no canonical definition to state claims against.
-/

/-! ## A258586.P6253806774946444919

`A214631(∑[4*n])`
-/

namespace A258586.P6253806774946444919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214631 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258586.P6253806774946444919

/-!
# A258587: Expansion of f(-x, -x) * f(x^2, x^10) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A258587, the canonical program `A258587.P16036034608619389317` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258587 has offset 0).

The definition of A258587 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A263548, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258587.P16036034608619389317

`(-1)^n*A263548(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A258587

/-- `(-1)^n*A263548(n)` -/
def P16036034608619389317.Spec : Prop :=
  ∀ n, P16036034608619389317.a n = A258587 n

theorem P16036034608619389317.correct : P16036034608619389317.Spec := by
  intro n
  simp only [A258587]

end A258587

/-! ## A258587.P3374575153317500863

`A128581(3*n+2)`
-/

namespace A258587.P3374575153317500863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (3 * n + 2)

end

end A258587.P3374575153317500863

namespace A258587

/-- `A128581(3*n+2)` -/
def P3374575153317500863.Spec : Prop :=
  ∀ n, P3374575153317500863.a n = A258587 n

end A258587

/-! ## A258587.P17002243690986655965

`A190611(3*n+2)`
-/

namespace A258587.P17002243690986655965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 (3 * n + 2)

end

end A258587.P17002243690986655965

namespace A258587

/-- `A190611(3*n+2)` -/
def P17002243690986655965.Spec : Prop :=
  ∀ n, P17002243690986655965.a n = A258587 n

end A258587

/-! ## A258587.P7839889582699585081

`A263548(n)/A033999(n)`
-/

namespace A258587.P7839889582699585081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263548 n : ℚ) / (A033999 n : ℚ)

end

end A258587.P7839889582699585081

namespace A258587

/-- `A263548(n)/A033999(n)` -/
def P7839889582699585081.Spec : Prop :=
  ∀ n, P7839889582699585081.a n = (A258587 n : ℚ)

end A258587

/-! ## A258587.P18356657721366649978

`A263548(n)/A157142(n)%2`
-/

namespace A258587.P18356657721366649978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263548 n : ℚ) / (Int.tmod (A157142 n) 2 : ℚ)

end

end A258587.P18356657721366649978

namespace A258587

/-- `A263548(n)/A157142(n)%2` -/
def P18356657721366649978.Spec : Prop :=
  ∀ n, P18356657721366649978.a n = (A258587 n : ℚ)

end A258587

/-! ## A258587.P9158363047498268890

`A033999(n)*A263571(2*n+1)`
-/

namespace A258587.P9158363047498268890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A263571 (2 * n + 1)

end

end A258587.P9158363047498268890

namespace A258587

/-- `A033999(n)*A263571(2*n+1)` -/
def P9158363047498268890.Spec : Prop :=
  ∀ n, P9158363047498268890.a n = A258587 n

end A258587

/-! ## A258587.P13623727305393529559

`A033999(n+1)*A279947(2*n+1)`
-/

namespace A258587.P13623727305393529559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A279947 (2 * n + 1)

end

end A258587.P13623727305393529559

namespace A258587

/-- `A033999(n+1)*A279947(2*n+1)` -/
def P13623727305393529559.Spec : Prop :=
  ∀ n, P13623727305393529559.a n = A258587 n

end A258587

/-! ## A258587.P12716634111866714517

`A115660(A165367(n))`
-/

namespace A258587.P12716634111866714517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A165367 n).toNat

end

end A258587.P12716634111866714517

namespace A258587

/-- `A115660(A165367(n))` -/
def P12716634111866714517.Spec : Prop :=
  ∀ n, P12716634111866714517.a n = A258587 n

end A258587

/-! ## A258587.P7096189408138371589

`A009001(2*n)*A192013(3*n+2)`
-/

namespace A258587.P7096189408138371589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A192013 (3 * n + 2)

end

end A258587.P7096189408138371589

namespace A258587

/-- `A009001(2*n)*A192013(3*n+2)` -/
def P7096189408138371589.Spec : Prop :=
  ∀ n, P7096189408138371589.a n = A258587 n

end A258587

/-! ## A258587.P7048486761726248410

`A000377(A067745(2*(n+1)))*A034947(2*n+1)`
-/

namespace A258587.P7048486761726248410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (A067745 (2 * (n + 1))).toNat * A034947 (2 * n + 1)

end

end A258587.P7048486761726248410

namespace A258587

/-- `A000377(A067745(2*(n+1)))*A034947(2*n+1)` -/
def P7048486761726248410.Spec : Prop :=
  ∀ n, P7048486761726248410.a n = A258587 n

end A258587

/-! ## A258587.P14358927617297893799

`A263649(Δ[A007494(n)²])`
-/

namespace A258587.P14358927617297893799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263649 (f1 (n + 1) - f1 n).toNat

end

end A258587.P14358927617297893799

namespace A258587

/-- `A263649(Δ[A007494(n)²])` -/
def P14358927617297893799.Spec : Prop :=
  ∀ n, P14358927617297893799.a n = A258587 n

end A258587

/-! ## A258587.P15790750241307812227

`(-1)^n*A115660(6*n+4)`
-/

namespace A258587.P15790750241307812227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A115660 (6 * n + 4)

end

end A258587.P15790750241307812227

namespace A258587

/-- `(-1)^n*A115660(6*n+4)` -/
def P15790750241307812227.Spec : Prop :=
  ∀ n, P15790750241307812227.a n = A258587 n

end A258587

/-! ## A258587.P7753059236189733620

`A261122(A016957(n))`
-/

namespace A258587.P7753059236189733620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 (A016957 n).toNat

end

end A258587.P7753059236189733620

namespace A258587

/-- `A261122(A016957(n))` -/
def P7753059236189733620.Spec : Prop :=
  ∀ n, P7753059236189733620.a n = A258587 n

end A258587

/-!
# A258588: Minimal most likely sum for a roll of n 10-sided dice.

The programs for A258588, the canonical program `A258588.P16126664002788145099` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258588 has offset 1).

The definition of A258588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258588.P4217384826331217876

`ogf((1+10x+4x^2-4x^3)/(1-x-x^2+x^3))`
-/

namespace A258588.P4217384826331217876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 4, -4] [1, -1, -1, 1] n

end

end A258588.P4217384826331217876

namespace A258588

/-- `ogf((1+10x+4x^2-4x^3)/(1-x-x^2+x^3))` -/
def P4217384826331217876.Spec : Prop :=
  ∀ n, P4217384826331217876.a n = A258588 (n + 1)

end A258588

/-! ## A258588.P16126664002788145099

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=11, a(2)=16, a(3)=22`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258588

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P16126664002788145099.Spec : Prop :=
  ∀ n, P16126664002788145099.a n = A258588 (n + 1)

theorem P16126664002788145099.correct : P16126664002788145099.Spec := by
  intro n
  simp only [A258588, Nat.add_sub_cancel]

end A258588

/-! ## A258588.P13762792395276074369

`a(n-2)+11` with `a(0)=1, a(1)=11, a(2)=16`
-/

namespace A258588.P13762792395276074369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11, 16] fun n a =>
  a (n - 2) + 11

end

end A258588.P13762792395276074369

namespace A258588

/-- `a(n-2)+11` -/
def P13762792395276074369.Spec : Prop :=
  ∀ n, (P13762792395276074369.a n : ℤ) = A258588 (n + 1)

end A258588

/-! ## A258588.P12577922870058387825

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=10, a(2)=5, a(3)=6`
-/

namespace A258588.P12577922870058387825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10, 5, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258588.P12577922870058387825

namespace A258588

/-- `∑[abs(a(n-2))]` -/
def P12577922870058387825.Spec : Prop :=
  ∀ n, (P12577922870058387825.a n : ℤ) = A258588 (n + 1)

end A258588

/-! ## A258588.P8037552912322465220

`∑[11-a(n-1)]` with `a(0)=1, a(1)=10, a(2)=5`
-/

namespace A258588.P8037552912322465220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 5] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258588.P8037552912322465220

namespace A258588

/-- `∑[11-a(n-1)]` -/
def P8037552912322465220.Spec : Prop :=
  ∀ n, P8037552912322465220.a n = A258588 (n + 1)

end A258588

/-! ## A258588.P15234852661006814984

`∑[gcd(2, n+1)]+(4*(n+1))%(2*(n+1)²)²`
-/

namespace A258588.P15234852661006814984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * (n + 1) % (2 * (n + 1) ^ 2) ^ 2

end

end A258588.P15234852661006814984

namespace A258588

/-- `∑[gcd(2, n+1)]+(4*(n+1))%(2*(n+1)²)²` -/
def P15234852661006814984.Spec : Prop :=
  ∀ n, (P15234852661006814984.a n : ℤ) = A258588 (n + 1)

end A258588

/-! ## A258588.P12857090796137181127

`∑[A147653(a(n-1))]` with `a(0)=1`
-/

namespace A258588.P12857090796137181127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A147653 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258588.P12857090796137181127

namespace A258588

/-- `∑[A147653(a(n-1))]` -/
def P12857090796137181127.Spec : Prop :=
  ∀ n, P12857090796137181127.a n = A258588 (n + 1)

end A258588

/-! ## A258588.P12072262921519507349

`A263941(n+1)+A087156(n+1)`
-/

namespace A258588.P12072262921519507349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263941 (n + 1) + A087156 (n + 1)

end

end A258588.P12072262921519507349

namespace A258588

/-- `A263941(n+1)+A087156(n+1)` -/
def P12072262921519507349.Spec : Prop :=
  ∀ n, P12072262921519507349.a n = A258588 (n + 1)

end A258588

/-! ## A258588.P1945497064297950597

`A258589(n+1)-A087156(n+1)`
-/

namespace A258588.P1945497064297950597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258589 (n + 1) - A087156 (n + 1)

end

end A258588.P1945497064297950597

namespace A258588

/-- `A258589(n+1)-A087156(n+1)` -/
def P1945497064297950597.Spec : Prop :=
  ∀ n, P1945497064297950597.a n = A258588 (n + 1)

end A258588

/-! ## A258588.P10041668495697310708

`A263941(n+1)+A163300(n+1)/2`
-/

namespace A258588.P10041668495697310708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263941 (n + 1) : ℚ) + (A163300 (n + 1) : ℚ) / 2

end

end A258588.P10041668495697310708

namespace A258588

/-- `A263941(n+1)+A163300(n+1)/2` -/
def P10041668495697310708.Spec : Prop :=
  ∀ n, P10041668495697310708.a n = (A258588 (n + 1) : ℚ)

end A258588

/-! ## A258588.P5202584440492253435

`(A263941(n+1)+A258589(n+1))/2`
-/

namespace A258588.P5202584440492253435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263941 (n + 1) + A258589 (n + 1) : ℚ) / 2

end

end A258588.P5202584440492253435

namespace A258588

/-- `(A263941(n+1)+A258589(n+1))/2` -/
def P5202584440492253435.Spec : Prop :=
  ∀ n, P5202584440492253435.a n = (A258588 (n + 1) : ℚ)

end A258588

/-! ## A258588.P4646310606769569191

`A258589(n+1)-A163300(n+1)/2`
-/

namespace A258588.P4646310606769569191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258589 (n + 1) : ℚ) - (A163300 (n + 1) : ℚ) / 2

end

end A258588.P4646310606769569191

namespace A258588

/-- `A258589(n+1)-A163300(n+1)/2` -/
def P4646310606769569191.Spec : Prop :=
  ∀ n, P4646310606769569191.a n = (A258588 (n + 1) : ℚ)

end A258588

/-! ## A258588.P17013082443833820178

`∑[A000210(Δ[A030123(n)])]`
-/

namespace A258588.P17013082443833820178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000210 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258588.P17013082443833820178

namespace A258588

/-- `∑[A000210(Δ[A030123(n)])]` -/
def P17013082443833820178.Spec : Prop :=
  ∀ n, P17013082443833820178.a n = A258588 (n + 1)

end A258588

/-! ## A258588.P6353033259595789515

`∑[A003152(Δ[A030123(n)])]`
-/

namespace A258588.P6353033259595789515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258588.P6353033259595789515

namespace A258588

/-- `∑[A003152(Δ[A030123(n)])]` -/
def P6353033259595789515.Spec : Prop :=
  ∀ n, P6353033259595789515.a n = A258588 (n + 1)

end A258588

/-! ## A258588.P17181111446910189830

`∑[A029939(Δ[A030123(n)])]`
-/

namespace A258588.P17181111446910189830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029939 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258588.P17181111446910189830

namespace A258588

/-- `∑[A029939(Δ[A030123(n)])]` -/
def P17181111446910189830.Spec : Prop :=
  ∀ n, P17181111446910189830.a n = A258588 (n + 1)

end A258588

/-! ## A258588.P10874727579995165142

`A030123(n+1)+2*A199969(n+2)`
-/

namespace A258588.P10874727579995165142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 (n + 1) + 2 * A199969 (n + 2)

end

end A258588.P10874727579995165142

namespace A258588

/-- `A030123(n+1)+2*A199969(n+2)` -/
def P10874727579995165142.Spec : Prop :=
  ∀ n, P10874727579995165142.a n = A258588 (n + 1)

end A258588

/-! ## A258588.P5568694918517806869

`A256680(n+1)+A258589(n+1)-A030123(n+1)`
-/

namespace A258588.P5568694918517806869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256680 (n + 1) + (A258589 (n + 1) - A030123 (n + 1))

end

end A258588.P5568694918517806869

namespace A258588

/-- `A256680(n+1)+A258589(n+1)-A030123(n+1)` -/
def P5568694918517806869.Spec : Prop :=
  ∀ n, P5568694918517806869.a n = A258588 (n + 1)

end A258588

/-! ## A258588.P14659352979461819134

`A030123(n+1)+A263941(n+1)-A256680(n+1)`
-/

namespace A258588.P14659352979461819134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 (n + 1) + (A263941 (n + 1) - A256680 (n + 1))

end

end A258588.P14659352979461819134

namespace A258588

/-- `A030123(n+1)+A263941(n+1)-A256680(n+1)` -/
def P14659352979461819134.Spec : Prop :=
  ∀ n, P14659352979461819134.a n = A258588 (n + 1)

end A258588

/-! ## A258588.P796332162415751765

`A030123(n+1)+A258589(n+1)-A263941(n+1)`
-/

namespace A258588.P796332162415751765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 (n + 1) + (A258589 (n + 1) - A263941 (n + 1))

end

end A258588.P796332162415751765

namespace A258588

/-- `A030123(n+1)+A258589(n+1)-A263941(n+1)` -/
def P796332162415751765.Spec : Prop :=
  ∀ n, P796332162415751765.a n = A258588 (n + 1)

end A258588

/-! ## A258588.P6528520416286859449

`∑[A176895(2*n)+4]%A017209(n)`
-/

namespace A258588.P6528520416286859449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * n) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017209 n)

end

end A258588.P6528520416286859449

namespace A258588

/-- `∑[A176895(2*n)+4]%A017209(n)` -/
def P6528520416286859449.Spec : Prop :=
  ∀ n, P6528520416286859449.a n = A258588 (n + 1)

end A258588

/-!
# A258589: Minimal most likely sum for a roll of n 12-sided dice.

The programs for A258589, the canonical program `A258589.P17017209700359355527` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258589 has offset 1).

The definition of A258589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258589.P7269206998273980501

`ogf((1+12x+5x^2-5x^3)/(1-x-x^2+x^3))`
-/

namespace A258589.P7269206998273980501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12, 5, -5] [1, -1, -1, 1] n

end

end A258589.P7269206998273980501

namespace A258589

/-- `ogf((1+12x+5x^2-5x^3)/(1-x-x^2+x^3))` -/
def P7269206998273980501.Spec : Prop :=
  ∀ n, P7269206998273980501.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P17017209700359355527

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=13, a(2)=19, a(3)=26`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258589

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P17017209700359355527.Spec : Prop :=
  ∀ n, P17017209700359355527.a n = A258589 (n + 1)

theorem P17017209700359355527.correct : P17017209700359355527.Spec := by
  intro n
  simp only [A258589, Nat.add_sub_cancel]

end A258589

/-! ## A258589.P2642106311588691131

`a(n-2)+13` with `a(0)=1, a(1)=13, a(2)=19`
-/

namespace A258589.P2642106311588691131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 13, 19] fun n a =>
  a (n - 2) + 13

end

end A258589.P2642106311588691131

namespace A258589

/-- `a(n-2)+13` -/
def P2642106311588691131.Spec : Prop :=
  ∀ n, (P2642106311588691131.a n : ℤ) = A258589 (n + 1)

end A258589

/-! ## A258589.P6146633852773841104

`∑[13-a(n-1)]` with `a(0)=1, a(1)=12, a(2)=6`
-/

namespace A258589.P6146633852773841104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 6] fun n f1 =>
  13 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258589.P6146633852773841104

namespace A258589

/-- `∑[13-a(n-1)]` -/
def P6146633852773841104.Spec : Prop :=
  ∀ n, P6146633852773841104.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P13608516702656750508

`A258588(n+1)+A087156(n+1)`
-/

namespace A258589.P13608516702656750508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258588 (n + 1) + A087156 (n + 1)

end

end A258589.P13608516702656750508

namespace A258589

/-- `A258588(n+1)+A087156(n+1)` -/
def P13608516702656750508.Spec : Prop :=
  ∀ n, P13608516702656750508.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P3791523199775968789

`A263941(n+1)+A163300(n+1)`
-/

namespace A258589.P3791523199775968789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263941 (n + 1) + A163300 (n + 1)

end

end A258589.P3791523199775968789

namespace A258589

/-- `A263941(n+1)+A163300(n+1)` -/
def P3791523199775968789.Spec : Prop :=
  ∀ n, P3791523199775968789.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P11674983975376468307

`A263941(n+1)+2*A087156(n+1)`
-/

namespace A258589.P11674983975376468307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263941 (n + 1) + 2 * A087156 (n + 1)

end

end A258589.P11674983975376468307

namespace A258589

/-- `A263941(n+1)+2*A087156(n+1)` -/
def P11674983975376468307.Spec : Prop :=
  ∀ n, P11674983975376468307.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P2586944449564651689

`2*A258588(n+1)-A263941(n+1)`
-/

namespace A258589.P2586944449564651689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258588 (n + 1) - A263941 (n + 1)

end

end A258589.P2586944449564651689

namespace A258589

/-- `2*A258588(n+1)-A263941(n+1)` -/
def P2586944449564651689.Spec : Prop :=
  ∀ n, P2586944449564651689.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P11124747843261992898

`A110654(n)+A008458((n+1)%A008458(n))`
-/

namespace A258589.P11124747843261992898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A008458 (Int.tmod (n + 1 : ℤ) (A008458 n)).toNat

end

end A258589.P11124747843261992898

namespace A258589

/-- `A110654(n)+A008458((n+1)%A008458(n))` -/
def P11124747843261992898.Spec : Prop :=
  ∀ n, P11124747843261992898.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P950985800746662903

`A030123(n+1)+A258588(n+1)-A256680(n+1)`
-/

namespace A258589.P950985800746662903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 (n + 1) + (A258588 (n + 1) - A256680 (n + 1))

end

end A258589.P950985800746662903

namespace A258589

/-- `A030123(n+1)+A258588(n+1)-A256680(n+1)` -/
def P950985800746662903.Spec : Prop :=
  ∀ n, P950985800746662903.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P6558402212976879220

`A258588(n+1)+A263941(n+1)-A030123(n+1)`
-/

namespace A258589.P6558402212976879220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258588 (n + 1) + (A263941 (n + 1) - A030123 (n + 1))

end

end A258589.P6558402212976879220

namespace A258589

/-- `A258588(n+1)+A263941(n+1)-A030123(n+1)` -/
def P6558402212976879220.Spec : Prop :=
  ∀ n, P6558402212976879220.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P4872543139888053356

`A263941(n+1)+A263941(n+1)-A256680(n+1)`
-/

namespace A258589.P4872543139888053356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263941 (n + 1) + (A263941 (n + 1) - A256680 (n + 1))

end

end A258589.P4872543139888053356

namespace A258589

/-- `A263941(n+1)+A263941(n+1)-A256680(n+1)` -/
def P4872543139888053356.Spec : Prop :=
  ∀ n, P4872543139888053356.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P13579404076221875192

`A047336(n+1)+A007310(n+2)%A091998(n+1)`
-/

namespace A258589.P13579404076221875192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (n + 1) + Int.tmod (A007310 (n + 2)) (A091998 (n + 1))

end

end A258589.P13579404076221875192

namespace A258589

/-- `A047336(n+1)+A007310(n+2)%A091998(n+1)` -/
def P13579404076221875192.Spec : Prop :=
  ∀ n, P13579404076221875192.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P13215733558744693332

`record[A166522(n+1)]-floor(n/2)`
-/

namespace A258589.P13215733558744693332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ⌊(n : ℚ) / 2⌋

end

end A258589.P13215733558744693332

namespace A258589

/-- `record[A166522(n+1)]-floor(n/2)` -/
def P13215733558744693332.Spec : Prop :=
  ∀ n, P13215733558744693332.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P10618358235411724263

`A065033(n)+record[3*A073759(n+1)]`
-/

namespace A258589.P10618358235411724263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A073759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258589.P10618358235411724263

namespace A258589

/-- `A065033(n)+record[3*A073759(n+1)]` -/
def P10618358235411724263.Spec : Prop :=
  ∀ n, P10618358235411724263.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P9992127787860375992

`∑[A000035(n)+6]%A272018(n+1)`
-/

namespace A258589.P9992127787860375992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A272018 (n + 1))

end

end A258589.P9992127787860375992

namespace A258589

/-- `∑[A000035(n)+6]%A272018(n+1)` -/
def P9992127787860375992.Spec : Prop :=
  ∀ n, P9992127787860375992.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P6413950132474223535

`A294732(record[A142954(n+1)]+n)-n`
-/

namespace A258589.P6413950132474223535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat - (n : ℤ)

end

end A258589.P6413950132474223535

namespace A258589

/-- `A294732(record[A142954(n+1)]+n)-n` -/
def P6413950132474223535.Spec : Prop :=
  ∀ n, P6413950132474223535.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P7718764367742341662

`A110654(n)+A008458(A008612(A008458(n)))`
-/

namespace A258589.P7718764367742341662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A008458 (A008612 (A008458 n).toNat).toNat

end

end A258589.P7718764367742341662

namespace A258589

/-- `A110654(n)+A008458(A008612(A008458(n)))` -/
def P7718764367742341662.Spec : Prop :=
  ∀ n, P7718764367742341662.a n = A258589 (n + 1)

end A258589

/-! ## A258589.P7573144257552447190

`∑[gcd(2, n+1)+5]%(5^(n+1))`
-/

namespace A258589.P7573144257552447190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 5 ^ (n + 1)

end

end A258589.P7573144257552447190

namespace A258589

/-- `∑[gcd(2, n+1)+5]%(5^(n+1))` -/
def P7573144257552447190.Spec : Prop :=
  ∀ n, (P7573144257552447190.a n : ℤ) = A258589 (n + 1)

end A258589

/-!
# A258590: Expansion of psi(-x) * psi(-x^6)^2 / f(-x^3) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A258590, there is no canonical definition to state claims against.
-/

/-! ## A258590.P7163583524630776042

`A263577(2*n+3)/2`
-/

namespace A258590.P7163583524630776042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263577 (2 * n + 3) : ℚ) / 2

end

end A258590.P7163583524630776042

/-! ## A258590.P10759206318244138987

`A307757(n)%A010684(A212965(3*n+4))`
-/

namespace A258590.P10759206318244138987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307757 n) (A010684 (A212965 (3 * n + 4)).toNat)

end

end A258590.P10759206318244138987

/-! ## A258590.P10842016016557230033

`A014674(p?[or(1, n²)]+A000032(n))`
-/

namespace A258590.P10842016016557230033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014674 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + A000032 n).toNat

end

end A258590.P10842016016557230033

/-! ## A258590.P3040680666863300669

`A330166(n)-A382944(A262071(n))`
-/

namespace A258590.P3040680666863300669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 n - A382944 (A262071 n).toNat

end

end A258590.P3040680666863300669

/-! ## A258590.P5921289488841210799

`A307757(n)%A097327(A286781(n))`
-/

namespace A258590.P5921289488841210799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307757 n) (A097327 (A286781 n).toNat)

end

end A258590.P5921289488841210799

/-!
# A258591: Expansion of (phi(-x^2) * phi(-x^4)^2 / phi(-x)^3)^2 in powers of x where phi() is a Ramanujan theta function.

The programs for A258591, there is no canonical definition to state claims against.
-/

/-! ## A258591.P15965059824908562325

`A260186(2*n)`
-/

namespace A258591.P15965059824908562325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260186 (2 * n)

end

end A258591.P15965059824908562325

/-! ## A258591.P6485872810380079585

`(A131126(2*n)+A007096(2*n))/2`
-/

namespace A258591.P6485872810380079585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131126 (2 * n) + A007096 (2 * n) : ℚ) / 2

end

end A258591.P6485872810380079585

/-! ## A258591.P12184617560672656142

`(A212318(2*n)+A208933(4*n))/2`
-/

namespace A258591.P12184617560672656142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212318 (2 * n) + A208933 (4 * n) : ℚ) / 2

end

end A258591.P12184617560672656142

/-! ## A258591.P18181958785564420428

`record[A260186(n)]`
-/

namespace A258591.P18181958785564420428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258591.P18181958785564420428

/-! ## A258591.P3003197711090051248

`(A210066(2*n)+A189925(2*n))/2`
-/

namespace A258591.P3003197711090051248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210066 (2 * n) + A189925 (2 * n) : ℚ) / 2

end

end A258591.P3003197711090051248

/-! ## A258591.P5055178700359784566

`(A112128(4*n)+A007096(2*n))/2`
-/

namespace A258591.P5055178700359784566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112128 (4 * n) + A007096 (2 * n) : ℚ) / 2

end

end A258591.P5055178700359784566

/-!
# A258592: Values of k such that the number of rooted trees with k nodes (A000081(k)) is even.

The programs for A258592, there is no canonical definition to state claims against.
-/

/-! ## A258592.P14437071604347195283

`eq[0, A211192(n)%2]`
-/

namespace A258592.P14437071604347195283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211192 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258592.P14437071604347195283

/-! ## A258592.P16393429059344579838

`eq[0, and(A057427(n), A211192(n))]`
-/

namespace A258592.P16393429059344579838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A211192 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258592.P16393429059344579838

/-! ## A258592.P4900396629232372313

`eq[0, A000081(n)%2]`
-/

namespace A258592.P4900396629232372313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000081 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258592.P4900396629232372313

/-! ## A258592.P2220374114538906229

`eq[0, and(A000081(n), A057427(n))]`
-/

namespace A258592.P2220374114538906229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000081 n) (A057427 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258592.P2220374114538906229

/-! ## A258592.P17809226264495394570

`eq[1, A000005((val(A000081(n)+1, 2)+1)²)]`
-/

namespace A258592.P17809226264495394570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.valuation (A000081 n + 1).toNat 2 + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258592.P17809226264495394570

/-! ## A258592.P11134054995008298192

`comp[A263831(n+1)]`
-/

namespace A258592.P11134054995008298192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A258592.P11134054995008298192

/-!
# A258593: Expansion of (phi(x^2) * psi(x^2) / phi(-x)^2)^2 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A258593, there is no canonical definition to state claims against.
-/

/-! ## A258593.P16126264998248503988

`(A093160(n)+A022577(n))/2`
-/

namespace A258593.P16126264998248503988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093160 n + A022577 n : ℚ) / 2

end

end A258593.P16126264998248503988

/-! ## A258593.P565218080966375641

`(A123655(2*n+1)+A107035(2*n+1))/2`
-/

namespace A258593.P565218080966375641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123655 (2 * n + 1) + A107035 (2 * n + 1) : ℚ) / 2

end

end A258593.P565218080966375641

/-! ## A258593.P317461926513399995

`(A208605(2*n+1)+A107035(2*n+1))/2`
-/

namespace A258593.P317461926513399995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208605 (2 * n + 1) + A107035 (2 * n + 1) : ℚ) / 2

end

end A258593.P317461926513399995

/-! ## A258593.P17761725618369006185

`A260186(2*n+1)/(-4)`
-/

namespace A258593.P17761725618369006185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260186 (2 * n + 1) : ℚ) / (-4)

end

end A258593.P17761725618369006185

/-! ## A258593.P11580868652928363611

`record[A260186(n+1)/A260186(A001511(n+1))]`
-/

namespace A258593.P11580868652928363611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260186 (n + 1) : ℚ) / (A260186 (A001511 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258593.P11580868652928363611

/-!
# A258594: Number of prime factors of the number of partitions of n into distinct parts, a(n) = A001222(A000009(n)).

The programs for A258594, there is no canonical definition to state claims against.
-/

/-! ## A258594.P14247435885513178515

`A001222(A000009(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258594.P14247435885513178515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000009 n).toNat

end

end A258594.P14247435885513178515

/-! ## A258594.P10671076880755157264

`∑{e}[A000009(n), #]`
-/

namespace A258594.P10671076880755157264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A258594.P10671076880755157264

/-! ## A258594.P4960776334160950686

`∑{e}[A081360(n), #]`
-/

namespace A258594.P4960776334160950686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A258594.P4960776334160950686

/-! ## A258594.P1992348261999599209

`∑{e}[sqrt(A304990(n)), #]`
-/

namespace A258594.P1992348261999599209
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A304990 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A258594.P1992348261999599209

/-! ## A258594.P13145640600440262988

`∑{e}[∑[A087897(n)], #]`
-/

namespace A258594.P13145640600440262988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A258594.P13145640600440262988

/-! ## A258594.P8124637981710659513

`∑{e}[A264405(∑[n]), #]`
-/

namespace A258594.P8124637981710659513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A258594.P8124637981710659513

/-! ## A258594.P17227571963490179844

`∑{e}[A284593(∑[n]), #]`
-/

namespace A258594.P17227571963490179844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A258594.P17227571963490179844

/-! ## A258594.P4589649844670871391

`∑{e}[A111133(n)+1, #]`
-/

namespace A258594.P4589649844670871391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A258594.P4589649844670871391

/-! ## A258594.P13922892367579841213

`∑{e}[A117409(n+2), #]`
-/

namespace A258594.P13922892367579841213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A258594.P13922892367579841213

/-! ## A258594.P17144107714672004717

`∑{e}[A035457(2*n), #]`
-/

namespace A258594.P17144107714672004717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A258594.P17144107714672004717

/-! ## A258594.P9431690519698824834

`∑{e}[A172033(2*n), #]`
-/

namespace A258594.P9431690519698824834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A258594.P9431690519698824834

/-! ## A258594.P16087563024015465977

`∑{e}[∑{d}[n, A078374(#)], #]`
-/

namespace A258594.P16087563024015465977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A078374 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A258594.P16087563024015465977

/-! ## A258594.P16432609697022970114

`∑{e}[A067661(n)+A067659(n), #]`
-/

namespace A258594.P16432609697022970114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n + A067659 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A258594.P16432609697022970114

/-! ## A258594.P17501039773518970031

`∑{e}[A000041(n)-A047967(n), #]`
-/

namespace A258594.P17501039773518970031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A047967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A258594.P17501039773518970031

/-! ## A258594.P1333626393874805401

`A000005(∏{e}[A000009(n), 2^#])-1`
-/

namespace A258594.P1333626393874805401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 ^ Nat.factorization (f1 n).natAbs p) - 1

end

end A258594.P1333626393874805401

/-! ## A258594.P6586240937053506669

`∑{e}[A096765(n+1)+A096765(n), #]`
-/

namespace A258594.P6586240937053506669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) + A096765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A258594.P6586240937053506669

/-! ## A258594.P11543835369962813099

`∑{d}[∏{e}[A000009(n), 2^#], A001221(#)]`
-/

namespace A258594.P11543835369962813099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, 2 ^ Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d

end

end A258594.P11543835369962813099

/-!
# A258595: Number of distinct primes dividing the number of partitions of n into distinct parts, a(n) = A001221(A000009(n)).

The programs for A258595, there is no canonical definition to state claims against.
-/

/-! ## A258595.P12795772691631856890

`A001221(A000009(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258595.P12795772691631856890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000009 n).toNat

end

end A258595.P12795772691631856890

/-! ## A258595.P8458508073387608599

`∑{p}[A000009(n), C(#, #)]`
-/

namespace A258595.P8458508073387608599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose p p

end

end A258595.P8458508073387608599

/-! ## A258595.P5590997493005293700

`∑{e}[∏{p}[A081360(n), #], #]`
-/

namespace A258595.P5590997493005293700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A258595.P5590997493005293700

/-! ## A258595.P1059042842971271051

`∑{e}[∏{p}[∑[A087897(n)], #], #]`
-/

namespace A258595.P1059042842971271051
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A258595.P1059042842971271051

/-! ## A258595.P13989907634952577535

`∑{e}[∏{p}[A111133(n)+1, #], #]`
-/

namespace A258595.P13989907634952577535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A258595.P13989907634952577535

/-! ## A258595.P11038105845099113040

`∑{e}[∏{p}[A117466(C(n, 2)+1), #], #]`
-/

namespace A258595.P11038105845099113040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117466 (Nat.choose n 2 + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A258595.P11038105845099113040

/-! ## A258595.P704481749237089997

`∑{p}[A000009(n), A000009(val(#, 2))]`
-/

namespace A258595.P704481749237089997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000009 (SequenceMachineLib.valuation p 2)

end

end A258595.P704481749237089997

/-! ## A258595.P13437973458929699094

`∑{p}[A000009(n), A000041(ceil(1/#))]`
-/

namespace A258595.P13437973458929699094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 ⌈1 / (p : ℚ)⌉.toNat

end

end A258595.P13437973458929699094

/-! ## A258595.P13735498119060195202

`A106404(A087135(n))`
-/

namespace A258595.P13735498119060195202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A087135 n).toNat

end

end A258595.P13735498119060195202

/-!
# A258596: Number of divisors of the number of partitions of n into distinct parts, a(n) = A000005(A000009(n)).

The programs for A258596, there is no canonical definition to state claims against.
-/

/-! ## A258596.P15025663336980218324

`A000005(A000009(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258596.P15025663336980218324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000009 n).toNat

end

end A258596.P15025663336980218324

/-! ## A258596.P14157110908455624610

`∏{e}[A000009(n), #+1]`
-/

namespace A258596.P14157110908455624610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A258596.P14157110908455624610

/-! ## A258596.P15739705539390727849

`∏{e}[A081360(n), #+1]`
-/

namespace A258596.P15739705539390727849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A258596.P15739705539390727849

/-! ## A258596.P15031080890149576906

`∏{e}[∑[A087897(n)], #+1]`
-/

namespace A258596.P15031080890149576906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A258596.P15031080890149576906

/-! ## A258596.P18391227484747144099

`∏{e}[A284593(∑[n]), #+1]`
-/

namespace A258596.P18391227484747144099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A258596.P18391227484747144099

/-! ## A258596.P4382944013112344626

`∏{e}[A111133(n)+1, #+1]`
-/

namespace A258596.P4382944013112344626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A258596.P4382944013112344626

/-! ## A258596.P5586023381430292423

`∏{e}[A035457(2*n), #+1]`
-/

namespace A258596.P5586023381430292423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A258596.P5586023381430292423

/-! ## A258596.P18021657437024994501

`∑{d}[A000009(n), A000009(C(2, #))]`
-/

namespace A258596.P18021657437024994501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000009 (Nat.choose 2 d)

end

end A258596.P18021657437024994501

/-! ## A258596.P2023169978624803503

`∑{d}[A000009(n), A007318(val(#, 5))]`
-/

namespace A258596.P2023169978624803503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (SequenceMachineLib.valuation d 5)

end

end A258596.P2023169978624803503

/-! ## A258596.P11575323077069812987

`∑{d}[A000009(n), A000009(val(#, 7))]`
-/

namespace A258596.P11575323077069812987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000009 (SequenceMachineLib.valuation d 7)

end

end A258596.P11575323077069812987

/-! ## A258596.P11147934074831802743

`∑{d}[A000009(n), A000041(ceil(1/#))]`
-/

namespace A258596.P11147934074831802743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000041 ⌈1 / (d : ℚ)⌉.toNat

end

end A258596.P11147934074831802743

/-! ## A258596.P1713748953671202971

`∑{d}[A000009(n), A000203(ceil(1/#))]`
-/

namespace A258596.P1713748953671202971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000203 ⌈1 / (d : ℚ)⌉.toNat

end

end A258596.P1713748953671202971

/-! ## A258596.P16258040539262343094

`∑{d}[A000009(n), A014963(ceil(1/#))]`
-/

namespace A258596.P16258040539262343094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A014963 ⌈1 / (d : ℚ)⌉.toNat

end

end A258596.P16258040539262343094

/-! ## A258596.P14874213830740776061

`∑{d}[A000009(n), A007318(or(#, -2)+2)]`
-/

namespace A258596.P14874213830740776061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (Int.lor (d : ℤ) (-2) + 2).toNat

end

end A258596.P14874213830740776061

/-!
# A258597: a(n) = 13*3^n.

The programs for A258597, the canonical program `A258597.P6953693260571698962` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258597 has offset 0).

The definition of A258597 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*3^n` (program `A258597.P6953693260571698962`, by `A258597.P6953693260571698962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258597.P6953693260571698962

`13*3^n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258597

/-- `13*3^n` -/
def P6953693260571698962.Spec : Prop :=
  ∀ n, (P6953693260571698962.a n : ℤ) = A258597 n

theorem P6953693260571698962.correct : P6953693260571698962.Spec := by
  intro n
  simp only [A258597]

end A258597

/-!
# A258598: a(n) = 17*3^n.

The programs for A258598, the canonical program `A258598.P3388897089090813611` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258598 has offset 0).

The definition of A258598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*3^n` (program `A258598.P3388897089090813611`, by `A258598.P3388897089090813611.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258598.P3388897089090813611

`17*3^n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258598

/-- `17*3^n` -/
def P3388897089090813611.Spec : Prop :=
  ∀ n, (P3388897089090813611.a n : ℤ) = A258598 n

theorem P3388897089090813611.correct : P3388897089090813611.Spec := by
  intro n
  simp only [A258598]

end A258598

/-!
# A258599: a(n) is the index m such that A001694(m) = prime(n)^2.

The programs for A258599, the canonical program `A258599.P4635485178329170421` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258599 has offset 1).

The definition of A258599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258599.P11355248503451590248

`A348018(A000040(1+n))`
-/

namespace A258599.P11355248503451590248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (A000040 (1 + n)).toNat

end

end A258599.P11355248503451590248

namespace A258599

/-- `A348018(A000040(1+n))` -/
def P11355248503451590248.Spec : Prop :=
  ∀ n, P11355248503451590248.a n = A258599 (n + 1)

end A258599

/-! ## A258599.P4635485178329170421

`A361936(A000040(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A258599

/-- `A361936(A000040(n+1))` -/
def P4635485178329170421.Spec : Prop :=
  ∀ n, P4635485178329170421.a n = A258599 (n + 1)

theorem P4635485178329170421.correct : P4635485178329170421.Spec := by
  intro n
  simp only [A258599, Nat.add_sub_cancel]

end A258599

/-! ## A258599.P15357758001910963663

`A217038(A061725(n+1))`
-/

namespace A258599.P15357758001910963663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A061725 (n + 1)).toNat

end

end A258599.P15357758001910963663

namespace A258599

/-- `A217038(A061725(n+1))` -/
def P15357758001910963663.Spec : Prop :=
  ∀ n, P15357758001910963663.a n = A258599 (n + 1)

end A258599

