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
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A203500: Number of nX2 0..6 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203500, there is no canonical definition to state claims against.
-/

/-! ## A203500.P3687240610625757461

`record[ratio[A203506(n+1)]]`
-/

namespace A203500.P3687240610625757461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203506 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203500.P3687240610625757461

/-! ## A203500.P10515130330036889313

`A203506(∑[n+1]+2)`
-/

namespace A203500.P10515130330036889313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203506 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203500.P10515130330036889313

/-! ## A203500.P13193128312691567139

`record[root(A203506(n+1), A189006(n))]`
-/

namespace A203500.P13193128312691567139
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203506 (n + 1) : ℝ) ^ (1 / (A189006 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203500.P13193128312691567139

/-! ## A203500.P12332792975272492738

`record[A203506(n+2)/A203506(n+1)]`
-/

namespace A203500.P12332792975272492738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203506 (n + 2) : ℚ) / (A203506 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203500.P12332792975272492738

/-! ## A203500.P10774880132014524936

`record[A203506(∑[A152271(n)])]`
-/

namespace A203500.P10774880132014524936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203506 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203500.P10774880132014524936

/-!
# A203501: Number of nX3 0..6 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203501, there is no canonical definition to state claims against.
-/

/-! ## A203501.P9103344220067944267

`A203506(∑[n+2]+4)`
-/

namespace A203501.P9103344220067944267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203506 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203501.P9103344220067944267

/-! ## A203501.P3976450276498894434

`record[gcd(A203506(n+1), A247288(n))]`
-/

namespace A203501.P3976450276498894434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A203506 (n + 1)) (A247288 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203501.P3976450276498894434

/-! ## A203501.P7493417870271109879

`A203506(A167614(n+1))+A000007(n+1)`
-/

namespace A203501.P7493417870271109879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203506 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A203501.P7493417870271109879

/-! ## A203501.P12069106658285473714

`A203506(A167614(n+1))*A353799(n+1)`
-/

namespace A203501.P12069106658285473714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203506 (A167614 (n + 1)).toNat * A353799 (n + 1)

end

end A203501.P12069106658285473714

/-!
# A203502: Number of nX4 0..6 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203502, there is no canonical definition to state claims against.
-/

/-! ## A203502.P2918579678490897840

`A203506(A055999(n)+10)`
-/

namespace A203502.P2918579678490897840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203506 (A055999 n + 10).toNat

end

end A203502.P2918579678490897840

/-! ## A203502.P12806206182058630144

`A203506(A167614(n+2)+1)`
-/

namespace A203502.P12806206182058630144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203506 (A167614 (n + 2) + 1).toNat

end

end A203502.P12806206182058630144

/-! ## A203502.P1424527600878238546

`A203506(A141214(n+1))`
-/

namespace A203502.P1424527600878238546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203506 (A141214 (n + 1)).toNat

end

end A203502.P1424527600878238546

/-!
# A203506: T(n,k)=Number of nXk 0..6 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203506, there is no canonical definition to state claims against.
-/

/-! ## A203506.P15848896636360040794

`A203500(A007318(n)^A330231(n))`
-/

namespace A203506.P15848896636360040794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203500 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A330231 n : ℤ))).toNat

end

end A203506.P15848896636360040794

/-! ## A203506.P14174542052357777605

`A203500(A026022(n+1)^A330231(n))`
-/

namespace A203506.P14174542052357777605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203500 (SequenceMachineLib.roundAway ((A026022 (n + 1) : ℚ) ^ (A330231 n : ℤ))).toNat

end

end A203506.P14174542052357777605

/-! ## A203506.P8854122655197888500

`A325099(A101030(n+2))`
-/

namespace A203506.P8854122655197888500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325099 (A101030 (n + 2)).toNat

end

end A203506.P8854122655197888500

/-! ## A203506.P6469320455879887480

`A203500(A160449(n*A269945(n)))`
-/

namespace A203506.P6469320455879887480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203500 (A160449 ((n : ℤ) * A269945 n).toNat).toNat

end

end A203506.P6469320455879887480

/-!
# A203507: G.f.: Product_{n>=0} 1/(1-a(n)*x^(n+1))^3 = Sum_{n>=0} a(n)*x^n.

The programs for A203507, there is no canonical definition to state claims against.
-/

/-! ## A203507.P6347119644197195611

`A319643(n*∏{p}[n+1, ceil(atan(#))])`
-/

namespace A203507.P6347119644197195611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319643 ((n : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (p : ℝ)⌉)).toNat

end

end A203507.P6347119644197195611

/-!
# A203508: G.f.: Product_{n>=0} (1+a(n)*x^(n+1))^3 = Sum_{n>=0} a(n)*x^n.

The programs for A203508, there is no canonical definition to state claims against.
-/

/-! ## A203508.P12240692578203412634

`∑[A056171(A041025(n)+A000032(3*n+1))]`
-/

namespace A203508.P12240692578203412634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A041025 n + A000032 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203508.P12240692578203412634

/-!
# A203510: a(n) = A203482(n) / A000178(n).

The programs for A203510, there is no canonical definition to state claims against.
-/

/-! ## A203510.P6086077313554885592

`A203482(n+1)/A000178(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203510.P6086077313554885592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203482 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203510.P6086077313554885592

/-! ## A203510.P16200653835236732382

`A203471(n+1)/A203470(n+1)*A203482(n+1)`
-/

namespace A203510.P16200653835236732382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203471 (n + 1) : ℚ) / (A203470 (n + 1) : ℚ) * (A203482 (n + 1) : ℚ)

end

end A203510.P16200653835236732382

/-!
# A203511: a(n) = Product_{1 <= i < j <= n} (t(i) + t(j)); t = A000217 = triangular numbers.

The programs for A203511, there is no canonical definition to state claims against.
-/

/-! ## A203511.P3751543413858598762

`a(n-1)*A203512(n-1)` with `a(0)=1`
-/

namespace A203511.P3751543413858598762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203512 (n - 1)

end

end A203511.P3751543413858598762

/-! ## A203511.P12212203757314205830

`∏[A203512(n)]/A203512(n)`
-/

namespace A203511.P12212203757314205830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203512 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203512 n : ℚ)

end

end A203511.P12212203757314205830

/-!
# A203512: a(n) = A203511(n+1)/A203511(n).

The programs for A203512, there is no canonical definition to state claims against.
-/

/-! ## A203512.P13161643972518863507

`A203511(n+1)/A203511(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203512.P13161643972518863507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203511 (n + 1) : ℚ) / (A203511 n : ℚ)

end

end A203512.P13161643972518863507

/-! ## A203512.P8419220464538794967

`ratio[A203511(n)]`
-/

namespace A203512.P8419220464538794967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203511 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203512.P8419220464538794967

/-!
# A203513: a(n) = A203312(n+1)/A203312(n).

The programs for A203513, there is no canonical definition to state claims against.
-/

/-! ## A203513.P18359560279226928897

`A203765(2*(n+1))`
-/

namespace A203513.P18359560279226928897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203765 (2 * (n + 1))

end

end A203513.P18359560279226928897

/-! ## A203513.P16988318452909161550

`record[A203765(A133265(n))]`
-/

namespace A203513.P16988318452909161550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203765 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203513.P16988318452909161550

/-! ## A203513.P10463336004731182070

`record[A203765(2*A133310(n))]`
-/

namespace A203513.P10463336004731182070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203765 (2 * A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203513.P10463336004731182070

/-!
# A203514: 

The programs for A203514, there is no canonical definition to state claims against.
-/

/-! ## A203514.P14041412160648278052

`∏[A203515(n+1)]/A203515(n+1)`
-/

namespace A203514.P14041412160648278052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203515 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203515 (n + 1) : ℚ)

end

end A203514.P14041412160648278052

/-!
# A203516: a(n) = Product_{1 <= i < j <= n} 2*(i+j-1).

The programs for A203516, there is no canonical definition to state claims against.
-/

/-! ## A203516.P16869236463886337352

`∏[∏[a(n-1)+8]]` with `a(0)=1, a(1)=4`
-/

namespace A203516.P16869236463886337352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203516.P16869236463886337352

/-! ## A203516.P16262387280448005874

`∏[lcm(4^n, ∏[1-2*n])]`
-/

namespace A203516.P16262387280448005874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 ^ n : ℤ) (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203516.P16262387280448005874

/-! ## A203516.P97735474425849967

`∏[(8*n-4)*a(n-1)]` with `a(0)=1`
-/

namespace A203516.P97735474425849967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((8 * n : ℤ) - 4) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203516.P97735474425849967

/-! ## A203516.P9943807346533164701

`∏[4^n*∏[abs(1-2*n)]]`
-/

namespace A203516.P9943807346533164701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203516.P9943807346533164701

/-! ## A203516.P717242552431338780

`A000178(n)*A203517(n+1)`
-/

namespace A203516.P717242552431338780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A203517 (n + 1)

end

end A203516.P717242552431338780

/-!
# A203517: a(n) = A203516(n)/A000178(n).

The programs for A203517, there is no canonical definition to state claims against.
-/

/-! ## A203517.P10225472229845537268

`A203516(n+1)/A000178(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203517.P10225472229845537268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203516 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203517.P10225472229845537268

/-! ## A203517.P12543643000589177369

`∏[2^n*C(2*n, n)]`
-/

namespace A203517.P12543643000589177369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.choose (2 * n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203517.P12543643000589177369

/-! ## A203517.P10483896541325939358

`∏[2*(4-2/n)*a(n-1)]` with `a(0)=1`
-/

namespace A203517.P10483896541325939358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * ((4 - 2 / (n : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203517.P10483896541325939358

/-! ## A203517.P9434069854892757858

`2^n*C(2*n, n)*a(n-1)` with `a(0)=1`
-/

namespace A203517.P9434069854892757858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n * Nat.choose (2 * n) n * a (n - 1)

end

end A203517.P9434069854892757858

/-! ## A203517.P13840897788512970380

`∏[A059304(n)]`
-/

namespace A203517.P13840897788512970380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203517.P13840897788512970380

/-!
# A203518: a(n) = Product_{2 <= i < j <= n+1} (F(i) + F(j)), where F = A000045 (Fibonacci numbers).

The programs for A203518, there is no canonical definition to state claims against.
-/

/-! ## A203518.P1612007270624981216

`∏[A203519(n+1)]/A203519(n+1)`
-/

namespace A203518.P1612007270624981216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203519 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203519 (n + 1) : ℚ)

end

end A203518.P1612007270624981216

/-!
# A203519: a(n) = v(n+1)/v(n), where v=A203518.

The programs for A203519, there is no canonical definition to state claims against.
-/

/-! ## A203519.P12387698207902138244

`ratio[A203518(n+1)]`
-/

namespace A203519.P12387698207902138244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203518 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203519.P12387698207902138244

/-! ## A203519.P14381302970365111722

`ratio[∏[n!]*A203520(n+1)]`
-/

namespace A203519.P14381302970365111722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A203520 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203519.P14381302970365111722

/-! ## A203519.P5000716366496898738

`ratio[record[A203518(A028920(n))]]`
-/

namespace A203519.P5000716366496898738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203518 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203519.P5000716366496898738

/-! ## A203519.P10279636129593143720

`record[ratio[A203518(A080513(n))]]`
-/

namespace A203519.P10279636129593143720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203518 (A080513 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203519.P10279636129593143720

/-! ## A203519.P5333464237565681043

`record[ratio[A203518(A109785(n))]]`
-/

namespace A203519.P5333464237565681043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203518 (A109785 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203519.P5333464237565681043

/-!
# A203520: v(n)/A000178(n); v=A203518 and A000178=(superfactorials).

The programs for A203520, there is no canonical definition to state claims against.
-/

/-! ## A203520.P5053798827615999739

`A203518(n+1)/A000178(n)`
-/

namespace A203520.P5053798827615999739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203518 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203520.P5053798827615999739

/-! ## A203520.P11014559591101576137

`A203518(n+1)/∏[A000142(n)]`
-/

namespace A203520.P11014559591101576137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203518 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A203520.P11014559591101576137

/-! ## A203520.P1870453466892178811

`A203517(n+1)/A203516(n+1)*A203518(n+1)`
-/

namespace A203520.P1870453466892178811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203517 (n + 1) : ℚ) / (A203516 (n + 1) : ℚ) * (A203518 (n + 1) : ℚ)

end

end A203520.P1870453466892178811

/-! ## A203520.P8224698709136245137

`A203518(n+1)/A203524(n+1)*A203526(n+1)`
-/

namespace A203520.P8224698709136245137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203518 (n + 1) : ℚ) / (A203524 (n + 1) : ℚ) * (A203526 (n + 1) : ℚ)

end

end A203520.P8224698709136245137

/-! ## A203520.P3247187156537064250

`A203518(n+1)/A203527(n+1)*A203529(n+1)`
-/

namespace A203520.P3247187156537064250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203518 (n + 1) : ℚ) / (A203527 (n + 1) : ℚ) * (A203529 (n + 1) : ℚ)

end

end A203520.P3247187156537064250

/-!
# A203521: a(n) = Product_{1 <= i < j <= n} (prime(i) + prime(j)).

The programs for A203521, there is no canonical definition to state claims against.
-/

/-! ## A203521.P10199503656278475624

`∏[A049417(A136653(n+1))]`
-/

namespace A203521.P10199503656278475624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (A136653 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203521.P10199503656278475624

/-!
# A203522: a(n) = v(n+1)/v(n), where v = A203521.

The programs for A203522, there is no canonical definition to state claims against.
-/

/-! ## A203522.P8032225439810751769

`ratio[A203521(n)]`
-/

namespace A203522.P8032225439810751769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203521 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203522.P8032225439810751769

/-! ## A203522.P13412541352938582732

`A203521(n+1)/A203521(n)`
-/

namespace A203522.P13412541352938582732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203521 (n + 1) : ℚ) / (A203521 n : ℚ)

end

end A203522.P13412541352938582732

/-! ## A203522.P7527865346271685645

`∏{p}[A002110(n), A000040(n+1)+#]`
-/

namespace A203522.P7527865346271685645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000040 (n + 1) + (p : ℤ))

end

end A203522.P7527865346271685645

/-! ## A203522.P13117818146970816441

`∏{p}[A002110(n), A006005(n+1)+#]`
-/

namespace A203522.P13117818146970816441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A006005 (n + 1) + (p : ℤ))

end

end A203522.P13117818146970816441

/-!
# A203523: v(n)/A000178(n); v=A203521 and A000178=(superfactorials).

The programs for A203523, there is no canonical definition to state claims against.
-/

/-! ## A203523.P15559091128866200342

`A203521(n+1)/A000178(n)`
-/

namespace A203523.P15559091128866200342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203521 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203523.P15559091128866200342

/-!
# A203524: a(n) = Product_{2 <= i < j <= n+1} (prime(i) + prime(j)).

The programs for A203524, there is no canonical definition to state claims against.
-/

/-! ## A203524.P12081294140936084747

`∏[n!]*A203526(n+1)`
-/

namespace A203524.P12081294140936084747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A203526 (n + 1)

end

end A203524.P12081294140936084747

/-! ## A203524.P4554790038487591764

`A000178(n)*A203526(n+1)`
-/

namespace A203524.P4554790038487591764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A203526 (n + 1)

end

end A203524.P4554790038487591764

/-! ## A203524.P205432554664349068

`∏[A000142(n)]*A203526(n+1)`
-/

namespace A203524.P205432554664349068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A203526 (n + 1)

end

end A203524.P205432554664349068

/-!
# A203526: v(n)/A000178(n); v=A203524 and A000178=(superfactorials).

The programs for A203526, there is no canonical definition to state claims against.
-/

/-! ## A203526.P7834730705228860659

`A203524(n+1)/∏[n!]`
-/

namespace A203526.P7834730705228860659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203524 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A203526.P7834730705228860659

/-! ## A203526.P1444726791603329749

`A203524(n+1)/A000178(n)`
-/

namespace A203526.P1444726791603329749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203524 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203526.P1444726791603329749

/-!
# A203527: a(n) = Product_{1 <= i < j <= n} (A018252(i) + A018252(j)); A018252 = nonprime numbers.

The programs for A203527, there is no canonical definition to state claims against.
-/

/-! ## A203527.P12365481239213225504

`∏[n!]*A203529(n+1)`
-/

namespace A203527.P12365481239213225504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A203529 (n + 1)

end

end A203527.P12365481239213225504

/-! ## A203527.P1727255338658636035

