import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A329000: a(n) is the least positive number which yields a multiple of n when its binary digit string, S(n), is read in any numeric base; a(n) is displayed in base 10.

The programs for A329000, there is no canonical definition to state claims against.
-/

/-! ## A329000.P14143959472280820206

`A329339(record[A048379(n)])`
-/

namespace A329000.P14143959472280820206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329339 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329000.P14143959472280820206

/-! ## A329000.P6018685831157111207

`A329339(A001104(n+1))`
-/

namespace A329000.P6018685831157111207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329339 (A001104 (n + 1)).toNat

end

end A329000.P6018685831157111207

/-! ## A329000.P10138473198787902122

`A329339(A024651(n)+1)`
-/

namespace A329000.P10138473198787902122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329339 (A024651 n + 1).toNat

end

end A329000.P10138473198787902122

/-! ## A329000.P8488247153817259047

`A329339(A037264(n+1))`
-/

namespace A329000.P8488247153817259047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329339 (A037264 (n + 1)).toNat

end

end A329000.P8488247153817259047

/-!
# A329003: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=2} (1 - x^Fibonacci(j)) is zero.

The programs for A329003, there is no canonical definition to state claims against.
-/

/-! ## A329003.P16816867588631670651

`eq[0, A093996(n)]`
-/

namespace A329003.P16816867588631670651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329003.P16816867588631670651

/-! ## A329003.P3898776747217603768

`eq[A093997(n), A093998(n)]`
-/

namespace A329003.P3898776747217603768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329003.P3898776747217603768

/-! ## A329003.P12213014855133958214

`eq[0, A000119(n)%2]`
-/

namespace A329003.P12213014855133958214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000119 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329003.P12213014855133958214

/-! ## A329003.P9952436966981828707

`eq[0, A000035(A000119(n))]`
-/

namespace A329003.P9952436966981828707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000119 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329003.P9952436966981828707

/-! ## A329003.P6230940307605842353

`eq[2, A020639(A000119(n)²)]`
-/

namespace A329003.P6230940307605842353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000119 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329003.P6230940307605842353

/-! ## A329003.P3227423744173878659

`lt[2, A020639(A000119(n)+1)]`
-/

namespace A329003.P3227423744173878659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000119 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A329003.P3227423744173878659

/-! ## A329003.P5329254242175055474

`lt[(A000121(n)-a(n-1))%2, 1]` with `a(0)=1, a(1)=1`
-/

namespace A329003.P5329254242175055474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Int.tmod (A000121 n - f1 (n - 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A329003.P5329254242175055474

/-! ## A329003.P15048439796468712375

`comp[A151661(n+1)]`
-/

namespace A329003.P15048439796468712375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329003.P15048439796468712375

/-!
# A329004: a(n) is the largest index in [n] that maximizes tau.

The programs for A329004, there is no canonical definition to state claims against.
-/

/-! ## A329004.P12799864538051907124

`n+1-A369183(n+1)`
-/

namespace A329004.P12799864538051907124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A369183 (n + 1)

end

end A329004.P12799864538051907124

/-!
# A329005: a(n) = p(0,n), where p(x,n) is the strong divisibility sequence of polynomials based on sqrt(2) as in A327320.

The programs for A329005, there is no canonical definition to state claims against.
-/

/-! ## A329005.P8892727079987376066

`ceil(∑[2^n]/(3*gcd(81, n+1)))`
-/

namespace A329005.P8892727079987376066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (3 * Nat.gcd 81 (n + 1) : ℚ)⌉

end

end A329005.P8892727079987376066

/-! ## A329005.P16125171765231099424

`abs(∑[(-2)^n]/3^val(n+1, 3))`
-/

namespace A329005.P16125171765231099424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)|

end

end A329005.P16125171765231099424

/-! ## A329005.P12129680604586143746

`ceil(∑[2^n]/3^(val(n+1, 3)+1))`
-/

namespace A329005.P12129680604586143746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1) : ℚ)⌉

end

end A329005.P12129680604586143746

/-! ## A329005.P3236602005946458817

`Δ[floor(∑[2^n/3])]/3^val(n+1, 3)`
-/

namespace A329005.P3236602005946458817
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

end

end A329005.P3236602005946458817

/-! ## A329005.P3849776653739294613

`floor((∑[2^n]+2)/3^(val(n+1, 3)+1))`
-/

namespace A329005.P3849776653739294613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ) / (3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1) : ℚ)⌋

end

end A329005.P3849776653739294613

/-!
# A329006: a(n) = p(1,n), where p(x,n) is the strong divisibility sequence of polynomials based on sqrt(2) as in A327320.

The programs for A329006, there is no canonical definition to state claims against.
-/

/-! ## A329006.P7470807437295010792

`A059990(2*(n+1))`
-/

namespace A329006.P7470807437295010792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059990 (2 * (n + 1))

end

end A329006.P7470807437295010792

/-! ## A329006.P12221837302389481492

`A329005(2*(n+1))`
-/

namespace A329006.P12221837302389481492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329005 (2 * (n + 1))

end

end A329006.P12221837302389481492

/-! ## A329006.P5736356863280191809

`A224139(2^n)`
-/

namespace A329006.P5736356863280191809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224139 (2 ^ n)

end

end A329006.P5736356863280191809

/-! ## A329006.P10061791894935403978

`A093544(A047849(n))`
-/

namespace A329006.P10061791894935403978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093544 (A047849 n).toNat

end

end A329006.P10061791894935403978

/-!
# A329007: a(n) = p(2,n), where p(x,n) is the strong divisibility sequence of polynomials based on sqrt(2) as in A327320.

The programs for A329007, there is no canonical definition to state claims against.
-/

/-! ## A329007.P10860584110608907465

`3^n*∑[2^n]/3^val(n+1, 3)`
-/

namespace A329007.P10860584110608907465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

end

end A329007.P10860584110608907465

/-! ## A329007.P98098102327694816

`A016137(n)/gcd(9, n+1)`
-/

namespace A329007.P98098102327694816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016137 n : ℚ) / (Nat.gcd 9 (n + 1) : ℚ)

end

end A329007.P98098102327694816

/-! ## A329007.P7165810600037221012

`3^n*∑[2^n]/A038500(n+1)`
-/

namespace A329007.P7165810600037221012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (A038500 (n + 1) : ℚ)

end

end A329007.P7165810600037221012

/-! ## A329007.P15182435326054560729

`floor(A016137(n)/A038500(n+1))`
-/

namespace A329007.P15182435326054560729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016137 n : ℚ) / (A038500 (n + 1) : ℚ)⌋

end

end A329007.P15182435326054560729

/-! ## A329007.P807212875921934067

`A016137(n)/A051176(A074724(n+1))`
-/

namespace A329007.P807212875921934067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016137 n : ℚ) / (A051176 (A074724 (n + 1)).toNat : ℚ)

end

end A329007.P807212875921934067

/-!
# A329008: a(n) = p(0,n), where p(x,n) is the strong divisibility sequence of polynomials based on sqrt(3) as in A327321.

The programs for A329008, there is no canonical definition to state claims against.
-/

/-! ## A329008.P6036073614758861383

`abs(∑[(-3)^n])/gcd(64, n+1)`
-/

namespace A329008.P6036073614758861383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((|∑ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) / (Nat.gcd 64 (n + 1) : ℚ)

end

end A329008.P6036073614758861383

/-! ## A329008.P4665706162119701224

`ceil(∑[3^n]/(xor(n, n+1)+1))`
-/

namespace A329008.P4665706162119701224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉

end

end A329008.P4665706162119701224

/-! ## A329008.P15080948437707973061

`round(∑[3^n]/(xor(n, n+1)+1))`
-/

namespace A329008.P15080948437707973061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))

end

end A329008.P15080948437707973061

/-! ## A329008.P7712005747928227573

`∑[(-3)^n]/xor(1, and(n, n+1)-n)`
-/

namespace A329008.P7712005747928227573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Int.xor 1 ((Nat.land n (n + 1) : ℤ) - (n : ℤ)) : ℚ)

end

end A329008.P7712005747928227573

/-! ## A329008.P15094244346214046002

`∑[abs((-3)^n+1)]/(xor(n, n+1)+1)`
-/

namespace A329008.P15094244346214046002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-3) ^ n + 1|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)

end

end A329008.P15094244346214046002

/-!
# A329009: a(n) = p(1,n), where p(x,n) is the strong divisibility sequence of polynomials based on sqrt(3) as in A327321.

The programs for A329009, the canonical program `A329009.P8846123619679108642` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329009 has offset 1).

The definition of A329009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329009.P8846123619679108642

`2^(n-A001511(n+1))*(3^(n+1)-1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A329009

/-- `2^(n-A001511(n+1))*(3^(n+1)-1)` -/
def P8846123619679108642.Spec : Prop :=
  ∀ n, P8846123619679108642.a n = (A329009 (n + 1) : ℚ)

end A329009

/-! ## A329009.P6167184035452256037

`lcm(4^∑[n%2], record[A140313(n)])`
-/

namespace A329009.P6167184035452256037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A329009.P6167184035452256037

namespace A329009

/-- `lcm(4^∑[n%2], record[A140313(n)])` -/
def P6167184035452256037.Spec : Prop :=
  ∀ n, (P6167184035452256037.a n : ℤ) = A329009 (n + 1)

end A329009

/-! ## A329009.P3978027272768367501

`lcm(∑[A000244(n)], A056450(n))`
-/

namespace A329009.P3978027272768367501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A056450 n)

end

end A329009.P3978027272768367501

namespace A329009

/-- `lcm(∑[A000244(n)], A056450(n))` -/
def P3978027272768367501.Spec : Prop :=
  ∀ n, (P3978027272768367501.a n : ℤ) = A329009 (n + 1)

end A329009

/-! ## A329009.P1347795447413411836

`∑[A000244(n)]*A084623(n+1)`
-/

namespace A329009.P1347795447413411836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A084623 (n + 1)

end

end A329009.P1347795447413411836

namespace A329009

/-- `∑[A000244(n)]*A084623(n+1)` -/
def P1347795447413411836.Spec : Prop :=
  ∀ n, P1347795447413411836.a n = A329009 (n + 1)

end A329009

/-! ## A329009.P10999179231719486595

`record[A140313(n)]*A084623(n+1)`
-/

namespace A329009.P10999179231719486595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A084623 (n + 1)

end

end A329009.P10999179231719486595

namespace A329009

/-- `record[A140313(n)]*A084623(n+1)` -/
def P10999179231719486595.Spec : Prop :=
  ∀ n, P10999179231719486595.a n = A329009 (n + 1)

end A329009

/-! ## A329009.P8540112445805117546

`∑[A038754(2*n)]*A084623(n+1)`
-/

namespace A329009.P8540112445805117546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A084623 (n + 1)

end

end A329009.P8540112445805117546

namespace A329009

/-- `∑[A038754(2*n)]*A084623(n+1)` -/
def P8540112445805117546.Spec : Prop :=
  ∀ n, P8540112445805117546.a n = A329009 (n + 1)

end A329009

/-!
# A329010: a(n) = p(2,n), where p(x,n) is the strong divisibility sequence of polynomials based on sqrt(3) as in A327321.

The programs for A329010, there is no canonical definition to state claims against.
-/

/-! ## A329010.P8378662535212093943

`A016163(n)/A006519(n+1)`
-/

namespace A329010.P8378662535212093943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016163 n : ℚ) / (A006519 (n + 1) : ℚ)

end

end A329010.P8378662535212093943

/-! ## A329010.P3932154986512920009

`A016163(n)/A011782(A001511(n+1))`
-/

namespace A329010.P3932154986512920009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016163 n : ℚ) / (A011782 (A001511 (n + 1)).toNat : ℚ)

end

end A329010.P3932154986512920009

/-! ## A329010.P10058876720306378977

`A016163(n)/gcd(A001018(n), A016163(n))`
-/

namespace A329010.P10058876720306378977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016163 n : ℚ) / (Int.gcd (A001018 n) (A016163 n) : ℚ)

end

end A329010.P10058876720306378977

/-! ## A329010.P17006979362795316062

`A016163(n)/∑{d}[A001511(n+1), A000740(#)]`
-/

namespace A329010.P17006979362795316062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016163 n : ℚ) / ((∑ d ∈ Nat.divisors (f1 n).natAbs, A000740 d : ℤ) : ℚ)

end

end A329010.P17006979362795316062

/-! ## A329010.P12858753007341493786

`lcm(A016163(n), A037239(n+1))/A037239(n+1)`
-/

namespace A329010.P12858753007341493786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A016163 n) (A037239 (n + 1)) : ℚ) / (A037239 (n + 1) : ℚ)

end

end A329010.P12858753007341493786

/-!
# A329011: a(n) = p(0,n), where p(x,n) is the strong divisibility sequence of polynomials based on sqrt(5) as in A327322.

The programs for A329011, there is no canonical definition to state claims against.
-/

/-! ## A329011.P2923782427057190503

`A083425(n)/A065331(n+1)`
-/

namespace A329011.P2923782427057190503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083425 n : ℚ) / (A065331 (n + 1) : ℚ)

end

end A329011.P2923782427057190503

/-! ## A329011.P11846463024511795336

`∑[A083217(n)]/A065331(n+1)`
-/

namespace A329011.P11846463024511795336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083217 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A065331 (n + 1) : ℚ)

end

end A329011.P11846463024511795336

/-! ## A329011.P15687060224566078664

`A015531(n+1)/A065331(n+1)`
-/

namespace A329011.P15687060224566078664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015531 (n + 1) : ℚ) / (A065331 (n + 1) : ℚ)

end

end A329011.P15687060224566078664

/-! ## A329011.P5336102894547989517

`A083425(n)/gcd(n+1, A000400(n))`
-/

namespace A329011.P5336102894547989517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083425 n : ℚ) / (Int.gcd (n + 1 : ℤ) (A000400 n) : ℚ)

end

end A329011.P5336102894547989517

/-! ## A329011.P775673792460780592

`abs(A014986(n+1)/A065331(n+1))`
-/

namespace A329011.P775673792460780592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A014986 (n + 1) : ℚ) / (A065331 (n + 1) : ℚ)|

end

end A329011.P775673792460780592

/-!
# A329012: a(n) = p(1,n), where p(x,n) is the strong divisibility sequence of polynomials based on sqrt(5) as in A327322.

The programs for A329012, there is no canonical definition to state claims against.
-/

/-! ## A329012.P9323880511641465089

`A016157(n)/A065331(n+1)`
-/

namespace A329012.P9323880511641465089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016157 n : ℚ) / (A065331 (n + 1) : ℚ)

end

end A329012.P9323880511641465089

/-! ## A329012.P16641652139587420317

`A016157(n)/gcd(n+1, A000400(n))`
-/

namespace A329012.P16641652139587420317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016157 n : ℚ) / (Int.gcd (n + 1 : ℤ) (A000400 n) : ℚ)

end

end A329012.P16641652139587420317

/-! ## A329012.P6989546996218856138

`A329011(n+1)/A083425(n)*A016157(n)`
-/

namespace A329012.P6989546996218856138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329011 (n + 1) : ℚ) / (A083425 n : ℚ) * (A016157 n : ℚ)

end

end A329012.P6989546996218856138

