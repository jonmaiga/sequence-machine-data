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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B012.C000
import Seq.B013.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A090900: Least n-th power such that every concatenation is a prime.

The programs for A090900, there is no canonical definition to state claims against.
-/

/-! ## A090900.P4851840400754128605

`A110042(n+1)^(n+1)`
-/

namespace A090900.P4851840400754128605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110042 (n + 1) ^ (n + 1)

end

end A090900.P4851840400754128605

/-! ## A090900.P12820593474991489439

`(A164281(A164217(2*n))+1)^(n+1)`
-/

namespace A090900.P12820593474991489439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A164281 (A164217 (2 * n)).toNat + 1) ^ (n + 1)

end

end A090900.P12820593474991489439

/-!
# A090901: a(n) = floor[geometric mean of first n factorials].

The programs for A090901, there is no canonical definition to state claims against.
-/

/-! ## A090901.P16126218478953616459

`floor(root(∏[(n+1)!], n+1))`
-/

namespace A090901.P16126218478953616459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / (n + 1 : ℝ))⌋

end

end A090901.P16126218478953616459

/-! ## A090901.P13183704424434018207

`floor(root(∏[∏[n+1]], n+1))`
-/

namespace A090901.P13183704424434018207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / (n + 1 : ℝ))⌋

end

end A090901.P13183704424434018207

/-! ## A090901.P3439350893475581793

`A193832(A137545(n)+A000332(n))`
-/

namespace A090901.P3439350893475581793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A137545 n + A000332 n).toNat

end

end A090901.P3439350893475581793

/-! ## A090901.P16034556596704264014

`A003007(n+1)-A228112(A062298(n+1))`
-/

namespace A090901.P16034556596704264014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003007 (n + 1) - A228112 (A062298 (n + 1)).toNat

end

end A090901.P16034556596704264014

/-!
# A090902: a(n) = floor((product of first n triangular numbers)/(sum of first n factorials)).

The programs for A090902, there is no canonical definition to state claims against.
-/

/-! ## A090902.P9988201608864791583

`floor(∏[∑[n+1]]/∑[∏[n+1]])`
-/

namespace A090902.P9988201608864791583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)⌋

end

end A090902.P9988201608864791583

/-! ## A090902.P3944683963705867198

`A157271(A326558(n))`
-/

namespace A090902.P3944683963705867198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A326558 n).toNat

end

end A090902.P3944683963705867198

/-! ## A090902.P8515728041567746740

`A279564(n)+sqrt(A215969(n+1))`
-/

namespace A090902.P8515728041567746740
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A279564 n : ℝ) + Real.sqrt (A215969 (n + 1) : ℝ)

end

end A090902.P8515728041567746740

/-!
# A090904: Row products of the irregular triangle defined in A090905.

The programs for A090904, there is no canonical definition to state claims against.
-/

/-! ## A090904.P1368572240786639572

`a(n-1)*A090907(n)` with `a(0)=1`
-/

namespace A090904.P1368572240786639572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A090907 n

end

end A090904.P1368572240786639572

/-! ## A090904.P11131069727398409057

`∏[A090907(A028310(n))]/2`
-/

namespace A090904.P11131069727398409057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090907 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A090904.P11131069727398409057

/-! ## A090904.P17021003101534104606

`ratio[A349979(A079500(n)²)]`
-/

namespace A090904.P17021003101534104606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349979 (A079500 n ^ 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A090904.P17021003101534104606

/-!
# A090905: Left side of irregular triangle of natural numbers in which every row product is a multiple of the previous.

The programs for A090905, there is no canonical definition to state claims against.
-/

/-! ## A090905.P7406035058183751553

`∑[A090906(round(acot(n)+n))]`
-/

namespace A090905.P7406035058183751553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090906 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090905.P7406035058183751553

/-! ## A090905.P10352606508704309510

`A090906(n)+a(n-1)` with `a(0)=1`
-/

namespace A090905.P10352606508704309510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090906 n + a (n - 1)

end

end A090905.P10352606508704309510

/-! ## A090905.P17721927138534498996

`∑[A090906(round(sqrt(n²+1)))]`
-/

namespace A090905.P17721927138534498996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090906 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090905.P17721927138534498996

/-! ## A090905.P686338836629479674

`∑[A090906(n+1)]+1-A090906(n+1)`
-/

namespace A090905.P686338836629479674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A090906 (n + 1))

end

end A090905.P686338836629479674

/-! ## A090905.P9493122051404081080

`∑[A090906(A028310(n))%A358581(n+5)]`
-/

namespace A090905.P9493122051404081080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090906 (A028310 n).toNat) (A358581 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090905.P9493122051404081080

/-!
# A090906: Row lengths of the irregular triangle defined in A090905.

The programs for A090906, there is no canonical definition to state claims against.
-/

/-! ## A090906.P14620383335722656289

`Δ[A090905(n+1)]`
-/

namespace A090906.P14620383335722656289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090906.P14620383335722656289

/-! ## A090906.P16313767801195387041

`Δ[record[A090905(A065648(n))]]`
-/

namespace A090906.P16313767801195387041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090905 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090906.P16313767801195387041

/-! ## A090906.P6309892590221374221

`Δ[record[A090905(A106466(n))]]`
-/

namespace A090906.P6309892590221374221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090905 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090906.P6309892590221374221

/-! ## A090906.P5217781112458294742

`Δ[record[A090905(A117910(n))]]`
-/

namespace A090906.P5217781112458294742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090905 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090906.P5217781112458294742

/-! ## A090906.P6872034543651995599

`Δ[record[A090905(A126759(n))]]`
-/

namespace A090906.P6872034543651995599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090905 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090906.P6872034543651995599

/-!
# A090907: Ratio of products of successive rows of the irregular triangle defined in A090905.

The programs for A090907, there is no canonical definition to state claims against.
-/

/-! ## A090907.P7813000554824015612

`ratio[A090904(n+1)]`
-/

namespace A090907.P7813000554824015612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090904 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A090907.P7813000554824015612

/-! ## A090907.P7189100245525095582

`A090904(n+2)/A090904(n+1)`
-/

namespace A090907.P7189100245525095582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090904 (n + 2) : ℚ) / (A090904 (n + 1) : ℚ)

end

end A090907.P7189100245525095582

/-!
# A090912: Primes arising as the successive difference in A090911.

The programs for A090912, there is no canonical definition to state claims against.
-/

/-! ## A090912.P6032456951724854893

`abs(Δ[A090911(n)])`
-/

namespace A090912.P6032456951724854893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A090912.P6032456951724854893

/-! ## A090912.P2397344761679925057

`A006530(lcm(2, Δ[A090911(n)]))`
-/

namespace A090912.P2397344761679925057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (f1 (n + 1) - f1 n))

end

end A090912.P2397344761679925057

/-! ## A090912.P17245172952982135677

`gcd(Δ[A090911(n)], A000038(n))`
-/

namespace A090912.P17245172952982135677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A090912.P17245172952982135677

/-! ## A090912.P18073238913769238246

`∑{d}[Δ[A090911(n)], A000010(#)]`
-/

namespace A090912.P18073238913769238246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A090912.P18073238913769238246

/-! ## A090912.P18437427898673754388

`∏{d}[Δ[A090911(n)], A006530(#)]`
-/

namespace A090912.P18437427898673754388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A006530 d

end

end A090912.P18437427898673754388

/-! ## A090912.P3211117473403760323

`∏{d}[Δ[A090911(n)], A014963(#)]`
-/

namespace A090912.P3211117473403760323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A090912.P3211117473403760323

/-! ## A090912.P13305305288638387822

`A006530(∑{p}[Δ[A090911(n)], #])`
-/

namespace A090912.P13305305288638387822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A090912.P13305305288638387822

/-! ## A090912.P17445881987440126147

`A014963(∑{p}[Δ[A090911(n)], #])`
-/

namespace A090912.P17445881987440126147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A090912.P17445881987440126147

/-! ## A090912.P13806915789899191240

`abs(A090911(n+1)-A090911(n))`
-/

namespace A090912.P13806915789899191240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090911 (n + 1) - A090911 n|

end

end A090912.P13806915789899191240

/-! ## A090912.P7973970979876184945

`∑{d}[A090911(n+1)-A090911(n), A000010(#)]`
-/

namespace A090912.P7973970979876184945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090911 (n + 1) - A090911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A090912.P7973970979876184945

/-!
# A090913: Primes arising as the successive difference in A090910.

The programs for A090913, there is no canonical definition to state claims against.
-/

/-! ## A090913.P5893725026989038252

`abs(Δ[A090910(n)])`
-/

namespace A090913.P5893725026989038252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A090913.P5893725026989038252

/-! ## A090913.P1945356167792533571

`gcd(Δ[A090910(n)], A000038(n))`
-/

namespace A090913.P1945356167792533571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A090913.P1945356167792533571

/-! ## A090913.P6991863408135862590

`lcm(Δ[A090910(n)], A020985(n))`
-/

namespace A090913.P6991863408135862590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A020985 n)

end

end A090913.P6991863408135862590

/-! ## A090913.P8502861201542649700

`abs(A090910(n+1)-A090910(n))`
-/

namespace A090913.P8502861201542649700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090910 (n + 1) - A090910 n|

end

end A090913.P8502861201542649700

/-! ## A090913.P15550073922149985269

`sqrt(A000007(n+1)+Δ[A090910(n)]²)`
-/

namespace A090913.P15550073922149985269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090910 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000007 (n + 1) + (f1 (n + 1) - f1 n) ^ 2 : ℝ)

end

end A090913.P15550073922149985269

/-!
# A090914: Reciprocal of (n+1)! times determinant of n X n matrix whose (i,j)-th element is 1/(i+j).

The programs for A090914, there is no canonical definition to state claims against.
-/

/-! ## A090914.P2590250226278964167

`n!*∏[A125558(n)]`
-/

namespace A090914.P2590250226278964167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A090914.P2590250226278964167

/-! ## A090914.P12806942051010171462

`∏[A103371(A001105(n))]`
-/

namespace A090914.P12806942051010171462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103371 (A001105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090914.P12806942051010171462

/-! ## A090914.P3848072595508244759

`∏[A000894(n)]/A002457(n)`
-/

namespace A090914.P3848072595508244759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000894 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A002457 n : ℚ)

end

end A090914.P3848072595508244759

/-! ## A090914.P13052039662441074916

`A073617(2*n)*A338550(n)`
-/

namespace A090914.P13052039662441074916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073617 (2 * n) * A338550 n

end

end A090914.P13052039662441074916

/-! ## A090914.P1350472704613049561

`∏[A001246(n)*A179865(n+1)]`
-/

namespace A090914.P1350472704613049561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001246 n * A179865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090914.P1350472704613049561

/-!
# A090915: Permutation of natural numbers arising from a square spiral.

The programs for A090915, there is no canonical definition to state claims against.
-/

/-! ## A090915.P2426193038548407345

`A020703(A090928(n+1))`
-/

namespace A090915.P2426193038548407345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A090928 (n + 1)).toNat

end

end A090915.P2426193038548407345

/-! ## A090915.P3797702961784341488

`A090929(A090930(n+1))`
-/

namespace A090915.P3797702961784341488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A090930 (n + 1)).toNat

end

end A090915.P3797702961784341488

/-! ## A090915.P11701441912749160741

`A090930(A090925(n+1))`
-/

namespace A090915.P11701441912749160741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A090925 (n + 1)).toNat

end

end A090915.P11701441912749160741

/-! ## A090915.P13254326367939335163

`A090930(A020703(A090930(A132665(A132665(n+1)))))`
-/

namespace A090915.P13254326367939335163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A020703 (A090930 (A132665 (A132665 (n + 1)).toNat).toNat).toNat).toNat

end

end A090915.P13254326367939335163

/-! ## A090915.P18172131856088566983

`A090930(A020703(A090930(A210882(A210882(n+1)))))`
-/

namespace A090915.P18172131856088566983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A020703 (A090930 (A210882 (A210882 (n + 1)).toNat).toNat).toNat).toNat

end

end A090915.P18172131856088566983

/-! ## A090915.P16397048402189666564

`A090925(A090861(n+1))`
-/

namespace A090915.P16397048402189666564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A090861 (n + 1)).toNat

end

end A090915.P16397048402189666564

/-! ## A090915.P11086259401176051003

`A090861(A090929(n+1))`
-/

namespace A090915.P11086259401176051003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A090929 (n + 1)).toNat

end

end A090915.P11086259401176051003

/-! ## A090915.P7927198766596178808

`A090925(A090925(A020703(n+1)))`
-/

namespace A090915.P7927198766596178808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A090925 (A020703 (n + 1)).toNat).toNat

end

end A090915.P7927198766596178808

/-! ## A090915.P4940672772509207541

`A090861(A020703(A090861(A038722(A038722(n+1)))))`
-/

namespace A090915.P4940672772509207541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A020703 (A090861 (A038722 (A038722 (n + 1)).toNat).toNat).toNat).toNat

end

end A090915.P4940672772509207541

/-! ## A090915.P8134966947042565888

`A090861(A020703(A068225(A090861(A068225(n+1)))))`
-/

namespace A090915.P8134966947042565888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A020703 (A068225 (A090861 (A068225 (n + 1)).toNat).toNat).toNat).toNat

end

end A090915.P8134966947042565888

/-!
# A090918: Beginning with 3, least prime, greater than the previous term, such that the arithmetic mean of first n terms is a prime.

The programs for A090918, there is no canonical definition to state claims against.
-/

/-! ## A090918.P16298807872002332777

`Δ[n*A090919(A000038(n)+n)]`
-/

namespace A090918.P16298807872002332777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A090919 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090918.P16298807872002332777

/-! ## A090918.P2100913719334624305

`p?[A116591(n)*A162515(n)]`
-/

namespace A090918.P2100913719334624305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116591 n * A162515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090918.P2100913719334624305

/-! ## A090918.P6879152464045055148

`p?[∑[A220073(A206812(n+1))]]`
-/

namespace A090918.P6879152464045055148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (A206812 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090918.P6879152464045055148

/-! ## A090918.P13589761267789243828

`p?[or(A065330(n+1), A302648(2*n+1))]`
-/

namespace A090918.P13589761267789243828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065330 (n + 1)) (A302648 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090918.P13589761267789243828

/-!
# A090919: Primes arising as the arithmetic mean of first n terms of A090918.

The programs for A090919, there is no canonical definition to state claims against.
-/

/-! ## A090919.P12861585315907873430

`∑[A090918(n+1)]/(n+1)`
-/

namespace A090919.P12861585315907873430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090918 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A090919.P12861585315907873430

/-! ## A090919.P3903459044110210136

`A006530(∑[A090918(n+1)])`
-/

namespace A090919.P3903459044110210136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090919.P3903459044110210136

/-! ## A090919.P1863891743577083616

`A000040(A061395(∑[A090918(n+1)]))`
-/

namespace A090919.P1863891743577083616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A090919.P1863891743577083616

/-! ## A090919.P4936158628861634476

`A034699(∑[A090918(n+1)])`
-/

namespace A090919.P4936158628861634476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090919.P4936158628861634476

/-! ## A090919.P1630344701239616471

`A033677(∑[A090918(n+1)])`
-/

namespace A090919.P1630344701239616471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090919.P1630344701239616471

/-!
# A090920: Primes of the form n followed by the least k == 1 (mod n).

The programs for A090920, there is no canonical definition to state claims against.
-/

/-! ## A090920.P2515373083694877266

`A000040(A230854(n+1)+A096132(n+1))`
-/

namespace A090920.P2515373083694877266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230854 (n + 1) + A096132 (n + 1)).toNat

end

end A090920.P2515373083694877266

/-!
# A090925: Permutation of natural numbers arising from a square spiral.

The programs for A090925, there is no canonical definition to state claims against.
-/

/-! ## A090925.P5648847096319630994

`A020703(A090930(n+1))`
-/

namespace A090925.P5648847096319630994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A090930 (n + 1)).toNat

end

end A090925.P5648847096319630994

/-! ## A090925.P933934197070909688

`A060734(A194280(A093650(A194280(n+1))))`
-/

namespace A090925.P933934197070909688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A194280 (A093650 (A194280 (n + 1)).toNat).toNat).toNat

end

end A090925.P933934197070909688

/-! ## A090925.P13347205292795292865

`A090861(A020703(n+1))`
-/

namespace A090925.P13347205292795292865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A020703 (n + 1)).toNat

end

end A090925.P13347205292795292865

/-! ## A090925.P7795745706743976306

`A090915(A090861(n+1))`
-/

namespace A090925.P7795745706743976306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A090861 (n + 1)).toNat

end

end A090925.P7795745706743976306

/-! ## A090925.P18390425425620226055

`A090930(A090915(n+1))`
-/

namespace A090925.P18390425425620226055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A090915 (n + 1)).toNat

end

end A090925.P18390425425620226055

/-! ## A090925.P8091554489608798551

`A090929(A090928(n+1))`
-/

namespace A090925.P8091554489608798551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A090928 (n + 1)).toNat

end

end A090925.P8091554489608798551

/-! ## A090925.P6260435312732340395

`A090915(A020703(A090929(n+1)))`
-/

namespace A090925.P6260435312732340395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A020703 (A090929 (n + 1)).toNat).toNat

end

end A090925.P6260435312732340395

/-! ## A090925.P15084565024311397075

`A090861(A090929(A068225(A090861(A068225(n+1)))))`
-/

namespace A090925.P15084565024311397075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A090929 (A068225 (A090861 (A068225 (n + 1)).toNat).toNat).toNat).toNat

end

end A090925.P15084565024311397075

/-! ## A090925.P17254822873994762745

`A090861(A090929(A090861(A185413(A185413(n+1)))))`
-/

namespace A090925.P17254822873994762745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A090929 (A090861 (A185413 (A185413 (n + 1)).toNat).toNat).toNat).toNat

end

end A090925.P17254822873994762745

/-!
# A090926: Least odd prime divisor of prime(n)-1, or a(n) = 2 if no odd prime divisors are encountered.

The programs for A090926, there is no canonical definition to state claims against.
-/

/-! ## A090926.P16132075645147141476

`A007918(A023505(n+2))`
-/

namespace A090926.P16132075645147141476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A023505 (n + 2)).toNat

end

end A090926.P16132075645147141476

/-! ## A090926.P5563138289293433536

`A057237(A057023(n+2))+1`
-/

namespace A090926.P5563138289293433536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A057023 (n + 2)).toNat + 1

end

end A090926.P5563138289293433536

/-! ## A090926.P3803976131349389622

`A233583(A023505(n+2)+1)`
-/

namespace A090926.P3803976131349389622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A023505 (n + 2) + 1).toNat

end

end A090926.P3803976131349389622

/-! ## A090926.P10099022552610084327

`A151800(A023505(n+2)-1)`
-/

namespace A090926.P10099022552610084327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A023505 (n + 2) - 1).toNat

end

end A090926.P10099022552610084327

/-! ## A090926.P12021116010740207841

`A006530(2*A023505(n+2))`
-/

namespace A090926.P12021116010740207841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A023505 (n + 2)).toNat

end

end A090926.P12021116010740207841

/-! ## A090926.P2562800998134606325

`A039649(2*A023505(n+2))`
-/

namespace A090926.P2562800998134606325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (2 * A023505 (n + 2)).toNat

end

end A090926.P2562800998134606325

/-! ## A090926.P11881007390206809698

`A006530(lcm(2, A023505(n+2)))`
-/

namespace A090926.P11881007390206809698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A023505 (n + 2)))

end

end A090926.P11881007390206809698

/-! ## A090926.P13766445347119591633

`A006530(A023505(n+2)/tan(acot(4)))`
-/

namespace A090926.P13766445347119591633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A023505 (n + 2) : ℝ) / Real.tan (SequenceMachineLib.acot (4 : ℝ)))).toNat

end

end A090926.P13766445347119591633

/-! ## A090926.P12794819490087167492

`A006530(A023505(n+2)/(1/2)²)`
-/

namespace A090926.P12794819490087167492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A023505 (n + 2) : ℚ) / ((1 : ℚ) / 2) ^ 2)).toNat

end

end A090926.P12794819490087167492

/-! ## A090926.P3182017752546669430

`∑{d}[A000040(n+1), A057237(A339904(#))]`
-/

namespace A090926.P3182017752546669430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057237 (A339904 d).toNat

end

end A090926.P3182017752546669430

/-!
# A090927: Smallest prime beginning with prime(n) and having as many digits.

The programs for A090927, there is no canonical definition to state claims against.
-/

/-! ## A090927.P17267128667098298839

`A077504(A000040(n+1))`
-/

namespace A090927.P17267128667098298839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077504 (A000040 (n + 1)).toNat

end

end A090927.P17267128667098298839

/-! ## A090927.P17437570647660318938

`A086558(p?[∏{d}[n, #]])`
-/

namespace A090927.P17437570647660318938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086558 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A090927.P17437570647660318938

/-! ## A090927.P10756918960299554405

`A086558(p?[(-1)^n-1+n])`
-/

namespace A090927.P10756918960299554405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086558 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090927.P10756918960299554405

/-!
# A090928: Permutation of natural numbers arising from a square spiral.

The programs for A090928, there is no canonical definition to state claims against.
-/

/-! ## A090928.P11257063452003029462

`A090925(A090925(n+1))`
-/

namespace A090928.P11257063452003029462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A090925 (n + 1)).toNat

end

end A090928.P11257063452003029462

/-! ## A090928.P6101540734908364944

`A020703(A090915(n+1))`
-/

namespace A090928.P6101540734908364944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A090915 (n + 1)).toNat

end

end A090928.P6101540734908364944

/-! ## A090928.P9443166487709680751

`A090861(A090930(n+1))`
-/

namespace A090928.P9443166487709680751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A090930 (n + 1)).toNat

end

end A090928.P9443166487709680751

/-! ## A090928.P2609549559688481602

`A090929(A090929(n+1))`
-/

namespace A090928.P2609549559688481602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A090929 (n + 1)).toNat

end

end A090928.P2609549559688481602

/-! ## A090928.P8485863189274921171

`A090930(A090861(or(1, 2*n)-n))`
-/

namespace A090928.P8485863189274921171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A090861 (Nat.lor 1 (2 * n) - n)).toNat

end

end A090928.P8485863189274921171

/-!
# A090929: Permutation of natural numbers arising from a square spiral.

The programs for A090929, there is no canonical definition to state claims against.
-/

/-! ## A090929.P9182708686965505811

`A020703(A090861(n+1))`
-/

namespace A090929.P9182708686965505811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A090861 (n + 1)).toNat

end

end A090929.P9182708686965505811

/-! ## A090929.P17193695764848630323

`A090915(A090930(n+1))`
-/

namespace A090929.P17193695764848630323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A090930 (n + 1)).toNat

end

end A090929.P17193695764848630323

/-! ## A090929.P775675736460962799

`A090928(A090925(n+1))`
-/

namespace A090929.P775675736460962799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A090925 (n + 1)).toNat

end

end A090929.P775675736460962799

/-! ## A090929.P7786455189203522273

`A090930(A020703(n+1))`
-/

namespace A090929.P7786455189203522273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A020703 (n + 1)).toNat

end

end A090929.P7786455189203522273

/-! ## A090929.P16272759634557676947

`A090861(A090915(n+1))`
-/

namespace A090929.P16272759634557676947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A090915 (n + 1)).toNat

end

end A090929.P16272759634557676947

/-! ## A090929.P18090854592578546645

`A090861(A090925(A090861(A038722(A038722(n+1)))))`
-/

namespace A090929.P18090854592578546645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A090925 (A090861 (A038722 (A038722 (n + 1)).toNat).toNat).toNat).toNat

end

end A090929.P18090854592578546645

/-! ## A090929.P10029527250530864655

`A090861(A090925(A068225(A090861(A068225(n+1)))))`
-/

namespace A090929.P10029527250530864655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A090925 (A068225 (A090861 (A068225 (n + 1)).toNat).toNat).toNat).toNat

end

end A090929.P10029527250530864655

/-!
# A090930: Permutation of natural numbers arising from a square spiral.

The programs for A090930, there is no canonical definition to state claims against.
-/

/-! ## A090930.P4441211884040701833

`A020703(A090925(n+1))`
-/

namespace A090930.P4441211884040701833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A090925 (n + 1)).toNat

end

end A090930.P4441211884040701833

/-! ## A090930.P12517840886220586781

`A060736(A194280(A093650(A194280(n+1))))`
-/

namespace A090930.P12517840886220586781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060736 (A194280 (A093650 (A194280 (n + 1)).toNat).toNat).toNat

end

end A090930.P12517840886220586781

/-! ## A090930.P1497837498706650437

`A090929(A020703(n+1))`
-/

namespace A090930.P1497837498706650437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A020703 (n + 1)).toNat

end

end A090930.P1497837498706650437

/-! ## A090930.P3302887099569703599

`A090928(A090861(n+1))`
-/

namespace A090930.P3302887099569703599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A090861 (n + 1)).toNat

end

end A090930.P3302887099569703599

/-! ## A090930.P15645951739418910485

`A090925(A090915(n+1))`
-/

namespace A090930.P15645951739418910485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A090915 (n + 1)).toNat

end

