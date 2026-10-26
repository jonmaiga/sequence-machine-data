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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A011800: Number of labeled forests of n nodes each component of which is a path.

The programs for A011800, there is no canonical definition to state claims against.
-/

/-! ## A011800.P5616241848774762772

`abs(A009151(n)-A009597(n))`
-/

namespace A011800.P5616241848774762772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009151 n - A009597 n|

end

end A011800.P5616241848774762772

/-! ## A011800.P16674188155711279447

`abs(2*A009597(n)-A009218(n))`
-/

namespace A011800.P16674188155711279447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A009597 n - A009218 n|

end

end A011800.P16674188155711279447

/-! ## A011800.P3474555243254863352

`A008620(A323664(n)+A002494(n))`
-/

namespace A011800.P3474555243254863352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A323664 n + A002494 n).toNat

end

end A011800.P3474555243254863352

/-!
# A011801: Triangle read by rows, the inverse Bell transform of n!*binomial(4,n) (without column 0).

The programs for A011801, there is no canonical definition to state claims against.
-/

/-! ## A011801.P3371383555651043469

`A144267(n+1)%p?[∑[2^n]]`
-/

namespace A011801.P3371383555651043469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144267 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A011801.P3371383555651043469

/-! ## A011801.P4549633988231132303

`A144267(∏{p}[n+1, #]^∏{e}[n+1, #!])`
-/

namespace A011801.P4549633988231132303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144267 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p)))

end

end A011801.P4549633988231132303

/-! ## A011801.P5437108712170631845

`A144267(∑[A361675(n)])`
-/

namespace A011801.P5437108712170631845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011801.P5437108712170631845

/-!
# A011804: M-sequences from multicomplexes on at most 7 variables with no monomial of degree more than n-1.

The programs for A011804, there is no canonical definition to state claims against.
-/

/-! ## A011804.P10068800462275259696

`A007723(A155212(n+5))`
-/

namespace A011804.P10068800462275259696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A155212 (n + 5)).toNat

end

end A011804.P10068800462275259696

/-! ## A011804.P4092502522111095516

`A007723(eq[6, A219347(n)])`
-/

namespace A011804.P4092502522111095516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011804.P4092502522111095516

/-! ## A011804.P7249347885156386122

`A007723(eq[8, A193592(n)])`
-/

namespace A011804.P7249347885156386122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011804.P7249347885156386122

/-! ## A011804.P3680542553496715746

`A007723(eq[14, A185782(n+1)])`
-/

namespace A011804.P3680542553496715746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011804.P3680542553496715746

/-! ## A011804.P5041422475080588221

`record[A007723(A155212(n)%A020706(n))]`
-/

namespace A011804.P5041422475080588221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (Int.tmod (A155212 n) (A020706 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011804.P5041422475080588221

/-!
# A011805: M-sequences from multicomplexes on at most 8 variables with no monomial of degree more than n-1.

The programs for A011805, there is no canonical definition to state claims against.
-/

/-! ## A011805.P8861012373359498070

`A007723(eq[8, A219347(n)])`
-/

namespace A011805.P8861012373359498070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011805.P8861012373359498070

/-! ## A011805.P1916489293064517184

`A007723(eq[9, A193592(n)])`
-/

namespace A011805.P1916489293064517184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011805.P1916489293064517184

/-! ## A011805.P17723881619272640334

`A007723(eq[16, A185782(n+1)])`
-/

namespace A011805.P17723881619272640334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011805.P17723881619272640334

/-! ## A011805.P11316091133563502577

`record[A007723(∑[A102352(n+1)])]`
-/

namespace A011805.P11316091133563502577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102352 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011805.P11316091133563502577

/-!
# A011806: M-sequences from multicomplexes on at most 9 variables with no monomial of degree more than n-1.

The programs for A011806, there is no canonical definition to state claims against.
-/

/-! ## A011806.P16303306684618049362

`A007723(eq[10, A193592(n)])`
-/

namespace A011806.P16303306684618049362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011806.P16303306684618049362

/-! ## A011806.P9395000127551478557

`A007723(eq[10, A219347(n)])`
-/

namespace A011806.P9395000127551478557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011806.P9395000127551478557

/-! ## A011806.P12853182114776646018

`A007723(eq[18, A185782(n+1)])`
-/

namespace A011806.P12853182114776646018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011806.P12853182114776646018

/-!
# A011807: M-sequences from multicomplexes on at most 10 variables with no monomial of degree more than n-1.

The programs for A011807, there is no canonical definition to state claims against.
-/

/-! ## A011807.P4830178199746121810

`A007723(eq[11, A193592(n)])`
-/

namespace A011807.P4830178199746121810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011807.P4830178199746121810

/-! ## A011807.P3965147838820179094

`A007723(eq[12, A219347(n)])`
-/

namespace A011807.P3965147838820179094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011807.P3965147838820179094

/-! ## A011807.P1258538840716103795

`A007723(eq[20, A185782(n+1)])`
-/

namespace A011807.P1258538840716103795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011807.P1258538840716103795

/-! ## A011807.P5044664105434072680

`A007723(eq[11, A349593(n)])`
-/

namespace A011807.P5044664105434072680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011807.P5044664105434072680

/-!
# A011808: M-sequences from multicomplexes on at most 11 variables with no monomial of degree more than n-1.

The programs for A011808, there is no canonical definition to state claims against.
-/

/-! ## A011808.P9984341065615480869

`A007723(eq[12, A193592(n)])`
-/

namespace A011808.P9984341065615480869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011808.P9984341065615480869

/-! ## A011808.P10154108669024832903

`A007723(eq[15, A219347(n)])`
-/

namespace A011808.P10154108669024832903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011808.P10154108669024832903

/-! ## A011808.P14715768461773649062

`A007723(eq[22, A185782(n+1)])`
-/

namespace A011808.P14715768461773649062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011808.P14715768461773649062

/-!
# A011809: M-sequences from multicomplexes on at most 12 variables with no monomial of degree more than n-1.

The programs for A011809, there is no canonical definition to state claims against.
-/

/-! ## A011809.P17557626464894159673

`A007723(eq[13, A193592(n)])`
-/

namespace A011809.P17557626464894159673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011809.P17557626464894159673

/-! ## A011809.P2469855097812405551

`A007723(eq[18, A219347(n)])`
-/

namespace A011809.P2469855097812405551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011809.P2469855097812405551

/-! ## A011809.P1241469271275080071

`A007723(eq[24, A185782(n+1)])`
-/

namespace A011809.P1241469271275080071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011809.P1241469271275080071

/-! ## A011809.P12719203193685181715

`A007723(eq[13, A349593(n)])`
-/

namespace A011809.P12719203193685181715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011809.P12719203193685181715

/-!
# A011810: M-sequences from multicomplexes on 4 variables with all monomials of degree 2 but none of degree larger than n.

The programs for A011810, there is no canonical definition to state claims against.
-/

/-! ## A011810.P7919706842058397555

`A094913(C(n+4, 6))`
-/

namespace A011810.P7919706842058397555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094913 (Nat.choose (n + 4) 6)

end

end A011810.P7919706842058397555

/-!
# A011811: M-sequences from multicomplexes on 4 variables with all monomials of degree 3 but none of degree larger than n.

The programs for A011811, there is no canonical definition to state claims against.
-/

/-! ## A011811.P1224564184480285718

`A105637(C(floor(2^(n-1)), 4))`
-/

namespace A011811.P1224564184480285718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105637 (Nat.choose ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat 4)

end

end A011811.P1224564184480285718

/-! ## A011811.P12908431619501710430

`A028242(C(ceil(2^(n-1)), ∑{d}[n+1, 1-#+n]))`
-/

namespace A011811.P12908431619501710430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Nat.choose ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat (∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ) + (n : ℤ))).toNat)

end

end A011811.P12908431619501710430

/-!
# A011812: M-sequences from multicomplexes on 4 variables with all monomials of degree 4 but none of degree larger than n.

The programs for A011812, there is no canonical definition to state claims against.
-/

/-! ## A011812.P1882846730236888071

`A203612(2*n+1)%A289987(round(2^(n-log2(n+1))))`
-/

namespace A011812.P1882846730236888071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203612 (2 * n + 1)) (A289987 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n : ℝ) - Real.logb 2 (n + 1 : ℝ)))).toNat)

end

end A011812.P1882846730236888071

/-! ## A011812.P675278006428838425

`A058212(A048259(A053733(2*n+3)))`
-/

namespace A011812.P675278006428838425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (A048259 (A053733 (2 * n + 3)).toNat).toNat

end

end A011812.P675278006428838425

/-! ## A011812.P1220289420522302162

`A025902(A348145(n+1)+A324169(n))`
-/

namespace A011812.P1220289420522302162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (A348145 (n + 1) + A324169 n).toNat

end

end A011812.P1220289420522302162

/-!
# A011814: M-sequences from multicomplexes on 4 variables with all monomials of degree 6 but none of degree larger than n.

The programs for A011814, there is no canonical definition to state claims against.
-/

/-! ## A011814.P1476638566207338428

`(11^a(n-1))²` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0`
-/

namespace A011814.P1476638566207338428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0] fun n a =>
  (11 ^ a (n - 1)) ^ 2

end

end A011814.P1476638566207338428

/-! ## A011814.P10648879708339042250

`∑[(5*a(n-1))!]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0`
-/

namespace A011814.P10648879708339042250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0] fun n f1 =>
  Nat.factorial (5 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011814.P10648879708339042250

/-! ## A011814.P16450360146521714738

`A180649(C(n, 3))²`
-/

namespace A011814.P16450360146521714738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (Nat.choose n 3) ^ 2

end

end A011814.P16450360146521714738

/-! ## A011814.P9052369769013839851

`A107680(C(n, 6)²)`
-/

namespace A011814.P9052369769013839851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107680 (Nat.choose n 6 ^ 2)

end

end A011814.P9052369769013839851

/-!
# A011815: M-sequences from multicomplexes on 4 variables with all monomials of degree 7 but none of degree larger than n.

The programs for A011815, there is no canonical definition to state claims against.
-/

/-! ## A011815.P5018693720055635995

`∑[A281861(C(n, 7))]`
-/

namespace A011815.P5018693720055635995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281861 (Nat.choose n 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011815.P5018693720055635995

/-! ## A011815.P11125805616377966552

`Δ[A169912(C(n, 8))]`
-/

namespace A011815.P11125805616377966552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169912 (Nat.choose n 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011815.P11125805616377966552

/-! ## A011815.P9643244557878898289

`A363226(or(1, C(n, 6)))`
-/

namespace A011815.P9643244557878898289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363226 (Nat.lor 1 (Nat.choose n 6))

end

end A011815.P9643244557878898289

/-! ## A011815.P4908949387477830598

`∑[C(A001222(n!), 8)]`
-/

namespace A011815.P4908949387477830598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (Nat.factorial n)).toNat 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011815.P4908949387477830598

/-! ## A011815.P14077098096704621092

`A085857(C(floor((n/2)²), 10))`
-/

namespace A011815.P14077098096704621092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085857 (Nat.choose ⌊((n : ℚ) / 2) ^ 2⌋.toNat 10)

end

end A011815.P14077098096704621092

/-!
# A011816: M-sequences from multicomplexes on 4 variables with all monomials of degree 8 but none of degree larger than n.

The programs for A011816, there is no canonical definition to state claims against.
-/

/-! ## A011816.P13781654628861439653

`A097683(C(n, 8)+1)`
-/

namespace A011816.P13781654628861439653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097683 (Nat.choose n 8 + 1)

end

end A011816.P13781654628861439653

/-! ## A011816.P5462721274077823438

`∑[C(A245761(n+1), 9)]`
-/

namespace A011816.P5462721274077823438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245761 (n + 1)).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011816.P5462721274077823438

/-! ## A011816.P3381417239938675317

`A049345(C(comp[or(2, n)], 16))`
-/

namespace A011816.P3381417239938675317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 16)

end

end A011816.P3381417239938675317

/-! ## A011816.P13764074107848240913

`A049345(C(2*n-n%2, 16))`
-/

namespace A011816.P13764074107848240913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (Nat.choose ((2 * n : ℤ) - ((n % 2 : ℕ) : ℤ)).toNat 16)

end

end A011816.P13764074107848240913

/-! ## A011816.P16705096965513102847

`A116450(A049164(n))`
-/

namespace A011816.P16705096965513102847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116450 (A049164 n).toNat

end

end A011816.P16705096965513102847

/-!
# A011817: M-sequences from multicomplexes on 4 variables with all monomials of degree 9 but none of degree larger than n.

The programs for A011817, there is no canonical definition to state claims against.
-/

/-! ## A011817.P10220655445178407101

`A127306(C(n, 9))`
-/

namespace A011817.P10220655445178407101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127306 (Nat.choose n 9)

end

end A011817.P10220655445178407101

/-! ## A011817.P5829969949684580774

`∑[C(lt[A053994(n), 99], 10)]`
-/

namespace A011817.P5829969949684580774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053994 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  99

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011817.P5829969949684580774

/-! ## A011817.P2197097292253949801

`A307252(C(n, 9)+1)-1`
-/

namespace A011817.P2197097292253949801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307252 (Nat.choose n 9 + 1) - 1

end

end A011817.P2197097292253949801

/-! ## A011817.P17238311407773932960

`A328163(A014374(n))`
-/

namespace A011817.P17238311407773932960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328163 (A014374 n).toNat

end

end A011817.P17238311407773932960

/-! ## A011817.P17194826487347971271

`A261587(A143404(n))`
-/

namespace A011817.P17194826487347971271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261587 (A143404 n).toNat

end

end A011817.P17194826487347971271

/-!
# A011818: Normalized volume of center slice of n-dimensional cube: 2^n* n!*Vol({ (x_1,...,x_n) in [ 0,1 ]^n: n/2 <= Sum_{i = 1..n} x_i <= (n+1)/2 }).

The programs for A011818, there is no canonical definition to state claims against.
-/

/-! ## A011818.P7831953876876394415

`A261398(n+2)/2`
-/

namespace A011818.P7831953876876394415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261398 (n + 2) : ℚ) / 2

end

end A011818.P7831953876876394415

/-! ## A011818.P10339492472003414536

`A101842((n+1)²)`
-/

namespace A011818.P10339492472003414536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101842 ((n + 1) ^ 2)

end

end A011818.P10339492472003414536

/-! ## A011818.P13749400264501149533

`record[A101842(∑[A008619(n)])]`
-/

namespace A011818.P13749400264501149533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101842 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011818.P13749400264501149533

/-! ## A011818.P11158718058767000908

`record[A101842(∑[A028242(n)])]`
-/

namespace A011818.P11158718058767000908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101842 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011818.P11158718058767000908

/-! ## A011818.P5494417882483408909

`record[A101842(∑[A123108(n)])]`
-/

namespace A011818.P5494417882483408909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101842 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011818.P5494417882483408909

/-!
# A011819: M-sequences m_0,m_1,m_2,m_3 with m_1 < n.

The programs for A011819, the canonical program `A011819.P4272339507940383026` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011819 has offset 1).

The definition of A011819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011819.P4272339507940383026

`∑[∑[A071239(n)+n]+1]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011819

/-- `∑[∑[A071239(n)+n]+1]+1` -/
def P4272339507940383026.Spec : Prop :=
  ∀ n, P4272339507940383026.a n = A011819 (n + 1)

theorem P4272339507940383026.correct : P4272339507940383026.Spec := by
  intro n
  simp only [A011819, Nat.add_sub_cancel]

end A011819

/-! ## A011819.P8070265341186842683

`∑[∑[A028310(n)+(n²+2)/3*∑[n]]]+1`
-/

namespace A011819.P8070265341186842683
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) + (n ^ 2 + 2 : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A011819.P8070265341186842683

namespace A011819

/-- `∑[∑[A028310(n)+(n²+2)/3*∑[n]]]+1` -/
def P8070265341186842683.Spec : Prop :=
  ∀ n, P8070265341186842683.a n = (A011819 (n + 1) : ℚ)

end A011819

/-! ## A011819.P16043997339471446300

`A007723(A155212(n)+12)`
-/

namespace A011819.P16043997339471446300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A155212 n + 12).toNat

end

end A011819.P16043997339471446300

namespace A011819

/-- `A007723(A155212(n)+12)` -/
def P16043997339471446300.Spec : Prop :=
  ∀ n, P16043997339471446300.a n = A011819 (n + 1)

end A011819

/-! ## A011819.P13453448060254576621

`record[A007723(A167499(n)-1)]`
-/

namespace A011819.P13453448060254576621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011819.P13453448060254576621

namespace A011819

/-- `record[A007723(A167499(n)-1)]` -/
def P13453448060254576621.Spec : Prop :=
  ∀ n, P13453448060254576621.a n = A011819 (n + 1)

end A011819

/-! ## A011819.P15622384670630197243

`record[A007723(A000124(n)+3)]`
-/

namespace A011819.P15622384670630197243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A000124 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011819.P15622384670630197243

namespace A011819

/-- `record[A007723(A000124(n)+3)]` -/
def P15622384670630197243.Spec : Prop :=
  ∀ n, P15622384670630197243.a n = A011819 (n + 1)

end A011819

/-!
# A011820: Number of M-sequences m_0,...,m_4 with m_1 < n.

The programs for A011820, there is no canonical definition to state claims against.
-/

/-! ## A011820.P17470323896144278952

`A007723(A167499(n+4))`
-/

namespace A011820.P17470323896144278952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A167499 (n + 4)).toNat

end

end A011820.P17470323896144278952

/-! ## A011820.P18046519040699798054

`A007723(eq[5, A002262(n)])`
-/

namespace A011820.P18046519040699798054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011820.P18046519040699798054

/-! ## A011820.P15560408500808062593

`A007723(A246172(n+1)+19)`
-/

namespace A011820.P15560408500808062593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A246172 (n + 1) + 19).toNat

end

end A011820.P15560408500808062593

/-! ## A011820.P11186261893681223443

`A007723(eq[6, A002260(n+1)])`
-/

namespace A011820.P11186261893681223443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011820.P11186261893681223443

/-! ## A011820.P11746372380069835323

`A007723(Δ[A023545(n+1)]+9)`
-/

namespace A011820.P11746372380069835323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (f1 (n + 1) - f1 n + 9).toNat

end

end A011820.P11746372380069835323

/-!
# A011821: Number of M-sequences m_0,...,m_5 with m_1 < n.

The programs for A011821, there is no canonical definition to state claims against.
-/

/-! ## A011821.P16093873211215206999

`A007723(eq[6, A002262(n)])`
-/

namespace A011821.P16093873211215206999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011821.P16093873211215206999

/-! ## A011821.P10206600746710755656

`A007723(eq[36, A143844(n)])`
-/

namespace A011821.P10206600746710755656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011821.P10206600746710755656

/-! ## A011821.P4610793316772720063

`A007723(eq[64, A059268(n)])`
-/

namespace A011821.P4610793316772720063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011821.P4610793316772720063

/-! ## A011821.P5683219227109155989

`A007723(A000217(n+6)+6)`
-/

namespace A011821.P5683219227109155989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A000217 (n + 6) + 6).toNat

end

end A011821.P5683219227109155989

/-! ## A011821.P2456045785986832787

`A007723(eq[7, A002260(n+1)])`
-/

namespace A011821.P2456045785986832787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011821.P2456045785986832787

/-!
# A011822: M-sequences m_0,...,m_6 with m_1 < n.

The programs for A011822, there is no canonical definition to state claims against.
-/

/-! ## A011822.P10089005176148783771

`A007723(eq[7, A002262(n)])`
-/

namespace A011822.P10089005176148783771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011822.P10089005176148783771

/-! ## A011822.P10486519369089036725

`A007723(eq[7, A130270(n+1)])`
-/

namespace A011822.P10486519369089036725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011822.P10486519369089036725

/-! ## A011822.P225488559974723128

`A007723(eq[7, A144328(n+1)])`
-/

namespace A011822.P225488559974723128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011822.P225488559974723128

/-! ## A011822.P15480040020420368668

`A007723(eq[8, A002260(n+1)])`
-/

namespace A011822.P15480040020420368668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011822.P15480040020420368668

/-! ## A011822.P17520746386310809880

`A007723(eq[8, A134868(n+1)])`
-/

namespace A011822.P17520746386310809880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011822.P17520746386310809880

/-!
# A011823: M-sequences m_0,...,m_7 with m_1 < n.

The programs for A011823, there is no canonical definition to state claims against.
-/

/-! ## A011823.P17404835704961380091

`A007723(eq[8, A002262(n)])`
-/

namespace A011823.P17404835704961380091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011823.P17404835704961380091

/-! ## A011823.P15877020702319076565

`A007723(A167499(n+7)+3)`
-/

namespace A011823.P15877020702319076565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A167499 (n + 7) + 3).toNat

end

end A011823.P15877020702319076565

/-! ## A011823.P11400467955419602318

`A007723(eq[8, A130270(n+1)])`
-/

namespace A011823.P11400467955419602318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011823.P11400467955419602318

/-! ## A011823.P731957940263854339

`A007723(eq[8, A144328(n+1)])`
-/

namespace A011823.P731957940263854339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011823.P731957940263854339

/-! ## A011823.P11979979503361527622

`A007723(eq[9, A002260(n+1)])`
-/

namespace A011823.P11979979503361527622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011823.P11979979503361527622

/-!
# A011824: M-sequences m_0,...,m_8 with m_1 < n.

The programs for A011824, there is no canonical definition to state claims against.
-/

/-! ## A011824.P18335640438991347464

`A007723(eq[9, A002262(n)])`
-/

namespace A011824.P18335640438991347464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011824.P18335640438991347464

/-! ## A011824.P14668616694504182908

`A007723(eq[9, A130270(n+1)])`
-/

namespace A011824.P14668616694504182908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011824.P14668616694504182908

/-! ## A011824.P5484497953479664704

`A007723(eq[9, A144328(n+1)])`
-/

namespace A011824.P5484497953479664704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011824.P5484497953479664704

/-! ## A011824.P15094578031087558024

`A007723(eq[10, A002260(n+1)])`
-/

namespace A011824.P15094578031087558024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011824.P15094578031087558024

/-! ## A011824.P12865664670191951438

`A007723(eq[10, A134868(n+1)])`
-/

namespace A011824.P12865664670191951438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011824.P12865664670191951438

/-!
# A011825: M-sequences m_0,...,m_9 with m_1 < n.

The programs for A011825, there is no canonical definition to state claims against.
-/

/-! ## A011825.P18085231020926228282

`A007723(eq[10, A002262(n)])`
-/

namespace A011825.P18085231020926228282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011825.P18085231020926228282

/-! ## A011825.P10718989839716623869

`A007723(eq[10, A144328(n+1)])`
-/

namespace A011825.P10718989839716623869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011825.P10718989839716623869

/-! ## A011825.P7385876651358731556

`A007723(eq[10, A327844(n+1)])`
-/

namespace A011825.P7385876651358731556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011825.P7385876651358731556

/-! ## A011825.P2310505452984873185

`A007723(eq[11, A002260(n+1)])`
-/

namespace A011825.P2310505452984873185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011825.P2310505452984873185

/-! ## A011825.P5839406310476600712

`A007723(eq[11, A134868(n+1)])`
-/

namespace A011825.P5839406310476600712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A011825.P5839406310476600712

/-!
# A011826: f-vectors for simplicial complexes of dimension at most 1 (graphs) on at most n-1 vertices.

The programs for A011826, the canonical program `A011826.P2362848013436231510` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011826 has offset 1).

The definition of A011826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011826.P2362848013436231510

`((n+1)^3-3*(n+1)²+8*(n+1)+6)/6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011826

/-- `((n+1)^3-3*(n+1)²+8*(n+1)+6)/6` -/
def P2362848013436231510.Spec : Prop :=
  ∀ n, P2362848013436231510.a n = (A011826 (n + 1) : ℚ)

end A011826

/-! ## A011826.P16993546566235038759

`∑[C(n, 2)+1]+1`
-/

namespace A011826.P16993546566235038759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A011826.P16993546566235038759

namespace A011826

/-- `∑[C(n, 2)+1]+1` -/
def P16993546566235038759.Spec : Prop :=
  ∀ n, (P16993546566235038759.a n : ℤ) = A011826 (n + 1)

end A011826

/-! ## A011826.P14091594704770523786

`ceil(C(n+1, 3)+ϕ+n)`
-/

namespace A011826.P14091594704770523786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 1) 3 : ℝ) + Real.goldenRatio + (n : ℝ)⌉

end

end A011826.P14091594704770523786

namespace A011826

/-- `ceil(C(n+1, 3)+ϕ+n)` -/
def P14091594704770523786.Spec : Prop :=
  ∀ n, P14091594704770523786.a n = A011826 (n + 1)

end A011826

/-! ## A011826.P9002647371490009968

`round(C(n+1, 3)+ϕ+n)`
-/

namespace A011826.P9002647371490009968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 1) 3 : ℝ) + Real.goldenRatio + (n : ℝ))

end

end A011826.P9002647371490009968

namespace A011826

/-- `round(C(n+1, 3)+ϕ+n)` -/
def P9002647371490009968.Spec : Prop :=
  ∀ n, P9002647371490009968.a n = A011826 (n + 1)

end A011826

/-! ## A011826.P5079730836944309613

`∑[a(n-1)-1+n]` with `a(0)=2, a(1)=1`
-/

namespace A011826.P5079730836944309613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011826.P5079730836944309613

namespace A011826

/-- `∑[a(n-1)-1+n]` -/
def P5079730836944309613.Spec : Prop :=
  ∀ n, P5079730836944309613.a n = A011826 (n + 1)

end A011826

/-! ## A011826.P3394742056612774537

`∑[n-(1-a(n-1))]` with `a(0)=2, a(1)=1`
-/

namespace A011826.P3394742056612774537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011826.P3394742056612774537

namespace A011826

/-- `∑[n-(1-a(n-1))]` -/
def P3394742056612774537.Spec : Prop :=
  ∀ n, P3394742056612774537.a n = A011826 (n + 1)

end A011826

/-! ## A011826.P11283476956841062576

`floor(a(n-1)+C(n, 2)+1)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A011826.P11283476956841062576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (Nat.choose n 2 + 1)

end

end A011826.P11283476956841062576

namespace A011826

/-- `floor(a(n-1)+C(n, 2)+1)` -/
def P11283476956841062576.Spec : Prop :=
  ∀ n, (P11283476956841062576.a n : ℤ) = A011826 (n + 1)

end A011826

/-! ## A011826.P4870313480674944677

`floor(C(n+1, 3)+ϕ+n+1)`
-/

namespace A011826.P4870313480674944677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) 3 : ℝ) + Real.goldenRatio + (n + 1 : ℝ)⌋

end

end A011826.P4870313480674944677

namespace A011826

/-- `floor(C(n+1, 3)+ϕ+n+1)` -/
def P4870313480674944677.Spec : Prop :=
  ∀ n, P4870313480674944677.a n = A011826 (n + 1)

end A011826

/-! ## A011826.P17649607874579080671

`∑[∑[n-1]%(n+1)²+2]`
-/

namespace A011826.P17649607874579080671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) ((n + 1) ^ 2 : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011826.P17649607874579080671

namespace A011826

/-- `∑[∑[n-1]%(n+1)²+2]` -/
def P17649607874579080671.Spec : Prop :=
  ∀ n, P17649607874579080671.a n = A011826 (n + 1)

end A011826

/-! ## A011826.P11575760324565621131

`∑[∑[n-C(n, n²)]-(n-3)]`
-/

namespace A011826.P11575760324565621131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose n (n ^ 2) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011826.P11575760324565621131

namespace A011826

/-- `∑[∑[n-C(n, n²)]-(n-3)]` -/
def P11575760324565621131.Spec : Prop :=
  ∀ n, P11575760324565621131.a n = A011826 (n + 1)

end A011826

/-! ## A011826.P1707379914764458487

`floor(∑[lcm(n, n-1)/2]+n+2)`
-/

namespace A011826.P1707379914764458487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℚ)⌋

end

end A011826.P1707379914764458487

namespace A011826

/-- `floor(∑[lcm(n, n-1)/2]+n+2)` -/
def P1707379914764458487.Spec : Prop :=
  ∀ n, P1707379914764458487.a n = A011826 (n + 1)

end A011826

/-! ## A011826.P11265859870266291784

`∑[C(n, 2*n)-(n-1-∑[n])]`
-/

namespace A011826.P11265859870266291784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (2 * n) : ℤ) - ((n : ℤ) - 1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011826.P11265859870266291784

namespace A011826

/-- `∑[C(n, 2*n)-(n-1-∑[n])]` -/
def P11265859870266291784.Spec : Prop :=
  ∀ n, P11265859870266291784.a n = A011826 (n + 1)

end A011826

/-! ## A011826.P4171373404481103190

`a(n-1)-(n-n²-2)/2` with `a(0)=2`
-/

namespace A011826.P4171373404481103190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - ((n : ℤ) - (n ^ 2 : ℤ) - 2 : ℚ) / 2

end

end A011826.P4171373404481103190

namespace A011826

/-- `a(n-1)-(n-n²-2)/2` -/
def P4171373404481103190.Spec : Prop :=
  ∀ n, P4171373404481103190.a n = (A011826 (n + 1) : ℚ)

end A011826

/-! ## A011826.P6372881661754114483

`A000125(n)+1`
-/

namespace A011826.P6372881661754114483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + 1

end

end A011826.P6372881661754114483

namespace A011826

/-- `A000125(n)+1` -/
def P6372881661754114483.Spec : Prop :=
  ∀ n, P6372881661754114483.a n = A011826 (n + 1)

end A011826

/-! ## A011826.P7960563531765883545

`A004006(n)+2`
-/

namespace A011826.P7960563531765883545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + 2

end

end A011826.P7960563531765883545

namespace A011826

/-- `A004006(n)+2` -/
def P7960563531765883545.Spec : Prop :=
  ∀ n, P7960563531765883545.a n = A011826 (n + 1)

end A011826

/-! ## A011826.P13159785893737100676

`A283551(n)+3`
-/

namespace A011826.P13159785893737100676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283551 n + 3

end

end A011826.P13159785893737100676

namespace A011826

/-- `A283551(n)+3` -/
def P13159785893737100676.Spec : Prop :=
  ∀ n, P13159785893737100676.a n = A011826 (n + 1)

end A011826

/-! ## A011826.P688615507979609606

`A033547(n)/2+2`
-/

namespace A011826.P688615507979609606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033547 n : ℚ) / 2 + 2

end

end A011826.P688615507979609606

namespace A011826

/-- `A033547(n)/2+2` -/
def P688615507979609606.Spec : Prop :=
  ∀ n, P688615507979609606.a n = (A011826 (n + 1) : ℚ)

end A011826

/-! ## A011826.P7763592452985186298

`∑[A000124(abs(1-n))]`
-/

namespace A011826.P7763592452985186298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011826.P7763592452985186298

namespace A011826

/-- `∑[A000124(abs(1-n))]` -/
def P7763592452985186298.Spec : Prop :=
  ∀ n, P7763592452985186298.a n = A011826 (n + 1)

end A011826

/-! ## A011826.P3438825387709376874

`∑[n²]-A129936(n)`
-/

namespace A011826.P3438825387709376874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A129936 n

end

end A011826.P3438825387709376874

namespace A011826

/-- `∑[n²]-A129936(n)` -/
def P3438825387709376874.Spec : Prop :=
  ∀ n, P3438825387709376874.a n = A011826 (n + 1)

end A011826

/-!
# A011827: f-vectors for simplicial complexes of dimension at most 2 on at most n-1 vertices.

The programs for A011827, there is no canonical definition to state claims against.
-/

/-! ## A011827.P401327214216128956

`A230551(n+1)+A003987(A060223(n))`
-/

namespace A011827.P401327214216128956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230551 (n + 1) + A003987 (A060223 n).toNat

end

end A011827.P401327214216128956

/-! ## A011827.P10382153468128987762

`A155736(n+1)+A023187(ceil(2^(n-1)))`
-/

namespace A011827.P10382153468128987762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1) + A023187 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A011827.P10382153468128987762

/-! ## A011827.P14568737361832036330

`A195836(A000105(n))+A014137(n)`
-/

namespace A011827.P14568737361832036330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195836 (A000105 n).toNat + A014137 n

end

end A011827.P14568737361832036330

/-!
# A011828: Number of f-vectors for simplicial complexes of dimension at most 3 on at most n-1 vertices.

The programs for A011828, there is no canonical definition to state claims against.
-/

/-! ## A011828.P4822813019766968559

`A248231(A166741(n))+A002024(n+1)`
-/

namespace A011828.P4822813019766968559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A166741 n).toNat + A002024 (n + 1)

end

end A011828.P4822813019766968559

/-! ## A011828.P10203211546332924180

`A248231(A166741(n))+A026099(n+1)`
-/

namespace A011828.P10203211546332924180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A166741 n).toNat + A026099 (n + 1)

end

end A011828.P10203211546332924180

/-! ## A011828.P8409190029681191831

`A103221(4*A182216(n))+∑[A004148(n)]`
-/

namespace A011828.P8409190029681191831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (4 * A182216 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011828.P8409190029681191831

/-!
# A011829: Number of f-vectors for simplicial complexes of dimension at most 4 on at most n-1 vertices.

The programs for A011829, there is no canonical definition to state claims against.
-/

/-! ## A011829.P13899878401462136979

`A011830(n+1)-A337380(6^n+1-2^n)`
-/

namespace A011829.P13899878401462136979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011830 (n + 1) - A337380 ((6 ^ n : ℤ) + (1 - (2 ^ n : ℤ))).toNat

end

end A011829.P13899878401462136979

/-! ## A011829.P8269838769465192956

`A059169(A000828(n))+A000051(n)`
-/

namespace A011829.P8269838769465192956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A000828 n).toNat + A000051 n

end

end A011829.P8269838769465192956

/-! ## A011829.P17216889276486244237

`A059807(A000828(n))+A000079(n)`
-/

namespace A011829.P17216889276486244237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059807 (A000828 n).toNat + A000079 n

end

end A011829.P17216889276486244237

/-!
# A011830: f-vectors for simplicial complexes of dimension at most 5 on at most n-1 vertices.

The programs for A011830, there is no canonical definition to state claims against.
-/

/-! ## A011830.P8802692742199121168

`A220880(n)+A176723(A055113(n))`
-/

namespace A011830.P8802692742199121168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220880 n + A176723 (A055113 n).toNat

end

end A011830.P8802692742199121168

/-! ## A011830.P3092439488599438484

`A220880(n)+A168046(A111567(n))`
-/

namespace A011830.P3092439488599438484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220880 n + A168046 (A111567 n).toNat

end

end A011830.P3092439488599438484

/-! ## A011830.P198249861928629261

`A220880(n)+A176723(A184954(n))`
-/

namespace A011830.P198249861928629261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220880 n + A176723 (A184954 n).toNat

end

end A011830.P198249861928629261

/-! ## A011830.P6542522107716287713

`A285621(A287804(n))+A220880(n)`
-/

namespace A011830.P6542522107716287713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285621 (A287804 n).toNat + A220880 n

end

end A011830.P6542522107716287713

/-!
# A011831: f-vectors for simplicial complexes of dimension at most 6 on at most n-1 vertices.

The programs for A011831, there is no canonical definition to state claims against.
-/

/-! ## A011831.P5519198951656720947

`A220880(n)+A016389(A011816(n))`
-/

namespace A011831.P5519198951656720947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220880 n + A016389 (A011816 n).toNat

end

end A011831.P5519198951656720947

/-! ## A011831.P16250495545023336369

`A220880(n)+A176723(A115981(n))`
-/

namespace A011831.P16250495545023336369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220880 n + A176723 (A115981 n).toNat

end

end A011831.P16250495545023336369

/-! ## A011831.P13202031455853977506

`A000027(A007695(n)-A011816(n))`
-/

namespace A011831.P13202031455853977506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A007695 n - A011816 n).toNat

end

end A011831.P13202031455853977506

/-! ## A011831.P14668481292062637727

`A007695(n)-A235145(A007689(n))`
-/

namespace A011831.P14668481292062637727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007695 n - A235145 (A007689 n).toNat

end

end A011831.P14668481292062637727

/-!
# A011832: f-vectors for simplicial complexes of dimension at most 7 on at most n-1 vertices.

The programs for A011832, there is no canonical definition to state claims against.
-/

/-! ## A011832.P17216243710534182332

`A011833(A011817(n)!+n)-char[9]`
-/

namespace A011832.P17216243710534182332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011833 (Nat.factorial (A011817 n).toNat + n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A011832.P17216243710534182332

/-! ## A011832.P186058463342538936

`A057814(n)!*A011833(n+1)-char[9]`
-/

namespace A011832.P186058463342538936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A057814 n).toNat : ℤ) * A011833 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A011832.P186058463342538936

/-! ## A011832.P13014812036253945208

`A011833(n+1)^A011845(n)!-char[9]`
-/

namespace A011832.P13014812036253945208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011833 (n + 1) ^ Nat.factorial (A011845 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A011832.P13014812036253945208

/-! ## A011832.P1249576717356387327

`A220880(n)+A010052(A011816(n))`
-/

namespace A011832.P1249576717356387327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220880 n + A010052 (A011816 n).toNat

end

end A011832.P1249576717356387327

/-! ## A011832.P15211521762385243678

`A220880(n)+A016389(A011817(n))`
-/

namespace A011832.P15211521762385243678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220880 n + A016389 (A011817 n).toNat

end

end A011832.P15211521762385243678

/-!
# A011833: Number of f-vectors for simplicial complexes of dimension at most 8 on at most n-1 vertices.

The programs for A011833, there is no canonical definition to state claims against.
-/

/-! ## A011833.P1490690495314189099

`A220880(n)+A010052(A011817(n))`
-/

namespace A011833.P1490690495314189099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220880 n + A010052 (A011817 n).toNat

end

end A011833.P1490690495314189099

/-! ## A011833.P513231430652334072

`A007695(n)-A006925(A011845(n))`
-/

namespace A011833.P513231430652334072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007695 n - A006925 (A011845 n).toNat

end

end A011833.P513231430652334072

/-! ## A011833.P11200510003424279334

`A007695(n)-A011681(A011817(n))`
-/

namespace A011833.P11200510003424279334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007695 n - A011681 (A011817 n).toNat

end

end A011833.P11200510003424279334

/-! ## A011833.P2030159753466288009

`A007695(n)-A011729(A011816(n))`
-/

namespace A011833.P2030159753466288009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007695 n - A011729 (A011816 n).toNat

end

end A011833.P2030159753466288009

/-! ## A011833.P2163958197318307811

`A007695(n)-A185284(A000837(n))`
-/

namespace A011833.P2163958197318307811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007695 n - A185284 (A000837 n).toNat

end

end A011833.P2163958197318307811

/-!
# A011834: f-vectors for 2-neighborly simplicial complexes on n+1 vertices.

The programs for A011834, there is no canonical definition to state claims against.
-/

/-! ## A011834.P17794720999622489252

`A184520(A135750(n)+A000217(n))`
-/

namespace A011834.P17794720999622489252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184520 (A135750 n + A000217 n).toNat

end

end A011834.P17794720999622489252

/-! ## A011834.P10995332233827516760

`A117893(A221410(n))+A000217(n)`
-/

namespace A011834.P10995332233827516760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117893 (A221410 n).toNat + A000217 n

end

end A011834.P10995332233827516760

/-!
# A011835: f-vectors for 3-neighborly simplicial complexes on n+2 vertices.

The programs for A011835, there is no canonical definition to state claims against.
-/

/-! ## A011835.P13587306080457345018

`∑[n]*A347457(a(n-1))+1` with `a(0)=1`
-/

namespace A011835.P13587306080457345018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A347457 (a (n - 1)).toNat + 1

end

end A011835.P13587306080457345018

/-!
# A011836: f-vectors for 4-neighborly simplicial complexes on n+3 vertices.

The programs for A011836, there is no canonical definition to state claims against.
-/

/-! ## A011836.P2409528080631506465

`floor(sqrt(∑{d}[A289708(n+1), #]))`
-/

namespace A011836.P2409528080631506465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A011836.P2409528080631506465

/-!
# A011837: f-vectors for 5-neighborly simplicial complexes on n+4 vertices.

The programs for A011837, there is no canonical definition to state claims against.
-/

/-! ## A011837.P7228123110800137635

`A003961(A135861(n))+n`
-/

namespace A011837.P7228123110800137635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A135861 n).toNat + (n : ℤ)