/-!
# A329014: a(n) = p(0,n), where p(x,n) is the strong divisibility sequence of polynomials based on sqrt(6) as in A327323.

The programs for A329014, there is no canonical definition to state claims against.
-/

/-! ## A329014.P2334665731244380956

`lcm(7, ∑[(-6)^n])/7`
-/

namespace A329014.P2334665731244380956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-6) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 7 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 7

end

end A329014.P2334665731244380956

/-! ## A329014.P16925028413480621313

`A015540(n+1)/gcd(7, n+1)`
-/

namespace A329014.P16925028413480621313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015540 (n + 1) : ℚ) / (Nat.gcd 7 (n + 1) : ℚ)

end

end A329014.P16925028413480621313

/-! ## A329014.P14819817161309251485

`A327323(∑[n]+1)`
-/

namespace A329014.P14819817161309251485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327323 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A329014.P14819817161309251485

/-! ## A329014.P192491810927521443

`or(1, A327323(A000124(n)))`
-/

namespace A329014.P192491810927521443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A327323 (A000124 n).toNat)

end

end A329014.P192491810927521443

/-! ## A329014.P13796311718328509288

`A327323(A000124(n))+A025465(n)`
-/

namespace A329014.P13796311718328509288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327323 (A000124 n).toNat + A025465 n

end

end A329014.P13796311718328509288

/-!
# A329015: a(n) = p(1,n), where p(x,n) is the strong divisibility sequence of polynomials based on sqrt(6) as in A327323.

The programs for A329015, there is no canonical definition to state claims against.
-/

/-! ## A329015.P420762612649339769

`lcm(7, A016166(n))/7`
-/

namespace A329015.P420762612649339769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 7 (A016166 n) : ℚ) / 7

end

end A329015.P420762612649339769

/-! ## A329015.P1539505578702915476

`A016166(n)/A127296(A036676(n))`
-/

namespace A329015.P1539505578702915476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016166 n : ℚ) / (A127296 (A036676 n).toNat : ℚ)

end

end A329015.P1539505578702915476

/-!
# A329017: a(n) = p(0,n), where p(x,n) is the strong divisibility sequence of polynomials based on sqrt(3/2) as in A328644.

The programs for A329017, there is no canonical definition to state claims against.
-/

/-! ## A329017.P5979387619708502582

`∑[A102901(n)]/A060904(n+1)`
-/

namespace A329017.P5979387619708502582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102901 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A060904 (n + 1) : ℚ)

end

end A329017.P5979387619708502582

/-! ## A329017.P13836124930577148411

`A015441(n+1)/A060904(n+1)`
-/

namespace A329017.P13836124930577148411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015441 (n + 1) : ℚ) / (A060904 (n + 1) : ℚ)

end

end A329017.P13836124930577148411

/-! ## A329017.P475903829920083221

`(A087451(n)-A102901(n))/A060904(n+1)`
-/

namespace A329017.P475903829920083221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087451 n - A102901 n : ℚ) / (A060904 (n + 1) : ℚ)

end

end A329017.P475903829920083221

/-! ## A329017.P4364153671967428780

`A060904(n+1)^A008683(A181758(n+1))*A015441(n+1)`
-/

namespace A329017.P4364153671967428780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060904 (n + 1) : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ) * (A015441 (n + 1) : ℚ)

end

end A329017.P4364153671967428780

/-! ## A329017.P13567147939846583874

`gcd(∑[A102901(n)], A329019(n+1))`
-/

namespace A329017.P13567147939846583874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102901 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A329019 (n + 1))

end

end A329017.P13567147939846583874

/-!
# A329018: a(n) = p(1,n), where p(x,n) is the strong divisibility sequence of polynomials based on sqrt(3/2) as in A328644.

The programs for A329018, there is no canonical definition to state claims against.
-/

/-! ## A329018.P15732785838680151797

`lcm(5, ∑[6^n])/5`
-/

namespace A329018.P15732785838680151797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 5

end

end A329018.P15732785838680151797

/-! ## A329018.P14593060369006798762

`∑[6^n]/gcd(5, n+1)`
-/

namespace A329018.P14593060369006798762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd 5 (n + 1) : ℚ)

end

end A329018.P14593060369006798762

/-! ## A329018.P3934892139956618711

`∑[A000400(n)]/A060904(n+1)`
-/

namespace A329018.P3934892139956618711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A060904 (n + 1) : ℚ)

end

end A329018.P3934892139956618711

/-! ## A329018.P5658533355624046361

`∑[A000400(n)]/A109009(n+1)`
-/

namespace A329018.P5658533355624046361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A109009 (n + 1) : ℚ)

end

end A329018.P5658533355624046361

/-! ## A329018.P8368834499943439885

`A003464(n+1)/A060904(n+1)`
-/

namespace A329018.P8368834499943439885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003464 (n + 1) : ℚ) / (A060904 (n + 1) : ℚ)

end

end A329018.P8368834499943439885

/-!
# A329019: a(n) = p(1,n), where p(x,n) is the strong divisibility sequence of polynomials based on sqrt(3/2) as in A328644.

The programs for A329019, there is no canonical definition to state claims against.
-/

/-! ## A329019.P158034483224090315

`A167910(2*(n+1))/gcd(5, n+1)`
-/

namespace A329019.P158034483224090315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167910 (2 * (n + 1)) : ℚ) / (Nat.gcd 5 (n + 1) : ℚ)

end

end A329019.P158034483224090315

/-! ## A329019.P6677646728587502423

`A087451(n+1)*A329017(n+1)`
-/

namespace A329019.P6677646728587502423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087451 (n + 1) * A329017 (n + 1)

end

end A329019.P6677646728587502423

/-! ## A329019.P4333086350951465583

`A015441(2*(n+1))/A060904(n+1)`
-/

namespace A329019.P4333086350951465583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015441 (2 * (n + 1)) : ℚ) / (A060904 (n + 1) : ℚ)

end

end A329019.P4333086350951465583

/-! ## A329019.P4555591434350203629

`A015441(A269394(2*(n+1)))/A109009(n+1)`
-/

namespace A329019.P4555591434350203629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015441 (A269394 (2 * (n + 1))).toNat : ℚ) / (A109009 (n + 1) : ℚ)

end

end A329019.P4555591434350203629

/-! ## A329019.P6869057673788822839

`(A087451(2*n+1)-A102901(2*n+1))/A060904(n+1)`
-/

namespace A329019.P6869057673788822839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087451 (2 * n + 1) - A102901 (2 * n + 1) : ℚ) / (A060904 (n + 1) : ℚ)

end

end A329019.P6869057673788822839

/-!
# A329020: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where T(n,k) is the constant term in the expansion of ( Sum_{j=1..k} x_j^(2*j-1) + x_j^(-(2*j-1)) )^(2*n).

The programs for A329020, there is no canonical definition to state claims against.
-/

/-! ## A329020.P6992998115920266399

`A138234(A287318(n))`
-/

namespace A329020.P6992998115920266399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 (A287318 n).toNat

end

end A329020.P6992998115920266399

/-! ## A329020.P8000729079979023163

`lcm(A003992(n), A012265(A059300(n)))`
-/

namespace A329020.P8000729079979023163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003992 n) (A012265 (A059300 n).toNat)

end

end A329020.P8000729079979023163

/-! ## A329020.P18208561561744956555

`A287318(n)+A055570(A334709(n+1))`
-/

namespace A329020.P18208561561744956555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287318 n + A055570 (A334709 (n + 1)).toNat

end

end A329020.P18208561561744956555

/-! ## A329020.P7847072796371884232

`A089867(A334709(n+1)+A287318(n))`
-/

namespace A329020.P7847072796371884232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A334709 (n + 1) + A287318 n).toNat

end

end A329020.P7847072796371884232

/-! ## A329020.P13081980445956412683

`A287318(n)+A096794(A199986(A119326(n)))`
-/

namespace A329020.P13081980445956412683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287318 n + A096794 (A199986 (A119326 n).toNat).toNat

end

end A329020.P13081980445956412683

/-!
# A329021: a(n) is the constant term in the expansion of ( Sum_{k=1..n} x_k^(2*k-1) + x_k^(-(2*k-1)) )^(2*n).

The programs for A329021, there is no canonical definition to state claims against.
-/

/-! ## A329021.P10807343965783199184

`A077045(2*n)`
-/

namespace A329021.P10807343965783199184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077045 (2 * n)

end

end A329021.P10807343965783199184

/-! ## A329021.P18092258246069733331

`A329020(∑[4*n])`
-/

namespace A329021.P18092258246069733331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329021.P18092258246069733331

/-! ## A329021.P6491588369115312117

`A077042(4*C(Δ[n²], 2))`
-/

namespace A329021.P6491588369115312117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (4 * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2)

end

end A329021.P6491588369115312117

/-! ## A329021.P15139204213555738617

`A077042(4*n*Δ[n²])`
-/

namespace A329021.P15139204213555738617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (4 * ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))).toNat

end

end A329021.P15139204213555738617

/-! ## A329021.P264560671840506199

`A163269(A140064(n))`
-/

namespace A329021.P264560671840506199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163269 (A140064 n).toNat

end

end A329021.P264560671840506199

/-!
# A329022: Squares visited by a knight moving on a diagonal spiral numbered board and moving to the lowest available unvisited square at each step.

The programs for A329022, there is no canonical definition to state claims against.
-/

/-! ## A329022.P797724207837600311

`A397183(n)+1`
-/

namespace A329022.P797724207837600311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397183 n + 1

end

end A329022.P797724207837600311

/-! ## A329022.P8807932923410148042

`A317105(n)/2+1`
-/

namespace A329022.P8807932923410148042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317105 n : ℚ) / 2 + 1

end

end A329022.P8807932923410148042

/-! ## A329022.P6941465367780394502

`ceil(A317106(n+1)/2)`
-/

namespace A329022.P6941465367780394502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317106 (n + 1) : ℚ) / 2⌉

end

end A329022.P6941465367780394502

/-! ## A329022.P1994202828127998088

`A008619(A317105(n))`
-/

namespace A329022.P1994202828127998088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A317105 n).toNat

end

end A329022.P1994202828127998088

/-! ## A329022.P14273639402447634138

`A000463(A317105(n)+1)`
-/

namespace A329022.P14273639402447634138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A317105 n + 1).toNat

end

end A329022.P14273639402447634138

/-! ## A329022.P6343460250309748465

`A000463(A317106(n+1))`
-/

namespace A329022.P6343460250309748465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A317106 (n + 1)).toNat

end

end A329022.P6343460250309748465

/-! ## A329022.P8970350165040220818

`A004524(A317105(n)+3)`
-/

namespace A329022.P8970350165040220818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A317105 n + 3).toNat

end

end A329022.P8970350165040220818

/-!
# A329023: Number of length-n ternary words having at most 5 palindromic subwords (including the empty word).

The programs for A329023, the canonical program `A329023.P6064614357364525899` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329023 has offset 0).

The definition of A329023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329023.P6064614357364525899

`a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=81, a(5)=42, a(6)=54, a(7)=66, a(8)=78`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A329023

/-- `a(n-3)+a(n-4)` -/
def P6064614357364525899.Spec : Prop :=
  ∀ n, (P6064614357364525899.a n : ℤ) = A329023 n

theorem P6064614357364525899.correct : P6064614357364525899.Spec := by
  intro n
  simp only [A329023]

end A329023

/-! ## A329023.P10691632685477305674

`ogf((1+3x+9x^2+26x^3+77x^4+30x^5+18x^6-42x^7-45x^8)/(1-x^3-x^4))`
-/

namespace A329023.P10691632685477305674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 9, 26, 77, 30, 18, -42, -45] [1, 0, 0, -1, -1] n

end

end A329023.P10691632685477305674

namespace A329023

/-- `ogf((1+3x+9x^2+26x^3+77x^4+30x^5+18x^6-42x^7-45x^8)/(1-x^3-x^4))` -/
def P10691632685477305674.Spec : Prop :=
  ∀ n, P10691632685477305674.a n = A329023 n

end A329023

/-!
# A329024: Constant term in the expansion of ((x^3 + x + 1/x + 1/x^3)*(y^3 + y + 1/y + 1/y^3) - (x + 1/x)*(y + 1/y))^(2*n).

The programs for A329024, there is no canonical definition to state claims against.
-/

/-! ## A329024.P16355169791071276572

`A329066(∑[n+1]+1)`
-/

namespace A329024.P16355169791071276572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329066 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A329024.P16355169791071276572

/-! ## A329024.P15725431515092012543

`A329078(A100037(n+2))`
-/

namespace A329024.P15725431515092012543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A100037 (n + 2)).toNat

end

end A329024.P15725431515092012543

/-! ## A329024.P15401376015816510855

`record[A329078(A167614(n+1))]`
-/

namespace A329024.P15401376015816510855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329024.P15401376015816510855

/-! ## A329024.P9776613134661815960

`record[A329078(A057944(n)+3)]`
-/

namespace A329024.P9776613134661815960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A057944 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329024.P9776613134661815960

/-! ## A329024.P5443865421932278412

`record[A329078(A167499(n)+n)]`
-/

namespace A329024.P5443865421932278412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A167499 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329024.P5443865421932278412

/-!
# A329025: If n = Product (p_j^k_j) then a(n) = concatenation (pi(p_j)), where pi = A000720.

The programs for A329025, there is no canonical definition to state claims against.
-/

/-! ## A329025.P14145573028450064351

`A087712(∏{p}[n+1, #])%(7^n)`
-/

namespace A329025.P14145573028450064351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087712 (∏ p ∈ Nat.primeFactors (f1 n), p)) (7 ^ n : ℤ)

end

end A329025.P14145573028450064351

/-! ## A329025.P3716398373912500279

`A087712(∏{p}[n+1, #])-A000007(n)`
-/

namespace A329025.P3716398373912500279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (∏ p ∈ Nat.primeFactors (f1 n), p) - A000007 n

end

end A329025.P3716398373912500279

/-! ## A329025.P929060755882095707

`and(A000225(n), A087712(∏{p}[n+1, #]))`
-/

namespace A329025.P929060755882095707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A087712 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A329025.P929060755882095707

/-! ## A329025.P7084908724662451911

`A087712(∏{p}[n+1, #])-A010051(2*(n+1))`
-/

namespace A329025.P7084908724662451911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (∏ p ∈ Nat.primeFactors (f1 n), p) - A010051 (2 * (n + 1))

end

end A329025.P7084908724662451911

/-! ## A329025.P1354779973780368087

`A087712(A007947(n+1))-A000007(n)`
-/

namespace A329025.P1354779973780368087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A007947 (n + 1)).toNat - A000007 n

end

end A329025.P1354779973780368087

/-! ## A329025.P3343643727392903413

`A087712(A007947(n+1))-A151909(n)`
-/

namespace A329025.P3343643727392903413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A007947 (n + 1)).toNat - A151909 n

end

end A329025.P3343643727392903413

/-! ## A329025.P9022720836060660237

`A087712(A007947(n+1))-A355449(2*n)`
-/

namespace A329025.P9022720836060660237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A007947 (n + 1)).toNat - A355449 (2 * n)

end

end A329025.P9022720836060660237