end A090930.P15645951739418910485

/-! ## A090930.P13314049904916080850

`A090915(A090929(n+1))`
-/

namespace A090930.P13314049904916080850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A090929 (n + 1)).toNat

end

end A090930.P13314049904916080850

/-! ## A090930.P11740938540768069639

`A020703(A090861(A020703(A038722(A038722(n+1)))))`
-/

namespace A090930.P11740938540768069639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A090861 (A020703 (A038722 (A038722 (n + 1)).toNat).toNat).toNat).toNat

end

end A090930.P11740938540768069639

/-! ## A090930.P6330783384336111686

`A185413(A090915(A090861(A090915(A185413(n+1)))))`
-/

namespace A090930.P6330783384336111686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185413 (A090915 (A090861 (A090915 (A185413 (n + 1)).toNat).toNat).toNat).toNat

end

end A090930.P6330783384336111686

/-! ## A090930.P3996240802254649951

`A090861(A068225(A090915(A020703(A068225(n+1)))))`
-/

namespace A090930.P3996240802254649951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A068225 (A090915 (A020703 (A068225 (n + 1)).toNat).toNat).toNat).toNat

end

end A090930.P3996240802254649951

/-!
# A090931: Number of permutations of 1,...,2n with alternate odd/even entries that have no adjacent members when placed in a circle.

The programs for A090931, there is no canonical definition to state claims against.
-/

/-! ## A090931.P891323407529197337

`lcm(A211514(n), A241823(A188476(n)))`
-/

namespace A090931.P891323407529197337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A211514 n) (A241823 (A188476 n).toNat)

end

end A090931.P891323407529197337

/-! ## A090931.P9792130481224072257

`A236832(n+1)*A241823(A188476(n))`
-/

namespace A090931.P9792130481224072257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236832 (n + 1) * A241823 (A188476 n).toNat

end

end A090931.P9792130481224072257

/-!
# A090932: a(n) = n! / 2^floor(n/2).

The programs for A090932, the canonical program `A090932.P2572428195954928239` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090932 has offset 0).

The definition of A090932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090932.P2572428195954928239

`n!/2^floor(n/2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090932

/-- `n!/2^floor(n/2)` -/
def P2572428195954928239.Spec : Prop :=
  ∀ n, P2572428195954928239.a n = (A090932 n : ℚ)

end A090932

/-! ## A090932.P14475412525918994806

`C(n, 2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A090932.P14475412525918994806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.choose n 2 * a (n - 2)

end

end A090932.P14475412525918994806

namespace A090932

/-- `C(n, 2)*a(n-2)` -/
def P14475412525918994806.Spec : Prop :=
  ∀ n, (P14475412525918994806.a n : ℤ) = A090932 n

end A090932

/-! ## A090932.P2934026228830068696

`gcd(n, ∑[n])*a(n-1)` with `a(0)=1`
-/

namespace A090932.P2934026228830068696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) * a (n - 1)

end

end A090932.P2934026228830068696

namespace A090932

/-- `gcd(n, ∑[n])*a(n-1)` -/
def P2934026228830068696.Spec : Prop :=
  ∀ n, (P2934026228830068696.a n : ℤ) = A090932 n

end A090932

/-! ## A090932.P14550714222262600601

`lcm(2, n)/2*a(n-1)` with `a(0)=1`
-/

namespace A090932.P14550714222262600601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.lcm 2 n : ℚ) / 2 * a (n - 1)

end

end A090932.P14550714222262600601

namespace A090932

/-- `lcm(2, n)/2*a(n-1)` -/
def P14550714222262600601.Spec : Prop :=
  ∀ n, P14550714222262600601.a n = (A090932 n : ℚ)

end A090932

/-! ## A090932.P14378288694332787439

`(∑[n]-n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A090932.P14378288694332787439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * a (n - 2)

end

end A090932.P14378288694332787439

namespace A090932

/-- `(∑[n]-n)*a(n-2)` -/
def P14378288694332787439.Spec : Prop :=
  ∀ n, P14378288694332787439.a n = A090932 n

end A090932

/-! ## A090932.P17885973041880425531

`(n²-n)*a(n-2)/2` with `a(0)=1, a(1)=1`
-/

namespace A090932.P17885973041880425531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n ^ 2 : ℤ) - (n : ℤ) : ℚ) * (a (n - 2) / 2)

end

end A090932.P17885973041880425531

namespace A090932

/-- `(n²-n)*a(n-2)/2` -/
def P17885973041880425531.Spec : Prop :=
  ∀ n, P17885973041880425531.a n = (A090932 n : ℚ)

end A090932

/-! ## A090932.P459742070215531055

`a(n-2)/(∑[n]-n)^(-1)` with `a(0)=1, a(1)=1`
-/

namespace A090932.P459742070215531055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℚ) ^ (-1 : ℤ)

end

end A090932.P459742070215531055

namespace A090932

/-- `a(n-2)/(∑[n]-n)^(-1)` -/
def P459742070215531055.Spec : Prop :=
  ∀ n, P459742070215531055.a n = (A090932 n : ℚ)

end A090932

/-! ## A090932.P17676459696872048751

`(n-1)*a(n-2)*n/2` with `a(0)=1, a(1)=1`
-/

namespace A090932.P17676459696872048751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - 1 : ℚ) * a (n - 2) * ((n : ℚ) / 2)

end

end A090932.P17676459696872048751

namespace A090932

/-- `(n-1)*a(n-2)*n/2` -/
def P17676459696872048751.Spec : Prop :=
  ∀ n, P17676459696872048751.a n = (A090932 n : ℚ)

end A090932

/-! ## A090932.P3667092373670607407

`a(n-2)*Δ[a(n-2)+(2-n)²]` with `a(0)=1, a(1)=1`
-/

namespace A090932.P3667092373670607407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * (f1 (n + 1) - f1 n)

end

end A090932.P3667092373670607407

namespace A090932

/-- `a(n-2)*Δ[a(n-2)+(2-n)²]` -/
def P3667092373670607407.Spec : Prop :=
  ∀ n, P3667092373670607407.a n = A090932 n

end A090932

/-! ## A090932.P18106705475583114363

`a(n-1)*A026741(n)` with `a(0)=1`
-/

namespace A090932.P18106705475583114363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A026741 n

end

end A090932.P18106705475583114363

namespace A090932

/-- `a(n-1)*A026741(n)` -/
def P18106705475583114363.Spec : Prop :=
  ∀ n, P18106705475583114363.a n = A090932 n

end A090932

/-!
# A090933: Primes such that most significant digit swapped with all other digits yields primes.

The programs for A090933, there is no canonical definition to state claims against.
-/

/-! ## A090933.P11780770978874565421

`∩[A007500(n+1), A285514(n+1)]`
-/

namespace A090933.P11780770978874565421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090933.P11780770978874565421

/-! ## A090933.P8162235311716197936

`∩[A069706(n+1), A285514(n+1)]`
-/

namespace A090933.P8162235311716197936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090933.P8162235311716197936

/-!
# A090934: Primes such that least significant digit swapped with all other digits yields primes.

The programs for A090934, there is no canonical definition to state claims against.
-/

/-! ## A090934.P12305118742268164699

`∩[A107845(n+1), A176548(n+1)]`
-/

namespace A090934.P12305118742268164699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090934.P12305118742268164699

/-! ## A090934.P10233055924848634010

`record[A003459(n+1)%A027699(n+1)]`
-/

namespace A090934.P10233055924848634010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003459 (n + 1)) (A027699 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090934.P10233055924848634010

/-! ## A090934.P12215452744244270197

`∪[A068652(n+1), A185104(A061378(n)+2)]`
-/

namespace A090934.P12215452744244270197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185104 (A061378 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090934.P12215452744244270197

/-! ## A090934.P5011174007565895423

`A007500(lt[A205371(2*n+1), A212959(2*n)])`
-/

namespace A090934.P5011174007565895423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205371 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A090934.P5011174007565895423

/-!
# A090935: Number of rational knots with n crossings with unknotting gap.

The programs for A090935, there is no canonical definition to state claims against.
-/

/-! ## A090935.P3789787610792420052

`A042943(A026755(n))`
-/

namespace A090935.P3789787610792420052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042943 (A026755 n).toNat

end

end A090935.P3789787610792420052

/-! ## A090935.P3643844649337190

`A066739(A302401(n+2))-1`
-/

namespace A090935.P3643844649337190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066739 (A302401 (n + 2)).toNat - 1

end

end A090935.P3643844649337190

/-! ## A090935.P16056212600392244742

`A328740(n+1)+A163658(n)`
-/

namespace A090935.P16056212600392244742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328740 (n + 1) + A163658 n

end

end A090935.P16056212600392244742

/-!
# A090936: Number of rational knots and links with n crossings with unknotting (unlinking) gap.

The programs for A090936, there is no canonical definition to state claims against.
-/

/-! ## A090936.P4699984740859126731

`xor(A109973(A034386(n)), A227959(n))`
-/

namespace A090936.P4699984740859126731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A109973 (A034386 n).toNat) (A227959 n)

end

end A090936.P4699984740859126731

/-! ## A090936.P16297129960727366293

`A291929(n)+A002262(A299926(n+1))`
-/

namespace A090936.P16297129960727366293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291929 n + A002262 (A299926 (n + 1)).toNat

end

end A090936.P16297129960727366293

/-!
# A090937: a(1) = 1, a(2) = 2; for n > 2, a(n) = a(n-1) + (smallest integer >= n which is coprime to a(n-1)).

The programs for A090937, there is no canonical definition to state claims against.
-/

/-! ## A090937.P6502353985936627387

`∑[A331268(A163123(2*(n+1))+1)]`
-/

namespace A090937.P6502353985936627387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331268 (A163123 (2 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090937.P6502353985936627387

/-! ## A090937.P8874189462173872155

`∑[A105658(A059717(∏{p}[n+1, #^val((n+1)!, #)]))]`
-/

namespace A090937.P8874189462173872155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105658 (A059717 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (Nat.factorial (n + 1)) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090937.P8874189462173872155

/-! ## A090937.P4000214078288700906

`A347520(A027379(n))-A299757(n+1)`
-/

namespace A090937.P4000214078288700906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A027379 n).toNat - A299757 (n + 1)

end

end A090937.P4000214078288700906

/-!
# A090938: Least multiple of n == 1 (mod prime(n)).

The programs for A090938, there is no canonical definition to state claims against.
-/

/-! ## A090938.P14273247726342816054

`(n+1)*A091185(n+1)`
-/

namespace A090938.P14273247726342816054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A091185 (n + 1)

end

end A090938.P14273247726342816054

/-! ## A090938.P7722067719771714841

`(n+1)*(p?[A001057(n)]-A091276(n+1))`
-/

namespace A090938.P7722067719771714841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A091276 (n + 1))

end

end A090938.P7722067719771714841

/-! ## A090938.P714793507758459475

`(n+1)*(A000040(n+1)-A091276(n+1))`
-/

namespace A090938.P714793507758459475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000040 (n + 1) - A091276 (n + 1))

end

end A090938.P714793507758459475

/-! ## A090938.P5110669871523990419

`A033286(n+1)-(n+1)*A091276(n+1)`
-/

namespace A090938.P5110669871523990419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - (n + 1 : ℤ) * A091276 (n + 1)

end

end A090938.P5110669871523990419

/-! ## A090938.P13021061775240045282

`(n+1)*(A216884(n+1)-A091276(n+1))`
-/

namespace A090938.P13021061775240045282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A216884 (n + 1) - A091276 (n + 1))

end

end A090938.P13021061775240045282

/-! ## A090938.P4095579833174340678

`(n+1)*(p?[A000037(n+1)]-A091276(n+1))`
-/

namespace A090938.P4095579833174340678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A091276 (n + 1))

end

end A090938.P4095579833174340678

/-! ## A090938.P4281058381415810065

`(n+1)*(record[A006530(n+2)]-A091276(n+1))`
-/

namespace A090938.P4281058381415810065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A091276 (n + 1))

end

end A090938.P4281058381415810065

/-! ## A090938.P3458054077085334815

`(record[A014963(n+2)]-A091276(n+1))*(n+1)`
-/

namespace A090938.P3458054077085334815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A091276 (n + 1)) * (n + 1 : ℤ)

end

end A090938.P3458054077085334815

/-! ## A090938.P11852048492545086948

`(n+1)*(record[A020639(n+2)]-A091276(n+1))`
-/

namespace A090938.P11852048492545086948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A091276 (n + 1))

end

end A090938.P11852048492545086948

/-! ## A090938.P10634621565906343352

`(n+1)*(p?[A087246(n+1)]-A091276(n+1))`
-/

namespace A090938.P10634621565906343352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A091276 (n + 1))

end

end A090938.P10634621565906343352

/-!
# A090939: Least multiple of n == -1 (mod prime(n)).

The programs for A090939, there is no canonical definition to state claims against.
-/

/-! ## A090939.P8805100435302855101

`(n+1)*A091276(n+1)`
-/

namespace A090939.P8805100435302855101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A091276 (n + 1)

end

end A090939.P8805100435302855101

/-! ## A090939.P15338284708884789589

`A033286(n+1)-A090938(n+1)`
-/

namespace A090939.P15338284708884789589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - A090938 (n + 1)

end

end A090939.P15338284708884789589

/-! ## A090939.P3147680844632981588

`∑[A090942(n+1)]-A090938(n+1)`
-/

namespace A090939.P3147680844632981588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A090938 (n + 1)

end

end A090939.P3147680844632981588

/-! ## A090939.P15303937089607107489

`(n+1)*(Δ[A007504(n)]-A091185(n+1))`
-/

namespace A090939.P15303937089607107489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n - A091185 (n + 1))

end

end A090939.P15303937089607107489

/-! ## A090939.P8993837498145521735

`(n+1)*(p?[A001057(n)]-A091185(n+1))`
-/

namespace A090939.P8993837498145521735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A091185 (n + 1))

end

end A090939.P8993837498145521735

/-! ## A090939.P3257625002422318981

`(n+1)*A000040(n+1)-A090938(n+1)`
-/

namespace A090939.P3257625002422318981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 1) - A090938 (n + 1)

end

end A090939.P3257625002422318981

/-! ## A090939.P14266613156435905040

`(n+1)*(A000040(n+1)-A091185(n+1))`
-/

namespace A090939.P14266613156435905040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000040 (n + 1) - A091185 (n + 1))

end

end A090939.P14266613156435905040

/-! ## A090939.P8065765884544558045

`A033286(n+1)-(n+1)*A091185(n+1)`
-/

namespace A090939.P8065765884544558045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - (n + 1 : ℤ) * A091185 (n + 1)

end

end A090939.P8065765884544558045

/-! ## A090939.P14200003211764491874

`(n+1)*(A008578(n+2)-A091185(n+1))`
-/

namespace A090939.P14200003211764491874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008578 (n + 2) - A091185 (n + 1))

end

end A090939.P14200003211764491874

/-! ## A090939.P13179497448882034611

`(n+1)*(record[A006530(n+2)]-A091185(n+1))`
-/

namespace A090939.P13179497448882034611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A091185 (n + 1))

end

end A090939.P13179497448882034611

/-!
# A090940: a(n) = least odd prime distinct from earlier elements such that average of first n elements is prime.

The programs for A090940, there is no canonical definition to state claims against.
-/

/-! ## A090940.P2057759769255736484

`A000040(A091274(n+1))`
-/

namespace A090940.P2057759769255736484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091274 (n + 1)).toNat

end

end A090940.P2057759769255736484

/-! ## A090940.P8266406731945458838

`A008578(A091274(n+1)+1)`
-/

namespace A090940.P8266406731945458838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A091274 (n + 1) + 1).toNat

end

end A090940.P8266406731945458838

/-! ## A090940.P10616586169963198826

`A065091(A091274(n+1)-1)`
-/

namespace A090940.P10616586169963198826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A091274 (n + 1) - 1).toNat

end

end A090940.P10616586169963198826

/-! ## A090940.P7961665414987637702

`A158611(A091274(n+1)+2)`
-/

namespace A090940.P7961665414987637702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A091274 (n + 1) + 2).toNat

end

end A090940.P7961665414987637702

/-! ## A090940.P16984891099816063517

`A073846(2*A091274(n+1))`
-/

namespace A090940.P16984891099816063517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A091274 (n + 1)).toNat

end

end A090940.P16984891099816063517

/-! ## A090940.P10664055326287506765

`A082500(2*A091274(n+1))`
-/

namespace A090940.P10664055326287506765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A091274 (n + 1)).toNat

end

end A090940.P10664055326287506765

/-! ## A090940.P1260307755125875204

`A207790(2*A091274(n+1))`
-/

namespace A090940.P1260307755125875204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A091274 (n + 1)).toNat

end

end A090940.P1260307755125875204

/-! ## A090940.P325397741629959874

`∑{d}[A091274(n+1), A007444(#)]`
-/

namespace A090940.P325397741629959874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A090940.P325397741629959874

/-!
# A090941: Primes arising as the arithmetic means of the terms of A090940.

The programs for A090941, there is no canonical definition to state claims against.
-/

/-! ## A090941.P8629800600517293768

`∑[A090940(n+1)]/(n+1)`
-/

namespace A090941.P8629800600517293768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A090941.P8629800600517293768

/-! ## A090941.P16951705436464926823

`A000040(A091275(n+1))`
-/

namespace A090941.P16951705436464926823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091275 (n + 1)).toNat

end

end A090941.P16951705436464926823

/-! ## A090941.P4701406995768539744

`A006530(∑[A090940(n+1)])`
-/

namespace A090941.P4701406995768539744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090941.P4701406995768539744

/-! ## A090941.P1204792019166580386

`A034699(∑[A090940(n+1)])`
-/

namespace A090941.P1204792019166580386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090941.P1204792019166580386

/-! ## A090941.P5430617811217016146

`A008578(A091275(n+1)+1)`
-/

namespace A090941.P5430617811217016146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A091275 (n + 1) + 1).toNat

end

end A090941.P5430617811217016146

/-! ## A090941.P5948509109227943191

`A207790(2*A091275(n+1))`
-/

namespace A090941.P5948509109227943191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A091275 (n + 1)).toNat

end

end A090941.P5948509109227943191

/-! ## A090941.P14862799471024121013

`A006530(∑[A000040(A091274(n+1))])`
-/

namespace A090941.P14862799471024121013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091274 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090941.P14862799471024121013

/-!
# A090942: n-th arithmetic mean = prime(n).

The programs for A090942, the canonical program `A090942.P13553179152955353035` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090942 has offset 1).

The definition of A090942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090942.P14819315638311133474

`Δ[n*(A028815(n)-1)]`
-/

namespace A090942.P14819315638311133474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A028815 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090942.P14819315638311133474

namespace A090942

/-- `Δ[n*(A028815(n)-1)]` -/
def P14819315638311133474.Spec : Prop :=
  ∀ n, P14819315638311133474.a n = A090942 (n + 1)

end A090942

/-! ## A090942.P13553179152955353035

`Δ[n*A000040(abs(1-n)+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090942

/-- `Δ[n*A000040(abs(1-n)+1)]` -/
def P13553179152955353035.Spec : Prop :=
  ∀ n, P13553179152955353035.a n = A090942 (n + 1)

theorem P13553179152955353035.correct : P13553179152955353035.Spec := by
  intro n
  simp only [A090942, Nat.add_sub_cancel]

end A090942

/-! ## A090942.P17212689952784622584

`Δ[n*(A014689(abs(1-n)+1)+n)]`
-/

namespace A090942.P17212689952784622584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A014689 (|1 - (n : ℤ)| + 1).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090942.P17212689952784622584

namespace A090942

/-- `Δ[n*(A014689(abs(1-n)+1)+n)]` -/
def P17212689952784622584.Spec : Prop :=
  ∀ n, P17212689952784622584.a n = A090942 (n + 1)

end A090942

/-! ## A090942.P14156186623219222762

`A083723(n+1)-A083726(n)`
-/

namespace A090942.P14156186623219222762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083723 (n + 1) - A083726 n

end

end A090942.P14156186623219222762

namespace A090942

/-- `A083723(n+1)-A083726(n)` -/
def P14156186623219222762.Spec : Prop :=
  ∀ n, P14156186623219222762.a n = A090942 (n + 1)

end A090942

/-! ## A090942.P11049744764565486901

`A000040(n+1)+n*A075526(n)`
-/

namespace A090942.P11049744764565486901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n : ℤ) * A075526 n

end

end A090942.P11049744764565486901

namespace A090942

/-- `A000040(n+1)+n*A075526(n)` -/
def P11049744764565486901.Spec : Prop :=
  ∀ n, P11049744764565486901.a n = A090942 (n + 1)

end A090942

/-! ## A090942.P11442450564347897815

`A000040(n+1)+n*A054541(n+1)`
-/

namespace A090942.P11442450564347897815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n : ℤ) * A054541 (n + 1)

end

end A090942.P11442450564347897815

namespace A090942

/-- `A000040(n+1)+n*A054541(n+1)` -/
def P11442450564347897815.Spec : Prop :=
  ∀ n, P11442450564347897815.a n = A090942 (n + 1)

end A090942

/-! ## A090942.P6154201686287330677

`A000040(n+1)+n*A125266(n+1)`
-/

namespace A090942.P6154201686287330677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n : ℤ) * A125266 (n + 1)

end

end A090942.P6154201686287330677

namespace A090942

/-- `A000040(n+1)+n*A125266(n+1)` -/
def P6154201686287330677.Spec : Prop :=
  ∀ n, P6154201686287330677.a n = A090942 (n + 1)

end A090942

/-! ## A090942.P4747320194976199516

`A033286(n+1)-n*A008578(n+1)`
-/

namespace A090942.P4747320194976199516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - (n : ℤ) * A008578 (n + 1)

end

end A090942.P4747320194976199516

namespace A090942

/-- `A033286(n+1)-n*A008578(n+1)` -/
def P4747320194976199516.Spec : Prop :=
  ∀ n, P4747320194976199516.a n = A090942 (n + 1)

end A090942

/-! ## A090942.P4529471596682026010

`A033286(n+1)-n*A182986(n+1)`
-/

namespace A090942.P4529471596682026010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - (n : ℤ) * A182986 (n + 1)

end

end A090942.P4529471596682026010

namespace A090942

/-- `A033286(n+1)-n*A182986(n+1)` -/
def P4529471596682026010.Spec : Prop :=
  ∀ n, P4529471596682026010.a n = A090942 (n + 1)

end A090942

/-! ## A090942.P2879502372098826818

`A008578(n+1)+A033286(n+1)-A164931(n+1)`
-/

namespace A090942.P2879502372098826818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A033286 (n + 1) - A164931 (n + 1))

end

end A090942.P2879502372098826818

namespace A090942

/-- `A008578(n+1)+A033286(n+1)-A164931(n+1)` -/
def P2879502372098826818.Spec : Prop :=
  ∀ n, P2879502372098826818.a n = A090942 (n + 1)

end A090942

/-! ## A090942.P14870078569659628089

`Δ[A083726(n)]-1`
-/

namespace A090942.P14870078569659628089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A090942.P14870078569659628089

namespace A090942

/-- `Δ[A083726(n)]-1` -/
def P14870078569659628089.Spec : Prop :=
  ∀ n, P14870078569659628089.a n = A090942 (n + 1)

theorem P14870078569659628089.correct : P14870078569659628089.Spec := by
  intro n
  simp only [A090942, Nat.add_sub_cancel, A090942.P14870078569659628089.f1, A090942.P14870078569659628089.a, A090942.P13553179152955353035.f1, A090942.P13553179152955353035.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A083726, A083726.P16605921250459075972.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090942

/-! ## A090942.P6284930357241010066

`Δ[n*A008578(n+1)]`
-/

namespace A090942.P6284930357241010066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090942.P6284930357241010066

namespace A090942

/-- `Δ[n*A008578(n+1)]` -/
def P6284930357241010066.Spec : Prop :=
  ∀ n, P6284930357241010066.a n = A090942 (n + 1)

end A090942

/-! ## A090942.P17575355963998415517

`Δ[n*A182986(n+1)]`
-/

namespace A090942.P17575355963998415517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090942.P17575355963998415517

namespace A090942

/-- `Δ[n*A182986(n+1)]` -/
def P17575355963998415517.Spec : Prop :=
  ∀ n, P17575355963998415517.a n = A090942 (n + 1)

end A090942

/-! ## A090942.P11258402055408271582

`Δ[n*sqrt(A280076(n+1))]`
-/

namespace A090942.P11258402055408271582
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A280076 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090942.P11258402055408271582

namespace A090942

/-- `Δ[n*sqrt(A280076(n+1))]` -/
def P11258402055408271582.Spec : Prop :=
  ∀ n, P11258402055408271582.a n = (A090942 (n + 1) : ℝ)

end A090942

/-! ## A090942.P11426616269092000330

`Δ[n/2*A001747(n+1)]`
-/

namespace A090942.P11426616269092000330
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A001747 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090942.P11426616269092000330

namespace A090942

/-- `Δ[n/2*A001747(n+1)]` -/
def P11426616269092000330.Spec : Prop :=
  ∀ n, P11426616269092000330.a n = (A090942 (n + 1) : ℚ)

end A090942

/-! ## A090942.P11383088850898897412

`Δ[n*(A011974(n+1)-A000040(n+1))]`
-/

namespace A090942.P11383088850898897412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A011974 (n + 1) - A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090942.P11383088850898897412

namespace A090942

/-- `Δ[n*(A011974(n+1)-A000040(n+1))]` -/
def P11383088850898897412.Spec : Prop :=
  ∀ n, P11383088850898897412.a n = A090942 (n + 1)

end A090942

/-! ## A090942.P9277902021975262836

`A090178(n+1)+A092929(n+2)-A014688(n+1)`
-/

namespace A090942.P9277902021975262836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) + (A092929 (n + 2) - A014688 (n + 1))

end

end A090942.P9277902021975262836

namespace A090942

/-- `A090178(n+1)+A092929(n+2)-A014688(n+1)` -/
def P9277902021975262836.Spec : Prop :=
  ∀ n, P9277902021975262836.a n = A090942 (n + 1)

end A090942

/-! ## A090942.P10373430702515641317

`A008578(n+1)+A092929(n+2)-A008578(n+2)`
-/

namespace A090942.P10373430702515641317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A092929 (n + 2) - A008578 (n + 2))

end

end A090942.P10373430702515641317

namespace A090942

/-- `A008578(n+1)+A092929(n+2)-A008578(n+2)` -/
def P10373430702515641317.Spec : Prop :=
  ∀ n, P10373430702515641317.a n = A090942 (n + 1)

end A090942

/-! ## A090942.P4193145266210316165

`Δ[n*A158611(n+2)]`
-/

namespace A090942.P4193145266210316165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A158611 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090942.P4193145266210316165

namespace A090942

/-- `Δ[n*A158611(n+2)]` -/
def P4193145266210316165.Spec : Prop :=
  ∀ n, P4193145266210316165.a n = A090942 (n + 1)

end A090942

/-! ## A090942.P13204002480457643461

`Δ[n*Δ[A175965(n+1)]]`
-/

namespace A090942.P13204002480457643461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090942.P13204002480457643461

namespace A090942

/-- `Δ[n*Δ[A175965(n+1)]]` -/
def P13204002480457643461.Spec : Prop :=
  ∀ n, P13204002480457643461.a n = A090942 (n + 1)

end A090942

/-!
# A090945: Harmonic numbers (A001599) which are not perfect (A000396).

The programs for A090945, there is no canonical definition to state claims against.
-/

/-! ## A090945.P8226117696822171665

`A007340(n+2)%A020468(A067239(n))`
-/

namespace A090945.P8226117696822171665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007340 (n + 2)) (A020468 (A067239 n).toNat)

end

end A090945.P8226117696822171665

/-! ## A090945.P5343748320113659694

`A007340(ceil(A329296(n+1)/A000108(n)+n+1))`
-/

namespace A090945.P5343748320113659694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007340 ⌈(A329296 (n + 1) : ℚ) / (A000108 n : ℚ) + (n + 1 : ℚ)⌉.toNat

end

end A090945.P5343748320113659694

/-! ## A090945.P3433239184020192399

`A007340(ceil(A329296(n+1)/A001519(n)+n+1))`
-/

namespace A090945.P3433239184020192399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007340 ⌈(A329296 (n + 1) : ℚ) / (A001519 n : ℚ) + (n + 1 : ℚ)⌉.toNat

end

end A090945.P3433239184020192399

/-! ## A090945.P7120015826366875912

`A007340(ceil(A329296(n+1)/A261451(n)+n+1))`
-/

namespace A090945.P7120015826366875912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007340 ⌈(A329296 (n + 1) : ℚ) / (A261451 n : ℚ) + (n + 1 : ℚ)⌉.toNat

end

end A090945.P7120015826366875912

/-! ## A090945.P7669724390020213950

`A007340(ceil(A329296(n+1)/A007340(n+1)+n+1))`
-/

namespace A090945.P7669724390020213950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007340 ⌈(A329296 (n + 1) : ℚ) / (A007340 (n + 1) : ℚ) + (n + 1 : ℚ)⌉.toNat

end

end A090945.P7669724390020213950

/-!
# A090946: Non-Lucas numbers: complement of A000204.

The programs for A090946, the canonical program `A090946.P6276582592417008834` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090946 has offset 1).

The definition of A090946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090946.P6276582592417008834

`comp[Δ[round(ϕ^n)]]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090946