`A000178(n)*A203529(n+1)`
-/

namespace A203527.P1727255338658636035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A203529 (n + 1)

end

end A203527.P1727255338658636035

/-! ## A203527.P8075311456678660911

`∏[A203528(n+1)]/A203528(n+1)`
-/

namespace A203527.P8075311456678660911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203528 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203528 (n + 1) : ℚ)

end

end A203527.P8075311456678660911

/-!
# A203528: a(n) = v(n+1)/v(n), where v=A203527.

The programs for A203528, there is no canonical definition to state claims against.
-/

/-! ## A203528.P6568524887364291608

`ratio[A203529(n+1)]*ratio[A000178(n)]`
-/

namespace A203528.P6568524887364291608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A203528.P6568524887364291608

/-! ## A203528.P6089783295897999932

`ratio[A203529(n+1)]*A000142(n+1)`
-/

namespace A203528.P6089783295897999932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203529 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A000142 (n + 1) : ℚ)

end

end A203528.P6089783295897999932

/-! ## A203528.P2588302469634049728

`ratio[A203527(n+1)]`
-/

namespace A203528.P2588302469634049728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203527 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203528.P2588302469634049728

/-! ## A203528.P12049128574601808034

`ratio[A000178(n)*A203529(n+1)]`
-/

namespace A203528.P12049128574601808034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A203529 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203528.P12049128574601808034

/-!
# A203529: a(n) = A203527(n)/A000178(n-1); A000178 = (superfactorials).

The programs for A203529, there is no canonical definition to state claims against.
-/

/-! ## A203529.P13501536378260150942

`A203527(n+1)/A000178(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203529.P13501536378260150942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203527 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203529.P13501536378260150942

/-!
# A203530: a(n) = Product_{1 <= i < j <= n} (c(i) + c(j)); c = A002808 = composite numbers.

The programs for A203530, there is no canonical definition to state claims against.
-/

/-! ## A203530.P5249962726137465241

`∏[n!]*A203533(n+1)`
-/

namespace A203530.P5249962726137465241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A203533 (n + 1)

end

end A203530.P5249962726137465241

/-! ## A203530.P2464620644557354589

`A000178(n)*A203533(n+1)`
-/

namespace A203530.P2464620644557354589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A203533 (n + 1)

end

end A203530.P2464620644557354589

/-! ## A203530.P8440297922735777151

`A203418(n+1)/A203420(n+1)*A203533(n+1)`
-/

namespace A203530.P8440297922735777151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203418 (n + 1) : ℚ) / (A203420 (n + 1) : ℚ) * (A203533 (n + 1) : ℚ)

end

end A203530.P8440297922735777151

/-! ## A203530.P4427349143616958260

`∏[A203532(n+1)]/A203532(n+1)`
-/

namespace A203530.P4427349143616958260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203532 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203532 (n + 1) : ℚ)

end

end A203530.P4427349143616958260

/-!
# A203531: Run lengths in Golay-Rudin-Shapiro sequence A020985.

The programs for A203531, there is no canonical definition to state claims against.
-/

/-! ## A203531.P11126109980855937912

`Δ[eq[A073089(n+1), A285383(n+1)]]`
-/

namespace A203531.P11126109980855937912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A203531.P11126109980855937912

/-! ## A203531.P17569914104000647444

`Δ[eq[1, A209615(A065190(n+1))]]`
-/

namespace A203531.P17569914104000647444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A065190 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A203531.P17569914104000647444

/-!
# A203532: v(n+1)/v(n), where v=A203530.

The programs for A203532, there is no canonical definition to state claims against.
-/

/-! ## A203532.P15006370092397135220

`ratio[A203533(n+1)]*ratio[A000178(n)]`
-/

namespace A203532.P15006370092397135220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A203532.P15006370092397135220

/-! ## A203532.P7459324463188769743

`ratio[A203530(n+1)]`
-/

namespace A203532.P7459324463188769743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203532.P7459324463188769743

/-! ## A203532.P16927773522577956383

`ratio[A000178(n)*A203533(n+1)]`
-/

namespace A203532.P16927773522577956383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A203533 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203532.P16927773522577956383

/-!
# A203533: a(n) = A203530(n)/A000178(n-1); A000178 = (superfactorials).

The programs for A203533, there is no canonical definition to state claims against.
-/

/-! ## A203533.P9983201153393941755

`A203530(n+1)/A000178(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203533.P9983201153393941755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203530 (n + 1) : ℚ) / (A000178 n : ℚ)

end

end A203533.P9983201153393941755

/-! ## A203533.P16580918302158118465

`A203526(n+1)/A203524(n+1)*A203530(n+1)`
-/

namespace A203533.P16580918302158118465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203526 (n + 1) : ℚ) / (A203524 (n + 1) : ℚ) * (A203530 (n + 1) : ℚ)

end

end A203533.P16580918302158118465

/-!
# A203535: Number of n X n 0..2 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A203535, there is no canonical definition to state claims against.
-/

/-! ## A203535.P18427450943504877127

`A203542(∑[4*n]+1)`
-/

namespace A203535.P18427450943504877127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203535.P18427450943504877127

/-! ## A203535.P12162699875342040931

`lcm(2, A203542(A001844(n)))`
-/

namespace A203535.P12162699875342040931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203542 (A001844 n).toNat)

end

end A203535.P12162699875342040931

/-! ## A203535.P4410870842996574112

`record[A003982(n)*A203542(n+1)]`
-/

namespace A203535.P4410870842996574112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A203542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203535.P4410870842996574112

/-! ## A203535.P16538814939436584853

`A203542(A001844(n))+A059995(n)`
-/

namespace A203535.P16538814939436584853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (A001844 n).toNat + A059995 n

end

end A203535.P16538814939436584853

/-! ## A203535.P11989100423425236949

`or(A203542(n+1), A203542(A001844(n)))`
-/

namespace A203535.P11989100423425236949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A203542 (n + 1)) (A203542 (A001844 n).toNat)

end

end A203535.P11989100423425236949

/-!
# A203536: Number of nX2 0..2 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A203536, the canonical program `A203536.P12822191672718964706` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203536 has offset 1).

The definition of A203536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203536.P12822191672718964706

`Δ[2*a(n-1)-a(n-4)]²` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A203536

/-- `Δ[2*a(n-1)-a(n-4)]²` -/
def P12822191672718964706.Spec : Prop :=
  ∀ n, P12822191672718964706.a n = A203536 (n + 1)

theorem P12822191672718964706.correct : P12822191672718964706.Spec := by
  intro n
  simp only [A203536, Nat.add_sub_cancel]

end A203536

/-! ## A203536.P11954260909955294943

`∑[a(n-1)+a(n-2)+a(n-3)]²` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A203536.P11954260909955294943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A203536.P11954260909955294943

namespace A203536

/-- `∑[a(n-1)+a(n-2)+a(n-3)]²` -/
def P11954260909955294943.Spec : Prop :=
  ∀ n, (P11954260909955294943.a n : ℤ) = A203536 (n + 1)

end A203536

/-! ## A203536.P12987676131054349966

`2*a(n-1)+3*a(n-2)+6*a(n-3)-a(n-4)-a(n-6)` with `a(0)=0, a(1)=4, a(2)=4, a(3)=16, a(4)=64, a(5)=196`
-/

namespace A203536.P12987676131054349966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 4, 16, 64, 196] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) + 6 * a (n - 3) - a (n - 4) - a (n - 6)

end

end A203536.P12987676131054349966

namespace A203536

/-- `2*a(n-1)+3*a(n-2)+6*a(n-3)-a(n-4)-a(n-6)` -/
def P12987676131054349966.Spec : Prop :=
  ∀ n, P12987676131054349966.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P10780535265668822388

`A354784(n+1)²`
-/

namespace A203536.P10780535265668822388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (n + 1) ^ 2

end

end A203536.P10780535265668822388

namespace A203536

/-- `A354784(n+1)²` -/
def P10780535265668822388.Spec : Prop :=
  ∀ n, P10780535265668822388.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P12729039753426437326

`Δ[4*A107239(n)]`
-/

namespace A203536.P12729039753426437326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A107239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203536.P12729039753426437326

namespace A203536

/-- `Δ[4*A107239(n)]` -/
def P12729039753426437326.Spec : Prop :=
  ∀ n, P12729039753426437326.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P3097555176149964144

`Δ[Δ[A047081(n)]]²`
-/

namespace A203536.P3097555176149964144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047081 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A203536.P3097555176149964144

namespace A203536

/-- `Δ[Δ[A047081(n)]]²` -/
def P3097555176149964144.Spec : Prop :=
  ∀ n, P3097555176149964144.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P3666036115779541575

`4*A085697(n+1)`
-/

namespace A203536.P3666036115779541575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A085697 (n + 1)

end

end A203536.P3666036115779541575

namespace A203536

/-- `4*A085697(n+1)` -/
def P3666036115779541575.Spec : Prop :=
  ∀ n, P3666036115779541575.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P1357601013381674813

`Δ[A000213(n+1)]²`
-/

namespace A203536.P1357601013381674813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A203536.P1357601013381674813

namespace A203536

/-- `Δ[A000213(n+1)]²` -/
def P1357601013381674813.Spec : Prop :=
  ∀ n, P1357601013381674813.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P9690732872048913336

`∑[2*A001590(n)]²`
-/

namespace A203536.P9690732872048913336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A203536.P9690732872048913336

namespace A203536

/-- `∑[2*A001590(n)]²` -/
def P9690732872048913336.Spec : Prop :=
  ∀ n, P9690732872048913336.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P15852630483104822046

`Δ[Δ[abs(A078042(n))]]²`
-/

namespace A203536.P15852630483104822046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078042 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A203536.P15852630483104822046

namespace A203536

/-- `Δ[Δ[abs(A078042(n))]]²` -/
def P15852630483104822046.Spec : Prop :=
  ∀ n, P15852630483104822046.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P16223803034894511584

`(2*A000073(n+1))²`
-/

namespace A203536.P16223803034894511584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000073 (n + 1)) ^ 2

end

end A203536.P16223803034894511584

namespace A203536

/-- `(2*A000073(n+1))²` -/
def P16223803034894511584.Spec : Prop :=
  ∀ n, P16223803034894511584.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P2786742160544205341

`Δ[2*∑[A000073(n)]]²`
-/

namespace A203536.P2786742160544205341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A203536.P2786742160544205341

namespace A203536

/-- `Δ[2*∑[A000073(n)]]²` -/
def P2786742160544205341.Spec : Prop :=
  ∀ n, P2786742160544205341.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P9256141295634775713

`Δ[2*A192804(n+1)]²`
-/

namespace A203536.P9256141295634775713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A203536.P9256141295634775713

namespace A203536

/-- `Δ[2*A192804(n+1)]²` -/
def P9256141295634775713.Spec : Prop :=
  ∀ n, P9256141295634775713.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P487410937394524314

`Δ[Δ[A213816(2*(n+1))]]²`
-/

namespace A203536.P487410937394524314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A203536.P487410937394524314

namespace A203536

/-- `Δ[Δ[A213816(2*(n+1))]]²` -/
def P487410937394524314.Spec : Prop :=
  ∀ n, P487410937394524314.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P2512195560702606013

`(A020992(n)+A000073(n))²`
-/

namespace A203536.P2512195560702606013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020992 n + A000073 n) ^ 2

end

end A203536.P2512195560702606013

namespace A203536

/-- `(A020992(n)+A000073(n))²` -/
def P2512195560702606013.Spec : Prop :=
  ∀ n, P2512195560702606013.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P13812077628736363368

`(A000213(n)-A214825(n))²`
-/

namespace A203536.P13812077628736363368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000213 n - A214825 n) ^ 2

end

end A203536.P13812077628736363368

namespace A203536

/-- `(A000213(n)-A214825(n))²` -/
def P13812077628736363368.Spec : Prop :=
  ∀ n, P13812077628736363368.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P3139008329542099048

`(A214727(n)-A214826(n))²`
-/

namespace A203536.P3139008329542099048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214727 n - A214826 n) ^ 2

end

end A203536.P3139008329542099048

namespace A203536

/-- `(A214727(n)-A214826(n))²` -/
def P3139008329542099048.Spec : Prop :=
  ∀ n, P3139008329542099048.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P15453088978404206927

`(A214825(n)-A214827(n))²`
-/

namespace A203536.P15453088978404206927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214825 n - A214827 n) ^ 2

end

end A203536.P15453088978404206927

namespace A203536

/-- `(A214825(n)-A214827(n))²` -/
def P15453088978404206927.Spec : Prop :=
  ∀ n, P15453088978404206927.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P167455724188436029

`(A214826(n)-A214828(n))²`
-/

namespace A203536.P167455724188436029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214826 n - A214828 n) ^ 2

end

end A203536.P167455724188436029

namespace A203536

/-- `(A214826(n)-A214828(n))²` -/
def P167455724188436029.Spec : Prop :=
  ∀ n, P167455724188436029.a n = A203536 (n + 1)

end A203536

/-! ## A203536.P14898056365180633616

`(A214827(n)-A214829(n))²`
-/

namespace A203536.P14898056365180633616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214827 n - A214829 n) ^ 2

end

end A203536.P14898056365180633616

namespace A203536

/-- `(A214827(n)-A214829(n))²` -/
def P14898056365180633616.Spec : Prop :=
  ∀ n, P14898056365180633616.a n = A203536 (n + 1)

end A203536

/-!
# A203537: Number of nX3 0..2 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A203537, there is no canonical definition to state claims against.
-/

/-! ## A203537.P3893403620483368628

`A203542(∑[n+2]+4)`
-/

namespace A203537.P3893403620483368628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203537.P3893403620483368628

/-! ## A203537.P4252023163906484826

`lcm(2, A203542(A167614(n+1)))`
-/

namespace A203537.P4252023163906484826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203542 (A167614 (n + 1)).toNat)

end

end A203537.P4252023163906484826

/-! ## A203537.P2694807660680913515

`A256974(n)+A203542(A167614(n+1))`
-/

namespace A203537.P2694807660680913515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A203542 (A167614 (n + 1)).toNat

end

end A203537.P2694807660680913515

/-! ## A203537.P1716298449234408485

`A203542(A167614(n+1))%A002432(n)`
-/

namespace A203537.P1716298449234408485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203542 (A167614 (n + 1)).toNat) (A002432 n)

end

end A203537.P1716298449234408485

/-! ## A203537.P9202944767660409839

`A203542(A167614(n+1))+A141097(n+1)`
-/

namespace A203537.P9202944767660409839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (A167614 (n + 1)).toNat + A141097 (n + 1)

end

end A203537.P9202944767660409839

/-!
# A203538: Number of nX4 0..2 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A203538, there is no canonical definition to state claims against.
-/

/-! ## A203538.P13986234867652285786

`A203542(A141214(n)+7)`
-/

namespace A203538.P13986234867652285786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (A141214 n + 7).toNat

end

end A203538.P13986234867652285786

/-! ## A203538.P15045320370301388182

`A203542(A167614(n+2)+1)`
-/

namespace A203538.P15045320370301388182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (A167614 (n + 2) + 1).toNat

end

end A203538.P15045320370301388182

/-! ## A203538.P7356246709392617385

`A203542(Δ[A023545(n+1)-n²])`
-/

namespace A203538.P7356246709392617385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (f1 (n + 1) - f1 n).toNat

end

end A203538.P7356246709392617385

/-! ## A203538.P10302059826629865982

`A203542(A027379(n+3)-2*(n+1))`
-/

namespace A203538.P10302059826629865982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (A027379 (n + 3) - (2 * (n + 1) : ℤ)).toNat

end

end A203538.P10302059826629865982

/-! ## A203538.P16430461238817914875

`A203542(A374004(n+1))`
-/

namespace A203538.P16430461238817914875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (A374004 (n + 1)).toNat

end

end A203538.P16430461238817914875

/-!
# A203539: Number of n X 5 0..2 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A203539, there is no canonical definition to state claims against.
-/

/-! ## A203539.P5644848505813337104

`A203542(char[A025581(n)]*A167499(n+3))`
-/

namespace A203539.P5644848505813337104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A167499 (n + 3)).toNat

end

end A203539.P5644848505813337104

/-! ## A203539.P14027602296103328756

`A203542(A374005(n+1))`
-/

namespace A203539.P14027602296103328756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (A374005 (n + 1)).toNat

end

end A203539.P14027602296103328756

/-! ## A203539.P14091472516835776717