/-!
# A329027: The least missing digit in the primorial base expansion of n. Only significant digits are considered, as the leading zeros are ignored.

The programs for A329027, there is no canonical definition to state claims against.
-/

/-! ## A329027.P8604329334091328745

`A276084(∏{digits}[A049345(n+1), A000040(#+1)])`
-/

namespace A329027.P8604329334091328745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000040 (x + 1)).prod.toNat

end

end A329027.P8604329334091328745

/-! ## A329027.P12349263440399005432

`A067898(A049345(n+1))`
-/

namespace A329027.P12349263440399005432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A049345 (n + 1)).toNat

end

end A329027.P12349263440399005432

/-! ## A329027.P4939687306860593971

`A212193(A187829(n+1)+A065033(n))`
-/

namespace A329027.P4939687306860593971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 (A187829 (n + 1) + A065033 n).toNat

end

end A329027.P4939687306860593971

/-! ## A329027.P3988327099161585543

`A212193(A187829(n+1)+A110654(n))`
-/

namespace A329027.P3988327099161585543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 (A187829 (n + 1) + A110654 n).toNat

end

end A329027.P3988327099161585543

/-! ## A329027.P15610544348028643295

`A170906(A001632(n+5))%A167447(n+3)`
-/

namespace A329027.P15610544348028643295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170906 (A001632 (n + 5)).toNat) (A167447 (n + 3))

end

end A329027.P15610544348028643295

/-!
# A329028: The least missing nonzero digit in the primorial base expansion of n.

The programs for A329028, there is no canonical definition to state claims against.
-/

/-! ## A329028.P13478774231691289180

`A257993(A328835(n))`
-/

namespace A329028.P13478774231691289180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A328835 n).toNat

end

end A329028.P13478774231691289180

/-! ## A329028.P9479241091928250988

`A134193(A276086(n))`
-/

namespace A329028.P9479241091928250988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134193 (A276086 n).toNat

end

end A329028.P9479241091928250988

/-! ## A329028.P4670041125806572780

`A322584(∏{p}[A328835(n), #])`
-/

namespace A329028.P4670041125806572780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A329028.P4670041125806572780

/-! ## A329028.P398523707378403107

`A322584(gcd(A319865(n+1), A328835(n)))`
-/

namespace A329028.P398523707378403107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (Int.gcd (A319865 (n + 1)) (A328835 n))

end

end A329028.P398523707378403107

/-! ## A329028.P5623339142150920202

`A257993(∏{e}[A278226(n), A000040(#)])`
-/

namespace A329028.P5623339142150920202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A329028.P5623339142150920202

/-! ## A329028.P9356026490959796753

`A257993(∏{e}[A278226(n), A000043(#)])`
-/

namespace A329028.P9356026490959796753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000043 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A329028.P9356026490959796753

/-! ## A329028.P12923781932527768125

`A261794(A049345(n))`
-/

namespace A329028.P12923781932527768125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (A049345 n).toNat

end

end A329028.P12923781932527768125

/-! ## A329028.P8942106226159456514

`A257993(∏{e}[A276086(n), A000040(#)])`
-/

namespace A329028.P8942106226159456514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A329028.P8942106226159456514

/-! ## A329028.P12987560458618144451

`A257993(∏{e}[A276086(n), A000043(#)])`
-/

namespace A329028.P12987560458618144451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000043 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A329028.P12987560458618144451

/-!
# A329029: a(n) = A069359(A276086(n)), where A276086 is the primorial base exp-function and A069359(n) = n * Sum_{p|n} 1/p.

The programs for A329029, there is no canonical definition to state claims against.
-/

/-! ## A329029.P2589642118807065538

`A328572(n)*A329031(n)`
-/

namespace A329029.P2589642118807065538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A329031 n

end

end A329029.P2589642118807065538

/-! ## A329029.P9265916596987507697

`A069359(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329029.P9265916596987507697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A276086 n).toNat

end

end A329029.P9265916596987507697

/-! ## A329029.P1390083927521836940

`∑{p}[A328571(n), A276086(n)/#]`
-/

namespace A329029.P1390083927521836940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A276086 n : ℚ) / (p : ℚ)

end

end A329029.P1390083927521836940

/-! ## A329029.P10408366756424673343

`A276086(A328842(n))*A329031(n)`
-/

namespace A329029.P10408366756424673343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A328842 n).toNat * A329031 n

end

end A329029.P10408366756424673343

/-! ## A329029.P14274428236056945674

`A327860(n)-A328571(n)*A329032(n)`
-/

namespace A329029.P14274428236056945674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - A328571 n * A329032 n

end

end A329029.P14274428236056945674

/-! ## A329029.P7616621420304260891

`A276086(n)/A328571(n)*A329031(n)`
-/

namespace A329029.P7616621420304260891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A328571 n : ℚ) * (A329031 n : ℚ)

end

end A329029.P7616621420304260891

/-! ## A329029.P17473155320708396194

`A328572(n)*A340070(A276086(n)/A328572(n))`
-/

namespace A329029.P17473155320708396194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A340070 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328572 n : ℚ))).toNat

end

end A329029.P17473155320708396194

/-! ## A329029.P14723546540167993678

`A328572(n)*A342001(A276086(n)/A328572(n))`
-/

namespace A329029.P14723546540167993678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A342001 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328572 n : ℚ))).toNat

end

end A329029.P14723546540167993678

/-! ## A329029.P17901561593312577271

`A003415(A328571(n))*A328572(n)`
-/

namespace A329029.P17901561593312577271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A328571 n).toNat * A328572 n

end

end A329029.P17901561593312577271

/-! ## A329029.P11852843678821765630

`A003415(A276086(n)/A328572(n))*A328572(n)`
-/

namespace A329029.P11852843678821765630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328572 n : ℚ))).toNat * A328572 n

end

end A329029.P11852843678821765630

/-! ## A329029.P8498402997681319446

`A344028(A277022(n))`
-/

namespace A329029.P8498402997681319446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344028 (A277022 n).toNat

end

end A329029.P8498402997681319446

/-!
# A329030: The least missing nonzero digit in the primorial base expansion of A276086(n).

The programs for A329030, there is no canonical definition to state claims against.
-/

/-! ## A329030.P15729566923499223907

`A329028(A276086(n))`
-/

namespace A329030.P15729566923499223907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 (A276086 n).toNat

end

end A329030.P15729566923499223907

/-! ## A329030.P13457918912863286749

`A329028(A351225(n)+n)`
-/

namespace A329030.P13457918912863286749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 (A351225 n + (n : ℤ)).toNat

end

end A329030.P13457918912863286749

/-! ## A329030.P13816828442116176785

`A329028(A328580(n)+A328476(n))`
-/

namespace A329030.P13816828442116176785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 (A328580 n + A328476 n).toNat

end

end A329030.P13816828442116176785

/-! ## A329030.P183746387245032168

`A329028(A328844(n)+A328843(n))`
-/

namespace A329030.P183746387245032168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 (A328844 n + A328843 n).toNat

end

end A329030.P183746387245032168

/-! ## A329030.P14601246943475920102

`A329028(A327860(n)-A342016(n))`
-/

namespace A329030.P14601246943475920102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 (A327860 n - A342016 n).toNat

end

end A329030.P14601246943475920102

/-! ## A329030.P2235961938541936208

`A329028(A328475(n)*A328580(n))`
-/

namespace A329030.P2235961938541936208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 (A328475 n * A328580 n).toNat

end

end A329030.P2235961938541936208

/-! ## A329030.P440275637834959819

`A329028(A328571(n)*A328572(n))`
-/

namespace A329030.P440275637834959819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 (A328571 n * A328572 n).toNat

end

end A329030.P440275637834959819

/-! ## A329030.P528067611824619398

`A329028(A324198(n)*A351251(n))`
-/

namespace A329030.P528067611824619398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 (A324198 n * A351251 n).toNat

end

end A329030.P528067611824619398

/-!
# A329031: a(n) = A327860(A328841(n)).

The programs for A329031, there is no canonical definition to state claims against.
-/

/-! ## A329031.P125332216864309638

`A327860(A328841(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329031.P125332216864309638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 (A328841 n).toNat

end

end A329031.P125332216864309638

/-! ## A329031.P18361576125650722916

`A003415(A328571(n))`
-/

namespace A329031.P18361576125650722916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A328571 n).toNat

end

end A329031.P18361576125650722916

/-! ## A329031.P10104366344940077111

`A327860(n-A328842(n))`
-/

namespace A329031.P10104366344940077111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 ((n : ℤ) - A328842 n).toNat

end

end A329031.P10104366344940077111

/-! ## A329031.P11527792251752763178

`A329029(n-A328842(n))`
-/

namespace A329031.P11527792251752763178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329029 ((n : ℤ) - A328842 n).toNat

end

end A329031.P11527792251752763178

/-! ## A329031.P2927009697008826969

`A329029(n)/A328572(n)`
-/

namespace A329031.P2927009697008826969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329029 n : ℚ) / (A328572 n : ℚ)

end

end A329031.P2927009697008826969

/-! ## A329031.P224486203715456462

`A340070(A276086(n)/A328572(n))`
-/

namespace A329031.P224486203715456462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340070 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328572 n : ℚ))).toNat

end

end A329031.P224486203715456462

/-! ## A329031.P6124424423732511140

`A340070(2*A328571(n)-A328571(n))`
-/

namespace A329031.P6124424423732511140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340070 (2 * A328571 n - A328571 n).toNat

end

end A329031.P6124424423732511140

/-! ## A329031.P14973932697543028992

`A329029(n)/gcd(A276086(n), A329029(n))`
-/

namespace A329031.P14973932697543028992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329029 n : ℚ) / (Int.gcd (A276086 n) (A329029 n) : ℚ)

end

end A329031.P14973932697543028992

/-! ## A329031.P16975350330930350654

`A069359(A328571(2*n-n))`
-/

namespace A329031.P16975350330930350654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A328571 (2 * n - n)).toNat

end

end A329031.P16975350330930350654

/-! ## A329031.P3595369045733983000

`A069359(A276086(n)/A328572(n))`
-/

namespace A329031.P3595369045733983000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328572 n : ℚ))).toNat

end

end A329031.P3595369045733983000

/-! ## A329031.P7514891460438745455

`A342001(A276086(n)/A328572(n))`
-/

namespace A329031.P7514891460438745455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328572 n : ℚ))).toNat

end

end A329031.P7514891460438745455

/-! ## A329031.P11772832075579459638

`A003415(A276086(n-A328842(n)))`
-/

namespace A329031.P11772832075579459638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A276086 ((n : ℤ) - A328842 n).toNat).toNat

end

end A329031.P11772832075579459638

/-! ## A329031.P12328600961988248413

`A003415(A328573(n)*A328580(n))`
-/

namespace A329031.P12328600961988248413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A328573 n * A328580 n).toNat

end

end A329031.P12328600961988248413

/-! ## A329031.P10475891416770951708

`A003415(A276086(n)/A328572(n))`
-/

namespace A329031.P10475891416770951708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328572 n : ℚ))).toNat

end

end A329031.P10475891416770951708

/-! ## A329031.P10641280473176951722

`A340070(A328571(n)²)/A328571(n)`
-/

namespace A329031.P10641280473176951722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340070 (A328571 n ^ 2).toNat : ℚ) / (A328571 n : ℚ)

end

end A329031.P10641280473176951722

/-! ## A329031.P1530247465517438051

`A003415(∏{p}[A276086(n), #])`
-/

namespace A329031.P1530247465517438051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A329031.P1530247465517438051

/-!
# A329032: a(n) = A327860(A328842(n)).

The programs for A329032, there is no canonical definition to state claims against.
-/

/-! ## A329032.P10152307736674141653

`A327860(A328842(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329032.P10152307736674141653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 (A328842 n).toNat

end

end A329032.P10152307736674141653

/-! ## A329032.P13751965331796078040

`A003415(A328572(n))`
-/

namespace A329032.P13751965331796078040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A328572 n).toNat

end

end A329032.P13751965331796078040

/-! ## A329032.P8856912085686486829

`A327860(n-A328841(n))`
-/

namespace A329032.P8856912085686486829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 ((n : ℤ) - A328841 n).toNat

end

end A329032.P8856912085686486829

/-! ## A329032.P9214746650194029537

`A342016(A328842(n))+A328572(n)`
-/

namespace A329032.P9214746650194029537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342016 (A328842 n).toNat + A328572 n

end

end A329032.P9214746650194029537

/-! ## A329032.P18279793299336374003

`A342016(A328842(n))+A328575(A109613(n))`
-/

namespace A329032.P18279793299336374003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342016 (A328842 n).toNat + A328575 (A109613 n).toNat

end

end A329032.P18279793299336374003

/-! ## A329032.P377726761527274761

`A342016(A328842(n))+A328575(A063196(n+1))`
-/

namespace A329032.P377726761527274761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342016 (A328842 n).toNat + A328575 (A063196 (n + 1)).toNat

end

end A329032.P377726761527274761

/-! ## A329032.P13129130676383796620

`A327860(n-A276085(A328571(n)))`
-/

namespace A329032.P13129130676383796620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 ((n : ℤ) - A276085 (A328571 n).toNat).toNat

end

end A329032.P13129130676383796620

/-! ## A329032.P2581886913339841127

`∑{d}[A328572(n), A300251(#)]`
-/

namespace A329032.P2581886913339841127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A329032.P2581886913339841127

/-! ## A329032.P6996442237180116109

`∑{d}[A328572(n), A348976(#)]-A328572(n)`
-/

namespace A329032.P6996442237180116109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A348976 d - A328572 n

end

end A329032.P6996442237180116109

/-! ## A329032.P5065336122443945132

`A319703(2*A328572(n))`
-/

namespace A329032.P5065336122443945132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A328572 n).toNat

end

end A329032.P5065336122443945132

/-! ## A329032.P3583670818361587449

`A003415(A328575(or(1, n)))`
-/

namespace A329032.P3583670818361587449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A328575 (Nat.lor 1 n)).toNat

end

end A329032.P3583670818361587449

/-! ## A329032.P10241287595834958863

`A003415(A276086(n-A328841(n)))`
-/

namespace A329032.P10241287595834958863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A276086 ((n : ℤ) - A328841 n).toNat).toNat

end

end A329032.P10241287595834958863

/-! ## A329032.P8557610517255435402

`A003415(A276086(n)/A328571(n))`
-/

namespace A329032.P8557610517255435402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328571 n : ℚ))).toNat

end

end A329032.P8557610517255435402

/-! ## A329032.P11337385632420648895

`A003415(gcd(A276086(n), A327860(n)))`
-/

namespace A329032.P11337385632420648895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Int.gcd (A276086 n) (A327860 n))

end

end A329032.P11337385632420648895

/-! ## A329032.P14646934308893381573

`A003415(A276086(n)/∏{p}[A276086(n), #])`
-/

namespace A329032.P14646934308893381573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ))).toNat

end

end A329032.P14646934308893381573

/-!
# A329033: a(n) = A003415(A122111(n)).

The programs for A329033, the canonical program `A329033.P17652981235182846265` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329033 has offset 1).

The definition of A329033 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329033.P11945034032665708963