end

end A011837.P7228123110800137635

/-!
# A011838: f-vectors for 6-neighborly simplicial complexes on n+5 vertices.

The programs for A011838, there is no canonical definition to state claims against.
-/

/-! ## A011838.P2860823310029238007

`A007091(A265914(n+1)+n)`
-/

namespace A011838.P2860823310029238007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A265914 (n + 1) + (n : ℤ)).toNat

end

end A011838.P2860823310029238007

/-!
# A011839: f-vectors for 7-neighborly simplicial complexes on n+6 vertices.

The programs for A011839, there is no canonical definition to state claims against.
-/

/-! ## A011839.P1854668111565060014

`A050504(A078537(n))+1`
-/

namespace A011839.P1854668111565060014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (A078537 n).toNat + 1

end

end A011839.P1854668111565060014

/-!
# A011841: f-vectors for 9-neighborly simplicial complexes on n+8 vertices.

The programs for A011841, there is no canonical definition to state claims against.
-/

/-! ## A011841.P11723537685942956466

`A007091(A238016(n)+A054745(n))`
-/

namespace A011841.P11723537685942956466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A238016 n + A054745 n).toNat

end

end A011841.P11723537685942956466

/-!
# A011842: a(n) = floor(n*(n-1)*(n-2)/24).

The programs for A011842, the canonical program `A011842.P11023906014188089785` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011842 has offset 0).

The definition of A011842 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)/24)` (program `A011842.P11023906014188089785`, by `A011842.P11023906014188089785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011842.P7247603076592364569

`floor(C(n, 3)/4)`
-/

namespace A011842.P7247603076592364569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 3 : ℚ) / 4⌋

end

end A011842.P7247603076592364569

namespace A011842

/-- `floor(C(n, 3)/4)` -/
def P7247603076592364569.Spec : Prop :=
  ∀ n, P7247603076592364569.a n = A011842 n

end A011842

/-! ## A011842.P11023906014188089785

`floor(n*(n-1)*(n-2)/24)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011842

/-- `floor(n*(n-1)*(n-2)/24)` -/
def P11023906014188089785.Spec : Prop :=
  ∀ n, P11023906014188089785.a n = A011842 n

theorem P11023906014188089785.correct : P11023906014188089785.Spec := by
  intro n
  simp only [A011842]

end A011842

/-! ## A011842.P1342556811576217015

`and(-4, C(n, 3))/4`
-/

namespace A011842.P1342556811576217015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-4) (Nat.choose n 3 : ℤ) : ℚ) / 4

end

end A011842.P1342556811576217015

namespace A011842

/-- `and(-4, C(n, 3))/4` -/
def P1342556811576217015.Spec : Prop :=
  ∀ n, P1342556811576217015.a n = (A011842 n : ℚ)

end A011842

/-! ## A011842.P13590728981570448122

`ceil((C(n, 3)-3)/4)`
-/

namespace A011842.P13590728981570448122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 3 : ℤ) - 3 : ℚ) / 4⌉

end

end A011842.P13590728981570448122

namespace A011842

/-- `ceil((C(n, 3)-3)/4)` -/
def P13590728981570448122.Spec : Prop :=
  ∀ n, P13590728981570448122.a n = A011842 n

end A011842

/-! ## A011842.P14999328263179973214

`round((C(n, 3)-ϕ)/4)`
-/

namespace A011842.P14999328263179973214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose n 3 : ℝ) - Real.goldenRatio) / 4)

end

end A011842.P14999328263179973214

namespace A011842

/-- `round((C(n, 3)-ϕ)/4)` -/
def P14999328263179973214.Spec : Prop :=
  ∀ n, P14999328263179973214.a n = A011842 n

end A011842

/-! ## A011842.P15152458703892506956

`A081276(n)-A173196(n)`
-/

namespace A011842.P15152458703892506956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 n - A173196 n

end

end A011842.P15152458703892506956

namespace A011842

/-- `A081276(n)-A173196(n)` -/
def P15152458703892506956.Spec : Prop :=
  ∀ n, P15152458703892506956.a n = A011842 n

end A011842

/-! ## A011842.P17232999014231431368

`A004526(A011894(n))`
-/

namespace A011842.P17232999014231431368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011894 n).toNat

end

end A011842.P17232999014231431368

namespace A011842

/-- `A004526(A011894(n))` -/
def P17232999014231431368.Spec : Prop :=
  ∀ n, P17232999014231431368.a n = A011842 n

end A011842

/-! ## A011842.P6410405459184470368

`A004526(∑[A004526(n)²]-A211521(n))`
-/

namespace A011842.P6410405459184470368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j - A211521 n).toNat

end

end A011842.P6410405459184470368

namespace A011842

/-- `A004526(∑[A004526(n)²]-A211521(n))` -/
def P6410405459184470368.Spec : Prop :=
  ∀ n, P6410405459184470368.a n = A011842 n

end A011842

/-!
# A011843: a(n) = floor(binomial(n,5)/6).

The programs for A011843, the canonical program `A011843.P17648649570843885541` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011843 has offset 0).

The definition of A011843 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, 5)/6)` (program `A011843.P17648649570843885541`, by `A011843.P17648649570843885541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011843.P17648649570843885541

`floor(C(n, 5)/6)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011843

/-- `floor(C(n, 5)/6)` -/
def P17648649570843885541.Spec : Prop :=
  ∀ n, P17648649570843885541.a n = A011843 n

theorem P17648649570843885541.correct : P17648649570843885541.Spec := by
  intro n
  simp only [A011843]

end A011843

/-! ## A011843.P2893419119502156550

`floor(A000389(n)/6)`
-/

namespace A011843.P2893419119502156550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000389 n : ℚ) / 6⌋

end

end A011843.P2893419119502156550

namespace A011843

/-- `floor(A000389(n)/6)` -/
def P2893419119502156550.Spec : Prop :=
  ∀ n, P2893419119502156550.a n = A011843 n

theorem P2893419119502156550.correct : P2893419119502156550.Spec := by
  intro n
  simp only [A011843, Nat.add_sub_cancel, A011843.P2893419119502156550.a, A011843.P17648649570843885541.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011843

/-! ## A011843.P8042800111674332213

`floor(A266387(n+1)/42)`
-/

namespace A011843.P8042800111674332213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266387 (n + 1) : ℚ) / 42⌋

end

end A011843.P8042800111674332213

namespace A011843

/-- `floor(A266387(n+1)/42)` -/
def P8042800111674332213.Spec : Prop :=
  ∀ n, P8042800111674332213.a n = A011843 n

end A011843

/-! ## A011843.P18129788028495791386

`floor((∑[A000332(n)]-A000332(n))/6)`
-/

namespace A011843.P18129788028495791386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j - A000332 n : ℤ) : ℚ) / 6⌋

end

end A011843.P18129788028495791386

namespace A011843

/-- `floor((∑[A000332(n)]-A000332(n))/6)` -/
def P18129788028495791386.Spec : Prop :=
  ∀ n, P18129788028495791386.a n = A011843 n

end A011843

/-! ## A011843.P12615149282643912080

`floor((∑[A052762(n)/24]-A052762(n)/24)/6)`
-/

namespace A011843.P12615149282643912080
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052762 n : ℚ) / 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j - (A052762 n : ℚ) / 24) / 6⌋

end

end A011843.P12615149282643912080

namespace A011843

/-- `floor((∑[A052762(n)/24]-A052762(n)/24)/6)` -/
def P12615149282643912080.Spec : Prop :=
  ∀ n, P12615149282643912080.a n = A011843 n

end A011843

/-! ## A011843.P5935258017567004890

`floor(Δ[A000579(n)]/6)`
-/

namespace A011843.P5935258017567004890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 6⌋

end

end A011843.P5935258017567004890

namespace A011843

/-- `floor(Δ[A000579(n)]/6)` -/
def P5935258017567004890.Spec : Prop :=
  ∀ n, P5935258017567004890.a n = A011843 n

end A011843

/-! ## A011843.P10777857273016865532

`floor(A000579(n+1)/(n+1))`
-/

namespace A011843.P10777857273016865532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000579 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A011843.P10777857273016865532

namespace A011843

/-- `floor(A000579(n+1)/(n+1))` -/
def P10777857273016865532.Spec : Prop :=
  ∀ n, P10777857273016865532.a n = A011843 n

end A011843

/-! ## A011843.P5315947022368998194

`floor(A007318(∑[n]+5)/6)`
-/

namespace A011843.P5315947022368998194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 5) : ℚ) / 6⌋

end

end A011843.P5315947022368998194

namespace A011843

/-- `floor(A007318(∑[n]+5)/6)` -/
def P5315947022368998194.Spec : Prop :=
  ∀ n, P5315947022368998194.a n = A011843 n

end A011843

/-!
# A011844: a(n) = floor(binomial(n,7)/8).

The programs for A011844, the canonical program `A011844.P14195991380862381159` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011844 has offset 0).

The definition of A011844 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, 7)/8)` (program `A011844.P14195991380862381159`, by `A011844.P14195991380862381159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011844.P14195991380862381159

`floor(C(n, 7)/8)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011844

/-- `floor(C(n, 7)/8)` -/
def P14195991380862381159.Spec : Prop :=
  ∀ n, P14195991380862381159.a n = A011844 n

theorem P14195991380862381159.correct : P14195991380862381159.Spec := by
  intro n
  simp only [A011844]

end A011844

/-! ## A011844.P7940864464585850707

`ceil((C(n, 7)-7)/8)`
-/

namespace A011844.P7940864464585850707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 7 : ℤ) - 7 : ℚ) / 8⌉

end

end A011844.P7940864464585850707

namespace A011844

/-- `ceil((C(n, 7)-7)/8)` -/
def P7940864464585850707.Spec : Prop :=
  ∀ n, P7940864464585850707.a n = A011844 n

end A011844

/-! ## A011844.P11758851729623402340

`floor(∑[A000579(A171950(n+1))]/8)`
-/

namespace A011844.P11758851729623402340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (A171950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 8⌋

end

end A011844.P11758851729623402340

namespace A011844

/-- `floor(∑[A000579(A171950(n+1))]/8)` -/
def P11758851729623402340.Spec : Prop :=
  ∀ n, P11758851729623402340.a n = A011844 n

end A011844

/-! ## A011844.P13346503583888893441

`floor((A008860(n)-Δ[A008860(n)])/8)`
-/

namespace A011844.P13346503583888893441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008860 n - (f1 (n + 1) - f1 n) : ℚ) / 8⌋

end

end A011844.P13346503583888893441

namespace A011844

/-- `floor((A008860(n)-Δ[A008860(n)])/8)` -/
def P13346503583888893441.Spec : Prop :=
  ∀ n, P13346503583888893441.a n = A011844 n

end A011844

/-! ## A011844.P11245128745873520107

`floor(Δ[Δ[A115205(n)/8]])`
-/

namespace A011844.P11245128745873520107
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115205 n : ℚ) / 8

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A011844.P11245128745873520107

namespace A011844

/-- `floor(Δ[Δ[A115205(n)/8]])` -/
def P11245128745873520107.Spec : Prop :=
  ∀ n, P11245128745873520107.a n = A011844 n

end A011844

/-! ## A011844.P9232669195731618612

`floor(A071919(A167487(n))/8)`
-/

namespace A011844.P9232669195731618612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071919 (A167487 n).toNat : ℚ) / 8⌋

end

end A011844.P9232669195731618612

namespace A011844

/-- `floor(A071919(A167487(n))/8)` -/
def P9232669195731618612.Spec : Prop :=
  ∀ n, P9232669195731618612.a n = A011844 n

end A011844

/-!
# A011845: a(n) = floor( binomial(n,8)/9).

The programs for A011845, the canonical program `A011845.P1281747266550378712` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011845 has offset 0).

The definition of A011845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, 8)/9)` (program `A011845.P1281747266550378712`, by `A011845.P1281747266550378712.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011845.P1281747266550378712

`floor(C(n, 8)/9)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011845

/-- `floor(C(n, 8)/9)` -/
def P1281747266550378712.Spec : Prop :=
  ∀ n, P1281747266550378712.a n = A011845 n

theorem P1281747266550378712.correct : P1281747266550378712.Spec := by
  intro n
  simp only [A011845]

end A011845

/-! ## A011845.P9917854441072158267

`round((C(n, 8)-2)/9)`
-/

namespace A011845.P9917854441072158267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose n 8 : ℤ) - 2 : ℚ) / 9)

end

end A011845.P9917854441072158267

namespace A011845

/-- `round((C(n, 8)-2)/9)` -/
def P9917854441072158267.Spec : Prop :=
  ∀ n, P9917854441072158267.a n = A011845 n

end A011845

/-! ## A011845.P3671211386815549118

`floor(Δ[A115205(n)]/9)`
-/

namespace A011845.P3671211386815549118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 9⌋

end

end A011845.P3671211386815549118

namespace A011845

/-- `floor(Δ[A115205(n)]/9)` -/
def P3671211386815549118.Spec : Prop :=
  ∀ n, P3671211386815549118.a n = A011845 n

end A011845

/-! ## A011845.P8037340282860821022

`floor((A115205(n+1)-1)/(n+1))`
-/

namespace A011845.P8037340282860821022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115205 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A011845.P8037340282860821022

namespace A011845

/-- `floor((A115205(n+1)-1)/(n+1))` -/
def P8037340282860821022.Spec : Prop :=
  ∀ n, P8037340282860821022.a n = A011845 n

end A011845

/-! ## A011845.P14263539272163418314

`floor((A008861(n)-A008860(n))/9)`
-/

namespace A011845.P14263539272163418314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008861 n - A008860 n : ℚ) / 9⌋

end

end A011845.P14263539272163418314

namespace A011845

/-- `floor((A008861(n)-A008860(n))/9)` -/
def P14263539272163418314.Spec : Prop :=
  ∀ n, P14263539272163418314.a n = A011845 n

end A011845

/-! ## A011845.P5496587381668387991

`floor(A007318(A060533(n))/9)`
-/

namespace A011845.P5496587381668387991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (A060533 n).toNat : ℚ) / 9⌋

end

end A011845.P5496587381668387991

namespace A011845

/-- `floor(A007318(A060533(n))/9)` -/
def P5496587381668387991.Spec : Prop :=
  ∀ n, P5496587381668387991.a n = A011845 n

end A011845

/-!
# A011846: a(n) = floor( binomial(n,9)/10 ).

The programs for A011846, the canonical program `A011846.P1159420779325142321` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011846 has offset 0).

The definition of A011846 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, 9)/10)` (program `A011846.P1159420779325142321`, by `A011846.P1159420779325142321.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011846.P1159420779325142321

`floor(C(n, 9)/10)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011846

/-- `floor(C(n, 9)/10)` -/
def P1159420779325142321.Spec : Prop :=
  ∀ n, P1159420779325142321.a n = A011846 n

theorem P1159420779325142321.correct : P1159420779325142321.Spec := by
  intro n
  simp only [A011846]

end A011846

/-! ## A011846.P16818921990807210633

`floor((A115205(n)-1)/10)`
-/

namespace A011846.P16818921990807210633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115205 n - 1 : ℚ) / 10⌋

end

end A011846.P16818921990807210633

namespace A011846

/-- `floor((A115205(n)-1)/10)` -/
def P16818921990807210633.Spec : Prop :=
  ∀ n, P16818921990807210633.a n = A011846 n

theorem P16818921990807210633.correct : P16818921990807210633.Spec := by
  intro n
  simp only [A011846, Nat.add_sub_cancel, A011846.P16818921990807210633.a, A011846.P1159420779325142321.a, A115205, A115205.P18109322668786232172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011846

/-! ## A011846.P14095241712786359115

`ceil(A308778(A002652(n)²)+A115205(n)/10)`
-/

namespace A011846.P14095241712786359115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308778 (A002652 n ^ 2).toNat : ℚ) + (A115205 n : ℚ) / 10⌉

end

end A011846.P14095241712786359115

namespace A011846

/-- `ceil(A308778(A002652(n)²)+A115205(n)/10)` -/
def P14095241712786359115.Spec : Prop :=
  ∀ n, P14095241712786359115.a n = A011846 n

end A011846

/-! ## A011846.P8782694830262679880

`ceil(A308778(A026792(n+1)²)+A115205(n)/10)`
-/

namespace A011846.P8782694830262679880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308778 (A026792 (n + 1) ^ 2).toNat : ℚ) + (A115205 n : ℚ) / 10⌉

end

end A011846.P8782694830262679880

namespace A011846

/-- `ceil(A308778(A026792(n+1)²)+A115205(n)/10)` -/
def P8782694830262679880.Spec : Prop :=
  ∀ n, P8782694830262679880.a n = A011846 n

end A011846

/-! ## A011846.P7596859500308784026

`ceil(A308778(A061392(n)²)+A115205(n)/10)`
-/

namespace A011846.P7596859500308784026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308778 (A061392 n ^ 2).toNat : ℚ) + (A115205 n : ℚ) / 10⌉

end

end A011846.P7596859500308784026

namespace A011846

/-- `ceil(A308778(A061392(n)²)+A115205(n)/10)` -/
def P7596859500308784026.Spec : Prop :=
  ∀ n, P7596859500308784026.a n = A011846 n

end A011846

/-! ## A011846.P15948107178763002725

`ceil(A308778(A165129(n+1)²)+A115205(n)/10)`
-/

namespace A011846.P15948107178763002725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308778 (A165129 (n + 1) ^ 2).toNat : ℚ) + (A115205 n : ℚ) / 10⌉

end

end A011846.P15948107178763002725

namespace A011846

/-- `ceil(A308778(A165129(n+1)²)+A115205(n)/10)` -/
def P15948107178763002725.Spec : Prop :=
  ∀ n, P15948107178763002725.a n = A011846 n

end A011846

/-! ## A011846.P7441705973093097951

`ceil(A308778(A057362(n)²)+A115205(n)/10)`
-/

namespace A011846.P7441705973093097951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308778 (A057362 n ^ 2).toNat : ℚ) + (A115205 n : ℚ) / 10⌉

end

end A011846.P7441705973093097951

namespace A011846

/-- `ceil(A308778(A057362(n)²)+A115205(n)/10)` -/
def P7441705973093097951.Spec : Prop :=
  ∀ n, P7441705973093097951.a n = A011846 n

end A011846

/-! ## A011846.P10643905659811323111

`ceil(A308778(n²)+A115205(n)/10)`
-/

namespace A011846.P10643905659811323111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308778 (n ^ 2) : ℚ) + (A115205 n : ℚ) / 10⌉

end

end A011846.P10643905659811323111

namespace A011846

/-- `ceil(A308778(n²)+A115205(n)/10)` -/
def P10643905659811323111.Spec : Prop :=
  ∀ n, P10643905659811323111.a n = A011846 n

end A011846

/-! ## A011846.P1524393038699225100

`floor(A115205(A000194(n²))/10)`
-/

namespace A011846.P1524393038699225100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115205 (A000194 (n ^ 2)).toNat : ℚ) / 10⌋

end

end A011846.P1524393038699225100

namespace A011846

/-- `floor(A115205(A000194(n²))/10)` -/
def P1524393038699225100.Spec : Prop :=
  ∀ n, P1524393038699225100.a n = A011846 n

end A011846

/-!
# A011847: Triangle of numbers read by rows: T(n,k) = floor( C(n,k)/(k+1) ), where k=0..n-1 and n >= 1.

The programs for A011847, the canonical program `A011847.P1839154116476807727` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011847 has offset 1).

The definition of A011847 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(row(n)+1, col(n))/(col(n)+1))` (program `A011847.P1839154116476807727`, by `A011847.P1839154116476807727.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011847.P1839154116476807727

`floor(C(row(n)+1, col(n))/(col(n)+1))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011847

/-- `floor(C(row(n)+1, col(n))/(col(n)+1))` -/
def P1839154116476807727.Spec : Prop :=
  ∀ n, P1839154116476807727.a n = A011847 (n + 1)

theorem P1839154116476807727.correct : P1839154116476807727.Spec := by
  intro n
  simp only [A011847, Nat.add_sub_cancel]

end A011847

/-! ## A011847.P6588308849954101369

`floor(A132813(n)/A103406(n))`
-/

namespace A011847.P6588308849954101369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132813 n : ℚ) / (A103406 n : ℚ)⌋

end

end A011847.P6588308849954101369

namespace A011847

/-- `floor(A132813(n)/A103406(n))` -/
def P6588308849954101369.Spec : Prop :=
  ∀ n, P6588308849954101369.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P4027773229061869402

`floor(A001263(n+1)/A007318(n))`
-/

namespace A011847.P4027773229061869402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001263 (n + 1) : ℚ) / (A007318 n : ℚ)⌋

end

end A011847.P4027773229061869402

namespace A011847

/-- `floor(A001263(n+1)/A007318(n))` -/
def P4027773229061869402.Spec : Prop :=
  ∀ n, P4027773229061869402.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P11310658585150249160

`floor(A074909(n)/A002260(n+1))`
-/

namespace A011847.P11310658585150249160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074909 n : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A011847.P11310658585150249160

namespace A011847

/-- `floor(A074909(n)/A002260(n+1))` -/
def P11310658585150249160.Spec : Prop :=
  ∀ n, P11310658585150249160.a n = A011847 (n + 1)

theorem P11310658585150249160.correct : P11310658585150249160.Spec := by
  intro n
  simp only [A011847, Nat.add_sub_cancel, A011847.P11310658585150249160.a, A011847.P1839154116476807727.a, A002260, A002260.P9170571874073898642.a, A074909, A074909.P6402560185863182536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011847

/-! ## A011847.P2806063069565163645

`floor(A074909(n)/(A002262(n)+1))`
-/

namespace A011847.P2806063069565163645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074909 n : ℚ) / (A002262 n + 1 : ℚ)⌋

end

end A011847.P2806063069565163645

namespace A011847

/-- `floor(A074909(n)/(A002262(n)+1))` -/
def P2806063069565163645.Spec : Prop :=
  ∀ n, P2806063069565163645.a n = A011847 (n + 1)

theorem P2806063069565163645.correct : P2806063069565163645.Spec := by
  intro n
  simp only [A011847, Nat.add_sub_cancel, A011847.P2806063069565163645.a, A011847.P1839154116476807727.a, A002262, A002262.P17823619022233514403.a, A074909, A074909.P6402560185863182536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011847

/-! ## A011847.P5378282018578668878

`floor(A135278(n)/A004736(n+1))`
-/

namespace A011847.P5378282018578668878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135278 n : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A011847.P5378282018578668878

namespace A011847

/-- `floor(A135278(n)/A004736(n+1))` -/
def P5378282018578668878.Spec : Prop :=
  ∀ n, P5378282018578668878.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P4147853921917260024

`floor(A001263(n+1)/sqrt(A008459(n)))`
-/

namespace A011847.P4147853921917260024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001263 (n + 1) : ℝ) / Real.sqrt (A008459 n : ℝ)⌋

end

end A011847.P4147853921917260024

namespace A011847

/-- `floor(A001263(n+1)/sqrt(A008459(n)))` -/
def P4147853921917260024.Spec : Prop :=
  ∀ n, P4147853921917260024.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P4950493820867740958

`floor(A003506(n+1)/A003991(n+1))`
-/

namespace A011847.P4950493820867740958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003506 (n + 1) : ℚ) / (A003991 (n + 1) : ℚ)⌋

end

end A011847.P4950493820867740958

namespace A011847

/-- `floor(A003506(n+1)/A003991(n+1))` -/
def P4950493820867740958.Spec : Prop :=
  ∀ n, P4950493820867740958.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P5201519910350517229

`floor(A050169(n+1)/A003989(n+1))`
-/

namespace A011847.P5201519910350517229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050169 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ)⌋

end

end A011847.P5201519910350517229

namespace A011847

/-- `floor(A050169(n+1)/A003989(n+1))` -/
def P5201519910350517229.Spec : Prop :=
  ∀ n, P5201519910350517229.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P7936133001601578383

`floor(A014410(n+2)/A003057(n+2))`
-/

namespace A011847.P7936133001601578383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014410 (n + 2) : ℚ) / (A003057 (n + 2) : ℚ)⌋

end

end A011847.P7936133001601578383

namespace A011847

/-- `floor(A014410(n+2)/A003057(n+2))` -/
def P7936133001601578383.Spec : Prop :=
  ∀ n, P7936133001601578383.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P4666608060585948384

`floor(A014410(n+2)/(A003056(n)+2))`
-/

namespace A011847.P4666608060585948384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014410 (n + 2) : ℚ) / (A003056 n + 2 : ℚ)⌋

end

end A011847.P4666608060585948384

namespace A011847

/-- `floor(A014410(n+2)/(A003056(n)+2))` -/
def P4666608060585948384.Spec : Prop :=
  ∀ n, P4666608060585948384.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P919537011422219600

`floor(A014410(n+2)/(A002024(n+1)+1))`
-/

namespace A011847.P919537011422219600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014410 (n + 2) : ℚ) / (A002024 (n + 1) + 1 : ℚ)⌋

end

end A011847.P919537011422219600

namespace A011847

/-- `floor(A014410(n+2)/(A002024(n+1)+1))` -/
def P919537011422219600.Spec : Prop :=
  ∀ n, P919537011422219600.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P17342987603498823124

`floor(A007318(A007401(n+1))/A002260(n+1))`
-/

namespace A011847.P17342987603498823124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (A007401 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A011847.P17342987603498823124

namespace A011847

/-- `floor(A007318(A007401(n+1))/A002260(n+1))` -/
def P17342987603498823124.Spec : Prop :=
  ∀ n, P17342987603498823124.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P11866723764361977588

`floor((A028263(n)-A007318(n))/A003057(n+2))`
-/

namespace A011847.P11866723764361977588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028263 n - A007318 n : ℚ) / (A003057 (n + 2) : ℚ)⌋

end

end A011847.P11866723764361977588

namespace A011847

/-- `floor((A028263(n)-A007318(n))/A003057(n+2))` -/
def P11866723764361977588.Spec : Prop :=
  ∀ n, P11866723764361977588.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P8976565130297669014

`floor(A007318(A002024(n+1)+n)/A002260(n+1))`
-/

namespace A011847.P8976565130297669014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (A002024 (n + 1) + (n : ℤ)).toNat : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A011847.P8976565130297669014

namespace A011847

/-- `floor(A007318(A002024(n+1)+n)/A002260(n+1))` -/
def P8976565130297669014.Spec : Prop :=
  ∀ n, P8976565130297669014.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P6460725832707603284

`floor((A051597(n)+A007318(n))/(A002024(n+1)+1))`
-/

namespace A011847.P6460725832707603284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051597 n + A007318 n : ℚ) / (A002024 (n + 1) + 1 : ℚ)⌋

end

end A011847.P6460725832707603284

namespace A011847

/-- `floor((A051597(n)+A007318(n))/(A002024(n+1)+1))` -/
def P6460725832707603284.Spec : Prop :=
  ∀ n, P6460725832707603284.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P11424384895526828493

`floor(A088617(n)/A009766(n))`
-/

namespace A011847.P11424384895526828493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088617 n : ℚ) / (A009766 n : ℚ)⌋

end

end A011847.P11424384895526828493

namespace A011847

/-- `floor(A088617(n)/A009766(n))` -/
def P11424384895526828493.Spec : Prop :=
  ∀ n, P11424384895526828493.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P11728557173855581713

`floor(A120986(n)/A039598(n))`
-/

namespace A011847.P11728557173855581713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120986 n : ℚ) / (A039598 n : ℚ)⌋

end

end A011847.P11728557173855581713

namespace A011847

/-- `floor(A120986(n)/A039598(n))` -/
def P11728557173855581713.Spec : Prop :=
  ∀ n, P11728557173855581713.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P11420227618499096634

`floor(A247500(n)/A094587(n))`
-/

namespace A011847.P11420227618499096634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247500 n : ℚ) / (A094587 n : ℚ)⌋

end

end A011847.P11420227618499096634

namespace A011847

/-- `floor(A247500(n)/A094587(n))` -/
def P11420227618499096634.Spec : Prop :=
  ∀ n, P11420227618499096634.a n = A011847 (n + 1)

end A011847

/-! ## A011847.P6654785419319385158

`floor(A155497(n)/A155495(n))`
-/

namespace A011847.P6654785419319385158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155497 n : ℚ) / (A155495 n : ℚ)⌋

end

end A011847.P6654785419319385158

namespace A011847

/-- `floor(A155497(n)/A155495(n))` -/
def P6654785419319385158.Spec : Prop :=
  ∀ n, P6654785419319385158.a n = A011847 (n + 1)

end A011847

/-!
# A011848: a(n) = floor(binomial(n, 2)/2).

The programs for A011848, the canonical program `A011848.P18188424954322040822` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011848 has offset 0).

The definition of A011848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, 2)/2)` (program `A011848.P18188424954322040822`, by `A011848.P18188424954322040822.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011848.P18188424954322040822

`floor(C(n, 2)/2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011848

/-- `floor(C(n, 2)/2)` -/
def P18188424954322040822.Spec : Prop :=
  ∀ n, P18188424954322040822.a n = A011848 n

theorem P18188424954322040822.correct : P18188424954322040822.Spec := by
  intro n
  simp only [A011848]

end A011848

/-! ## A011848.P9395032973595484257

`floor(n*(n-1)/4)`
-/

namespace A011848.P9395032973595484257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 4⌋

end

end A011848.P9395032973595484257

namespace A011848

/-- `floor(n*(n-1)/4)` -/
def P9395032973595484257.Spec : Prop :=
  ∀ n, P9395032973595484257.a n = A011848 n

end A011848

/-! ## A011848.P12056866504059024143

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3`
-/

namespace A011848.P12056866504059024143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 3] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A011848.P12056866504059024143

namespace A011848

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P12056866504059024143.Spec : Prop :=
  ∀ n, P12056866504059024143.a n = A011848 n

end A011848

/-! ## A011848.P1828103508243541235

`A054925(n)-A133872(n+2)`
-/

namespace A011848.P1828103508243541235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n - A133872 (n + 2)

end

end A011848.P1828103508243541235

namespace A011848

/-- `A054925(n)-A133872(n+2)` -/
def P1828103508243541235.Spec : Prop :=
  ∀ n, P1828103508243541235.a n = A011848 n

end A011848

/-! ## A011848.P10910180811423408504

`and(-2, C(n, 2))/2`
-/

namespace A011848.P10910180811423408504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (Nat.choose n 2 : ℤ) : ℚ) / 2

end

end A011848.P10910180811423408504

namespace A011848

/-- `and(-2, C(n, 2))/2` -/
def P10910180811423408504.Spec : Prop :=
  ∀ n, P10910180811423408504.a n = (A011848 n : ℚ)

end A011848

/-! ## A011848.P7895802787362007889

`∑[∑[char[or(2, n)+1]]]`
-/

namespace A011848.P7895802787362007889
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011848.P7895802787362007889

namespace A011848

/-- `∑[∑[char[or(2, n)+1]]]` -/
def P7895802787362007889.Spec : Prop :=
  ∀ n, (P7895802787362007889.a n : ℤ) = A011848 n

end A011848

/-! ## A011848.P5180086848141167832

`∑[n-∑[∑[n]%2]]`
-/

namespace A011848.P5180086848141167832
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011848.P5180086848141167832

namespace A011848

/-- `∑[n-∑[∑[n]%2]]` -/
def P5180086848141167832.Spec : Prop :=
  ∀ n, P5180086848141167832.a n = A011848 n

end A011848

/-! ## A011848.P478545871710641785

`∑[n-∑[and(1, ∑[n])]]`
-/

namespace A011848.P478545871710641785
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011848.P478545871710641785

namespace A011848

/-- `∑[n-∑[and(1, ∑[n])]]` -/
def P478545871710641785.Spec : Prop :=
  ∀ n, P478545871710641785.a n = A011848 n

end A011848

/-! ## A011848.P13022747597760868149

`and(n²-n, -3)/4`
-/

namespace A011848.P13022747597760868149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land ((n ^ 2 : ℤ) - (n : ℤ)) (-3) : ℚ) / 4

end

end A011848.P13022747597760868149

namespace A011848

/-- `and(n²-n, -3)/4` -/
def P13022747597760868149.Spec : Prop :=
  ∀ n, P13022747597760868149.a n = (A011848 n : ℚ)

end A011848

/-! ## A011848.P3123989161087331530

`ceil(or(1, C(n, 2))/2)-1`
-/

namespace A011848.P3123989161087331530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (Nat.choose n 2) : ℚ) / 2⌉ - 1

end

end A011848.P3123989161087331530

namespace A011848

/-- `ceil(or(1, C(n, 2))/2)-1` -/
def P3123989161087331530.Spec : Prop :=
  ∀ n, P3123989161087331530.a n = A011848 n

end A011848

/-! ## A011848.P9370059012787402469

`∑[∑[gcd(2, ∑[n])-1]-1]`
-/

namespace A011848.P9370059012787402469
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011848.P9370059012787402469

namespace A011848

/-- `∑[∑[gcd(2, ∑[n])-1]-1]` -/
def P9370059012787402469.Spec : Prop :=
  ∀ n, P9370059012787402469.a n = A011848 n

end A011848

/-! ## A011848.P11879159288683131375

`∑[a(n-4)+2]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A011848.P11879159288683131375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  f1 (n - 4) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011848.P11879159288683131375

namespace A011848

/-- `∑[a(n-4)+2]` -/
def P11879159288683131375.Spec : Prop :=
  ∀ n, (P11879159288683131375.a n : ℤ) = A011848 n

end A011848

/-! ## A011848.P12590132472996954278

`∑[∑[1-a(n-2)]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A011848.P12590132472996954278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  1 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011848.P12590132472996954278

namespace A011848

/-- `∑[∑[1-a(n-2)]]` -/
def P12590132472996954278.Spec : Prop :=
  ∀ n, P12590132472996954278.a n = A011848 n

end A011848

/-! ## A011848.P14659890076232695729

`∑[∪[2*n+n+1, 2*n]-n]`
-/

namespace A011848.P14659890076232695729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011848.P14659890076232695729

namespace A011848

/-- `∑[∪[2*n+n+1, 2*n]-n]` -/
def P14659890076232695729.Spec : Prop :=
  ∀ n, P14659890076232695729.a n = A011848 n

end A011848

/-! ## A011848.P3887137894422566937

`∑[A004524(n)]`
-/

namespace A011848.P3887137894422566937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011848.P3887137894422566937

namespace A011848

/-- `∑[A004524(n)]` -/
def P3887137894422566937.Spec : Prop :=
  ∀ n, P3887137894422566937.a n = A011848 n

end A011848

/-! ## A011848.P936712408199623710

`n²-A387355(n)`
-/

namespace A011848.P936712408199623710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A387355 n

end

end A011848.P936712408199623710

namespace A011848

/-- `n²-A387355(n)` -/
def P936712408199623710.Spec : Prop :=
  ∀ n, P936712408199623710.a n = A011848 n

end A011848

/-! ## A011848.P8040828145477972960

`A330707(n)-∑[n]`
-/

namespace A011848.P8040828145477972960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330707 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A011848.P8040828145477972960

namespace A011848

/-- `A330707(n)-∑[n]` -/
def P8040828145477972960.Spec : Prop :=
  ∀ n, P8040828145477972960.a n = A011848 n

end A011848

/-! ## A011848.P3862712934959922412

`(A215098(n)-n)/2`
-/

namespace A011848.P3862712934959922412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215098 n - (n : ℤ) : ℚ) / 2

end

end A011848.P3862712934959922412

namespace A011848

/-- `(A215098(n)-n)/2` -/
def P3862712934959922412.Spec : Prop :=
  ∀ n, P3862712934959922412.a n = (A011848 n : ℚ)

end A011848

/-! ## A011848.P3668209763439860466

`∑[A004525(n+1)-1]`
-/

namespace A011848.P3668209763439860466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011848.P3668209763439860466

namespace A011848

/-- `∑[A004525(n+1)-1]` -/
def P3668209763439860466.Spec : Prop :=
  ∀ n, P3668209763439860466.a n = A011848 n

end A011848

/-! ## A011848.P6409118393242074574

`A186351(n+1)-2*(n+1)`
-/

namespace A011848.P6409118393242074574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186351 (n + 1) - (2 * (n + 1) : ℤ)

end

end A011848.P6409118393242074574

namespace A011848

/-- `A186351(n+1)-2*(n+1)` -/
def P6409118393242074574.Spec : Prop :=
  ∀ n, P6409118393242074574.a n = A011848 n

end A011848

/-!
# A011849: a(n) = floor(binomial(n,3)/3).

The programs for A011849, the canonical program `A011849.P5470199703191823854` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011849 has offset 0).

The definition of A011849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, 3)/3)` (program `A011849.P5470199703191823854`, by `A011849.P5470199703191823854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011849.P5470199703191823854