`A203542(eq[3, A152157(n)])`
-/

namespace A203539.P14091472516835776717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203539.P14091472516835776717

/-! ## A203539.P10141789188057907530

`A203542(eq[4, A193592(n)])`
-/

namespace A203539.P10141789188057907530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203539.P10141789188057907530

/-! ## A203539.P8781631555157494790

`A203542(Δ[A023545(n+1)])`
-/

namespace A203539.P8781631555157494790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (f1 (n + 1) - f1 n).toNat

end

end A203539.P8781631555157494790

/-!
# A203540: Number of nX6 0..2 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A203540, there is no canonical definition to state claims against.
-/

/-! ## A203540.P14387086600716860596

`A203542(A374007(n+1))`
-/

namespace A203540.P14387086600716860596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (A374007 (n + 1)).toNat

end

end A203540.P14387086600716860596

/-! ## A203540.P10180509535080837909

`A203542(eq[5, A152157(n)])`
-/

namespace A203540.P10180509535080837909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203540.P10180509535080837909

/-! ## A203540.P6340345809063055861

`A203542(eq[5, A193592(n)])`
-/

namespace A203540.P6340345809063055861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203540.P6340345809063055861

/-! ## A203540.P8301369842075729989

`A203542(eq[8, A185782(n+1)])`
-/

namespace A203540.P8301369842075729989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203540.P8301369842075729989

/-! ## A203540.P259424044859700240

`A203542(eq[16, A057728(n+1)])`
-/

namespace A203540.P259424044859700240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203540.P259424044859700240

/-!
# A203541: Number of nX7 0..2 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A203541, there is no canonical definition to state claims against.
-/

/-! ## A203541.P16476173483236645048

`A203542(A000217(n+6)+7)`
-/

namespace A203541.P16476173483236645048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (A000217 (n + 6) + 7).toNat

end

end A203541.P16476173483236645048

/-! ## A203541.P10624119520441909405

`A203542(A152947(n+8)+6)`
-/

namespace A203541.P10624119520441909405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (A152947 (n + 8) + 6).toNat

end

end A203541.P10624119520441909405

/-! ## A203541.P1775572572599123240

`A203542(A374008(n+1))`
-/

namespace A203541.P1775572572599123240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (A374008 (n + 1)).toNat

end

end A203541.P1775572572599123240

/-! ## A203541.P9497906094629725072

`A203542(eq[6, A193592(n)])`
-/

namespace A203541.P9497906094629725072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203541.P9497906094629725072

/-! ## A203541.P2880228965432039916

`A203542(eq[7, A152157(n)])`
-/

namespace A203541.P2880228965432039916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203541.P2880228965432039916

/-!
# A203542: T(n,k)=Number of nXk 0..2 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A203542, there is no canonical definition to state claims against.
-/

/-! ## A203542.P15832441849847225537

`A268079(n+1)*A278290(A022166(n))`
-/

namespace A203542.P15832441849847225537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (n + 1) * A278290 (A022166 n).toNat

end

end A203542.P15832441849847225537

/-! ## A203542.P7328445884629050718

`and(A143007(n), A323030(n+1))`
-/

namespace A203542.P7328445884629050718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143007 n) (A323030 (n + 1))

end

end A203542.P7328445884629050718

/-! ## A203542.P7300049020386395944

`A091570(A034386(n))%A154336(n)`
-/

namespace A203542.P7300049020386395944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091570 (A034386 n).toNat) (A154336 n)

end

end A203542.P7300049020386395944

/-! ## A203542.P2007984588792204266

`and(A143007(n), A215815(A076571(n)))`
-/

namespace A203542.P2007984588792204266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143007 n) (A215815 (A076571 n).toNat)

end

end A203542.P2007984588792204266

/-! ## A203542.P14658030818393615258

`and(A143007(n), A185382(A185351(n+4)))`
-/

namespace A203542.P14658030818393615258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143007 n) (A185382 (A185351 (n + 4)).toNat)

end

end A203542.P14658030818393615258

/-!
# A203543: Number of n X n 0..4 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203543, there is no canonical definition to state claims against.
-/

/-! ## A203543.P4102506885819460324

`A203550(∑[4*n]+1)`
-/

namespace A203543.P4102506885819460324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203543.P4102506885819460324

/-! ## A203543.P6106348934104652549

`record[gcd(A114327(n), A203550(n+1))]`
-/

namespace A203543.P6106348934104652549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A203550 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203543.P6106348934104652549

/-!
# A203544: Number of nX2 0..4 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203544, there is no canonical definition to state claims against.
-/

/-! ## A203544.P6674431622413902492

`record[ratio[A203550(n+1)]]`
-/

namespace A203544.P6674431622413902492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203544.P6674431622413902492

/-! ## A203544.P6262624630796308270

`A203550(∑[n+1]+2)`
-/

namespace A203544.P6262624630796308270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203544.P6262624630796308270

/-! ## A203544.P4298032305186800156

`record[A203550(A252460(n+1))]`
-/

namespace A203544.P4298032305186800156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (A252460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203544.P4298032305186800156

/-! ## A203544.P1012143346586468849

`record[A203550(A255128(n+1))]`
-/

namespace A203544.P1012143346586468849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (A255128 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203544.P1012143346586468849

/-! ## A203544.P10271113727885171517

`record[gcd(A203550(n+2), A341279(n))]`
-/

namespace A203544.P10271113727885171517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A203550 (n + 2)) (A341279 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203544.P10271113727885171517

/-!
# A203545: Number of nX3 0..4 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203545, there is no canonical definition to state claims against.
-/

/-! ## A203545.P16362833852117453188

`A203550(∑[n+2]+4)`
-/

namespace A203545.P16362833852117453188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203545.P16362833852117453188

/-! ## A203545.P2190105784848326155

`record[A203550(A252460(2*n+1)+2)]`
-/

namespace A203545.P2190105784848326155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (A252460 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203545.P2190105784848326155

/-! ## A203545.P9173164911166080372

`record[A203550(A255128(2*n+1)+2)]`
-/

namespace A203545.P9173164911166080372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (A255128 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203545.P9173164911166080372

/-! ## A203545.P17790183436925921183

`A025451(n)*A203550(A167614(n+1))`
-/

namespace A203545.P17790183436925921183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n * A203550 (A167614 (n + 1)).toNat

end

end A203545.P17790183436925921183

/-! ## A203545.P9415168525861108219

`gcd(A000038(n), A203550(A167614(n+1)))`
-/

namespace A203545.P9415168525861108219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A203550 (A167614 (n + 1)).toNat)

end

end A203545.P9415168525861108219

/-!
# A203546: Number of n X 4 0..4 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203546, there is no canonical definition to state claims against.
-/

/-! ## A203546.P5909330664533909888

`A203550(A141214(n)+7)`
-/

namespace A203546.P5909330664533909888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (A141214 n + 7).toNat

end

end A203546.P5909330664533909888

/-! ## A203546.P9823506462237701833

`A203550(A052905(n)+9)`
-/

namespace A203546.P9823506462237701833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (A052905 n + 9).toNat

end

end A203546.P9823506462237701833

/-! ## A203546.P12530107461926138250

`A203550(A055999(n)+10)`
-/

namespace A203546.P12530107461926138250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (A055999 n + 10).toNat

end

end A203546.P12530107461926138250

/-! ## A203546.P956507470150491907

`A203550(A167614(n+2)+1)`
-/

namespace A203546.P956507470150491907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (A167614 (n + 2) + 1).toNat

end

end A203546.P956507470150491907

/-! ## A203546.P1987731989341727256

`A203550(A055998(n+1)+7)`
-/

namespace A203546.P1987731989341727256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (A055998 (n + 1) + 7).toNat

end

end A203546.P1987731989341727256

/-!
# A203547: Number of nX5 0..4 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203547, there is no canonical definition to state claims against.
-/

/-! ## A203547.P12209550868094744797

`A203550(A374005(n+1))`
-/

namespace A203547.P12209550868094744797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (A374005 (n + 1)).toNat

end

end A203547.P12209550868094744797

/-! ## A203547.P16503810808607105554

`A203550(eq[5, A195079(n+1)])`
-/

namespace A203547.P16503810808607105554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203547.P16503810808607105554

/-!
# A203549: 

The programs for A203549, there is no canonical definition to state claims against.
-/

/-! ## A203549.P7476471779422259810

`A203550(eq[4, A219347(n)])`
-/

namespace A203549.P7476471779422259810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203549.P7476471779422259810

/-!
# A203550: T(n,k)=Number of nXk 0..4 arrays with every nonzero element less than or equal to some NW, E or S neighbor.

The programs for A203550, there is no canonical definition to state claims against.
-/

/-! ## A203550.P11794623660293765704

`A021704(A006613(n+3)%A076831(n))`
-/

namespace A203550.P11794623660293765704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021704 (Int.tmod (A006613 (n + 3)) (A076831 n)).toNat

end

end A203550.P11794623660293765704

/-! ## A203550.P1774518148416516625

`A150519(A305175(n+1)%A107649(n+1))`
-/

namespace A203550.P1774518148416516625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150519 (Int.tmod (A305175 (n + 1)) (A107649 (n + 1))).toNat

end

end A203550.P1774518148416516625

/-! ## A203550.P4799259788601835072

`A150519(A316686(n+1)%A107649(n+1))`
-/

namespace A203550.P4799259788601835072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150519 (Int.tmod (A316686 (n + 1)) (A107649 (n + 1))).toNat

end

end A203550.P4799259788601835072

/-! ## A203550.P3990955899431675456

`A150519(A305175(n+1))%A201100(n+1)`
-/

namespace A203550.P3990955899431675456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150519 (A305175 (n + 1)).toNat) (A201100 (n + 1))

end

end A203550.P3990955899431675456

/-! ## A203550.P15554306287879223860

`A150519(A316686(n+1))%A201100(n+1)`
-/

namespace A203550.P15554306287879223860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150519 (A316686 (n + 1)).toNat) (A201100 (n + 1))

end

end A203550.P15554306287879223860

/-!
# A203551: a(n) = n*(5n^2 + 3n + 4) / 6.

The programs for A203551, the canonical program `A203551.P3489912044440424967` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203551 has offset 0).

The definition of A203551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203551.P3489912044440424967