/-- `comp[Δ[round(ϕ^n)]]` -/
def P6276582592417008834.Spec : Prop :=
  ∀ n, (P6276582592417008834.a n : ℤ) = A090946 (n + 1)

theorem P6276582592417008834.correct : P6276582592417008834.Spec := by
  intro n
  simp only [A090946, Nat.add_sub_cancel]

end A090946

/-! ## A090946.P9326120216602837978

`and(comp[A000204(n+1)], -1)`
-/

namespace A090946.P9326120216602837978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-1)

end

end A090946.P9326120216602837978

namespace A090946

/-- `and(comp[A000204(n+1)], -1)` -/
def P9326120216602837978.Spec : Prop :=
  ∀ n, P9326120216602837978.a n = A090946 (n + 1)

end A090946

/-! ## A090946.P10242857897420928952

`∪[A057854(n+1), n²+n]`
-/

namespace A090946.P10242857897420928952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A090946.P10242857897420928952

namespace A090946

/-- `∪[A057854(n+1), n²+n]` -/
def P10242857897420928952.Spec : Prop :=
  ∀ n, (P10242857897420928952.a n : ℤ) = A090946 (n + 1)

end A090946

/-! ## A090946.P9158355527907240369

`comp[A000032(n+1)]%(2*(n+1))`
-/

namespace A090946.P9158355527907240369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % (2 * (n + 1))

end

end A090946.P9158355527907240369

namespace A090946

/-- `comp[A000032(n+1)]%(2*(n+1))` -/
def P9158355527907240369.Spec : Prop :=
  ∀ n, (P9158355527907240369.a n : ℤ) = A090946 (n + 1)

end A090946

/-! ## A090946.P9859617804388715849

`comp[A082587(n)]%A016933(n)`
-/

namespace A090946.P9859617804388715849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A016933 n)

end

end A090946.P9859617804388715849

namespace A090946

/-- `comp[A082587(n)]%A016933(n)` -/
def P9859617804388715849.Spec : Prop :=
  ∀ n, P9859617804388715849.a n = A090946 (n + 1)

end A090946

/-! ## A090946.P12917958531142178983

`∪[comp[A000032(n)], A002378(n)]`
-/

namespace A090946.P12917958531142178983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A090946.P12917958531142178983

namespace A090946

/-- `∪[comp[A000032(n)], A002378(n)]` -/
def P12917958531142178983.Spec : Prop :=
  ∀ n, (P12917958531142178983.a n : ℤ) = A090946 (n + 1)

end A090946

/-! ## A090946.P11102796317592661044

`∪[comp[A000032(n)], A007504(n)]`
-/

namespace A090946.P11102796317592661044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A090946.P11102796317592661044

namespace A090946

/-- `∪[comp[A000032(n)], A007504(n)]` -/
def P11102796317592661044.Spec : Prop :=
  ∀ n, (P11102796317592661044.a n : ℤ) = A090946 (n + 1)

end A090946

/-! ## A090946.P3355703328398396610

`∪[A000096(n), A057854(n+1)]`
-/

namespace A090946.P3355703328398396610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090946.P3355703328398396610

namespace A090946

/-- `∪[A000096(n), A057854(n+1)]` -/
def P3355703328398396610.Spec : Prop :=
  ∀ n, (P3355703328398396610.a n : ℤ) = A090946 (n + 1)

end A090946

/-! ## A090946.P7892316213492926932

`∪[A001571(n), A057854(n+1)]`
-/

namespace A090946.P7892316213492926932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090946.P7892316213492926932

namespace A090946

/-- `∪[A001571(n), A057854(n+1)]` -/
def P7892316213492926932.Spec : Prop :=
  ∀ n, (P7892316213492926932.a n : ℤ) = A090946 (n + 1)

end A090946

/-! ## A090946.P9281744519916764243

`∪[A001621(n), A057854(n+1)]`
-/

namespace A090946.P9281744519916764243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001621 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090946.P9281744519916764243

namespace A090946

/-- `∪[A001621(n), A057854(n+1)]` -/
def P9281744519916764243.Spec : Prop :=
  ∀ n, (P9281744519916764243.a n : ℤ) = A090946 (n + 1)

end A090946

/-! ## A090946.P12640636071123747924

`∪[A001859(n), A057854(n+1)]`
-/

namespace A090946.P12640636071123747924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090946.P12640636071123747924

namespace A090946

/-- `∪[A001859(n), A057854(n+1)]` -/
def P12640636071123747924.Spec : Prop :=
  ∀ n, (P12640636071123747924.a n : ℤ) = A090946 (n + 1)

end A090946

/-! ## A090946.P12291020178913897087

`∪[A002336(n), A057854(n+1)]`
-/

namespace A090946.P12291020178913897087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002336 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090946.P12291020178913897087

namespace A090946

/-- `∪[A002336(n), A057854(n+1)]` -/
def P12291020178913897087.Spec : Prop :=
  ∀ n, (P12291020178913897087.a n : ℤ) = A090946 (n + 1)

end A090946

/-! ## A090946.P8180220813841186748

`∪[A002378(n), A057854(n+1)]`
-/

namespace A090946.P8180220813841186748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090946.P8180220813841186748

namespace A090946

/-- `∪[A002378(n), A057854(n+1)]` -/
def P8180220813841186748.Spec : Prop :=
  ∀ n, (P8180220813841186748.a n : ℤ) = A090946 (n + 1)

end A090946

/-! ## A090946.P3793459817713793940

`∪[A002699(n), A057854(n+1)]`
-/

namespace A090946.P3793459817713793940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090946.P3793459817713793940

namespace A090946

/-- `∪[A002699(n), A057854(n+1)]` -/
def P3793459817713793940.Spec : Prop :=
  ∀ n, (P3793459817713793940.a n : ℤ) = A090946 (n + 1)

end A090946

/-! ## A090946.P9221401757241213104

`∪[A002939(n), A057854(n+1)]`
-/

namespace A090946.P9221401757241213104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090946.P9221401757241213104

namespace A090946

/-- `∪[A002939(n), A057854(n+1)]` -/
def P9221401757241213104.Spec : Prop :=
  ∀ n, (P9221401757241213104.a n : ℤ) = A090946 (n + 1)

end A090946

/-! ## A090946.P14488365947025888774

`∪[A005430(n), A057854(n+1)]`
-/

namespace A090946.P14488365947025888774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090946.P14488365947025888774

namespace A090946

/-- `∪[A005430(n), A057854(n+1)]` -/
def P14488365947025888774.Spec : Prop :=
  ∀ n, (P14488365947025888774.a n : ℤ) = A090946 (n + 1)

end A090946

/-! ## A090946.P17422912244256759334

`∪[A005476(n), A057854(n+1)]`
-/

namespace A090946.P17422912244256759334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090946.P17422912244256759334

namespace A090946

/-- `∪[A005476(n), A057854(n+1)]` -/
def P17422912244256759334.Spec : Prop :=
  ∀ n, (P17422912244256759334.a n : ℤ) = A090946 (n + 1)

end A090946

/-! ## A090946.P4641595439899570015

`∪[A005582(n), A057854(n+1)]`
-/

namespace A090946.P4641595439899570015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090946.P4641595439899570015

namespace A090946

/-- `∪[A005582(n), A057854(n+1)]` -/
def P4641595439899570015.Spec : Prop :=
  ∀ n, (P4641595439899570015.a n : ℤ) = A090946 (n + 1)

end A090946

/-!
# A090947: Largest prime factor of numerator of Bernoulli(2n) (or 1 if the numerator is 1).

The programs for A090947, there is no canonical definition to state claims against.
-/

/-! ## A090947.P14044510842197928717

`A006530(abs(A000367(n)))`
-/

namespace A090947.P14044510842197928717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A000367 n|.toNat

end

end A090947.P14044510842197928717

/-! ## A090947.P16090763548416188908

`gcd(A000367(n), A015161(A098446(3*n)))`
-/

namespace A090947.P16090763548416188908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000367 n) (A015161 (A098446 (3 * n)).toNat)

end

end A090947.P16090763548416188908

/-! ## A090947.P3491874356684994843

`A000265(A160110(n))`
-/

namespace A090947.P3491874356684994843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A160110 n).toNat

end

end A090947.P3491874356684994843

/-! ## A090947.P14725935508716978655

`A020639(abs(A000367(n)))`
-/

namespace A090947.P14725935508716978655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 |A000367 n|.toNat

end

end A090947.P14725935508716978655

/-!
# A090948: a(n) = (1/24)*(n+1)*(n+6)*(n^3+26*n^2+225*n+636).

The programs for A090948, there is no canonical definition to state claims against.
-/

/-! ## A090948.P8117029084306675035

`n*(n+5)*((n-1)^3+26*(n-1)²+225*(n-1)+636)/24`
-/

namespace A090948.P8117029084306675035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 5) : ℤ) * (((n : ℤ) - 1) ^ 3 + 26 * ((n : ℤ) - 1) ^ 2 + 225 * ((n : ℤ) - 1) + 636) : ℚ) / 24

end

end A090948.P8117029084306675035

/-! ## A090948.P4421089525135494407

`1/24*n*(n+5)*((n-1)^3+26*(n-1)²+225*(n-1)+636)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A090948.P4421089525135494407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * (n : ℚ) * (n + 5 : ℚ) * (((n : ℤ) - 1) ^ 3 + 26 * ((n : ℤ) - 1) ^ 2 + 225 * ((n : ℤ) - 1) + 636 : ℚ)

end

end A090948.P4421089525135494407

/-!
# A090949: a(n) = (1/24)*(n+1)*(3*n^3+59*n^2+358*n+648).

The programs for A090949, there is no canonical definition to state claims against.
-/

/-! ## A090949.P5421361211254524106

`n*(3*(n-1)^3+59*(n-1)²+358*(n-1)+648)/24`
-/

namespace A090949.P5421361211254524106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (3 * ((n : ℤ) - 1) ^ 3 + 59 * ((n : ℤ) - 1) ^ 2 + 358 * ((n : ℤ) - 1) + 648) : ℚ) / 24

end

end A090949.P5421361211254524106

/-! ## A090949.P13137263678018566625

`1/24*n*(3*(n-1)^3+59*(n-1)²+358*(n-1)+648)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A090949.P13137263678018566625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * (n : ℚ) * (3 * ((n : ℤ) - 1) ^ 3 + 59 * ((n : ℤ) - 1) ^ 2 + 358 * ((n : ℤ) - 1) + 648 : ℚ)

end

end A090949.P13137263678018566625

/-! ## A090949.P7746186362008375208

`A130863(n+1)-(∑[∑[∑[n]+n]]+n)`
-/

namespace A090949.P7746186362008375208
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130863 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A090949.P7746186362008375208

/-! ## A090949.P10969470407363626182

`A005587(n)+A350116(n)+n`
-/

namespace A090949.P10969470407363626182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 n + (A350116 n + (n : ℤ))

end

end A090949.P10969470407363626182

/-! ## A090949.P3894669941745831528

`A005587(n)-(n-A005843(n)-A350116(n))`
-/

namespace A090949.P3894669941745831528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 n - ((n : ℤ) - A005843 n - A350116 n)

end

end A090949.P3894669941745831528

/-! ## A090949.P12294830779597317397

`A024183(n+1)-(A000217(n+3)+A000217(n+3))`
-/

namespace A090949.P12294830779597317397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024183 (n + 1) - (A000217 (n + 3) + A000217 (n + 3))

end

end A090949.P12294830779597317397

/-! ## A090949.P8673278071206859793

`A024183(n+1)-A002378(n+3)`
-/

namespace A090949.P8673278071206859793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024183 (n + 1) - A002378 (n + 3)

end

end A090949.P8673278071206859793

/-! ## A090949.P5214112058259220650

`A000217(A052905(n+1))-A074742(n+3)`
-/

namespace A090949.P5214112058259220650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A052905 (n + 1)).toNat - A074742 (n + 3)

end

end A090949.P5214112058259220650

/-! ## A090949.P4818733271177087161

`A055999(A055999(n))+∑[A028347(n+2)]`
-/

namespace A090949.P4818733271177087161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028347 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (A055999 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090949.P4818733271177087161

/-! ## A090949.P5965760338354022470

`A055999(A056000(n))-A006503(n)`
-/

namespace A090949.P5965760338354022470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (A056000 n).toNat - A006503 n

end

end A090949.P5965760338354022470

/-! ## A090949.P15497150725484143601

`A052905(A056000(n))-∑[A027379(n)]`
-/

namespace A090949.P15497150725484143601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (A056000 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090949.P15497150725484143601

/-! ## A090949.P14107525044336523006

`A055999(A055999(n)+n)-A006503(n)`
-/

namespace A090949.P14107525044336523006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (A055999 n + (n : ℤ)).toNat - A006503 n

end

end A090949.P14107525044336523006

/-! ## A090949.P8043519283109583305

`A034856(A055999(n+1))-A008778(n+2)`
-/

namespace A090949.P8043519283109583305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (A055999 (n + 1)).toNat - A008778 (n + 2)

end

end A090949.P8043519283109583305

/-! ## A090949.P13019793892323348624

`A034856(A134227(n+2))-A008778(n+2)`
-/

namespace A090949.P13019793892323348624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (A134227 (n + 2)).toNat - A008778 (n + 2)

end

end A090949.P13019793892323348624

/-! ## A090949.P8002253396710019516

`A000096(A052905(n+1))-A006416(n+4)`
-/

namespace A090949.P8002253396710019516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A052905 (n + 1)).toNat - A006416 (n + 4)

end

end A090949.P8002253396710019516

/-!
# A090950: a(n) = (1/24)*(n+1)*(n+3)*(n^2+22*n+88).

The programs for A090950, there is no canonical definition to state claims against.
-/

/-! ## A090950.P4558564530770586143

`n*(n+2)*((n-1)²+22*(n-1)+88)/24`
-/

namespace A090950.P4558564530770586143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 2) : ℤ) * (((n : ℤ) - 1) ^ 2 + 22 * ((n : ℤ) - 1) + 88) : ℚ) / 24

end

end A090950.P4558564530770586143

/-! ## A090950.P17690115160081362589