`floor(C(n, 3)/3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011849

/-- `floor(C(n, 3)/3)` -/
def P5470199703191823854.Spec : Prop :=
  ∀ n, P5470199703191823854.a n = A011849 n

theorem P5470199703191823854.correct : P5470199703191823854.Spec := by
  intro n
  simp only [A011849]

end A011849

/-! ## A011849.P9848645185567853247

`round((C(n, 3)-1)/3)`
-/

namespace A011849.P9848645185567853247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose n 3 : ℤ) - 1 : ℚ) / 3)

end

end A011849.P9848645185567853247

namespace A011849

/-- `round((C(n, 3)-1)/3)` -/
def P9848645185567853247.Spec : Prop :=
  ∀ n, P9848645185567853247.a n = A011849 n

end A011849

/-! ## A011849.P17122610946266392831

`ceil((C(n, 3)-2)/3)`
-/

namespace A011849.P17122610946266392831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 3 : ℤ) - 2 : ℚ) / 3⌉

end

end A011849.P17122610946266392831

namespace A011849

/-- `ceil((C(n, 3)-2)/3)` -/
def P17122610946266392831.Spec : Prop :=
  ∀ n, P17122610946266392831.a n = A011849 n

end A011849

/-! ## A011849.P16175081117779808868

`floor((∑[∑[n]]-n²)/3)`
-/

namespace A011849.P16175081117779808868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ) : ℚ) / 3⌋

end

end A011849.P16175081117779808868

namespace A011849

/-- `floor((∑[∑[n]]-n²)/3)` -/
def P16175081117779808868.Spec : Prop :=
  ∀ n, P16175081117779808868.a n = A011849 n

end A011849

/-! ## A011849.P6525898008435485718

`n-floor(A167541(n+6)/3)`
-/

namespace A011849.P6525898008435485718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(A167541 (n + 6) : ℚ) / 3⌋

end

end A011849.P6525898008435485718

namespace A011849

/-- `n-floor(A167541(n+6)/3)` -/
def P6525898008435485718.Spec : Prop :=
  ∀ n, P6525898008435485718.a n = A011849 n

end A011849

/-!
# A011850: a(n) = floor(binomial(n,4)/4).

The programs for A011850, the canonical program `A011850.P4918913872367983440` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011850 has offset 0).

The definition of A011850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, 4)/4)` (program `A011850.P4918913872367983440`, by `A011850.P4918913872367983440.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011850.P4918913872367983440

`floor(C(n, 4)/4)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011850

/-- `floor(C(n, 4)/4)` -/
def P4918913872367983440.Spec : Prop :=
  ∀ n, P4918913872367983440.a n = A011850 n

theorem P4918913872367983440.correct : P4918913872367983440.Spec := by
  intro n
  simp only [A011850]

end A011850

/-! ## A011850.P17513906536930153784

`and(-4, C(n, 4))/4`
-/

namespace A011850.P17513906536930153784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-4) (Nat.choose n 4 : ℤ) : ℚ) / 4

end

end A011850.P17513906536930153784

namespace A011850

/-- `and(-4, C(n, 4))/4` -/
def P17513906536930153784.Spec : Prop :=
  ∀ n, P17513906536930153784.a n = (A011850 n : ℚ)

end A011850

/-! ## A011850.P6568975202237507740

`ceil((C(n, 4)-3)/4)`
-/

namespace A011850.P6568975202237507740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 4 : ℤ) - 3 : ℚ) / 4⌉

end

end A011850.P6568975202237507740

namespace A011850

/-- `ceil((C(n, 4)-3)/4)` -/
def P6568975202237507740.Spec : Prop :=
  ∀ n, P6568975202237507740.a n = A011850 n

end A011850

/-! ## A011850.P1500390080933004077

`round((C(n, 4)-ϕ)/4)`
-/

namespace A011850.P1500390080933004077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose n 4 : ℝ) - Real.goldenRatio) / 4)

end

end A011850.P1500390080933004077

namespace A011850

/-- `round((C(n, 4)-ϕ)/4)` -/
def P1500390080933004077.Spec : Prop :=
  ∀ n, P1500390080933004077.a n = A011850 n

end A011850

/-! ## A011850.P12184819219935346106

`floor(A000332(n)/4)`
-/

namespace A011850.P12184819219935346106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000332 n : ℚ) / 4⌋

end

end A011850.P12184819219935346106

namespace A011850

/-- `floor(A000332(n)/4)` -/
def P12184819219935346106.Spec : Prop :=
  ∀ n, P12184819219935346106.a n = A011850 n

theorem P12184819219935346106.correct : P12184819219935346106.Spec := by
  intro n
  simp only [A011850, Nat.add_sub_cancel, A011850.P12184819219935346106.a, A011850.P4918913872367983440.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011850

/-! ## A011850.P12541614698617808482

`floor(A052762(n)/96)`
-/

namespace A011850.P12541614698617808482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052762 n : ℚ) / 96⌋

end

end A011850.P12541614698617808482

namespace A011850

/-- `floor(A052762(n)/96)` -/
def P12541614698617808482.Spec : Prop :=
  ∀ n, P12541614698617808482.a n = A011850 n

end A011850

/-! ## A011850.P9920689444617832356

`floor(Δ[Δ[A000579(n)/4]])`
-/

namespace A011850.P9920689444617832356
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000579 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A011850.P9920689444617832356

namespace A011850

/-- `floor(Δ[Δ[A000579(n)/4]])` -/
def P9920689444617832356.Spec : Prop :=
  ∀ n, P9920689444617832356.a n = A011850 n

end A011850

/-! ## A011850.P7725095556052895994

`A011877(∑[n-2]+3)`
-/

namespace A011850.P7725095556052895994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011877 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A011850.P7725095556052895994

namespace A011850

/-- `A011877(∑[n-2]+3)` -/
def P7725095556052895994.Spec : Prop :=
  ∀ n, P7725095556052895994.a n = A011850 n

end A011850

/-! ## A011850.P7053095469887448600

`floor(A007318(∑[n]+4)/4)`
-/

namespace A011850.P7053095469887448600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 4) : ℚ) / 4⌋

end

end A011850.P7053095469887448600

namespace A011850

/-- `floor(A007318(∑[n]+4)/4)` -/
def P7053095469887448600.Spec : Prop :=
  ∀ n, P7053095469887448600.a n = A011850 n

end A011850

/-!
# A011851: a(n) = floor(binomial(n,5)/5).

The programs for A011851, the canonical program `A011851.P15384226552804501926` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011851 has offset 0).

The definition of A011851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, 5)/5)` (program `A011851.P15384226552804501926`, by `A011851.P15384226552804501926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011851.P15384226552804501926

`floor(C(n, 5)/5)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011851

/-- `floor(C(n, 5)/5)` -/
def P15384226552804501926.Spec : Prop :=
  ∀ n, P15384226552804501926.a n = A011851 n

theorem P15384226552804501926.correct : P15384226552804501926.Spec := by
  intro n
  simp only [A011851]

end A011851

/-! ## A011851.P12486509510725189336

`round((C(n, 5)-2)/5)`
-/

namespace A011851.P12486509510725189336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose n 5 : ℤ) - 2 : ℚ) / 5)

end

end A011851.P12486509510725189336

namespace A011851

/-- `round((C(n, 5)-2)/5)` -/
def P12486509510725189336.Spec : Prop :=
  ∀ n, P12486509510725189336.a n = A011851 n

end A011851

/-! ## A011851.P446355091765186936

`ceil((C(n, 5)-4)/5)`
-/

namespace A011851.P446355091765186936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 5 : ℤ) - 4 : ℚ) / 5⌉

end

end A011851.P446355091765186936

namespace A011851

/-- `ceil((C(n, 5)-4)/5)` -/
def P446355091765186936.Spec : Prop :=
  ∀ n, P446355091765186936.a n = A011851 n

end A011851

/-! ## A011851.P2142509728697017826

`floor(A000389(n)/5)`
-/

namespace A011851.P2142509728697017826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000389 n : ℚ) / 5⌋

end

end A011851.P2142509728697017826

namespace A011851

/-- `floor(A000389(n)/5)` -/
def P2142509728697017826.Spec : Prop :=
  ∀ n, P2142509728697017826.a n = A011851 n

theorem P2142509728697017826.correct : P2142509728697017826.Spec := by
  intro n
  simp only [A011851, Nat.add_sub_cancel, A011851.P2142509728697017826.a, A011851.P15384226552804501926.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011851

/-! ## A011851.P5641257219134863935

`floor((∑[A000332(n)]-A000332(n))/5)`
-/

namespace A011851.P5641257219134863935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j - A000332 n : ℤ) : ℚ) / 5⌋

end

end A011851.P5641257219134863935

namespace A011851

/-- `floor((∑[A000332(n)]-A000332(n))/5)` -/
def P5641257219134863935.Spec : Prop :=
  ∀ n, P5641257219134863935.a n = A011851 n

end A011851

/-! ## A011851.P12970573627757831423

`floor((∑[A052762(n)/24]-A052762(n)/24)/5)`
-/

namespace A011851.P12970573627757831423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052762 n : ℚ) / 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j - (A052762 n : ℚ) / 24) / 5⌋

end

end A011851.P12970573627757831423

namespace A011851

/-- `floor((∑[A052762(n)/24]-A052762(n)/24)/5)` -/
def P12970573627757831423.Spec : Prop :=
  ∀ n, P12970573627757831423.a n = A011851 n

end A011851

/-! ## A011851.P16186955674491212550

`floor(Δ[A000579(n)/5])`
-/

namespace A011851.P16186955674491212550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000579 n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A011851.P16186955674491212550

namespace A011851

/-- `floor(Δ[A000579(n)/5])` -/
def P16186955674491212550.Spec : Prop :=
  ∀ n, P16186955674491212550.a n = A011851 n

end A011851

/-! ## A011851.P14012974060220824079

`floor(A007318(∑[n]+5)/5)`
-/

namespace A011851.P14012974060220824079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 5) : ℚ) / 5⌋

end

end A011851.P14012974060220824079

namespace A011851

/-- `floor(A007318(∑[n]+5)/5)` -/
def P14012974060220824079.Spec : Prop :=
  ∀ n, P14012974060220824079.a n = A011851 n

end A011851

/-!
# A011852: a(n) = floor(binomial(n,6)/6).

The programs for A011852, the canonical program `A011852.P9594859587344163504` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011852 has offset 0).

The definition of A011852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, 6)/6)` (program `A011852.P9594859587344163504`, by `A011852.P9594859587344163504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011852.P9594859587344163504

`floor(C(n, 6)/6)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011852

/-- `floor(C(n, 6)/6)` -/
def P9594859587344163504.Spec : Prop :=
  ∀ n, P9594859587344163504.a n = A011852 n

theorem P9594859587344163504.correct : P9594859587344163504.Spec := by
  intro n
  simp only [A011852]

end A011852

/-! ## A011852.P4001957632510172024

`round((C(n, 6)-2)/6)`
-/

namespace A011852.P4001957632510172024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose n 6 : ℤ) - 2 : ℚ) / 6)

end

end A011852.P4001957632510172024

namespace A011852

/-- `round((C(n, 6)-2)/6)` -/
def P4001957632510172024.Spec : Prop :=
  ∀ n, P4001957632510172024.a n = A011852 n

end A011852

/-! ## A011852.P4781748961525458290

`ceil((C(n, 6)-4)/6)`
-/

namespace A011852.P4781748961525458290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 6 : ℤ) - 4 : ℚ) / 6⌉

end

end A011852.P4781748961525458290

namespace A011852

/-- `ceil((C(n, 6)-4)/6)` -/
def P4781748961525458290.Spec : Prop :=
  ∀ n, P4781748961525458290.a n = A011852 n

end A011852

/-! ## A011852.P9622289333090474073

`floor(A000579(n)/6)`
-/

namespace A011852.P9622289333090474073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000579 n : ℚ) / 6⌋

end

end A011852.P9622289333090474073

namespace A011852

/-- `floor(A000579(n)/6)` -/
def P9622289333090474073.Spec : Prop :=
  ∀ n, P9622289333090474073.a n = A011852 n

theorem P9622289333090474073.correct : P9622289333090474073.Spec := by
  intro n
  simp only [A011852, Nat.add_sub_cancel, A011852.P9622289333090474073.a, A011852.P9594859587344163504.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011852

/-! ## A011852.P9685019514729884689

`floor(A000910(n)/30)`
-/

namespace A011852.P9685019514729884689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000910 n : ℚ) / 30⌋

end

end A011852.P9685019514729884689

namespace A011852

/-- `floor(A000910(n)/30)` -/
def P9685019514729884689.Spec : Prop :=
  ∀ n, P9685019514729884689.a n = A011852 n

theorem P9685019514729884689.correct : P9685019514729884689.Spec := by
  intro n
  simp only [A011852, Nat.add_sub_cancel, A011852.P9685019514729884689.a, A011852.P9594859587344163504.a, A000910, A000910.P14640695646812070873.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011852

/-! ## A011852.P12799263750549313549

`floor((∑[A000389(n)]-A000389(n))/6)`
-/

namespace A011852.P12799263750549313549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j - A000389 n : ℤ) : ℚ) / 6⌋

end

end A011852.P12799263750549313549

namespace A011852

/-- `floor((∑[A000389(n)]-A000389(n))/6)` -/
def P12799263750549313549.Spec : Prop :=
  ∀ n, P12799263750549313549.a n = A011852 n

end A011852

/-! ## A011852.P14256798134080536434

`floor((A035038(n)-A035039(n))/6)`
-/

namespace A011852.P14256798134080536434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035038 n - A035039 n : ℚ) / 6⌋

end

end A011852.P14256798134080536434

namespace A011852

/-- `floor((A035038(n)-A035039(n))/6)` -/
def P14256798134080536434.Spec : Prop :=
  ∀ n, P14256798134080536434.a n = A011852 n

end A011852

/-!
# A011853: a(n) = floor( binomial(n,7)/7 ).

The programs for A011853, the canonical program `A011853.P15301986588753906181` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011853 has offset 0).

The definition of A011853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, 7)/7)` (program `A011853.P15301986588753906181`, by `A011853.P15301986588753906181.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011853.P15301986588753906181

`floor(C(n, 7)/7)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011853

/-- `floor(C(n, 7)/7)` -/
def P15301986588753906181.Spec : Prop :=
  ∀ n, P15301986588753906181.a n = A011853 n

theorem P15301986588753906181.correct : P15301986588753906181.Spec := by
  intro n
  simp only [A011853]

end A011853

/-! ## A011853.P9152304301624760467

`floor((A008860(n)-Δ[A008860(n)])/7)`
-/

namespace A011853.P9152304301624760467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008860 n - (f1 (n + 1) - f1 n) : ℚ) / 7⌋

end

end A011853.P9152304301624760467

namespace A011853

/-- `floor((A008860(n)-Δ[A008860(n)])/7)` -/
def P9152304301624760467.Spec : Prop :=
  ∀ n, P9152304301624760467.a n = A011853 n

end A011853

/-! ## A011853.P6451776564226124404

`floor(Δ[Δ[A115205(n)]]/7)`
-/

namespace A011853.P6451776564226124404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115205 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 7⌋

end

end A011853.P6451776564226124404

namespace A011853

/-- `floor(Δ[Δ[A115205(n)]]/7)` -/
def P6451776564226124404.Spec : Prop :=
  ∀ n, P6451776564226124404.a n = A011853 n

end A011853

/-! ## A011853.P16059178064371647928

`floor((Δ[A035040(n)]-A035040(n))/7)`
-/

namespace A011853.P16059178064371647928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n - A035040 n : ℚ) / 7⌋

end

end A011853.P16059178064371647928

namespace A011853

/-- `floor((Δ[A035040(n)]-A035040(n))/7)` -/
def P16059178064371647928.Spec : Prop :=
  ∀ n, P16059178064371647928.a n = A011853 n

end A011853

/-! ## A011853.P6905432787767049078

`floor(A071919(A167487(n))/7)`
-/

namespace A011853.P6905432787767049078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071919 (A167487 n).toNat : ℚ) / 7⌋

end

end A011853.P6905432787767049078

namespace A011853

/-- `floor(A071919(A167487(n))/7)` -/
def P6905432787767049078.Spec : Prop :=
  ∀ n, P6905432787767049078.a n = A011853 n

end A011853

/-!
# A011854: a(n) = floor(binomial(n,8)/8).

The programs for A011854, the canonical program `A011854.P16677823369999007607` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011854 has offset 0).

The definition of A011854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, 8)/8)` (program `A011854.P16677823369999007607`, by `A011854.P16677823369999007607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011854.P16677823369999007607

`floor(C(n, 8)/8)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011854

/-- `floor(C(n, 8)/8)` -/
def P16677823369999007607.Spec : Prop :=
  ∀ n, P16677823369999007607.a n = A011854 n

theorem P16677823369999007607.correct : P16677823369999007607.Spec := by
  intro n
  simp only [A011854]

end A011854

/-! ## A011854.P7199470113574268257

`ceil((C(n, 8)-7)/8)`
-/

namespace A011854.P7199470113574268257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 8 : ℤ) - 7 : ℚ) / 8⌉

end

end A011854.P7199470113574268257

namespace A011854

/-- `ceil((C(n, 8)-7)/8)` -/
def P7199470113574268257.Spec : Prop :=
  ∀ n, P7199470113574268257.a n = A011854 n

end A011854

/-! ## A011854.P7194436992799643042

`round((C(n, 8)-π)/8)`
-/

namespace A011854.P7194436992799643042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose n 8 : ℝ) - Real.pi) / 8)

end

end A011854.P7194436992799643042

namespace A011854

/-- `round((C(n, 8)-π)/8)` -/
def P7194436992799643042.Spec : Prop :=
  ∀ n, P7194436992799643042.a n = A011854 n

end A011854

/-! ## A011854.P8709981129929410628

`floor(Δ[A115205(n)/8])`
-/

namespace A011854.P8709981129929410628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115205 n : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A011854.P8709981129929410628

namespace A011854

/-- `floor(Δ[A115205(n)/8])` -/
def P8709981129929410628.Spec : Prop :=
  ∀ n, P8709981129929410628.a n = A011854 n

end A011854

/-! ## A011854.P15855609938546565551

`floor((A008861(n)-A008860(n))/8)`
-/

namespace A011854.P15855609938546565551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008861 n - A008860 n : ℚ) / 8⌋

end

end A011854.P15855609938546565551

namespace A011854

/-- `floor((A008861(n)-A008860(n))/8)` -/
def P15855609938546565551.Spec : Prop :=
  ∀ n, P15855609938546565551.a n = A011854 n

end A011854

/-! ## A011854.P4234027468930249954

`floor(A007318(A060533(n))/8)`
-/

namespace A011854.P4234027468930249954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (A060533 n).toNat : ℚ) / 8⌋

end

end A011854.P4234027468930249954

namespace A011854

/-- `floor(A007318(A060533(n))/8)` -/
def P4234027468930249954.Spec : Prop :=
  ∀ n, P4234027468930249954.a n = A011854 n

end A011854

/-!
# A011855: a(n) = floor(binomial(n,9)/9).

The programs for A011855, the canonical program `A011855.P5505475117356891686` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011855 has offset 0).

The definition of A011855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, 9)/9)` (program `A011855.P5505475117356891686`, by `A011855.P5505475117356891686.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011855.P5505475117356891686

`floor(C(n, 9)/9)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011855

/-- `floor(C(n, 9)/9)` -/
def P5505475117356891686.Spec : Prop :=
  ∀ n, P5505475117356891686.a n = A011855 n

theorem P5505475117356891686.correct : P5505475117356891686.Spec := by
  intro n
  simp only [A011855]

end A011855

/-! ## A011855.P2224592124024848788

`round((C(n, 9)-4)/9)`
-/

namespace A011855.P2224592124024848788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose n 9 : ℤ) - 4 : ℚ) / 9)

end

end A011855.P2224592124024848788

namespace A011855

/-- `round((C(n, 9)-4)/9)` -/
def P2224592124024848788.Spec : Prop :=
  ∀ n, P2224592124024848788.a n = A011855 n

end A011855

/-! ## A011855.P12891379851784455045

`ceil((C(n, 9)-8)/9)`
-/

namespace A011855.P12891379851784455045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 9 : ℤ) - 8 : ℚ) / 9⌉

end

end A011855.P12891379851784455045

namespace A011855

/-- `ceil((C(n, 9)-8)/9)` -/
def P12891379851784455045.Spec : Prop :=
  ∀ n, P12891379851784455045.a n = A011855 n

end A011855

/-! ## A011855.P118359903580239687

`floor((A115205(n)-1)/9)`
-/

namespace A011855.P118359903580239687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115205 n - 1 : ℚ) / 9⌋

end

end A011855.P118359903580239687

namespace A011855

/-- `floor((A115205(n)-1)/9)` -/
def P118359903580239687.Spec : Prop :=
  ∀ n, P118359903580239687.a n = A011855 n

theorem P118359903580239687.correct : P118359903580239687.Spec := by
  intro n
  simp only [A011855, Nat.add_sub_cancel, A011855.P118359903580239687.a, A011855.P5505475117356891686.a, A115205, A115205.P18109322668786232172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011855

/-! ## A011855.P16867925459695971227

`round(C(n, 9)/9)%A332336(n)²`
-/

namespace A011855.P16867925459695971227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.choose n 9 : ℚ) / 9)) (A332336 n ^ 2)

end

end A011855.P16867925459695971227

namespace A011855

/-- `round(C(n, 9)/9)%A332336(n)²` -/
def P16867925459695971227.Spec : Prop :=
  ∀ n, P16867925459695971227.a n = A011855 n

end A011855

/-!
# A011856: a(n) = floor(binomial(n,10)/10).

The programs for A011856, the canonical program `A011856.P14337022653928096785` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011856 has offset 0).

The definition of A011856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, 10)/10)` (program `A011856.P14337022653928096785`, by `A011856.P14337022653928096785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011856.P14337022653928096785

`floor(C(n, 10)/10)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011856

/-- `floor(C(n, 10)/10)` -/
def P14337022653928096785.Spec : Prop :=
  ∀ n, P14337022653928096785.a n = A011856 n

theorem P14337022653928096785.correct : P14337022653928096785.Spec := by
  intro n
  simp only [A011856]

end A011856

/-! ## A011856.P12163140803429547517

`round((C(n, 10)-4)/10)`
-/

namespace A011856.P12163140803429547517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose n 10 : ℤ) - 4 : ℚ) / 10)

end

end A011856.P12163140803429547517

namespace A011856

/-- `round((C(n, 10)-4)/10)` -/
def P12163140803429547517.Spec : Prop :=
  ∀ n, P12163140803429547517.a n = A011856 n

end A011856

/-! ## A011856.P9637324500882750053

`ceil(C(n, 10)/10-ϕ/2)`
-/

namespace A011856.P9637324500882750053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 10 : ℚ) / 10 : ℝ) - Real.goldenRatio / 2⌉

end

end A011856.P9637324500882750053

namespace A011856

/-- `ceil(C(n, 10)/10-ϕ/2)` -/
def P9637324500882750053.Spec : Prop :=
  ∀ n, P9637324500882750053.a n = A011856 n

end A011856

/-! ## A011856.P3255006840675862182

`floor((A008863(n)-A008862(n))/10)`
-/

namespace A011856.P3255006840675862182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008863 n - A008862 n : ℚ) / 10⌋

end

end A011856.P3255006840675862182

namespace A011856

/-- `floor((A008863(n)-A008862(n))/10)` -/
def P3255006840675862182.Spec : Prop :=
  ∀ n, P3255006840675862182.a n = A011856 n

theorem P3255006840675862182.correct : P3255006840675862182.Spec := by
  intro n
  simp only [A011856, Nat.add_sub_cancel, A011856.P3255006840675862182.a, A011856.P14337022653928096785.a, A008862, A008862.P15109180093103356418.a, A008863, A008863.P10720815592373183918.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011856

/-! ## A011856.P18103303280145731788

`floor(A000027(A250287(n))/10)`
-/

namespace A011856.P18103303280145731788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000027 (A250287 n).toNat : ℚ) / 10⌋

end

end A011856.P18103303280145731788

namespace A011856

/-- `floor(A000027(A250287(n))/10)` -/
def P18103303280145731788.Spec : Prop :=
  ∀ n, P18103303280145731788.a n = A011856 n

end A011856

/-!
# A011857: Triangle of numbers [ C(n,k)/k ], k=1..n-1.

The programs for A011857, the canonical program `A011857.P7224973455274872980` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011857 has offset 2).

The definition of A011857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011857.P7224973455274872980

`floor((A014430(n)+1)/A002260(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011857

/-- `floor((A014430(n)+1)/A002260(n+1))` -/
def P7224973455274872980.Spec : Prop :=
  ∀ n, P7224973455274872980.a n = A011857 (n + 2)

theorem P7224973455274872980.correct : P7224973455274872980.Spec := by
  intro n
  simp only [A011857, Nat.add_sub_cancel]

end A011857

/-! ## A011857.P2589838364668813421

`floor(A014410(n+2)/A002260(n+1))`
-/

namespace A011857.P2589838364668813421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014410 (n + 2) : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A011857.P2589838364668813421

namespace A011857

/-- `floor(A014410(n+2)/A002260(n+1))` -/
def P2589838364668813421.Spec : Prop :=
  ∀ n, P2589838364668813421.a n = A011857 (n + 2)

end A011857

/-! ## A011857.P6078168377690975925

`floor(A014410(n+2)/(A002262(n)+1))`
-/

namespace A011857.P6078168377690975925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014410 (n + 2) : ℚ) / (A002262 n + 1 : ℚ)⌋

end

end A011857.P6078168377690975925

namespace A011857

/-- `floor(A014410(n+2)/(A002262(n)+1))` -/
def P6078168377690975925.Spec : Prop :=
  ∀ n, P6078168377690975925.a n = A011857 (n + 2)

end A011857

/-! ## A011857.P16485998187456498132

`floor(sqrt(A014719(n+2))/A002260(n+1))`
-/

namespace A011857.P16485998187456498132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A014719 (n + 2) : ℝ) / (A002260 (n + 1) : ℝ)⌋

end

end A011857.P16485998187456498132

namespace A011857

/-- `floor(sqrt(A014719(n+2))/A002260(n+1))` -/
def P16485998187456498132.Spec : Prop :=
  ∀ n, P16485998187456498132.a n = A011857 (n + 2)

end A011857

/-! ## A011857.P3376801818652642282

`floor((A028263(n)-A007318(n))/A002260(n+1))`
-/

namespace A011857.P3376801818652642282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028263 n - A007318 n : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A011857.P3376801818652642282

namespace A011857

/-- `floor((A028263(n)-A007318(n))/A002260(n+1))` -/
def P3376801818652642282.Spec : Prop :=
  ∀ n, P3376801818652642282.a n = A011857 (n + 2)

theorem P3376801818652642282.correct : P3376801818652642282.Spec := by
  intro n
  simp only [A011857, Nat.add_sub_cancel, A011857.P3376801818652642282.a, A011857.P7224973455274872980.a, A002260, A002260.P9170571874073898642.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, A028263, A028263.P3177418721069471964.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011857

/-! ## A011857.P16547867355454860147

`floor((A014430(n)+1)/A000005(A059268(n)))`
-/

namespace A011857.P16547867355454860147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014430 n + 1 : ℚ) / (A000005 (A059268 n).toNat : ℚ)⌋

end

end A011857.P16547867355454860147

namespace A011857

/-- `floor((A014430(n)+1)/A000005(A059268(n)))` -/
def P16547867355454860147.Spec : Prop :=
  ∀ n, P16547867355454860147.a n = A011857 (n + 2)

end A011857

/-! ## A011857.P12314846742404553144

`floor(A014410(n+2)/A000005(A059268(n)))`
-/

namespace A011857.P12314846742404553144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014410 (n + 2) : ℚ) / (A000005 (A059268 n).toNat : ℚ)⌋

end

end A011857.P12314846742404553144

namespace A011857

/-- `floor(A014410(n+2)/A000005(A059268(n)))` -/
def P12314846742404553144.Spec : Prop :=
  ∀ n, P12314846742404553144.a n = A011857 (n + 2)

end A011857

/-! ## A011857.P5434438498258179511

`floor(A014410(n+2)/A220464(A000124(n)))`
-/

namespace A011857.P5434438498258179511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014410 (n + 2) : ℚ) / (A220464 (A000124 n).toNat : ℚ)⌋

end

end A011857.P5434438498258179511

namespace A011857

/-- `floor(A014410(n+2)/A220464(A000124(n)))` -/
def P5434438498258179511.Spec : Prop :=
  ∀ n, P5434438498258179511.a n = A011857 (n + 2)

end A011857

/-! ## A011857.P5212167337050690145

`floor((A014430(n)+1)/A000120(A099627(n)))`
-/

namespace A011857.P5212167337050690145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014430 n + 1 : ℚ) / (A000120 (A099627 n).toNat : ℚ)⌋

end

end A011857.P5212167337050690145

namespace A011857

/-- `floor((A014430(n)+1)/A000120(A099627(n)))` -/
def P5212167337050690145.Spec : Prop :=
  ∀ n, P5212167337050690145.a n = A011857 (n + 2)

end A011857

/-!
# A011858: a(n) = floor( n*(n-1)/5 ).

The programs for A011858, the canonical program `A011858.P16234308487928340219` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011858 has offset 0).

The definition of A011858 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/5)` (program `A011858.P16234308487928340219`, by `A011858.P16234308487928340219.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011858.P16234308487928340219

`floor(n*(n-1)/5)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011858

/-- `floor(n*(n-1)/5)` -/
def P16234308487928340219.Spec : Prop :=
  ∀ n, P16234308487928340219.a n = A011858 n

theorem P16234308487928340219.correct : P16234308487928340219.Spec := by
  intro n
  simp only [A011858]

end A011858

/-! ## A011858.P7981968303254809049

`a(n-5)+2*n-6` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A011858.P7981968303254809049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 2] fun n a =>
  a (n - 5) + (2 * n : ℤ) - 6

end

end A011858.P7981968303254809049

namespace A011858

/-- `a(n-5)+2*n-6` -/
def P7981968303254809049.Spec : Prop :=
  ∀ n, P7981968303254809049.a n = A011858 n

end A011858

/-! ## A011858.P8833244820849914546

`a(n-1)+a(n-5)-a(n-6)+2` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=4`
-/

namespace A011858.P8833244820849914546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 2, 4] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6) + 2

end

end A011858.P8833244820849914546

namespace A011858

/-- `a(n-1)+a(n-5)-a(n-6)+2` -/
def P8833244820849914546.Spec : Prop :=
  ∀ n, P8833244820849914546.a n = A011858 n

end A011858

/-! ## A011858.P6684082708216397210

`A130520(n)+A130520(n+2)`
-/

namespace A011858.P6684082708216397210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 n + A130520 (n + 2)

end

end A011858.P6684082708216397210

namespace A011858

/-- `A130520(n)+A130520(n+2)` -/
def P6684082708216397210.Spec : Prop :=
  ∀ n, P6684082708216397210.a n = A011858 n

end A011858

/-! ## A011858.P8901034110668162451

`round(2/5*C(n, 2))`
-/

namespace A011858.P8901034110668162451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) / 5 * (Nat.choose n 2 : ℚ))

end

end A011858.P8901034110668162451

namespace A011858

/-- `round(2/5*C(n, 2))` -/
def P8901034110668162451.Spec : Prop :=
  ∀ n, P8901034110668162451.a n = A011858 n

end A011858

/-! ## A011858.P8813458321400342325

`round(lcm(2, n²-n)/5)`
-/

namespace A011858.P8813458321400342325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lcm 2 ((n ^ 2 : ℤ) - (n : ℤ)) : ℚ) / 5)

end

end A011858.P8813458321400342325

namespace A011858

/-- `round(lcm(2, n²-n)/5)` -/
def P8813458321400342325.Spec : Prop :=
  ∀ n, P8813458321400342325.a n = A011858 n

end A011858

/-! ## A011858.P453460294948757336

`round((n-1)/(5*acot(n)))`
-/

namespace A011858.P453460294948757336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℝ) / (5 * SequenceMachineLib.acot (n : ℝ)))

end

end A011858.P453460294948757336

namespace A011858

/-- `round((n-1)/(5*acot(n)))` -/
def P453460294948757336.Spec : Prop :=
  ∀ n, P453460294948757336.a n = A011858 n

end A011858

/-! ## A011858.P17937909620268081873

`round(or(1, (n+1)*(n-2))/5)`
-/

namespace A011858.P17937909620268081873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 1 ((n + 1 : ℤ) * ((n : ℤ) - 2)) : ℚ) / 5)

end

end A011858.P17937909620268081873

namespace A011858

/-- `round(or(1, (n+1)*(n-2))/5)` -/
def P17937909620268081873.Spec : Prop :=
  ∀ n, P17937909620268081873.a n = A011858 n

end A011858

/-! ## A011858.P3843138874372895974

`round(xor(1, (n+1)*(n-2))/5)`
-/

namespace A011858.P3843138874372895974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor 1 ((n + 1 : ℤ) * ((n : ℤ) - 2)) : ℚ) / 5)

end

end A011858.P3843138874372895974

namespace A011858

/-- `round(xor(1, (n+1)*(n-2))/5)` -/
def P3843138874372895974.Spec : Prop :=
  ∀ n, P3843138874372895974.a n = A011858 n

end A011858

/-! ## A011858.P12227739234701618802

`record[round((2-n)²/5)]-(n+1)`
-/

namespace A011858.P12227739234701618802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 - (n : ℤ)) ^ 2 : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A011858.P12227739234701618802

namespace A011858

/-- `record[round((2-n)²/5)]-(n+1)` -/
def P12227739234701618802.Spec : Prop :=
  ∀ n, P12227739234701618802.a n = A011858 n

end A011858

/-! ## A011858.P6418620428584026222

`a(n-1)+floor(n/(1/2+2))` with `a(0)=0`
-/

namespace A011858.P6418620428584026222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℚ) / ((1 : ℚ) / 2 + 2)⌋

end

end A011858.P6418620428584026222

namespace A011858

/-- `a(n-1)+floor(n/(1/2+2))` -/
def P6418620428584026222.Spec : Prop :=
  ∀ n, P6418620428584026222.a n = A011858 n

end A011858

/-! ## A011858.P5816285432914394182

`∑[A057354(n)]`
-/

namespace A011858.P5816285432914394182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011858.P5816285432914394182

namespace A011858

/-- `∑[A057354(n)]` -/
def P5816285432914394182.Spec : Prop :=
  ∀ n, P5816285432914394182.a n = A011858 n

end A011858

/-! ## A011858.P15142329502336907158

`∑[A173276(n)-1]`
-/

namespace A011858.P15142329502336907158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011858.P15142329502336907158

namespace A011858

/-- `∑[A173276(n)-1]` -/
def P15142329502336907158.Spec : Prop :=
  ∀ n, P15142329502336907158.a n = A011858 n

end A011858

/-! ## A011858.P4524465806245408361

`∑[A047381(n+1)-n]`
-/

namespace A011858.P4524465806245408361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047381 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011858.P4524465806245408361

namespace A011858

/-- `∑[A047381(n+1)-n]` -/
def P4524465806245408361.Spec : Prop :=
  ∀ n, P4524465806245408361.a n = A011858 n

end A011858

/-! ## A011858.P14368501709604630299

`(A008823(n)-(n+1))/2`
-/

namespace A011858.P14368501709604630299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008823 n - (n + 1 : ℤ) : ℚ) / 2

end

end A011858.P14368501709604630299

namespace A011858

/-- `(A008823(n)-(n+1))/2` -/
def P14368501709604630299.Spec : Prop :=
  ∀ n, P14368501709604630299.a n = (A011858 n : ℚ)

end A011858

/-! ## A011858.P5381627127855113424

`∑[A032796(n+1)-(n+1)]`
-/

namespace A011858.P5381627127855113424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032796 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011858.P5381627127855113424

namespace A011858

/-- `∑[A032796(n+1)-(n+1)]` -/
def P5381627127855113424.Spec : Prop :=
  ∀ n, P5381627127855113424.a n = A011858 n

end A011858

/-! ## A011858.P5833312455353130952

`A183873(n+1)-A047512(n+1)`
-/

namespace A011858.P5833312455353130952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183873 (n + 1) - A047512 (n + 1)

end

end A011858.P5833312455353130952

namespace A011858

/-- `A183873(n+1)-A047512(n+1)` -/
def P5833312455353130952.Spec : Prop :=
  ∀ n, P5833312455353130952.a n = A011858 n

end A011858

/-! ## A011858.P4585400056496248353

`(A185170(n+1)-1)/2`
-/

namespace A011858.P4585400056496248353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185170 (n + 1) - 1 : ℚ) / 2

end

end A011858.P4585400056496248353

namespace A011858

/-- `(A185170(n+1)-1)/2` -/
def P4585400056496248353.Spec : Prop :=
  ∀ n, P4585400056496248353.a n = (A011858 n : ℚ)

end A011858

/-! ## A011858.P13719197441308521108

`A118015(n)-A002266(n+1)`
-/

namespace A011858.P13719197441308521108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 n - A002266 (n + 1)

end

end A011858.P13719197441308521108

namespace A011858

/-- `A118015(n)-A002266(n+1)` -/
def P13719197441308521108.Spec : Prop :=
  ∀ n, P13719197441308521108.a n = A011858 n

end A011858

/-! ## A011858.P6926342023691935678

`A008738(n+2)-(n+1)`
-/

namespace A011858.P6926342023691935678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (n + 2) - (n + 1 : ℤ)

end

end A011858.P6926342023691935678

namespace A011858

/-- `A008738(n+2)-(n+1)` -/
def P6926342023691935678.Spec : Prop :=
  ∀ n, P6926342023691935678.a n = A011858 n

end A011858

/-!
# A011860: a(n) = floor(n*(n-1)/7).

The programs for A011860, the canonical program `A011860.P10402414017759076193` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011860 has offset 0).

The definition of A011860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/7)` (program `A011860.P10402414017759076193`, by `A011860.P10402414017759076193.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011860.P10402414017759076193

`floor(n*(n-1)/7)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011860

/-- `floor(n*(n-1)/7)` -/
def P10402414017759076193.Spec : Prop :=
  ∀ n, P10402414017759076193.a n = A011860 n

theorem P10402414017759076193.correct : P10402414017759076193.Spec := by
  intro n
  simp only [A011860]

end A011860

/-! ## A011860.P24998929483554817

`2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=2, a(6)=4, a(7)=6, a(8)=8`
-/

namespace A011860.P24998929483554817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 2, 4, 6, 8] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 7) - 2 * a (n - 8) + a (n - 9)

end

end A011860.P24998929483554817

namespace A011860

/-- `2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` -/
def P24998929483554817.Spec : Prop :=
  ∀ n, P24998929483554817.a n = A011860 n

end A011860

/-! ## A011860.P6989112421772206354

`∑[∑[and(1, (n+2)²%7)]]`
-/

namespace A011860.P6989112421772206354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((n + 2) ^ 2 % 7)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011860.P6989112421772206354

namespace A011860

/-- `∑[∑[and(1, (n+2)²%7)]]` -/
def P6989112421772206354.Spec : Prop :=
  ∀ n, (P6989112421772206354.a n : ℤ) = A011860 n

end A011860

/-! ## A011860.P5290130538351683331

`∑[∑[6%gcd(5, (n+1)%7)]]`
-/

namespace A011860.P5290130538351683331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 % Nat.gcd 5 ((n + 1) % 7)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011860.P5290130538351683331