`n*(5*n²+3*n+4)/6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A203551

/-- `n*(5*n²+3*n+4)/6` -/
def P3489912044440424967.Spec : Prop :=
  ∀ n, P3489912044440424967.a n = (A203551 n : ℚ)

end A203551

/-! ## A203551.P18339264612363234186

`n^3-C(n, 3)+n`
-/

namespace A203551.P18339264612363234186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.choose n 3 : ℤ) + (n : ℤ)

end

end A203551.P18339264612363234186

namespace A203551

/-- `n^3-C(n, 3)+n` -/
def P18339264612363234186.Spec : Prop :=
  ∀ n, P18339264612363234186.a n = A203551 n

end A203551

/-! ## A203551.P2022756632816679661

`n^3-(C(n, 3)-n)`
-/

namespace A203551.P2022756632816679661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ((Nat.choose n 3 : ℤ) - (n : ℤ))

end

end A203551.P2022756632816679661

namespace A203551

/-- `n^3-(C(n, 3)-n)` -/
def P2022756632816679661.Spec : Prop :=
  ∀ n, P2022756632816679661.a n = A203551 n

end A203551

/-! ## A203551.P7987793515573757617

`∑[2*n²]+C(n, 3)`
-/

namespace A203551.P7987793515573757617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 3

end

end A203551.P7987793515573757617

namespace A203551

/-- `∑[2*n²]+C(n, 3)` -/
def P7987793515573757617.Spec : Prop :=
  ∀ n, (P7987793515573757617.a n : ℤ) = A203551 n

end A203551

/-! ## A203551.P16806685763538367300

`∑[5*C(n, 2)+n]+n`
-/

namespace A203551.P16806685763538367300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose n 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A203551.P16806685763538367300

namespace A203551

/-- `∑[5*C(n, 2)+n]+n` -/
def P16806685763538367300.Spec : Prop :=
  ∀ n, (P16806685763538367300.a n : ℤ) = A203551 n

end A203551

/-! ## A203551.P14560271296985686531

`∑[∑[record[n*gcd(2, n)]+n]]`
-/

namespace A203551.P14560271296985686531
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203551.P14560271296985686531

namespace A203551

/-- `∑[∑[record[n*gcd(2, n)]+n]]` -/
def P14560271296985686531.Spec : Prop :=
  ∀ n, (P14560271296985686531.a n : ℤ) = A203551 n

end A203551

/-! ## A203551.P11008311109238206878

`∑[∑[a(n-1)+5]]` with `a(0)=0, a(1)=2, a(2)=6`
-/

namespace A203551.P11008311109238206878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 6] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203551.P11008311109238206878

namespace A203551

/-- `∑[∑[a(n-1)+5]]` -/
def P11008311109238206878.Spec : Prop :=
  ∀ n, (P11008311109238206878.a n : ℤ) = A203551 n

end A203551

/-! ## A203551.P6710657530589742123

`∑[5*n-(4-a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A203551.P6710657530589742123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  (5 * n : ℤ) - (4 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203551.P6710657530589742123

namespace A203551

/-- `∑[5*n-(4-a(n-1))]` -/
def P6710657530589742123.Spec : Prop :=
  ∀ n, P6710657530589742123.a n = A203551 n

end A203551

/-! ## A203551.P5620828471502107461

`n+A002413(n)`
-/

namespace A203551.P5620828471502107461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A002413 n

end

end A203551.P5620828471502107461

namespace A203551

/-- `n+A002413(n)` -/
def P5620828471502107461.Spec : Prop :=
  ∀ n, P5620828471502107461.a n = A203551 n

end A203551

/-! ## A203551.P13550972061976221257

`∑[A192136(n)]-1`
-/

namespace A203551.P13550972061976221257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A203551.P13550972061976221257

namespace A203551

/-- `∑[A192136(n)]-1` -/
def P13550972061976221257.Spec : Prop :=
  ∀ n, P13550972061976221257.a n = A203551 n

end A203551

/-! ## A203551.P12314984824051191394

`A203552(n)+n²`
-/

namespace A203551.P12314984824051191394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 n + (n ^ 2 : ℤ)

end

end A203551.P12314984824051191394

namespace A203551

/-- `A203552(n)+n²` -/
def P12314984824051191394.Spec : Prop :=
  ∀ n, P12314984824051191394.a n = A203551 n

end A203551

/-! ## A203551.P15139799218845120536

`A162147(n)-n²`
-/

namespace A203551.P15139799218845120536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162147 n - (n ^ 2 : ℤ)

end

end A203551.P15139799218845120536

namespace A203551

/-- `A162147(n)-n²` -/
def P15139799218845120536.Spec : Prop :=
  ∀ n, P15139799218845120536.a n = A203551 n

end A203551

/-! ## A203551.P8670635666172042668

`∑[A000566(n)]+n`
-/

namespace A203551.P8670635666172042668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A203551.P8670635666172042668

namespace A203551

/-- `∑[A000566(n)]+n` -/
def P8670635666172042668.Spec : Prop :=
  ∀ n, P8670635666172042668.a n = A203551 n

end A203551

/-! ## A203551.P6100426507830505603

`A004068(n)+∑[n]`
-/

namespace A203551.P6100426507830505603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A203551.P6100426507830505603

namespace A203551

/-- `A004068(n)+∑[n]` -/
def P6100426507830505603.Spec : Prop :=
  ∀ n, P6100426507830505603.a n = A203551 n

end A203551

/-! ## A203551.P6300338914172704016

`A006003(n)+∑[n²]`
-/

namespace A203551.P6300338914172704016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A203551.P6300338914172704016

namespace A203551

/-- `A006003(n)+∑[n²]` -/
def P6300338914172704016.Spec : Prop :=
  ∀ n, P6300338914172704016.a n = A203551 n

end A203551

/-! ## A203551.P4430909461378664774

`∑[A005475(n)]-n²`
-/

namespace A203551.P4430909461378664774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A203551.P4430909461378664774

namespace A203551

/-- `∑[A005475(n)]-n²` -/
def P4430909461378664774.Spec : Prop :=
  ∀ n, P4430909461378664774.a n = A203551 n

end A203551

/-! ## A203551.P16737516184549495066

`A101165(n)-∑[n²]`
-/

namespace A203551.P16737516184549495066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101165 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A203551.P16737516184549495066

namespace A203551

/-- `A101165(n)-∑[n²]` -/
def P16737516184549495066.Spec : Prop :=
  ∀ n, P16737516184549495066.a n = A203551 n

end A203551

/-! ## A203551.P1334351091475348611

`∑[A005918(n)-∑[n+1]]`
-/

namespace A203551.P1334351091475348611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203551.P1334351091475348611

namespace A203551

/-- `∑[A005918(n)-∑[n+1]]` -/
def P1334351091475348611.Spec : Prop :=
  ∀ n, P1334351091475348611.a n = A203551 n

end A203551

/-! ## A203551.P12103103984592431438

`A005900(n)+A000292(n)`
-/

namespace A203551.P12103103984592431438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n + A000292 n

end

end A203551.P12103103984592431438

namespace A203551

/-- `A005900(n)+A000292(n)` -/
def P12103103984592431438.Spec : Prop :=
  ∀ n, P12103103984592431438.a n = A203551 n

end A203551

/-! ## A203551.P7092683259113872595

`A004006(n)+A002412(n)`
-/

namespace A203551.P7092683259113872595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + A002412 n

end

end A203551.P7092683259113872595

namespace A203551

/-- `A004006(n)+A002412(n)` -/
def P7092683259113872595.Spec : Prop :=
  ∀ n, P7092683259113872595.a n = A203551 n

end A203551

/-!
# A203552: a(n) = n*(5*n^2 - 3*n + 4) / 6.

The programs for A203552, the canonical program `A203552.P4562677630354076209` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203552 has offset 0).

The definition of A203552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203552.P3149525194864162765

`n*(5*n²-3*n+4)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203552.P3149525194864162765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((5 * n ^ 2 : ℤ) - (3 * n : ℤ) + 4 : ℚ) / 6)

end

end A203552.P3149525194864162765

namespace A203552

/-- `n*(5*n²-3*n+4)/6` -/
def P3149525194864162765.Spec : Prop :=
  ∀ n, P3149525194864162765.a n = (A203552 n : ℚ)

end A203552

/-! ## A203552.P4562677630354076209

`4*A000125(n)+2*A000125(n+1)-A000125(n+3)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A203552

/-- `4*A000125(n)+2*A000125(n+1)-A000125(n+3)` -/
def P4562677630354076209.Spec : Prop :=
  ∀ n, P4562677630354076209.a n = A203552 n

theorem P4562677630354076209.correct : P4562677630354076209.Spec := by
  intro n
  simp only [A203552]

end A203552

/-! ## A203552.P18107926483773349241

`∑[∑[a(n-1)+5]]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A203552.P18107926483773349241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203552.P18107926483773349241

namespace A203552

/-- `∑[∑[a(n-1)+5]]` -/
def P18107926483773349241.Spec : Prop :=
  ∀ n, (P18107926483773349241.a n : ℤ) = A203552 n

end A203552

/-! ## A203552.P14559391547771103375

`∑[n²]+(n-1)*C(n, 2)`
-/

namespace A203552.P14559391547771103375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1) * (Nat.choose n 2 : ℤ)

end

end A203552.P14559391547771103375

namespace A203552

/-- `∑[n²]+(n-1)*C(n, 2)` -/
def P14559391547771103375.Spec : Prop :=
  ∀ n, P14559391547771103375.a n = A203552 n

end A203552

/-! ## A203552.P14139171260351831752

`∑[∑[ogf((x+2x^2+2x^3)/(1-2x+x^2))]]`
-/

namespace A203552.P14139171260351831752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203552.P14139171260351831752

namespace A203552

/-- `∑[∑[ogf((x+2x^2+2x^3)/(1-2x+x^2))]]` -/
def P14139171260351831752.Spec : Prop :=
  ∀ n, P14139171260351831752.a n = A203552 n

end A203552

/-! ## A203552.P5751009372307306561

`A203551(n)-n²`
-/

namespace A203552.P5751009372307306561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203551 n - (n ^ 2 : ℤ)

end

end A203552.P5751009372307306561

namespace A203552

/-- `A203551(n)-n²` -/
def P5751009372307306561.Spec : Prop :=
  ∀ n, P5751009372307306561.a n = A203552 n

end A203552

/-! ## A203552.P8798502000434271101

`n^3-A005581(n)`
-/

namespace A203552.P8798502000434271101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A005581 n

end

end A203552.P8798502000434271101

namespace A203552

/-- `n^3-A005581(n)` -/
def P8798502000434271101.Spec : Prop :=
  ∀ n, P8798502000434271101.a n = A203552 n

end A203552

/-! ## A203552.P14779541669908709567

`∑[∑[A135042(n)-1]]`
-/

namespace A203552.P14779541669908709567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203552.P14779541669908709567

namespace A203552

/-- `∑[∑[A135042(n)-1]]` -/
def P14779541669908709567.Spec : Prop :=
  ∀ n, P14779541669908709567.a n = A203552 n

end A203552

/-! ## A203552.P730833623093535790

`(A346636(n)+n)/(n+1)`
-/

namespace A203552.P730833623093535790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346636 n + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A203552.P730833623093535790

namespace A203552

/-- `(A346636(n)+n)/(n+1)` -/
def P730833623093535790.Spec : Prop :=
  ∀ n, P730833623093535790.a n = (A203552 n : ℚ)

end A203552

/-! ## A203552.P11473451820780466899

`abs(A000292(n)-n*n²-n)`
-/

namespace A203552.P11473451820780466899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000292 n - (n * n ^ 2 : ℤ) - (n : ℤ)|

end

end A203552.P11473451820780466899

namespace A203552

/-- `abs(A000292(n)-n*n²-n)` -/
def P11473451820780466899.Spec : Prop :=
  ∀ n, P11473451820780466899.a n = A203552 n

end A203552

/-! ## A203552.P3179989564463518783

`A007290(n)+A002411(n)`
-/

namespace A203552.P3179989564463518783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + A002411 n

end

end A203552.P3179989564463518783

namespace A203552

/-- `A007290(n)+A002411(n)` -/
def P3179989564463518783.Spec : Prop :=
  ∀ n, P3179989564463518783.a n = A203552 n

end A203552

/-! ## A203552.P17439137198763171840

`A109620(n)+A064808(n)`
-/

namespace A203552.P17439137198763171840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109620 n + A064808 n

end

end A203552.P17439137198763171840

namespace A203552

/-- `A109620(n)+A064808(n)` -/
def P17439137198763171840.Spec : Prop :=
  ∀ n, P17439137198763171840.a n = A203552 n

end A203552

/-! ## A203552.P4001867096300409183

`A034262(n)-A000292(n)`
-/

namespace A203552.P4001867096300409183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n - A000292 n

end

end A203552.P4001867096300409183

namespace A203552

/-- `A034262(n)-A000292(n)` -/
def P4001867096300409183.Spec : Prop :=
  ∀ n, P4001867096300409183.a n = A203552 n

end A203552

/-! ## A203552.P7645971947577090802

`A035597(n)-A002411(n)`
-/

namespace A203552.P7645971947577090802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 n - A002411 n

end

end A203552.P7645971947577090802

namespace A203552

/-- `A035597(n)-A002411(n)` -/
def P7645971947577090802.Spec : Prop :=
  ∀ n, P7645971947577090802.a n = A203552 n

end A203552

/-! ## A203552.P9619726449526120171

`A033431(n)-A007584(n)`
-/

namespace A203552.P9619726449526120171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - A007584 n

end

end A203552.P9619726449526120171

namespace A203552

/-- `A033431(n)-A007584(n)` -/
def P9619726449526120171.Spec : Prop :=
  ∀ n, P9619726449526120171.a n = A203552 n

end A203552

/-! ## A203552.P15868452508999125440

`A004126(n)-A051925(n)`
-/

namespace A203552.P15868452508999125440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004126 n - A051925 n

end

end A203552.P15868452508999125440

namespace A203552

/-- `A004126(n)-A051925(n)` -/
def P15868452508999125440.Spec : Prop :=
  ∀ n, P15868452508999125440.a n = A203552 n

end A203552

/-! ## A203552.P1717288542967647204

`A059924(n)-A036486(n)`
-/

namespace A203552.P1717288542967647204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059924 n - A036486 n

end

end A203552.P1717288542967647204

namespace A203552

/-- `A059924(n)-A036486(n)` -/
def P1717288542967647204.Spec : Prop :=
  ∀ n, P1717288542967647204.a n = A203552 n

end A203552

/-! ## A203552.P9629321878980279220

`A100705(n)-A027378(n)`
-/

namespace A203552.P9629321878980279220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100705 n - A027378 n

end

end A203552.P9629321878980279220

namespace A203552

/-- `A100705(n)-A027378(n)` -/
def P9629321878980279220.Spec : Prop :=
  ∀ n, P9629321878980279220.a n = A203552 n

end A203552

/-! ## A203552.P14478009952803189506

`A092185(n)-A045944(n)`
-/

namespace A203552.P14478009952803189506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092185 n - A045944 n

end

end A203552.P14478009952803189506

namespace A203552

/-- `A092185(n)-A045944(n)` -/
def P14478009952803189506.Spec : Prop :=
  ∀ n, P14478009952803189506.a n = A203552 n

end A203552

/-! ## A203552.P15187255769885756613

`A162147(n)-A001105(n)`
-/

namespace A203552.P15187255769885756613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162147 n - A001105 n

end

end A203552.P15187255769885756613

namespace A203552

/-- `A162147(n)-A001105(n)` -/
def P15187255769885756613.Spec : Prop :=
  ∀ n, P15187255769885756613.a n = A203552 n

end A203552

/-!
# A203553: Lodumo_2 of A118175, which is n 1's followed by n 0's.

The programs for A203553, the canonical program `A203553.P6403346514830057154` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203553 has offset 0).

The definition of A203553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203553.P1410986785650256283

`comp[n²]+n-∑[char[n²]]²`
-/

namespace A203553.P1410986785650256283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A203553.P1410986785650256283

namespace A203553

/-- `comp[n²]+n-∑[char[n²]]²` -/
def P1410986785650256283.Spec : Prop :=
  ∀ n, P1410986785650256283.a n = A203553 n

end A203553

/-! ## A203553.P6934135976876186231

`xor(1, A203554(n))`
-/

namespace A203553.P6934135976876186231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A203554 n)

end

end A203553.P6934135976876186231

namespace A203553

/-- `xor(1, A203554(n))` -/
def P6934135976876186231.Spec : Prop :=
  ∀ n, P6934135976876186231.a n = A203553 n

end A203553

/-! ## A203553.P5757713508463603225

`abs(comp[n²]-A080883(n))`
-/

namespace A203553.P5757713508463603225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A080883 n|

end

end A203553.P5757713508463603225

namespace A203553

/-- `abs(comp[n²]-A080883(n))` -/
def P5757713508463603225.Spec : Prop :=
  ∀ n, P5757713508463603225.a n = A203553 n

end A203553

/-! ## A203553.P1011684086934266764

`abs(A000037(n+1)-(∑[char[n²]]²-n))`
-/

namespace A203553.P1011684086934266764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000037 (n + 1) - ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))|

end

end A203553.P1011684086934266764

namespace A203553

/-- `abs(A000037(n+1)-(∑[char[n²]]²-n))` -/
def P1011684086934266764.Spec : Prop :=
  ∀ n, P1011684086934266764.a n = A203553 n

end A203553

/-! ## A203553.P6403346514830057154

`xor(1, A094761(n)-A259361(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A203553

/-- `xor(1, A094761(n)-A259361(n))` -/
def P6403346514830057154.Spec : Prop :=
  ∀ n, P6403346514830057154.a n = A203553 n

theorem P6403346514830057154.correct : P6403346514830057154.Spec := by
  intro n
  simp only [A203553]

end A203553

/-! ## A203553.P8713898853938617958

`abs(A080883(n)-A000037(n+1))`
-/

namespace A203553.P8713898853938617958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080883 n - A000037 (n + 1)|

end

end A203553.P8713898853938617958

namespace A203553

/-- `abs(A080883(n)-A000037(n+1))` -/
def P8713898853938617958.Spec : Prop :=
  ∀ n, P8713898853938617958.a n = A203553 n

end A203553

/-! ## A203553.P11284769255956428591

`(comp[n²]-A080883(n))%A000040(n+1)`
-/

namespace A203553.P11284769255956428591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A080883 n) (A000040 (n + 1))

end

end A203553.P11284769255956428591

namespace A203553

/-- `(comp[n²]-A080883(n))%A000040(n+1)` -/
def P11284769255956428591.Spec : Prop :=
  ∀ n, P11284769255956428591.a n = A203553 n

end A203553

/-! ## A203553.P9590452627986205921

`(A008683(9*(n+1))+1)*(comp[n²]-A080883(n))`
-/

namespace A203553.P9590452627986205921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (9 * (n + 1)) + 1) * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A080883 n)

end

end A203553.P9590452627986205921

namespace A203553

/-- `(A008683(9*(n+1))+1)*(comp[n²]-A080883(n))` -/
def P9590452627986205921.Spec : Prop :=
  ∀ n, P9590452627986205921.a n = A203553 n

end A203553

/-! ## A203553.P11893819473610258817

`A004442(A203554(n))`
-/

namespace A203553.P11893819473610258817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A203554 n).toNat

end

end A203553.P11893819473610258817

namespace A203553

/-- `A004442(A203554(n))` -/
def P11893819473610258817.Spec : Prop :=
  ∀ n, P11893819473610258817.a n = A203553 n

end A203553

/-! ## A203553.P12419287185582240068

`xor(1, A028391(1-floor(sqrt(n))²+n+n))`
-/

namespace A203553.P12419287185582240068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A028391 (1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ) + (n : ℤ)).toNat)

end

end A203553.P12419287185582240068

namespace A203553

/-- `xor(1, A028391(1-floor(sqrt(n))²+n+n))` -/
def P12419287185582240068.Spec : Prop :=
  ∀ n, P12419287185582240068.a n = A203553 n

end A203553

/-! ## A203553.P14709701736011894895

`A004442(A028391(1-floor(sqrt(n))²+n+n))`
-/

namespace A203553.P14709701736011894895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A028391 (1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ) + (n : ℤ)).toNat).toNat

end

end A203553.P14709701736011894895

namespace A203553

/-- `A004442(A028391(1-floor(sqrt(n))²+n+n))` -/
def P14709701736011894895.Spec : Prop :=
  ∀ n, P14709701736011894895.a n = A203553 n

end A203553

/-! ## A203553.P10509851586389202682

`(comp[n²]-A080883(n))*A014963(∑[n+1])`
-/

namespace A203553.P10509851586389202682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A080883 n) * A014963 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A203553.P10509851586389202682

namespace A203553

/-- `(comp[n²]-A080883(n))*A014963(∑[n+1])` -/
def P10509851586389202682.Spec : Prop :=
  ∀ n, P10509851586389202682.a n = A203553 n

end A203553

/-!
# A203554: Lodumo_2 of A079813, which is n 0's followed by n 1's.

The programs for A203554, the canonical program `A203554.P1633143920349780261` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203554 has offset 0).

The definition of A203554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203554.P4435294303131175719

`xor(1, comp[n²]+n-∑[char[n²]]²)`
-/

namespace A203554.P4435294303131175719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ))

end

end A203554.P4435294303131175719

namespace A203554

/-- `xor(1, comp[n²]+n-∑[char[n²]]²)` -/
def P4435294303131175719.Spec : Prop :=
  ∀ n, P4435294303131175719.a n = A203554 n

end A203554

/-! ## A203554.P14772954690232992226

`comp[comp[n²+n]+n]-floor(sqrt(n))²`
-/

namespace A203554.P14772954690232992226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)

end

end A203554.P14772954690232992226

namespace A203554

/-- `comp[comp[n²+n]+n]-floor(sqrt(n))²` -/
def P14772954690232992226.Spec : Prop :=
  ∀ n, P14772954690232992226.a n = A203554 n

end A203554

/-! ## A203554.P10081079730059413087

`abs(xor(1, comp[n²]-A080883(n)))`
-/

namespace A203554.P10081079730059413087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A080883 n)|

end

end A203554.P10081079730059413087

namespace A203554

/-- `abs(xor(1, comp[n²]-A080883(n)))` -/
def P10081079730059413087.Spec : Prop :=
  ∀ n, P10081079730059413087.a n = A203554 n

end A203554

/-! ## A203554.P12239650249177170237

`round(sqrt((2*n-(n-A196199(n)))²+n))`
-/

namespace A203554.P12239650249177170237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((2 * n : ℤ) - ((n : ℤ) - A196199 n)) ^ 2 + (n : ℤ) : ℝ))