`A122111(A064989(n+1))+A105560(n+1)*a(A064989(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A329033.P11945034032665708963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A122111 (A064989 (n + 1)).toNat + A105560 (n + 1) * a (A064989 (n + 1) - 1).toNat

end

end A329033.P11945034032665708963

namespace A329033

/-- `A122111(A064989(n+1))+A105560(n+1)*a(A064989(n+1)-1)` -/
def P11945034032665708963.Spec : Prop :=
  ∀ n, P11945034032665708963.a n = A329033 (n + 1)

end A329033

/-! ## A329033.P17652981235182846265

`A003415(A122111(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A329033

/-- `A003415(A122111(n+1))` -/
def P17652981235182846265.Spec : Prop :=
  ∀ n, P17652981235182846265.a n = A329033 (n + 1)

theorem P17652981235182846265.correct : P17652981235182846265.Spec := by
  intro n
  simp only [A329033, Nat.add_sub_cancel]

end A329033

/-! ## A329033.P7622981546922063535

`∑{d}[A122111(n+1), A300251(#)]`
-/

namespace A329033.P7622981546922063535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A329033.P7622981546922063535

namespace A329033

/-- `∑{d}[A122111(n+1), A300251(#)]` -/
def P7622981546922063535.Spec : Prop :=
  ∀ n, P7622981546922063535.a n = A329033 (n + 1)

end A329033

/-! ## A329033.P15378643907124816507

`∑{d}[A243070(∑[4*n]+1), A300251(#)]`
-/

namespace A329033.P15378643907124816507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A329033.P15378643907124816507

namespace A329033

/-- `∑{d}[A243070(∑[4*n]+1), A300251(#)]` -/
def P15378643907124816507.Spec : Prop :=
  ∀ n, P15378643907124816507.a n = A329033 (n + 1)

end A329033

/-! ## A329033.P12199370658673982689

`∑{d}[A354867(n+1)-A354866(n+1), A300251(#)]`
-/

namespace A329033.P12199370658673982689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354867 (n + 1) - A354866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A329033.P12199370658673982689

namespace A329033

/-- `∑{d}[A354867(n+1)-A354866(n+1), A300251(#)]` -/
def P12199370658673982689.Spec : Prop :=
  ∀ n, P12199370658673982689.a n = A329033 (n + 1)

end A329033

/-!
# A329034: Möbius transform of A122111.

The programs for A329034, the canonical program `A329034.P16401860315630756047` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329034 has offset 1).

The definition of A329034 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329034.P16401860315630756047

`∑{d}[n+1, A008683((n+1)/#)*A122111(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A329034

/-- `∑{d}[n+1, A008683((n+1)/#)*A122111(#)]` -/
def P16401860315630756047.Spec : Prop :=
  ∀ n, P16401860315630756047.a n = A329034 (n + 1)

theorem P16401860315630756047.correct : P16401860315630756047.Spec := by
  intro n
  simp only [A329034, Nat.add_sub_cancel]

end A329034

/-! ## A329034.P8406258875862002445

`A350872(A334319(n+1))+A297172(n+1)`
-/

namespace A329034.P8406258875862002445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350872 (A334319 (n + 1)).toNat + A297172 (n + 1)

end

end A329034.P8406258875862002445

namespace A329034

/-- `A350872(A334319(n+1))+A297172(n+1)` -/
def P8406258875862002445.Spec : Prop :=
  ∀ n, P8406258875862002445.a n = A329034 (n + 1)

end A329034

/-! ## A329034.P6520188136112365486

`A297172(n+1)+A173677(A167051(2*(n+1)))`
-/

namespace A329034.P6520188136112365486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297172 (n + 1) + A173677 (A167051 (2 * (n + 1))).toNat

end

end A329034.P6520188136112365486

namespace A329034

/-- `A297172(n+1)+A173677(A167051(2*(n+1)))` -/
def P6520188136112365486.Spec : Prop :=
  ∀ n, P6520188136112365486.a n = A329034 (n + 1)

end A329034

/-!
# A329035: Lexicographically earliest infinite sequence such that a(i) = a(j) => A329034(i) = A329034(j) for all i, j, where A329034 is the Möbius transform of A122111.

The programs for A329035, there is no canonical definition to state claims against.
-/

/-! ## A329035.P11471774986326504862

`A300241(n+2)-A303300(A361907(n+3)+1)`
-/

namespace A329035.P11471774986326504862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300241 (n + 2) - A303300 (A361907 (n + 3) + 1).toNat

end

end A329035.P11471774986326504862

/-! ## A329035.P1827659035447526575

`A295989(n)+A146094(A188367(n+1))`
-/

namespace A329035.P1827659035447526575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295989 n + A146094 (A188367 (n + 1)).toNat

end

end A329035.P1827659035447526575

/-! ## A329035.P15334945814164976451

`A328315(n+2)-A328306(A328318(n))`
-/

namespace A329035.P15334945814164976451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328315 (n + 2) - A328306 (A328318 n).toNat

end

end A329035.P15334945814164976451

/-! ## A329035.P9258255357128788070

`A353494(A103774(n+3))+A175126(n+2)`
-/

namespace A329035.P9258255357128788070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A103774 (n + 3)).toNat + A175126 (n + 2)

end

end A329035.P9258255357128788070

/-! ## A329035.P17149553294375754392

`gcd(A157684(2*n+1), A324851(A134126(n+1)))`
-/

namespace A329035.P17149553294375754392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157684 (2 * n + 1)) (A324851 (A134126 (n + 1)).toNat)

end

end A329035.P17149553294375754392

/-!
# A329036: Number of common divisors of n and A122111(n).

The programs for A329036, the canonical program `A329036.P16887448839036286075` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329036 has offset 1).

The definition of A329036 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A280491, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329036.P16887448839036286075

`A000005(A280491(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A329036

/-- `A000005(A280491(n+1))` -/
def P16887448839036286075.Spec : Prop :=
  ∀ n, P16887448839036286075.a n = A329036 (n + 1)

theorem P16887448839036286075.correct : P16887448839036286075.Spec := by
  intro n
  simp only [A329036, Nat.add_sub_cancel]

end A329036

/-! ## A329036.P2093294215190878089

`A000005(gcd(n+1, A122111(n+1)))`
-/

namespace A329036.P2093294215190878089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n + 1 : ℤ) (A122111 (n + 1)))

end

end A329036.P2093294215190878089

namespace A329036

/-- `A000005(gcd(n+1, A122111(n+1)))` -/
def P2093294215190878089.Spec : Prop :=
  ∀ n, P2093294215190878089.a n = A329036 (n + 1)

end A329036

/-! ## A329036.P1823581040502765382

`1+A001222(A329042(n+1))`
-/

namespace A329036.P1823581040502765382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001222 (A329042 (n + 1)).toNat

end

end A329036.P1823581040502765382

namespace A329036

/-- `1+A001222(A329042(n+1))` -/
def P1823581040502765382.Spec : Prop :=
  ∀ n, P1823581040502765382.a n = A329036 (n + 1)

end A329036

/-! ## A329036.P12459640422651472769

`1+A001222(A329043(n+1))`
-/

namespace A329036.P12459640422651472769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001222 (A329043 (n + 1)).toNat

end

end A329036.P12459640422651472769

namespace A329036

/-- `1+A001222(A329043(n+1))` -/
def P12459640422651472769.Spec : Prop :=
  ∀ n, P12459640422651472769.a n = A329036 (n + 1)

end A329036

/-! ## A329036.P6546841727020080061

`A000005((n+1)/A280490(n+1))`
-/

namespace A329036.P6546841727020080061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A280490 (n + 1) : ℚ))).toNat

end

end A329036.P6546841727020080061

namespace A329036

/-- `A000005((n+1)/A280490(n+1))` -/
def P6546841727020080061.Spec : Prop :=
  ∀ n, P6546841727020080061.a n = A329036 (n + 1)

end A329036

/-! ## A329036.P11176645290296738501

`A073093(A329042(n+1))`
-/

namespace A329036.P11176645290296738501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A329042 (n + 1)).toNat

end

end A329036.P11176645290296738501

namespace A329036

/-- `A073093(A329042(n+1))` -/
def P11176645290296738501.Spec : Prop :=
  ∀ n, P11176645290296738501.a n = A329036 (n + 1)

end A329036

/-! ## A329036.P9592553243220841079

`A073093(A329043(n+1))`
-/

namespace A329036.P9592553243220841079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A329043 (n + 1)).toNat

end

end A329036.P9592553243220841079

namespace A329036

/-- `A073093(A329043(n+1))` -/
def P9592553243220841079.Spec : Prop :=
  ∀ n, P9592553243220841079.a n = A329036 (n + 1)

end A329036

/-! ## A329036.P9574560677183070778

`A322813(A122111(A280491(n+1))²)`
-/

namespace A329036.P9574560677183070778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (A122111 (A280491 (n + 1)).toNat ^ 2).toNat

end

end A329036.P9574560677183070778

namespace A329036

/-- `A322813(A122111(A280491(n+1))²)` -/
def P9574560677183070778.Spec : Prop :=
  ∀ n, P9574560677183070778.a n = A329036 (n + 1)

end A329036

/-!
# A329038: a(n) = A246277(A276086(n)).

The programs for A329038, there is no canonical definition to state claims against.
-/

/-! ## A329038.P8802876146737808629

`A246277(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329038.P8802876146737808629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A276086 n).toNat

end

end A329038.P8802876146737808629

/-! ## A329038.P4347761294554881550

`A305897(A351225(n)+n)-1`
-/

namespace A329038.P4347761294554881550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A351225 n + (n : ℤ)).toNat - 1

end

end A329038.P4347761294554881550

/-! ## A329038.P9812130498707855714

`A305897(A276086(n))-A054977(n+4)`
-/

namespace A329038.P9812130498707855714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A276086 n).toNat - A054977 (n + 4)

end

end A329038.P9812130498707855714

/-! ## A329038.P9504382213490215507

`A347596(A033630((2*n)²+1))+A305897(A276086(n))`
-/

namespace A329038.P9504382213490215507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347596 (A033630 ((2 * n) ^ 2 + 1)).toNat + A305897 (A276086 n).toNat

end

end A329038.P9504382213490215507

/-!
# A329039: If n = Product p_i^e_i, a(n) = n * Sum ((e_i - 1)/p_i).

The programs for A329039, the canonical program `A329039.P4210899274647080376` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329039 has offset 1).

The definition of A329039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329039.P4210899274647080376

`A003415(n+1)-A069359(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A329039

/-- `A003415(n+1)-A069359(n+1)` -/
def P4210899274647080376.Spec : Prop :=
  ∀ n, P4210899274647080376.a n = A329039 (n + 1)

theorem P4210899274647080376.correct : P4210899274647080376.Spec := by
  intro n
  simp only [A329039, Nat.add_sub_cancel]

end A329039

/-! ## A329039.P5787430647607829489

`∑[A258057(n)]-∑{p}[n+1, (n+1)/#]`
-/

namespace A329039.P5787430647607829489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - ∑ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ)

end

end A329039.P5787430647607829489

namespace A329039

/-- `∑[A258057(n)]-∑{p}[n+1, (n+1)/#]` -/
def P5787430647607829489.Spec : Prop :=
  ∀ n, P5787430647607829489.a n = (A329039 (n + 1) : ℚ)

end A329039

/-! ## A329039.P2079971333268642155

`∏{p}[n+1, #]*A003415((n+1)/∏{p}[n+1, #])`
-/

namespace A329039.P2079971333268642155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A329039.P2079971333268642155

namespace A329039

/-- `∏{p}[n+1, #]*A003415((n+1)/∏{p}[n+1, #])` -/
def P2079971333268642155.Spec : Prop :=
  ∀ n, P2079971333268642155.a n = A329039 (n + 1)

end A329039

/-! ## A329039.P12809018599962837050

`∑[A258057(n)]-A069359(n+1)`
-/

namespace A329039.P12809018599962837050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A069359 (n + 1)

end

end A329039.P12809018599962837050

namespace A329039

/-- `∑[A258057(n)]-A069359(n+1)` -/
def P12809018599962837050.Spec : Prop :=
  ∀ n, P12809018599962837050.a n = A329039 (n + 1)

end A329039

/-! ## A329039.P5914725603689799209

`A129283(n+1)-A230593(n+1)`
-/

namespace A329039.P5914725603689799209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (n + 1) - A230593 (n + 1)

end

end A329039.P5914725603689799209

namespace A329039

/-- `A129283(n+1)-A230593(n+1)` -/
def P5914725603689799209.Spec : Prop :=
  ∀ n, P5914725603689799209.a n = A329039 (n + 1)

theorem P5914725603689799209.correct : P5914725603689799209.Spec := by
  intro n
  simp only [A329039, Nat.add_sub_cancel, A329039.P5914725603689799209.a, A329039.P4210899274647080376.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A129283, A129283.P3962818557550655141.a, A230593, A230593.P566366063280719726.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A329039

/-! ## A329039.P12862459574768092755

`A007947(n+1)*A379967(n+1)`
-/

namespace A329039.P12862459574768092755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A379967 (n + 1)

end

end A329039.P12862459574768092755

namespace A329039

/-- `A007947(n+1)*A379967(n+1)` -/
def P12862459574768092755.Spec : Prop :=
  ∀ n, P12862459574768092755.a n = A329039 (n + 1)

end A329039

/-! ## A329039.P11729344870111110047

`A089384(n+1)*A379967(n+1)`
-/

namespace A329039.P11729344870111110047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089384 (n + 1) * A379967 (n + 1)

end

end A329039.P11729344870111110047

namespace A329039

/-- `A089384(n+1)*A379967(n+1)` -/
def P11729344870111110047.Spec : Prop :=
  ∀ n, P11729344870111110047.a n = A329039 (n + 1)

end A329039

/-! ## A329039.P701162964354346069

`A334085(n+1)*A379967(n+1)`
-/

namespace A329039.P701162964354346069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334085 (n + 1) * A379967 (n + 1)

end

end A329039.P701162964354346069

namespace A329039

/-- `A334085(n+1)*A379967(n+1)` -/
def P701162964354346069.Spec : Prop :=
  ∀ n, P701162964354346069.a n = A329039 (n + 1)

end A329039

/-! ## A329039.P2488533208786796730

`A003415((n+1)/∏{p}[n+1, #])*A007947(n+1)`
-/

namespace A329039.P2488533208786796730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * A007947 (n + 1)

end

end A329039.P2488533208786796730

namespace A329039

/-- `A003415((n+1)/∏{p}[n+1, #])*A007947(n+1)` -/
def P2488533208786796730.Spec : Prop :=
  ∀ n, P2488533208786796730.a n = A329039 (n + 1)

end A329039

/-! ## A329039.P3902681876010629748

`A003415(gcd(n+1, ∑{p}[n+1, (n+1)/#]))*A007947(n+1)`
-/

namespace A329039.P3902681876010629748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))) * A007947 (n + 1)

end

end A329039.P3902681876010629748

namespace A329039

/-- `A003415(gcd(n+1, ∑{p}[n+1, (n+1)/#]))*A007947(n+1)` -/
def P3902681876010629748.Spec : Prop :=
  ∀ n, P3902681876010629748.a n = A329039 (n + 1)

end A329039

/-! ## A329039.P17113496965754948582

`A003415(A003557(n+1))*A007947(n+1)`
-/