namespace A011860

/-- `∑[∑[6%gcd(5, (n+1)%7)]]` -/
def P5290130538351683331.Spec : Prop :=
  ∀ n, (P5290130538351683331.a n : ℤ) = A011860 n

end A011860

/-! ## A011860.P11366494611330614749

`∑[∑[((2*C(n, 3))%7)%2]]`
-/

namespace A011860.P11366494611330614749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 3 % 7 % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011860.P11366494611330614749

namespace A011860

/-- `∑[∑[((2*C(n, 3))%7)%2]]` -/
def P11366494611330614749.Spec : Prop :=
  ∀ n, (P11366494611330614749.a n : ℤ) = A011860 n

end A011860

/-! ## A011860.P12989130323175043121

`∑[∑[char[a(n-2)+7]]]` with `a(0)=4, a(1)=6`
-/

namespace A011860.P12989130323175043121
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n f3 =>
  f3 (n - 2) + 7

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011860.P12989130323175043121

namespace A011860

/-- `∑[∑[char[a(n-2)+7]]]` -/
def P12989130323175043121.Spec : Prop :=
  ∀ n, (P12989130323175043121.a n : ℤ) = A011860 n

end A011860

/-! ## A011860.P13539307944768889556

`∑[∑[(((2*n+1)*17*n)%7)%2]]`
-/

namespace A011860.P13539307944768889556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (17 * n) % 7 % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011860.P13539307944768889556

namespace A011860

/-- `∑[∑[(((2*n+1)*17*n)%7)%2]]` -/
def P13539307944768889556.Spec : Prop :=
  ∀ n, (P13539307944768889556.a n : ℤ) = A011860 n

end A011860

/-! ## A011860.P11993652603944709341

`∑[∑[char[A047288(n+1)]]]`
-/

namespace A011860.P11993652603944709341
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047288 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011860.P11993652603944709341

namespace A011860

/-- `∑[∑[char[A047288(n+1)]]]` -/
def P11993652603944709341.Spec : Prop :=
  ∀ n, (P11993652603944709341.a n : ℤ) = A011860 n

end A011860

/-! ## A011860.P11356459047195221405

`A072229(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A011860.P11356459047195221405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A072229 n + a (n - 2)

end

end A011860.P11356459047195221405

namespace A011860

/-- `A072229(n)+a(n-2)` -/
def P11356459047195221405.Spec : Prop :=
  ∀ n, P11356459047195221405.a n = A011860 n

end A011860

/-! ## A011860.P8429738250324709295

`∑[∑[char[A047356(n+1)+3]]]`
-/

namespace A011860.P8429738250324709295
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047356 (n + 1) + 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011860.P8429738250324709295

namespace A011860

/-- `∑[∑[char[A047356(n+1)+3]]]` -/
def P8429738250324709295.Spec : Prop :=
  ∀ n, (P8429738250324709295.a n : ℤ) = A011860 n

end A011860

/-! ## A011860.P12491457853836361928

`A174738(n+1)+A011867(n+1)`
-/

namespace A011860.P12491457853836361928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (n + 1) + A011867 (n + 1)

end

end A011860.P12491457853836361928

namespace A011860

/-- `A174738(n+1)+A011867(n+1)` -/
def P12491457853836361928.Spec : Prop :=
  ∀ n, P12491457853836361928.a n = A011860 n

end A011860

/-! ## A011860.P9172227013742499107

`∑[A004523(A057357(n+1))]`
-/

namespace A011860.P9172227013742499107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A057357 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011860.P9172227013742499107

namespace A011860

/-- `∑[A004523(A057357(n+1))]` -/
def P9172227013742499107.Spec : Prop :=
  ∀ n, P9172227013742499107.a n = A011860 n

end A011860

/-! ## A011860.P16809003000460976293

`∑[A057354(A057359(n+1))]`
-/

namespace A011860.P16809003000460976293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A057359 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011860.P16809003000460976293

namespace A011860

/-- `∑[A057354(A057359(n+1))]` -/
def P16809003000460976293.Spec : Prop :=
  ∀ n, P16809003000460976293.a n = A011860 n

end A011860

/-! ## A011860.P16139729488068596222

`A011867(n+1)+A011867(A289207(n+1))`
-/

namespace A011860.P16139729488068596222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 (n + 1) + A011867 (A289207 (n + 1)).toNat

end

end A011860.P16139729488068596222

namespace A011860

/-- `A011867(n+1)+A011867(A289207(n+1))` -/
def P16139729488068596222.Spec : Prop :=
  ∀ n, P16139729488068596222.a n = A011860 n

end A011860

/-! ## A011860.P9227647157305096868

`ceil(A005563(n+2)/7)-(n+2)`
-/

namespace A011860.P9227647157305096868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005563 (n + 2) : ℚ) / 7⌉ - (n + 2 : ℤ)

end

end A011860.P9227647157305096868

namespace A011860

/-- `ceil(A005563(n+2)/7)-(n+2)` -/
def P9227647157305096868.Spec : Prop :=
  ∀ n, P9227647157305096868.a n = A011860 n

end A011860

/-! ## A011860.P6997874513041491067

`A174738(n+1)+A174738(n+3)`
-/

namespace A011860.P6997874513041491067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (n + 1) + A174738 (n + 3)

end

end A011860.P6997874513041491067

namespace A011860

/-- `A174738(n+1)+A174738(n+3)` -/
def P6997874513041491067.Spec : Prop :=
  ∀ n, P6997874513041491067.a n = A011860 n

end A011860

/-! ## A011860.P14379344558911595407

`∑[∑[A144601(2*n+1)]]`
-/

namespace A011860.P14379344558911595407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144601 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011860.P14379344558911595407

namespace A011860

/-- `∑[∑[A144601(2*n+1)]]` -/
def P14379344558911595407.Spec : Prop :=
  ∀ n, P14379344558911595407.a n = A011860 n

end A011860

/-! ## A011860.P3214648086585006282

`∑[∑[2-A291454(2*(n+1))]]`
-/

namespace A011860.P3214648086585006282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A291454 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011860.P3214648086585006282

namespace A011860

/-- `∑[∑[2-A291454(2*(n+1))]]` -/
def P3214648086585006282.Spec : Prop :=
  ∀ n, P3214648086585006282.a n = A011860 n

end A011860

/-! ## A011860.P5287328695852547792

`A132270(n+2)+∑[A132270(2*n+1)]`
-/

namespace A011860.P5287328695852547792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011860.P5287328695852547792

namespace A011860

/-- `A132270(n+2)+∑[A132270(2*n+1)]` -/
def P5287328695852547792.Spec : Prop :=
  ∀ n, P5287328695852547792.a n = A011860 n

end A011860

/-! ## A011860.P16970223049108055084

`∑[∑[abs(A014016(3*(n+1)))]]`
-/

namespace A011860.P16970223049108055084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014016 (3 * (n + 1))|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011860.P16970223049108055084

namespace A011860

/-- `∑[∑[abs(A014016(3*(n+1)))]]` -/
def P16970223049108055084.Spec : Prop :=
  ∀ n, P16970223049108055084.a n = A011860 n

end A011860

/-!
# A011861: a(n) = floor(n(n-1)/8).

The programs for A011861, the canonical program `A011861.P4500963193198654930` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011861 has offset 0).

The definition of A011861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/8)` (program `A011861.P4500963193198654930`, by `A011861.P4500963193198654930.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011861.P7335047057593646761

`floor(C(n, 2)/4)`
-/

namespace A011861.P7335047057593646761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 4⌋

end

end A011861.P7335047057593646761

namespace A011861

/-- `floor(C(n, 2)/4)` -/
def P7335047057593646761.Spec : Prop :=
  ∀ n, P7335047057593646761.a n = A011861 n

end A011861

/-! ## A011861.P4500963193198654930

`floor(n*(n-1)/8)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011861

/-- `floor(n*(n-1)/8)` -/
def P4500963193198654930.Spec : Prop :=
  ∀ n, P4500963193198654930.a n = A011861 n

theorem P4500963193198654930.correct : P4500963193198654930.Spec := by
  intro n
  simp only [A011861]

end A011861

/-! ## A011861.P10344506109821738989

`and(-4, C(n, 2))/4`
-/

namespace A011861.P10344506109821738989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-4) (Nat.choose n 2 : ℤ) : ℚ) / 4

end

end A011861.P10344506109821738989

namespace A011861

/-- `and(-4, C(n, 2))/4` -/
def P10344506109821738989.Spec : Prop :=
  ∀ n, P10344506109821738989.a n = (A011861 n : ℚ)

end A011861

/-! ## A011861.P4915044612452714935

`ceil((C(n, 2)-3)/4)`
-/

namespace A011861.P4915044612452714935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 2 : ℤ) - 3 : ℚ) / 4⌉

end

end A011861.P4915044612452714935

namespace A011861

/-- `ceil((C(n, 2)-3)/4)` -/
def P4915044612452714935.Spec : Prop :=
  ∀ n, P4915044612452714935.a n = A011861 n

end A011861

/-! ## A011861.P17959296069625346337

`round((C(n, 2)-ϕ)/4)`
-/

namespace A011861.P17959296069625346337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose n 2 : ℝ) - Real.goldenRatio) / 4)

end

end A011861.P17959296069625346337

namespace A011861

/-- `round((C(n, 2)-ϕ)/4)` -/
def P17959296069625346337.Spec : Prop :=
  ∀ n, P17959296069625346337.a n = A011861 n

end A011861

/-! ## A011861.P6170281427392807038

`∑[∑[6%gcd(5, (n+1)%8)]]`
-/

namespace A011861.P6170281427392807038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 % Nat.gcd 5 ((n + 1) % 8)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011861.P6170281427392807038

namespace A011861

/-- `∑[∑[6%gcd(5, (n+1)%8)]]` -/
def P6170281427392807038.Spec : Prop :=
  ∀ n, (P6170281427392807038.a n : ℤ) = A011861 n

end A011861

/-! ## A011861.P12116016541452285440

`∑[∑[char[4*n-and(1, n+1)]]]`
-/

namespace A011861.P12116016541452285440
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (Nat.land 1 (n + 1) : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011861.P12116016541452285440

namespace A011861

/-- `∑[∑[char[4*n-and(1, n+1)]]]` -/
def P12116016541452285440.Spec : Prop :=
  ∀ n, (P12116016541452285440.a n : ℤ) = A011861 n

end A011861

/-! ## A011861.P205423463626950243

`∑[∑[and(1, A028724(n))]]`
-/

namespace A011861.P205423463626950243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A028724 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011861.P205423463626950243

namespace A011861

/-- `∑[∑[and(1, A028724(n))]]` -/
def P205423463626950243.Spec : Prop :=
  ∀ n, P205423463626950243.a n = A011861 n

end A011861

/-! ## A011861.P12789995619566360684

`A161680(n)-A389320(n)`
-/

namespace A011861.P12789995619566360684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A389320 n

end

end A011861.P12789995619566360684

namespace A011861

/-- `A161680(n)-A389320(n)` -/
def P12789995619566360684.Spec : Prop :=
  ∀ n, P12789995619566360684.a n = A011861 n

end A011861

/-! ## A011861.P1354054573687219473

`∑[A004524(A004525(n+1))]`
-/

namespace A011861.P1354054573687219473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A004525 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011861.P1354054573687219473

namespace A011861

/-- `∑[A004524(A004525(n+1))]` -/
def P1354054573687219473.Spec : Prop :=
  ∀ n, P1354054573687219473.a n = A011861 n

end A011861

/-! ## A011861.P5573989960005571015

`∑[A004524(A004524(n)+1)]`
-/

namespace A011861.P5573989960005571015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A004524 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011861.P5573989960005571015

namespace A011861

/-- `∑[A004524(A004524(n)+1)]` -/
def P5573989960005571015.Spec : Prop :=
  ∀ n, P5573989960005571015.a n = A011861 n

end A011861

/-! ## A011861.P5275089637581742512

`∑[A057354(A057361(n)+1)]`
-/

namespace A011861.P5275089637581742512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A057361 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011861.P5275089637581742512

namespace A011861

/-- `∑[A057354(A057361(n)+1)]` -/
def P5275089637581742512.Spec : Prop :=
  ∀ n, P5275089637581742512.a n = A011861 n

end A011861

/-! ## A011861.P17339682405779525270

`∑[A008620(A071934(n+1))-1]`
-/

namespace A011861.P17339682405779525270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A071934 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011861.P17339682405779525270

namespace A011861

/-- `∑[A008620(A071934(n+1))-1]` -/
def P17339682405779525270.Spec : Prop :=
  ∀ n, P17339682405779525270.a n = A011861 n

end A011861

/-! ## A011861.P8596168774154379466

`n²-(A389320(n)+A000217(n))`
-/

namespace A011861.P8596168774154379466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (A389320 n + A000217 n)

end

end A011861.P8596168774154379466

namespace A011861

/-- `n²-(A389320(n)+A000217(n))` -/
def P8596168774154379466.Spec : Prop :=
  ∀ n, P8596168774154379466.a n = A011861 n

end A011861

/-! ## A011861.P5316891515450376977

`A002265(A110654(n))+∑[A002265(n)]`
-/

namespace A011861.P5316891515450376977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A110654 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011861.P5316891515450376977

namespace A011861

/-- `A002265(A110654(n))+∑[A002265(n)]` -/
def P5316891515450376977.Spec : Prop :=
  ∀ n, P5316891515450376977.a n = A011861 n

end A011861

/-! ## A011861.P8592561072544441918

`A130519(n)+A004526(Δ[A130519(n)])`
-/

namespace A011861.P8592561072544441918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 n + A004526 (f1 (n + 1) - f1 n).toNat

end

end A011861.P8592561072544441918

namespace A011861

/-- `A130519(n)+A004526(Δ[A130519(n)])` -/
def P8592561072544441918.Spec : Prop :=
  ∀ n, P8592561072544441918.a n = A011861 n

end A011861

/-! ## A011861.P6477794033698510324

`A389318(n)+A389319(n)-A389320(n)`
-/

namespace A011861.P6477794033698510324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389318 n + (A389319 n - A389320 n)

end

end A011861.P6477794033698510324

namespace A011861

/-- `A389318(n)+A389319(n)-A389320(n)` -/
def P6477794033698510324.Spec : Prop :=
  ∀ n, P6477794033698510324.a n = A011861 n

end A011861

/-! ## A011861.P3008332019281703434

`∑[A002265(A072401(n)+n)]`
-/

namespace A011861.P3008332019281703434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A072401 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011861.P3008332019281703434

namespace A011861

/-- `∑[A002265(A072401(n)+n)]` -/
def P3008332019281703434.Spec : Prop :=
  ∀ n, P3008332019281703434.a n = A011861 n

end A011861

/-! ## A011861.P13010026439390549744

`A132292(n+2)+A130519(n)`
-/

namespace A011861.P13010026439390549744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (n + 2) + A130519 n

end

end A011861.P13010026439390549744

namespace A011861

/-- `A132292(n+2)+A130519(n)` -/
def P13010026439390549744.Spec : Prop :=
  ∀ n, P13010026439390549744.a n = A011861 n

end A011861

/-! ## A011861.P17455504393140881347

`A004526(A011848(n))`
-/

namespace A011861.P17455504393140881347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011848 n).toNat

end

end A011861.P17455504393140881347

namespace A011861

/-- `A004526(A011848(n))` -/
def P17455504393140881347.Spec : Prop :=
  ∀ n, P17455504393140881347.a n = A011861 n

end A011861

/-!
# A011862: a(n) = floor(n*(n-1)/9).

The programs for A011862, the canonical program `A011862.P9485299441699197278` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011862 has offset 0).

The definition of A011862 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/9)` (program `A011862.P9485299441699197278`, by `A011862.P9485299441699197278.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011862.P9485299441699197278

`floor(n*(n-1)/9)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011862

/-- `floor(n*(n-1)/9)` -/
def P9485299441699197278.Spec : Prop :=
  ∀ n, P9485299441699197278.a n = A011862 n

theorem P9485299441699197278.correct : P9485299441699197278.Spec := by
  intro n
  simp only [A011862]

end A011862

/-! ## A011862.P7325214697415006533

`∑[∑[val(dr(n+9), 4)]]`
-/

namespace A011862.P7325214697415006533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot (n + 9 : ℤ)) 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011862.P7325214697415006533

namespace A011862

/-- `∑[∑[val(dr(n+9), 4)]]` -/
def P7325214697415006533.Spec : Prop :=
  ∀ n, (P7325214697415006533.a n : ℤ) = A011862 n

end A011862

/-! ## A011862.P8832468885320423023

`∑[∑[(C(n, 4)%3)%2]]`
-/

namespace A011862.P8832468885320423023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 % 3 % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011862.P8832468885320423023

namespace A011862

/-- `∑[∑[(C(n, 4)%3)%2]]` -/
def P8832468885320423023.Spec : Prop :=
  ∀ n, (P8832468885320423023.a n : ℤ) = A011862 n

end A011862

/-! ## A011862.P10642325232358720957

`∑[floor(∑[n²%3]/3)]`
-/

namespace A011862.P10642325232358720957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011862.P10642325232358720957

namespace A011862

/-- `∑[floor(∑[n²%3]/3)]` -/
def P10642325232358720957.Spec : Prop :=
  ∀ n, P10642325232358720957.a n = A011862 n

end A011862

/-! ## A011862.P8911314280710413196

`round((n-2)/(9*acot(n+1)))`
-/

namespace A011862.P8911314280710413196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℝ) / (9 * SequenceMachineLib.acot (n + 1 : ℝ)))

end

end A011862.P8911314280710413196

namespace A011862

/-- `round((n-2)/(9*acot(n+1)))` -/
def P8911314280710413196.Spec : Prop :=
  ∀ n, P8911314280710413196.a n = A011862 n

end A011862

/-! ## A011862.P2862409944507002446

`∑[floor(∑[floor(a(n-3))]/3)]` with `a(0)=0, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A011862.P2862409944507002446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011862.P2862409944507002446

namespace A011862

/-- `∑[floor(∑[floor(a(n-3))]/3)]` -/
def P2862409944507002446.Spec : Prop :=
  ∀ n, P2862409944507002446.a n = A011862 n

end A011862

/-! ## A011862.P1568774329806605521

`∑[∑[A144596(n)]]`
-/

namespace A011862.P1568774329806605521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144596 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011862.P1568774329806605521

namespace A011862

/-- `∑[∑[A144596(n)]]` -/
def P1568774329806605521.Spec : Prop :=
  ∀ n, P1568774329806605521.a n = A011862 n

end A011862

/-! ## A011862.P10346814324862798561

`∑[A002264(∑[A011655(n)])]`
-/

namespace A011862.P10346814324862798561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011862.P10346814324862798561

namespace A011862

/-- `∑[A002264(∑[A011655(n)])]` -/
def P10346814324862798561.Spec : Prop :=
  ∀ n, P10346814324862798561.a n = A011862 n

end A011862

/-! ## A011862.P9340201902068086297

`∑[A002264(A131737(n)+1)]`
-/

namespace A011862.P9340201902068086297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A131737 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011862.P9340201902068086297

namespace A011862

/-- `∑[A002264(A131737(n)+1)]` -/
def P9340201902068086297.Spec : Prop :=
  ∀ n, P9340201902068086297.a n = A011862 n

end A011862

/-! ## A011862.P106696411780324064

`∑[A002264(n-A002264(n))]`
-/

namespace A011862.P106696411780324064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((n : ℤ) - A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011862.P106696411780324064

namespace A011862

/-- `∑[A002264(n-A002264(n))]` -/
def P106696411780324064.Spec : Prop :=
  ∀ n, P106696411780324064.a n = A011862 n

end A011862

/-! ## A011862.P9107655320305973067

`A008740(n+1)-(n+2)`
-/

namespace A011862.P9107655320305973067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (n + 1) - (n + 2 : ℤ)

end

end A011862.P9107655320305973067

namespace A011862

/-- `A008740(n+1)-(n+2)` -/
def P9107655320305973067.Spec : Prop :=
  ∀ n, P9107655320305973067.a n = A011862 n

end A011862

/-! ## A011862.P1660716881144146400

`∑[A032797(n+2)-(n+2)]`
-/

namespace A011862.P1660716881144146400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032797 (n + 2) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011862.P1660716881144146400

namespace A011862

/-- `∑[A032797(n+2)-(n+2)]` -/
def P1660716881144146400.Spec : Prop :=
  ∀ n, P1660716881144146400.a n = A011862 n

end A011862

/-! ## A011862.P3641824218039199503

`(A008825(n+1)-(n+2))/2`
-/

namespace A011862.P3641824218039199503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008825 (n + 1) - (n + 2 : ℤ) : ℚ) / 2

end

end A011862.P3641824218039199503

namespace A011862

/-- `(A008825(n+1)-(n+2))/2` -/
def P3641824218039199503.Spec : Prop :=
  ∀ n, P3641824218039199503.a n = (A011862 n : ℚ)

end A011862

/-! ## A011862.P8672147977287241822

`Δ[A177100(n+3)]-(n+2)`
-/

namespace A011862.P8672147977287241822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177100 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A011862.P8672147977287241822

namespace A011862

/-- `Δ[A177100(n+3)]-(n+2)` -/
def P8672147977287241822.Spec : Prop :=
  ∀ n, P8672147977287241822.a n = A011862 n

end A011862

/-! ## A011862.P17531640913698995973

`∑[∑[A267142(n+5)+A267142(n+1)]]`
-/

namespace A011862.P17531640913698995973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 (n + 5) + A267142 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011862.P17531640913698995973

namespace A011862

/-- `∑[∑[A267142(n+5)+A267142(n+1)]]` -/
def P17531640913698995973.Spec : Prop :=
  ∀ n, P17531640913698995973.a n = A011862 n

end A011862

/-! ## A011862.P10184617811674239358

`∑[A152467(A042965(n+2))]`
-/

namespace A011862.P10184617811674239358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A042965 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011862.P10184617811674239358

namespace A011862

/-- `∑[A152467(A042965(n+2))]` -/
def P10184617811674239358.Spec : Prop :=
  ∀ n, P10184617811674239358.a n = A011862 n

end A011862

/-! ## A011862.P11933643376955151038

`∑[A004526(A289133(2*n+1))]`
-/

namespace A011862.P11933643376955151038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A289133 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011862.P11933643376955151038

namespace A011862

/-- `∑[A004526(A289133(2*n+1))]` -/
def P11933643376955151038.Spec : Prop :=
  ∀ n, P11933643376955151038.a n = A011862 n

end A011862

/-! ## A011862.P1749001090550995550

`A343609(n+1)+∑[A343609(2*n+1)]`
-/

namespace A011862.P1749001090550995550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011862.P1749001090550995550

namespace A011862

/-- `A343609(n+1)+∑[A343609(2*n+1)]` -/
def P1749001090550995550.Spec : Prop :=
  ∀ n, P1749001090550995550.a n = A011862 n

end A011862

/-! ## A011862.P8975875374391720705

`∑[A343609(2*(n+1))]`
-/

namespace A011862.P8975875374391720705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011862.P8975875374391720705

namespace A011862

/-- `∑[A343609(2*(n+1))]` -/
def P8975875374391720705.Spec : Prop :=
  ∀ n, P8975875374391720705.a n = A011862 n

end A011862

/-! ## A011862.P1187594479988589856

`∑[Δ[A025765(2*n)]-1]`
-/

namespace A011862.P1187594479988589856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025765 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011862.P1187594479988589856

namespace A011862

/-- `∑[Δ[A025765(2*n)]-1]` -/
def P1187594479988589856.Spec : Prop :=
  ∀ n, P1187594479988589856.a n = A011862 n

end A011862

/-!
# A011863: Nearest integer to (n/2)^4.

The programs for A011863, the canonical program `A011863.P4014361706685543832` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011863 has offset 0).

The definition of A011863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011863.P4014361706685543832

`round((n/2)^4)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011863

/-- `round((n/2)^4)` -/
def P4014361706685543832.Spec : Prop :=
  ∀ n, P4014361706685543832.a n = A011863 n

theorem P4014361706685543832.correct : P4014361706685543832.Spec := by
  intro n
  simp only [A011863]

end A011863

/-! ## A011863.P303352070474511039

`floor(n*and(n*n², -1)/16)`
-/

namespace A011863.P303352070474511039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * Int.land (n * n ^ 2 : ℤ) (-1) : ℚ) / 16⌋

end

end A011863.P303352070474511039

namespace A011863

/-- `floor(n*and(n*n², -1)/16)` -/
def P303352070474511039.Spec : Prop :=
  ∀ n, P303352070474511039.a n = A011863 n

end A011863

/-! ## A011863.P6002434204082481908

`∑[∑[∑[a(n-2)+3]]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A011863.P6002434204082481908
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2] fun n f3 =>
  f3 (n - 2) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011863.P6002434204082481908

namespace A011863

/-- `∑[∑[∑[a(n-2)+3]]]` -/
def P6002434204082481908.Spec : Prop :=
  ∀ n, (P6002434204082481908.a n : ℤ) = A011863 n

end A011863

/-! ## A011863.P864882287810578603

`floor(n*n*record[round(lcm(n+1, 1-n)/4)]/16)`
-/

namespace A011863.P864882287810578603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (1 - (n : ℤ)) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 16⌋

end

end A011863.P864882287810578603

namespace A011863

/-- `floor(n*n*record[round(lcm(n+1, 1-n)/4)]/16)` -/
def P864882287810578603.Spec : Prop :=
  ∀ n, P864882287810578603.a n = A011863 n

end A011863

/-! ## A011863.P5039639358706744343

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5, a(4)=16, a(5)=39`
-/

namespace A011863.P5039639358706744343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 5, 16, 39] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 5 * a (n - 4) - 4 * a (n - 5) + a (n - 6)

end

end A011863.P5039639358706744343

namespace A011863

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P5039639358706744343.Spec : Prop :=
  ∀ n, P5039639358706744343.a n = A011863 n

end A011863

/-! ## A011863.P13732469337566245073

`A212714(n)/2`
-/

namespace A011863.P13732469337566245073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212714 n : ℚ) / 2

end

end A011863.P13732469337566245073

namespace A011863

/-- `A212714(n)/2` -/
def P13732469337566245073.Spec : Prop :=
  ∀ n, P13732469337566245073.a n = (A011863 n : ℚ)

end A011863

/-! ## A011863.P13302056417803872813

`A131479(n)/4`
-/

namespace A011863.P13302056417803872813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131479 n : ℚ) / 4

end

end A011863.P13302056417803872813

namespace A011863

/-- `A131479(n)/4` -/
def P13302056417803872813.Spec : Prop :=
  ∀ n, P13302056417803872813.a n = (A011863 n : ℚ)

end A011863

/-! ## A011863.P8814297291081983715

`∑[A212683(n)/2]`
-/

namespace A011863.P8814297291081983715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212683 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011863.P8814297291081983715

namespace A011863

/-- `∑[A212683(n)/2]` -/
def P8814297291081983715.Spec : Prop :=
  ∀ n, P8814297291081983715.a n = (A011863 n : ℚ)

end A011863

/-! ## A011863.P7260769931580176378

`floor((A000290(n)/4)²)`
-/

namespace A011863.P7260769931580176378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000290 n : ℚ) / 4) ^ 2⌋

end

end A011863.P7260769931580176378

namespace A011863

/-- `floor((A000290(n)/4)²)` -/
def P7260769931580176378.Spec : Prop :=
  ∀ n, P7260769931580176378.a n = A011863 n

end A011863

/-! ## A011863.P10045994845338303259

`∑[A002717(n)-n²]`
-/

namespace A011863.P10045994845338303259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011863.P10045994845338303259

namespace A011863

/-- `∑[A002717(n)-n²]` -/
def P10045994845338303259.Spec : Prop :=
  ∀ n, P10045994845338303259.a n = A011863 n

end A011863

/-! ## A011863.P681369926872407741

`∑[floor(n*(n+2)*(2*n+1)/8)]-A000330(n)`
-/

namespace A011863.P681369926872407741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((n + 2 : ℚ) * ((2 * n + 1 : ℚ) / 8))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000330 n

end

end A011863.P681369926872407741

namespace A011863

/-- `∑[floor(n*(n+2)*(2*n+1)/8)]-A000330(n)` -/
def P681369926872407741.Spec : Prop :=
  ∀ n, P681369926872407741.a n = A011863 n

end A011863

/-! ## A011863.P10437559256877182201

`A330520(n)-A034828(n)`
-/

namespace A011863.P10437559256877182201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330520 n - A034828 n

end

end A011863.P10437559256877182201

namespace A011863

/-- `A330520(n)-A034828(n)` -/
def P10437559256877182201.Spec : Prop :=
  ∀ n, P10437559256877182201.a n = A011863 n

end A011863

/-! ## A011863.P7048378696581168977

`A123596(n)*A147685(n)`
-/

namespace A011863.P7048378696581168977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 n * A147685 n

end

end A011863.P7048378696581168977

namespace A011863

/-- `A123596(n)*A147685(n)` -/
def P7048378696581168977.Spec : Prop :=
  ∀ n, P7048378696581168977.a n = A011863 n

end A011863

/-! ## A011863.P4039197223155424595

`∑[A019298(n)]-A019298(n)`
-/

namespace A011863.P4039197223155424595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A019298 n

end

end A011863.P4039197223155424595

namespace A011863

/-- `∑[A019298(n)]-A019298(n)` -/
def P4039197223155424595.Spec : Prop :=
  ∀ n, P4039197223155424595.a n = A011863 n

end A011863

/-! ## A011863.P6443828389726779737

`A307304(n+1)-A109900(n)`
-/

namespace A011863.P6443828389726779737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307304 (n + 1) - A109900 n

end

end A011863.P6443828389726779737

namespace A011863

/-- `A307304(n+1)-A109900(n)` -/
def P6443828389726779737.Spec : Prop :=
  ∀ n, P6443828389726779737.a n = A011863 n

theorem P6443828389726779737.correct : P6443828389726779737.Spec := by
  intro n
  simp only [A011863, Nat.add_sub_cancel, A011863.P6443828389726779737.a, A011863.P4014361706685543832.a, A109900, A109900.P16987226196042379863.a, A307304, A307304.P16711502216985444807.a, A034828, A034828.P560572460537490832.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A011863

/-! ## A011863.P12360149513859281476

`A002620(n+1)*A002620(n)-A034828(n)`
-/

namespace A011863.P12360149513859281476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) * A002620 n - A034828 n

end

end A011863.P12360149513859281476

namespace A011863

/-- `A002620(n+1)*A002620(n)-A034828(n)` -/
def P12360149513859281476.Spec : Prop :=
  ∀ n, P12360149513859281476.a n = A011863 n

end A011863

/-! ## A011863.P9885523218602693284

`A000332(n+1)+A001752(n)-A000292(n+1)`
-/

namespace A011863.P9885523218602693284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) + (A001752 n - A000292 (n + 1))

end

end A011863.P9885523218602693284

namespace A011863

/-- `A000332(n+1)+A001752(n)-A000292(n+1)` -/
def P9885523218602693284.Spec : Prop :=
  ∀ n, P9885523218602693284.a n = A011863 n

end A011863

/-! ## A011863.P8962768336148396025

`A001296(n+1)-(A070893(n+1)+A000330(n))`
-/

namespace A011863.P8962768336148396025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (n + 1) - (A070893 (n + 1) + A000330 n)

end

end A011863.P8962768336148396025

namespace A011863

/-- `A001296(n+1)-(A070893(n+1)+A000330(n))` -/
def P8962768336148396025.Spec : Prop :=
  ∀ n, P8962768336148396025.a n = A011863 n

end A011863

/-! ## A011863.P18307083372959205259

`A059403(2*n)/4`
-/

namespace A011863.P18307083372959205259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059403 (2 * n) : ℚ) / 4

end

end A011863.P18307083372959205259

namespace A011863

/-- `A059403(2*n)/4` -/
def P18307083372959205259.Spec : Prop :=
  ∀ n, P18307083372959205259.a n = (A011863 n : ℚ)

end A011863

/-! ## A011863.P4736384504688550296

`A060494(2*n)/4`
-/

namespace A011863.P4736384504688550296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060494 (2 * n) : ℚ) / 4

end

end A011863.P4736384504688550296

namespace A011863

/-- `A060494(2*n)/4` -/
def P4736384504688550296.Spec : Prop :=
  ∀ n, P4736384504688550296.a n = (A011863 n : ℚ)

end A011863

/-!
# A011864: a(n) = floor(n*(n - 1)/11).

The programs for A011864, the canonical program `A011864.P3547417513882699266` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011864 has offset 0).

The definition of A011864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/11)` (program `A011864.P3547417513882699266`, by `A011864.P3547417513882699266.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011864.P3547417513882699266

`floor(n*(n-1)/11)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011864

/-- `floor(n*(n-1)/11)` -/
def P3547417513882699266.Spec : Prop :=
  ∀ n, P3547417513882699266.a n = A011864 n

theorem P3547417513882699266.correct : P3547417513882699266.Spec := by
  intro n
  simp only [A011864]

end A011864

/-! ## A011864.P2881010418631764860

`ceil((4*C(n, 2)-21)/22)`
-/

namespace A011864.P2881010418631764860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((4 * Nat.choose n 2 : ℤ) - 21 : ℚ) / 22⌉

end

end A011864.P2881010418631764860

namespace A011864

/-- `ceil((4*C(n, 2)-21)/22)` -/
def P2881010418631764860.Spec : Prop :=
  ∀ n, P2881010418631764860.a n = A011864 n

end A011864

/-! ## A011864.P1673528634159410206

`floor(A002061(n)/11)%A000124(n)`
-/

namespace A011864.P1673528634159410206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A002061 n : ℚ) / 11⌋ (A000124 n)

end

end A011864.P1673528634159410206

namespace A011864

/-- `floor(A002061(n)/11)%A000124(n)` -/
def P1673528634159410206.Spec : Prop :=
  ∀ n, P1673528634159410206.a n = A011864 n

end A011864

/-! ## A011864.P629188350082020486

`A000038(n+1)+floor(A002061(n)/11)`
-/

namespace A011864.P629188350082020486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + ⌊(A002061 n : ℚ) / 11⌋

end

end A011864.P629188350082020486

namespace A011864

/-- `A000038(n+1)+floor(A002061(n)/11)` -/
def P629188350082020486.Spec : Prop :=
  ∀ n, P629188350082020486.a n = A011864 n

end A011864

/-! ## A011864.P7373678047167194118

`A321195(n+1)+A004526(Δ[round((1-n)²/11)])`
-/

namespace A011864.P7373678047167194118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 - (n : ℤ)) ^ 2 : ℚ) / 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321195 (n + 1) + A004526 (f1 (n + 1) - f1 n).toNat

end

end A011864.P7373678047167194118

namespace A011864

/-- `A321195(n+1)+A004526(Δ[round((1-n)²/11)])` -/
def P7373678047167194118.Spec : Prop :=
  ∀ n, P7373678047167194118.a n = A011864 n

end A011864

/-! ## A011864.P2444641619844928740

`floor(A002061(n)/11)/A049347(3*(n+1))`
-/

namespace A011864.P2444641619844928740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A002061 n : ℚ) / 11⌋ : ℚ) / (A049347 (3 * (n + 1)) : ℚ)

end

end A011864.P2444641619844928740

namespace A011864

/-- `floor(A002061(n)/11)/A049347(3*(n+1))` -/
def P2444641619844928740.Spec : Prop :=
  ∀ n, P2444641619844928740.a n = (A011864 n : ℚ)

end A011864

/-! ## A011864.P15130235982358794041

`floor(A002061(n)/11)*A053150(A000040(n+1))`
-/

namespace A011864.P15130235982358794041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002061 n : ℚ) / 11⌋ * A053150 (A000040 (n + 1)).toNat

end

end A011864.P15130235982358794041

namespace A011864

/-- `floor(A002061(n)/11)*A053150(A000040(n+1))` -/
def P15130235982358794041.Spec : Prop :=
  ∀ n, P15130235982358794041.a n = A011864 n

end A011864

/-! ## A011864.P15027845509331066126

`A004526(A321195(n+1)+A321195(n+2))`
-/

namespace A011864.P15027845509331066126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A321195 (n + 1) + A321195 (n + 2)).toNat

end

end A011864.P15027845509331066126

namespace A011864

/-- `A004526(A321195(n+1)+A321195(n+2))` -/
def P15027845509331066126.Spec : Prop :=
  ∀ n, P15027845509331066126.a n = A011864 n

end A011864

/-! ## A011864.P7278893422579083384

`A002265(A321195(2*n+1))`
-/

namespace A011864.P7278893422579083384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A321195 (2 * n + 1)).toNat

end

end A011864.P7278893422579083384

namespace A011864

/-- `A002265(A321195(2*n+1))` -/
def P7278893422579083384.Spec : Prop :=
  ∀ n, P7278893422579083384.a n = A011864 n

end A011864

/-! ## A011864.P14799726297218728032

`A032798(A152947(n+1))-A152947(n+1)`
-/

namespace A011864.P14799726297218728032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032798 (A152947 (n + 1)).toNat - A152947 (n + 1)

end

end A011864.P14799726297218728032

namespace A011864

/-- `A032798(A152947(n+1))-A152947(n+1)` -/
def P14799726297218728032.Spec : Prop :=
  ∀ n, P14799726297218728032.a n = A011864 n

end A011864

/-! ## A011864.P4005134120127733157

`A344420(n²-n)`
-/

namespace A011864.P4005134120127733157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (n ^ 2 - n)

end

end A011864.P4005134120127733157

namespace A011864

/-- `A344420(n²-n)` -/
def P4005134120127733157.Spec : Prop :=
  ∀ n, P4005134120127733157.a n = A011864 n

end A011864

/-! ## A011864.P17558177913671031078

`A168186(A002061(n))-A002061(n)`
-/

namespace A011864.P17558177913671031078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (A002061 n).toNat - A002061 n

end

end A011864.P17558177913671031078

namespace A011864

/-- `A168186(A002061(n))-A002061(n)` -/
def P17558177913671031078.Spec : Prop :=
  ∀ n, P17558177913671031078.a n = A011864 n

end A011864

/-!
# A011865: a(n) = floor( n*(n - 1)/12 ).

The programs for A011865, the canonical program `A011865.P18048699183673763300` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011865 has offset 0).

The definition of A011865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/12)` (program `A011865.P18048699183673763300`, by `A011865.P18048699183673763300.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011865.P18048699183673763300