`1/24*n*(n+2)*((n-1)²+22*(n-1)+88)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A090950.P17690115160081362589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * (n : ℚ) * (n + 2 : ℚ) * (((n : ℤ) - 1) ^ 2 + 22 * ((n : ℤ) - 1) + 88 : ℚ)

end

end A090950.P17690115160081362589

/-! ## A090950.P18220235509164618373

`A387204(n)+A005586(n)`
-/

namespace A090950.P18220235509164618373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387204 n + A005586 n

end

end A090950.P18220235509164618373

/-! ## A090950.P17002297353715148907

`A167543(n+8)+A058794(n)`
-/

namespace A090950.P17002297353715148907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167543 (n + 8) + A058794 n

end

end A090950.P17002297353715148907

/-! ## A090950.P2473918863870921896

`∑[A055809(n+4)-A103517(n)]`
-/

namespace A090950.P2473918863870921896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055809 (n + 4) - A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090950.P2473918863870921896

/-! ## A090950.P9852114704695450381

`A006504(n+1)-A000096(n+2)`
-/

namespace A090950.P9852114704695450381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) - A000096 (n + 2)

end

end A090950.P9852114704695450381

/-! ## A090950.P2479541939729812353

`abs(A006504(n+1)-Δ[A005286(n)])`
-/

namespace A090950.P2479541939729812353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006504 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A090950.P2479541939729812353

/-! ## A090950.P8716173924438112786

`A055832(n+6)-(A055831(n+5)+A055831(n+5))`
-/

namespace A090950.P8716173924438112786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 6) - (A055831 (n + 5) + A055831 (n + 5))

end

end A090950.P8716173924438112786

/-! ## A090950.P18017009521708473476

`record[A252870(n+1)-n*(n+2)]`
-/

namespace A090950.P18017009521708473476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252870 (n + 1) - (n * (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090950.P18017009521708473476

/-! ## A090950.P16374727691964168896

`A022815(n+2)-A055998(n+2)`
-/

namespace A090950.P16374727691964168896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 2) - A055998 (n + 2)

end

end A090950.P16374727691964168896

/-! ## A090950.P8564549433430708346

`record[A005712(n+2)-A034856(2*n+1)]`
-/

namespace A090950.P8564549433430708346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) - A034856 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090950.P8564549433430708346

/-! ## A090950.P14213537830620075272

`record[A027966(n+3)-A034856(2*(n+1))]`
-/

namespace A090950.P14213537830620075272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027966 (n + 3) - A034856 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090950.P14213537830620075272

/-!
# A090951: LCM of the first n numbers of the form p^q, where p and q are 1 or prime.

The programs for A090951, there is no canonical definition to state claims against.
-/

/-! ## A090951.P853352325530490223

`lcm(a(n-1), A283262(n))` with `a(0)=1, a(1)=2`
-/

namespace A090951.P853352325530490223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A283262 n)

end

end A090951.P853352325530490223

/-! ## A090951.P14746641364882017747

`lcm(floor(a(n-1)), A334393(n+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A090951.P14746641364882017747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A334393 (n + 1))

end

end A090951.P14746641364882017747

/-! ## A090951.P8519980837749408417

`record[lcm(a(n-2), A293224(n+1))]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A090951.P8519980837749408417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  Int.lcm (f1 (n - 2) : ℤ) (A293224 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090951.P8519980837749408417

/-! ## A090951.P12577156087685809476

`∏[A019555(A115975(n+1))]`
-/

namespace A090951.P12577156087685809476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A115975 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090951.P12577156087685809476

/-! ## A090951.P17742690829589968404

`lcm(-a(n-1), A000961(A101947(n+1)))` with `a(0)=1`
-/

namespace A090951.P17742690829589968404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (A000961 (A101947 (n + 1)).toNat)

end

end A090951.P17742690829589968404

/-!
# A090953: Lesser of the first pair of three successive prime pairs (no isolated primes occur in between). Least of the six successive primes which are member of prime pairs.

The programs for A090953, there is no canonical definition to state claims against.
-/

/-! ## A090953.P13666752098796045254

`A136143(A028310(n))-A000038(n)`
-/

namespace A090953.P13666752098796045254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136143 (A028310 n).toNat - A000038 n

end

end A090953.P13666752098796045254

/-! ## A090953.P12405451758428855022

`round(A136143(A028310(n))/A054977(n))`
-/

namespace A090953.P12405451758428855022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A136143 (A028310 n).toNat : ℚ) / (A054977 n : ℚ))

end

end A090953.P12405451758428855022

/-! ## A090953.P2711620876101969364

`A136143(A028310(n))-val(A020705(n), n+2)`
-/

namespace A090953.P2711620876101969364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136143 (A028310 n).toNat - (SequenceMachineLib.valuation (A020705 n).toNat (n + 2) : ℤ)

end

end A090953.P2711620876101969364

/-! ## A090953.P15248525304790680891

`A136143(A028310(n))-A049084(A000040(n+1)+1)`
-/

namespace A090953.P15248525304790680891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136143 (A028310 n).toNat - A049084 (A000040 (n + 1) + 1).toNat

end

end A090953.P15248525304790680891

/-! ## A090953.P17459787638907228782

`A136143(A028310(n))-2*A209229(n²+2)`
-/

namespace A090953.P17459787638907228782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136143 (A028310 n).toNat - 2 * A209229 (n ^ 2 + 2)

end

end A090953.P17459787638907228782

/-! ## A090953.P12444014519758365145

`A136143(A028310(n))-A008776(n)%3`
-/

namespace A090953.P12444014519758365145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136143 (A028310 n).toNat - Int.tmod (A008776 n) 3

end

end A090953.P12444014519758365145

/-! ## A090953.P8494686195077113075

`A136143(A028310(n))-A010673(A151878(n))`
-/

namespace A090953.P8494686195077113075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136143 (A028310 n).toNat - A010673 (A151878 n).toNat

end

end A090953.P8494686195077113075

/-!
# A090955: Numbers in increasing order such that successive sum and difference both are primes: a(n) + a(n-1) and a(n) - a(n-1) both are primes.

The programs for A090955, there is no canonical definition to state claims against.
-/

/-! ## A090955.P14271985715026517524

`A087711(a(n-1))` with `a(0)=1`
-/

namespace A090955.P14271985715026517524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087711 (a (n - 1)).toNat

end

end A090955.P14271985715026517524

/-! ## A090955.P15649283361710439491

`A020483(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A090955.P15649283361710439491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020483 (a (n - 1)).toNat + a (n - 1)

end

end A090955.P15649283361710439491

/-! ## A090955.P16326627873344421387

`A054906(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A090955.P16326627873344421387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054906 (a (n - 1)).toNat + a (n - 1)

end

end A090955.P16326627873344421387

/-! ## A090955.P13877707665337662513

`A020484(a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A090955.P13877707665337662513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020484 (a (n - 1)).toNat - a (n - 1)

end

end A090955.P13877707665337662513

/-! ## A090955.P4230409765515558057

`A204895(a(n-1)+a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A090955.P4230409765515558057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A204895 (a (n - 1) + a (n - 1)).toNat + a (n - 1)

end

end A090955.P4230409765515558057

/-! ## A090955.P9047312467959901082

`A014963(A204894(2*a(n-1)))-a(n-1)` with `a(0)=1`
-/

namespace A090955.P9047312467959901082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 (A204894 (2 * a (n - 1)).toNat).toNat - a (n - 1)

end

end A090955.P9047312467959901082

/-!
# A090957: a(n) = 1/(Integral_{x=0..1} (x^4 - x^5)^n dx).

The programs for A090957, there is no canonical definition to state claims against.
-/

/-! ## A090957.P1877523090536049840

`(4*n+1)*A079589(n)`
-/

namespace A090957.P1877523090536049840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A079589 n

end

end A090957.P1877523090536049840

/-! ## A090957.P1706523117755165538

`(5*n+1)*A001449(n)`
-/

namespace A090957.P1706523117755165538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) * A001449 n

end

end A090957.P1706523117755165538

/-! ## A090957.P8559265683832466661

`A001449(n)*A016861(n)`
-/

namespace A090957.P8559265683832466661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001449 n * A016861 n

end

end A090957.P8559265683832466661

/-! ## A090957.P11008476091252015676

`lcm(A001449(n), A079589(n))`
-/

namespace A090957.P11008476091252015676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001449 n) (A079589 n)

end

end A090957.P11008476091252015676

/-! ## A090957.P1751424643366729076

`A014493(2*n+1)*A118969(n)`
-/

namespace A090957.P1751424643366729076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (2 * n + 1) * A118969 n

end

end A090957.P1751424643366729076

/-! ## A090957.P14837418409266255510

`A002294(n)*(4*n+1)*A016861(n)`
-/

namespace A090957.P14837418409266255510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * (4 * n + 1 : ℤ) * A016861 n

end

end A090957.P14837418409266255510

/-! ## A090957.P11158910761150796075

`A001449(n)*A110654(A017281(n))`
-/

namespace A090957.P11158910761150796075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001449 n * A110654 (A017281 n).toNat

end

end A090957.P11158910761150796075

/-! ## A090957.P2806819191423700419

`C(5*n, n)*(5*n+1)`
-/

namespace A090957.P2806819191423700419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * n) n * (5 * n + 1)

end

end A090957.P2806819191423700419

/-!
# A090958: Numbers in increasing order such that the least multiple of prime(n) in the sequence is primorial(n).

The programs for A090958, the canonical program `A090958.P14420008161749182674` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090958 has offset 0).

The definition of A090958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090958.P8788569611353663270

`lt[A252735(n+1), A111972(n+2)]+1`
-/

namespace A090958.P8788569611353663270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A090958.P8788569611353663270

namespace A090958

/-- `lt[A252735(n+1), A111972(n+2)]+1` -/
def P8788569611353663270.Spec : Prop :=
  ∀ n, (P8788569611353663270.a n : ℤ) = A090958 n

end A090958

/-! ## A090958.P14420008161749182674

`lt[A061395(A028310(n)), A235224(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A090958

/-- `lt[A061395(A028310(n)), A235224(n)]` -/
def P14420008161749182674.Spec : Prop :=
  ∀ n, (P14420008161749182674.a n : ℤ) = A090958 n

theorem P14420008161749182674.correct : P14420008161749182674.Spec := by
  intro n
  simp only [A090958]

end A090958

/-! ## A090958.P13668826599044194515

`lt[A252735(A028310(n)), A111972(n+1)]`
-/

namespace A090958.P13668826599044194515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090958.P13668826599044194515

namespace A090958

/-- `lt[A252735(A028310(n)), A111972(n+1)]` -/
def P13668826599044194515.Spec : Prop :=
  ∀ n, (P13668826599044194515.a n : ℤ) = A090958 n

end A090958

/-! ## A090958.P11367338893780143999

`lt[A061395(A000038(n)+n), A235224(n)]`
-/

namespace A090958.P11367338893780143999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090958.P11367338893780143999

namespace A090958

/-- `lt[A061395(A000038(n)+n), A235224(n)]` -/
def P11367338893780143999.Spec : Prop :=
  ∀ n, (P11367338893780143999.a n : ℤ) = A090958 n

end A090958

/-! ## A090958.P6742232492623440673

`lt[A252735(A233583(n+1)), A111972(n+1)]`
-/

namespace A090958.P6742232492623440673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090958.P6742232492623440673

namespace A090958

/-- `lt[A252735(A233583(n+1)), A111972(n+1)]` -/
def P6742232492623440673.Spec : Prop :=
  ∀ n, (P6742232492623440673.a n : ℤ) = A090958 n

end A090958

/-!
# A090959: Index of primorial(n) in A090958.

The programs for A090959, there is no canonical definition to state claims against.
-/

/-! ## A090959.P16451998998735339017

`A103221(11*A150274(n))`
-/

namespace A090959.P16451998998735339017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (11 * A150274 n).toNat

end

end A090959.P16451998998735339017

/-! ## A090959.P14265157779468842646

`A256699(A150341(n))-n`
-/

namespace A090959.P14265157779468842646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256699 (A150341 n).toNat - (n : ℤ)

end

end A090959.P14265157779468842646

/-!
# A090960: Beginning with 1, least multiple of n such that every partial sum is a perfect cube.

The programs for A090960, there is no canonical definition to state claims against.
-/

/-! ## A090960.P3427601384656734750

`Δ[A303660(A304918(n))^3]`
-/

namespace A090960.P3427601384656734750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303660 (A304918 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090960.P3427601384656734750

/-!
# A090961: Cube root of n-th partial sum of A090960.

The programs for A090961, there is no canonical definition to state claims against.
-/

/-! ## A090961.P16457636513943960878

`root(∑[A090960(n+1)], 3)`
-/

namespace A090961.P16457636513943960878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090960 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (3 : ℝ))

end

end A090961.P16457636513943960878

/-! ## A090961.P7628808056486701342

`∑[gcd(∏{p}[n+1, #], A119943(n+8))]`
-/

namespace A090961.P7628808056486701342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) (A119943 (n + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090961.P7628808056486701342

/-! ## A090961.P3088744317235696532

`∑[∏{p}[A187829(n+1), A007967(#)]]`
-/

namespace A090961.P3088744317235696532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A007967 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090961.P3088744317235696532

/-! ## A090961.P18117799007478485429

`∑[∏{p}[A187829(A106608(n+1)), #]]`
-/

namespace A090961.P18117799007478485429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (A106608 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090961.P18117799007478485429

/-! ## A090961.P11771068887924624207

`∑[gcd(n+1, A089724(3*n+5)+1)]`
-/

namespace A090961.P11771068887924624207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A089724 (3 * n + 5) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090961.P11771068887924624207

/-!
# A090963: n-th root of the n-th partial sum of A090962.

The programs for A090963, there is no canonical definition to state claims against.
-/

/-! ## A090963.P5933560411727561265

`A006519(ceil(2^(n-1))+(n+1)²+1)+n`
-/

namespace A090963.P5933560411727561265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + ((n + 1) ^ 2 + 1 : ℤ)).toNat + (n : ℤ)

end

end A090963.P5933560411727561265

/-! ## A090963.P329522162664075116

`A069705(A153010(n))+n`
-/

namespace A090963.P329522162664075116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 (A153010 n).toNat + (n : ℤ)

end

end A090963.P329522162664075116

/-! ## A090963.P11302390603871385784

`A040005(A278760(n))+n`
-/

namespace A090963.P11302390603871385784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (A278760 n).toNat + (n : ℤ)

end

end A090963.P11302390603871385784

/-! ## A090963.P17325114378506077852

`A214027(A033428(n+4)+1)+n`
-/

namespace A090963.P17325114378506077852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (A033428 (n + 4) + 1).toNat + (n : ℤ)

end

end A090963.P17325114378506077852

/-! ## A090963.P11109418997488510265

`A008619(n)*A279387(A222596(n+1))`
-/

namespace A090963.P11109418997488510265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A279387 (A222596 (n + 1)).toNat

end

end A090963.P11109418997488510265

/-!
# A090964: Permutation of natural numbers generated by 2-rowed array shown below.

The programs for A090964, the canonical program `A090964.P1082315219160396645` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090964 has offset 0).

The definition of A090964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090964.P1082315219160396645

`a(n-4)+4` with `a(0)=1, a(1)=4, a(2)=2, a(3)=5, a(4)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090964

/-- `a(n-4)+4` -/
def P1082315219160396645.Spec : Prop :=
  ∀ n, (P1082315219160396645.a n : ℤ) = A090964 n

theorem P1082315219160396645.correct : P1082315219160396645.Spec := by
  intro n
  simp only [A090964]

end A090964

/-! ## A090964.P14318136469718470364

`4-(a((n-1)%4)-n)` with `a(0)=1`
-/

namespace A090964.P14318136469718470364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - (a (Int.tmod ((n : ℤ) - 1) 4).toNat - (n : ℤ))

end

end A090964.P14318136469718470364

namespace A090964

/-- `4-(a((n-1)%4)-n)` -/
def P14318136469718470364.Spec : Prop :=
  ∀ n, P14318136469718470364.a n = A090964 n

end A090964

/-! ## A090964.P9286549074019448965

`4-(a(and(3, n-1))-n)` with `a(0)=1`
-/

namespace A090964.P9286549074019448965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - (a (Int.land 3 ((n : ℤ) - 1)).toNat - (n : ℤ))

end

end A090964.P9286549074019448965

namespace A090964

/-- `4-(a(and(3, n-1))-n)` -/
def P9286549074019448965.Spec : Prop :=
  ∀ n, P9286549074019448965.a n = A090964 n

end A090964

/-! ## A090964.P8699368307418012771

`2-xor(1, -a(n-2))` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A090964.P8699368307418012771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2] fun n a =>
  2 - Int.xor 1 (-a (n - 2))

end

end A090964.P8699368307418012771

namespace A090964

/-- `2-xor(1, -a(n-2))` -/
def P8699368307418012771.Spec : Prop :=
  ∀ n, P8699368307418012771.a n = A090964 n

end A090964

/-! ## A090964.P18178888226766513211

`abs(Δ[log2(gcd(4, 1-n))-n]-n)`
-/

namespace A090964.P18178888226766513211
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (1 - (n : ℤ)) : ℝ) - (n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (n : ℝ)|

end

end A090964.P18178888226766513211

namespace A090964

/-- `abs(Δ[log2(gcd(4, 1-n))-n]-n)` -/
def P18178888226766513211.Spec : Prop :=
  ∀ n, P18178888226766513211.a n = (A090964 n : ℝ)

end A090964

/-! ## A090964.P1530125597766378486

`4-xor(1, 2-a(n-2))` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A090964.P1530125597766378486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2] fun n a =>
  4 - Int.xor 1 (2 - a (n - 2))

end

end A090964.P1530125597766378486

namespace A090964

/-- `4-xor(1, 2-a(n-2))` -/
def P1530125597766378486.Spec : Prop :=
  ∀ n, P1530125597766378486.a n = A090964 n

end A090964

/-! ## A090964.P9325454830547078841

`A115659(n+1)+1`
-/

namespace A090964.P9325454830547078841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115659 (n + 1) + 1

end

end A090964.P9325454830547078841

namespace A090964

/-- `A115659(n+1)+1` -/
def P9325454830547078841.Spec : Prop :=
  ∀ n, P9325454830547078841.a n = A090964 n

end A090964

/-! ## A090964.P8250728186246736957

`A116468(n+1)-A087960(n)`
-/

namespace A090964.P8250728186246736957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116468 (n + 1) - A087960 n

end

end A090964.P8250728186246736957

namespace A090964

/-- `A116468(n+1)-A087960(n)` -/
def P8250728186246736957.Spec : Prop :=
  ∀ n, P8250728186246736957.a n = A090964 n

end A090964

/-! ## A090964.P10036370287851694359

`A014681(a(n-2)+2)` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A090964.P10036370287851694359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2] fun n a =>
  A014681 (a (n - 2) + 2).toNat

end

end A090964.P10036370287851694359

namespace A090964

/-- `A014681(a(n-2)+2)` -/
def P10036370287851694359.Spec : Prop :=
  ∀ n, P10036370287851694359.a n = A090964 n

end A090964

/-! ## A090964.P4852072447879141113

`A103889(a(n-2)+2)` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A090964.P4852072447879141113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2] fun n a =>
  A103889 (a (n - 2) + 2).toNat

end

end A090964.P4852072447879141113

namespace A090964

/-- `A103889(a(n-2)+2)` -/
def P4852072447879141113.Spec : Prop :=
  ∀ n, P4852072447879141113.a n = A090964 n

end A090964

/-! ## A090964.P9736662749194073609

`A114112(a(n-2)+2)` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A090964.P9736662749194073609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2] fun n a =>
  A114112 (a (n - 2) + 2).toNat

end

end A090964.P9736662749194073609

namespace A090964

/-- `A114112(a(n-2)+2)` -/
def P9736662749194073609.Spec : Prop :=
  ∀ n, P9736662749194073609.a n = A090964 n

end A090964

/-! ## A090964.P12660018051354718812

`A014681(A116468(n+1))`
-/

namespace A090964.P12660018051354718812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A116468 (n + 1)).toNat

end

end A090964.P12660018051354718812

namespace A090964

/-- `A014681(A116468(n+1))` -/
def P12660018051354718812.Spec : Prop :=
  ∀ n, P12660018051354718812.a n = A090964 n

end A090964

/-! ## A090964.P14891922694965501663

`A133256(A014681(n)+1)`
-/

namespace A090964.P14891922694965501663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A014681 n + 1).toNat

end

end A090964.P14891922694965501663

namespace A090964

/-- `A133256(A014681(n)+1)` -/
def P14891922694965501663.Spec : Prop :=
  ∀ n, P14891922694965501663.a n = A090964 n

end A090964

/-! ## A090964.P15307972358608912193

`A133256(A065190(n+1))`
-/

namespace A090964.P15307972358608912193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A065190 (n + 1)).toNat

end

end A090964.P15307972358608912193

namespace A090964

/-- `A133256(A065190(n+1))` -/
def P15307972358608912193.Spec : Prop :=
  ∀ n, P15307972358608912193.a n = A090964 n

end A090964

/-! ## A090964.P5988452772335823608

`A133256(A114112(n+2)-1)`
-/

namespace A090964.P5988452772335823608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A114112 (n + 2) - 1).toNat

end

end A090964.P5988452772335823608

namespace A090964

/-- `A133256(A114112(n+2)-1)` -/
def P5988452772335823608.Spec : Prop :=
  ∀ n, P5988452772335823608.a n = A090964 n

end A090964

/-! ## A090964.P987893386118415309

`A056699(A263449(A014681(n)))`
-/

namespace A090964.P987893386118415309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (A263449 (A014681 n).toNat).toNat

end

end A090964.P987893386118415309

namespace A090964

/-- `A056699(A263449(A014681(n)))` -/
def P987893386118415309.Spec : Prop :=
  ∀ n, P987893386118415309.a n = A090964 n

end A090964

/-! ## A090964.P12510378357932425553

`A056699(A116966(A115659(A116966(n))))`
-/

namespace A090964.P12510378357932425553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (A116966 (A115659 (A116966 n).toNat).toNat).toNat

end

end A090964.P12510378357932425553

namespace A090964

/-- `A056699(A116966(A115659(A116966(n))))` -/
def P12510378357932425553.Spec : Prop :=
  ∀ n, P12510378357932425553.a n = A090964 n

end A090964

/-! ## A090964.P15384748941897447914

`A056699(A004442(A014681(A263426(A014681(n+1)))))`
-/

namespace A090964.P15384748941897447914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (A004442 (A014681 (A263426 (A014681 (n + 1)).toNat).toNat).toNat).toNat

end

end A090964.P15384748941897447914

namespace A090964

/-- `A056699(A004442(A014681(A263426(A014681(n+1)))))` -/
def P15384748941897447914.Spec : Prop :=
  ∀ n, P15384748941897447914.a n = A090964 n

end A090964

/-! ## A090964.P10364245143606603892

`A080412(A065164(n+1))`
-/

namespace A090964.P10364245143606603892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A065164 (n + 1)).toNat

end

end A090964.P10364245143606603892

namespace A090964

/-- `A080412(A065164(n+1))` -/
def P10364245143606603892.Spec : Prop :=
  ∀ n, P10364245143606603892.a n = A090964 n

end A090964

/-! ## A090964.P720136382401527645

`A267182(A047575(n+1))`
-/

namespace A090964.P720136382401527645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (A047575 (n + 1)).toNat

end

end A090964.P720136382401527645

namespace A090964

/-- `A267182(A047575(n+1))` -/
def P720136382401527645.Spec : Prop :=
  ∀ n, P720136382401527645.a n = A090964 n

end A090964

/-!
# A090965: a(n) = 8*a(n-1) - 4*a(n-2), where a(0) = 1, a(1) = 4.

The programs for A090965, the canonical program `A090965.P1829910304823426446` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090965 has offset 0).

The definition of A090965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-4*a(n-2)` (program `A090965.P1829910304823426446`, by `A090965.P1829910304823426446.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090965.P1829910304823426446

`8*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090965

/-- `8*a(n-1)-4*a(n-2)` -/
def P1829910304823426446.Spec : Prop :=
  ∀ n, P1829910304823426446.a n = A090965 n

theorem P1829910304823426446.correct : P1829910304823426446.Spec := by
  intro n
  simp only [A090965]

end A090965

/-! ## A090965.P17643041517496596623

`2^n*A001075(n)`
-/

namespace A090965.P17643041517496596623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001075 n

end

end A090965.P17643041517496596623

namespace A090965

/-- `2^n*A001075(n)` -/
def P17643041517496596623.Spec : Prop :=
  ∀ n, P17643041517496596623.a n = A090965 n

end A090965

/-! ## A090965.P3853664543470817626

`ogf((1-4x)/(1-8x+4x^2))`
-/

namespace A090965.P3853664543470817626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -8, 4] n

end

end A090965.P3853664543470817626

namespace A090965

/-- `ogf((1-4x)/(1-8x+4x^2))` -/
def P3853664543470817626.Spec : Prop :=
  ∀ n, P3853664543470817626.a n = A090965 n

end A090965

/-! ## A090965.P9091959237685076727

`(floor((sqrt(3)+2)^n)+1)*2^(n-1)`
-/

namespace A090965.P9091959237685076727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Real.sqrt (3 : ℝ) + 2) ^ n⌋ + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A090965.P9091959237685076727

namespace A090965

/-- `(floor((sqrt(3)+2)^n)+1)*2^(n-1)` -/
def P9091959237685076727.Spec : Prop :=
  ∀ n, P9091959237685076727.a n = (A090965 n : ℚ)

end A090965

/-! ## A090965.P6515294503842302654

`A026150(2*n)`
-/

namespace A090965.P6515294503842302654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (2 * n)

end

end A090965.P6515294503842302654

namespace A090965

/-- `A026150(2*n)` -/
def P6515294503842302654.Spec : Prop :=
  ∀ n, P6515294503842302654.a n = A090965 n

end A090965

/-! ## A090965.P7615203033254776751

`Δ[A028860(2*n)]`
-/

namespace A090965.P7615203033254776751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090965.P7615203033254776751

namespace A090965

/-- `Δ[A028860(2*n)]` -/
def P7615203033254776751.Spec : Prop :=
  ∀ n, P7615203033254776751.a n = A090965 n

end A090965

/-! ## A090965.P3647835170503742725

`A080876(2*(n+1))`
-/

namespace A090965.P3647835170503742725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080876 (2 * (n + 1))

end

end A090965.P3647835170503742725

namespace A090965

/-- `A080876(2*(n+1))` -/
def P3647835170503742725.Spec : Prop :=
  ∀ n, P3647835170503742725.a n = A090965 n

end A090965

/-! ## A090965.P6545808749019670930

`A160572(4*n+1)`
-/

namespace A090965.P6545808749019670930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160572 (4 * n + 1)

end

end A090965.P6545808749019670930

namespace A090965

/-- `A160572(4*n+1)` -/
def P6545808749019670930.Spec : Prop :=
  ∀ n, P6545808749019670930.a n = A090965 n

end A090965

/-! ## A090965.P9395847861782984376

`A160444(4*n+2)`
-/

namespace A090965.P9395847861782984376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (4 * n + 2)

end

end A090965.P9395847861782984376

namespace A090965

/-- `A160444(4*n+2)` -/
def P9395847861782984376.Spec : Prop :=
  ∀ n, P9395847861782984376.a n = A090965 n

end A090965

/-! ## A090965.P17026889799798335732

`A080040(2*n)/2`
-/

namespace A090965.P17026889799798335732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080040 (2 * n) : ℚ) / 2

end

end A090965.P17026889799798335732

namespace A090965

/-- `A080040(2*n)/2` -/
def P17026889799798335732.Spec : Prop :=
  ∀ n, P17026889799798335732.a n = (A090965 n : ℚ)

end A090965

/-! ## A090965.P9010966869138258885

`round(A080041(2*n)/2)`
-/

namespace A090965.P9010966869138258885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A080041 (2 * n) : ℚ) / 2)

end

end A090965.P9010966869138258885

namespace A090965

/-- `round(A080041(2*n)/2)` -/
def P9010966869138258885.Spec : Prop :=
  ∀ n, P9010966869138258885.a n = A090965 n

end A090965

/-! ## A090965.P9444956298439161398

`record[A026150(A005131(n))]`
-/

namespace A090965.P9444956298439161398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (A005131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090965.P9444956298439161398

namespace A090965

/-- `record[A026150(A005131(n))]` -/
def P9444956298439161398.Spec : Prop :=
  ∀ n, P9444956298439161398.a n = A090965 n

end A090965

/-! ## A090965.P4029850995847826133

`record[A026150(A014681(n))]`
-/

namespace A090965.P4029850995847826133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090965.P4029850995847826133

namespace A090965

/-- `record[A026150(A014681(n))]` -/
def P4029850995847826133.Spec : Prop :=
  ∀ n, P4029850995847826133.a n = A090965 n

end A090965

/-! ## A090965.P2256270815926325081

`record[A026150(A029578(n))]`
-/

namespace A090965.P2256270815926325081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090965.P2256270815926325081

namespace A090965

/-- `record[A026150(A029578(n))]` -/
def P2256270815926325081.Spec : Prop :=
  ∀ n, P2256270815926325081.a n = A090965 n

end A090965

/-! ## A090965.P9611892976417286144

`record[A026150(A237420(n))]`
-/

namespace A090965.P9611892976417286144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090965.P9611892976417286144

namespace A090965

/-- `record[A026150(A237420(n))]` -/
def P9611892976417286144.Spec : Prop :=
  ∀ n, P9611892976417286144.a n = A090965 n

end A090965

/-! ## A090965.P17287335722478273446

`lcm(A001075(n), A056450(n))`
-/

namespace A090965.P17287335722478273446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001075 n) (A056450 n)

end

end A090965.P17287335722478273446

namespace A090965

/-- `lcm(A001075(n), A056450(n))` -/
def P17287335722478273446.Spec : Prop :=
  ∀ n, (P17287335722478273446.a n : ℤ) = A090965 n

end A090965

/-! ## A090965.P16960141186373732001

`record[A026150(A152204(n)-1)]`
-/

namespace A090965.P16960141186373732001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (A152204 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090965.P16960141186373732001

namespace A090965

/-- `record[A026150(A152204(n)-1)]` -/
def P16960141186373732001.Spec : Prop :=
  ∀ n, P16960141186373732001.a n = A090965 n

end A090965

/-! ## A090965.P5746298229857466207

`record[A080879(n)-A002605(n)]`
-/

namespace A090965.P5746298229857466207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080879 n - A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090965.P5746298229857466207

namespace A090965

/-- `record[A080879(n)-A002605(n)]` -/
def P5746298229857466207.Spec : Prop :=
  ∀ n, P5746298229857466207.a n = A090965 n

end A090965

/-! ## A090965.P244475571376988912

`A102591(n)-A002605(2*n)`
-/

namespace A090965.P244475571376988912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102591 n - A002605 (2 * n)

end

end A090965.P244475571376988912

namespace A090965

/-- `A102591(n)-A002605(2*n)` -/
def P244475571376988912.Spec : Prop :=
  ∀ n, P244475571376988912.a n = A090965 n

end A090965

/-! ## A090965.P10330121714707865296

`A102591(n)-2*A099156(n)`
-/

namespace A090965.P10330121714707865296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102591 n - 2 * A099156 n

end

end A090965.P10330121714707865296

namespace A090965

/-- `A102591(n)-2*A099156(n)` -/
def P10330121714707865296.Spec : Prop :=
  ∀ n, P10330121714707865296.a n = A090965 n

end A090965

/-!
# A090967: Given the sequence of the sums of the divisors of the semiprimes, this is the subsequence where each sum is an even number.

The programs for A090967, there is no canonical definition to state claims against.
-/

/-! ## A090967.P2575080132328072115

`A063655(record[A176570(n+2)])`
-/

namespace A090967.P2575080132328072115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176570 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090967.P2575080132328072115

/-! ## A090967.P11119151710229921547

`filter[A068318(n+1), A059841(#)]`
-/

namespace A090967.P11119151710229921547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A090967.P11119151710229921547

/-! ## A090967.P4305938112278226751

`filter[A068318(n+1), A135528(#)]`
-/

namespace A090967.P4305938112278226751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A090967.P4305938112278226751

/-! ## A090967.P13682752245061552470

`filter[A068318(n+1), A266591(#)]`
-/

namespace A090967.P13682752245061552470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A090967.P13682752245061552470

/-! ## A090967.P10829843352024408253

`filter[A068318(n+1), A267043(#)]`
-/

namespace A090967.P10829843352024408253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A090967.P10829843352024408253

/-! ## A090967.P13550541195268411288

`A003415(∩[round(4*n/3), A001358(n+1)])`
-/

namespace A090967.P13550541195268411288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A090967.P13550541195268411288

/-! ## A090967.P12388788506679001976

`A074320(eq[2-a(n-1), A001222(n+2)]+2)` with `a(0)=1, a(1)=2`
-/

namespace A090967.P12388788506679001976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A090967.P12388788506679001976

/-! ## A090967.P6092687421357700862

`A063655(eq[2-a(n-1), A001222(n+2)]+2)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A090967.P6092687421357700862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  2 - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A090967.P6092687421357700862

/-! ## A090967.P4620867987989146880

`A074320(eq[A000034(n), A105700(n)])`
-/

namespace A090967.P4620867987989146880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090967.P4620867987989146880

/-! ## A090967.P5926292722057602432

`A074320(eq[A010149(n), A105700(n)])`
-/

namespace A090967.P5926292722057602432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090967.P5926292722057602432

/-!
# A090968: Primes p such that p^2 divides 19^(p-1) - 1.

The programs for A090968, there is no canonical definition to state claims against.
-/

/-! ## A090968.P7550158529273268751

`or(1, p?[A090427(n)])`
-/

namespace A090968.P7550158529273268751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A090968.P7550158529273268751

/-!
# A090969: a(n) = 1/Integral_{x=0..1} (x^5 - x^6)^n.

The programs for A090969, the canonical program `A090969.P461739243111457389` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090969 has offset 0).

The definition of A090969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090969.P461739243111457389

`A016921(n)*A004355(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090969

/-- `A016921(n)*A004355(n)` -/
def P461739243111457389.Spec : Prop :=
  ∀ n, P461739243111457389.a n = A090969 n

theorem P461739243111457389.correct : P461739243111457389.Spec := by
  intro n
  simp only [A090969]

end A090969

/-! ## A090969.P2517882287116085259

`A016861(n)*A079590(n)`
-/

namespace A090969.P2517882287116085259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A079590 n

end

end A090969.P2517882287116085259

namespace A090969

/-- `A016861(n)*A079590(n)` -/
def P2517882287116085259.Spec : Prop :=
  ∀ n, P2517882287116085259.a n = A090969 n

end A090969

/-! ## A090969.P16015227996277600414

`lcm(A004355(n), A079590(n))`
-/

namespace A090969.P16015227996277600414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004355 n) (A079590 n)

end

end A090969.P16015227996277600414

namespace A090969

/-- `lcm(A004355(n), A079590(n))` -/
def P16015227996277600414.Spec : Prop :=
  ∀ n, (P16015227996277600414.a n : ℤ) = A090969 n

end A090969

/-! ## A090969.P12855444435164424996

`(A008588(n)+1)*A004355(n)`
-/

namespace A090969.P12855444435164424996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008588 n + 1) * A004355 n

end

end A090969.P12855444435164424996

namespace A090969

/-- `(A008588(n)+1)*A004355(n)` -/
def P12855444435164424996.Spec : Prop :=
  ∀ n, P12855444435164424996.a n = A090969 n

theorem P12855444435164424996.correct : P12855444435164424996.Spec := by
  intro n
  simp only [A090969, Nat.add_sub_cancel, A090969.P12855444435164424996.a, A090969.P461739243111457389.a, A004355, A004355.P468162157677170159.a, A008588, A008588.P12386450284809463491.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A090969

/-! ## A090969.P2018014045275280223

`A004355(n)*A016777(2*n)`
-/

namespace A090969.P2018014045275280223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004355 n * A016777 (2 * n)

end

end A090969.P2018014045275280223

namespace A090969

/-- `A004355(n)*A016777(2*n)` -/
def P2018014045275280223.Spec : Prop :=
  ∀ n, P2018014045275280223.a n = A090969 n

theorem P2018014045275280223.correct : P2018014045275280223.Spec := by
  intro n
  simp only [A090969, Nat.add_sub_cancel, A090969.P2018014045275280223.a, A090969.P461739243111457389.a, A004355, A004355.P468162157677170159.a, A016777, A016777.P9931792138852554157.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A090969

/-! ## A090969.P11184192433008603265

`(A016861(n)+n)*A004355(n)`
-/

namespace A090969.P11184192433008603265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016861 n + (n : ℤ)) * A004355 n

end

end A090969.P11184192433008603265

namespace A090969

/-- `(A016861(n)+n)*A004355(n)` -/
def P11184192433008603265.Spec : Prop :=
  ∀ n, P11184192433008603265.a n = A090969 n

theorem P11184192433008603265.correct : P11184192433008603265.Spec := by
  intro n
  simp only [A090969, Nat.add_sub_cancel, A090969.P11184192433008603265.a, A090969.P461739243111457389.a, A004355, A004355.P468162157677170159.a, A016861, A016861.P12760207785627616280.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A090969

/-! ## A090969.P5646904670660803285

`(A016921(n)-n)*A079590(n)`
-/

namespace A090969.P5646904670660803285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 n - (n : ℤ)) * A079590 n

end

end A090969.P5646904670660803285

namespace A090969

/-- `(A016921(n)-n)*A079590(n)` -/
def P5646904670660803285.Spec : Prop :=
  ∀ n, P5646904670660803285.a n = A090969 n

end A090969

/-! ## A090969.P4516104351729679411

`A004355(n)*A004442(A008588(n))`
-/

namespace A090969.P4516104351729679411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004355 n * A004442 (A008588 n).toNat

end

end A090969.P4516104351729679411

namespace A090969

/-- `A004355(n)*A004442(A008588(n))` -/
def P4516104351729679411.Spec : Prop :=
  ∀ n, P4516104351729679411.a n = A090969 n

end A090969

/-! ## A090969.P10874878704877587508

`A004355(n)*A005408(A008585(n))`
-/

namespace A090969.P10874878704877587508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004355 n * A005408 (A008585 n).toNat

end

end A090969.P10874878704877587508

namespace A090969

/-- `A004355(n)*A005408(A008585(n))` -/
def P10874878704877587508.Spec : Prop :=
  ∀ n, P10874878704877587508.a n = A090969 n

end A090969

/-! ## A090969.P16098897239034162820

`A004355(n)*A008619(A008594(n))`
-/

namespace A090969.P16098897239034162820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004355 n * A008619 (A008594 n).toNat

end

end A090969.P16098897239034162820

namespace A090969

/-- `A004355(n)*A008619(A008594(n))` -/
def P16098897239034162820.Spec : Prop :=
  ∀ n, P16098897239034162820.a n = A090969 n

end A090969

/-!
# A090970: Number of primes strictly between T(n) and T(n+1), where T(n) = n-th triangular number.

The programs for A090970, there is no canonical definition to state claims against.
-/

/-! ## A090970.P18399491196011189970

`A065382(abs(1-n)+2)`
-/

namespace A090970.P18399491196011189970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065382 (|1 - (n : ℤ)| + 2).toNat

end

end A090970.P18399491196011189970

/-! ## A090970.P3864595762342704571

`A066888(ceil(sqrt(n²+4)))`
-/

namespace A090970.P3864595762342704571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat

end

end A090970.P3864595762342704571

/-! ## A090970.P3214818097050396353

`A282518(A171526(n+1))`
-/

namespace A090970.P3214818097050396353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282518 (A171526 (n + 1)).toNat

end

end A090970.P3214818097050396353

/-! ## A090970.P10312844506886726616

`A065382(n+1)-A000007(n)`
-/

namespace A090970.P10312844506886726616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065382 (n + 1) - A000007 n

end

end A090970.P10312844506886726616

/-! ## A090970.P13610475011206604863

`A065382(n+1)/A054977(n)`
-/

namespace A090970.P13610475011206604863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065382 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A090970.P13610475011206604863

/-! ## A090970.P13498249240910629059

`A066888(n+1)-(1-A134824(n)²)`
-/

namespace A090970.P13498249240910629059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (n + 1) - (1 - A134824 n ^ 2)

end

end A090970.P13498249240910629059

/-! ## A090970.P1487812205827087549

`A000720(2*n+1)+A066888(n+1)-A000720(2*(n+1))`
-/

namespace A090970.P1487812205827087549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1) + (A066888 (n + 1) - A000720 (2 * (n + 1)))

end

end A090970.P1487812205827087549

/-! ## A090970.P10681689686779616735

`A282518(A185012(n+1)+n+1)`
-/

namespace A090970.P10681689686779616735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282518 (A185012 (n + 1) + (n + 1 : ℤ)).toNat

end

end A090970.P10681689686779616735

/-! ## A090970.P17705512344590362386

`A065382(n+1)+A057062(n+2)-A123387(n+2)`
-/

namespace A090970.P17705512344590362386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065382 (n + 1) + (A057062 (n + 2) - A123387 (n + 2))

end

end A090970.P17705512344590362386

/-! ## A090970.P5216272059711552414

`A066888(2*n)+A282518(n+1)-A282518(2*n)`
-/

namespace A090970.P5216272059711552414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (2 * n) + (A282518 (n + 1) - A282518 (2 * n))

end

end A090970.P5216272059711552414

/-! ## A090970.P4534250951501940767

`A066888(n+1)-(A134824(2*n)+1)`
-/

namespace A090970.P4534250951501940767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (n + 1) - (A134824 (2 * n) + 1)

end

end A090970.P4534250951501940767

/-! ## A090970.P14699388745272783580

`A066888(n+1)/(2*(n+1)-A087156(2*n+1))`
-/

namespace A090970.P14699388745272783580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066888 (n + 1) : ℚ) / ((2 * (n + 1) : ℤ) - A087156 (2 * n + 1) : ℚ)