namespace A329039.P17113496965754948582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003557 (n + 1)).toNat * A007947 (n + 1)

end

end A329039.P17113496965754948582

namespace A329039

/-- `A003415(A003557(n+1))*A007947(n+1)` -/
def P17113496965754948582.Spec : Prop :=
  ∀ n, P17113496965754948582.a n = A329039 (n + 1)

end A329039

/-! ## A329039.P7802959467547375069

`A015052(A015052(n+1))*A379967(n+1)`
-/

namespace A329039.P7802959467547375069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1)).toNat * A379967 (n + 1)

end

end A329039.P7802959467547375069

namespace A329039

/-- `A015052(A015052(n+1))*A379967(n+1)` -/
def P7802959467547375069.Spec : Prop :=
  ∀ n, P7802959467547375069.a n = A329039 (n + 1)

end A329039

/-! ## A329039.P15071479461192733971

`A015053(A015053(n+1))*A379967(n+1)`
-/

namespace A329039.P15071479461192733971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1)).toNat * A379967 (n + 1)

end

end A329039.P15071479461192733971

namespace A329039

/-- `A015053(A015053(n+1))*A379967(n+1)` -/
def P15071479461192733971.Spec : Prop :=
  ∀ n, P15071479461192733971.a n = A329039 (n + 1)

end A329039

/-! ## A329039.P15156527883004038792

`A003415(n+1)-A003557(n+1)*A028235(n+1)`
-/

namespace A329039.P15156527883004038792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A003557 (n + 1) * A028235 (n + 1)

end

end A329039.P15156527883004038792

namespace A329039

/-- `A003415(n+1)-A003557(n+1)*A028235(n+1)` -/
def P15156527883004038792.Spec : Prop :=
  ∀ n, P15156527883004038792.a n = A329039 (n + 1)

end A329039

/-! ## A329039.P15746857884798365235

`(A342001(n+1)-A028235(n+1))*A003557(n+1)`
-/

namespace A329039.P15746857884798365235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) - A028235 (n + 1)) * A003557 (n + 1)

end

end A329039.P15746857884798365235

namespace A329039

/-- `(A342001(n+1)-A028235(n+1))*A003557(n+1)` -/
def P15746857884798365235.Spec : Prop :=
  ∀ n, P15746857884798365235.a n = A329039 (n + 1)

end A329039

/-! ## A329039.P9309617134158196084

`A003557(n+1)*A342001(n+1)-A069359(n+1)`
-/

namespace A329039.P9309617134158196084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A342001 (n + 1) - A069359 (n + 1)

end

end A329039.P9309617134158196084

namespace A329039

/-- `A003557(n+1)*A342001(n+1)-A069359(n+1)` -/
def P9309617134158196084.Spec : Prop :=
  ∀ n, P9309617134158196084.a n = A329039 (n + 1)

end A329039

/-! ## A329039.P14003366671233625489

`A003415(n+1)+A322068(n)-A322068(n+1)`
-/

namespace A329039.P14003366671233625489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A322068 n - A322068 (n + 1))

end

end A329039.P14003366671233625489

namespace A329039

/-- `A003415(n+1)+A322068(n)-A322068(n+1)` -/
def P14003366671233625489.Spec : Prop :=
  ∀ n, P14003366671233625489.a n = A329039 (n + 1)

end A329039

/-!
# A329040: Number of distinct primorials in the greedy sum of primorials adding to A108951(n).

The programs for A329040, there is no canonical definition to state claims against.
-/

/-! ## A329040.P4555338359726913516

`∑{e}[A346091(n+1), #]`
-/

namespace A329040.P4555338359726913516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A329040.P4555338359726913516

/-! ## A329040.P5563766416733367018

`∑{p}[A346091(n+1), A276088(#)]`
-/

namespace A329040.P5563766416733367018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A276088 p

end

end A329040.P5563766416733367018

/-! ## A329040.P14858418702365677166

`∑{p}[A346091(n+1), A344592(#)]`
-/

namespace A329040.P14858418702365677166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A344592 p

end

end A329040.P14858418702365677166

/-! ## A329040.P9057587257338662153

`∑{p}[A346091(n+1), gcd(#, A064989(n+1))]`
-/

namespace A329040.P9057587257338662153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.gcd (p : ℤ) (A064989 (n + 1))

end

end A329040.P9057587257338662153

/-! ## A329040.P294638507585033638

`A000005(∏{p}[A346091(n+1), A000005(#)])-1`
-/

namespace A329040.P294638507585033638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 p).toNat - 1

end

end A329040.P294638507585033638

/-! ## A329040.P12691991698718501136

`A001221(A346091(n+1))`
-/

namespace A329040.P12691991698718501136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A346091 (n + 1)).toNat

end

end A329040.P12691991698718501136

/-! ## A329040.P6527333839848443645

`A001221(A324886(n+1)/A344592(n+1))`
-/

namespace A329040.P6527333839848443645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A324886 (n + 1) : ℚ) / (A344592 (n + 1) : ℚ))).toNat

end

end A329040.P6527333839848443645

/-! ## A329040.P10344475998849808029

`A001222(A324886(n+1)/A344592(n+1))`
-/

namespace A329040.P10344475998849808029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A324886 (n + 1) : ℚ) / (A344592 (n + 1) : ℚ))).toNat

end

end A329040.P10344475998849808029

/-! ## A329040.P12248546943269023555

`A342461(A156552(n+1))`
-/

namespace A329040.P12248546943269023555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342461 (A156552 (n + 1)).toNat

end

end A329040.P12248546943269023555

/-! ## A329040.P1986096483125685485

`A365460(A122111(n+1))`
-/

namespace A329040.P1986096483125685485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365460 (A122111 (n + 1)).toNat

end

end A329040.P1986096483125685485

/-!
# A329041: Square array read by antidiagonals: A(n, k) = A327936(A276086(n) * A276086(k)).

The programs for A329041, there is no canonical definition to state claims against.
-/

/-! ## A329041.P11018525678688930348

`A327936(A276086(col(n))*A276086(row(n)-col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329041.P11018525678688930348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327936 (A276086 (SequenceMachineLib.triCol n) * A276086 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)).toNat

end

end A329041.P11018525678688930348

/-! ## A329041.P8683220813992391934

`A327936(A276086(row(n)-col(n))*A276086(col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329041.P8683220813992391934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327936 (A276086 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) * A276086 (SequenceMachineLib.triCol n)).toNat

end

end A329041.P8683220813992391934

/-! ## A329041.P6451756424960146820

`gcd(A185382(A304355(n+1)), A324350(n))`
-/

namespace A329041.P6451756424960146820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185382 (A304355 (n + 1)).toNat) (A324350 n)

end

end A329041.P6451756424960146820

/-! ## A329041.P7846057650909072839

`gcd(A324339(A008459(n)), A324350(n))`
-/

namespace A329041.P7846057650909072839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324339 (A008459 n).toNat) (A324350 n)

end

end A329041.P7846057650909072839

/-! ## A329041.P3998008154056498585

`and(A007623(A022166(n)), A324350(n))`
-/

namespace A329041.P3998008154056498585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007623 (A022166 n).toNat) (A324350 n)

end

end A329041.P3998008154056498585

/-!
# A329042: a(n) = Product_{d|n, d>1} A008578(1+A286561(A122111(n),d)), where A286561(x,d) gives the exponent of the highest power of d dividing x.

The programs for A329042, there is no canonical definition to state claims against.
-/

/-! ## A329042.P10677094214980753559

`A329043(A122111(n+1))`
-/

namespace A329042.P10677094214980753559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329043 (A122111 (n + 1)).toNat

end

end A329042.P10677094214980753559

/-! ## A329042.P8788161440937408917

`A329043(∑{d}[n+1, A329034(#)])`
-/

namespace A329042.P8788161440937408917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329043 (∑ d ∈ Nat.divisors (f1 n), A329034 d).toNat

end

end A329042.P8788161440937408917

/-! ## A329042.P7461615030714324936

`A329043(A243070(∑[4*n]+1))`
-/

namespace A329042.P7461615030714324936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329043 (A243070 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A329042.P7461615030714324936

/-! ## A329042.P16754933611118620208

`A329043(1-A352491(n+1)+n)`
-/

namespace A329042.P16754933611118620208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329043 (1 - A352491 (n + 1) + (n : ℤ)).toNat

end

end A329042.P16754933611118620208

/-! ## A329042.P5517192013150851756

`A329043(A354867(n+1)-A354866(n+1))`
-/

namespace A329042.P5517192013150851756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329043 (A354867 (n + 1) - A354866 (n + 1)).toNat

end

end A329042.P5517192013150851756

/-!
# A329043: a(n) = Product_{d|A122111(n), d>1} A008578(1+A286561(n,d)), where A286561(n,d) gives the exponent of the highest power of d dividing n.

The programs for A329043, there is no canonical definition to state claims against.
-/

/-! ## A329043.P4895731188383941194

`A329042(A122111(n+1))`
-/

namespace A329043.P4895731188383941194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329042 (A122111 (n + 1)).toNat

end

end A329043.P4895731188383941194

/-! ## A329043.P6582513109590075424

`A329042(∑{d}[n+1, A329034(#)])`
-/

namespace A329043.P6582513109590075424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329042 (∑ d ∈ Nat.divisors (f1 n), A329034 d).toNat

end

end A329043.P6582513109590075424

/-! ## A329043.P16756219668169103501

`A329042(A243070(∑[4*n]+1))`
-/

namespace A329043.P16756219668169103501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329042 (A243070 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A329043.P16756219668169103501

/-! ## A329043.P13666942576751818156

`A329042(1-A352491(n+1)+n)`
-/

namespace A329043.P13666942576751818156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329042 (1 - A352491 (n + 1) + (n : ℤ)).toNat

end

end A329043.P13666942576751818156

/-! ## A329043.P12166448976469206806

`A329042(A354867(n+1)-A354866(n+1))`
-/

namespace A329043.P12166448976469206806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329042 (A354867 (n + 1) - A354866 (n + 1)).toNat

end

end A329043.P12166448976469206806

/-!
# A329044: a(n) = A064989(A324886(n)).

The programs for A329044, there is no canonical definition to state claims against.
-/

/-! ## A329044.P4108098572926152405

`A064989(A324886(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329044.P4108098572926152405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A324886 (n + 1)).toNat

end

end A329044.P4108098572926152405

/-! ## A329044.P15985518551289772896

`A345941(n+1)*A345943(n+1)`
-/

namespace A329044.P15985518551289772896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (n + 1) * A345943 (n + 1)

end

end A329044.P15985518551289772896

/-! ## A329044.P13240286798741793025

`A346095(n+1)*A346097(n+1)`
-/

namespace A329044.P13240286798741793025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346095 (n + 1) * A346097 (n + 1)

end

end A329044.P13240286798741793025

/-! ## A329044.P18170596625900488124

`lcm(A345943(n+1), A346097(n+1))`
-/

namespace A329044.P18170596625900488124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A345943 (n + 1)) (A346097 (n + 1))

end

end A329044.P18170596625900488124

/-! ## A329044.P7761593056730729886

`(n+1)/A345942(n+1)*A345943(n+1)`
-/

namespace A329044.P7761593056730729886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A345942 (n + 1) : ℚ) * (A345943 (n + 1) : ℚ)

end

end A329044.P7761593056730729886

/-! ## A329044.P13009352065453500593

`A324886(n+1)/A346096(n+1)*A346097(n+1)`
-/

namespace A329044.P13009352065453500593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (A346096 (n + 1) : ℚ) * (A346097 (n + 1) : ℚ)

end

end A329044.P13009352065453500593

/-! ## A329044.P9240055860331162078

`A219158(A345942(n+1)+A000217(n))*A345943(n+1)`
-/

namespace A329044.P9240055860331162078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A345942 (n + 1) + A000217 n).toNat * A345943 (n + 1)

end

end A329044.P9240055860331162078

/-! ## A329044.P16343095693828144547

`A126988(A345942(n+1)+∑[n])*A345943(n+1)`
-/

namespace A329044.P16343095693828144547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A345942 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat * A345943 (n + 1)

end

end A329044.P16343095693828144547

/-! ## A329044.P9737706141614021578

`A054531(A345942(n+1)+A000217(n))*A345943(n+1)`
-/

namespace A329044.P9737706141614021578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A345942 (n + 1) + A000217 n).toNat * A345943 (n + 1)

end

end A329044.P9737706141614021578

/-! ## A329044.P3280509832216989425

`A064989(A346095(n+1))*A346098(n+1)`
-/

namespace A329044.P3280509832216989425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A346095 (n + 1)).toNat * A346098 (n + 1)

end

end A329044.P3280509832216989425

/-!
# A329045: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(A329044(i)) = A046523(A329044(j)) for all i, j.

The programs for A329045, there is no canonical definition to state claims against.
-/

/-! ## A329045.P7441730718446418922

`A329345(n+1)%A115425(A299772(n+1))`
-/

namespace A329045.P7441730718446418922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329345 (n + 1)) (A115425 (A299772 (n + 1)).toNat)

end

end A329045.P7441730718446418922

/-! ## A329045.P4782808821728725348

`A329345(n+1)%A067203(n+1)`
-/

namespace A329045.P4782808821728725348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329345 (n + 1)) (A067203 (n + 1))

end

end A329045.P4782808821728725348

/-! ## A329045.P16823226590968593162

`and(A152388(n+1), A329345(n+1))`
-/

namespace A329045.P16823226590968593162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A329345 (n + 1))

end

end A329045.P16823226590968593162

/-! ## A329045.P4174107945258481094

`and(A273236(n+1), A329345(n+1))`
-/

namespace A329045.P4174107945258481094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273236 (n + 1)) (A329345 (n + 1))

end

end A329045.P4174107945258481094

/-! ## A329045.P16282232828441671464

`and(A329345(n+1), A383046(n+3))`
-/

namespace A329045.P16282232828441671464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A329345 (n + 1)) (A383046 (n + 3))

end

end A329045.P16282232828441671464

/-!
# A329046: a(n) = A000005(A324886(n)).

The programs for A329046, there is no canonical definition to state claims against.
-/

/-! ## A329046.P2563639544270466077

`A324655(A108951(n+1))`
-/

namespace A329046.P2563639544270466077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324655 (A108951 (n + 1)).toNat

end

end A329046.P2563639544270466077

/-! ## A329046.P240865213134692799

`A000005(A324886(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329046.P240865213134692799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A324886 (n + 1)).toNat

end

end A329046.P240865213134692799

/-! ## A329046.P2405274997396962032

`A000005(A329044(ceil(acot(n)+n)))`
-/

namespace A329046.P2405274997396962032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A329044 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat).toNat

end

end A329046.P2405274997396962032

/-! ## A329046.P2643352602823182906

`A000005(A329044(gcd(n, C(2, n))+1))`
-/

namespace A329046.P2643352602823182906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A329044 (Nat.gcd n (Nat.choose 2 n) + 1)).toNat

end

end A329046.P2643352602823182906

/-! ## A329046.P14007450835758077760

`∑{d}[A324886(n+1), A003558(val(#, 2))]`
-/

namespace A329046.P14007450835758077760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003558 (SequenceMachineLib.valuation d 2)

end

end A329046.P14007450835758077760

/-!
# A329047: a(n) = A003415(A324886(n)).

The programs for A329047, there is no canonical definition to state claims against.
-/

/-! ## A329047.P3441208082010572538

`A003415(A324886(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329047.P3441208082010572538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A324886 (n + 1)).toNat

end

end A329047.P3441208082010572538

/-! ## A329047.P11389489153451749272

`A342920(n+1)*A344592(n+1)`
-/

namespace A329047.P11389489153451749272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342920 (n + 1) * A344592 (n + 1)

end

end A329047.P11389489153451749272

/-! ## A329047.P1444574097957214950

`lcm(A342920(A000027(n+1)), A344592(n+1))`
-/

namespace A329047.P1444574097957214950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A342920 (A000027 (n + 1)).toNat) (A344592 (n + 1))

end

end A329047.P1444574097957214950

/-! ## A329047.P7723699979719968415

`A324886(n+1)/A346091(n+1)*A342920(n+1)`
-/

namespace A329047.P7723699979719968415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (A346091 (n + 1) : ℚ) * (A342920 (n + 1) : ℚ)

end

end A329047.P7723699979719968415

/-! ## A329047.P6095623333692749821

`lcm(A344592(n+1)%A324886(n+1), A342920(n+1))`
-/

namespace A329047.P6095623333692749821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A344592 (n + 1)) (A324886 (n + 1))) (A342920 (n + 1))

end

end A329047.P6095623333692749821

/-!
# A329048: Lexicographically earliest infinite sequence such that a(i) = a(j) => A329038(i) = A329038(j) for all i, j.

The programs for A329048, there is no canonical definition to state claims against.
-/

/-! ## A329048.P4692272684312753151

`A276951(n)+A008833(A101692(n))`
-/

namespace A329048.P4692272684312753151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276951 n + A008833 (A101692 n).toNat

end

end A329048.P4692272684312753151

/-! ## A329048.P5784120312521075188

`A276951(n)+A257679(A101624(n))`
-/

namespace A329048.P5784120312521075188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276951 n + A257679 (A101624 n).toNat

end

end A329048.P5784120312521075188

/-! ## A329048.P6533730867996142819

`A276951(n)-A033999(A081275(n))`
-/

namespace A329048.P6533730867996142819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276951 n - A033999 (A081275 n).toNat

end

end A329048.P6533730867996142819

/-! ## A329048.P12387275437208197168

`A276951(n)+A000035(A000978(n+1))`
-/

namespace A329048.P12387275437208197168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276951 n + A000035 (A000978 (n + 1)).toNat

end

end A329048.P12387275437208197168

/-! ## A329048.P12799960222057005489

`A276951(n)+A057427(A108284(n+1))`
-/

namespace A329048.P12799960222057005489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276951 n + A057427 (A108284 (n + 1)).toNat

end

end A329048.P12799960222057005489

/-!
# A329049: Transpose of square array A329050.

The programs for A329049, there is no canonical definition to state claims against.
-/

/-! ## A329049.P8312462937044943679

`A000040(row(n)-col(n)+1)^2^col(n)`
-/

namespace A329049.P8312462937044943679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat ^ 2 ^ SequenceMachineLib.triCol n

end

end A329049.P8312462937044943679

/-! ## A329049.P3943584366769651891

`A104887(n+1)^A059268(n)`
-/

namespace A329049.P3943584366769651891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104887 (n + 1) : ℚ) ^ (A059268 n : ℤ)

end

end A329049.P3943584366769651891

/-! ## A329049.P3637530077602547825

`A019565(A130321(n))^A059268(n)`
-/

namespace A329049.P3637530077602547825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 (A130321 n).toNat : ℚ) ^ (A059268 n : ℤ)

end

end A329049.P3637530077602547825

/-! ## A329049.P8546286943921639845

`A037126(A278818(n))^A059268(n)`
-/

namespace A329049.P8546286943921639845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037126 (A278818 n).toNat : ℚ) ^ (A059268 n : ℤ)

end

end A329049.P8546286943921639845

/-! ## A329049.P17484343585563674959

`A000040(A004736(n+1))^A059268(n)`
-/

namespace A329049.P17484343585563674959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A004736 (n + 1)).toNat : ℚ) ^ (A059268 n : ℤ)

end

end A329049.P17484343585563674959

/-! ## A329049.P12805168707434413455

`A037126(A038722(n+1))^A059268(n)`
-/

namespace A329049.P12805168707434413455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037126 (A038722 (n + 1)).toNat : ℚ) ^ (A059268 n : ℤ)

end

end A329049.P12805168707434413455

/-! ## A329049.P12362669111990772144

`A000040(A004736(n+1))^2^A002262(n)`
-/

namespace A329049.P12362669111990772144
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (A004736 (n + 1)).toNat : ℝ) ^ ((2 : ℚ) ^ (A002262 n : ℤ) : ℝ)

end

end A329049.P12362669111990772144

/-! ## A329049.P5570721620094651830

`A000040(A025581(n)+1)^2^A002262(n)`
-/

namespace A329049.P5570721620094651830
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (A025581 n + 1).toNat : ℝ) ^ ((2 : ℚ) ^ (A002262 n : ℤ) : ℝ)

end

end A329049.P5570721620094651830

/-!
# A329050: Square array A(n,k) = prime(n+1)^(2^k), read by descending antidiagonals (0,0), (0,1), (1,0), (0,2), (1,1), (2,0), ...; Fermi-Dirac primes (A050376) in matrix form, sorted into rows by their prime divisor.

The programs for A329050, the canonical program `A329050.P9287876200792538397` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329050 has offset 0).

The definition of A329050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329050.P9287876200792538397

`A000040(col(n)+1)^2^(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A329050

/-- `A000040(col(n)+1)^2^(row(n)-col(n))` -/
def P9287876200792538397.Spec : Prop :=
  ∀ n, P9287876200792538397.a n = (A329050 n : ℝ)

end A329050

/-! ## A329050.P1448200675194278909

`A329049(A061579(n))`
-/

namespace A329050.P1448200675194278909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329049 (A061579 n).toNat

end

end A329050.P1448200675194278909

namespace A329050

/-- `A329049(A061579(n))` -/
def P1448200675194278909.Spec : Prop :=
  ∀ n, P1448200675194278909.a n = A329050 n

end A329050

/-! ## A329050.P6940163973842021953

`p?[A246029(n)]^A130321(n)`
-/

namespace A329050.P6940163973842021953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A130321 n : ℤ)

end

end A329050.P6940163973842021953

namespace A329050

/-- `p?[A246029(n)]^A130321(n)` -/
def P6940163973842021953.Spec : Prop :=
  ∀ n, P6940163973842021953.a n = (A329050 n : ℚ)

end A329050

/-! ## A329050.P12839413422875667349

`A037126(n+1)^A130321(n)`
-/

namespace A329050.P12839413422875667349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037126 (n + 1) : ℚ) ^ (A130321 n : ℤ)