`floor(n*(n-1)/12)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011865

/-- `floor(n*(n-1)/12)` -/
def P18048699183673763300.Spec : Prop :=
  ∀ n, P18048699183673763300.a n = A011865 n

theorem P18048699183673763300.correct : P18048699183673763300.Spec := by
  intro n
  simp only [A011865]

end A011865

/-! ## A011865.P2844053294995388158

`round((C(n, 2)-2)/6)`
-/

namespace A011865.P2844053294995388158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose n 2 : ℤ) - 2 : ℚ) / 6)

end

end A011865.P2844053294995388158

namespace A011865

/-- `round((C(n, 2)-2)/6)` -/
def P2844053294995388158.Spec : Prop :=
  ∀ n, P2844053294995388158.a n = A011865 n

end A011865

/-! ## A011865.P17019994442041016413

`ceil((C(n, 2)-4)/6)`
-/

namespace A011865.P17019994442041016413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 2 : ℤ) - 4 : ℚ) / 6⌉

end

end A011865.P17019994442041016413

namespace A011865

/-- `ceil((C(n, 2)-4)/6)` -/
def P17019994442041016413.Spec : Prop :=
  ∀ n, P17019994442041016413.a n = A011865 n

end A011865

/-! ## A011865.P899679418916186995

`round((A000217(n)-(n+2))/6)`
-/

namespace A011865.P899679418916186995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000217 n - (n + 2 : ℤ) : ℚ) / 6)

end

end A011865.P899679418916186995

namespace A011865

/-- `round((A000217(n)-(n+2))/6)` -/
def P899679418916186995.Spec : Prop :=
  ∀ n, P899679418916186995.a n = A011865 n

end A011865

/-! ## A011865.P8088177254562545917

`and(∑[A008620(n)]-(n+1), -2)/2`
-/

namespace A011865.P8088177254562545917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)) (-2) : ℚ) / 2

end

end A011865.P8088177254562545917

namespace A011865

/-- `and(∑[A008620(n)]-(n+1), -2)/2` -/
def P8088177254562545917.Spec : Prop :=
  ∀ n, P8088177254562545917.a n = (A011865 n : ℚ)

end A011865

/-! ## A011865.P12718410523749318932

`round(A326278(n)/A001844(n))`
-/

namespace A011865.P12718410523749318932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326278 n : ℚ) / (A001844 n : ℚ))

end

end A011865.P12718410523749318932

namespace A011865

/-- `round(A326278(n)/A001844(n))` -/
def P12718410523749318932.Spec : Prop :=
  ∀ n, P12718410523749318932.a n = A011865 n

end A011865

/-! ## A011865.P14221872374703400677

`A004526(∑[floor(n/3)])`
-/

namespace A011865.P14221872374703400677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011865.P14221872374703400677

namespace A011865

/-- `A004526(∑[floor(n/3)])` -/
def P14221872374703400677.Spec : Prop :=
  ∀ n, P14221872374703400677.a n = A011865 n

end A011865

/-! ## A011865.P17632028923728717838

`sqrt(A008794(∑[floor(n/3)]))`
-/

namespace A011865.P17632028923728717838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008794 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℝ)

end

end A011865.P17632028923728717838

namespace A011865

/-- `sqrt(A008794(∑[floor(n/3)]))` -/
def P17632028923728717838.Spec : Prop :=
  ∀ n, P17632028923728717838.a n = (A011865 n : ℝ)

end A011865

/-! ## A011865.P2213695987079188409

`A140106(A008750(n))`
-/

namespace A011865.P2213695987079188409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A008750 n).toNat

end

end A011865.P2213695987079188409

namespace A011865

/-- `A140106(A008750(n))` -/
def P2213695987079188409.Spec : Prop :=
  ∀ n, P2213695987079188409.a n = A011865 n

end A011865

/-! ## A011865.P1088044894913203622

`A008619(∑[A002264(n)])-1`
-/

namespace A011865.P1088044894913203622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A011865.P1088044894913203622

namespace A011865

/-- `A008619(∑[A002264(n)])-1` -/
def P1088044894913203622.Spec : Prop :=
  ∀ n, P1088044894913203622.a n = A011865 n

end A011865

/-! ## A011865.P6097158341572739150

`A140106(∑[A002264(n)]+2)`
-/

namespace A011865.P6097158341572739150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A011865.P6097158341572739150

namespace A011865

/-- `A140106(∑[A002264(n)]+2)` -/
def P6097158341572739150.Spec : Prop :=
  ∀ n, P6097158341572739150.a n = A011865 n

end A011865

/-! ## A011865.P2586170702435521806

`A002264(A011848(n))`
-/

namespace A011865.P2586170702435521806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A011848 n).toNat

end

end A011865.P2586170702435521806

namespace A011865

/-- `A002264(A011848(n))` -/
def P2586170702435521806.Spec : Prop :=
  ∀ n, P2586170702435521806.a n = A011865 n

end A011865

/-! ## A011865.P10044980077881154265

`A002264(A054925(n))`
-/

namespace A011865.P10044980077881154265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A054925 n).toNat

end

end A011865.P10044980077881154265

namespace A011865

/-- `A002264(A054925(n))` -/
def P10044980077881154265.Spec : Prop :=
  ∀ n, P10044980077881154265.a n = A011865 n

end A011865

/-! ## A011865.P10206256101902755344

`A002264(∑[A004524(n)])`
-/

namespace A011865.P10206256101902755344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011865.P10206256101902755344

namespace A011865

/-- `A002264(∑[A004524(n)])` -/
def P10206256101902755344.Spec : Prop :=
  ∀ n, P10206256101902755344.a n = A011865 n

end A011865

/-! ## A011865.P4351954040934997496

`A002264(A368052(n+1))`
-/

namespace A011865.P4351954040934997496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A368052 (n + 1)).toNat

end

end A011865.P4351954040934997496

namespace A011865

/-- `A002264(A368052(n+1))` -/
def P4351954040934997496.Spec : Prop :=
  ∀ n, P4351954040934997496.a n = A011865 n

end A011865

/-! ## A011865.P17253127842267290734

`A002264(A118729(2*(n+1)))`
-/

namespace A011865.P17253127842267290734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A118729 (2 * (n + 1))).toNat

end

end A011865.P17253127842267290734

namespace A011865

/-- `A002264(A118729(2*(n+1)))` -/
def P17253127842267290734.Spec : Prop :=
  ∀ n, P17253127842267290734.a n = A011865 n

end A011865

/-! ## A011865.P14582904768167586879

`A002264(A130519(n+1)+A130519(n))`
-/

namespace A011865.P14582904768167586879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A130519 (n + 1) + A130519 n).toNat

end

end A011865.P14582904768167586879

namespace A011865

/-- `A002264(A130519(n+1)+A130519(n))` -/
def P14582904768167586879.Spec : Prop :=
  ∀ n, P14582904768167586879.a n = A011865 n

end A011865

/-!
# A011866: a(n) = floor(n*(n-1)/13).

The programs for A011866, the canonical program `A011866.P10048712855091218322` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011866 has offset 0).

The definition of A011866 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/13)` (program `A011866.P10048712855091218322`, by `A011866.P10048712855091218322.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011866.P10048712855091218322

`floor(n*(n-1)/13)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011866

/-- `floor(n*(n-1)/13)` -/
def P10048712855091218322.Spec : Prop :=
  ∀ n, P10048712855091218322.a n = A011866 n

theorem P10048712855091218322.correct : P10048712855091218322.Spec := by
  intro n
  simp only [A011866]

end A011866

/-! ## A011866.P18313704070419032528

`∑[A002264(∑[(n%13)%2])]`
-/

namespace A011866.P18313704070419032528
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 13 % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011866.P18313704070419032528

namespace A011866

/-- `∑[A002264(∑[(n%13)%2])]` -/
def P18313704070419032528.Spec : Prop :=
  ∀ n, P18313704070419032528.a n = A011866 n

end A011866

/-! ## A011866.P2003558332490069741

`∑[floor(A046092(n+1)/(13*(n+1)))]`
-/

namespace A011866.P2003558332490069741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046092 (n + 1) : ℚ) / (13 * (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011866.P2003558332490069741

namespace A011866

/-- `∑[floor(A046092(n+1)/(13*(n+1)))]` -/
def P2003558332490069741.Spec : Prop :=
  ∀ n, P2003558332490069741.a n = A011866 n

end A011866

/-! ## A011866.P270351367445757988

`∑[∑[char[A007494(3*(n+1))+n+n]]]`
-/

namespace A011866.P270351367445757988
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (3 * (n + 1)) + (n : ℤ) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011866.P270351367445757988

namespace A011866

/-- `∑[∑[char[A007494(3*(n+1))+n+n]]]` -/
def P270351367445757988.Spec : Prop :=
  ∀ n, (P270351367445757988.a n : ℤ) = A011866 n

end A011866

/-! ## A011866.P5824321525765342874

`∑[∑[A144600(n+1)]]`
-/

namespace A011866.P5824321525765342874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144600 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011866.P5824321525765342874

namespace A011866

/-- `∑[∑[A144600(n+1)]]` -/
def P5824321525765342874.Spec : Prop :=
  ∀ n, P5824321525765342874.a n = A011866 n

end A011866

/-! ## A011866.P14679872120133635516

`∑[A002265(A057363(n+2))]`
-/

namespace A011866.P14679872120133635516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A057363 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011866.P14679872120133635516

namespace A011866

/-- `∑[A002265(A057363(n+2))]` -/
def P14679872120133635516.Spec : Prop :=
  ∀ n, P14679872120133635516.a n = A011866 n

end A011866

/-! ## A011866.P17178658761527646399

`A002265(A057363(∑[n]-n))`
-/

namespace A011866.P17178658761527646399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A057363 (∑ j ∈ Finset.range (n + 1), f1 j - n)).toNat

end

end A011866.P17178658761527646399

namespace A011866

/-- `A002265(A057363(∑[n]-n))` -/
def P17178658761527646399.Spec : Prop :=
  ∀ n, P17178658761527646399.a n = A011866 n

end A011866

/-! ## A011866.P9415793677167727056

`∑[A002266(A093697(n+1))]`
-/

namespace A011866.P9415793677167727056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A093697 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011866.P9415793677167727056

namespace A011866

/-- `∑[A002266(A093697(n+1))]` -/
def P9415793677167727056.Spec : Prop :=
  ∀ n, P9415793677167727056.a n = A011866 n

end A011866

/-! ## A011866.P17435026460856768372

`∑[∑[A277149(A160749(n))]]`
-/

namespace A011866.P17435026460856768372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277149 (A160749 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011866.P17435026460856768372

namespace A011866

/-- `∑[∑[A277149(A160749(n))]]` -/
def P17435026460856768372.Spec : Prop :=
  ∀ n, P17435026460856768372.a n = A011866 n

end A011866

/-!
# A011867: a(n) = floor(n*(n-1)/14).

The programs for A011867, the canonical program `A011867.P5133764623954988162` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011867 has offset 0).

The definition of A011867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/14)` (program `A011867.P5133764623954988162`, by `A011867.P5133764623954988162.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011867.P5133764623954988162

`floor(n*(n-1)/14)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011867

/-- `floor(n*(n-1)/14)` -/
def P5133764623954988162.Spec : Prop :=
  ∀ n, P5133764623954988162.a n = A011867 n

theorem P5133764623954988162.correct : P5133764623954988162.Spec := by
  intro n
  simp only [A011867]

end A011867

/-! ## A011867.P4471780867977310908

`2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=2, a(7)=3, a(8)=4`
-/

namespace A011867.P4471780867977310908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 1, 2, 3, 4] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 7) - 2 * a (n - 8) + a (n - 9)

end

end A011867.P4471780867977310908

namespace A011867

/-- `2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` -/
def P4471780867977310908.Spec : Prop :=
  ∀ n, P4471780867977310908.a n = A011867 n

end A011867

/-! ## A011867.P5911833328705753001

`round(a(n-1)+(n-1)/7)` with `a(0)=0`
-/

namespace A011867.P5911833328705753001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + ((n : ℤ) - 1 : ℚ) / 7)

end

end A011867.P5911833328705753001

namespace A011867

/-- `round(a(n-1)+(n-1)/7)` -/
def P5911833328705753001.Spec : Prop :=
  ∀ n, P5911833328705753001.a n = A011867 n

end A011867

/-! ## A011867.P3644265297166986909

`a(n-1)-floor((4-n)/7)` with `a(0)=0`
-/

namespace A011867.P3644265297166986909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ⌊(4 - (n : ℤ) : ℚ) / 7⌋

end

end A011867.P3644265297166986909

namespace A011867

/-- `a(n-1)-floor((4-n)/7)` -/
def P3644265297166986909.Spec : Prop :=
  ∀ n, P3644265297166986909.a n = A011867 n

end A011867

/-! ## A011867.P17518628359138121659

`∑[A004776(n+1)-n]`
-/

namespace A011867.P17518628359138121659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004776 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011867.P17518628359138121659

namespace A011867

/-- `∑[A004776(n+1)-n]` -/
def P17518628359138121659.Spec : Prop :=
  ∀ n, P17518628359138121659.a n = A011867 n

end A011867

/-! ## A011867.P5038518362629879985

`∑[3*(comp[A004770(n+1)]-n)]/3`
-/

namespace A011867.P5038518362629879985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A011867.P5038518362629879985

namespace A011867

/-- `∑[3*(comp[A004770(n+1)]-n)]/3` -/
def P5038518362629879985.Spec : Prop :=
  ∀ n, P5038518362629879985.a n = (A011867 n : ℚ)

end A011867

/-! ## A011867.P16376975930650821018

`A174738(n+2)`
-/

namespace A011867.P16376975930650821018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (n + 2)

end

end A011867.P16376975930650821018

namespace A011867

/-- `A174738(n+2)` -/
def P16376975930650821018.Spec : Prop :=
  ∀ n, P16376975930650821018.a n = A011867 n

end A011867

/-! ## A011867.P467796850634083024

`∑[A132270(n+3)]`
-/

namespace A011867.P467796850634083024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011867.P467796850634083024

namespace A011867

/-- `∑[A132270(n+3)]` -/
def P467796850634083024.Spec : Prop :=
  ∀ n, P467796850634083024.a n = A011867 n

end A011867

/-! ## A011867.P11615262189664423479

`∑[∑[A082784(n+2)]]`
-/

namespace A011867.P11615262189664423479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011867.P11615262189664423479

namespace A011867

/-- `∑[∑[A082784(n+2)]]` -/
def P11615262189664423479.Spec : Prop :=
  ∀ n, P11615262189664423479.a n = A011867 n

end A011867

/-! ## A011867.P13569924249936847163

`A008725(n+2)-(n+3)`
-/

namespace A011867.P13569924249936847163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008725 (n + 2) - (n + 3 : ℤ)

end

end A011867.P13569924249936847163

namespace A011867

/-- `A008725(n+2)-(n+3)` -/
def P13569924249936847163.Spec : Prop :=
  ∀ n, P13569924249936847163.a n = A011867 n

end A011867

/-! ## A011867.P2890775943268666988

`(A008814(n+2)-(n+3))/2`
-/

namespace A011867.P2890775943268666988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008814 (n + 2) - (n + 3 : ℤ) : ℚ) / 2

end

end A011867.P2890775943268666988

namespace A011867

/-- `(A008814(n+2)-(n+3))/2` -/
def P2890775943268666988.Spec : Prop :=
  ∀ n, P2890775943268666988.a n = (A011867 n : ℚ)

end A011867

/-! ## A011867.P10695531053179346982

`A008721(2*(n+2))-(n+3)`
-/

namespace A011867.P10695531053179346982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008721 (2 * (n + 2)) - (n + 3 : ℤ)

end

end A011867.P10695531053179346982

namespace A011867

/-- `A008721(2*(n+2))-(n+3)` -/
def P10695531053179346982.Spec : Prop :=
  ∀ n, P10695531053179346982.a n = A011867 n

end A011867

/-! ## A011867.P6146986863477891594

`A004526(A011860(n))`
-/

namespace A011867.P6146986863477891594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011860 n).toNat

end

end A011867.P6146986863477891594

namespace A011867

/-- `A004526(A011860(n))` -/
def P6146986863477891594.Spec : Prop :=
  ∀ n, P6146986863477891594.a n = A011867 n

end A011867

/-! ## A011867.P11848685404861553550

`A002264(∑[A057357(n)])`
-/

namespace A011867.P11848685404861553550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011867.P11848685404861553550

namespace A011867

/-- `A002264(∑[A057357(n)])` -/
def P11848685404861553550.Spec : Prop :=
  ∀ n, P11848685404861553550.a n = A011867 n

end A011867

/-! ## A011867.P15134295880893924789

`A008620(∑[A057357(n)])-1`
-/

namespace A011867.P15134295880893924789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A011867.P15134295880893924789

namespace A011867

/-- `A008620(∑[A057357(n)])-1` -/
def P15134295880893924789.Spec : Prop :=
  ∀ n, P15134295880893924789.a n = A011867 n

end A011867

/-! ## A011867.P3894065467970574424

`A002265(2*A011860(n))`
-/

namespace A011867.P3894065467970574424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A011860 n).toNat

end

end A011867.P3894065467970574424

namespace A011867

/-- `A002265(2*A011860(n))` -/
def P3894065467970574424.Spec : Prop :=
  ∀ n, P3894065467970574424.a n = A011867 n

end A011867

/-! ## A011867.P14158949171356491104

`A002265(Δ[2*A011903(n)])`
-/

namespace A011867.P14158949171356491104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A011867.P14158949171356491104

namespace A011867

/-- `A002265(Δ[2*A011903(n)])` -/
def P14158949171356491104.Spec : Prop :=
  ∀ n, P14158949171356491104.a n = A011867 n

end A011867

/-! ## A011867.P2894275492761909704

`A132270(∑[abs(1-n)])`
-/

namespace A011867.P2894275492761909704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011867.P2894275492761909704

namespace A011867

/-- `A132270(∑[abs(1-n)])` -/
def P2894275492761909704.Spec : Prop :=
  ∀ n, P2894275492761909704.a n = A011867 n

end A011867

/-!
# A011868: a(n) = floor(n*(n-1)/15).

The programs for A011868, the canonical program `A011868.P10020677456180101080` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011868 has offset 0).

The definition of A011868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/15)` (program `A011868.P10020677456180101080`, by `A011868.P10020677456180101080.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011868.P10020677456180101080

`floor(n*(n-1)/15)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011868

/-- `floor(n*(n-1)/15)` -/
def P10020677456180101080.Spec : Prop :=
  ∀ n, P10020677456180101080.a n = A011868 n

theorem P10020677456180101080.correct : P10020677456180101080.Spec := by
  intro n
  simp only [A011868]

end A011868

/-! ## A011868.P3401768696924068426

`A319973(2*n+3)+A011883(n)`
-/

namespace A011868.P3401768696924068426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319973 (2 * n + 3) + A011883 n

end

end A011868.P3401768696924068426

namespace A011868

/-- `A319973(2*n+3)+A011883(n)` -/
def P3401768696924068426.Spec : Prop :=
  ∀ n, P3401768696924068426.a n = A011868 n

end A011868

/-! ## A011868.P9992783407870267712

`A004523(∑[floor((n+1)/5)])`
-/

namespace A011868.P9992783407870267712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011868.P9992783407870267712

namespace A011868

/-- `A004523(∑[floor((n+1)/5)])` -/
def P9992783407870267712.Spec : Prop :=
  ∀ n, P9992783407870267712.a n = A011868 n

end A011868

/-! ## A011868.P7409017844176329809

`A004523(A130520(n+1))%(n+1)²`
-/

namespace A011868.P7409017844176329809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004523 (A130520 (n + 1)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A011868.P7409017844176329809

namespace A011868

/-- `A004523(A130520(n+1))%(n+1)²` -/
def P7409017844176329809.Spec : Prop :=
  ∀ n, P7409017844176329809.a n = A011868 n

end A011868

/-! ## A011868.P10031082676760723744

`A004524(∑[A004396(floor(2*n/5))])`
-/

namespace A011868.P10031082676760723744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ⌊2 * ((n : ℚ) / 5)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011868.P10031082676760723744

namespace A011868

/-- `A004524(∑[A004396(floor(2*n/5))])` -/
def P10031082676760723744.Spec : Prop :=
  ∀ n, P10031082676760723744.a n = A011868 n

end A011868

/-! ## A011868.P547864792825328856

`A057354(∑[floor(n/3)])`
-/

namespace A011868.P547864792825328856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011868.P547864792825328856

namespace A011868

/-- `A057354(∑[floor(n/3)])` -/
def P547864792825328856.Spec : Prop :=
  ∀ n, P547864792825328856.a n = A011868 n

end A011868

/-! ## A011868.P5895858219549623389

`A002264(round(2/5*C(n, 2)))`
-/

namespace A011868.P5895858219549623389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway ((2 : ℚ) / 5 * (Nat.choose n 2 : ℚ))).toNat

end

end A011868.P5895858219549623389

namespace A011868

/-- `A002264(round(2/5*C(n, 2)))` -/
def P5895858219549623389.Spec : Prop :=
  ∀ n, P5895858219549623389.a n = A011868 n

end A011868

/-! ## A011868.P797877292467849085

`A002264(A011858(n))`
-/

namespace A011868.P797877292467849085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A011858 n).toNat

end

end A011868.P797877292467849085

namespace A011868

/-- `A002264(A011858(n))` -/
def P797877292467849085.Spec : Prop :=
  ∀ n, P797877292467849085.a n = A011868 n

end A011868

/-! ## A011868.P15118766867727827545

`A002264(∑[A057354(n)])`
-/

namespace A011868.P15118766867727827545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011868.P15118766867727827545

namespace A011868

/-- `A002264(∑[A057354(n)])` -/
def P15118766867727827545.Spec : Prop :=
  ∀ n, P15118766867727827545.a n = A011868 n

end A011868

/-! ## A011868.P907048550602770712

`A002264(∑[A002266(2*n)])`
-/

namespace A011868.P907048550602770712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011868.P907048550602770712

namespace A011868

/-- `A002264(∑[A002266(2*n)])` -/
def P907048550602770712.Spec : Prop :=
  ∀ n, P907048550602770712.a n = A011868 n

end A011868

/-! ## A011868.P14678884758405007132

`A002264(2*A130520(n+1))`
-/

namespace A011868.P14678884758405007132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A130520 (n + 1)).toNat

end

end A011868.P14678884758405007132

namespace A011868

/-- `A002264(2*A130520(n+1))` -/
def P14678884758405007132.Spec : Prop :=
  ∀ n, P14678884758405007132.a n = A011868 n

end A011868

/-! ## A011868.P903178936849899528

`A002264(∑[A002264(floor(6*n/5))])`
-/

namespace A011868.P903178936849899528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ⌊6 * ((n : ℚ) / 5)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011868.P903178936849899528

namespace A011868

/-- `A002264(∑[A002264(floor(6*n/5))])` -/
def P903178936849899528.Spec : Prop :=
  ∀ n, P903178936849899528.a n = A011868 n

end A011868

/-! ## A011868.P3285343009050421017

`A002264(A130520(n+2)+A130520(n))`
-/

namespace A011868.P3285343009050421017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A130520 (n + 2) + A130520 n).toNat

end

end A011868.P3285343009050421017

namespace A011868

/-- `A002264(A130520(n+2)+A130520(n))` -/
def P3285343009050421017.Spec : Prop :=
  ∀ n, P3285343009050421017.a n = A011868 n

end A011868

/-! ## A011868.P10647522055477648318

`A002266(A128422(n+1))`
-/

namespace A011868.P10647522055477648318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A128422 (n + 1)).toNat

end

end A011868.P10647522055477648318

namespace A011868

/-- `A002266(A128422(n+1))` -/
def P10647522055477648318.Spec : Prop :=
  ∀ n, P10647522055477648318.a n = A011868 n

end A011868

/-! ## A011868.P8326253827423587361

`A002266(A032765(n)-n)`
-/

namespace A011868.P8326253827423587361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A032765 n - (n : ℤ)).toNat

end

end A011868.P8326253827423587361

namespace A011868

/-- `A002266(A032765(n)-n)` -/
def P8326253827423587361.Spec : Prop :=
  ∀ n, P8326253827423587361.a n = A011868 n

end A011868

/-! ## A011868.P15452946972334722622

`A002266(A174709(2*n+1))`
-/

namespace A011868.P15452946972334722622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A174709 (2 * n + 1)).toNat

end

end A011868.P15452946972334722622

namespace A011868

/-- `A002266(A174709(2*n+1))` -/
def P15452946972334722622.Spec : Prop :=
  ∀ n, P15452946972334722622.a n = A011868 n

end A011868

/-! ## A011868.P7291425977380054978

`A002266(A000212(n+1)-n)`
-/

namespace A011868.P7291425977380054978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A000212 (n + 1) - (n : ℤ)).toNat

end

end A011868.P7291425977380054978

namespace A011868

/-- `A002266(A000212(n+1)-n)` -/
def P7291425977380054978.Spec : Prop :=
  ∀ n, P7291425977380054978.a n = A011868 n

end A011868

/-!
# A011869: a(n) = floor(n*(n-1)/16).

The programs for A011869, the canonical program `A011869.P10651102365039520402` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011869 has offset 0).

The definition of A011869 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/16)` (program `A011869.P10651102365039520402`, by `A011869.P10651102365039520402.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011869.P10651102365039520402

`floor(n*(n-1)/16)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011869

/-- `floor(n*(n-1)/16)` -/
def P10651102365039520402.Spec : Prop :=
  ∀ n, P10651102365039520402.a n = A011869 n

theorem P10651102365039520402.correct : P10651102365039520402.Spec := by
  intro n
  simp only [A011869]

end A011869

/-! ## A011869.P10829413277306104139

`and(n²-n, -16)/16`
-/

namespace A011869.P10829413277306104139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land ((n ^ 2 : ℤ) - (n : ℤ)) (-16) : ℚ) / 16

end

end A011869.P10829413277306104139

namespace A011869

/-- `and(n²-n, -16)/16` -/
def P10829413277306104139.Spec : Prop :=
  ∀ n, P10829413277306104139.a n = (A011869 n : ℚ)

end A011869

/-! ## A011869.P13220651535521567038

`ceil((C(n, 2)+1)/8)-1`
-/

namespace A011869.P13220651535521567038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 + 1 : ℚ) / 8⌉ - 1

end

end A011869.P13220651535521567038

namespace A011869

/-- `ceil((C(n, 2)+1)/8)-1` -/
def P13220651535521567038.Spec : Prop :=
  ∀ n, P13220651535521567038.a n = A011869 n

end A011869

/-! ## A011869.P329173374396405782

`floor((n²/(4*n+2))²)%(n+1)²`
-/

namespace A011869.P329173374396405782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n ^ 2 : ℚ) / (4 * n + 2 : ℚ)) ^ 2⌋ ((n + 1) ^ 2 : ℤ)

end

end A011869.P329173374396405782

namespace A011869

/-- `floor((n²/(4*n+2))²)%(n+1)²` -/
def P329173374396405782.Spec : Prop :=
  ∀ n, P329173374396405782.a n = A011869 n

end A011869

/-! ## A011869.P8668625354825275507

`A004526(A011861(n))`
-/

namespace A011869.P8668625354825275507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011861 n).toNat

end

end A011869.P8668625354825275507

namespace A011869

/-- `A004526(A011861(n))` -/
def P8668625354825275507.Spec : Prop :=
  ∀ n, P8668625354825275507.a n = A011869 n

end A011869

/-! ## A011869.P8529381957314707577

`A004526(floor(∑[A004524(n)/2]))`
-/

namespace A011869.P8529381957314707577
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004524 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A011869.P8529381957314707577

namespace A011869

/-- `A004526(floor(∑[A004524(n)/2]))` -/
def P8529381957314707577.Spec : Prop :=
  ∀ n, P8529381957314707577.a n = A011869 n

end A011869

/-! ## A011869.P13926202759904843313

`A004526(∑[A057354(A057361(n+1))])`
-/

namespace A011869.P13926202759904843313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A057361 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011869.P13926202759904843313

namespace A011869

/-- `A004526(∑[A057354(A057361(n+1))])` -/
def P13926202759904843313.Spec : Prop :=
  ∀ n, P13926202759904843313.a n = A011869 n

end A011869

/-! ## A011869.P1701820432903136840

`A008683(A039787(n+1))+A008619(A011861(n))`
-/

namespace A011869.P1701820432903136840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A039787 (n + 1)).toNat + A008619 (A011861 n).toNat

end

end A011869.P1701820432903136840

namespace A011869

/-- `A008683(A039787(n+1))+A008619(A011861(n))` -/
def P1701820432903136840.Spec : Prop :=
  ∀ n, P1701820432903136840.a n = A011869 n

end A011869

/-! ## A011869.P8229928672861047196

`A002264(floor(∑[A057353(n)²]/(n+1)))`
-/

namespace A011869.P8229928672861047196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A011869.P8229928672861047196

namespace A011869

/-- `A002264(floor(∑[A057353(n)²]/(n+1)))` -/
def P8229928672861047196.Spec : Prop :=
  ∀ n, P8229928672861047196.a n = A011869 n

end A011869

/-! ## A011869.P7086599877294581648

`A002265(A011848(n))`
-/

namespace A011869.P7086599877294581648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A011848 n).toNat

end

end A011869.P7086599877294581648

namespace A011869

/-- `A002265(A011848(n))` -/
def P7086599877294581648.Spec : Prop :=
  ∀ n, P7086599877294581648.a n = A011869 n

end A011869

/-! ## A011869.P3986935372106451924

`A002265(∑[A004524(n)])`
-/

namespace A011869.P3986935372106451924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011869.P3986935372106451924

namespace A011869

/-- `A002265(∑[A004524(n)])` -/
def P3986935372106451924.Spec : Prop :=
  ∀ n, P3986935372106451924.a n = A011869 n

end A011869

/-! ## A011869.P7187782956799474217

`A002265(2*A011861(n))`
-/

namespace A011869.P7187782956799474217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A011861 n).toNat

end

end A011869.P7187782956799474217

namespace A011869

/-- `A002265(2*A011861(n))` -/
def P7187782956799474217.Spec : Prop :=
  ∀ n, P7187782956799474217.a n = A011869 n

end A011869

/-! ## A011869.P15805218646188571005

`A110657(or(3, A011848(n)))`
-/

namespace A011869.P15805218646188571005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (Int.lor 3 (A011848 n)).toNat

end

end A011869.P15805218646188571005

namespace A011869

/-- `A110657(or(3, A011848(n)))` -/
def P15805218646188571005.Spec : Prop :=
  ∀ n, P15805218646188571005.a n = A011869 n

end A011869

/-! ## A011869.P7089691831007240086

`A002265(∑[A173711(2*n)])`
-/

namespace A011869.P7089691831007240086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011869.P7089691831007240086

namespace A011869

/-- `A002265(∑[A173711(2*n)])` -/
def P7089691831007240086.Spec : Prop :=
  ∀ n, P7089691831007240086.a n = A011869 n

end A011869

/-! ## A011869.P5437689539182865808

`A002265(A118729(2*(n+1)))`
-/

namespace A011869.P5437689539182865808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A118729 (2 * (n + 1))).toNat

end

end A011869.P5437689539182865808

namespace A011869

/-- `A002265(A118729(2*(n+1)))` -/
def P5437689539182865808.Spec : Prop :=
  ∀ n, P5437689539182865808.a n = A011869 n

end A011869

/-! ## A011869.P16961284491584581486

`A271484(2*A011861(n)+1)`
-/

namespace A011869.P16961284491584581486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271484 (2 * A011861 n + 1).toNat

end

end A011869.P16961284491584581486

namespace A011869

/-- `A271484(2*A011861(n)+1)` -/
def P16961284491584581486.Spec : Prop :=
  ∀ n, P16961284491584581486.a n = A011869 n

end A011869

/-! ## A011869.P17423784350758979061

`A002265((A215098(n)-n)/2)`
-/

namespace A011869.P17423784350758979061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway ((A215098 n - (n : ℤ) : ℚ) / 2)).toNat

end

end A011869.P17423784350758979061

namespace A011869

/-- `A002265((A215098(n)-n)/2)` -/
def P17423784350758979061.Spec : Prop :=
  ∀ n, P17423784350758979061.a n = A011869 n

end A011869

/-! ## A011869.P1576677644554557027

`A122461(∑[A173711(2*n)])/2`
-/

namespace A011869.P1576677644554557027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122461 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A011869.P1576677644554557027

namespace A011869

/-- `A122461(∑[A173711(2*n)])/2` -/
def P1576677644554557027.Spec : Prop :=
  ∀ n, P1576677644554557027.a n = (A011869 n : ℚ)

end A011869

/-! ## A011869.P16109172996866049683

`A002265(A054925(n+2)-(n+1))`
-/

namespace A011869.P16109172996866049683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A054925 (n + 2) - (n + 1 : ℤ)).toNat

end

end A011869.P16109172996866049683

namespace A011869

/-- `A002265(A054925(n+2)-(n+1))` -/
def P16109172996866049683.Spec : Prop :=
  ∀ n, P16109172996866049683.a n = A011869 n

end A011869

/-! ## A011869.P11694600083839896303

`A002265(A130519(n+1)+A130519(n))`
-/

namespace A011869.P11694600083839896303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A130519 (n + 1) + A130519 n).toNat

end

end A011869.P11694600083839896303

namespace A011869

/-- `A002265(A130519(n+1)+A130519(n))` -/
def P11694600083839896303.Spec : Prop :=
  ∀ n, P11694600083839896303.a n = A011869 n

end A011869

/-!
# A011870: a(n) = floor(n*(n-1)/17).

The programs for A011870, the canonical program `A011870.P11064837113260205212` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011870 has offset 0).

The definition of A011870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/17)` (program `A011870.P11064837113260205212`, by `A011870.P11064837113260205212.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011870.P11064837113260205212

`floor(n*(n-1)/17)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011870

/-- `floor(n*(n-1)/17)` -/
def P11064837113260205212.Spec : Prop :=
  ∀ n, P11064837113260205212.a n = A011870 n

theorem P11064837113260205212.correct : P11064837113260205212.Spec := by
  intro n
  simp only [A011870]

end A011870

/-! ## A011870.P16817547912465808824

`round((2*C(n, 2)-5)/17)`
-/

namespace A011870.P16817547912465808824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * Nat.choose n 2 : ℤ) - 5 : ℚ) / 17)

end

end A011870.P16817547912465808824

namespace A011870

/-- `round((2*C(n, 2)-5)/17)` -/
def P16817547912465808824.Spec : Prop :=
  ∀ n, P16817547912465808824.a n = A011870 n

end A011870

/-! ## A011870.P9320139403832548855

`floor(A002061(n)/17)%∑[n+1]`
-/

namespace A011870.P9320139403832548855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A002061 n : ℚ) / 17⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A011870.P9320139403832548855

namespace A011870

/-- `floor(A002061(n)/17)%∑[n+1]` -/
def P9320139403832548855.Spec : Prop :=
  ∀ n, P9320139403832548855.a n = A011870 n

end A011870

/-! ## A011870.P1203580181309137665

`floor(A002061(n)/17)*A057427(n)`
-/

namespace A011870.P1203580181309137665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002061 n : ℚ) / 17⌋ * A057427 n

end

end A011870.P1203580181309137665

namespace A011870

/-- `floor(A002061(n)/17)*A057427(n)` -/
def P1203580181309137665.Spec : Prop :=
  ∀ n, P1203580181309137665.a n = A011870 n

end A011870

/-! ## A011870.P9462998269474458081

`A001222(((-1)^n)²)+floor(A002061(n)/17)`
-/

namespace A011870.P9462998269474458081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (((-1) ^ n) ^ 2).toNat + ⌊(A002061 n : ℚ) / 17⌋

end

end A011870.P9462998269474458081

namespace A011870

/-- `A001222(((-1)^n)²)+floor(A002061(n)/17)` -/
def P9462998269474458081.Spec : Prop :=
  ∀ n, P9462998269474458081.a n = A011870 n

end A011870

/-! ## A011870.P10032096388627392197

`floor(A002061(n)/17)*A014963(4*n+2)`
-/

namespace A011870.P10032096388627392197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002061 n : ℚ) / 17⌋ * A014963 (4 * n + 2)

end

end A011870.P10032096388627392197

namespace A011870

/-- `floor(A002061(n)/17)*A014963(4*n+2)` -/
def P10032096388627392197.Spec : Prop :=
  ∀ n, P10032096388627392197.a n = A011870 n

end A011870

/-! ## A011870.P17764784994911650013

`A061397(∑[n+1])!*floor(A002061(n)/17)`
-/

namespace A011870.P17764784994911650013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A061397 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ) * ⌊(A002061 n : ℚ) / 17⌋

end

end A011870.P17764784994911650013

namespace A011870

/-- `A061397(∑[n+1])!*floor(A002061(n)/17)` -/
def P17764784994911650013.Spec : Prop :=
  ∀ n, P17764784994911650013.a n = A011870 n

end A011870

/-!
# A011871: [ n(n-1)/18 ].

The programs for A011871, the canonical program `A011871.P6384791445688610294` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011871 has offset 0).

The definition of A011871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011871.P6384791445688610294