end

end A090970.P14699388745272783580

/-! ## A090970.P3587618710304638553

`A066888(n+1)/A066888(2*n+1)*A282518(2*n+1)`
-/

namespace A090970.P3587618710304638553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066888 (n + 1) : ℚ) / (A066888 (2 * n + 1) : ℚ) * (A282518 (2 * n + 1) : ℚ)

end

end A090970.P3587618710304638553

/-! ## A090970.P2020794862779720835

`gcd(A002182(n+1), A065382(n+1))`
-/

namespace A090970.P2020794862779720835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002182 (n + 1)) (A065382 (n + 1))

end

end A090970.P2020794862779720835

/-! ## A090970.P12616987908014208437

`gcd(A056835(n), A065382(n+1))`
-/

namespace A090970.P12616987908014208437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056835 n) (A065382 (n + 1))

end

end A090970.P12616987908014208437

/-! ## A090970.P10935247167016024551

`A197870(A100484(2*(n+1)))+A066888(n+1)`
-/

namespace A090970.P10935247167016024551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (A100484 (2 * (n + 1))).toNat + A066888 (n + 1)

end

end A090970.P10935247167016024551

/-! ## A090970.P7691971444262031200

`Δ[A033270(∑[n+1])]`
-/

namespace A090970.P7691971444262031200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090970.P7691971444262031200

/-!
# A090971: Sierpiński's triangle, read by rows, starting from 1: T(n,k) = (T(n-1,k) + T(n-1,k-1)) mod 2.

The programs for A090971, the canonical program `A090971.P17821217003743962815` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090971 has offset 1).

The definition of A090971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090971.P17821217003743962815

`C(row(n)+1, col(n)+1)%2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090971

/-- `C(row(n)+1, col(n)+1)%2` -/
def P17821217003743962815.Spec : Prop :=
  ∀ n, (P17821217003743962815.a n : ℤ) = A090971 (n + 1)

theorem P17821217003743962815.correct : P17821217003743962815.Spec := by
  intro n
  simp only [A090971, Nat.add_sub_cancel]

end A090971

/-! ## A090971.P280083103314392587

`A059260(n)%2`
-/

namespace A090971.P280083103314392587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059260 n) 2

end

end A090971.P280083103314392587

namespace A090971

/-- `A059260(n)%2` -/
def P280083103314392587.Spec : Prop :=
  ∀ n, P280083103314392587.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P8825337972723030277

`A106513(n)%2`
-/

namespace A090971.P8825337972723030277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106513 n) 2

end

end A090971.P8825337972723030277

namespace A090971

/-- `A106513(n)%2` -/
def P8825337972723030277.Spec : Prop :=
  ∀ n, P8825337972723030277.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P579394743446484098

`A110197(n)%2`
-/

namespace A090971.P579394743446484098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110197 n) 2

end

end A090971.P579394743446484098

namespace A090971

/-- `A110197(n)%2` -/
def P579394743446484098.Spec : Prop :=
  ∀ n, P579394743446484098.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P3777552428170630351

`A125165(n)%2`
-/

namespace A090971.P3777552428170630351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125165 n) 2

end

end A090971.P3777552428170630351

namespace A090971

/-- `A125165(n)%2` -/
def P3777552428170630351.Spec : Prop :=
  ∀ n, P3777552428170630351.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P2924541939699751215

`A125166(n)%2`
-/

namespace A090971.P2924541939699751215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125166 n) 2

end

end A090971.P2924541939699751215

namespace A090971

/-- `A125166(n)%2` -/
def P2924541939699751215.Spec : Prop :=
  ∀ n, P2924541939699751215.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P16139665873972408049

`A125170(n)%2`
-/

namespace A090971.P16139665873972408049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125170 n) 2

end

end A090971.P16139665873972408049

namespace A090971

/-- `A125170(n)%2` -/
def P16139665873972408049.Spec : Prop :=
  ∀ n, P16139665873972408049.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P12338002205980276940

`A125233(n)%2`
-/

namespace A090971.P12338002205980276940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125233 n) 2

end

end A090971.P12338002205980276940

namespace A090971

/-- `A125233(n)%2` -/
def P12338002205980276940.Spec : Prop :=
  ∀ n, P12338002205980276940.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P8664687835975562166

`A134081(n)%2`
-/

namespace A090971.P8664687835975562166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134081 n) 2

end

end A090971.P8664687835975562166

namespace A090971

/-- `A134081(n)%2` -/
def P8664687835975562166.Spec : Prop :=
  ∀ n, P8664687835975562166.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P12949528904793396567

`A135278(n)%2`
-/

namespace A090971.P12949528904793396567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135278 n) 2

end

end A090971.P12949528904793396567

namespace A090971

/-- `A135278(n)%2` -/
def P12949528904793396567.Spec : Prop :=
  ∀ n, P12949528904793396567.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P2859771689035942097

`A135857(n)%2`
-/

namespace A090971.P2859771689035942097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135857 n) 2

end

end A090971.P2859771689035942097

namespace A090971

/-- `A135857(n)%2` -/
def P2859771689035942097.Spec : Prop :=
  ∀ n, P2859771689035942097.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P7623728195464654874

`A166556(n)%2`
-/

namespace A090971.P7623728195464654874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166556 n) 2

end

end A090971.P7623728195464654874

namespace A090971

/-- `A166556(n)%2` -/
def P7623728195464654874.Spec : Prop :=
  ∀ n, P7623728195464654874.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P5857104005735357587

`A191582(n)%2`
-/

namespace A090971.P5857104005735357587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191582 n) 2

end

end A090971.P5857104005735357587

namespace A090971

/-- `A191582(n)%2` -/
def P5857104005735357587.Spec : Prop :=
  ∀ n, P5857104005735357587.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P8743342036710498062

`A193843(n)%2`
-/

namespace A090971.P8743342036710498062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193843 n) 2

end

end A090971.P8743342036710498062

namespace A090971

/-- `A193843(n)%2` -/
def P8743342036710498062.Spec : Prop :=
  ∀ n, P8743342036710498062.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P10293493805612759771

`and(1, A062534(n))`
-/

namespace A090971.P10293493805612759771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A062534 n)

end

end A090971.P10293493805612759771

namespace A090971

/-- `and(1, A062534(n))` -/
def P10293493805612759771.Spec : Prop :=
  ∀ n, P10293493805612759771.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P4639335221319858507

`and(1, A097808(n))`
-/

namespace A090971.P4639335221319858507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A097808 n)

end

end A090971.P4639335221319858507

namespace A090971

/-- `and(1, A097808(n))` -/
def P4639335221319858507.Spec : Prop :=
  ∀ n, P4639335221319858507.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P1120721763415389200

`and(1, A156644(n))`
-/

namespace A090971.P1120721763415389200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A156644 n)

end

end A090971.P1120721763415389200

namespace A090971

/-- `and(1, A156644(n))` -/
def P1120721763415389200.Spec : Prop :=
  ∀ n, P1120721763415389200.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P6512395182741309190

`and(1, A239473(n))`
-/

namespace A090971.P6512395182741309190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A239473 n)

end

end A090971.P6512395182741309190

namespace A090971

/-- `and(1, A239473(n))` -/
def P6512395182741309190.Spec : Prop :=
  ∀ n, P6512395182741309190.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P11003028398891454266

`and(1, A248811(n))`
-/

namespace A090971.P11003028398891454266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A248811 n)

end

end A090971.P11003028398891454266

namespace A090971

/-- `and(1, A248811(n))` -/
def P11003028398891454266.Spec : Prop :=
  ∀ n, P11003028398891454266.a n = A090971 (n + 1)

end A090971

/-! ## A090971.P1076196382642063158

`A047999(comp[∑[n]])`
-/

namespace A090971.P1076196382642063158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A090971.P1076196382642063158

namespace A090971

/-- `A047999(comp[∑[n]])` -/
def P1076196382642063158.Spec : Prop :=
  ∀ n, P1076196382642063158.a n = A090971 (n + 1)

end A090971

/-!
# A090972: Least k such that there are at least n primes between n and n*k.

The programs for A090972, the canonical program `A090972.P8282025296357103097` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090972 has offset 1).

The definition of A090972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090972.P15933719464934920947

`ceil(A077152(n+1)/(n+1))`
-/

namespace A090972.P15933719464934920947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077152 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A090972.P15933719464934920947

namespace A090972

/-- `ceil(A077152(n+1)/(n+1))` -/
def P15933719464934920947.Spec : Prop :=
  ∀ n, P15933719464934920947.a n = A090972 (n + 1)

end A090972

/-! ## A090972.P13128555133970920143

`floor(A084792(n+1)/(n+1))+1`
-/

namespace A090972.P13128555133970920143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084792 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A090972.P13128555133970920143

namespace A090972

/-- `floor(A084792(n+1)/(n+1))+1` -/
def P13128555133970920143.Spec : Prop :=
  ∀ n, P13128555133970920143.a n = A090972 (n + 1)

end A090972

/-! ## A090972.P11138561545386064974

`floor(A084747(n+1)/(n+1))+2`
-/

namespace A090972.P11138561545386064974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084747 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 2

end

end A090972.P11138561545386064974

namespace A090972

/-- `floor(A084747(n+1)/(n+1))+2` -/
def P11138561545386064974.Spec : Prop :=
  ∀ n, P11138561545386064974.a n = A090972 (n + 1)

end A090972

/-! ## A090972.P18435669268338284089

`ceil(A000203(A084792(n+1))/(n+1))`
-/

namespace A090972.P18435669268338284089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000203 (A084792 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌉

end

end A090972.P18435669268338284089

namespace A090972

/-- `ceil(A000203(A084792(n+1))/(n+1))` -/
def P18435669268338284089.Spec : Prop :=
  ∀ n, P18435669268338284089.a n = A090972 (n + 1)

end A090972

/-! ## A090972.P8282025296357103097

`floor(A000040(A095117(n+1))/(n+1))+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090972

/-- `floor(A000040(A095117(n+1))/(n+1))+1` -/
def P8282025296357103097.Spec : Prop :=
  ∀ n, P8282025296357103097.a n = A090972 (n + 1)

theorem P8282025296357103097.correct : P8282025296357103097.Spec := by
  intro n
  simp only [A090972, Nat.add_sub_cancel]

end A090972

/-! ## A090972.P13736327357212839841

`ceil(A008864(A036234(n+1)+n)/(n+1))`
-/

namespace A090972.P13736327357212839841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008864 (A036234 (n + 1) + (n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)⌉

end

end A090972.P13736327357212839841

namespace A090972

/-- `ceil(A008864(A036234(n+1)+n)/(n+1))` -/
def P13736327357212839841.Spec : Prop :=
  ∀ n, P13736327357212839841.a n = A090972 (n + 1)

end A090972

/-! ## A090972.P2774781223990810402

`round((A084792(n+1)+A004525(n+1))/(n+1))`
-/

namespace A090972.P2774781223990810402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A084792 (n + 1) + A004525 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A090972.P2774781223990810402

namespace A090972

/-- `round((A084792(n+1)+A004525(n+1))/(n+1))` -/
def P2774781223990810402.Spec : Prop :=
  ∀ n, P2774781223990810402.a n = A090972 (n + 1)

end A090972

/-!
# A090973: a(n) = ceiling(prime(n)/n).

The programs for A090973, the canonical program `A090973.P6773220539697647360` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090973 has offset 1).

The definition of A090973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A000040(n+1)/(n+1))` (program `A090973.P6773220539697647360`, by `A090973.P6773220539697647360.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090973.P6773220539697647360