end

end A329050.P12839413422875667349

namespace A329050

/-- `A037126(n+1)^A130321(n)` -/
def P12839413422875667349.Spec : Prop :=
  ∀ n, P12839413422875667349.a n = (A329050 n : ℚ)

end A329050

/-! ## A329050.P18154891268271866476

`A000040(A002260(n+1))^A130321(n)`
-/

namespace A329050.P18154891268271866476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A002260 (n + 1)).toNat : ℚ) ^ (A130321 n : ℤ)

end

end A329050.P18154891268271866476

namespace A329050

/-- `A000040(A002260(n+1))^A130321(n)` -/
def P18154891268271866476.Spec : Prop :=
  ∀ n, P18154891268271866476.a n = (A329050 n : ℚ)

end A329050

/-!
# A329051: Positions of records in A329040.

The programs for A329051, there is no canonical definition to state claims against.
-/

/-! ## A329051.P2953232912439009750

`∑[A177407(8^n)]`
-/

namespace A329051.P2953232912439009750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177407 (8 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329051.P2953232912439009750

/-!
# A329052: Array read by antidiagonals: T(n,m) is the number of unlabeled bicolored acyclic graphs with n nodes of one color and m of the other.

The programs for A329052, there is no canonical definition to state claims against.
-/

/-! ## A329052.P9203771305970639873

`A356944(A383551(n))`
-/

namespace A329052.P9203771305970639873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A383551 n).toNat

end

end A329052.P9203771305970639873

/-! ## A329052.P701516940023684273

`A347621(A014473(n))+A014473(n)`
-/

namespace A329052.P701516940023684273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347621 (A014473 n).toNat + A014473 n

end

end A329052.P701516940023684273

/-! ## A329052.P16016605446416175682

`A117297(A333159(n))+A014473(n)`
-/

namespace A329052.P16016605446416175682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117297 (A333159 n).toNat + A014473 n

end

end A329052.P16016605446416175682

/-! ## A329052.P6255789447123451037

`A347621(A007318(n)-1)+A007318(n)-1`
-/

namespace A329052.P6255789447123451037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347621 (A007318 n - 1).toNat + (A007318 n - 1)

end

end A329052.P6255789447123451037

/-! ## A329052.P12787053943843059084

`A347621(abs(A130595(n))-1)+(A131060(n)-1)/3`
-/

namespace A329052.P12787053943843059084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347621 (|A130595 n| - 1).toNat : ℚ) + (A131060 n - 1 : ℚ) / 3

end

end A329052.P12787053943843059084

/-!
# A329053: Number of bicolored acyclic graphs on n unlabeled nodes.

The programs for A329053, there is no canonical definition to state claims against.
-/

/-! ## A329053.P452578945660382352

`∑[A172471(A151477(n))]`
-/

namespace A329053.P452578945660382352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A151477 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329053.P452578945660382352

/-! ## A329053.P5806473303639097522

`∑[A257639(A150510(n))]`
-/

namespace A329053.P5806473303639097522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A150510 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329053.P5806473303639097522

/-! ## A329053.P9829288831430236393

`∑[A257639(A150541(n))]`
-/

namespace A329053.P9829288831430236393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A150541 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329053.P9829288831430236393

/-! ## A329053.P15879822656487166599

`record[A097777(A097876(n))]`
-/

namespace A329053.P15879822656487166599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097777 (A097876 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329053.P15879822656487166599

/-! ## A329053.P1113755546400506626

`A098051(A004903(n+1)+2)`
-/

namespace A329053.P1113755546400506626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098051 (A004903 (n + 1) + 2).toNat

end

end A329053.P1113755546400506626

/-!
# A329054: Array read by antidiagonals: T(n,m) is the number of unlabeled bicolored trees with n nodes of one color and m of the other.

The programs for A329054, there is no canonical definition to state claims against.
-/

/-! ## A329054.P12971426067613535898

`∑{e}[A071731(A099766(n)), #]`
-/

namespace A329054.P12971426067613535898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071731 (A099766 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A329054.P12971426067613535898

/-! ## A329054.P11975711061409740139

`A104484(A014681(A099766(n)²))`
-/

namespace A329054.P11975711061409740139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104484 (A014681 (A099766 n ^ 2).toNat).toNat

end

end A329054.P11975711061409740139

/-! ## A329054.P15328537337696866845

`A001842(3^A099766(n))`
-/

namespace A329054.P15328537337696866845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A099766 n : ℤ))).toNat

end

end A329054.P15328537337696866845

/-! ## A329054.P10893324604216339105

`A373338(A126015(2*n+1))+A051168(n)`
-/

namespace A329054.P10893324604216339105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373338 (A126015 (2 * n + 1)).toNat + A051168 n

end

end A329054.P10893324604216339105

/-! ## A329054.P9987860821659181364

`A329362(A051168(n)^A333765(n))`
-/

namespace A329054.P9987860821659181364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (SequenceMachineLib.roundAway ((A051168 n : ℚ) ^ (A333765 n : ℤ))).toNat

end

end A329054.P9987860821659181364

/-!
# A329055: Number of unlabeled bicolored acyclic graphs with n nodes of each color.

The programs for A329055, there is no canonical definition to state claims against.
-/

/-! ## A329055.P14201395295880101254

`A329052(∑[4*n])`
-/

namespace A329055.P14201395295880101254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329052 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329055.P14201395295880101254

/-! ## A329055.P14761553818903644979

`record[A329052(∑[A071045(n)])]`
-/

namespace A329055.P14761553818903644979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329052 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329055.P14761553818903644979

/-! ## A329055.P8563601949522775832

`record[A329052(4*A091018(n))]`
-/

namespace A329055.P8563601949522775832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329052 (4 * A091018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329055.P8563601949522775832

/-! ## A329055.P17516700882791104353

`record[gcd(A112467(n), A329052(n))]`
-/

namespace A329055.P17516700882791104353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A329052 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329055.P17516700882791104353

/-! ## A329055.P6473959522079153699

`record[A077606(n+1)*A329052(n)]`
-/

namespace A329055.P6473959522079153699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A329052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329055.P6473959522079153699

/-!
# A329056: a(n) is the integer nearest to the result of raising n to the power of the fraction that is the natural logarithm of n over the natural logarithm of the golden ratio.

The programs for A329056, the canonical program `A329056.P15101219524489561516` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329056 has offset 1).

The definition of A329056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329056.P15101219524489561516

`round((n+1)^(log(n+1)/log(ϕ)))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A329056

/-- `round((n+1)^(log(n+1)/log(ϕ)))` -/
def P15101219524489561516.Spec : Prop :=
  ∀ n, P15101219524489561516.a n = A329056 (n + 1)

theorem P15101219524489561516.correct : P15101219524489561516.Spec := by
  intro n
  simp only [A329056, Nat.add_sub_cancel]

end A329056

/-! ## A329056.P4401907428694461025

`A080686(A132608(n+1))+∑[n]`
-/

namespace A329056.P4401907428694461025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080686 (A132608 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A329056.P4401907428694461025

namespace A329056

/-- `A080686(A132608(n+1))+∑[n]` -/
def P4401907428694461025.Spec : Prop :=
  ∀ n, P4401907428694461025.a n = A329056 (n + 1)

end A329056

/-!
# A329061: Greatest k such that A002805(k) is not divisible by n, or a(n) = 0 if there's no such k.

The programs for A329061, there is no canonical definition to state claims against.
-/

/-! ## A329061.P17097198409379403801

`A151761(A218722(n))+n`
-/

namespace A329061.P17097198409379403801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151761 (A218722 n).toNat + (n : ℤ)

end

end A329061.P17097198409379403801

/-!
# A329063: 

The programs for A329063, there is no canonical definition to state claims against.
-/

/-! ## A329063.P8393341991963297960

`∑[∑[∑{e}[n², #!]]!]`
-/

namespace A329063.P8393341991963297960
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329063.P8393341991963297960

/-!
# A329066: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where T(n,k) is the constant term in the expansion of ( (Sum_{j=0..n} x^(2*j+1)+1/x^(2*j+1)) * (Sum_{j=0..n} y^(2*j+1)+1/y^(2*j+1)) - (Sum_{j=0..n-1} x^(2*j+1)+1/x^(2*j+1)) * (Sum_{j=0..n-1} y^(2*j+1)+1/y^(2*j+1)) )^(2*k).

The programs for A329066, there is no canonical definition to state claims against.
-/

/-! ## A329066.P12614634349674163191

`A329078(A185869(n+1))`
-/

namespace A329066.P12614634349674163191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A185869 (n + 1)).toNat

end

end A329066.P12614634349674163191

/-! ## A329066.P4286055606711069241

`A329078(A093995(n+1)+2*n+1)`
-/

namespace A329066.P4286055606711069241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A093995 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A329066.P4286055606711069241

/-! ## A329066.P10342692672563791891

`A329078(A002024(n+1)²+2*n+1)`
-/

namespace A329066.P10342692672563791891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A002024 (n + 1) ^ 2 + (2 * n + 1 : ℤ)).toNat

end

end A329066.P10342692672563791891

/-! ## A329066.P3971745075069734745

`A329078(A005408(n)+A002024(n+1)²)`
-/

namespace A329066.P3971745075069734745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A005408 n + A002024 (n + 1) ^ 2).toNat