`floor(n*(n-1)/18)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011871

/-- `floor(n*(n-1)/18)` -/
def P6384791445688610294.Spec : Prop :=
  ∀ n, P6384791445688610294.a n = A011871 n

theorem P6384791445688610294.correct : P6384791445688610294.Spec := by
  intro n
  simp only [A011871]

end A011871

/-! ## A011871.P11119377524542611289

`round((C(n, 2)-2)/9)`
-/

namespace A011871.P11119377524542611289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose n 2 : ℤ) - 2 : ℚ) / 9)

end

end A011871.P11119377524542611289

namespace A011871

/-- `round((C(n, 2)-2)/9)` -/
def P11119377524542611289.Spec : Prop :=
  ∀ n, P11119377524542611289.a n = A011871 n

end A011871

/-! ## A011871.P9158916419405036488

`ceil((C(n, 2)+1)/9)-1`
-/

namespace A011871.P9158916419405036488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 + 1 : ℚ) / 9⌉ - 1

end

end A011871.P9158916419405036488

namespace A011871

/-- `ceil((C(n, 2)+1)/9)-1` -/
def P9158916419405036488.Spec : Prop :=
  ∀ n, P9158916419405036488.a n = A011871 n

end A011871

/-! ## A011871.P8968559568603888074

`round(∑[∑[2-gcd(3, n)]]/3)`
-/

namespace A011871.P8968559568603888074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3)

end

end A011871.P8968559568603888074

namespace A011871

/-- `round(∑[∑[2-gcd(3, n)]]/3)` -/
def P8968559568603888074.Spec : Prop :=
  ∀ n, P8968559568603888074.a n = A011871 n

end A011871

/-! ## A011871.P6449980319979788957

`round(n²%(∑[n]+2)/9)`
-/

namespace A011871.P6449980319979788957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 % (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℕ) : ℚ) / 9)

end

end A011871.P6449980319979788957

namespace A011871

/-- `round(n²%(∑[n]+2)/9)` -/
def P6449980319979788957.Spec : Prop :=
  ∀ n, P6449980319979788957.a n = A011871 n

end A011871

/-! ## A011871.P6777443732128120408

`∑[floor(((n+1)/3-a(n-1))/2)]` with `a(0)=0`
-/

namespace A011871.P6777443732128120408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊((n + 1 : ℚ) / 3 - (f1 (n - 1) : ℚ)) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011871.P6777443732128120408

namespace A011871

/-- `∑[floor(((n+1)/3-a(n-1))/2)]` -/
def P6777443732128120408.Spec : Prop :=
  ∀ n, P6777443732128120408.a n = A011871 n

end A011871

/-! ## A011871.P12351377323849227914

`A004526(A011862(n))`
-/

namespace A011871.P12351377323849227914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011862 n).toNat

end

end A011871.P12351377323849227914

namespace A011871

/-- `A004526(A011862(n))` -/
def P12351377323849227914.Spec : Prop :=
  ∀ n, P12351377323849227914.a n = A011871 n

end A011871

/-! ## A011871.P10474377391440449459

`A004526(∑[A004526(A289133(2*n+1))])`
-/

namespace A011871.P10474377391440449459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A289133 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011871.P10474377391440449459

namespace A011871

/-- `A004526(∑[A004526(A289133(2*n+1))])` -/
def P10474377391440449459.Spec : Prop :=
  ∀ n, P10474377391440449459.a n = A011871 n

end A011871

/-! ## A011871.P9432177041883619777

`∑[val(A051109(n+2), 8)]`
-/

namespace A011871.P9432177041883619777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051109 (n + 2)).toNat 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011871.P9432177041883619777

namespace A011871

/-- `∑[val(A051109(n+2), 8)]` -/
def P9432177041883619777.Spec : Prop :=
  ∀ n, (P9432177041883619777.a n : ℤ) = A011871 n

end A011871

/-! ## A011871.P7557672061276667273

`A002264(∑[floor(n/3)])`
-/

namespace A011871.P7557672061276667273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011871.P7557672061276667273

namespace A011871

/-- `A002264(∑[floor(n/3)])` -/
def P7557672061276667273.Spec : Prop :=
  ∀ n, P7557672061276667273.a n = A011871 n

end A011871

/-! ## A011871.P10004799775901397150

`A008620(∑[A008620(n)-1])-1`
-/

namespace A011871.P10004799775901397150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A011871.P10004799775901397150

namespace A011871

/-- `A008620(∑[A008620(n)-1])-1` -/
def P10004799775901397150.Spec : Prop :=
  ∀ n, P10004799775901397150.a n = A011871 n

end A011871

/-! ## A011871.P9714950944694170595

`A002265(A000212(n)-A056838(n+1))`
-/

namespace A011871.P9714950944694170595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000212 n - A056838 (n + 1)).toNat

end

end A011871.P9714950944694170595

namespace A011871

/-- `A002265(A000212(n)-A056838(n+1))` -/
def P9714950944694170595.Spec : Prop :=
  ∀ n, P9714950944694170595.a n = A011871 n

end A011871

/-! ## A011871.P7008304325629209650

`A230197(A097921(n))`
-/

namespace A011871.P7008304325629209650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230197 (A097921 n).toNat

end

end A011871.P7008304325629209650

namespace A011871

/-- `A230197(A097921(n))` -/
def P7008304325629209650.Spec : Prop :=
  ∀ n, P7008304325629209650.a n = A011871 n

end A011871

/-! ## A011871.P12388709562107559663

`A230196(A097922(n))`
-/

namespace A011871.P12388709562107559663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230196 (A097922 n).toNat

end

end A011871.P12388709562107559663

namespace A011871

/-- `A230196(A097922(n))` -/
def P12388709562107559663.Spec : Prop :=
  ∀ n, P12388709562107559663.a n = A011871 n

end A011871

/-! ## A011871.P1323977994719643746

`A152467(A128422(n+1))`
-/

namespace A011871.P1323977994719643746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A128422 (n + 1)).toNat

end

end A011871.P1323977994719643746

namespace A011871

/-- `A152467(A128422(n+1))` -/
def P1323977994719643746.Spec : Prop :=
  ∀ n, P1323977994719643746.a n = A011871 n

end A011871

/-! ## A011871.P9846450099286729166

`A152467(A174709(2*n+1))`
-/

namespace A011871.P9846450099286729166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A174709 (2 * n + 1)).toNat

end

end A011871.P9846450099286729166

namespace A011871

/-- `A152467(A174709(2*n+1))` -/
def P9846450099286729166.Spec : Prop :=
  ∀ n, P9846450099286729166.a n = A011871 n

end A011871

/-! ## A011871.P7592588143000263234

`A152467(∑[2*A152467(2*n)])`
-/

namespace A011871.P7592588143000263234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152467 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011871.P7592588143000263234

namespace A011871

/-- `A152467(∑[2*A152467(2*n)])` -/
def P7592588143000263234.Spec : Prop :=
  ∀ n, P7592588143000263234.a n = A011871 n

end A011871

/-! ## A011871.P1090941584104729868

`A152467(∑[A152467(8*A004526(n))])`
-/

namespace A011871.P1090941584104729868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (8 * A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011871.P1090941584104729868

namespace A011871

/-- `A152467(∑[A152467(8*A004526(n))])` -/
def P1090941584104729868.Spec : Prop :=
  ∀ n, P1090941584104729868.a n = A011871 n

end A011871

/-! ## A011871.P13479085464882853343

`A343609(C(n, 2))`
-/

namespace A011871.P13479085464882853343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (Nat.choose n 2)

end

end A011871.P13479085464882853343

namespace A011871

/-- `A343609(C(n, 2))` -/
def P13479085464882853343.Spec : Prop :=
  ∀ n, P13479085464882853343.a n = A011871 n

end A011871

/-!
# A011872: [ n(n-1)/19 ].

The programs for A011872, the canonical program `A011872.P3253239021705461209` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011872 has offset 0).

The definition of A011872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011872.P3253239021705461209

`floor(n*(n-1)/19)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011872

/-- `floor(n*(n-1)/19)` -/
def P3253239021705461209.Spec : Prop :=
  ∀ n, P3253239021705461209.a n = A011872 n

theorem P3253239021705461209.correct : P3253239021705461209.Spec := by
  intro n
  simp only [A011872]

end A011872

/-! ## A011872.P3910956801273117814

`round((A002061(n)-10)/19)`
-/

namespace A011872.P3910956801273117814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002061 n - 10 : ℚ) / 19)

end

end A011872.P3910956801273117814

namespace A011872

/-- `round((A002061(n)-10)/19)` -/
def P3910956801273117814.Spec : Prop :=
  ∀ n, P3910956801273117814.a n = A011872 n

end A011872

/-! ## A011872.P16276541782392591757

`A057356(A057366(C(n, 2)+1))`
-/

namespace A011872.P16276541782392591757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A057366 (Nat.choose n 2 + 1)).toNat

end

end A011872.P16276541782392591757

namespace A011872

/-- `A057356(A057366(C(n, 2)+1))` -/
def P16276541782392591757.Spec : Prop :=
  ∀ n, P16276541782392591757.a n = A011872 n

end A011872

/-! ## A011872.P528994278288278904

`A110303(A002061(n))-A002061(n)`
-/

namespace A011872.P528994278288278904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (A002061 n).toNat - A002061 n

end

end A011872.P528994278288278904

namespace A011872

/-- `A110303(A002061(n))-A002061(n)` -/
def P528994278288278904.Spec : Prop :=
  ∀ n, P528994278288278904.a n = A011872 n

end A011872

/-! ## A011872.P13753277448616587964

`A036042(A245437(n))`
-/

namespace A011872.P13753277448616587964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A245437 n).toNat

end

end A011872.P13753277448616587964

namespace A011872

/-- `A036042(A245437(n))` -/
def P13753277448616587964.Spec : Prop :=
  ∀ n, P13753277448616587964.a n = A011872 n

end A011872

/-!
# A011873: a(n) = floor(n(n-1)/20).

The programs for A011873, the canonical program `A011873.P6801148493473244833` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011873 has offset 0).

The definition of A011873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/20)` (program `A011873.P6801148493473244833`, by `A011873.P6801148493473244833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011873.P6801148493473244833

`floor(n*(n-1)/20)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011873

/-- `floor(n*(n-1)/20)` -/
def P6801148493473244833.Spec : Prop :=
  ∀ n, P6801148493473244833.a n = A011873 n

theorem P6801148493473244833.correct : P6801148493473244833.Spec := by
  intro n
  simp only [A011873]

end A011873

/-! ## A011873.P10025819698134885114

`ceil((C(n, 2)-9)/10)`
-/

namespace A011873.P10025819698134885114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 2 : ℤ) - 9 : ℚ) / 10⌉

end

end A011873.P10025819698134885114

namespace A011873

/-- `ceil((C(n, 2)-9)/10)` -/
def P10025819698134885114.Spec : Prop :=
  ∀ n, P10025819698134885114.a n = A011873 n

end A011873

/-! ## A011873.P5848570992695750831

`(or(1, A130520(n+1))-1)/2`
-/

namespace A011873.P5848570992695750831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A130520 (n + 1)) - 1 : ℚ) / 2

end

end A011873.P5848570992695750831

namespace A011873

/-- `(or(1, A130520(n+1))-1)/2` -/
def P5848570992695750831.Spec : Prop :=
  ∀ n, P5848570992695750831.a n = (A011873 n : ℚ)

end A011873

/-! ## A011873.P14474473276824672917

`A000115(n)-A008619(n+1-A008616(n+1))`
-/

namespace A011873.P14474473276824672917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 n - A008619 ((n + 1 : ℤ) - A008616 (n + 1)).toNat

end

end A011873.P14474473276824672917

namespace A011873

/-- `A000115(n)-A008619(n+1-A008616(n+1))` -/
def P14474473276824672917.Spec : Prop :=
  ∀ n, P14474473276824672917.a n = A011873 n

end A011873

/-! ## A011873.P4388248504960723667

`A004526(∑[floor((n+1)/5)])`
-/

namespace A011873.P4388248504960723667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011873.P4388248504960723667

namespace A011873

/-- `A004526(∑[floor((n+1)/5)])` -/
def P4388248504960723667.Spec : Prop :=
  ∀ n, P4388248504960723667.a n = A011873 n

end A011873

/-! ## A011873.P8687806077573628375

`A008732(n+1)%A008619(A008732(n+1)+n+1)`
-/

namespace A011873.P8687806077573628375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008732 (n + 1)) (A008619 (A008732 (n + 1) + (n + 1 : ℤ)).toNat)

end

end A011873.P8687806077573628375

namespace A011873

/-- `A008732(n+1)%A008619(A008732(n+1)+n+1)` -/
def P8687806077573628375.Spec : Prop :=
  ∀ n, P8687806077573628375.a n = A011873 n

end A011873

/-! ## A011873.P10158660617364234444

`A002265(2*∑[floor((n+1)/5)])`
-/

namespace A011873.P10158660617364234444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A011873.P10158660617364234444

namespace A011873

/-- `A002265(2*∑[floor((n+1)/5)])` -/
def P10158660617364234444.Spec : Prop :=
  ∀ n, P10158660617364234444.a n = A011873 n

end A011873

/-! ## A011873.P16626471554984868522

`A002266(A011848(n))`
-/

namespace A011873.P16626471554984868522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A011848 n).toNat

end

end A011873.P16626471554984868522

namespace A011873

/-- `A002266(A011848(n))` -/
def P16626471554984868522.Spec : Prop :=
  ∀ n, P16626471554984868522.a n = A011873 n

end A011873

/-! ## A011873.P16298081541357780330

`A002266(A054925(n))`
-/

namespace A011873.P16298081541357780330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A054925 n).toNat

end

end A011873.P16298081541357780330

namespace A011873

/-- `A002266(A054925(n))` -/
def P16298081541357780330.Spec : Prop :=
  ∀ n, P16298081541357780330.a n = A011873 n

end A011873

/-! ## A011873.P1464641413701064694

`A002266(A368052(n+1))`
-/

namespace A011873.P1464641413701064694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A368052 (n + 1)).toNat

end

end A011873.P1464641413701064694

namespace A011873

/-- `A002266(A368052(n+1))` -/
def P1464641413701064694.Spec : Prop :=
  ∀ n, P1464641413701064694.a n = A011873 n

end A011873

/-! ## A011873.P17413577958385708529

`A002266(A118729(2*(n+1)))`
-/

namespace A011873.P17413577958385708529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A118729 (2 * (n + 1))).toNat

end

end A011873.P17413577958385708529

namespace A011873

/-- `A002266(A118729(2*(n+1)))` -/
def P17413577958385708529.Spec : Prop :=
  ∀ n, P17413577958385708529.a n = A011873 n

end A011873

/-! ## A011873.P7643377771401592081

`A002266(A002620(n)-A002265(n))`
-/

namespace A011873.P7643377771401592081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A002620 n - A002265 n).toNat

end

end A011873.P7643377771401592081

namespace A011873

/-- `A002266(A002620(n)-A002265(n))` -/
def P7643377771401592081.Spec : Prop :=
  ∀ n, P7643377771401592081.a n = A011873 n

end A011873

/-! ## A011873.P14638683306871039821

`A002266(A130519(n+1)+A130519(n))`
-/

namespace A011873.P14638683306871039821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A130519 (n + 1) + A130519 n).toNat

end

end A011873.P14638683306871039821

namespace A011873

/-- `A002266(A130519(n+1)+A130519(n))` -/
def P14638683306871039821.Spec : Prop :=
  ∀ n, P14638683306871039821.a n = A011873 n

end A011873

/-! ## A011873.P213948227969039521

`A054925(n)-A090223(A054925(n)+1)`
-/

namespace A011873.P213948227969039521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n - A090223 (A054925 n + 1).toNat

end

end A011873.P213948227969039521

namespace A011873

/-- `A054925(n)-A090223(A054925(n)+1)` -/
def P213948227969039521.Spec : Prop :=
  ∀ n, P213948227969039521.a n = A011873 n

end A011873

/-! ## A011873.P1802716035185866570

`A152467(∑[A002266(2*n)+A002266(n+1)])`
-/

namespace A011873.P1802716035185866570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (2 * n) + A002266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011873.P1802716035185866570

namespace A011873

/-- `A152467(∑[A002266(2*n)+A002266(n+1)])` -/
def P1802716035185866570.Spec : Prop :=
  ∀ n, P1802716035185866570.a n = A011873 n

end A011873

/-! ## A011873.P14563881948929662048

`A132292(A185170(n+1))`
-/

namespace A011873.P14563881948929662048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A185170 (n + 1)).toNat

end

end A011873.P14563881948929662048

namespace A011873

/-- `A132292(A185170(n+1))` -/
def P14563881948929662048.Spec : Prop :=
  ∀ n, P14563881948929662048.a n = A011873 n

end A011873

/-! ## A011873.P516652333176275221

`A059995(C(n, 2))`
-/

namespace A011873.P516652333176275221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Nat.choose n 2)

end

end A011873.P516652333176275221

namespace A011873

/-- `A059995(C(n, 2))` -/
def P516652333176275221.Spec : Prop :=
  ∀ n, P516652333176275221.a n = A011873 n

end A011873

/-! ## A011873.P2738389577629051291

`A059995(∑[n]-n)`
-/

namespace A011873.P2738389577629051291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A011873.P2738389577629051291

namespace A011873

/-- `A059995(∑[n]-n)` -/
def P2738389577629051291.Spec : Prop :=
  ∀ n, P2738389577629051291.a n = A011873 n

end A011873

/-!
# A011874: a(n) = floor(n*(n-1)/21).

The programs for A011874, the canonical program `A011874.P8879683034559682239` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011874 has offset 0).

The definition of A011874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/21)` (program `A011874.P8879683034559682239`, by `A011874.P8879683034559682239.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011874.P8879683034559682239

`floor(n*(n-1)/21)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011874

/-- `floor(n*(n-1)/21)` -/
def P8879683034559682239.Spec : Prop :=
  ∀ n, P8879683034559682239.a n = A011874 n

theorem P8879683034559682239.correct : P8879683034559682239.Spec := by
  intro n
  simp only [A011874]

end A011874

/-! ## A011874.P16920830304319242083

`A004523(round(∑[(n-1)/7]))`
-/

namespace A011874.P16920830304319242083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A011874.P16920830304319242083

namespace A011874

/-- `A004523(round(∑[(n-1)/7]))` -/
def P16920830304319242083.Spec : Prop :=
  ∀ n, P16920830304319242083.a n = A011874 n

end A011874

/-! ## A011874.P15714844319843931054

`A002264(A011860(n))`
-/

namespace A011874.P15714844319843931054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A011860 n).toNat

end

end A011874.P15714844319843931054

namespace A011874

/-- `A002264(A011860(n))` -/
def P15714844319843931054.Spec : Prop :=
  ∀ n, P15714844319843931054.a n = A011874 n

end A011874

/-! ## A011874.P17680978962245011748

`A002264(∑[∑[2-A291454(2*(n+1))]])`
-/

namespace A011874.P17680978962245011748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A291454 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011874.P17680978962245011748

namespace A011874

/-- `A002264(∑[∑[2-A291454(2*(n+1))]])` -/
def P17680978962245011748.Spec : Prop :=
  ∀ n, P17680978962245011748.a n = A011874 n

end A011874

/-! ## A011874.P7958751023779939160

`A002264(A174738(n+1)+A011867(n+1))`
-/

namespace A011874.P7958751023779939160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A174738 (n + 1) + A011867 (n + 1)).toNat

end

end A011874.P7958751023779939160

namespace A011874

/-- `A002264(A174738(n+1)+A011867(n+1))` -/
def P7958751023779939160.Spec : Prop :=
  ∀ n, P7958751023779939160.a n = A011874 n

end A011874

/-! ## A011874.P11587808340622349500

`A057356(∑[floor(n/3)])`
-/

namespace A011874.P11587808340622349500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011874.P11587808340622349500

namespace A011874

/-- `A057356(∑[floor(n/3)])` -/
def P11587808340622349500.Spec : Prop :=
  ∀ n, P11587808340622349500.a n = A011874 n

end A011874

/-! ## A011874.P13699359066880188969

`A004526(A057358(∑[A002264(n)]))`
-/

namespace A011874.P13699359066880188969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057358 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A011874.P13699359066880188969

namespace A011874

/-- `A004526(A057358(∑[A002264(n)]))` -/
def P13699359066880188969.Spec : Prop :=
  ∀ n, P13699359066880188969.a n = A011874 n

end A011874

/-! ## A011874.P12241323548115966194

`A002264(A004523(∑[A057357(n)]))`
-/

namespace A011874.P12241323548115966194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A011874.P12241323548115966194

namespace A011874

/-- `A002264(A004523(∑[A057357(n)]))` -/
def P12241323548115966194.Spec : Prop :=
  ∀ n, P12241323548115966194.a n = A011874 n

end A011874

/-! ## A011874.P13287443240464999530

`A103221(2*A011860(n))-1`
-/

namespace A011874.P13287443240464999530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * A011860 n).toNat - 1

end

end A011874.P13287443240464999530

namespace A011874

/-- `A103221(2*A011860(n))-1` -/
def P13287443240464999530.Spec : Prop :=
  ∀ n, P13287443240464999530.a n = A011874 n

end A011874

/-! ## A011874.P7284279260849414324

`A132270(A174709(2*n+1)+1)`
-/

namespace A011874.P7284279260849414324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A174709 (2 * n + 1) + 1).toNat

end

end A011874.P7284279260849414324

namespace A011874

/-- `A132270(A174709(2*n+1)+1)` -/
def P7284279260849414324.Spec : Prop :=
  ∀ n, P7284279260849414324.a n = A011874 n

end A011874

/-! ## A011874.P11761227117379079382

`A152467(A057358(A130519(2*n)))`
-/

namespace A011874.P11761227117379079382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A057358 (A130519 (2 * n)).toNat).toNat

end

end A011874.P11761227117379079382

namespace A011874

/-- `A152467(A057358(A130519(2*n)))` -/
def P11761227117379079382.Spec : Prop :=
  ∀ n, P11761227117379079382.a n = A011874 n

end A011874

/-! ## A011874.P72882105611585119

`A002264(A242062(n²-n))`
-/

namespace A011874.P72882105611585119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A242062 (n ^ 2 - n)).toNat

end

end A011874.P72882105611585119

namespace A011874

/-- `A002264(A242062(n²-n))` -/
def P72882105611585119.Spec : Prop :=
  ∀ n, P72882105611585119.a n = A011874 n

end A011874

/-!
# A011875: a(n) = floor(n*(n-1)/22).

The programs for A011875, the canonical program `A011875.P9145820491585483445` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011875 has offset 0).

The definition of A011875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/22)` (program `A011875.P9145820491585483445`, by `A011875.P9145820491585483445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011875.P9145820491585483445

`floor(n*(n-1)/22)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011875

/-- `floor(n*(n-1)/22)` -/
def P9145820491585483445.Spec : Prop :=
  ∀ n, P9145820491585483445.a n = A011875 n

theorem P9145820491585483445.correct : P9145820491585483445.Spec := by
  intro n
  simp only [A011875]

end A011875

/-! ## A011875.P4756211583481499915

`∑[floor(A289122(n+2)/2)]`
-/

namespace A011875.P4756211583481499915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A289122 (n + 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011875.P4756211583481499915

namespace A011875

/-- `∑[floor(A289122(n+2)/2)]` -/
def P4756211583481499915.Spec : Prop :=
  ∀ n, P4756211583481499915.a n = A011875 n

end A011875

/-! ## A011875.P11500201644253209080

`∑[A004526(A289122(n+2))]`
-/

namespace A011875.P11500201644253209080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A289122 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011875.P11500201644253209080

namespace A011875

/-- `∑[A004526(A289122(n+2))]` -/
def P11500201644253209080.Spec : Prop :=
  ∀ n, P11500201644253209080.a n = A011875 n

end A011875

/-! ## A011875.P16211303150358618838

`A004526(A011864(n))`
-/

namespace A011875.P16211303150358618838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011864 n).toNat

end

end A011875.P16211303150358618838

namespace A011875

/-- `A004526(A011864(n))` -/
def P16211303150358618838.Spec : Prop :=
  ∀ n, P16211303150358618838.a n = A011875 n

end A011875

/-! ## A011875.P1832600575144964571

`A008619(A011864(n))-A250480(2*(n+2))`
-/

namespace A011875.P1832600575144964571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A011864 n).toNat - A250480 (2 * (n + 2))

end

end A011875.P1832600575144964571

namespace A011875

/-- `A008619(A011864(n))-A250480(2*(n+2))` -/
def P1832600575144964571.Spec : Prop :=
  ∀ n, P1832600575144964571.a n = A011875 n

end A011875

/-! ## A011875.P4411791137589202858

`A002265(2*A011864(n))`
-/

namespace A011875.P4411791137589202858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A011864 n).toNat

end

end A011875.P4411791137589202858

namespace A011875

/-- `A002265(2*A011864(n))` -/
def P4411791137589202858.Spec : Prop :=
  ∀ n, P4411791137589202858.a n = A011875 n

end A011875

/-! ## A011875.P12149984869466662698

`A002265(A011864(n)+A011864(n)+1)`
-/

namespace A011875.P12149984869466662698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A011864 n + (A011864 n + 1)).toNat

end

end A011875.P12149984869466662698

namespace A011875

/-- `A002265(A011864(n)+A011864(n)+1)` -/
def P12149984869466662698.Spec : Prop :=
  ∀ n, P12149984869466662698.a n = A011875 n

end A011875

/-! ## A011875.P6649736311074077962

`A344420(C(n, 2))`
-/

namespace A011875.P6649736311074077962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (Nat.choose n 2)

end

end A011875.P6649736311074077962

namespace A011875

/-- `A344420(C(n, 2))` -/
def P6649736311074077962.Spec : Prop :=
  ∀ n, P6649736311074077962.a n = A011875 n

end A011875

/-! ## A011875.P9706434194056606568

`A344420(∑[n]-n)`
-/

namespace A011875.P9706434194056606568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A011875.P9706434194056606568

namespace A011875

/-- `A344420(∑[n]-n)` -/
def P9706434194056606568.Spec : Prop :=
  ∀ n, P9706434194056606568.a n = A011875 n

end A011875

/-!
# A011876: a(n) = floor(n*(n-1)/23).

The programs for A011876, the canonical program `A011876.P11503960271357167105` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011876 has offset 0).

The definition of A011876 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/23)` (program `A011876.P11503960271357167105`, by `A011876.P11503960271357167105.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011876.P11503960271357167105

`floor(n*(n-1)/23)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011876

/-- `floor(n*(n-1)/23)` -/
def P11503960271357167105.Spec : Prop :=
  ∀ n, P11503960271357167105.a n = A011876 n

theorem P11503960271357167105.correct : P11503960271357167105.Spec := by
  intro n
  simp only [A011876]

end A011876

/-! ## A011876.P1453063927301208640

`ceil(A002061(n)/23)-1`
-/

namespace A011876.P1453063927301208640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002061 n : ℚ) / 23⌉ - 1

end

end A011876.P1453063927301208640

namespace A011876

/-- `ceil(A002061(n)/23)-1` -/
def P1453063927301208640.Spec : Prop :=
  ∀ n, P1453063927301208640.a n = A011876 n

end A011876

/-! ## A011876.P12048588874258955928

`ceil((A054977(n)+n²-n)/23)-1`
-/

namespace A011876.P12048588874258955928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054977 n + ((n ^ 2 : ℤ) - (n : ℤ)) : ℚ) / 23⌉ - 1

end

end A011876.P12048588874258955928

namespace A011876

/-- `ceil((A054977(n)+n²-n)/23)-1` -/
def P12048588874258955928.Spec : Prop :=
  ∀ n, P12048588874258955928.a n = A011876 n

end A011876

/-! ## A011876.P737138478146155536

`ceil((A020639(A000010(n+2))+n²-n)/23)-1`
-/

namespace A011876.P737138478146155536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (A000010 (n + 2)).toNat + ((n ^ 2 : ℤ) - (n : ℤ)) : ℚ) / 23⌉ - 1

end

end A011876.P737138478146155536

namespace A011876

/-- `ceil((A020639(A000010(n+2))+n²-n)/23)-1` -/
def P737138478146155536.Spec : Prop :=
  ∀ n, P737138478146155536.a n = A011876 n

end A011876

/-!
# A011877: a(n) = floor(n*(n-1)/24).

The programs for A011877, the canonical program `A011877.P14460038640069864322` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011877 has offset 0).

The definition of A011877 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/24)` (program `A011877.P14460038640069864322`, by `A011877.P14460038640069864322.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011877.P14460038640069864322

`floor(n*(n-1)/24)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011877

/-- `floor(n*(n-1)/24)` -/
def P14460038640069864322.Spec : Prop :=
  ∀ n, P14460038640069864322.a n = A011877 n

theorem P14460038640069864322.correct : P14460038640069864322.Spec := by
  intro n
  simp only [A011877]

end A011877

/-! ## A011877.P6167577760709504870

`ceil((C(n, 2)-10)/12)`
-/

namespace A011877.P6167577760709504870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 2 : ℤ) - 10 : ℚ) / 12⌉

end

end A011877.P6167577760709504870

namespace A011877

/-- `ceil((C(n, 2)-10)/12)` -/
def P6167577760709504870.Spec : Prop :=
  ∀ n, P6167577760709504870.a n = A011877 n

end A011877

/-! ## A011877.P7912960917707267310

`ceil((∑[A008620(n)]-(n+4))/4)`
-/

namespace A011877.P7912960917707267310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j - (n + 4 : ℤ) : ℤ) : ℚ) / 4⌉

end

end A011877.P7912960917707267310

namespace A011877

/-- `ceil((∑[A008620(n)]-(n+4))/4)` -/
def P7912960917707267310.Spec : Prop :=
  ∀ n, P7912960917707267310.a n = A011877 n

end A011877

/-! ## A011877.P10561268104736952666

`xor(A003188(A011865(n)), A011865(n))`
-/

namespace A011877.P10561268104736952666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 (A011865 n).toNat) (A011865 n)

end

end A011877.P10561268104736952666

namespace A011877

/-- `xor(A003188(A011865(n)), A011865(n))` -/
def P10561268104736952666.Spec : Prop :=
  ∀ n, P10561268104736952666.a n = A011877 n

end A011877

/-! ## A011877.P8284923404297187512

`A004526(A011865(n))`
-/

namespace A011877.P8284923404297187512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011865 n).toNat

end

end A011877.P8284923404297187512

namespace A011877

/-- `A004526(A011865(n))` -/
def P8284923404297187512.Spec : Prop :=
  ∀ n, P8284923404297187512.a n = A011877 n

end A011877

/-! ## A011877.P10512431990159251603

`A002264(A011861(n))`
-/

namespace A011877.P10512431990159251603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A011861 n).toNat

end

end A011877.P10512431990159251603

namespace A011877

/-- `A002264(A011861(n))` -/
def P10512431990159251603.Spec : Prop :=
  ∀ n, P10512431990159251603.a n = A011877 n

end A011877

/-! ## A011877.P608421953984269070

`A002265(∑[floor(n/3)])`
-/

namespace A011877.P608421953984269070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011877.P608421953984269070

namespace A011877

/-- `A002265(∑[floor(n/3)])` -/
def P608421953984269070.Spec : Prop :=
  ∀ n, P608421953984269070.a n = A011877 n

end A011877

/-! ## A011877.P7958466864683654600

`A008621(∑[A002264(n)])-1`
-/

namespace A011877.P7958466864683654600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A011877.P7958466864683654600

namespace A011877

/-- `A008621(∑[A002264(n)])-1` -/
def P7958466864683654600.Spec : Prop :=
  ∀ n, P7958466864683654600.a n = A011877 n

end A011877

/-! ## A011877.P9962629163652295281

`A004526(A004524(∑[floor(n/3)]))`
-/

namespace A011877.P9962629163652295281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A011877.P9962629163652295281

namespace A011877

/-- `A004526(A004524(∑[floor(n/3)]))` -/
def P9962629163652295281.Spec : Prop :=
  ∀ n, P9962629163652295281.a n = A011877 n

end A011877

/-! ## A011877.P14016449146031990256

`A004526(A004525(∑[floor(n/3)]))`
-/

namespace A011877.P14016449146031990256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A011877.P14016449146031990256

namespace A011877

/-- `A004526(A004525(∑[floor(n/3)]))` -/
def P14016449146031990256.Spec : Prop :=
  ∀ n, P14016449146031990256.a n = A011877 n

end A011877

/-! ## A011877.P3845787928818147565

`A004526(A004526(∑[floor(n/3)]))`
-/

namespace A011877.P3845787928818147565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A011877.P3845787928818147565

namespace A011877

/-- `A004526(A004526(∑[floor(n/3)]))` -/
def P3845787928818147565.Spec : Prop :=
  ∀ n, P3845787928818147565.a n = A011877 n

end A011877

/-! ## A011877.P6090761562930997697

`A002265(A062781(n+1))%A007980(n)`
-/

namespace A011877.P6090761562930997697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (A062781 (n + 1)).toNat) (A007980 n)

end

end A011877.P6090761562930997697

namespace A011877

/-- `A002265(A062781(n+1))%A007980(n)` -/
def P6090761562930997697.Spec : Prop :=
  ∀ n, P6090761562930997697.a n = A011877 n

end A011877

/-! ## A011877.P7346386845744841736

`A002265(∑[A002264(n)])%A000045(n+1)`
-/

namespace A011877.P7346386845744841736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A000045 (n + 1))

end

end A011877.P7346386845744841736

namespace A011877

/-- `A002265(∑[A002264(n)])%A000045(n+1)` -/
def P7346386845744841736.Spec : Prop :=
  ∀ n, P7346386845744841736.a n = A011877 n

end A011877

/-! ## A011877.P14004451093913654212

`A010872(3*n)+A002265(A062781(n+1))`
-/

namespace A011877.P14004451093913654212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (3 * n) + A002265 (A062781 (n + 1)).toNat

end

end A011877.P14004451093913654212

namespace A011877

/-- `A010872(3*n)+A002265(A062781(n+1))` -/
def P14004451093913654212.Spec : Prop :=
  ∀ n, P14004451093913654212.a n = A011877 n

end A011877

/-! ## A011877.P3045837652253103116

`A152467(A011848(n))`
-/

namespace A011877.P3045837652253103116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A011848 n).toNat

end

end A011877.P3045837652253103116

namespace A011877

/-- `A152467(A011848(n))` -/
def P3045837652253103116.Spec : Prop :=
  ∀ n, P3045837652253103116.a n = A011877 n

end A011877

/-! ## A011877.P5593587531569236317

`A152467(A054925(n))`
-/

namespace A011877.P5593587531569236317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A054925 n).toNat

end

end A011877.P5593587531569236317

namespace A011877

/-- `A152467(A054925(n))` -/
def P5593587531569236317.Spec : Prop :=
  ∀ n, P5593587531569236317.a n = A011877 n

end A011877

/-! ## A011877.P17945772377436728591

`A152467(A368052(n+1))`
-/

namespace A011877.P17945772377436728591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A368052 (n + 1)).toNat

end

end A011877.P17945772377436728591

namespace A011877

/-- `A152467(A368052(n+1))` -/
def P17945772377436728591.Spec : Prop :=
  ∀ n, P17945772377436728591.a n = A011877 n

end A011877

/-! ## A011877.P13145285441941073989

`A152467(A130519(n+1)+A130519(n))`
-/

namespace A011877.P13145285441941073989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A130519 (n + 1) + A130519 n).toNat

end

end A011877.P13145285441941073989

namespace A011877

/-- `A152467(A130519(n+1)+A130519(n))` -/
def P13145285441941073989.Spec : Prop :=
  ∀ n, P13145285441941073989.a n = A011877 n

end A011877

/-! ## A011877.P5257517308188537016

`A132292(A097921(n))`
-/

namespace A011877.P5257517308188537016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A097921 n).toNat

end

end A011877.P5257517308188537016

namespace A011877

/-- `A132292(A097921(n))` -/
def P5257517308188537016.Spec : Prop :=
  ∀ n, P5257517308188537016.a n = A011877 n

end A011877

/-! ## A011877.P4193477384745109798

`A343609(A389319(n))`
-/

namespace A011877.P4193477384745109798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A389319 n).toNat

end

end A011877.P4193477384745109798

namespace A011877

/-- `A343609(A389319(n))` -/
def P4193477384745109798.Spec : Prop :=
  ∀ n, P4193477384745109798.a n = A011877 n

end A011877

/-!
# A011878: a(n) = floor( n(n-1)/25 ).

The programs for A011878, the canonical program `A011878.P1385779272812270525` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011878 has offset 0).

The definition of A011878 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/25)` (program `A011878.P1385779272812270525`, by `A011878.P1385779272812270525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011878.P1385779272812270525

`floor(n*(n-1)/25)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011878

/-- `floor(n*(n-1)/25)` -/
def P1385779272812270525.Spec : Prop :=
  ∀ n, P1385779272812270525.a n = A011878 n

theorem P1385779272812270525.correct : P1385779272812270525.Spec := by
  intro n
  simp only [A011878]

end A011878

/-! ## A011878.P6467944989171017062

`floor(A011858(n)/5)%A157845(n)`
-/

namespace A011878.P6467944989171017062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A011858 n : ℚ) / 5⌋ (A157845 n)

end

end A011878.P6467944989171017062

namespace A011878

/-- `floor(A011858(n)/5)%A157845(n)` -/
def P6467944989171017062.Spec : Prop :=
  ∀ n, P6467944989171017062.a n = A011878 n

end A011878

/-! ## A011878.P3753715497364022229

`lcm(floor(A011858(n)/5), A260196(n))`
-/

namespace A011878.P3753715497364022229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(A011858 n : ℚ) / 5⌋ (A260196 n)

end

end A011878.P3753715497364022229

namespace A011878

/-- `lcm(floor(A011858(n)/5), A260196(n))` -/
def P3753715497364022229.Spec : Prop :=
  ∀ n, (P3753715497364022229.a n : ℤ) = A011878 n

end A011878

/-! ## A011878.P8465277207272861531

`A000038(n+1)+floor(A011858(n)/5)`
-/

namespace A011878.P8465277207272861531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + ⌊(A011858 n : ℚ) / 5⌋

end

end A011878.P8465277207272861531

namespace A011878

/-- `A000038(n+1)+floor(A011858(n)/5)` -/
def P8465277207272861531.Spec : Prop :=
  ∀ n, P8465277207272861531.a n = A011878 n

end A011878

/-! ## A011878.P5757495861479453071

`A000035(2*n)+floor(A011858(n)/5)`
-/

namespace A011878.P5757495861479453071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + ⌊(A011858 n : ℚ) / 5⌋

end

end A011878.P5757495861479453071

namespace A011878

/-- `A000035(2*n)+floor(A011858(n)/5)` -/
def P5757495861479453071.Spec : Prop :=
  ∀ n, P5757495861479453071.a n = A011878 n

end A011878

/-! ## A011878.P8472790105688154742

`floor(A011858(n)/5)*A000034(2*n)`
-/

namespace A011878.P8472790105688154742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011858 n : ℚ) / 5⌋ * A000034 (2 * n)

end

end A011878.P8472790105688154742

namespace A011878

/-- `floor(A011858(n)/5)*A000034(2*n)` -/
def P8472790105688154742.Spec : Prop :=
  ∀ n, P8472790105688154742.a n = A011878 n

end A011878

/-! ## A011878.P8159345651780682028

`A110654(2*floor(A011858(n)/5))`
-/

namespace A011878.P8159345651780682028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * ⌊(A011858 n : ℚ) / 5⌋).toNat

end

end A011878.P8159345651780682028

namespace A011878

/-- `A110654(2*floor(A011858(n)/5))` -/
def P8159345651780682028.Spec : Prop :=
  ∀ n, P8159345651780682028.a n = A011878 n

end A011878

/-! ## A011878.P9816894168313092174

`A057354(∑[floor((n+1)/5)])`
-/

namespace A011878.P9816894168313092174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011878.P9816894168313092174

namespace A011878

/-- `A057354(∑[floor((n+1)/5)])` -/
def P9816894168313092174.Spec : Prop :=
  ∀ n, P9816894168313092174.a n = A011878 n

end A011878

/-! ## A011878.P18355396954977238677

`A002266(A011858(n))`
-/

namespace A011878.P18355396954977238677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A011858 n).toNat

end

end A011878.P18355396954977238677

namespace A011878

/-- `A002266(A011858(n))` -/
def P18355396954977238677.Spec : Prop :=
  ∀ n, P18355396954977238677.a n = A011878 n

end A011878

/-! ## A011878.P751853309516957269

`A002266(∑[A057354(n)])`
-/

namespace A011878.P751853309516957269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011878.P751853309516957269

namespace A011878

/-- `A002266(∑[A057354(n)])` -/
def P751853309516957269.Spec : Prop :=
  ∀ n, P751853309516957269.a n = A011878 n

end A011878

/-! ## A011878.P10640394676580919794

`A002266(∑[A002266(2*n)])`
-/

namespace A011878.P10640394676580919794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011878.P10640394676580919794

namespace A011878