`ceil(A000040(n+1)/(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090973

/-- `ceil(A000040(n+1)/(n+1))` -/
def P6773220539697647360.Spec : Prop :=
  ∀ n, P6773220539697647360.a n = A090973 (n + 1)

theorem P6773220539697647360.correct : P6773220539697647360.Spec := by
  intro n
  simp only [A090973, Nat.add_sub_cancel]

end A090973

/-! ## A090973.P12922330251886877101

`A076080(n+1)+1`
-/

namespace A090973.P12922330251886877101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076080 (n + 1) + 1

end

end A090973.P12922330251886877101

namespace A090973

/-- `A076080(n+1)+1` -/
def P12922330251886877101.Spec : Prop :=
  ∀ n, P12922330251886877101.a n = A090973 (n + 1)

end A090973

/-! ## A090973.P16928816929554398593

`A068902(n+1)/(n+1)`
-/

namespace A090973.P16928816929554398593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068902 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A090973.P16928816929554398593

namespace A090973

/-- `A068902(n+1)/(n+1)` -/
def P16928816929554398593.Spec : Prop :=
  ∀ n, P16928816929554398593.a n = (A090973 (n + 1) : ℚ)

end A090973

/-! ## A090973.P11425417731931753182

`ceil(sqrt(2*A079415(n+1)))`
-/

namespace A090973.P11425417731931753182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A079415 (n + 1) : ℝ)⌉

end

end A090973.P11425417731931753182

namespace A090973

/-- `ceil(sqrt(2*A079415(n+1)))` -/
def P11425417731931753182.Spec : Prop :=
  ∀ n, P11425417731931753182.a n = A090973 (n + 1)

end A090973

/-! ## A090973.P8298021223925333678

`ceil(Δ[A007504(n)]/(n+1))`
-/

namespace A090973.P8298021223925333678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌉

end

end A090973.P8298021223925333678

namespace A090973

/-- `ceil(Δ[A007504(n)]/(n+1))` -/
def P8298021223925333678.Spec : Prop :=
  ∀ n, P8298021223925333678.a n = A090973 (n + 1)

end A090973

/-! ## A090973.P5748592275297585284

`floor(A095116(n+1)/(n+1))`
-/

namespace A090973.P5748592275297585284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095116 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A090973.P5748592275297585284

namespace A090973

/-- `floor(A095116(n+1)/(n+1))` -/
def P5748592275297585284.Spec : Prop :=
  ∀ n, P5748592275297585284.a n = A090973 (n + 1)

end A090973

/-! ## A090973.P5678417193780011337

`A076079(n+1)/(n+1)+1`
-/

namespace A090973.P5678417193780011337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076079 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A090973.P5678417193780011337

namespace A090973

/-- `A076079(n+1)/(n+1)+1` -/
def P5678417193780011337.Spec : Prop :=
  ∀ n, P5678417193780011337.a n = (A090973 (n + 1) : ℚ)

end A090973

/-! ## A090973.P1745260661858160353

`ceil((A040976(n+1)+2)/(n+1))`
-/

namespace A090973.P1745260661858160353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A040976 (n + 1) + 2 : ℚ) / (n + 1 : ℚ)⌉

end

end A090973.P1745260661858160353

namespace A090973

/-- `ceil((A040976(n+1)+2)/(n+1))` -/
def P1745260661858160353.Spec : Prop :=
  ∀ n, P1745260661858160353.a n = A090973 (n + 1)

theorem P1745260661858160353.correct : P1745260661858160353.Spec := by
  intro n
  simp only [A090973, Nat.add_sub_cancel, A090973.P1745260661858160353.a, A090973.P6773220539697647360.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090973

/-! ## A090973.P4028978296366627192

`floor((A000040(C(n+1, n))+n)/(n+1))`
-/

namespace A090973.P4028978296366627192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (Nat.choose (n + 1) n) + (n : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A090973.P4028978296366627192

namespace A090973

/-- `floor((A000040(C(n+1, n))+n)/(n+1))` -/
def P4028978296366627192.Spec : Prop :=
  ∀ n, P4028978296366627192.a n = A090973 (n + 1)

end A090973

/-! ## A090973.P5586292480413039438

`floor((A000040(2*n+1-n)+n)/(n+1))`
-/

namespace A090973.P5586292480413039438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (2 * n + 1 - n) + (n : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A090973.P5586292480413039438

namespace A090973

/-- `floor((A000040(2*n+1-n)+n)/(n+1))` -/
def P5586292480413039438.Spec : Prop :=
  ∀ n, P5586292480413039438.a n = A090973 (n + 1)

end A090973

/-! ## A090973.P15720111711180559248

`A014430(A079415(n+1))`
-/

namespace A090973.P15720111711180559248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 (A079415 (n + 1)).toNat

end

end A090973.P15720111711180559248

namespace A090973

/-- `A014430(A079415(n+1))` -/
def P15720111711180559248.Spec : Prop :=
  ∀ n, P15720111711180559248.a n = A090973 (n + 1)

end A090973

/-! ## A090973.P15604127298201678164

`A038605(A028310(n)+1)+1`
-/

namespace A090973.P15604127298201678164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A028310 n + 1).toNat + 1

end

end A090973.P15604127298201678164

namespace A090973

/-- `A038605(A028310(n)+1)+1` -/
def P15604127298201678164.Spec : Prop :=
  ∀ n, P15604127298201678164.a n = A090973 (n + 1)

end A090973

/-! ## A090973.P9198295459004829369

`A002024(A079415(n+1)+1)`
-/

namespace A090973.P9198295459004829369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A079415 (n + 1) + 1).toNat

end

end A090973.P9198295459004829369

namespace A090973

/-- `A002024(A079415(n+1)+1)` -/
def P9198295459004829369.Spec : Prop :=
  ∀ n, P9198295459004829369.a n = A090973 (n + 1)

end A090973

/-! ## A090973.P10796441702581475058

`A057427(n)+A038605(n+1)`
-/

namespace A090973.P10796441702581475058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A038605 (n + 1)

end

end A090973.P10796441702581475058

namespace A090973

/-- `A057427(n)+A038605(n+1)` -/
def P10796441702581475058.Spec : Prop :=
  ∀ n, P10796441702581475058.a n = A090973 (n + 1)

end A090973

/-! ## A090973.P15716045695661935529

`A038605(n+1)-A057428(n)`
-/

namespace A090973.P15716045695661935529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1) - A057428 n

end

end A090973.P15716045695661935529

namespace A090973

/-- `A038605(n+1)-A057428(n)` -/
def P15716045695661935529.Spec : Prop :=
  ∀ n, P15716045695661935529.a n = A090973 (n + 1)

end A090973

/-! ## A090973.P8481491392660712952

`A038605(n+1)+1-A000007(n)`
-/

namespace A090973.P8481491392660712952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1) + (1 - A000007 n)

end

end A090973.P8481491392660712952

namespace A090973

/-- `A038605(n+1)+1-A000007(n)` -/
def P8481491392660712952.Spec : Prop :=
  ∀ n, P8481491392660712952.a n = A090973 (n + 1)

end A090973

/-! ## A090973.P15038606218982066628

`A075765(n+1)-A087611(n+1)`
-/

namespace A090973.P15038606218982066628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075765 (n + 1) - A087611 (n + 1)

end

end A090973.P15038606218982066628

namespace A090973

/-- `A075765(n+1)-A087611(n+1)` -/
def P15038606218982066628.Spec : Prop :=
  ∀ n, P15038606218982066628.a n = A090973 (n + 1)

end A090973

/-! ## A090973.P11165917343153206647

`A038605(n+1)+2-A054977(n)`
-/

namespace A090973.P11165917343153206647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1) + (2 - A054977 n)

end

end A090973.P11165917343153206647

namespace A090973

/-- `A038605(n+1)+2-A054977(n)` -/
def P11165917343153206647.Spec : Prop :=
  ∀ n, P11165917343153206647.a n = A090973 (n + 1)

end A090973

/-! ## A090973.P2142367822360838799

`A038605(n+1)+(n-A014681(n))²`
-/

namespace A090973.P2142367822360838799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1) + ((n : ℤ) - A014681 n) ^ 2

end

end A090973.P2142367822360838799

namespace A090973

/-- `A038605(n+1)+(n-A014681(n))²` -/
def P2142367822360838799.Spec : Prop :=
  ∀ n, P2142367822360838799.a n = A090973 (n + 1)

end A090973

/-! ## A090973.P2779873853083889211

`2/A038605(n+1)*A079415(n+1)`
-/

namespace A090973.P2779873853083889211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A038605 (n + 1) : ℚ) * (A079415 (n + 1) : ℚ)

end

end A090973.P2779873853083889211

namespace A090973

/-- `2/A038605(n+1)*A079415(n+1)` -/
def P2779873853083889211.Spec : Prop :=
  ∀ n, P2779873853083889211.a n = (A090973 (n + 1) : ℚ)

end A090973

/-!
# A090975: Least integer k such that n!+1-k is prime.

The programs for A090975, there is no canonical definition to state claims against.
-/

/-! ## A090975.P18009309431407025139

`A305806(n!+1)`
-/

namespace A090975.P18009309431407025139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305806 (Nat.factorial n + 1)

end

end A090975.P18009309431407025139

/-! ## A090975.P8760292652225552167

`A175851(n!+1)-1`
-/

namespace A090975.P8760292652225552167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (Nat.factorial n + 1) - 1

end

end A090975.P8760292652225552167

/-! ## A090975.P13357825557031191263

`A175851(or(1, n!))-1`
-/

namespace A090975.P13357825557031191263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (Nat.lor 1 (Nat.factorial n)) - 1

end

end A090975.P13357825557031191263

/-! ## A090975.P11220198902575535622

`lcm(floor(n/4), A175851(n!))`
-/

namespace A090975.P11220198902575535622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(n : ℚ) / 4⌋ (A175851 (Nat.factorial n))

end

end A090975.P11220198902575535622

/-!
# A090976: a(n) = 100 reduced mod n.

The programs for A090976, the canonical program `A090976.P18404362972132398022` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090976 has offset 1).

The definition of A090976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090976.P18404362972132398022

`-(-(20/2)²%(n+1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090976

/-- `-(-(20/2)²%(n+1))` -/
def P18404362972132398022.Spec : Prop :=
  ∀ n, P18404362972132398022.a n = A090976 (n + 1)

theorem P18404362972132398022.correct : P18404362972132398022.Spec := by
  intro n
  simp only [A090976, Nat.add_sub_cancel]

end A090976

/-!
# A090977: Least k such that k*prime(k) > 10^n.

The programs for A090977, there is no canonical definition to state claims against.
-/

/-! ## A090977.P2452499021909919987

`A000720(A306586(n))`
-/

namespace A090977.P2452499021909919987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A306586 n).toNat

end

end A090977.P2452499021909919987

/-! ## A090977.P9961698081472253052

`A061395(2*A306586(n))`
-/

namespace A090977.P9961698081472253052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A306586 n).toNat

end

end A090977.P9961698081472253052

/-! ## A090977.P5466088601192563128

`A061395(lcm(2, A306586(n)))`
-/

namespace A090977.P5466088601192563128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A306586 n))

end

end A090977.P5466088601192563128

/-!
# A090978: a(n) = n + Sum{a(k): 1<=k

The programs for A090978, there is no canonical definition to state claims against.
-/

/-! ## A090978.P16952198080276629728

`A055934(2*(n+1))/2`
-/

namespace A090978.P16952198080276629728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055934 (2 * (n + 1)) : ℚ) / 2

end

end A090978.P16952198080276629728

/-! ## A090978.P3524564352011491472

`floor(A055934(Δ[n²+n])/2)`
-/

namespace A090978.P3524564352011491472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055934 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌋

end

end A090978.P3524564352011491472

/-! ## A090978.P1970761211114054909

`A001281(A055934(2*(n+1)))`
-/

namespace A090978.P1970761211114054909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A055934 (2 * (n + 1))).toNat

end

end A090978.P1970761211114054909

/-! ## A090978.P11648182153374917142

`A004526(A055934(2*n+2))`
-/

namespace A090978.P11648182153374917142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A055934 (2 * n + 2)).toNat

end

end A090978.P11648182153374917142

/-! ## A090978.P14111555548051122324

`A014682(A055934(Δ[n²+n]))`
-/

namespace A090978.P14111555548051122324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A055934 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A090978.P14111555548051122324

/-! ## A090978.P12381174123475129284

`round(A055934(A004277(n+1))/2)`
-/

namespace A090978.P12381174123475129284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055934 (A004277 (n + 1)).toNat : ℚ) / 2)

end

end A090978.P12381174123475129284

/-! ## A090978.P17919222586539875593

`A028242(A055934(2*(n+1))+1)`
-/

namespace A090978.P17919222586539875593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A055934 (2 * (n + 1)) + 1).toNat

end

end A090978.P17919222586539875593

/-! ## A090978.P17737499995222766009

`A246277(A055934(2*C(n+1, n)))`
-/

namespace A090978.P17737499995222766009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A055934 (2 * Nat.choose (n + 1) n)).toNat

end

end A090978.P17737499995222766009

/-! ## A090978.P488057848582011415

`2^A008683(A092627(n+1))*A055934(2*(n+1))`
-/

namespace A090978.P488057848582011415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A092627 (n + 1)).toNat : ℤ) * (A055934 (2 * (n + 1)) : ℚ)

end

end A090978.P488057848582011415

/-!
# A090979: From the sequence of natural numbers, go on deleting n smallest multiples of n (>n) not deleted earlier; a(n) = the largest number deleted.

The programs for A090979, there is no canonical definition to state claims against.
-/

/-! ## A090979.P335896755397952951

`(n+1)*A061775(A026898(n+1))`
-/

namespace A090979.P335896755397952951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061775 (A026898 (n + 1)).toNat

end

end A090979.P335896755397952951

/-! ## A090979.P16044808569864085182

`(n+1)*A007862(A099476(2*n+1))`
-/

namespace A090979.P16044808569864085182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007862 (A099476 (2 * n + 1)).toNat

end

end A090979.P16044808569864085182

/-! ## A090979.P7379510591952610090

`A007862(A099476(2*n+1))*A348268(n)`
-/

namespace A090979.P7379510591952610090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A099476 (2 * n + 1)).toNat * A348268 n

end

end A090979.P7379510591952610090

/-! ## A090979.P12972779537679946480

`A030496(A067021(n+2))*A327105(2*n+1)`
-/

namespace A090979.P12972779537679946480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A067021 (n + 2)).toNat * A327105 (2 * n + 1)

end

end A090979.P12972779537679946480

/-!
# A090981: Triangle read by rows: T(n,k) = number of Schroeder paths of length 2n and having k ascents.

The programs for A090981, there is no canonical definition to state claims against.
-/

/-! ## A090981.P9906227756447967072

`A269396(A287532(n))`
-/

namespace A090981.P9906227756447967072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269396 (A287532 n).toNat

end

end A090981.P9906227756447967072

/-! ## A090981.P15234426411845386178

`A287532(n)-A058348(A157152(n))`
-/

namespace A090981.P15234426411845386178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287532 n - A058348 (A157152 n).toNat

end

end A090981.P15234426411845386178

/-! ## A090981.P7358948795732314828

`A287532(n)-A034331(A185651(n))`
-/

namespace A090981.P7358948795732314828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287532 n - A034331 (A185651 n).toNat

end

end A090981.P7358948795732314828

/-! ## A090981.P13667502170228206365

`A287532(n)-A058348(A176420(n))`
-/

namespace A090981.P13667502170228206365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287532 n - A058348 (A176420 n).toNat

end

end A090981.P13667502170228206365

/-! ## A090981.P15890769571620521826

`A287532(n)-A184955(A116089(n))`
-/

namespace A090981.P15890769571620521826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287532 n - A184955 (A116089 n).toNat

end

end A090981.P15890769571620521826

/-!
# A090982: a(n) = partitions(n)*partitions(n+1).

The programs for A090982, there is no canonical definition to state claims against.
-/

/-! ## A090982.P1666197680421711993

`A000041(n+1)*A000041(n)`
-/

namespace A090982.P1666197680421711993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) * A000041 n

end

end A090982.P1666197680421711993

/-! ## A090982.P17839623625585047193

`∏{d}[-a(n-1), A000041(n+2-#)]` with `a(0)=2`
-/

namespace A090982.P17839623625585047193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000041 (n + 2 - d)

end

end A090982.P17839623625585047193

/-! ## A090982.P5237710744679131229

`A000041(n)*Δ[A000070(n)]`
-/

namespace A090982.P5237710744679131229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * (f1 (n + 1) - f1 n)

end

end A090982.P5237710744679131229

/-! ## A090982.P12011399255529345312

`A000041(n)*record[A035363(n)]`
-/

namespace A090982.P12011399255529345312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090982.P12011399255529345312

/-! ## A090982.P1785043307942940344

`sqrt(A001255(n))*Δ[A000070(n)]`
-/

namespace A090982.P1785043307942940344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) * (f1 (n + 1) - f1 n : ℝ)

end

end A090982.P1785043307942940344

/-! ## A090982.P11873037646399681870

`∑[A002865(n)]*Δ[A000070(n)]`
-/

namespace A090982.P11873037646399681870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A090982.P11873037646399681870

/-! ## A090982.P11172868789220583963

`∑[A002865(n)]*record[A035363(n)]`
-/

namespace A090982.P11172868789220583963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A090982.P11172868789220583963

/-! ## A090982.P6326743901533525264

`Δ[A025065(2*n)]*A000041(n)`
-/

namespace A090982.P6326743901533525264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000041 n

end

end A090982.P6326743901533525264

/-! ## A090982.P13734690722554849557

`Δ[A000070(n)]*A035363(2*n)`
-/

namespace A090982.P13734690722554849557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035363 (2 * n)

end

end A090982.P13734690722554849557

/-! ## A090982.P7544241030857505848

`Δ[A000070(n)/2]*A139582(n)`
-/

namespace A090982.P7544241030857505848
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000070 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A139582 n : ℚ)

end

end A090982.P7544241030857505848

/-! ## A090982.P15495338329214341255

`record[A035363(n)]*A035363(2*n)`
-/

namespace A090982.P15495338329214341255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A035363 (2 * n)

end

end A090982.P15495338329214341255

/-! ## A090982.P13024416051020691386

`∑[A187219(n+1)]*∑[A002865(n)]`
-/

namespace A090982.P13024416051020691386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A090982.P13024416051020691386

/-! ## A090982.P5079558994316384888

`(A000065(n+1)+1)*A035363(2*n)`
-/

namespace A090982.P5079558994316384888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 (n + 1) + 1) * A035363 (2 * n)

end

end A090982.P5079558994316384888

/-! ## A090982.P2241848596425998295

`(A052810(n+1)-1)*A035363(2*n)`
-/

namespace A090982.P2241848596425998295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052810 (n + 1) - 1) * A035363 (2 * n)

end

end A090982.P2241848596425998295

/-! ## A090982.P17142857830727873162

`A035363(2*(n+1))*A035363(2*n)`
-/

namespace A090982.P17142857830727873162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) * A035363 (2 * n)

end

end A090982.P17142857830727873162

/-! ## A090982.P18117272634515404150

`A119620(2*(n+1))*A119620(2*n)`
-/

namespace A090982.P18117272634515404150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * (n + 1)) * A119620 (2 * n)

end

end A090982.P18117272634515404150

/-! ## A090982.P297858014795946004

`record[A000041(A008611(n))]*A000041(n)`
-/

namespace A090982.P297858014795946004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000041 n

end

end A090982.P297858014795946004

/-! ## A090982.P4188853969264335603

`(A047967(n)+A000009(n))*Δ[A000070(n)]`
-/

namespace A090982.P4188853969264335603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047967 n + A000009 n) * (f1 (n + 1) - f1 n)

end

end A090982.P4188853969264335603

/-! ## A090982.P10630671454500526247

`A194451(2*n+1)*A194451(A267458(2*n))`
-/

namespace A090982.P10630671454500526247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (2 * n + 1) * A194451 (A267458 (2 * n)).toNat

end

end A090982.P10630671454500526247

/-! ## A090982.P15494367675256698778

`sqrt(A001255(n+1))*A119620(2*n)`
-/

namespace A090982.P15494367675256698778
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 (n + 1) : ℝ) * (A119620 (2 * n) : ℝ)

end

end A090982.P15494367675256698778

/-!
# A090983: a(n) is the least nonsquare having square residues modulo each of the first n primes.

The programs for A090983, there is no canonical definition to state claims against.
-/

/-! ## A090983.P17899564948464125460

`A376427(A241482(n+1))`
-/

namespace A090983.P17899564948464125460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376427 (A241482 (n + 1)).toNat

end

end A090983.P17899564948464125460

/-! ## A090983.P6679051367073952344

`A053165(4*A241482(n+1))`
-/

namespace A090983.P6679051367073952344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (4 * A241482 (n + 1)).toNat

end

end A090983.P6679051367073952344

/-! ## A090983.P296849497956357713

`A002265(lcm(4, A241482(n+1)))`
-/

namespace A090983.P296849497956357713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lcm 4 (A241482 (n + 1)))

end

end A090983.P296849497956357713

/-! ## A090983.P1819073853422613531

`A007913(49*A241482(n+1))`
-/

namespace A090983.P1819073853422613531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (49 * A241482 (n + 1)).toNat

end

end A090983.P1819073853422613531

/-! ## A090983.P9504109599414422356

`A241482(n+1)/A010694(A026599(n))`
-/

namespace A090983.P9504109599414422356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241482 (n + 1) : ℚ) / (A010694 (A026599 n).toNat : ℚ)

end

end A090983.P9504109599414422356

/-!
# A090984: a(n) is the number of pairs (x,y) where x is plane partition of n+1 and y is a plane partition of n and x covers y.

The programs for A090984, there is no canonical definition to state claims against.
-/

/-! ## A090984.P8248289738488704732

`A379277(A083318(n))`
-/

namespace A090984.P8248289738488704732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379277 (A083318 n).toNat

end

end A090984.P8248289738488704732

/-! ## A090984.P11411091405830725799

`A379277(A127904(n+1))`
-/

namespace A090984.P11411091405830725799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379277 (A127904 (n + 1)).toNat

end

end A090984.P11411091405830725799

/-! ## A090984.P8664284334340100873

`record[A379277(A048675(n+1)+1)]`
-/

namespace A090984.P8664284334340100873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379277 (A048675 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090984.P8664284334340100873

/-! ## A090984.P7893186313988977851

`A379277(A359196(n+1)+A000079(n))`
-/

namespace A090984.P7893186313988977851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379277 (A359196 (n + 1) + A000079 n).toNat

end

end A090984.P7893186313988977851

/-!
# A090985: Triangle read by rows: T(n,k) is the number of dissections of a convex n-gon by nonintersecting diagonals, having exactly k triangles (n >= 2, k >= 0).

The programs for A090985, there is no canonical definition to state claims against.
-/

/-! ## A090985.P10816639555034215626

`∑{e}[A264980(A187784(n)), #]`
-/

namespace A090985.P10816639555034215626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264980 (A187784 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A090985.P10816639555034215626

/-! ## A090985.P18372340065790843497

`A255121(A265005(n+1)*A280192(n))`
-/

namespace A090985.P18372340065790843497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255121 (A265005 (n + 1) * A280192 n).toNat

end

end A090985.P18372340065790843497

/-!
# A090987: a(n) is the smallest prime whose square divides the numerator of the Bernoulli number B(A090997(n)).

The programs for A090987, there is no canonical definition to state claims against.
-/

/-! ## A090987.P11209694103969217654

`p?[9*a(n-1)+29+n]` with `a(0)=0, a(1)=0, a(2)=-2, a(3)=5, a(4)=7, a(5)=9, a(6)=0, a(7)=0, a(8)=-2, a(9)=5, a(10)=7`
-/

namespace A090987.P11209694103969217654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, -2, 5, 7, 9, 0, 0, -2, 5, 7] fun n f1 =>
  9 * f1 (n - 1) + 29 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090987.P11209694103969217654

/-!
# A090988: a(n) = 2^A004736(n).

The programs for A090988, the canonical program `A090988.P5141419551860329845` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090988 has offset 1).

The definition of A090988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090988.P5141419551860329845

`2^A004736(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A090988

/-- `2^A004736(n+1)` -/
def P5141419551860329845.Spec : Prop :=
  ∀ n, P5141419551860329845.a n = (A090988 (n + 1) : ℚ)

end A090988

/-! ## A090988.P3193040408745017734

`2^(row(n)+1-col(n))`
-/

namespace A090988.P3193040408745017734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A090988.P3193040408745017734

namespace A090988

/-- `2^(row(n)+1-col(n))` -/
def P3193040408745017734.Spec : Prop :=
  ∀ n, P3193040408745017734.a n = (A090988 (n + 1) : ℚ)

end A090988

/-! ## A090988.P8045447900698017973

`2*2^(row(n)-col(n))`
-/

namespace A090988.P8045447900698017973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A090988.P8045447900698017973

namespace A090988

/-- `2*2^(row(n)-col(n))` -/
def P8045447900698017973.Spec : Prop :=
  ∀ n, P8045447900698017973.a n = (A090988 (n + 1) : ℚ)

end A090988

/-! ## A090988.P14326583894887999377

`2^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A090988.P14326583894887999377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A090988.P14326583894887999377

namespace A090988

/-- `2^(C(comp[∑[n]]-n, 2)-n)` -/
def P14326583894887999377.Spec : Prop :=
  ∀ n, P14326583894887999377.a n = (A090988 (n + 1) : ℚ)

end A090988

/-! ## A090988.P5100635773468334387

`A130330(n)+1`
-/

namespace A090988.P5100635773468334387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n + 1

end

end A090988.P5100635773468334387

namespace A090988

/-- `A130330(n)+1` -/
def P5100635773468334387.Spec : Prop :=
  ∀ n, P5100635773468334387.a n = A090988 (n + 1)

end A090988

/-! ## A090988.P12872216395091032276

`2*A130321(n)`
-/

namespace A090988.P12872216395091032276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130321 n

end

end A090988.P12872216395091032276

namespace A090988

/-- `2*A130321(n)` -/
def P12872216395091032276.Spec : Prop :=
  ∀ n, P12872216395091032276.a n = A090988 (n + 1)

end A090988

/-! ## A090988.P6386505105887607337

`2*sqrt(A262616(n))`
-/

namespace A090988.P6386505105887607337
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A262616 n : ℝ)

end

end A090988.P6386505105887607337

namespace A090988

/-- `2*sqrt(A262616(n))` -/
def P6386505105887607337.Spec : Prop :=
  ∀ n, P6386505105887607337.a n = (A090988 (n + 1) : ℝ)

end A090988

/-! ## A090988.P14278466954966024730

`2^(A025581(n)+1)`
-/

namespace A090988.P14278466954966024730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n + 1 : ℤ)

end

end A090988.P14278466954966024730

namespace A090988

/-- `2^(A025581(n)+1)` -/
def P14278466954966024730.Spec : Prop :=
  ∀ n, P14278466954966024730.a n = (A090988 (n + 1) : ℚ)

end A090988

/-! ## A090988.P13203972297865379179

`2^sqrt(A055461(n+1))`
-/

namespace A090988.P13203972297865379179
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.sqrt (A055461 (n + 1) : ℝ))

end

end A090988.P13203972297865379179

namespace A090988

/-- `2^sqrt(A055461(n+1))` -/
def P13203972297865379179.Spec : Prop :=
  ∀ n, P13203972297865379179.a n = (A090988 (n + 1) : ℝ)

end A090988

/-! ## A090988.P16627090149617521663

`sqrt(2^A212012(n+1))`
-/

namespace A090988.P16627090149617521663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 : ℚ) ^ (A212012 (n + 1) : ℤ) : ℝ)

end

end A090988.P16627090149617521663

namespace A090988

/-- `sqrt(2^A212012(n+1))` -/
def P16627090149617521663.Spec : Prop :=
  ∀ n, P16627090149617521663.a n = (A090988 (n + 1) : ℝ)

end A090988

/-! ## A090988.P14469726980533937039

`2^(A127739(n+1)-n)`
-/

namespace A090988.P14469726980533937039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A127739 (n + 1) - (n : ℤ) : ℤ)

end

end A090988.P14469726980533937039

namespace A090988

/-- `2^(A127739(n+1)-n)` -/
def P14469726980533937039.Spec : Prop :=
  ∀ n, P14469726980533937039.a n = (A090988 (n + 1) : ℚ)

end A090988

/-! ## A090988.P14653755156609990498

`A000079(row(n)+1-col(n))`
-/

namespace A090988.P14653755156609990498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A090988.P14653755156609990498

namespace A090988