end

end A203554.P12239650249177170237

namespace A203554

/-- `round(sqrt((2*n-(n-A196199(n)))²+n))` -/
def P12239650249177170237.Spec : Prop :=
  ∀ n, P12239650249177170237.a n = A203554 n

end A203554

/-! ## A203554.P1633143920349780261

`abs(A094761(n)-A259361(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A203554

/-- `abs(A094761(n)-A259361(n))` -/
def P1633143920349780261.Spec : Prop :=
  ∀ n, P1633143920349780261.a n = A203554 n

theorem P1633143920349780261.correct : P1633143920349780261.Spec := by
  intro n
  simp only [A203554]

end A203554

/-! ## A203554.P2840491100210803929

`A004442(comp[n²]-(∑[char[n²]]²-n))`
-/

namespace A203554.P2840491100210803929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A203554.P2840491100210803929

namespace A203554

/-- `A004442(comp[n²]-(∑[char[n²]]²-n))` -/
def P2840491100210803929.Spec : Prop :=
  ∀ n, P2840491100210803929.a n = A203554 n

end A203554

/-! ## A203554.P7198806819609816876

`A160017(A143579(A203553(n)))`
-/

namespace A203554.P7198806819609816876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 (A143579 (A203553 n).toNat).toNat

end

end A203554.P7198806819609816876

namespace A203554

/-- `A160017(A143579(A203553(n)))` -/
def P7198806819609816876.Spec : Prop :=
  ∀ n, P7198806819609816876.a n = A203554 n

end A203554

/-! ## A203554.P5367273110197357351

`A028391(Δ[n²]-floor(sqrt(n))²)`
-/

namespace A203554.P5367273110197357351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)).toNat

end

end A203554.P5367273110197357351

namespace A203554

/-- `A028391(Δ[n²]-floor(sqrt(n))²)` -/
def P5367273110197357351.Spec : Prop :=
  ∀ n, P5367273110197357351.a n = A203554 n

end A203554

/-!
# A203556: a(n) = sigma(n^5).

The programs for A203556, the canonical program `A203556.P3775059724317152511` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203556 has offset 1).

The definition of A203556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203556.P3775059724317152511

`A000203((n+1)^5)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A203556

/-- `A000203((n+1)^5)` -/
def P3775059724317152511.Spec : Prop :=
  ∀ n, P3775059724317152511.a n = A203556 (n + 1)

theorem P3775059724317152511.correct : P3775059724317152511.Spec := by
  intro n
  simp only [A203556, Nat.add_sub_cancel]

end A203556

/-! ## A203556.P11660705081824917351

`∑{d}[n+1, #*A160893(#)]`
-/

namespace A203556.P11660705081824917351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A160893 d

end

end A203556.P11660705081824917351

namespace A203556

/-- `∑{d}[n+1, #*A160893(#)]` -/
def P11660705081824917351.Spec : Prop :=
  ∀ n, P11660705081824917351.a n = A203556 (n + 1)

end A203556

/-! ## A203556.P14275812366128481392

`∑{d}[(n+1)^5, #]`
-/

namespace A203556.P14275812366128481392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A203556.P14275812366128481392

namespace A203556

/-- `∑{d}[(n+1)^5, #]` -/
def P14275812366128481392.Spec : Prop :=
  ∀ n, (P14275812366128481392.a n : ℤ) = A203556 (n + 1)

end A203556

/-! ## A203556.P9800140205163018344

`abs(∑{d}[A258807(n+1)+1, #]-1)+1`
-/

namespace A203556.P9800140205163018344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258807 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1| + 1

end

end A203556.P9800140205163018344

namespace A203556

/-- `abs(∑{d}[A258807(n+1)+1, #]-1)+1` -/
def P9800140205163018344.Spec : Prop :=
  ∀ n, P9800140205163018344.a n = A203556 (n + 1)

end A203556

/-! ## A203556.P1304501725418995997

`∑{d}[A000584(n+1), #]%A017451(n)`
-/

namespace A203556.P1304501725418995997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A017451 n)

end

end A203556.P1304501725418995997

namespace A203556

/-- `∑{d}[A000584(n+1), #]%A017451(n)` -/
def P1304501725418995997.Spec : Prop :=
  ∀ n, P1304501725418995997.a n = A203556 (n + 1)

end A203556

/-!
# A203557: G.f.: exp( Sum_{n>=1} sigma(n^5)*x^n/n ).

The programs for A203557, there is no canonical definition to state claims against.
-/

/-! ## A203557.P3126497057348414465

`A280319(A094416(2*n+1)+A001705(n+1))`
-/

namespace A203557.P3126497057348414465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280319 (A094416 (2 * n + 1) + A001705 (n + 1)).toNat

end

end A203557.P3126497057348414465

/-!
# A203558: Number of nX2 0..2 arrays with row sums equal and column sums equal.

The programs for A203558, there is no canonical definition to state claims against.
-/

/-! ## A203558.P9254304893549886785

`A203564(∑[n+1]+2)`
-/

namespace A203558.P9254304893549886785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203558.P9254304893549886785

/-! ## A203558.P14676622195750008030

`A000265(A203564(∑[n+2]))`
-/

namespace A203558.P14676622195750008030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A203564 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A203558.P14676622195750008030

/-!
# A203559: Number of nX3 0..2 arrays with row sums equal and column sums equal.

The programs for A203559, there is no canonical definition to state claims against.
-/

/-! ## A203559.P15260650527709894929

`A203564(∑[n+2]+4)`
-/

namespace A203559.P15260650527709894929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203559.P15260650527709894929

/-! ## A203559.P10596238989043367998

`lcm(3, A203564(A167614(n+1)))`
-/

namespace A203559.P10596238989043367998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A203564 (A167614 (n + 1)).toNat)

end

end A203559.P10596238989043367998

/-! ## A203559.P2499129380239455294

`record[A010054(n)*A203564(n+3)]`
-/

namespace A203559.P2499129380239455294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203564 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203559.P2499129380239455294

/-! ## A203559.P14432760490773644672

`record[A203564(n+3)/A190088(n)]`
-/

namespace A203559.P14432760490773644672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203564 (n + 3) : ℚ) / (A190088 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203559.P14432760490773644672

/-! ## A203559.P17511543323409890271

`A203564(A167614(n+1))+A025443(n)`
-/

namespace A203559.P17511543323409890271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (A167614 (n + 1)).toNat + A025443 n

end

end A203559.P17511543323409890271

/-!
# A203560: Number of nX4 0..2 arrays with row sums equal and column sums equal.

The programs for A203560, there is no canonical definition to state claims against.
-/

/-! ## A203560.P11297570483493203678

`A203564(A374004(n+1))`
-/

namespace A203560.P11297570483493203678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (A374004 (n + 1)).toNat

end

end A203560.P11297570483493203678

/-! ## A203560.P13976835671470025752

`A203564(A141214(n)+7)`
-/

namespace A203560.P13976835671470025752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (A141214 n + 7).toNat

end

end A203560.P13976835671470025752

/-! ## A203560.P11533269292338292605

`A203564(A052905(n)+9)`
-/

namespace A203560.P11533269292338292605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (A052905 n + 9).toNat

end

end A203560.P11533269292338292605

/-! ## A203560.P6801776015057307986

`A203564(A055999(n)+10)`
-/

namespace A203560.P6801776015057307986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (A055999 n + 10).toNat

end

end A203560.P6801776015057307986

/-! ## A203560.P6426720563489553736

`A203564(eq[5, A066657(n)])`
-/

namespace A203560.P6426720563489553736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203560.P6426720563489553736

/-!
# A203561: Number of nX5 0..2 arrays with row sums equal and column sums equal.

The programs for A203561, there is no canonical definition to state claims against.
-/

/-! ## A203561.P7781660962802526173

`A203564(A374005(n+1))`
-/

namespace A203561.P7781660962802526173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (A374005 (n + 1)).toNat

end

end A203561.P7781660962802526173

/-! ## A203561.P3258204198007984640

`A203564(A155212(n)+13)`
-/

namespace A203561.P3258204198007984640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (A155212 n + 13).toNat

end

end A203561.P3258204198007984640

/-! ## A203561.P9199691096040096960

`A203564(A056000(n)+15)`
-/

namespace A203561.P9199691096040096960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (A056000 n + 15).toNat

end

end A203561.P9199691096040096960

/-! ## A203561.P9588547391768625840

`A203564(eq[7, A066657(n)])`
-/

namespace A203561.P9588547391768625840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203561.P9588547391768625840

/-! ## A203561.P4241917703582032565

`A203564(A000124(n+4)+4)`
-/

namespace A203561.P4241917703582032565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (A000124 (n + 4) + 4).toNat

end

end A203561.P4241917703582032565

/-!
# A203562: Number of n X 6 0..2 arrays with row sums equal and column sums equal.

The programs for A203562, there is no canonical definition to state claims against.
-/

/-! ## A203562.P9382184605539175321

`A203564(C(n+7, 2)-n)`
-/

namespace A203562.P9382184605539175321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (Nat.choose (n + 7) 2 - n)

end

end A203562.P9382184605539175321

/-! ## A203562.P10403845786719491041

`A203564(A374007(n+1))`
-/

namespace A203562.P10403845786719491041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (A374007 (n + 1)).toNat

end

end A203562.P10403845786719491041

/-! ## A203562.P51235872053865528

`A203564(A167499(n+4)+1)`
-/

namespace A203562.P51235872053865528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (A167499 (n + 4) + 1).toNat

end

end A203562.P51235872053865528

/-! ## A203562.P3563109805627379090

`A203564(A167614(n+4)+3)`
-/

namespace A203562.P3563109805627379090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203564 (A167614 (n + 4) + 3).toNat

end

end A203562.P3563109805627379090

/-!
# A203563: Number of nX7 0..2 arrays with row sums equal and column sums equal.

The programs for A203563, there is no canonical definition to state claims against.
-/

/-! ## A203563.P16602821503115893430

`A172636(n+1)+2`
-/

namespace A203563.P16602821503115893430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172636 (n + 1) + 2

end

end A203563.P16602821503115893430

/-!
# A203564: T(n,k) = Number of n X k 0..2 arrays with row sums equal and column sums equal.

The programs for A203564, there is no canonical definition to state claims against.
-/

/-! ## A203564.P17164151737831050389

`A134662(A155863(n))`
-/

namespace A203564.P17164151737831050389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134662 (A155863 n).toNat

end

end A203564.P17164151737831050389

/-! ## A203564.P2500920547975301274

`A134662(A156584(n))`
-/

namespace A203564.P2500920547975301274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134662 (A156584 n).toNat

end

end A203564.P2500920547975301274

/-! ## A203564.P6688618495490073211

`A134662(A173882(n))`
-/

namespace A203564.P6688618495490073211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134662 (A173882 n).toNat

end

end A203564.P6688618495490073211

/-! ## A203564.P13232855006378400029

`A134662(A174451(n))`
-/

namespace A203564.P13232855006378400029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134662 (A174451 n).toNat

end

end A203564.P13232855006378400029

/-! ## A203564.P8154647598545351719

`A386243(A174109(n))`
-/

namespace A203564.P8154647598545351719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386243 (A174109 n).toNat

end

end A203564.P8154647598545351719

/-!
# A203565: Numbers that contain the product of any two adjacent digits as a substring.

The programs for A203565, there is no canonical definition to state claims against.
-/

/-! ## A203565.P16304131112198983857

`lt[A102669(n), A040614(A176810(n+1))]`
-/

namespace A203565.P16304131112198983857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040614 (A176810 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A203565.P16304131112198983857

/-! ## A203565.P1220805168257896600

`lt[A102669(n), A000005(A074822(3*n+2))]`
-/

namespace A203565.P1220805168257896600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A074822 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A203565.P1220805168257896600

/-! ## A203565.P14829711377695258718

`lt[A102669(n), A040224(A243755(2*n+3))]`
-/

namespace A203565.P14829711377695258718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040224 (A243755 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A203565.P14829711377695258718

/-! ## A203565.P9464506421061467596

`lt[A102669(n), A325643(A127337(2*n+3))]`
-/

namespace A203565.P9464506421061467596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325643 (A127337 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A203565.P9464506421061467596

/-! ## A203565.P17403367512367938629

`lt[A102669(n), A001221(A144255(n+1))]`
-/

namespace A203565.P17403367512367938629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A144255 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A203565.P17403367512367938629

/-!
# A203567: The coding function W_1(n,3,2) (see Honkala et al. for the precise definition).

The programs for A203567, there is no canonical definition to state claims against.
-/

/-! ## A203567.P16507793505891844124

`∑[2-A366574(n+1)+n]`
-/

namespace A203567.P16507793505891844124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A366574 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203567.P16507793505891844124

/-! ## A203567.P10843357455035411625

`A057355(∑[a(A057362(n))+n])` with `a(0)=2`
-/

namespace A203567.P10843357455035411625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (A057362 n).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203567.P10843357455035411625

/-! ## A203567.P6801051746738483522

`A187188(A033438(n)+(2*n+3)²)`
-/

namespace A203567.P6801051746738483522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A033438 n + ((2 * n + 3) ^ 2 : ℤ)).toNat

end

end A203567.P6801051746738483522

/-! ## A203567.P2992381285319535817

`record[A179865(n+1)-A006856(n+1)]`
-/

namespace A203567.P2992381285319535817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1) - A006856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203567.P2992381285319535817

/-! ## A203567.P16291867446728923514

`∑[n-A008683(A136185(n+2)+n+1)]`
-/

namespace A203567.P16291867446728923514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008683 (A136185 (n + 2) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203567.P16291867446728923514

/-!
# A203568: a(n) = A026837(n) - A026838(n).

The programs for A203568, the canonical program `A203568.P16517688267231901796` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203568 has offset 0).

The definition of A203568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203568.P16517688267231901796

`A062157(n)*A199918(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A203568

/-- `A062157(n)*A199918(n)` -/
def P16517688267231901796.Spec : Prop :=
  ∀ n, P16517688267231901796.a n = A203568 n

theorem P16517688267231901796.correct : P16517688267231901796.Spec := by
  intro n
  simp only [A203568]

end A203568

/-! ## A203568.P14631442451516283091

`A145172(n+1)*A255849(n)-A080995(n)`
-/

namespace A203568.P14631442451516283091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145172 (n + 1) * A255849 n - A080995 n

end

end A203568.P14631442451516283091

namespace A203568

/-- `A145172(n+1)*A255849(n)-A080995(n)` -/
def P14631442451516283091.Spec : Prop :=
  ∀ n, P14631442451516283091.a n = A203568 n

end A203568

/-! ## A203568.P8476193429847197588

`Δ[char[∑[A198954(n)+1]]]`
-/

namespace A203568.P8476193429847197588
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A203568.P8476193429847197588

namespace A203568

/-- `Δ[char[∑[A198954(n)+1]]]` -/
def P8476193429847197588.Spec : Prop :=
  ∀ n, P8476193429847197588.a n = A203568 n

end A203568

/-! ## A203568.P10490694780028014082

`Δ[char[A002024(n+1)²+n+1]]`
-/

namespace A203568.P10490694780028014082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 + (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A203568.P10490694780028014082

namespace A203568

/-- `Δ[char[A002024(n+1)²+n+1]]` -/
def P10490694780028014082.Spec : Prop :=
  ∀ n, P10490694780028014082.a n = A203568 n

end A203568

/-! ## A203568.P7517503693601864140

`Δ[Δ[comp[A185870(n+1)]]]`
-/

namespace A203568.P7517503693601864140
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185870 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203568.P7517503693601864140

namespace A203568

/-- `Δ[Δ[comp[A185870(n+1)]]]` -/
def P7517503693601864140.Spec : Prop :=
  ∀ n, P7517503693601864140.a n = A203568 n

end A203568

/-! ## A203568.P7989929495239493065

`A000007(n)-A143062(n)`
-/

namespace A203568.P7989929495239493065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A143062 n

end

end A203568.P7989929495239493065

namespace A203568

/-- `A000007(n)-A143062(n)` -/
def P7989929495239493065.Spec : Prop :=
  ∀ n, P7989929495239493065.a n = A203568 n

end A203568

/-! ## A203568.P9303295448794847965

`A057428(n)*A143062(n)`
-/

namespace A203568.P9303295448794847965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A143062 n

end

end A203568.P9303295448794847965

namespace A203568

/-- `A057428(n)*A143062(n)` -/
def P9303295448794847965.Spec : Prop :=
  ∀ n, P9303295448794847965.a n = A203568 n

end A203568

/-! ## A203568.P11961144707880112409

`A010054(A010054(n)+n)-A143062(n)`
-/

namespace A203568.P11961144707880112409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A010054 n + (n : ℤ)).toNat - A143062 n

end

end A203568.P11961144707880112409

namespace A203568

/-- `A010054(A010054(n)+n)-A143062(n)` -/
def P11961144707880112409.Spec : Prop :=
  ∀ n, P11961144707880112409.a n = A203568 n

end A203568

/-! ## A203568.P10361772025229249589

`A089801(A089801(n)+n)-A143062(n)`
-/

namespace A203568.P10361772025229249589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 (A089801 n + (n : ℤ)).toNat - A143062 n

end

end A203568.P10361772025229249589

namespace A203568

/-- `A089801(A089801(n)+n)-A143062(n)` -/
def P10361772025229249589.Spec : Prop :=
  ∀ n, P10361772025229249589.a n = A203568 n

end A203568

/-! ## A203568.P8910567531882955802

`A143064(A143064(n)+n)-A143062(n)`
-/

namespace A203568.P8910567531882955802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143064 (A143064 n + (n : ℤ)).toNat - A143062 n

end

end A203568.P8910567531882955802

namespace A203568

/-- `A143064(A143064(n)+n)-A143062(n)` -/
def P8910567531882955802.Spec : Prop :=
  ∀ n, P8910567531882955802.a n = A203568 n

end A203568

/-! ## A203568.P7234507799483585798

`A010052(n+1)*A010052(n)-A143062(n)`
-/

namespace A203568.P7234507799483585798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) * A010052 n - A143062 n

end

end A203568.P7234507799483585798

namespace A203568

/-- `A010052(n+1)*A010052(n)-A143062(n)` -/
def P7234507799483585798.Spec : Prop :=
  ∀ n, P7234507799483585798.a n = A203568 n

end A203568

/-! ## A203568.P8888096174733189174

`A214263(n+1)*A214263(n)-A143062(n)`
-/

namespace A203568.P8888096174733189174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214263 (n + 1) * A214263 n - A143062 n

end

end A203568.P8888096174733189174

namespace A203568

/-- `A214263(n+1)*A214263(n)-A143062(n)` -/
def P8888096174733189174.Spec : Prop :=
  ∀ n, P8888096174733189174.a n = A203568 n

end A203568

/-! ## A203568.P8944183704331820520

`A374016(n+1)*A374016(n)-A143062(n)`
-/

namespace A203568.P8944183704331820520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374016 (n + 1) * A374016 n - A143062 n

end

end A203568.P8944183704331820520

namespace A203568

/-- `A374016(n+1)*A374016(n)-A143062(n)` -/
def P8944183704331820520.Spec : Prop :=
  ∀ n, P8944183704331820520.a n = A203568 n

end A203568

/-! ## A203568.P15071407327602927838

`A143062(A049940(C(2, n+1)+1))*A143062(n)`
-/

namespace A203568.P15071407327602927838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143062 (A049940 (Nat.choose 2 (n + 1) + 1)).toNat * A143062 n

end

end A203568.P15071407327602927838

namespace A203568

/-- `A143062(A049940(C(2, n+1)+1))*A143062(n)` -/
def P15071407327602927838.Spec : Prop :=
  ∀ n, P15071407327602927838.a n = A203568 n

end A203568

/-! ## A203568.P8093814626447573218

`A242357(n+2)*A255849(n)-A080995(n)`
-/

namespace A203568.P8093814626447573218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242357 (n + 2) * A255849 n - A080995 n

end

end A203568.P8093814626447573218

namespace A203568

/-- `A242357(n+2)*A255849(n)-A080995(n)` -/
def P8093814626447573218.Spec : Prop :=
  ∀ n, P8093814626447573218.a n = A203568 n

end A203568

/-! ## A203568.P1472837778909161318

`(A143062(A008586(n))-1)*A143062(n)`
-/

namespace A203568.P1472837778909161318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143062 (A008586 n).toNat - 1) * A143062 n

end

end A203568.P1472837778909161318

namespace A203568

/-- `(A143062(A008586(n))-1)*A143062(n)` -/
def P1472837778909161318.Spec : Prop :=
  ∀ n, P1472837778909161318.a n = A203568 n

end A203568

/-!
# A203569: Numbers whose digits are a permutation of [0,...,n] and which contain the product of any two adjacent digits as a substring.

The programs for A203569, there is no canonical definition to state claims against.
-/

/-! ## A203569.P18304686126640774753

`A297062(A325323(n+1)+A057427(n))`
-/

namespace A203569.P18304686126640774753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297062 (A325323 (n + 1) + A057427 n).toNat

end

end A203569.P18304686126640774753

/-! ## A203569.P11184027543727570652

`A297062(eq[A000700(n), A303837(n+1)])`
-/

namespace A203569.P11184027543727570652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297062 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A203569.P11184027543727570652

/-!
# A203570: Bisection of A201207 (half-convolution of the Lucas sequence A000032 with itself); even part.

The programs for A203570, the canonical program `A203570.P14237758701816468598` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203570 has offset 0).

The definition of A203570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203570.P13281969476064610289

`A201207(2*n)`
-/

namespace A203570.P13281969476064610289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201207 (2 * n)

end

end A203570.P13281969476064610289

namespace A203570

/-- `A201207(2*n)` -/
def P13281969476064610289.Spec : Prop :=
  ∀ n, P13281969476064610289.a n = A203570 n

end A203570

/-! ## A203570.P14237758701816468598

`A001254(n)+A027979(n)-A002878(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A203570

/-- `A001254(n)+A027979(n)-A002878(n)` -/
def P14237758701816468598.Spec : Prop :=
  ∀ n, P14237758701816468598.a n = A203570 n

theorem P14237758701816468598.correct : P14237758701816468598.Spec := by
  intro n
  simp only [A203570]

end A203570

/-! ## A203570.P8302656858870119043

`A000032(n)²+A027979(n)-A002878(n)`
-/

namespace A203570.P8302656858870119043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 2 + (A027979 n - A002878 n)

end

end A203570.P8302656858870119043

namespace A203570

/-- `A000032(n)²+A027979(n)-A002878(n)` -/
def P8302656858870119043.Spec : Prop :=
  ∀ n, P8302656858870119043.a n = A203570 n

end A203570

/-! ## A203570.P14705262087441632558

`(A203573(n)+A001254(n))/2`
-/

namespace A203570.P14705262087441632558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203573 n + A001254 n : ℚ) / 2

end

end A203570.P14705262087441632558

namespace A203570

/-- `(A203573(n)+A001254(n))/2` -/
def P14705262087441632558.Spec : Prop :=
  ∀ n, P14705262087441632558.a n = (A203570 n : ℚ)

end A203570

/-! ## A203570.P1000457955794017734

`(A203573(n)+A000032(n)²)/2`
-/

namespace A203570.P1000457955794017734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203573 n + A000032 n ^ 2 : ℚ) / 2

end

end A203570.P1000457955794017734

namespace A203570

/-- `(A203573(n)+A000032(n)²)/2` -/
def P1000457955794017734.Spec : Prop :=
  ∀ n, P1000457955794017734.a n = (A203570 n : ℚ)

end A203570

/-! ## A203570.P15685228229538222135

`(2*(4*n+6)*A000045(2*n+1)-4*(n+1)*A000045(2*n))/4+(-1)^n`
-/

namespace A203570.P15685228229538222135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((4 * n + 6 : ℤ) * A000045 (2 * n + 1)) - 4 * ((n + 1 : ℤ) * A000045 (2 * n)) : ℚ) / 4 + ((-1) ^ n : ℚ)