/-- `A002266(∑[A002266(2*n)])` -/
def P10640394676580919794.Spec : Prop :=
  ∀ n, P10640394676580919794.a n = A011878 n

end A011878

/-! ## A011878.P3057130830362026011

`A002266(2*A130520(n+1))`
-/

namespace A011878.P3057130830362026011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (2 * A130520 (n + 1)).toNat

end

end A011878.P3057130830362026011

namespace A011878

/-- `A002266(2*A130520(n+1))` -/
def P3057130830362026011.Spec : Prop :=
  ∀ n, P3057130830362026011.a n = A011878 n

end A011878

/-! ## A011878.P17687927734685126632

`A002266(A131242(2*n+3))`
-/

namespace A011878.P17687927734685126632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A131242 (2 * n + 3)).toNat

end

end A011878.P17687927734685126632

namespace A011878

/-- `A002266(A131242(2*n+3))` -/
def P17687927734685126632.Spec : Prop :=
  ∀ n, P17687927734685126632.a n = A011878 n

end A011878

/-! ## A011878.P2623670659502194439

`A002266(A008738(n+2)-(n+1))`
-/

namespace A011878.P2623670659502194439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A008738 (n + 2) - (n + 1 : ℤ)).toNat

end

end A011878.P2623670659502194439

namespace A011878

/-- `A002266(A008738(n+2)-(n+1))` -/
def P2623670659502194439.Spec : Prop :=
  ∀ n, P2623670659502194439.a n = A011878 n

end A011878

/-! ## A011878.P10196107301024090521

`A002266(A000115(2*n)-(n+1))`
-/

namespace A011878.P10196107301024090521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A000115 (2 * n) - (n + 1 : ℤ)).toNat

end

end A011878.P10196107301024090521

namespace A011878

/-- `A002266(A000115(2*n)-(n+1))` -/
def P10196107301024090521.Spec : Prop :=
  ∀ n, P10196107301024090521.a n = A011878 n

end A011878

/-! ## A011878.P4341393903058704264

`A002266(∑[A004526(A090223(n))])`
-/

namespace A011878.P4341393903058704264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A090223 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011878.P4341393903058704264

namespace A011878

/-- `A002266(∑[A004526(A090223(n))])` -/
def P4341393903058704264.Spec : Prop :=
  ∀ n, P4341393903058704264.a n = A011878 n

end A011878

/-! ## A011878.P17571489333684968646

`A002264(A057355(∑[A057354(n)]))`
-/

namespace A011878.P17571489333684968646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A057355 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A011878.P17571489333684968646

namespace A011878

/-- `A002264(A057355(∑[A057354(n)]))` -/
def P17571489333684968646.Spec : Prop :=
  ∀ n, P17571489333684968646.a n = A011878 n

end A011878

/-! ## A011878.P1350047686176821702

`A002266(A118015(n)-A002266(n+1))`
-/

namespace A011878.P1350047686176821702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A118015 n - A002266 (n + 1)).toNat

end

end A011878.P1350047686176821702

namespace A011878

/-- `A002266(A118015(n)-A002266(n+1))` -/
def P1350047686176821702.Spec : Prop :=
  ∀ n, P1350047686176821702.a n = A011878 n

end A011878

/-!
# A011879: a(n) = floor( n(n-1)/26 ).

The programs for A011879, the canonical program `A011879.P6604640892397095425` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011879 has offset 0).

The definition of A011879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/26)` (program `A011879.P6604640892397095425`, by `A011879.P6604640892397095425.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011879.P6604640892397095425

`floor(n*(n-1)/26)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011879

/-- `floor(n*(n-1)/26)` -/
def P6604640892397095425.Spec : Prop :=
  ∀ n, P6604640892397095425.a n = A011879 n

theorem P6604640892397095425.correct : P6604640892397095425.Spec := by
  intro n
  simp only [A011879]

end A011879

/-! ## A011879.P9487400254044441063

`A004526(A011866(n))`
-/

namespace A011879.P9487400254044441063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011866 n).toNat

end

end A011879.P9487400254044441063

namespace A011879

/-- `A004526(A011866(n))` -/
def P9487400254044441063.Spec : Prop :=
  ∀ n, P9487400254044441063.a n = A011879 n

end A011879

/-! ## A011879.P5555322184394511820

`A028242(or(1, A011866(n)))`
-/

namespace A011879.P5555322184394511820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A011866 n)).toNat

end

end A011879.P5555322184394511820

namespace A011879

/-- `A028242(or(1, A011866(n)))` -/
def P5555322184394511820.Spec : Prop :=
  ∀ n, P5555322184394511820.a n = A011879 n

end A011879

/-! ## A011879.P7845710838165188503

`A107393(A206462(n+1))+A008619(A011866(n))`
-/

namespace A011879.P7845710838165188503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A206462 (n + 1)).toNat + A008619 (A011866 n).toNat

end

end A011879.P7845710838165188503

namespace A011879

/-- `A107393(A206462(n+1))+A008619(A011866(n))` -/
def P7845710838165188503.Spec : Prop :=
  ∀ n, P7845710838165188503.a n = A011879 n

end A011879

/-! ## A011879.P11215625705910540786

`A002265(∑[A057363(A004526(n+1))])`
-/

namespace A011879.P11215625705910540786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A004526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011879.P11215625705910540786

namespace A011879

/-- `A002265(∑[A057363(A004526(n+1))])` -/
def P11215625705910540786.Spec : Prop :=
  ∀ n, P11215625705910540786.a n = A011879 n

end A011879

/-! ## A011879.P17430383777350491482

`A002265(∑[A002265(A057363(2*n+1))])`
-/

namespace A011879.P17430383777350491482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A057363 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011879.P17430383777350491482

namespace A011879

/-- `A002265(∑[A002265(A057363(2*n+1))])` -/
def P17430383777350491482.Spec : Prop :=
  ∀ n, P17430383777350491482.a n = A011879 n

end A011879

/-! ## A011879.P16111968525626157471

`ceil(round(A004767(floor((n²+5-n)/4)+1)/13)/2)-1`
-/

namespace A011879.P16111968525626157471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway ((A004767 (⌊((n ^ 2 : ℤ) + (5 - (n : ℤ)) : ℚ) / 4⌋ + 1).toNat : ℚ) / 13) : ℚ) / 2⌉ - 1

end

end A011879.P16111968525626157471

namespace A011879

/-- `ceil(round(A004767(floor((n²+5-n)/4)+1)/13)/2)-1` -/
def P16111968525626157471.Spec : Prop :=
  ∀ n, P16111968525626157471.a n = A011879 n

end A011879

/-! ## A011879.P9708654896119725939

`A059995(5*A011866(n))`
-/

namespace A011879.P9708654896119725939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (5 * A011866 n).toNat

end

end A011879.P9708654896119725939

namespace A011879

/-- `A059995(5*A011866(n))` -/
def P9708654896119725939.Spec : Prop :=
  ∀ n, P9708654896119725939.a n = A011879 n

end A011879

/-! ## A011879.P4052699543321509380

`A002265(A002265(A057363(n²-n)))`
-/

namespace A011879.P4052699543321509380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002265 (A057363 (n ^ 2 - n)).toNat).toNat

end

end A011879.P4052699543321509380

namespace A011879

/-- `A002265(A002265(A057363(n²-n)))` -/
def P4052699543321509380.Spec : Prop :=
  ∀ n, P4052699543321509380.a n = A011879 n

end A011879

/-!
# A011880: a(n) = floor(n*(n-1)/27).

The programs for A011880, the canonical program `A011880.P12721191824203045645` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011880 has offset 0).

The definition of A011880 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/27)` (program `A011880.P12721191824203045645`, by `A011880.P12721191824203045645.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011880.P12721191824203045645

`floor(n*(n-1)/27)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011880

/-- `floor(n*(n-1)/27)` -/
def P12721191824203045645.Spec : Prop :=
  ∀ n, P12721191824203045645.a n = A011880 n

theorem P12721191824203045645.correct : P12721191824203045645.Spec := by
  intro n
  simp only [A011880]

end A011880

/-! ## A011880.P10544580016813763056

`A002264(A011862(n))`
-/

namespace A011880.P10544580016813763056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A011862 n).toNat

end

end A011880.P10544580016813763056

namespace A011880

/-- `A002264(A011862(n))` -/
def P10544580016813763056.Spec : Prop :=
  ∀ n, P10544580016813763056.a n = A011880 n

end A011880

/-! ## A011880.P1433372445201359688

`A002264(floor(A128422(n+1)/3))`
-/

namespace A011880.P1433372445201359688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ⌊(A128422 (n + 1) : ℚ) / 3⌋.toNat

end

end A011880.P1433372445201359688

namespace A011880

/-- `A002264(floor(A128422(n+1)/3))` -/
def P1433372445201359688.Spec : Prop :=
  ∀ n, P1433372445201359688.a n = A011880 n

end A011880

/-! ## A011880.P659019456340922583

`A002264(∑[A343609(2*(n+1))])`
-/

namespace A011880.P659019456340922583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011880.P659019456340922583

namespace A011880

/-- `A002264(∑[A343609(2*(n+1))])` -/
def P659019456340922583.Spec : Prop :=
  ∀ n, P659019456340922583.a n = A011880 n

end A011880

/-! ## A011880.P14504812331444187095

`A002264(∑[A002264(ceil(2*n/3))])`
-/

namespace A011880.P14504812331444187095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ⌈2 * ((n : ℚ) / 3)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011880.P14504812331444187095

namespace A011880

/-- `A002264(∑[A002264(ceil(2*n/3))])` -/
def P14504812331444187095.Spec : Prop :=
  ∀ n, P14504812331444187095.a n = A011880 n

end A011880

/-! ## A011880.P17435157937252176338

`A002264(A004523(∑[floor(n/3)]))`
-/

namespace A011880.P17435157937252176338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A011880.P17435157937252176338

namespace A011880

/-- `A002264(A004523(∑[floor(n/3)]))` -/
def P17435157937252176338.Spec : Prop :=
  ∀ n, P17435157937252176338.a n = A011880 n

end A011880

/-! ## A011880.P9336792723930093755

`A152467(∑[A152467(A042965(2*n+1))])`
-/

namespace A011880.P9336792723930093755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A042965 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011880.P9336792723930093755

namespace A011880

/-- `A152467(∑[A152467(A042965(2*n+1))])` -/
def P9336792723930093755.Spec : Prop :=
  ∀ n, P9336792723930093755.a n = A011880 n

end A011880

/-! ## A011880.P3892946784539221703

`A343609(A128422(n+1))`
-/

namespace A011880.P3892946784539221703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A128422 (n + 1)).toNat

end

end A011880.P3892946784539221703

namespace A011880

/-- `A343609(A128422(n+1))` -/
def P3892946784539221703.Spec : Prop :=
  ∀ n, P3892946784539221703.a n = A011880 n

end A011880

/-! ## A011880.P8579285539046272108

`A343609(A174709(2*n+1))`
-/

namespace A011880.P8579285539046272108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A174709 (2 * n + 1)).toNat

end

end A011880.P8579285539046272108

namespace A011880

/-- `A343609(A174709(2*n+1))` -/
def P8579285539046272108.Spec : Prop :=
  ∀ n, P8579285539046272108.a n = A011880 n

end A011880

/-! ## A011880.P7226578322115433156

`A002264(A002264(∑[2*floor(n/3)]))`
-/

namespace A011880.P7226578322115433156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A011880.P7226578322115433156

namespace A011880

/-- `A002264(A002264(∑[2*floor(n/3)]))` -/
def P7226578322115433156.Spec : Prop :=
  ∀ n, P7226578322115433156.a n = A011880 n

end A011880

/-! ## A011880.P6390873636892890260

`A343609(A018838(A130519(2*n)))`
-/

namespace A011880.P6390873636892890260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A018838 (A130519 (2 * n)).toNat).toNat

end

end A011880.P6390873636892890260

namespace A011880

/-- `A343609(A018838(A130519(2*n)))` -/
def P6390873636892890260.Spec : Prop :=
  ∀ n, P6390873636892890260.a n = A011880 n

end A011880

/-!
# A011881: a(n) = floor(n*(n-1)/28).

The programs for A011881, the canonical program `A011881.P16582740412286134890` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011881 has offset 0).

The definition of A011881 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/28)` (program `A011881.P16582740412286134890`, by `A011881.P16582740412286134890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011881.P16582740412286134890

`floor(n*(n-1)/28)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011881

/-- `floor(n*(n-1)/28)` -/
def P16582740412286134890.Spec : Prop :=
  ∀ n, P16582740412286134890.a n = A011881 n

theorem P16582740412286134890.correct : P16582740412286134890.Spec := by
  intro n
  simp only [A011881]

end A011881

/-! ## A011881.P14622352500210560664

`A004526(A011867(n))`
-/

namespace A011881.P14622352500210560664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011867 n).toNat

end

end A011881.P14622352500210560664

namespace A011881

/-- `A004526(A011867(n))` -/
def P14622352500210560664.Spec : Prop :=
  ∀ n, P14622352500210560664.a n = A011881 n

end A011881

/-! ## A011881.P8736787053759908696

`A004526(A174738(n+2))`
-/

namespace A011881.P8736787053759908696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A174738 (n + 2)).toNat

end

end A011881.P8736787053759908696

namespace A011881

/-- `A004526(A174738(n+2))` -/
def P8736787053759908696.Spec : Prop :=
  ∀ n, P8736787053759908696.a n = A011881 n

end A011881

/-! ## A011881.P3193861161488934127

`A004526(∑[A132270(n+3)])`
-/

namespace A011881.P3193861161488934127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011881.P3193861161488934127

namespace A011881

/-- `A004526(∑[A132270(n+3)])` -/
def P3193861161488934127.Spec : Prop :=
  ∀ n, P3193861161488934127.a n = A011881 n

end A011881

/-! ## A011881.P15873562926572798961

`A004526(∑[A004526(A057356(n+2))])`
-/

namespace A011881.P15873562926572798961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057356 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011881.P15873562926572798961

namespace A011881

/-- `A004526(∑[A004526(A057356(n+2))])` -/
def P15873562926572798961.Spec : Prop :=
  ∀ n, P15873562926572798961.a n = A011881 n

end A011881

/-! ## A011881.P8015587225906443025

`A002265(A011860(n))`
-/

namespace A011881.P8015587225906443025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A011860 n).toNat

end

end A011881.P8015587225906443025

namespace A011881

/-- `A002265(A011860(n))` -/
def P8015587225906443025.Spec : Prop :=
  ∀ n, P8015587225906443025.a n = A011881 n

end A011881

/-! ## A011881.P9199822320691180917

`A002265(Δ[A011903(n)])`
-/

namespace A011881.P9199822320691180917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A011881.P9199822320691180917

namespace A011881

/-- `A002265(Δ[A011903(n)])` -/
def P9199822320691180917.Spec : Prop :=
  ∀ n, P9199822320691180917.a n = A011881 n

end A011881

/-! ## A011881.P3271659747154340214

`A002265(2*A011867(n))`
-/

namespace A011881.P3271659747154340214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A011867 n).toNat

end

end A011881.P3271659747154340214

namespace A011881

/-- `A002265(2*A011867(n))` -/
def P3271659747154340214.Spec : Prop :=
  ∀ n, P3271659747154340214.a n = A011881 n

end A011881

/-! ## A011881.P5080235988984624849

`A002265(2*A174738(n+2))`
-/

namespace A011881.P5080235988984624849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A174738 (n + 2)).toNat

end

end A011881.P5080235988984624849

namespace A011881

/-- `A002265(2*A174738(n+2))` -/
def P5080235988984624849.Spec : Prop :=
  ∀ n, P5080235988984624849.a n = A011881 n

end A011881

/-! ## A011881.P11033555511495306596

`A002265(A011867(n)+A011867(n))`
-/

namespace A011881.P11033555511495306596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A011867 n + A011867 n).toNat

end

end A011881.P11033555511495306596

namespace A011881

/-- `A002265(A011867(n)+A011867(n))` -/
def P11033555511495306596.Spec : Prop :=
  ∀ n, P11033555511495306596.a n = A011881 n

end A011881

/-! ## A011881.P4040343041021141865

`A002265(A011903(n+1)-A011903(n))`
-/

namespace A011881.P4040343041021141865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A011903 (n + 1) - A011903 n).toNat

end

end A011881.P4040343041021141865

namespace A011881

/-- `A002265(A011903(n+1)-A011903(n))` -/
def P4040343041021141865.Spec : Prop :=
  ∀ n, P4040343041021141865.a n = A011881 n

end A011881

/-! ## A011881.P14453712888799507893

`A002265(A174738(n+1)+A174738(n+3))`
-/

namespace A011881.P14453712888799507893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A174738 (n + 1) + A174738 (n + 3)).toNat

end

end A011881.P14453712888799507893

namespace A011881

/-- `A002265(A174738(n+1)+A174738(n+3))` -/
def P14453712888799507893.Spec : Prop :=
  ∀ n, P14453712888799507893.a n = A011881 n

end A011881

/-! ## A011881.P14920698780647302469

`A152467(∑[A132270(3*n+1)])`
-/

namespace A011881.P14920698780647302469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011881.P14920698780647302469

namespace A011881

/-- `A152467(∑[A132270(3*n+1)])` -/
def P14920698780647302469.Spec : Prop :=
  ∀ n, P14920698780647302469.a n = A011881 n

end A011881

/-! ## A011881.P8966447955456311458

`A059995(A174738(n+1)+A011867(2*n))`
-/

namespace A011881.P8966447955456311458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A174738 (n + 1) + A011867 (2 * n)).toNat

end

end A011881.P8966447955456311458

namespace A011881

/-- `A059995(A174738(n+1)+A011867(2*n))` -/
def P8966447955456311458.Spec : Prop :=
  ∀ n, P8966447955456311458.a n = A011881 n

end A011881

/-! ## A011881.P5991237502757259545

`A002265(A057356(A130519(2*n)))`
-/

namespace A011881.P5991237502757259545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A057356 (A130519 (2 * n)).toNat).toNat

end

end A011881.P5991237502757259545

namespace A011881

/-- `A002265(A057356(A130519(2*n)))` -/
def P5991237502757259545.Spec : Prop :=
  ∀ n, P5991237502757259545.a n = A011881 n

end A011881

/-!
# A011882: [ n(n-1)/29 ].

The programs for A011882, the canonical program `A011882.P828277206549521072` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011882 has offset 0).

The definition of A011882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011882.P828277206549521072

`floor((n²-n)/29)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011882

/-- `floor((n²-n)/29)` -/
def P828277206549521072.Spec : Prop :=
  ∀ n, P828277206549521072.a n = A011882 n

theorem P828277206549521072.correct : P828277206549521072.Spec := by
  intro n
  simp only [A011882]

end A011882

/-! ## A011882.P11939657890057371632

`ceil(A002061(n)/29)-1`
-/

namespace A011882.P11939657890057371632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002061 n : ℚ) / 29⌉ - 1

end

end A011882.P11939657890057371632

namespace A011882

/-- `ceil(A002061(n)/29)-1` -/
def P11939657890057371632.Spec : Prop :=
  ∀ n, P11939657890057371632.a n = A011882 n

end A011882

/-! ## A011882.P8473849005984495319

`A004396(round(log2(A146999(n+1))))`
-/

namespace A011882.P8473849005984495319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.roundAway (Real.logb 2 (A146999 (n + 1) : ℝ))).toNat

end

end A011882.P8473849005984495319

namespace A011882

/-- `A004396(round(log2(A146999(n+1))))` -/
def P8473849005984495319.Spec : Prop :=
  ∀ n, P8473849005984495319.a n = A011882 n

end A011882

/-! ## A011882.P17869399437120781578

`A065033(A008676(n²))-A000688(A142435(n+1))`
-/

namespace A011882.P17869399437120781578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008676 (n ^ 2)).toNat - A000688 (A142435 (n + 1)).toNat

end

end A011882.P17869399437120781578

namespace A011882

/-- `A065033(A008676(n²))-A000688(A142435(n+1))` -/
def P17869399437120781578.Spec : Prop :=
  ∀ n, P17869399437120781578.a n = A011882 n

end A011882

/-!
# A011883: a(n) = floor(n*(n-1)/30).

The programs for A011883, the canonical program `A011883.P15040155827185737645` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011883 has offset 0).

The definition of A011883 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/30)` (program `A011883.P15040155827185737645`, by `A011883.P15040155827185737645.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011883.P15040155827185737645

`floor(n*(n-1)/30)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011883

/-- `floor(n*(n-1)/30)` -/
def P15040155827185737645.Spec : Prop :=
  ∀ n, P15040155827185737645.a n = A011883 n

theorem P15040155827185737645.correct : P15040155827185737645.Spec := by
  intro n
  simp only [A011883]

end A011883

/-! ## A011883.P5614227233028570161

`-ceil((n+1-A001840(n+1))/5)`
-/

namespace A011883.P5614227233028570161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈((n + 1 : ℤ) - A001840 (n + 1) : ℚ) / 5⌉

end

end A011883.P5614227233028570161

namespace A011883

/-- `-ceil((n+1-A001840(n+1))/5)` -/
def P5614227233028570161.Spec : Prop :=
  ∀ n, P5614227233028570161.a n = A011883 n

end A011883

/-! ## A011883.P11117122195011453994

`∑[A057367(2*(n+1))-A004523(n+1)]`
-/

namespace A011883.P11117122195011453994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (2 * (n + 1)) - A004523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011883.P11117122195011453994

namespace A011883

/-- `∑[A057367(2*(n+1))-A004523(n+1)]` -/
def P11117122195011453994.Spec : Prop :=
  ∀ n, P11117122195011453994.a n = A011883 n

end A011883

/-! ## A011883.P14075358295808855210

`A004526(A011868(n))`
-/

namespace A011883.P14075358295808855210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011868 n).toNat

end

end A011883.P14075358295808855210

namespace A011883

/-- `A004526(A011868(n))` -/
def P14075358295808855210.Spec : Prop :=
  ∀ n, P14075358295808855210.a n = A011883 n

end A011883

/-! ## A011883.P12760715010568055349

`A002264(∑[round((n-1)/5)])`
-/

namespace A011883.P12760715010568055349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011883.P12760715010568055349

namespace A011883

/-- `A002264(∑[round((n-1)/5)])` -/
def P12760715010568055349.Spec : Prop :=
  ∀ n, P12760715010568055349.a n = A011883 n

end A011883

/-! ## A011883.P10563576517916212587

`A004773(A130520(n+1))-A130520(n+1)`
-/

namespace A011883.P10563576517916212587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A130520 (n + 1)).toNat - A130520 (n + 1)

end

end A011883.P10563576517916212587

namespace A011883

/-- `A004773(A130520(n+1))-A130520(n+1)` -/
def P10563576517916212587.Spec : Prop :=
  ∀ n, P10563576517916212587.a n = A011883 n

end A011883

/-! ## A011883.P5461017592264132378

`A002265(A000212(n+1)-A118015(n+2))`
-/

namespace A011883.P5461017592264132378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000212 (n + 1) - A118015 (n + 2)).toNat

end

end A011883.P5461017592264132378

namespace A011883

/-- `A002265(A000212(n+1)-A118015(n+2))` -/
def P5461017592264132378.Spec : Prop :=
  ∀ n, P5461017592264132378.a n = A011883 n

end A011883

/-! ## A011883.P7612839120051696175

`A002266(∑[floor(n/3)])`
-/

namespace A011883.P7612839120051696175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011883.P7612839120051696175

namespace A011883

/-- `A002266(∑[floor(n/3)])` -/
def P7612839120051696175.Spec : Prop :=
  ∀ n, P7612839120051696175.a n = A011883 n

end A011883

/-! ## A011883.P10334021762163873000

`A004526(A057354(∑[floor(n/3)]))`
-/

namespace A011883.P10334021762163873000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057354 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A011883.P10334021762163873000

namespace A011883

/-- `A004526(A057354(∑[floor(n/3)]))` -/
def P10334021762163873000.Spec : Prop :=
  ∀ n, P10334021762163873000.a n = A011883 n

end A011883

/-! ## A011883.P5446819264773608062

`A152467(A011858(n))`
-/

namespace A011883.P5446819264773608062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A011858 n).toNat

end

end A011883.P5446819264773608062

namespace A011883

/-- `A152467(A011858(n))` -/
def P5446819264773608062.Spec : Prop :=
  ∀ n, P5446819264773608062.a n = A011883 n

end A011883

/-! ## A011883.P18099707779441725971

`A152467(∑[A002266(2*n)])`
-/

namespace A011883.P18099707779441725971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011883.P18099707779441725971

namespace A011883

/-- `A152467(∑[A002266(2*n)])` -/
def P18099707779441725971.Spec : Prop :=
  ∀ n, P18099707779441725971.a n = A011883 n

end A011883

/-! ## A011883.P12665957512742230538

`A152467(2*A130520(n+1))`
-/

namespace A011883.P12665957512742230538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (2 * A130520 (n + 1)).toNat

end

end A011883.P12665957512742230538

namespace A011883

/-- `A152467(2*A130520(n+1))` -/
def P12665957512742230538.Spec : Prop :=
  ∀ n, P12665957512742230538.a n = A011883 n

end A011883

/-! ## A011883.P15999654647330675446

`A152467(A131242(2*n+3))`
-/

namespace A011883.P15999654647330675446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A131242 (2 * n + 3)).toNat

end

end A011883.P15999654647330675446

namespace A011883

/-- `A152467(A131242(2*n+3))` -/
def P15999654647330675446.Spec : Prop :=
  ∀ n, P15999654647330675446.a n = A011883 n

end A011883

/-! ## A011883.P13718927623740502928

`A004526(A002264(round(2/5*C(n, 2))))`
-/

namespace A011883.P13718927623740502928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002264 (SequenceMachineLib.roundAway ((2 : ℚ) / 5 * (Nat.choose n 2 : ℚ))).toNat).toNat

end

end A011883.P13718927623740502928

namespace A011883

/-- `A004526(A002264(round(2/5*C(n, 2))))` -/
def P13718927623740502928.Spec : Prop :=
  ∀ n, P13718927623740502928.a n = A011883 n

end A011883

/-! ## A011883.P3991113517506324053

`A152467(A130520(n+1)+A130520(n+1))`
-/

namespace A011883.P3991113517506324053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A130520 (n + 1) + A130520 (n + 1)).toNat

end

end A011883.P3991113517506324053

namespace A011883

/-- `A152467(A130520(n+1)+A130520(n+1))` -/
def P3991113517506324053.Spec : Prop :=
  ∀ n, P3991113517506324053.a n = A011883 n

end A011883

/-! ## A011883.P4304611132764495815

`A059995(A128422(n+1))`
-/

namespace A011883.P4304611132764495815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A128422 (n + 1)).toNat

end

end A011883.P4304611132764495815

namespace A011883

/-- `A059995(A128422(n+1))` -/
def P4304611132764495815.Spec : Prop :=
  ∀ n, P4304611132764495815.a n = A011883 n

end A011883

/-! ## A011883.P6698540619522067323

`A059995(A174709(2*n+1))`
-/

namespace A011883.P6698540619522067323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A174709 (2 * n + 1)).toNat

end

end A011883.P6698540619522067323

namespace A011883

/-- `A059995(A174709(2*n+1))` -/
def P6698540619522067323.Spec : Prop :=
  ∀ n, P6698540619522067323.a n = A011883 n

end A011883

/-! ## A011883.P4723033772357567484

`A059995(A087483(n)-(n+1))`
-/

namespace A011883.P4723033772357567484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A087483 n - (n + 1 : ℤ)).toNat

end

end A011883.P4723033772357567484

namespace A011883

/-- `A059995(A087483(n)-(n+1))` -/
def P4723033772357567484.Spec : Prop :=
  ∀ n, P4723033772357567484.a n = A011883 n

end A011883

/-! ## A011883.P11232247381628392119

`A342696(A185170(n+1))`
-/

namespace A011883.P11232247381628392119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A185170 (n + 1)).toNat

end

end A011883.P11232247381628392119

namespace A011883

/-- `A342696(A185170(n+1))` -/
def P11232247381628392119.Spec : Prop :=
  ∀ n, P11232247381628392119.a n = A011883 n

end A011883

/-!
# A011884: Floor(n(n - 1)/31).

The programs for A011884, the canonical program `A011884.P16232958899597275434` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011884 has offset 0).

The definition of A011884 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/31)` (program `A011884.P16232958899597275434`, by `A011884.P16232958899597275434.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011884.P16232958899597275434

`floor(n*(n-1)/31)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011884

/-- `floor(n*(n-1)/31)` -/
def P16232958899597275434.Spec : Prop :=
  ∀ n, P16232958899597275434.a n = A011884 n

theorem P16232958899597275434.correct : P16232958899597275434.Spec := by
  intro n
  simp only [A011884]

end A011884

/-! ## A011884.P1652321178490521735

`ceil(A002061(n)/31)-1`
-/

namespace A011884.P1652321178490521735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002061 n : ℚ) / 31⌉ - 1

end

end A011884.P1652321178490521735

namespace A011884

/-- `ceil(A002061(n)/31)-1` -/
def P1652321178490521735.Spec : Prop :=
  ∀ n, P1652321178490521735.a n = A011884 n

end A011884

/-! ## A011884.P17543604633684941648

`A033999(2*n+1)+ceil(A002061(n)/31)`
-/

namespace A011884.P17543604633684941648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + ⌈(A002061 n : ℚ) / 31⌉

end

end A011884.P17543604633684941648

namespace A011884

/-- `A033999(2*n+1)+ceil(A002061(n)/31)` -/
def P17543604633684941648.Spec : Prop :=
  ∀ n, P17543604633684941648.a n = A011884 n

end A011884

/-! ## A011884.P13393324608212187605

`A247064(A103505(n))-A103505(n)`
-/

namespace A011884.P13393324608212187605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247064 (A103505 n).toNat - A103505 n

end

end A011884.P13393324608212187605

namespace A011884

/-- `A247064(A103505(n))-A103505(n)` -/
def P13393324608212187605.Spec : Prop :=
  ∀ n, P13393324608212187605.a n = A011884 n

end A011884

/-! ## A011884.P6721305062958900078

`A247064(A103505(and(1, 2*n)+n))%A103505(n)`
-/

namespace A011884.P6721305062958900078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247064 (A103505 (Nat.land 1 (2 * n) + n)).toNat) (A103505 n)

end

end A011884.P6721305062958900078

namespace A011884

/-- `A247064(A103505(and(1, 2*n)+n))%A103505(n)` -/
def P6721305062958900078.Spec : Prop :=
  ∀ n, P6721305062958900078.a n = A011884 n

end A011884

/-! ## A011884.P1737481055563789330

`A247064(A103505(floor((2*n+1)/2)))%A103505(n)`
-/

namespace A011884.P1737481055563789330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247064 (A103505 ⌊(2 * n + 1 : ℚ) / 2⌋.toNat).toNat) (A103505 n)

end

end A011884.P1737481055563789330

namespace A011884

/-- `A247064(A103505(floor((2*n+1)/2)))%A103505(n)` -/
def P1737481055563789330.Spec : Prop :=
  ∀ n, P1737481055563789330.a n = A011884 n

end A011884

/-! ## A011884.P2193268311526604676

`A247064(A103505(n))%A103505(n)*A057427(n)`
-/

namespace A011884.P2193268311526604676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247064 (A103505 n).toNat) (A103505 n) * A057427 n

end

end A011884.P2193268311526604676

namespace A011884

/-- `A247064(A103505(n))%A103505(n)*A057427(n)` -/
def P2193268311526604676.Spec : Prop :=
  ∀ n, P2193268311526604676.a n = A011884 n

end A011884

/-! ## A011884.P16322086632272319968

`A247064(A103505(n))+A103505(n)*A153881(n+2)`
-/

namespace A011884.P16322086632272319968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247064 (A103505 n).toNat + A103505 n * A153881 (n + 2)

end

end A011884.P16322086632272319968

namespace A011884

/-- `A247064(A103505(n))+A103505(n)*A153881(n+2)` -/
def P16322086632272319968.Spec : Prop :=
  ∀ n, P16322086632272319968.a n = A011884 n

end A011884

/-!
# A011885: a(n) = floor(n*(n-1)/32).

The programs for A011885, the canonical program `A011885.P832137992010846166` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011885 has offset 0).

The definition of A011885 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)/32)` (program `A011885.P832137992010846166`, by `A011885.P832137992010846166.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011885.P832137992010846166

`floor(n*(n-1)/32)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011885

/-- `floor(n*(n-1)/32)` -/
def P832137992010846166.Spec : Prop :=
  ∀ n, P832137992010846166.a n = A011885 n

theorem P832137992010846166.correct : P832137992010846166.Spec := by
  intro n
  simp only [A011885]

end A011885

/-! ## A011885.P10160407427943607841

`and(∑[n]-n, -16)/16`
-/

namespace A011885.P10160407427943607841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) (-16) : ℚ) / 16

end

end A011885.P10160407427943607841

namespace A011885

/-- `and(∑[n]-n, -16)/16` -/
def P10160407427943607841.Spec : Prop :=
  ∀ n, P10160407427943607841.a n = (A011885 n : ℚ)

end A011885

/-! ## A011885.P8281228358454826538

`A004526(A011869(n))`
-/

namespace A011885.P8281228358454826538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011869 n).toNat

end

end A011885.P8281228358454826538

namespace A011885

/-- `A004526(A011869(n))` -/
def P8281228358454826538.Spec : Prop :=
  ∀ n, P8281228358454826538.a n = A011885 n

end A011885

/-! ## A011885.P11346753411706091702

`A002265(A011861(n))`
-/

namespace A011885.P11346753411706091702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A011861 n).toNat

end

end A011885.P11346753411706091702

namespace A011885

/-- `A002265(A011861(n))` -/
def P11346753411706091702.Spec : Prop :=
  ∀ n, P11346753411706091702.a n = A011885 n

end A011885

/-! ## A011885.P1374851176502301161

`A002265(2*A011869(n))`
-/

namespace A011885.P1374851176502301161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A011869 n).toNat

end

end A011885.P1374851176502301161

namespace A011885

/-- `A002265(2*A011869(n))` -/
def P1374851176502301161.Spec : Prop :=
  ∀ n, P1374851176502301161.a n = A011885 n

end A011885

/-! ## A011885.P16857164772855997276

`A002265(A011869(n)+A011869(n)+1)`
-/

namespace A011885.P16857164772855997276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A011869 n + (A011869 n + 1)).toNat

end

end A011885.P16857164772855997276

namespace A011885

/-- `A002265(A011869(n)+A011869(n)+1)` -/
def P16857164772855997276.Spec : Prop :=
  ∀ n, P16857164772855997276.a n = A011885 n

end A011885

/-! ## A011885.P13013440792381618508

`A004526(A002265(∑[A004524(n)]))`
-/

namespace A011885.P13013440792381618508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A011885.P13013440792381618508

namespace A011885

/-- `A004526(A002265(∑[A004524(n)]))` -/
def P13013440792381618508.Spec : Prop :=
  ∀ n, P13013440792381618508.a n = A011885 n

end A011885

/-! ## A011885.P4106965863727836435

`A002265(A004524(∑[A004524(n)]))`
-/

namespace A011885.P4106965863727836435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A011885.P4106965863727836435

namespace A011885

/-- `A002265(A004524(∑[A004524(n)]))` -/
def P4106965863727836435.Spec : Prop :=
  ∀ n, P4106965863727836435.a n = A011885 n

end A011885

/-! ## A011885.P5779045772012233861

`A004526(A002265(∑[A173711(2*n)]))`
-/

namespace A011885.P5779045772012233861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A011885.P5779045772012233861

namespace A011885

/-- `A004526(A002265(∑[A173711(2*n)]))` -/
def P5779045772012233861.Spec : Prop :=
  ∀ n, P5779045772012233861.a n = A011885 n

end A011885

/-! ## A011885.P4944035764576380767

`A002265(A122461(∑[A173711(2*n)]))`
-/

namespace A011885.P4944035764576380767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A122461 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A011885.P4944035764576380767

namespace A011885

/-- `A002265(A122461(∑[A173711(2*n)]))` -/
def P4944035764576380767.Spec : Prop :=
  ∀ n, P4944035764576380767.a n = A011885 n

end A011885

/-! ## A011885.P6711726994777266497

`A004526(A173711(∑[A173711(2*n)]))`
-/

namespace A011885.P6711726994777266497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A173711 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A011885.P6711726994777266497

namespace A011885

/-- `A004526(A173711(∑[A173711(2*n)]))` -/
def P6711726994777266497.Spec : Prop :=
  ∀ n, P6711726994777266497.a n = A011885 n

end A011885

/-! ## A011885.P10106583072797702438

`A004526(A004524(A004524(A011848(n))))`
-/

namespace A011885.P10106583072797702438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004524 (A004524 (A011848 n).toNat).toNat).toNat

end

end A011885.P10106583072797702438

namespace A011885

/-- `A004526(A004524(A004524(A011848(n))))` -/
def P10106583072797702438.Spec : Prop :=
  ∀ n, P10106583072797702438.a n = A011885 n

end A011885

/-! ## A011885.P15392716142026525765

`A342696(A389319(n))`
-/

namespace A011885.P15392716142026525765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A389319 n).toNat

end

end A011885.P15392716142026525765

namespace A011885

/-- `A342696(A389319(n))` -/
def P15392716142026525765.Spec : Prop :=
  ∀ n, P15392716142026525765.a n = A011885 n

end A011885

/-! ## A011885.P6125113451805099902

`A002265(A002265(C(n, 2)))`
-/

namespace A011885.P6125113451805099902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002265 (Nat.choose n 2)).toNat

end

end A011885.P6125113451805099902

namespace A011885

/-- `A002265(A002265(C(n, 2)))` -/
def P6125113451805099902.Spec : Prop :=
  ∀ n, P6125113451805099902.a n = A011885 n

end A011885

/-! ## A011885.P11873415227443088090

`A002265(A002265(∑[n]-n))`
-/

namespace A011885.P11873415227443088090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002265 (∑ j ∈ Finset.range (n + 1), f1 j - n)).toNat

end

end A011885.P11873415227443088090

namespace A011885

/-- `A002265(A002265(∑[n]-n))` -/
def P11873415227443088090.Spec : Prop :=
  ∀ n, P11873415227443088090.a n = A011885 n

end A011885

/-! ## A011885.P11287258788839559007

`A004526(A002265(A002265(n²-n)))`
-/

namespace A011885.P11287258788839559007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002265 (A002265 (n ^ 2 - n)).toNat).toNat

end

end A011885.P11287258788839559007

namespace A011885

/-- `A004526(A002265(A002265(n²-n)))` -/
def P11287258788839559007.Spec : Prop :=
  ∀ n, P11287258788839559007.a n = A011885 n

end A011885

/-!
# A011886: a(n) = floor(n*(n-1)*(n-2)/4).

The programs for A011886, the canonical program `A011886.P15285059053461243162` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011886 has offset 0).

The definition of A011886 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)/4)` (program `A011886.P15285059053461243162`, by `A011886.P15285059053461243162.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011886.P15285059053461243162

`floor(n*(n-1)*(n-2)/4)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011886

/-- `floor(n*(n-1)*(n-2)/4)` -/
def P15285059053461243162.Spec : Prop :=
  ∀ n, P15285059053461243162.a n = A011886 n

theorem P15285059053461243162.correct : P15285059053461243162.Spec := by
  intro n
  simp only [A011886]

end A011886

/-! ## A011886.P17779779273758462586

`ceil((3*C(n, 3)-1)/2)`
-/

namespace A011886.P17779779273758462586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 * Nat.choose n 3 : ℤ) - 1 : ℚ) / 2⌉