/-- `A000079(row(n)+1-col(n))` -/
def P14653755156609990498.Spec : Prop :=
  ∀ n, P14653755156609990498.a n = A090988 (n + 1)

end A090988

/-! ## A090988.P12531059876099880362

`A155559(row(n)-col(n)+1)`
-/

namespace A090988.P12531059876099880362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A090988.P12531059876099880362

namespace A090988

/-- `A155559(row(n)-col(n)+1)` -/
def P12531059876099880362.Spec : Prop :=
  ∀ n, P12531059876099880362.a n = A090988 (n + 1)

end A090988

/-! ## A090988.P15965166126806160648

`2^(A000217(∑[char[∑[n]]])-n)`
-/

namespace A090988.P15965166126806160648
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000217 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ) : ℤ)

end

end A090988.P15965166126806160648

namespace A090988

/-- `2^(A000217(∑[char[∑[n]]])-n)` -/
def P15965166126806160648.Spec : Prop :=
  ∀ n, P15965166126806160648.a n = (A090988 (n + 1) : ℚ)

end A090988

/-! ## A090988.P10897899575435905376

`A000079(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A090988.P10897899575435905376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A090988.P10897899575435905376

namespace A090988

/-- `A000079(C(comp[∑[n]]-n, 2)-n)` -/
def P10897899575435905376.Spec : Prop :=
  ∀ n, P10897899575435905376.a n = A090988 (n + 1)

end A090988

/-! ## A090988.P18107683577548923042

`2^A002260(∑[char[∑[n]]]²-n)`
-/

namespace A090988.P18107683577548923042
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) : ℤ)

end

end A090988.P18107683577548923042

namespace A090988

/-- `2^A002260(∑[char[∑[n]]]²-n)` -/
def P18107683577548923042.Spec : Prop :=
  ∀ n, P18107683577548923042.a n = (A090988 (n + 1) : ℚ)

end A090988

/-! ## A090988.P11969314514021811652

`2^(A004202(n+1)-(2*n+1))`
-/

namespace A090988.P11969314514021811652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004202 (n + 1) - (2 * n + 1 : ℤ) : ℤ)

end

end A090988.P11969314514021811652

namespace A090988

/-- `2^(A004202(n+1)-(2*n+1))` -/
def P11969314514021811652.Spec : Prop :=
  ∀ n, P11969314514021811652.a n = (A090988 (n + 1) : ℚ)

end A090988

/-! ## A090988.P6562798487727779094

`2^(round(sqrt(2*(n+1)))-A002262(n))`
-/

namespace A090988.P6562798487727779094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) - A002262 n : ℤ)

end

end A090988.P6562798487727779094

namespace A090988

/-- `2^(round(sqrt(2*(n+1)))-A002262(n))` -/
def P6562798487727779094.Spec : Prop :=
  ∀ n, P6562798487727779094.a n = (A090988 (n + 1) : ℚ)

end A090988

/-! ## A090988.P14035216446491263973

`A057048(A099375(n))`
-/

namespace A090988.P14035216446491263973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 (A099375 n).toNat

end

end A090988.P14035216446491263973

namespace A090988

/-- `A057048(A099375(n))` -/
def P14035216446491263973.Spec : Prop :=
  ∀ n, P14035216446491263973.a n = A090988 (n + 1)

end A090988

/-! ## A090988.P11869786449167465387

`A060546(A104571(n))`
-/

namespace A090988.P11869786449167465387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A104571 n).toNat

end

end A090988.P11869786449167465387

namespace A090988

/-- `A060546(A104571(n))` -/
def P11869786449167465387.Spec : Prop :=
  ∀ n, P11869786449167465387.a n = A090988 (n + 1)

end A090988

/-!
# A090989: Number of meaningful differential operations of the n-th order on the space R^4.

The programs for A090989, the canonical program `A090989.P6882462002057921049` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090989 has offset 1).

The definition of A090989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090989.P6882462002057921049

`2*a(n-2)` with `a(0)=4, a(1)=6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090989

/-- `2*a(n-2)` -/
def P6882462002057921049.Spec : Prop :=
  ∀ n, (P6882462002057921049.a n : ℤ) = A090989 (n + 1)

theorem P6882462002057921049.correct : P6882462002057921049.Spec := by
  intro n
  simp only [A090989, Nat.add_sub_cancel]

end A090989

/-! ## A090989.P9131883268364794828

`2*A164090(n+1)`
-/

namespace A090989.P9131883268364794828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164090 (n + 1)

end

end A090989.P9131883268364794828

namespace A090989

/-- `2*A164090(n+1)` -/
def P9131883268364794828.Spec : Prop :=
  ∀ n, P9131883268364794828.a n = A090989 (n + 1)

end A090989

/-! ## A090989.P2552231314263092164

`ogf((4+6x)/(1-2x^2))`
-/

namespace A090989.P2552231314263092164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 6] [1, 0, -2] n

end

end A090989.P2552231314263092164

namespace A090989

/-- `ogf((4+6x)/(1-2x^2))` -/
def P2552231314263092164.Spec : Prop :=
  ∀ n, P2552231314263092164.a n = A090989 (n + 1)

end A090989

/-! ## A090989.P8442967418849261710

`∑[2^ceil(n/2)]+3`
-/

namespace A090989.P8442967418849261710
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A090989.P8442967418849261710

namespace A090989

/-- `∑[2^ceil(n/2)]+3` -/
def P8442967418849261710.Spec : Prop :=
  ∀ n, P8442967418849261710.a n = (A090989 (n + 1) : ℚ)

end A090989

/-! ## A090989.P9138842982994693175

`a(n-2)/(1-1/2)` with `a(0)=4, a(1)=6`
-/

namespace A090989.P9138842982994693175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 6] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A090989.P9138842982994693175

namespace A090989

/-- `a(n-2)/(1-1/2)` -/
def P9138842982994693175.Spec : Prop :=
  ∀ n, P9138842982994693175.a n = (A090989 (n + 1) : ℚ)

end A090989

/-! ## A090989.P7174586662970061631

`∑[2^∑[a(n-2)²]]` with `a(0)=2, a(1)=-1, a(2)=0`
-/

namespace A090989.P7174586662970061631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 0] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090989.P7174586662970061631

namespace A090989

/-- `∑[2^∑[a(n-2)²]]` -/
def P7174586662970061631.Spec : Prop :=
  ∀ n, P7174586662970061631.a n = (A090989 (n + 1) : ℚ)

end A090989

/-! ## A090989.P11653683425270905914

`∑[a(n-2)+a(n-2)]` with `a(0)=4, a(1)=2, a(2)=2`
-/

namespace A090989.P11653683425270905914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 2] fun n f1 =>
  f1 (n - 2) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090989.P11653683425270905914

namespace A090989

/-- `∑[a(n-2)+a(n-2)]` -/
def P11653683425270905914.Spec : Prop :=
  ∀ n, (P11653683425270905914.a n : ℤ) = A090989 (n + 1)

end A090989

/-! ## A090989.P3998301511265167018

`∑[2^∑[(1-a(n-1))%2]]` with `a(0)=2`
-/

namespace A090989.P3998301511265167018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  Int.tmod (1 - f2 (n - 1)) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090989.P3998301511265167018

namespace A090989

/-- `∑[2^∑[(1-a(n-1))%2]]` -/
def P3998301511265167018.Spec : Prop :=
  ∀ n, P3998301511265167018.a n = (A090989 (n + 1) : ℚ)

end A090989

/-! ## A090989.P9530525708373538405

`floor(a(n-2)+floor(a(n-2)))` with `a(0)=4, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A090989.P9530525708373538405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n a =>
  a (n - 2) + a (n - 2)

end

end A090989.P9530525708373538405

namespace A090989

/-- `floor(a(n-2)+floor(a(n-2)))` -/
def P9530525708373538405.Spec : Prop :=
  ∀ n, (P9530525708373538405.a n : ℤ) = A090989 (n + 1)

theorem P9530525708373538405.correct : P9530525708373538405.Spec := by
  intro n
  simp only [A090989, Nat.add_sub_cancel, A090989.P9530525708373538405.a, A090989.P6882462002057921049.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A090989

/-! ## A090989.P5699421008954247569

`∑[2^∑[1-a(n-1)^n]]` with `a(0)=2`
-/

namespace A090989.P5699421008954247569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  1 - f2 (n - 1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090989.P5699421008954247569

namespace A090989

/-- `∑[2^∑[1-a(n-1)^n]]` -/
def P5699421008954247569.Spec : Prop :=
  ∀ n, P5699421008954247569.a n = (A090989 (n + 1) : ℚ)

end A090989

/-! ## A090989.P17773843672630570641

`A063759(n+2)`
-/

namespace A090989.P17773843672630570641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (n + 2)

end

end A090989.P17773843672630570641

namespace A090989

/-- `A063759(n+2)` -/
def P17773843672630570641.Spec : Prop :=
  ∀ n, P17773843672630570641.a n = A090989 (n + 1)

end A090989

/-! ## A090989.P10705267889210454294

`A163978(n+2)`
-/

namespace A090989.P10705267889210454294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (n + 2)

end

end A090989.P10705267889210454294

namespace A090989

/-- `A163978(n+2)` -/
def P10705267889210454294.Spec : Prop :=
  ∀ n, P10705267889210454294.a n = A090989 (n + 1)

end A090989

/-! ## A090989.P12291886331290773011

`A164090(n+3)`
-/

namespace A090989.P12291886331290773011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 3)

end

end A090989.P12291886331290773011

namespace A090989

/-- `A164090(n+3)` -/
def P12291886331290773011.Spec : Prop :=
  ∀ n, P12291886331290773011.a n = A090989 (n + 1)

end A090989

/-! ## A090989.P10635335748163692305

`A029744(n+4)`
-/

namespace A090989.P10635335748163692305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 4)

end

end A090989.P10635335748163692305

namespace A090989

/-- `A029744(n+4)` -/
def P10635335748163692305.Spec : Prop :=
  ∀ n, P10635335748163692305.a n = A090989 (n + 1)

end A090989

/-! ## A090989.P3197783040296350

`2*(A052955(n)+1)`
-/

namespace A090989.P3197783040296350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052955 n + 1)

end

end A090989.P3197783040296350

namespace A090989

/-- `2*(A052955(n)+1)` -/
def P3197783040296350.Spec : Prop :=
  ∀ n, P3197783040296350.a n = A090989 (n + 1)

end A090989

/-! ## A090989.P4490375676854011392

`A029750(2*(n+2))`
-/

namespace A090989.P4490375676854011392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (2 * (n + 2))

end

end A090989.P4490375676854011392

namespace A090989

/-- `A029750(2*(n+2))` -/
def P4490375676854011392.Spec : Prop :=
  ∀ n, P4490375676854011392.a n = A090989 (n + 1)

end A090989

/-! ## A090989.P6632940987937110728

`abs(Δ[A152166(n+1)])`
-/

namespace A090989.P6632940987937110728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A090989.P6632940987937110728

namespace A090989

/-- `abs(Δ[A152166(n+1)])` -/
def P6632940987937110728.Spec : Prop :=
  ∀ n, P6632940987937110728.a n = A090989 (n + 1)

end A090989

/-! ## A090989.P5604359935862042120

`abs(Δ[Δ[A052552(n+1)]])`
-/

namespace A090989.P5604359935862042120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A090989.P5604359935862042120

namespace A090989

/-- `abs(Δ[Δ[A052552(n+1)]])` -/
def P5604359935862042120.Spec : Prop :=
  ∀ n, P5604359935862042120.a n = A090989 (n + 1)

end A090989

/-! ## A090989.P15558768524532450089

`2*(A209721(n+1)-1)`
-/

namespace A090989.P15558768524532450089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209721 (n + 1) - 1)

end

end A090989.P15558768524532450089

namespace A090989

/-- `2*(A209721(n+1)-1)` -/
def P15558768524532450089.Spec : Prop :=
  ∀ n, P15558768524532450089.a n = A090989 (n + 1)

end A090989

/-! ## A090989.P545861309750361938

`2*(A209722(n+1)-2)`
-/

namespace A090989.P545861309750361938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209722 (n + 1) - 2)

end

end A090989.P545861309750361938

namespace A090989

/-- `2*(A209722(n+1)-2)` -/
def P545861309750361938.Spec : Prop :=
  ∀ n, P545861309750361938.a n = A090989 (n + 1)

end A090989

/-!
# A090990: Number of meaningful differential operations of the n-th order on the space R^5.

The programs for A090990, the canonical program `A090990.P8515828089900508944` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090990 has offset 1).

The definition of A090990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090990.P8515828089900508944

`a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=5, a(1)=9, a(2)=16`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090990

/-- `a(n-1)+2*a(n-2)-a(n-3)` -/
def P8515828089900508944.Spec : Prop :=
  ∀ n, P8515828089900508944.a n = A090990 (n + 1)

theorem P8515828089900508944.correct : P8515828089900508944.Spec := by
  intro n
  simp only [A090990, Nat.add_sub_cancel]

end A090990

/-! ## A090990.P5087812676948575827

`ogf((5+4x-3x^2)/(1-x-2x^2+x^3))`
-/

namespace A090990.P5087812676948575827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 4, -3] [1, -1, -2, 1] n

end

end A090990.P5087812676948575827

namespace A090990

/-- `ogf((5+4x-3x^2)/(1-x-2x^2+x^3))` -/
def P5087812676948575827.Spec : Prop :=
  ∀ n, P5087812676948575827.a n = A090990 (n + 1)

end A090990

/-! ## A090990.P2099407255839222852

`∑[A287381(n)]+3`
-/

namespace A090990.P2099407255839222852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A090990.P2099407255839222852

namespace A090990

/-- `∑[A287381(n)]+3` -/
def P2099407255839222852.Spec : Prop :=
  ∀ n, P2099407255839222852.a n = A090990 (n + 1)

end A090990

/-! ## A090990.P13518384462512798381

`∑[∑[A028495(n+1)]+1]+3`
-/

namespace A090990.P13518384462512798381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A090990.P13518384462512798381

namespace A090990

/-- `∑[∑[A028495(n+1)]+1]+3` -/
def P13518384462512798381.Spec : Prop :=
  ∀ n, P13518384462512798381.a n = A090990 (n + 1)

end A090990

/-! ## A090990.P15212218630506829956

`A028495(n)+2*A287381(n)`
-/

namespace A090990.P15212218630506829956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n + 2 * A287381 n

end

end A090990.P15212218630506829956

namespace A090990

/-- `A028495(n)+2*A287381(n)` -/
def P15212218630506829956.Spec : Prop :=
  ∀ n, P15212218630506829956.a n = A090990 (n + 1)

end A090990

/-! ## A090990.P12081881532911085412

`A287381(n+1)+A028495(n+1)`
-/

namespace A090990.P12081881532911085412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287381 (n + 1) + A028495 (n + 1)

end

end A090990.P12081881532911085412

namespace A090990

/-- `A287381(n+1)+A028495(n+1)` -/
def P12081881532911085412.Spec : Prop :=
  ∀ n, P12081881532911085412.a n = A090990 (n + 1)

end A090990

/-! ## A090990.P18425871159967187056

`A028495(n+2)+A028495(n+3)`
-/

namespace A090990.P18425871159967187056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (n + 2) + A028495 (n + 3)

end

end A090990.P18425871159967187056

namespace A090990

/-- `A028495(n+2)+A028495(n+3)` -/
def P18425871159967187056.Spec : Prop :=
  ∀ n, P18425871159967187056.a n = A090990 (n + 1)

end A090990

/-! ## A090990.P13312160256799293047

`A090995(n+1)/2`
-/

namespace A090990.P13312160256799293047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090995 (n + 1) : ℚ) / 2

end

end A090990.P13312160256799293047

namespace A090990

/-- `A090995(n+1)/2` -/
def P13312160256799293047.Spec : Prop :=
  ∀ n, P13312160256799293047.a n = (A090990 (n + 1) : ℚ)

end A090990

/-! ## A090990.P17223608566003717903

`A287381(n+2)-A287381(n)`
-/

namespace A090990.P17223608566003717903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287381 (n + 2) - A287381 n

end

end A090990.P17223608566003717903

namespace A090990

/-- `A287381(n+2)-A287381(n)` -/
def P17223608566003717903.Spec : Prop :=
  ∀ n, P17223608566003717903.a n = A090990 (n + 1)

end A090990

/-! ## A090990.P16617494704316887192

`∑[abs(A078038(n+1))]+3`
-/

namespace A090990.P16617494704316887192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078038 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A090990.P16617494704316887192

namespace A090990

/-- `∑[abs(A078038(n+1))]+3` -/
def P16617494704316887192.Spec : Prop :=
  ∀ n, P16617494704316887192.a n = A090990 (n + 1)

end A090990

/-! ## A090990.P10464353842845603627

`Δ[A287381(n+1)+A287381(n)]`
-/

namespace A090990.P10464353842845603627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287381 (n + 1) + A287381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090990.P10464353842845603627

namespace A090990

/-- `Δ[A287381(n+1)+A287381(n)]` -/
def P10464353842845603627.Spec : Prop :=
  ∀ n, P10464353842845603627.a n = A090990 (n + 1)

end A090990

/-! ## A090990.P4456076166974684636

`sqrt(A188826(n+2))`
-/

namespace A090990.P4456076166974684636
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A188826 (n + 2) : ℝ)

end

end A090990.P4456076166974684636

namespace A090990

/-- `sqrt(A188826(n+2))` -/
def P4456076166974684636.Spec : Prop :=
  ∀ n, P4456076166974684636.a n = (A090990 (n + 1) : ℝ)

end A090990

/-! ## A090990.P15786289015591754502

`2*A208669(n+1)-A208725(n+1)`
-/

namespace A090990.P15786289015591754502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208669 (n + 1) - A208725 (n + 1)

end

end A090990.P15786289015591754502

namespace A090990

/-- `2*A208669(n+1)-A208725(n+1)` -/
def P15786289015591754502.Spec : Prop :=
  ∀ n, P15786289015591754502.a n = A090990 (n + 1)

end A090990

/-!
# A090991: Number of meaningful differential operations of the n-th order on the space R^6.

The programs for A090991, the canonical program `A090991.P7596988342963813071` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090991 has offset 1).

The definition of A090991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090991.P7596988342963813071

`a(n-1)+a(n-2)` with `a(0)=6, a(1)=10`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090991

/-- `a(n-1)+a(n-2)` -/
def P7596988342963813071.Spec : Prop :=
  ∀ n, (P7596988342963813071.a n : ℤ) = A090991 (n + 1)

theorem P7596988342963813071.correct : P7596988342963813071.Spec := by
  intro n
  simp only [A090991, Nat.add_sub_cancel]

end A090991

/-! ## A090991.P16737303650836488947

`ogf((6+4x)/(1-x-x^2))`
-/

namespace A090991.P16737303650836488947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 4] [1, -1, -1] n

end

end A090991.P16737303650836488947

namespace A090991

/-- `ogf((6+4x)/(1-x-x^2))` -/
def P16737303650836488947.Spec : Prop :=
  ∀ n, P16737303650836488947.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P2340975187724742685

`round(ϕ*a(n-1))` with `a(0)=6`
-/

namespace A090991.P2340975187724742685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A090991.P2340975187724742685

namespace A090991

/-- `round(ϕ*a(n-1))` -/
def P2340975187724742685.Spec : Prop :=
  ∀ n, P2340975187724742685.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P12203222388753566061

`round(a(n-1)/(ϕ-1))` with `a(0)=6`
-/

namespace A090991.P12203222388753566061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.goldenRatio - 1))

end

end A090991.P12203222388753566061

namespace A090991

/-- `round(a(n-1)/(ϕ-1))` -/
def P12203222388753566061.Spec : Prop :=
  ∀ n, P12203222388753566061.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P75280481930766655

`2*Δ[ceil(ϕ*a(n-1))]` with `a(0)=4`
-/

namespace A090991.P75280481930766655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A090991.P75280481930766655

namespace A090991

/-- `2*Δ[ceil(ϕ*a(n-1))]` -/
def P75280481930766655.Spec : Prop :=
  ∀ n, P75280481930766655.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P15251339964534072371

`2*Δ[floor(ϕ*a(n-1))]` with `a(0)=6`
-/

namespace A090991.P15251339964534072371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A090991.P15251339964534072371

namespace A090991

/-- `2*Δ[floor(ϕ*a(n-1))]` -/
def P15251339964534072371.Spec : Prop :=
  ∀ n, P15251339964534072371.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P6852001640259866954

`round(a(n-1)/a(n-2)*a(n-1))-char[2]` with `a(0)=6, a(1)=10`
-/

namespace A090991.P6852001640259866954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A090991.P6852001640259866954

namespace A090991

/-- `round(a(n-1)/a(n-2)*a(n-1))-char[2]` -/
def P6852001640259866954.Spec : Prop :=
  ∀ n, P6852001640259866954.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P117284618224743952

`A054886(n+2)`
-/

namespace A090991.P117284618224743952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054886 (n + 2)

end

end A090991.P117284618224743952

namespace A090991

/-- `A054886(n+2)` -/
def P117284618224743952.Spec : Prop :=
  ∀ n, P117284618224743952.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P12107059525703117712

`A078642(n+2)`
-/

namespace A090991.P12107059525703117712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 2)

end

end A090991.P12107059525703117712

namespace A090991

/-- `A078642(n+2)` -/
def P12107059525703117712.Spec : Prop :=
  ∀ n, P12107059525703117712.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P3631916665540428816

`A068922(n+3)`
-/

namespace A090991.P3631916665540428816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 3)

end

end A090991.P3631916665540428816

namespace A090991

/-- `A068922(n+3)` -/
def P3631916665540428816.Spec : Prop :=
  ∀ n, P3631916665540428816.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P3613030263348424237

`2*A020701(n)`
-/

namespace A090991.P3613030263348424237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020701 n

end

end A090991.P3613030263348424237

namespace A090991

/-- `2*A020701(n)` -/
def P3613030263348424237.Spec : Prop :=
  ∀ n, P3613030263348424237.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P2625812750438682881

`A055389(n+4)`
-/

namespace A090991.P2625812750438682881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (n + 4)

end

end A090991.P2625812750438682881

namespace A090991

/-- `A055389(n+4)` -/
def P2625812750438682881.Spec : Prop :=
  ∀ n, P2625812750438682881.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P14913082849385611644

`A128588(n+4)`
-/

namespace A090991.P14913082849385611644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 4)

end

end A090991.P14913082849385611644

namespace A090991

/-- `A128588(n+4)` -/
def P14913082849385611644.Spec : Prop :=
  ∀ n, P14913082849385611644.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P13583029237141487908

`A006355(n+5)`
-/

namespace A090991.P13583029237141487908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 5)

end

end A090991.P13583029237141487908

namespace A090991

/-- `A006355(n+5)` -/
def P13583029237141487908.Spec : Prop :=
  ∀ n, P13583029237141487908.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P5427948406362083571

`A118658(n+5)`
-/

namespace A090991.P5427948406362083571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 5)

end

end A090991.P5427948406362083571

namespace A090991

/-- `A118658(n+5)` -/
def P5427948406362083571.Spec : Prop :=
  ∀ n, P5427948406362083571.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P6338628545680825621

`A163733(n+6)`
-/

namespace A090991.P6338628545680825621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (n + 6)

end

end A090991.P6338628545680825621

namespace A090991

/-- `A163733(n+6)` -/
def P6338628545680825621.Spec : Prop :=
  ∀ n, P6338628545680825621.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P1606621874413341324

`A198834(n+6)`
-/

namespace A090991.P1606621874413341324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (n + 6)

end

end A090991.P1606621874413341324

namespace A090991

/-- `A198834(n+6)` -/
def P1606621874413341324.Spec : Prop :=
  ∀ n, P1606621874413341324.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P6715151306057639951

`2*Δ[A020712(n)]`
-/

namespace A090991.P6715151306057639951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A090991.P6715151306057639951

namespace A090991

/-- `2*Δ[A020712(n)]` -/
def P6715151306057639951.Spec : Prop :=
  ∀ n, P6715151306057639951.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P4208109158010521755

`A001595(n+3)+1`
-/

namespace A090991.P4208109158010521755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 3) + 1

end

end A090991.P4208109158010521755

namespace A090991

/-- `A001595(n+3)+1` -/
def P4208109158010521755.Spec : Prop :=
  ∀ n, P4208109158010521755.a n = A090991 (n + 1)

end A090991

/-! ## A090991.P5394816379172305575

`A154691(n+1)+3`
-/

namespace A090991.P5394816379172305575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 (n + 1) + 3

end

end A090991.P5394816379172305575

namespace A090991

/-- `A154691(n+1)+3` -/
def P5394816379172305575.Spec : Prop :=
  ∀ n, P5394816379172305575.a n = A090991 (n + 1)

end A090991

/-!
# A090992: Number of meaningful differential operations of the n-th order on the space R^7.

The programs for A090992, the canonical program `A090992.P10614762273881832958` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090992 has offset 1).

The definition of A090992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090992.P10614762273881832958

`a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=7, a(1)=13, a(2)=24, a(3)=45`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090992

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` -/
def P10614762273881832958.Spec : Prop :=
  ∀ n, P10614762273881832958.a n = A090992 (n + 1)