end

end A203570.P15685228229538222135

namespace A203570

/-- `(2*(4*n+6)*A000045(2*n+1)-4*(n+1)*A000045(2*n))/4+(-1)^n` -/
def P15685228229538222135.Spec : Prop :=
  ∀ n, P15685228229538222135.a n = (A203570 n : ℚ)

end A203570

/-!
# A203571: Period length 10: [0, 1, 2, 3, 4, 0, 4, 3, 2, 1] repeated.

The programs for A203571, the canonical program `A203571.P16144262732021484984` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203571 has offset 0).

The definition of A203571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203571.P16144262732021484984

`(5-abs(n-(10*ceil(n/10)-5)))*(ceil((n+5)/10)-floor((n+5)/10))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A203571

/-- `(5-abs(n-(10*ceil(n/10)-5)))*(ceil((n+5)/10)-floor((n+5)/10))` -/
def P16144262732021484984.Spec : Prop :=
  ∀ n, P16144262732021484984.a n = A203571 n

theorem P16144262732021484984.correct : P16144262732021484984.Spec := by
  intro n
  simp only [A203571]

end A203571

/-!
# A203572: Period length 12: 0, 1, 2, 3, 4, 5, 0, 5, 4, 3, 2, 1 repeated.

The programs for A203572, the canonical program `A203572.P9336234670263377703` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203572 has offset 0).

The definition of A203572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203572.P9336234670263377703

`abs((5-(n+5)%12)%6)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A203572

/-- `abs((5-(n+5)%12)%6)` -/
def P9336234670263377703.Spec : Prop :=
  ∀ n, P9336234670263377703.a n = A203572 n

theorem P9336234670263377703.correct : P9336234670263377703.Spec := by
  intro n
  simp only [A203572]

end A203572

/-!
# A203573: Bisection of A099924 (convolution of Lucas numbers); even arguments.

The programs for A203573, the canonical program `A203573.P10381722598306334564` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203573 has offset 0).

The definition of A203573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203573.P10381722598306334564

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=4, a(1)=13, a(2)=45, a(3)=152`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A203573

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P10381722598306334564.Spec : Prop :=
  ∀ n, P10381722598306334564.a n = A203573 n

theorem P10381722598306334564.correct : P10381722598306334564.Spec := by
  intro n
  simp only [A203573]

end A203573

/-! ## A203573.P11681720789665209862

`A099924(2*n)`
-/

namespace A203573.P11681720789665209862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099924 (2 * n)

end

end A203573.P11681720789665209862

namespace A203573

/-- `A099924(2*n)` -/
def P11681720789665209862.Spec : Prop :=
  ∀ n, P11681720789665209862.a n = A203573 n

end A203573

/-! ## A203573.P4312924644225263286

`record[A099924(and(n, n+1))]`
-/

namespace A203573.P4312924644225263286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099924 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203573.P4312924644225263286

namespace A203573

/-- `record[A099924(and(n, n+1))]` -/
def P4312924644225263286.Spec : Prop :=
  ∀ n, P4312924644225263286.a n = A203573 n

end A203573

/-! ## A203573.P9102987714465609921

`record[A099924(A014681(n))]`
-/

namespace A203573.P9102987714465609921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099924 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203573.P9102987714465609921

namespace A203573

/-- `record[A099924(A014681(n))]` -/
def P9102987714465609921.Spec : Prop :=
  ∀ n, P9102987714465609921.a n = A203573 n

end A203573

/-! ## A203573.P7534338580280067938

`record[A099924(A093178(n)-1)]`
-/

namespace A203573.P7534338580280067938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099924 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203573.P7534338580280067938

namespace A203573

/-- `record[A099924(A093178(n)-1)]` -/
def P7534338580280067938.Spec : Prop :=
  ∀ n, P7534338580280067938.a n = A203573 n

end A203573

/-! ## A203573.P9813493805424122839

`record[A099924(n)/A000034(n)]`
-/

namespace A203573.P9813493805424122839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099924 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203573.P9813493805424122839

namespace A203573

/-- `record[A099924(n)/A000034(n)]` -/
def P9813493805424122839.Spec : Prop :=
  ∀ n, P9813493805424122839.a n = (A203573 n : ℚ)

end A203573

/-! ## A203573.P5594603812215389567

`record[A099924(n)/A033999(n)]`
-/

namespace A203573.P5594603812215389567
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099924 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203573.P5594603812215389567

namespace A203573

/-- `record[A099924(n)/A033999(n)]` -/
def P5594603812215389567.Spec : Prop :=
  ∀ n, P5594603812215389567.a n = (A203573 n : ℚ)

end A203573

/-! ## A203573.P7750937047934732215

`record[A099924(n/A093178(n))]`
-/

namespace A203573.P7750937047934732215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099924 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203573.P7750937047934732215

namespace A203573

/-- `record[A099924(n/A093178(n))]` -/
def P7750937047934732215.Spec : Prop :=
  ∀ n, P7750937047934732215.a n = A203573 n

end A203573

/-! ## A203573.P5309903606804176228

`2*A203570(n)-A001254(n)`
-/

namespace A203573.P5309903606804176228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A203570 n - A001254 n

end

end A203573.P5309903606804176228

namespace A203573

/-- `2*A203570(n)-A001254(n)` -/
def P5309903606804176228.Spec : Prop :=
  ∀ n, P5309903606804176228.a n = A203573 n

end A203573

/-! ## A203573.P12828077495755546315

`record[A099924(n)/A001511(n+1)]`
-/

namespace A203573.P12828077495755546315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099924 n : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203573.P12828077495755546315

namespace A203573

/-- `record[A099924(n)/A001511(n+1)]` -/
def P12828077495755546315.Spec : Prop :=
  ∀ n, P12828077495755546315.a n = (A203573 n : ℚ)

end A203573

/-! ## A203573.P11135155908721710490

`A121254(n+1)-A099920(2*n)`
-/

namespace A203573.P11135155908721710490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121254 (n + 1) - A099920 (2 * n)

end

end A203573.P11135155908721710490

namespace A203573

/-- `A121254(n+1)-A099920(2*n)` -/
def P11135155908721710490.Spec : Prop :=
  ∀ n, P11135155908721710490.a n = A203573 n

end A203573

/-! ## A203573.P5693238408465957715

`A258321(2*n)+2*A000032(2*n)`
-/

namespace A203573.P5693238408465957715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258321 (2 * n) + 2 * A000032 (2 * n)

end

end A203573.P5693238408465957715

namespace A203573

/-- `A258321(2*n)+2*A000032(2*n)` -/
def P5693238408465957715.Spec : Prop :=
  ∀ n, P5693238408465957715.a n = A203573 n

end A203573

/-! ## A203573.P5300226659243342482

`A246715(2*(n+1))-A133586(2*n+1)`
-/

namespace A203573.P5300226659243342482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246715 (2 * (n + 1)) - A133586 (2 * n + 1)

end

end A203573.P5300226659243342482

namespace A203573

/-- `A246715(2*(n+1))-A133586(2*n+1)` -/
def P5300226659243342482.Spec : Prop :=
  ∀ n, P5300226659243342482.a n = A203573 n

end A203573

/-! ## A203573.P7258743790075404383

`A006490(2*n+1)+A006490(2*n+3)`
-/

namespace A203573.P7258743790075404383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (2 * n + 1) + A006490 (2 * n + 3)

end

end A203573.P7258743790075404383

namespace A203573

/-- `A006490(2*n+1)+A006490(2*n+3)` -/
def P7258743790075404383.Spec : Prop :=
  ∀ n, P7258743790075404383.a n = A203573 n

end A203573

/-! ## A203573.P419984512896476005

`2*A099920(2*n+1)-A099920(2*n)`
-/

namespace A203573.P419984512896476005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099920 (2 * n + 1) - A099920 (2 * n)

end

end A203573.P419984512896476005

namespace A203573

/-- `2*A099920(2*n+1)-A099920(2*n)` -/
def P419984512896476005.Spec : Prop :=
  ∀ n, P419984512896476005.a n = A203573 n

end A203573

/-! ## A203573.P15172676586403633570

`2*(n+1)*A000032(2*n)+A000045(2*n)`
-/

namespace A203573.P15172676586403633570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A000032 (2 * n)) + A000045 (2 * n)

end

end A203573.P15172676586403633570

namespace A203573

/-- `2*(n+1)*A000032(2*n)+A000045(2*n)` -/
def P15172676586403633570.Spec : Prop :=
  ∀ n, P15172676586403633570.a n = A203573 n

end A203573

/-! ## A203573.P14174268322969483990

`4*(n+1)*A000045(2*n+1)-(2*n+1)*A000045(2*n)`
-/

namespace A203573.P14174268322969483990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * A000045 (2 * n + 1)) - (2 * n + 1 : ℤ) * A000045 (2 * n)

end

end A203573.P14174268322969483990

namespace A203573

/-- `4*(n+1)*A000045(2*n+1)-(2*n+1)*A000045(2*n)` -/
def P14174268322969483990.Spec : Prop :=
  ∀ n, P14174268322969483990.a n = A203573 n

end A203573

/-! ## A203573.P12778395676177450670

`A007502(2*(n+1))+A264147(2*n)+A000032(2*n)`
-/

namespace A203573.P12778395676177450670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (2 * (n + 1)) + (A264147 (2 * n) + A000032 (2 * n))

end

end A203573.P12778395676177450670

namespace A203573

/-- `A007502(2*(n+1))+A264147(2*n)+A000032(2*n)` -/
def P12778395676177450670.Spec : Prop :=
  ∀ n, P12778395676177450670.a n = A203573 n

end A203573

/-! ## A203573.P11154289540283755479

`A010049(2*n+1)+A099920(2*n+1)+A006367(2*n)`
-/

namespace A203573.P11154289540283755479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * n + 1) + (A099920 (2 * n + 1) + A006367 (2 * n))

end

end A203573.P11154289540283755479

namespace A203573

/-- `A010049(2*n+1)+A099920(2*n+1)+A006367(2*n)` -/
def P11154289540283755479.Spec : Prop :=
  ∀ n, P11154289540283755479.a n = A203573 n

end A203573

/-! ## A203573.P13222950711209771611

`A354044(2*n+1)+A246715(2*(n+1))-A088209(2*n+1)`
-/

namespace A203573.P13222950711209771611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 (2 * n + 1) + (A246715 (2 * (n + 1)) - A088209 (2 * n + 1))

end

end A203573.P13222950711209771611

namespace A203573

/-- `A354044(2*n+1)+A246715(2*(n+1))-A088209(2*n+1)` -/
def P13222950711209771611.Spec : Prop :=
  ∀ n, P13222950711209771611.a n = A203573 n

end A203573

/-!
# A203574: Bisection of A099924 (Lucas convolution); one half of the terms with odd arguments.

The programs for A203574, the canonical program `A203574.P16600995169475600306` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203574 has offset 0).

The definition of A203574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203574.P16600995169475600306

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=2, a(1)=11, a(2)=41, a(3)=137`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A203574

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P16600995169475600306.Spec : Prop :=
  ∀ n, P16600995169475600306.a n = A203574 n