end

end A011886.P17779779273758462586

namespace A011886

/-- `ceil((3*C(n, 3)-1)/2)` -/
def P17779779273758462586.Spec : Prop :=
  ∀ n, P17779779273758462586.a n = A011886 n

end A011886

/-! ## A011886.P14565788004920468858

`floor(C(n, 3)/2)+C(n, 3)`
-/

namespace A011886.P14565788004920468858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 3 : ℚ) / 2⌋ + (Nat.choose n 3 : ℤ)

end

end A011886.P14565788004920468858

namespace A011886

/-- `floor(C(n, 3)/2)+C(n, 3)` -/
def P14565788004920468858.Spec : Prop :=
  ∀ n, P14565788004920468858.a n = A011886 n

end A011886

/-! ## A011886.P7615677575719820483

`∑[∑[A187326(n)-2%(n+1)]]`
-/

namespace A011886.P7615677575719820483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187326 n - ((2 % (n + 1) : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011886.P7615677575719820483

namespace A011886

/-- `∑[∑[A187326(n)-2%(n+1)]]` -/
def P7615677575719820483.Spec : Prop :=
  ∀ n, P7615677575719820483.a n = A011886 n

end A011886

/-! ## A011886.P7806526782529196622

`floor(A001621(n)/(n+1))-n²`
-/

namespace A011886.P7806526782529196622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001621 n : ℚ) / (n + 1 : ℚ)⌋ - (n ^ 2 : ℤ)

end

end A011886.P7806526782529196622

namespace A011886

/-- `floor(A001621(n)/(n+1))-n²` -/
def P7806526782529196622.Spec : Prop :=
  ∀ n, P7806526782529196622.a n = A011886 n

end A011886

/-! ## A011886.P2400733951050326006

`floor(A007531(n)/4)%A011782(n)`
-/

namespace A011886.P2400733951050326006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A007531 n : ℚ) / 4⌋ (A011782 n)

end

end A011886.P2400733951050326006

namespace A011886

/-- `floor(A007531(n)/4)%A011782(n)` -/
def P2400733951050326006.Spec : Prop :=
  ∀ n, P2400733951050326006.a n = A011886 n

end A011886

/-!
# A011887: a(n) = floor( n*(n-1)*(n-2)/5 ).

The programs for A011887, the canonical program `A011887.P3412120303154715756` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011887 has offset 0).

The definition of A011887 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)/5)` (program `A011887.P3412120303154715756`, by `A011887.P3412120303154715756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011887.P3412120303154715756

`floor(n*(n-1)*(n-2)/5)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011887

/-- `floor(n*(n-1)*(n-2)/5)` -/
def P3412120303154715756.Spec : Prop :=
  ∀ n, P3412120303154715756.a n = A011887 n

theorem P3412120303154715756.correct : P3412120303154715756.Spec := by
  intro n
  simp only [A011887]

end A011887

/-! ## A011887.P8671558890374666556

`round((A007531(n)-2)/5)`
-/

namespace A011887.P8671558890374666556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007531 n - 2 : ℚ) / 5)

end

end A011887.P8671558890374666556

namespace A011887

/-- `round((A007531(n)-2)/5)` -/
def P8671558890374666556.Spec : Prop :=
  ∀ n, P8671558890374666556.a n = A011887 n

end A011887

/-! ## A011887.P6428726649178419300

`A011912(n)+Δ[A000332(n)]`
-/

namespace A011887.P6428726649178419300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011912 n + (f1 (n + 1) - f1 n)

end

end A011887.P6428726649178419300

namespace A011887

/-- `A011912(n)+Δ[A000332(n)]` -/
def P6428726649178419300.Spec : Prop :=
  ∀ n, P6428726649178419300.a n = A011887 n

end A011887

/-! ## A011887.P6728842692208317872

`Δ[A011930(n)-A002266(n)]`
-/

namespace A011887.P6728842692208317872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011930 n - A002266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011887.P6728842692208317872

namespace A011887

/-- `Δ[A011930(n)-A002266(n)]` -/
def P6728842692208317872.Spec : Prop :=
  ∀ n, P6728842692208317872.a n = A011887 n

end A011887

/-! ## A011887.P4493445577298875552

`A047226(A050407(n+1))`
-/

namespace A011887.P4493445577298875552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (A050407 (n + 1)).toNat

end

end A011887.P4493445577298875552

namespace A011887

/-- `A047226(A050407(n+1))` -/
def P4493445577298875552.Spec : Prop :=
  ∀ n, P4493445577298875552.a n = A011887 n

end A011887

/-!
# A011888: Partial sums of A011863.

The programs for A011888, the canonical program `A011888.P8214025180642361741` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011888 has offset 0).

The definition of A011888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011888.P8214025180642361741

`∑[floor(((n+1)/2)^4)]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011888

/-- `∑[floor(((n+1)/2)^4)]` -/
def P8214025180642361741.Spec : Prop :=
  ∀ n, P8214025180642361741.a n = A011888 n

theorem P8214025180642361741.correct : P8214025180642361741.Spec := by
  intro n
  simp only [A011888]

end A011888

/-! ## A011888.P9094850945998404268

`∑[and(-2, (n+1)²²)]/16`
-/

namespace A011888.P9094850945998404268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (((n + 1) ^ 2) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 16

end

end A011888.P9094850945998404268

namespace A011888

/-- `∑[and(-2, (n+1)²²)]/16` -/
def P9094850945998404268.Spec : Prop :=
  ∀ n, P9094850945998404268.a n = (A011888 n : ℚ)

end A011888

/-! ## A011888.P5219591328468637126

`a(n-2)+C(∑[n]+1, 2)` with `a(0)=0, a(1)=1`
-/

namespace A011888.P5219591328468637126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2

end

end A011888.P5219591328468637126

namespace A011888

/-- `a(n-2)+C(∑[n]+1, 2)` -/
def P5219591328468637126.Spec : Prop :=
  ∀ n, (P5219591328468637126.a n : ℤ) = A011888 n

end A011888

/-! ## A011888.P4306173187218107325

`floor(a(n-1)+(∑[n]/n)²²)` with `a(0)=0`
-/

namespace A011888.P4306173187218107325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n : ℚ)) ^ 2) ^ 2⌋

end

end A011888.P4306173187218107325

namespace A011888

/-- `floor(a(n-1)+(∑[n]/n)²²)` -/
def P4306173187218107325.Spec : Prop :=
  ∀ n, P4306173187218107325.a n = A011888 n

end A011888

/-! ## A011888.P12747814809051434769

`a(n-1)+floor(((n+1)/2)²²)` with `a(0)=0`
-/

namespace A011888.P12747814809051434769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(((n + 1 : ℚ) / 2) ^ 2) ^ 2⌋

end

end A011888.P12747814809051434769

namespace A011888

/-- `a(n-1)+floor(((n+1)/2)²²)` -/
def P12747814809051434769.Spec : Prop :=
  ∀ n, P12747814809051434769.a n = A011888 n

end A011888

/-! ## A011888.P6170040277038100435

`A002817(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A011888.P6170040277038100435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A002817 n + a (n - 2)

end

end A011888.P6170040277038100435

namespace A011888

/-- `A002817(n)+a(n-2)` -/
def P6170040277038100435.Spec : Prop :=
  ∀ n, P6170040277038100435.a n = A011888 n

end A011888

/-! ## A011888.P16731773975152700548

`A011863(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A011888.P16731773975152700548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A011863 (n + 1) + a (n - 1)

end

end A011888.P16731773975152700548

namespace A011888

/-- `A011863(n+1)+a(n-1)` -/
def P16731773975152700548.Spec : Prop :=
  ∀ n, P16731773975152700548.a n = A011888 n

end A011888

/-! ## A011888.P105246876822717350

`A244864(n)-A244869(n)`
-/

namespace A011888.P105246876822717350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244864 n - A244869 n

end

end A011888.P105246876822717350

namespace A011888

/-- `A244864(n)-A244869(n)` -/
def P105246876822717350.Spec : Prop :=
  ∀ n, P105246876822717350.a n = A011888 n

theorem P105246876822717350.correct : P105246876822717350.Spec := by
  intro n
  simp only [A011888, Nat.add_sub_cancel, A011888.P105246876822717350.a, A011888.P8214025180642361741.f1, A011888.P8214025180642361741.a, A244864, A244864.P2839936141787549621.a, A244869, A244869.P6429433672219191574.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011888

/-! ## A011888.P7629020619426350738

`A244869(n)-A244870(n)`
-/

namespace A011888.P7629020619426350738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244869 n - A244870 n

end

end A011888.P7629020619426350738

namespace A011888

/-- `A244869(n)-A244870(n)` -/
def P7629020619426350738.Spec : Prop :=
  ∀ n, P7629020619426350738.a n = A011888 n

end A011888

/-! ## A011888.P13861735293473685479

`A085463(n+1)-A244497(n)`
-/

namespace A011888.P13861735293473685479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085463 (n + 1) - A244497 n

end

end A011888.P13861735293473685479

namespace A011888

/-- `A085463(n+1)-A244497(n)` -/
def P13861735293473685479.Spec : Prop :=
  ∀ n, P13861735293473685479.a n = A011888 n

theorem P13861735293473685479.correct : P13861735293473685479.Spec := by
  intro n
  simp only [A011888, Nat.add_sub_cancel, A011888.P13861735293473685479.a, A011888.P8214025180642361741.f1, A011888.P8214025180642361741.a, A085463, A085463.P12822451270084158499.a, A244497, A244497.P10835936318056941169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011888

/-!
# A011889: a(n) = floor(n*(n-1)*(n-2)/7).

The programs for A011889, the canonical program `A011889.P2769119515535186735` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011889 has offset 0).

The definition of A011889 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)/7)` (program `A011889.P2769119515535186735`, by `A011889.P2769119515535186735.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011889.P2769119515535186735

`floor(n*(n-1)*(n-2)/7)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011889

/-- `floor(n*(n-1)*(n-2)/7)` -/
def P2769119515535186735.Spec : Prop :=
  ∀ n, P2769119515535186735.a n = A011889 n

theorem P2769119515535186735.correct : P2769119515535186735.Spec := by
  intro n
  simp only [A011889]

end A011889

/-! ## A011889.P16679981712413416490

`ceil((A007531(n)+1)/7)-1`
-/

namespace A011889.P16679981712413416490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007531 n + 1 : ℚ) / 7⌉ - 1

end

end A011889.P16679981712413416490

namespace A011889

/-- `ceil((A007531(n)+1)/7)-1` -/
def P16679981712413416490.Spec : Prop :=
  ∀ n, P16679981712413416490.a n = A011889 n

end A011889

/-! ## A011889.P14718743376317252666

`floor(A007531(n)/7)*A293108(A055998((-1)^n+1))`
-/

namespace A011889.P14718743376317252666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007531 n : ℚ) / 7⌋ * A293108 (A055998 ((-1) ^ n + 1).toNat).toNat

end

end A011889.P14718743376317252666

namespace A011889

/-- `floor(A007531(n)/7)*A293108(A055998((-1)^n+1))` -/
def P14718743376317252666.Spec : Prop :=
  ∀ n, P14718743376317252666.a n = A011889 n

end A011889

/-! ## A011889.P14554781960537969258

`floor(A007531(n)/7)%A007482(n)`
-/

namespace A011889.P14554781960537969258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A007531 n : ℚ) / 7⌋ (A007482 n)

end

end A011889.P14554781960537969258

namespace A011889

/-- `floor(A007531(n)/7)%A007482(n)` -/
def P14554781960537969258.Spec : Prop :=
  ∀ n, P14554781960537969258.a n = A011889 n

end A011889

/-! ## A011889.P2961138222475867242

`A057357(A007290(n))`
-/

namespace A011889.P2961138222475867242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (A007290 n).toNat

end

end A011889.P2961138222475867242

namespace A011889

/-- `A057357(A007290(n))` -/
def P2961138222475867242.Spec : Prop :=
  ∀ n, P2961138222475867242.a n = A011889 n

end A011889

/-!
# A011890: a(n) = floor( n*(n-1)*(n-2)/8 ).

The programs for A011890, the canonical program `A011890.P14928123182323949736` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011890 has offset 0).

The definition of A011890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)/8)` (program `A011890.P14928123182323949736`, by `A011890.P14928123182323949736.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011890.P10615053208814663909

`floor(6*C(n, 3)/8)`
-/

namespace A011890.P10615053208814663909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * Nat.choose n 3 : ℚ) / 8⌋

end

end A011890.P10615053208814663909

namespace A011890

/-- `floor(6*C(n, 3)/8)` -/
def P10615053208814663909.Spec : Prop :=
  ∀ n, P10615053208814663909.a n = A011890 n

end A011890

/-! ## A011890.P14928123182323949736

`floor(n*(n-1)*(n-2)/8)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011890

/-- `floor(n*(n-1)*(n-2)/8)` -/
def P14928123182323949736.Spec : Prop :=
  ∀ n, P14928123182323949736.a n = A011890 n

theorem P14928123182323949736.correct : P14928123182323949736.Spec := by
  intro n
  simp only [A011890]

end A011890

/-! ## A011890.P2031654945642904341

`C(n, 3)-A053618(n+1)`
-/

namespace A011890.P2031654945642904341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - A053618 (n + 1)

end

end A011890.P2031654945642904341

namespace A011890

/-- `C(n, 3)-A053618(n+1)` -/
def P2031654945642904341.Spec : Prop :=
  ∀ n, P2031654945642904341.a n = A011890 n

end A011890

/-! ## A011890.P13054230245212010300

`ceil((ceil((ceil((A007531(n)-1)/2)-1)/2)-1)/2)`
-/

namespace A011890.P13054230245212010300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(⌈(A007531 n - 1 : ℚ) / 2⌉ - 1 : ℚ) / 2⌉ - 1 : ℚ) / 2⌉

end

end A011890.P13054230245212010300

namespace A011890

/-- `ceil((ceil((ceil((A007531(n)-1)/2)-1)/2)-1)/2)` -/
def P13054230245212010300.Spec : Prop :=
  ∀ n, P13054230245212010300.a n = A011890 n

end A011890

/-! ## A011890.P16910459143698568767

`Δ[A000332(n)]-A053618(n+1)`
-/

namespace A011890.P16910459143698568767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A053618 (n + 1)

end

end A011890.P16910459143698568767

namespace A011890

/-- `Δ[A000332(n)]-A053618(n+1)` -/
def P16910459143698568767.Spec : Prop :=
  ∀ n, P16910459143698568767.a n = A011890 n

end A011890

/-! ## A011890.P15613841701121083706

`Δ[Δ[A000389(n)]]-A053618(n+1)`
-/

namespace A011890.P15613841701121083706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A053618 (n + 1)

end

end A011890.P15613841701121083706

namespace A011890

/-- `Δ[Δ[A000389(n)]]-A053618(n+1)` -/
def P15613841701121083706.Spec : Prop :=
  ∀ n, P15613841701121083706.a n = A011890 n

end A011890

/-!
# A011891: a(n) = floor(n*(n-1)*(n-2)/9).

The programs for A011891, the canonical program `A011891.P16703474556139699366` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011891 has offset 0).

The definition of A011891 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)/9)` (program `A011891.P16703474556139699366`, by `A011891.P16703474556139699366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011891.P16703474556139699366

`floor(n*(n-1)*(n-2)/9)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011891

/-- `floor(n*(n-1)*(n-2)/9)` -/
def P16703474556139699366.Spec : Prop :=
  ∀ n, P16703474556139699366.a n = A011891 n

theorem P16703474556139699366.correct : P16703474556139699366.Spec := by
  intro n
  simp only [A011891]

end A011891

/-! ## A011891.P5533840747842018448

`ceil(2*(C(n, 3)-1)/3)`
-/

namespace A011891.P5533840747842018448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * ((Nat.choose n 3 : ℤ) - 1) : ℚ) / 3⌉

end

end A011891.P5533840747842018448

namespace A011891

/-- `ceil(2*(C(n, 3)-1)/3)` -/
def P5533840747842018448.Spec : Prop :=
  ∀ n, P5533840747842018448.a n = A011891 n

end A011891

/-! ## A011891.P962601827374741265

`round((2*C(n, 3)-1)/3)`
-/

namespace A011891.P962601827374741265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * Nat.choose n 3 : ℤ) - 1 : ℚ) / 3)

end

end A011891.P962601827374741265

namespace A011891

/-- `round((2*C(n, 3)-1)/3)` -/
def P962601827374741265.Spec : Prop :=
  ∀ n, P962601827374741265.a n = A011891 n

end A011891

/-! ## A011891.P5792961403597692166

`round((A007531(n)-2)/9)`
-/

namespace A011891.P5792961403597692166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007531 n - 2 : ℚ) / 9)

end

end A011891.P5792961403597692166

namespace A011891

/-- `round((A007531(n)-2)/9)` -/
def P5792961403597692166.Spec : Prop :=
  ∀ n, P5792961403597692166.a n = A011891 n

end A011891

/-! ## A011891.P17359211440605280185

`floor(A007290(n)/3)%(n+1)²²`
-/

namespace A011891.P17359211440605280185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A007290 n : ℚ) / 3⌋ (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A011891.P17359211440605280185

namespace A011891

/-- `floor(A007290(n)/3)%(n+1)²²` -/
def P17359211440605280185.Spec : Prop :=
  ∀ n, P17359211440605280185.a n = A011891 n

end A011891

/-!
# A011892: a(n) = floor( n*(n-1)*(n-2)/10 ).

The programs for A011892, the canonical program `A011892.P18248577019679440402` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011892 has offset 0).

The definition of A011892 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)/10)` (program `A011892.P18248577019679440402`, by `A011892.P18248577019679440402.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011892.P18248577019679440402

`floor(n*(n-1)*(n-2)/10)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011892

/-- `floor(n*(n-1)*(n-2)/10)` -/
def P18248577019679440402.Spec : Prop :=
  ∀ n, P18248577019679440402.a n = A011892 n

theorem P18248577019679440402.correct : P18248577019679440402.Spec := by
  intro n
  simp only [A011892]

end A011892

/-! ## A011892.P7616341684998291269

`A007494(A011897(n))`
-/

namespace A011892.P7616341684998291269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A011897 n).toNat

end

end A011892.P7616341684998291269

namespace A011892

/-- `A007494(A011897(n))` -/
def P7616341684998291269.Spec : Prop :=
  ∀ n, P7616341684998291269.a n = A011892 n

end A011892

/-! ## A011892.P3314707692305202771

`A011897(n)+A004526(A011897(n)+1)`
-/

namespace A011892.P3314707692305202771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011897 n + A004526 (A011897 n + 1).toNat

end

end A011892.P3314707692305202771

namespace A011892

/-- `A011897(n)+A004526(A011897(n)+1)` -/
def P3314707692305202771.Spec : Prop :=
  ∀ n, P3314707692305202771.a n = A011892 n

end A011892

/-! ## A011892.P6863611997411746940

`A057355(C(n, 3))`
-/

namespace A011892.P6863611997411746940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (Nat.choose n 3)

end

end A011892.P6863611997411746940

namespace A011892

/-- `A057355(C(n, 3))` -/
def P6863611997411746940.Spec : Prop :=
  ∀ n, P6863611997411746940.a n = A011892 n

end A011892

/-! ## A011892.P11554122454145251834

`A004526(A011887(n))`
-/

namespace A011892.P11554122454145251834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011887 n).toNat

end

end A011892.P11554122454145251834

namespace A011892

/-- `A004526(A011887(n))` -/
def P11554122454145251834.Spec : Prop :=
  ∀ n, P11554122454145251834.a n = A011892 n

end A011892

/-!
# A011893: a(n) = floor( n*(n-1)*(n-2)/11 ).

The programs for A011893, the canonical program `A011893.P5460163837640399554` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011893 has offset 0).

The definition of A011893 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)/11)` (program `A011893.P5460163837640399554`, by `A011893.P5460163837640399554.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011893.P7317204545226239492

`floor(6*C(n, 3)/11)`
-/

namespace A011893.P7317204545226239492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * Nat.choose n 3 : ℚ) / 11⌋

end

end A011893.P7317204545226239492

namespace A011893

/-- `floor(6*C(n, 3)/11)` -/
def P7317204545226239492.Spec : Prop :=
  ∀ n, P7317204545226239492.a n = A011893 n

end A011893

/-! ## A011893.P5460163837640399554

`floor(n*(n-1)*(n-2)/11)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011893

/-- `floor(n*(n-1)*(n-2)/11)` -/
def P5460163837640399554.Spec : Prop :=
  ∀ n, P5460163837640399554.a n = A011893 n

theorem P5460163837640399554.correct : P5460163837640399554.Spec := by
  intro n
  simp only [A011893]

end A011893

/-! ## A011893.P8839515932399853347

`A344420(A007531(n))`
-/

namespace A011893.P8839515932399853347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A007531 n).toNat

end

end A011893.P8839515932399853347

namespace A011893

/-- `A344420(A007531(n))` -/
def P8839515932399853347.Spec : Prop :=
  ∀ n, P8839515932399853347.a n = A011893 n

end A011893

/-!
# A011894: a(n) = floor(n*(n-1)*(n-2)/12).

The programs for A011894, the canonical program `A011894.P817912703255920332` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011894 has offset 0).

The definition of A011894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)/12)` (program `A011894.P817912703255920332`, by `A011894.P817912703255920332.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011894.P8673176078322728136

`floor(C(n, 3)/2)`
-/

namespace A011894.P8673176078322728136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 3 : ℚ) / 2⌋

end

end A011894.P8673176078322728136

namespace A011894

/-- `floor(C(n, 3)/2)` -/
def P8673176078322728136.Spec : Prop :=
  ∀ n, P8673176078322728136.a n = A011894 n

end A011894

/-! ## A011894.P817912703255920332

`floor(n*(n-1)*(n-2)/12)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011894

/-- `floor(n*(n-1)*(n-2)/12)` -/
def P817912703255920332.Spec : Prop :=
  ∀ n, P817912703255920332.a n = A011894 n

theorem P817912703255920332.correct : P817912703255920332.Spec := by
  intro n
  simp only [A011894]

end A011894

/-! ## A011894.P7685279856749201947

`(3*((-1)^n-1)+2*n*(n-1)*(n-2)+6*sin(n*π/2))/24`
-/

namespace A011894.P7685279856749201947
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 * ((-1) ^ n - 1) + (2 * n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) : ℝ) + 6 * Real.sin ((n : ℝ) * Real.pi / 2)) / 24

end

end A011894.P7685279856749201947

namespace A011894

/-- `(3*((-1)^n-1)+2*n*(n-1)*(n-2)+6*sin(n*π/2))/24` -/
def P7685279856749201947.Spec : Prop :=
  ∀ n, P7685279856749201947.a n = (A011894 n : ℝ)

end A011894

/-! ## A011894.P7612939502125461842

`and(-2, C(n, 3))/2`
-/

namespace A011894.P7612939502125461842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (Nat.choose n 3 : ℤ) : ℚ) / 2

end

end A011894.P7612939502125461842

namespace A011894

/-- `and(-2, C(n, 3))/2` -/
def P7612939502125461842.Spec : Prop :=
  ∀ n, P7612939502125461842.a n = (A011894 n : ℚ)

end A011894

/-! ## A011894.P5780390498705742791

`ceil((C(n, 3)-1)/2)`
-/

namespace A011894.P5780390498705742791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 3 : ℤ) - 1 : ℚ) / 2⌉

end

end A011894.P5780390498705742791

namespace A011894

/-- `ceil((C(n, 3)-1)/2)` -/
def P5780390498705742791.Spec : Prop :=
  ∀ n, P5780390498705742791.a n = A011894 n

end A011894

/-! ## A011894.P13070032942908138935

`round((2*C(n, 3)-1)/4)`
-/

namespace A011894.P13070032942908138935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * Nat.choose n 3 : ℤ) - 1 : ℚ) / 4)

end

end A011894.P13070032942908138935

namespace A011894

/-- `round((2*C(n, 3)-1)/4)` -/
def P13070032942908138935.Spec : Prop :=
  ∀ n, P13070032942908138935.a n = A011894 n

end A011894

/-! ## A011894.P2466349204261745865

`round(cosh(log(C(n, 3)+1)))-1`
-/

namespace A011894.P2466349204261745865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (Nat.choose n 3 + 1 : ℝ))) - 1

end

end A011894.P2466349204261745865

namespace A011894

/-- `round(cosh(log(C(n, 3)+1)))-1` -/
def P2466349204261745865.Spec : Prop :=
  ∀ n, P2466349204261745865.a n = A011894 n

end A011894

/-! ## A011894.P7474286605401603838

`A390347(n)+A011848(n)`
-/

namespace A011894.P7474286605401603838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390347 n + A011848 n

end

end A011894.P7474286605401603838

namespace A011894

/-- `A390347(n)+A011848(n)` -/
def P7474286605401603838.Spec : Prop :=
  ∀ n, P7474286605401603838.a n = A011894 n

end A011894

/-! ## A011894.P2500726940163813057

`A390342(n)-A054925(n)`
-/

namespace A011894.P2500726940163813057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390342 n - A054925 n

end

end A011894.P2500726940163813057

namespace A011894

/-- `A390342(n)-A054925(n)` -/
def P2500726940163813057.Spec : Prop :=
  ∀ n, P2500726940163813057.a n = A011894 n

end A011894

/-! ## A011894.P14838401003236750689

`∑[A004526(n)²]-A211521(n)`
-/

namespace A011894.P14838401003236750689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A211521 n

end

end A011894.P14838401003236750689

namespace A011894

/-- `∑[A004526(n)²]-A211521(n)` -/
def P14838401003236750689.Spec : Prop :=
  ∀ n, P14838401003236750689.a n = A011894 n

end A011894

/-! ## A011894.P12668238069906829345

`and(-2, Δ[A000332(n)])/2`
-/

namespace A011894.P12668238069906829345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A011894.P12668238069906829345

namespace A011894

/-- `and(-2, Δ[A000332(n)])/2` -/
def P12668238069906829345.Spec : Prop :=
  ∀ n, P12668238069906829345.a n = (A011894 n : ℚ)

end A011894

/-! ## A011894.P825941494137408259

`∑[∑[A004525(n+1)]-A267528(n+1)]`
-/

namespace A011894.P825941494137408259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A267528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011894.P825941494137408259

namespace A011894

/-- `∑[∑[A004525(n+1)]-A267528(n+1)]` -/
def P825941494137408259.Spec : Prop :=
  ∀ n, P825941494137408259.a n = A011894 n

end A011894

/-! ## A011894.P17292151019342688095

`∑[A065033(A152947(n+1))-A065033(n)]`
-/

namespace A011894.P17292151019342688095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A152947 (n + 1)).toNat - A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011894.P17292151019342688095

namespace A011894

/-- `∑[A065033(A152947(n+1))-A065033(n)]` -/
def P17292151019342688095.Spec : Prop :=
  ∀ n, P17292151019342688095.a n = A011894 n

end A011894

/-!
# A011895: a(n) = floor(n*(n-1)*(n-2)/13).

The programs for A011895, the canonical program `A011895.P10994717384070916349` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011895 has offset 0).

The definition of A011895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)/13)` (program `A011895.P10994717384070916349`, by `A011895.P10994717384070916349.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011895.P10994717384070916349

`floor(n*(n-1)*(n-2)/13)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011895

/-- `floor(n*(n-1)*(n-2)/13)` -/
def P10994717384070916349.Spec : Prop :=
  ∀ n, P10994717384070916349.a n = A011895 n

theorem P10994717384070916349.correct : P10994717384070916349.Spec := by
  intro n
  simp only [A011895]

end A011895

/-! ## A011895.P13405895887429510917

`A003002(A011928(n))`
-/

namespace A011895.P13405895887429510917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A011928 n).toNat

end

end A011895.P13405895887429510917

namespace A011895

/-- `A003002(A011928(n))` -/
def P13405895887429510917.Spec : Prop :=
  ∀ n, P13405895887429510917.a n = A011895 n

end A011895

/-! ## A011895.P18161026902922017414

`A373811(A011919(n))`
-/

namespace A011895.P18161026902922017414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A011919 n).toNat

end

end A011895.P18161026902922017414

namespace A011895

/-- `A373811(A011919(n))` -/
def P18161026902922017414.Spec : Prop :=
  ∀ n, P18161026902922017414.a n = A011895 n

end A011895

/-! ## A011895.P11189908526735494868

`A105517(A105516((n+1)²²))`
-/

namespace A011895.P11189908526735494868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (A105516 (((n + 1) ^ 2) ^ 2)).toNat

end

end A011895.P11189908526735494868

namespace A011895

/-- `A105517(A105516((n+1)²²))` -/
def P11189908526735494868.Spec : Prop :=
  ∀ n, P11189908526735494868.a n = A011895 n

end A011895

/-!
# A011896: a(n) = floor( n*(n-1)*(n-2)/14 ).

The programs for A011896, the canonical program `A011896.P9286390782100093267` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011896 has offset 0).

The definition of A011896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)/14)` (program `A011896.P9286390782100093267`, by `A011896.P9286390782100093267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011896.P15504926860356439818

`floor(3*C(n, 3)/7)`
-/

namespace A011896.P15504926860356439818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * Nat.choose n 3 : ℚ) / 7⌋

end

end A011896.P15504926860356439818

namespace A011896

/-- `floor(3*C(n, 3)/7)` -/
def P15504926860356439818.Spec : Prop :=
  ∀ n, P15504926860356439818.a n = A011896 n

end A011896

/-! ## A011896.P9286390782100093267

`floor(n*(n-1)*(n-2)/14)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011896

/-- `floor(n*(n-1)*(n-2)/14)` -/
def P9286390782100093267.Spec : Prop :=
  ∀ n, P9286390782100093267.a n = A011896 n

theorem P9286390782100093267.correct : P9286390782100093267.Spec := by
  intro n
  simp only [A011896]

end A011896

/-! ## A011896.P16856284090440822797

`abs(floor((A060354(n)-n)/7))`
-/

namespace A011896.P16856284090440822797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A060354 n - (n : ℤ) : ℚ) / 7⌋|

end

end A011896.P16856284090440822797

namespace A011896

/-- `abs(floor((A060354(n)-n)/7))` -/
def P16856284090440822797.Spec : Prop :=
  ∀ n, P16856284090440822797.a n = A011896 n

end A011896

/-! ## A011896.P898321908088080454

`abs(floor(Δ[A011917(n)/8]))`
-/

namespace A011896.P898321908088080454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011917 n : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊f1 (n + 1) - f1 n⌋|

end

end A011896.P898321908088080454

namespace A011896

/-- `abs(floor(Δ[A011917(n)/8]))` -/
def P898321908088080454.Spec : Prop :=
  ∀ n, P898321908088080454.a n = A011896 n

end A011896

/-! ## A011896.P11180270462601781122

`abs(ceil(-Δ[A011924(n)/4]))`
-/

namespace A011896.P11180270462601781122
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011924 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈-(f1 (n + 1) - f1 n)⌉|

end

end A011896.P11180270462601781122

namespace A011896

/-- `abs(ceil(-Δ[A011924(n)/4]))` -/
def P11180270462601781122.Spec : Prop :=
  ∀ n, P11180270462601781122.a n = A011896 n

end A011896

/-! ## A011896.P3686876090370578196

`floor(Δ[A011917(n)/8])%A000051(n)`
-/

namespace A011896.P3686876090370578196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011917 n : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊f1 (n + 1) - f1 n⌋ (A000051 n)

end

end A011896.P3686876090370578196

namespace A011896

/-- `floor(Δ[A011917(n)/8])%A000051(n)` -/
def P3686876090370578196.Spec : Prop :=
  ∀ n, P3686876090370578196.a n = A011896 n

end A011896

/-!
# A011897: a(n) = floor(n*(n-1)*(n-2)/15).

The programs for A011897, the canonical program `A011897.P17161544435128335635` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011897 has offset 0).

The definition of A011897 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)/15)` (program `A011897.P17161544435128335635`, by `A011897.P17161544435128335635.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011897.P17161544435128335635

`floor(n*(n-1)*(n-2)/15)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011897

/-- `floor(n*(n-1)*(n-2)/15)` -/
def P17161544435128335635.Spec : Prop :=
  ∀ n, P17161544435128335635.a n = A011897 n

theorem P17161544435128335635.correct : P17161544435128335635.Spec := by
  intro n
  simp only [A011897]

end A011897

/-! ## A011897.P9827055079792722092

`∑[∑[2*n-A047515(n+1)]]+n`
-/

namespace A011897.P9827055079792722092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A047515 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A011897.P9827055079792722092

namespace A011897

/-- `∑[∑[2*n-A047515(n+1)]]+n` -/
def P9827055079792722092.Spec : Prop :=
  ∀ n, P9827055079792722092.a n = A011897 n

end A011897

/-! ## A011897.P13146109084603864801

`A004396(A011892(n))`
-/

namespace A011897.P13146109084603864801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A011892 n).toNat

end

end A011897.P13146109084603864801

namespace A011897

/-- `A004396(A011892(n))` -/
def P13146109084603864801.Spec : Prop :=
  ∀ n, P13146109084603864801.a n = A011897 n

end A011897

/-! ## A011897.P8034697265441569830

`A057354(C(n, 3))`
-/

namespace A011897.P8034697265441569830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (Nat.choose n 3)

end

end A011897.P8034697265441569830

namespace A011897

/-- `A057354(C(n, 3))` -/
def P8034697265441569830.Spec : Prop :=
  ∀ n, P8034697265441569830.a n = A011897 n

end A011897

/-! ## A011897.P11047245456751957112

`A288156(C(n, 3))`
-/

namespace A011897.P11047245456751957112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (Nat.choose n 3)

end

end A011897.P11047245456751957112

namespace A011897

/-- `A288156(C(n, 3))` -/
def P11047245456751957112.Spec : Prop :=
  ∀ n, P11047245456751957112.a n = A011897 n

end A011897

/-!
# A011898: a(n) = floor(n*(n-1)*(n-2)/16).

The programs for A011898, the canonical program `A011898.P11762601328788440578` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011898 has offset 0).

The definition of A011898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)/16)` (program `A011898.P11762601328788440578`, by `A011898.P11762601328788440578.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011898.P11762601328788440578

`floor(n*(n-1)*(n-2)/16)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011898

/-- `floor(n*(n-1)*(n-2)/16)` -/
def P11762601328788440578.Spec : Prop :=
  ∀ n, P11762601328788440578.a n = A011898 n

theorem P11762601328788440578.correct : P11762601328788440578.Spec := by
  intro n
  simp only [A011898]

end A011898

/-! ## A011898.P10670216295220135133

`ceil((A011890(n)-1)/2)`
-/

namespace A011898.P10670216295220135133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011890 n - 1 : ℚ) / 2⌉

end

end A011898.P10670216295220135133

namespace A011898

/-- `ceil((A011890(n)-1)/2)` -/
def P10670216295220135133.Spec : Prop :=
  ∀ n, P10670216295220135133.a n = A011898 n

end A011898

/-! ## A011898.P7015063087790182432

`round((A050534(n)-n)/(2*(n+1)))`
-/

namespace A011898.P7015063087790182432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A050534 n - (n : ℤ) : ℚ) / (2 * (n + 1) : ℚ))

end

end A011898.P7015063087790182432

namespace A011898

/-- `round((A050534(n)-n)/(2*(n+1)))` -/
def P7015063087790182432.Spec : Prop :=
  ∀ n, P7015063087790182432.a n = A011898 n

end A011898

/-! ## A011898.P2955441662561695843

`xor(A003188(A011890(n)), A011890(n))`
-/

namespace A011898.P2955441662561695843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 (A011890 n).toNat) (A011890 n)

end

end A011898.P2955441662561695843

namespace A011898

/-- `xor(A003188(A011890(n)), A011890(n))` -/
def P2955441662561695843.Spec : Prop :=
  ∀ n, P2955441662561695843.a n = A011898 n

end A011898

/-!
# A011899: a(n) = floor(n*(n-1)*(n-2)/17).

The programs for A011899, the canonical program `A011899.P9024982014466355328` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011899 has offset 0).

The definition of A011899 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)/17)` (program `A011899.P9024982014466355328`, by `A011899.P9024982014466355328.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011899.P9024982014466355328

`floor(n*(n-1)*(n-2)/17)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011899

/-- `floor(n*(n-1)*(n-2)/17)` -/
def P9024982014466355328.Spec : Prop :=
  ∀ n, P9024982014466355328.a n = A011899 n

theorem P9024982014466355328.correct : P9024982014466355328.Spec := by
  intro n
  simp only [A011899]

end A011899

/-! ## A011899.P15039086323006495829

`char[A026520(n+7)]+floor(A008458(C(n, 3))/17)`
-/

namespace A011899.P15039086323006495829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 (n + 7)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(A008458 (Nat.choose n 3) : ℚ) / 17⌋

end

end A011899.P15039086323006495829

namespace A011899

/-- `char[A026520(n+7)]+floor(A008458(C(n, 3))/17)` -/
def P15039086323006495829.Spec : Prop :=
  ∀ n, P15039086323006495829.a n = A011899 n

end A011899

/-! ## A011899.P11854901235559567385

`∑[∑[A206483(A186085(n))]]`
-/

namespace A011899.P11854901235559567385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206483 (A186085 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011899.P11854901235559567385

namespace A011899

/-- `∑[∑[A206483(A186085(n))]]` -/
def P11854901235559567385.Spec : Prop :=
  ∀ n, P11854901235559567385.a n = A011899 n

end A011899

/-! ## A011899.P725141091115540363

`A172474(C(A004885(n+1), 3))`
-/

namespace A011899.P725141091115540363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (Nat.choose (A004885 (n + 1)).toNat 3)

end

end A011899.P725141091115540363

namespace A011899

/-- `A172474(C(A004885(n+1), 3))` -/
def P725141091115540363.Spec : Prop :=
  ∀ n, P725141091115540363.a n = A011899 n

end A011899

/-! ## A011899.P12524272124676063159

`∑[∑[A196563(A002804(n+3))]]`
-/

namespace A011899.P12524272124676063159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A002804 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011899.P12524272124676063159

namespace A011899

/-- `∑[∑[A196563(A002804(n+3))]]` -/
def P12524272124676063159.Spec : Prop :=
  ∀ n, P12524272124676063159.a n = A011899 n

end A011899