theorem P10614762273881832958.correct : P10614762273881832958.Spec := by
  intro n
  simp only [A090992, Nat.add_sub_cancel]

end A090992

/-! ## A090992.P2172312200850581578

`4-∑[1-A288317(n+1)]`
-/

namespace A090992.P2172312200850581578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A288317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090992.P2172312200850581578

namespace A090992

/-- `4-∑[1-A288317(n+1)]` -/
def P2172312200850581578.Spec : Prop :=
  ∀ n, P2172312200850581578.a n = A090992 (n + 1)

end A090992

/-! ## A090992.P12813110643892216888

`a(n-1)+a(n-1)-A061551(n)` with `a(0)=7`
-/

namespace A090992.P12813110643892216888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + (a (n - 1) - A061551 n)

end

end A090992.P12813110643892216888

namespace A090992

/-- `a(n-1)+a(n-1)-A061551(n)` -/
def P12813110643892216888.Spec : Prop :=
  ∀ n, P12813110643892216888.a n = A090992 (n + 1)

end A090992

/-! ## A090992.P1564305556367511389

`A153340(n+1)-A061551(n)`
-/

namespace A090992.P1564305556367511389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153340 (n + 1) - A061551 n

end

end A090992.P1564305556367511389

namespace A090992

/-- `A153340(n+1)-A061551(n)` -/
def P1564305556367511389.Spec : Prop :=
  ∀ n, P1564305556367511389.a n = A090992 (n + 1)

theorem P1564305556367511389.correct : P1564305556367511389.Spec := by
  intro n
  simp only [A090992, Nat.add_sub_cancel, A090992.P1564305556367511389.a, A090992.P10614762273881832958.a, A061551, A061551.P15914493708777200643.a, A153340, A153340.P9472442687798973603.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090992

/-! ## A090992.P8069557717659783772

`A061551(n+4)+Δ[A061551(n+2)]`
-/

namespace A090992.P8069557717659783772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (n + 4) + (f1 (n + 1) - f1 n)

end

end A090992.P8069557717659783772

namespace A090992

/-- `A061551(n+4)+Δ[A061551(n+2)]` -/
def P8069557717659783772.Spec : Prop :=
  ∀ n, P8069557717659783772.a n = A090992 (n + 1)

end A090992

/-! ## A090992.P4348951615904087645

`A065455(n+1)+A065455(n)+a(n-1)` with `a(0)=7`
-/

namespace A090992.P4348951615904087645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A065455 (n + 1) + (A065455 n + a (n - 1))

end

end A090992.P4348951615904087645

namespace A090992

/-- `A065455(n+1)+A065455(n)+a(n-1)` -/
def P4348951615904087645.Spec : Prop :=
  ∀ n, P4348951615904087645.a n = A090992 (n + 1)

end A090992

/-! ## A090992.P4374039397295218778

`A153340(n+2)/2`
-/

namespace A090992.P4374039397295218778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153340 (n + 2) : ℚ) / 2

end

end A090992.P4374039397295218778

namespace A090992

/-- `A153340(n+2)/2` -/
def P4374039397295218778.Spec : Prop :=
  ∀ n, P4374039397295218778.a n = (A090992 (n + 1) : ℚ)

end A090992

/-! ## A090992.P4383566229510239968

`sqrt(A188828(n+2))`
-/

namespace A090992.P4383566229510239968
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A188828 (n + 2) : ℝ)

end

end A090992.P4383566229510239968

namespace A090992

/-- `sqrt(A188828(n+2))` -/
def P4383566229510239968.Spec : Prop :=
  ∀ n, P4383566229510239968.a n = (A090992 (n + 1) : ℝ)

end A090992

/-!
# A090993: Number of meaningful differential operations of the n-th order on the space R^8.

The programs for A090993, the canonical program `A090993.P6851627893987883942` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090993 has offset 1).

The definition of A090993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090993.P6851627893987883942

`3*a(n-2)` with `a(0)=8, a(1)=14`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090993

/-- `3*a(n-2)` -/
def P6851627893987883942.Spec : Prop :=
  ∀ n, (P6851627893987883942.a n : ℤ) = A090993 (n + 1)

theorem P6851627893987883942.correct : P6851627893987883942.Spec := by
  intro n
  simp only [A090993, Nat.add_sub_cancel]

end A090993

/-! ## A090993.P10111228330714422002

`(11+3*(-1)^(n+1))*3^floor(n/2)`
-/

namespace A090993.P10111228330714422002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 + 3 * (-1) ^ (n + 1) : ℚ) * (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A090993.P10111228330714422002

namespace A090993

/-- `(11+3*(-1)^(n+1))*3^floor(n/2)` -/
def P10111228330714422002.Spec : Prop :=
  ∀ n, P10111228330714422002.a n = (A090993 (n + 1) : ℚ)

end A090993

/-! ## A090993.P8134553698168695223

`ogf((8+14x)/(1-3x^2))`
-/

namespace A090993.P8134553698168695223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 14] [1, 0, -3] n

end

end A090993.P8134553698168695223

namespace A090993

/-- `ogf((8+14x)/(1-3x^2))` -/
def P8134553698168695223.Spec : Prop :=
  ∀ n, P8134553698168695223.a n = A090993 (n + 1)

end A090993

/-! ## A090993.P6530603524344167692

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=8, a(1)=14`
-/

namespace A090993.P6530603524344167692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 14] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A090993.P6530603524344167692

namespace A090993

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P6530603524344167692.Spec : Prop :=
  ∀ n, (P6530603524344167692.a n : ℤ) = A090993 (n + 1)

theorem P6530603524344167692.correct : P6530603524344167692.Spec := by
  intro n
  simp only [A090993, Nat.add_sub_cancel, A090993.P6530603524344167692.a, A090993.P6851627893987883942.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A090993

/-! ## A090993.P10748961177067045488

`A246082(6*n+8)`
-/

namespace A090993.P10748961177067045488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246082 (6 * n + 8)

end

end A090993.P10748961177067045488

namespace A090993

/-- `A246082(6*n+8)` -/
def P10748961177067045488.Spec : Prop :=
  ∀ n, P10748961177067045488.a n = A090993 (n + 1)

end A090993

/-! ## A090993.P12375100006106167949

`A228879(n+1)+A038754(n)`
-/

namespace A090993.P12375100006106167949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228879 (n + 1) + A038754 n

end

end A090993.P12375100006106167949

namespace A090993

/-- `A228879(n+1)+A038754(n)` -/
def P12375100006106167949.Spec : Prop :=
  ∀ n, P12375100006106167949.a n = A090993 (n + 1)

end A090993

/-! ## A090993.P14026792800391167732

`A083658(n+2)+A083658(n+3)`
-/

namespace A090993.P14026792800391167732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (n + 2) + A083658 (n + 3)

end

end A090993.P14026792800391167732

namespace A090993

/-- `A083658(n+2)+A083658(n+3)` -/
def P14026792800391167732.Spec : Prop :=
  ∀ n, P14026792800391167732.a n = A090993 (n + 1)

end A090993

/-! ## A090993.P12359403380159202890

`A068911(n+3)+Δ[A068911(n+1)]`
-/

namespace A090993.P12359403380159202890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (n + 3) + (f1 (n + 1) - f1 n)

end

end A090993.P12359403380159202890

namespace A090993

/-- `A068911(n+3)+Δ[A068911(n+1)]` -/
def P12359403380159202890.Spec : Prop :=
  ∀ n, P12359403380159202890.a n = A090993 (n + 1)

end A090993

/-! ## A090993.P7094198934877791039

`∑[A068911(n+1)+A068911(n)]+5`
-/

namespace A090993.P7094198934877791039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (n + 1) + A068911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A090993.P7094198934877791039

namespace A090993

/-- `∑[A068911(n+1)+A068911(n)]+5` -/
def P7094198934877791039.Spec : Prop :=
  ∀ n, P7094198934877791039.a n = A090993 (n + 1)

end A090993

/-! ## A090993.P15147050018537144908

`A117855(n+2)+2*A211221(n+2)`
-/

namespace A090993.P15147050018537144908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117855 (n + 2) + 2 * A211221 (n + 2)

end

end A090993.P15147050018537144908

namespace A090993

/-- `A117855(n+2)+2*A211221(n+2)` -/
def P15147050018537144908.Spec : Prop :=
  ∀ n, P15147050018537144908.a n = A090993 (n + 1)

end A090993

/-! ## A090993.P11206041794748795194

`A133463(2*n)+2*A133463(2*n+1)`
-/

namespace A090993.P11206041794748795194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133463 (2 * n) + 2 * A133463 (2 * n + 1)

end

end A090993.P11206041794748795194

namespace A090993

/-- `A133463(2*n)+2*A133463(2*n+1)` -/
def P11206041794748795194.Spec : Prop :=
  ∀ n, P11206041794748795194.a n = A090993 (n + 1)

end A090993

/-! ## A090993.P11563667140910826646

`A228879(n+2)-A228879(n)`
-/

namespace A090993.P11563667140910826646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228879 (n + 2) - A228879 n

end

end A090993.P11563667140910826646

namespace A090993

/-- `A228879(n+2)-A228879(n)` -/
def P11563667140910826646.Spec : Prop :=
  ∀ n, P11563667140910826646.a n = A090993 (n + 1)

end A090993

/-!
# A090994: Number of meaningful differential operations of the n-th order on the space R^9.

The programs for A090994, the canonical program `A090994.P2804514858316128109` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090994 has offset 1).

The definition of A090994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090994.P2804514858316128109

`a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=9, a(1)=17, a(2)=32, a(3)=61, a(4)=116`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090994

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` -/
def P2804514858316128109.Spec : Prop :=
  ∀ n, P2804514858316128109.a n = A090994 (n + 1)

theorem P2804514858316128109.correct : P2804514858316128109.Spec := by
  intro n
  simp only [A090994, Nat.add_sub_cancel]

end A090994

/-! ## A090994.P14153389006002391302

`A153360(n+1)-A336675(n)`
-/

namespace A090994.P14153389006002391302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153360 (n + 1) - A336675 n

end

end A090994.P14153389006002391302

namespace A090994

/-- `A153360(n+1)-A336675(n)` -/
def P14153389006002391302.Spec : Prop :=
  ∀ n, P14153389006002391302.a n = A090994 (n + 1)

theorem P14153389006002391302.correct : P14153389006002391302.Spec := by
  intro n
  simp only [A090994, Nat.add_sub_cancel, A090994.P14153389006002391302.a, A090994.P2804514858316128109.a, A153360, A153360.P9570591132759772216.a, A336675, A336675.P15240596404034707535.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090994

/-! ## A090994.P13675167641969526610

`A153360(n+2)/2`
-/

namespace A090994.P13675167641969526610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153360 (n + 2) : ℚ) / 2

end

end A090994.P13675167641969526610

namespace A090994

/-- `A153360(n+2)/2` -/
def P13675167641969526610.Spec : Prop :=
  ∀ n, P13675167641969526610.a n = (A090994 (n + 1) : ℚ)

end A090994

/-! ## A090994.P8984445752336293535

`sqrt(A188830(n+2))`
-/

namespace A090994.P8984445752336293535
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A188830 (n + 2) : ℝ)

end

end A090994.P8984445752336293535

namespace A090994

/-- `sqrt(A188830(n+2))` -/
def P8984445752336293535.Spec : Prop :=
  ∀ n, P8984445752336293535.a n = (A090994 (n + 1) : ℝ)

end A090994

/-! ## A090994.P2311636082530950955

`A153360(n+1)-A068914(A167499(n+8)+4)`
-/

namespace A090994.P2311636082530950955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153360 (n + 1) - A068914 (A167499 (n + 8) + 4).toNat

end

end A090994.P2311636082530950955

namespace A090994

/-- `A153360(n+1)-A068914(A167499(n+8)+4)` -/
def P2311636082530950955.Spec : Prop :=
  ∀ n, P2311636082530950955.a n = A090994 (n + 1)

end A090994

/-! ## A090994.P16152720930321841096

`A153360(n+1)-A068914(A000096(n+8)+10)`
-/

namespace A090994.P16152720930321841096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153360 (n + 1) - A068914 (A000096 (n + 8) + 10).toNat

end

end A090994.P16152720930321841096

namespace A090994

/-- `A153360(n+1)-A068914(A000096(n+8)+10)` -/
def P16152720930321841096.Spec : Prop :=
  ∀ n, P16152720930321841096.a n = A090994 (n + 1)

end A090994

/-!
# A090995: Number of meaningful differential operations of the n-th order on the space R^10.

The programs for A090995, the canonical program `A090995.P2836515652093020791` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090995 has offset 1).

The definition of A090995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090995.P2836515652093020791

`a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=10, a(1)=18, a(2)=32`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090995

/-- `a(n-1)+2*a(n-2)-a(n-3)` -/
def P2836515652093020791.Spec : Prop :=
  ∀ n, P2836515652093020791.a n = A090995 (n + 1)

theorem P2836515652093020791.correct : P2836515652093020791.Spec := by
  intro n
  simp only [A090995, Nat.add_sub_cancel]

end A090995

/-! ## A090995.P8577251396457254037

`ogf((10+8x-6x^2)/(1-x-2x^2+x^3))`
-/

namespace A090995.P8577251396457254037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 8, -6] [1, -1, -2, 1] n

end

end A090995.P8577251396457254037

namespace A090995

/-- `ogf((10+8x-6x^2)/(1-x-2x^2+x^3))` -/
def P8577251396457254037.Spec : Prop :=
  ∀ n, P8577251396457254037.a n = A090995 (n + 1)

end A090995

/-! ## A090995.P13431545318597442832

`2*A090990(n+1)`
-/

namespace A090995.P13431545318597442832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090990 (n + 1)

end

end A090995.P13431545318597442832

namespace A090995

/-- `2*A090990(n+1)` -/
def P13431545318597442832.Spec : Prop :=
  ∀ n, P13431545318597442832.a n = A090995 (n + 1)

end A090995

/-! ## A090995.P129730049616339211

`2*(∑[A287381(n)]+3)`
-/

namespace A090995.P129730049616339211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A090995.P129730049616339211

namespace A090995

/-- `2*(∑[A287381(n)]+3)` -/
def P129730049616339211.Spec : Prop :=
  ∀ n, P129730049616339211.a n = A090995 (n + 1)

end A090995

/-! ## A090995.P1330526615981256088

`2*(A287381(n+1)+A028495(n+1))`
-/

namespace A090995.P1330526615981256088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A287381 (n + 1) + A028495 (n + 1))

end

end A090995.P1330526615981256088

namespace A090995

/-- `2*(A287381(n+1)+A028495(n+1))` -/
def P1330526615981256088.Spec : Prop :=
  ∀ n, P1330526615981256088.a n = A090995 (n + 1)

end A090995

/-! ## A090995.P2311870708848611966

`A090990(A000027(n+1))+A090990(n+1)`
-/

namespace A090995.P2311870708848611966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090990 (A000027 (n + 1)).toNat + A090990 (n + 1)

end

end A090995.P2311870708848611966

namespace A090995

/-- `A090990(A000027(n+1))+A090990(n+1)` -/
def P2311870708848611966.Spec : Prop :=
  ∀ n, P2311870708848611966.a n = A090995 (n + 1)

end A090995

/-! ## A090995.P6229951671239735377

`A090990(n+1)+A090990(n+1)%A090990(n+2)`
-/

namespace A090995.P6229951671239735377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090990 (n + 1) + Int.tmod (A090990 (n + 1)) (A090990 (n + 2))

end

end A090995.P6229951671239735377

namespace A090995

/-- `A090990(n+1)+A090990(n+1)%A090990(n+2)` -/
def P6229951671239735377.Spec : Prop :=
  ∀ n, P6229951671239735377.a n = A090995 (n + 1)

end A090995

/-! ## A090995.P15261136599841307420

`2*sqrt(A188826(n+2))`
-/

namespace A090995.P15261136599841307420
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A188826 (n + 2) : ℝ)

end

end A090995.P15261136599841307420

namespace A090995

/-- `2*sqrt(A188826(n+2))` -/
def P15261136599841307420.Spec : Prop :=
  ∀ n, P15261136599841307420.a n = (A090995 (n + 1) : ℝ)

end A090995

/-!
# A090996: Number of leading 1's in binary expansion of n.

The programs for A090996, the canonical program `A090996.P13241265871716609042` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090996 has offset 0).

The definition of A090996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090996.P11330675084215037167

`val(A030101(n)+1, 2)`
-/

namespace A090996.P11330675084215037167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A030101 n + 1).toNat 2

end

end A090996.P11330675084215037167

namespace A090996

/-- `val(A030101(n)+1, 2)` -/
def P11330675084215037167.Spec : Prop :=
  ∀ n, (P11330675084215037167.a n : ℤ) = A090996 n

end A090996

/-! ## A090996.P11157345473254718187

`val(A264618(n)+1, 2)`
-/

namespace A090996.P11157345473254718187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A264618 n + 1).toNat 2

end

end A090996.P11157345473254718187

namespace A090996

/-- `val(A264618(n)+1, 2)` -/
def P11157345473254718187.Spec : Prop :=
  ∀ n, (P11157345473254718187.a n : ℤ) = A090996 n

end A090996

/-! ## A090996.P13589298483243370872

`val(A276795(n+1), 2)`
-/

namespace A090996.P13589298483243370872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276795 (n + 1)).toNat 2

end

end A090996.P13589298483243370872

namespace A090996

/-- `val(A276795(n+1), 2)` -/
def P13589298483243370872.Spec : Prop :=
  ∀ n, (P13589298483243370872.a n : ℤ) = A090996 n

end A090996

/-! ## A090996.P17718367233589574137

`A089309(A030101(n))`
-/

namespace A090996.P17718367233589574137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A030101 n).toNat

end

end A090996.P17718367233589574137

namespace A090996

/-- `A089309(A030101(n))` -/
def P17718367233589574137.Spec : Prop :=
  ∀ n, P17718367233589574137.a n = A090996 n

end A090996

/-! ## A090996.P4549949762560922522

`A089309(A057889(n))`
-/

namespace A090996.P4549949762560922522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A057889 n).toNat

end

end A090996.P4549949762560922522

namespace A090996

/-- `A089309(A057889(n))` -/
def P4549949762560922522.Spec : Prop :=
  ∀ n, P4549949762560922522.a n = A090996 n

end A090996

/-! ## A090996.P3605321856425884659

`A000120(A342126(n))`
-/

namespace A090996.P3605321856425884659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A342126 n).toNat

end

end A090996.P3605321856425884659

namespace A090996

/-- `A000120(A342126(n))` -/
def P3605321856425884659.Spec : Prop :=
  ∀ n, P3605321856425884659.a n = A090996 n

end A090996

/-! ## A090996.P4021616422514769325

`A153036(n)+A043545(n)`
-/

namespace A090996.P4021616422514769325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153036 n + A043545 n

end

end A090996.P4021616422514769325

namespace A090996

/-- `A153036(n)+A043545(n)` -/
def P4021616422514769325.Spec : Prop :=
  ∀ n, P4021616422514769325.a n = A090996 n

theorem P4021616422514769325.correct : P4021616422514769325.Spec := by
  intro n
  simp only [A090996, Nat.add_sub_cancel, A090996.P4021616422514769325.a, A090996.P13241265871716609042.a, A000120, A000120.P2816527436160941581.a, A043545, A043545.P6199121594405564387.a, A087734, A087734.P16066555065702366707.a, A153036, A153036.P15641331792470478746.a, A005187, A005187.P3874015513960485494.a, A036987, A036987.P1789601236562705309.a, A063250, A063250.P9111133968187368532.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090996

/-! ## A090996.P13241265871716609042

`A000120(n-A087734(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A090996

/-- `A000120(n-A087734(n))` -/
def P13241265871716609042.Spec : Prop :=
  ∀ n, P13241265871716609042.a n = A090996 n

theorem P13241265871716609042.correct : P13241265871716609042.Spec := by
  intro n
  simp only [A090996]

end A090996

/-! ## A090996.P355386800841658514

`A347523(n+1)+A153036(n)`
-/

namespace A090996.P355386800841658514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 (n + 1) + A153036 n

end

end A090996.P355386800841658514

namespace A090996

/-- `A347523(n+1)+A153036(n)` -/
def P355386800841658514.Spec : Prop :=
  ∀ n, P355386800841658514.a n = A090996 n

end A090996

/-! ## A090996.P3861003088222930113

`A029837(n+1)-A063250(n)`
-/

namespace A090996.P3861003088222930113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A063250 n

end

end A090996.P3861003088222930113

namespace A090996

/-- `A029837(n+1)-A063250(n)` -/
def P3861003088222930113.Spec : Prop :=
  ∀ n, P3861003088222930113.a n = A090996 n

end A090996

/-! ## A090996.P14208293001224548713

`A089309(A342126(n)+A342126(n))`
-/

namespace A090996.P14208293001224548713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A342126 n + A342126 n).toNat

end

end A090996.P14208293001224548713

namespace A090996

/-- `A089309(A342126(n)+A342126(n))` -/
def P14208293001224548713.Spec : Prop :=
  ∀ n, P14208293001224548713.a n = A090996 n

end A090996

/-! ## A090996.P10294617562198828275

`A000120(n)-A080791(A035327(n))`
-/

namespace A090996.P10294617562198828275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A080791 (A035327 n).toNat

end

end A090996.P10294617562198828275

namespace A090996

/-- `A000120(n)-A080791(A035327(n))` -/
def P10294617562198828275.Spec : Prop :=
  ∀ n, P10294617562198828275.a n = A090996 n

end A090996

/-! ## A090996.P7653768305534865582

`A070939(n+1)-A070939(A035327(n))`
-/

namespace A090996.P7653768305534865582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A070939 (A035327 n).toNat

end

end A090996.P7653768305534865582

namespace A090996

/-- `A070939(n+1)-A070939(A035327(n))` -/
def P7653768305534865582.Spec : Prop :=
  ∀ n, P7653768305534865582.a n = A090996 n

end A090996

/-! ## A090996.P13508439185734842667

`A070939(n+1)-A070939(A038554(n))`
-/

namespace A090996.P13508439185734842667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A070939 (A038554 n).toNat

end

end A090996.P13508439185734842667

namespace A090996

/-- `A070939(n+1)-A070939(A038554(n))` -/
def P13508439185734842667.Spec : Prop :=
  ∀ n, P13508439185734842667.a n = A090996 n

end A090996

/-! ## A090996.P12407902251438916885

`A007814(A030101(n)+1)`
-/

namespace A090996.P12407902251438916885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A030101 n + 1).toNat

end

end A090996.P12407902251438916885

namespace A090996

/-- `A007814(A030101(n)+1)` -/
def P12407902251438916885.Spec : Prop :=
  ∀ n, P12407902251438916885.a n = A090996 n

end A090996

/-! ## A090996.P18069261863312343367

`A067029(A030101(n)+1)`
-/

namespace A090996.P18069261863312343367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A030101 n + 1).toNat

end

end A090996.P18069261863312343367

namespace A090996

/-- `A067029(A030101(n)+1)` -/
def P18069261863312343367.Spec : Prop :=
  ∀ n, P18069261863312343367.a n = A090996 n

end A090996

/-! ## A090996.P14587074867603653415

`A007814(1-A055945(n)+n)`
-/

namespace A090996.P14587074867603653415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 - A055945 n + (n : ℤ)).toNat

end

end A090996.P14587074867603653415

namespace A090996

/-- `A007814(1-A055945(n)+n)` -/
def P14587074867603653415.Spec : Prop :=
  ∀ n, P14587074867603653415.a n = A090996 n

end A090996

/-! ## A090996.P7458071230151558685

`val(A325401(2*n)+1, 2)`
-/

namespace A090996.P7458071230151558685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A325401 (2 * n) + 1).toNat 2

end

end A090996.P7458071230151558685

namespace A090996

/-- `val(A325401(2*n)+1, 2)` -/
def P7458071230151558685.Spec : Prop :=
  ∀ n, (P7458071230151558685.a n : ℤ) = A090996 n

end A090996

/-! ## A090996.P9402030565914930211

`A089309(A322464(n))`
-/

namespace A090996.P9402030565914930211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A322464 n).toNat

end

end A090996.P9402030565914930211

namespace A090996

/-- `A089309(A322464(n))` -/
def P9402030565914930211.Spec : Prop :=
  ∀ n, P9402030565914930211.a n = A090996 n

end A090996

/-! ## A090996.P16655242893090590994

`A089309(A330717(n))`
-/

namespace A090996.P16655242893090590994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A330717 n).toNat

end

end A090996.P16655242893090590994

namespace A090996

/-- `A089309(A330717(n))` -/
def P16655242893090590994.Spec : Prop :=
  ∀ n, P16655242893090590994.a n = A090996 n

end A090996

/-!
# A090997: Numbers m such that the numerator of the Bernoulli number B(m) is divisible by a square.

The programs for A090997, there is no canonical definition to state claims against.
-/

/-! ## A090997.P15100343304607535311

`A335243(A384318(2*n)+A017257(n))`
-/

namespace A090997.P15100343304607535311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335243 (A384318 (2 * n) + A017257 n).toNat

end

end A090997.P15100343304607535311