theorem P16600995169475600306.correct : P16600995169475600306.Spec := by
  intro n
  simp only [A203574]

end A203574

/-! ## A203574.P15647816559897879533

`A099924(2*n+1)/2`
-/

namespace A203574.P15647816559897879533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099924 (2 * n + 1) : ℚ) / 2

end

end A203574.P15647816559897879533

namespace A203574

/-- `A099924(2*n+1)/2` -/
def P15647816559897879533.Spec : Prop :=
  ∀ n, P15647816559897879533.a n = (A203574 n : ℚ)

end A203574

/-! ## A203574.P10557694390520910930

`A201207(Δ[n²])`
-/

namespace A203574.P10557694390520910930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201207 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A203574.P10557694390520910930

namespace A203574

/-- `A201207(Δ[n²])` -/
def P10557694390520910930.Spec : Prop :=
  ∀ n, P10557694390520910930.a n = A203574 n

end A203574

/-! ## A203574.P654888433225032434

`A001060(2*n)+n*A075193(2*n)`
-/

namespace A203574.P654888433225032434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (2 * n) + (n : ℤ) * A075193 (2 * n)

end

end A203574.P654888433225032434

namespace A203574

/-- `A001060(2*n)+n*A075193(2*n)` -/
def P654888433225032434.Spec : Prop :=
  ∀ n, P654888433225032434.a n = A203574 n

end A203574

/-! ## A203574.P11548690632026042451

`A001060(2*n)+n*A000032(2*n+1)`
-/

namespace A203574.P11548690632026042451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (2 * n) + (n : ℤ) * A000032 (2 * n + 1)

end

end A203574.P11548690632026042451

namespace A203574

/-- `A001060(2*n)+n*A000032(2*n+1)` -/
def P11548690632026042451.Spec : Prop :=
  ∀ n, P11548690632026042451.a n = A203574 n

end A203574

/-! ## A203574.P6701730050201502618

`A001060(2*n)+n*A000204(2*n+1)`
-/

namespace A203574.P6701730050201502618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (2 * n) + (n : ℤ) * A000204 (2 * n + 1)

end

end A203574.P6701730050201502618

namespace A203574

/-- `A001060(2*n)+n*A000204(2*n+1)` -/
def P6701730050201502618.Spec : Prop :=
  ∀ n, P6701730050201502618.a n = A203574 n

end A203574

/-! ## A203574.P4445499954027479827

`A001060(2*n)+n*A169985(2*n+1)`
-/

namespace A203574.P4445499954027479827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (2 * n) + (n : ℤ) * A169985 (2 * n + 1)

end

end A203574.P4445499954027479827

namespace A203574

/-- `A001060(2*n)+n*A169985(2*n+1)` -/
def P4445499954027479827.Spec : Prop :=
  ∀ n, P4445499954027479827.a n = A203574 n

end A203574

/-! ## A203574.P4251113055480217900

`(n+2)*A000032(Δ[n²])-A000045(2*n)`
-/

namespace A203574.P4251113055480217900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000032 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A000045 (2 * n)

end

end A203574.P4251113055480217900

namespace A203574

/-- `(n+2)*A000032(Δ[n²])-A000045(2*n)` -/
def P4251113055480217900.Spec : Prop :=
  ∀ n, P4251113055480217900.a n = A203574 n

end A203574

/-! ## A203574.P3924058873079964905

`(n+2)*Δ[A000032(2*n)]-A000045(2*n)`
-/

namespace A203574.P3924058873079964905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n) - A000045 (2 * n)

end

end A203574.P3924058873079964905

namespace A203574

/-- `(n+2)*Δ[A000032(2*n)]-A000045(2*n)` -/
def P3924058873079964905.Spec : Prop :=
  ∀ n, P3924058873079964905.a n = A203574 n

end A203574

/-! ## A203574.P2051313517187963416

`A013655(2*n+1)+n*A000032(2*n+1)`
-/

namespace A203574.P2051313517187963416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (2 * n + 1) + (n : ℤ) * A000032 (2 * n + 1)

end

end A203574.P2051313517187963416

namespace A203574

/-- `A013655(2*n+1)+n*A000032(2*n+1)` -/
def P2051313517187963416.Spec : Prop :=
  ∀ n, P2051313517187963416.a n = A203574 n

end A203574

/-! ## A203574.P4635004960880577739

`A013655(2*n+1)+n*A000204(2*n+1)`
-/

namespace A203574.P4635004960880577739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (2 * n + 1) + (n : ℤ) * A000204 (2 * n + 1)

end

end A203574.P4635004960880577739

namespace A203574

/-- `A013655(2*n+1)+n*A000204(2*n+1)` -/
def P4635004960880577739.Spec : Prop :=
  ∀ n, P4635004960880577739.a n = A203574 n

end A203574

/-! ## A203574.P7631404601268316065

`A013655(2*n+1)+n*A005013(2*n+1)`
-/

namespace A203574.P7631404601268316065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (2 * n + 1) + (n : ℤ) * A005013 (2 * n + 1)

end

end A203574.P7631404601268316065

namespace A203574

/-- `A013655(2*n+1)+n*A005013(2*n+1)` -/
def P7631404601268316065.Spec : Prop :=
  ∀ n, P7631404601268316065.a n = A203574 n

end A203574

/-! ## A203574.P9360342058903567280

`A013655(2*n+1)+n*A014217(2*n+1)`
-/

namespace A203574.P9360342058903567280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (2 * n + 1) + (n : ℤ) * A014217 (2 * n + 1)

end

end A203574.P9360342058903567280

namespace A203574

/-- `A013655(2*n+1)+n*A014217(2*n+1)` -/
def P9360342058903567280.Spec : Prop :=
  ∀ n, P9360342058903567280.a n = A203574 n

end A203574

/-! ## A203574.P14016994439936066098

`A228208(2*(n+1))+n*A000032(2*n+1)`
-/

namespace A203574.P14016994439936066098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228208 (2 * (n + 1)) + (n : ℤ) * A000032 (2 * n + 1)

end

end A203574.P14016994439936066098

namespace A203574

/-- `A228208(2*(n+1))+n*A000032(2*n+1)` -/
def P14016994439936066098.Spec : Prop :=
  ∀ n, P14016994439936066098.a n = A203574 n

end A203574

/-! ## A203574.P2382955841994413515

`A000045(2*(n+1))+(n+1)*A000032(2*n+1)`
-/

namespace A203574.P2382955841994413515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1)) + (n + 1 : ℤ) * A000032 (2 * n + 1)

end

end A203574.P2382955841994413515

namespace A203574

/-- `A000045(2*(n+1))+(n+1)*A000032(2*n+1)` -/
def P2382955841994413515.Spec : Prop :=
  ∀ n, P2382955841994413515.a n = A203574 n

end A203574

/-! ## A203574.P16628013448969541297

`(2*n+3)*A000045(2*n)+(n+2)*A000045(2*n+1)`
-/

namespace A203574.P16628013448969541297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A000045 (2 * n) + (n + 2 : ℤ) * A000045 (2 * n + 1)

end

end A203574.P16628013448969541297

namespace A203574

/-- `(2*n+3)*A000045(2*n)+(n+2)*A000045(2*n+1)` -/
def P16628013448969541297.Spec : Prop :=
  ∀ n, P16628013448969541297.a n = A203574 n

end A203574

/-! ## A203574.P17092078431839160782

`record[A099924(A093178(n))/2]`
-/

namespace A203574.P17092078431839160782
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099924 (A093178 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203574.P17092078431839160782

namespace A203574

/-- `record[A099924(A093178(n))/2]` -/
def P17092078431839160782.Spec : Prop :=
  ∀ n, P17092078431839160782.a n = (A203574 n : ℚ)

end A203574

/-! ## A203574.P17186364261900866401

`A099924(2*n+1)-A201207(2*n+1)`
-/

namespace A203574.P17186364261900866401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099924 (2 * n + 1) - A201207 (2 * n + 1)

end

end A203574.P17186364261900866401

namespace A203574

/-- `A099924(2*n+1)-A201207(2*n+1)` -/
def P17186364261900866401.Spec : Prop :=
  ∀ n, P17186364261900866401.a n = A203574 n

end A203574

/-! ## A203574.P13250736166255594763

`A000032(2*n+1)+A258321(2*n+1)/2`
-/

namespace A203574.P13250736166255594763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + 1) : ℚ) + (A258321 (2 * n + 1) : ℚ) / 2

end

end A203574.P13250736166255594763

namespace A203574

/-- `A000032(2*n+1)+A258321(2*n+1)/2` -/
def P13250736166255594763.Spec : Prop :=
  ∀ n, P13250736166255594763.a n = (A203574 n : ℚ)

end A203574

/-! ## A203574.P10302116633121413802

`A000204(2*n+1)+A258321(2*n+1)/2`
-/

namespace A203574.P10302116633121413802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000204 (2 * n + 1) : ℚ) + (A258321 (2 * n + 1) : ℚ) / 2

end

end A203574.P10302116633121413802

namespace A203574

/-- `A000204(2*n+1)+A258321(2*n+1)/2` -/
def P10302116633121413802.Spec : Prop :=
  ∀ n, P10302116633121413802.a n = (A203574 n : ℚ)

end A203574

/-!
# A203576: Exponential (or binomial) half-convolution of A000984 (central binomial) with itself.

The programs for A203576, there is no canonical definition to state claims against.
-/

/-! ## A203576.P10760051643028347747

`A171715(A349253(n))`
-/

namespace A203576.P10760051643028347747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171715 (A349253 n).toNat

end

end A203576.P10760051643028347747

/-!
# A203577: Exponential (or binomial) half-convolution of the sequence A000108 (Catalan) with itself.

The programs for A203577, there is no canonical definition to state claims against.
-/

/-! ## A203577.P11054865780250337330

`A014330(n)-A204452(n)`
-/

namespace A203577.P11054865780250337330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014330 n - A204452 n

end

end A203577.P11054865780250337330

/-! ## A203577.P17590293413024472853

`A294498(∑[n+3])-A204452(n)`
-/

namespace A203577.P17590293413024472853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294498 (∑ j ∈ Finset.range (n + 1), f1 j) - A204452 n

end

end A203577.P17590293413024472853

/-! ## A203577.P11050380077685082534

`record[A294498(A069981(n))]-A204452(n)`
-/

namespace A203577.P11050380077685082534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294498 (A069981 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A204452 n

end

end A203577.P11050380077685082534

/-!
# A203578: Exponential (or binomial) half-convolution of A000045 (Fibonacci) with itself.

The programs for A203578, there is no canonical definition to state claims against.
-/

/-! ## A203578.P6213512735293393228

`A014334(n)-A204451(n)`
-/

namespace A203578.P6213512735293393228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014334 n - A204451 n

end

end A203578.P6213512735293393228

/-! ## A203578.P16363508084840844976

`2*A014335(n)-A204451(n)`
-/

namespace A203578.P16363508084840844976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014335 n - A204451 n

end

end A203578.P16363508084840844976

/-! ## A203578.P8611675134278813627

`floor(A052899(n)/2-A204451(n))`
-/

namespace A203578.P8611675134278813627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052899 n : ℚ) / 2 - (A204451 n : ℚ)⌋

end

end A203578.P8611675134278813627

/-! ## A203578.P4106448009545366255

`(A272263(n)-1)/5-A204451(n)`
-/

namespace A203578.P4106448009545366255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272263 n - 1 : ℚ) / 5 - (A204451 n : ℚ)

end

end A203578.P4106448009545366255

/-! ## A203578.P3538319720176258514

`(2^n*A000032(n)-2)/5-A204451(n)`
-/

namespace A203578.P3538319720176258514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) * A000032 n - 2 : ℚ) / 5 - (A204451 n : ℚ)

end

end A203578.P3538319720176258514

/-!
# A203579: Exponential (or binomial) convolution of A000032 (Lucas) with itself, divided by 2.

The programs for A203579, the canonical program `A203579.P360852745112911251` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203579 has offset 0).

The definition of A203579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203579.P360852745112911251