end

end A329066.P3971745075069734745

/-! ## A329066.P10244499202103022454

`A329078(A016789(n)+A057944(n)+A025581(n))`
-/

namespace A329066.P10244499202103022454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A016789 n + (A057944 n + A025581 n)).toNat

end

end A329066.P10244499202103022454

/-!
# A329067: Constant term in the expansion of ((x^5 + x^3 + x + 1/x + 1/x^3 + 1/x^5)*(y^5 + y^3 + y + 1/y + 1/y^3 + 1/y^5) - (x^3 + x + 1/x + 1/x^3)*(y^3 + y + 1/y + 1/y^3))^(2*n).

The programs for A329067, there is no canonical definition to state claims against.
-/

/-! ## A329067.P10088503985822839333

`A329066(∑[n+2]+3)`
-/

namespace A329067.P10088503985822839333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329066 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A329067.P10088503985822839333

/-! ## A329067.P6825619750013311921

`record[gcd(A329066(n+4), A329074(n))]`
-/

namespace A329067.P6825619750013311921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A329066 (n + 4)) (A329074 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329067.P6825619750013311921

/-! ## A329067.P12576578782232400198

`record[A329078(A167499(n))]`
-/

namespace A329067.P12576578782232400198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329067.P12576578782232400198

/-! ## A329067.P16044049026133958637

`A329078(A100038(n+2))`
-/

namespace A329067.P16044049026133958637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A100038 (n + 2)).toNat

end

end A329067.P16044049026133958637

/-! ## A329067.P10954648622007344541

`record[A329078(A000096(n)+6)]`
-/

namespace A329067.P10954648622007344541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A000096 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329067.P10954648622007344541

/-!
# A329069: Expansion of Product_{k>=1} 1 / (1 + mu(k)^2 * x^k).

The programs for A329069, there is no canonical definition to state claims against.
-/

/-! ## A329069.P11262976700615240575

`A033999(A000129(n))*A305632(n)`
-/

namespace A329069.P11262976700615240575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000129 n).toNat * A305632 n

end

end A329069.P11262976700615240575

/-! ## A329069.P17815985128777885271

`xor(A112609(A252433(2*n+5)), A261734(n))`
-/

namespace A329069.P17815985128777885271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A112609 (A252433 (2 * n + 5)).toNat) (A261734 n)

end

end A329069.P17815985128777885271

/-!
# A329070: Array read by ascending antidiagonals: T(n, k) = (k*n)!/(k^n*(1/k)_n) with (n >= 0 and k >= 1), where (x)_n = x*(x + 1)*...*(x + n - 1) is the Pochhammer symbol.

The programs for A329070, there is no canonical definition to state claims against.
-/

/-! ## A329070.P5565044553192117295

`A239304(A145033(n)!)`
-/

namespace A329070.P5565044553192117295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239304 (Nat.factorial (A145033 n).toNat)

end

end A329070.P5565044553192117295

/-! ## A329070.P10903698241361132885

`A239304(A239331(n)!)`
-/

namespace A329070.P10903698241361132885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239304 (Nat.factorial (A239331 n).toNat)

end

end A329070.P10903698241361132885

/-! ## A329070.P13691368531923749006

`A081728(A156882(n+1))`
-/

namespace A329070.P13691368531923749006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081728 (A156882 (n + 1)).toNat

end

end A329070.P13691368531923749006

/-! ## A329070.P3732874088831859324

`A205810(A119727(n+1))`
-/

namespace A329070.P3732874088831859324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205810 (A119727 (n + 1)).toNat

end

end A329070.P3732874088831859324

/-! ## A329070.P11461394246362694980

`A123050(A245111(n+1))`
-/

namespace A329070.P11461394246362694980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123050 (A245111 (n + 1)).toNat

end

end A329070.P11461394246362694980

/-!
# A329071: a(n) = phi(A275314(n)) - mu(A275314(n)), where A275314(n) is Euler's gradus function.

The programs for A329071, the canonical program `A329071.P11483321151575477981` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329071 has offset 1).

The definition of A329071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329071.P11483321151575477981

`A000010(A275314(n+1))-A008683(A275314(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A329071

/-- `A000010(A275314(n+1))-A008683(A275314(n+1))` -/
def P11483321151575477981.Spec : Prop :=
  ∀ n, P11483321151575477981.a n = A329071 (n + 1)

theorem P11483321151575477981.correct : P11483321151575477981.Spec := by
  intro n
  simp only [A329071, Nat.add_sub_cancel]

end A329071

/-! ## A329071.P1001389803585783502

`A053139(∑{p}[n+1, #*val(n+1, #)]+1-∑{e}[n+1, #])`
-/

namespace A329071.P1001389803585783502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1 - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A329071.P1001389803585783502

namespace A329071

/-- `A053139(∑{p}[n+1, #*val(n+1, #)]+1-∑{e}[n+1, #])` -/
def P1001389803585783502.Spec : Prop :=
  ∀ n, P1001389803585783502.a n = A329071 (n + 1)

end A329071

/-! ## A329071.P11078890838278213724

`A053139(A275314(n+1))`
-/

namespace A329071.P11078890838278213724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (A275314 (n + 1)).toNat

end

end A329071.P11078890838278213724

namespace A329071

/-- `A053139(A275314(n+1))` -/
def P11078890838278213724.Spec : Prop :=
  ∀ n, P11078890838278213724.a n = A329071 (n + 1)

end A329071

/-! ## A329071.P4476491524741278986

`A053139(A059975(n+1)+1)`
-/

namespace A329071.P4476491524741278986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (A059975 (n + 1) + 1).toNat

end

end A329071.P4476491524741278986

namespace A329071

/-- `A053139(A059975(n+1)+1)` -/
def P4476491524741278986.Spec : Prop :=
  ∀ n, P4476491524741278986.a n = A329071 (n + 1)

end A329071

/-! ## A329071.P10985957675523040295

`A053139(∑{d}[n+1, A014963(#)-1]+1)`
-/

namespace A329071.P10985957675523040295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (∑ d ∈ Nat.divisors (f1 n), (A014963 d - 1) + 1).toNat

end

end A329071.P10985957675523040295

namespace A329071

/-- `A053139(∑{d}[n+1, A014963(#)-1]+1)` -/
def P10985957675523040295.Spec : Prop :=
  ∀ n, P10985957675523040295.a n = A329071 (n + 1)

end A329071

/-! ## A329071.P16526286291721777539

`A053139(A036288(n+1)-∑{e}[n+1, #])`
-/

namespace A329071.P16526286291721777539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (A036288 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A329071.P16526286291721777539

namespace A329071

/-- `A053139(A036288(n+1)-∑{e}[n+1, #])` -/
def P16526286291721777539.Spec : Prop :=
  ∀ n, P16526286291721777539.a n = A329071 (n + 1)

theorem P16526286291721777539.correct : P16526286291721777539.Spec := by
  intro n
  simp only [A329071, Nat.add_sub_cancel, A329071.P16526286291721777539.f1, A329071.P16526286291721777539.a, A329071.P11483321151575477981.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A053139, A053139.P14434493847918876096.a, A275314, A275314.P16603517016269577307.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A329071

/-! ## A329071.P685819260268556414

`A053139(A036288(n+1)-Δ[A022559(n)])`
-/

namespace A329071.P685819260268556414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (A036288 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A329071.P685819260268556414

namespace A329071

/-- `A053139(A036288(n+1)-Δ[A022559(n)])` -/
def P685819260268556414.Spec : Prop :=
  ∀ n, P685819260268556414.a n = A329071 (n + 1)

end A329071

/-! ## A329071.P9104616671876285540

`A053139(A036288(n+1)-A001222(n+1))`
-/

namespace A329071.P9104616671876285540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (A036288 (n + 1) - A001222 (n + 1)).toNat

end

end A329071.P9104616671876285540

namespace A329071

/-- `A053139(A036288(n+1)-A001222(n+1))` -/
def P9104616671876285540.Spec : Prop :=
  ∀ n, P9104616671876285540.a n = A329071 (n + 1)

theorem P9104616671876285540.correct : P9104616671876285540.Spec := by
  intro n
  simp only [A329071, Nat.add_sub_cancel, A329071.P9104616671876285540.a, A329071.P11483321151575477981.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A053139, A053139.P14434493847918876096.a, A275314, A275314.P16603517016269577307.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A329071

/-! ## A329071.P9311126573161656355

`A053139(A075254(n+1)-A222312(n+1))`
-/

namespace A329071.P9311126573161656355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (A075254 (n + 1) - A222312 (n + 1)).toNat

end

end A329071.P9311126573161656355

namespace A329071

/-- `A053139(A075254(n+1)-A222312(n+1))` -/
def P9311126573161656355.Spec : Prop :=
  ∀ n, P9311126573161656355.a n = A329071 (n + 1)

theorem P9311126573161656355.correct : P9311126573161656355.Spec := by
  intro n
  simp only [A329071, Nat.add_sub_cancel, A329071.P9311126573161656355.a, A329071.P11483321151575477981.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A053139, A053139.P14434493847918876096.a, A075254, A075254.P6422447875050144596.a, A222312, A222312.P5225546657519994950.a, A275314, A275314.P16603517016269577307.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A329071

/-! ## A329071.P17109999852290278597

`A053139(A001414(n+1)+1-A001222(n+1))`
-/

namespace A329071.P17109999852290278597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (A001414 (n + 1) + (1 - A001222 (n + 1))).toNat

end

end A329071.P17109999852290278597

namespace A329071

/-- `A053139(A001414(n+1)+1-A001222(n+1))` -/
def P17109999852290278597.Spec : Prop :=
  ∀ n, P17109999852290278597.a n = A329071 (n + 1)

theorem P17109999852290278597.correct : P17109999852290278597.Spec := by
  intro n
  simp only [A329071, Nat.add_sub_cancel, A329071.P17109999852290278597.a, A329071.P11483321151575477981.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A053139, A053139.P14434493847918876096.a, A275314, A275314.P16603517016269577307.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A329071

/-! ## A329071.P2860128660405528546

`A053139(∑{d}[A005843(n+1), A014963(#)-1])`
-/

namespace A329071.P2860128660405528546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (∑ d ∈ Nat.divisors (f1 n).natAbs, (A014963 d - 1)).toNat

end

end A329071.P2860128660405528546

namespace A329071

/-- `A053139(∑{d}[A005843(n+1), A014963(#)-1])` -/
def P2860128660405528546.Spec : Prop :=
  ∀ n, P2860128660405528546.a n = A329071 (n + 1)

end A329071

/-!
# A329074: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where T(n,k) is the constant term in the expansion of ((Sum_{j=-n..n} x^j) * (Sum_{j=-n..n} y^j) - (Sum_{j=-n+1..n-1} x^j) * (Sum_{j=-n+1..n-1} y^j))^k.

The programs for A329074, there is no canonical definition to state claims against.
-/

/-! ## A329074.P8205597206297873628

`A329078(A245300(n)+A002262(n))`
-/

namespace A329074.P8205597206297873628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A245300 n + A002262 n).toNat

end

end A329074.P8205597206297873628

/-! ## A329074.P5237894187269048214

`A329078(A002260(n+1)+A245300(n)-1)`
-/

namespace A329074.P5237894187269048214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A002260 (n + 1) + (A245300 n - 1)).toNat

end

end A329074.P5237894187269048214

/-! ## A329074.P8847803631692041629

`and(25, A265529(A336859(n)))`
-/

namespace A329074.P8847803631692041629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 25 (A265529 (A336859 n).toNat)

end

end A329074.P8847803631692041629

/-! ## A329074.P4146627858717904158

`and(25, A090963(A080510(n+1)))`
-/

namespace A329074.P4146627858717904158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 25 (A090963 (A080510 (n + 1)).toNat)

end

end A329074.P4146627858717904158

/-! ## A329074.P917493197539928473

`and(57, A000005(A000108(A124328(n+1))))`
-/

namespace A329074.P917493197539928473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 57 (A000005 (A000108 (A124328 (n + 1)).toNat).toNat)

end

end A329074.P917493197539928473

/-!
# A329075: Constant term in the expansion of ((Sum_{k=-2..2} x^k) * (Sum_{k=-2..2} y^k) - (Sum_{k=-1..1} x^k) * (Sum_{k=-1..1} y^k))^n.

The programs for A329075, there is no canonical definition to state claims against.
-/

/-! ## A329075.P16529093141214554317

`A329074(∑[n+2]+3)`
-/

namespace A329075.P16529093141214554317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329074 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A329075.P16529093141214554317

/-! ## A329075.P1094998240470864140

`A329078(eq[4, A002262(n)])`
-/

namespace A329075.P1094998240470864140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A329075.P1094998240470864140

/-! ## A329075.P11346220833013527012

`A329078(A055999(n+1)+10)`
-/

namespace A329075.P11346220833013527012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A055999 (n + 1) + 10).toNat

end

end A329075.P11346220833013527012

/-! ## A329075.P5132567496905272684

`A329078(eq[5, A002260(n+1)])`
-/

namespace A329075.P5132567496905272684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A329075.P5132567496905272684

/-! ## A329075.P1156675053211967170

`A329078(eq[5, A104763(n+1)])`
-/

namespace A329075.P1156675053211967170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A329075.P1156675053211967170

/-!
# A329076: Constant term in the expansion of ((Sum_{k=-n..n} x^k) * (Sum_{k=-n..n} y^k) - (Sum_{k=-n+1..n-1} x^k) * (Sum_{k=-n+1..n-1} y^k))^n.

The programs for A329076, there is no canonical definition to state claims against.
-/

/-! ## A329076.P13889364884777644184

`A329074(∑[4*n])`
-/

namespace A329076.P13889364884777644184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329074 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329076.P13889364884777644184

/-! ## A329076.P16465752611241537903

`A036225(n)*A329074(A046092(n))`
-/

namespace A329076.P16465752611241537903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A329074 (A046092 n).toNat

end

end A329076.P16465752611241537903

/-! ## A329076.P2967453689150022107

`gcd(A000038(n), A329074(A046092(n)))`
-/

namespace A329076.P2967453689150022107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A329074 (A046092 n).toNat)

end

end A329076.P2967453689150022107

/-! ## A329076.P14434760733652633464

`A329078(A062728(n))`
-/

namespace A329076.P14434760733652633464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A062728 n).toNat

end

end A329076.P14434760733652633464

/-! ## A329076.P9380182809576679918

`A329078(A062725(n)+n)`
-/

namespace A329076.P9380182809576679918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (A062725 n + (n : ℤ)).toNat

end

end A329076.P9380182809576679918

/-!
# A329077: Constant term in the expansion of ((Sum_{k=-3..3} x^k) * (Sum_{k=-3..3} y^k) - (Sum_{k=-2..2} x^k) * (Sum_{k=-2..2} y^k))^n.

The programs for A329077, there is no canonical definition to state claims against.
-/

/-! ## A329077.P237185482442348958

`A329074(A167614(n+2))`
-/

namespace A329077.P237185482442348958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329074 (A167614 (n + 2)).toNat

end

end A329077.P237185482442348958

/-! ## A329077.P5697990923822175964

`A329074(eq[3, A002262(n)])`
-/

namespace A329077.P5697990923822175964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329074 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A329077.P5697990923822175964

/-! ## A329077.P2007609793515019987

`A329074(eq[8, A059268(n)])`
-/

namespace A329077.P2007609793515019987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329074 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A329077.P2007609793515019987

/-! ## A329077.P9645754790488169729

`A329074(eq[4, A002260(n+1)])`
-/

namespace A329077.P9645754790488169729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329074 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A329077.P9645754790488169729

/-! ## A329077.P10482465776738070484

`A329074(eq[16, A133819(n+1)])`
-/

namespace A329077.P10482465776738070484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329074 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A329077.P10482465776738070484

/-!
# A329078: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where T(n,k) is the number of k-step closed paths (from origin to origin) in 2-dimensional lattice, using steps (t_1,t_2) (|t_1| + |t_2| = n).

The programs for A329078, there is no canonical definition to state claims against.
-/

/-! ## A329078.P1751764826064856170

`A109127(A271705(n))`
-/

namespace A329078.P1751764826064856170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109127 (A271705 n).toNat

end

end A329078.P1751764826064856170

/-! ## A329078.P18055188007615891387

`A059253(2^A293808(n))`
-/

namespace A329078.P18055188007615891387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A293808 n : ℤ))).toNat