`5*A014335(n)+2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A203579

/-- `5*A014335(n)+2` -/
def P360852745112911251.Spec : Prop :=
  ∀ n, P360852745112911251.a n = A203579 n

theorem P360852745112911251.correct : P360852745112911251.Spec := by
  intro n
  simp only [A203579]

end A203579

/-! ## A203579.P14069878693228508334

`∑[ogf((-2+4x+3x^2)/(-1+2x+4x^2))]`
-/

namespace A203579.P14069878693228508334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, -3] [1, -2, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203579.P14069878693228508334

namespace A203579

/-- `∑[ogf((-2+4x+3x^2)/(-1+2x+4x^2))]` -/
def P14069878693228508334.Spec : Prop :=
  ∀ n, P14069878693228508334.a n = A203579 n

end A203579

/-! ## A203579.P13591393139555449954

`ogf((-2+4x+3x^2)/(-1+3x+2x^2-4x^3))`
-/

namespace A203579.P13591393139555449954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, -3] [1, -3, -2, 4] n

end

end A203579.P13591393139555449954

namespace A203579

/-- `ogf((-2+4x+3x^2)/(-1+3x+2x^2-4x^3))` -/
def P13591393139555449954.Spec : Prop :=
  ∀ n, P13591393139555449954.a n = A203579 n

end A203579

/-! ## A203579.P6364657422499951736

`A084057(n)+1`
-/

namespace A203579.P6364657422499951736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n + 1

end

end A203579.P6364657422499951736

namespace A203579

/-- `A084057(n)+1` -/
def P6364657422499951736.Spec : Prop :=
  ∀ n, P6364657422499951736.a n = A203579 n

end A203579

/-! ## A203579.P17827123735451714455

`Δ[A085449(n)]+1`
-/

namespace A203579.P17827123735451714455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A203579.P17827123735451714455

namespace A203579

/-- `Δ[A085449(n)]+1` -/
def P17827123735451714455.Spec : Prop :=
  ∀ n, P17827123735451714455.a n = A203579 n

end A203579

/-! ## A203579.P493525955956756147

`A087131(n)/2+1`
-/

namespace A203579.P493525955956756147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087131 n : ℚ) / 2 + 1

end

end A203579.P493525955956756147

namespace A203579

/-- `A087131(n)/2+1` -/
def P493525955956756147.Spec : Prop :=
  ∀ n, P493525955956756147.a n = (A203579 n : ℚ)

end A203579

/-! ## A203579.P15814766525422999766

`(A272263(n)+3)/2`
-/

namespace A203579.P15814766525422999766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272263 n + 3 : ℚ) / 2

end

end A203579.P15814766525422999766

namespace A203579

/-- `(A272263(n)+3)/2` -/
def P15814766525422999766.Spec : Prop :=
  ∀ n, P15814766525422999766.a n = (A203579 n : ℚ)

end A203579

/-! ## A203579.P5655904540305305123

`A163305(n)+a(n-1)` with `a(0)=2`
-/

namespace A203579.P5655904540305305123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A163305 n + a (n - 1)

end

end A203579.P5655904540305305123

namespace A203579

/-- `A163305(n)+a(n-1)` -/
def P5655904540305305123.Spec : Prop :=
  ∀ n, P5655904540305305123.a n = A203579 n

end A203579

/-! ## A203579.P5091943608747388532

`2^(n-1)*A000032(n)+1`
-/

namespace A203579.P5091943608747388532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000032 n : ℚ) + 1

end

end A203579.P5091943608747388532

namespace A203579

/-- `2^(n-1)*A000032(n)+1` -/
def P5091943608747388532.Spec : Prop :=
  ∀ n, P5091943608747388532.a n = (A203579 n : ℚ)

end A203579

/-! ## A203579.P12541906565030198725

`Δ[2^(n-1)*A000045(n)]+1`
-/

namespace A203579.P12541906565030198725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A203579.P12541906565030198725

namespace A203579

/-- `Δ[2^(n-1)*A000045(n)]+1` -/
def P12541906565030198725.Spec : Prop :=
  ∀ n, P12541906565030198725.a n = (A203579 n : ℚ)

end A203579

/-! ## A203579.P2353327775244336284

`2^(n-1)*Δ[A001610(n)]+1`
-/

namespace A203579.P2353327775244336284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f1 (n + 1) - f1 n : ℚ) + 1

end

end A203579.P2353327775244336284

namespace A203579

/-- `2^(n-1)*Δ[A001610(n)]+1` -/
def P2353327775244336284.Spec : Prop :=
  ∀ n, P2353327775244336284.a n = (A203579 n : ℚ)

end A203579

/-! ## A203579.P17755499059441527256

`A319196(n)+A006483(n)`
-/

namespace A203579.P17755499059441527256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319196 n + A006483 n

end

end A203579.P17755499059441527256

namespace A203579

/-- `A319196(n)+A006483(n)` -/
def P17755499059441527256.Spec : Prop :=
  ∀ n, P17755499059441527256.a n = A203579 n

end A203579

/-! ## A203579.P3207926393144235929

`A014335(n)+A052899(n)+1`
-/

namespace A203579.P3207926393144235929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014335 n + (A052899 n + 1)

end

end A203579.P3207926393144235929

namespace A203579

/-- `A014335(n)+A052899(n)+1` -/
def P3207926393144235929.Spec : Prop :=
  ∀ n, P3207926393144235929.a n = A203579 n

end A203579

/-! ## A203579.P12778317817628771217

`A103435(n)+A319196(n)+1`
-/

namespace A203579.P12778317817628771217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103435 n + (A319196 n + 1)

end

end A203579.P12778317817628771217

namespace A203579

/-- `A103435(n)+A319196(n)+1` -/
def P12778317817628771217.Spec : Prop :=
  ∀ n, P12778317817628771217.a n = A203579 n

end A203579

/-! ## A203579.P9734363492871495012

`A063727(n)+1-A085449(n)`
-/

namespace A203579.P9734363492871495012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n + (1 - A085449 n)

end

end A203579.P9734363492871495012

namespace A203579

/-- `A063727(n)+1-A085449(n)` -/
def P9734363492871495012.Spec : Prop :=
  ∀ n, P9734363492871495012.a n = A203579 n

end A203579

/-! ## A203579.P7868813843573406670

`A063782(n)+1-A103435(n)`
-/

namespace A203579.P7868813843573406670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063782 n + (1 - A103435 n)

end

end A203579.P7868813843573406670

namespace A203579

/-- `A063782(n)+1-A103435(n)` -/
def P7868813843573406670.Spec : Prop :=
  ∀ n, P7868813843573406670.a n = A203579 n

end A203579

/-! ## A203579.P1056596469078156065

`A094633(n)+1-A094632(n)`
-/

namespace A203579.P1056596469078156065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094633 n + (1 - A094632 n)

end

end A203579.P1056596469078156065

namespace A203579

/-- `A094633(n)+1-A094632(n)` -/
def P1056596469078156065.Spec : Prop :=
  ∀ n, P1056596469078156065.a n = A203579 n

end A203579

/-! ## A203579.P1923859938103895343

`Δ[A000045(n)*A011782(n)]+1`
-/

namespace A203579.P1923859938103895343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A203579.P1923859938103895343

namespace A203579

/-- `Δ[A000045(n)*A011782(n)]+1` -/
def P1923859938103895343.Spec : Prop :=
  ∀ n, P1923859938103895343.a n = A203579 n

end A203579

/-! ## A203579.P4525805568209459894

`Δ[A000045(n)*A131577(n)]+1`
-/

namespace A203579.P4525805568209459894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A203579.P4525805568209459894

namespace A203579

/-- `Δ[A000045(n)*A131577(n)]+1` -/
def P4525805568209459894.Spec : Prop :=
  ∀ n, P4525805568209459894.a n = A203579 n

end A203579

/-! ## A203579.P13750720089770179543

`A000032(n)/2*A000079(n)+1`
-/

namespace A203579.P13750720089770179543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) / 2 * (A000079 n : ℚ) + 1

end

end A203579.P13750720089770179543

namespace A203579

/-- `A000032(n)/2*A000079(n)+1` -/
def P13750720089770179543.Spec : Prop :=
  ∀ n, P13750720089770179543.a n = (A203579 n : ℚ)

end A203579

/-!
# A203580: a(n) = Sum{d(i)*2^i: i=0,1,...,m}, where Sum{d(i)*7^i: i=0,1,...,m}=n, d(i)∈{0,1,...,6}.

The programs for A203580, there is no canonical definition to state claims against.
-/

/-! ## A203580.P1642873036111092551

`A028897(A007093(n))`
-/

namespace A203580.P1642873036111092551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A007093 n).toNat

end

end A203580.P1642873036111092551

/-! ## A203580.P11387950293458547407

`A028897(record[n-A064770(n)])`
-/

namespace A203580.P11387950293458547407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A203580.P11387950293458547407

/-! ## A203580.P11866333887125100561

`A028897(eq[n, A222253(A222252(n))])`
-/

namespace A203580.P11866333887125100561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203580.P11866333887125100561

/-! ## A203580.P13205845818792311815

`A028897(eq[n, A222254(A222252(n))])`
-/

namespace A203580.P13205845818792311815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203580.P13205845818792311815

/-! ## A203580.P16173753659003210074

`A028897(eq[n, A222254(A222253(n))])`
-/

namespace A203580.P16173753659003210074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222253 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203580.P16173753659003210074

/-!
# A203581: 

The programs for A203581, there is no canonical definition to state claims against.
-/

/-! ## A203581.P827319378990472020

`a(n-1)*A203582(n)` with `a(0)=1`
-/

namespace A203581.P827319378990472020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203582 n

end

end A203581.P827319378990472020

/-!
# A203583: Vandermonde sequence using x^2 - xy + y^2 applied to (2,3,...,n+1).

The programs for A203583, there is no canonical definition to state claims against.
-/

/-! ## A203583.P10561272546722617426

`a(n-1)*A203584(n)` with `a(0)=1`
-/

namespace A203583.P10561272546722617426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203584 n

end

end A203583.P10561272546722617426

/-! ## A203583.P13082752381584586459

`∏[A203584(n+1)]/A203584(n+1)`
-/

namespace A203583.P13082752381584586459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203584 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203584 (n + 1) : ℚ)

end

end A203583.P13082752381584586459

/-!
# A203584: v(n+1)/v(n), where v=A203583.

The programs for A203584, there is no canonical definition to state claims against.
-/

/-! ## A203584.P15062823381382022362

`ratio[A203583(n+1)]`
-/

namespace A203584.P15062823381382022362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203583 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203584.P15062823381382022362

/-!
# A203585: Vandermonde sequence using x^2 + y^2 applied to (2,3,...,n+1).

The programs for A203585, there is no canonical definition to state claims against.
-/

/-! ## A203585.P367371138030374621

`a(n-1)*A203586(n)` with `a(0)=1`
-/

namespace A203585.P367371138030374621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203586 n

end

end A203585.P367371138030374621

/-! ## A203585.P1250941968935130952

`∏[A203586(A028310(n))%A203700(n+1)]`
-/

namespace A203585.P1250941968935130952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203586 (A028310 n).toNat) (A203700 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203585.P1250941968935130952

/-!
# A203586: v(n+1)/v(n), where v=A203585.

The programs for A203586, there is no canonical definition to state claims against.
-/

/-! ## A203586.P9219477494867391716

`ratio[A203585(n+1)]`
-/

namespace A203586.P9219477494867391716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203585 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203586.P9219477494867391716

/-!
# A203587: Vandermonde sequence using x^2 - xy + y^2 applied to (1,3,5,...,2n-1).

The programs for A203587, there is no canonical definition to state claims against.
-/

/-! ## A203587.P9639784256925220557

`a(n-1)*A203588(n)` with `a(0)=1`
-/

namespace A203587.P9639784256925220557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203588 n

end

end A203587.P9639784256925220557

/-!
# A203588: a(n) = v(n+1)/v(n), where v=A203587.

The programs for A203588, there is no canonical definition to state claims against.
-/

/-! ## A203588.P6357668960840412267

`sqrt(A203513(2*(n+1)))`
-/

namespace A203588.P6357668960840412267
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A203513 (2 * (n + 1)) : ℝ)

end

end A203588.P6357668960840412267

/-! ## A203588.P12728562038397067956

`ratio[A203587(n+1)]`
-/

namespace A203588.P12728562038397067956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203587 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203588.P12728562038397067956

/-!
# A203589: 

The programs for A203589, there is no canonical definition to state claims against.
-/

/-! ## A203589.P4455769042336894245

`∏[A227464(2*n+1)]`
-/

namespace A203589.P4455769042336894245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227464 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203589.P4455769042336894245

/-! ## A203589.P15514133256663837344

`a(n-1)*A203590(n)` with `a(0)=1`
-/

namespace A203589.P15514133256663837344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203590 n

end

end A203589.P15514133256663837344

/-!
# A203590: v(n+1)/v(n), where v=A203589.

The programs for A203590, there is no canonical definition to state claims against.
-/

/-! ## A203590.P6703334069034394035

`A227464(2*n+3)`
-/

namespace A203590.P6703334069034394035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227464 (2 * n + 3)

end

end A203590.P6703334069034394035

/-!
# A203593: Number of n X n 0..2 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203593, there is no canonical definition to state claims against.
-/

/-! ## A203593.P7976361964066115787

`A203600(∑[4*n]+1)`
-/

namespace A203593.P7976361964066115787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203600 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203593.P7976361964066115787

/-!
# A203594: Number of nX1 0..2 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203594, there is no canonical definition to state claims against.
-/

/-! ## A203594.P3860710607390586812

`A203600(∑[n]+1)`
-/

namespace A203594.P3860710607390586812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203600 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203594.P3860710607390586812

/-! ## A203594.P10910597951387177556

`A203600(A000124(n))+char[19]`
-/

namespace A203594.P10910597951387177556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203600 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A203594.P10910597951387177556

/-! ## A203594.P17485165738822155194

`A043566(n)*A203600(A000124(n))`
-/

namespace A203594.P17485165738822155194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 n * A203600 (A000124 n).toNat

end

end A203594.P17485165738822155194

/-! ## A203594.P17828224133066537747

`A203600(A000124(n))/A047996(n)`
-/

namespace A203594.P17828224133066537747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203600 (A000124 n).toNat : ℚ) / (A047996 n : ℚ)

end

end A203594.P17828224133066537747

/-! ## A203594.P6822787785049451378

`A203600(A000124(n))%A175161(n)`
-/

namespace A203594.P6822787785049451378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203600 (A000124 n).toNat) (A175161 n)

end

end A203594.P6822787785049451378

/-!
# A203595: Number of nX2 0..2 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203595, there is no canonical definition to state claims against.
-/

/-! ## A203595.P16510677047067130282

`A203600(∑[n+1]+2)`
-/

namespace A203595.P16510677047067130282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203600 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203595.P16510677047067130282

/-! ## A203595.P14442302480322196364

`A326291(n+1)+A203600(A000096(n)+3)`
-/

namespace A203595.P14442302480322196364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A203600 (A000096 n + 3).toNat

end

end A203595.P14442302480322196364

/-! ## A203595.P9145867724138610402

`A000027(A203600(∑[n+2]))`
-/

namespace A203595.P9145867724138610402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A203600 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A203595.P9145867724138610402

/-! ## A203595.P16460193593563363256

`A203600(A117142(2*(n+1)))+∑{digits}[n, C(#, 9)]`
-/

namespace A203595.P16460193593563363256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203600 (A117142 (2 * (n + 1))).toNat + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum : ℕ) : ℤ)

end

end A203595.P16460193593563363256

/-! ## A203595.P16163071983837134439

`lcm(A000196(n+1), A203600(A000096(n+1)))`
-/

namespace A203595.P16163071983837134439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000196 (n + 1)) (A203600 (A000096 (n + 1)).toNat)

end

end A203595.P16163071983837134439

/-!
# A203596: Number of nX3 0..2 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203596, there is no canonical definition to state claims against.
-/

/-! ## A203596.P8515441606687012464

`A203600(∑[n+2]+4)`
-/

namespace A203596.P8515441606687012464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203600 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203596.P8515441606687012464

/-! ## A203596.P13219563902387805315

`record[A203600(9-∑[3-n])]`
-/

namespace A203596.P13219563902387805315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203600 (9 - ∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203596.P13219563902387805315

/-! ## A203596.P9207592486907547987

`lcm(2, A203600(A167614(n+1)))`
-/

namespace A203596.P9207592486907547987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203600 (A167614 (n + 1)).toNat)

end

end A203596.P9207592486907547987

/-! ## A203596.P5890372865219785551

`record[A203600(n+4)/A176230(n)]`
-/

namespace A203596.P5890372865219785551
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203600 (n + 4) : ℚ) / (A176230 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203596.P5890372865219785551

/-! ## A203596.P15874956034101677112

`record[A203600(n+4)/A035469(n+1)]`
-/

namespace A203596.P15874956034101677112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203600 (n + 4) : ℚ) / (A035469 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203596.P15874956034101677112

/-!
# A203597: Number of nX4 0..2 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203597, there is no canonical definition to state claims against.
-/

/-! ## A203597.P16802367743661874275

`A203600(A374004(n+1))`
-/

namespace A203597.P16802367743661874275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203600 (A374004 (n + 1)).toNat

end

end A203597.P16802367743661874275

/-! ## A203597.P4942343959683206501

`A203600(A141214(n)+7)`
-/

namespace A203597.P4942343959683206501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203600 (A141214 n + 7).toNat

end

end A203597.P4942343959683206501

/-! ## A203597.P17339431122023387166

`A203600(A052905(n)+9)`
-/

namespace A203597.P17339431122023387166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203600 (A052905 n + 9).toNat

end

end A203597.P17339431122023387166

/-! ## A203597.P10869900858384599088

`A203600(A055999(n)+10)`
-/

namespace A203597.P10869900858384599088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203600 (A055999 n + 10).toNat

end

end A203597.P10869900858384599088

/-!
# A203598: Number of n X 5 0..2 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203598, there is no canonical definition to state claims against.
-/

/-! ## A203598.P10050491292969707244

`A203600(Δ[A264443(n)])`
-/

namespace A203598.P10050491292969707244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203600 (f1 (n + 1) - f1 n).toNat

end

end A203598.P10050491292969707244

/-!
# A203599: Number of nX6 0..2 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203599, there is no canonical definition to state claims against.
-/

/-! ## A203599.P13350515433566414551

`A203600(A374007(n+1))`
-/

namespace A203599.P13350515433566414551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203600 (A374007 (n + 1)).toNat

end

end A203599.P13350515433566414551