end

end A329078.P18055188007615891387

/-! ## A329078.P3093880606433241220

`floor(A026386(n)^A165884(2*(n+2)))`
-/

namespace A329078.P3093880606433241220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026386 n : ℚ) ^ (A165884 (2 * (n + 2)) : ℤ)⌋

end

end A329078.P3093880606433241220

/-! ## A329078.P12340828338407400712

`A330316(A354794(n)-A122850(n))`
-/

namespace A329078.P12340828338407400712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330316 (A354794 n - A122850 n).toNat

end

end A329078.P12340828338407400712

/-! ## A329078.P1686312094103111823

`A103919(n)^A001221(A111825(n))`
-/

namespace A329078.P1686312094103111823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103919 n : ℚ) ^ (A001221 (A111825 n).toNat : ℤ)

end

end A329078.P1686312094103111823

/-!
# A329079: a(n) is the number of entries from a(0) to a(n-2) that have the same number of digits as a(n-1), with a(0) = 0.

The programs for A329079, there is no canonical definition to state claims against.
-/

/-! ## A329079.P13991388370492316587

`A025685((n^A178487(n))²)`
-/

namespace A329079.P13991388370492316587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025685 (SequenceMachineLib.roundAway (((n : ℚ) ^ (A178487 n : ℤ)) ^ 2)).toNat

end

end A329079.P13991388370492316587

/-! ## A329079.P5649342879944372548

`A025685(C(n, A178487(n))²)`
-/

namespace A329079.P5649342879944372548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025685 (Nat.choose n (A178487 n).toNat ^ 2)

end

end A329079.P5649342879944372548

/-! ## A329079.P11906340870389317052

`A025685(A000290(n)^A178487(n))`
-/

namespace A329079.P11906340870389317052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025685 (SequenceMachineLib.roundAway ((A000290 n : ℚ) ^ (A178487 n : ℤ))).toNat

end

end A329079.P11906340870389317052

/-! ## A329079.P14090785920973728672

`A025685(A253909(n)^A178487(n))`
-/

namespace A329079.P14090785920973728672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025685 (SequenceMachineLib.roundAway ((A253909 n : ℚ) ^ (A178487 n : ℤ))).toNat

end

end A329079.P14090785920973728672

/-! ## A329079.P578418651758431621

`∑{e}[floor(2^(n-1)), A259434(#)]`
-/

namespace A329079.P578418651758431621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A259434 (Nat.factorization (f1 n).natAbs p)

end

end A329079.P578418651758431621

/-!
# A329089: Decimal expansion of Sum_{k>=1} 1/(k^2-2), negated.

The programs for A329089, there is no canonical definition to state claims against.
-/

/-! ## A329089.P17339376787669469457

`A329082(n+1)`
-/

namespace A329089.P17339376787669469457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329082 (n + 1)

end

end A329089.P17339376787669469457

/-!
# A329095: Odd numbers k such that x^2 == 2 (mod k) has no solution.

The programs for A329095, the canonical program `A329095.P6531162386030050095` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329095 has offset 1).

The definition of A329095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4743 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329095.P5638882318723213736

`∩[2*n+1, A025020(n+1)]`
-/

namespace A329095.P5638882318723213736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329095.P5638882318723213736

namespace A329095

/-- `∩[2*n+1, A025020(n+1)]` -/
def P5638882318723213736.Spec : Prop :=
  ∀ n, (P5638882318723213736.a n : ℤ) = A329095 (n + 1)

end A329095

/-! ## A329095.P6531162386030050095

`record[A000265(A025020(n+1))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A329095

/-- `record[A000265(A025020(n+1))]` -/
def P6531162386030050095.Spec : Prop :=
  ∀ n, P6531162386030050095.a n = A329095 (n + 1)

theorem P6531162386030050095.correct : P6531162386030050095.Spec := by
  intro n
  simp only [A329095, Nat.add_sub_cancel]

end A329095

/-! ## A329095.P705269580464058972

`∩[A025020(n+1), A004273(n)]`
-/

namespace A329095.P705269580464058972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329095.P705269580464058972

namespace A329095

/-- `∩[A025020(n+1), A004273(n)]` -/
def P705269580464058972.Spec : Prop :=
  ∀ n, (P705269580464058972.a n : ℤ) = A329095 (n + 1)

end A329095

/-! ## A329095.P5935841006929421320

`∩[A025020(n+1), A004274(n)]`
-/

namespace A329095.P5935841006929421320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329095.P5935841006929421320

namespace A329095

/-- `∩[A025020(n+1), A004274(n)]` -/
def P5935841006929421320.Spec : Prop :=
  ∀ n, (P5935841006929421320.a n : ℤ) = A329095 (n + 1)

end A329095

/-! ## A329095.P2438626569823863987

`∩[A025020(n+1), A060747(n)]`
-/

namespace A329095.P2438626569823863987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329095.P2438626569823863987

namespace A329095

/-- `∩[A025020(n+1), A060747(n)]` -/
def P2438626569823863987.Spec : Prop :=
  ∀ n, (P2438626569823863987.a n : ℤ) = A329095 (n + 1)

end A329095

/-! ## A329095.P17347111100768879507

`∩[A025020(n+1), A144396(n+1)]`
-/

namespace A329095.P17347111100768879507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329095.P17347111100768879507

namespace A329095

/-- `∩[A025020(n+1), A144396(n+1)]` -/
def P17347111100768879507.Spec : Prop :=
  ∀ n, (P17347111100768879507.a n : ℤ) = A329095 (n + 1)

end A329095

/-! ## A329095.P7871655156322027961

`∩[A025020(n+1), A296243(n+1)]`
-/

namespace A329095.P7871655156322027961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329095.P7871655156322027961

namespace A329095

/-- `∩[A025020(n+1), A296243(n+1)]` -/
def P7871655156322027961.Spec : Prop :=
  ∀ n, (P7871655156322027961.a n : ℤ) = A329095 (n + 1)

end A329095

/-! ## A329095.P8471961022841405454

`eq[0, A091396(A093178(n))]`
-/

namespace A329095.P8471961022841405454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091396 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329095.P8471961022841405454

namespace A329095

/-- `eq[0, A091396(A093178(n))]` -/
def P8471961022841405454.Spec : Prop :=
  ∀ n, (P8471961022841405454.a n : ℤ) = A329095 (n + 1)

end A329095

/-! ## A329095.P17618835327695366582

`filter[A025020(n+1), A000035(#)]`
-/

namespace A329095.P17618835327695366582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A329095.P17618835327695366582

namespace A329095

/-- `filter[A025020(n+1), A000035(#)]` -/
def P17618835327695366582.Spec : Prop :=
  ∀ n, P17618835327695366582.a n = A329095 (n + 1)

end A329095

/-! ## A329095.P3443553782633563202

`filter[A025020(n+1), A266070(#)]`
-/

namespace A329095.P3443553782633563202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A329095.P3443553782633563202

namespace A329095

/-- `filter[A025020(n+1), A266070(#)]` -/
def P3443553782633563202.Spec : Prop :=
  ∀ n, P3443553782633563202.a n = A329095 (n + 1)

end A329095

/-! ## A329095.P10995722543832415720

`filter[A025020(n+1), A266719(#)]`
-/

namespace A329095.P10995722543832415720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A329095.P10995722543832415720

namespace A329095

/-- `filter[A025020(n+1), A266719(#)]` -/
def P10995722543832415720.Spec : Prop :=
  ∀ n, P10995722543832415720.a n = A329095 (n + 1)

end A329095

/-! ## A329095.P9884508166126403279

`filter[A025020(n+1), A296066(#)]`
-/

namespace A329095.P9884508166126403279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A329095.P9884508166126403279

namespace A329095

/-- `filter[A025020(n+1), A296066(#)]` -/
def P9884508166126403279.Spec : Prop :=
  ∀ n, P9884508166126403279.a n = A329095 (n + 1)

end A329095

/-! ## A329095.P6915623319754082750

`eq[A135523(n+1), A330174(n+1)]+1`
-/

namespace A329095.P6915623319754082750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330174 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A329095.P6915623319754082750

namespace A329095

/-- `eq[A135523(n+1), A330174(n+1)]+1` -/
def P6915623319754082750.Spec : Prop :=
  ∀ n, (P6915623319754082750.a n : ℤ) = A329095 (n + 1)

end A329095

/-! ## A329095.P914961353208544141

`lt[A087780(n+1), A170861(a(n-1))]+1` with `a(0)=1`
-/

namespace A329095.P914961353208544141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A170861 (f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A329095.P914961353208544141

namespace A329095

/-- `lt[A087780(n+1), A170861(a(n-1))]+1` -/
def P914961353208544141.Spec : Prop :=
  ∀ n, (P914961353208544141.a n : ℤ) = A329095 (n + 1)

end A329095

/-! ## A329095.P9590751156802830806

`eq[A087780(A029579(n)), A237420(n)]`
-/

namespace A329095.P9590751156802830806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (A029579 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329095.P9590751156802830806

namespace A329095

/-- `eq[A087780(A029579(n)), A237420(n)]` -/
def P9590751156802830806.Spec : Prop :=
  ∀ n, (P9590751156802830806.a n : ℤ) = A329095 (n + 1)

end A329095

/-! ## A329095.P14302902756176573069

`eq[A087780(A053438(n)-n), A237420(n)]`
-/

namespace A329095.P14302902756176573069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (A053438 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329095.P14302902756176573069

namespace A329095

/-- `eq[A087780(A053438(n)-n), A237420(n)]` -/
def P14302902756176573069.Spec : Prop :=
  ∀ n, (P14302902756176573069.a n : ℤ) = A329095 (n + 1)

end A329095

/-! ## A329095.P14815519004394276860

`eq[A087780(2*(n+1)), A237420(n+1)]+1`
-/

namespace A329095.P14815519004394276860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A329095.P14815519004394276860

namespace A329095

/-- `eq[A087780(2*(n+1)), A237420(n+1)]+1` -/
def P14815519004394276860.Spec : Prop :=
  ∀ n, (P14815519004394276860.a n : ℤ) = A329095 (n + 1)

end A329095

/-! ## A329095.P3107914270865462689

`eq[A087780(A053438(n)), A237420(n)]`
-/

namespace A329095.P3107914270865462689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (A053438 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329095.P3107914270865462689

namespace A329095

/-- `eq[A087780(A053438(n)), A237420(n)]` -/
def P3107914270865462689.Spec : Prop :=
  ∀ n, (P3107914270865462689.a n : ℤ) = A329095 (n + 1)

end A329095

/-! ## A329095.P17023302371205496287

`∩[A025020(n+1), A173263(n+1)]`
-/

namespace A329095.P17023302371205496287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329095.P17023302371205496287

namespace A329095

/-- `∩[A025020(n+1), A173263(n+1)]` -/
def P17023302371205496287.Spec : Prop :=
  ∀ n, (P17023302371205496287.a n : ℤ) = A329095 (n + 1)

end A329095

/-!
# A329096: Row sums of A329057.

The programs for A329096, the canonical program `A329096.P12211021530250591698` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329096 has offset 0).

The definition of A329096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329096.P12211021530250591698

`∑{#}[n, C(2*n-#, n)*(n+1)^(#-1)]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A329096

/-- `∑{#}[n, C(2*n-#, n)*(n+1)^(#-1)]` -/
def P12211021530250591698.Spec : Prop :=
  ∀ n, P12211021530250591698.a n = (A329096 n : ℚ)

end A329096

/-!
# A329097: Expansion of Product_{p prime, k>=1} 1 / (1 + x^(p^k)).

The programs for A329097, there is no canonical definition to state claims against.
-/

/-! ## A329097.P12934084161230648355

`A260192(A074083(n)+A000217(n))`
-/

namespace A329097.P12934084161230648355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260192 (A074083 n + A000217 n).toNat

end

end A329097.P12934084161230648355

/-! ## A329097.P6513691037871795133

`A321665(n)-A010051(A034691(n))`
-/

namespace A329097.P6513691037871795133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321665 n - A010051 (A034691 n).toNat

end

end A329097.P6513691037871795133

/-! ## A329097.P7317329858764353136

`A008683(A335274(n)+A033631(n+1))`
-/

namespace A329097.P7317329858764353136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A335274 n + A033631 (n + 1)).toNat

end

end A329097.P7317329858764353136

/-! ## A329097.P4239299644011220429

`A049347(A085833(n+4)+A050226(n+1))`
-/

namespace A329097.P4239299644011220429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A085833 (n + 4) + A050226 (n + 1)).toNat

end

end A329097.P4239299644011220429

/-! ## A329097.P3286991889124204390

`A054354(A057548(n)*A063845(3*n+1))`
-/

namespace A329097.P3286991889124204390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A057548 n * A063845 (3 * n + 1)).toNat

end

end A329097.P3286991889124204390

/-!
# A329099: Expansion of 1 / (1 + Sum_{k>=1} mu(k)^2 * x^k).

The programs for A329099, there is no canonical definition to state claims against.
-/

/-! ## A329099.P11980695379492687942

`A093873(n+1)-A124010(A377322(n))`
-/

namespace A329099.P11980695379492687942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (n + 1) - A124010 (A377322 n).toNat

end

end A329099.P11980695379492687942

